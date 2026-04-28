VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmEmisionBoleto
  Caption = "Emision de Boleto"
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
  ClientHeight = 10440
  Begin VB.CheckBox HabilitarChk
    Caption = "Habilitar"
    Left = 13320
    Top = 840
    Width = 1335
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
  Begin VB.TextBox PagoCuentaTxt
    ForeColor = &HFF0000&
    Left = 13320
    Top = 1080
    Width = 1695
    Height = 345
    TabIndex = 6
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
  Begin VB.CommandButton cmdGenerarBoleto
    Caption = "Generar Boleto"
    Left = 8160
    Top = 960
    Width = 1935
    Height = 405
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
  Begin VB.TextBox txtTotaSele
    Left = 13080
    Top = 9960
    Width = 1932
    Height = 360
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
  Begin VB.CheckBox SeleTodoChk
    Caption = "Seleccionar todo"
    Left = 5640
    Top = 960
    Width = 2175
    Height = 390
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
  Begin VB.TextBox txtTotal
    Left = 13080
    Top = 9480
    Width = 1932
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
    Top = 9480
    Width = 1815
    Height = 360
    TabIndex = 14
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
    Top = 9480
    Width = 1815
    Height = 345
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
  Begin VB.TextBox txtTotaDere
    Left = 6000
    Top = 9480
    Width = 2172
    Height = 345
    TabIndex = 12
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
  Begin VB.ComboBox OficinaCbo
    Style = 2
    ForeColor = &HFF0000&
    Left = 1080
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
    Left = 4080
    Top = 720
    Width = 450
    Height = 345
    TabIndex = 3
    Picture = "frmEmisionBoleto.frx":0000
    Style = 1
  End
  Begin VB.TextBox NumeCtaTxt
    ForeColor = &HFF0000&
    Left = 4440
    Top = 120
    Width = 2175
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
    Left = 14280
    Top = 120
    Width = 735
    Height = 615
    TabIndex = 9
    Picture = "frmEmisionBoleto.frx":00E2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox FechVencMsk
    Left = 2520
    Top = 720
    Width = 1455
    Height = 345
    TabIndex = 2
    OleObjectBlob = "frmEmisionBoleto.frx":0334
  End
  Begin MSFlexGridLib.MSFlexGrid ctacteFlex
    Left = 120
    Top = 1680
    Width = 15015
    Height = 7815
    TabIndex = 4
    OleObjectBlob = "frmEmisionBoleto.frx":03E4
  End
  Begin VB.Label Label9
    Caption = "Pago a Cuenta:"
    Left = 11640
    Top = 1080
    Width = 1650
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
  Begin VB.Label DomiPersLbl
    ForeColor = &HFF0000&
    Left = 6960
    Top = 480
    Width = 7095
    Height = 315
    TabIndex = 24
    BeginProperty Font
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
    Left = 6960
    Top = 120
    Width = 1695
    Height = 315
    TabIndex = 23
    BeginProperty Font
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
    Left = 9000
    Top = 120
    Width = 5175
    Height = 315
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
  Begin VB.Label Label1
    Caption = "Total Seleccionado:"
    Left = 10560
    Top = 9960
    Width = 2385
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
  Begin VB.Label Label8
    Caption = "Total:"
    Left = 12240
    Top = 9480
    Width = 690
    Height = 300
    TabIndex = 18
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
    Top = 9480
    Width = 1755
    Height = 300
    TabIndex = 17
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
    Left = 8520
    Top = 9480
    Width = 1788
    Height = 300
    TabIndex = 16
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
    Left = 3960
    Top = 9480
    Width = 1785
    Height = 300
    TabIndex = 15
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
    Left = 240
    Top = 120
    Width = 795
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
  Begin VB.Label Label3
    Caption = "Cuenta:"
    Left = 3480
    Top = 120
    Width = 840
    Height = 300
    TabIndex = 10
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
    Caption = "Fecha de Vencimiento:"
    Left = 45
    Top = 720
    Width = 2445
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

Attribute VB_Name = "frmEmisionBoleto"


Private Sub ctacteFlex_UnknownEvent_0 '9DBD9C
  'Data Table: 4E7624
  loc_9DBD84: FLdPr Me
  loc_9DBD87: VCallAd Control_ID_ctacteFlex
  loc_9DBD8A: FStAdFunc var_88
  loc_9DBD8D: FLdRfVar var_88
  loc_9DBD90: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9DBD95: FFree1Ad var_88
  loc_9DBD98: ExitProcHresult
End Sub

Private Sub ctacteFlex_UnknownEvent_1 '9DBDE8
  'Data Table: 4E7624
  loc_9DBDD0: FLdPr Me
  loc_9DBDD3: VCallAd Control_ID_ctacteFlex
  loc_9DBDD6: FStAdFunc var_88
  loc_9DBDD9: FLdRfVar var_88
  loc_9DBDDC: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9DBDE1: FFree1Ad var_88
  loc_9DBDE4: ExitProcHresult
End Sub

Private Sub ctacteFlex_Click() 'D1DF08
  'Data Table: 4E7624
  loc_D1A5BC: FLdPr Me
  loc_D1A5BF: VCallAd Control_ID_ctacteFlex
  loc_D1A5C2: FStAdFunc var_88
  loc_D1A5C5: FLdPr var_88
  loc_D1A5C8: LateIdLdVar var_98 DispID_4 0
  loc_D1A5CF: CI4Var
  loc_D1A5D1: LitI4 1
  loc_D1A5D6: GtI4
  loc_D1A5D7: FFree1Ad var_88
  loc_D1A5DA: FFree1Var var_98 = ""
  loc_D1A5DD: BranchF loc_D1DDB9
  loc_D1A5E0: FLdPr Me
  loc_D1A5E3: MemLdRfVar from_stack_1.global_96
  loc_D1A5E6: LdFixedStr
  loc_D1A5E9: FStStrNoPop var_9C
  loc_D1A5EC: LitStr "Si"
  loc_D1A5EF: EqStr
  loc_D1A5F1: FFree1Str var_9C
  loc_D1A5F4: BranchF loc_D1A81A
  loc_D1A5F7: FLdPr Me
  loc_D1A5FA: VCallAd Control_ID_ctacteFlex
  loc_D1A5FD: FStAdFunc var_88
  loc_D1A600: FLdPr var_88
  loc_D1A603: LateIdLdVar var_98 DispID_10 0
  loc_D1A60A: CI4Var
  loc_D1A60C: LitI4 1
  loc_D1A611: GtI4
  loc_D1A612: FFree1Ad var_88
  loc_D1A615: FFree1Var var_98 = ""
  loc_D1A618: BranchF loc_D1A745
  loc_D1A61B: FLdPr Me
  loc_D1A61E: VCallAd Control_ID_ctacteFlex
  loc_D1A621: FStAdFunc var_88
  loc_D1A624: FLdPr var_88
  loc_D1A627: LateIdLdVar var_98 DispID_10 0
  loc_D1A62E: CI4Var
  loc_D1A630: LitI4 1
  loc_D1A635: SubI4
  loc_D1A636: CVarI4
  loc_D1A63A: PopAdLdVar
  loc_D1A63B: LitVarI4
  loc_D1A643: PopAdLdVar
  loc_D1A644: FLdPr Me
  loc_D1A647: VCallAd Control_ID_ctacteFlex
  loc_D1A64A: FStAdFunc var_E0
  loc_D1A64D: FLdPr var_E0
  loc_D1A650: LateIdCallLdVar
  loc_D1A65A: CStrVarTmp
  loc_D1A65B: FStStrNoPop var_9C
  loc_D1A65E: LitStr "No"
  loc_D1A661: EqStr
  loc_D1A663: FFree1Str var_9C
  loc_D1A666: FFreeAd var_88 = ""
  loc_D1A66D: FFreeVar var_98 = ""
  loc_D1A674: BranchF loc_D1A68D
  loc_D1A677: LitStr "Debe seleccionar en forma concecutiva"
  loc_D1A67A: FLdPr Me
  loc_D1A67D: MemStStrCopy
  loc_D1A681: FLdPr Me
  loc_D1A684: MemLdStr global_256
  loc_D1A687: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D1A68C: ExitProcHresult
  loc_D1A68D: FLdPr Me
  loc_D1A690: VCallAd Control_ID_ctacteFlex
  loc_D1A693: FStAdFunc var_88
  loc_D1A696: FLdPr var_88
  loc_D1A699: LateIdLdVar var_98 DispID_10 0
  loc_D1A6A0: CI4Var
  loc_D1A6A2: LitI4 1
  loc_D1A6A7: AddI4
  loc_D1A6A8: FLdPr Me
  loc_D1A6AB: VCallAd Control_ID_ctacteFlex
  loc_D1A6AE: FStAdFunc var_E0
  loc_D1A6B1: FLdPr var_E0
  loc_D1A6B4: LateIdLdVar var_F0 DispID_4 0
  loc_D1A6BB: CI4Var
  loc_D1A6BD: GeI4
  loc_D1A6BE: NotI4
  loc_D1A6BF: FFreeAd var_88 = ""
  loc_D1A6C6: FFreeVar var_98 = ""
  loc_D1A6CD: BranchF loc_D1A742
  loc_D1A6D0: FLdPr Me
  loc_D1A6D3: VCallAd Control_ID_ctacteFlex
  loc_D1A6D6: FStAdFunc var_88
  loc_D1A6D9: FLdPr var_88
  loc_D1A6DC: LateIdLdVar var_98 DispID_10 0
  loc_D1A6E3: CI4Var
  loc_D1A6E5: LitI4 1
  loc_D1A6EA: AddI4
  loc_D1A6EB: CVarI4
  loc_D1A6EF: PopAdLdVar
  loc_D1A6F0: LitVarI4
  loc_D1A6F8: PopAdLdVar
  loc_D1A6F9: FLdPr Me
  loc_D1A6FC: VCallAd Control_ID_ctacteFlex
  loc_D1A6FF: FStAdFunc var_E0
  loc_D1A702: FLdPr var_E0
  loc_D1A705: LateIdCallLdVar
  loc_D1A70F: CStrVarTmp
  loc_D1A710: FStStrNoPop var_9C
  loc_D1A713: LitStr "Si"
  loc_D1A716: EqStr
  loc_D1A718: FFree1Str var_9C
  loc_D1A71B: FFreeAd var_88 = ""
  loc_D1A722: FFreeVar var_98 = ""
  loc_D1A729: BranchF loc_D1A742
  loc_D1A72C: LitStr "Debe deseleccionar en forma concecutiva"
  loc_D1A72F: FLdPr Me
  loc_D1A732: MemStStrCopy
  loc_D1A736: FLdPr Me
  loc_D1A739: MemLdStr global_256
  loc_D1A73C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D1A741: ExitProcHresult
  loc_D1A742: Branch loc_D1A81A
  loc_D1A745: FLdPr Me
  loc_D1A748: VCallAd Control_ID_ctacteFlex
  loc_D1A74B: FStAdFunc var_88
  loc_D1A74E: FLdPr var_88
  loc_D1A751: LateIdLdVar var_98 DispID_10 0
  loc_D1A758: CI4Var
  loc_D1A75A: LitI4 1
  loc_D1A75F: EqI4
  loc_D1A760: FLdPr Me
  loc_D1A763: VCallAd Control_ID_ctacteFlex
  loc_D1A766: FStAdFunc var_E0
  loc_D1A769: FLdPr var_E0
  loc_D1A76C: LateIdLdVar var_F0 DispID_10 0
  loc_D1A773: CI4Var
  loc_D1A775: LitI4 1
  loc_D1A77A: AddI4
  loc_D1A77B: FLdPr Me
  loc_D1A77E: VCallAd Control_ID_ctacteFlex
  loc_D1A781: FStAdFunc var_F4
  loc_D1A784: FLdPr var_F4
  loc_D1A787: LateIdLdVar var_104 DispID_4 0
  loc_D1A78E: CI4Var
  loc_D1A790: GeI4
  loc_D1A791: NotI4
  loc_D1A792: AndI4
  loc_D1A793: FFreeAd var_88 = "": var_E0 = ""
  loc_D1A79C: FFreeVar var_98 = "": var_F0 = ""
  loc_D1A7A5: BranchF loc_D1A81A
  loc_D1A7A8: FLdPr Me
  loc_D1A7AB: VCallAd Control_ID_ctacteFlex
  loc_D1A7AE: FStAdFunc var_88
  loc_D1A7B1: FLdPr var_88
  loc_D1A7B4: LateIdLdVar var_98 DispID_10 0
  loc_D1A7BB: CI4Var
  loc_D1A7BD: LitI4 1
  loc_D1A7C2: AddI4
  loc_D1A7C3: CVarI4
  loc_D1A7C7: PopAdLdVar
  loc_D1A7C8: LitVarI4
  loc_D1A7D0: PopAdLdVar
  loc_D1A7D1: FLdPr Me
  loc_D1A7D4: VCallAd Control_ID_ctacteFlex
  loc_D1A7D7: FStAdFunc var_E0
  loc_D1A7DA: FLdPr var_E0
  loc_D1A7DD: LateIdCallLdVar
  loc_D1A7E7: CStrVarTmp
  loc_D1A7E8: FStStrNoPop var_9C
  loc_D1A7EB: LitStr "Si"
  loc_D1A7EE: EqStr
  loc_D1A7F0: FFree1Str var_9C
  loc_D1A7F3: FFreeAd var_88 = ""
  loc_D1A7FA: FFreeVar var_98 = ""
  loc_D1A801: BranchF loc_D1A81A
  loc_D1A804: LitStr "Debe deseleccionar en forma concecutiva"
  loc_D1A807: FLdPr Me
  loc_D1A80A: MemStStrCopy
  loc_D1A80E: FLdPr Me
  loc_D1A811: MemLdStr global_256
  loc_D1A814: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D1A819: ExitProcHresult
  loc_D1A81A: FLdPr Me
  loc_D1A81D: VCallAd Control_ID_ctacteFlex
  loc_D1A820: FStAdFunc var_88
  loc_D1A823: FLdPr var_88
  loc_D1A826: LateIdLdVar var_98 DispID_10 0
  loc_D1A82D: CI4Var
  loc_D1A82F: CVarI4
  loc_D1A833: PopAdLdVar
  loc_D1A834: LitVarI4
  loc_D1A83C: PopAdLdVar
  loc_D1A83D: FLdPr Me
  loc_D1A840: VCallAd Control_ID_ctacteFlex
  loc_D1A843: FStAdFunc var_E0
  loc_D1A846: FLdPr var_E0
  loc_D1A849: LateIdCallLdVar
  loc_D1A853: CStrVarTmp
  loc_D1A854: FStStrNoPop var_9C
  loc_D1A857: CI4Str
  loc_D1A858: LitI4 0
  loc_D1A85D: EqI4
  loc_D1A85E: FFree1Str var_9C
  loc_D1A861: FFreeAd var_88 = ""
  loc_D1A868: FFreeVar var_98 = ""
  loc_D1A86F: BranchF loc_D1D662
  loc_D1A872: FLdPr Me
  loc_D1A875: VCallAd Control_ID_ctacteFlex
  loc_D1A878: FStAdFunc var_88
  loc_D1A87B: FLdPr var_88
  loc_D1A87E: LateIdLdVar var_98 DispID_10 0
  loc_D1A885: CI4Var
  loc_D1A887: CVarI4
  loc_D1A88B: PopAdLdVar
  loc_D1A88C: LitVarI4
  loc_D1A894: PopAdLdVar
  loc_D1A895: FLdPr Me
  loc_D1A898: VCallAd Control_ID_ctacteFlex
  loc_D1A89B: FStAdFunc var_E0
  loc_D1A89E: FLdPr var_E0
  loc_D1A8A1: LateIdCallLdVar
  loc_D1A8AB: CStrVarTmp
  loc_D1A8AC: FStStrNoPop var_9C
  loc_D1A8AF: CI4Str
  loc_D1A8B0: LitI4 0
  loc_D1A8B5: EqI4
  loc_D1A8B6: FFree1Str var_9C
  loc_D1A8B9: FFreeAd var_88 = ""
  loc_D1A8C0: FFreeVar var_98 = ""
  loc_D1A8C7: BranchF loc_D1CE52
  loc_D1A8CA: FLdPr Me
  loc_D1A8CD: VCallAd Control_ID_ctacteFlex
  loc_D1A8D0: FStAdFunc var_88
  loc_D1A8D3: FLdPr var_88
  loc_D1A8D6: LateIdLdVar var_98 DispID_10 0
  loc_D1A8DD: CI4Var
  loc_D1A8DF: CVarI4
  loc_D1A8E3: PopAdLdVar
  loc_D1A8E4: LitVarI4
  loc_D1A8EC: PopAdLdVar
  loc_D1A8ED: FLdPr Me
  loc_D1A8F0: VCallAd Control_ID_ctacteFlex
  loc_D1A8F3: FStAdFunc var_E0
  loc_D1A8F6: FLdPr var_E0
  loc_D1A8F9: LateIdCallLdVar
  loc_D1A903: CStrVarTmp
  loc_D1A904: FStStrNoPop var_9C
  loc_D1A907: LitStr "13020101"
  loc_D1A90A: EqStr
  loc_D1A90C: FLdPr Me
  loc_D1A90F: VCallAd Control_ID_ctacteFlex
  loc_D1A912: FStAdFunc var_F4
  loc_D1A915: FLdPr var_F4
  loc_D1A918: LateIdLdVar var_104 DispID_10 0
  loc_D1A91F: CI4Var
  loc_D1A921: CVarI4
  loc_D1A925: PopAdLdVar
  loc_D1A926: LitVarI4
  loc_D1A92E: PopAdLdVar
  loc_D1A92F: FLdPr Me
  loc_D1A932: VCallAd Control_ID_ctacteFlex
  loc_D1A935: FStAdFunc var_148
  loc_D1A938: FLdPr var_148
  loc_D1A93B: LateIdCallLdVar
  loc_D1A945: CStrVarTmp
  loc_D1A946: FStStrNoPop var_15C
  loc_D1A949: LitStr "13020201"
  loc_D1A94C: EqStr
  loc_D1A94E: OrI4
  loc_D1A94F: FLdPr Me
  loc_D1A952: VCallAd Control_ID_ctacteFlex
  loc_D1A955: FStAdFunc var_160
  loc_D1A958: FLdPr var_160
  loc_D1A95B: LateIdLdVar var_170 DispID_10 0
  loc_D1A962: CI4Var
  loc_D1A964: CVarI4
  loc_D1A968: PopAdLdVar
  loc_D1A969: LitVarI4
  loc_D1A971: PopAdLdVar
  loc_D1A972: FLdPr Me
  loc_D1A975: VCallAd Control_ID_ctacteFlex
  loc_D1A978: FStAdFunc var_1B4
  loc_D1A97B: FLdPr var_1B4
  loc_D1A97E: LateIdCallLdVar
  loc_D1A988: CStrVarTmp
  loc_D1A989: FStStrNoPop var_1C8
  loc_D1A98C: LitStr "13031500"
  loc_D1A98F: EqStr
  loc_D1A991: OrI4
  loc_D1A992: FLdPr Me
  loc_D1A995: VCallAd Control_ID_ctacteFlex
  loc_D1A998: FStAdFunc var_1CC
  loc_D1A99B: FLdPr var_1CC
  loc_D1A99E: LateIdLdVar var_1DC DispID_10 0
  loc_D1A9A5: CI4Var
  loc_D1A9A7: CVarI4
  loc_D1A9AB: PopAdLdVar
  loc_D1A9AC: LitVarI4
  loc_D1A9B4: PopAdLdVar
  loc_D1A9B5: FLdPr Me
  loc_D1A9B8: VCallAd Control_ID_ctacteFlex
  loc_D1A9BB: FStAdFunc var_220
  loc_D1A9BE: FLdPr var_220
  loc_D1A9C1: LateIdCallLdVar
  loc_D1A9CB: CStrVarTmp
  loc_D1A9CC: FStStrNoPop var_234
  loc_D1A9CF: LitStr "13030201"
  loc_D1A9D2: EqStr
  loc_D1A9D4: OrI4
  loc_D1A9D5: FFreeStr var_9C = "": var_15C = "": var_1C8 = ""
  loc_D1A9E0: FFreeAd var_88 = "": var_E0 = "": var_F4 = "": var_148 = "": var_160 = "": var_1B4 = "": var_1CC = ""
  loc_D1A9F3: FFreeVar var_98 = "": var_F0 = "": var_104 = "": var_158 = "": var_170 = "": var_1C4 = "": var_1DC = ""
  loc_D1AA06: BranchF loc_D1BCA0
  loc_D1AA09: LitI2_Byte 1
  loc_D1AA0B: FLdPr Me
  loc_D1AA0E: MemLdRfVar from_stack_1.global_102
  loc_D1AA11: FLdPr Me
  loc_D1AA14: VCallAd Control_ID_ctacteFlex
  loc_D1AA17: FStAdFunc var_88
  loc_D1AA1A: FLdPr var_88
  loc_D1AA1D: LateIdLdVar var_98 DispID_4 0
  loc_D1AA24: CI4Var
  loc_D1AA26: LitI4 1
  loc_D1AA2B: SubI4
  loc_D1AA2C: CI2I4
  loc_D1AA2D: FFree1Ad var_88
  loc_D1AA30: FFree1Var var_98 = ""
  loc_D1AA33: ForI2 var_238
  loc_D1AA39: FLdPr Me
  loc_D1AA3C: MemLdI2 global_102
  loc_D1AA3F: CI4UI1
  loc_D1AA40: CVarI4
  loc_D1AA44: PopAdLdVar
  loc_D1AA45: LitVarI4
  loc_D1AA4D: PopAdLdVar
  loc_D1AA4E: FLdPr Me
  loc_D1AA51: VCallAd Control_ID_ctacteFlex
  loc_D1AA54: FStAdFunc var_88
  loc_D1AA57: FLdPr var_88
  loc_D1AA5A: LateIdCallLdVar
  loc_D1AA64: CStrVarTmp
  loc_D1AA65: FStStrNoPop var_9C
  loc_D1AA68: FLdPr Me
  loc_D1AA6B: VCallAd Control_ID_ctacteFlex
  loc_D1AA6E: FStAdFunc var_E0
  loc_D1AA71: FLdPr var_E0
  loc_D1AA74: LateIdLdVar var_F0 DispID_10 0
  loc_D1AA7B: CI4Var
  loc_D1AA7D: CVarI4
  loc_D1AA81: PopAdLdVar
  loc_D1AA82: LitVarI4
  loc_D1AA8A: PopAdLdVar
  loc_D1AA8B: FLdPr Me
  loc_D1AA8E: VCallAd Control_ID_ctacteFlex
  loc_D1AA91: FStAdFunc var_F4
  loc_D1AA94: FLdPr var_F4
  loc_D1AA97: LateIdCallLdVar
  loc_D1AAA1: CStrVarTmp
  loc_D1AAA2: FStStrNoPop var_15C
  loc_D1AAA5: EqStr
  loc_D1AAA7: FFreeStr var_9C = ""
  loc_D1AAAE: FFreeAd var_88 = "": var_E0 = ""
  loc_D1AAB7: FFreeVar var_98 = "": var_F0 = ""
  loc_D1AAC0: BranchF loc_D1BC92
  loc_D1AAC3: FLdPr Me
  loc_D1AAC6: MemLdI2 global_102
  loc_D1AAC9: CI4UI1
  loc_D1AACA: CVarI4
  loc_D1AACE: PopAdLdVar
  loc_D1AACF: FLdPr Me
  loc_D1AAD2: VCallAd Control_ID_ctacteFlex
  loc_D1AAD5: FStAdFunc var_88
  loc_D1AAD8: FLdPr var_88
  loc_D1AADB: LateIdSt
  loc_D1AAE0: FFree1Ad var_88
  loc_D1AAE3: LitI2_Byte 0
  loc_D1AAE5: FLdPr Me
  loc_D1AAE8: MemLdRfVar from_stack_1.global_100
  loc_D1AAEB: FLdPr Me
  loc_D1AAEE: VCallAd Control_ID_ctacteFlex
  loc_D1AAF1: FStAdFunc var_88
  loc_D1AAF4: FLdPr var_88
  loc_D1AAF7: LateIdLdVar var_98 DispID_5 0
  loc_D1AAFE: CI4Var
  loc_D1AB00: LitI4 1
  loc_D1AB05: SubI4
  loc_D1AB06: CI2I4
  loc_D1AB07: FFree1Ad var_88
  loc_D1AB0A: FFree1Var var_98 = ""
  loc_D1AB0D: ForI2 var_23C
  loc_D1AB13: FLdPr Me
  loc_D1AB16: MemLdI2 global_100
  loc_D1AB19: CI4UI1
  loc_D1AB1A: CVarI4
  loc_D1AB1E: PopAdLdVar
  loc_D1AB1F: FLdPr Me
  loc_D1AB22: VCallAd Control_ID_ctacteFlex
  loc_D1AB25: FStAdFunc var_88
  loc_D1AB28: FLdPr var_88
  loc_D1AB2B: LateIdSt
  loc_D1AB30: FFree1Ad var_88
  loc_D1AB33: FLdPr Me
  loc_D1AB36: VCallAd Control_ID_ctacteFlex
  loc_D1AB39: FStAdFunc var_88
  loc_D1AB3C: FLdPr var_88
  loc_D1AB3F: LateIdLdVar var_98 DispID_38 0
  loc_D1AB46: CI4Var
  loc_D1AB48: LitI4 &HFFFF80
  loc_D1AB4D: EqI4
  loc_D1AB4E: FFree1Ad var_88
  loc_D1AB51: FFree1Var var_98 = ""
  loc_D1AB54: BranchF loc_D1AF53
  loc_D1AB57: LitVarI4
  loc_D1AB5F: PopAdLdVar
  loc_D1AB60: FLdPr Me
  loc_D1AB63: VCallAd Control_ID_ctacteFlex
  loc_D1AB66: FStAdFunc var_88
  loc_D1AB69: FLdPr var_88
  loc_D1AB6C: LateIdSt
  loc_D1AB71: FFree1Ad var_88
  loc_D1AB74: FLdPr Me
  loc_D1AB77: VCallAd Control_ID_ctacteFlex
  loc_D1AB7A: FStAdFunc var_88
  loc_D1AB7D: FLdPr var_88
  loc_D1AB80: LateIdLdVar var_98 DispID_10 0
  loc_D1AB87: CI4Var
  loc_D1AB89: CVarI4
  loc_D1AB8D: PopAdLdVar
  loc_D1AB8E: LitVarI4
  loc_D1AB96: PopAdLdVar
  loc_D1AB97: LitVarStr var_114, "No"
  loc_D1AB9C: PopAdLdVar
  loc_D1AB9D: FLdPr Me
  loc_D1ABA0: VCallAd Control_ID_ctacteFlex
  loc_D1ABA3: FStAdFunc var_E0
  loc_D1ABA6: FLdPr var_E0
  loc_D1ABA9: LateIdCallSt
  loc_D1ABB1: FFreeAd var_88 = ""
  loc_D1ABB8: FFree1Var var_98 = ""
  loc_D1ABBB: FLdPr Me
  loc_D1ABBE: MemLdI2 global_100
  loc_D1ABC1: LitI2_Byte 0
  loc_D1ABC3: EqI2
  loc_D1ABC4: BranchF loc_D1AE41
  loc_D1ABC7: FLdPr Me
  loc_D1ABCA: VCallAd Control_ID_ctacteFlex
  loc_D1ABCD: FStAdFunc var_88
  loc_D1ABD0: FLdPr var_88
  loc_D1ABD3: LateIdLdVar var_98 DispID_10 0
  loc_D1ABDA: CI4Var
  loc_D1ABDC: CVarI4
  loc_D1ABE0: PopAdLdVar
  loc_D1ABE1: LitVarI4
  loc_D1ABE9: PopAdLdVar
  loc_D1ABEA: FLdPr Me
  loc_D1ABED: VCallAd Control_ID_ctacteFlex
  loc_D1ABF0: FStAdFunc var_E0
  loc_D1ABF3: FLdPr var_E0
  loc_D1ABF6: LateIdCallLdVar
  loc_D1AC00: PopAd
  loc_D1AC02: FLdPr Me
  loc_D1AC05: VCallAd Control_ID_ctacteFlex
  loc_D1AC08: FStAdFunc var_F4
  loc_D1AC0B: FLdPr var_F4
  loc_D1AC0E: LateIdLdVar var_104 DispID_10 0
  loc_D1AC15: CI4Var
  loc_D1AC17: CVarI4
  loc_D1AC1B: PopAdLdVar
  loc_D1AC1C: LitVarI4
  loc_D1AC24: PopAdLdVar
  loc_D1AC25: FLdPr Me
  loc_D1AC28: VCallAd Control_ID_ctacteFlex
  loc_D1AC2B: FStAdFunc var_148
  loc_D1AC2E: FLdPr var_148
  loc_D1AC31: LateIdCallLdVar
  loc_D1AC3B: PopAd
  loc_D1AC3D: FLdPr Me
  loc_D1AC40: VCallAd Control_ID_ctacteFlex
  loc_D1AC43: FStAdFunc var_160
  loc_D1AC46: FLdPr var_160
  loc_D1AC49: LateIdLdVar var_170 DispID_10 0
  loc_D1AC50: CI4Var
  loc_D1AC52: CVarI4
  loc_D1AC56: PopAdLdVar
  loc_D1AC57: LitVarI4
  loc_D1AC5F: PopAdLdVar
  loc_D1AC60: FLdPr Me
  loc_D1AC63: VCallAd Control_ID_ctacteFlex
  loc_D1AC66: FStAdFunc var_1B4
  loc_D1AC69: FLdPr var_1B4
  loc_D1AC6C: LateIdCallLdVar
  loc_D1AC76: CStrVarTmp
  loc_D1AC77: CVarStr var_1DC
  loc_D1AC7A: FLdRfVar var_230
  loc_D1AC7D: ImpAdCallFPR4  = Trim()
  loc_D1AC82: LitI4 4
  loc_D1AC87: FLdRfVar var_230
  loc_D1AC8A: FLdRfVar var_24C
  loc_D1AC8D: ImpAdCallFPR4  = Right(, )
  loc_D1AC92: FLdPr Me
  loc_D1AC95: VCallAd Control_ID_ctacteFlex
  loc_D1AC98: FStAdFunc var_1CC
  loc_D1AC9B: FLdPr var_1CC
  loc_D1AC9E: LateIdLdVar var_25C DispID_10 0
  loc_D1ACA5: CI4Var
  loc_D1ACA7: CVarI4
  loc_D1ACAB: PopAdLdVar
  loc_D1ACAC: LitVarI4
  loc_D1ACB4: PopAdLdVar
  loc_D1ACB5: FLdPr Me
  loc_D1ACB8: VCallAd Control_ID_ctacteFlex
  loc_D1ACBB: FStAdFunc var_220
  loc_D1ACBE: FLdPr var_220
  loc_D1ACC1: LateIdCallLdVar
  loc_D1ACCB: PopAd
  loc_D1ACCD: LitI4 1
  loc_D1ACD2: FLdPr Me
  loc_D1ACD5: VCallAd Control_ID_ctacteFlex
  loc_D1ACD8: FStAdFunc var_270
  loc_D1ACDB: FLdPr var_270
  loc_D1ACDE: LateIdLdVar var_280 DispID_10 0
  loc_D1ACE5: CI4Var
  loc_D1ACE7: CVarI4
  loc_D1ACEB: PopAdLdVar
  loc_D1ACEC: LitVarI4
  loc_D1ACF4: PopAdLdVar
  loc_D1ACF5: FLdPr Me
  loc_D1ACF8: VCallAd Control_ID_ctacteFlex
  loc_D1ACFB: FStAdFunc var_2C4
  loc_D1ACFE: FLdPr var_2C4
  loc_D1AD01: LateIdCallLdVar
  loc_D1AD0B: CStrVarTmp
  loc_D1AD0C: FStStrNoPop var_9C
  loc_D1AD0F: LitStr "/"
  loc_D1AD12: LitI4 0
  loc_D1AD17: FnInStr4
  loc_D1AD19: LitI4 1
  loc_D1AD1E: SubI4
  loc_D1AD1F: CVarI4
  loc_D1AD23: LitI4 1
  loc_D1AD28: FLdRfVar var_26C
  loc_D1AD2B: CStrVarTmp
  loc_D1AD2C: CVarStr var_2E4
  loc_D1AD2F: FLdRfVar var_314
  loc_D1AD32: ImpAdCallFPR4  = Mid(, , )
  loc_D1AD37: FLdPr Me
  loc_D1AD3A: VCallAd Control_ID_ctacteFlex
  loc_D1AD3D: FStAdFunc var_318
  loc_D1AD40: FLdPr var_318
  loc_D1AD43: LateIdLdVar var_328 DispID_10 0
  loc_D1AD4A: CI4Var
  loc_D1AD4C: CVarI4
  loc_D1AD50: PopAdLdVar
  loc_D1AD51: LitVarI4
  loc_D1AD59: PopAdLdVar
  loc_D1AD5A: FLdPr Me
  loc_D1AD5D: VCallAd Control_ID_ctacteFlex
  loc_D1AD60: FStAdFunc var_36C
  loc_D1AD63: FLdPr var_36C
  loc_D1AD66: LateIdCallLdVar
  loc_D1AD70: PopAd
  loc_D1AD72: FLdPr Me
  loc_D1AD75: VCallAd Control_ID_ctacteFlex
  loc_D1AD78: FStAdFunc var_380
  loc_D1AD7B: FLdPr var_380
  loc_D1AD7E: LateIdLdVar var_390 DispID_10 0
  loc_D1AD85: CI4Var
  loc_D1AD87: CVarI4
  loc_D1AD8B: PopAdLdVar
  loc_D1AD8C: LitVarI4
  loc_D1AD94: PopAdLdVar
  loc_D1AD95: FLdPr Me
  loc_D1AD98: VCallAd Control_ID_ctacteFlex
  loc_D1AD9B: FStAdFunc var_3D4
  loc_D1AD9E: FLdPr var_3D4
  loc_D1ADA1: LateIdCallLdVar
  loc_D1ADAB: PopAd
  loc_D1ADAD: LitStr "tmp_ctacteboleto"
  loc_D1ADB0: LitStr "No"
  loc_D1ADB3: FLdRfVar var_3E4
  loc_D1ADB6: CStrVarTmp
  loc_D1ADB7: FStStrNoPop var_3E8
  loc_D1ADBA: CI2Str
  loc_D1ADBC: FLdRfVar var_37C
  loc_D1ADBF: CStrVarTmp
  loc_D1ADC0: FStStrNoPop var_234
  loc_D1ADC3: CI4Str
  loc_D1ADC4: FLdRfVar var_314
  loc_D1ADC7: CI2Var
  loc_D1ADC8: FLdRfVar var_24C
  loc_D1ADCB: CI2Var
  loc_D1ADCC: FLdRfVar var_158
  loc_D1ADCF: CStrVarTmp
  loc_D1ADD0: FStStrNoPop var_1C8
  loc_D1ADD3: FLdRfVar var_F0
  loc_D1ADD6: CStrVarTmp
  loc_D1ADD7: FStStrNoPop var_15C
  loc_D1ADDA: CUI1Str
  loc_D1ADDC: FLdPr Me
  loc_D1ADDF: MemLdRfVar from_stack_1.global_64
  loc_D1ADE2: NewIfNullPr clsctacte
  loc_D1ADE5: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_D1ADEA: FFreeStr var_9C = "": var_15C = "": var_1C8 = "": var_234 = ""
  loc_D1ADF7: FFreeAd var_88 = "": var_E0 = "": var_F4 = "": var_148 = "": var_160 = "": var_1B4 = "": var_1CC = "": var_220 = "": var_270 = "": var_2C4 = "": var_318 = "": var_36C = "": var_380 = ""
  loc_D1AE16: FFreeVar var_98 = "": var_F0 = "": var_104 = "": var_158 = "": var_170 = "": var_1C4 = "": var_1DC = "": var_230 = "": var_25C = "": var_26C = "": var_280 = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_328 = "": var_37C = "": var_390 = "": var_3E4 = "": var_24C = ""
  loc_D1AE41: FLdPr Me
  loc_D1AE44: MemLdI2 global_100
  loc_D1AE47: LitI2_Byte &HE
  loc_D1AE49: EqI2
  loc_D1AE4A: BranchF loc_D1AF50
  loc_D1AE4D: FLdPr Me
  loc_D1AE50: VCallAd Control_ID_ctacteFlex
  loc_D1AE53: FStAdFunc var_88
  loc_D1AE56: FLdPr var_88
  loc_D1AE59: LateIdLdVar var_98 DispID_10 0
  loc_D1AE60: CI4Var
  loc_D1AE62: CVarI4
  loc_D1AE66: PopAdLdVar
  loc_D1AE67: FLdPr Me
  loc_D1AE6A: MemLdI2 global_100
  loc_D1AE6D: CI4UI1
  loc_D1AE6E: CVarI4
  loc_D1AE72: PopAdLdVar
  loc_D1AE73: FLdPr Me
  loc_D1AE76: VCallAd Control_ID_ctacteFlex
  loc_D1AE79: FStAdFunc var_E0
  loc_D1AE7C: FLdPr var_E0
  loc_D1AE7F: LateIdCallLdVar
  loc_D1AE89: PopAd
  loc_D1AE8B: LitI4 2
  loc_D1AE90: FLdPr Me
  loc_D1AE93: MemLdFPR8 global_104
  loc_D1AE96: FLdRfVar var_F0
  loc_D1AE99: CStrVarTmp
  loc_D1AE9A: FStStrNoPop var_9C
  loc_D1AE9D: CR8Str
  loc_D1AE9F: SubR4
  loc_D1AEA0: CVarR8
  loc_D1AEA4: FLdRfVar var_158
  loc_D1AEA7: ImpAdCallFPR4  = Round(, )
  loc_D1AEAC: FLdRfVar var_158
  loc_D1AEAF: CR4Var
  loc_D1AEB0: FLdPr Me
  loc_D1AEB3: MemStFPR8 global_104
  loc_D1AEB6: FFree1Str var_9C
  loc_D1AEB9: FFreeAd var_88 = ""
  loc_D1AEC0: FFreeVar var_98 = "": var_F0 = "": var_104 = ""
  loc_D1AECB: FLdRfVar var_3EA
  loc_D1AECE: FLdPr Me
  loc_D1AED1: VCallAd Control_ID_HabilitarChk
  loc_D1AED4: FStAdFunc var_88
  loc_D1AED7: FLdPr var_88
  loc_D1AEDA:  = Me.Value
  loc_D1AEDF: FLdI2 var_3EA
  loc_D1AEE2: LitI2_Byte 1
  loc_D1AEE4: EqI2
  loc_D1AEE5: FFree1Ad var_88
  loc_D1AEE8: BranchF loc_D1AF50
  loc_D1AEEB: FLdPr Me
  loc_D1AEEE: VCallAd Control_ID_ctacteFlex
  loc_D1AEF1: FStAdFunc var_88
  loc_D1AEF4: FLdPr var_88
  loc_D1AEF7: LateIdLdVar var_98 DispID_10 0
  loc_D1AEFE: CI4Var
  loc_D1AF00: CVarI4
  loc_D1AF04: PopAdLdVar
  loc_D1AF05: FLdPr Me
  loc_D1AF08: MemLdI2 global_100
  loc_D1AF0B: CI4UI1
  loc_D1AF0C: CVarI4
  loc_D1AF10: PopAdLdVar
  loc_D1AF11: FLdPr Me
  loc_D1AF14: VCallAd Control_ID_ctacteFlex
  loc_D1AF17: FStAdFunc var_E0
  loc_D1AF1A: FLdPr var_E0
  loc_D1AF1D: LateIdCallLdVar
  loc_D1AF27: PopAd
  loc_D1AF29: FLdPr Me
  loc_D1AF2C: MemLdFPR8 global_232
  loc_D1AF2F: FLdRfVar var_F0
  loc_D1AF32: CStrVarTmp
  loc_D1AF33: FStStrNoPop var_9C
  loc_D1AF36: CR8Str
  loc_D1AF38: AddR8
  loc_D1AF39: FLdPr Me
  loc_D1AF3C: MemStFPR8 global_232
  loc_D1AF3F: FFree1Str var_9C
  loc_D1AF42: FFreeAd var_88 = ""
  loc_D1AF49: FFreeVar var_98 = ""
  loc_D1AF50: Branch loc_D1BC87
  loc_D1AF53: LitVarI4
  loc_D1AF5B: PopAdLdVar
  loc_D1AF5C: FLdPr Me
  loc_D1AF5F: VCallAd Control_ID_ctacteFlex
  loc_D1AF62: FStAdFunc var_88
  loc_D1AF65: FLdPr var_88
  loc_D1AF68: LateIdSt
  loc_D1AF6D: FFree1Ad var_88
  loc_D1AF70: FLdPr Me
  loc_D1AF73: VCallAd Control_ID_ctacteFlex
  loc_D1AF76: FStAdFunc var_88
  loc_D1AF79: FLdPr var_88
  loc_D1AF7C: LateIdLdVar var_98 DispID_10 0
  loc_D1AF83: CI4Var
  loc_D1AF85: CVarI4
  loc_D1AF89: PopAdLdVar
  loc_D1AF8A: LitVarI4
  loc_D1AF92: PopAdLdVar
  loc_D1AF93: LitVarStr var_114, "Si"
  loc_D1AF98: PopAdLdVar
  loc_D1AF99: FLdPr Me
  loc_D1AF9C: VCallAd Control_ID_ctacteFlex
  loc_D1AF9F: FStAdFunc var_E0
  loc_D1AFA2: FLdPr var_E0
  loc_D1AFA5: LateIdCallSt
  loc_D1AFAD: FFreeAd var_88 = ""
  loc_D1AFB4: FFree1Var var_98 = ""
  loc_D1AFB7: FLdPr Me
  loc_D1AFBA: MemLdI2 global_100
  loc_D1AFBD: LitI2_Byte 0
  loc_D1AFBF: EqI2
  loc_D1AFC0: BranchF loc_D1B23D
  loc_D1AFC3: FLdPr Me
  loc_D1AFC6: VCallAd Control_ID_ctacteFlex
  loc_D1AFC9: FStAdFunc var_88
  loc_D1AFCC: FLdPr var_88
  loc_D1AFCF: LateIdLdVar var_98 DispID_10 0
  loc_D1AFD6: CI4Var
  loc_D1AFD8: CVarI4
  loc_D1AFDC: PopAdLdVar
  loc_D1AFDD: LitVarI4
  loc_D1AFE5: PopAdLdVar
  loc_D1AFE6: FLdPr Me
  loc_D1AFE9: VCallAd Control_ID_ctacteFlex
  loc_D1AFEC: FStAdFunc var_E0
  loc_D1AFEF: FLdPr var_E0
  loc_D1AFF2: LateIdCallLdVar
  loc_D1AFFC: PopAd
  loc_D1AFFE: FLdPr Me
  loc_D1B001: VCallAd Control_ID_ctacteFlex
  loc_D1B004: FStAdFunc var_F4
  loc_D1B007: FLdPr var_F4
  loc_D1B00A: LateIdLdVar var_104 DispID_10 0
  loc_D1B011: CI4Var
  loc_D1B013: CVarI4
  loc_D1B017: PopAdLdVar
  loc_D1B018: LitVarI4
  loc_D1B020: PopAdLdVar
  loc_D1B021: FLdPr Me
  loc_D1B024: VCallAd Control_ID_ctacteFlex
  loc_D1B027: FStAdFunc var_148
  loc_D1B02A: FLdPr var_148
  loc_D1B02D: LateIdCallLdVar
  loc_D1B037: PopAd
  loc_D1B039: FLdPr Me
  loc_D1B03C: VCallAd Control_ID_ctacteFlex
  loc_D1B03F: FStAdFunc var_160
  loc_D1B042: FLdPr var_160
  loc_D1B045: LateIdLdVar var_170 DispID_10 0
  loc_D1B04C: CI4Var
  loc_D1B04E: CVarI4
  loc_D1B052: PopAdLdVar
  loc_D1B053: LitVarI4
  loc_D1B05B: PopAdLdVar
  loc_D1B05C: FLdPr Me
  loc_D1B05F: VCallAd Control_ID_ctacteFlex
  loc_D1B062: FStAdFunc var_1B4
  loc_D1B065: FLdPr var_1B4
  loc_D1B068: LateIdCallLdVar
  loc_D1B072: CStrVarTmp
  loc_D1B073: CVarStr var_1DC
  loc_D1B076: FLdRfVar var_230
  loc_D1B079: ImpAdCallFPR4  = Trim()
  loc_D1B07E: LitI4 4
  loc_D1B083: FLdRfVar var_230
  loc_D1B086: FLdRfVar var_24C
  loc_D1B089: ImpAdCallFPR4  = Right(, )
  loc_D1B08E: FLdPr Me
  loc_D1B091: VCallAd Control_ID_ctacteFlex
  loc_D1B094: FStAdFunc var_1CC
  loc_D1B097: FLdPr var_1CC
  loc_D1B09A: LateIdLdVar var_25C DispID_10 0
  loc_D1B0A1: CI4Var
  loc_D1B0A3: CVarI4
  loc_D1B0A7: PopAdLdVar
  loc_D1B0A8: LitVarI4
  loc_D1B0B0: PopAdLdVar
  loc_D1B0B1: FLdPr Me
  loc_D1B0B4: VCallAd Control_ID_ctacteFlex
  loc_D1B0B7: FStAdFunc var_220
  loc_D1B0BA: FLdPr var_220
  loc_D1B0BD: LateIdCallLdVar
  loc_D1B0C7: PopAd
  loc_D1B0C9: LitI4 1
  loc_D1B0CE: FLdPr Me
  loc_D1B0D1: VCallAd Control_ID_ctacteFlex
  loc_D1B0D4: FStAdFunc var_270
  loc_D1B0D7: FLdPr var_270
  loc_D1B0DA: LateIdLdVar var_280 DispID_10 0
  loc_D1B0E1: CI4Var
  loc_D1B0E3: CVarI4
  loc_D1B0E7: PopAdLdVar
  loc_D1B0E8: LitVarI4
  loc_D1B0F0: PopAdLdVar
  loc_D1B0F1: FLdPr Me
  loc_D1B0F4: VCallAd Control_ID_ctacteFlex
  loc_D1B0F7: FStAdFunc var_2C4
  loc_D1B0FA: FLdPr var_2C4
  loc_D1B0FD: LateIdCallLdVar
  loc_D1B107: CStrVarTmp
  loc_D1B108: FStStrNoPop var_9C
  loc_D1B10B: LitStr "/"
  loc_D1B10E: LitI4 0
  loc_D1B113: FnInStr4
  loc_D1B115: LitI4 1
  loc_D1B11A: SubI4
  loc_D1B11B: CVarI4
  loc_D1B11F: LitI4 1
  loc_D1B124: FLdRfVar var_26C
  loc_D1B127: CStrVarTmp
  loc_D1B128: CVarStr var_2E4
  loc_D1B12B: FLdRfVar var_314
  loc_D1B12E: ImpAdCallFPR4  = Mid(, , )
  loc_D1B133: FLdPr Me
  loc_D1B136: VCallAd Control_ID_ctacteFlex
  loc_D1B139: FStAdFunc var_318
  loc_D1B13C: FLdPr var_318
  loc_D1B13F: LateIdLdVar var_328 DispID_10 0
  loc_D1B146: CI4Var
  loc_D1B148: CVarI4
  loc_D1B14C: PopAdLdVar
  loc_D1B14D: LitVarI4
  loc_D1B155: PopAdLdVar
  loc_D1B156: FLdPr Me
  loc_D1B159: VCallAd Control_ID_ctacteFlex
  loc_D1B15C: FStAdFunc var_36C
  loc_D1B15F: FLdPr var_36C
  loc_D1B162: LateIdCallLdVar
  loc_D1B16C: PopAd
  loc_D1B16E: FLdPr Me
  loc_D1B171: VCallAd Control_ID_ctacteFlex
  loc_D1B174: FStAdFunc var_380
  loc_D1B177: FLdPr var_380
  loc_D1B17A: LateIdLdVar var_390 DispID_10 0
  loc_D1B181: CI4Var
  loc_D1B183: CVarI4
  loc_D1B187: PopAdLdVar
  loc_D1B188: LitVarI4
  loc_D1B190: PopAdLdVar
  loc_D1B191: FLdPr Me
  loc_D1B194: VCallAd Control_ID_ctacteFlex
  loc_D1B197: FStAdFunc var_3D4
  loc_D1B19A: FLdPr var_3D4
  loc_D1B19D: LateIdCallLdVar
  loc_D1B1A7: PopAd
  loc_D1B1A9: LitStr "tmp_ctacteboleto"
  loc_D1B1AC: LitStr "Si"
  loc_D1B1AF: FLdRfVar var_3E4
  loc_D1B1B2: CStrVarTmp
  loc_D1B1B3: FStStrNoPop var_3E8
  loc_D1B1B6: CI2Str
  loc_D1B1B8: FLdRfVar var_37C
  loc_D1B1BB: CStrVarTmp
  loc_D1B1BC: FStStrNoPop var_234
  loc_D1B1BF: CI4Str
  loc_D1B1C0: FLdRfVar var_314
  loc_D1B1C3: CI2Var
  loc_D1B1C4: FLdRfVar var_24C
  loc_D1B1C7: CI2Var
  loc_D1B1C8: FLdRfVar var_158
  loc_D1B1CB: CStrVarTmp
  loc_D1B1CC: FStStrNoPop var_1C8
  loc_D1B1CF: FLdRfVar var_F0
  loc_D1B1D2: CStrVarTmp
  loc_D1B1D3: FStStrNoPop var_15C
  loc_D1B1D6: CUI1Str
  loc_D1B1D8: FLdPr Me
  loc_D1B1DB: MemLdRfVar from_stack_1.global_64
  loc_D1B1DE: NewIfNullPr clsctacte
  loc_D1B1E1: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_D1B1E6: FFreeStr var_9C = "": var_15C = "": var_1C8 = "": var_234 = ""
  loc_D1B1F3: FFreeAd var_88 = "": var_E0 = "": var_F4 = "": var_148 = "": var_160 = "": var_1B4 = "": var_1CC = "": var_220 = "": var_270 = "": var_2C4 = "": var_318 = "": var_36C = "": var_380 = ""
  loc_D1B212: FFreeVar var_98 = "": var_F0 = "": var_104 = "": var_158 = "": var_170 = "": var_1C4 = "": var_1DC = "": var_230 = "": var_25C = "": var_26C = "": var_280 = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_328 = "": var_37C = "": var_390 = "": var_3E4 = "": var_24C = ""
  loc_D1B23D: FLdPr Me
  loc_D1B240: MemLdI2 global_100
  loc_D1B243: LitI2_Byte &HE
  loc_D1B245: EqI2
  loc_D1B246: BranchF loc_D1BC87
  loc_D1B249: FLdRfVar var_3EA
  loc_D1B24C: FLdPr Me
  loc_D1B24F: VCallAd Control_ID_HabilitarChk
  loc_D1B252: FStAdFunc var_88
  loc_D1B255: FLdPr var_88
  loc_D1B258:  = Me.Value
  loc_D1B25D: FLdI2 var_3EA
  loc_D1B260: LitI2_Byte 1
  loc_D1B262: EqI2
  loc_D1B263: FFree1Ad var_88
  loc_D1B266: BranchF loc_D1BC09
  loc_D1B269: FLdPr Me
  loc_D1B26C: VCallAd Control_ID_ctacteFlex
  loc_D1B26F: FStAdFunc var_88
  loc_D1B272: FLdPr var_88
  loc_D1B275: LateIdLdVar var_98 DispID_10 0
  loc_D1B27C: CI4Var
  loc_D1B27E: CVarI4
  loc_D1B282: PopAdLdVar
  loc_D1B283: FLdPr Me
  loc_D1B286: MemLdI2 global_100
  loc_D1B289: CI4UI1
  loc_D1B28A: CVarI4
  loc_D1B28E: PopAdLdVar
  loc_D1B28F: FLdPr Me
  loc_D1B292: VCallAd Control_ID_ctacteFlex
  loc_D1B295: FStAdFunc var_E0
  loc_D1B298: FLdPr var_E0
  loc_D1B29B: LateIdCallLdVar
  loc_D1B2A5: CStrVarTmp
  loc_D1B2A6: FStStrNoPop var_9C
  loc_D1B2A9: CR8Str
  loc_D1B2AB: FLdPr Me
  loc_D1B2AE: MemLdFPR8 global_232
  loc_D1B2B1: GtR4
  loc_D1B2B2: FFree1Str var_9C
  loc_D1B2B5: FFreeAd var_88 = ""
  loc_D1B2BC: FFreeVar var_98 = ""
  loc_D1B2C3: BranchF loc_D1BBA7
  loc_D1B2C6: FLdPr Me
  loc_D1B2C9: VCallAd Control_ID_ctacteFlex
  loc_D1B2CC: FStAdFunc var_88
  loc_D1B2CF: FLdPr var_88
  loc_D1B2D2: LateIdLdVar var_98 DispID_10 0
  loc_D1B2D9: CI4Var
  loc_D1B2DB: CVarI4
  loc_D1B2DF: PopAdLdVar
  loc_D1B2E0: LitVarI4
  loc_D1B2E8: PopAdLdVar
  loc_D1B2E9: FLdPr Me
  loc_D1B2EC: VCallAd Control_ID_ctacteFlex
  loc_D1B2EF: FStAdFunc var_E0
  loc_D1B2F2: FLdPr var_E0
  loc_D1B2F5: LateIdCallLdVar
  loc_D1B2FF: CStrVarTmp
  loc_D1B300: CVarStr var_104
  loc_D1B303: ImpAdCallI2 IsNumeric()
  loc_D1B308: FFreeAd var_88 = ""
  loc_D1B30F: FFreeVar var_98 = "": var_F0 = ""
  loc_D1B318: BranchF loc_D1B405
  loc_D1B31B: FLdPr Me
  loc_D1B31E: VCallAd Control_ID_ctacteFlex
  loc_D1B321: FStAdFunc var_88
  loc_D1B324: FLdPr var_88
  loc_D1B327: LateIdLdVar var_98 DispID_10 0
  loc_D1B32E: CI4Var
  loc_D1B330: CVarI4
  loc_D1B334: PopAdLdVar
  loc_D1B335: LitVarI4
  loc_D1B33D: PopAdLdVar
  loc_D1B33E: FLdPr Me
  loc_D1B341: VCallAd Control_ID_ctacteFlex
  loc_D1B344: FStAdFunc var_E0
  loc_D1B347: FLdPr var_E0
  loc_D1B34A: LateIdCallLdVar
  loc_D1B354: CStrVarTmp
  loc_D1B355: FStStrNoPop var_9C
  loc_D1B358: CR8Str
  loc_D1B35A: FLdPr Me
  loc_D1B35D: MemStFPR8 global_224
  loc_D1B360: FFree1Str var_9C
  loc_D1B363: FFreeAd var_88 = ""
  loc_D1B36A: FFreeVar var_98 = ""
  loc_D1B371: FLdPr Me
  loc_D1B374: VCallAd Control_ID_ctacteFlex
  loc_D1B377: FStAdFunc var_88
  loc_D1B37A: FLdPr var_88
  loc_D1B37D: LateIdLdVar var_98 DispID_10 0
  loc_D1B384: CI4Var
  loc_D1B386: CVarI4
  loc_D1B38A: PopAdLdVar
  loc_D1B38B: LitVarI4
  loc_D1B393: PopAdLdVar
  loc_D1B394: FLdPr Me
  loc_D1B397: VCallAd Control_ID_ctacteFlex
  loc_D1B39A: FStAdFunc var_E0
  loc_D1B39D: FLdPr var_E0
  loc_D1B3A0: LateIdCallLdVar
  loc_D1B3AA: PopAd
  loc_D1B3AC: LitI4 1
  loc_D1B3B1: LitI4 1
  loc_D1B3B6: LitVarStr var_124, "0.00"
  loc_D1B3BB: FStVarCopyObj var_158
  loc_D1B3BE: FLdRfVar var_158
  loc_D1B3C1: FLdPr Me
  loc_D1B3C4: MemLdFPR8 global_224
  loc_D1B3C7: LitI2_Byte &H64
  loc_D1B3C9: CR8I2
  loc_D1B3CA: MulR8
  loc_D1B3CB: FLdRfVar var_F0
  loc_D1B3CE: CStrVarTmp
  loc_D1B3CF: FStStrNoPop var_9C
  loc_D1B3D2: CR8Str
  loc_D1B3D4: DivR8
  loc_D1B3D5: CVarR8
  loc_D1B3D9: FLdRfVar var_170
  loc_D1B3DC: ImpAdCallFPR4  = Format(, )
  loc_D1B3E1: FLdRfVar var_170
  loc_D1B3E4: CR4Var
  loc_D1B3E5: FLdPr Me
  loc_D1B3E8: MemStFPR8 global_248
  loc_D1B3EB: FFree1Str var_9C
  loc_D1B3EE: FFreeAd var_88 = ""
  loc_D1B3F5: FFreeVar var_98 = "": var_F0 = "": var_104 = "": var_158 = ""
  loc_D1B402: Branch loc_D1B417
  loc_D1B405: LitI2_Byte 0
  loc_D1B407: CR8I2
  loc_D1B408: FLdPr Me
  loc_D1B40B: MemStFPR8 global_224
  loc_D1B40E: LitI2_Byte 0
  loc_D1B410: CR8I2
  loc_D1B411: FLdPr Me
  loc_D1B414: MemStFPR8 global_248
  loc_D1B417: FLdPr Me
  loc_D1B41A: VCallAd Control_ID_ctacteFlex
  loc_D1B41D: FStAdFunc var_88
  loc_D1B420: FLdPr var_88
  loc_D1B423: LateIdLdVar var_98 DispID_10 0
  loc_D1B42A: CI4Var
  loc_D1B42C: CVarI4
  loc_D1B430: PopAdLdVar
  loc_D1B431: LitVarI4
  loc_D1B439: PopAdLdVar
  loc_D1B43A: FLdPr Me
  loc_D1B43D: VCallAd Control_ID_ctacteFlex
  loc_D1B440: FStAdFunc var_E0
  loc_D1B443: FLdPr var_E0
  loc_D1B446: LateIdCallLdVar
  loc_D1B450: PopAd
  loc_D1B452: FLdPr Me
  loc_D1B455: VCallAd Control_ID_ctacteFlex
  loc_D1B458: FStAdFunc var_F4
  loc_D1B45B: FLdPr var_F4
  loc_D1B45E: LateIdLdVar var_104 DispID_10 0
  loc_D1B465: CI4Var
  loc_D1B467: CVarI4
  loc_D1B46B: PopAdLdVar
  loc_D1B46C: LitVarI4
  loc_D1B474: PopAdLdVar
  loc_D1B475: FLdPr Me
  loc_D1B478: VCallAd Control_ID_ctacteFlex
  loc_D1B47B: FStAdFunc var_148
  loc_D1B47E: FLdPr var_148
  loc_D1B481: LateIdCallLdVar
  loc_D1B48B: PopAd
  loc_D1B48D: LitI4 1
  loc_D1B492: LitI4 1
  loc_D1B497: LitVarStr var_190, "0.00"
  loc_D1B49C: FStVarCopyObj var_1C4
  loc_D1B49F: FLdRfVar var_1C4
  loc_D1B4A2: FLdRfVar var_F0
  loc_D1B4A5: CStrVarTmp
  loc_D1B4A6: FStStrNoPop var_9C
  loc_D1B4A9: CR8Str
  loc_D1B4AB: LitI2_Byte &H64
  loc_D1B4AD: CR8I2
  loc_D1B4AE: MulR8
  loc_D1B4AF: FLdRfVar var_158
  loc_D1B4B2: CStrVarTmp
  loc_D1B4B3: FStStrNoPop var_15C
  loc_D1B4B6: CR8Str
  loc_D1B4B8: DivR8
  loc_D1B4B9: CVarR8
  loc_D1B4BD: FLdRfVar var_1DC
  loc_D1B4C0: ImpAdCallFPR4  = Format(, )
  loc_D1B4C5: FLdRfVar var_1DC
  loc_D1B4C8: CR4Var
  loc_D1B4C9: FLdPr Me
  loc_D1B4CC: MemStFPR8 global_240
  loc_D1B4CF: FFreeStr var_9C = ""
  loc_D1B4D6: FFreeAd var_88 = "": var_E0 = "": var_F4 = ""
  loc_D1B4E1: FFreeVar var_98 = "": var_F0 = "": var_104 = "": var_158 = "": var_170 = "": var_1C4 = ""
  loc_D1B4F2: FLdPr Me
  loc_D1B4F5: VCallAd Control_ID_ctacteFlex
  loc_D1B4F8: FStAdFunc var_88
  loc_D1B4FB: FLdPr var_88
  loc_D1B4FE: LateIdLdVar var_104 DispID_10 0
  loc_D1B505: CI4Var
  loc_D1B507: CVarI4
  loc_D1B50B: PopAdLdVar
  loc_D1B50C: LitVarI4
  loc_D1B514: PopAdLdVar
  loc_D1B515: LitI4 1
  loc_D1B51A: LitI4 1
  loc_D1B51F: LitVarStr var_BC, "0.00"
  loc_D1B524: FStVarCopyObj var_98
  loc_D1B527: FLdRfVar var_98
  loc_D1B52A: FLdPr Me
  loc_D1B52D: MemLdRfVar from_stack_1.global_232
  loc_D1B530: CVarRef
  loc_D1B535: FLdRfVar var_F0
  loc_D1B538: ImpAdCallFPR4  = Format(, )
  loc_D1B53D: FLdRfVar var_F0
  loc_D1B540: CStrVarTmp
  loc_D1B541: CVarStr var_158
  loc_D1B544: PopAdLdVar
  loc_D1B545: FLdPr Me
  loc_D1B548: VCallAd Control_ID_ctacteFlex
  loc_D1B54B: FStAdFunc var_E0
  loc_D1B54E: FLdPr var_E0
  loc_D1B551: LateIdCallSt
  loc_D1B559: FFreeAd var_88 = ""
  loc_D1B560: FFreeVar var_98 = "": var_104 = "": var_F0 = ""
  loc_D1B56B: FLdPr Me
  loc_D1B56E: VCallAd Control_ID_ctacteFlex
  loc_D1B571: FStAdFunc var_88
  loc_D1B574: FLdPr var_88
  loc_D1B577: LateIdLdVar var_158 DispID_10 0
  loc_D1B57E: CI4Var
  loc_D1B580: CVarI4
  loc_D1B584: PopAdLdVar
  loc_D1B585: LitVarI4
  loc_D1B58D: PopAdLdVar
  loc_D1B58E: LitI4 1
  loc_D1B593: LitI4 1
  loc_D1B598: LitVarStr var_BC, "0.00"
  loc_D1B59D: FStVarCopyObj var_F0
  loc_D1B5A0: FLdRfVar var_F0
  loc_D1B5A3: FLdPr Me
  loc_D1B5A6: MemLdFPR8 global_232
  loc_D1B5A9: FLdPr Me
  loc_D1B5AC: MemLdFPR8 global_240
  loc_D1B5AF: MulR8
  loc_D1B5B0: LitI2_Byte &H64
  loc_D1B5B2: CR8I2
  loc_D1B5B3: DivR8
  loc_D1B5B4: FnCDblR8
  loc_D1B5B6: CVarR8
  loc_D1B5BA: FLdRfVar var_104
  loc_D1B5BD: ImpAdCallFPR4  = Format(, )
  loc_D1B5C2: FLdRfVar var_104
  loc_D1B5C5: CStrVarTmp
  loc_D1B5C6: CVarStr var_170
  loc_D1B5C9: PopAdLdVar
  loc_D1B5CA: FLdPr Me
  loc_D1B5CD: VCallAd Control_ID_ctacteFlex
  loc_D1B5D0: FStAdFunc var_E0
  loc_D1B5D3: FLdPr var_E0
  loc_D1B5D6: LateIdCallSt
  loc_D1B5DE: FFreeAd var_88 = ""
  loc_D1B5E5: FFreeVar var_98 = "": var_F0 = "": var_158 = "": var_104 = ""
  loc_D1B5F2: LitI4 1
  loc_D1B5F7: LitI4 1
  loc_D1B5FC: LitVarStr var_BC, "0.00"
  loc_D1B601: FStVarCopyObj var_F0
  loc_D1B604: FLdRfVar var_F0
  loc_D1B607: FLdPr Me
  loc_D1B60A: MemLdFPR8 global_232
  loc_D1B60D: FLdPr Me
  loc_D1B610: MemLdFPR8 global_248
  loc_D1B613: MulR8
  loc_D1B614: LitI2_Byte &H64
  loc_D1B616: CR8I2
  loc_D1B617: DivR8
  loc_D1B618: FnCDblR8
  loc_D1B61A: CVarR8
  loc_D1B61E: FLdRfVar var_104
  loc_D1B621: ImpAdCallFPR4  = Format(, )
  loc_D1B626: FLdPr Me
  loc_D1B629: VCallAd Control_ID_ctacteFlex
  loc_D1B62C: FStAdFunc var_88
  loc_D1B62F: FLdPr var_88
  loc_D1B632: LateIdLdVar var_1C4 DispID_10 0
  loc_D1B639: CI4Var
  loc_D1B63B: CVarI4
  loc_D1B63F: PopAdLdVar
  loc_D1B640: LitVarI4
  loc_D1B648: PopAdLdVar
  loc_D1B649: LitVarStr var_DC, vbNullString
  loc_D1B64E: FStVarCopyObj var_158
  loc_D1B651: FLdRfVar var_158
  loc_D1B654: FLdRfVar var_104
  loc_D1B657: FLdPr Me
  loc_D1B65A: MemLdFPR8 global_248
  loc_D1B65D: LitI2_Byte 0
  loc_D1B65F: CR8I2
  loc_D1B660: NeR8
  loc_D1B661: CVarBoolI2 var_CC
  loc_D1B665: FLdRfVar var_170
  loc_D1B668: ImpAdCallFPR4  = IIf(, , )
  loc_D1B66D: FLdRfVar var_170
  loc_D1B670: CStrVarTmp
  loc_D1B671: CVarStr var_1DC
  loc_D1B674: PopAdLdVar
  loc_D1B675: FLdPr Me
  loc_D1B678: VCallAd Control_ID_ctacteFlex
  loc_D1B67B: FStAdFunc var_E0
  loc_D1B67E: FLdPr var_E0
  loc_D1B681: LateIdCallSt
  loc_D1B689: FFreeAd var_88 = ""
  loc_D1B690: FFreeVar var_98 = "": var_F0 = "": var_CC = "": var_104 = "": var_158 = "": var_1C4 = "": var_170 = ""
  loc_D1B6A3: FLdPr Me
  loc_D1B6A6: VCallAd Control_ID_ctacteFlex
  loc_D1B6A9: FStAdFunc var_88
  loc_D1B6AC: FLdPr var_88
  loc_D1B6AF: LateIdLdVar var_98 DispID_10 0
  loc_D1B6B6: CI4Var
  loc_D1B6B8: CVarI4
  loc_D1B6BC: PopAdLdVar
  loc_D1B6BD: LitVarI4
  loc_D1B6C5: PopAdLdVar
  loc_D1B6C6: FLdPr Me
  loc_D1B6C9: VCallAd Control_ID_ctacteFlex
  loc_D1B6CC: FStAdFunc var_E0
  loc_D1B6CF: FLdPr var_E0
  loc_D1B6D2: LateIdCallLdVar
  loc_D1B6DC: CStrVarTmp
  loc_D1B6DD: CVarStr var_104
  loc_D1B6E0: ImpAdCallI2 IsNumeric()
  loc_D1B6E5: FFreeAd var_88 = ""
  loc_D1B6EC: FFreeVar var_98 = "": var_F0 = ""
  loc_D1B6F5: BranchF loc_D1B76F
  loc_D1B6F8: FLdPr Me
  loc_D1B6FB: VCallAd Control_ID_ctacteFlex
  loc_D1B6FE: FStAdFunc var_88
  loc_D1B701: FLdPr var_88
  loc_D1B704: LateIdLdVar var_98 DispID_10 0
  loc_D1B70B: CI4Var
  loc_D1B70D: CVarI4
  loc_D1B711: PopAdLdVar
  loc_D1B712: LitVarI4
  loc_D1B71A: PopAdLdVar
  loc_D1B71B: FLdPr Me
  loc_D1B71E: VCallAd Control_ID_ctacteFlex
  loc_D1B721: FStAdFunc var_E0
  loc_D1B724: FLdPr var_E0
  loc_D1B727: LateIdCallLdVar
  loc_D1B731: PopAd
  loc_D1B733: LitI4 2
  loc_D1B738: FLdRfVar var_F0
  loc_D1B73B: CStrVarTmp
  loc_D1B73C: FStStrNoPop var_9C
  loc_D1B73F: CR8Str
  loc_D1B741: CVarR8
  loc_D1B745: FLdRfVar var_158
  loc_D1B748: ImpAdCallFPR4  = Round(, )
  loc_D1B74D: FLdRfVar var_158
  loc_D1B750: CR4Var
  loc_D1B751: FLdPr Me
  loc_D1B754: MemStFPR8 global_224
  loc_D1B757: FFree1Str var_9C
  loc_D1B75A: FFreeAd var_88 = ""
  loc_D1B761: FFreeVar var_98 = "": var_F0 = "": var_104 = ""
  loc_D1B76C: Branch loc_D1B778
  loc_D1B76F: LitI2_Byte 0
  loc_D1B771: CR8I2
  loc_D1B772: FLdPr Me
  loc_D1B775: MemStFPR8 global_224
  loc_D1B778: FLdPr Me
  loc_D1B77B: VCallAd Control_ID_ctacteFlex
  loc_D1B77E: FStAdFunc var_88
  loc_D1B781: FLdPr var_88
  loc_D1B784: LateIdLdVar var_98 DispID_10 0
  loc_D1B78B: CI4Var
  loc_D1B78D: CVarI4
  loc_D1B791: PopAdLdVar
  loc_D1B792: LitVarI4
  loc_D1B79A: PopAdLdVar
  loc_D1B79B: FLdPr Me
  loc_D1B79E: VCallAd Control_ID_ctacteFlex
  loc_D1B7A1: FStAdFunc var_E0
  loc_D1B7A4: FLdPr var_E0
  loc_D1B7A7: LateIdCallLdVar
  loc_D1B7B1: PopAd
  loc_D1B7B3: FLdPr Me
  loc_D1B7B6: VCallAd Control_ID_ctacteFlex
  loc_D1B7B9: FStAdFunc var_F4
  loc_D1B7BC: FLdPr var_F4
  loc_D1B7BF: LateIdLdVar var_104 DispID_10 0
  loc_D1B7C6: CI4Var
  loc_D1B7C8: CVarI4
  loc_D1B7CC: PopAdLdVar
  loc_D1B7CD: LitVarI4
  loc_D1B7D5: PopAdLdVar
  loc_D1B7D6: FLdPr Me
  loc_D1B7D9: VCallAd Control_ID_ctacteFlex
  loc_D1B7DC: FStAdFunc var_148
  loc_D1B7DF: FLdPr var_148
  loc_D1B7E2: LateIdCallLdVar
  loc_D1B7EC: PopAd
  loc_D1B7EE: FLdPr Me
  loc_D1B7F1: VCallAd Control_ID_ctacteFlex
  loc_D1B7F4: FStAdFunc var_160
  loc_D1B7F7: FLdPr var_160
  loc_D1B7FA: LateIdLdVar var_170 DispID_10 0
  loc_D1B801: CI4Var
  loc_D1B803: CVarI4
  loc_D1B807: PopAdLdVar
  loc_D1B808: LitVarI4
  loc_D1B810: PopAdLdVar
  loc_D1B811: FLdPr Me
  loc_D1B814: VCallAd Control_ID_ctacteFlex
  loc_D1B817: FStAdFunc var_1B4
  loc_D1B81A: FLdPr var_1B4
  loc_D1B81D: LateIdCallLdVar
  loc_D1B827: CStrVarTmp
  loc_D1B828: CVarStr var_1DC
  loc_D1B82B: FLdRfVar var_230
  loc_D1B82E: ImpAdCallFPR4  = Trim()
  loc_D1B833: LitI4 4
  loc_D1B838: FLdRfVar var_230
  loc_D1B83B: FLdRfVar var_24C
  loc_D1B83E: ImpAdCallFPR4  = Right(, )
  loc_D1B843: FLdPr Me
  loc_D1B846: VCallAd Control_ID_ctacteFlex
  loc_D1B849: FStAdFunc var_1CC
  loc_D1B84C: FLdPr var_1CC
  loc_D1B84F: LateIdLdVar var_25C DispID_10 0
  loc_D1B856: CI4Var
  loc_D1B858: CVarI4
  loc_D1B85C: PopAdLdVar
  loc_D1B85D: LitVarI4
  loc_D1B865: PopAdLdVar
  loc_D1B866: FLdPr Me
  loc_D1B869: VCallAd Control_ID_ctacteFlex
  loc_D1B86C: FStAdFunc var_220
  loc_D1B86F: FLdPr var_220
  loc_D1B872: LateIdCallLdVar
  loc_D1B87C: PopAd
  loc_D1B87E: LitI4 1
  loc_D1B883: FLdPr Me
  loc_D1B886: VCallAd Control_ID_ctacteFlex
  loc_D1B889: FStAdFunc var_270
  loc_D1B88C: FLdPr var_270
  loc_D1B88F: LateIdLdVar var_280 DispID_10 0
  loc_D1B896: CI4Var
  loc_D1B898: CVarI4
  loc_D1B89C: PopAdLdVar
  loc_D1B89D: LitVarI4
  loc_D1B8A5: PopAdLdVar
  loc_D1B8A6: FLdPr Me
  loc_D1B8A9: VCallAd Control_ID_ctacteFlex
  loc_D1B8AC: FStAdFunc var_2C4
  loc_D1B8AF: FLdPr var_2C4
  loc_D1B8B2: LateIdCallLdVar
  loc_D1B8BC: CStrVarTmp
  loc_D1B8BD: FStStrNoPop var_9C
  loc_D1B8C0: LitStr "/"
  loc_D1B8C3: LitI4 0
  loc_D1B8C8: FnInStr4
  loc_D1B8CA: LitI4 1
  loc_D1B8CF: SubI4
  loc_D1B8D0: CVarI4
  loc_D1B8D4: LitI4 1
  loc_D1B8D9: FLdRfVar var_26C
  loc_D1B8DC: CStrVarTmp
  loc_D1B8DD: CVarStr var_2E4
  loc_D1B8E0: FLdRfVar var_314
  loc_D1B8E3: ImpAdCallFPR4  = Mid(, , )
  loc_D1B8E8: FLdPr Me
  loc_D1B8EB: VCallAd Control_ID_ctacteFlex
  loc_D1B8EE: FStAdFunc var_318
  loc_D1B8F1: FLdPr var_318
  loc_D1B8F4: LateIdLdVar var_328 DispID_10 0
  loc_D1B8FB: CI4Var
  loc_D1B8FD: CVarI4
  loc_D1B901: PopAdLdVar
  loc_D1B902: LitVarI4
  loc_D1B90A: PopAdLdVar
  loc_D1B90B: FLdPr Me
  loc_D1B90E: VCallAd Control_ID_ctacteFlex
  loc_D1B911: FStAdFunc var_36C
  loc_D1B914: FLdPr var_36C
  loc_D1B917: LateIdCallLdVar
  loc_D1B921: PopAd
  loc_D1B923: FLdPr Me
  loc_D1B926: VCallAd Control_ID_ctacteFlex
  loc_D1B929: FStAdFunc var_380
  loc_D1B92C: FLdPr var_380
  loc_D1B92F: LateIdLdVar var_390 DispID_10 0
  loc_D1B936: CI4Var
  loc_D1B938: CVarI4
  loc_D1B93C: PopAdLdVar
  loc_D1B93D: LitVarI4
  loc_D1B945: PopAdLdVar
  loc_D1B946: FLdPr Me
  loc_D1B949: VCallAd Control_ID_ctacteFlex
  loc_D1B94C: FStAdFunc var_3D4
  loc_D1B94F: FLdPr var_3D4
  loc_D1B952: LateIdCallLdVar
  loc_D1B95C: PopAd
  loc_D1B95E: FLdPr Me
  loc_D1B961: VCallAd Control_ID_ctacteFlex
  loc_D1B964: FStAdFunc var_3F0
  loc_D1B967: FLdPr var_3F0
  loc_D1B96A: LateIdLdVar var_400 DispID_10 0
  loc_D1B971: CI4Var
  loc_D1B973: CVarI4
  loc_D1B977: PopAdLdVar
  loc_D1B978: LitVarI4
  loc_D1B980: PopAdLdVar
  loc_D1B981: FLdPr Me
  loc_D1B984: VCallAd Control_ID_ctacteFlex
  loc_D1B987: FStAdFunc var_444
  loc_D1B98A: FLdPr var_444
  loc_D1B98D: LateIdCallLdVar
  loc_D1B997: PopAd
  loc_D1B999: LitI4 2
  loc_D1B99E: FLdRfVar var_454
  loc_D1B9A1: CStrVarTmp
  loc_D1B9A2: FStStrNoPop var_15C
  loc_D1B9A5: CR8Str
  loc_D1B9A7: CVarR8
  loc_D1B9AB: FLdRfVar var_484
  loc_D1B9AE: ImpAdCallFPR4  = Round(, )
  loc_D1B9B3: FLdPr Me
  loc_D1B9B6: MemLdR8 global_224
  loc_D1B9B9: LitStr "tmp_ctacteboleto"
  loc_D1B9BC: FLdRfVar var_484
  loc_D1B9BF: CR4Var
  loc_D1B9C0: PopFPR8
  loc_D1B9C1: FLdRfVar var_3E4
  loc_D1B9C4: CStrVarTmp
  loc_D1B9C5: FStStrNoPop var_488
  loc_D1B9C8: CI2Str
  loc_D1B9CA: FLdRfVar var_37C
  loc_D1B9CD: CStrVarTmp
  loc_D1B9CE: FStStrNoPop var_3E8
  loc_D1B9D1: CI4Str
  loc_D1B9D2: FLdRfVar var_314
  loc_D1B9D5: CI2Var
  loc_D1B9D6: FLdRfVar var_24C
  loc_D1B9D9: CI2Var
  loc_D1B9DA: FLdRfVar var_158
  loc_D1B9DD: CStrVarTmp
  loc_D1B9DE: FStStrNoPop var_234
  loc_D1B9E1: FLdRfVar var_F0
  loc_D1B9E4: CStrVarTmp
  loc_D1B9E5: FStStrNoPop var_1C8
  loc_D1B9E8: CUI1Str
  loc_D1B9EA: FLdPr Me
  loc_D1B9ED: MemLdRfVar from_stack_1.global_64
  loc_D1B9F0: NewIfNullPr clsctacte
  loc_D1B9F3: Call clsctacte.ActualizaSaldoPagoCuenta(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v)
  loc_D1B9F8: FFreeStr var_9C = "": var_15C = "": var_1C8 = "": var_234 = "": var_3E8 = ""
  loc_D1BA07: FFreeAd var_88 = "": var_E0 = "": var_F4 = "": var_148 = "": var_160 = "": var_1B4 = "": var_1CC = "": var_220 = "": var_270 = "": var_2C4 = "": var_318 = "": var_36C = "": var_380 = "": var_3D4 = "": var_3F0 = ""
  loc_D1BA2A: FFreeVar var_98 = "": var_F0 = "": var_104 = "": var_158 = "": var_170 = "": var_1C4 = "": var_1DC = "": var_230 = "": var_25C = "": var_26C = "": var_280 = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_328 = "": var_37C = "": var_390 = "": var_3E4 = "": var_400 = "": var_454 = "": var_474 = "": var_24C = "": var_314 = ""
  loc_D1BA5D: FLdPr Me
  loc_D1BA60: VCallAd Control_ID_ctacteFlex
  loc_D1BA63: FStAdFunc var_88
  loc_D1BA66: FLdPr var_88
  loc_D1BA69: LateIdLdVar var_98 DispID_10 0
  loc_D1BA70: CI4Var
  loc_D1BA72: CVarI4
  loc_D1BA76: PopAdLdVar
  loc_D1BA77: FLdPr Me
  loc_D1BA7A: MemLdI2 global_100
  loc_D1BA7D: CI4UI1
  loc_D1BA7E: CVarI4
  loc_D1BA82: PopAdLdVar
  loc_D1BA83: FLdPr Me
  loc_D1BA86: VCallAd Control_ID_ctacteFlex
  loc_D1BA89: FStAdFunc var_E0
  loc_D1BA8C: FLdPr var_E0
  loc_D1BA8F: LateIdCallLdVar
  loc_D1BA99: PopAd
  loc_D1BA9B: LitI4 2
  loc_D1BAA0: FLdPr Me
  loc_D1BAA3: MemLdFPR8 global_104
  loc_D1BAA6: FLdRfVar var_F0
  loc_D1BAA9: CStrVarTmp
  loc_D1BAAA: FStStrNoPop var_9C
  loc_D1BAAD: CR8Str
  loc_D1BAAF: AddR8
  loc_D1BAB0: CVarR8
  loc_D1BAB4: FLdRfVar var_158
  loc_D1BAB7: ImpAdCallFPR4  = Round(, )
  loc_D1BABC: FLdRfVar var_158
  loc_D1BABF: CR4Var
  loc_D1BAC0: FLdPr Me
  loc_D1BAC3: MemStFPR8 global_104
  loc_D1BAC6: FFree1Str var_9C
  loc_D1BAC9: FFreeAd var_88 = ""
  loc_D1BAD0: FFreeVar var_98 = "": var_F0 = "": var_104 = ""
  loc_D1BADB: FLdPr Me
  loc_D1BADE: VCallAd Control_ID_ctacteFlex
  loc_D1BAE1: FStAdFunc var_88
  loc_D1BAE4: FLdPr var_88
  loc_D1BAE7: LateIdLdVar var_98 DispID_10 0
  loc_D1BAEE: CI4Var
  loc_D1BAF0: CVarI4
  loc_D1BAF4: PopAdLdVar
  loc_D1BAF5: LitVarI4
  loc_D1BAFD: PopAdLdVar
  loc_D1BAFE: FLdPr Me
  loc_D1BB01: VCallAd Control_ID_ctacteFlex
  loc_D1BB04: FStAdFunc var_E0
  loc_D1BB07: FLdPr var_E0
  loc_D1BB0A: LateIdCallLdVar
  loc_D1BB14: PopAd
  loc_D1BB16: FLdPr Me
  loc_D1BB19: MemLdFPR8 global_232
  loc_D1BB1C: FLdRfVar var_F0
  loc_D1BB1F: CStrVarTmp
  loc_D1BB20: FStStrNoPop var_9C
  loc_D1BB23: CR8Str
  loc_D1BB25: SubR4
  loc_D1BB26: FLdPr Me
  loc_D1BB29: MemStFPR8 global_232
  loc_D1BB2C: FFree1Str var_9C
  loc_D1BB2F: FFreeAd var_88 = ""
  loc_D1BB36: FFreeVar var_98 = ""
  loc_D1BB3D: LitI4 1
  loc_D1BB42: LitI4 1
  loc_D1BB47: LitVarStr var_BC, "0.00"
  loc_D1BB4C: FStVarCopyObj var_98
  loc_D1BB4F: FLdRfVar var_98
  loc_D1BB52: FLdPr Me
  loc_D1BB55: MemLdRfVar from_stack_1.global_104
  loc_D1BB58: CVarRef
  loc_D1BB5D: FLdRfVar var_F0
  loc_D1BB60: ImpAdCallFPR4  = Format(, )
  loc_D1BB65: FLdRfVar var_F0
  loc_D1BB68: CStrVarVal var_9C
  loc_D1BB6C: FLdPr Me
  loc_D1BB6F: VCallAd Control_ID_txtTotaSele
  loc_D1BB72: FStAdFunc var_88
  loc_D1BB75: FLdPr var_88
  loc_D1BB78: Me.Text = from_stack_1
  loc_D1BB7D: FFree1Str var_9C
  loc_D1BB80: FFree1Ad var_88
  loc_D1BB83: FFreeVar var_98 = ""
  loc_D1BB8A: Call cmdGenerarBoleto_Click()
  loc_D1BB8F: FLdPr Me
  loc_D1BB92: VCallAd Control_ID_NumeCtaTxt
  loc_D1BB95: FStAdFunc var_88
  loc_D1BB98: FLdPr var_88
  loc_D1BB9B: Me.SetFocus
  loc_D1BBA0: FFree1Ad var_88
  loc_D1BBA3: ExitProcHresult
  loc_D1BBA4: Branch loc_D1BC09
  loc_D1BBA7: FLdPr Me
  loc_D1BBAA: VCallAd Control_ID_ctacteFlex
  loc_D1BBAD: FStAdFunc var_88
  loc_D1BBB0: FLdPr var_88
  loc_D1BBB3: LateIdLdVar var_98 DispID_10 0
  loc_D1BBBA: CI4Var
  loc_D1BBBC: CVarI4
  loc_D1BBC0: PopAdLdVar
  loc_D1BBC1: LitVarI4
  loc_D1BBC9: PopAdLdVar
  loc_D1BBCA: FLdPr Me
  loc_D1BBCD: VCallAd Control_ID_ctacteFlex
  loc_D1BBD0: FStAdFunc var_E0
  loc_D1BBD3: FLdPr var_E0
  loc_D1BBD6: LateIdCallLdVar
  loc_D1BBE0: PopAd
  loc_D1BBE2: FLdPr Me
  loc_D1BBE5: MemLdFPR8 global_232
  loc_D1BBE8: FLdRfVar var_F0
  loc_D1BBEB: CStrVarTmp
  loc_D1BBEC: FStStrNoPop var_9C
  loc_D1BBEF: CR8Str
  loc_D1BBF1: SubR4
  loc_D1BBF2: FLdPr Me
  loc_D1BBF5: MemStFPR8 global_232
  loc_D1BBF8: FFree1Str var_9C
  loc_D1BBFB: FFreeAd var_88 = ""
  loc_D1BC02: FFreeVar var_98 = ""
  loc_D1BC09: FLdPr Me
  loc_D1BC0C: VCallAd Control_ID_ctacteFlex
  loc_D1BC0F: FStAdFunc var_88
  loc_D1BC12: FLdPr var_88
  loc_D1BC15: LateIdLdVar var_98 DispID_10 0
  loc_D1BC1C: CI4Var
  loc_D1BC1E: CVarI4
  loc_D1BC22: PopAdLdVar
  loc_D1BC23: FLdPr Me
  loc_D1BC26: MemLdI2 global_100
  loc_D1BC29: CI4UI1
  loc_D1BC2A: CVarI4
  loc_D1BC2E: PopAdLdVar
  loc_D1BC2F: FLdPr Me
  loc_D1BC32: VCallAd Control_ID_ctacteFlex
  loc_D1BC35: FStAdFunc var_E0
  loc_D1BC38: FLdPr var_E0
  loc_D1BC3B: LateIdCallLdVar
  loc_D1BC45: PopAd
  loc_D1BC47: LitI4 2
  loc_D1BC4C: FLdPr Me
  loc_D1BC4F: MemLdFPR8 global_104
  loc_D1BC52: FLdRfVar var_F0
  loc_D1BC55: CStrVarTmp
  loc_D1BC56: FStStrNoPop var_9C
  loc_D1BC59: CR8Str
  loc_D1BC5B: AddR8
  loc_D1BC5C: CVarR8
  loc_D1BC60: FLdRfVar var_158
  loc_D1BC63: ImpAdCallFPR4  = Round(, )
  loc_D1BC68: FLdRfVar var_158
  loc_D1BC6B: CR4Var
  loc_D1BC6C: FLdPr Me
  loc_D1BC6F: MemStFPR8 global_104
  loc_D1BC72: FFree1Str var_9C
  loc_D1BC75: FFreeAd var_88 = ""
  loc_D1BC7C: FFreeVar var_98 = "": var_F0 = "": var_104 = ""
  loc_D1BC87: FLdPr Me
  loc_D1BC8A: MemLdRfVar from_stack_1.global_100
  loc_D1BC8D: NextI2 var_23C, loc_D1AB13
  loc_D1BC92: FLdPr Me
  loc_D1BC95: MemLdRfVar from_stack_1.global_102
  loc_D1BC98: NextI2 var_238, loc_D1AA39
  loc_D1BC9D: Branch loc_D1CE4F
  loc_D1BCA0: LitI2_Byte 0
  loc_D1BCA2: FLdPr Me
  loc_D1BCA5: MemLdRfVar from_stack_1.global_100
  loc_D1BCA8: FLdPr Me
  loc_D1BCAB: VCallAd Control_ID_ctacteFlex
  loc_D1BCAE: FStAdFunc var_88
  loc_D1BCB1: FLdPr var_88
  loc_D1BCB4: LateIdLdVar var_98 DispID_5 0
  loc_D1BCBB: CI4Var
  loc_D1BCBD: LitI4 1
  loc_D1BCC2: SubI4
  loc_D1BCC3: CI2I4
  loc_D1BCC4: FFree1Ad var_88
  loc_D1BCC7: FFree1Var var_98 = ""
  loc_D1BCCA: ForI2 var_48C
  loc_D1BCD0: FLdPr Me
  loc_D1BCD3: MemLdI2 global_100
  loc_D1BCD6: CI4UI1
  loc_D1BCD7: CVarI4
  loc_D1BCDB: PopAdLdVar
  loc_D1BCDC: FLdPr Me
  loc_D1BCDF: VCallAd Control_ID_ctacteFlex
  loc_D1BCE2: FStAdFunc var_88
  loc_D1BCE5: FLdPr var_88
  loc_D1BCE8: LateIdSt
  loc_D1BCED: FFree1Ad var_88
  loc_D1BCF0: FLdPr Me
  loc_D1BCF3: VCallAd Control_ID_ctacteFlex
  loc_D1BCF6: FStAdFunc var_88
  loc_D1BCF9: FLdPr var_88
  loc_D1BCFC: LateIdLdVar var_98 DispID_38 0
  loc_D1BD03: CI4Var
  loc_D1BD05: LitI4 &HFFFF80
  loc_D1BD0A: EqI4
  loc_D1BD0B: FFree1Ad var_88
  loc_D1BD0E: FFree1Var var_98 = ""
  loc_D1BD11: BranchF loc_D1C110
  loc_D1BD14: LitVarI4
  loc_D1BD1C: PopAdLdVar
  loc_D1BD1D: FLdPr Me
  loc_D1BD20: VCallAd Control_ID_ctacteFlex
  loc_D1BD23: FStAdFunc var_88
  loc_D1BD26: FLdPr var_88
  loc_D1BD29: LateIdSt
  loc_D1BD2E: FFree1Ad var_88
  loc_D1BD31: FLdPr Me
  loc_D1BD34: VCallAd Control_ID_ctacteFlex
  loc_D1BD37: FStAdFunc var_88
  loc_D1BD3A: FLdPr var_88
  loc_D1BD3D: LateIdLdVar var_98 DispID_10 0
  loc_D1BD44: CI4Var
  loc_D1BD46: CVarI4
  loc_D1BD4A: PopAdLdVar
  loc_D1BD4B: LitVarI4
  loc_D1BD53: PopAdLdVar
  loc_D1BD54: LitVarStr var_114, "No"
  loc_D1BD59: PopAdLdVar
  loc_D1BD5A: FLdPr Me
  loc_D1BD5D: VCallAd Control_ID_ctacteFlex
  loc_D1BD60: FStAdFunc var_E0
  loc_D1BD63: FLdPr var_E0
  loc_D1BD66: LateIdCallSt
  loc_D1BD6E: FFreeAd var_88 = ""
  loc_D1BD75: FFree1Var var_98 = ""
  loc_D1BD78: FLdPr Me
  loc_D1BD7B: MemLdI2 global_100
  loc_D1BD7E: LitI2_Byte 0
  loc_D1BD80: EqI2
  loc_D1BD81: BranchF loc_D1BFFE
  loc_D1BD84: FLdPr Me
  loc_D1BD87: VCallAd Control_ID_ctacteFlex
  loc_D1BD8A: FStAdFunc var_88
  loc_D1BD8D: FLdPr var_88
  loc_D1BD90: LateIdLdVar var_98 DispID_10 0
  loc_D1BD97: CI4Var
  loc_D1BD99: CVarI4
  loc_D1BD9D: PopAdLdVar
  loc_D1BD9E: LitVarI4
  loc_D1BDA6: PopAdLdVar
  loc_D1BDA7: FLdPr Me
  loc_D1BDAA: VCallAd Control_ID_ctacteFlex
  loc_D1BDAD: FStAdFunc var_E0
  loc_D1BDB0: FLdPr var_E0
  loc_D1BDB3: LateIdCallLdVar
  loc_D1BDBD: PopAd
  loc_D1BDBF: FLdPr Me
  loc_D1BDC2: VCallAd Control_ID_ctacteFlex
  loc_D1BDC5: FStAdFunc var_F4
  loc_D1BDC8: FLdPr var_F4
  loc_D1BDCB: LateIdLdVar var_104 DispID_10 0
  loc_D1BDD2: CI4Var
  loc_D1BDD4: CVarI4
  loc_D1BDD8: PopAdLdVar
  loc_D1BDD9: LitVarI4
  loc_D1BDE1: PopAdLdVar
  loc_D1BDE2: FLdPr Me
  loc_D1BDE5: VCallAd Control_ID_ctacteFlex
  loc_D1BDE8: FStAdFunc var_148
  loc_D1BDEB: FLdPr var_148
  loc_D1BDEE: LateIdCallLdVar
  loc_D1BDF8: PopAd
  loc_D1BDFA: FLdPr Me
  loc_D1BDFD: VCallAd Control_ID_ctacteFlex
  loc_D1BE00: FStAdFunc var_160
  loc_D1BE03: FLdPr var_160
  loc_D1BE06: LateIdLdVar var_170 DispID_10 0
  loc_D1BE0D: CI4Var
  loc_D1BE0F: CVarI4
  loc_D1BE13: PopAdLdVar
  loc_D1BE14: LitVarI4
  loc_D1BE1C: PopAdLdVar
  loc_D1BE1D: FLdPr Me
  loc_D1BE20: VCallAd Control_ID_ctacteFlex
  loc_D1BE23: FStAdFunc var_1B4
  loc_D1BE26: FLdPr var_1B4
  loc_D1BE29: LateIdCallLdVar
  loc_D1BE33: CStrVarTmp
  loc_D1BE34: CVarStr var_1DC
  loc_D1BE37: FLdRfVar var_230
  loc_D1BE3A: ImpAdCallFPR4  = Trim()
  loc_D1BE3F: LitI4 4
  loc_D1BE44: FLdRfVar var_230
  loc_D1BE47: FLdRfVar var_24C
  loc_D1BE4A: ImpAdCallFPR4  = Right(, )
  loc_D1BE4F: FLdPr Me
  loc_D1BE52: VCallAd Control_ID_ctacteFlex
  loc_D1BE55: FStAdFunc var_1CC
  loc_D1BE58: FLdPr var_1CC
  loc_D1BE5B: LateIdLdVar var_25C DispID_10 0
  loc_D1BE62: CI4Var
  loc_D1BE64: CVarI4
  loc_D1BE68: PopAdLdVar
  loc_D1BE69: LitVarI4
  loc_D1BE71: PopAdLdVar
  loc_D1BE72: FLdPr Me
  loc_D1BE75: VCallAd Control_ID_ctacteFlex
  loc_D1BE78: FStAdFunc var_220
  loc_D1BE7B: FLdPr var_220
  loc_D1BE7E: LateIdCallLdVar
  loc_D1BE88: PopAd
  loc_D1BE8A: LitI4 1
  loc_D1BE8F: FLdPr Me
  loc_D1BE92: VCallAd Control_ID_ctacteFlex
  loc_D1BE95: FStAdFunc var_270
  loc_D1BE98: FLdPr var_270
  loc_D1BE9B: LateIdLdVar var_280 DispID_10 0
  loc_D1BEA2: CI4Var
  loc_D1BEA4: CVarI4
  loc_D1BEA8: PopAdLdVar
  loc_D1BEA9: LitVarI4
  loc_D1BEB1: PopAdLdVar
  loc_D1BEB2: FLdPr Me
  loc_D1BEB5: VCallAd Control_ID_ctacteFlex
  loc_D1BEB8: FStAdFunc var_2C4
  loc_D1BEBB: FLdPr var_2C4
  loc_D1BEBE: LateIdCallLdVar
  loc_D1BEC8: CStrVarTmp
  loc_D1BEC9: FStStrNoPop var_9C
  loc_D1BECC: LitStr "/"
  loc_D1BECF: LitI4 0
  loc_D1BED4: FnInStr4
  loc_D1BED6: LitI4 1
  loc_D1BEDB: SubI4
  loc_D1BEDC: CVarI4
  loc_D1BEE0: LitI4 1
  loc_D1BEE5: FLdRfVar var_26C
  loc_D1BEE8: CStrVarTmp
  loc_D1BEE9: CVarStr var_2E4
  loc_D1BEEC: FLdRfVar var_314
  loc_D1BEEF: ImpAdCallFPR4  = Mid(, , )
  loc_D1BEF4: FLdPr Me
  loc_D1BEF7: VCallAd Control_ID_ctacteFlex
  loc_D1BEFA: FStAdFunc var_318
  loc_D1BEFD: FLdPr var_318
  loc_D1BF00: LateIdLdVar var_328 DispID_10 0
  loc_D1BF07: CI4Var
  loc_D1BF09: CVarI4
  loc_D1BF0D: PopAdLdVar
  loc_D1BF0E: LitVarI4
  loc_D1BF16: PopAdLdVar
  loc_D1BF17: FLdPr Me
  loc_D1BF1A: VCallAd Control_ID_ctacteFlex
  loc_D1BF1D: FStAdFunc var_36C
  loc_D1BF20: FLdPr var_36C
  loc_D1BF23: LateIdCallLdVar
  loc_D1BF2D: PopAd
  loc_D1BF2F: FLdPr Me
  loc_D1BF32: VCallAd Control_ID_ctacteFlex
  loc_D1BF35: FStAdFunc var_380
  loc_D1BF38: FLdPr var_380
  loc_D1BF3B: LateIdLdVar var_390 DispID_10 0
  loc_D1BF42: CI4Var
  loc_D1BF44: CVarI4
  loc_D1BF48: PopAdLdVar
  loc_D1BF49: LitVarI4
  loc_D1BF51: PopAdLdVar
  loc_D1BF52: FLdPr Me
  loc_D1BF55: VCallAd Control_ID_ctacteFlex
  loc_D1BF58: FStAdFunc var_3D4
  loc_D1BF5B: FLdPr var_3D4
  loc_D1BF5E: LateIdCallLdVar
  loc_D1BF68: PopAd
  loc_D1BF6A: LitStr "tmp_ctacteboleto"
  loc_D1BF6D: LitStr "No"
  loc_D1BF70: FLdRfVar var_3E4
  loc_D1BF73: CStrVarTmp
  loc_D1BF74: FStStrNoPop var_3E8
  loc_D1BF77: CI2Str
  loc_D1BF79: FLdRfVar var_37C
  loc_D1BF7C: CStrVarTmp
  loc_D1BF7D: FStStrNoPop var_234
  loc_D1BF80: CI4Str
  loc_D1BF81: FLdRfVar var_314
  loc_D1BF84: CI2Var
  loc_D1BF85: FLdRfVar var_24C
  loc_D1BF88: CI2Var
  loc_D1BF89: FLdRfVar var_158
  loc_D1BF8C: CStrVarTmp
  loc_D1BF8D: FStStrNoPop var_1C8
  loc_D1BF90: FLdRfVar var_F0
  loc_D1BF93: CStrVarTmp
  loc_D1BF94: FStStrNoPop var_15C
  loc_D1BF97: CUI1Str
  loc_D1BF99: FLdPr Me
  loc_D1BF9C: MemLdRfVar from_stack_1.global_64
  loc_D1BF9F: NewIfNullPr clsctacte
  loc_D1BFA2: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_D1BFA7: FFreeStr var_9C = "": var_15C = "": var_1C8 = "": var_234 = ""
  loc_D1BFB4: FFreeAd var_88 = "": var_E0 = "": var_F4 = "": var_148 = "": var_160 = "": var_1B4 = "": var_1CC = "": var_220 = "": var_270 = "": var_2C4 = "": var_318 = "": var_36C = "": var_380 = ""
  loc_D1BFD3: FFreeVar var_98 = "": var_F0 = "": var_104 = "": var_158 = "": var_170 = "": var_1C4 = "": var_1DC = "": var_230 = "": var_25C = "": var_26C = "": var_280 = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_328 = "": var_37C = "": var_390 = "": var_3E4 = "": var_24C = ""
  loc_D1BFFE: FLdPr Me
  loc_D1C001: MemLdI2 global_100
  loc_D1C004: LitI2_Byte &HE
  loc_D1C006: EqI2
  loc_D1C007: BranchF loc_D1C10D
  loc_D1C00A: FLdPr Me
  loc_D1C00D: VCallAd Control_ID_ctacteFlex
  loc_D1C010: FStAdFunc var_88
  loc_D1C013: FLdPr var_88
  loc_D1C016: LateIdLdVar var_98 DispID_10 0
  loc_D1C01D: CI4Var
  loc_D1C01F: CVarI4
  loc_D1C023: PopAdLdVar
  loc_D1C024: FLdPr Me
  loc_D1C027: MemLdI2 global_100
  loc_D1C02A: CI4UI1
  loc_D1C02B: CVarI4
  loc_D1C02F: PopAdLdVar
  loc_D1C030: FLdPr Me
  loc_D1C033: VCallAd Control_ID_ctacteFlex
  loc_D1C036: FStAdFunc var_E0
  loc_D1C039: FLdPr var_E0
  loc_D1C03C: LateIdCallLdVar
  loc_D1C046: PopAd
  loc_D1C048: LitI4 2
  loc_D1C04D: FLdPr Me
  loc_D1C050: MemLdFPR8 global_104
  loc_D1C053: FLdRfVar var_F0
  loc_D1C056: CStrVarTmp
  loc_D1C057: FStStrNoPop var_9C
  loc_D1C05A: CR8Str
  loc_D1C05C: SubR4
  loc_D1C05D: CVarR8
  loc_D1C061: FLdRfVar var_158
  loc_D1C064: ImpAdCallFPR4  = Round(, )
  loc_D1C069: FLdRfVar var_158
  loc_D1C06C: CR4Var
  loc_D1C06D: FLdPr Me
  loc_D1C070: MemStFPR8 global_104
  loc_D1C073: FFree1Str var_9C
  loc_D1C076: FFreeAd var_88 = ""
  loc_D1C07D: FFreeVar var_98 = "": var_F0 = "": var_104 = ""
  loc_D1C088: FLdRfVar var_3EA
  loc_D1C08B: FLdPr Me
  loc_D1C08E: VCallAd Control_ID_HabilitarChk
  loc_D1C091: FStAdFunc var_88
  loc_D1C094: FLdPr var_88
  loc_D1C097:  = Me.Value
  loc_D1C09C: FLdI2 var_3EA
  loc_D1C09F: LitI2_Byte 1
  loc_D1C0A1: EqI2
  loc_D1C0A2: FFree1Ad var_88
  loc_D1C0A5: BranchF loc_D1C10D
  loc_D1C0A8: FLdPr Me
  loc_D1C0AB: VCallAd Control_ID_ctacteFlex
  loc_D1C0AE: FStAdFunc var_88
  loc_D1C0B1: FLdPr var_88
  loc_D1C0B4: LateIdLdVar var_98 DispID_10 0
  loc_D1C0BB: CI4Var
  loc_D1C0BD: CVarI4
  loc_D1C0C1: PopAdLdVar
  loc_D1C0C2: FLdPr Me
  loc_D1C0C5: MemLdI2 global_100
  loc_D1C0C8: CI4UI1
  loc_D1C0C9: CVarI4
  loc_D1C0CD: PopAdLdVar
  loc_D1C0CE: FLdPr Me
  loc_D1C0D1: VCallAd Control_ID_ctacteFlex
  loc_D1C0D4: FStAdFunc var_E0
  loc_D1C0D7: FLdPr var_E0
  loc_D1C0DA: LateIdCallLdVar
  loc_D1C0E4: PopAd
  loc_D1C0E6: FLdPr Me
  loc_D1C0E9: MemLdFPR8 global_232
  loc_D1C0EC: FLdRfVar var_F0
  loc_D1C0EF: CStrVarTmp
  loc_D1C0F0: FStStrNoPop var_9C
  loc_D1C0F3: CR8Str
  loc_D1C0F5: AddR8
  loc_D1C0F6: FLdPr Me
  loc_D1C0F9: MemStFPR8 global_232
  loc_D1C0FC: FFree1Str var_9C
  loc_D1C0FF: FFreeAd var_88 = ""
  loc_D1C106: FFreeVar var_98 = ""
  loc_D1C10D: Branch loc_D1CE44
  loc_D1C110: LitVarI4
  loc_D1C118: PopAdLdVar
  loc_D1C119: FLdPr Me
  loc_D1C11C: VCallAd Control_ID_ctacteFlex
  loc_D1C11F: FStAdFunc var_88
  loc_D1C122: FLdPr var_88
  loc_D1C125: LateIdSt
  loc_D1C12A: FFree1Ad var_88
  loc_D1C12D: FLdPr Me
  loc_D1C130: VCallAd Control_ID_ctacteFlex
  loc_D1C133: FStAdFunc var_88
  loc_D1C136: FLdPr var_88
  loc_D1C139: LateIdLdVar var_98 DispID_10 0
  loc_D1C140: CI4Var
  loc_D1C142: CVarI4
  loc_D1C146: PopAdLdVar
  loc_D1C147: LitVarI4
  loc_D1C14F: PopAdLdVar
  loc_D1C150: LitVarStr var_114, "Si"
  loc_D1C155: PopAdLdVar
  loc_D1C156: FLdPr Me
  loc_D1C159: VCallAd Control_ID_ctacteFlex
  loc_D1C15C: FStAdFunc var_E0
  loc_D1C15F: FLdPr var_E0
  loc_D1C162: LateIdCallSt
  loc_D1C16A: FFreeAd var_88 = ""
  loc_D1C171: FFree1Var var_98 = ""
  loc_D1C174: FLdPr Me
  loc_D1C177: MemLdI2 global_100
  loc_D1C17A: LitI2_Byte 0
  loc_D1C17C: EqI2
  loc_D1C17D: BranchF loc_D1C3FA
  loc_D1C180: FLdPr Me
  loc_D1C183: VCallAd Control_ID_ctacteFlex
  loc_D1C186: FStAdFunc var_88
  loc_D1C189: FLdPr var_88
  loc_D1C18C: LateIdLdVar var_98 DispID_10 0
  loc_D1C193: CI4Var
  loc_D1C195: CVarI4
  loc_D1C199: PopAdLdVar
  loc_D1C19A: LitVarI4
  loc_D1C1A2: PopAdLdVar
  loc_D1C1A3: FLdPr Me
  loc_D1C1A6: VCallAd Control_ID_ctacteFlex
  loc_D1C1A9: FStAdFunc var_E0
  loc_D1C1AC: FLdPr var_E0
  loc_D1C1AF: LateIdCallLdVar
  loc_D1C1B9: PopAd
  loc_D1C1BB: FLdPr Me
  loc_D1C1BE: VCallAd Control_ID_ctacteFlex
  loc_D1C1C1: FStAdFunc var_F4
  loc_D1C1C4: FLdPr var_F4
  loc_D1C1C7: LateIdLdVar var_104 DispID_10 0
  loc_D1C1CE: CI4Var
  loc_D1C1D0: CVarI4
  loc_D1C1D4: PopAdLdVar
  loc_D1C1D5: LitVarI4
  loc_D1C1DD: PopAdLdVar
  loc_D1C1DE: FLdPr Me
  loc_D1C1E1: VCallAd Control_ID_ctacteFlex
  loc_D1C1E4: FStAdFunc var_148
  loc_D1C1E7: FLdPr var_148
  loc_D1C1EA: LateIdCallLdVar
  loc_D1C1F4: PopAd
  loc_D1C1F6: FLdPr Me
  loc_D1C1F9: VCallAd Control_ID_ctacteFlex
  loc_D1C1FC: FStAdFunc var_160
  loc_D1C1FF: FLdPr var_160
  loc_D1C202: LateIdLdVar var_170 DispID_10 0
  loc_D1C209: CI4Var
  loc_D1C20B: CVarI4
  loc_D1C20F: PopAdLdVar
  loc_D1C210: LitVarI4
  loc_D1C218: PopAdLdVar
  loc_D1C219: FLdPr Me
  loc_D1C21C: VCallAd Control_ID_ctacteFlex
  loc_D1C21F: FStAdFunc var_1B4
  loc_D1C222: FLdPr var_1B4
  loc_D1C225: LateIdCallLdVar
  loc_D1C22F: CStrVarTmp
  loc_D1C230: CVarStr var_1DC
  loc_D1C233: FLdRfVar var_230
  loc_D1C236: ImpAdCallFPR4  = Trim()
  loc_D1C23B: LitI4 4
  loc_D1C240: FLdRfVar var_230
  loc_D1C243: FLdRfVar var_24C
  loc_D1C246: ImpAdCallFPR4  = Right(, )
  loc_D1C24B: FLdPr Me
  loc_D1C24E: VCallAd Control_ID_ctacteFlex
  loc_D1C251: FStAdFunc var_1CC
  loc_D1C254: FLdPr var_1CC
  loc_D1C257: LateIdLdVar var_25C DispID_10 0
  loc_D1C25E: CI4Var
  loc_D1C260: CVarI4
  loc_D1C264: PopAdLdVar
  loc_D1C265: LitVarI4
  loc_D1C26D: PopAdLdVar
  loc_D1C26E: FLdPr Me
  loc_D1C271: VCallAd Control_ID_ctacteFlex
  loc_D1C274: FStAdFunc var_220
  loc_D1C277: FLdPr var_220
  loc_D1C27A: LateIdCallLdVar
  loc_D1C284: PopAd
  loc_D1C286: LitI4 1
  loc_D1C28B: FLdPr Me
  loc_D1C28E: VCallAd Control_ID_ctacteFlex
  loc_D1C291: FStAdFunc var_270
  loc_D1C294: FLdPr var_270
  loc_D1C297: LateIdLdVar var_280 DispID_10 0
  loc_D1C29E: CI4Var
  loc_D1C2A0: CVarI4
  loc_D1C2A4: PopAdLdVar
  loc_D1C2A5: LitVarI4
  loc_D1C2AD: PopAdLdVar
  loc_D1C2AE: FLdPr Me
  loc_D1C2B1: VCallAd Control_ID_ctacteFlex
  loc_D1C2B4: FStAdFunc var_2C4
  loc_D1C2B7: FLdPr var_2C4
  loc_D1C2BA: LateIdCallLdVar
  loc_D1C2C4: CStrVarTmp
  loc_D1C2C5: FStStrNoPop var_9C
  loc_D1C2C8: LitStr "/"
  loc_D1C2CB: LitI4 0
  loc_D1C2D0: FnInStr4
  loc_D1C2D2: LitI4 1
  loc_D1C2D7: SubI4
  loc_D1C2D8: CVarI4
  loc_D1C2DC: LitI4 1
  loc_D1C2E1: FLdRfVar var_26C
  loc_D1C2E4: CStrVarTmp
  loc_D1C2E5: CVarStr var_2E4
  loc_D1C2E8: FLdRfVar var_314
  loc_D1C2EB: ImpAdCallFPR4  = Mid(, , )
  loc_D1C2F0: FLdPr Me
  loc_D1C2F3: VCallAd Control_ID_ctacteFlex
  loc_D1C2F6: FStAdFunc var_318
  loc_D1C2F9: FLdPr var_318
  loc_D1C2FC: LateIdLdVar var_328 DispID_10 0
  loc_D1C303: CI4Var
  loc_D1C305: CVarI4
  loc_D1C309: PopAdLdVar
  loc_D1C30A: LitVarI4
  loc_D1C312: PopAdLdVar
  loc_D1C313: FLdPr Me
  loc_D1C316: VCallAd Control_ID_ctacteFlex
  loc_D1C319: FStAdFunc var_36C
  loc_D1C31C: FLdPr var_36C
  loc_D1C31F: LateIdCallLdVar
  loc_D1C329: PopAd
  loc_D1C32B: FLdPr Me
  loc_D1C32E: VCallAd Control_ID_ctacteFlex
  loc_D1C331: FStAdFunc var_380
  loc_D1C334: FLdPr var_380
  loc_D1C337: LateIdLdVar var_390 DispID_10 0
  loc_D1C33E: CI4Var
  loc_D1C340: CVarI4
  loc_D1C344: PopAdLdVar
  loc_D1C345: LitVarI4
  loc_D1C34D: PopAdLdVar
  loc_D1C34E: FLdPr Me
  loc_D1C351: VCallAd Control_ID_ctacteFlex
  loc_D1C354: FStAdFunc var_3D4
  loc_D1C357: FLdPr var_3D4
  loc_D1C35A: LateIdCallLdVar
  loc_D1C364: PopAd
  loc_D1C366: LitStr "tmp_ctacteboleto"
  loc_D1C369: LitStr "Si"
  loc_D1C36C: FLdRfVar var_3E4
  loc_D1C36F: CStrVarTmp
  loc_D1C370: FStStrNoPop var_3E8
  loc_D1C373: CI2Str
  loc_D1C375: FLdRfVar var_37C
  loc_D1C378: CStrVarTmp
  loc_D1C379: FStStrNoPop var_234
  loc_D1C37C: CI4Str
  loc_D1C37D: FLdRfVar var_314
  loc_D1C380: CI2Var
  loc_D1C381: FLdRfVar var_24C
  loc_D1C384: CI2Var
  loc_D1C385: FLdRfVar var_158
  loc_D1C388: CStrVarTmp
  loc_D1C389: FStStrNoPop var_1C8
  loc_D1C38C: FLdRfVar var_F0
  loc_D1C38F: CStrVarTmp
  loc_D1C390: FStStrNoPop var_15C
  loc_D1C393: CUI1Str
  loc_D1C395: FLdPr Me
  loc_D1C398: MemLdRfVar from_stack_1.global_64
  loc_D1C39B: NewIfNullPr clsctacte
  loc_D1C39E: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_D1C3A3: FFreeStr var_9C = "": var_15C = "": var_1C8 = "": var_234 = ""
  loc_D1C3B0: FFreeAd var_88 = "": var_E0 = "": var_F4 = "": var_148 = "": var_160 = "": var_1B4 = "": var_1CC = "": var_220 = "": var_270 = "": var_2C4 = "": var_318 = "": var_36C = "": var_380 = ""
  loc_D1C3CF: FFreeVar var_98 = "": var_F0 = "": var_104 = "": var_158 = "": var_170 = "": var_1C4 = "": var_1DC = "": var_230 = "": var_25C = "": var_26C = "": var_280 = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_328 = "": var_37C = "": var_390 = "": var_3E4 = "": var_24C = ""
  loc_D1C3FA: FLdPr Me
  loc_D1C3FD: MemLdI2 global_100
  loc_D1C400: LitI2_Byte &HE
  loc_D1C402: EqI2
  loc_D1C403: BranchF loc_D1CE44
  loc_D1C406: FLdRfVar var_3EA
  loc_D1C409: FLdPr Me
  loc_D1C40C: VCallAd Control_ID_HabilitarChk
  loc_D1C40F: FStAdFunc var_88
  loc_D1C412: FLdPr var_88
  loc_D1C415:  = Me.Value
  loc_D1C41A: FLdI2 var_3EA
  loc_D1C41D: LitI2_Byte 1
  loc_D1C41F: EqI2
  loc_D1C420: FFree1Ad var_88
  loc_D1C423: BranchF loc_D1CDC6
  loc_D1C426: FLdPr Me
  loc_D1C429: VCallAd Control_ID_ctacteFlex
  loc_D1C42C: FStAdFunc var_88
  loc_D1C42F: FLdPr var_88
  loc_D1C432: LateIdLdVar var_98 DispID_10 0
  loc_D1C439: CI4Var
  loc_D1C43B: CVarI4
  loc_D1C43F: PopAdLdVar
  loc_D1C440: FLdPr Me
  loc_D1C443: MemLdI2 global_100
  loc_D1C446: CI4UI1
  loc_D1C447: CVarI4
  loc_D1C44B: PopAdLdVar
  loc_D1C44C: FLdPr Me
  loc_D1C44F: VCallAd Control_ID_ctacteFlex
  loc_D1C452: FStAdFunc var_E0
  loc_D1C455: FLdPr var_E0
  loc_D1C458: LateIdCallLdVar
  loc_D1C462: CStrVarTmp
  loc_D1C463: FStStrNoPop var_9C
  loc_D1C466: CR8Str
  loc_D1C468: FLdPr Me
  loc_D1C46B: MemLdFPR8 global_232
  loc_D1C46E: GtR4
  loc_D1C46F: FFree1Str var_9C
  loc_D1C472: FFreeAd var_88 = ""
  loc_D1C479: FFreeVar var_98 = ""
  loc_D1C480: BranchF loc_D1CD64
  loc_D1C483: FLdPr Me
  loc_D1C486: VCallAd Control_ID_ctacteFlex
  loc_D1C489: FStAdFunc var_88
  loc_D1C48C: FLdPr var_88
  loc_D1C48F: LateIdLdVar var_98 DispID_10 0
  loc_D1C496: CI4Var
  loc_D1C498: CVarI4
  loc_D1C49C: PopAdLdVar
  loc_D1C49D: LitVarI4
  loc_D1C4A5: PopAdLdVar
  loc_D1C4A6: FLdPr Me
  loc_D1C4A9: VCallAd Control_ID_ctacteFlex
  loc_D1C4AC: FStAdFunc var_E0
  loc_D1C4AF: FLdPr var_E0
  loc_D1C4B2: LateIdCallLdVar
  loc_D1C4BC: CStrVarTmp
  loc_D1C4BD: CVarStr var_104
  loc_D1C4C0: ImpAdCallI2 IsNumeric()
  loc_D1C4C5: FFreeAd var_88 = ""
  loc_D1C4CC: FFreeVar var_98 = "": var_F0 = ""
  loc_D1C4D5: BranchF loc_D1C5C2
  loc_D1C4D8: FLdPr Me
  loc_D1C4DB: VCallAd Control_ID_ctacteFlex
  loc_D1C4DE: FStAdFunc var_88
  loc_D1C4E1: FLdPr var_88
  loc_D1C4E4: LateIdLdVar var_98 DispID_10 0
  loc_D1C4EB: CI4Var
  loc_D1C4ED: CVarI4
  loc_D1C4F1: PopAdLdVar
  loc_D1C4F2: LitVarI4
  loc_D1C4FA: PopAdLdVar
  loc_D1C4FB: FLdPr Me
  loc_D1C4FE: VCallAd Control_ID_ctacteFlex
  loc_D1C501: FStAdFunc var_E0
  loc_D1C504: FLdPr var_E0
  loc_D1C507: LateIdCallLdVar
  loc_D1C511: CStrVarTmp
  loc_D1C512: FStStrNoPop var_9C
  loc_D1C515: CR8Str
  loc_D1C517: FLdPr Me
  loc_D1C51A: MemStFPR8 global_224
  loc_D1C51D: FFree1Str var_9C
  loc_D1C520: FFreeAd var_88 = ""
  loc_D1C527: FFreeVar var_98 = ""
  loc_D1C52E: FLdPr Me
  loc_D1C531: VCallAd Control_ID_ctacteFlex
  loc_D1C534: FStAdFunc var_88
  loc_D1C537: FLdPr var_88
  loc_D1C53A: LateIdLdVar var_98 DispID_10 0
  loc_D1C541: CI4Var
  loc_D1C543: CVarI4
  loc_D1C547: PopAdLdVar
  loc_D1C548: LitVarI4
  loc_D1C550: PopAdLdVar
  loc_D1C551: FLdPr Me
  loc_D1C554: VCallAd Control_ID_ctacteFlex
  loc_D1C557: FStAdFunc var_E0
  loc_D1C55A: FLdPr var_E0
  loc_D1C55D: LateIdCallLdVar
  loc_D1C567: PopAd
  loc_D1C569: LitI4 1
  loc_D1C56E: LitI4 1
  loc_D1C573: LitVarStr var_124, "0.00"
  loc_D1C578: FStVarCopyObj var_158
  loc_D1C57B: FLdRfVar var_158
  loc_D1C57E: FLdPr Me
  loc_D1C581: MemLdFPR8 global_224
  loc_D1C584: LitI2_Byte &H64
  loc_D1C586: CR8I2
  loc_D1C587: MulR8
  loc_D1C588: FLdRfVar var_F0
  loc_D1C58B: CStrVarTmp
  loc_D1C58C: FStStrNoPop var_9C
  loc_D1C58F: CR8Str
  loc_D1C591: DivR8
  loc_D1C592: CVarR8
  loc_D1C596: FLdRfVar var_170
  loc_D1C599: ImpAdCallFPR4  = Format(, )
  loc_D1C59E: FLdRfVar var_170
  loc_D1C5A1: CR4Var
  loc_D1C5A2: FLdPr Me
  loc_D1C5A5: MemStFPR8 global_248
  loc_D1C5A8: FFree1Str var_9C
  loc_D1C5AB: FFreeAd var_88 = ""
  loc_D1C5B2: FFreeVar var_98 = "": var_F0 = "": var_104 = "": var_158 = ""
  loc_D1C5BF: Branch loc_D1C5D4
  loc_D1C5C2: LitI2_Byte 0
  loc_D1C5C4: CR8I2
  loc_D1C5C5: FLdPr Me
  loc_D1C5C8: MemStFPR8 global_224
  loc_D1C5CB: LitI2_Byte 0
  loc_D1C5CD: CR8I2
  loc_D1C5CE: FLdPr Me
  loc_D1C5D1: MemStFPR8 global_248
  loc_D1C5D4: FLdPr Me
  loc_D1C5D7: VCallAd Control_ID_ctacteFlex
  loc_D1C5DA: FStAdFunc var_88
  loc_D1C5DD: FLdPr var_88
  loc_D1C5E0: LateIdLdVar var_98 DispID_10 0
  loc_D1C5E7: CI4Var
  loc_D1C5E9: CVarI4
  loc_D1C5ED: PopAdLdVar
  loc_D1C5EE: LitVarI4
  loc_D1C5F6: PopAdLdVar
  loc_D1C5F7: FLdPr Me
  loc_D1C5FA: VCallAd Control_ID_ctacteFlex
  loc_D1C5FD: FStAdFunc var_E0
  loc_D1C600: FLdPr var_E0
  loc_D1C603: LateIdCallLdVar
  loc_D1C60D: PopAd
  loc_D1C60F: FLdPr Me
  loc_D1C612: VCallAd Control_ID_ctacteFlex
  loc_D1C615: FStAdFunc var_F4
  loc_D1C618: FLdPr var_F4
  loc_D1C61B: LateIdLdVar var_104 DispID_10 0
  loc_D1C622: CI4Var
  loc_D1C624: CVarI4
  loc_D1C628: PopAdLdVar
  loc_D1C629: LitVarI4
  loc_D1C631: PopAdLdVar
  loc_D1C632: FLdPr Me
  loc_D1C635: VCallAd Control_ID_ctacteFlex
  loc_D1C638: FStAdFunc var_148
  loc_D1C63B: FLdPr var_148
  loc_D1C63E: LateIdCallLdVar
  loc_D1C648: PopAd
  loc_D1C64A: LitI4 1
  loc_D1C64F: LitI4 1
  loc_D1C654: LitVarStr var_190, "0.00"
  loc_D1C659: FStVarCopyObj var_1C4
  loc_D1C65C: FLdRfVar var_1C4
  loc_D1C65F: FLdRfVar var_F0
  loc_D1C662: CStrVarTmp
  loc_D1C663: FStStrNoPop var_9C
  loc_D1C666: CR8Str
  loc_D1C668: LitI2_Byte &H64
  loc_D1C66A: CR8I2
  loc_D1C66B: MulR8
  loc_D1C66C: FLdRfVar var_158
  loc_D1C66F: CStrVarTmp
  loc_D1C670: FStStrNoPop var_15C
  loc_D1C673: CR8Str
  loc_D1C675: DivR8
  loc_D1C676: CVarR8
  loc_D1C67A: FLdRfVar var_1DC
  loc_D1C67D: ImpAdCallFPR4  = Format(, )
  loc_D1C682: FLdRfVar var_1DC
  loc_D1C685: CR4Var
  loc_D1C686: FLdPr Me
  loc_D1C689: MemStFPR8 global_240
  loc_D1C68C: FFreeStr var_9C = ""
  loc_D1C693: FFreeAd var_88 = "": var_E0 = "": var_F4 = ""
  loc_D1C69E: FFreeVar var_98 = "": var_F0 = "": var_104 = "": var_158 = "": var_170 = "": var_1C4 = ""
  loc_D1C6AF: FLdPr Me
  loc_D1C6B2: VCallAd Control_ID_ctacteFlex
  loc_D1C6B5: FStAdFunc var_88
  loc_D1C6B8: FLdPr var_88
  loc_D1C6BB: LateIdLdVar var_104 DispID_10 0
  loc_D1C6C2: CI4Var
  loc_D1C6C4: CVarI4
  loc_D1C6C8: PopAdLdVar
  loc_D1C6C9: LitVarI4
  loc_D1C6D1: PopAdLdVar
  loc_D1C6D2: LitI4 1
  loc_D1C6D7: LitI4 1
  loc_D1C6DC: LitVarStr var_BC, "0.00"
  loc_D1C6E1: FStVarCopyObj var_98
  loc_D1C6E4: FLdRfVar var_98
  loc_D1C6E7: FLdPr Me
  loc_D1C6EA: MemLdRfVar from_stack_1.global_232
  loc_D1C6ED: CVarRef
  loc_D1C6F2: FLdRfVar var_F0
  loc_D1C6F5: ImpAdCallFPR4  = Format(, )
  loc_D1C6FA: FLdRfVar var_F0
  loc_D1C6FD: CStrVarTmp
  loc_D1C6FE: CVarStr var_158
  loc_D1C701: PopAdLdVar
  loc_D1C702: FLdPr Me
  loc_D1C705: VCallAd Control_ID_ctacteFlex
  loc_D1C708: FStAdFunc var_E0
  loc_D1C70B: FLdPr var_E0
  loc_D1C70E: LateIdCallSt
  loc_D1C716: FFreeAd var_88 = ""
  loc_D1C71D: FFreeVar var_98 = "": var_104 = "": var_F0 = ""
  loc_D1C728: FLdPr Me
  loc_D1C72B: VCallAd Control_ID_ctacteFlex
  loc_D1C72E: FStAdFunc var_88
  loc_D1C731: FLdPr var_88
  loc_D1C734: LateIdLdVar var_158 DispID_10 0
  loc_D1C73B: CI4Var
  loc_D1C73D: CVarI4
  loc_D1C741: PopAdLdVar
  loc_D1C742: LitVarI4
  loc_D1C74A: PopAdLdVar
  loc_D1C74B: LitI4 1
  loc_D1C750: LitI4 1
  loc_D1C755: LitVarStr var_BC, "0.00"
  loc_D1C75A: FStVarCopyObj var_F0
  loc_D1C75D: FLdRfVar var_F0
  loc_D1C760: FLdPr Me
  loc_D1C763: MemLdFPR8 global_232
  loc_D1C766: FLdPr Me
  loc_D1C769: MemLdFPR8 global_240
  loc_D1C76C: MulR8
  loc_D1C76D: LitI2_Byte &H64
  loc_D1C76F: CR8I2
  loc_D1C770: DivR8
  loc_D1C771: FnCDblR8
  loc_D1C773: CVarR8
  loc_D1C777: FLdRfVar var_104
  loc_D1C77A: ImpAdCallFPR4  = Format(, )
  loc_D1C77F: FLdRfVar var_104
  loc_D1C782: CStrVarTmp
  loc_D1C783: CVarStr var_170
  loc_D1C786: PopAdLdVar
  loc_D1C787: FLdPr Me
  loc_D1C78A: VCallAd Control_ID_ctacteFlex
  loc_D1C78D: FStAdFunc var_E0
  loc_D1C790: FLdPr var_E0
  loc_D1C793: LateIdCallSt
  loc_D1C79B: FFreeAd var_88 = ""
  loc_D1C7A2: FFreeVar var_98 = "": var_F0 = "": var_158 = "": var_104 = ""
  loc_D1C7AF: LitI4 1
  loc_D1C7B4: LitI4 1
  loc_D1C7B9: LitVarStr var_BC, "0.00"
  loc_D1C7BE: FStVarCopyObj var_F0
  loc_D1C7C1: FLdRfVar var_F0
  loc_D1C7C4: FLdPr Me
  loc_D1C7C7: MemLdFPR8 global_232
  loc_D1C7CA: FLdPr Me
  loc_D1C7CD: MemLdFPR8 global_248
  loc_D1C7D0: MulR8
  loc_D1C7D1: LitI2_Byte &H64
  loc_D1C7D3: CR8I2
  loc_D1C7D4: DivR8
  loc_D1C7D5: FnCDblR8
  loc_D1C7D7: CVarR8
  loc_D1C7DB: FLdRfVar var_104
  loc_D1C7DE: ImpAdCallFPR4  = Format(, )
  loc_D1C7E3: FLdPr Me
  loc_D1C7E6: VCallAd Control_ID_ctacteFlex
  loc_D1C7E9: FStAdFunc var_88
  loc_D1C7EC: FLdPr var_88
  loc_D1C7EF: LateIdLdVar var_1C4 DispID_10 0
  loc_D1C7F6: CI4Var
  loc_D1C7F8: CVarI4
  loc_D1C7FC: PopAdLdVar
  loc_D1C7FD: LitVarI4
  loc_D1C805: PopAdLdVar
  loc_D1C806: LitVarStr var_DC, vbNullString
  loc_D1C80B: FStVarCopyObj var_158
  loc_D1C80E: FLdRfVar var_158
  loc_D1C811: FLdRfVar var_104
  loc_D1C814: FLdPr Me
  loc_D1C817: MemLdFPR8 global_248
  loc_D1C81A: LitI2_Byte 0
  loc_D1C81C: CR8I2
  loc_D1C81D: NeR8
  loc_D1C81E: CVarBoolI2 var_CC
  loc_D1C822: FLdRfVar var_170
  loc_D1C825: ImpAdCallFPR4  = IIf(, , )
  loc_D1C82A: FLdRfVar var_170
  loc_D1C82D: CStrVarTmp
  loc_D1C82E: CVarStr var_1DC
  loc_D1C831: PopAdLdVar
  loc_D1C832: FLdPr Me
  loc_D1C835: VCallAd Control_ID_ctacteFlex
  loc_D1C838: FStAdFunc var_E0
  loc_D1C83B: FLdPr var_E0
  loc_D1C83E: LateIdCallSt
  loc_D1C846: FFreeAd var_88 = ""
  loc_D1C84D: FFreeVar var_98 = "": var_F0 = "": var_CC = "": var_104 = "": var_158 = "": var_1C4 = "": var_170 = ""
  loc_D1C860: FLdPr Me
  loc_D1C863: VCallAd Control_ID_ctacteFlex
  loc_D1C866: FStAdFunc var_88
  loc_D1C869: FLdPr var_88
  loc_D1C86C: LateIdLdVar var_98 DispID_10 0
  loc_D1C873: CI4Var
  loc_D1C875: CVarI4
  loc_D1C879: PopAdLdVar
  loc_D1C87A: LitVarI4
  loc_D1C882: PopAdLdVar
  loc_D1C883: FLdPr Me
  loc_D1C886: VCallAd Control_ID_ctacteFlex
  loc_D1C889: FStAdFunc var_E0
  loc_D1C88C: FLdPr var_E0
  loc_D1C88F: LateIdCallLdVar
  loc_D1C899: CStrVarTmp
  loc_D1C89A: CVarStr var_104
  loc_D1C89D: ImpAdCallI2 IsNumeric()
  loc_D1C8A2: FFreeAd var_88 = ""
  loc_D1C8A9: FFreeVar var_98 = "": var_F0 = ""
  loc_D1C8B2: BranchF loc_D1C92C
  loc_D1C8B5: FLdPr Me
  loc_D1C8B8: VCallAd Control_ID_ctacteFlex
  loc_D1C8BB: FStAdFunc var_88
  loc_D1C8BE: FLdPr var_88
  loc_D1C8C1: LateIdLdVar var_98 DispID_10 0
  loc_D1C8C8: CI4Var
  loc_D1C8CA: CVarI4
  loc_D1C8CE: PopAdLdVar
  loc_D1C8CF: LitVarI4
  loc_D1C8D7: PopAdLdVar
  loc_D1C8D8: FLdPr Me
  loc_D1C8DB: VCallAd Control_ID_ctacteFlex
  loc_D1C8DE: FStAdFunc var_E0
  loc_D1C8E1: FLdPr var_E0
  loc_D1C8E4: LateIdCallLdVar
  loc_D1C8EE: PopAd
  loc_D1C8F0: LitI4 2
  loc_D1C8F5: FLdRfVar var_F0
  loc_D1C8F8: CStrVarTmp
  loc_D1C8F9: FStStrNoPop var_9C
  loc_D1C8FC: CR8Str
  loc_D1C8FE: CVarR8
  loc_D1C902: FLdRfVar var_158
  loc_D1C905: ImpAdCallFPR4  = Round(, )
  loc_D1C90A: FLdRfVar var_158
  loc_D1C90D: CR4Var
  loc_D1C90E: FLdPr Me
  loc_D1C911: MemStFPR8 global_224
  loc_D1C914: FFree1Str var_9C
  loc_D1C917: FFreeAd var_88 = ""
  loc_D1C91E: FFreeVar var_98 = "": var_F0 = "": var_104 = ""
  loc_D1C929: Branch loc_D1C935
  loc_D1C92C: LitI2_Byte 0
  loc_D1C92E: CR8I2
  loc_D1C92F: FLdPr Me
  loc_D1C932: MemStFPR8 global_224
  loc_D1C935: FLdPr Me
  loc_D1C938: VCallAd Control_ID_ctacteFlex
  loc_D1C93B: FStAdFunc var_88
  loc_D1C93E: FLdPr var_88
  loc_D1C941: LateIdLdVar var_98 DispID_10 0
  loc_D1C948: CI4Var
  loc_D1C94A: CVarI4
  loc_D1C94E: PopAdLdVar
  loc_D1C94F: LitVarI4
  loc_D1C957: PopAdLdVar
  loc_D1C958: FLdPr Me
  loc_D1C95B: VCallAd Control_ID_ctacteFlex
  loc_D1C95E: FStAdFunc var_E0
  loc_D1C961: FLdPr var_E0
  loc_D1C964: LateIdCallLdVar
  loc_D1C96E: PopAd
  loc_D1C970: FLdPr Me
  loc_D1C973: VCallAd Control_ID_ctacteFlex
  loc_D1C976: FStAdFunc var_F4
  loc_D1C979: FLdPr var_F4
  loc_D1C97C: LateIdLdVar var_104 DispID_10 0
  loc_D1C983: CI4Var
  loc_D1C985: CVarI4
  loc_D1C989: PopAdLdVar
  loc_D1C98A: LitVarI4
  loc_D1C992: PopAdLdVar
  loc_D1C993: FLdPr Me
  loc_D1C996: VCallAd Control_ID_ctacteFlex
  loc_D1C999: FStAdFunc var_148
  loc_D1C99C: FLdPr var_148
  loc_D1C99F: LateIdCallLdVar
  loc_D1C9A9: PopAd
  loc_D1C9AB: FLdPr Me
  loc_D1C9AE: VCallAd Control_ID_ctacteFlex
  loc_D1C9B1: FStAdFunc var_160
  loc_D1C9B4: FLdPr var_160
  loc_D1C9B7: LateIdLdVar var_170 DispID_10 0
  loc_D1C9BE: CI4Var
  loc_D1C9C0: CVarI4
  loc_D1C9C4: PopAdLdVar
  loc_D1C9C5: LitVarI4
  loc_D1C9CD: PopAdLdVar
  loc_D1C9CE: FLdPr Me
  loc_D1C9D1: VCallAd Control_ID_ctacteFlex
  loc_D1C9D4: FStAdFunc var_1B4
  loc_D1C9D7: FLdPr var_1B4
  loc_D1C9DA: LateIdCallLdVar
  loc_D1C9E4: CStrVarTmp
  loc_D1C9E5: CVarStr var_1DC
  loc_D1C9E8: FLdRfVar var_230
  loc_D1C9EB: ImpAdCallFPR4  = Trim()
  loc_D1C9F0: LitI4 4
  loc_D1C9F5: FLdRfVar var_230
  loc_D1C9F8: FLdRfVar var_24C
  loc_D1C9FB: ImpAdCallFPR4  = Right(, )
  loc_D1CA00: FLdPr Me
  loc_D1CA03: VCallAd Control_ID_ctacteFlex
  loc_D1CA06: FStAdFunc var_1CC
  loc_D1CA09: FLdPr var_1CC
  loc_D1CA0C: LateIdLdVar var_25C DispID_10 0
  loc_D1CA13: CI4Var
  loc_D1CA15: CVarI4
  loc_D1CA19: PopAdLdVar
  loc_D1CA1A: LitVarI4
  loc_D1CA22: PopAdLdVar
  loc_D1CA23: FLdPr Me
  loc_D1CA26: VCallAd Control_ID_ctacteFlex
  loc_D1CA29: FStAdFunc var_220
  loc_D1CA2C: FLdPr var_220
  loc_D1CA2F: LateIdCallLdVar
  loc_D1CA39: PopAd
  loc_D1CA3B: LitI4 1
  loc_D1CA40: FLdPr Me
  loc_D1CA43: VCallAd Control_ID_ctacteFlex
  loc_D1CA46: FStAdFunc var_270
  loc_D1CA49: FLdPr var_270
  loc_D1CA4C: LateIdLdVar var_280 DispID_10 0
  loc_D1CA53: CI4Var
  loc_D1CA55: CVarI4
  loc_D1CA59: PopAdLdVar
  loc_D1CA5A: LitVarI4
  loc_D1CA62: PopAdLdVar
  loc_D1CA63: FLdPr Me
  loc_D1CA66: VCallAd Control_ID_ctacteFlex
  loc_D1CA69: FStAdFunc var_2C4
  loc_D1CA6C: FLdPr var_2C4
  loc_D1CA6F: LateIdCallLdVar
  loc_D1CA79: CStrVarTmp
  loc_D1CA7A: FStStrNoPop var_9C
  loc_D1CA7D: LitStr "/"
  loc_D1CA80: LitI4 0
  loc_D1CA85: FnInStr4
  loc_D1CA87: LitI4 1
  loc_D1CA8C: SubI4
  loc_D1CA8D: CVarI4
  loc_D1CA91: LitI4 1
  loc_D1CA96: FLdRfVar var_26C
  loc_D1CA99: CStrVarTmp
  loc_D1CA9A: CVarStr var_2E4
  loc_D1CA9D: FLdRfVar var_314
  loc_D1CAA0: ImpAdCallFPR4  = Mid(, , )
  loc_D1CAA5: FLdPr Me
  loc_D1CAA8: VCallAd Control_ID_ctacteFlex
  loc_D1CAAB: FStAdFunc var_318
  loc_D1CAAE: FLdPr var_318
  loc_D1CAB1: LateIdLdVar var_328 DispID_10 0
  loc_D1CAB8: CI4Var
  loc_D1CABA: CVarI4
  loc_D1CABE: PopAdLdVar
  loc_D1CABF: LitVarI4
  loc_D1CAC7: PopAdLdVar
  loc_D1CAC8: FLdPr Me
  loc_D1CACB: VCallAd Control_ID_ctacteFlex
  loc_D1CACE: FStAdFunc var_36C
  loc_D1CAD1: FLdPr var_36C
  loc_D1CAD4: LateIdCallLdVar
  loc_D1CADE: PopAd
  loc_D1CAE0: FLdPr Me
  loc_D1CAE3: VCallAd Control_ID_ctacteFlex
  loc_D1CAE6: FStAdFunc var_380
  loc_D1CAE9: FLdPr var_380
  loc_D1CAEC: LateIdLdVar var_390 DispID_10 0
  loc_D1CAF3: CI4Var
  loc_D1CAF5: CVarI4
  loc_D1CAF9: PopAdLdVar
  loc_D1CAFA: LitVarI4
  loc_D1CB02: PopAdLdVar
  loc_D1CB03: FLdPr Me
  loc_D1CB06: VCallAd Control_ID_ctacteFlex
  loc_D1CB09: FStAdFunc var_3D4
  loc_D1CB0C: FLdPr var_3D4
  loc_D1CB0F: LateIdCallLdVar
  loc_D1CB19: PopAd
  loc_D1CB1B: FLdPr Me
  loc_D1CB1E: VCallAd Control_ID_ctacteFlex
  loc_D1CB21: FStAdFunc var_3F0
  loc_D1CB24: FLdPr var_3F0
  loc_D1CB27: LateIdLdVar var_400 DispID_10 0
  loc_D1CB2E: CI4Var
  loc_D1CB30: CVarI4
  loc_D1CB34: PopAdLdVar
  loc_D1CB35: LitVarI4
  loc_D1CB3D: PopAdLdVar
  loc_D1CB3E: FLdPr Me
  loc_D1CB41: VCallAd Control_ID_ctacteFlex
  loc_D1CB44: FStAdFunc var_444
  loc_D1CB47: FLdPr var_444
  loc_D1CB4A: LateIdCallLdVar
  loc_D1CB54: PopAd
  loc_D1CB56: LitI4 2
  loc_D1CB5B: FLdRfVar var_454
  loc_D1CB5E: CStrVarTmp
  loc_D1CB5F: FStStrNoPop var_15C
  loc_D1CB62: CR8Str
  loc_D1CB64: CVarR8
  loc_D1CB68: FLdRfVar var_484
  loc_D1CB6B: ImpAdCallFPR4  = Round(, )
  loc_D1CB70: FLdPr Me
  loc_D1CB73: MemLdR8 global_224
  loc_D1CB76: LitStr "tmp_ctacteboleto"
  loc_D1CB79: FLdRfVar var_484
  loc_D1CB7C: CR4Var
  loc_D1CB7D: PopFPR8
  loc_D1CB7E: FLdRfVar var_3E4
  loc_D1CB81: CStrVarTmp
  loc_D1CB82: FStStrNoPop var_488
  loc_D1CB85: CI2Str
  loc_D1CB87: FLdRfVar var_37C
  loc_D1CB8A: CStrVarTmp
  loc_D1CB8B: FStStrNoPop var_3E8
  loc_D1CB8E: CI4Str
  loc_D1CB8F: FLdRfVar var_314
  loc_D1CB92: CI2Var
  loc_D1CB93: FLdRfVar var_24C
  loc_D1CB96: CI2Var
  loc_D1CB97: FLdRfVar var_158
  loc_D1CB9A: CStrVarTmp
  loc_D1CB9B: FStStrNoPop var_234
  loc_D1CB9E: FLdRfVar var_F0
  loc_D1CBA1: CStrVarTmp
  loc_D1CBA2: FStStrNoPop var_1C8
  loc_D1CBA5: CUI1Str
  loc_D1CBA7: FLdPr Me
  loc_D1CBAA: MemLdRfVar from_stack_1.global_64
  loc_D1CBAD: NewIfNullPr clsctacte
  loc_D1CBB0: Call clsctacte.ActualizaSaldoPagoCuenta(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v)
  loc_D1CBB5: FFreeStr var_9C = "": var_15C = "": var_1C8 = "": var_234 = "": var_3E8 = ""
  loc_D1CBC4: FFreeAd var_88 = "": var_E0 = "": var_F4 = "": var_148 = "": var_160 = "": var_1B4 = "": var_1CC = "": var_220 = "": var_270 = "": var_2C4 = "": var_318 = "": var_36C = "": var_380 = "": var_3D4 = "": var_3F0 = ""
  loc_D1CBE7: FFreeVar var_98 = "": var_F0 = "": var_104 = "": var_158 = "": var_170 = "": var_1C4 = "": var_1DC = "": var_230 = "": var_25C = "": var_26C = "": var_280 = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_328 = "": var_37C = "": var_390 = "": var_3E4 = "": var_400 = "": var_454 = "": var_474 = "": var_24C = "": var_314 = ""
  loc_D1CC1A: FLdPr Me
  loc_D1CC1D: VCallAd Control_ID_ctacteFlex
  loc_D1CC20: FStAdFunc var_88
  loc_D1CC23: FLdPr var_88
  loc_D1CC26: LateIdLdVar var_98 DispID_10 0
  loc_D1CC2D: CI4Var
  loc_D1CC2F: CVarI4
  loc_D1CC33: PopAdLdVar
  loc_D1CC34: FLdPr Me
  loc_D1CC37: MemLdI2 global_100
  loc_D1CC3A: CI4UI1
  loc_D1CC3B: CVarI4
  loc_D1CC3F: PopAdLdVar
  loc_D1CC40: FLdPr Me
  loc_D1CC43: VCallAd Control_ID_ctacteFlex
  loc_D1CC46: FStAdFunc var_E0
  loc_D1CC49: FLdPr var_E0
  loc_D1CC4C: LateIdCallLdVar
  loc_D1CC56: PopAd
  loc_D1CC58: LitI4 2
  loc_D1CC5D: FLdPr Me
  loc_D1CC60: MemLdFPR8 global_104
  loc_D1CC63: FLdRfVar var_F0
  loc_D1CC66: CStrVarTmp
  loc_D1CC67: FStStrNoPop var_9C
  loc_D1CC6A: CR8Str
  loc_D1CC6C: AddR8
  loc_D1CC6D: CVarR8
  loc_D1CC71: FLdRfVar var_158
  loc_D1CC74: ImpAdCallFPR4  = Round(, )
  loc_D1CC79: FLdRfVar var_158
  loc_D1CC7C: CR4Var
  loc_D1CC7D: FLdPr Me
  loc_D1CC80: MemStFPR8 global_104
  loc_D1CC83: FFree1Str var_9C
  loc_D1CC86: FFreeAd var_88 = ""
  loc_D1CC8D: FFreeVar var_98 = "": var_F0 = "": var_104 = ""
  loc_D1CC98: FLdPr Me
  loc_D1CC9B: VCallAd Control_ID_ctacteFlex
  loc_D1CC9E: FStAdFunc var_88
  loc_D1CCA1: FLdPr var_88
  loc_D1CCA4: LateIdLdVar var_98 DispID_10 0
  loc_D1CCAB: CI4Var
  loc_D1CCAD: CVarI4
  loc_D1CCB1: PopAdLdVar
  loc_D1CCB2: LitVarI4
  loc_D1CCBA: PopAdLdVar
  loc_D1CCBB: FLdPr Me
  loc_D1CCBE: VCallAd Control_ID_ctacteFlex
  loc_D1CCC1: FStAdFunc var_E0
  loc_D1CCC4: FLdPr var_E0
  loc_D1CCC7: LateIdCallLdVar
  loc_D1CCD1: PopAd
  loc_D1CCD3: FLdPr Me
  loc_D1CCD6: MemLdFPR8 global_232
  loc_D1CCD9: FLdRfVar var_F0
  loc_D1CCDC: CStrVarTmp
  loc_D1CCDD: FStStrNoPop var_9C
  loc_D1CCE0: CR8Str
  loc_D1CCE2: SubR4
  loc_D1CCE3: FLdPr Me
  loc_D1CCE6: MemStFPR8 global_232
  loc_D1CCE9: FFree1Str var_9C
  loc_D1CCEC: FFreeAd var_88 = ""
  loc_D1CCF3: FFreeVar var_98 = ""
  loc_D1CCFA: LitI4 1
  loc_D1CCFF: LitI4 1
  loc_D1CD04: LitVarStr var_BC, "0.00"
  loc_D1CD09: FStVarCopyObj var_98
  loc_D1CD0C: FLdRfVar var_98
  loc_D1CD0F: FLdPr Me
  loc_D1CD12: MemLdRfVar from_stack_1.global_104
  loc_D1CD15: CVarRef
  loc_D1CD1A: FLdRfVar var_F0
  loc_D1CD1D: ImpAdCallFPR4  = Format(, )
  loc_D1CD22: FLdRfVar var_F0
  loc_D1CD25: CStrVarVal var_9C
  loc_D1CD29: FLdPr Me
  loc_D1CD2C: VCallAd Control_ID_txtTotaSele
  loc_D1CD2F: FStAdFunc var_88
  loc_D1CD32: FLdPr var_88
  loc_D1CD35: Me.Text = from_stack_1
  loc_D1CD3A: FFree1Str var_9C
  loc_D1CD3D: FFree1Ad var_88
  loc_D1CD40: FFreeVar var_98 = ""
  loc_D1CD47: Call cmdGenerarBoleto_Click()
  loc_D1CD4C: FLdPr Me
  loc_D1CD4F: VCallAd Control_ID_NumeCtaTxt
  loc_D1CD52: FStAdFunc var_88
  loc_D1CD55: FLdPr var_88
  loc_D1CD58: Me.SetFocus
  loc_D1CD5D: FFree1Ad var_88
  loc_D1CD60: ExitProcHresult
  loc_D1CD61: Branch loc_D1CDC6
  loc_D1CD64: FLdPr Me
  loc_D1CD67: VCallAd Control_ID_ctacteFlex
  loc_D1CD6A: FStAdFunc var_88
  loc_D1CD6D: FLdPr var_88
  loc_D1CD70: LateIdLdVar var_98 DispID_10 0
  loc_D1CD77: CI4Var
  loc_D1CD79: CVarI4
  loc_D1CD7D: PopAdLdVar
  loc_D1CD7E: LitVarI4
  loc_D1CD86: PopAdLdVar
  loc_D1CD87: FLdPr Me
  loc_D1CD8A: VCallAd Control_ID_ctacteFlex
  loc_D1CD8D: FStAdFunc var_E0
  loc_D1CD90: FLdPr var_E0
  loc_D1CD93: LateIdCallLdVar
  loc_D1CD9D: PopAd
  loc_D1CD9F: FLdPr Me
  loc_D1CDA2: MemLdFPR8 global_232
  loc_D1CDA5: FLdRfVar var_F0
  loc_D1CDA8: CStrVarTmp
  loc_D1CDA9: FStStrNoPop var_9C
  loc_D1CDAC: CR8Str
  loc_D1CDAE: SubR4
  loc_D1CDAF: FLdPr Me
  loc_D1CDB2: MemStFPR8 global_232
  loc_D1CDB5: FFree1Str var_9C
  loc_D1CDB8: FFreeAd var_88 = ""
  loc_D1CDBF: FFreeVar var_98 = ""
  loc_D1CDC6: FLdPr Me
  loc_D1CDC9: VCallAd Control_ID_ctacteFlex
  loc_D1CDCC: FStAdFunc var_88
  loc_D1CDCF: FLdPr var_88
  loc_D1CDD2: LateIdLdVar var_98 DispID_10 0
  loc_D1CDD9: CI4Var
  loc_D1CDDB: CVarI4
  loc_D1CDDF: PopAdLdVar
  loc_D1CDE0: FLdPr Me
  loc_D1CDE3: MemLdI2 global_100
  loc_D1CDE6: CI4UI1
  loc_D1CDE7: CVarI4
  loc_D1CDEB: PopAdLdVar
  loc_D1CDEC: FLdPr Me
  loc_D1CDEF: VCallAd Control_ID_ctacteFlex
  loc_D1CDF2: FStAdFunc var_E0
  loc_D1CDF5: FLdPr var_E0
  loc_D1CDF8: LateIdCallLdVar
  loc_D1CE02: PopAd
  loc_D1CE04: LitI4 2
  loc_D1CE09: FLdPr Me
  loc_D1CE0C: MemLdFPR8 global_104
  loc_D1CE0F: FLdRfVar var_F0
  loc_D1CE12: CStrVarTmp
  loc_D1CE13: FStStrNoPop var_9C
  loc_D1CE16: CR8Str
  loc_D1CE18: AddR8
  loc_D1CE19: CVarR8
  loc_D1CE1D: FLdRfVar var_158
  loc_D1CE20: ImpAdCallFPR4  = Round(, )
  loc_D1CE25: FLdRfVar var_158
  loc_D1CE28: CR4Var
  loc_D1CE29: FLdPr Me
  loc_D1CE2C: MemStFPR8 global_104
  loc_D1CE2F: FFree1Str var_9C
  loc_D1CE32: FFreeAd var_88 = ""
  loc_D1CE39: FFreeVar var_98 = "": var_F0 = "": var_104 = ""
  loc_D1CE44: FLdPr Me
  loc_D1CE47: MemLdRfVar from_stack_1.global_100
  loc_D1CE4A: NextI2 var_48C, loc_D1BCD0
  loc_D1CE4F: Branch loc_D1D65F
  loc_D1CE52: FLdPr Me
  loc_D1CE55: VCallAd Control_ID_ctacteFlex
  loc_D1CE58: FStAdFunc var_88
  loc_D1CE5B: FLdPr var_88
  loc_D1CE5E: LateIdLdVar var_98 DispID_10 0
  loc_D1CE65: CI4Var
  loc_D1CE67: CVarI4
  loc_D1CE6B: PopAdLdVar
  loc_D1CE6C: LitVarI4
  loc_D1CE74: PopAdLdVar
  loc_D1CE75: FLdPr Me
  loc_D1CE78: VCallAd Control_ID_ctacteFlex
  loc_D1CE7B: FStAdFunc var_E0
  loc_D1CE7E: FLdPr var_E0
  loc_D1CE81: LateIdCallLdVar
  loc_D1CE8B: CStrVarTmp
  loc_D1CE8C: FStStrNoPop var_9C
  loc_D1CE8F: CI4Str
  loc_D1CE90: LitI4 0
  loc_D1CE95: NeI4
  loc_D1CE96: FLdRfVar var_3EA
  loc_D1CE99: FLdPr Me
  loc_D1CE9C: VCallAd Control_ID_HabilitarChk
  loc_D1CE9F: FStAdFunc var_F4
  loc_D1CEA2: FLdPr var_F4
  loc_D1CEA5:  = Me.Value
  loc_D1CEAA: FLdI2 var_3EA
  loc_D1CEAD: LitI2_Byte 0
  loc_D1CEAF: EqI2
  loc_D1CEB0: AndI4
  loc_D1CEB1: FFree1Str var_9C
  loc_D1CEB4: FFreeAd var_88 = "": var_E0 = ""
  loc_D1CEBD: FFreeVar var_98 = ""
  loc_D1CEC4: BranchF loc_D1D65F
  loc_D1CEC7: LitI2_Byte 1
  loc_D1CEC9: FLdPr Me
  loc_D1CECC: MemLdRfVar from_stack_1.global_100
  loc_D1CECF: FLdPr Me
  loc_D1CED2: VCallAd Control_ID_ctacteFlex
  loc_D1CED5: FStAdFunc var_88
  loc_D1CED8: FLdPr var_88
  loc_D1CEDB: LateIdLdVar var_98 DispID_4 0
  loc_D1CEE2: CI4Var
  loc_D1CEE4: LitI4 1
  loc_D1CEE9: SubI4
  loc_D1CEEA: CI2I4
  loc_D1CEEB: FFree1Ad var_88
  loc_D1CEEE: FFree1Var var_98 = ""
  loc_D1CEF1: ForI2 var_490
  loc_D1CEF7: FLdPr Me
  loc_D1CEFA: MemLdI2 global_100
  loc_D1CEFD: CI4UI1
  loc_D1CEFE: CVarI4
  loc_D1CF02: PopAdLdVar
  loc_D1CF03: LitVarI4
  loc_D1CF0B: PopAdLdVar
  loc_D1CF0C: FLdPr Me
  loc_D1CF0F: VCallAd Control_ID_ctacteFlex
  loc_D1CF12: FStAdFunc var_88
  loc_D1CF15: FLdPr var_88
  loc_D1CF18: LateIdCallLdVar
  loc_D1CF22: CStrVarTmp
  loc_D1CF23: FStStrNoPop var_9C
  loc_D1CF26: CI4Str
  loc_D1CF27: FLdPr Me
  loc_D1CF2A: VCallAd Control_ID_ctacteFlex
  loc_D1CF2D: FStAdFunc var_E0
  loc_D1CF30: FLdPr var_E0
  loc_D1CF33: LateIdLdVar var_F0 DispID_10 0
  loc_D1CF3A: CI4Var
  loc_D1CF3C: CVarI4
  loc_D1CF40: PopAdLdVar
  loc_D1CF41: LitVarI4
  loc_D1CF49: PopAdLdVar
  loc_D1CF4A: FLdPr Me
  loc_D1CF4D: VCallAd Control_ID_ctacteFlex
  loc_D1CF50: FStAdFunc var_F4
  loc_D1CF53: FLdPr var_F4
  loc_D1CF56: LateIdCallLdVar
  loc_D1CF60: CStrVarTmp
  loc_D1CF61: FStStrNoPop var_15C
  loc_D1CF64: CI4Str
  loc_D1CF65: EqI4
  loc_D1CF66: FFreeStr var_9C = ""
  loc_D1CF6D: FFreeAd var_88 = "": var_E0 = ""
  loc_D1CF76: FFreeVar var_98 = "": var_F0 = ""
  loc_D1CF7F: BranchF loc_D1D654
  loc_D1CF82: FLdPr Me
  loc_D1CF85: MemLdI2 global_100
  loc_D1CF88: CI4UI1
  loc_D1CF89: CVarI4
  loc_D1CF8D: PopAdLdVar
  loc_D1CF8E: FLdPr Me
  loc_D1CF91: VCallAd Control_ID_ctacteFlex
  loc_D1CF94: FStAdFunc var_88
  loc_D1CF97: FLdPr var_88
  loc_D1CF9A: LateIdSt
  loc_D1CF9F: FFree1Ad var_88
  loc_D1CFA2: LitI2_Byte 0
  loc_D1CFA4: FLdPr Me
  loc_D1CFA7: MemLdRfVar from_stack_1.global_102
  loc_D1CFAA: FLdPr Me
  loc_D1CFAD: VCallAd Control_ID_ctacteFlex
  loc_D1CFB0: FStAdFunc var_88
  loc_D1CFB3: FLdPr var_88
  loc_D1CFB6: LateIdLdVar var_98 DispID_5 0
  loc_D1CFBD: CI4Var
  loc_D1CFBF: LitI4 1
  loc_D1CFC4: SubI4
  loc_D1CFC5: CI2I4
  loc_D1CFC6: FFree1Ad var_88
  loc_D1CFC9: FFree1Var var_98 = ""
  loc_D1CFCC: ForI2 var_494
  loc_D1CFD2: FLdPr Me
  loc_D1CFD5: MemLdI2 global_102
  loc_D1CFD8: CI4UI1
  loc_D1CFD9: CVarI4
  loc_D1CFDD: PopAdLdVar
  loc_D1CFDE: FLdPr Me
  loc_D1CFE1: VCallAd Control_ID_ctacteFlex
  loc_D1CFE4: FStAdFunc var_88
  loc_D1CFE7: FLdPr var_88
  loc_D1CFEA: LateIdSt
  loc_D1CFEF: FFree1Ad var_88
  loc_D1CFF2: FLdPr Me
  loc_D1CFF5: VCallAd Control_ID_ctacteFlex
  loc_D1CFF8: FStAdFunc var_88
  loc_D1CFFB: FLdPr var_88
  loc_D1CFFE: LateIdLdVar var_98 DispID_38 0
  loc_D1D005: CI4Var
  loc_D1D007: LitI4 &HFFFF80
  loc_D1D00C: EqI4
  loc_D1D00D: FFree1Ad var_88
  loc_D1D010: FFree1Var var_98 = ""
  loc_D1D013: BranchF loc_D1D331
  loc_D1D016: LitVarI4
  loc_D1D01E: PopAdLdVar
  loc_D1D01F: FLdPr Me
  loc_D1D022: VCallAd Control_ID_ctacteFlex
  loc_D1D025: FStAdFunc var_88
  loc_D1D028: FLdPr var_88
  loc_D1D02B: LateIdSt
  loc_D1D030: FFree1Ad var_88
  loc_D1D033: FLdPr Me
  loc_D1D036: VCallAd Control_ID_ctacteFlex
  loc_D1D039: FStAdFunc var_88
  loc_D1D03C: FLdPr var_88
  loc_D1D03F: LateIdLdVar var_98 DispID_10 0
  loc_D1D046: CI4Var
  loc_D1D048: CVarI4
  loc_D1D04C: PopAdLdVar
  loc_D1D04D: LitVarI4
  loc_D1D055: PopAdLdVar
  loc_D1D056: LitVarStr var_114, "No"
  loc_D1D05B: PopAdLdVar
  loc_D1D05C: FLdPr Me
  loc_D1D05F: VCallAd Control_ID_ctacteFlex
  loc_D1D062: FStAdFunc var_E0
  loc_D1D065: FLdPr var_E0
  loc_D1D068: LateIdCallSt
  loc_D1D070: FFreeAd var_88 = ""
  loc_D1D077: FFree1Var var_98 = ""
  loc_D1D07A: FLdPr Me
  loc_D1D07D: MemLdI2 global_102
  loc_D1D080: LitI2_Byte 0
  loc_D1D082: EqI2
  loc_D1D083: BranchF loc_D1D2A4
  loc_D1D086: FLdPr Me
  loc_D1D089: VCallAd Control_ID_ctacteFlex
  loc_D1D08C: FStAdFunc var_88
  loc_D1D08F: FLdPr var_88
  loc_D1D092: LateIdLdVar var_98 DispID_10 0
  loc_D1D099: CI4Var
  loc_D1D09B: CVarI4
  loc_D1D09F: PopAdLdVar
  loc_D1D0A0: LitVarI4
  loc_D1D0A8: PopAdLdVar
  loc_D1D0A9: FLdPr Me
  loc_D1D0AC: VCallAd Control_ID_ctacteFlex
  loc_D1D0AF: FStAdFunc var_E0
  loc_D1D0B2: FLdPr var_E0
  loc_D1D0B5: LateIdCallLdVar
  loc_D1D0BF: PopAd
  loc_D1D0C1: FLdPr Me
  loc_D1D0C4: VCallAd Control_ID_ctacteFlex
  loc_D1D0C7: FStAdFunc var_F4
  loc_D1D0CA: FLdPr var_F4
  loc_D1D0CD: LateIdLdVar var_104 DispID_10 0
  loc_D1D0D4: CI4Var
  loc_D1D0D6: CVarI4
  loc_D1D0DA: PopAdLdVar
  loc_D1D0DB: LitVarI4
  loc_D1D0E3: PopAdLdVar
  loc_D1D0E4: FLdPr Me
  loc_D1D0E7: VCallAd Control_ID_ctacteFlex
  loc_D1D0EA: FStAdFunc var_148
  loc_D1D0ED: FLdPr var_148
  loc_D1D0F0: LateIdCallLdVar
  loc_D1D0FA: PopAd
  loc_D1D0FC: FLdPr Me
  loc_D1D0FF: VCallAd Control_ID_ctacteFlex
  loc_D1D102: FStAdFunc var_160
  loc_D1D105: FLdPr var_160
  loc_D1D108: LateIdLdVar var_170 DispID_10 0
  loc_D1D10F: CI4Var
  loc_D1D111: CVarI4
  loc_D1D115: PopAdLdVar
  loc_D1D116: LitVarI4
  loc_D1D11E: PopAdLdVar
  loc_D1D11F: FLdPr Me
  loc_D1D122: VCallAd Control_ID_ctacteFlex
  loc_D1D125: FStAdFunc var_1B4
  loc_D1D128: FLdPr var_1B4
  loc_D1D12B: LateIdCallLdVar
  loc_D1D135: PopAd
  loc_D1D137: LitVarI2 var_230, 4
  loc_D1D13C: LitI4 4
  loc_D1D141: FLdRfVar var_1C4
  loc_D1D144: CStrVarTmp
  loc_D1D145: CVarStr var_1DC
  loc_D1D148: FLdRfVar var_24C
  loc_D1D14B: ImpAdCallFPR4  = Mid(, , )
  loc_D1D150: FLdPr Me
  loc_D1D153: VCallAd Control_ID_ctacteFlex
  loc_D1D156: FStAdFunc var_1CC
  loc_D1D159: FLdPr var_1CC
  loc_D1D15C: LateIdLdVar var_25C DispID_10 0
  loc_D1D163: CI4Var
  loc_D1D165: CVarI4
  loc_D1D169: PopAdLdVar
  loc_D1D16A: LitVarI4
  loc_D1D172: PopAdLdVar
  loc_D1D173: FLdPr Me
  loc_D1D176: VCallAd Control_ID_ctacteFlex
  loc_D1D179: FStAdFunc var_220
  loc_D1D17C: FLdPr var_220
  loc_D1D17F: LateIdCallLdVar
  loc_D1D189: PopAd
  loc_D1D18B: LitVarI2 var_2D4, 2
  loc_D1D190: LitI4 1
  loc_D1D195: FLdRfVar var_26C
  loc_D1D198: CStrVarTmp
  loc_D1D199: CVarStr var_280
  loc_D1D19C: FLdRfVar var_2E4
  loc_D1D19F: ImpAdCallFPR4  = Mid(, , )
  loc_D1D1A4: FLdPr Me
  loc_D1D1A7: VCallAd Control_ID_ctacteFlex
  loc_D1D1AA: FStAdFunc var_270
  loc_D1D1AD: FLdPr var_270
  loc_D1D1B0: LateIdLdVar var_304 DispID_10 0
  loc_D1D1B7: CI4Var
  loc_D1D1B9: CVarI4
  loc_D1D1BD: PopAdLdVar
  loc_D1D1BE: LitVarI4
  loc_D1D1C6: PopAdLdVar
  loc_D1D1C7: FLdPr Me
  loc_D1D1CA: VCallAd Control_ID_ctacteFlex
  loc_D1D1CD: FStAdFunc var_2C4
  loc_D1D1D0: FLdPr var_2C4
  loc_D1D1D3: LateIdCallLdVar
  loc_D1D1DD: PopAd
  loc_D1D1DF: FLdPr Me
  loc_D1D1E2: VCallAd Control_ID_ctacteFlex
  loc_D1D1E5: FStAdFunc var_318
  loc_D1D1E8: FLdPr var_318
  loc_D1D1EB: LateIdLdVar var_328 DispID_10 0
  loc_D1D1F2: CI4Var
  loc_D1D1F4: CVarI4
  loc_D1D1F8: PopAdLdVar
  loc_D1D1F9: LitVarI4
  loc_D1D201: PopAdLdVar
  loc_D1D202: FLdPr Me
  loc_D1D205: VCallAd Control_ID_ctacteFlex
  loc_D1D208: FStAdFunc var_36C
  loc_D1D20B: FLdPr var_36C
  loc_D1D20E: LateIdCallLdVar
  loc_D1D218: PopAd
  loc_D1D21A: LitStr "tmp_ctacteboleto"
  loc_D1D21D: LitStr "No"
  loc_D1D220: FLdRfVar var_37C
  loc_D1D223: CStrVarTmp
  loc_D1D224: FStStrNoPop var_234
  loc_D1D227: CI2Str
  loc_D1D229: FLdRfVar var_314
  loc_D1D22C: CStrVarTmp
  loc_D1D22D: FStStrNoPop var_1C8
  loc_D1D230: CI4Str
  loc_D1D231: FLdRfVar var_2E4
  loc_D1D234: CI2Var
  loc_D1D235: FLdRfVar var_24C
  loc_D1D238: CI2Var
  loc_D1D239: FLdRfVar var_158
  loc_D1D23C: CStrVarTmp
  loc_D1D23D: FStStrNoPop var_15C
  loc_D1D240: FLdRfVar var_F0
  loc_D1D243: CStrVarTmp
  loc_D1D244: FStStrNoPop var_9C
  loc_D1D247: CUI1Str
  loc_D1D249: FLdPr Me
  loc_D1D24C: MemLdRfVar from_stack_1.global_64
  loc_D1D24F: NewIfNullPr clsctacte
  loc_D1D252: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_D1D257: FFreeStr var_9C = "": var_15C = "": var_1C8 = ""
  loc_D1D262: FFreeAd var_88 = "": var_E0 = "": var_F4 = "": var_148 = "": var_160 = "": var_1B4 = "": var_1CC = "": var_220 = "": var_270 = "": var_2C4 = "": var_318 = ""
  loc_D1D27D: FFreeVar var_98 = "": var_F0 = "": var_104 = "": var_158 = "": var_170 = "": var_1C4 = "": var_1DC = "": var_230 = "": var_25C = "": var_26C = "": var_280 = "": var_2D4 = "": var_304 = "": var_314 = "": var_328 = "": var_37C = "": var_24C = ""
  loc_D1D2A4: FLdPr Me
  loc_D1D2A7: MemLdI2 global_102
  loc_D1D2AA: LitI2_Byte &HE
  loc_D1D2AC: EqI2
  loc_D1D2AD: BranchF loc_D1D32E
  loc_D1D2B0: FLdPr Me
  loc_D1D2B3: VCallAd Control_ID_ctacteFlex
  loc_D1D2B6: FStAdFunc var_88
  loc_D1D2B9: FLdPr var_88
  loc_D1D2BC: LateIdLdVar var_98 DispID_10 0
  loc_D1D2C3: CI4Var
  loc_D1D2C5: CVarI4
  loc_D1D2C9: PopAdLdVar
  loc_D1D2CA: FLdPr Me
  loc_D1D2CD: MemLdI2 global_102
  loc_D1D2D0: CI4UI1
  loc_D1D2D1: CVarI4
  loc_D1D2D5: PopAdLdVar
  loc_D1D2D6: FLdPr Me
  loc_D1D2D9: VCallAd Control_ID_ctacteFlex
  loc_D1D2DC: FStAdFunc var_E0
  loc_D1D2DF: FLdPr var_E0
  loc_D1D2E2: LateIdCallLdVar
  loc_D1D2EC: PopAd
  loc_D1D2EE: LitI4 2
  loc_D1D2F3: FLdPr Me
  loc_D1D2F6: MemLdFPR8 global_104
  loc_D1D2F9: FLdRfVar var_F0
  loc_D1D2FC: CStrVarTmp
  loc_D1D2FD: FStStrNoPop var_9C
  loc_D1D300: CR8Str
  loc_D1D302: SubR4
  loc_D1D303: CVarR8
  loc_D1D307: FLdRfVar var_158
  loc_D1D30A: ImpAdCallFPR4  = Round(, )
  loc_D1D30F: FLdRfVar var_158
  loc_D1D312: CR4Var
  loc_D1D313: FLdPr Me
  loc_D1D316: MemStFPR8 global_104
  loc_D1D319: FFree1Str var_9C
  loc_D1D31C: FFreeAd var_88 = ""
  loc_D1D323: FFreeVar var_98 = "": var_F0 = "": var_104 = ""
  loc_D1D32E: Branch loc_D1D649
  loc_D1D331: LitVarI4
  loc_D1D339: PopAdLdVar
  loc_D1D33A: FLdPr Me
  loc_D1D33D: VCallAd Control_ID_ctacteFlex
  loc_D1D340: FStAdFunc var_88
  loc_D1D343: FLdPr var_88
  loc_D1D346: LateIdSt
  loc_D1D34B: FFree1Ad var_88
  loc_D1D34E: FLdPr Me
  loc_D1D351: VCallAd Control_ID_ctacteFlex
  loc_D1D354: FStAdFunc var_88
  loc_D1D357: FLdPr var_88
  loc_D1D35A: LateIdLdVar var_98 DispID_10 0
  loc_D1D361: CI4Var
  loc_D1D363: CVarI4
  loc_D1D367: PopAdLdVar
  loc_D1D368: LitVarI4
  loc_D1D370: PopAdLdVar
  loc_D1D371: LitVarStr var_114, "Si"
  loc_D1D376: PopAdLdVar
  loc_D1D377: FLdPr Me
  loc_D1D37A: VCallAd Control_ID_ctacteFlex
  loc_D1D37D: FStAdFunc var_E0
  loc_D1D380: FLdPr var_E0
  loc_D1D383: LateIdCallSt
  loc_D1D38B: FFreeAd var_88 = ""
  loc_D1D392: FFree1Var var_98 = ""
  loc_D1D395: FLdPr Me
  loc_D1D398: MemLdI2 global_102
  loc_D1D39B: LitI2_Byte 0
  loc_D1D39D: EqI2
  loc_D1D39E: BranchF loc_D1D5BF
  loc_D1D3A1: FLdPr Me
  loc_D1D3A4: VCallAd Control_ID_ctacteFlex
  loc_D1D3A7: FStAdFunc var_88
  loc_D1D3AA: FLdPr var_88
  loc_D1D3AD: LateIdLdVar var_98 DispID_10 0
  loc_D1D3B4: CI4Var
  loc_D1D3B6: CVarI4
  loc_D1D3BA: PopAdLdVar
  loc_D1D3BB: LitVarI4
  loc_D1D3C3: PopAdLdVar
  loc_D1D3C4: FLdPr Me
  loc_D1D3C7: VCallAd Control_ID_ctacteFlex
  loc_D1D3CA: FStAdFunc var_E0
  loc_D1D3CD: FLdPr var_E0
  loc_D1D3D0: LateIdCallLdVar
  loc_D1D3DA: PopAd
  loc_D1D3DC: FLdPr Me
  loc_D1D3DF: VCallAd Control_ID_ctacteFlex
  loc_D1D3E2: FStAdFunc var_F4
  loc_D1D3E5: FLdPr var_F4
  loc_D1D3E8: LateIdLdVar var_104 DispID_10 0
  loc_D1D3EF: CI4Var
  loc_D1D3F1: CVarI4
  loc_D1D3F5: PopAdLdVar
  loc_D1D3F6: LitVarI4
  loc_D1D3FE: PopAdLdVar
  loc_D1D3FF: FLdPr Me
  loc_D1D402: VCallAd Control_ID_ctacteFlex
  loc_D1D405: FStAdFunc var_148
  loc_D1D408: FLdPr var_148
  loc_D1D40B: LateIdCallLdVar
  loc_D1D415: PopAd
  loc_D1D417: FLdPr Me
  loc_D1D41A: VCallAd Control_ID_ctacteFlex
  loc_D1D41D: FStAdFunc var_160
  loc_D1D420: FLdPr var_160
  loc_D1D423: LateIdLdVar var_170 DispID_10 0
  loc_D1D42A: CI4Var
  loc_D1D42C: CVarI4
  loc_D1D430: PopAdLdVar
  loc_D1D431: LitVarI4
  loc_D1D439: PopAdLdVar
  loc_D1D43A: FLdPr Me
  loc_D1D43D: VCallAd Control_ID_ctacteFlex
  loc_D1D440: FStAdFunc var_1B4
  loc_D1D443: FLdPr var_1B4
  loc_D1D446: LateIdCallLdVar
  loc_D1D450: PopAd
  loc_D1D452: LitVarI2 var_230, 4
  loc_D1D457: LitI4 4
  loc_D1D45C: FLdRfVar var_1C4
  loc_D1D45F: CStrVarTmp
  loc_D1D460: CVarStr var_1DC
  loc_D1D463: FLdRfVar var_24C
  loc_D1D466: ImpAdCallFPR4  = Mid(, , )
  loc_D1D46B: FLdPr Me
  loc_D1D46E: VCallAd Control_ID_ctacteFlex
  loc_D1D471: FStAdFunc var_1CC
  loc_D1D474: FLdPr var_1CC
  loc_D1D477: LateIdLdVar var_25C DispID_10 0
  loc_D1D47E: CI4Var
  loc_D1D480: CVarI4
  loc_D1D484: PopAdLdVar
  loc_D1D485: LitVarI4
  loc_D1D48D: PopAdLdVar
  loc_D1D48E: FLdPr Me
  loc_D1D491: VCallAd Control_ID_ctacteFlex
  loc_D1D494: FStAdFunc var_220
  loc_D1D497: FLdPr var_220
  loc_D1D49A: LateIdCallLdVar
  loc_D1D4A4: PopAd
  loc_D1D4A6: LitVarI2 var_2D4, 2
  loc_D1D4AB: LitI4 1
  loc_D1D4B0: FLdRfVar var_26C
  loc_D1D4B3: CStrVarTmp
  loc_D1D4B4: CVarStr var_280
  loc_D1D4B7: FLdRfVar var_2E4
  loc_D1D4BA: ImpAdCallFPR4  = Mid(, , )
  loc_D1D4BF: FLdPr Me
  loc_D1D4C2: VCallAd Control_ID_ctacteFlex
  loc_D1D4C5: FStAdFunc var_270
  loc_D1D4C8: FLdPr var_270
  loc_D1D4CB: LateIdLdVar var_304 DispID_10 0
  loc_D1D4D2: CI4Var
  loc_D1D4D4: CVarI4
  loc_D1D4D8: PopAdLdVar
  loc_D1D4D9: LitVarI4
  loc_D1D4E1: PopAdLdVar
  loc_D1D4E2: FLdPr Me
  loc_D1D4E5: VCallAd Control_ID_ctacteFlex
  loc_D1D4E8: FStAdFunc var_2C4
  loc_D1D4EB: FLdPr var_2C4
  loc_D1D4EE: LateIdCallLdVar
  loc_D1D4F8: PopAd
  loc_D1D4FA: FLdPr Me
  loc_D1D4FD: VCallAd Control_ID_ctacteFlex
  loc_D1D500: FStAdFunc var_318
  loc_D1D503: FLdPr var_318
  loc_D1D506: LateIdLdVar var_328 DispID_10 0
  loc_D1D50D: CI4Var
  loc_D1D50F: CVarI4
  loc_D1D513: PopAdLdVar
  loc_D1D514: LitVarI4
  loc_D1D51C: PopAdLdVar
  loc_D1D51D: FLdPr Me
  loc_D1D520: VCallAd Control_ID_ctacteFlex
  loc_D1D523: FStAdFunc var_36C
  loc_D1D526: FLdPr var_36C
  loc_D1D529: LateIdCallLdVar
  loc_D1D533: PopAd
  loc_D1D535: LitStr "tmp_ctacteboleto"
  loc_D1D538: LitStr "Si"
  loc_D1D53B: FLdRfVar var_37C
  loc_D1D53E: CStrVarTmp
  loc_D1D53F: FStStrNoPop var_234
  loc_D1D542: CI2Str
  loc_D1D544: FLdRfVar var_314
  loc_D1D547: CStrVarTmp
  loc_D1D548: FStStrNoPop var_1C8
  loc_D1D54B: CI4Str
  loc_D1D54C: FLdRfVar var_2E4
  loc_D1D54F: CI2Var
  loc_D1D550: FLdRfVar var_24C
  loc_D1D553: CI2Var
  loc_D1D554: FLdRfVar var_158
  loc_D1D557: CStrVarTmp
  loc_D1D558: FStStrNoPop var_15C
  loc_D1D55B: FLdRfVar var_F0
  loc_D1D55E: CStrVarTmp
  loc_D1D55F: FStStrNoPop var_9C
  loc_D1D562: CUI1Str
  loc_D1D564: FLdPr Me
  loc_D1D567: MemLdRfVar from_stack_1.global_64
  loc_D1D56A: NewIfNullPr clsctacte
  loc_D1D56D: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_D1D572: FFreeStr var_9C = "": var_15C = "": var_1C8 = ""
  loc_D1D57D: FFreeAd var_88 = "": var_E0 = "": var_F4 = "": var_148 = "": var_160 = "": var_1B4 = "": var_1CC = "": var_220 = "": var_270 = "": var_2C4 = "": var_318 = ""
  loc_D1D598: FFreeVar var_98 = "": var_F0 = "": var_104 = "": var_158 = "": var_170 = "": var_1C4 = "": var_1DC = "": var_230 = "": var_25C = "": var_26C = "": var_280 = "": var_2D4 = "": var_304 = "": var_314 = "": var_328 = "": var_37C = "": var_24C = ""
  loc_D1D5BF: FLdPr Me
  loc_D1D5C2: MemLdI2 global_102
  loc_D1D5C5: LitI2_Byte &HE
  loc_D1D5C7: EqI2
  loc_D1D5C8: BranchF loc_D1D649
  loc_D1D5CB: FLdPr Me
  loc_D1D5CE: VCallAd Control_ID_ctacteFlex
  loc_D1D5D1: FStAdFunc var_88
  loc_D1D5D4: FLdPr var_88
  loc_D1D5D7: LateIdLdVar var_98 DispID_10 0
  loc_D1D5DE: CI4Var
  loc_D1D5E0: CVarI4
  loc_D1D5E4: PopAdLdVar
  loc_D1D5E5: FLdPr Me
  loc_D1D5E8: MemLdI2 global_102
  loc_D1D5EB: CI4UI1
  loc_D1D5EC: CVarI4
  loc_D1D5F0: PopAdLdVar
  loc_D1D5F1: FLdPr Me
  loc_D1D5F4: VCallAd Control_ID_ctacteFlex
  loc_D1D5F7: FStAdFunc var_E0
  loc_D1D5FA: FLdPr var_E0
  loc_D1D5FD: LateIdCallLdVar
  loc_D1D607: PopAd
  loc_D1D609: LitI4 2
  loc_D1D60E: FLdPr Me
  loc_D1D611: MemLdFPR8 global_104
  loc_D1D614: FLdRfVar var_F0
  loc_D1D617: CStrVarTmp
  loc_D1D618: FStStrNoPop var_9C
  loc_D1D61B: CR8Str
  loc_D1D61D: AddR8
  loc_D1D61E: CVarR8
  loc_D1D622: FLdRfVar var_158
  loc_D1D625: ImpAdCallFPR4  = Round(, )
  loc_D1D62A: FLdRfVar var_158
  loc_D1D62D: CR4Var
  loc_D1D62E: FLdPr Me
  loc_D1D631: MemStFPR8 global_104
  loc_D1D634: FFree1Str var_9C
  loc_D1D637: FFreeAd var_88 = ""
  loc_D1D63E: FFreeVar var_98 = "": var_F0 = "": var_104 = ""
  loc_D1D649: FLdPr Me
  loc_D1D64C: MemLdRfVar from_stack_1.global_102
  loc_D1D64F: NextI2 var_494, loc_D1CFD2
  loc_D1D654: FLdPr Me
  loc_D1D657: MemLdRfVar from_stack_1.global_100
  loc_D1D65A: NextI2 var_490, loc_D1CEF7
  loc_D1D65F: Branch loc_D1DDB9
  loc_D1D662: FLdPr Me
  loc_D1D665: VCallAd Control_ID_ctacteFlex
  loc_D1D668: FStAdFunc var_88
  loc_D1D66B: FLdPr var_88
  loc_D1D66E: LateIdLdVar var_98 DispID_10 0
  loc_D1D675: CI4Var
  loc_D1D677: CVarI4
  loc_D1D67B: PopAdLdVar
  loc_D1D67C: LitVarI4
  loc_D1D684: PopAdLdVar
  loc_D1D685: FLdPr Me
  loc_D1D688: VCallAd Control_ID_ctacteFlex
  loc_D1D68B: FStAdFunc var_E0
  loc_D1D68E: FLdPr var_E0
  loc_D1D691: LateIdCallLdVar
  loc_D1D69B: CStrVarTmp
  loc_D1D69C: FStStrNoPop var_9C
  loc_D1D69F: LitStr "Si"
  loc_D1D6A2: EqStr
  loc_D1D6A4: FFree1Str var_9C
  loc_D1D6A7: FFreeAd var_88 = ""
  loc_D1D6AE: FFreeVar var_98 = ""
  loc_D1D6B5: BranchF loc_D1DA0F
  loc_D1D6B8: LitI2_Byte 0
  loc_D1D6BA: FLdPr Me
  loc_D1D6BD: MemLdRfVar from_stack_1.global_100
  loc_D1D6C0: FLdPr Me
  loc_D1D6C3: VCallAd Control_ID_ctacteFlex
  loc_D1D6C6: FStAdFunc var_88
  loc_D1D6C9: FLdPr var_88
  loc_D1D6CC: LateIdLdVar var_98 DispID_5 0
  loc_D1D6D3: CI4Var
  loc_D1D6D5: LitI4 1
  loc_D1D6DA: SubI4
  loc_D1D6DB: CI2I4
  loc_D1D6DC: FFree1Ad var_88
  loc_D1D6DF: FFree1Var var_98 = ""
  loc_D1D6E2: ForI2 var_498
  loc_D1D6E8: FLdPr Me
  loc_D1D6EB: MemLdI2 global_100
  loc_D1D6EE: CI4UI1
  loc_D1D6EF: CVarI4
  loc_D1D6F3: PopAdLdVar
  loc_D1D6F4: FLdPr Me
  loc_D1D6F7: VCallAd Control_ID_ctacteFlex
  loc_D1D6FA: FStAdFunc var_88
  loc_D1D6FD: FLdPr var_88
  loc_D1D700: LateIdSt
  loc_D1D705: FFree1Ad var_88
  loc_D1D708: LitVarI4
  loc_D1D710: PopAdLdVar
  loc_D1D711: FLdPr Me
  loc_D1D714: VCallAd Control_ID_ctacteFlex
  loc_D1D717: FStAdFunc var_88
  loc_D1D71A: FLdPr var_88
  loc_D1D71D: LateIdSt
  loc_D1D722: FFree1Ad var_88
  loc_D1D725: FLdPr Me
  loc_D1D728: VCallAd Control_ID_ctacteFlex
  loc_D1D72B: FStAdFunc var_88
  loc_D1D72E: FLdPr var_88
  loc_D1D731: LateIdLdVar var_98 DispID_10 0
  loc_D1D738: CI4Var
  loc_D1D73A: CVarI4
  loc_D1D73E: PopAdLdVar
  loc_D1D73F: LitVarI4
  loc_D1D747: PopAdLdVar
  loc_D1D748: LitVarStr var_114, "No"
  loc_D1D74D: PopAdLdVar
  loc_D1D74E: FLdPr Me
  loc_D1D751: VCallAd Control_ID_ctacteFlex
  loc_D1D754: FStAdFunc var_E0
  loc_D1D757: FLdPr var_E0
  loc_D1D75A: LateIdCallSt
  loc_D1D762: FFreeAd var_88 = ""
  loc_D1D769: FFree1Var var_98 = ""
  loc_D1D76C: FLdPr Me
  loc_D1D76F: MemLdI2 global_100
  loc_D1D772: LitI2_Byte 0
  loc_D1D774: EqI2
  loc_D1D775: BranchF loc_D1D977
  loc_D1D778: FLdPr Me
  loc_D1D77B: VCallAd Control_ID_ctacteFlex
  loc_D1D77E: FStAdFunc var_88
  loc_D1D781: FLdPr var_88
  loc_D1D784: LateIdLdVar var_98 DispID_10 0
  loc_D1D78B: CI4Var
  loc_D1D78D: CVarI4
  loc_D1D791: PopAdLdVar
  loc_D1D792: LitVarI4
  loc_D1D79A: PopAdLdVar
  loc_D1D79B: FLdPr Me
  loc_D1D79E: VCallAd Control_ID_ctacteFlex
  loc_D1D7A1: FStAdFunc var_E0
  loc_D1D7A4: FLdPr var_E0
  loc_D1D7A7: LateIdCallLdVar
  loc_D1D7B1: PopAd
  loc_D1D7B3: FLdPr Me
  loc_D1D7B6: VCallAd Control_ID_ctacteFlex
  loc_D1D7B9: FStAdFunc var_F4
  loc_D1D7BC: FLdPr var_F4
  loc_D1D7BF: LateIdLdVar var_104 DispID_10 0
  loc_D1D7C6: CI4Var
  loc_D1D7C8: CVarI4
  loc_D1D7CC: PopAdLdVar
  loc_D1D7CD: LitVarI4
  loc_D1D7D5: PopAdLdVar
  loc_D1D7D6: FLdPr Me
  loc_D1D7D9: VCallAd Control_ID_ctacteFlex
  loc_D1D7DC: FStAdFunc var_148
  loc_D1D7DF: FLdPr var_148
  loc_D1D7E2: LateIdCallLdVar
  loc_D1D7EC: PopAd
  loc_D1D7EE: FLdPr Me
  loc_D1D7F1: VCallAd Control_ID_ctacteFlex
  loc_D1D7F4: FStAdFunc var_160
  loc_D1D7F7: FLdPr var_160
  loc_D1D7FA: LateIdLdVar var_170 DispID_10 0
  loc_D1D801: CI4Var
  loc_D1D803: CVarI4
  loc_D1D807: PopAdLdVar
  loc_D1D808: LitVarI4
  loc_D1D810: PopAdLdVar
  loc_D1D811: FLdPr Me
  loc_D1D814: VCallAd Control_ID_ctacteFlex
  loc_D1D817: FStAdFunc var_1B4
  loc_D1D81A: FLdPr var_1B4
  loc_D1D81D: LateIdCallLdVar
  loc_D1D827: PopAd
  loc_D1D829: LitI4 4
  loc_D1D82E: FLdRfVar var_1C4
  loc_D1D831: CStrVarTmp
  loc_D1D832: CVarStr var_1DC
  loc_D1D835: FLdRfVar var_230
  loc_D1D838: ImpAdCallFPR4  = Right(, )
  loc_D1D83D: FLdPr Me
  loc_D1D840: VCallAd Control_ID_ctacteFlex
  loc_D1D843: FStAdFunc var_1CC
  loc_D1D846: FLdPr var_1CC
  loc_D1D849: LateIdLdVar var_24C DispID_10 0
  loc_D1D850: CI4Var
  loc_D1D852: CVarI4
  loc_D1D856: PopAdLdVar
  loc_D1D857: LitVarI4
  loc_D1D85F: PopAdLdVar
  loc_D1D860: FLdPr Me
  loc_D1D863: VCallAd Control_ID_ctacteFlex
  loc_D1D866: FStAdFunc var_220
  loc_D1D869: FLdPr var_220
  loc_D1D86C: LateIdCallLdVar
  loc_D1D876: PopAd
  loc_D1D878: FLdPr Me
  loc_D1D87B: VCallAd Control_ID_ctacteFlex
  loc_D1D87E: FStAdFunc var_270
  loc_D1D881: FLdPr var_270
  loc_D1D884: LateIdLdVar var_26C DispID_10 0
  loc_D1D88B: CI4Var
  loc_D1D88D: CVarI4
  loc_D1D891: PopAdLdVar
  loc_D1D892: LitVarI4
  loc_D1D89A: PopAdLdVar
  loc_D1D89B: FLdPr Me
  loc_D1D89E: VCallAd Control_ID_ctacteFlex
  loc_D1D8A1: FStAdFunc var_2C4
  loc_D1D8A4: FLdPr var_2C4
  loc_D1D8A7: LateIdCallLdVar
  loc_D1D8B1: PopAd
  loc_D1D8B3: FLdPr Me
  loc_D1D8B6: VCallAd Control_ID_ctacteFlex
  loc_D1D8B9: FStAdFunc var_318
  loc_D1D8BC: FLdPr var_318
  loc_D1D8BF: LateIdLdVar var_2D4 DispID_10 0
  loc_D1D8C6: CI4Var
  loc_D1D8C8: CVarI4
  loc_D1D8CC: PopAdLdVar
  loc_D1D8CD: LitVarI4
  loc_D1D8D5: PopAdLdVar
  loc_D1D8D6: FLdPr Me
  loc_D1D8D9: VCallAd Control_ID_ctacteFlex
  loc_D1D8DC: FStAdFunc var_36C
  loc_D1D8DF: FLdPr var_36C
  loc_D1D8E2: LateIdCallLdVar
  loc_D1D8EC: PopAd
  loc_D1D8EE: LitStr "tmp_ctacteboleto"
  loc_D1D8F1: LitStr "No"
  loc_D1D8F4: FLdRfVar var_2E4
  loc_D1D8F7: CStrVarTmp
  loc_D1D8F8: FStStrNoPop var_3E8
  loc_D1D8FB: CI2Str
  loc_D1D8FD: FLdRfVar var_280
  loc_D1D900: CStrVarTmp
  loc_D1D901: FStStrNoPop var_234
  loc_D1D904: CI4Str
  loc_D1D905: FLdRfVar var_25C
  loc_D1D908: CStrVarTmp
  loc_D1D909: FStStrNoPop var_1C8
  loc_D1D90C: CI2Str
  loc_D1D90E: FLdRfVar var_230
  loc_D1D911: CI2Var
  loc_D1D912: FLdRfVar var_158
  loc_D1D915: CStrVarTmp
  loc_D1D916: FStStrNoPop var_15C
  loc_D1D919: FLdRfVar var_F0
  loc_D1D91C: CStrVarTmp
  loc_D1D91D: FStStrNoPop var_9C
  loc_D1D920: CUI1Str
  loc_D1D922: FLdPr Me
  loc_D1D925: MemLdRfVar from_stack_1.global_64
  loc_D1D928: NewIfNullPr clsctacte
  loc_D1D92B: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_D1D930: FFreeStr var_9C = "": var_15C = "": var_1C8 = "": var_234 = ""
  loc_D1D93D: FFreeAd var_88 = "": var_E0 = "": var_F4 = "": var_148 = "": var_160 = "": var_1B4 = "": var_1CC = "": var_220 = "": var_270 = "": var_2C4 = "": var_318 = ""
  loc_D1D958: FFreeVar var_98 = "": var_F0 = "": var_104 = "": var_158 = "": var_170 = "": var_1C4 = "": var_1DC = "": var_24C = "": var_25C = "": var_26C = "": var_280 = "": var_2D4 = "": var_2E4 = ""
  loc_D1D977: FLdPr Me
  loc_D1D97A: MemLdI2 global_100
  loc_D1D97D: LitI2_Byte &HE
  loc_D1D97F: EqI2
  loc_D1D980: BranchF loc_D1DA01
  loc_D1D983: FLdPr Me
  loc_D1D986: VCallAd Control_ID_ctacteFlex
  loc_D1D989: FStAdFunc var_88
  loc_D1D98C: FLdPr var_88
  loc_D1D98F: LateIdLdVar var_98 DispID_10 0
  loc_D1D996: CI4Var
  loc_D1D998: CVarI4
  loc_D1D99C: PopAdLdVar
  loc_D1D99D: FLdPr Me
  loc_D1D9A0: MemLdI2 global_100
  loc_D1D9A3: CI4UI1
  loc_D1D9A4: CVarI4
  loc_D1D9A8: PopAdLdVar
  loc_D1D9A9: FLdPr Me
  loc_D1D9AC: VCallAd Control_ID_ctacteFlex
  loc_D1D9AF: FStAdFunc var_E0
  loc_D1D9B2: FLdPr var_E0
  loc_D1D9B5: LateIdCallLdVar
  loc_D1D9BF: PopAd
  loc_D1D9C1: LitI4 2
  loc_D1D9C6: FLdPr Me
  loc_D1D9C9: MemLdFPR8 global_104
  loc_D1D9CC: FLdRfVar var_F0
  loc_D1D9CF: CStrVarTmp
  loc_D1D9D0: FStStrNoPop var_9C
  loc_D1D9D3: CR8Str
  loc_D1D9D5: SubR4
  loc_D1D9D6: CVarR8
  loc_D1D9DA: FLdRfVar var_158
  loc_D1D9DD: ImpAdCallFPR4  = Round(, )
  loc_D1D9E2: FLdRfVar var_158
  loc_D1D9E5: CR4Var
  loc_D1D9E6: FLdPr Me
  loc_D1D9E9: MemStFPR8 global_104
  loc_D1D9EC: FFree1Str var_9C
  loc_D1D9EF: FFreeAd var_88 = ""
  loc_D1D9F6: FFreeVar var_98 = "": var_F0 = "": var_104 = ""
  loc_D1DA01: FLdPr Me
  loc_D1DA04: MemLdRfVar from_stack_1.global_100
  loc_D1DA07: NextI2 var_498, loc_D1D6E8
  loc_D1DA0C: Branch loc_D1DDB9
  loc_D1DA0F: FLdPr Me
  loc_D1DA12: VCallAd Control_ID_ctacteFlex
  loc_D1DA15: FStAdFunc var_88
  loc_D1DA18: FLdPr var_88
  loc_D1DA1B: LateIdLdVar var_98 DispID_10 0
  loc_D1DA22: CI4Var
  loc_D1DA24: CVarI4
  loc_D1DA28: PopAdLdVar
  loc_D1DA29: LitVarI4
  loc_D1DA31: PopAdLdVar
  loc_D1DA32: FLdPr Me
  loc_D1DA35: VCallAd Control_ID_ctacteFlex
  loc_D1DA38: FStAdFunc var_E0
  loc_D1DA3B: FLdPr var_E0
  loc_D1DA3E: LateIdCallLdVar
  loc_D1DA48: CStrVarTmp
  loc_D1DA49: FStStrNoPop var_9C
  loc_D1DA4C: LitStr "No"
  loc_D1DA4F: EqStr
  loc_D1DA51: FFree1Str var_9C
  loc_D1DA54: FFreeAd var_88 = ""
  loc_D1DA5B: FFreeVar var_98 = ""
  loc_D1DA62: BranchF loc_D1DDB9
  loc_D1DA65: LitI2_Byte 0
  loc_D1DA67: FLdPr Me
  loc_D1DA6A: MemLdRfVar from_stack_1.global_100
  loc_D1DA6D: FLdPr Me
  loc_D1DA70: VCallAd Control_ID_ctacteFlex
  loc_D1DA73: FStAdFunc var_88
  loc_D1DA76: FLdPr var_88
  loc_D1DA79: LateIdLdVar var_98 DispID_5 0
  loc_D1DA80: CI4Var
  loc_D1DA82: LitI4 1
  loc_D1DA87: SubI4
  loc_D1DA88: CI2I4
  loc_D1DA89: FFree1Ad var_88
  loc_D1DA8C: FFree1Var var_98 = ""
  loc_D1DA8F: ForI2 var_49C
  loc_D1DA95: FLdPr Me
  loc_D1DA98: MemLdI2 global_100
  loc_D1DA9B: CI4UI1
  loc_D1DA9C: CVarI4
  loc_D1DAA0: PopAdLdVar
  loc_D1DAA1: FLdPr Me
  loc_D1DAA4: VCallAd Control_ID_ctacteFlex
  loc_D1DAA7: FStAdFunc var_88
  loc_D1DAAA: FLdPr var_88
  loc_D1DAAD: LateIdSt
  loc_D1DAB2: FFree1Ad var_88
  loc_D1DAB5: LitVarI4
  loc_D1DABD: PopAdLdVar
  loc_D1DABE: FLdPr Me
  loc_D1DAC1: VCallAd Control_ID_ctacteFlex
  loc_D1DAC4: FStAdFunc var_88
  loc_D1DAC7: FLdPr var_88
  loc_D1DACA: LateIdSt
  loc_D1DACF: FFree1Ad var_88
  loc_D1DAD2: FLdPr Me
  loc_D1DAD5: VCallAd Control_ID_ctacteFlex
  loc_D1DAD8: FStAdFunc var_88
  loc_D1DADB: FLdPr var_88
  loc_D1DADE: LateIdLdVar var_98 DispID_10 0
  loc_D1DAE5: CI4Var
  loc_D1DAE7: CVarI4
  loc_D1DAEB: PopAdLdVar
  loc_D1DAEC: LitVarI4
  loc_D1DAF4: PopAdLdVar
  loc_D1DAF5: LitVarStr var_114, "Si"
  loc_D1DAFA: PopAdLdVar
  loc_D1DAFB: FLdPr Me
  loc_D1DAFE: VCallAd Control_ID_ctacteFlex
  loc_D1DB01: FStAdFunc var_E0
  loc_D1DB04: FLdPr var_E0
  loc_D1DB07: LateIdCallSt
  loc_D1DB0F: FFreeAd var_88 = ""
  loc_D1DB16: FFree1Var var_98 = ""
  loc_D1DB19: FLdPr Me
  loc_D1DB1C: MemLdI2 global_100
  loc_D1DB1F: LitI2_Byte 0
  loc_D1DB21: EqI2
  loc_D1DB22: BranchF loc_D1DD24
  loc_D1DB25: FLdPr Me
  loc_D1DB28: VCallAd Control_ID_ctacteFlex
  loc_D1DB2B: FStAdFunc var_88
  loc_D1DB2E: FLdPr var_88
  loc_D1DB31: LateIdLdVar var_98 DispID_10 0
  loc_D1DB38: CI4Var
  loc_D1DB3A: CVarI4
  loc_D1DB3E: PopAdLdVar
  loc_D1DB3F: LitVarI4
  loc_D1DB47: PopAdLdVar
  loc_D1DB48: FLdPr Me
  loc_D1DB4B: VCallAd Control_ID_ctacteFlex
  loc_D1DB4E: FStAdFunc var_E0
  loc_D1DB51: FLdPr var_E0
  loc_D1DB54: LateIdCallLdVar
  loc_D1DB5E: PopAd
  loc_D1DB60: FLdPr Me
  loc_D1DB63: VCallAd Control_ID_ctacteFlex
  loc_D1DB66: FStAdFunc var_F4
  loc_D1DB69: FLdPr var_F4
  loc_D1DB6C: LateIdLdVar var_104 DispID_10 0
  loc_D1DB73: CI4Var
  loc_D1DB75: CVarI4
  loc_D1DB79: PopAdLdVar
  loc_D1DB7A: LitVarI4
  loc_D1DB82: PopAdLdVar
  loc_D1DB83: FLdPr Me
  loc_D1DB86: VCallAd Control_ID_ctacteFlex
  loc_D1DB89: FStAdFunc var_148
  loc_D1DB8C: FLdPr var_148
  loc_D1DB8F: LateIdCallLdVar
  loc_D1DB99: PopAd
  loc_D1DB9B: FLdPr Me
  loc_D1DB9E: VCallAd Control_ID_ctacteFlex
  loc_D1DBA1: FStAdFunc var_160
  loc_D1DBA4: FLdPr var_160
  loc_D1DBA7: LateIdLdVar var_170 DispID_10 0
  loc_D1DBAE: CI4Var
  loc_D1DBB0: CVarI4
  loc_D1DBB4: PopAdLdVar
  loc_D1DBB5: LitVarI4
  loc_D1DBBD: PopAdLdVar
  loc_D1DBBE: FLdPr Me
  loc_D1DBC1: VCallAd Control_ID_ctacteFlex
  loc_D1DBC4: FStAdFunc var_1B4
  loc_D1DBC7: FLdPr var_1B4
  loc_D1DBCA: LateIdCallLdVar
  loc_D1DBD4: PopAd
  loc_D1DBD6: LitI4 4
  loc_D1DBDB: FLdRfVar var_1C4
  loc_D1DBDE: CStrVarTmp
  loc_D1DBDF: CVarStr var_1DC
  loc_D1DBE2: FLdRfVar var_230
  loc_D1DBE5: ImpAdCallFPR4  = Right(, )
  loc_D1DBEA: FLdPr Me
  loc_D1DBED: VCallAd Control_ID_ctacteFlex
  loc_D1DBF0: FStAdFunc var_1CC
  loc_D1DBF3: FLdPr var_1CC
  loc_D1DBF6: LateIdLdVar var_24C DispID_10 0
  loc_D1DBFD: CI4Var
  loc_D1DBFF: CVarI4
  loc_D1DC03: PopAdLdVar
  loc_D1DC04: LitVarI4
  loc_D1DC0C: PopAdLdVar
  loc_D1DC0D: FLdPr Me
  loc_D1DC10: VCallAd Control_ID_ctacteFlex
  loc_D1DC13: FStAdFunc var_220
  loc_D1DC16: FLdPr var_220
  loc_D1DC19: LateIdCallLdVar
  loc_D1DC23: PopAd
  loc_D1DC25: FLdPr Me
  loc_D1DC28: VCallAd Control_ID_ctacteFlex
  loc_D1DC2B: FStAdFunc var_270
  loc_D1DC2E: FLdPr var_270
  loc_D1DC31: LateIdLdVar var_26C DispID_10 0
  loc_D1DC38: CI4Var
  loc_D1DC3A: CVarI4
  loc_D1DC3E: PopAdLdVar
  loc_D1DC3F: LitVarI4
  loc_D1DC47: PopAdLdVar
  loc_D1DC48: FLdPr Me
  loc_D1DC4B: VCallAd Control_ID_ctacteFlex
  loc_D1DC4E: FStAdFunc var_2C4
  loc_D1DC51: FLdPr var_2C4
  loc_D1DC54: LateIdCallLdVar
  loc_D1DC5E: PopAd
  loc_D1DC60: FLdPr Me
  loc_D1DC63: VCallAd Control_ID_ctacteFlex
  loc_D1DC66: FStAdFunc var_318
  loc_D1DC69: FLdPr var_318
  loc_D1DC6C: LateIdLdVar var_2D4 DispID_10 0
  loc_D1DC73: CI4Var
  loc_D1DC75: CVarI4
  loc_D1DC79: PopAdLdVar
  loc_D1DC7A: LitVarI4
  loc_D1DC82: PopAdLdVar
  loc_D1DC83: FLdPr Me
  loc_D1DC86: VCallAd Control_ID_ctacteFlex
  loc_D1DC89: FStAdFunc var_36C
  loc_D1DC8C: FLdPr var_36C
  loc_D1DC8F: LateIdCallLdVar
  loc_D1DC99: PopAd
  loc_D1DC9B: LitStr "tmp_ctacteboleto"
  loc_D1DC9E: LitStr "Si"
  loc_D1DCA1: FLdRfVar var_2E4
  loc_D1DCA4: CStrVarTmp
  loc_D1DCA5: FStStrNoPop var_3E8
  loc_D1DCA8: CI2Str
  loc_D1DCAA: FLdRfVar var_280
  loc_D1DCAD: CStrVarTmp
  loc_D1DCAE: FStStrNoPop var_234
  loc_D1DCB1: CI4Str
  loc_D1DCB2: FLdRfVar var_25C
  loc_D1DCB5: CStrVarTmp
  loc_D1DCB6: FStStrNoPop var_1C8
  loc_D1DCB9: CI2Str
  loc_D1DCBB: FLdRfVar var_230
  loc_D1DCBE: CI2Var
  loc_D1DCBF: FLdRfVar var_158
  loc_D1DCC2: CStrVarTmp
  loc_D1DCC3: FStStrNoPop var_15C
  loc_D1DCC6: FLdRfVar var_F0
  loc_D1DCC9: CStrVarTmp
  loc_D1DCCA: FStStrNoPop var_9C
  loc_D1DCCD: CUI1Str
  loc_D1DCCF: FLdPr Me
  loc_D1DCD2: MemLdRfVar from_stack_1.global_64
  loc_D1DCD5: NewIfNullPr clsctacte
  loc_D1DCD8: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_D1DCDD: FFreeStr var_9C = "": var_15C = "": var_1C8 = "": var_234 = ""
  loc_D1DCEA: FFreeAd var_88 = "": var_E0 = "": var_F4 = "": var_148 = "": var_160 = "": var_1B4 = "": var_1CC = "": var_220 = "": var_270 = "": var_2C4 = "": var_318 = ""
  loc_D1DD05: FFreeVar var_98 = "": var_F0 = "": var_104 = "": var_158 = "": var_170 = "": var_1C4 = "": var_1DC = "": var_24C = "": var_25C = "": var_26C = "": var_280 = "": var_2D4 = "": var_2E4 = ""
  loc_D1DD24: FLdPr Me
  loc_D1DD27: MemLdI2 global_100
  loc_D1DD2A: LitI2_Byte &HE
  loc_D1DD2C: EqI2
  loc_D1DD2D: BranchF loc_D1DDAE
  loc_D1DD30: FLdPr Me
  loc_D1DD33: VCallAd Control_ID_ctacteFlex
  loc_D1DD36: FStAdFunc var_88
  loc_D1DD39: FLdPr var_88
  loc_D1DD3C: LateIdLdVar var_98 DispID_10 0
  loc_D1DD43: CI4Var
  loc_D1DD45: CVarI4
  loc_D1DD49: PopAdLdVar
  loc_D1DD4A: FLdPr Me
  loc_D1DD4D: MemLdI2 global_100
  loc_D1DD50: CI4UI1
  loc_D1DD51: CVarI4
  loc_D1DD55: PopAdLdVar
  loc_D1DD56: FLdPr Me
  loc_D1DD59: VCallAd Control_ID_ctacteFlex
  loc_D1DD5C: FStAdFunc var_E0
  loc_D1DD5F: FLdPr var_E0
  loc_D1DD62: LateIdCallLdVar
  loc_D1DD6C: PopAd
  loc_D1DD6E: LitI4 2
  loc_D1DD73: FLdPr Me
  loc_D1DD76: MemLdFPR8 global_104
  loc_D1DD79: FLdRfVar var_F0
  loc_D1DD7C: CStrVarTmp
  loc_D1DD7D: FStStrNoPop var_9C
  loc_D1DD80: CR8Str
  loc_D1DD82: AddR8
  loc_D1DD83: CVarR8
  loc_D1DD87: FLdRfVar var_158
  loc_D1DD8A: ImpAdCallFPR4  = Round(, )
  loc_D1DD8F: FLdRfVar var_158
  loc_D1DD92: CR4Var
  loc_D1DD93: FLdPr Me
  loc_D1DD96: MemStFPR8 global_104
  loc_D1DD99: FFree1Str var_9C
  loc_D1DD9C: FFreeAd var_88 = ""
  loc_D1DDA3: FFreeVar var_98 = "": var_F0 = "": var_104 = ""
  loc_D1DDAE: FLdPr Me
  loc_D1DDB1: MemLdRfVar from_stack_1.global_100
  loc_D1DDB4: NextI2 var_49C, loc_D1DA95
  loc_D1DDB9: FLdRfVar var_3EA
  loc_D1DDBC: FLdPr Me
  loc_D1DDBF: VCallAd Control_ID_HabilitarChk
  loc_D1DDC2: FStAdFunc var_88
  loc_D1DDC5: FLdPr var_88
  loc_D1DDC8:  = Me.Enabled
  loc_D1DDCD: FLdI2 var_3EA
  loc_D1DDD0: FLdRfVar var_49E
  loc_D1DDD3: FLdPr Me
  loc_D1DDD6: VCallAd Control_ID_HabilitarChk
  loc_D1DDD9: FStAdFunc var_E0
  loc_D1DDDC: FLdPr var_E0
  loc_D1DDDF:  = Me.Value
  loc_D1DDE4: FLdI2 var_49E
  loc_D1DDE7: LitI2_Byte 0
  loc_D1DDE9: EqI2
  loc_D1DDEA: AndI4
  loc_D1DDEB: FFreeAd var_88 = ""
  loc_D1DDF2: BranchF loc_D1DE68
  loc_D1DDF5: LitI2_Byte 0
  loc_D1DDF7: FLdPr Me
  loc_D1DDFA: VCallAd Control_ID_HabilitarChk
  loc_D1DDFD: FStAdFunc var_88
  loc_D1DE00: FLdPr var_88
  loc_D1DE03: Me.Value = from_stack_1
  loc_D1DE08: FFree1Ad var_88
  loc_D1DE0B: LitStr vbNullString
  loc_D1DE0E: FLdPr Me
  loc_D1DE11: VCallAd Control_ID_PagoCuentaTxt
  loc_D1DE14: FStAdFunc var_88
  loc_D1DE17: FLdPr var_88
  loc_D1DE1A: Me.Text = from_stack_1
  loc_D1DE1F: FFree1Ad var_88
  loc_D1DE22: LitI4 0
  loc_D1DE27: LitI4 1
  loc_D1DE2C: FLdRfVar var_4A4
  loc_D1DE2F: Redim
  loc_D1DE39: FLdPr Me
  loc_D1DE3C: VCallAd Control_ID_HabilitarChk
  loc_D1DE3F: CVarAd
  loc_D1DE43: ParmAry1St
  loc_D1DE49: FLdPr Me
  loc_D1DE4C: VCallAd Control_ID_PagoCuentaTxt
  loc_D1DE4F: CVarAd
  loc_D1DE53: ParmAry1St
  loc_D1DE59: FLdRfVar var_4A4
  loc_D1DE5C: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_D1DE61: FLdRfVar var_4A4
  loc_D1DE64: Erase
  loc_D1DE65: Branch loc_D1DEBA
  loc_D1DE68: FLdRfVar var_3EA
  loc_D1DE6B: FLdPr Me
  loc_D1DE6E: VCallAd Control_ID_HabilitarChk
  loc_D1DE71: FStAdFunc var_88
  loc_D1DE74: FLdPr var_88
  loc_D1DE77:  = Me.Enabled
  loc_D1DE7C: FLdI2 var_3EA
  loc_D1DE7F: FLdRfVar var_49E
  loc_D1DE82: FLdPr Me
  loc_D1DE85: VCallAd Control_ID_HabilitarChk
  loc_D1DE88: FStAdFunc var_E0
  loc_D1DE8B: FLdPr var_E0
  loc_D1DE8E:  = Me.Value
  loc_D1DE93: FLdI2 var_49E
  loc_D1DE96: LitI2_Byte 1
  loc_D1DE98: EqI2
  loc_D1DE99: AndI4
  loc_D1DE9A: FFreeAd var_88 = ""
  loc_D1DEA1: BranchF loc_D1DEBA
  loc_D1DEA4: LitI2_Byte &HFF
  loc_D1DEA6: FLdPr Me
  loc_D1DEA9: VCallAd Control_ID_PagoCuentaTxt
  loc_D1DEAC: FStAdFunc var_88
  loc_D1DEAF: FLdPr var_88
  loc_D1DEB2: Me.Locked = from_stack_1b
  loc_D1DEB7: FFree1Ad var_88
  loc_D1DEBA: LitI4 1
  loc_D1DEBF: LitI4 1
  loc_D1DEC4: LitVarStr var_BC, "###,###,##0.00"
  loc_D1DEC9: FStVarCopyObj var_98
  loc_D1DECC: FLdRfVar var_98
  loc_D1DECF: FLdPr Me
  loc_D1DED2: MemLdRfVar from_stack_1.global_104
  loc_D1DED5: CVarRef
  loc_D1DEDA: FLdRfVar var_F0
  loc_D1DEDD: ImpAdCallFPR4  = Format(, )
  loc_D1DEE2: FLdRfVar var_F0
  loc_D1DEE5: CStrVarVal var_9C
  loc_D1DEE9: FLdPr Me
  loc_D1DEEC: VCallAd Control_ID_txtTotaSele
  loc_D1DEEF: FStAdFunc var_88
  loc_D1DEF2: FLdPr var_88
  loc_D1DEF5: Me.Text = from_stack_1
  loc_D1DEFA: FFree1Str var_9C
  loc_D1DEFD: FFree1Ad var_88
  loc_D1DF00: FFreeVar var_98 = ""
  loc_D1DF07: ExitProcHresult
End Sub

Private Sub SeleTodoChk_Click() 'C682BC
  'Data Table: 4E7624
  loc_C672B0: LitI2_Byte 0
  loc_C672B2: CR8I2
  loc_C672B3: FLdPr Me
  loc_C672B6: MemStFPR8 global_104
  loc_C672B9: LitI2_Byte 0
  loc_C672BB: FLdPr Me
  loc_C672BE: VCallAd Control_ID_HabilitarChk
  loc_C672C1: FStAdFunc var_88
  loc_C672C4: FLdPr var_88
  loc_C672C7: Me.Value = from_stack_1
  loc_C672CC: FFree1Ad var_88
  loc_C672CF: LitStr vbNullString
  loc_C672D2: FLdPr Me
  loc_C672D5: VCallAd Control_ID_PagoCuentaTxt
  loc_C672D8: FStAdFunc var_88
  loc_C672DB: FLdPr var_88
  loc_C672DE: Me.Text = from_stack_1
  loc_C672E3: FFree1Ad var_88
  loc_C672E6: LitI4 0
  loc_C672EB: LitI4 1
  loc_C672F0: FLdRfVar var_8C
  loc_C672F3: Redim
  loc_C672FD: FLdPr Me
  loc_C67300: VCallAd Control_ID_HabilitarChk
  loc_C67303: CVarAd
  loc_C67307: ParmAry1St
  loc_C6730D: FLdPr Me
  loc_C67310: VCallAd Control_ID_PagoCuentaTxt
  loc_C67313: CVarAd
  loc_C67317: ParmAry1St
  loc_C6731D: FLdRfVar var_8C
  loc_C67320: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C67325: FLdRfVar var_8C
  loc_C67328: Erase
  loc_C67329: FLdPr Me
  loc_C6732C: VCallAd Control_ID_ctacteFlex
  loc_C6732F: FStAdFunc var_88
  loc_C67332: FLdPr var_88
  loc_C67335: LateIdLdVar var_9C DispID_4 0
  loc_C6733C: CI4Var
  loc_C6733E: LitI4 1
  loc_C67343: GtI4
  loc_C67344: FFree1Ad var_88
  loc_C67347: FFree1Var var_9C = ""
  loc_C6734A: BranchF loc_C6826D
  loc_C6734D: LitI2_Byte 1
  loc_C6734F: FLdPr Me
  loc_C67352: MemLdRfVar from_stack_1.global_100
  loc_C67355: FLdPr Me
  loc_C67358: VCallAd Control_ID_ctacteFlex
  loc_C6735B: FStAdFunc var_88
  loc_C6735E: FLdPr var_88
  loc_C67361: LateIdLdVar var_9C DispID_4 0
  loc_C67368: CI4Var
  loc_C6736A: LitI4 1
  loc_C6736F: SubI4
  loc_C67370: CI2I4
  loc_C67371: FFree1Ad var_88
  loc_C67374: FFree1Var var_9C = ""
  loc_C67377: ForI2 var_B0
  loc_C6737D: FLdPr Me
  loc_C67380: MemLdI2 global_100
  loc_C67383: CI4UI1
  loc_C67384: CVarI4
  loc_C67388: PopAdLdVar
  loc_C67389: LitVarI4
  loc_C67391: PopAdLdVar
  loc_C67392: FLdPr Me
  loc_C67395: VCallAd Control_ID_ctacteFlex
  loc_C67398: FStAdFunc var_88
  loc_C6739B: FLdPr var_88
  loc_C6739E: LateIdCallLdVar
  loc_C673A8: CStrVarTmp
  loc_C673A9: FStStrNoPop var_F4
  loc_C673AC: CI4Str
  loc_C673AD: LitI4 0
  loc_C673B2: EqI4
  loc_C673B3: FFree1Str var_F4
  loc_C673B6: FFree1Ad var_88
  loc_C673B9: FFree1Var var_9C = ""
  loc_C673BC: BranchF loc_C67B7E
  loc_C673BF: FLdPr Me
  loc_C673C2: MemLdI2 global_100
  loc_C673C5: CI4UI1
  loc_C673C6: CVarI4
  loc_C673CA: PopAdLdVar
  loc_C673CB: LitVarI4
  loc_C673D3: PopAdLdVar
  loc_C673D4: FLdPr Me
  loc_C673D7: VCallAd Control_ID_ctacteFlex
  loc_C673DA: FStAdFunc var_88
  loc_C673DD: FLdPr var_88
  loc_C673E0: LateIdCallLdVar
  loc_C673EA: PopAd
  loc_C673EC: FLdPr Me
  loc_C673EF: MemLdI2 global_100
  loc_C673F2: CI4UI1
  loc_C673F3: CVarI4
  loc_C673F7: PopAdLdVar
  loc_C673F8: LitVarI4
  loc_C67400: PopAdLdVar
  loc_C67401: FLdPr Me
  loc_C67404: VCallAd Control_ID_ctacteFlex
  loc_C67407: FStAdFunc var_138
  loc_C6740A: FLdPr var_138
  loc_C6740D: LateIdCallLdVar
  loc_C67417: PopAd
  loc_C67419: FLdPr Me
  loc_C6741C: MemLdI2 global_100
  loc_C6741F: CI4UI1
  loc_C67420: CVarI4
  loc_C67424: PopAdLdVar
  loc_C67425: LitVarI4
  loc_C6742D: PopAdLdVar
  loc_C6742E: FLdPr Me
  loc_C67431: VCallAd Control_ID_ctacteFlex
  loc_C67434: FStAdFunc var_17C
  loc_C67437: FLdPr var_17C
  loc_C6743A: LateIdCallLdVar
  loc_C67444: PopAd
  loc_C67446: LitVarI2 var_1BC, 4
  loc_C6744B: LitI4 4
  loc_C67450: FLdRfVar var_18C
  loc_C67453: CStrVarTmp
  loc_C67454: CVarStr var_19C
  loc_C67457: FLdRfVar var_1CC
  loc_C6745A: ImpAdCallFPR4  = Mid(, , )
  loc_C6745F: FLdPr Me
  loc_C67462: MemLdI2 global_100
  loc_C67465: CI4UI1
  loc_C67466: CVarI4
  loc_C6746A: PopAdLdVar
  loc_C6746B: LitVarI4
  loc_C67473: PopAdLdVar
  loc_C67474: FLdPr Me
  loc_C67477: VCallAd Control_ID_ctacteFlex
  loc_C6747A: FStAdFunc var_210
  loc_C6747D: FLdPr var_210
  loc_C67480: LateIdCallLdVar
  loc_C6748A: PopAd
  loc_C6748C: LitVarI2 var_250, 2
  loc_C67491: LitI4 1
  loc_C67496: FLdRfVar var_220
  loc_C67499: CStrVarTmp
  loc_C6749A: CVarStr var_230
  loc_C6749D: FLdRfVar var_260
  loc_C674A0: ImpAdCallFPR4  = Mid(, , )
  loc_C674A5: FLdPr Me
  loc_C674A8: MemLdI2 global_100
  loc_C674AB: CI4UI1
  loc_C674AC: CVarI4
  loc_C674B0: PopAdLdVar
  loc_C674B1: LitVarI4
  loc_C674B9: PopAdLdVar
  loc_C674BA: FLdPr Me
  loc_C674BD: VCallAd Control_ID_ctacteFlex
  loc_C674C0: FStAdFunc var_2A4
  loc_C674C3: FLdPr var_2A4
  loc_C674C6: LateIdCallLdVar
  loc_C674D0: CStrVarTmp
  loc_C674D1: FStStrNoPop var_2BC
  loc_C674D4: CI4Str
  loc_C674D5: FLdRfVar var_260
  loc_C674D8: CI2Var
  loc_C674D9: FLdRfVar var_1CC
  loc_C674DC: CI2Var
  loc_C674DD: FLdRfVar var_AC
  loc_C674E0: CStrVarTmp
  loc_C674E1: FStStrNoPop var_2B8
  loc_C674E4: FLdRfVar var_9C
  loc_C674E7: CStrVarTmp
  loc_C674E8: FStStrNoPop var_F4
  loc_C674EB: CUI1Str
  loc_C674ED: ImpAdCallI2  = Proc_18_97_AE7AE8(, , , )
  loc_C674F2: FStStrNoPop var_2C0
  loc_C674F5: FLdPr Me
  loc_C674F8: MemStStrCopy
  loc_C674FC: FFreeStr var_F4 = "": var_2B8 = "": var_2BC = ""
  loc_C67507: FFreeAd var_88 = "": var_138 = "": var_17C = "": var_210 = ""
  loc_C67514: FFreeVar var_9C = "": var_AC = "": var_18C = "": var_19C = "": var_1BC = "": var_220 = "": var_230 = "": var_250 = "": var_2B4 = "": var_1CC = ""
  loc_C6752D: FLdPr Me
  loc_C67530: MemLdStr global_256
  loc_C67533: LitStr vbNullString
  loc_C67536: EqStr
  loc_C67538: BranchF loc_C67B7B
  loc_C6753B: FLdPr Me
  loc_C6753E: MemLdI2 global_100
  loc_C67541: CI4UI1
  loc_C67542: CVarI4
  loc_C67546: PopAdLdVar
  loc_C67547: FLdPr Me
  loc_C6754A: VCallAd Control_ID_ctacteFlex
  loc_C6754D: FStAdFunc var_88
  loc_C67550: FLdPr var_88
  loc_C67553: LateIdSt
  loc_C67558: FFree1Ad var_88
  loc_C6755B: LitI2_Byte 0
  loc_C6755D: FLdPr Me
  loc_C67560: MemLdRfVar from_stack_1.global_102
  loc_C67563: FLdPr Me
  loc_C67566: VCallAd Control_ID_ctacteFlex
  loc_C67569: FStAdFunc var_88
  loc_C6756C: FLdPr var_88
  loc_C6756F: LateIdLdVar var_9C DispID_5 0
  loc_C67576: CI4Var
  loc_C67578: LitI4 1
  loc_C6757D: SubI4
  loc_C6757E: CI2I4
  loc_C6757F: FFree1Ad var_88
  loc_C67582: FFree1Var var_9C = ""
  loc_C67585: ForI2 var_2C4
  loc_C6758B: FLdPr Me
  loc_C6758E: MemLdI2 global_102
  loc_C67591: CI4UI1
  loc_C67592: CVarI4
  loc_C67596: PopAdLdVar
  loc_C67597: FLdPr Me
  loc_C6759A: VCallAd Control_ID_ctacteFlex
  loc_C6759D: FStAdFunc var_88
  loc_C675A0: FLdPr var_88
  loc_C675A3: LateIdSt
  loc_C675A8: FFree1Ad var_88
  loc_C675AB: FLdRfVar var_2C6
  loc_C675AE: FLdPr Me
  loc_C675B1: VCallAd Control_ID_SeleTodoChk
  loc_C675B4: FStAdFunc var_88
  loc_C675B7: FLdPr var_88
  loc_C675BA:  = Me.Value
  loc_C675BF: FLdI2 var_2C6
  loc_C675C2: LitI2_Byte 0
  loc_C675C4: EqI2
  loc_C675C5: FFree1Ad var_88
  loc_C675C8: BranchF loc_C67871
  loc_C675CB: LitVarI4
  loc_C675D3: PopAdLdVar
  loc_C675D4: FLdPr Me
  loc_C675D7: VCallAd Control_ID_ctacteFlex
  loc_C675DA: FStAdFunc var_88
  loc_C675DD: FLdPr var_88
  loc_C675E0: LateIdSt
  loc_C675E5: FFree1Ad var_88
  loc_C675E8: FLdPr Me
  loc_C675EB: VCallAd Control_ID_ctacteFlex
  loc_C675EE: FStAdFunc var_88
  loc_C675F1: FLdPr var_88
  loc_C675F4: LateIdLdVar var_9C DispID_10 0
  loc_C675FB: CI4Var
  loc_C675FD: CVarI4
  loc_C67601: PopAdLdVar
  loc_C67602: LitVarI4
  loc_C6760A: PopAdLdVar
  loc_C6760B: LitVarStr var_104, "No"
  loc_C67610: PopAdLdVar
  loc_C67611: FLdPr Me
  loc_C67614: VCallAd Control_ID_ctacteFlex
  loc_C67617: FStAdFunc var_138
  loc_C6761A: FLdPr var_138
  loc_C6761D: LateIdCallSt
  loc_C67625: FFreeAd var_88 = ""
  loc_C6762C: FFree1Var var_9C = ""
  loc_C6762F: FLdPr Me
  loc_C67632: MemLdI2 global_102
  loc_C67635: LitI2_Byte 0
  loc_C67637: EqI2
  loc_C67638: BranchF loc_C67859
  loc_C6763B: FLdPr Me
  loc_C6763E: VCallAd Control_ID_ctacteFlex
  loc_C67641: FStAdFunc var_88
  loc_C67644: FLdPr var_88
  loc_C67647: LateIdLdVar var_9C DispID_10 0
  loc_C6764E: CI4Var
  loc_C67650: CVarI4
  loc_C67654: PopAdLdVar
  loc_C67655: LitVarI4
  loc_C6765D: PopAdLdVar
  loc_C6765E: FLdPr Me
  loc_C67661: VCallAd Control_ID_ctacteFlex
  loc_C67664: FStAdFunc var_138
  loc_C67667: FLdPr var_138
  loc_C6766A: LateIdCallLdVar
  loc_C67674: PopAd
  loc_C67676: FLdPr Me
  loc_C67679: VCallAd Control_ID_ctacteFlex
  loc_C6767C: FStAdFunc var_17C
  loc_C6767F: FLdPr var_17C
  loc_C67682: LateIdLdVar var_18C DispID_10 0
  loc_C67689: CI4Var
  loc_C6768B: CVarI4
  loc_C6768F: PopAdLdVar
  loc_C67690: LitVarI4
  loc_C67698: PopAdLdVar
  loc_C67699: FLdPr Me
  loc_C6769C: VCallAd Control_ID_ctacteFlex
  loc_C6769F: FStAdFunc var_210
  loc_C676A2: FLdPr var_210
  loc_C676A5: LateIdCallLdVar
  loc_C676AF: PopAd
  loc_C676B1: FLdPr Me
  loc_C676B4: VCallAd Control_ID_ctacteFlex
  loc_C676B7: FStAdFunc var_2A4
  loc_C676BA: FLdPr var_2A4
  loc_C676BD: LateIdLdVar var_1BC DispID_10 0
  loc_C676C4: CI4Var
  loc_C676C6: CVarI4
  loc_C676CA: PopAdLdVar
  loc_C676CB: LitVarI4
  loc_C676D3: PopAdLdVar
  loc_C676D4: FLdPr Me
  loc_C676D7: VCallAd Control_ID_ctacteFlex
  loc_C676DA: FStAdFunc var_2CC
  loc_C676DD: FLdPr var_2CC
  loc_C676E0: LateIdCallLdVar
  loc_C676EA: PopAd
  loc_C676EC: LitVarI2 var_230, 4
  loc_C676F1: LitI4 4
  loc_C676F6: FLdRfVar var_1CC
  loc_C676F9: CStrVarTmp
  loc_C676FA: CVarStr var_220
  loc_C676FD: FLdRfVar var_250
  loc_C67700: ImpAdCallFPR4  = Mid(, , )
  loc_C67705: FLdPr Me
  loc_C67708: VCallAd Control_ID_ctacteFlex
  loc_C6770B: FStAdFunc var_2D0
  loc_C6770E: FLdPr var_2D0
  loc_C67711: LateIdLdVar var_260 DispID_10 0
  loc_C67718: CI4Var
  loc_C6771A: CVarI4
  loc_C6771E: PopAdLdVar
  loc_C6771F: LitVarI4
  loc_C67727: PopAdLdVar
  loc_C67728: FLdPr Me
  loc_C6772B: VCallAd Control_ID_ctacteFlex
  loc_C6772E: FStAdFunc var_2D4
  loc_C67731: FLdPr var_2D4
  loc_C67734: LateIdCallLdVar
  loc_C6773E: PopAd
  loc_C67740: LitVarI2 var_2F4, 2
  loc_C67745: LitI4 1
  loc_C6774A: FLdRfVar var_2B4
  loc_C6774D: CStrVarTmp
  loc_C6774E: CVarStr var_2E4
  loc_C67751: FLdRfVar var_304
  loc_C67754: ImpAdCallFPR4  = Mid(, , )
  loc_C67759: FLdPr Me
  loc_C6775C: VCallAd Control_ID_ctacteFlex
  loc_C6775F: FStAdFunc var_308
  loc_C67762: FLdPr var_308
  loc_C67765: LateIdLdVar var_318 DispID_10 0
  loc_C6776C: CI4Var
  loc_C6776E: CVarI4
  loc_C67772: PopAdLdVar
  loc_C67773: LitVarI4
  loc_C6777B: PopAdLdVar
  loc_C6777C: FLdPr Me
  loc_C6777F: VCallAd Control_ID_ctacteFlex
  loc_C67782: FStAdFunc var_31C
  loc_C67785: FLdPr var_31C
  loc_C67788: LateIdCallLdVar
  loc_C67792: PopAd
  loc_C67794: FLdPr Me
  loc_C67797: VCallAd Control_ID_ctacteFlex
  loc_C6779A: FStAdFunc var_330
  loc_C6779D: FLdPr var_330
  loc_C677A0: LateIdLdVar var_340 DispID_10 0
  loc_C677A7: CI4Var
  loc_C677A9: CVarI4
  loc_C677AD: PopAdLdVar
  loc_C677AE: LitVarI4
  loc_C677B6: PopAdLdVar
  loc_C677B7: FLdPr Me
  loc_C677BA: VCallAd Control_ID_ctacteFlex
  loc_C677BD: FStAdFunc var_384
  loc_C677C0: FLdPr var_384
  loc_C677C3: LateIdCallLdVar
  loc_C677CD: PopAd
  loc_C677CF: LitStr "tmp_ctacteboleto"
  loc_C677D2: LitStr "No"
  loc_C677D5: FLdRfVar var_394
  loc_C677D8: CStrVarTmp
  loc_C677D9: FStStrNoPop var_2C0
  loc_C677DC: CI2Str
  loc_C677DE: FLdRfVar var_32C
  loc_C677E1: CStrVarTmp
  loc_C677E2: FStStrNoPop var_2BC
  loc_C677E5: CI4Str
  loc_C677E6: FLdRfVar var_304
  loc_C677E9: CI2Var
  loc_C677EA: FLdRfVar var_250
  loc_C677ED: CI2Var
  loc_C677EE: FLdRfVar var_19C
  loc_C677F1: CStrVarTmp
  loc_C677F2: FStStrNoPop var_2B8
  loc_C677F5: FLdRfVar var_AC
  loc_C677F8: CStrVarTmp
  loc_C677F9: FStStrNoPop var_F4
  loc_C677FC: CUI1Str
  loc_C677FE: FLdPr Me
  loc_C67801: MemLdRfVar from_stack_1.global_64
  loc_C67804: NewIfNullPr clsctacte
  loc_C67807: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_C6780C: FFreeStr var_F4 = "": var_2B8 = "": var_2BC = ""
  loc_C67817: FFreeAd var_88 = "": var_138 = "": var_17C = "": var_210 = "": var_2A4 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_308 = "": var_31C = "": var_330 = ""
  loc_C67832: FFreeVar var_9C = "": var_AC = "": var_18C = "": var_19C = "": var_1BC = "": var_1CC = "": var_220 = "": var_230 = "": var_260 = "": var_2B4 = "": var_2E4 = "": var_2F4 = "": var_318 = "": var_32C = "": var_340 = "": var_394 = "": var_250 = ""
  loc_C67859: FLdPr Me
  loc_C6785C: MemLdI2 global_102
  loc_C6785F: LitI2_Byte &HE
  loc_C67861: EqI2
  loc_C67862: BranchF loc_C6786E
  loc_C67865: LitI2_Byte 0
  loc_C67867: CR8I2
  loc_C67868: FLdPr Me
  loc_C6786B: MemStFPR8 global_104
  loc_C6786E: Branch loc_C67B70
  loc_C67871: LitVarI4
  loc_C67879: PopAdLdVar
  loc_C6787A: FLdPr Me
  loc_C6787D: VCallAd Control_ID_ctacteFlex
  loc_C67880: FStAdFunc var_88
  loc_C67883: FLdPr var_88
  loc_C67886: LateIdSt
  loc_C6788B: FFree1Ad var_88
  loc_C6788E: FLdPr Me
  loc_C67891: VCallAd Control_ID_ctacteFlex
  loc_C67894: FStAdFunc var_88
  loc_C67897: FLdPr var_88
  loc_C6789A: LateIdLdVar var_9C DispID_10 0
  loc_C678A1: CI4Var
  loc_C678A3: CVarI4
  loc_C678A7: PopAdLdVar
  loc_C678A8: LitVarI4
  loc_C678B0: PopAdLdVar
  loc_C678B1: LitVarStr var_104, "Si"
  loc_C678B6: PopAdLdVar
  loc_C678B7: FLdPr Me
  loc_C678BA: VCallAd Control_ID_ctacteFlex
  loc_C678BD: FStAdFunc var_138
  loc_C678C0: FLdPr var_138
  loc_C678C3: LateIdCallSt
  loc_C678CB: FFreeAd var_88 = ""
  loc_C678D2: FFree1Var var_9C = ""
  loc_C678D5: FLdPr Me
  loc_C678D8: MemLdI2 global_102
  loc_C678DB: LitI2_Byte 0
  loc_C678DD: EqI2
  loc_C678DE: BranchF loc_C67AFF
  loc_C678E1: FLdPr Me
  loc_C678E4: VCallAd Control_ID_ctacteFlex
  loc_C678E7: FStAdFunc var_88
  loc_C678EA: FLdPr var_88
  loc_C678ED: LateIdLdVar var_9C DispID_10 0
  loc_C678F4: CI4Var
  loc_C678F6: CVarI4
  loc_C678FA: PopAdLdVar
  loc_C678FB: LitVarI4
  loc_C67903: PopAdLdVar
  loc_C67904: FLdPr Me
  loc_C67907: VCallAd Control_ID_ctacteFlex
  loc_C6790A: FStAdFunc var_138
  loc_C6790D: FLdPr var_138
  loc_C67910: LateIdCallLdVar
  loc_C6791A: PopAd
  loc_C6791C: FLdPr Me
  loc_C6791F: VCallAd Control_ID_ctacteFlex
  loc_C67922: FStAdFunc var_17C
  loc_C67925: FLdPr var_17C
  loc_C67928: LateIdLdVar var_18C DispID_10 0
  loc_C6792F: CI4Var
  loc_C67931: CVarI4
  loc_C67935: PopAdLdVar
  loc_C67936: LitVarI4
  loc_C6793E: PopAdLdVar
  loc_C6793F: FLdPr Me
  loc_C67942: VCallAd Control_ID_ctacteFlex
  loc_C67945: FStAdFunc var_210
  loc_C67948: FLdPr var_210
  loc_C6794B: LateIdCallLdVar
  loc_C67955: PopAd
  loc_C67957: FLdPr Me
  loc_C6795A: VCallAd Control_ID_ctacteFlex
  loc_C6795D: FStAdFunc var_2A4
  loc_C67960: FLdPr var_2A4
  loc_C67963: LateIdLdVar var_1BC DispID_10 0
  loc_C6796A: CI4Var
  loc_C6796C: CVarI4
  loc_C67970: PopAdLdVar
  loc_C67971: LitVarI4
  loc_C67979: PopAdLdVar
  loc_C6797A: FLdPr Me
  loc_C6797D: VCallAd Control_ID_ctacteFlex
  loc_C67980: FStAdFunc var_2CC
  loc_C67983: FLdPr var_2CC
  loc_C67986: LateIdCallLdVar
  loc_C67990: PopAd
  loc_C67992: LitVarI2 var_230, 4
  loc_C67997: LitI4 4
  loc_C6799C: FLdRfVar var_1CC
  loc_C6799F: CStrVarTmp
  loc_C679A0: CVarStr var_220
  loc_C679A3: FLdRfVar var_250
  loc_C679A6: ImpAdCallFPR4  = Mid(, , )
  loc_C679AB: FLdPr Me
  loc_C679AE: VCallAd Control_ID_ctacteFlex
  loc_C679B1: FStAdFunc var_2D0
  loc_C679B4: FLdPr var_2D0
  loc_C679B7: LateIdLdVar var_260 DispID_10 0
  loc_C679BE: CI4Var
  loc_C679C0: CVarI4
  loc_C679C4: PopAdLdVar
  loc_C679C5: LitVarI4
  loc_C679CD: PopAdLdVar
  loc_C679CE: FLdPr Me
  loc_C679D1: VCallAd Control_ID_ctacteFlex
  loc_C679D4: FStAdFunc var_2D4
  loc_C679D7: FLdPr var_2D4
  loc_C679DA: LateIdCallLdVar
  loc_C679E4: PopAd
  loc_C679E6: LitVarI2 var_2F4, 2
  loc_C679EB: LitI4 1
  loc_C679F0: FLdRfVar var_2B4
  loc_C679F3: CStrVarTmp
  loc_C679F4: CVarStr var_2E4
  loc_C679F7: FLdRfVar var_304
  loc_C679FA: ImpAdCallFPR4  = Mid(, , )
  loc_C679FF: FLdPr Me
  loc_C67A02: VCallAd Control_ID_ctacteFlex
  loc_C67A05: FStAdFunc var_308
  loc_C67A08: FLdPr var_308
  loc_C67A0B: LateIdLdVar var_318 DispID_10 0
  loc_C67A12: CI4Var
  loc_C67A14: CVarI4
  loc_C67A18: PopAdLdVar
  loc_C67A19: LitVarI4
  loc_C67A21: PopAdLdVar
  loc_C67A22: FLdPr Me
  loc_C67A25: VCallAd Control_ID_ctacteFlex
  loc_C67A28: FStAdFunc var_31C
  loc_C67A2B: FLdPr var_31C
  loc_C67A2E: LateIdCallLdVar
  loc_C67A38: PopAd
  loc_C67A3A: FLdPr Me
  loc_C67A3D: VCallAd Control_ID_ctacteFlex
  loc_C67A40: FStAdFunc var_330
  loc_C67A43: FLdPr var_330
  loc_C67A46: LateIdLdVar var_340 DispID_10 0
  loc_C67A4D: CI4Var
  loc_C67A4F: CVarI4
  loc_C67A53: PopAdLdVar
  loc_C67A54: LitVarI4
  loc_C67A5C: PopAdLdVar
  loc_C67A5D: FLdPr Me
  loc_C67A60: VCallAd Control_ID_ctacteFlex
  loc_C67A63: FStAdFunc var_384
  loc_C67A66: FLdPr var_384
  loc_C67A69: LateIdCallLdVar
  loc_C67A73: PopAd
  loc_C67A75: LitStr "tmp_ctacteboleto"
  loc_C67A78: LitStr "Si"
  loc_C67A7B: FLdRfVar var_394
  loc_C67A7E: CStrVarTmp
  loc_C67A7F: FStStrNoPop var_2C0
  loc_C67A82: CI2Str
  loc_C67A84: FLdRfVar var_32C
  loc_C67A87: CStrVarTmp
  loc_C67A88: FStStrNoPop var_2BC
  loc_C67A8B: CI4Str
  loc_C67A8C: FLdRfVar var_304
  loc_C67A8F: CI2Var
  loc_C67A90: FLdRfVar var_250
  loc_C67A93: CI2Var
  loc_C67A94: FLdRfVar var_19C
  loc_C67A97: CStrVarTmp
  loc_C67A98: FStStrNoPop var_2B8
  loc_C67A9B: FLdRfVar var_AC
  loc_C67A9E: CStrVarTmp
  loc_C67A9F: FStStrNoPop var_F4
  loc_C67AA2: CUI1Str
  loc_C67AA4: FLdPr Me
  loc_C67AA7: MemLdRfVar from_stack_1.global_64
  loc_C67AAA: NewIfNullPr clsctacte
  loc_C67AAD: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_C67AB2: FFreeStr var_F4 = "": var_2B8 = "": var_2BC = ""
  loc_C67ABD: FFreeAd var_88 = "": var_138 = "": var_17C = "": var_210 = "": var_2A4 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_308 = "": var_31C = "": var_330 = ""
  loc_C67AD8: FFreeVar var_9C = "": var_AC = "": var_18C = "": var_19C = "": var_1BC = "": var_1CC = "": var_220 = "": var_230 = "": var_260 = "": var_2B4 = "": var_2E4 = "": var_2F4 = "": var_318 = "": var_32C = "": var_340 = "": var_394 = "": var_250 = ""
  loc_C67AFF: FLdPr Me
  loc_C67B02: MemLdI2 global_102
  loc_C67B05: LitI2_Byte &HE
  loc_C67B07: EqI2
  loc_C67B08: BranchF loc_C67B70
  loc_C67B0B: FLdPr Me
  loc_C67B0E: VCallAd Control_ID_ctacteFlex
  loc_C67B11: FStAdFunc var_88
  loc_C67B14: FLdPr var_88
  loc_C67B17: LateIdLdVar var_9C DispID_10 0
  loc_C67B1E: CI4Var
  loc_C67B20: CVarI4
  loc_C67B24: PopAdLdVar
  loc_C67B25: FLdPr Me
  loc_C67B28: MemLdI2 global_102
  loc_C67B2B: CI4UI1
  loc_C67B2C: CVarI4
  loc_C67B30: PopAdLdVar
  loc_C67B31: FLdPr Me
  loc_C67B34: VCallAd Control_ID_ctacteFlex
  loc_C67B37: FStAdFunc var_138
  loc_C67B3A: FLdPr var_138
  loc_C67B3D: LateIdCallLdVar
  loc_C67B47: PopAd
  loc_C67B49: FLdPr Me
  loc_C67B4C: MemLdFPR8 global_104
  loc_C67B4F: FLdRfVar var_AC
  loc_C67B52: CStrVarTmp
  loc_C67B53: FStStrNoPop var_F4
  loc_C67B56: CR8Str
  loc_C67B58: AddR8
  loc_C67B59: FLdPr Me
  loc_C67B5C: MemStFPR8 global_104
  loc_C67B5F: FFree1Str var_F4
  loc_C67B62: FFreeAd var_88 = ""
  loc_C67B69: FFreeVar var_9C = ""
  loc_C67B70: FLdPr Me
  loc_C67B73: MemLdRfVar from_stack_1.global_102
  loc_C67B76: NextI2 var_2C4, loc_C6758B
  loc_C67B7B: Branch loc_C6818E
  loc_C67B7E: FLdPr Me
  loc_C67B81: MemLdStr global_256
  loc_C67B84: LitStr vbNullString
  loc_C67B87: EqStr
  loc_C67B89: BranchF loc_C6818E
  loc_C67B8C: FLdPr Me
  loc_C67B8F: MemLdI2 global_100
  loc_C67B92: CI4UI1
  loc_C67B93: CVarI4
  loc_C67B97: PopAdLdVar
  loc_C67B98: FLdPr Me
  loc_C67B9B: VCallAd Control_ID_ctacteFlex
  loc_C67B9E: FStAdFunc var_88
  loc_C67BA1: FLdPr var_88
  loc_C67BA4: LateIdSt
  loc_C67BA9: FFree1Ad var_88
  loc_C67BAC: LitI2_Byte 0
  loc_C67BAE: FLdPr Me
  loc_C67BB1: MemLdRfVar from_stack_1.global_102
  loc_C67BB4: FLdPr Me
  loc_C67BB7: VCallAd Control_ID_ctacteFlex
  loc_C67BBA: FStAdFunc var_88
  loc_C67BBD: FLdPr var_88
  loc_C67BC0: LateIdLdVar var_9C DispID_5 0
  loc_C67BC7: CI4Var
  loc_C67BC9: LitI4 1
  loc_C67BCE: SubI4
  loc_C67BCF: CI2I4
  loc_C67BD0: FFree1Ad var_88
  loc_C67BD3: FFree1Var var_9C = ""
  loc_C67BD6: ForI2 var_398
  loc_C67BDC: FLdPr Me
  loc_C67BDF: MemLdI2 global_102
  loc_C67BE2: CI4UI1
  loc_C67BE3: CVarI4
  loc_C67BE7: PopAdLdVar
  loc_C67BE8: FLdPr Me
  loc_C67BEB: VCallAd Control_ID_ctacteFlex
  loc_C67BEE: FStAdFunc var_88
  loc_C67BF1: FLdPr var_88
  loc_C67BF4: LateIdSt
  loc_C67BF9: FFree1Ad var_88
  loc_C67BFC: FLdRfVar var_2C6
  loc_C67BFF: FLdPr Me
  loc_C67C02: VCallAd Control_ID_SeleTodoChk
  loc_C67C05: FStAdFunc var_88
  loc_C67C08: FLdPr var_88
  loc_C67C0B:  = Me.Value
  loc_C67C10: FLdI2 var_2C6
  loc_C67C13: LitI2_Byte 0
  loc_C67C15: EqI2
  loc_C67C16: FFree1Ad var_88
  loc_C67C19: BranchF loc_C67EA3
  loc_C67C1C: LitVarI4
  loc_C67C24: PopAdLdVar
  loc_C67C25: FLdPr Me
  loc_C67C28: VCallAd Control_ID_ctacteFlex
  loc_C67C2B: FStAdFunc var_88
  loc_C67C2E: FLdPr var_88
  loc_C67C31: LateIdSt
  loc_C67C36: FFree1Ad var_88
  loc_C67C39: FLdPr Me
  loc_C67C3C: VCallAd Control_ID_ctacteFlex
  loc_C67C3F: FStAdFunc var_88
  loc_C67C42: FLdPr var_88
  loc_C67C45: LateIdLdVar var_9C DispID_10 0
  loc_C67C4C: CI4Var
  loc_C67C4E: CVarI4
  loc_C67C52: PopAdLdVar
  loc_C67C53: LitVarI4
  loc_C67C5B: PopAdLdVar
  loc_C67C5C: LitVarStr var_104, "No"
  loc_C67C61: PopAdLdVar
  loc_C67C62: FLdPr Me
  loc_C67C65: VCallAd Control_ID_ctacteFlex
  loc_C67C68: FStAdFunc var_138
  loc_C67C6B: FLdPr var_138
  loc_C67C6E: LateIdCallSt
  loc_C67C76: FFreeAd var_88 = ""
  loc_C67C7D: FFree1Var var_9C = ""
  loc_C67C80: FLdPr Me
  loc_C67C83: MemLdI2 global_102
  loc_C67C86: LitI2_Byte 0
  loc_C67C88: EqI2
  loc_C67C89: BranchF loc_C67E8B
  loc_C67C8C: FLdPr Me
  loc_C67C8F: VCallAd Control_ID_ctacteFlex
  loc_C67C92: FStAdFunc var_88
  loc_C67C95: FLdPr var_88
  loc_C67C98: LateIdLdVar var_9C DispID_10 0
  loc_C67C9F: CI4Var
  loc_C67CA1: CVarI4
  loc_C67CA5: PopAdLdVar
  loc_C67CA6: LitVarI4
  loc_C67CAE: PopAdLdVar
  loc_C67CAF: FLdPr Me
  loc_C67CB2: VCallAd Control_ID_ctacteFlex
  loc_C67CB5: FStAdFunc var_138
  loc_C67CB8: FLdPr var_138
  loc_C67CBB: LateIdCallLdVar
  loc_C67CC5: PopAd
  loc_C67CC7: FLdPr Me
  loc_C67CCA: VCallAd Control_ID_ctacteFlex
  loc_C67CCD: FStAdFunc var_17C
  loc_C67CD0: FLdPr var_17C
  loc_C67CD3: LateIdLdVar var_18C DispID_10 0
  loc_C67CDA: CI4Var
  loc_C67CDC: CVarI4
  loc_C67CE0: PopAdLdVar
  loc_C67CE1: LitVarI4
  loc_C67CE9: PopAdLdVar
  loc_C67CEA: FLdPr Me
  loc_C67CED: VCallAd Control_ID_ctacteFlex
  loc_C67CF0: FStAdFunc var_210
  loc_C67CF3: FLdPr var_210
  loc_C67CF6: LateIdCallLdVar
  loc_C67D00: PopAd
  loc_C67D02: FLdPr Me
  loc_C67D05: VCallAd Control_ID_ctacteFlex
  loc_C67D08: FStAdFunc var_2A4
  loc_C67D0B: FLdPr var_2A4
  loc_C67D0E: LateIdLdVar var_1BC DispID_10 0
  loc_C67D15: CI4Var
  loc_C67D17: CVarI4
  loc_C67D1B: PopAdLdVar
  loc_C67D1C: LitVarI4
  loc_C67D24: PopAdLdVar
  loc_C67D25: FLdPr Me
  loc_C67D28: VCallAd Control_ID_ctacteFlex
  loc_C67D2B: FStAdFunc var_2CC
  loc_C67D2E: FLdPr var_2CC
  loc_C67D31: LateIdCallLdVar
  loc_C67D3B: PopAd
  loc_C67D3D: LitI4 4
  loc_C67D42: FLdRfVar var_1CC
  loc_C67D45: CStrVarTmp
  loc_C67D46: CVarStr var_220
  loc_C67D49: FLdRfVar var_230
  loc_C67D4C: ImpAdCallFPR4  = Right(, )
  loc_C67D51: FLdPr Me
  loc_C67D54: VCallAd Control_ID_ctacteFlex
  loc_C67D57: FStAdFunc var_2D0
  loc_C67D5A: FLdPr var_2D0
  loc_C67D5D: LateIdLdVar var_250 DispID_10 0
  loc_C67D64: CI4Var
  loc_C67D66: CVarI4
  loc_C67D6A: PopAdLdVar
  loc_C67D6B: LitVarI4
  loc_C67D73: PopAdLdVar
  loc_C67D74: FLdPr Me
  loc_C67D77: VCallAd Control_ID_ctacteFlex
  loc_C67D7A: FStAdFunc var_2D4
  loc_C67D7D: FLdPr var_2D4
  loc_C67D80: LateIdCallLdVar
  loc_C67D8A: PopAd
  loc_C67D8C: FLdPr Me
  loc_C67D8F: VCallAd Control_ID_ctacteFlex
  loc_C67D92: FStAdFunc var_308
  loc_C67D95: FLdPr var_308
  loc_C67D98: LateIdLdVar var_2B4 DispID_10 0
  loc_C67D9F: CI4Var
  loc_C67DA1: CVarI4
  loc_C67DA5: PopAdLdVar
  loc_C67DA6: LitVarI4
  loc_C67DAE: PopAdLdVar
  loc_C67DAF: FLdPr Me
  loc_C67DB2: VCallAd Control_ID_ctacteFlex
  loc_C67DB5: FStAdFunc var_31C
  loc_C67DB8: FLdPr var_31C
  loc_C67DBB: LateIdCallLdVar
  loc_C67DC5: PopAd
  loc_C67DC7: FLdPr Me
  loc_C67DCA: VCallAd Control_ID_ctacteFlex
  loc_C67DCD: FStAdFunc var_330
  loc_C67DD0: FLdPr var_330
  loc_C67DD3: LateIdLdVar var_2F4 DispID_10 0
  loc_C67DDA: CI4Var
  loc_C67DDC: CVarI4
  loc_C67DE0: PopAdLdVar
  loc_C67DE1: LitVarI4
  loc_C67DE9: PopAdLdVar
  loc_C67DEA: FLdPr Me
  loc_C67DED: VCallAd Control_ID_ctacteFlex
  loc_C67DF0: FStAdFunc var_384
  loc_C67DF3: FLdPr var_384
  loc_C67DF6: LateIdCallLdVar
  loc_C67E00: PopAd
  loc_C67E02: LitStr "tmp_ctacteboleto"
  loc_C67E05: LitStr "Si"
  loc_C67E08: FLdRfVar var_304
  loc_C67E0B: CStrVarTmp
  loc_C67E0C: FStStrNoPop var_39C
  loc_C67E0F: CI2Str
  loc_C67E11: FLdRfVar var_2E4
  loc_C67E14: CStrVarTmp
  loc_C67E15: FStStrNoPop var_2C0
  loc_C67E18: CI4Str
  loc_C67E19: FLdRfVar var_260
  loc_C67E1C: CStrVarTmp
  loc_C67E1D: FStStrNoPop var_2BC
  loc_C67E20: CI2Str
  loc_C67E22: FLdRfVar var_230
  loc_C67E25: CI2Var
  loc_C67E26: FLdRfVar var_19C
  loc_C67E29: CStrVarTmp
  loc_C67E2A: FStStrNoPop var_2B8
  loc_C67E2D: FLdRfVar var_AC
  loc_C67E30: CStrVarTmp
  loc_C67E31: FStStrNoPop var_F4
  loc_C67E34: CUI1Str
  loc_C67E36: FLdPr Me
  loc_C67E39: MemLdRfVar from_stack_1.global_64
  loc_C67E3C: NewIfNullPr clsctacte
  loc_C67E3F: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_C67E44: FFreeStr var_F4 = "": var_2B8 = "": var_2BC = "": var_2C0 = ""
  loc_C67E51: FFreeAd var_88 = "": var_138 = "": var_17C = "": var_210 = "": var_2A4 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_308 = "": var_31C = "": var_330 = ""
  loc_C67E6C: FFreeVar var_9C = "": var_AC = "": var_18C = "": var_19C = "": var_1BC = "": var_1CC = "": var_220 = "": var_250 = "": var_260 = "": var_2B4 = "": var_2E4 = "": var_2F4 = "": var_304 = ""
  loc_C67E8B: FLdPr Me
  loc_C67E8E: MemLdI2 global_102
  loc_C67E91: LitI2_Byte &HE
  loc_C67E93: EqI2
  loc_C67E94: BranchF loc_C67EA0
  loc_C67E97: LitI2_Byte 0
  loc_C67E99: CR8I2
  loc_C67E9A: FLdPr Me
  loc_C67E9D: MemStFPR8 global_104
  loc_C67EA0: Branch loc_C68183
  loc_C67EA3: LitVarI4
  loc_C67EAB: PopAdLdVar
  loc_C67EAC: FLdPr Me
  loc_C67EAF: VCallAd Control_ID_ctacteFlex
  loc_C67EB2: FStAdFunc var_88
  loc_C67EB5: FLdPr var_88
  loc_C67EB8: LateIdSt
  loc_C67EBD: FFree1Ad var_88
  loc_C67EC0: FLdPr Me
  loc_C67EC3: VCallAd Control_ID_ctacteFlex
  loc_C67EC6: FStAdFunc var_88
  loc_C67EC9: FLdPr var_88
  loc_C67ECC: LateIdLdVar var_9C DispID_10 0
  loc_C67ED3: CI4Var
  loc_C67ED5: CVarI4
  loc_C67ED9: PopAdLdVar
  loc_C67EDA: LitVarI4
  loc_C67EE2: PopAdLdVar
  loc_C67EE3: LitVarStr var_104, "Si"
  loc_C67EE8: PopAdLdVar
  loc_C67EE9: FLdPr Me
  loc_C67EEC: VCallAd Control_ID_ctacteFlex
  loc_C67EEF: FStAdFunc var_138
  loc_C67EF2: FLdPr var_138
  loc_C67EF5: LateIdCallSt
  loc_C67EFD: FFreeAd var_88 = ""
  loc_C67F04: FFree1Var var_9C = ""
  loc_C67F07: FLdPr Me
  loc_C67F0A: MemLdI2 global_102
  loc_C67F0D: LitI2_Byte 0
  loc_C67F0F: EqI2
  loc_C67F10: BranchF loc_C68112
  loc_C67F13: FLdPr Me
  loc_C67F16: VCallAd Control_ID_ctacteFlex
  loc_C67F19: FStAdFunc var_88
  loc_C67F1C: FLdPr var_88
  loc_C67F1F: LateIdLdVar var_9C DispID_10 0
  loc_C67F26: CI4Var
  loc_C67F28: CVarI4
  loc_C67F2C: PopAdLdVar
  loc_C67F2D: LitVarI4
  loc_C67F35: PopAdLdVar
  loc_C67F36: FLdPr Me
  loc_C67F39: VCallAd Control_ID_ctacteFlex
  loc_C67F3C: FStAdFunc var_138
  loc_C67F3F: FLdPr var_138
  loc_C67F42: LateIdCallLdVar
  loc_C67F4C: PopAd
  loc_C67F4E: FLdPr Me
  loc_C67F51: VCallAd Control_ID_ctacteFlex
  loc_C67F54: FStAdFunc var_17C
  loc_C67F57: FLdPr var_17C
  loc_C67F5A: LateIdLdVar var_18C DispID_10 0
  loc_C67F61: CI4Var
  loc_C67F63: CVarI4
  loc_C67F67: PopAdLdVar
  loc_C67F68: LitVarI4
  loc_C67F70: PopAdLdVar
  loc_C67F71: FLdPr Me
  loc_C67F74: VCallAd Control_ID_ctacteFlex
  loc_C67F77: FStAdFunc var_210
  loc_C67F7A: FLdPr var_210
  loc_C67F7D: LateIdCallLdVar
  loc_C67F87: PopAd
  loc_C67F89: FLdPr Me
  loc_C67F8C: VCallAd Control_ID_ctacteFlex
  loc_C67F8F: FStAdFunc var_2A4
  loc_C67F92: FLdPr var_2A4
  loc_C67F95: LateIdLdVar var_1BC DispID_10 0
  loc_C67F9C: CI4Var
  loc_C67F9E: CVarI4
  loc_C67FA2: PopAdLdVar
  loc_C67FA3: LitVarI4
  loc_C67FAB: PopAdLdVar
  loc_C67FAC: FLdPr Me
  loc_C67FAF: VCallAd Control_ID_ctacteFlex
  loc_C67FB2: FStAdFunc var_2CC
  loc_C67FB5: FLdPr var_2CC
  loc_C67FB8: LateIdCallLdVar
  loc_C67FC2: PopAd
  loc_C67FC4: LitI4 4
  loc_C67FC9: FLdRfVar var_1CC
  loc_C67FCC: CStrVarTmp
  loc_C67FCD: CVarStr var_220
  loc_C67FD0: FLdRfVar var_230
  loc_C67FD3: ImpAdCallFPR4  = Right(, )
  loc_C67FD8: FLdPr Me
  loc_C67FDB: VCallAd Control_ID_ctacteFlex
  loc_C67FDE: FStAdFunc var_2D0
  loc_C67FE1: FLdPr var_2D0
  loc_C67FE4: LateIdLdVar var_250 DispID_10 0
  loc_C67FEB: CI4Var
  loc_C67FED: CVarI4
  loc_C67FF1: PopAdLdVar
  loc_C67FF2: LitVarI4
  loc_C67FFA: PopAdLdVar
  loc_C67FFB: FLdPr Me
  loc_C67FFE: VCallAd Control_ID_ctacteFlex
  loc_C68001: FStAdFunc var_2D4
  loc_C68004: FLdPr var_2D4
  loc_C68007: LateIdCallLdVar
  loc_C68011: PopAd
  loc_C68013: FLdPr Me
  loc_C68016: VCallAd Control_ID_ctacteFlex
  loc_C68019: FStAdFunc var_308
  loc_C6801C: FLdPr var_308
  loc_C6801F: LateIdLdVar var_2B4 DispID_10 0
  loc_C68026: CI4Var
  loc_C68028: CVarI4
  loc_C6802C: PopAdLdVar
  loc_C6802D: LitVarI4
  loc_C68035: PopAdLdVar
  loc_C68036: FLdPr Me
  loc_C68039: VCallAd Control_ID_ctacteFlex
  loc_C6803C: FStAdFunc var_31C
  loc_C6803F: FLdPr var_31C
  loc_C68042: LateIdCallLdVar
  loc_C6804C: PopAd
  loc_C6804E: FLdPr Me
  loc_C68051: VCallAd Control_ID_ctacteFlex
  loc_C68054: FStAdFunc var_330
  loc_C68057: FLdPr var_330
  loc_C6805A: LateIdLdVar var_2F4 DispID_10 0
  loc_C68061: CI4Var
  loc_C68063: CVarI4
  loc_C68067: PopAdLdVar
  loc_C68068: LitVarI4
  loc_C68070: PopAdLdVar
  loc_C68071: FLdPr Me
  loc_C68074: VCallAd Control_ID_ctacteFlex
  loc_C68077: FStAdFunc var_384
  loc_C6807A: FLdPr var_384
  loc_C6807D: LateIdCallLdVar
  loc_C68087: PopAd
  loc_C68089: LitStr "tmp_ctacteboleto"
  loc_C6808C: LitStr "Si"
  loc_C6808F: FLdRfVar var_304
  loc_C68092: CStrVarTmp
  loc_C68093: FStStrNoPop var_39C
  loc_C68096: CI2Str
  loc_C68098: FLdRfVar var_2E4
  loc_C6809B: CStrVarTmp
  loc_C6809C: FStStrNoPop var_2C0
  loc_C6809F: CI4Str
  loc_C680A0: FLdRfVar var_260
  loc_C680A3: CStrVarTmp
  loc_C680A4: FStStrNoPop var_2BC
  loc_C680A7: CI2Str
  loc_C680A9: FLdRfVar var_230
  loc_C680AC: CI2Var
  loc_C680AD: FLdRfVar var_19C
  loc_C680B0: CStrVarTmp
  loc_C680B1: FStStrNoPop var_2B8
  loc_C680B4: FLdRfVar var_AC
  loc_C680B7: CStrVarTmp
  loc_C680B8: FStStrNoPop var_F4
  loc_C680BB: CUI1Str
  loc_C680BD: FLdPr Me
  loc_C680C0: MemLdRfVar from_stack_1.global_64
  loc_C680C3: NewIfNullPr clsctacte
  loc_C680C6: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_C680CB: FFreeStr var_F4 = "": var_2B8 = "": var_2BC = "": var_2C0 = ""
  loc_C680D8: FFreeAd var_88 = "": var_138 = "": var_17C = "": var_210 = "": var_2A4 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_308 = "": var_31C = "": var_330 = ""
  loc_C680F3: FFreeVar var_9C = "": var_AC = "": var_18C = "": var_19C = "": var_1BC = "": var_1CC = "": var_220 = "": var_250 = "": var_260 = "": var_2B4 = "": var_2E4 = "": var_2F4 = "": var_304 = ""
  loc_C68112: FLdPr Me
  loc_C68115: MemLdI2 global_102
  loc_C68118: LitI2_Byte &HE
  loc_C6811A: EqI2
  loc_C6811B: BranchF loc_C68183
  loc_C6811E: FLdPr Me
  loc_C68121: VCallAd Control_ID_ctacteFlex
  loc_C68124: FStAdFunc var_88
  loc_C68127: FLdPr var_88
  loc_C6812A: LateIdLdVar var_9C DispID_10 0
  loc_C68131: CI4Var
  loc_C68133: CVarI4
  loc_C68137: PopAdLdVar
  loc_C68138: FLdPr Me
  loc_C6813B: MemLdI2 global_102
  loc_C6813E: CI4UI1
  loc_C6813F: CVarI4
  loc_C68143: PopAdLdVar
  loc_C68144: FLdPr Me
  loc_C68147: VCallAd Control_ID_ctacteFlex
  loc_C6814A: FStAdFunc var_138
  loc_C6814D: FLdPr var_138
  loc_C68150: LateIdCallLdVar
  loc_C6815A: PopAd
  loc_C6815C: FLdPr Me
  loc_C6815F: MemLdFPR8 global_104
  loc_C68162: FLdRfVar var_AC
  loc_C68165: CStrVarTmp
  loc_C68166: FStStrNoPop var_F4
  loc_C68169: CR8Str
  loc_C6816B: AddR8
  loc_C6816C: FLdPr Me
  loc_C6816F: MemStFPR8 global_104
  loc_C68172: FFree1Str var_F4
  loc_C68175: FFreeAd var_88 = ""
  loc_C6817C: FFreeVar var_9C = ""
  loc_C68183: FLdPr Me
  loc_C68186: MemLdRfVar from_stack_1.global_102
  loc_C68189: NextI2 var_398, loc_C67BDC
  loc_C6818E: FLdPr Me
  loc_C68191: MemLdRfVar from_stack_1.global_100
  loc_C68194: NextI2 var_B0, loc_C6737D
  loc_C68199: FLdPr Me
  loc_C6819C: MemLdStr global_256
  loc_C6819F: LitStr vbNullString
  loc_C681A2: NeStr
  loc_C681A4: BranchF loc_C681AF
  loc_C681A7: LitStr "Existen items de deuda pagados, NO SE PUEDE SELECCIONAR TODA LA DEUDA"
  loc_C681AA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C681AF: LitStr "SELECT NumeApre, SUM(SaldCtct) as SaldCtct, SUM(RecaCtct) as RecaCtct FROM tmp_ctacteboleto WHERE SaldCtct > 0 AND NumeApre <> 0 AND SeleCtct = 'Si'"
  loc_C681B2: LitStr " GROUP BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.NumeApre"
  loc_C681B5: ConcatStr
  loc_C681B6: FStStrNoPop var_F4
  loc_C681B9: FLdPr Me
  loc_C681BC: MemLdRfVar from_stack_1.global_64
  loc_C681BF: NewIfNullPr clsctacte
  loc_C681C2: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C681C7: FFree1Str var_F4
  loc_C681CA: FLdRfVar var_3A0
  loc_C681CD: FLdPr Me
  loc_C681D0: MemLdRfVar from_stack_1.global_64
  loc_C681D3: NewIfNullPr clsctacte
  loc_C681D6: from_stack_1 = clsctacte.RecordCount
  loc_C681DB: ILdRf var_3A0
  loc_C681DE: LitI4 0
  loc_C681E3: GtI4
  loc_C681E4: BranchF loc_C6826D
  loc_C681E7: FLdRfVar var_2C6
  loc_C681EA: FLdPr Me
  loc_C681ED: MemLdRfVar from_stack_1.global_64
  loc_C681F0: NewIfNullPr clsctacte
  loc_C681F3: from_stack_1 = clsctacte.EOF
  loc_C681F8: FLdI2 var_2C6
  loc_C681FB: NotI4
  loc_C681FC: BranchF loc_C6826D
  loc_C681FF: FLdRfVar var_3A0
  loc_C68202: FLdPr Me
  loc_C68205: MemLdRfVar from_stack_1.global_64
  loc_C68208: NewIfNullPr clsctacte
  loc_C6820B: from_stack_1 = clsctacte.NumeApre
  loc_C68210: FLdRfVar var_3A8
  loc_C68213: FLdPr Me
  loc_C68216: MemLdRfVar from_stack_1.global_64
  loc_C68219: NewIfNullPr clsctacte
  loc_C6821C: from_stack_1 = clsctacte.SaldCtct
  loc_C68221: FLdRfVar var_3B0
  loc_C68224: FLdPr Me
  loc_C68227: MemLdRfVar from_stack_1.global_64
  loc_C6822A: NewIfNullPr clsctacte
  loc_C6822D: from_stack_1 = clsctacte.RecaCtct
  loc_C68232: FLdRfVar var_3B8
  loc_C68235: FLdR8 var_3B0
  loc_C68238: FLdR8 var_3A8
  loc_C6823B: ILdRf var_3A0
  loc_C6823E: FLdPr Me
  loc_C68241: MemLdRfVar from_stack_1.global_76
  loc_C68244: NewIfNullPr clsapremio
  loc_C68247: from_stack_4v = clsapremio.BuscaGastosApremio(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C6824C: FLdPr Me
  loc_C6824F: MemLdFPR8 global_104
  loc_C68252: FLdFPR8 var_3B8
  loc_C68255: AddR8
  loc_C68256: FLdPr Me
  loc_C68259: MemStFPR8 global_104
  loc_C6825C: FLdPr Me
  loc_C6825F: MemLdRfVar from_stack_1.global_64
  loc_C68262: NewIfNullPr clsctacte
  loc_C68265: Call clsctacte.MoveSiguiente()
  loc_C6826A: Branch loc_C681E7
  loc_C6826D: LitI4 1
  loc_C68272: LitI4 1
  loc_C68277: LitVarStr var_D0, "###,###,##0.00"
  loc_C6827C: FStVarCopyObj var_9C
  loc_C6827F: FLdRfVar var_9C
  loc_C68282: FLdPr Me
  loc_C68285: MemLdRfVar from_stack_1.global_104
  loc_C68288: CVarRef
  loc_C6828D: FLdRfVar var_AC
  loc_C68290: ImpAdCallFPR4  = Format(, )
  loc_C68295: FLdRfVar var_AC
  loc_C68298: CStrVarVal var_F4
  loc_C6829C: FLdPr Me
  loc_C6829F: VCallAd Control_ID_txtTotaSele
  loc_C682A2: FStAdFunc var_88
  loc_C682A5: FLdPr var_88
  loc_C682A8: Me.Text = from_stack_1
  loc_C682AD: FFree1Str var_F4
  loc_C682B0: FFree1Ad var_88
  loc_C682B3: FFreeVar var_9C = ""
  loc_C682BA: ExitProcHresult
End Sub

Private Sub BuscarCmd_Click() 'C896B8
  'Data Table: 4E7624
  loc_C880FC: LitI2_Byte 0
  loc_C880FE: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C88103: FStFPR8 var_F0
  loc_C88106: Call Proc_164_23_B1FC70()
  loc_C8810B: LitI2_Byte 0
  loc_C8810D: CR8I2
  loc_C8810E: FLdPr Me
  loc_C88111: MemStFPR8 global_104
  loc_C88114: LitI2_Byte &HFF
  loc_C88116: FLdPr Me
  loc_C88119: VCallAd Control_ID_SeleTodoChk
  loc_C8811C: FStAdFunc var_F8
  loc_C8811F: FLdPr var_F8
  loc_C88122: Me.Enabled = from_stack_1b
  loc_C88127: FFree1Ad var_F8
  loc_C8812A: LitI2_Byte 0
  loc_C8812C: FLdPr Me
  loc_C8812F: VCallAd Control_ID_SeleTodoChk
  loc_C88132: FStAdFunc var_F8
  loc_C88135: FLdPr var_F8
  loc_C88138: Me.Value = from_stack_1
  loc_C8813D: FFree1Ad var_F8
  loc_C88140: LitStr vbNullString
  loc_C88143: FLdPr Me
  loc_C88146: VCallAd Control_ID_PagoCuentaTxt
  loc_C88149: FStAdFunc var_F8
  loc_C8814C: FLdPr var_F8
  loc_C8814F: Me.Text = from_stack_1
  loc_C88154: FFree1Ad var_F8
  loc_C88157: LitI2_Byte 0
  loc_C88159: FLdPr Me
  loc_C8815C: VCallAd Control_ID_PagoCuentaTxt
  loc_C8815F: FStAdFunc var_F8
  loc_C88162: FLdPr var_F8
  loc_C88165: Me.Enabled = from_stack_1b
  loc_C8816A: FFree1Ad var_F8
  loc_C8816D: LitI2_Byte 0
  loc_C8816F: FLdPr Me
  loc_C88172: VCallAd Control_ID_HabilitarChk
  loc_C88175: FStAdFunc var_F8
  loc_C88178: FLdPr var_F8
  loc_C8817B: Me.Value = from_stack_1
  loc_C88180: FFree1Ad var_F8
  loc_C88183: LitI2_Byte 0
  loc_C88185: CR8I2
  loc_C88186: FLdPr Me
  loc_C88189: MemStFPR8 global_232
  loc_C8818C: LitVarStr var_108, vbNullString
  loc_C88191: PopAdLdVar
  loc_C88192: FLdPr Me
  loc_C88195: VCallAd Control_ID_FechVencMsk
  loc_C88198: FStAdFunc var_F8
  loc_C8819B: FLdPr var_F8
  loc_C8819E: LateIdSt
  loc_C881A3: FFree1Ad var_F8
  loc_C881A6: LitI2_Byte 0
  loc_C881A8: CR8I2
  loc_C881A9: FStFPR8 var_C8
  loc_C881AC: LitI2_Byte 0
  loc_C881AE: CR8I2
  loc_C881AF: FStFPR8 var_D0
  loc_C881B2: LitI2_Byte 0
  loc_C881B4: CR8I2
  loc_C881B5: FStFPR8 var_D8
  loc_C881B8: LitI2_Byte 0
  loc_C881BA: CR8I2
  loc_C881BB: FStFPR8 var_E0
  loc_C881BE: LitI2_Byte 0
  loc_C881C0: CR8I2
  loc_C881C1: FStFPR8 var_E8
  loc_C881C4: LitI4 1
  loc_C881C9: LitI4 1
  loc_C881CE: LitVarStr var_118, "0.00"
  loc_C881D3: FStVarCopyObj var_128
  loc_C881D6: FLdRfVar var_128
  loc_C881D9: FLdRfVar var_C8
  loc_C881DC: CVarRef
  loc_C881E1: FLdRfVar var_138
  loc_C881E4: ImpAdCallFPR4  = Format(, )
  loc_C881E9: FLdRfVar var_138
  loc_C881EC: CStrVarVal var_13C
  loc_C881F0: FLdPr Me
  loc_C881F3: VCallAd Control_ID_txtTotaDere
  loc_C881F6: FStAdFunc var_F8
  loc_C881F9: FLdPr var_F8
  loc_C881FC: Me.Text = from_stack_1
  loc_C88201: FFree1Str var_13C
  loc_C88204: FFree1Ad var_F8
  loc_C88207: FFreeVar var_128 = ""
  loc_C8820E: LitI4 1
  loc_C88213: LitI4 1
  loc_C88218: LitVarStr var_118, "0.00"
  loc_C8821D: FStVarCopyObj var_128
  loc_C88220: FLdRfVar var_128
  loc_C88223: FLdRfVar var_D0
  loc_C88226: CVarRef
  loc_C8822B: FLdRfVar var_138
  loc_C8822E: ImpAdCallFPR4  = Format(, )
  loc_C88233: FLdRfVar var_138
  loc_C88236: CStrVarVal var_13C
  loc_C8823A: FLdPr Me
  loc_C8823D: VCallAd Control_ID_txtTotaReca
  loc_C88240: FStAdFunc var_F8
  loc_C88243: FLdPr var_F8
  loc_C88246: Me.Text = from_stack_1
  loc_C8824B: FFree1Str var_13C
  loc_C8824E: FFree1Ad var_F8
  loc_C88251: FFreeVar var_128 = ""
  loc_C88258: LitI4 1
  loc_C8825D: LitI4 1
  loc_C88262: LitVarStr var_118, "0.00"
  loc_C88267: FStVarCopyObj var_128
  loc_C8826A: FLdRfVar var_128
  loc_C8826D: FLdRfVar var_D8
  loc_C88270: CVarRef
  loc_C88275: FLdRfVar var_138
  loc_C88278: ImpAdCallFPR4  = Format(, )
  loc_C8827D: FLdRfVar var_138
  loc_C88280: CStrVarVal var_13C
  loc_C88284: FLdPr Me
  loc_C88287: VCallAd Control_ID_txtTotaApre
  loc_C8828A: FStAdFunc var_F8
  loc_C8828D: FLdPr var_F8
  loc_C88290: Me.Text = from_stack_1
  loc_C88295: FFree1Str var_13C
  loc_C88298: FFree1Ad var_F8
  loc_C8829B: FFreeVar var_128 = ""
  loc_C882A2: LitI4 2
  loc_C882A7: FLdRfVar var_C8
  loc_C882AA: CVarRef
  loc_C882AF: FLdRfVar var_128
  loc_C882B2: ImpAdCallFPR4  = Round(, )
  loc_C882B7: FLdRfVar var_128
  loc_C882BA: LitI4 2
  loc_C882BF: FLdRfVar var_D0
  loc_C882C2: CVarRef
  loc_C882C7: FLdRfVar var_138
  loc_C882CA: ImpAdCallFPR4  = Round(, )
  loc_C882CF: FLdRfVar var_138
  loc_C882D2: AddVar var_14C
  loc_C882D6: LitI4 2
  loc_C882DB: FLdRfVar var_D8
  loc_C882DE: CVarRef
  loc_C882E3: FLdRfVar var_16C
  loc_C882E6: ImpAdCallFPR4  = Round(, )
  loc_C882EB: FLdRfVar var_16C
  loc_C882EE: AddVar var_17C
  loc_C882F2: CR4Var
  loc_C882F3: FStFPR8 var_E0
  loc_C882F6: FFreeVar var_128 = "": var_138 = "": var_14C = "": var_16C = ""
  loc_C88303: LitI4 1
  loc_C88308: LitI4 1
  loc_C8830D: LitVarStr var_118, "0.00"
  loc_C88312: FStVarCopyObj var_128
  loc_C88315: FLdRfVar var_128
  loc_C88318: FLdRfVar var_E0
  loc_C8831B: CVarRef
  loc_C88320: FLdRfVar var_138
  loc_C88323: ImpAdCallFPR4  = Format(, )
  loc_C88328: FLdRfVar var_138
  loc_C8832B: CStrVarVal var_13C
  loc_C8832F: FLdPr Me
  loc_C88332: VCallAd Control_ID_txtTotal
  loc_C88335: FStAdFunc var_F8
  loc_C88338: FLdPr var_F8
  loc_C8833B: Me.Text = from_stack_1
  loc_C88340: FFree1Str var_13C
  loc_C88343: FFree1Ad var_F8
  loc_C88346: FFreeVar var_128 = ""
  loc_C8834D: LitI4 1
  loc_C88352: LitI4 1
  loc_C88357: LitVarStr var_118, "0.00"
  loc_C8835C: FStVarCopyObj var_128
  loc_C8835F: FLdRfVar var_128
  loc_C88362: FLdRfVar var_E8
  loc_C88365: CVarRef
  loc_C8836A: FLdRfVar var_138
  loc_C8836D: ImpAdCallFPR4  = Format(, )
  loc_C88372: FLdRfVar var_138
  loc_C88375: CStrVarVal var_13C
  loc_C88379: FLdPr Me
  loc_C8837C: VCallAd Control_ID_txtTotaSele
  loc_C8837F: FStAdFunc var_F8
  loc_C88382: FLdPr var_F8
  loc_C88385: Me.Text = from_stack_1
  loc_C8838A: FFree1Str var_13C
  loc_C8838D: FFree1Ad var_F8
  loc_C88390: FFreeVar var_128 = ""
  loc_C88397: FLdFPR8 var_F0
  loc_C8839A: ImpAdLdFPR8 MemVar_D9308C
  loc_C8839D: GeR8
  loc_C8839E: BranchF loc_C883B2
  loc_C883A1: LitStr "ERRORRRR"
  loc_C883A4: FLdPr Me
  loc_C883A7: MemLdRfVar from_stack_1.global_56
  loc_C883AA: NewIfNullPr clsctacte
  loc_C883AD: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C883B2: FLdRfVar var_13C
  loc_C883B5: FLdPr Me
  loc_C883B8: VCallAd Control_ID_NumeCtaTxt
  loc_C883BB: FStAdFunc var_F8
  loc_C883BE: FLdPr var_F8
  loc_C883C1:  = Me.Text
  loc_C883C6: FLdPr Me
  loc_C883C9: VCallAd Control_ID_FechVencMsk
  loc_C883CC: FStAdFunc var_180
  loc_C883CF: FLdPr var_180
  loc_C883D2: LateIdLdVar var_128 DispID_22 0
  loc_C883D9: PopAd
  loc_C883DB: LitStr "tmp_ctacteboleto"
  loc_C883DE: FLdRfVar var_128
  loc_C883E1: CStrVarTmp
  loc_C883E2: FStStrNoPop var_184
  loc_C883E5: ILdRf var_13C
  loc_C883E8: ImpAdLdUI1
  loc_C883EC: FLdPr Me
  loc_C883EF: MemLdRfVar from_stack_1.global_64
  loc_C883F2: NewIfNullPr clsctacte
  loc_C883F5: Call clsctacte.CreaTemporalCtaCte(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_C883FA: FFreeStr var_13C = ""
  loc_C88401: FFreeAd var_F8 = ""
  loc_C88408: FFree1Var var_128 = ""
  loc_C8840B: LitStr "SELECT NumeApre, SUM(SaldCtct) as SaldCtct, SUM(RecaCtct) as RecaCtct FROM tmp_ctacteboleto WHERE SaldCtct > 0 AND NumeApre <> 0 "
  loc_C8840E: LitStr " GROUP BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.NumeApre"
  loc_C88411: ConcatStr
  loc_C88412: FStStrNoPop var_13C
  loc_C88415: FLdPr Me
  loc_C88418: MemLdRfVar from_stack_1.global_64
  loc_C8841B: NewIfNullPr clsctacte
  loc_C8841E: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C88423: FFree1Str var_13C
  loc_C88426: FLdRfVar var_188
  loc_C88429: FLdPr Me
  loc_C8842C: MemLdRfVar from_stack_1.global_64
  loc_C8842F: NewIfNullPr clsctacte
  loc_C88432: from_stack_1 = clsctacte.RecordCount
  loc_C88437: ILdRf var_188
  loc_C8843A: LitI4 0
  loc_C8843F: GtI4
  loc_C88440: BranchF loc_C8855F
  loc_C88443: FLdRfVar var_18A
  loc_C88446: FLdPr Me
  loc_C88449: MemLdRfVar from_stack_1.global_64
  loc_C8844C: NewIfNullPr clsctacte
  loc_C8844F: from_stack_1 = clsctacte.EOF
  loc_C88454: FLdI2 var_18A
  loc_C88457: NotI4
  loc_C88458: BranchF loc_C8855C
  loc_C8845B: FLdRfVar var_128
  loc_C8845E: FLdRfVar var_190
  loc_C88461: LitVarStr var_108, "NumeApre"
  loc_C88466: PopAdLdVar
  loc_C88467: FLdRfVar var_180
  loc_C8846A: FLdRfVar var_F8
  loc_C8846D: FLdPr Me
  loc_C88470: MemLdRfVar from_stack_1.global_64
  loc_C88473: NewIfNullPr clsctacte
  loc_C88476: from_stack_1v = clsctacte.RsFrmGet()
  loc_C8847B: FLdPr var_F8
  loc_C8847E:  = Me.Fields
  loc_C88483: FLdPr var_180
  loc_C88486: from_stack_2 = Me.Item(from_stack_1)
  loc_C8848B: FLdPr var_190
  loc_C8848E:  = Me.Value
  loc_C88493: FLdRfVar var_138
  loc_C88496: FLdRfVar var_19C
  loc_C88499: LitVarStr var_118, "SaldCtct"
  loc_C8849E: PopAdLdVar
  loc_C8849F: FLdRfVar var_198
  loc_C884A2: FLdRfVar var_194
  loc_C884A5: FLdPr Me
  loc_C884A8: MemLdRfVar from_stack_1.global_64
  loc_C884AB: NewIfNullPr clsctacte
  loc_C884AE: from_stack_1v = clsctacte.RsFrmGet()
  loc_C884B3: FLdPr var_194
  loc_C884B6:  = Me.Fields
  loc_C884BB: FLdPr var_198
  loc_C884BE: from_stack_2 = Me.Item(from_stack_1)
  loc_C884C3: FLdPr var_19C
  loc_C884C6:  = Me.Value
  loc_C884CB: FLdRfVar var_14C
  loc_C884CE: FLdRfVar var_1A8
  loc_C884D1: LitVarStr var_15C, "RecaCtct"
  loc_C884D6: PopAdLdVar
  loc_C884D7: FLdRfVar var_1A4
  loc_C884DA: FLdRfVar var_1A0
  loc_C884DD: FLdPr Me
  loc_C884E0: MemLdRfVar from_stack_1.global_64
  loc_C884E3: NewIfNullPr clsctacte
  loc_C884E6: from_stack_1v = clsctacte.RsFrmGet()
  loc_C884EB: FLdPr var_1A0
  loc_C884EE:  = Me.Fields
  loc_C884F3: FLdPr var_1A4
  loc_C884F6: from_stack_2 = Me.Item(from_stack_1)
  loc_C884FB: FLdPr var_1A8
  loc_C884FE:  = Me.Value
  loc_C88503: FLdRfVar var_1B0
  loc_C88506: FLdRfVar var_14C
  loc_C88509: CR4Var
  loc_C8850A: PopFPR8
  loc_C8850B: FLdRfVar var_138
  loc_C8850E: CR4Var
  loc_C8850F: PopFPR8
  loc_C88510: FLdRfVar var_128
  loc_C88513: CI4Var
  loc_C88515: FLdPr Me
  loc_C88518: MemLdRfVar from_stack_1.global_76
  loc_C8851B: NewIfNullPr clsapremio
  loc_C8851E: from_stack_4v = clsapremio.BuscaGastosApremio(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C88523: FLdFPR8 var_D8
  loc_C88526: FLdFPR8 var_1B0
  loc_C88529: AddR8
  loc_C8852A: FStFPR8 var_D8
  loc_C8852D: FFreeAd var_F8 = "": var_180 = "": var_194 = "": var_198 = "": var_1A0 = "": var_1A4 = "": var_190 = "": var_19C = ""
  loc_C88542: FFreeVar var_128 = "": var_138 = ""
  loc_C8854B: FLdPr Me
  loc_C8854E: MemLdRfVar from_stack_1.global_64
  loc_C88551: NewIfNullPr clsctacte
  loc_C88554: Call clsctacte.MoveSiguiente()
  loc_C88559: Branch loc_C88443
  loc_C8855C: Branch loc_C88565
  loc_C8855F: LitI2_Byte 0
  loc_C88561: CR8I2
  loc_C88562: FStFPR8 var_D8
  loc_C88565: LitStr "SELECT tmp_ctacteboleto.*, AbreTimo, ConcViej FROM tmp_ctacteboleto "
  loc_C88568: LitStr " LEFT JOIN tipomovi ON tmp_ctacteboleto.CodiTimo = tipomovi.CodiTimo"
  loc_C8856B: ConcatStr
  loc_C8856C: FStStrNoPop var_13C
  loc_C8856F: LitStr " INNER JOIN concepto ON concepto.PeriInfo = tmp_ctacteboleto.PeriInfo"
  loc_C88572: ConcatStr
  loc_C88573: FStStrNoPop var_184
  loc_C88576: LitStr " AND concepto.CodiConc = tmp_ctacteboleto.CodiConc"
  loc_C88579: ConcatStr
  loc_C8857A: FStStrNoPop var_1B4
  loc_C8857D: LitStr " WHERE tmp_ctacteboleto.FeveCtct >= '1000-01-01'"
  loc_C88580: ConcatStr
  loc_C88581: FStStrNoPop var_1B8
  loc_C88584: LitStr " ORDER BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.CodiFapa, tmp_ctacteboleto.PeriCtct, tmp_ctacteboleto.BimeCtct, tmp_ctacteboleto.NumeCtct, tmp_ctacteboleto.MoviCtct"
  loc_C88587: ConcatStr
  loc_C88588: FStStrNoPop var_1BC
  loc_C8858B: FLdPr Me
  loc_C8858E: MemLdRfVar from_stack_1.global_64
  loc_C88591: NewIfNullPr clsctacte
  loc_C88594: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C88599: FFreeStr var_13C = "": var_184 = "": var_1B4 = "": var_1B8 = ""
  loc_C885A6: FLdRfVar var_188
  loc_C885A9: FLdPr Me
  loc_C885AC: MemLdRfVar from_stack_1.global_64
  loc_C885AF: NewIfNullPr clsctacte
  loc_C885B2: from_stack_1 = clsctacte.RecordCount
  loc_C885B7: ILdRf var_188
  loc_C885BA: LitI4 0
  loc_C885BF: GtI4
  loc_C885C0: BranchF loc_C89058
  loc_C885C3: FLdPr Me
  loc_C885C6: MemLdRfVar from_stack_1.global_64
  loc_C885C9: NewIfNullPr clsctacte
  loc_C885CC: Call clsctacte.MoveFirst()
  loc_C885D1: FLdRfVar var_18A
  loc_C885D4: FLdPr Me
  loc_C885D7: MemLdRfVar from_stack_1.global_64
  loc_C885DA: NewIfNullPr clsctacte
  loc_C885DD: from_stack_1 = clsctacte.EOF
  loc_C885E2: FLdI2 var_18A
  loc_C885E5: NotI4
  loc_C885E6: BranchF loc_C88ECF
  loc_C885E9: FLdRfVar var_1B0
  loc_C885EC: FLdPr Me
  loc_C885EF: MemLdRfVar from_stack_1.global_64
  loc_C885F2: NewIfNullPr clsctacte
  loc_C885F5: from_stack_1 = clsctacte.SaldCtct
  loc_C885FA: FLdFPR8 var_1B0
  loc_C885FD: FnCDblR8
  loc_C885FF: LitI2_Byte 0
  loc_C88601: CR8I2
  loc_C88602: GtR4
  loc_C88603: BranchF loc_C88EBE
  loc_C88606: FLdRfVar var_1B0
  loc_C88609: FLdPr Me
  loc_C8860C: MemLdRfVar from_stack_1.global_64
  loc_C8860F: NewIfNullPr clsctacte
  loc_C88612: from_stack_1 = clsctacte.SaldCtct
  loc_C88617: LitI4 2
  loc_C8861C: FLdFPR8 var_C8
  loc_C8861F: FnCDblR8
  loc_C88621: FLdFPR8 var_1B0
  loc_C88624: FnCDblR8
  loc_C88626: AddR8
  loc_C88627: CVarR8
  loc_C8862B: FLdRfVar var_138
  loc_C8862E: ImpAdCallFPR4  = Round(, )
  loc_C88633: FLdRfVar var_138
  loc_C88636: CR4Var
  loc_C88637: FStFPR8 var_C8
  loc_C8863A: FFreeVar var_128 = ""
  loc_C88641: FLdRfVar var_1B0
  loc_C88644: FLdPr Me
  loc_C88647: MemLdRfVar from_stack_1.global_64
  loc_C8864A: NewIfNullPr clsctacte
  loc_C8864D: from_stack_1 = clsctacte.RecaCtct
  loc_C88652: LitI4 2
  loc_C88657: FLdFPR8 var_D0
  loc_C8865A: FnCDblR8
  loc_C8865C: FLdFPR8 var_1B0
  loc_C8865F: FnCDblR8
  loc_C88661: AddR8
  loc_C88662: CVarR8
  loc_C88666: FLdRfVar var_138
  loc_C88669: ImpAdCallFPR4  = Round(, )
  loc_C8866E: FLdRfVar var_138
  loc_C88671: CR4Var
  loc_C88672: FStFPR8 var_D0
  loc_C88675: FFreeVar var_128 = ""
  loc_C8867C: FLdRfVar var_188
  loc_C8867F: FLdPr Me
  loc_C88682: MemLdRfVar from_stack_1.global_64
  loc_C88685: NewIfNullPr clsctacte
  loc_C88688: from_stack_1 = clsctacte.CodiFapa
  loc_C8868D: ILdRf var_188
  loc_C88690: LitI4 0
  loc_C88695: GtI4
  loc_C88696: BranchF loc_C886E4
  loc_C88699: FLdRfVar var_18A
  loc_C8869C: FLdPr Me
  loc_C8869F: MemLdRfVar from_stack_1.global_64
  loc_C886A2: NewIfNullPr clsctacte
  loc_C886A5: from_stack_1 = clsctacte.BimeCtct
  loc_C886AA: LitI4 1
  loc_C886AF: LitI4 1
  loc_C886B4: LitVarStr var_118, "00"
  loc_C886B9: FStVarCopyObj var_138
  loc_C886BC: FLdRfVar var_138
  loc_C886BF: FLdI2 var_18A
  loc_C886C2: CVarI2 var_128
  loc_C886C5: FLdRfVar var_14C
  loc_C886C8: ImpAdCallFPR4  = Format(, )
  loc_C886CD: FLdRfVar var_14C
  loc_C886D0: CStrVarTmp
  loc_C886D1: FLdRfVar var_92
  loc_C886D4: StFixedStrFree
  loc_C886D8: FFreeVar var_128 = "": var_138 = ""
  loc_C886E1: Branch loc_C88754
  loc_C886E4: FLdRfVar var_18A
  loc_C886E7: FLdPr Me
  loc_C886EA: MemLdRfVar from_stack_1.global_64
  loc_C886ED: NewIfNullPr clsctacte
  loc_C886F0: from_stack_1 = clsctacte.BimeCtct
  loc_C886F5: LitI4 1
  loc_C886FA: LitI4 1
  loc_C886FF: LitVarStr var_118, "00"
  loc_C88704: FStVarCopyObj var_138
  loc_C88707: FLdRfVar var_138
  loc_C8870A: FLdI2 var_18A
  loc_C8870D: CVarI2 var_128
  loc_C88710: FLdRfVar var_14C
  loc_C88713: ImpAdCallFPR4  = Format(, )
  loc_C88718: FLdRfVar var_14C
  loc_C8871B: LitVarStr var_15C, "/"
  loc_C88720: ConcatVar var_16C
  loc_C88724: FLdRfVar var_1BE
  loc_C88727: FLdPr Me
  loc_C8872A: MemLdRfVar from_stack_1.global_64
  loc_C8872D: NewIfNullPr clsctacte
  loc_C88730: from_stack_1 = clsctacte.PeriCtct
  loc_C88735: FLdI2 var_1BE
  loc_C88738: CVarI2 var_1D0
  loc_C8873B: ConcatVar var_17C
  loc_C8873F: CStrVarTmp
  loc_C88740: FLdRfVar var_92
  loc_C88743: StFixedStrFree
  loc_C88747: FFreeVar var_128 = "": var_138 = "": var_14C = "": var_16C = ""
  loc_C88754: FLdRfVar var_188
  loc_C88757: FLdPr Me
  loc_C8875A: MemLdRfVar from_stack_1.global_64
  loc_C8875D: NewIfNullPr clsctacte
  loc_C88760: from_stack_1 = clsctacte.NumeBole
  loc_C88765: LitI4 1
  loc_C8876A: LitI4 1
  loc_C8876F: LitVarStr var_118, "#######0"
  loc_C88774: FStVarCopyObj var_138
  loc_C88777: FLdRfVar var_138
  loc_C8877A: ILdRf var_188
  loc_C8877D: CVarI4
  loc_C88781: FLdRfVar var_14C
  loc_C88784: ImpAdCallFPR4  = Format(, )
  loc_C88789: FLdRfVar var_14C
  loc_C8878C: LitVarStr var_15C, "-"
  loc_C88791: ConcatVar var_16C
  loc_C88795: FLdRfVar var_18A
  loc_C88798: FLdPr Me
  loc_C8879B: MemLdRfVar from_stack_1.global_64
  loc_C8879E: NewIfNullPr clsctacte
  loc_C887A1: from_stack_1 = clsctacte.PeriBole
  loc_C887A6: FLdI2 var_18A
  loc_C887A9: CVarI2 var_1D0
  loc_C887AC: ConcatVar var_17C
  loc_C887B0: CStrVarTmp
  loc_C887B1: FLdRfVar var_AC
  loc_C887B4: StFixedStrFree
  loc_C887B8: FFreeVar var_128 = "": var_138 = "": var_14C = "": var_16C = ""
  loc_C887C5: FLdRfVar var_1B0
  loc_C887C8: FLdPr Me
  loc_C887CB: MemLdRfVar from_stack_1.global_64
  loc_C887CE: NewIfNullPr clsctacte
  loc_C887D1: from_stack_1 = clsctacte.SaldCtct
  loc_C887D6: FLdFPR8 var_1B0
  loc_C887D9: FnCDblR8
  loc_C887DB: LitI2_Byte 0
  loc_C887DD: CR8I2
  loc_C887DE: NeR8
  loc_C887DF: BranchF loc_C8882A
  loc_C887E2: FLdRfVar var_1B0
  loc_C887E5: FLdPr Me
  loc_C887E8: MemLdRfVar from_stack_1.global_64
  loc_C887EB: NewIfNullPr clsctacte
  loc_C887EE: from_stack_1 = clsctacte.SaldCtct
  loc_C887F3: LitI4 1
  loc_C887F8: LitI4 1
  loc_C887FD: LitVarStr var_118, "###,###,##0.00"
  loc_C88802: FStVarCopyObj var_138
  loc_C88805: FLdRfVar var_138
  loc_C88808: FLdFPR8 var_1B0
  loc_C8880B: CVarR8
  loc_C8880F: FLdRfVar var_14C
  loc_C88812: ImpAdCallFPR4  = Format(, )
  loc_C88817: FLdRfVar var_14C
  loc_C8881A: CStrVarTmp
  loc_C8881B: FStStr var_B4
  loc_C8881E: FFreeVar var_128 = "": var_138 = ""
  loc_C88827: Branch loc_C88830
  loc_C8882A: LitStr vbNullString
  loc_C8882D: FStStrCopy var_B4
  loc_C88830: LitStr vbNullString
  loc_C88833: FStStrCopy var_B8
  loc_C88836: FLdRfVar var_1B0
  loc_C88839: FLdPr Me
  loc_C8883C: MemLdRfVar from_stack_1.global_64
  loc_C8883F: NewIfNullPr clsctacte
  loc_C88842: from_stack_1 = clsctacte.RecaCtct
  loc_C88847: FLdFPR8 var_1B0
  loc_C8884A: FnCDblR8
  loc_C8884C: LitI2_Byte 0
  loc_C8884E: CR8I2
  loc_C8884F: NeR8
  loc_C88850: BranchF loc_C8889B
  loc_C88853: FLdRfVar var_1B0
  loc_C88856: FLdPr Me
  loc_C88859: MemLdRfVar from_stack_1.global_64
  loc_C8885C: NewIfNullPr clsctacte
  loc_C8885F: from_stack_1 = clsctacte.RecaCtct
  loc_C88864: LitI4 1
  loc_C88869: LitI4 1
  loc_C8886E: LitVarStr var_118, "###,###,##0.00"
  loc_C88873: FStVarCopyObj var_138
  loc_C88876: FLdRfVar var_138
  loc_C88879: FLdFPR8 var_1B0
  loc_C8887C: CVarR8
  loc_C88880: FLdRfVar var_14C
  loc_C88883: ImpAdCallFPR4  = Format(, )
  loc_C88888: FLdRfVar var_14C
  loc_C8888B: CStrVarTmp
  loc_C8888C: FStStr var_BC
  loc_C8888F: FFreeVar var_128 = "": var_138 = ""
  loc_C88898: Branch loc_C888A1
  loc_C8889B: LitStr vbNullString
  loc_C8889E: FStStrCopy var_BC
  loc_C888A1: FLdRfVar var_128
  loc_C888A4: FLdRfVar var_190
  loc_C888A7: LitVarStr var_108, "SaldCtct"
  loc_C888AC: PopAdLdVar
  loc_C888AD: FLdRfVar var_180
  loc_C888B0: FLdRfVar var_F8
  loc_C888B3: FLdPr Me
  loc_C888B6: MemLdRfVar from_stack_1.global_64
  loc_C888B9: NewIfNullPr clsctacte
  loc_C888BC: from_stack_1v = clsctacte.RsFrmGet()
  loc_C888C1: FLdPr var_F8
  loc_C888C4:  = Me.Fields
  loc_C888C9: FLdPr var_180
  loc_C888CC: from_stack_2 = Me.Item(from_stack_1)
  loc_C888D1: FLdPr var_190
  loc_C888D4:  = Me.Value
  loc_C888D9: FLdRfVar var_138
  loc_C888DC: FLdRfVar var_19C
  loc_C888DF: LitVarStr var_118, "RecaCtct"
  loc_C888E4: PopAdLdVar
  loc_C888E5: FLdRfVar var_198
  loc_C888E8: FLdRfVar var_194
  loc_C888EB: FLdPr Me
  loc_C888EE: MemLdRfVar from_stack_1.global_64
  loc_C888F1: NewIfNullPr clsctacte
  loc_C888F4: from_stack_1v = clsctacte.RsFrmGet()
  loc_C888F9: FLdPr var_194
  loc_C888FC:  = Me.Fields
  loc_C88901: FLdPr var_198
  loc_C88904: from_stack_2 = Me.Item(from_stack_1)
  loc_C88909: FLdPr var_19C
  loc_C8890C:  = Me.Value
  loc_C88911: LitI4 2
  loc_C88916: FLdRfVar var_128
  loc_C88919: FnCDblVar
  loc_C8891B: FLdRfVar var_138
  loc_C8891E: FnCDblVar
  loc_C88920: AddR8
  loc_C88921: CVarR8
  loc_C88925: FLdRfVar var_16C
  loc_C88928: ImpAdCallFPR4  = Round(, )
  loc_C8892D: LitI4 1
  loc_C88932: LitI4 1
  loc_C88937: LitVarStr var_1D0, "###,###,##0.00"
  loc_C8893C: FStVarCopyObj var_17C
  loc_C8893F: FLdRfVar var_17C
  loc_C88942: FLdRfVar var_16C
  loc_C88945: FLdRfVar var_1E0
  loc_C88948: ImpAdCallFPR4  = Format(, )
  loc_C8894D: FLdRfVar var_1E0
  loc_C88950: CStrVarTmp
  loc_C88951: FStStr var_C0
  loc_C88954: FFreeAd var_F8 = "": var_180 = "": var_190 = "": var_194 = "": var_198 = ""
  loc_C88963: FFreeVar var_128 = "": var_138 = "": var_14C = "": var_16C = "": var_17C = ""
  loc_C88972: FLdRfVar var_138
  loc_C88975: FLdRfVar var_190
  loc_C88978: LitVarStr var_108, "CodiOfic"
  loc_C8897D: PopAdLdVar
  loc_C8897E: FLdRfVar var_180
  loc_C88981: FLdRfVar var_F8
  loc_C88984: FLdPr Me
  loc_C88987: MemLdRfVar from_stack_1.global_64
  loc_C8898A: NewIfNullPr clsctacte
  loc_C8898D: from_stack_1v = clsctacte.RsFrmGet()
  loc_C88992: FLdPr var_F8
  loc_C88995:  = Me.Fields
  loc_C8899A: FLdPr var_180
  loc_C8899D: from_stack_2 = Me.Item(from_stack_1)
  loc_C889A2: FLdPr var_190
  loc_C889A5:  = Me.Value
  loc_C889AA: FLdRfVar var_138
  loc_C889AD: LitI4 9
  loc_C889B2: FLdRfVar var_128
  loc_C889B5: ImpAdCallFPR4  = Chr()
  loc_C889BA: FLdRfVar var_128
  loc_C889BD: ConcatVar var_14C
  loc_C889C1: FLdRfVar var_16C
  loc_C889C4: FLdRfVar var_19C
  loc_C889C7: LitVarStr var_118, "CuenCtct"
  loc_C889CC: PopAdLdVar
  loc_C889CD: FLdRfVar var_198
  loc_C889D0: FLdRfVar var_194
  loc_C889D3: FLdPr Me
  loc_C889D6: MemLdRfVar from_stack_1.global_64
  loc_C889D9: NewIfNullPr clsctacte
  loc_C889DC: from_stack_1v = clsctacte.RsFrmGet()
  loc_C889E1: FLdPr var_194
  loc_C889E4:  = Me.Fields
  loc_C889E9: FLdPr var_198
  loc_C889EC: from_stack_2 = Me.Item(from_stack_1)
  loc_C889F1: FLdPr var_19C
  loc_C889F4:  = Me.Value
  loc_C889F9: FLdRfVar var_16C
  loc_C889FC: ConcatVar var_17C
  loc_C88A00: LitI4 9
  loc_C88A05: FLdRfVar var_1E0
  loc_C88A08: ImpAdCallFPR4  = Chr()
  loc_C88A0D: FLdRfVar var_1E0
  loc_C88A10: ConcatVar var_1F0
  loc_C88A14: FLdRfVar var_92
  loc_C88A17: LdFixedStr
  loc_C88A1A: CVarStr var_200
  loc_C88A1D: ConcatVar var_210
  loc_C88A21: LitI4 9
  loc_C88A26: FLdRfVar var_220
  loc_C88A29: ImpAdCallFPR4  = Chr()
  loc_C88A2E: FLdRfVar var_220
  loc_C88A31: ConcatVar var_230
  loc_C88A35: FLdRfVar var_AC
  loc_C88A38: LdFixedStr
  loc_C88A3B: CVarStr var_240
  loc_C88A3E: ConcatVar var_250
  loc_C88A42: LitI4 9
  loc_C88A47: FLdRfVar var_260
  loc_C88A4A: ImpAdCallFPR4  = Chr()
  loc_C88A4F: FLdRfVar var_260
  loc_C88A52: ConcatVar var_270
  loc_C88A56: FLdRfVar var_280
  loc_C88A59: FLdRfVar var_1A8
  loc_C88A5C: LitVarStr var_15C, "FealCtct"
  loc_C88A61: PopAdLdVar
  loc_C88A62: FLdRfVar var_1A4
  loc_C88A65: FLdRfVar var_1A0
  loc_C88A68: FLdPr Me
  loc_C88A6B: MemLdRfVar from_stack_1.global_64
  loc_C88A6E: NewIfNullPr clsctacte
  loc_C88A71: from_stack_1v = clsctacte.RsFrmGet()
  loc_C88A76: FLdPr var_1A0
  loc_C88A79:  = Me.Fields
  loc_C88A7E: FLdPr var_1A4
  loc_C88A81: from_stack_2 = Me.Item(from_stack_1)
  loc_C88A86: FLdPr var_1A8
  loc_C88A89:  = Me.Value
  loc_C88A8E: FLdRfVar var_280
  loc_C88A91: ConcatVar var_290
  loc_C88A95: LitI4 9
  loc_C88A9A: FLdRfVar var_2A0
  loc_C88A9D: ImpAdCallFPR4  = Chr()
  loc_C88AA2: FLdRfVar var_2A0
  loc_C88AA5: ConcatVar var_2B0
  loc_C88AA9: FLdRfVar var_2CC
  loc_C88AAC: FLdRfVar var_2BC
  loc_C88AAF: LitVarStr var_1D0, "FeveCtct"
  loc_C88AB4: PopAdLdVar
  loc_C88AB5: FLdRfVar var_2B8
  loc_C88AB8: FLdRfVar var_2B4
  loc_C88ABB: FLdPr Me
  loc_C88ABE: MemLdRfVar from_stack_1.global_64
  loc_C88AC1: NewIfNullPr clsctacte
  loc_C88AC4: from_stack_1v = clsctacte.RsFrmGet()
  loc_C88AC9: FLdPr var_2B4
  loc_C88ACC:  = Me.Fields
  loc_C88AD1: FLdPr var_2B8
  loc_C88AD4: from_stack_2 = Me.Item(from_stack_1)
  loc_C88AD9: FLdPr var_2BC
  loc_C88ADC:  = Me.Value
  loc_C88AE1: FLdRfVar var_2CC
  loc_C88AE4: ConcatVar var_2DC
  loc_C88AE8: LitI4 9
  loc_C88AED: FLdRfVar var_2EC
  loc_C88AF0: ImpAdCallFPR4  = Chr()
  loc_C88AF5: FLdRfVar var_2EC
  loc_C88AF8: ConcatVar var_2FC
  loc_C88AFC: FLdRfVar var_328
  loc_C88AFF: FLdRfVar var_318
  loc_C88B02: LitVarStr var_314, "CodiConc"
  loc_C88B07: PopAdLdVar
  loc_C88B08: FLdRfVar var_304
  loc_C88B0B: FLdRfVar var_300
  loc_C88B0E: FLdPr Me
  loc_C88B11: MemLdRfVar from_stack_1.global_64
  loc_C88B14: NewIfNullPr clsctacte
  loc_C88B17: from_stack_1v = clsctacte.RsFrmGet()
  loc_C88B1C: FLdPr var_300
  loc_C88B1F:  = Me.Fields
  loc_C88B24: FLdPr var_304
  loc_C88B27: from_stack_2 = Me.Item(from_stack_1)
  loc_C88B2C: FLdPr var_318
  loc_C88B2F:  = Me.Value
  loc_C88B34: FLdRfVar var_328
  loc_C88B37: ConcatVar var_338
  loc_C88B3B: LitI4 9
  loc_C88B40: FLdRfVar var_348
  loc_C88B43: ImpAdCallFPR4  = Chr()
  loc_C88B48: FLdRfVar var_348
  loc_C88B4B: ConcatVar var_358
  loc_C88B4F: FLdRfVar var_384
  loc_C88B52: FLdRfVar var_374
  loc_C88B55: LitVarStr var_370, "ConcViej"
  loc_C88B5A: PopAdLdVar
  loc_C88B5B: FLdRfVar var_360
  loc_C88B5E: FLdRfVar var_35C
  loc_C88B61: FLdPr Me
  loc_C88B64: MemLdRfVar from_stack_1.global_64
  loc_C88B67: NewIfNullPr clsctacte
  loc_C88B6A: from_stack_1v = clsctacte.RsFrmGet()
  loc_C88B6F: FLdPr var_35C
  loc_C88B72:  = Me.Fields
  loc_C88B77: FLdPr var_360
  loc_C88B7A: from_stack_2 = Me.Item(from_stack_1)
  loc_C88B7F: FLdPr var_374
  loc_C88B82:  = Me.Value
  loc_C88B87: FLdRfVar var_384
  loc_C88B8A: ConcatVar var_394
  loc_C88B8E: LitI4 9
  loc_C88B93: FLdRfVar var_3A4
  loc_C88B96: ImpAdCallFPR4  = Chr()
  loc_C88B9B: FLdRfVar var_3A4
  loc_C88B9E: ConcatVar var_3B4
  loc_C88BA2: FLdRfVar var_188
  loc_C88BA5: FLdPr Me
  loc_C88BA8: MemLdRfVar from_stack_1.global_64
  loc_C88BAB: NewIfNullPr clsctacte
  loc_C88BAE: from_stack_1 = clsctacte.CodiFapa
  loc_C88BB3: ILdRf var_188
  loc_C88BB6: CVarI4
  loc_C88BBA: ConcatVar var_3D4
  loc_C88BBE: LitI4 9
  loc_C88BC3: FLdRfVar var_3E4
  loc_C88BC6: ImpAdCallFPR4  = Chr()
  loc_C88BCB: FLdRfVar var_3E4
  loc_C88BCE: ConcatVar var_3F4
  loc_C88BD2: FLdRfVar var_420
  loc_C88BD5: FLdRfVar var_410
  loc_C88BD8: LitVarStr var_40C, "NumeApre"
  loc_C88BDD: PopAdLdVar
  loc_C88BDE: FLdRfVar var_3FC
  loc_C88BE1: FLdRfVar var_3F8
  loc_C88BE4: FLdPr Me
  loc_C88BE7: MemLdRfVar from_stack_1.global_64
  loc_C88BEA: NewIfNullPr clsctacte
  loc_C88BED: from_stack_1v = clsctacte.RsFrmGet()
  loc_C88BF2: FLdPr var_3F8
  loc_C88BF5:  = Me.Fields
  loc_C88BFA: FLdPr var_3FC
  loc_C88BFD: from_stack_2 = Me.Item(from_stack_1)
  loc_C88C02: FLdPr var_410
  loc_C88C05:  = Me.Value
  loc_C88C0A: FLdRfVar var_420
  loc_C88C0D: ConcatVar var_430
  loc_C88C11: LitI4 9
  loc_C88C16: FLdRfVar var_440
  loc_C88C19: ImpAdCallFPR4  = Chr()
  loc_C88C1E: FLdRfVar var_440
  loc_C88C21: ConcatVar var_450
  loc_C88C25: FLdRfVar var_47C
  loc_C88C28: FLdRfVar var_46C
  loc_C88C2B: LitVarStr var_468, "ExpeCtct"
  loc_C88C30: PopAdLdVar
  loc_C88C31: FLdRfVar var_458
  loc_C88C34: FLdRfVar var_454
  loc_C88C37: FLdPr Me
  loc_C88C3A: MemLdRfVar from_stack_1.global_64
  loc_C88C3D: NewIfNullPr clsctacte
  loc_C88C40: from_stack_1v = clsctacte.RsFrmGet()
  loc_C88C45: FLdPr var_454
  loc_C88C48:  = Me.Fields
  loc_C88C4D: FLdPr var_458
  loc_C88C50: from_stack_2 = Me.Item(from_stack_1)
  loc_C88C55: FLdPr var_46C
  loc_C88C58:  = Me.Value
  loc_C88C5D: FLdRfVar var_47C
  loc_C88C60: ConcatVar var_48C
  loc_C88C64: LitI4 9
  loc_C88C69: FLdRfVar var_49C
  loc_C88C6C: ImpAdCallFPR4  = Chr()
  loc_C88C71: FLdRfVar var_49C
  loc_C88C74: ConcatVar var_4AC
  loc_C88C78: FLdRfVar var_4D8
  loc_C88C7B: FLdRfVar var_4C8
  loc_C88C7E: LitVarStr var_4C4, "AbreTimo"
  loc_C88C83: PopAdLdVar
  loc_C88C84: FLdRfVar var_4B4
  loc_C88C87: FLdRfVar var_4B0
  loc_C88C8A: FLdPr Me
  loc_C88C8D: MemLdRfVar from_stack_1.global_64
  loc_C88C90: NewIfNullPr clsctacte
  loc_C88C93: from_stack_1v = clsctacte.RsFrmGet()
  loc_C88C98: FLdPr var_4B0
  loc_C88C9B:  = Me.Fields
  loc_C88CA0: FLdPr var_4B4
  loc_C88CA3: from_stack_2 = Me.Item(from_stack_1)
  loc_C88CA8: FLdPr var_4C8
  loc_C88CAB:  = Me.Value
  loc_C88CB0: FLdRfVar var_4D8
  loc_C88CB3: ConcatVar var_4E8
  loc_C88CB7: LitI4 9
  loc_C88CBC: FLdRfVar var_4F8
  loc_C88CBF: ImpAdCallFPR4  = Chr()
  loc_C88CC4: FLdRfVar var_4F8
  loc_C88CC7: ConcatVar var_508
  loc_C88CCB: ILdRf var_B4
  loc_C88CCE: CVarStr var_518
  loc_C88CD1: ConcatVar var_528
  loc_C88CD5: LitI4 9
  loc_C88CDA: FLdRfVar var_538
  loc_C88CDD: ImpAdCallFPR4  = Chr()
  loc_C88CE2: FLdRfVar var_538
  loc_C88CE5: ConcatVar var_548
  loc_C88CE9: ILdRf var_BC
  loc_C88CEC: CVarStr var_558
  loc_C88CEF: ConcatVar var_568
  loc_C88CF3: LitI4 9
  loc_C88CF8: FLdRfVar var_578
  loc_C88CFB: ImpAdCallFPR4  = Chr()
  loc_C88D00: FLdRfVar var_578
  loc_C88D03: ConcatVar var_588
  loc_C88D07: ILdRf var_C0
  loc_C88D0A: CVarStr var_598
  loc_C88D0D: ConcatVar var_5A8
  loc_C88D11: LitI4 9
  loc_C88D16: FLdRfVar var_5B8
  loc_C88D19: ImpAdCallFPR4  = Chr()
  loc_C88D1E: FLdRfVar var_5B8
  loc_C88D21: ConcatVar var_5C8
  loc_C88D25: LitVarStr var_5D8, "No"
  loc_C88D2A: ConcatVar var_5E8
  loc_C88D2E: LitI4 9
  loc_C88D33: FLdRfVar var_5F8
  loc_C88D36: ImpAdCallFPR4  = Chr()
  loc_C88D3B: FLdRfVar var_5F8
  loc_C88D3E: ConcatVar var_608
  loc_C88D42: FLdRfVar var_634
  loc_C88D45: FLdRfVar var_624
  loc_C88D48: LitVarStr var_620, "NumeCtct"
  loc_C88D4D: PopAdLdVar
  loc_C88D4E: FLdRfVar var_610
  loc_C88D51: FLdRfVar var_60C
  loc_C88D54: FLdPr Me
  loc_C88D57: MemLdRfVar from_stack_1.global_64
  loc_C88D5A: NewIfNullPr clsctacte
  loc_C88D5D: from_stack_1v = clsctacte.RsFrmGet()
  loc_C88D62: FLdPr var_60C
  loc_C88D65:  = Me.Fields
  loc_C88D6A: FLdPr var_610
  loc_C88D6D: from_stack_2 = Me.Item(from_stack_1)
  loc_C88D72: FLdPr var_624
  loc_C88D75:  = Me.Value
  loc_C88D7A: FLdRfVar var_634
  loc_C88D7D: ConcatVar var_644
  loc_C88D81: LitI4 9
  loc_C88D86: FLdRfVar var_654
  loc_C88D89: ImpAdCallFPR4  = Chr()
  loc_C88D8E: FLdRfVar var_654
  loc_C88D91: ConcatVar var_664
  loc_C88D95: FLdRfVar var_690
  loc_C88D98: FLdRfVar var_680
  loc_C88D9B: LitVarStr var_67C, "MoviCtct"
  loc_C88DA0: PopAdLdVar
  loc_C88DA1: FLdRfVar var_66C
  loc_C88DA4: FLdRfVar var_668
  loc_C88DA7: FLdPr Me
  loc_C88DAA: MemLdRfVar from_stack_1.global_64
  loc_C88DAD: NewIfNullPr clsctacte
  loc_C88DB0: from_stack_1v = clsctacte.RsFrmGet()
  loc_C88DB5: FLdPr var_668
  loc_C88DB8:  = Me.Fields
  loc_C88DBD: FLdPr var_66C
  loc_C88DC0: from_stack_2 = Me.Item(from_stack_1)
  loc_C88DC5: FLdPr var_680
  loc_C88DC8:  = Me.Value
  loc_C88DCD: FLdRfVar var_690
  loc_C88DD0: ConcatVar var_6A0
  loc_C88DD4: CStrVarTmp
  loc_C88DD5: FStStr var_B0
  loc_C88DD8: FFreeAd var_668 = "": var_66C = "": var_680 = "": var_F8 = "": var_180 = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_2B4 = "": var_2B8 = "": var_2BC = "": var_300 = "": var_304 = "": var_318 = "": var_35C = "": var_360 = "": var_374 = "": var_3F8 = "": var_3FC = "": var_410 = "": var_454 = "": var_458 = "": var_46C = "": var_4B0 = "": var_4B4 = "": var_4C8 = "": var_60C = "": var_610 = ""
  loc_C88E1D: FFreeVar var_654 = "": var_664 = "": var_690 = "": var_6A0 = "": var_3B4 = "": var_3D4 = "": var_3E4 = "": var_3F4 = "": var_420 = "": var_430 = "": var_440 = "": var_450 = "": var_47C = "": var_48C = "": var_49C = "": var_4AC = "": var_4D8 = "": var_4E8 = "": var_4F8 = "": var_508 = "": var_528 = "": var_538 = "": var_548 = "": var_568 = "": var_578 = "": var_588 = "": var_5A8 = "": var_5B8 = "": var_5C8 = "": var_5E8 = "": var_5F8 = "": var_608 = "": var_634 = "": var_644 = "": var_138 = "": var_128 = "": var_14C = "": var_16C = "": var_17C = "": var_1E0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_220 = "": var_230 = "": var_240 = "": var_250 = "": var_260 = "": var_270 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2B0 = "": var_2CC = "": var_2DC = "": var_2EC = "": var_2FC = "": var_328 = "": var_338 = "": var_348 = "": var_358 = "": var_384 = "": var_394 = ""
  loc_C88EA0: FLdRfVar var_B0
  loc_C88EA3: CDargRef
  loc_C88EA7: FLdPr Me
  loc_C88EAA: VCallAd Control_ID_ctacteFlex
  loc_C88EAD: FStAdFunc var_F8
  loc_C88EB0: FLdPr var_F8
  loc_C88EB3: LateIdCall
  loc_C88EBB: FFree1Ad var_F8
  loc_C88EBE: FLdPr Me
  loc_C88EC1: MemLdRfVar from_stack_1.global_64
  loc_C88EC4: NewIfNullPr clsctacte
  loc_C88EC7: Call clsctacte.MoveSiguiente()
  loc_C88ECC: Branch loc_C885D1
  loc_C88ECF: LitI4 1
  loc_C88ED4: LitI4 1
  loc_C88ED9: LitVarStr var_118, "###,###,##0.00"
  loc_C88EDE: FStVarCopyObj var_128
  loc_C88EE1: FLdRfVar var_128
  loc_C88EE4: FLdRfVar var_C8
  loc_C88EE7: CVarRef
  loc_C88EEC: FLdRfVar var_138
  loc_C88EEF: ImpAdCallFPR4  = Format(, )
  loc_C88EF4: FLdRfVar var_138
  loc_C88EF7: CStrVarVal var_13C
  loc_C88EFB: FLdPr Me
  loc_C88EFE: VCallAd Control_ID_txtTotaDere
  loc_C88F01: FStAdFunc var_F8
  loc_C88F04: FLdPr var_F8
  loc_C88F07: Me.Text = from_stack_1
  loc_C88F0C: FFree1Str var_13C
  loc_C88F0F: FFree1Ad var_F8
  loc_C88F12: FFreeVar var_128 = ""
  loc_C88F19: LitI4 1
  loc_C88F1E: LitI4 1
  loc_C88F23: LitVarStr var_118, "###,###,##0.00"
  loc_C88F28: FStVarCopyObj var_128
  loc_C88F2B: FLdRfVar var_128
  loc_C88F2E: FLdRfVar var_D0
  loc_C88F31: CVarRef
  loc_C88F36: FLdRfVar var_138
  loc_C88F39: ImpAdCallFPR4  = Format(, )
  loc_C88F3E: FLdRfVar var_138
  loc_C88F41: CStrVarVal var_13C
  loc_C88F45: FLdPr Me
  loc_C88F48: VCallAd Control_ID_txtTotaReca
  loc_C88F4B: FStAdFunc var_F8
  loc_C88F4E: FLdPr var_F8
  loc_C88F51: Me.Text = from_stack_1
  loc_C88F56: FFree1Str var_13C
  loc_C88F59: FFree1Ad var_F8
  loc_C88F5C: FFreeVar var_128 = ""
  loc_C88F63: LitI4 1
  loc_C88F68: LitI4 1
  loc_C88F6D: LitVarStr var_118, "###,###,##0.00"
  loc_C88F72: FStVarCopyObj var_128
  loc_C88F75: FLdRfVar var_128
  loc_C88F78: FLdRfVar var_D8
  loc_C88F7B: CVarRef
  loc_C88F80: FLdRfVar var_138
  loc_C88F83: ImpAdCallFPR4  = Format(, )
  loc_C88F88: FLdRfVar var_138
  loc_C88F8B: CStrVarVal var_13C
  loc_C88F8F: FLdPr Me
  loc_C88F92: VCallAd Control_ID_txtTotaApre
  loc_C88F95: FStAdFunc var_F8
  loc_C88F98: FLdPr var_F8
  loc_C88F9B: Me.Text = from_stack_1
  loc_C88FA0: FFree1Str var_13C
  loc_C88FA3: FFree1Ad var_F8
  loc_C88FA6: FFreeVar var_128 = ""
  loc_C88FAD: LitI4 2
  loc_C88FB2: FLdRfVar var_C8
  loc_C88FB5: CVarRef
  loc_C88FBA: FLdRfVar var_128
  loc_C88FBD: ImpAdCallFPR4  = Round(, )
  loc_C88FC2: FLdRfVar var_128
  loc_C88FC5: LitI4 2
  loc_C88FCA: FLdRfVar var_D0
  loc_C88FCD: CVarRef
  loc_C88FD2: FLdRfVar var_138
  loc_C88FD5: ImpAdCallFPR4  = Round(, )
  loc_C88FDA: FLdRfVar var_138
  loc_C88FDD: AddVar var_14C
  loc_C88FE1: LitI4 2
  loc_C88FE6: FLdRfVar var_D8
  loc_C88FE9: CVarRef
  loc_C88FEE: FLdRfVar var_16C
  loc_C88FF1: ImpAdCallFPR4  = Round(, )
  loc_C88FF6: FLdRfVar var_16C
  loc_C88FF9: AddVar var_17C
  loc_C88FFD: CR4Var
  loc_C88FFE: FStFPR8 var_E0
  loc_C89001: FFreeVar var_128 = "": var_138 = "": var_14C = "": var_16C = ""
  loc_C8900E: LitI4 1
  loc_C89013: LitI4 1
  loc_C89018: LitVarStr var_118, "###,###,##0.00"
  loc_C8901D: FStVarCopyObj var_128
  loc_C89020: FLdRfVar var_128
  loc_C89023: FLdRfVar var_E0
  loc_C89026: CVarRef
  loc_C8902B: FLdRfVar var_138
  loc_C8902E: ImpAdCallFPR4  = Format(, )
  loc_C89033: FLdRfVar var_138
  loc_C89036: CStrVarVal var_13C
  loc_C8903A: FLdPr Me
  loc_C8903D: VCallAd Control_ID_txtTotal
  loc_C89040: FStAdFunc var_F8
  loc_C89043: FLdPr var_F8
  loc_C89046: Me.Text = from_stack_1
  loc_C8904B: FFree1Str var_13C
  loc_C8904E: FFree1Ad var_F8
  loc_C89051: FFreeVar var_128 = ""
  loc_C89058: FLdPr Me
  loc_C8905B: VCallAd Control_ID_ctacteFlex
  loc_C8905E: FStAdFunc var_F8
  loc_C89061: FLdPr var_F8
  loc_C89064: LateIdLdVar var_128 DispID_4 0
  loc_C8906B: CI4Var
  loc_C8906D: LitI4 1
  loc_C89072: GtI4
  loc_C89073: FFree1Ad var_F8
  loc_C89076: FFree1Var var_128 = ""
  loc_C89079: BranchF loc_C890B2
  loc_C8907C: LitI4 0
  loc_C89081: LitI4 0
  loc_C89086: FLdRfVar var_6A4
  loc_C89089: Redim
  loc_C89093: FLdPr Me
  loc_C89096: VCallAd Control_ID_HabilitarChk
  loc_C89099: CVarAd
  loc_C8909D: ParmAry1St
  loc_C890A3: FLdRfVar var_6A4
  loc_C890A6: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_C890AB: FLdRfVar var_6A4
  loc_C890AE: Erase
  loc_C890AF: Branch loc_C89122
  loc_C890B2: LitI2_Byte 0
  loc_C890B4: FLdPr Me
  loc_C890B7: VCallAd Control_ID_HabilitarChk
  loc_C890BA: FStAdFunc var_F8
  loc_C890BD: FLdPr var_F8
  loc_C890C0: Me.Value = from_stack_1
  loc_C890C5: FFree1Ad var_F8
  loc_C890C8: LitStr vbNullString
  loc_C890CB: FLdPr Me
  loc_C890CE: VCallAd Control_ID_PagoCuentaTxt
  loc_C890D1: FStAdFunc var_F8
  loc_C890D4: FLdPr var_F8
  loc_C890D7: Me.Text = from_stack_1
  loc_C890DC: FFree1Ad var_F8
  loc_C890DF: LitI4 0
  loc_C890E4: LitI4 1
  loc_C890E9: FLdRfVar var_6A4
  loc_C890EC: Redim
  loc_C890F6: FLdPr Me
  loc_C890F9: VCallAd Control_ID_HabilitarChk
  loc_C890FC: CVarAd
  loc_C89100: ParmAry1St
  loc_C89106: FLdPr Me
  loc_C89109: VCallAd Control_ID_PagoCuentaTxt
  loc_C8910C: CVarAd
  loc_C89110: ParmAry1St
  loc_C89116: FLdRfVar var_6A4
  loc_C89119: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C8911E: FLdRfVar var_6A4
  loc_C89121: Erase
  loc_C89122: LitStr " SELECT CONCAT('LA PERSONA POSEE EXPEDIENTE: ',' ', replace(Expediente,'-','/'),' ', 'CON CAUSA: ', Causa) Detalle"
  loc_C89125: LitStr " FROM expeinmu WHERE CodiOfic = "
  loc_C89128: ConcatStr
  loc_C89129: FStStrNoPop var_13C
  loc_C8912C: ImpAdLdUI1
  loc_C89130: CStrI2
  loc_C89132: FStStrNoPop var_184
  loc_C89135: ConcatStr
  loc_C89136: FStStrNoPop var_1B4
  loc_C89139: LitStr " AND CodiInmu = "
  loc_C8913C: ConcatStr
  loc_C8913D: FStStrNoPop var_1BC
  loc_C89140: FLdRfVar var_1B8
  loc_C89143: FLdPr Me
  loc_C89146: VCallAd Control_ID_NumeCtaTxt
  loc_C89149: FStAdFunc var_F8
  loc_C8914C: FLdPr var_F8
  loc_C8914F:  = Me.Text
  loc_C89154: ILdRf var_1B8
  loc_C89157: ConcatStr
  loc_C89158: FStStrNoPop var_6A8
  loc_C8915B: LitStr " AND Afectadeuda = 1"
  loc_C8915E: ConcatStr
  loc_C8915F: FStStrNoPop var_6AC
  loc_C89162: FLdPr Me
  loc_C89165: MemLdRfVar from_stack_1.global_60
  loc_C89168: NewIfNullPr clsctacte
  loc_C8916B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C89170: FFreeStr var_13C = "": var_184 = "": var_1B4 = "": var_1BC = "": var_1B8 = "": var_6A8 = ""
  loc_C89181: FFree1Ad var_F8
  loc_C89184: FLdRfVar var_188
  loc_C89187: FLdPr Me
  loc_C8918A: MemLdRfVar from_stack_1.global_60
  loc_C8918D: NewIfNullPr clsctacte
  loc_C89190: from_stack_1 = clsctacte.RecordCount
  loc_C89195: ILdRf var_188
  loc_C89198: LitI4 0
  loc_C8919D: GtI4
  loc_C8919E: BranchF loc_C89202
  loc_C891A1: FLdRfVar var_190
  loc_C891A4: LitVarStr var_108, "Detalle"
  loc_C891A9: PopAdLdVar
  loc_C891AA: FLdRfVar var_180
  loc_C891AD: FLdRfVar var_F8
  loc_C891B0: FLdPr Me
  loc_C891B3: MemLdRfVar from_stack_1.global_60
  loc_C891B6: NewIfNullPr clsctacte
  loc_C891B9: from_stack_1v = clsctacte.RsFrmGet()
  loc_C891BE: FLdPr var_F8
  loc_C891C1:  = Me.Fields
  loc_C891C6: FLdPr var_180
  loc_C891C9: from_stack_2 = Me.Item(from_stack_1)
  loc_C891CE: LitVar_Missing var_16C
  loc_C891D1: LitVar_Missing var_14C
  loc_C891D4: LitVarStr var_118, "Expediente"
  loc_C891D9: FStVarCopyObj var_138
  loc_C891DC: FLdRfVar var_138
  loc_C891DF: LitI4 &H40
  loc_C891E4: FLdZeroAd var_190
  loc_C891E7: CVarAd
  loc_C891EB: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C891F0: FFreeAd var_F8 = ""
  loc_C891F7: FFreeVar var_128 = "": var_138 = "": var_14C = ""
  loc_C89202: LitStr vbNullString
  loc_C89205: FLdPr Me
  loc_C89208: MemStStrCopy
  loc_C8920C: LitStr " SELECT apremio.NumeApre FROM apremio "
  loc_C8920F: LitStr " LEFT JOIN  tmp_ctacteboleto ON tmp_ctacteboleto.NumeApre = apremio.NumeApre "
  loc_C89212: ConcatStr
  loc_C89213: FStStrNoPop var_13C
  loc_C89216: LitStr " AND tmp_ctacteboleto.SaldCtct > 0"
  loc_C89219: ConcatStr
  loc_C8921A: FStStrNoPop var_184
  loc_C8921D: LitStr " WHERE apremio.CodiOfic = "
  loc_C89220: ConcatStr
  loc_C89221: FStStrNoPop var_1B4
  loc_C89224: ImpAdLdUI1
  loc_C89228: CStrI2
  loc_C8922A: FStStrNoPop var_1B8
  loc_C8922D: ConcatStr
  loc_C8922E: FStStrNoPop var_1BC
  loc_C89231: LitStr " AND apremio.CuenCtct = '"
  loc_C89234: ConcatStr
  loc_C89235: FStStrNoPop var_6AC
  loc_C89238: FLdRfVar var_6A8
  loc_C8923B: FLdPr Me
  loc_C8923E: VCallAd Control_ID_NumeCtaTxt
  loc_C89241: FStAdFunc var_F8
  loc_C89244: FLdPr var_F8
  loc_C89247:  = Me.Text
  loc_C8924C: ILdRf var_6A8
  loc_C8924F: ConcatStr
  loc_C89250: FStStrNoPop var_6B0
  loc_C89253: LitStr "' AND EstaApre = 10"
  loc_C89256: ConcatStr
  loc_C89257: FStStrNoPop var_6B4
  loc_C8925A: LitStr " AND tmp_ctacteboleto.CodiOfic IS NULL"
  loc_C8925D: ConcatStr
  loc_C8925E: FStStrNoPop var_6B8
  loc_C89261: LitStr " GROUP BY apremio.NumeApre"
  loc_C89264: ConcatStr
  loc_C89265: FStStrNoPop var_6BC
  loc_C89268: FLdPr Me
  loc_C8926B: MemLdRfVar from_stack_1.global_60
  loc_C8926E: NewIfNullPr clsctacte
  loc_C89271: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C89276: FFreeStr var_13C = "": var_184 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_6AC = "": var_6A8 = "": var_6B0 = "": var_6B4 = "": var_6B8 = ""
  loc_C8928F: FFree1Ad var_F8
  loc_C89292: FLdRfVar var_188
  loc_C89295: FLdPr Me
  loc_C89298: MemLdRfVar from_stack_1.global_60
  loc_C8929B: NewIfNullPr clsctacte
  loc_C8929E: from_stack_1 = clsctacte.RecordCount
  loc_C892A3: ILdRf var_188
  loc_C892A6: LitI4 0
  loc_C892AB: GtI4
  loc_C892AC: BranchF loc_C892E8
  loc_C892AF: LitStr "LA CUENTA TIENE APREMIO PENDIENTES, VERIFIQUE...."
  loc_C892B2: FLdPr Me
  loc_C892B5: MemStStrCopy
  loc_C892B9: LitVar_Missing var_14C
  loc_C892BC: LitVar_Missing var_138
  loc_C892BF: LitVarStr var_118, "Expediente"
  loc_C892C4: FStVarCopyObj var_128
  loc_C892C7: FLdRfVar var_128
  loc_C892CA: LitI4 &H40
  loc_C892CF: FLdPr Me
  loc_C892D2: MemLdRfVar from_stack_1.global_264
  loc_C892D5: CVarRef
  loc_C892DA: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C892DF: FFreeVar var_128 = "": var_138 = ""
  loc_C892E8: LitStr vbNullString
  loc_C892EB: FLdPr Me
  loc_C892EE: MemStStrCopy
  loc_C892F2: LitStr " SELECT apremio.NumeApre FROM apremio "
  loc_C892F5: LitStr " WHERE apremio.CodiOfic = "
  loc_C892F8: ConcatStr
  loc_C892F9: FStStrNoPop var_13C
  loc_C892FC: ImpAdLdUI1
  loc_C89300: CStrI2
  loc_C89302: FStStrNoPop var_184
  loc_C89305: ConcatStr
  loc_C89306: FStStrNoPop var_1B4
  loc_C89309: LitStr " AND apremio.CuenCtct = '"
  loc_C8930C: ConcatStr
  loc_C8930D: FStStrNoPop var_1BC
  loc_C89310: FLdRfVar var_1B8
  loc_C89313: FLdPr Me
  loc_C89316: VCallAd Control_ID_NumeCtaTxt
  loc_C89319: FStAdFunc var_F8
  loc_C8931C: FLdPr var_F8
  loc_C8931F:  = Me.Text
  loc_C89324: ILdRf var_1B8
  loc_C89327: ConcatStr
  loc_C89328: FStStrNoPop var_6A8
  loc_C8932B: LitStr "' AND EstaApre = 11"
  loc_C8932E: ConcatStr
  loc_C8932F: FStStrNoPop var_6AC
  loc_C89332: LitStr " GROUP BY apremio.NumeApre"
  loc_C89335: ConcatStr
  loc_C89336: FStStrNoPop var_6B0
  loc_C89339: FLdPr Me
  loc_C8933C: MemLdRfVar from_stack_1.global_60
  loc_C8933F: NewIfNullPr clsctacte
  loc_C89342: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C89347: FFreeStr var_13C = "": var_184 = "": var_1B4 = "": var_1BC = "": var_1B8 = "": var_6A8 = "": var_6AC = ""
  loc_C8935A: FFree1Ad var_F8
  loc_C8935D: FLdRfVar var_188
  loc_C89360: FLdPr Me
  loc_C89363: MemLdRfVar from_stack_1.global_60
  loc_C89366: NewIfNullPr clsctacte
  loc_C89369: from_stack_1 = clsctacte.RecordCount
  loc_C8936E: ILdRf var_188
  loc_C89371: LitI4 0
  loc_C89376: GtI4
  loc_C89377: BranchF loc_C893B3
  loc_C8937A: LitStr "LA CUENTA TIENE APREMIO EN ESTADO 11 - INHIBIDO, VERIFIQUE...."
  loc_C8937D: FLdPr Me
  loc_C89380: MemStStrCopy
  loc_C89384: LitVar_Missing var_14C
  loc_C89387: LitVar_Missing var_138
  loc_C8938A: LitVarStr var_118, "Expediente"
  loc_C8938F: FStVarCopyObj var_128
  loc_C89392: FLdRfVar var_128
  loc_C89395: LitI4 &H40
  loc_C8939A: FLdPr Me
  loc_C8939D: MemLdRfVar from_stack_1.global_268
  loc_C893A0: CVarRef
  loc_C893A5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C893AA: FFreeVar var_128 = "": var_138 = ""
  loc_C893B3: LitStr vbNullString
  loc_C893B6: FLdPr Me
  loc_C893B9: MemStStrCopy
  loc_C893BD: LitStr " SELECT apremio.NumeApre FROM apremio "
  loc_C893C0: LitStr " WHERE apremio.CodiOfic = "
  loc_C893C3: ConcatStr
  loc_C893C4: FStStrNoPop var_13C
  loc_C893C7: ImpAdLdUI1
  loc_C893CB: CStrI2
  loc_C893CD: FStStrNoPop var_184
  loc_C893D0: ConcatStr
  loc_C893D1: FStStrNoPop var_1B4
  loc_C893D4: LitStr " AND apremio.CuenCtct = '"
  loc_C893D7: ConcatStr
  loc_C893D8: FStStrNoPop var_1BC
  loc_C893DB: FLdRfVar var_1B8
  loc_C893DE: FLdPr Me
  loc_C893E1: VCallAd Control_ID_NumeCtaTxt
  loc_C893E4: FStAdFunc var_F8
  loc_C893E7: FLdPr var_F8
  loc_C893EA:  = Me.Text
  loc_C893EF: ILdRf var_1B8
  loc_C893F2: ConcatStr
  loc_C893F3: FStStrNoPop var_6A8
  loc_C893F6: LitStr "' AND EstaApre = 12"
  loc_C893F9: ConcatStr
  loc_C893FA: FStStrNoPop var_6AC
  loc_C893FD: LitStr " GROUP BY apremio.NumeApre"
  loc_C89400: ConcatStr
  loc_C89401: FStStrNoPop var_6B0
  loc_C89404: FLdPr Me
  loc_C89407: MemLdRfVar from_stack_1.global_60
  loc_C8940A: NewIfNullPr clsctacte
  loc_C8940D: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C89412: FFreeStr var_13C = "": var_184 = "": var_1B4 = "": var_1BC = "": var_1B8 = "": var_6A8 = "": var_6AC = ""
  loc_C89425: FFree1Ad var_F8
  loc_C89428: FLdRfVar var_188
  loc_C8942B: FLdPr Me
  loc_C8942E: MemLdRfVar from_stack_1.global_60
  loc_C89431: NewIfNullPr clsctacte
  loc_C89434: from_stack_1 = clsctacte.RecordCount
  loc_C89439: ILdRf var_188
  loc_C8943C: LitI4 0
  loc_C89441: GtI4
  loc_C89442: BranchF loc_C8947E
  loc_C89445: LitStr "LA CUENTA TIENE APREMIO EN ESTADO 12 - EMBARGO, VERIFIQUE...."
  loc_C89448: FLdPr Me
  loc_C8944B: MemStStrCopy
  loc_C8944F: LitVar_Missing var_14C
  loc_C89452: LitVar_Missing var_138
  loc_C89455: LitVarStr var_118, "Expediente"
  loc_C8945A: FStVarCopyObj var_128
  loc_C8945D: FLdRfVar var_128
  loc_C89460: LitI4 &H40
  loc_C89465: FLdPr Me
  loc_C89468: MemLdRfVar from_stack_1.global_272
  loc_C8946B: CVarRef
  loc_C89470: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C89475: FFreeVar var_128 = "": var_138 = ""
  loc_C8947E: LitStr vbNullString
  loc_C89481: FLdPr Me
  loc_C89484: MemStStrCopy
  loc_C89488: LitStr " SELECT detabole.CodiOfic, detabole.CuenCtct FROM contracargo"
  loc_C8948B: LitStr " INNER JOIN detabole ON detabole.PeriBole = contracargo.PeriBole"
  loc_C8948E: ConcatStr
  loc_C8948F: FStStrNoPop var_13C
  loc_C89492: LitStr " AND detabole.NumeBole = contracargo.NumeBole "
  loc_C89495: ConcatStr
  loc_C89496: FStStrNoPop var_184
  loc_C89499: LitStr " WHERE detabole.CodiOfic = "
  loc_C8949C: ConcatStr
  loc_C8949D: FStStrNoPop var_1B4
  loc_C894A0: ImpAdLdUI1
  loc_C894A4: CStrI2
  loc_C894A6: FStStrNoPop var_1B8
  loc_C894A9: ConcatStr
  loc_C894AA: FStStrNoPop var_1BC
  loc_C894AD: LitStr " AND detabole.CuenCtct = '"
  loc_C894B0: ConcatStr
  loc_C894B1: FStStrNoPop var_6AC
  loc_C894B4: FLdRfVar var_6A8
  loc_C894B7: FLdPr Me
  loc_C894BA: VCallAd Control_ID_NumeCtaTxt
  loc_C894BD: FStAdFunc var_F8
  loc_C894C0: FLdPr var_F8
  loc_C894C3:  = Me.Text
  loc_C894C8: ILdRf var_6A8
  loc_C894CB: ConcatStr
  loc_C894CC: FStStrNoPop var_6B0
  loc_C894CF: LitStr "' GROUP BY detabole.CodiOfic, detabole.CuenCtct"
  loc_C894D2: ConcatStr
  loc_C894D3: FStStrNoPop var_6B4
  loc_C894D6: FLdPr Me
  loc_C894D9: MemLdRfVar from_stack_1.global_60
  loc_C894DC: NewIfNullPr clsctacte
  loc_C894DF: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C894E4: FFreeStr var_13C = "": var_184 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_6AC = "": var_6A8 = "": var_6B0 = ""
  loc_C894F9: FFree1Ad var_F8
  loc_C894FC: FLdRfVar var_188
  loc_C894FF: FLdPr Me
  loc_C89502: MemLdRfVar from_stack_1.global_60
  loc_C89505: NewIfNullPr clsctacte
  loc_C89508: from_stack_1 = clsctacte.RecordCount
  loc_C8950D: ILdRf var_188
  loc_C89510: LitI4 0
  loc_C89515: GtI4
  loc_C89516: BranchF loc_C89552
  loc_C89519: LitStr "LA CUENTA TIENE CONTRACARGOS, VERIFIQUE...."
  loc_C8951C: FLdPr Me
  loc_C8951F: MemStStrCopy
  loc_C89523: LitVar_Missing var_14C
  loc_C89526: LitVar_Missing var_138
  loc_C89529: LitVarStr var_118, "Expediente"
  loc_C8952E: FStVarCopyObj var_128
  loc_C89531: FLdRfVar var_128
  loc_C89534: LitI4 &H40
  loc_C89539: FLdPr Me
  loc_C8953C: MemLdRfVar from_stack_1.global_276
  loc_C8953F: CVarRef
  loc_C89544: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C89549: FFreeVar var_128 = "": var_138 = ""
  loc_C89552: LitI2_Byte 0
  loc_C89554: FStI2 var_F2
  loc_C89557: LitStr " SELECT NumeApre FROM apremio WHERE CodiOfic = "
  loc_C8955A: ImpAdLdUI1
  loc_C8955E: CStrI2
  loc_C89560: FStStrNoPop var_13C
  loc_C89563: ConcatStr
  loc_C89564: FStStrNoPop var_184
  loc_C89567: LitStr " AND CUenCtct = '"
  loc_C8956A: ConcatStr
  loc_C8956B: FStStrNoPop var_1B8
  loc_C8956E: FLdRfVar var_1B4
  loc_C89571: FLdPr Me
  loc_C89574: VCallAd Control_ID_NumeCtaTxt
  loc_C89577: FStAdFunc var_F8
  loc_C8957A: FLdPr var_F8
  loc_C8957D:  = Me.Text
  loc_C89582: ILdRf var_1B4
  loc_C89585: ConcatStr
  loc_C89586: FStStrNoPop var_1BC
  loc_C89589: LitStr "'"
  loc_C8958C: ConcatStr
  loc_C8958D: FStStrNoPop var_6A8
  loc_C89590: FLdPr Me
  loc_C89593: MemLdRfVar from_stack_1.global_60
  loc_C89596: NewIfNullPr clsctacte
  loc_C89599: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C8959E: FFreeStr var_13C = "": var_184 = "": var_1B8 = "": var_1B4 = "": var_1BC = ""
  loc_C895AD: FFree1Ad var_F8
  loc_C895B0: FLdRfVar var_188
  loc_C895B3: FLdRfVar var_F8
  loc_C895B6: FLdPr Me
  loc_C895B9: MemLdRfVar from_stack_1.global_60
  loc_C895BC: NewIfNullPr clsctacte
  loc_C895BF: from_stack_1v = clsctacte.RsFrmGet()
  loc_C895C4: FLdPr var_F8
  loc_C895C7:  = Me.RecordCount
  loc_C895CC: ILdRf var_188
  loc_C895CF: LitI4 0
  loc_C895D4: GtI4
  loc_C895D5: FFree1Ad var_F8
  loc_C895D8: BranchF loc_C8967B
  loc_C895DB: FLdRfVar var_18A
  loc_C895DE: FLdPr Me
  loc_C895E1: MemLdRfVar from_stack_1.global_60
  loc_C895E4: NewIfNullPr clsctacte
  loc_C895E7: from_stack_1 = clsctacte.EOF
  loc_C895EC: FLdI2 var_18A
  loc_C895EF: NotI4
  loc_C895F0: BranchF loc_C8967B
  loc_C895F3: FLdI2 var_F2
  loc_C895F6: LitI2_Byte 0
  loc_C895F8: EqI2
  loc_C895F9: BranchF loc_C8965C
  loc_C895FC: FLdRfVar var_18A
  loc_C895FF: FLdRfVar var_128
  loc_C89602: FLdRfVar var_190
  loc_C89605: LitVarStr var_108, "NumeApre"
  loc_C8960A: PopAdLdVar
  loc_C8960B: FLdRfVar var_180
  loc_C8960E: FLdRfVar var_F8
  loc_C89611: FLdPr Me
  loc_C89614: MemLdRfVar from_stack_1.global_60
  loc_C89617: NewIfNullPr clsctacte
  loc_C8961A: from_stack_1v = clsctacte.RsFrmGet()
  loc_C8961F: FLdPr var_F8
  loc_C89622:  = Me.Fields
  loc_C89627: FLdPr var_180
  loc_C8962A: from_stack_2 = Me.Item(from_stack_1)
  loc_C8962F: FLdPr var_190
  loc_C89632:  = Me.Value
  loc_C89637: FLdRfVar var_128
  loc_C8963A: CI4Var
  loc_C8963C: FLdPr Me
  loc_C8963F: MemLdRfVar from_stack_1.global_76
  loc_C89642: NewIfNullPr clsapremio
  loc_C89645: from_stack_2v = clsapremio.BuscaGastosdeApremioPendientesEnCuotadeFacilidaddePagoAnulada(from_stack_1v)
  loc_C8964A: FLdI2 var_18A
  loc_C8964D: FStI2 var_F2
  loc_C89650: FFreeAd var_F8 = "": var_180 = ""
  loc_C89659: FFree1Var var_128 = ""
  loc_C8965C: FLdRfVar var_F8
  loc_C8965F: FLdPr Me
  loc_C89662: MemLdRfVar from_stack_1.global_60
  loc_C89665: NewIfNullPr clsctacte
  loc_C89668: from_stack_1v = clsctacte.RsFrmGet()
  loc_C8966D: FLdPr var_F8
  loc_C89670: Me.MoveNext
  loc_C89675: FFree1Ad var_F8
  loc_C89678: Branch loc_C895DB
  loc_C8967B: FLdI2 var_F2
  loc_C8967E: LitI2_Byte &HFF
  loc_C89680: EqI2
  loc_C89681: BranchF loc_C896B5
  loc_C89684: LitVar_Missing var_16C
  loc_C89687: LitVar_Missing var_14C
  loc_C8968A: LitVarStr var_118, "Expediente"
  loc_C8968F: FStVarCopyObj var_138
  loc_C89692: FLdRfVar var_138
  loc_C89695: LitI4 &H40
  loc_C8969A: LitVarStr var_108, "LA CUENTA TIENE APREMIO PENDIENTES DE FACILIDAD DE PAGOS ANULADAS, VERIFIQUE...."
  loc_C8969F: FStVarCopyObj var_128
  loc_C896A2: FLdRfVar var_128
  loc_C896A5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C896AA: FFreeVar var_128 = "": var_138 = "": var_14C = ""
  loc_C896B5: ExitProcHresult
End Sub

Private Sub OficinaCbo_Click() 'B36A78
  'Data Table: 4E7624
  loc_B3679C: FLdRfVar var_8A
  loc_B3679F: FLdPr Me
  loc_B367A2: VCallAd Control_ID_OficinaCbo
  loc_B367A5: FStAdFunc var_88
  loc_B367A8: FLdPr var_88
  loc_B367AB:  = Me.ListIndex
  loc_B367B0: FLdI2 var_8A
  loc_B367B3: FStI2 var_8C
  loc_B367B6: FFree1Ad var_88
  loc_B367B9: FLdI2 var_8C
  loc_B367BC: LitI2_Byte 0
  loc_B367BE: EqI2
  loc_B367BF: BranchF loc_B367CD
  loc_B367C2: LitI2_Byte 1
  loc_B367C4: CUI1I2
  loc_B367C6: ImpAdStUI1 MemVar_D93038
  loc_B367CA: Branch loc_B36842
  loc_B367CD: FLdI2 var_8C
  loc_B367D0: LitI2_Byte 1
  loc_B367D2: EqI2
  loc_B367D3: BranchF loc_B367E1
  loc_B367D6: LitI2_Byte 2
  loc_B367D8: CUI1I2
  loc_B367DA: ImpAdStUI1 MemVar_D93038
  loc_B367DE: Branch loc_B36842
  loc_B367E1: FLdI2 var_8C
  loc_B367E4: LitI2_Byte 2
  loc_B367E6: EqI2
  loc_B367E7: BranchF loc_B367F5
  loc_B367EA: LitI2_Byte 3
  loc_B367EC: CUI1I2
  loc_B367EE: ImpAdStUI1 MemVar_D93038
  loc_B367F2: Branch loc_B36842
  loc_B367F5: FLdI2 var_8C
  loc_B367F8: LitI2_Byte 3
  loc_B367FA: EqI2
  loc_B367FB: BranchF loc_B36809
  loc_B367FE: LitI2_Byte 4
  loc_B36800: CUI1I2
  loc_B36802: ImpAdStUI1 MemVar_D93038
  loc_B36806: Branch loc_B36842
  loc_B36809: FLdI2 var_8C
  loc_B3680C: LitI2_Byte 4
  loc_B3680E: EqI2
  loc_B3680F: BranchF loc_B3681D
  loc_B36812: LitI2_Byte 5
  loc_B36814: CUI1I2
  loc_B36816: ImpAdStUI1 MemVar_D93038
  loc_B3681A: Branch loc_B36842
  loc_B3681D: FLdI2 var_8C
  loc_B36820: LitI2_Byte 5
  loc_B36822: EqI2
  loc_B36823: BranchF loc_B36831
  loc_B36826: LitI2_Byte 6
  loc_B36828: CUI1I2
  loc_B3682A: ImpAdStUI1 MemVar_D93038
  loc_B3682E: Branch loc_B36842
  loc_B36831: FLdI2 var_8C
  loc_B36834: LitI2_Byte 6
  loc_B36836: EqI2
  loc_B36837: BranchF loc_B36842
  loc_B3683A: LitI2_Byte 7
  loc_B3683C: CUI1I2
  loc_B3683E: ImpAdStUI1 MemVar_D93038
  loc_B36842: ImpAdLdUI1
  loc_B36846: CI2UI1
  loc_B36848: LitI2_Byte 0
  loc_B3684A: NeI2
  loc_B3684B: FLdRfVar var_90
  loc_B3684E: FLdPr Me
  loc_B36851: VCallAd Control_ID_NumeCtaTxt
  loc_B36854: FStAdFunc var_88
  loc_B36857: FLdPr var_88
  loc_B3685A:  = Me.Text
  loc_B3685F: ILdRf var_90
  loc_B36862: LitStr vbNullString
  loc_B36865: NeStr
  loc_B36867: AndI4
  loc_B36868: FLdRfVar var_98
  loc_B3686B: FLdPr Me
  loc_B3686E: VCallAd Control_ID_NumeCtaTxt
  loc_B36871: FStAdFunc var_94
  loc_B36874: FLdPr var_94
  loc_B36877:  = Me.Text
  loc_B3687C: ILdRf var_98
  loc_B3687F: LitStr "0"
  loc_B36882: NeStr
  loc_B36884: AndI4
  loc_B36885: FFreeStr var_90 = ""
  loc_B3688C: FFreeAd var_88 = ""
  loc_B36893: BranchF loc_B36A77
  loc_B36896: FLdRfVar var_90
  loc_B36899: FLdPr Me
  loc_B3689C: VCallAd Control_ID_NumeCtaTxt
  loc_B3689F: FStAdFunc var_88
  loc_B368A2: FLdPr var_88
  loc_B368A5:  = Me.Text
  loc_B368AA: FLdPr Me
  loc_B368AD: MemLdRfVar from_stack_1.global_88
  loc_B368B0: NewIfNullRf
  loc_B368B4: LitStr "Titular"
  loc_B368B7: ILdRf var_90
  loc_B368BA: ImpAdLdUI1
  loc_B368BE: CStrI2
  loc_B368C0: FStStrNoPop var_98
  loc_B368C3: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B368C8: FFreeStr var_98 = ""
  loc_B368CF: FFree1Ad var_88
  loc_B368D2: BranchF loc_B369F7
  loc_B368D5: FLdRfVar var_90
  loc_B368D8: FLdPr Me
  loc_B368DB: MemLdRfVar from_stack_1.global_88
  loc_B368DE: NewIfNullPr tblPersona
  loc_B368E1: from_stack_1v = tblPersona.CucuPersGet()
  loc_B368E6: ILdRf var_90
  loc_B368E9: FLdPr Me
  loc_B368EC: VCallAd Control_ID_CucuPersLbl
  loc_B368EF: FStAdFunc var_88
  loc_B368F2: FLdPr var_88
  loc_B368F5: Me.Caption = from_stack_1
  loc_B368FA: FFree1Str var_90
  loc_B368FD: FFree1Ad var_88
  loc_B36900: FLdRfVar var_90
  loc_B36903: FLdPr Me
  loc_B36906: MemLdRfVar from_stack_1.global_88
  loc_B36909: NewIfNullPr tblPersona
  loc_B3690C: from_stack_1v = tblPersona.DetaPersGet()
  loc_B36911: ILdRf var_90
  loc_B36914: FLdPr Me
  loc_B36917: VCallAd Control_ID_DetaPersLbl
  loc_B3691A: FStAdFunc var_88
  loc_B3691D: FLdPr var_88
  loc_B36920: Me.Caption = from_stack_1
  loc_B36925: FFree1Str var_90
  loc_B36928: FFree1Ad var_88
  loc_B3692B: FLdRfVar var_98
  loc_B3692E: FLdPr Me
  loc_B36931: MemLdRfVar from_stack_1.global_88
  loc_B36934: NewIfNullPr tblPersona
  loc_B36937: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B3693C: FLdRfVar var_9C
  loc_B3693F: FLdPr Me
  loc_B36942: MemLdRfVar from_stack_1.global_88
  loc_B36945: NewIfNullPr tblPersona
  loc_B36948: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B3694D: FLdRfVar var_90
  loc_B36950: FLdPr Me
  loc_B36953: MemLdRfVar from_stack_1.global_88
  loc_B36956: NewIfNullPr tblPersona
  loc_B36959: from_stack_1v = tblPersona.DetaCallGet()
  loc_B3695E: ILdRf var_90
  loc_B36961: LitStr " "
  loc_B36964: ConcatStr
  loc_B36965: CVarStr var_FC
  loc_B36968: LitVarStr var_CC, vbNullString
  loc_B3696D: FStVarCopyObj var_DC
  loc_B36970: FLdRfVar var_DC
  loc_B36973: LitStr "Nro: "
  loc_B36976: ILdRf var_9C
  loc_B36979: ConcatStr
  loc_B3697A: CVarStr var_BC
  loc_B3697D: ILdRf var_98
  loc_B36980: LitStr "0"
  loc_B36983: NeStr
  loc_B36985: CVarBoolI2 var_AC
  loc_B36989: FLdRfVar var_EC
  loc_B3698C: ImpAdCallFPR4  = IIf(, , )
  loc_B36991: FLdRfVar var_EC
  loc_B36994: ConcatVar var_10C
  loc_B36998: LitVarStr var_11C, " "
  loc_B3699D: ConcatVar var_12C
  loc_B369A1: FLdRfVar var_130
  loc_B369A4: FLdPr Me
  loc_B369A7: MemLdRfVar from_stack_1.global_88
  loc_B369AA: NewIfNullPr tblPersona
  loc_B369AD: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B369B2: FLdZeroAd var_130
  loc_B369B5: CVarStr var_140
  loc_B369B8: ConcatVar var_150
  loc_B369BC: CStrVarVal var_154
  loc_B369C0: FLdPr Me
  loc_B369C3: VCallAd Control_ID_DomiPersLbl
  loc_B369C6: FStAdFunc var_88
  loc_B369C9: FLdPr var_88
  loc_B369CC: Me.Caption = from_stack_1
  loc_B369D1: FFreeStr var_90 = "": var_98 = "": var_9C = ""
  loc_B369DC: FFree1Ad var_88
  loc_B369DF: FFreeVar var_AC = "": var_BC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_12C = "": var_140 = ""
  loc_B369F4: Branch loc_B36A77
  loc_B369F7: FLdRfVar var_90
  loc_B369FA: FLdPr Me
  loc_B369FD: MemLdRfVar from_stack_1.global_88
  loc_B36A00: NewIfNullPr tblPersona
  loc_B36A03: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B36A08: ILdRf var_90
  loc_B36A0B: FLdPr Me
  loc_B36A0E: MemStStrCopy
  loc_B36A12: FFree1Str var_90
  loc_B36A15: FLdPr Me
  loc_B36A18: MemLdStr global_256
  loc_B36A1B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B36A20: LitStr vbNullString
  loc_B36A23: FLdPr Me
  loc_B36A26: VCallAd Control_ID_CucuPersLbl
  loc_B36A29: FStAdFunc var_88
  loc_B36A2C: FLdPr var_88
  loc_B36A2F: Me.Caption = from_stack_1
  loc_B36A34: FFree1Ad var_88
  loc_B36A37: LitStr vbNullString
  loc_B36A3A: FLdPr Me
  loc_B36A3D: VCallAd Control_ID_DetaPersLbl
  loc_B36A40: FStAdFunc var_88
  loc_B36A43: FLdPr var_88
  loc_B36A46: Me.Caption = from_stack_1
  loc_B36A4B: FFree1Ad var_88
  loc_B36A4E: LitStr vbNullString
  loc_B36A51: FLdPr Me
  loc_B36A54: VCallAd Control_ID_DomiPersLbl
  loc_B36A57: FStAdFunc var_88
  loc_B36A5A: FLdPr var_88
  loc_B36A5D: Me.Caption = from_stack_1
  loc_B36A62: FFree1Ad var_88
  loc_B36A65: FLdPr Me
  loc_B36A68: VCallAd Control_ID_NumeCtaTxt
  loc_B36A6B: CVarAd
  loc_B36A6F: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B36A74: FFree1Var var_BC = ""
  loc_B36A77: ExitProcHresult
End Sub

Private Sub OficinaCbo_GotFocus() 'AAA2AC
  'Data Table: 4E7624
  loc_AAA1E8: Call Proc_164_23_B1FC70()
  loc_AAA1ED: LitI2_Byte 0
  loc_AAA1EF: FLdPr Me
  loc_AAA1F2: VCallAd Control_ID_SeleTodoChk
  loc_AAA1F5: FStAdFunc var_88
  loc_AAA1F8: FLdPr var_88
  loc_AAA1FB: Me.Value = from_stack_1
  loc_AAA200: FFree1Ad var_88
  loc_AAA203: LitI2_Byte 0
  loc_AAA205: FLdPr Me
  loc_AAA208: VCallAd Control_ID_HabilitarChk
  loc_AAA20B: FStAdFunc var_88
  loc_AAA20E: FLdPr var_88
  loc_AAA211: Me.Value = from_stack_1
  loc_AAA216: FFree1Ad var_88
  loc_AAA219: LitStr vbNullString
  loc_AAA21C: FLdPr Me
  loc_AAA21F: VCallAd Control_ID_PagoCuentaTxt
  loc_AAA222: FStAdFunc var_88
  loc_AAA225: FLdPr var_88
  loc_AAA228: Me.Text = from_stack_1
  loc_AAA22D: FFree1Ad var_88
  loc_AAA230: LitI4 0
  loc_AAA235: LitI4 1
  loc_AAA23A: FLdRfVar var_8C
  loc_AAA23D: Redim
  loc_AAA247: FLdPr Me
  loc_AAA24A: VCallAd Control_ID_HabilitarChk
  loc_AAA24D: CVarAd
  loc_AAA251: ParmAry1St
  loc_AAA257: FLdPr Me
  loc_AAA25A: VCallAd Control_ID_PagoCuentaTxt
  loc_AAA25D: CVarAd
  loc_AAA261: ParmAry1St
  loc_AAA267: FLdRfVar var_8C
  loc_AAA26A: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_AAA26F: FLdRfVar var_8C
  loc_AAA272: Erase
  loc_AAA273: FLdRfVar var_AE
  loc_AAA276: FLdPr Me
  loc_AAA279: VCallAd Control_ID_SeleTodoChk
  loc_AAA27C: FStAdFunc var_88
  loc_AAA27F: FLdPr var_88
  loc_AAA282:  = Me.Enabled
  loc_AAA287: FLdI2 var_AE
  loc_AAA28A: LitI2_Byte 0
  loc_AAA28C: EqI2
  loc_AAA28D: FFree1Ad var_88
  loc_AAA290: BranchF loc_AAA2A9
  loc_AAA293: LitI2_Byte &HFF
  loc_AAA295: FLdPr Me
  loc_AAA298: VCallAd Control_ID_SeleTodoChk
  loc_AAA29B: FStAdFunc var_88
  loc_AAA29E: FLdPr var_88
  loc_AAA2A1: Me.Enabled = from_stack_1b
  loc_AAA2A6: FFree1Ad var_88
  loc_AAA2A9: ExitProcHresult
End Sub

Private Sub Form_Load() 'BAC0B4
  'Data Table: 4E7624
  loc_BABA68: LitVar_Missing var_94
  loc_BABA6B: PopAdLdVar
  loc_BABA6C: LitStr "Inmueble"
  loc_BABA6F: FLdPr Me
  loc_BABA72: VCallAd Control_ID_OficinaCbo
  loc_BABA75: FStAdFunc var_98
  loc_BABA78: FLdPr var_98
  loc_BABA7B: Me.AddItem from_stack_1, from_stack_2
  loc_BABA80: FFree1Ad var_98
  loc_BABA83: LitVar_Missing var_94
  loc_BABA86: PopAdLdVar
  loc_BABA87: LitStr "Comercio"
  loc_BABA8A: FLdPr Me
  loc_BABA8D: VCallAd Control_ID_OficinaCbo
  loc_BABA90: FStAdFunc var_98
  loc_BABA93: FLdPr var_98
  loc_BABA96: Me.AddItem from_stack_1, from_stack_2
  loc_BABA9B: FFree1Ad var_98
  loc_BABA9E: LitVar_Missing var_94
  loc_BABAA1: PopAdLdVar
  loc_BABAA2: LitStr "Deudores Varios"
  loc_BABAA5: FLdPr Me
  loc_BABAA8: VCallAd Control_ID_OficinaCbo
  loc_BABAAB: FStAdFunc var_98
  loc_BABAAE: FLdPr var_98
  loc_BABAB1: Me.AddItem from_stack_1, from_stack_2
  loc_BABAB6: FFree1Ad var_98
  loc_BABAB9: LitVar_Missing var_94
  loc_BABABC: PopAdLdVar
  loc_BABABD: LitStr "Cementerio"
  loc_BABAC0: FLdPr Me
  loc_BABAC3: VCallAd Control_ID_OficinaCbo
  loc_BABAC6: FStAdFunc var_98
  loc_BABAC9: FLdPr var_98
  loc_BABACC: Me.AddItem from_stack_1, from_stack_2
  loc_BABAD1: FFree1Ad var_98
  loc_BABAD4: LitVar_Missing var_94
  loc_BABAD7: PopAdLdVar
  loc_BABAD8: LitStr "Transito"
  loc_BABADB: FLdPr Me
  loc_BABADE: VCallAd Control_ID_OficinaCbo
  loc_BABAE1: FStAdFunc var_98
  loc_BABAE4: FLdPr var_98
  loc_BABAE7: Me.AddItem from_stack_1, from_stack_2
  loc_BABAEC: FFree1Ad var_98
  loc_BABAEF: LitVar_Missing var_94
  loc_BABAF2: PopAdLdVar
  loc_BABAF3: LitStr "Publicidad"
  loc_BABAF6: FLdPr Me
  loc_BABAF9: VCallAd Control_ID_OficinaCbo
  loc_BABAFC: FStAdFunc var_98
  loc_BABAFF: FLdPr var_98
  loc_BABB02: Me.AddItem from_stack_1, from_stack_2
  loc_BABB07: FFree1Ad var_98
  loc_BABB0A: LitVar_Missing var_94
  loc_BABB0D: PopAdLdVar
  loc_BABB0E: LitStr "Antena"
  loc_BABB11: FLdPr Me
  loc_BABB14: VCallAd Control_ID_OficinaCbo
  loc_BABB17: FStAdFunc var_98
  loc_BABB1A: FLdPr var_98
  loc_BABB1D: Me.AddItem from_stack_1, from_stack_2
  loc_BABB22: FFree1Ad var_98
  loc_BABB25: LitI2_Byte 0
  loc_BABB27: FLdPr Me
  loc_BABB2A: VCallAd Control_ID_OficinaCbo
  loc_BABB2D: FStAdFunc var_98
  loc_BABB30: FLdPr var_98
  loc_BABB33: Me.ListIndex = from_stack_1
  loc_BABB38: FFree1Ad var_98
  loc_BABB3B: LitStr "0"
  loc_BABB3E: FLdPr Me
  loc_BABB41: VCallAd Control_ID_NumeCtaTxt
  loc_BABB44: FStAdFunc var_98
  loc_BABB47: FLdPr var_98
  loc_BABB4A: Me.Text = from_stack_1
  loc_BABB4F: FFree1Ad var_98
  loc_BABB52: LitI2_Byte 0
  loc_BABB54: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BABB59: CStrDate
  loc_BABB5B: CVarStr var_A8
  loc_BABB5E: PopAdLdVar
  loc_BABB5F: FLdPr Me
  loc_BABB62: VCallAd Control_ID_FechVencMsk
  loc_BABB65: FStAdFunc var_98
  loc_BABB68: FLdPr var_98
  loc_BABB6B: LateIdSt
  loc_BABB70: FFree1Ad var_98
  loc_BABB73: FFree1Var var_A8 = ""
  loc_BABB76: FLdPr Me
  loc_BABB79: VCallAd Control_ID_ctacteFlex
  loc_BABB7C: FStAdFunc var_AC
  loc_BABB7F: LitVarI4
  loc_BABB87: PopAdLdVar
  loc_BABB88: LitVarI4
  loc_BABB90: PopAdLdVar
  loc_BABB91: FLdPr var_AC
  loc_BABB94: LateIdCallSt
  loc_BABB9C: LitVarI4
  loc_BABBA4: PopAdLdVar
  loc_BABBA5: LitVarI4
  loc_BABBAD: PopAdLdVar
  loc_BABBAE: FLdPr var_AC
  loc_BABBB1: LateIdCallSt
  loc_BABBB9: LitVarI4
  loc_BABBC1: PopAdLdVar
  loc_BABBC2: LitVarI4
  loc_BABBCA: PopAdLdVar
  loc_BABBCB: FLdPr var_AC
  loc_BABBCE: LateIdCallSt
  loc_BABBD6: LitVarI4
  loc_BABBDE: PopAdLdVar
  loc_BABBDF: LitVarI4
  loc_BABBE7: PopAdLdVar
  loc_BABBE8: FLdPr var_AC
  loc_BABBEB: LateIdCallSt
  loc_BABBF3: LitVarI4
  loc_BABBFB: PopAdLdVar
  loc_BABBFC: LitVarI4
  loc_BABC04: PopAdLdVar
  loc_BABC05: FLdPr var_AC
  loc_BABC08: LateIdCallSt
  loc_BABC10: LitVarI4
  loc_BABC18: PopAdLdVar
  loc_BABC19: LitVarI4
  loc_BABC21: PopAdLdVar
  loc_BABC22: FLdPr var_AC
  loc_BABC25: LateIdCallSt
  loc_BABC2D: LitVarI4
  loc_BABC35: PopAdLdVar
  loc_BABC36: LitVarI4
  loc_BABC3E: PopAdLdVar
  loc_BABC3F: FLdPr var_AC
  loc_BABC42: LateIdCallSt
  loc_BABC4A: LitVarI4
  loc_BABC52: PopAdLdVar
  loc_BABC53: LitVarI4
  loc_BABC5B: PopAdLdVar
  loc_BABC5C: FLdPr var_AC
  loc_BABC5F: LateIdCallSt
  loc_BABC67: LitVarI4
  loc_BABC6F: PopAdLdVar
  loc_BABC70: LitVarI4
  loc_BABC78: PopAdLdVar
  loc_BABC79: FLdPr var_AC
  loc_BABC7C: LateIdCallSt
  loc_BABC84: LitVarI4
  loc_BABC8C: PopAdLdVar
  loc_BABC8D: LitVarI4
  loc_BABC95: PopAdLdVar
  loc_BABC96: FLdPr var_AC
  loc_BABC99: LateIdCallSt
  loc_BABCA1: LitVarI4
  loc_BABCA9: PopAdLdVar
  loc_BABCAA: LitVarI4
  loc_BABCB2: PopAdLdVar
  loc_BABCB3: FLdPr var_AC
  loc_BABCB6: LateIdCallSt
  loc_BABCBE: LitVarI4
  loc_BABCC6: PopAdLdVar
  loc_BABCC7: LitVarI4
  loc_BABCCF: PopAdLdVar
  loc_BABCD0: FLdPr var_AC
  loc_BABCD3: LateIdCallSt
  loc_BABCDB: LitVarI4
  loc_BABCE3: PopAdLdVar
  loc_BABCE4: LitVarI4
  loc_BABCEC: PopAdLdVar
  loc_BABCED: FLdPr var_AC
  loc_BABCF0: LateIdCallSt
  loc_BABCF8: LitVarI4
  loc_BABD00: PopAdLdVar
  loc_BABD01: LitVarI4
  loc_BABD09: PopAdLdVar
  loc_BABD0A: FLdPr var_AC
  loc_BABD0D: LateIdCallSt
  loc_BABD15: LitVarI4
  loc_BABD1D: PopAdLdVar
  loc_BABD1E: LitVarI4
  loc_BABD26: PopAdLdVar
  loc_BABD27: FLdPr var_AC
  loc_BABD2A: LateIdCallSt
  loc_BABD32: LitVarI4
  loc_BABD3A: PopAdLdVar
  loc_BABD3B: LitVarI4
  loc_BABD43: PopAdLdVar
  loc_BABD44: FLdPr var_AC
  loc_BABD47: LateIdCallSt
  loc_BABD4F: LitVarI4
  loc_BABD57: PopAdLdVar
  loc_BABD58: LitVarI4
  loc_BABD60: PopAdLdVar
  loc_BABD61: FLdPr var_AC
  loc_BABD64: LateIdCallSt
  loc_BABD6C: LitVarI4
  loc_BABD74: PopAdLdVar
  loc_BABD75: LitVarI4
  loc_BABD7D: PopAdLdVar
  loc_BABD7E: FLdPr var_AC
  loc_BABD81: LateIdCallSt
  loc_BABD89: LitVarI4
  loc_BABD91: PopAdLdVar
  loc_BABD92: LitVarI4
  loc_BABD9A: PopAdLdVar
  loc_BABD9B: LitVarStr var_EC, "O"
  loc_BABDA0: PopAdLdVar
  loc_BABDA1: FLdPr var_AC
  loc_BABDA4: LateIdCallSt
  loc_BABDAC: LitVarI4
  loc_BABDB4: PopAdLdVar
  loc_BABDB5: LitVarI4
  loc_BABDBD: PopAdLdVar
  loc_BABDBE: LitVarStr var_EC, "Cuenta"
  loc_BABDC3: PopAdLdVar
  loc_BABDC4: FLdPr var_AC
  loc_BABDC7: LateIdCallSt
  loc_BABDCF: LitVarI4
  loc_BABDD7: PopAdLdVar
  loc_BABDD8: LitVarI4
  loc_BABDE0: PopAdLdVar
  loc_BABDE1: LitVarStr var_EC, "Periodo"
  loc_BABDE6: PopAdLdVar
  loc_BABDE7: FLdPr var_AC
  loc_BABDEA: LateIdCallSt
  loc_BABDF2: LitVarI4
  loc_BABDFA: PopAdLdVar
  loc_BABDFB: LitVarI4
  loc_BABE03: PopAdLdVar
  loc_BABE04: LitVarStr var_EC, "Boleto"
  loc_BABE09: PopAdLdVar
  loc_BABE0A: FLdPr var_AC
  loc_BABE0D: LateIdCallSt
  loc_BABE15: LitVarI4
  loc_BABE1D: PopAdLdVar
  loc_BABE1E: LitVarI4
  loc_BABE26: PopAdLdVar
  loc_BABE27: LitVarStr var_EC, "Emision"
  loc_BABE2C: PopAdLdVar
  loc_BABE2D: FLdPr var_AC
  loc_BABE30: LateIdCallSt
  loc_BABE38: LitVarI4
  loc_BABE40: PopAdLdVar
  loc_BABE41: LitVarI4
  loc_BABE49: PopAdLdVar
  loc_BABE4A: LitVarStr var_EC, "Vencimien"
  loc_BABE4F: PopAdLdVar
  loc_BABE50: FLdPr var_AC
  loc_BABE53: LateIdCallSt
  loc_BABE5B: LitVarI4
  loc_BABE63: PopAdLdVar
  loc_BABE64: LitVarI4
  loc_BABE6C: PopAdLdVar
  loc_BABE6D: LitVarStr var_EC, "Concepto"
  loc_BABE72: PopAdLdVar
  loc_BABE73: FLdPr var_AC
  loc_BABE76: LateIdCallSt
  loc_BABE7E: LitVarI4
  loc_BABE86: PopAdLdVar
  loc_BABE87: LitVarI4
  loc_BABE8F: PopAdLdVar
  loc_BABE90: LitVarStr var_EC, "R."
  loc_BABE95: PopAdLdVar
  loc_BABE96: FLdPr var_AC
  loc_BABE99: LateIdCallSt
  loc_BABEA1: LitVarI4
  loc_BABEA9: PopAdLdVar
  loc_BABEAA: LitVarI4
  loc_BABEB2: PopAdLdVar
  loc_BABEB3: LitVarStr var_EC, "Facilidad"
  loc_BABEB8: PopAdLdVar
  loc_BABEB9: FLdPr var_AC
  loc_BABEBC: LateIdCallSt
  loc_BABEC4: LitVarI4
  loc_BABECC: PopAdLdVar
  loc_BABECD: LitVarI4
  loc_BABED5: PopAdLdVar
  loc_BABED6: LitVarStr var_EC, "Apremio"
  loc_BABEDB: PopAdLdVar
  loc_BABEDC: FLdPr var_AC
  loc_BABEDF: LateIdCallSt
  loc_BABEE7: LitVarI4
  loc_BABEEF: PopAdLdVar
  loc_BABEF0: LitVarI4
  loc_BABEF8: PopAdLdVar
  loc_BABEF9: LitVarStr var_EC, "Expedie/Comprob"
  loc_BABEFE: PopAdLdVar
  loc_BABEFF: FLdPr var_AC
  loc_BABF02: LateIdCallSt
  loc_BABF0A: LitVarI4
  loc_BABF12: PopAdLdVar
  loc_BABF13: LitVarI4
  loc_BABF1B: PopAdLdVar
  loc_BABF1C: LitVarStr var_EC, "Tipo M."
  loc_BABF21: PopAdLdVar
  loc_BABF22: FLdPr var_AC
  loc_BABF25: LateIdCallSt
  loc_BABF2D: LitVarI4
  loc_BABF35: PopAdLdVar
  loc_BABF36: LitVarI4
  loc_BABF3E: PopAdLdVar
  loc_BABF3F: LitVarStr var_EC, "Debito"
  loc_BABF44: PopAdLdVar
  loc_BABF45: FLdPr var_AC
  loc_BABF48: LateIdCallSt
  loc_BABF50: LitVarI4
  loc_BABF58: PopAdLdVar
  loc_BABF59: LitVarI4
  loc_BABF61: PopAdLdVar
  loc_BABF62: LitVarStr var_EC, "Recargo"
  loc_BABF67: PopAdLdVar
  loc_BABF68: FLdPr var_AC
  loc_BABF6B: LateIdCallSt
  loc_BABF73: LitVarI4
  loc_BABF7B: PopAdLdVar
  loc_BABF7C: LitVarI4
  loc_BABF84: PopAdLdVar
  loc_BABF85: LitVarStr var_EC, "Saldo"
  loc_BABF8A: PopAdLdVar
  loc_BABF8B: FLdPr var_AC
  loc_BABF8E: LateIdCallSt
  loc_BABF96: LitVarI4
  loc_BABF9E: PopAdLdVar
  loc_BABF9F: LitVarI4
  loc_BABFA7: PopAdLdVar
  loc_BABFA8: LitVarStr var_EC, "Sel"
  loc_BABFAD: PopAdLdVar
  loc_BABFAE: FLdPr var_AC
  loc_BABFB1: LateIdCallSt
  loc_BABFB9: LitVarI4
  loc_BABFC1: PopAdLdVar
  loc_BABFC2: LitVarI4
  loc_BABFCA: PopAdLdVar
  loc_BABFCB: LitVarStr var_EC, "Numero"
  loc_BABFD0: PopAdLdVar
  loc_BABFD1: FLdPr var_AC
  loc_BABFD4: LateIdCallSt
  loc_BABFDC: LitVarI4
  loc_BABFE4: PopAdLdVar
  loc_BABFE5: LitVarI4
  loc_BABFED: PopAdLdVar
  loc_BABFEE: LitVarStr var_EC, "Mov"
  loc_BABFF3: PopAdLdVar
  loc_BABFF4: FLdPr var_AC
  loc_BABFF7: LateIdCallSt
  loc_BABFFF: LitNothing
  loc_BAC001: FStAd var_AC 
  loc_BAC005: LitStr "SELECT * FROM paragene ORDER BY CodiPage"
  loc_BAC008: FLdPr Me
  loc_BAC00B: MemLdRfVar from_stack_1.global_52
  loc_BAC00E: NewIfNullPr clsparagene
  loc_BAC011: Call clsparagene.RedefineRS(from_stack_1v)
  loc_BAC016: FLdRfVar var_100
  loc_BAC019: FLdPr Me
  loc_BAC01C: MemLdRfVar from_stack_1.global_52
  loc_BAC01F: NewIfNullPr clsparagene
  loc_BAC022: from_stack_1 = clsparagene.RecordCount
  loc_BAC027: ILdRf var_100
  loc_BAC02A: LitI4 0
  loc_BAC02F: GtI4
  loc_BAC030: BranchF loc_BAC064
  loc_BAC033: FLdPr Me
  loc_BAC036: MemLdRfVar from_stack_1.global_52
  loc_BAC039: NewIfNullPr clsparagene
  loc_BAC03C: Call clsparagene.MoveLast()
  loc_BAC041: FLdRfVar var_104
  loc_BAC044: FLdPr Me
  loc_BAC047: MemLdRfVar from_stack_1.global_52
  loc_BAC04A: NewIfNullPr clsparagene
  loc_BAC04D: from_stack_1 = clsparagene.FosePage
  loc_BAC052: ILdRf var_104
  loc_BAC055: FLdPr Me
  loc_BAC058: MemLdRfVar from_stack_1.global_96
  loc_BAC05B: StFixedStr
  loc_BAC05E: FFree1Str var_104
  loc_BAC061: Branch loc_BAC070
  loc_BAC064: LitStr "No"
  loc_BAC067: FLdPr Me
  loc_BAC06A: MemLdRfVar from_stack_1.global_96
  loc_BAC06D: StFixedStr
  loc_BAC070: LitI4 0
  loc_BAC075: LitI4 1
  loc_BAC07A: FLdRfVar var_108
  loc_BAC07D: Redim
  loc_BAC087: FLdPr Me
  loc_BAC08A: VCallAd Control_ID_HabilitarChk
  loc_BAC08D: CVarAd
  loc_BAC091: ParmAry1St
  loc_BAC097: FLdPr Me
  loc_BAC09A: VCallAd Control_ID_PagoCuentaTxt
  loc_BAC09D: CVarAd
  loc_BAC0A1: ParmAry1St
  loc_BAC0A7: FLdRfVar var_108
  loc_BAC0AA: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BAC0AF: FLdRfVar var_108
  loc_BAC0B2: Erase
  loc_BAC0B3: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9DBE34
  'Data Table: 4E7624
  loc_9DBE1C: ILdI2 KeyAscii
  loc_9DBE1F: LitI2_Byte &HD
  loc_9DBE21: EqI2
  loc_9DBE22: BranchF loc_9DBE33
  loc_9DBE25: LitVar_TRUE var_A4
  loc_9DBE28: LitStr "{Tab}"
  loc_9DBE2B: ImpAdCallFPR4 SendKeys , 
  loc_9DBE30: FFree1Var var_A4 = ""
  loc_9DBE33: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BB360
  'Data Table: 4E7624
  loc_9BB34C: ILdI2 KeyCode
  loc_9BB34F: CI4UI1
  loc_9BB350: LitI4 &H78
  loc_9BB355: EqI4
  loc_9BB356: BranchF loc_9BB35E
  loc_9BB359: Call SalirCmd_Click()
  loc_9BB35E: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9DBFB0
  'Data Table: 4E7624
  loc_9DBF98: ILdRf Me
  loc_9DBF9B: FStAdNoPop
  loc_9DBF9F: ImpAdLdRf MemVar_D9C5D8
  loc_9DBFA2: NewIfNullPr Global
  loc_9DBFA5: Global.Unload from_stack_1
  loc_9DBFAA: FFree1Ad var_88
  loc_9DBFAD: ExitProcHresult
  loc_9DBFAE: FStStr var_53F9
End Sub

Private Sub FechVencMsk_UnknownEvent_0 'A06E8C
  'Data Table: 4E7624
  loc_A06E5C: Call Proc_164_23_B1FC70()
  loc_A06E61: LitI2_Byte 0
  loc_A06E63: FLdPr Me
  loc_A06E66: VCallAd Control_ID_SeleTodoChk
  loc_A06E69: FStAdFunc var_88
  loc_A06E6C: FLdPr var_88
  loc_A06E6F: Me.Value = from_stack_1
  loc_A06E74: FFree1Ad var_88
  loc_A06E77: FLdPr Me
  loc_A06E7A: VCallAd Control_ID_FechVencMsk
  loc_A06E7D: CVarAd
  loc_A06E81: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_A06E86: FFree1Var var_98 = ""
  loc_A06E89: ExitProcHresult
  loc_A06E8A: FStAdFunc var_53E0
End Sub

Private Function FechVencMsk_UnknownEvent_8(arg_C) 'A816CC
  'Data Table: 4E7624
  loc_A81644: FLdPr Me
  loc_A81647: VCallAd Control_ID_FechVencMsk
  loc_A8164A: FStAdFunc var_88
  loc_A8164D: FLdPr var_88
  loc_A81650: LateIdLdVar var_98 DispID_13 -32767
  loc_A81657: CBoolVar
  loc_A81659: LitI2_Byte &HFF
  loc_A8165B: EqI2
  loc_A8165C: FFree1Ad var_88
  loc_A8165F: FFree1Var var_98 = ""
  loc_A81662: BranchF loc_A816C9
  loc_A81665: FLdPr Me
  loc_A81668: VCallAd Control_ID_FechVencMsk
  loc_A8166B: FStAdFunc var_88
  loc_A8166E: FLdPr var_88
  loc_A81671: LateIdLdVar var_98 DispID_15 0
  loc_A81678: CStrVarTmp
  loc_A81679: FStStrNoPop var_9C
  loc_A8167C: ImpAdCallI2 Proc_18_6_A08898()
  loc_A81681: FStStrNoPop var_A0
  loc_A81684: FLdPr Me
  loc_A81687: MemStStrCopy
  loc_A8168B: FFreeStr var_9C = ""
  loc_A81692: FFree1Ad var_88
  loc_A81695: FFree1Var var_98 = ""
  loc_A81698: FLdPr Me
  loc_A8169B: MemLdStr global_256
  loc_A8169E: LitStr vbNullString
  loc_A816A1: NeStr
  loc_A816A3: BranchF loc_A816C9
  loc_A816A6: FLdPr Me
  loc_A816A9: MemLdStr global_256
  loc_A816AC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A816B1: FLdPr Me
  loc_A816B4: VCallAd Control_ID_FechVencMsk
  loc_A816B7: CVarAd
  loc_A816BB: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A816C0: FFree1Var var_98 = ""
  loc_A816C3: LitI2_Byte &HFF
  loc_A816C5: IStI2 arg_C
  loc_A816C8: ExitProcHresult
  loc_A816C9: ExitProcHresult
End Function

Private Sub FechVencMsk_KeyPress(KeyAscii As Integer) 'A24218
  'Data Table: 4E7624
  loc_A241D0: ILdI2 KeyAscii
  loc_A241D3: CI4UI1
  loc_A241D4: LitI4 &H20
  loc_A241D9: EqI4
  loc_A241DA: BranchF loc_A24217
  loc_A241DD: LitVar_Missing var_A4
  loc_A241E0: PopAdLdVar
  loc_A241E1: LitVarI4
  loc_A241E9: PopAdLdVar
  loc_A241EA: ImpAdLdRf MemVar_D930A4
  loc_A241ED: NewIfNullPr frmCalendario
  loc_A241F0: frmCalendario.Show from_stack_1, from_stack_2
  loc_A241F5: ImpAdLdRf MemVar_D93028
  loc_A241F8: CDargRef
  loc_A241FC: FLdPr Me
  loc_A241FF: VCallAd Control_ID_FechVencMsk
  loc_A24202: FStAdFunc var_A8
  loc_A24205: FLdPr var_A8
  loc_A24208: LateIdSt
  loc_A2420D: FFree1Ad var_A8
  loc_A24210: LitStr vbNullString
  loc_A24213: ImpAdStStrCopy MemVar_D93028
  loc_A24217: ExitProcHresult
End Sub

Private Sub cmdGenerarBoleto_Click() 'D68CF4
  'Data Table: 4E7624
  loc_D605FC: LitI2_Byte 0
  loc_D605FE: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_D60603: CVarDate var_144
  loc_D60607: FLdRfVar var_154
  loc_D6060A: ImpAdCallFPR4  = Year()
  loc_D6060F: FLdRfVar var_154
  loc_D60612: CI2Var
  loc_D60613: FStI2 var_86
  loc_D60616: FFreeVar var_144 = ""
  loc_D6061D: LitI2_Byte 0
  loc_D6061F: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_D60624: FStFPR8 var_C8
  loc_D60627: LitI2_Byte 0
  loc_D60629: FStI2 var_88
  loc_D6062C: FLdPr Me
  loc_D6062F: VCallAd Control_ID_ctacteFlex
  loc_D60632: FStAdFunc var_158
  loc_D60635: FLdPr var_158
  loc_D60638: LateIdLdVar var_144 DispID_4 0
  loc_D6063F: CI4Var
  loc_D60641: LitI4 1
  loc_D60646: LeI4
  loc_D60647: FFree1Ad var_158
  loc_D6064A: FFree1Var var_144 = ""
  loc_D6064D: BranchF loc_D60682
  loc_D60650: LitVar_Missing var_1A8
  loc_D60653: LitVar_Missing var_188
  loc_D60656: LitVarStr var_168, "InfoGov"
  loc_D6065B: FStVarCopyObj var_154
  loc_D6065E: FLdRfVar var_154
  loc_D60661: LitI4 &H30
  loc_D60666: LitVarStr var_134, "Debe seleccionar deuda para generar boleto. Reintente..."
  loc_D6066B: FStVarCopyObj var_144
  loc_D6066E: FLdRfVar var_144
  loc_D60671: ImpAdCallFPR4 MsgBox(, , , , )
  loc_D60676: FFreeVar var_144 = "": var_154 = "": var_188 = ""
  loc_D60681: ExitProcHresult
  loc_D60682: LitI2_Byte 1
  loc_D60684: FLdPr Me
  loc_D60687: MemLdRfVar from_stack_1.global_100
  loc_D6068A: FLdPr Me
  loc_D6068D: VCallAd Control_ID_ctacteFlex
  loc_D60690: FStAdFunc var_158
  loc_D60693: FLdPr var_158
  loc_D60696: LateIdLdVar var_144 DispID_4 0
  loc_D6069D: CI4Var
  loc_D6069F: LitI4 1
  loc_D606A4: SubI4
  loc_D606A5: CI2I4
  loc_D606A6: FFree1Ad var_158
  loc_D606A9: FFree1Var var_144 = ""
  loc_D606AC: ForI2 var_1AC
  loc_D606B2: FLdPr Me
  loc_D606B5: MemLdI2 global_100
  loc_D606B8: CI4UI1
  loc_D606B9: CVarI4
  loc_D606BD: PopAdLdVar
  loc_D606BE: LitVarI4
  loc_D606C6: PopAdLdVar
  loc_D606C7: FLdPr Me
  loc_D606CA: VCallAd Control_ID_ctacteFlex
  loc_D606CD: FStAdFunc var_158
  loc_D606D0: FLdPr var_158
  loc_D606D3: LateIdCallLdVar
  loc_D606DD: CStrVarTmp
  loc_D606DE: FStStrNoPop var_1B0
  loc_D606E1: LitStr "Si"
  loc_D606E4: EqStr
  loc_D606E6: FFree1Str var_1B0
  loc_D606E9: FFree1Ad var_158
  loc_D606EC: FFree1Var var_144 = ""
  loc_D606EF: BranchF loc_D606F7
  loc_D606F2: LitI2_Byte &HFF
  loc_D606F4: FStI2 var_88
  loc_D606F7: FLdPr Me
  loc_D606FA: MemLdRfVar from_stack_1.global_100
  loc_D606FD: NextI2 var_1AC, loc_D606B2
  loc_D60702: FLdI2 var_88
  loc_D60705: LitI2_Byte 0
  loc_D60707: EqI2
  loc_D60708: BranchF loc_D6073D
  loc_D6070B: LitVar_Missing var_1A8
  loc_D6070E: LitVar_Missing var_188
  loc_D60711: LitVarStr var_168, "InfoGov"
  loc_D60716: FStVarCopyObj var_154
  loc_D60719: FLdRfVar var_154
  loc_D6071C: LitI4 &H30
  loc_D60721: LitVarStr var_134, "Debe Seleccionar por lo menos un item. Reintente..."
  loc_D60726: FStVarCopyObj var_144
  loc_D60729: FLdRfVar var_144
  loc_D6072C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_D60731: FFreeVar var_144 = "": var_154 = "": var_188 = ""
  loc_D6073C: ExitProcHresult
  loc_D6073D: FLdRfVar var_1B0
  loc_D60740: FLdPr Me
  loc_D60743: VCallAd Control_ID_CucuPersLbl
  loc_D60746: FStAdFunc var_158
  loc_D60749: FLdPr var_158
  loc_D6074C:  = Me.Caption
  loc_D60751: ILdRf var_1B0
  loc_D60754: LitStr vbNullString
  loc_D60757: EqStr
  loc_D60759: FFree1Str var_1B0
  loc_D6075C: FFree1Ad var_158
  loc_D6075F: BranchF loc_D60793
  loc_D60762: LitVar_Missing var_1A8
  loc_D60765: LitVar_Missing var_188
  loc_D60768: LitVarStr var_168, "InfoGov"
  loc_D6076D: FStVarCopyObj var_154
  loc_D60770: FLdRfVar var_154
  loc_D60773: LitI4 &H30
  loc_D60778: LitVarStr var_134, "NO existe el CUIT. "
  loc_D6077D: FStVarCopyObj var_144
  loc_D60780: FLdRfVar var_144
  loc_D60783: ImpAdCallFPR4 MsgBox(, , , , )
  loc_D60788: FFreeVar var_144 = "": var_154 = "": var_188 = ""
  loc_D60793: FLdRfVar var_1B0
  loc_D60796: FLdPr Me
  loc_D60799: VCallAd Control_ID_DetaPersLbl
  loc_D6079C: FStAdFunc var_158
  loc_D6079F: FLdPr var_158
  loc_D607A2:  = Me.Caption
  loc_D607A7: ILdRf var_1B0
  loc_D607AA: LitStr vbNullString
  loc_D607AD: EqStr
  loc_D607AF: FFree1Str var_1B0
  loc_D607B2: FFree1Ad var_158
  loc_D607B5: BranchF loc_D607EA
  loc_D607B8: LitVar_Missing var_1A8
  loc_D607BB: LitVar_Missing var_188
  loc_D607BE: LitVarStr var_168, "InfoGov"
  loc_D607C3: FStVarCopyObj var_154
  loc_D607C6: FLdRfVar var_154
  loc_D607C9: LitI4 &H30
  loc_D607CE: LitVarStr var_134, "No existe el Apellido y Nombre no se puede emitir el boleto. Reintente..."
  loc_D607D3: FStVarCopyObj var_144
  loc_D607D6: FLdRfVar var_144
  loc_D607D9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_D607DE: FFreeVar var_144 = "": var_154 = "": var_188 = ""
  loc_D607E9: ExitProcHresult
  loc_D607EA: LitI2_Byte 0
  loc_D607EC: CR8I2
  loc_D607ED: FLdPr Me
  loc_D607F0: MemStFPR8 global_112
  loc_D607F3: LitI2_Byte 0
  loc_D607F5: CR8I2
  loc_D607F6: FStFPR8 var_B8
  loc_D607F9: LitI2_Byte 0
  loc_D607FB: CR8I2
  loc_D607FC: FLdPr Me
  loc_D607FF: MemStFPR8 global_152
  loc_D60802: LitI2_Byte 0
  loc_D60804: CR8I2
  loc_D60805: FLdPr Me
  loc_D60808: MemStFPR8 global_160
  loc_D6080B: LitI2_Byte 0
  loc_D6080D: CR8I2
  loc_D6080E: ImpAdStFPR8 MemVar_D93040
  loc_D60811: LitI2_Byte 0
  loc_D60813: CR8I2
  loc_D60814: ImpAdStFPR8 MemVar_D93048
  loc_D60817: LitI2_Byte 0
  loc_D60819: CR8I2
  loc_D6081A: ImpAdStFPR8 MemVar_D93058
  loc_D6081D: LitI2_Byte 0
  loc_D6081F: CR8I2
  loc_D60820: ImpAdStFPR8 MemVar_D93050
  loc_D60823: LitI2_Byte 0
  loc_D60825: CR8I2
  loc_D60826: ImpAdStFPR8 MemVar_D93060
  loc_D60829: LitI2_Byte 0
  loc_D6082B: CR8I2
  loc_D6082C: ImpAdStFPR8 MemVar_D93070
  loc_D6082F: LitI2_Byte 0
  loc_D60831: CR8I2
  loc_D60832: FStFPR8 var_E4
  loc_D60835: LitI2_Byte 0
  loc_D60837: CR8I2
  loc_D60838: FStFPR8 var_EC
  loc_D6083B: LitStr "SELECT tmp_ctacteboleto.PeriInfo, tmp_ctacteboleto.CodiConc FROM tmp_ctacteboleto "
  loc_D6083E: LitStr " WHERE (tmp_ctacteboleto.SaldCtct > 0"
  loc_D60841: ConcatStr
  loc_D60842: FStStrNoPop var_1B0
  loc_D60845: LitStr " OR tmp_ctacteboleto.RecaCtct > 0)"
  loc_D60848: ConcatStr
  loc_D60849: FStStrNoPop var_1B4
  loc_D6084C: LitStr " AND tmp_ctacteboleto.SeleCtct = 'Si'"
  loc_D6084F: ConcatStr
  loc_D60850: FStStrNoPop var_1B8
  loc_D60853: LitStr " GROUP BY  tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.CodiConc"
  loc_D60856: ConcatStr
  loc_D60857: FStStrNoPop var_1BC
  loc_D6085A: LitStr " ORDER BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.CodiConc"
  loc_D6085D: ConcatStr
  loc_D6085E: FStStrNoPop var_1C0
  loc_D60861: FLdPr Me
  loc_D60864: MemLdRfVar from_stack_1.global_64
  loc_D60867: NewIfNullPr clsctacte
  loc_D6086A: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D6086F: FFreeStr var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = ""
  loc_D6087C: FLdRfVar var_1C4
  loc_D6087F: FLdRfVar var_158
  loc_D60882: FLdPr Me
  loc_D60885: MemLdRfVar from_stack_1.global_64
  loc_D60888: NewIfNullPr clsctacte
  loc_D6088B: from_stack_1v = clsctacte.RsFrmGet()
  loc_D60890: FLdPr var_158
  loc_D60893:  = Me.RecordCount
  loc_D60898: ILdRf var_1C4
  loc_D6089B: LitI4 0
  loc_D608A0: GtI4
  loc_D608A1: FFree1Ad var_158
  loc_D608A4: BranchF loc_D60AAA
  loc_D608A7: FLdRfVar var_158
  loc_D608AA: FLdPr Me
  loc_D608AD: MemLdRfVar from_stack_1.global_64
  loc_D608B0: NewIfNullPr clsctacte
  loc_D608B3: from_stack_1v = clsctacte.RsFrmGet()
  loc_D608B8: FLdPr var_158
  loc_D608BB: Me.MoveFirst
  loc_D608C0: FFree1Ad var_158
  loc_D608C3: FLdRfVar var_1C6
  loc_D608C6: FLdRfVar var_158
  loc_D608C9: FLdPr Me
  loc_D608CC: MemLdRfVar from_stack_1.global_64
  loc_D608CF: NewIfNullPr clsctacte
  loc_D608D2: from_stack_1v = clsctacte.RsFrmGet()
  loc_D608D7: FLdPr var_158
  loc_D608DA:  = Me.EOF
  loc_D608DF: FLdI2 var_1C6
  loc_D608E2: NotI4
  loc_D608E3: FFree1Ad var_158
  loc_D608E6: BranchF loc_D60AAA
  loc_D608E9: FLdRfVar var_144
  loc_D608EC: FLdRfVar var_1D0
  loc_D608EF: LitVarStr var_134, "CodiConc"
  loc_D608F4: PopAdLdVar
  loc_D608F5: FLdRfVar var_1CC
  loc_D608F8: FLdRfVar var_158
  loc_D608FB: FLdPr Me
  loc_D608FE: MemLdRfVar from_stack_1.global_64
  loc_D60901: NewIfNullPr clsctacte
  loc_D60904: from_stack_1v = clsctacte.RsFrmGet()
  loc_D60909: FLdPr var_158
  loc_D6090C:  = Me.Fields
  loc_D60911: FLdPr var_1CC
  loc_D60914: from_stack_2 = Me.Item(from_stack_1)
  loc_D60919: FLdPr var_1D0
  loc_D6091C:  = Me.Value
  loc_D60921: FLdRfVar var_144
  loc_D60924: CStrVarTmp
  loc_D60925: FStStrNoPop var_1B0
  loc_D60928: ImpAdLdI2 MemVar_D93034
  loc_D6092B: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_D60930: FStStrNoPop var_1B4
  loc_D60933: LitStr vbNullString
  loc_D60936: EqStr
  loc_D60938: FFreeStr var_1B0 = ""
  loc_D6093F: FFreeAd var_158 = "": var_1CC = ""
  loc_D60948: FFree1Var var_144 = ""
  loc_D6094B: BranchF loc_D609BA
  loc_D6094E: LitVarStr var_168, "El recurso: "
  loc_D60953: FLdRfVar var_144
  loc_D60956: FLdRfVar var_1D0
  loc_D60959: LitVarStr var_134, "CodiConc"
  loc_D6095E: PopAdLdVar
  loc_D6095F: FLdRfVar var_1CC
  loc_D60962: FLdRfVar var_158
  loc_D60965: FLdPr Me
  loc_D60968: MemLdRfVar from_stack_1.global_64
  loc_D6096B: NewIfNullPr clsctacte
  loc_D6096E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D60973: FLdPr var_158
  loc_D60976:  = Me.Fields
  loc_D6097B: FLdPr var_1CC
  loc_D6097E: from_stack_2 = Me.Item(from_stack_1)
  loc_D60983: FLdPr var_1D0
  loc_D60986:  = Me.Value
  loc_D6098B: FLdRfVar var_144
  loc_D6098E: ConcatVar var_154
  loc_D60992: LitVarStr var_178, " No tiene asociado ninguna cuenta de ingresos. No se emite el boleto."
  loc_D60997: ConcatVar var_188
  loc_D6099B: CStrVarVal var_1B0
  loc_D6099F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D609A4: FFree1Str var_1B0
  loc_D609A7: FFreeAd var_158 = "": var_1CC = ""
  loc_D609B0: FFreeVar var_144 = "": var_154 = ""
  loc_D609B9: ExitProcHresult
  loc_D609BA: FLdRfVar var_144
  loc_D609BD: FLdRfVar var_1D0
  loc_D609C0: LitVarStr var_134, "CodiConc"
  loc_D609C5: PopAdLdVar
  loc_D609C6: FLdRfVar var_1CC
  loc_D609C9: FLdRfVar var_158
  loc_D609CC: FLdPr Me
  loc_D609CF: MemLdRfVar from_stack_1.global_64
  loc_D609D2: NewIfNullPr clsctacte
  loc_D609D5: from_stack_1v = clsctacte.RsFrmGet()
  loc_D609DA: FLdPr var_158
  loc_D609DD:  = Me.Fields
  loc_D609E2: FLdPr var_1CC
  loc_D609E5: from_stack_2 = Me.Item(from_stack_1)
  loc_D609EA: FLdPr var_1D0
  loc_D609ED:  = Me.Value
  loc_D609F2: FLdRfVar var_144
  loc_D609F5: CStrVarTmp
  loc_D609F6: FStStrNoPop var_1B0
  loc_D609F9: ImpAdLdI2 MemVar_D93034
  loc_D609FC: ImpAdCallI2 Proc_18_77_AC5F18(, )
  loc_D60A01: FStStrNoPop var_1B4
  loc_D60A04: LitStr vbNullString
  loc_D60A07: NeStr
  loc_D60A09: FFreeStr var_1B0 = ""
  loc_D60A10: FFreeAd var_158 = "": var_1CC = ""
  loc_D60A19: FFree1Var var_144 = ""
  loc_D60A1C: BranchF loc_D60A8B
  loc_D60A1F: LitVarStr var_168, "El concepto: "
  loc_D60A24: FLdRfVar var_144
  loc_D60A27: FLdRfVar var_1D0
  loc_D60A2A: LitVarStr var_134, "CodiConc"
  loc_D60A2F: PopAdLdVar
  loc_D60A30: FLdRfVar var_1CC
  loc_D60A33: FLdRfVar var_158
  loc_D60A36: FLdPr Me
  loc_D60A39: MemLdRfVar from_stack_1.global_64
  loc_D60A3C: NewIfNullPr clsctacte
  loc_D60A3F: from_stack_1v = clsctacte.RsFrmGet()
  loc_D60A44: FLdPr var_158
  loc_D60A47:  = Me.Fields
  loc_D60A4C: FLdPr var_1CC
  loc_D60A4F: from_stack_2 = Me.Item(from_stack_1)
  loc_D60A54: FLdPr var_1D0
  loc_D60A57:  = Me.Value
  loc_D60A5C: FLdRfVar var_144
  loc_D60A5F: ConcatVar var_154
  loc_D60A63: LitVarStr var_178, " No tiene asociado ningún tipo de movimiento. No se emite el boleto."
  loc_D60A68: ConcatVar var_188
  loc_D60A6C: CStrVarVal var_1B0
  loc_D60A70: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D60A75: FFree1Str var_1B0
  loc_D60A78: FFreeAd var_158 = "": var_1CC = ""
  loc_D60A81: FFreeVar var_144 = "": var_154 = ""
  loc_D60A8A: ExitProcHresult
  loc_D60A8B: FLdRfVar var_158
  loc_D60A8E: FLdPr Me
  loc_D60A91: MemLdRfVar from_stack_1.global_64
  loc_D60A94: NewIfNullPr clsctacte
  loc_D60A97: from_stack_1v = clsctacte.RsFrmGet()
  loc_D60A9C: FLdPr var_158
  loc_D60A9F: Me.MoveNext
  loc_D60AA4: FFree1Ad var_158
  loc_D60AA7: Branch loc_D608C3
  loc_D60AAA: LitI2_Byte 0
  loc_D60AAC: FStI2 var_DC
  loc_D60AAF: LitI2_Byte 0
  loc_D60AB1: CR8I2
  loc_D60AB2: FStFPR8 var_C0
  loc_D60AB5: LitStr "SELECT tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.PeriCtct, tmp_ctacteboleto.BimeCtct, tmp_ctacteboleto.NumeCtct, MoviCtct, CodiFapa, CuotDefa, tmp_ctacteboleto.PeriInfo, tmp_ctacteboleto.FealCtct, tmp_ctacteboleto.CodiConc, descconc.DereDeco, descconc.DecaDeco, RecaCtct, ExpeCtct, SaldCtct, SeleCtct, ApdeCtct, NufaCtct FROM tmp_ctacteboleto "
  loc_D60AB8: LitStr " LEFT JOIN descconc ON descconc.PeriInfo = tmp_ctacteboleto.PeriCtct"
  loc_D60ABB: ConcatStr
  loc_D60ABC: FStStrNoPop var_1B0
  loc_D60ABF: LitStr " AND descconc.CodiConc = tmp_ctacteboleto.CodiConc"
  loc_D60AC2: ConcatStr
  loc_D60AC3: FStStrNoPop var_1B4
  loc_D60AC6: LitStr " WHERE (tmp_ctacteboleto.SaldCtct > 0"
  loc_D60AC9: ConcatStr
  loc_D60ACA: FStStrNoPop var_1B8
  loc_D60ACD: LitStr " OR tmp_ctacteboleto.RecaCtct > 0)"
  loc_D60AD0: ConcatStr
  loc_D60AD1: FStStrNoPop var_1BC
  loc_D60AD4: LitStr " AND tmp_ctacteboleto.SeleCtct = 'Si'"
  loc_D60AD7: ConcatStr
  loc_D60AD8: FStStrNoPop var_1C0
  loc_D60ADB: LitStr " ORDER BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.PeriCtct, tmp_ctacteboleto.BimeCtct, tmp_ctacteboleto.NumeCtct, tmp_ctacteboleto.MoviCtct"
  loc_D60ADE: ConcatStr
  loc_D60ADF: FStStrNoPop var_1D4
  loc_D60AE2: FLdPr Me
  loc_D60AE5: MemLdRfVar from_stack_1.global_64
  loc_D60AE8: NewIfNullPr clsctacte
  loc_D60AEB: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D60AF0: FFreeStr var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = ""
  loc_D60AFF: FLdRfVar var_1C4
  loc_D60B02: FLdRfVar var_158
  loc_D60B05: FLdPr Me
  loc_D60B08: MemLdRfVar from_stack_1.global_64
  loc_D60B0B: NewIfNullPr clsctacte
  loc_D60B0E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D60B13: FLdPr var_158
  loc_D60B16:  = Me.RecordCount
  loc_D60B1B: ILdRf var_1C4
  loc_D60B1E: LitI4 0
  loc_D60B23: GtI4
  loc_D60B24: FFree1Ad var_158
  loc_D60B27: BranchF loc_D613BD
  loc_D60B2A: FLdRfVar var_158
  loc_D60B2D: FLdPr Me
  loc_D60B30: MemLdRfVar from_stack_1.global_64
  loc_D60B33: NewIfNullPr clsctacte
  loc_D60B36: from_stack_1v = clsctacte.RsFrmGet()
  loc_D60B3B: FLdPr var_158
  loc_D60B3E: Me.MoveFirst
  loc_D60B43: FFree1Ad var_158
  loc_D60B46: FLdRfVar var_1C6
  loc_D60B49: FLdRfVar var_158
  loc_D60B4C: FLdPr Me
  loc_D60B4F: MemLdRfVar from_stack_1.global_64
  loc_D60B52: NewIfNullPr clsctacte
  loc_D60B55: from_stack_1v = clsctacte.RsFrmGet()
  loc_D60B5A: FLdPr var_158
  loc_D60B5D:  = Me.EOF
  loc_D60B62: FLdI2 var_1C6
  loc_D60B65: NotI4
  loc_D60B66: FFree1Ad var_158
  loc_D60B69: BranchF loc_D613BD
  loc_D60B6C: FLdRfVar var_144
  loc_D60B6F: FLdRfVar var_1D0
  loc_D60B72: LitVarStr var_134, "CodiFapa"
  loc_D60B77: PopAdLdVar
  loc_D60B78: FLdRfVar var_1CC
  loc_D60B7B: FLdRfVar var_158
  loc_D60B7E: FLdPr Me
  loc_D60B81: MemLdRfVar from_stack_1.global_64
  loc_D60B84: NewIfNullPr clsctacte
  loc_D60B87: from_stack_1v = clsctacte.RsFrmGet()
  loc_D60B8C: FLdPr var_158
  loc_D60B8F:  = Me.Fields
  loc_D60B94: FLdPr var_1CC
  loc_D60B97: from_stack_2 = Me.Item(from_stack_1)
  loc_D60B9C: FLdPr var_1D0
  loc_D60B9F:  = Me.Value
  loc_D60BA4: FLdRfVar var_144
  loc_D60BA7: FnCLngVar
  loc_D60BA9: LitI4 0
  loc_D60BAE: EqI4
  loc_D60BAF: FFreeAd var_158 = "": var_1CC = ""
  loc_D60BB8: FFree1Var var_144 = ""
  loc_D60BBB: BranchF loc_D60FAE
  loc_D60BBE: FLdRfVar var_144
  loc_D60BC1: FLdRfVar var_1D0
  loc_D60BC4: LitVarStr var_134, "PeriCtct"
  loc_D60BC9: PopAdLdVar
  loc_D60BCA: FLdRfVar var_1CC
  loc_D60BCD: FLdRfVar var_158
  loc_D60BD0: FLdPr Me
  loc_D60BD3: MemLdRfVar from_stack_1.global_64
  loc_D60BD6: NewIfNullPr clsctacte
  loc_D60BD9: from_stack_1v = clsctacte.RsFrmGet()
  loc_D60BDE: FLdPr var_158
  loc_D60BE1:  = Me.Fields
  loc_D60BE6: FLdPr var_1CC
  loc_D60BE9: from_stack_2 = Me.Item(from_stack_1)
  loc_D60BEE: FLdPr var_1D0
  loc_D60BF1:  = Me.Value
  loc_D60BF6: FLdRfVar var_144
  loc_D60BF9: FnCIntVar
  loc_D60BFB: ImpAdLdI2 MemVar_D93034
  loc_D60BFE: LtI2
  loc_D60BFF: FLdI2 var_DC
  loc_D60C02: LitI2_Byte 0
  loc_D60C04: EqI2
  loc_D60C05: AndI4
  loc_D60C06: ImpAdLdUI1
  loc_D60C0A: CI2UI1
  loc_D60C0C: LitI2_Byte 5
  loc_D60C0E: NeI2
  loc_D60C0F: AndI4
  loc_D60C10: FFreeAd var_158 = "": var_1CC = ""
  loc_D60C19: FFree1Var var_144 = ""
  loc_D60C1C: BranchF loc_D60C24
  loc_D60C1F: LitI2_Byte &HFF
  loc_D60C21: FStI2 var_DC
  loc_D60C24: FLdRfVar var_144
  loc_D60C27: FLdRfVar var_1D0
  loc_D60C2A: LitVarStr var_134, "SaldCtct"
  loc_D60C2F: PopAdLdVar
  loc_D60C30: FLdRfVar var_1CC
  loc_D60C33: FLdRfVar var_158
  loc_D60C36: FLdPr Me
  loc_D60C39: MemLdRfVar from_stack_1.global_64
  loc_D60C3C: NewIfNullPr clsctacte
  loc_D60C3F: from_stack_1v = clsctacte.RsFrmGet()
  loc_D60C44: FLdPr var_158
  loc_D60C47:  = Me.Fields
  loc_D60C4C: FLdPr var_1CC
  loc_D60C4F: from_stack_2 = Me.Item(from_stack_1)
  loc_D60C54: FLdPr var_1D0
  loc_D60C57:  = Me.Value
  loc_D60C5C: LitI4 2
  loc_D60C61: ImpAdLdFPR8 MemVar_D93040
  loc_D60C64: FLdRfVar var_144
  loc_D60C67: FnCDblVar
  loc_D60C69: AddR8
  loc_D60C6A: CVarR8
  loc_D60C6E: FLdRfVar var_188
  loc_D60C71: ImpAdCallFPR4  = Round(, )
  loc_D60C76: FLdRfVar var_188
  loc_D60C79: CR4Var
  loc_D60C7A: ImpAdStFPR8 MemVar_D93040
  loc_D60C7D: FFreeAd var_158 = "": var_1CC = ""
  loc_D60C86: FFreeVar var_144 = "": var_154 = ""
  loc_D60C8F: FLdRfVar var_144
  loc_D60C92: FLdRfVar var_1D0
  loc_D60C95: LitVarStr var_134, "RecaCtct"
  loc_D60C9A: PopAdLdVar
  loc_D60C9B: FLdRfVar var_1CC
  loc_D60C9E: FLdRfVar var_158
  loc_D60CA1: FLdPr Me
  loc_D60CA4: MemLdRfVar from_stack_1.global_64
  loc_D60CA7: NewIfNullPr clsctacte
  loc_D60CAA: from_stack_1v = clsctacte.RsFrmGet()
  loc_D60CAF: FLdPr var_158
  loc_D60CB2:  = Me.Fields
  loc_D60CB7: FLdPr var_1CC
  loc_D60CBA: from_stack_2 = Me.Item(from_stack_1)
  loc_D60CBF: FLdPr var_1D0
  loc_D60CC2:  = Me.Value
  loc_D60CC7: LitI4 2
  loc_D60CCC: ImpAdLdFPR8 MemVar_D93058
  loc_D60CCF: FLdRfVar var_144
  loc_D60CD2: FnCDblVar
  loc_D60CD4: AddR8
  loc_D60CD5: CVarR8
  loc_D60CD9: FLdRfVar var_188
  loc_D60CDC: ImpAdCallFPR4  = Round(, )
  loc_D60CE1: FLdRfVar var_188
  loc_D60CE4: CR4Var
  loc_D60CE5: ImpAdStFPR8 MemVar_D93058
  loc_D60CE8: FFreeAd var_158 = "": var_1CC = ""
  loc_D60CF1: FFreeVar var_144 = "": var_154 = ""
  loc_D60CFA: FLdFPR8 var_C8
  loc_D60CFD: FStFPR8 var_FC
  loc_D60D00: ImpAdLdUI1
  loc_D60D04: CI2UI1
  loc_D60D06: LitI2_Byte 5
  loc_D60D08: EqI2
  loc_D60D09: CVarBoolI2 var_178
  loc_D60D0D: FLdRfVar var_144
  loc_D60D10: FLdRfVar var_1D0
  loc_D60D13: LitVarStr var_134, "CodiConc"
  loc_D60D18: PopAdLdVar
  loc_D60D19: FLdRfVar var_1CC
  loc_D60D1C: FLdRfVar var_158
  loc_D60D1F: FLdPr Me
  loc_D60D22: MemLdRfVar from_stack_1.global_64
  loc_D60D25: NewIfNullPr clsctacte
  loc_D60D28: from_stack_1v = clsctacte.RsFrmGet()
  loc_D60D2D: FLdPr var_158
  loc_D60D30:  = Me.Fields
  loc_D60D35: FLdPr var_1CC
  loc_D60D38: from_stack_2 = Me.Item(from_stack_1)
  loc_D60D3D: FLdPr var_1D0
  loc_D60D40:  = Me.Value
  loc_D60D45: FLdRfVar var_144
  loc_D60D48: LitVarStr var_168, "13030801"
  loc_D60D4D: HardType
  loc_D60D4E: EqVar var_154
  loc_D60D52: AndVar var_188
  loc_D60D56: CBoolVarNull
  loc_D60D58: FFreeAd var_158 = "": var_1CC = ""
  loc_D60D61: FFreeVar var_144 = ""
  loc_D60D68: BranchF loc_D60FAB
  loc_D60D6B: FLdRfVar var_144
  loc_D60D6E: FLdRfVar var_1D0
  loc_D60D71: LitVarStr var_134, "ExpeCtct"
  loc_D60D76: PopAdLdVar
  loc_D60D77: FLdRfVar var_1CC
  loc_D60D7A: FLdRfVar var_158
  loc_D60D7D: FLdPr Me
  loc_D60D80: MemLdRfVar from_stack_1.global_64
  loc_D60D83: NewIfNullPr clsctacte
  loc_D60D86: from_stack_1v = clsctacte.RsFrmGet()
  loc_D60D8B: FLdPr var_158
  loc_D60D8E:  = Me.Fields
  loc_D60D93: FLdPr var_1CC
  loc_D60D96: from_stack_2 = Me.Item(from_stack_1)
  loc_D60D9B: FLdPr var_1D0
  loc_D60D9E:  = Me.Value
  loc_D60DA3: FLdRfVar var_1B0
  loc_D60DA6: FLdPr Me
  loc_D60DA9: VCallAd Control_ID_NumeCtaTxt
  loc_D60DAC: FStAdFunc var_1D8
  loc_D60DAF: FLdPr var_1D8
  loc_D60DB2:  = Me.Text
  loc_D60DB7: FLdRfVar var_154
  loc_D60DBA: FLdRfVar var_1E4
  loc_D60DBD: LitVarStr var_168, "PeriCtct"
  loc_D60DC2: PopAdLdVar
  loc_D60DC3: FLdRfVar var_1E0
  loc_D60DC6: FLdRfVar var_1DC
  loc_D60DC9: FLdPr Me
  loc_D60DCC: MemLdRfVar from_stack_1.global_64
  loc_D60DCF: NewIfNullPr clsctacte
  loc_D60DD2: from_stack_1v = clsctacte.RsFrmGet()
  loc_D60DD7: FLdPr var_1DC
  loc_D60DDA:  = Me.Fields
  loc_D60DDF: FLdPr var_1E0
  loc_D60DE2: from_stack_2 = Me.Item(from_stack_1)
  loc_D60DE7: FLdPr var_1E4
  loc_D60DEA:  = Me.Value
  loc_D60DEF: FLdRfVar var_188
  loc_D60DF2: FLdRfVar var_1F0
  loc_D60DF5: LitVarStr var_178, "BimeCtct"
  loc_D60DFA: PopAdLdVar
  loc_D60DFB: FLdRfVar var_1EC
  loc_D60DFE: FLdRfVar var_1E8
  loc_D60E01: FLdPr Me
  loc_D60E04: MemLdRfVar from_stack_1.global_64
  loc_D60E07: NewIfNullPr clsctacte
  loc_D60E0A: from_stack_1v = clsctacte.RsFrmGet()
  loc_D60E0F: FLdPr var_1E8
  loc_D60E12:  = Me.Fields
  loc_D60E17: FLdPr var_1EC
  loc_D60E1A: from_stack_2 = Me.Item(from_stack_1)
  loc_D60E1F: FLdPr var_1F0
  loc_D60E22:  = Me.Value
  loc_D60E27: FLdRfVar var_1A8
  loc_D60E2A: FLdRfVar var_1FC
  loc_D60E2D: LitVarStr var_198, "NumeCtct"
  loc_D60E32: PopAdLdVar
  loc_D60E33: FLdRfVar var_1F8
  loc_D60E36: FLdRfVar var_1F4
  loc_D60E39: FLdPr Me
  loc_D60E3C: MemLdRfVar from_stack_1.global_64
  loc_D60E3F: NewIfNullPr clsctacte
  loc_D60E42: from_stack_1v = clsctacte.RsFrmGet()
  loc_D60E47: FLdPr var_1F4
  loc_D60E4A:  = Me.Fields
  loc_D60E4F: FLdPr var_1F8
  loc_D60E52: from_stack_2 = Me.Item(from_stack_1)
  loc_D60E57: FLdPr var_1FC
  loc_D60E5A:  = Me.Value
  loc_D60E5F: FLdRfVar var_1A8
  loc_D60E62: CI4Var
  loc_D60E64: FLdRfVar var_188
  loc_D60E67: CI2Var
  loc_D60E68: FLdRfVar var_154
  loc_D60E6B: CI2Var
  loc_D60E6C: ILdRf var_1B0
  loc_D60E6F: FLdRfVar var_144
  loc_D60E72: CStrVarTmp
  loc_D60E73: FStStrNoPop var_1B4
  loc_D60E76: ImpAdCallFPR4 Proc_270_87_AD28D4(, , , , )
  loc_D60E7B: FStFPR8 var_F4
  loc_D60E7E: FFreeStr var_1B4 = ""
  loc_D60E85: FFreeAd var_158 = "": var_1CC = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E8 = "": var_1EC = "": var_1F4 = "": var_1F8 = "": var_1D0 = "": var_1E4 = "": var_1F0 = ""
  loc_D60EA2: FFreeVar var_144 = "": var_154 = "": var_188 = ""
  loc_D60EAD: FLdRfVar var_F4
  loc_D60EB0: CVarRef
  loc_D60EB5: ImpAdCallI2 IsDate()
  loc_D60EBA: FLdFPR8 var_F4
  loc_D60EBD: LitStr "2019/01/01"
  loc_D60EC0: CDateStr
  loc_D60EC2: GeR8
  loc_D60EC3: AndI4
  loc_D60EC4: BranchF loc_D60F9B
  loc_D60EC7: LitI2_Byte 3
  loc_D60EC9: CUI1I2
  loc_D60ECB: PopTmpLdAd1
  loc_D60ECF: FLdRfVar var_F4
  loc_D60ED2: ImpAdCallFPR4 Proc_18_127_AE5A54(, )
  loc_D60ED7: FStFPR8 var_FC
  loc_D60EDA: FLdPr Me
  loc_D60EDD: VCallAd Control_ID_FechVencMsk
  loc_D60EE0: FStAdFunc var_158
  loc_D60EE3: FLdPr var_158
  loc_D60EE6: LateIdLdVar var_144 DispID_22 0
  loc_D60EED: CStrVarTmp
  loc_D60EEE: FStStrNoPop var_1B0
  loc_D60EF1: CDateStr
  loc_D60EF3: FLdFPR8 var_FC
  loc_D60EF6: LeR8
  loc_D60EF7: FFree1Str var_1B0
  loc_D60EFA: FFree1Ad var_158
  loc_D60EFD: FFree1Var var_144 = ""
  loc_D60F00: BranchF loc_D60F88
  loc_D60F03: FLdRfVar var_144
  loc_D60F06: FLdRfVar var_1D0
  loc_D60F09: LitVarStr var_134, "SaldCtct"
  loc_D60F0E: PopAdLdVar
  loc_D60F0F: FLdRfVar var_1CC
  loc_D60F12: FLdRfVar var_158
  loc_D60F15: FLdPr Me
  loc_D60F18: MemLdRfVar from_stack_1.global_64
  loc_D60F1B: NewIfNullPr clsctacte
  loc_D60F1E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D60F23: FLdPr var_158
  loc_D60F26:  = Me.Fields
  loc_D60F2B: FLdPr var_1CC
  loc_D60F2E: from_stack_2 = Me.Item(from_stack_1)
  loc_D60F33: FLdPr var_1D0
  loc_D60F36:  = Me.Value
  loc_D60F3B: FLdPr Me
  loc_D60F3E: MemLdFPR8 global_152
  loc_D60F41: CVarR8
  loc_D60F45: LitI4 2
  loc_D60F4A: FLdRfVar var_144
  loc_D60F4D: FnCDblVar
  loc_D60F4F: LitI2_Byte &H28
  loc_D60F51: CR8I2
  loc_D60F52: MulR8
  loc_D60F53: LitI2_Byte &H64
  loc_D60F55: CR8I2
  loc_D60F56: DivR8
  loc_D60F57: CVarR8
  loc_D60F5B: FLdRfVar var_188
  loc_D60F5E: ImpAdCallFPR4  = Round(, )
  loc_D60F63: FLdRfVar var_188
  loc_D60F66: AddVar var_1A8
  loc_D60F6A: CR4Var
  loc_D60F6B: FLdPr Me
  loc_D60F6E: MemStFPR8 global_152
  loc_D60F71: FFreeAd var_158 = "": var_1CC = ""
  loc_D60F7A: FFreeVar var_144 = "": var_154 = "": var_188 = ""
  loc_D60F85: Branch loc_D60F98
  loc_D60F88: FLdPr Me
  loc_D60F8B: MemLdFPR8 global_152
  loc_D60F8E: LitI2_Byte 0
  loc_D60F90: CR8I2
  loc_D60F91: AddR8
  loc_D60F92: FLdPr Me
  loc_D60F95: MemStFPR8 global_152
  loc_D60F98: Branch loc_D60FAB
  loc_D60F9B: FLdPr Me
  loc_D60F9E: MemLdFPR8 global_152
  loc_D60FA1: LitI2_Byte 0
  loc_D60FA3: CR8I2
  loc_D60FA4: AddR8
  loc_D60FA5: FLdPr Me
  loc_D60FA8: MemStFPR8 global_152
  loc_D60FAB: Branch loc_D613AC
  loc_D60FAE: LitStr "SELECT * FROM detafapa "
  loc_D60FB1: LitStr " WHERE detafapa.CodiFapa = "
  loc_D60FB4: ConcatStr
  loc_D60FB5: CVarStr var_154
  loc_D60FB8: FLdRfVar var_144
  loc_D60FBB: FLdRfVar var_1D0
  loc_D60FBE: LitVarStr var_134, "CodiFapa"
  loc_D60FC3: PopAdLdVar
  loc_D60FC4: FLdRfVar var_1CC
  loc_D60FC7: FLdRfVar var_158
  loc_D60FCA: FLdPr Me
  loc_D60FCD: MemLdRfVar from_stack_1.global_64
  loc_D60FD0: NewIfNullPr clsctacte
  loc_D60FD3: from_stack_1v = clsctacte.RsFrmGet()
  loc_D60FD8: FLdPr var_158
  loc_D60FDB:  = Me.Fields
  loc_D60FE0: FLdPr var_1CC
  loc_D60FE3: from_stack_2 = Me.Item(from_stack_1)
  loc_D60FE8: FLdPr var_1D0
  loc_D60FEB:  = Me.Value
  loc_D60FF0: FLdRfVar var_144
  loc_D60FF3: ConcatVar var_188
  loc_D60FF7: LitVarStr var_168, " AND detafapa.CuotDefa = '"
  loc_D60FFC: ConcatVar var_1A8
  loc_D61000: FLdRfVar var_20C
  loc_D61003: FLdRfVar var_1E0
  loc_D61006: LitVarStr var_178, "CuotDefa"
  loc_D6100B: PopAdLdVar
  loc_D6100C: FLdRfVar var_1DC
  loc_D6100F: FLdRfVar var_1D8
  loc_D61012: FLdPr Me
  loc_D61015: MemLdRfVar from_stack_1.global_64
  loc_D61018: NewIfNullPr clsctacte
  loc_D6101B: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61020: FLdPr var_1D8
  loc_D61023:  = Me.Fields
  loc_D61028: FLdPr var_1DC
  loc_D6102B: from_stack_2 = Me.Item(from_stack_1)
  loc_D61030: FLdPr var_1E0
  loc_D61033:  = Me.Value
  loc_D61038: FLdRfVar var_20C
  loc_D6103B: ConcatVar var_21C
  loc_D6103F: LitVarStr var_198, "'"
  loc_D61044: ConcatVar var_22C
  loc_D61048: LitVarStr var_23C, " ORDER BY CodiFapa, CuotDefa"
  loc_D6104D: ConcatVar var_24C
  loc_D61051: CStrVarVal var_1B0
  loc_D61055: FLdPr Me
  loc_D61058: MemLdRfVar from_stack_1.global_56
  loc_D6105B: NewIfNullPr clsctacte
  loc_D6105E: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D61063: FFree1Str var_1B0
  loc_D61066: FFreeAd var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = ""
  loc_D61075: FFreeVar var_154 = "": var_144 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = ""
  loc_D61088: FLdRfVar var_1C4
  loc_D6108B: FLdRfVar var_158
  loc_D6108E: FLdPr Me
  loc_D61091: MemLdRfVar from_stack_1.global_56
  loc_D61094: NewIfNullPr clsctacte
  loc_D61097: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6109C: FLdPr var_158
  loc_D6109F:  = Me.RecordCount
  loc_D610A4: ILdRf var_1C4
  loc_D610A7: LitI4 1
  loc_D610AC: EqI4
  loc_D610AD: FFree1Ad var_158
  loc_D610B0: BranchF loc_D613AC
  loc_D610B3: FLdRfVar var_144
  loc_D610B6: FLdRfVar var_1D0
  loc_D610B9: LitVarStr var_134, "RecaCtct"
  loc_D610BE: PopAdLdVar
  loc_D610BF: FLdRfVar var_1CC
  loc_D610C2: FLdRfVar var_158
  loc_D610C5: FLdPr Me
  loc_D610C8: MemLdRfVar from_stack_1.global_64
  loc_D610CB: NewIfNullPr clsctacte
  loc_D610CE: from_stack_1v = clsctacte.RsFrmGet()
  loc_D610D3: FLdPr var_158
  loc_D610D6:  = Me.Fields
  loc_D610DB: FLdPr var_1CC
  loc_D610DE: from_stack_2 = Me.Item(from_stack_1)
  loc_D610E3: FLdPr var_1D0
  loc_D610E6:  = Me.Value
  loc_D610EB: FLdRfVar var_144
  loc_D610EE: FnCDblVar
  loc_D610F0: LitI2_Byte 0
  loc_D610F2: CR8I2
  loc_D610F3: GtR4
  loc_D610F4: FFreeAd var_158 = "": var_1CC = ""
  loc_D610FD: FFree1Var var_144 = ""
  loc_D61100: BranchF loc_D611C0
  loc_D61103: FLdRfVar var_144
  loc_D61106: FLdRfVar var_1D0
  loc_D61109: LitVarStr var_134, "RecaCtct"
  loc_D6110E: PopAdLdVar
  loc_D6110F: FLdRfVar var_1CC
  loc_D61112: FLdRfVar var_158
  loc_D61115: FLdPr Me
  loc_D61118: MemLdRfVar from_stack_1.global_64
  loc_D6111B: NewIfNullPr clsctacte
  loc_D6111E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61123: FLdPr var_158
  loc_D61126:  = Me.Fields
  loc_D6112B: FLdPr var_1CC
  loc_D6112E: from_stack_2 = Me.Item(from_stack_1)
  loc_D61133: FLdPr var_1D0
  loc_D61136:  = Me.Value
  loc_D6113B: FLdRfVar var_154
  loc_D6113E: FLdRfVar var_1E0
  loc_D61141: LitVarStr var_168, "RecaDefa"
  loc_D61146: PopAdLdVar
  loc_D61147: FLdRfVar var_1DC
  loc_D6114A: FLdRfVar var_1D8
  loc_D6114D: FLdPr Me
  loc_D61150: MemLdRfVar from_stack_1.global_56
  loc_D61153: NewIfNullPr clsctacte
  loc_D61156: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6115B: FLdPr var_1D8
  loc_D6115E:  = Me.Fields
  loc_D61163: FLdPr var_1DC
  loc_D61166: from_stack_2 = Me.Item(from_stack_1)
  loc_D6116B: FLdPr var_1E0
  loc_D6116E:  = Me.Value
  loc_D61173: ImpAdLdFPR8 MemVar_D93058
  loc_D61176: CVarR8
  loc_D6117A: LitI4 2
  loc_D6117F: FLdRfVar var_144
  loc_D61182: FnCDblVar
  loc_D61184: FLdRfVar var_154
  loc_D61187: FnCDblVar
  loc_D61189: AddR8
  loc_D6118A: CVarR8
  loc_D6118E: FLdRfVar var_1A8
  loc_D61191: ImpAdCallFPR4  = Round(, )
  loc_D61196: FLdRfVar var_1A8
  loc_D61199: AddVar var_20C
  loc_D6119D: CR4Var
  loc_D6119E: ImpAdStFPR8 MemVar_D93058
  loc_D611A1: FFreeAd var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = ""
  loc_D611B0: FFreeVar var_144 = "": var_154 = "": var_188 = "": var_1A8 = ""
  loc_D611BD: Branch loc_D61210
  loc_D611C0: FLdRfVar var_144
  loc_D611C3: FLdRfVar var_1D0
  loc_D611C6: LitVarStr var_134, "RecaDefa"
  loc_D611CB: PopAdLdVar
  loc_D611CC: FLdRfVar var_1CC
  loc_D611CF: FLdRfVar var_158
  loc_D611D2: FLdPr Me
  loc_D611D5: MemLdRfVar from_stack_1.global_56
  loc_D611D8: NewIfNullPr clsctacte
  loc_D611DB: from_stack_1v = clsctacte.RsFrmGet()
  loc_D611E0: FLdPr var_158
  loc_D611E3:  = Me.Fields
  loc_D611E8: FLdPr var_1CC
  loc_D611EB: from_stack_2 = Me.Item(from_stack_1)
  loc_D611F0: FLdPr var_1D0
  loc_D611F3:  = Me.Value
  loc_D611F8: ImpAdLdFPR8 MemVar_D93058
  loc_D611FB: FLdRfVar var_144
  loc_D611FE: FnCDblVar
  loc_D61200: AddR8
  loc_D61201: ImpAdStFPR8 MemVar_D93058
  loc_D61204: FFreeAd var_158 = "": var_1CC = ""
  loc_D6120D: FFree1Var var_144 = ""
  loc_D61210: FLdRfVar var_144
  loc_D61213: FLdRfVar var_1D0
  loc_D61216: LitVarStr var_134, "CapiDefa"
  loc_D6121B: PopAdLdVar
  loc_D6121C: FLdRfVar var_1CC
  loc_D6121F: FLdRfVar var_158
  loc_D61222: FLdPr Me
  loc_D61225: MemLdRfVar from_stack_1.global_56
  loc_D61228: NewIfNullPr clsctacte
  loc_D6122B: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61230: FLdPr var_158
  loc_D61233:  = Me.Fields
  loc_D61238: FLdPr var_1CC
  loc_D6123B: from_stack_2 = Me.Item(from_stack_1)
  loc_D61240: FLdPr var_1D0
  loc_D61243:  = Me.Value
  loc_D61248: ImpAdLdFPR8 MemVar_D93040
  loc_D6124B: FLdRfVar var_144
  loc_D6124E: FnCDblVar
  loc_D61250: AddR8
  loc_D61251: ImpAdStFPR8 MemVar_D93040
  loc_D61254: FFreeAd var_158 = "": var_1CC = ""
  loc_D6125D: FFree1Var var_144 = ""
  loc_D61260: FLdRfVar var_144
  loc_D61263: FLdRfVar var_1D0
  loc_D61266: LitVarStr var_134, "InteDefa"
  loc_D6126B: PopAdLdVar
  loc_D6126C: FLdRfVar var_1CC
  loc_D6126F: FLdRfVar var_158
  loc_D61272: FLdPr Me
  loc_D61275: MemLdRfVar from_stack_1.global_56
  loc_D61278: NewIfNullPr clsctacte
  loc_D6127B: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61280: FLdPr var_158
  loc_D61283:  = Me.Fields
  loc_D61288: FLdPr var_1CC
  loc_D6128B: from_stack_2 = Me.Item(from_stack_1)
  loc_D61290: FLdPr var_1D0
  loc_D61293:  = Me.Value
  loc_D61298: ImpAdLdFPR8 MemVar_D93060
  loc_D6129B: FLdRfVar var_144
  loc_D6129E: FnCDblVar
  loc_D612A0: AddR8
  loc_D612A1: ImpAdStFPR8 MemVar_D93060
  loc_D612A4: FFreeAd var_158 = "": var_1CC = ""
  loc_D612AD: FFree1Var var_144 = ""
  loc_D612B0: FLdRfVar var_144
  loc_D612B3: FLdRfVar var_1D0
  loc_D612B6: LitVarStr var_134, "ApreDefa"
  loc_D612BB: PopAdLdVar
  loc_D612BC: FLdRfVar var_1CC
  loc_D612BF: FLdRfVar var_158
  loc_D612C2: FLdPr Me
  loc_D612C5: MemLdRfVar from_stack_1.global_56
  loc_D612C8: NewIfNullPr clsctacte
  loc_D612CB: from_stack_1v = clsctacte.RsFrmGet()
  loc_D612D0: FLdPr var_158
  loc_D612D3:  = Me.Fields
  loc_D612D8: FLdPr var_1CC
  loc_D612DB: from_stack_2 = Me.Item(from_stack_1)
  loc_D612E0: FLdPr var_1D0
  loc_D612E3:  = Me.Value
  loc_D612E8: ImpAdLdFPR8 MemVar_D93050
  loc_D612EB: FLdRfVar var_144
  loc_D612EE: FnCDblVar
  loc_D612F0: AddR8
  loc_D612F1: ImpAdStFPR8 MemVar_D93050
  loc_D612F4: FFreeAd var_158 = "": var_1CC = ""
  loc_D612FD: FFree1Var var_144 = ""
  loc_D61300: FLdRfVar var_144
  loc_D61303: FLdRfVar var_1D0
  loc_D61306: LitVarStr var_134, "DecaDefa"
  loc_D6130B: PopAdLdVar
  loc_D6130C: FLdRfVar var_1CC
  loc_D6130F: FLdRfVar var_158
  loc_D61312: FLdPr Me
  loc_D61315: MemLdRfVar from_stack_1.global_56
  loc_D61318: NewIfNullPr clsctacte
  loc_D6131B: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61320: FLdPr var_158
  loc_D61323:  = Me.Fields
  loc_D61328: FLdPr var_1CC
  loc_D6132B: from_stack_2 = Me.Item(from_stack_1)
  loc_D61330: FLdPr var_1D0
  loc_D61333:  = Me.Value
  loc_D61338: FLdPr Me
  loc_D6133B: MemLdFPR8 global_152
  loc_D6133E: FLdRfVar var_144
  loc_D61341: FnCDblVar
  loc_D61343: AddR8
  loc_D61344: FLdPr Me
  loc_D61347: MemStFPR8 global_152
  loc_D6134A: FFreeAd var_158 = "": var_1CC = ""
  loc_D61353: FFree1Var var_144 = ""
  loc_D61356: FLdRfVar var_144
  loc_D61359: FLdRfVar var_1D0
  loc_D6135C: LitVarStr var_134, "DereDefa"
  loc_D61361: PopAdLdVar
  loc_D61362: FLdRfVar var_1CC
  loc_D61365: FLdRfVar var_158
  loc_D61368: FLdPr Me
  loc_D6136B: MemLdRfVar from_stack_1.global_56
  loc_D6136E: NewIfNullPr clsctacte
  loc_D61371: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61376: FLdPr var_158
  loc_D61379:  = Me.Fields
  loc_D6137E: FLdPr var_1CC
  loc_D61381: from_stack_2 = Me.Item(from_stack_1)
  loc_D61386: FLdPr var_1D0
  loc_D61389:  = Me.Value
  loc_D6138E: FLdPr Me
  loc_D61391: MemLdFPR8 global_160
  loc_D61394: FLdRfVar var_144
  loc_D61397: FnCDblVar
  loc_D61399: AddR8
  loc_D6139A: FLdPr Me
  loc_D6139D: MemStFPR8 global_160
  loc_D613A0: FFreeAd var_158 = "": var_1CC = ""
  loc_D613A9: FFree1Var var_144 = ""
  loc_D613AC: FLdPr Me
  loc_D613AF: MemLdRfVar from_stack_1.global_64
  loc_D613B2: NewIfNullPr clsctacte
  loc_D613B5: Call clsctacte.MoveSiguiente()
  loc_D613BA: Branch loc_D60B46
  loc_D613BD: LitStr "SELECT NumeApre, SUM(SaldCtct) as SaldCtct, SUM(RecaCtct) as RecaCtct FROM tmp_ctacteboleto WHERE SaldCtct > 0 AND NumeApre <> 0 AND SeleCtct = 'Si'"
  loc_D613C0: LitStr " GROUP BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.NumeApre"
  loc_D613C3: ConcatStr
  loc_D613C4: FStStrNoPop var_1B0
  loc_D613C7: FLdPr Me
  loc_D613CA: MemLdRfVar from_stack_1.global_64
  loc_D613CD: NewIfNullPr clsctacte
  loc_D613D0: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D613D5: FFree1Str var_1B0
  loc_D613D8: FLdRfVar var_1C4
  loc_D613DB: FLdRfVar var_158
  loc_D613DE: FLdPr Me
  loc_D613E1: MemLdRfVar from_stack_1.global_64
  loc_D613E4: NewIfNullPr clsctacte
  loc_D613E7: from_stack_1v = clsctacte.RsFrmGet()
  loc_D613EC: FLdPr var_158
  loc_D613EF:  = Me.RecordCount
  loc_D613F4: ILdRf var_1C4
  loc_D613F7: LitI4 0
  loc_D613FC: GtI4
  loc_D613FD: FFree1Ad var_158
  loc_D61400: BranchF loc_D6161A
  loc_D61403: FLdRfVar var_1C6
  loc_D61406: FLdRfVar var_158
  loc_D61409: FLdPr Me
  loc_D6140C: MemLdRfVar from_stack_1.global_64
  loc_D6140F: NewIfNullPr clsctacte
  loc_D61412: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61417: FLdPr var_158
  loc_D6141A:  = Me.EOF
  loc_D6141F: FLdI2 var_1C6
  loc_D61422: NotI4
  loc_D61423: FFree1Ad var_158
  loc_D61426: BranchF loc_D6161A
  loc_D61429: FLdRfVar var_144
  loc_D6142C: FLdRfVar var_1D0
  loc_D6142F: LitVarStr var_134, "NumeApre"
  loc_D61434: PopAdLdVar
  loc_D61435: FLdRfVar var_1CC
  loc_D61438: FLdRfVar var_158
  loc_D6143B: FLdPr Me
  loc_D6143E: MemLdRfVar from_stack_1.global_64
  loc_D61441: NewIfNullPr clsctacte
  loc_D61444: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61449: FLdPr var_158
  loc_D6144C:  = Me.Fields
  loc_D61451: FLdPr var_1CC
  loc_D61454: from_stack_2 = Me.Item(from_stack_1)
  loc_D61459: FLdPr var_1D0
  loc_D6145C:  = Me.Value
  loc_D61461: FLdRfVar var_154
  loc_D61464: FLdRfVar var_1E0
  loc_D61467: LitVarStr var_168, "SaldCtct"
  loc_D6146C: PopAdLdVar
  loc_D6146D: FLdRfVar var_1DC
  loc_D61470: FLdRfVar var_1D8
  loc_D61473: FLdPr Me
  loc_D61476: MemLdRfVar from_stack_1.global_64
  loc_D61479: NewIfNullPr clsctacte
  loc_D6147C: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61481: FLdPr var_1D8
  loc_D61484:  = Me.Fields
  loc_D61489: FLdPr var_1DC
  loc_D6148C: from_stack_2 = Me.Item(from_stack_1)
  loc_D61491: FLdPr var_1E0
  loc_D61494:  = Me.Value
  loc_D61499: FLdRfVar var_188
  loc_D6149C: FLdRfVar var_1EC
  loc_D6149F: LitVarStr var_178, "RecaCtct"
  loc_D614A4: PopAdLdVar
  loc_D614A5: FLdRfVar var_1E8
  loc_D614A8: FLdRfVar var_1E4
  loc_D614AB: FLdPr Me
  loc_D614AE: MemLdRfVar from_stack_1.global_64
  loc_D614B1: NewIfNullPr clsctacte
  loc_D614B4: from_stack_1v = clsctacte.RsFrmGet()
  loc_D614B9: FLdPr var_1E4
  loc_D614BC:  = Me.Fields
  loc_D614C1: FLdPr var_1E8
  loc_D614C4: from_stack_2 = Me.Item(from_stack_1)
  loc_D614C9: FLdPr var_1EC
  loc_D614CC:  = Me.Value
  loc_D614D1: FLdRfVar var_1A8
  loc_D614D4: FLdRfVar var_188
  loc_D614D7: CR4Var
  loc_D614D8: PopFPR8
  loc_D614D9: FLdRfVar var_154
  loc_D614DC: CR4Var
  loc_D614DD: PopFPR8
  loc_D614DE: FLdRfVar var_144
  loc_D614E1: CI4Var
  loc_D614E3: FLdPr Me
  loc_D614E6: MemLdRfVar from_stack_1.global_76
  loc_D614E9: NewIfNullPr clsapremio
  loc_D614EC: from_stack_4v = clsapremio.BuscaGastosApremioDetalle(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D614F1: FLdRfVar var_1A8
  loc_D614F4: FStVar var_9C
  loc_D614F8: FFreeAd var_158 = "": var_1CC = "": var_1D8 = "": var_1DC = "": var_1E4 = "": var_1E8 = "": var_1D0 = "": var_1E0 = ""
  loc_D6150D: FFreeVar var_144 = "": var_154 = ""
  loc_D61516: ImpAdLdFPR8 MemVar_D93050
  loc_D61519: LitVarI2 var_134, 1
  loc_D6151E: PopAdLdVar
  loc_D6151F: FLdRfVar var_9C
  loc_D61522: VarIndexLdVar
  loc_D61528: FnCDblVar
  loc_D6152A: AddR8
  loc_D6152B: LitVarI2 var_178, 2
  loc_D61530: PopAdLdVar
  loc_D61531: FLdRfVar var_9C
  loc_D61534: VarIndexLdVar
  loc_D6153A: FnCDblVar
  loc_D6153C: AddR8
  loc_D6153D: LitVarI2 var_23C, 3
  loc_D61542: PopAdLdVar
  loc_D61543: FLdRfVar var_9C
  loc_D61546: VarIndexLdVar
  loc_D6154C: FnCDblVar
  loc_D6154E: AddR8
  loc_D6154F: LitVarI2 var_26C, 4
  loc_D61554: PopAdLdVar
  loc_D61555: FLdRfVar var_9C
  loc_D61558: VarIndexLdVar
  loc_D6155E: FnCDblVar
  loc_D61560: AddR8
  loc_D61561: LitVarI2 var_28C, 5
  loc_D61566: PopAdLdVar
  loc_D61567: FLdRfVar var_9C
  loc_D6156A: VarIndexLdVar
  loc_D61570: FnCDblVar
  loc_D61572: AddR8
  loc_D61573: LitVarI2 var_2AC, 6
  loc_D61578: PopAdLdVar
  loc_D61579: FLdRfVar var_9C
  loc_D6157C: VarIndexLdVar
  loc_D61582: FnCDblVar
  loc_D61584: AddR8
  loc_D61585: LitVarI2 var_2CC, 7
  loc_D6158A: PopAdLdVar
  loc_D6158B: FLdRfVar var_9C
  loc_D6158E: VarIndexLdVar
  loc_D61594: FnCDblVar
  loc_D61596: AddR8
  loc_D61597: LitVarI2 var_2EC, 8
  loc_D6159C: PopAdLdVar
  loc_D6159D: FLdRfVar var_9C
  loc_D615A0: VarIndexLdVar
  loc_D615A6: FnCDblVar
  loc_D615A8: AddR8
  loc_D615A9: LitVarI2 var_30C, 9
  loc_D615AE: PopAdLdVar
  loc_D615AF: FLdRfVar var_9C
  loc_D615B2: VarIndexLdVar
  loc_D615B8: FnCDblVar
  loc_D615BA: AddR8
  loc_D615BB: LitVarI2 var_33C, 10
  loc_D615C0: PopAdLdVar
  loc_D615C1: FLdRfVar var_9C
  loc_D615C4: VarIndexLdVar
  loc_D615CA: FnCDblVar
  loc_D615CC: AddR8
  loc_D615CD: LitVarI2 var_36C, 11
  loc_D615D2: PopAdLdVar
  loc_D615D3: FLdRfVar var_9C
  loc_D615D6: VarIndexLdVar
  loc_D615DC: FnCDblVar
  loc_D615DE: AddR8
  loc_D615DF: ImpAdStFPR8 MemVar_D93050
  loc_D615E2: FFreeVar var_144 = "": var_154 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = ""
  loc_D615FB: FLdRfVar var_158
  loc_D615FE: FLdPr Me
  loc_D61601: MemLdRfVar from_stack_1.global_64
  loc_D61604: NewIfNullPr clsctacte
  loc_D61607: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6160C: FLdPr var_158
  loc_D6160F: Me.MoveNext
  loc_D61614: FFree1Ad var_158
  loc_D61617: Branch loc_D61403
  loc_D6161A: LitI2_Byte 0
  loc_D6161C: CR8I2
  loc_D6161D: ImpAdStFPR8 MemVar_D93068
  loc_D61620: FLdI2 var_DC
  loc_D61623: LitI2_Byte &HFF
  loc_D61625: EqI2
  loc_D61626: BranchF loc_D61652
  loc_D61629: LitI4 2
  loc_D6162E: LitI2_Byte 2
  loc_D61630: CR8I2
  loc_D61631: ImpAdLdFPR8 MemVar_D9307C
  loc_D61634: MulR8
  loc_D61635: CVarR8
  loc_D61639: FLdRfVar var_154
  loc_D6163C: ImpAdCallFPR4  = Round(, )
  loc_D61641: FLdRfVar var_154
  loc_D61644: CR4Var
  loc_D61645: ImpAdStFPR8 MemVar_D93068
  loc_D61648: FFreeVar var_144 = ""
  loc_D6164F: Branch loc_D61658
  loc_D61652: LitI2_Byte 0
  loc_D61654: CR8I2
  loc_D61655: ImpAdStFPR8 MemVar_D93068
  loc_D61658: FLdPr Me
  loc_D6165B: MemLdFPR8 global_152
  loc_D6165E: FStFPR8 var_E4
  loc_D61661: FLdPr Me
  loc_D61664: MemLdFPR8 global_160
  loc_D61667: FStFPR8 var_EC
  loc_D6166A: LitI4 2
  loc_D6166F: FLdPr Me
  loc_D61672: MemLdFPR8 global_152
  loc_D61675: FLdPr Me
  loc_D61678: MemLdFPR8 global_160
  loc_D6167B: AddR8
  loc_D6167C: CVarR8
  loc_D61680: FLdRfVar var_154
  loc_D61683: ImpAdCallFPR4  = Round(, )
  loc_D61688: FLdRfVar var_154
  loc_D6168B: CR4Var
  loc_D6168C: ImpAdStFPR8 MemVar_D93048
  loc_D6168F: FFreeVar var_144 = ""
  loc_D61696: ImpAdLdFPR8 MemVar_D93040
  loc_D61699: ImpAdLdFPR8 MemVar_D93058
  loc_D6169C: AddR8
  loc_D6169D: ImpAdLdFPR8 MemVar_D93050
  loc_D616A0: AddR8
  loc_D616A1: ImpAdLdFPR8 MemVar_D93060
  loc_D616A4: AddR8
  loc_D616A5: ImpAdLdFPR8 MemVar_D93048
  loc_D616A8: SubR4
  loc_D616A9: ImpAdLdFPR8 MemVar_D93068
  loc_D616AC: AddR8
  loc_D616AD: ImpAdStFPR8 MemVar_D93070
  loc_D616B0: ImpAdLdFPR8 MemVar_D93070
  loc_D616B3: LitI2_Byte 0
  loc_D616B5: CR8I2
  loc_D616B6: LeR8
  loc_D616B7: BranchF loc_D616C3
  loc_D616BA: LitStr "No se puede emitir el boleto. El total del boleto es menor o igual que 0"
  loc_D616BD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D616C2: ExitProcHresult
  loc_D616C3: LitVar_Missing var_168
  loc_D616C6: PopAdLdVar
  loc_D616C7: LitVarI4
  loc_D616CF: PopAdLdVar
  loc_D616D0: ImpAdLdRf MemVar_D9459C
  loc_D616D3: NewIfNullPr dlgTotalBoleto
  loc_D616D6: dlgTotalBoleto.Show from_stack_1, from_stack_2
  loc_D616DB: FLdRfVar var_1C6
  loc_D616DE: ImpAdLdRf MemVar_D9459C
  loc_D616E1: NewIfNullPr dlgTotalBoleto
  loc_D616E4: from_stack_1v = dlgTotalBoleto.boAceptarGet()
  loc_D616E9: FLdI2 var_1C6
  loc_D616EC: LitI2_Byte &HFF
  loc_D616EE: EqI2
  loc_D616EF: BranchF loc_D68C8C
  loc_D616F2: ImpAdCallFPR4 Proc_270_129_A7E1E0()
  loc_D616F7: FLdRfVar var_1C4
  loc_D616FA: FLdI2 var_86
  loc_D616FD: FLdPr Me
  loc_D61700: MemLdRfVar from_stack_1.global_72
  loc_D61703: NewIfNullPr clsnumebole
  loc_D61706: from_stack_2v = clsnumebole.NuevoRegistro(from_stack_1v)
  loc_D6170B: ILdRf var_1C4
  loc_D6170E: FStR4 var_8C
  loc_D61711: FLdRfVar var_3A8
  loc_D61714: FLdPr Me
  loc_D61717: VCallAd Control_ID_CucuPersLbl
  loc_D6171A: FStAdFunc var_1CC
  loc_D6171D: FLdPr var_1CC
  loc_D61720:  = Me.Caption
  loc_D61725: FLdRfVar var_3AC
  loc_D61728: FLdPr Me
  loc_D6172B: VCallAd Control_ID_CucuPersLbl
  loc_D6172E: FStAdFunc var_1D0
  loc_D61731: FLdPr var_1D0
  loc_D61734:  = Me.Caption
  loc_D61739: FLdZeroAd var_3AC
  loc_D6173C: CVarStr var_154
  loc_D6173F: LitVarI2 var_144, 0
  loc_D61744: ILdRf var_3A8
  loc_D61747: LitStr vbNullString
  loc_D6174A: EqStr
  loc_D6174C: CVarBoolI2 var_134
  loc_D61750: FLdRfVar var_188
  loc_D61753: ImpAdCallFPR4  = IIf(, , )
  loc_D61758: FLdPr Me
  loc_D6175B: VCallAd Control_ID_FechVencMsk
  loc_D6175E: FStAdFunc var_1D8
  loc_D61761: FLdPr var_1D8
  loc_D61764: LateIdLdVar var_20C DispID_15 0
  loc_D6176B: PopAd
  loc_D6176D: LitStr "START TRANSACTION; INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, CodiEnre, TipoBole, EstaBole, CodiFapa, CuotDefa, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, CrafBole, ApreBole, TotaBole, CodiUsua) "
  loc_D61770: LitStr " VALUES ("
  loc_D61773: ConcatStr
  loc_D61774: FStStrNoPop var_1B0
  loc_D61777: FLdI2 var_86
  loc_D6177A: CStrUI1
  loc_D6177C: FStStrNoPop var_1B4
  loc_D6177F: ConcatStr
  loc_D61780: FStStrNoPop var_1B8
  loc_D61783: LitStr ","
  loc_D61786: ConcatStr
  loc_D61787: FStStrNoPop var_1BC
  loc_D6178A: ILdRf var_8C
  loc_D6178D: CStrI4
  loc_D6178F: FStStrNoPop var_1C0
  loc_D61792: ConcatStr
  loc_D61793: FStStrNoPop var_1D4
  loc_D61796: LitStr ","
  loc_D61799: ConcatStr
  loc_D6179A: FStStrNoPop var_390
  loc_D6179D: ImpAdLdUI1
  loc_D617A1: CStrI2
  loc_D617A3: FStStrNoPop var_394
  loc_D617A6: ConcatStr
  loc_D617A7: FStStrNoPop var_398
  loc_D617AA: LitStr ",'"
  loc_D617AD: ConcatStr
  loc_D617AE: FStStrNoPop var_3A0
  loc_D617B1: FLdRfVar var_39C
  loc_D617B4: FLdPr Me
  loc_D617B7: VCallAd Control_ID_NumeCtaTxt
  loc_D617BA: FStAdFunc var_158
  loc_D617BD: FLdPr var_158
  loc_D617C0:  = Me.Text
  loc_D617C5: ILdRf var_39C
  loc_D617C8: ConcatStr
  loc_D617C9: FStStrNoPop var_3A4
  loc_D617CC: LitStr "','"
  loc_D617CF: ConcatStr
  loc_D617D0: FStStrNoPop var_3B4
  loc_D617D3: LitI4 0
  loc_D617D8: LitI4 -1
  loc_D617DD: LitI4 1
  loc_D617E2: LitStr vbNullString
  loc_D617E5: LitStr "-"
  loc_D617E8: FLdRfVar var_188
  loc_D617EB: CStrVarVal var_3B0
  loc_D617EF: ImpAdCallI2 Replace(, , , , , )
  loc_D617F4: FStStrNoPop var_3B8
  loc_D617F7: ConcatStr
  loc_D617F8: FStStrNoPop var_3BC
  loc_D617FB: LitStr "','"
  loc_D617FE: ConcatStr
  loc_D617FF: FStStrNoPop var_3C0
  loc_D61802: LitI4 1
  loc_D61807: LitI4 1
  loc_D6180C: LitVarStr var_198, "yyyy-mm-dd"
  loc_D61811: FStVarCopyObj var_1A8
  loc_D61814: FLdRfVar var_1A8
  loc_D61817: FLdRfVar var_C8
  loc_D6181A: CVarRef
  loc_D6181F: ImpAdCallI2 Format$(, )
  loc_D61824: FStStrNoPop var_3C4
  loc_D61827: ConcatStr
  loc_D61828: FStStrNoPop var_3C8
  loc_D6182B: LitStr "','"
  loc_D6182E: ConcatStr
  loc_D6182F: FStStrNoPop var_3CC
  loc_D61832: LitI4 1
  loc_D61837: LitI4 1
  loc_D6183C: LitVarStr var_23C, "yyyy-mm-dd"
  loc_D61841: FStVarCopyObj var_22C
  loc_D61844: FLdRfVar var_22C
  loc_D61847: FLdRfVar var_20C
  loc_D6184A: CStrVarTmp
  loc_D6184B: CVarStr var_21C
  loc_D6184E: ImpAdCallI2 Format$(, )
  loc_D61853: FStStrNoPop var_3D0
  loc_D61856: ConcatStr
  loc_D61857: FStStrNoPop var_3D4
  loc_D6185A: LitStr "',"
  loc_D6185D: ConcatStr
  loc_D6185E: FStStrNoPop var_3D8
  loc_D61861: ImpAdLdI2 MemVar_D93078
  loc_D61864: CStrUI1
  loc_D61866: FStStrNoPop var_3DC
  loc_D61869: ConcatStr
  loc_D6186A: FStStrNoPop var_3E0
  loc_D6186D: LitStr ",'Ventanilla','Emitido',0,0,"
  loc_D61870: ConcatStr
  loc_D61871: FStStrNoPop var_3E8
  loc_D61874: LitI4 0
  loc_D61879: LitI4 -1
  loc_D6187E: LitI4 1
  loc_D61883: LitStr "."
  loc_D61886: LitStr ","
  loc_D61889: ImpAdLdFPR8 MemVar_D93040
  loc_D6188C: ImpAdLdFPR8 MemVar_D93068
  loc_D6188F: AddR8
  loc_D61890: CStrR8
  loc_D61892: FStStrNoPop var_3E4
  loc_D61895: ImpAdCallI2 Replace(, , , , , )
  loc_D6189A: FStStrNoPop var_3EC
  loc_D6189D: ConcatStr
  loc_D6189E: FStStrNoPop var_3F0
  loc_D618A1: LitStr ","
  loc_D618A4: ConcatStr
  loc_D618A5: FStStrNoPop var_3F8
  loc_D618A8: LitI4 0
  loc_D618AD: LitI4 -1
  loc_D618B2: LitI4 1
  loc_D618B7: LitStr "."
  loc_D618BA: LitStr ","
  loc_D618BD: ImpAdLdFPR8 MemVar_D93058
  loc_D618C0: CStrR8
  loc_D618C2: FStStrNoPop var_3F4
  loc_D618C5: ImpAdCallI2 Replace(, , , , , )
  loc_D618CA: FStStrNoPop var_3FC
  loc_D618CD: ConcatStr
  loc_D618CE: FStStrNoPop var_400
  loc_D618D1: LitStr ","
  loc_D618D4: ConcatStr
  loc_D618D5: FStStrNoPop var_408
  loc_D618D8: LitI4 0
  loc_D618DD: LitI4 -1
  loc_D618E2: LitI4 1
  loc_D618E7: LitStr "."
  loc_D618EA: LitStr ","
  loc_D618ED: FLdPr Me
  loc_D618F0: MemLdFPR8 global_152
  loc_D618F3: CStrR8
  loc_D618F5: FStStrNoPop var_404
  loc_D618F8: ImpAdCallI2 Replace(, , , , , )
  loc_D618FD: FStStrNoPop var_40C
  loc_D61900: ConcatStr
  loc_D61901: FStStrNoPop var_410
  loc_D61904: LitStr ","
  loc_D61907: ConcatStr
  loc_D61908: FStStrNoPop var_418
  loc_D6190B: LitI4 0
  loc_D61910: LitI4 -1
  loc_D61915: LitI4 1
  loc_D6191A: LitStr "."
  loc_D6191D: LitStr ","
  loc_D61920: FLdPr Me
  loc_D61923: MemLdFPR8 global_160
  loc_D61926: CStrR8
  loc_D61928: FStStrNoPop var_414
  loc_D6192B: ImpAdCallI2 Replace(, , , , , )
  loc_D61930: FStStrNoPop var_41C
  loc_D61933: ConcatStr
  loc_D61934: FStStrNoPop var_420
  loc_D61937: LitStr ","
  loc_D6193A: ConcatStr
  loc_D6193B: FStStrNoPop var_428
  loc_D6193E: LitI4 0
  loc_D61943: LitI4 -1
  loc_D61948: LitI4 1
  loc_D6194D: LitStr "."
  loc_D61950: LitStr ","
  loc_D61953: ImpAdLdFPR8 MemVar_D93060
  loc_D61956: CStrR8
  loc_D61958: FStStrNoPop var_424
  loc_D6195B: ImpAdCallI2 Replace(, , , , , )
  loc_D61960: FStStrNoPop var_42C
  loc_D61963: ConcatStr
  loc_D61964: FStStrNoPop var_430
  loc_D61967: LitStr ",0,"
  loc_D6196A: ConcatStr
  loc_D6196B: FStStrNoPop var_438
  loc_D6196E: LitI4 0
  loc_D61973: LitI4 -1
  loc_D61978: LitI4 1
  loc_D6197D: LitStr "."
  loc_D61980: LitStr ","
  loc_D61983: FLdFPR8 var_B8
  loc_D61986: CStrR8
  loc_D61988: FStStrNoPop var_434
  loc_D6198B: ImpAdCallI2 Replace(, , , , , )
  loc_D61990: FStStrNoPop var_43C
  loc_D61993: ConcatStr
  loc_D61994: FStStrNoPop var_440
  loc_D61997: LitStr ","
  loc_D6199A: ConcatStr
  loc_D6199B: FStStrNoPop var_448
  loc_D6199E: LitI4 0
  loc_D619A3: LitI4 -1
  loc_D619A8: LitI4 1
  loc_D619AD: LitStr "."
  loc_D619B0: LitStr ","
  loc_D619B3: ImpAdLdFPR8 MemVar_D93050
  loc_D619B6: CStrR8
  loc_D619B8: FStStrNoPop var_444
  loc_D619BB: ImpAdCallI2 Replace(, , , , , )
  loc_D619C0: FStStrNoPop var_44C
  loc_D619C3: ConcatStr
  loc_D619C4: FStStrNoPop var_450
  loc_D619C7: LitStr ","
  loc_D619CA: ConcatStr
  loc_D619CB: FStStrNoPop var_458
  loc_D619CE: LitI4 0
  loc_D619D3: LitI4 -1
  loc_D619D8: LitI4 1
  loc_D619DD: LitStr "."
  loc_D619E0: LitStr ","
  loc_D619E3: ImpAdLdFPR8 MemVar_D93070
  loc_D619E6: CStrR8
  loc_D619E8: FStStrNoPop var_454
  loc_D619EB: ImpAdCallI2 Replace(, , , , , )
  loc_D619F0: FStStrNoPop var_45C
  loc_D619F3: ConcatStr
  loc_D619F4: FStStrNoPop var_460
  loc_D619F7: LitStr ",'"
  loc_D619FA: ConcatStr
  loc_D619FB: FStStrNoPop var_464
  loc_D619FE: ImpAdLdI4 MemVar_D9302C
  loc_D61A01: ConcatStr
  loc_D61A02: FStStrNoPop var_468
  loc_D61A05: LitStr "');"
  loc_D61A08: ConcatStr
  loc_D61A09: FStStrNoPop var_46C
  loc_D61A0C: FLdPr Me
  loc_D61A0F: MemStStrCopy
  loc_D61A13: FFreeStr var_46C = "": var_3F4 = "": var_3F8 = "": var_3FC = "": var_400 = "": var_404 = "": var_408 = "": var_40C = "": var_410 = "": var_414 = "": var_418 = "": var_41C = "": var_420 = "": var_424 = "": var_428 = "": var_42C = "": var_430 = "": var_434 = "": var_438 = "": var_43C = "": var_440 = "": var_444 = "": var_448 = "": var_44C = "": var_450 = "": var_454 = "": var_458 = "": var_45C = "": var_460 = "": var_464 = "": var_468 = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1D4 = "": var_390 = "": var_394 = "": var_398 = "": var_3A0 = "": var_39C = "": var_3A4 = "": var_3A8 = "": var_3B0 = "": var_3B4 = "": var_3B8 = "": var_3BC = "": var_3C0 = "": var_3C4 = "": var_3C8 = "": var_3CC = "": var_3D0 = "": var_3D4 = "": var_3D8 = "": var_3DC = "": var_3E0 = "": var_3E4 = "": var_3E8 = "": var_3EC = ""
  loc_D61A90: FFreeAd var_158 = "": var_1CC = "": var_1D0 = ""
  loc_D61A9B: FFreeVar var_134 = "": var_144 = "": var_154 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = ""
  loc_D61AAE: LitI2_Byte 0
  loc_D61AB0: CR8I2
  loc_D61AB1: FLdPr Me
  loc_D61AB4: MemStFPR8 global_152
  loc_D61AB7: LitI2_Byte 0
  loc_D61AB9: CR8I2
  loc_D61ABA: FLdPr Me
  loc_D61ABD: MemStFPR8 global_160
  loc_D61AC0: LitI2_Byte 0
  loc_D61AC2: CR8I2
  loc_D61AC3: FLdPr Me
  loc_D61AC6: MemStFPR8 global_184
  loc_D61AC9: LitI2_Byte 0
  loc_D61ACB: CR8I2
  loc_D61ACC: FLdPr Me
  loc_D61ACF: MemStFPR8 global_192
  loc_D61AD2: LitI2_Byte 0
  loc_D61AD4: CR8I2
  loc_D61AD5: FLdPr Me
  loc_D61AD8: MemStFPR8 global_200
  loc_D61ADB: LitI2_Byte 0
  loc_D61ADD: CR8I2
  loc_D61ADE: FLdPr Me
  loc_D61AE1: MemStFPR8 global_208
  loc_D61AE4: LitI2_Byte 0
  loc_D61AE6: CR8I2
  loc_D61AE7: FLdPr Me
  loc_D61AEA: MemStFPR8 global_216
  loc_D61AED: LitI2_Byte 0
  loc_D61AEF: CR8I2
  loc_D61AF0: FStFPR8 var_114
  loc_D61AF3: LitStr "SELECT tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.FealCtct, tmp_ctacteboleto.PeriCtct, tmp_ctacteboleto.BimeCtct, tmp_ctacteboleto.NumeCtct, tmp_ctacteboleto.MoviCtct, tmp_ctacteboleto.CodiFapa, tmp_ctacteboleto.CuotDefa, tmp_ctacteboleto.NumeApre, tmp_ctacteboleto.CodiTimo,  tmp_ctacteboleto.PeriInfo, tmp_ctacteboleto.CodiConc, ExpeCtct, RecaCtct, SaldCtct, ApdeCtct, NufaCtct FROM tmp_ctacteboleto"
  loc_D61AF6: LitStr " WHERE (tmp_ctacteboleto.SaldCtct > 0"
  loc_D61AF9: ConcatStr
  loc_D61AFA: FStStrNoPop var_1B0
  loc_D61AFD: LitStr " OR tmp_ctacteboleto.RecaCtct > 0)"
  loc_D61B00: ConcatStr
  loc_D61B01: FStStrNoPop var_1B4
  loc_D61B04: LitStr " AND tmp_ctacteboleto.SeleCtct = 'Si'"
  loc_D61B07: ConcatStr
  loc_D61B08: FStStrNoPop var_1B8
  loc_D61B0B: LitStr " ORDER BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.PeriCtct, tmp_ctacteboleto.BimeCtct, tmp_ctacteboleto.NumeCtct, tmp_ctacteboleto.MoviCtct"
  loc_D61B0E: ConcatStr
  loc_D61B0F: FStStrNoPop var_1BC
  loc_D61B12: FLdPr Me
  loc_D61B15: MemLdRfVar from_stack_1.global_64
  loc_D61B18: NewIfNullPr clsctacte
  loc_D61B1B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D61B20: FFreeStr var_1B0 = "": var_1B4 = "": var_1B8 = ""
  loc_D61B2B: FLdRfVar var_1C4
  loc_D61B2E: FLdRfVar var_158
  loc_D61B31: FLdPr Me
  loc_D61B34: MemLdRfVar from_stack_1.global_64
  loc_D61B37: NewIfNullPr clsctacte
  loc_D61B3A: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61B3F: FLdPr var_158
  loc_D61B42:  = Me.RecordCount
  loc_D61B47: ILdRf var_1C4
  loc_D61B4A: LitI4 0
  loc_D61B4F: GtI4
  loc_D61B50: FFree1Ad var_158
  loc_D61B53: BranchF loc_D67B66
  loc_D61B56: FLdRfVar var_158
  loc_D61B59: FLdPr Me
  loc_D61B5C: MemLdRfVar from_stack_1.global_64
  loc_D61B5F: NewIfNullPr clsctacte
  loc_D61B62: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61B67: FLdPr var_158
  loc_D61B6A: Me.MoveFirst
  loc_D61B6F: FFree1Ad var_158
  loc_D61B72: FLdRfVar var_1C6
  loc_D61B75: FLdRfVar var_158
  loc_D61B78: FLdPr Me
  loc_D61B7B: MemLdRfVar from_stack_1.global_64
  loc_D61B7E: NewIfNullPr clsctacte
  loc_D61B81: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61B86: FLdPr var_158
  loc_D61B89:  = Me.EOF
  loc_D61B8E: FLdI2 var_1C6
  loc_D61B91: NotI4
  loc_D61B92: FFree1Ad var_158
  loc_D61B95: BranchF loc_D67B66
  loc_D61B98: FLdRfVar var_144
  loc_D61B9B: FLdRfVar var_1D0
  loc_D61B9E: LitVarStr var_134, "CodiFapa"
  loc_D61BA3: PopAdLdVar
  loc_D61BA4: FLdRfVar var_1CC
  loc_D61BA7: FLdRfVar var_158
  loc_D61BAA: FLdPr Me
  loc_D61BAD: MemLdRfVar from_stack_1.global_64
  loc_D61BB0: NewIfNullPr clsctacte
  loc_D61BB3: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61BB8: FLdPr var_158
  loc_D61BBB:  = Me.Fields
  loc_D61BC0: FLdPr var_1CC
  loc_D61BC3: from_stack_2 = Me.Item(from_stack_1)
  loc_D61BC8: FLdPr var_1D0
  loc_D61BCB:  = Me.Value
  loc_D61BD0: FLdRfVar var_144
  loc_D61BD3: FnCLngVar
  loc_D61BD5: LitI4 0
  loc_D61BDA: EqI4
  loc_D61BDB: FFreeAd var_158 = "": var_1CC = ""
  loc_D61BE4: FFree1Var var_144 = ""
  loc_D61BE7: BranchF loc_D6411A
  loc_D61BEA: LitStr "SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, FeveCtct"
  loc_D61BED: LitStr " FROM ctacte "
  loc_D61BF0: ConcatStr
  loc_D61BF1: FStStrNoPop var_1B0
  loc_D61BF4: LitStr " WHERE ctacte.CodiOfic = "
  loc_D61BF7: ConcatStr
  loc_D61BF8: CVarStr var_154
  loc_D61BFB: FLdRfVar var_144
  loc_D61BFE: FLdRfVar var_1D0
  loc_D61C01: LitVarStr var_134, "CodiOfic"
  loc_D61C06: PopAdLdVar
  loc_D61C07: FLdRfVar var_1CC
  loc_D61C0A: FLdRfVar var_158
  loc_D61C0D: FLdPr Me
  loc_D61C10: MemLdRfVar from_stack_1.global_64
  loc_D61C13: NewIfNullPr clsctacte
  loc_D61C16: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61C1B: FLdPr var_158
  loc_D61C1E:  = Me.Fields
  loc_D61C23: FLdPr var_1CC
  loc_D61C26: from_stack_2 = Me.Item(from_stack_1)
  loc_D61C2B: FLdPr var_1D0
  loc_D61C2E:  = Me.Value
  loc_D61C33: FLdRfVar var_144
  loc_D61C36: ConcatVar var_188
  loc_D61C3A: LitVarStr var_168, " AND ctacte.CuenCtct = '"
  loc_D61C3F: ConcatVar var_1A8
  loc_D61C43: FLdRfVar var_20C
  loc_D61C46: FLdRfVar var_1E0
  loc_D61C49: LitVarStr var_178, "CuenCtct"
  loc_D61C4E: PopAdLdVar
  loc_D61C4F: FLdRfVar var_1DC
  loc_D61C52: FLdRfVar var_1D8
  loc_D61C55: FLdPr Me
  loc_D61C58: MemLdRfVar from_stack_1.global_64
  loc_D61C5B: NewIfNullPr clsctacte
  loc_D61C5E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61C63: FLdPr var_1D8
  loc_D61C66:  = Me.Fields
  loc_D61C6B: FLdPr var_1DC
  loc_D61C6E: from_stack_2 = Me.Item(from_stack_1)
  loc_D61C73: FLdPr var_1E0
  loc_D61C76:  = Me.Value
  loc_D61C7B: FLdRfVar var_20C
  loc_D61C7E: ConcatVar var_21C
  loc_D61C82: LitVarStr var_198, "'"
  loc_D61C87: ConcatVar var_22C
  loc_D61C8B: LitVarStr var_23C, " AND ctacte.PeriCtct = "
  loc_D61C90: ConcatVar var_24C
  loc_D61C94: FLdRfVar var_32C
  loc_D61C97: FLdRfVar var_1EC
  loc_D61C9A: LitVarStr var_25C, "PeriCtct"
  loc_D61C9F: PopAdLdVar
  loc_D61CA0: FLdRfVar var_1E8
  loc_D61CA3: FLdRfVar var_1E4
  loc_D61CA6: FLdPr Me
  loc_D61CA9: MemLdRfVar from_stack_1.global_64
  loc_D61CAC: NewIfNullPr clsctacte
  loc_D61CAF: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61CB4: FLdPr var_1E4
  loc_D61CB7:  = Me.Fields
  loc_D61CBC: FLdPr var_1E8
  loc_D61CBF: from_stack_2 = Me.Item(from_stack_1)
  loc_D61CC4: FLdPr var_1EC
  loc_D61CC7:  = Me.Value
  loc_D61CCC: FLdRfVar var_32C
  loc_D61CCF: ConcatVar var_35C
  loc_D61CD3: LitVarStr var_26C, " AND ctacte.BimeCtct = "
  loc_D61CD8: ConcatVar var_38C
  loc_D61CDC: FLdRfVar var_47C
  loc_D61CDF: FLdRfVar var_1F8
  loc_D61CE2: LitVarStr var_27C, "BimeCtct"
  loc_D61CE7: PopAdLdVar
  loc_D61CE8: FLdRfVar var_1F4
  loc_D61CEB: FLdRfVar var_1F0
  loc_D61CEE: FLdPr Me
  loc_D61CF1: MemLdRfVar from_stack_1.global_64
  loc_D61CF4: NewIfNullPr clsctacte
  loc_D61CF7: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61CFC: FLdPr var_1F0
  loc_D61CFF:  = Me.Fields
  loc_D61D04: FLdPr var_1F4
  loc_D61D07: from_stack_2 = Me.Item(from_stack_1)
  loc_D61D0C: FLdPr var_1F8
  loc_D61D0F:  = Me.Value
  loc_D61D14: FLdRfVar var_47C
  loc_D61D17: ConcatVar var_48C
  loc_D61D1B: LitVarStr var_28C, " AND ctacte.NumeCtct = "
  loc_D61D20: ConcatVar var_49C
  loc_D61D24: FLdRfVar var_4B4
  loc_D61D27: FLdRfVar var_4A4
  loc_D61D2A: LitVarStr var_29C, "NumeCtct"
  loc_D61D2F: PopAdLdVar
  loc_D61D30: FLdRfVar var_4A0
  loc_D61D33: FLdRfVar var_1FC
  loc_D61D36: FLdPr Me
  loc_D61D39: MemLdRfVar from_stack_1.global_64
  loc_D61D3C: NewIfNullPr clsctacte
  loc_D61D3F: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61D44: FLdPr var_1FC
  loc_D61D47:  = Me.Fields
  loc_D61D4C: FLdPr var_4A0
  loc_D61D4F: from_stack_2 = Me.Item(from_stack_1)
  loc_D61D54: FLdPr var_4A4
  loc_D61D57:  = Me.Value
  loc_D61D5C: FLdRfVar var_4B4
  loc_D61D5F: ConcatVar var_4C4
  loc_D61D63: LitVarStr var_2AC, " AND ctacte.MoviCtct = "
  loc_D61D68: ConcatVar var_4D4
  loc_D61D6C: FLdRfVar var_4F0
  loc_D61D6F: FLdRfVar var_4E0
  loc_D61D72: LitVarStr var_2BC, "MoviCtct"
  loc_D61D77: PopAdLdVar
  loc_D61D78: FLdRfVar var_4DC
  loc_D61D7B: FLdRfVar var_4D8
  loc_D61D7E: FLdPr Me
  loc_D61D81: MemLdRfVar from_stack_1.global_64
  loc_D61D84: NewIfNullPr clsctacte
  loc_D61D87: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61D8C: FLdPr var_4D8
  loc_D61D8F:  = Me.Fields
  loc_D61D94: FLdPr var_4DC
  loc_D61D97: from_stack_2 = Me.Item(from_stack_1)
  loc_D61D9C: FLdPr var_4E0
  loc_D61D9F:  = Me.Value
  loc_D61DA4: FLdRfVar var_4F0
  loc_D61DA7: ConcatVar var_500
  loc_D61DAB: LitVarStr var_2CC, " ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.MoviCtct"
  loc_D61DB0: ConcatVar var_510
  loc_D61DB4: CStrVarVal var_1B4
  loc_D61DB8: FLdPr Me
  loc_D61DBB: MemLdRfVar from_stack_1.global_56
  loc_D61DBE: NewIfNullPr clsctacte
  loc_D61DC1: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D61DC6: FFreeStr var_1B0 = ""
  loc_D61DCD: FFreeAd var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_4A0 = "": var_4A4 = "": var_4D8 = "": var_4DC = ""
  loc_D61DF4: FFreeVar var_154 = "": var_144 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = "": var_38C = "": var_47C = "": var_48C = "": var_49C = "": var_4B4 = "": var_4C4 = "": var_4D4 = "": var_4F0 = "": var_500 = ""
  loc_D61E1F: FLdRfVar var_1C4
  loc_D61E22: FLdRfVar var_158
  loc_D61E25: FLdPr Me
  loc_D61E28: MemLdRfVar from_stack_1.global_56
  loc_D61E2B: NewIfNullPr clsctacte
  loc_D61E2E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61E33: FLdPr var_158
  loc_D61E36:  = Me.RecordCount
  loc_D61E3B: ILdRf var_1C4
  loc_D61E3E: LitI4 1
  loc_D61E43: EqI4
  loc_D61E44: FFree1Ad var_158
  loc_D61E47: BranchF loc_D64117
  loc_D61E4A: FLdRfVar var_144
  loc_D61E4D: FLdRfVar var_1D0
  loc_D61E50: LitVarStr var_134, "RecaCtct"
  loc_D61E55: PopAdLdVar
  loc_D61E56: FLdRfVar var_1CC
  loc_D61E59: FLdRfVar var_158
  loc_D61E5C: FLdPr Me
  loc_D61E5F: MemLdRfVar from_stack_1.global_64
  loc_D61E62: NewIfNullPr clsctacte
  loc_D61E65: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61E6A: FLdPr var_158
  loc_D61E6D:  = Me.Fields
  loc_D61E72: FLdPr var_1CC
  loc_D61E75: from_stack_2 = Me.Item(from_stack_1)
  loc_D61E7A: FLdPr var_1D0
  loc_D61E7D:  = Me.Value
  loc_D61E82: FLdRfVar var_144
  loc_D61E85: FnCDblVar
  loc_D61E87: LitI2_Byte 0
  loc_D61E89: CR8I2
  loc_D61E8A: GtR4
  loc_D61E8B: FFreeAd var_158 = "": var_1CC = ""
  loc_D61E94: FFree1Var var_144 = ""
  loc_D61E97: BranchF loc_D61F07
  loc_D61E9A: FLdRfVar var_144
  loc_D61E9D: FLdRfVar var_1D0
  loc_D61EA0: LitVarStr var_134, "RecaCtct"
  loc_D61EA5: PopAdLdVar
  loc_D61EA6: FLdRfVar var_1CC
  loc_D61EA9: FLdRfVar var_158
  loc_D61EAC: FLdPr Me
  loc_D61EAF: MemLdRfVar from_stack_1.global_64
  loc_D61EB2: NewIfNullPr clsctacte
  loc_D61EB5: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61EBA: FLdPr var_158
  loc_D61EBD:  = Me.Fields
  loc_D61EC2: FLdPr var_1CC
  loc_D61EC5: from_stack_2 = Me.Item(from_stack_1)
  loc_D61ECA: FLdPr var_1D0
  loc_D61ECD:  = Me.Value
  loc_D61ED2: LitI4 2
  loc_D61ED7: FLdRfVar var_144
  loc_D61EDA: FnCDblVar
  loc_D61EDC: CVarR8
  loc_D61EE0: FLdRfVar var_188
  loc_D61EE3: ImpAdCallFPR4  = Round(, )
  loc_D61EE8: FLdRfVar var_188
  loc_D61EEB: CR4Var
  loc_D61EEC: FLdPr Me
  loc_D61EEF: MemStFPR8 global_144
  loc_D61EF2: FFreeAd var_158 = "": var_1CC = ""
  loc_D61EFB: FFreeVar var_144 = "": var_154 = ""
  loc_D61F04: Branch loc_D61F10
  loc_D61F07: LitI2_Byte 0
  loc_D61F09: CR8I2
  loc_D61F0A: FLdPr Me
  loc_D61F0D: MemStFPR8 global_144
  loc_D61F10: LitI2_Byte 0
  loc_D61F12: CR8I2
  loc_D61F13: FLdPr Me
  loc_D61F16: MemStFPR8 global_160
  loc_D61F19: LitI2_Byte 0
  loc_D61F1B: CR8I2
  loc_D61F1C: FLdPr Me
  loc_D61F1F: MemStFPR8 global_152
  loc_D61F22: LitI2_Byte 0
  loc_D61F24: CR8I2
  loc_D61F25: FLdPr Me
  loc_D61F28: MemStFPR8 global_112
  loc_D61F2B: FLdFPR8 var_C8
  loc_D61F2E: FStFPR8 var_FC
  loc_D61F31: FLdFPR8 var_C8
  loc_D61F34: FStFPR8 var_104
  loc_D61F37: ImpAdLdUI1
  loc_D61F3B: CI2UI1
  loc_D61F3D: LitI2_Byte 5
  loc_D61F3F: EqI2
  loc_D61F40: BranchF loc_D62231
  loc_D61F43: FLdRfVar var_144
  loc_D61F46: FLdRfVar var_1D0
  loc_D61F49: LitVarStr var_134, "FeveCtct"
  loc_D61F4E: PopAdLdVar
  loc_D61F4F: FLdRfVar var_1CC
  loc_D61F52: FLdRfVar var_158
  loc_D61F55: FLdPr Me
  loc_D61F58: MemLdRfVar from_stack_1.global_56
  loc_D61F5B: NewIfNullPr clsctacte
  loc_D61F5E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61F63: FLdPr var_158
  loc_D61F66:  = Me.Fields
  loc_D61F6B: FLdPr var_1CC
  loc_D61F6E: from_stack_2 = Me.Item(from_stack_1)
  loc_D61F73: FLdPr var_1D0
  loc_D61F76:  = Me.Value
  loc_D61F7B: FLdRfVar var_144
  loc_D61F7E: FnCDateVar
  loc_D61F80: FStFPR8 var_104
  loc_D61F83: FFreeAd var_158 = "": var_1CC = ""
  loc_D61F8C: FFree1Var var_144 = ""
  loc_D61F8F: FLdRfVar var_144
  loc_D61F92: FLdRfVar var_1D0
  loc_D61F95: LitVarStr var_134, "CodiConc"
  loc_D61F9A: PopAdLdVar
  loc_D61F9B: FLdRfVar var_1CC
  loc_D61F9E: FLdRfVar var_158
  loc_D61FA1: FLdPr Me
  loc_D61FA4: MemLdRfVar from_stack_1.global_64
  loc_D61FA7: NewIfNullPr clsctacte
  loc_D61FAA: from_stack_1v = clsctacte.RsFrmGet()
  loc_D61FAF: FLdPr var_158
  loc_D61FB2:  = Me.Fields
  loc_D61FB7: FLdPr var_1CC
  loc_D61FBA: from_stack_2 = Me.Item(from_stack_1)
  loc_D61FBF: FLdPr var_1D0
  loc_D61FC2:  = Me.Value
  loc_D61FC7: FLdRfVar var_144
  loc_D61FCA: LitVarStr var_168, "13030801"
  loc_D61FCF: HardType
  loc_D61FD0: EqVarBool
  loc_D61FD2: FFreeAd var_158 = "": var_1CC = ""
  loc_D61FDB: FFree1Var var_144 = ""
  loc_D61FDE: BranchF loc_D62231
  loc_D61FE1: LitI2_Byte &H28
  loc_D61FE3: CR8I2
  loc_D61FE4: FLdPr Me
  loc_D61FE7: MemStFPR8 global_112
  loc_D61FEA: FLdRfVar var_144
  loc_D61FED: FLdRfVar var_1D0
  loc_D61FF0: LitVarStr var_134, "ExpeCtct"
  loc_D61FF5: PopAdLdVar
  loc_D61FF6: FLdRfVar var_1CC
  loc_D61FF9: FLdRfVar var_158
  loc_D61FFC: FLdPr Me
  loc_D61FFF: MemLdRfVar from_stack_1.global_64
  loc_D62002: NewIfNullPr clsctacte
  loc_D62005: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6200A: FLdPr var_158
  loc_D6200D:  = Me.Fields
  loc_D62012: FLdPr var_1CC
  loc_D62015: from_stack_2 = Me.Item(from_stack_1)
  loc_D6201A: FLdPr var_1D0
  loc_D6201D:  = Me.Value
  loc_D62022: FLdRfVar var_1B0
  loc_D62025: FLdPr Me
  loc_D62028: VCallAd Control_ID_NumeCtaTxt
  loc_D6202B: FStAdFunc var_1D8
  loc_D6202E: FLdPr var_1D8
  loc_D62031:  = Me.Text
  loc_D62036: FLdRfVar var_154
  loc_D62039: FLdRfVar var_1E4
  loc_D6203C: LitVarStr var_168, "PeriCtct"
  loc_D62041: PopAdLdVar
  loc_D62042: FLdRfVar var_1E0
  loc_D62045: FLdRfVar var_1DC
  loc_D62048: FLdPr Me
  loc_D6204B: MemLdRfVar from_stack_1.global_64
  loc_D6204E: NewIfNullPr clsctacte
  loc_D62051: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62056: FLdPr var_1DC
  loc_D62059:  = Me.Fields
  loc_D6205E: FLdPr var_1E0
  loc_D62061: from_stack_2 = Me.Item(from_stack_1)
  loc_D62066: FLdPr var_1E4
  loc_D62069:  = Me.Value
  loc_D6206E: FLdRfVar var_188
  loc_D62071: FLdRfVar var_1F0
  loc_D62074: LitVarStr var_178, "BimeCtct"
  loc_D62079: PopAdLdVar
  loc_D6207A: FLdRfVar var_1EC
  loc_D6207D: FLdRfVar var_1E8
  loc_D62080: FLdPr Me
  loc_D62083: MemLdRfVar from_stack_1.global_64
  loc_D62086: NewIfNullPr clsctacte
  loc_D62089: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6208E: FLdPr var_1E8
  loc_D62091:  = Me.Fields
  loc_D62096: FLdPr var_1EC
  loc_D62099: from_stack_2 = Me.Item(from_stack_1)
  loc_D6209E: FLdPr var_1F0
  loc_D620A1:  = Me.Value
  loc_D620A6: FLdRfVar var_1A8
  loc_D620A9: FLdRfVar var_1FC
  loc_D620AC: LitVarStr var_198, "NumeCtct"
  loc_D620B1: PopAdLdVar
  loc_D620B2: FLdRfVar var_1F8
  loc_D620B5: FLdRfVar var_1F4
  loc_D620B8: FLdPr Me
  loc_D620BB: MemLdRfVar from_stack_1.global_64
  loc_D620BE: NewIfNullPr clsctacte
  loc_D620C1: from_stack_1v = clsctacte.RsFrmGet()
  loc_D620C6: FLdPr var_1F4
  loc_D620C9:  = Me.Fields
  loc_D620CE: FLdPr var_1F8
  loc_D620D1: from_stack_2 = Me.Item(from_stack_1)
  loc_D620D6: FLdPr var_1FC
  loc_D620D9:  = Me.Value
  loc_D620DE: FLdRfVar var_1A8
  loc_D620E1: CI4Var
  loc_D620E3: FLdRfVar var_188
  loc_D620E6: CI2Var
  loc_D620E7: FLdRfVar var_154
  loc_D620EA: CI2Var
  loc_D620EB: ILdRf var_1B0
  loc_D620EE: FLdRfVar var_144
  loc_D620F1: CStrVarTmp
  loc_D620F2: FStStrNoPop var_1B4
  loc_D620F5: ImpAdCallFPR4 Proc_270_87_AD28D4(, , , , )
  loc_D620FA: FStFPR8 var_F4
  loc_D620FD: FFreeStr var_1B4 = ""
  loc_D62104: FFreeAd var_158 = "": var_1CC = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E8 = "": var_1EC = "": var_1F4 = "": var_1F8 = "": var_1D0 = "": var_1E4 = "": var_1F0 = ""
  loc_D62121: FFreeVar var_144 = "": var_154 = "": var_188 = ""
  loc_D6212C: FLdRfVar var_F4
  loc_D6212F: CVarRef
  loc_D62134: ImpAdCallI2 IsDate()
  loc_D62139: FLdFPR8 var_F4
  loc_D6213C: LitStr "2019/01/01"
  loc_D6213F: CDateStr
  loc_D62141: GeR8
  loc_D62142: AndI4
  loc_D62143: BranchF loc_D6221F
  loc_D62146: LitI2_Byte 3
  loc_D62148: CUI1I2
  loc_D6214A: PopTmpLdAd1
  loc_D6214E: FLdRfVar var_F4
  loc_D62151: ImpAdCallFPR4 Proc_18_127_AE5A54(, )
  loc_D62156: FStFPR8 var_FC
  loc_D62159: FLdPr Me
  loc_D6215C: VCallAd Control_ID_FechVencMsk
  loc_D6215F: FStAdFunc var_158
  loc_D62162: FLdPr var_158
  loc_D62165: LateIdLdVar var_144 DispID_22 0
  loc_D6216C: CStrVarTmp
  loc_D6216D: FStStrNoPop var_1B0
  loc_D62170: CDateStr
  loc_D62172: FLdFPR8 var_FC
  loc_D62175: LeR8
  loc_D62176: FFree1Str var_1B0
  loc_D62179: FFree1Ad var_158
  loc_D6217C: FFree1Var var_144 = ""
  loc_D6217F: BranchF loc_D6220A
  loc_D62182: FLdRfVar var_144
  loc_D62185: FLdRfVar var_1D0
  loc_D62188: LitVarStr var_134, "SaldCtct"
  loc_D6218D: PopAdLdVar
  loc_D6218E: FLdRfVar var_1CC
  loc_D62191: FLdRfVar var_158
  loc_D62194: FLdPr Me
  loc_D62197: MemLdRfVar from_stack_1.global_64
  loc_D6219A: NewIfNullPr clsctacte
  loc_D6219D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D621A2: FLdPr var_158
  loc_D621A5:  = Me.Fields
  loc_D621AA: FLdPr var_1CC
  loc_D621AD: from_stack_2 = Me.Item(from_stack_1)
  loc_D621B2: FLdPr var_1D0
  loc_D621B5:  = Me.Value
  loc_D621BA: FLdPr Me
  loc_D621BD: MemLdFPR8 global_152
  loc_D621C0: CVarR8
  loc_D621C4: LitI4 2
  loc_D621C9: FLdRfVar var_144
  loc_D621CC: FnCDblVar
  loc_D621CE: FLdPr Me
  loc_D621D1: MemLdFPR8 global_112
  loc_D621D4: MulR8
  loc_D621D5: LitI2_Byte &H64
  loc_D621D7: CR8I2
  loc_D621D8: DivR8
  loc_D621D9: CVarR8
  loc_D621DD: FLdRfVar var_188
  loc_D621E0: ImpAdCallFPR4  = Round(, )
  loc_D621E5: FLdRfVar var_188
  loc_D621E8: AddVar var_1A8
  loc_D621EC: CR4Var
  loc_D621ED: FLdPr Me
  loc_D621F0: MemStFPR8 global_152
  loc_D621F3: FFreeAd var_158 = "": var_1CC = ""
  loc_D621FC: FFreeVar var_144 = "": var_154 = "": var_188 = ""
  loc_D62207: Branch loc_D6221C
  loc_D6220A: LitI2_Byte 0
  loc_D6220C: CR8I2
  loc_D6220D: FLdPr Me
  loc_D62210: MemStFPR8 global_152
  loc_D62213: LitI2_Byte 0
  loc_D62215: CR8I2
  loc_D62216: FLdPr Me
  loc_D62219: MemStFPR8 global_112
  loc_D6221C: Branch loc_D62231
  loc_D6221F: LitI2_Byte 0
  loc_D62221: CR8I2
  loc_D62222: FLdPr Me
  loc_D62225: MemStFPR8 global_152
  loc_D62228: LitI2_Byte 0
  loc_D6222A: CR8I2
  loc_D6222B: FLdPr Me
  loc_D6222E: MemStFPR8 global_112
  loc_D62231: FLdRfVar var_144
  loc_D62234: FLdRfVar var_1D0
  loc_D62237: LitVarStr var_134, "SaldCtct"
  loc_D6223C: PopAdLdVar
  loc_D6223D: FLdRfVar var_1CC
  loc_D62240: FLdRfVar var_158
  loc_D62243: FLdPr Me
  loc_D62246: MemLdRfVar from_stack_1.global_64
  loc_D62249: NewIfNullPr clsctacte
  loc_D6224C: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62251: FLdPr var_158
  loc_D62254:  = Me.Fields
  loc_D62259: FLdPr var_1CC
  loc_D6225C: from_stack_2 = Me.Item(from_stack_1)
  loc_D62261: FLdPr var_1D0
  loc_D62264:  = Me.Value
  loc_D62269: LitI4 2
  loc_D6226E: FLdRfVar var_144
  loc_D62271: FnCDblVar
  loc_D62273: FLdPr Me
  loc_D62276: MemLdFPR8 global_152
  loc_D62279: SubR4
  loc_D6227A: FLdPr Me
  loc_D6227D: MemLdFPR8 global_144
  loc_D62280: AddR8
  loc_D62281: FLdPr Me
  loc_D62284: MemLdFPR8 global_160
  loc_D62287: SubR4
  loc_D62288: CVarR8
  loc_D6228C: FLdRfVar var_188
  loc_D6228F: ImpAdCallFPR4  = Round(, )
  loc_D62294: FLdRfVar var_188
  loc_D62297: CR4Var
  loc_D62298: FLdPr Me
  loc_D6229B: MemStFPR8 global_176
  loc_D6229E: FFreeAd var_158 = "": var_1CC = ""
  loc_D622A7: FFreeVar var_144 = "": var_154 = ""
  loc_D622B0: FLdRfVar var_710
  loc_D622B3: FLdRfVar var_700
  loc_D622B6: LitVarStr var_6FC, "SaldCtct"
  loc_D622BB: PopAdLdVar
  loc_D622BC: FLdRfVar var_6EC
  loc_D622BF: FLdRfVar var_6E8
  loc_D622C2: FLdPr Me
  loc_D622C5: MemLdRfVar from_stack_1.global_64
  loc_D622C8: NewIfNullPr clsctacte
  loc_D622CB: from_stack_1v = clsctacte.RsFrmGet()
  loc_D622D0: FLdPr var_6E8
  loc_D622D3:  = Me.Fields
  loc_D622D8: FLdPr var_6EC
  loc_D622DB: from_stack_2 = Me.Item(from_stack_1)
  loc_D622E0: FLdPr var_700
  loc_D622E3:  = Me.Value
  loc_D622E8: FLdPr Me
  loc_D622EB: MemLdStr global_260
  loc_D622EE: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, CrafDebo, ApreDebo, TotaDebo) "
  loc_D622F1: ConcatStr
  loc_D622F2: FStStrNoPop var_1B0
  loc_D622F5: LitStr " VALUES ("
  loc_D622F8: ConcatStr
  loc_D622F9: FStStrNoPop var_1B4
  loc_D622FC: FLdI2 var_86
  loc_D622FF: CStrUI1
  loc_D62301: FStStrNoPop var_1B8
  loc_D62304: ConcatStr
  loc_D62305: FStStrNoPop var_1BC
  loc_D62308: LitStr ","
  loc_D6230B: ConcatStr
  loc_D6230C: FStStrNoPop var_1C0
  loc_D6230F: ILdRf var_8C
  loc_D62312: CStrI4
  loc_D62314: FStStrNoPop var_1D4
  loc_D62317: ConcatStr
  loc_D62318: FStStrNoPop var_390
  loc_D6231B: LitStr ","
  loc_D6231E: ConcatStr
  loc_D6231F: CVarStr var_154
  loc_D62322: FLdRfVar var_144
  loc_D62325: FLdRfVar var_1D0
  loc_D62328: LitVarStr var_134, "PeriCtct"
  loc_D6232D: PopAdLdVar
  loc_D6232E: FLdRfVar var_1CC
  loc_D62331: FLdRfVar var_158
  loc_D62334: FLdPr Me
  loc_D62337: MemLdRfVar from_stack_1.global_56
  loc_D6233A: NewIfNullPr clsctacte
  loc_D6233D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62342: FLdPr var_158
  loc_D62345:  = Me.Fields
  loc_D6234A: FLdPr var_1CC
  loc_D6234D: from_stack_2 = Me.Item(from_stack_1)
  loc_D62352: FLdPr var_1D0
  loc_D62355:  = Me.Value
  loc_D6235A: FLdRfVar var_144
  loc_D6235D: ConcatVar var_188
  loc_D62361: LitVarStr var_168, ","
  loc_D62366: ConcatVar var_1A8
  loc_D6236A: FLdRfVar var_20C
  loc_D6236D: FLdRfVar var_1E0
  loc_D62370: LitVarStr var_178, "BimeCtct"
  loc_D62375: PopAdLdVar
  loc_D62376: FLdRfVar var_1DC
  loc_D62379: FLdRfVar var_1D8
  loc_D6237C: FLdPr Me
  loc_D6237F: MemLdRfVar from_stack_1.global_56
  loc_D62382: NewIfNullPr clsctacte
  loc_D62385: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6238A: FLdPr var_1D8
  loc_D6238D:  = Me.Fields
  loc_D62392: FLdPr var_1DC
  loc_D62395: from_stack_2 = Me.Item(from_stack_1)
  loc_D6239A: FLdPr var_1E0
  loc_D6239D:  = Me.Value
  loc_D623A2: FLdRfVar var_20C
  loc_D623A5: ConcatVar var_21C
  loc_D623A9: LitVarStr var_198, ","
  loc_D623AE: ConcatVar var_22C
  loc_D623B2: FLdRfVar var_24C
  loc_D623B5: FLdRfVar var_1EC
  loc_D623B8: LitVarStr var_23C, "NumeCtct"
  loc_D623BD: PopAdLdVar
  loc_D623BE: FLdRfVar var_1E8
  loc_D623C1: FLdRfVar var_1E4
  loc_D623C4: FLdPr Me
  loc_D623C7: MemLdRfVar from_stack_1.global_56
  loc_D623CA: NewIfNullPr clsctacte
  loc_D623CD: from_stack_1v = clsctacte.RsFrmGet()
  loc_D623D2: FLdPr var_1E4
  loc_D623D5:  = Me.Fields
  loc_D623DA: FLdPr var_1E8
  loc_D623DD: from_stack_2 = Me.Item(from_stack_1)
  loc_D623E2: FLdPr var_1EC
  loc_D623E5:  = Me.Value
  loc_D623EA: FLdRfVar var_24C
  loc_D623ED: ConcatVar var_32C
  loc_D623F1: LitVarStr var_25C, ","
  loc_D623F6: ConcatVar var_35C
  loc_D623FA: FLdRfVar var_38C
  loc_D623FD: FLdRfVar var_1F8
  loc_D62400: LitVarStr var_26C, "MoviCtct"
  loc_D62405: PopAdLdVar
  loc_D62406: FLdRfVar var_1F4
  loc_D62409: FLdRfVar var_1F0
  loc_D6240C: FLdPr Me
  loc_D6240F: MemLdRfVar from_stack_1.global_56
  loc_D62412: NewIfNullPr clsctacte
  loc_D62415: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6241A: FLdPr var_1F0
  loc_D6241D:  = Me.Fields
  loc_D62422: FLdPr var_1F4
  loc_D62425: from_stack_2 = Me.Item(from_stack_1)
  loc_D6242A: FLdPr var_1F8
  loc_D6242D:  = Me.Value
  loc_D62432: FLdRfVar var_38C
  loc_D62435: ConcatVar var_47C
  loc_D62439: LitVarStr var_27C, ",1,"
  loc_D6243E: ConcatVar var_48C
  loc_D62442: FLdRfVar var_49C
  loc_D62445: FLdRfVar var_4A4
  loc_D62448: LitVarStr var_28C, "CodiOfic"
  loc_D6244D: PopAdLdVar
  loc_D6244E: FLdRfVar var_4A0
  loc_D62451: FLdRfVar var_1FC
  loc_D62454: FLdPr Me
  loc_D62457: MemLdRfVar from_stack_1.global_56
  loc_D6245A: NewIfNullPr clsctacte
  loc_D6245D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62462: FLdPr var_1FC
  loc_D62465:  = Me.Fields
  loc_D6246A: FLdPr var_4A0
  loc_D6246D: from_stack_2 = Me.Item(from_stack_1)
  loc_D62472: FLdPr var_4A4
  loc_D62475:  = Me.Value
  loc_D6247A: FLdRfVar var_49C
  loc_D6247D: ConcatVar var_4B4
  loc_D62481: LitVarStr var_29C, ",'"
  loc_D62486: ConcatVar var_4C4
  loc_D6248A: FLdRfVar var_4D4
  loc_D6248D: FLdRfVar var_4E0
  loc_D62490: LitVarStr var_2AC, "CuenCtct"
  loc_D62495: PopAdLdVar
  loc_D62496: FLdRfVar var_4DC
  loc_D62499: FLdRfVar var_4D8
  loc_D6249C: FLdPr Me
  loc_D6249F: MemLdRfVar from_stack_1.global_56
  loc_D624A2: NewIfNullPr clsctacte
  loc_D624A5: from_stack_1v = clsctacte.RsFrmGet()
  loc_D624AA: FLdPr var_4D8
  loc_D624AD:  = Me.Fields
  loc_D624B2: FLdPr var_4DC
  loc_D624B5: from_stack_2 = Me.Item(from_stack_1)
  loc_D624BA: FLdPr var_4E0
  loc_D624BD:  = Me.Value
  loc_D624C2: FLdRfVar var_4D4
  loc_D624C5: ConcatVar var_4F0
  loc_D624C9: LitVarStr var_2BC, "','"
  loc_D624CE: ConcatVar var_500
  loc_D624D2: FLdRfVar var_510
  loc_D624D5: FLdRfVar var_51C
  loc_D624D8: LitVarStr var_2CC, "TipoCtct"
  loc_D624DD: PopAdLdVar
  loc_D624DE: FLdRfVar var_518
  loc_D624E1: FLdRfVar var_514
  loc_D624E4: FLdPr Me
  loc_D624E7: MemLdRfVar from_stack_1.global_56
  loc_D624EA: NewIfNullPr clsctacte
  loc_D624ED: from_stack_1v = clsctacte.RsFrmGet()
  loc_D624F2: FLdPr var_514
  loc_D624F5:  = Me.Fields
  loc_D624FA: FLdPr var_518
  loc_D624FD: from_stack_2 = Me.Item(from_stack_1)
  loc_D62502: FLdPr var_51C
  loc_D62505:  = Me.Value
  loc_D6250A: FLdRfVar var_510
  loc_D6250D: ConcatVar var_52C
  loc_D62511: LitVarStr var_2DC, "',"
  loc_D62516: ConcatVar var_53C
  loc_D6251A: FLdRfVar var_558
  loc_D6251D: FLdRfVar var_548
  loc_D62520: LitVarStr var_2EC, "CodiFapa"
  loc_D62525: PopAdLdVar
  loc_D62526: FLdRfVar var_544
  loc_D62529: FLdRfVar var_540
  loc_D6252C: FLdPr Me
  loc_D6252F: MemLdRfVar from_stack_1.global_56
  loc_D62532: NewIfNullPr clsctacte
  loc_D62535: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6253A: FLdPr var_540
  loc_D6253D:  = Me.Fields
  loc_D62542: FLdPr var_544
  loc_D62545: from_stack_2 = Me.Item(from_stack_1)
  loc_D6254A: FLdPr var_548
  loc_D6254D:  = Me.Value
  loc_D62552: FLdRfVar var_558
  loc_D62555: ConcatVar var_568
  loc_D62559: LitVarStr var_2FC, ","
  loc_D6255E: ConcatVar var_578
  loc_D62562: FLdRfVar var_594
  loc_D62565: FLdRfVar var_584
  loc_D62568: LitVarStr var_30C, "CuotDefa"
  loc_D6256D: PopAdLdVar
  loc_D6256E: FLdRfVar var_580
  loc_D62571: FLdRfVar var_57C
  loc_D62574: FLdPr Me
  loc_D62577: MemLdRfVar from_stack_1.global_56
  loc_D6257A: NewIfNullPr clsctacte
  loc_D6257D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62582: FLdPr var_57C
  loc_D62585:  = Me.Fields
  loc_D6258A: FLdPr var_580
  loc_D6258D: from_stack_2 = Me.Item(from_stack_1)
  loc_D62592: FLdPr var_584
  loc_D62595:  = Me.Value
  loc_D6259A: FLdRfVar var_594
  loc_D6259D: ConcatVar var_5A4
  loc_D625A1: LitVarStr var_31C, ","
  loc_D625A6: ConcatVar var_5B4
  loc_D625AA: FLdRfVar var_5D0
  loc_D625AD: FLdRfVar var_5C0
  loc_D625B0: LitVarStr var_33C, "NumeApre"
  loc_D625B5: PopAdLdVar
  loc_D625B6: FLdRfVar var_5BC
  loc_D625B9: FLdRfVar var_5B8
  loc_D625BC: FLdPr Me
  loc_D625BF: MemLdRfVar from_stack_1.global_56
  loc_D625C2: NewIfNullPr clsctacte
  loc_D625C5: from_stack_1v = clsctacte.RsFrmGet()
  loc_D625CA: FLdPr var_5B8
  loc_D625CD:  = Me.Fields
  loc_D625D2: FLdPr var_5BC
  loc_D625D5: from_stack_2 = Me.Item(from_stack_1)
  loc_D625DA: FLdPr var_5C0
  loc_D625DD:  = Me.Value
  loc_D625E2: FLdRfVar var_5D0
  loc_D625E5: ConcatVar var_5E0
  loc_D625E9: LitVarStr var_34C, ","
  loc_D625EE: ConcatVar var_5F0
  loc_D625F2: FLdRfVar var_60C
  loc_D625F5: FLdRfVar var_5FC
  loc_D625F8: LitVarStr var_36C, "CodiTimo"
  loc_D625FD: PopAdLdVar
  loc_D625FE: FLdRfVar var_5F8
  loc_D62601: FLdRfVar var_5F4
  loc_D62604: FLdPr Me
  loc_D62607: MemLdRfVar from_stack_1.global_56
  loc_D6260A: NewIfNullPr clsctacte
  loc_D6260D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62612: FLdPr var_5F4
  loc_D62615:  = Me.Fields
  loc_D6261A: FLdPr var_5F8
  loc_D6261D: from_stack_2 = Me.Item(from_stack_1)
  loc_D62622: FLdPr var_5FC
  loc_D62625:  = Me.Value
  loc_D6262A: FLdRfVar var_60C
  loc_D6262D: ConcatVar var_61C
  loc_D62631: LitVarStr var_37C, ","
  loc_D62636: ConcatVar var_62C
  loc_D6263A: FLdRfVar var_658
  loc_D6263D: FLdRfVar var_648
  loc_D62640: LitVarStr var_644, "PeriInfo"
  loc_D62645: PopAdLdVar
  loc_D62646: FLdRfVar var_634
  loc_D62649: FLdRfVar var_630
  loc_D6264C: FLdPr Me
  loc_D6264F: MemLdRfVar from_stack_1.global_56
  loc_D62652: NewIfNullPr clsctacte
  loc_D62655: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6265A: FLdPr var_630
  loc_D6265D:  = Me.Fields
  loc_D62662: FLdPr var_634
  loc_D62665: from_stack_2 = Me.Item(from_stack_1)
  loc_D6266A: FLdPr var_648
  loc_D6266D:  = Me.Value
  loc_D62672: FLdRfVar var_658
  loc_D62675: ConcatVar var_668
  loc_D62679: LitVarStr var_678, ",'"
  loc_D6267E: ConcatVar var_688
  loc_D62682: FLdRfVar var_6B4
  loc_D62685: FLdRfVar var_6A4
  loc_D62688: LitVarStr var_6A0, "CodiConc"
  loc_D6268D: PopAdLdVar
  loc_D6268E: FLdRfVar var_690
  loc_D62691: FLdRfVar var_68C
  loc_D62694: FLdPr Me
  loc_D62697: MemLdRfVar from_stack_1.global_56
  loc_D6269A: NewIfNullPr clsctacte
  loc_D6269D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D626A2: FLdPr var_68C
  loc_D626A5:  = Me.Fields
  loc_D626AA: FLdPr var_690
  loc_D626AD: from_stack_2 = Me.Item(from_stack_1)
  loc_D626B2: FLdPr var_6A4
  loc_D626B5:  = Me.Value
  loc_D626BA: FLdRfVar var_6B4
  loc_D626BD: ConcatVar var_6C4
  loc_D626C1: LitVarStr var_6D4, "',"
  loc_D626C6: ConcatVar var_6E4
  loc_D626CA: LitI4 0
  loc_D626CF: LitI4 -1
  loc_D626D4: LitI4 1
  loc_D626D9: LitStr "."
  loc_D626DC: LitStr ","
  loc_D626DF: FLdRfVar var_710
  loc_D626E2: FnCDblVar
  loc_D626E4: CStrR8
  loc_D626E6: FStStrNoPop var_394
  loc_D626E9: ImpAdCallI2 Replace(, , , , , )
  loc_D626EE: CVarStr var_720
  loc_D626F1: ConcatVar var_730
  loc_D626F5: LitVarStr var_740, ","
  loc_D626FA: ConcatVar var_750
  loc_D626FE: LitI4 0
  loc_D62703: LitI4 -1
  loc_D62708: LitI4 1
  loc_D6270D: LitStr "."
  loc_D62710: LitStr ","
  loc_D62713: FLdPr Me
  loc_D62716: MemLdFPR8 global_152
  loc_D62719: CStrR8
  loc_D6271B: FStStrNoPop var_398
  loc_D6271E: ImpAdCallI2 Replace(, , , , , )
  loc_D62723: CVarStr var_760
  loc_D62726: ConcatVar var_770
  loc_D6272A: LitVarStr var_780, ","
  loc_D6272F: ConcatVar var_790
  loc_D62733: LitI4 0
  loc_D62738: LitI4 -1
  loc_D6273D: LitI4 1
  loc_D62742: LitStr "."
  loc_D62745: LitStr ","
  loc_D62748: FLdPr Me
  loc_D6274B: MemLdFPR8 global_144
  loc_D6274E: CStrR8
  loc_D62750: FStStrNoPop var_39C
  loc_D62753: ImpAdCallI2 Replace(, , , , , )
  loc_D62758: CVarStr var_7A0
  loc_D6275B: ConcatVar var_7B0
  loc_D6275F: LitVarStr var_7C0, ","
  loc_D62764: ConcatVar var_7D0
  loc_D62768: LitI4 0
  loc_D6276D: LitI4 -1
  loc_D62772: LitI4 1
  loc_D62777: LitStr "."
  loc_D6277A: LitStr ","
  loc_D6277D: FLdPr Me
  loc_D62780: MemLdFPR8 global_160
  loc_D62783: CStrR8
  loc_D62785: FStStrNoPop var_3A0
  loc_D62788: ImpAdCallI2 Replace(, , , , , )
  loc_D6278D: CVarStr var_7E0
  loc_D62790: ConcatVar var_7F0
  loc_D62794: LitVarStr var_800, ",0,0,0,0,"
  loc_D62799: ConcatVar var_810
  loc_D6279D: LitI4 0
  loc_D627A2: LitI4 -1
  loc_D627A7: LitI4 1
  loc_D627AC: LitStr "."
  loc_D627AF: LitStr ","
  loc_D627B2: FLdPr Me
  loc_D627B5: MemLdFPR8 global_176
  loc_D627B8: CStrR8
  loc_D627BA: FStStrNoPop var_3A4
  loc_D627BD: ImpAdCallI2 Replace(, , , , , )
  loc_D627C2: CVarStr var_820
  loc_D627C5: ConcatVar var_830
  loc_D627C9: LitVarStr var_840, ");"
  loc_D627CE: ConcatVar var_850
  loc_D627D2: CStrVarTmp
  loc_D627D3: FStStrNoPop var_3A8
  loc_D627D6: FLdPr Me
  loc_D627D9: MemStStrCopy
  loc_D627DD: FFreeStr var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1D4 = "": var_390 = "": var_394 = "": var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = ""
  loc_D627FA: FFreeAd var_5F4 = "": var_5F8 = "": var_5FC = "": var_630 = "": var_634 = "": var_648 = "": var_68C = "": var_690 = "": var_6A4 = "": var_6E8 = "": var_6EC = "": var_700 = "": var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_4A0 = "": var_4A4 = "": var_4D8 = "": var_4DC = "": var_4E0 = "": var_514 = "": var_518 = "": var_51C = "": var_540 = "": var_544 = "": var_548 = "": var_57C = "": var_580 = "": var_584 = "": var_5B8 = "": var_5BC = ""
  loc_D62851: FFreeVar var_5F0 = "": var_60C = "": var_61C = "": var_62C = "": var_658 = "": var_668 = "": var_688 = "": var_6B4 = "": var_6C4 = "": var_710 = "": var_6E4 = "": var_720 = "": var_730 = "": var_750 = "": var_760 = "": var_770 = "": var_790 = "": var_7A0 = "": var_7B0 = "": var_7D0 = "": var_7E0 = "": var_7F0 = "": var_810 = "": var_820 = "": var_830 = "": var_850 = "": var_154 = "": var_144 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = "": var_38C = "": var_47C = "": var_48C = "": var_49C = "": var_4B4 = "": var_4C4 = "": var_4D4 = "": var_4F0 = "": var_500 = "": var_510 = "": var_52C = "": var_53C = "": var_558 = "": var_568 = "": var_578 = "": var_594 = "": var_5A4 = "": var_5B4 = "": var_5D0 = ""
  loc_D628C4: FLdRfVar var_144
  loc_D628C7: FLdRfVar var_1D0
  loc_D628CA: LitVarStr var_134, "SaldCtct"
  loc_D628CF: PopAdLdVar
  loc_D628D0: FLdRfVar var_1CC
  loc_D628D3: FLdRfVar var_158
  loc_D628D6: FLdPr Me
  loc_D628D9: MemLdRfVar from_stack_1.global_64
  loc_D628DC: NewIfNullPr clsctacte
  loc_D628DF: from_stack_1v = clsctacte.RsFrmGet()
  loc_D628E4: FLdPr var_158
  loc_D628E7:  = Me.Fields
  loc_D628EC: FLdPr var_1CC
  loc_D628EF: from_stack_2 = Me.Item(from_stack_1)
  loc_D628F4: FLdPr var_1D0
  loc_D628F7:  = Me.Value
  loc_D628FC: LitI4 2
  loc_D62901: FLdRfVar var_144
  loc_D62904: FnCDblVar
  loc_D62906: CVarR8
  loc_D6290A: FLdRfVar var_188
  loc_D6290D: ImpAdCallFPR4  = Round(, )
  loc_D62912: FLdRfVar var_188
  loc_D62915: CR4Var
  loc_D62916: FStFPR8 var_A8
  loc_D62919: FFreeAd var_158 = "": var_1CC = ""
  loc_D62922: FFreeVar var_144 = "": var_154 = ""
  loc_D6292B: LitStr "SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, PeriOrde, CodiCtde, NumeCtde, MoviCtde, SUM(DebeCtde)-SUM(CredCtde) as SaldCtde"
  loc_D6292E: LitStr " FROM ctactedeta "
  loc_D62931: ConcatStr
  loc_D62932: FStStrNoPop var_1B0
  loc_D62935: LitStr " WHERE CodiOfic = "
  loc_D62938: ConcatStr
  loc_D62939: CVarStr var_154
  loc_D6293C: FLdRfVar var_144
  loc_D6293F: FLdRfVar var_1D0
  loc_D62942: LitVarStr var_134, "CodiOfic"
  loc_D62947: PopAdLdVar
  loc_D62948: FLdRfVar var_1CC
  loc_D6294B: FLdRfVar var_158
  loc_D6294E: FLdPr Me
  loc_D62951: MemLdRfVar from_stack_1.global_56
  loc_D62954: NewIfNullPr clsctacte
  loc_D62957: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6295C: FLdPr var_158
  loc_D6295F:  = Me.Fields
  loc_D62964: FLdPr var_1CC
  loc_D62967: from_stack_2 = Me.Item(from_stack_1)
  loc_D6296C: FLdPr var_1D0
  loc_D6296F:  = Me.Value
  loc_D62974: FLdRfVar var_144
  loc_D62977: ConcatVar var_188
  loc_D6297B: LitVarStr var_168, " AND CuenCtct = '"
  loc_D62980: ConcatVar var_1A8
  loc_D62984: FLdRfVar var_20C
  loc_D62987: FLdRfVar var_1E0
  loc_D6298A: LitVarStr var_178, "CuenCtct"
  loc_D6298F: PopAdLdVar
  loc_D62990: FLdRfVar var_1DC
  loc_D62993: FLdRfVar var_1D8
  loc_D62996: FLdPr Me
  loc_D62999: MemLdRfVar from_stack_1.global_56
  loc_D6299C: NewIfNullPr clsctacte
  loc_D6299F: from_stack_1v = clsctacte.RsFrmGet()
  loc_D629A4: FLdPr var_1D8
  loc_D629A7:  = Me.Fields
  loc_D629AC: FLdPr var_1DC
  loc_D629AF: from_stack_2 = Me.Item(from_stack_1)
  loc_D629B4: FLdPr var_1E0
  loc_D629B7:  = Me.Value
  loc_D629BC: FLdRfVar var_20C
  loc_D629BF: ConcatVar var_21C
  loc_D629C3: LitVarStr var_198, "'"
  loc_D629C8: ConcatVar var_22C
  loc_D629CC: LitVarStr var_23C, " AND PeriCtct = "
  loc_D629D1: ConcatVar var_24C
  loc_D629D5: FLdRfVar var_32C
  loc_D629D8: FLdRfVar var_1EC
  loc_D629DB: LitVarStr var_25C, "PeriCtct"
  loc_D629E0: PopAdLdVar
  loc_D629E1: FLdRfVar var_1E8
  loc_D629E4: FLdRfVar var_1E4
  loc_D629E7: FLdPr Me
  loc_D629EA: MemLdRfVar from_stack_1.global_56
  loc_D629ED: NewIfNullPr clsctacte
  loc_D629F0: from_stack_1v = clsctacte.RsFrmGet()
  loc_D629F5: FLdPr var_1E4
  loc_D629F8:  = Me.Fields
  loc_D629FD: FLdPr var_1E8
  loc_D62A00: from_stack_2 = Me.Item(from_stack_1)
  loc_D62A05: FLdPr var_1EC
  loc_D62A08:  = Me.Value
  loc_D62A0D: FLdRfVar var_32C
  loc_D62A10: ConcatVar var_35C
  loc_D62A14: LitVarStr var_26C, " AND BimeCtct = "
  loc_D62A19: ConcatVar var_38C
  loc_D62A1D: FLdRfVar var_47C
  loc_D62A20: FLdRfVar var_1F8
  loc_D62A23: LitVarStr var_27C, "BimeCtct"
  loc_D62A28: PopAdLdVar
  loc_D62A29: FLdRfVar var_1F4
  loc_D62A2C: FLdRfVar var_1F0
  loc_D62A2F: FLdPr Me
  loc_D62A32: MemLdRfVar from_stack_1.global_56
  loc_D62A35: NewIfNullPr clsctacte
  loc_D62A38: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62A3D: FLdPr var_1F0
  loc_D62A40:  = Me.Fields
  loc_D62A45: FLdPr var_1F4
  loc_D62A48: from_stack_2 = Me.Item(from_stack_1)
  loc_D62A4D: FLdPr var_1F8
  loc_D62A50:  = Me.Value
  loc_D62A55: FLdRfVar var_47C
  loc_D62A58: ConcatVar var_48C
  loc_D62A5C: LitVarStr var_28C, " AND NumeCtct = "
  loc_D62A61: ConcatVar var_49C
  loc_D62A65: FLdRfVar var_4B4
  loc_D62A68: FLdRfVar var_4A4
  loc_D62A6B: LitVarStr var_29C, "NumeCtct"
  loc_D62A70: PopAdLdVar
  loc_D62A71: FLdRfVar var_4A0
  loc_D62A74: FLdRfVar var_1FC
  loc_D62A77: FLdPr Me
  loc_D62A7A: MemLdRfVar from_stack_1.global_56
  loc_D62A7D: NewIfNullPr clsctacte
  loc_D62A80: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62A85: FLdPr var_1FC
  loc_D62A88:  = Me.Fields
  loc_D62A8D: FLdPr var_4A0
  loc_D62A90: from_stack_2 = Me.Item(from_stack_1)
  loc_D62A95: FLdPr var_4A4
  loc_D62A98:  = Me.Value
  loc_D62A9D: FLdRfVar var_4B4
  loc_D62AA0: ConcatVar var_4C4
  loc_D62AA4: LitVarStr var_2AC, " AND MoviCtct = "
  loc_D62AA9: ConcatVar var_4D4
  loc_D62AAD: FLdRfVar var_4F0
  loc_D62AB0: FLdRfVar var_4E0
  loc_D62AB3: LitVarStr var_2BC, "MoviCtct"
  loc_D62AB8: PopAdLdVar
  loc_D62AB9: FLdRfVar var_4DC
  loc_D62ABC: FLdRfVar var_4D8
  loc_D62ABF: FLdPr Me
  loc_D62AC2: MemLdRfVar from_stack_1.global_56
  loc_D62AC5: NewIfNullPr clsctacte
  loc_D62AC8: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62ACD: FLdPr var_4D8
  loc_D62AD0:  = Me.Fields
  loc_D62AD5: FLdPr var_4DC
  loc_D62AD8: from_stack_2 = Me.Item(from_stack_1)
  loc_D62ADD: FLdPr var_4E0
  loc_D62AE0:  = Me.Value
  loc_D62AE5: FLdRfVar var_4F0
  loc_D62AE8: ConcatVar var_500
  loc_D62AEC: LitVarStr var_2CC, " GROUP BY ctactedeta.CodiOfic, ctactedeta.CuenCtct, ctactedeta.PeriCtct, ctactedeta.BimeCtct, ctactedeta.NumeCtct, ctactedeta.MoviCtct, ctactedeta.PeriOrde, ctactedeta.CodiCtde, ctactedeta.NumeCtde"
  loc_D62AF1: ConcatVar var_510
  loc_D62AF5: LitVarStr var_2DC, " ORDER BY ctactedeta.CodiOfic, ctactedeta.CuenCtct, ctactedeta.PeriCtct, ctactedeta.BimeCtct, ctactedeta.NumeCtct, ctactedeta.MoviCtct, ctactedeta.PeriOrde, ctactedeta.CodiCtde, ctactedeta.NumeCtde, ctactedeta.MoviCtde"
  loc_D62AFA: ConcatVar var_52C
  loc_D62AFE: CStrVarVal var_1B4
  loc_D62B02: FLdPr Me
  loc_D62B05: MemLdRfVar from_stack_1.global_80
  loc_D62B08: NewIfNullPr clsctacte
  loc_D62B0B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D62B10: FFreeStr var_1B0 = ""
  loc_D62B17: FFreeAd var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_4A0 = "": var_4A4 = "": var_4D8 = "": var_4DC = ""
  loc_D62B3E: FFreeVar var_154 = "": var_144 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = "": var_38C = "": var_47C = "": var_48C = "": var_49C = "": var_4B4 = "": var_4C4 = "": var_4D4 = "": var_4F0 = "": var_500 = "": var_510 = ""
  loc_D62B6B: FLdRfVar var_1C4
  loc_D62B6E: FLdRfVar var_158
  loc_D62B71: FLdPr Me
  loc_D62B74: MemLdRfVar from_stack_1.global_80
  loc_D62B77: NewIfNullPr clsctacte
  loc_D62B7A: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62B7F: FLdPr var_158
  loc_D62B82:  = Me.RecordCount
  loc_D62B87: ILdRf var_1C4
  loc_D62B8A: LitI4 0
  loc_D62B8F: GtI4
  loc_D62B90: FFree1Ad var_158
  loc_D62B93: BranchF loc_D64012
  loc_D62B96: FLdRfVar var_158
  loc_D62B99: FLdPr Me
  loc_D62B9C: MemLdRfVar from_stack_1.global_80
  loc_D62B9F: NewIfNullPr clsctacte
  loc_D62BA2: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62BA7: FLdPr var_158
  loc_D62BAA: Me.MoveFirst
  loc_D62BAF: FFree1Ad var_158
  loc_D62BB2: FLdRfVar var_1C6
  loc_D62BB5: FLdRfVar var_158
  loc_D62BB8: FLdPr Me
  loc_D62BBB: MemLdRfVar from_stack_1.global_80
  loc_D62BBE: NewIfNullPr clsctacte
  loc_D62BC1: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62BC6: FLdPr var_158
  loc_D62BC9:  = Me.EOF
  loc_D62BCE: FLdI2 var_1C6
  loc_D62BD1: NotI4
  loc_D62BD2: FFree1Ad var_158
  loc_D62BD5: BranchF loc_D64012
  loc_D62BD8: FLdRfVar var_144
  loc_D62BDB: FLdRfVar var_1D0
  loc_D62BDE: LitVarStr var_134, "SaldCtde"
  loc_D62BE3: PopAdLdVar
  loc_D62BE4: FLdRfVar var_1CC
  loc_D62BE7: FLdRfVar var_158
  loc_D62BEA: FLdPr Me
  loc_D62BED: MemLdRfVar from_stack_1.global_80
  loc_D62BF0: NewIfNullPr clsctacte
  loc_D62BF3: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62BF8: FLdPr var_158
  loc_D62BFB:  = Me.Fields
  loc_D62C00: FLdPr var_1CC
  loc_D62C03: from_stack_2 = Me.Item(from_stack_1)
  loc_D62C08: FLdPr var_1D0
  loc_D62C0B:  = Me.Value
  loc_D62C10: FLdFPR8 var_A8
  loc_D62C13: FLdRfVar var_144
  loc_D62C16: FnCDblVar
  loc_D62C18: GeR8
  loc_D62C19: FLdFPR8 var_A8
  loc_D62C1C: LitI2_Byte 0
  loc_D62C1E: CR8I2
  loc_D62C1F: GtR4
  loc_D62C20: AndI4
  loc_D62C21: FFreeAd var_158 = "": var_1CC = ""
  loc_D62C2A: FFree1Var var_144 = ""
  loc_D62C2D: BranchF loc_D636BF
  loc_D62C30: FLdPr Me
  loc_D62C33: MemLdFPR8 global_152
  loc_D62C36: LitI2_Byte 0
  loc_D62C38: CR8I2
  loc_D62C39: NeR8
  loc_D62C3A: FLdPr Me
  loc_D62C3D: MemLdFPR8 global_112
  loc_D62C40: LitI2_Byte 0
  loc_D62C42: CR8I2
  loc_D62C43: GtR4
  loc_D62C44: AndI4
  loc_D62C45: BranchF loc_D62CBD
  loc_D62C48: FLdRfVar var_144
  loc_D62C4B: FLdRfVar var_1D0
  loc_D62C4E: LitVarStr var_134, "SaldCtde"
  loc_D62C53: PopAdLdVar
  loc_D62C54: FLdRfVar var_1CC
  loc_D62C57: FLdRfVar var_158
  loc_D62C5A: FLdPr Me
  loc_D62C5D: MemLdRfVar from_stack_1.global_80
  loc_D62C60: NewIfNullPr clsctacte
  loc_D62C63: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62C68: FLdPr var_158
  loc_D62C6B:  = Me.Fields
  loc_D62C70: FLdPr var_1CC
  loc_D62C73: from_stack_2 = Me.Item(from_stack_1)
  loc_D62C78: FLdPr var_1D0
  loc_D62C7B:  = Me.Value
  loc_D62C80: LitI4 2
  loc_D62C85: FLdRfVar var_144
  loc_D62C88: FnCDblVar
  loc_D62C8A: FLdPr Me
  loc_D62C8D: MemLdFPR8 global_112
  loc_D62C90: MulR8
  loc_D62C91: LitI2_Byte &H64
  loc_D62C93: CR8I2
  loc_D62C94: DivR8
  loc_D62C95: CVarR8
  loc_D62C99: FLdRfVar var_188
  loc_D62C9C: ImpAdCallFPR4  = Round(, )
  loc_D62CA1: FLdRfVar var_188
  loc_D62CA4: CR4Var
  loc_D62CA5: FStFPR8 var_B0
  loc_D62CA8: FFreeAd var_158 = "": var_1CC = ""
  loc_D62CB1: FFreeVar var_144 = "": var_154 = ""
  loc_D62CBA: Branch loc_D62CC3
  loc_D62CBD: LitI2_Byte 0
  loc_D62CBF: CR8I2
  loc_D62CC0: FStFPR8 var_B0
  loc_D62CC3: FLdRfVar var_144
  loc_D62CC6: FLdRfVar var_1D0
  loc_D62CC9: LitVarStr var_134, "SaldCtde"
  loc_D62CCE: PopAdLdVar
  loc_D62CCF: FLdRfVar var_1CC
  loc_D62CD2: FLdRfVar var_158
  loc_D62CD5: FLdPr Me
  loc_D62CD8: MemLdRfVar from_stack_1.global_80
  loc_D62CDB: NewIfNullPr clsctacte
  loc_D62CDE: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62CE3: FLdPr var_158
  loc_D62CE6:  = Me.Fields
  loc_D62CEB: FLdPr var_1CC
  loc_D62CEE: from_stack_2 = Me.Item(from_stack_1)
  loc_D62CF3: FLdPr var_1D0
  loc_D62CF6:  = Me.Value
  loc_D62CFB: FLdRfVar var_144
  loc_D62CFE: FnCDblVar
  loc_D62D00: FLdFPR8 var_B0
  loc_D62D03: SubR4
  loc_D62D04: CR8R8
  loc_D62D05: LitI2_Byte 0
  loc_D62D07: CR8I2
  loc_D62D08: LtR8
  loc_D62D09: FFreeAd var_158 = "": var_1CC = ""
  loc_D62D12: FFree1Var var_144 = ""
  loc_D62D15: BranchF loc_D63176
  loc_D62D18: FLdRfVar var_60C
  loc_D62D1B: FLdRfVar var_5FC
  loc_D62D1E: LitVarStr var_36C, "SaldCtde"
  loc_D62D23: PopAdLdVar
  loc_D62D24: FLdRfVar var_5F8
  loc_D62D27: FLdRfVar var_5F4
  loc_D62D2A: FLdPr Me
  loc_D62D2D: MemLdRfVar from_stack_1.global_80
  loc_D62D30: NewIfNullPr clsctacte
  loc_D62D33: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62D38: FLdPr var_5F4
  loc_D62D3B:  = Me.Fields
  loc_D62D40: FLdPr var_5F8
  loc_D62D43: from_stack_2 = Me.Item(from_stack_1)
  loc_D62D48: FLdPr var_5FC
  loc_D62D4B:  = Me.Value
  loc_D62D50: FLdPr Me
  loc_D62D53: MemLdStr global_260
  loc_D62D56: LitStr " INSERT INTO boledeta (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, PeriOrde, CodiCtde, NumeCtde, MoviCtde, CodiOfic, CuenCtct, ImpoBode, DecaBode, TotaBode) "
  loc_D62D59: ConcatStr
  loc_D62D5A: FStStrNoPop var_1B0
  loc_D62D5D: LitStr " VALUES ("
  loc_D62D60: ConcatStr
  loc_D62D61: FStStrNoPop var_1B4
  loc_D62D64: FLdI2 var_86
  loc_D62D67: CStrUI1
  loc_D62D69: FStStrNoPop var_1B8
  loc_D62D6C: ConcatStr
  loc_D62D6D: FStStrNoPop var_1BC
  loc_D62D70: LitStr ","
  loc_D62D73: ConcatStr
  loc_D62D74: FStStrNoPop var_1C0
  loc_D62D77: ILdRf var_8C
  loc_D62D7A: CStrI4
  loc_D62D7C: FStStrNoPop var_1D4
  loc_D62D7F: ConcatStr
  loc_D62D80: FStStrNoPop var_390
  loc_D62D83: LitStr ","
  loc_D62D86: ConcatStr
  loc_D62D87: CVarStr var_154
  loc_D62D8A: FLdRfVar var_144
  loc_D62D8D: FLdRfVar var_1D0
  loc_D62D90: LitVarStr var_134, "PeriCtct"
  loc_D62D95: PopAdLdVar
  loc_D62D96: FLdRfVar var_1CC
  loc_D62D99: FLdRfVar var_158
  loc_D62D9C: FLdPr Me
  loc_D62D9F: MemLdRfVar from_stack_1.global_80
  loc_D62DA2: NewIfNullPr clsctacte
  loc_D62DA5: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62DAA: FLdPr var_158
  loc_D62DAD:  = Me.Fields
  loc_D62DB2: FLdPr var_1CC
  loc_D62DB5: from_stack_2 = Me.Item(from_stack_1)
  loc_D62DBA: FLdPr var_1D0
  loc_D62DBD:  = Me.Value
  loc_D62DC2: FLdRfVar var_144
  loc_D62DC5: ConcatVar var_188
  loc_D62DC9: LitVarStr var_168, ","
  loc_D62DCE: ConcatVar var_1A8
  loc_D62DD2: FLdRfVar var_20C
  loc_D62DD5: FLdRfVar var_1E0
  loc_D62DD8: LitVarStr var_178, "BimeCtct"
  loc_D62DDD: PopAdLdVar
  loc_D62DDE: FLdRfVar var_1DC
  loc_D62DE1: FLdRfVar var_1D8
  loc_D62DE4: FLdPr Me
  loc_D62DE7: MemLdRfVar from_stack_1.global_80
  loc_D62DEA: NewIfNullPr clsctacte
  loc_D62DED: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62DF2: FLdPr var_1D8
  loc_D62DF5:  = Me.Fields
  loc_D62DFA: FLdPr var_1DC
  loc_D62DFD: from_stack_2 = Me.Item(from_stack_1)
  loc_D62E02: FLdPr var_1E0
  loc_D62E05:  = Me.Value
  loc_D62E0A: FLdRfVar var_20C
  loc_D62E0D: ConcatVar var_21C
  loc_D62E11: LitVarStr var_198, ","
  loc_D62E16: ConcatVar var_22C
  loc_D62E1A: FLdRfVar var_24C
  loc_D62E1D: FLdRfVar var_1EC
  loc_D62E20: LitVarStr var_23C, "NumeCtct"
  loc_D62E25: PopAdLdVar
  loc_D62E26: FLdRfVar var_1E8
  loc_D62E29: FLdRfVar var_1E4
  loc_D62E2C: FLdPr Me
  loc_D62E2F: MemLdRfVar from_stack_1.global_80
  loc_D62E32: NewIfNullPr clsctacte
  loc_D62E35: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62E3A: FLdPr var_1E4
  loc_D62E3D:  = Me.Fields
  loc_D62E42: FLdPr var_1E8
  loc_D62E45: from_stack_2 = Me.Item(from_stack_1)
  loc_D62E4A: FLdPr var_1EC
  loc_D62E4D:  = Me.Value
  loc_D62E52: FLdRfVar var_24C
  loc_D62E55: ConcatVar var_32C
  loc_D62E59: LitVarStr var_25C, ","
  loc_D62E5E: ConcatVar var_35C
  loc_D62E62: FLdRfVar var_38C
  loc_D62E65: FLdRfVar var_1F8
  loc_D62E68: LitVarStr var_26C, "MoviCtct"
  loc_D62E6D: PopAdLdVar
  loc_D62E6E: FLdRfVar var_1F4
  loc_D62E71: FLdRfVar var_1F0
  loc_D62E74: FLdPr Me
  loc_D62E77: MemLdRfVar from_stack_1.global_80
  loc_D62E7A: NewIfNullPr clsctacte
  loc_D62E7D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62E82: FLdPr var_1F0
  loc_D62E85:  = Me.Fields
  loc_D62E8A: FLdPr var_1F4
  loc_D62E8D: from_stack_2 = Me.Item(from_stack_1)
  loc_D62E92: FLdPr var_1F8
  loc_D62E95:  = Me.Value
  loc_D62E9A: FLdRfVar var_38C
  loc_D62E9D: ConcatVar var_47C
  loc_D62EA1: LitVarStr var_27C, ",1,"
  loc_D62EA6: ConcatVar var_48C
  loc_D62EAA: FLdRfVar var_49C
  loc_D62EAD: FLdRfVar var_4A4
  loc_D62EB0: LitVarStr var_28C, "PeriOrde"
  loc_D62EB5: PopAdLdVar
  loc_D62EB6: FLdRfVar var_4A0
  loc_D62EB9: FLdRfVar var_1FC
  loc_D62EBC: FLdPr Me
  loc_D62EBF: MemLdRfVar from_stack_1.global_80
  loc_D62EC2: NewIfNullPr clsctacte
  loc_D62EC5: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62ECA: FLdPr var_1FC
  loc_D62ECD:  = Me.Fields
  loc_D62ED2: FLdPr var_4A0
  loc_D62ED5: from_stack_2 = Me.Item(from_stack_1)
  loc_D62EDA: FLdPr var_4A4
  loc_D62EDD:  = Me.Value
  loc_D62EE2: FLdRfVar var_49C
  loc_D62EE5: ConcatVar var_4B4
  loc_D62EE9: LitVarStr var_29C, ","
  loc_D62EEE: ConcatVar var_4C4
  loc_D62EF2: FLdRfVar var_4D4
  loc_D62EF5: FLdRfVar var_4E0
  loc_D62EF8: LitVarStr var_2AC, "CodiCtde"
  loc_D62EFD: PopAdLdVar
  loc_D62EFE: FLdRfVar var_4DC
  loc_D62F01: FLdRfVar var_4D8
  loc_D62F04: FLdPr Me
  loc_D62F07: MemLdRfVar from_stack_1.global_80
  loc_D62F0A: NewIfNullPr clsctacte
  loc_D62F0D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62F12: FLdPr var_4D8
  loc_D62F15:  = Me.Fields
  loc_D62F1A: FLdPr var_4DC
  loc_D62F1D: from_stack_2 = Me.Item(from_stack_1)
  loc_D62F22: FLdPr var_4E0
  loc_D62F25:  = Me.Value
  loc_D62F2A: FLdRfVar var_4D4
  loc_D62F2D: ConcatVar var_4F0
  loc_D62F31: LitVarStr var_2BC, ","
  loc_D62F36: ConcatVar var_500
  loc_D62F3A: FLdRfVar var_510
  loc_D62F3D: FLdRfVar var_51C
  loc_D62F40: LitVarStr var_2CC, "NumeCtde"
  loc_D62F45: PopAdLdVar
  loc_D62F46: FLdRfVar var_518
  loc_D62F49: FLdRfVar var_514
  loc_D62F4C: FLdPr Me
  loc_D62F4F: MemLdRfVar from_stack_1.global_80
  loc_D62F52: NewIfNullPr clsctacte
  loc_D62F55: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62F5A: FLdPr var_514
  loc_D62F5D:  = Me.Fields
  loc_D62F62: FLdPr var_518
  loc_D62F65: from_stack_2 = Me.Item(from_stack_1)
  loc_D62F6A: FLdPr var_51C
  loc_D62F6D:  = Me.Value
  loc_D62F72: FLdRfVar var_510
  loc_D62F75: ConcatVar var_52C
  loc_D62F79: LitVarStr var_2DC, ","
  loc_D62F7E: ConcatVar var_53C
  loc_D62F82: FLdRfVar var_558
  loc_D62F85: FLdRfVar var_548
  loc_D62F88: LitVarStr var_2EC, "MoviCtde"
  loc_D62F8D: PopAdLdVar
  loc_D62F8E: FLdRfVar var_544
  loc_D62F91: FLdRfVar var_540
  loc_D62F94: FLdPr Me
  loc_D62F97: MemLdRfVar from_stack_1.global_80
  loc_D62F9A: NewIfNullPr clsctacte
  loc_D62F9D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62FA2: FLdPr var_540
  loc_D62FA5:  = Me.Fields
  loc_D62FAA: FLdPr var_544
  loc_D62FAD: from_stack_2 = Me.Item(from_stack_1)
  loc_D62FB2: FLdPr var_548
  loc_D62FB5:  = Me.Value
  loc_D62FBA: FLdRfVar var_558
  loc_D62FBD: ConcatVar var_568
  loc_D62FC1: LitVarStr var_2FC, ","
  loc_D62FC6: ConcatVar var_578
  loc_D62FCA: FLdRfVar var_594
  loc_D62FCD: FLdRfVar var_584
  loc_D62FD0: LitVarStr var_30C, "CodiOfic"
  loc_D62FD5: PopAdLdVar
  loc_D62FD6: FLdRfVar var_580
  loc_D62FD9: FLdRfVar var_57C
  loc_D62FDC: FLdPr Me
  loc_D62FDF: MemLdRfVar from_stack_1.global_80
  loc_D62FE2: NewIfNullPr clsctacte
  loc_D62FE5: from_stack_1v = clsctacte.RsFrmGet()
  loc_D62FEA: FLdPr var_57C
  loc_D62FED:  = Me.Fields
  loc_D62FF2: FLdPr var_580
  loc_D62FF5: from_stack_2 = Me.Item(from_stack_1)
  loc_D62FFA: FLdPr var_584
  loc_D62FFD:  = Me.Value
  loc_D63002: FLdRfVar var_594
  loc_D63005: ConcatVar var_5A4
  loc_D63009: LitVarStr var_31C, ",'"
  loc_D6300E: ConcatVar var_5B4
  loc_D63012: FLdRfVar var_5D0
  loc_D63015: FLdRfVar var_5C0
  loc_D63018: LitVarStr var_33C, "CuenCtct"
  loc_D6301D: PopAdLdVar
  loc_D6301E: FLdRfVar var_5BC
  loc_D63021: FLdRfVar var_5B8
  loc_D63024: FLdPr Me
  loc_D63027: MemLdRfVar from_stack_1.global_80
  loc_D6302A: NewIfNullPr clsctacte
  loc_D6302D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63032: FLdPr var_5B8
  loc_D63035:  = Me.Fields
  loc_D6303A: FLdPr var_5BC
  loc_D6303D: from_stack_2 = Me.Item(from_stack_1)
  loc_D63042: FLdPr var_5C0
  loc_D63045:  = Me.Value
  loc_D6304A: FLdRfVar var_5D0
  loc_D6304D: ConcatVar var_5E0
  loc_D63051: LitVarStr var_34C, "',"
  loc_D63056: ConcatVar var_5F0
  loc_D6305A: LitI4 0
  loc_D6305F: LitI4 -1
  loc_D63064: LitI4 1
  loc_D63069: LitStr "."
  loc_D6306C: LitStr ","
  loc_D6306F: FLdRfVar var_60C
  loc_D63072: CStrVarTmp
  loc_D63073: FStStrNoPop var_394
  loc_D63076: ImpAdCallI2 Replace(, , , , , )
  loc_D6307B: CVarStr var_61C
  loc_D6307E: ConcatVar var_62C
  loc_D63082: LitVarStr var_37C, ","
  loc_D63087: ConcatVar var_658
  loc_D6308B: LitI4 0
  loc_D63090: LitI4 -1
  loc_D63095: LitI4 1
  loc_D6309A: LitStr "."
  loc_D6309D: LitStr ","
  loc_D630A0: FLdFPR8 var_B0
  loc_D630A3: CStrR8
  loc_D630A5: FStStrNoPop var_398
  loc_D630A8: ImpAdCallI2 Replace(, , , , , )
  loc_D630AD: CVarStr var_668
  loc_D630B0: ConcatVar var_688
  loc_D630B4: LitVarStr var_644, ",0);"
  loc_D630B9: ConcatVar var_6B4
  loc_D630BD: CStrVarTmp
  loc_D630BE: FStStrNoPop var_39C
  loc_D630C1: FLdPr Me
  loc_D630C4: MemStStrCopy
  loc_D630C8: FFreeStr var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1D4 = "": var_390 = "": var_394 = "": var_398 = ""
  loc_D630DF: FFreeAd var_5F4 = "": var_5F8 = "": var_5FC = "": var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_4A0 = "": var_4A4 = "": var_4D8 = "": var_4DC = "": var_4E0 = "": var_514 = "": var_518 = "": var_51C = "": var_540 = "": var_544 = "": var_548 = "": var_57C = "": var_580 = "": var_584 = "": var_5B8 = "": var_5BC = ""
  loc_D63124: FFreeVar var_60C = "": var_5F0 = "": var_61C = "": var_62C = "": var_658 = "": var_668 = "": var_688 = "": var_6B4 = "": var_154 = "": var_144 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = "": var_38C = "": var_47C = "": var_48C = "": var_49C = "": var_4B4 = "": var_4C4 = "": var_4D4 = "": var_4F0 = "": var_500 = "": var_510 = "": var_52C = "": var_53C = "": var_558 = "": var_568 = "": var_578 = "": var_594 = "": var_5A4 = "": var_5B4 = "": var_5D0 = ""
  loc_D63173: Branch loc_D63651
  loc_D63176: FLdRfVar var_60C
  loc_D63179: FLdRfVar var_5FC
  loc_D6317C: LitVarStr var_36C, "SaldCtde"
  loc_D63181: PopAdLdVar
  loc_D63182: FLdRfVar var_5F8
  loc_D63185: FLdRfVar var_5F4
  loc_D63188: FLdPr Me
  loc_D6318B: MemLdRfVar from_stack_1.global_80
  loc_D6318E: NewIfNullPr clsctacte
  loc_D63191: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63196: FLdPr var_5F4
  loc_D63199:  = Me.Fields
  loc_D6319E: FLdPr var_5F8
  loc_D631A1: from_stack_2 = Me.Item(from_stack_1)
  loc_D631A6: FLdPr var_5FC
  loc_D631A9:  = Me.Value
  loc_D631AE: FLdRfVar var_6C4
  loc_D631B1: FLdRfVar var_648
  loc_D631B4: LitVarStr var_678, "SaldCtde"
  loc_D631B9: PopAdLdVar
  loc_D631BA: FLdRfVar var_634
  loc_D631BD: FLdRfVar var_630
  loc_D631C0: FLdPr Me
  loc_D631C3: MemLdRfVar from_stack_1.global_80
  loc_D631C6: NewIfNullPr clsctacte
  loc_D631C9: from_stack_1v = clsctacte.RsFrmGet()
  loc_D631CE: FLdPr var_630
  loc_D631D1:  = Me.Fields
  loc_D631D6: FLdPr var_634
  loc_D631D9: from_stack_2 = Me.Item(from_stack_1)
  loc_D631DE: FLdPr var_648
  loc_D631E1:  = Me.Value
  loc_D631E6: FLdPr Me
  loc_D631E9: MemLdStr global_260
  loc_D631EC: LitStr " INSERT INTO boledeta (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, PeriOrde, CodiCtde, NumeCtde, MoviCtde, CodiOfic, CuenCtct, ImpoBode, DecaBode, TotaBode) "
  loc_D631EF: ConcatStr
  loc_D631F0: FStStrNoPop var_1B0
  loc_D631F3: LitStr " VALUES ("
  loc_D631F6: ConcatStr
  loc_D631F7: FStStrNoPop var_1B4
  loc_D631FA: FLdI2 var_86
  loc_D631FD: CStrUI1
  loc_D631FF: FStStrNoPop var_1B8
  loc_D63202: ConcatStr
  loc_D63203: FStStrNoPop var_1BC
  loc_D63206: LitStr ","
  loc_D63209: ConcatStr
  loc_D6320A: FStStrNoPop var_1C0
  loc_D6320D: ILdRf var_8C
  loc_D63210: CStrI4
  loc_D63212: FStStrNoPop var_1D4
  loc_D63215: ConcatStr
  loc_D63216: FStStrNoPop var_390
  loc_D63219: LitStr ","
  loc_D6321C: ConcatStr
  loc_D6321D: CVarStr var_154
  loc_D63220: FLdRfVar var_144
  loc_D63223: FLdRfVar var_1D0
  loc_D63226: LitVarStr var_134, "PeriCtct"
  loc_D6322B: PopAdLdVar
  loc_D6322C: FLdRfVar var_1CC
  loc_D6322F: FLdRfVar var_158
  loc_D63232: FLdPr Me
  loc_D63235: MemLdRfVar from_stack_1.global_80
  loc_D63238: NewIfNullPr clsctacte
  loc_D6323B: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63240: FLdPr var_158
  loc_D63243:  = Me.Fields
  loc_D63248: FLdPr var_1CC
  loc_D6324B: from_stack_2 = Me.Item(from_stack_1)
  loc_D63250: FLdPr var_1D0
  loc_D63253:  = Me.Value
  loc_D63258: FLdRfVar var_144
  loc_D6325B: ConcatVar var_188
  loc_D6325F: LitVarStr var_168, ","
  loc_D63264: ConcatVar var_1A8
  loc_D63268: FLdRfVar var_20C
  loc_D6326B: FLdRfVar var_1E0
  loc_D6326E: LitVarStr var_178, "BimeCtct"
  loc_D63273: PopAdLdVar
  loc_D63274: FLdRfVar var_1DC
  loc_D63277: FLdRfVar var_1D8
  loc_D6327A: FLdPr Me
  loc_D6327D: MemLdRfVar from_stack_1.global_80
  loc_D63280: NewIfNullPr clsctacte
  loc_D63283: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63288: FLdPr var_1D8
  loc_D6328B:  = Me.Fields
  loc_D63290: FLdPr var_1DC
  loc_D63293: from_stack_2 = Me.Item(from_stack_1)
  loc_D63298: FLdPr var_1E0
  loc_D6329B:  = Me.Value
  loc_D632A0: FLdRfVar var_20C
  loc_D632A3: ConcatVar var_21C
  loc_D632A7: LitVarStr var_198, ","
  loc_D632AC: ConcatVar var_22C
  loc_D632B0: FLdRfVar var_24C
  loc_D632B3: FLdRfVar var_1EC
  loc_D632B6: LitVarStr var_23C, "NumeCtct"
  loc_D632BB: PopAdLdVar
  loc_D632BC: FLdRfVar var_1E8
  loc_D632BF: FLdRfVar var_1E4
  loc_D632C2: FLdPr Me
  loc_D632C5: MemLdRfVar from_stack_1.global_80
  loc_D632C8: NewIfNullPr clsctacte
  loc_D632CB: from_stack_1v = clsctacte.RsFrmGet()
  loc_D632D0: FLdPr var_1E4
  loc_D632D3:  = Me.Fields
  loc_D632D8: FLdPr var_1E8
  loc_D632DB: from_stack_2 = Me.Item(from_stack_1)
  loc_D632E0: FLdPr var_1EC
  loc_D632E3:  = Me.Value
  loc_D632E8: FLdRfVar var_24C
  loc_D632EB: ConcatVar var_32C
  loc_D632EF: LitVarStr var_25C, ","
  loc_D632F4: ConcatVar var_35C
  loc_D632F8: FLdRfVar var_38C
  loc_D632FB: FLdRfVar var_1F8
  loc_D632FE: LitVarStr var_26C, "MoviCtct"
  loc_D63303: PopAdLdVar
  loc_D63304: FLdRfVar var_1F4
  loc_D63307: FLdRfVar var_1F0
  loc_D6330A: FLdPr Me
  loc_D6330D: MemLdRfVar from_stack_1.global_80
  loc_D63310: NewIfNullPr clsctacte
  loc_D63313: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63318: FLdPr var_1F0
  loc_D6331B:  = Me.Fields
  loc_D63320: FLdPr var_1F4
  loc_D63323: from_stack_2 = Me.Item(from_stack_1)
  loc_D63328: FLdPr var_1F8
  loc_D6332B:  = Me.Value
  loc_D63330: FLdRfVar var_38C
  loc_D63333: ConcatVar var_47C
  loc_D63337: LitVarStr var_27C, ",1,"
  loc_D6333C: ConcatVar var_48C
  loc_D63340: FLdRfVar var_49C
  loc_D63343: FLdRfVar var_4A4
  loc_D63346: LitVarStr var_28C, "PeriOrde"
  loc_D6334B: PopAdLdVar
  loc_D6334C: FLdRfVar var_4A0
  loc_D6334F: FLdRfVar var_1FC
  loc_D63352: FLdPr Me
  loc_D63355: MemLdRfVar from_stack_1.global_80
  loc_D63358: NewIfNullPr clsctacte
  loc_D6335B: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63360: FLdPr var_1FC
  loc_D63363:  = Me.Fields
  loc_D63368: FLdPr var_4A0
  loc_D6336B: from_stack_2 = Me.Item(from_stack_1)
  loc_D63370: FLdPr var_4A4
  loc_D63373:  = Me.Value
  loc_D63378: FLdRfVar var_49C
  loc_D6337B: ConcatVar var_4B4
  loc_D6337F: LitVarStr var_29C, ","
  loc_D63384: ConcatVar var_4C4
  loc_D63388: FLdRfVar var_4D4
  loc_D6338B: FLdRfVar var_4E0
  loc_D6338E: LitVarStr var_2AC, "CodiCtde"
  loc_D63393: PopAdLdVar
  loc_D63394: FLdRfVar var_4DC
  loc_D63397: FLdRfVar var_4D8
  loc_D6339A: FLdPr Me
  loc_D6339D: MemLdRfVar from_stack_1.global_80
  loc_D633A0: NewIfNullPr clsctacte
  loc_D633A3: from_stack_1v = clsctacte.RsFrmGet()
  loc_D633A8: FLdPr var_4D8
  loc_D633AB:  = Me.Fields
  loc_D633B0: FLdPr var_4DC
  loc_D633B3: from_stack_2 = Me.Item(from_stack_1)
  loc_D633B8: FLdPr var_4E0
  loc_D633BB:  = Me.Value
  loc_D633C0: FLdRfVar var_4D4
  loc_D633C3: ConcatVar var_4F0
  loc_D633C7: LitVarStr var_2BC, ","
  loc_D633CC: ConcatVar var_500
  loc_D633D0: FLdRfVar var_510
  loc_D633D3: FLdRfVar var_51C
  loc_D633D6: LitVarStr var_2CC, "NumeCtde"
  loc_D633DB: PopAdLdVar
  loc_D633DC: FLdRfVar var_518
  loc_D633DF: FLdRfVar var_514
  loc_D633E2: FLdPr Me
  loc_D633E5: MemLdRfVar from_stack_1.global_80
  loc_D633E8: NewIfNullPr clsctacte
  loc_D633EB: from_stack_1v = clsctacte.RsFrmGet()
  loc_D633F0: FLdPr var_514
  loc_D633F3:  = Me.Fields
  loc_D633F8: FLdPr var_518
  loc_D633FB: from_stack_2 = Me.Item(from_stack_1)
  loc_D63400: FLdPr var_51C
  loc_D63403:  = Me.Value
  loc_D63408: FLdRfVar var_510
  loc_D6340B: ConcatVar var_52C
  loc_D6340F: LitVarStr var_2DC, ","
  loc_D63414: ConcatVar var_53C
  loc_D63418: FLdRfVar var_558
  loc_D6341B: FLdRfVar var_548
  loc_D6341E: LitVarStr var_2EC, "MoviCtde"
  loc_D63423: PopAdLdVar
  loc_D63424: FLdRfVar var_544
  loc_D63427: FLdRfVar var_540
  loc_D6342A: FLdPr Me
  loc_D6342D: MemLdRfVar from_stack_1.global_80
  loc_D63430: NewIfNullPr clsctacte
  loc_D63433: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63438: FLdPr var_540
  loc_D6343B:  = Me.Fields
  loc_D63440: FLdPr var_544
  loc_D63443: from_stack_2 = Me.Item(from_stack_1)
  loc_D63448: FLdPr var_548
  loc_D6344B:  = Me.Value
  loc_D63450: FLdRfVar var_558
  loc_D63453: ConcatVar var_568
  loc_D63457: LitVarStr var_2FC, ","
  loc_D6345C: ConcatVar var_578
  loc_D63460: FLdRfVar var_594
  loc_D63463: FLdRfVar var_584
  loc_D63466: LitVarStr var_30C, "CodiOfic"
  loc_D6346B: PopAdLdVar
  loc_D6346C: FLdRfVar var_580
  loc_D6346F: FLdRfVar var_57C
  loc_D63472: FLdPr Me
  loc_D63475: MemLdRfVar from_stack_1.global_80
  loc_D63478: NewIfNullPr clsctacte
  loc_D6347B: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63480: FLdPr var_57C
  loc_D63483:  = Me.Fields
  loc_D63488: FLdPr var_580
  loc_D6348B: from_stack_2 = Me.Item(from_stack_1)
  loc_D63490: FLdPr var_584
  loc_D63493:  = Me.Value
  loc_D63498: FLdRfVar var_594
  loc_D6349B: ConcatVar var_5A4
  loc_D6349F: LitVarStr var_31C, ",'"
  loc_D634A4: ConcatVar var_5B4
  loc_D634A8: FLdRfVar var_5D0
  loc_D634AB: FLdRfVar var_5C0
  loc_D634AE: LitVarStr var_33C, "CuenCtct"
  loc_D634B3: PopAdLdVar
  loc_D634B4: FLdRfVar var_5BC
  loc_D634B7: FLdRfVar var_5B8
  loc_D634BA: FLdPr Me
  loc_D634BD: MemLdRfVar from_stack_1.global_80
  loc_D634C0: NewIfNullPr clsctacte
  loc_D634C3: from_stack_1v = clsctacte.RsFrmGet()
  loc_D634C8: FLdPr var_5B8
  loc_D634CB:  = Me.Fields
  loc_D634D0: FLdPr var_5BC
  loc_D634D3: from_stack_2 = Me.Item(from_stack_1)
  loc_D634D8: FLdPr var_5C0
  loc_D634DB:  = Me.Value
  loc_D634E0: FLdRfVar var_5D0
  loc_D634E3: ConcatVar var_5E0
  loc_D634E7: LitVarStr var_34C, "',"
  loc_D634EC: ConcatVar var_5F0
  loc_D634F0: LitI4 0
  loc_D634F5: LitI4 -1
  loc_D634FA: LitI4 1
  loc_D634FF: LitStr "."
  loc_D63502: LitStr ","
  loc_D63505: FLdRfVar var_60C
  loc_D63508: CStrVarTmp
  loc_D63509: FStStrNoPop var_394
  loc_D6350C: ImpAdCallI2 Replace(, , , , , )
  loc_D63511: CVarStr var_61C
  loc_D63514: ConcatVar var_62C
  loc_D63518: LitVarStr var_37C, ","
  loc_D6351D: ConcatVar var_658
  loc_D63521: LitI4 0
  loc_D63526: LitI4 -1
  loc_D6352B: LitI4 1
  loc_D63530: LitStr "."
  loc_D63533: LitStr ","
  loc_D63536: FLdFPR8 var_B0
  loc_D63539: CStrR8
  loc_D6353B: FStStrNoPop var_398
  loc_D6353E: ImpAdCallI2 Replace(, , , , , )
  loc_D63543: CVarStr var_668
  loc_D63546: ConcatVar var_688
  loc_D6354A: LitVarStr var_644, ","
  loc_D6354F: ConcatVar var_6B4
  loc_D63553: LitI4 0
  loc_D63558: LitI4 -1
  loc_D6355D: LitI4 1
  loc_D63562: LitStr "."
  loc_D63565: LitStr ","
  loc_D63568: FLdRfVar var_6C4
  loc_D6356B: FnCDblVar
  loc_D6356D: FLdFPR8 var_B0
  loc_D63570: SubR4
  loc_D63571: CStrR8
  loc_D63573: FStStrNoPop var_39C
  loc_D63576: ImpAdCallI2 Replace(, , , , , )
  loc_D6357B: CVarStr var_6E4
  loc_D6357E: ConcatVar var_710
  loc_D63582: LitVarStr var_6A0, ");"
  loc_D63587: ConcatVar var_720
  loc_D6358B: CStrVarTmp
  loc_D6358C: FStStrNoPop var_3A0
  loc_D6358F: FLdPr Me
  loc_D63592: MemStStrCopy
  loc_D63596: FFreeStr var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1D4 = "": var_390 = "": var_394 = "": var_398 = "": var_39C = ""
  loc_D635AF: FFreeAd var_5F4 = "": var_5F8 = "": var_5FC = "": var_630 = "": var_634 = "": var_648 = "": var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_4A0 = "": var_4A4 = "": var_4D8 = "": var_4DC = "": var_4E0 = "": var_514 = "": var_518 = "": var_51C = "": var_540 = "": var_544 = "": var_548 = "": var_57C = "": var_580 = "": var_584 = "": var_5B8 = "": var_5BC = ""
  loc_D635FA: FFreeVar var_60C = "": var_5F0 = "": var_61C = "": var_62C = "": var_658 = "": var_668 = "": var_688 = "": var_6C4 = "": var_6B4 = "": var_6E4 = "": var_710 = "": var_720 = "": var_154 = "": var_144 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = "": var_38C = "": var_47C = "": var_48C = "": var_49C = "": var_4B4 = "": var_4C4 = "": var_4D4 = "": var_4F0 = "": var_500 = "": var_510 = "": var_52C = "": var_53C = "": var_558 = "": var_568 = "": var_578 = "": var_594 = "": var_5A4 = "": var_5B4 = "": var_5D0 = ""
  loc_D63651: FLdRfVar var_144
  loc_D63654: FLdRfVar var_1D0
  loc_D63657: LitVarStr var_134, "SaldCtde"
  loc_D6365C: PopAdLdVar
  loc_D6365D: FLdRfVar var_1CC
  loc_D63660: FLdRfVar var_158
  loc_D63663: FLdPr Me
  loc_D63666: MemLdRfVar from_stack_1.global_80
  loc_D63669: NewIfNullPr clsctacte
  loc_D6366C: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63671: FLdPr var_158
  loc_D63674:  = Me.Fields
  loc_D63679: FLdPr var_1CC
  loc_D6367C: from_stack_2 = Me.Item(from_stack_1)
  loc_D63681: FLdPr var_1D0
  loc_D63684:  = Me.Value
  loc_D63689: LitI4 2
  loc_D6368E: FLdFPR8 var_A8
  loc_D63691: FLdRfVar var_144
  loc_D63694: FnCDblVar
  loc_D63696: SubR4
  loc_D63697: CVarR8
  loc_D6369B: FLdRfVar var_188
  loc_D6369E: ImpAdCallFPR4  = Round(, )
  loc_D636A3: FLdRfVar var_188
  loc_D636A6: CR4Var
  loc_D636A7: FStFPR8 var_A8
  loc_D636AA: FFreeAd var_158 = "": var_1CC = ""
  loc_D636B3: FFreeVar var_144 = "": var_154 = ""
  loc_D636BC: Branch loc_D63FF3
  loc_D636BF: FLdRfVar var_144
  loc_D636C2: FLdRfVar var_1D0
  loc_D636C5: LitVarStr var_134, "SaldCtde"
  loc_D636CA: PopAdLdVar
  loc_D636CB: FLdRfVar var_1CC
  loc_D636CE: FLdRfVar var_158
  loc_D636D1: FLdPr Me
  loc_D636D4: MemLdRfVar from_stack_1.global_80
  loc_D636D7: NewIfNullPr clsctacte
  loc_D636DA: from_stack_1v = clsctacte.RsFrmGet()
  loc_D636DF: FLdPr var_158
  loc_D636E2:  = Me.Fields
  loc_D636E7: FLdPr var_1CC
  loc_D636EA: from_stack_2 = Me.Item(from_stack_1)
  loc_D636EF: FLdPr var_1D0
  loc_D636F2:  = Me.Value
  loc_D636F7: FLdFPR8 var_A8
  loc_D636FA: FLdRfVar var_144
  loc_D636FD: FnCDblVar
  loc_D636FF: LtR8
  loc_D63700: FLdFPR8 var_A8
  loc_D63703: LitI2_Byte 0
  loc_D63705: CR8I2
  loc_D63706: GtR4
  loc_D63707: AndI4
  loc_D63708: FFreeAd var_158 = "": var_1CC = ""
  loc_D63711: FFree1Var var_144 = ""
  loc_D63714: BranchF loc_D63FF3
  loc_D63717: FLdPr Me
  loc_D6371A: MemLdFPR8 global_152
  loc_D6371D: LitI2_Byte 0
  loc_D6371F: CR8I2
  loc_D63720: NeR8
  loc_D63721: FLdPr Me
  loc_D63724: MemLdFPR8 global_112
  loc_D63727: LitI2_Byte 0
  loc_D63729: CR8I2
  loc_D6372A: GtR4
  loc_D6372B: AndI4
  loc_D6372C: BranchF loc_D6375F
  loc_D6372F: LitI4 2
  loc_D63734: FLdFPR8 var_A8
  loc_D63737: FLdPr Me
  loc_D6373A: MemLdFPR8 global_112
  loc_D6373D: MulR8
  loc_D6373E: LitI2_Byte &H64
  loc_D63740: CR8I2
  loc_D63741: DivR8
  loc_D63742: CVarR8
  loc_D63746: FLdRfVar var_154
  loc_D63749: ImpAdCallFPR4  = Round(, )
  loc_D6374E: FLdRfVar var_154
  loc_D63751: CR4Var
  loc_D63752: FStFPR8 var_B0
  loc_D63755: FFreeVar var_144 = ""
  loc_D6375C: Branch loc_D63765
  loc_D6375F: LitI2_Byte 0
  loc_D63761: CR8I2
  loc_D63762: FStFPR8 var_B0
  loc_D63765: FLdFPR8 var_A8
  loc_D63768: FLdFPR8 var_B0
  loc_D6376B: SubR4
  loc_D6376C: CR8R8
  loc_D6376D: LitI2_Byte 0
  loc_D6376F: CR8I2
  loc_D63770: LtR8
  loc_D63771: BranchF loc_D63B93
  loc_D63774: FLdPr Me
  loc_D63777: MemLdStr global_260
  loc_D6377A: LitStr " INSERT INTO boledeta (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, PeriOrde, CodiCtde, NumeCtde, MoviCtde, CodiOfic, CuenCtct, ImpoBode, DecaBode, TotaBode) "
  loc_D6377D: ConcatStr
  loc_D6377E: FStStrNoPop var_1B0
  loc_D63781: LitStr " VALUES ("
  loc_D63784: ConcatStr
  loc_D63785: FStStrNoPop var_1B4
  loc_D63788: FLdI2 var_86
  loc_D6378B: CStrUI1
  loc_D6378D: FStStrNoPop var_1B8
  loc_D63790: ConcatStr
  loc_D63791: FStStrNoPop var_1BC
  loc_D63794: LitStr ","
  loc_D63797: ConcatStr
  loc_D63798: FStStrNoPop var_1C0
  loc_D6379B: ILdRf var_8C
  loc_D6379E: CStrI4
  loc_D637A0: FStStrNoPop var_1D4
  loc_D637A3: ConcatStr
  loc_D637A4: FStStrNoPop var_390
  loc_D637A7: LitStr ","
  loc_D637AA: ConcatStr
  loc_D637AB: CVarStr var_154
  loc_D637AE: FLdRfVar var_144
  loc_D637B1: FLdRfVar var_1D0
  loc_D637B4: LitVarStr var_134, "PeriCtct"
  loc_D637B9: PopAdLdVar
  loc_D637BA: FLdRfVar var_1CC
  loc_D637BD: FLdRfVar var_158
  loc_D637C0: FLdPr Me
  loc_D637C3: MemLdRfVar from_stack_1.global_80
  loc_D637C6: NewIfNullPr clsctacte
  loc_D637C9: from_stack_1v = clsctacte.RsFrmGet()
  loc_D637CE: FLdPr var_158
  loc_D637D1:  = Me.Fields
  loc_D637D6: FLdPr var_1CC
  loc_D637D9: from_stack_2 = Me.Item(from_stack_1)
  loc_D637DE: FLdPr var_1D0
  loc_D637E1:  = Me.Value
  loc_D637E6: FLdRfVar var_144
  loc_D637E9: ConcatVar var_188
  loc_D637ED: LitVarStr var_168, ","
  loc_D637F2: ConcatVar var_1A8
  loc_D637F6: FLdRfVar var_20C
  loc_D637F9: FLdRfVar var_1E0
  loc_D637FC: LitVarStr var_178, "BimeCtct"
  loc_D63801: PopAdLdVar
  loc_D63802: FLdRfVar var_1DC
  loc_D63805: FLdRfVar var_1D8
  loc_D63808: FLdPr Me
  loc_D6380B: MemLdRfVar from_stack_1.global_80
  loc_D6380E: NewIfNullPr clsctacte
  loc_D63811: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63816: FLdPr var_1D8
  loc_D63819:  = Me.Fields
  loc_D6381E: FLdPr var_1DC
  loc_D63821: from_stack_2 = Me.Item(from_stack_1)
  loc_D63826: FLdPr var_1E0
  loc_D63829:  = Me.Value
  loc_D6382E: FLdRfVar var_20C
  loc_D63831: ConcatVar var_21C
  loc_D63835: LitVarStr var_198, ","
  loc_D6383A: ConcatVar var_22C
  loc_D6383E: FLdRfVar var_24C
  loc_D63841: FLdRfVar var_1EC
  loc_D63844: LitVarStr var_23C, "NumeCtct"
  loc_D63849: PopAdLdVar
  loc_D6384A: FLdRfVar var_1E8
  loc_D6384D: FLdRfVar var_1E4
  loc_D63850: FLdPr Me
  loc_D63853: MemLdRfVar from_stack_1.global_80
  loc_D63856: NewIfNullPr clsctacte
  loc_D63859: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6385E: FLdPr var_1E4
  loc_D63861:  = Me.Fields
  loc_D63866: FLdPr var_1E8
  loc_D63869: from_stack_2 = Me.Item(from_stack_1)
  loc_D6386E: FLdPr var_1EC
  loc_D63871:  = Me.Value
  loc_D63876: FLdRfVar var_24C
  loc_D63879: ConcatVar var_32C
  loc_D6387D: LitVarStr var_25C, ","
  loc_D63882: ConcatVar var_35C
  loc_D63886: FLdRfVar var_38C
  loc_D63889: FLdRfVar var_1F8
  loc_D6388C: LitVarStr var_26C, "MoviCtct"
  loc_D63891: PopAdLdVar
  loc_D63892: FLdRfVar var_1F4
  loc_D63895: FLdRfVar var_1F0
  loc_D63898: FLdPr Me
  loc_D6389B: MemLdRfVar from_stack_1.global_80
  loc_D6389E: NewIfNullPr clsctacte
  loc_D638A1: from_stack_1v = clsctacte.RsFrmGet()
  loc_D638A6: FLdPr var_1F0
  loc_D638A9:  = Me.Fields
  loc_D638AE: FLdPr var_1F4
  loc_D638B1: from_stack_2 = Me.Item(from_stack_1)
  loc_D638B6: FLdPr var_1F8
  loc_D638B9:  = Me.Value
  loc_D638BE: FLdRfVar var_38C
  loc_D638C1: ConcatVar var_47C
  loc_D638C5: LitVarStr var_27C, ",1,"
  loc_D638CA: ConcatVar var_48C
  loc_D638CE: FLdRfVar var_49C
  loc_D638D1: FLdRfVar var_4A4
  loc_D638D4: LitVarStr var_28C, "PeriOrde"
  loc_D638D9: PopAdLdVar
  loc_D638DA: FLdRfVar var_4A0
  loc_D638DD: FLdRfVar var_1FC
  loc_D638E0: FLdPr Me
  loc_D638E3: MemLdRfVar from_stack_1.global_80
  loc_D638E6: NewIfNullPr clsctacte
  loc_D638E9: from_stack_1v = clsctacte.RsFrmGet()
  loc_D638EE: FLdPr var_1FC
  loc_D638F1:  = Me.Fields
  loc_D638F6: FLdPr var_4A0
  loc_D638F9: from_stack_2 = Me.Item(from_stack_1)
  loc_D638FE: FLdPr var_4A4
  loc_D63901:  = Me.Value
  loc_D63906: FLdRfVar var_49C
  loc_D63909: ConcatVar var_4B4
  loc_D6390D: LitVarStr var_29C, ","
  loc_D63912: ConcatVar var_4C4
  loc_D63916: FLdRfVar var_4D4
  loc_D63919: FLdRfVar var_4E0
  loc_D6391C: LitVarStr var_2AC, "CodiCtde"
  loc_D63921: PopAdLdVar
  loc_D63922: FLdRfVar var_4DC
  loc_D63925: FLdRfVar var_4D8
  loc_D63928: FLdPr Me
  loc_D6392B: MemLdRfVar from_stack_1.global_80
  loc_D6392E: NewIfNullPr clsctacte
  loc_D63931: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63936: FLdPr var_4D8
  loc_D63939:  = Me.Fields
  loc_D6393E: FLdPr var_4DC
  loc_D63941: from_stack_2 = Me.Item(from_stack_1)
  loc_D63946: FLdPr var_4E0
  loc_D63949:  = Me.Value
  loc_D6394E: FLdRfVar var_4D4
  loc_D63951: ConcatVar var_4F0
  loc_D63955: LitVarStr var_2BC, ","
  loc_D6395A: ConcatVar var_500
  loc_D6395E: FLdRfVar var_510
  loc_D63961: FLdRfVar var_51C
  loc_D63964: LitVarStr var_2CC, "NumeCtde"
  loc_D63969: PopAdLdVar
  loc_D6396A: FLdRfVar var_518
  loc_D6396D: FLdRfVar var_514
  loc_D63970: FLdPr Me
  loc_D63973: MemLdRfVar from_stack_1.global_80
  loc_D63976: NewIfNullPr clsctacte
  loc_D63979: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6397E: FLdPr var_514
  loc_D63981:  = Me.Fields
  loc_D63986: FLdPr var_518
  loc_D63989: from_stack_2 = Me.Item(from_stack_1)
  loc_D6398E: FLdPr var_51C
  loc_D63991:  = Me.Value
  loc_D63996: FLdRfVar var_510
  loc_D63999: ConcatVar var_52C
  loc_D6399D: LitVarStr var_2DC, ","
  loc_D639A2: ConcatVar var_53C
  loc_D639A6: FLdRfVar var_558
  loc_D639A9: FLdRfVar var_548
  loc_D639AC: LitVarStr var_2EC, "MoviCtde"
  loc_D639B1: PopAdLdVar
  loc_D639B2: FLdRfVar var_544
  loc_D639B5: FLdRfVar var_540
  loc_D639B8: FLdPr Me
  loc_D639BB: MemLdRfVar from_stack_1.global_80
  loc_D639BE: NewIfNullPr clsctacte
  loc_D639C1: from_stack_1v = clsctacte.RsFrmGet()
  loc_D639C6: FLdPr var_540
  loc_D639C9:  = Me.Fields
  loc_D639CE: FLdPr var_544
  loc_D639D1: from_stack_2 = Me.Item(from_stack_1)
  loc_D639D6: FLdPr var_548
  loc_D639D9:  = Me.Value
  loc_D639DE: FLdRfVar var_558
  loc_D639E1: ConcatVar var_568
  loc_D639E5: LitVarStr var_2FC, ","
  loc_D639EA: ConcatVar var_578
  loc_D639EE: FLdRfVar var_594
  loc_D639F1: FLdRfVar var_584
  loc_D639F4: LitVarStr var_30C, "CodiOfic"
  loc_D639F9: PopAdLdVar
  loc_D639FA: FLdRfVar var_580
  loc_D639FD: FLdRfVar var_57C
  loc_D63A00: FLdPr Me
  loc_D63A03: MemLdRfVar from_stack_1.global_80
  loc_D63A06: NewIfNullPr clsctacte
  loc_D63A09: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63A0E: FLdPr var_57C
  loc_D63A11:  = Me.Fields
  loc_D63A16: FLdPr var_580
  loc_D63A19: from_stack_2 = Me.Item(from_stack_1)
  loc_D63A1E: FLdPr var_584
  loc_D63A21:  = Me.Value
  loc_D63A26: FLdRfVar var_594
  loc_D63A29: ConcatVar var_5A4
  loc_D63A2D: LitVarStr var_31C, ",'"
  loc_D63A32: ConcatVar var_5B4
  loc_D63A36: FLdRfVar var_5D0
  loc_D63A39: FLdRfVar var_5C0
  loc_D63A3C: LitVarStr var_33C, "CuenCtct"
  loc_D63A41: PopAdLdVar
  loc_D63A42: FLdRfVar var_5BC
  loc_D63A45: FLdRfVar var_5B8
  loc_D63A48: FLdPr Me
  loc_D63A4B: MemLdRfVar from_stack_1.global_80
  loc_D63A4E: NewIfNullPr clsctacte
  loc_D63A51: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63A56: FLdPr var_5B8
  loc_D63A59:  = Me.Fields
  loc_D63A5E: FLdPr var_5BC
  loc_D63A61: from_stack_2 = Me.Item(from_stack_1)
  loc_D63A66: FLdPr var_5C0
  loc_D63A69:  = Me.Value
  loc_D63A6E: FLdRfVar var_5D0
  loc_D63A71: ConcatVar var_5E0
  loc_D63A75: LitVarStr var_34C, "',"
  loc_D63A7A: ConcatVar var_5F0
  loc_D63A7E: LitI4 0
  loc_D63A83: LitI4 -1
  loc_D63A88: LitI4 1
  loc_D63A8D: LitStr "."
  loc_D63A90: LitStr ","
  loc_D63A93: FLdFPR8 var_A8
  loc_D63A96: CStrR8
  loc_D63A98: FStStrNoPop var_394
  loc_D63A9B: ImpAdCallI2 Replace(, , , , , )
  loc_D63AA0: CVarStr var_60C
  loc_D63AA3: ConcatVar var_61C
  loc_D63AA7: LitVarStr var_36C, ","
  loc_D63AAC: ConcatVar var_62C
  loc_D63AB0: LitI4 0
  loc_D63AB5: LitI4 -1
  loc_D63ABA: LitI4 1
  loc_D63ABF: LitStr "."
  loc_D63AC2: LitStr ","
  loc_D63AC5: FLdFPR8 var_B0
  loc_D63AC8: CStrR8
  loc_D63ACA: FStStrNoPop var_398
  loc_D63ACD: ImpAdCallI2 Replace(, , , , , )
  loc_D63AD2: CVarStr var_658
  loc_D63AD5: ConcatVar var_668
  loc_D63AD9: LitVarStr var_37C, ",0);"
  loc_D63ADE: ConcatVar var_688
  loc_D63AE2: CStrVarTmp
  loc_D63AE3: FStStrNoPop var_39C
  loc_D63AE6: FLdPr Me
  loc_D63AE9: MemStStrCopy
  loc_D63AED: FFreeStr var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1D4 = "": var_390 = "": var_394 = "": var_398 = ""
  loc_D63B04: FFreeAd var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_4A0 = "": var_4A4 = "": var_4D8 = "": var_4DC = "": var_4E0 = "": var_514 = "": var_518 = "": var_51C = "": var_540 = "": var_544 = "": var_548 = "": var_57C = "": var_580 = "": var_584 = "": var_5B8 = "": var_5BC = ""
  loc_D63B43: FFreeVar var_5F0 = "": var_60C = "": var_61C = "": var_62C = "": var_658 = "": var_668 = "": var_688 = "": var_154 = "": var_144 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = "": var_38C = "": var_47C = "": var_48C = "": var_49C = "": var_4B4 = "": var_4C4 = "": var_4D4 = "": var_4F0 = "": var_500 = "": var_510 = "": var_52C = "": var_53C = "": var_558 = "": var_568 = "": var_578 = "": var_594 = "": var_5A4 = "": var_5B4 = "": var_5D0 = ""
  loc_D63B90: Branch loc_D63FED
  loc_D63B93: FLdPr Me
  loc_D63B96: MemLdStr global_260
  loc_D63B99: LitStr " INSERT INTO boledeta (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, PeriOrde, CodiCtde, NumeCtde, MoviCtde, CodiOfic, CuenCtct, ImpoBode, DecaBode, TotaBode) "
  loc_D63B9C: ConcatStr
  loc_D63B9D: FStStrNoPop var_1B0
  loc_D63BA0: LitStr " VALUES ("
  loc_D63BA3: ConcatStr
  loc_D63BA4: FStStrNoPop var_1B4
  loc_D63BA7: FLdI2 var_86
  loc_D63BAA: CStrUI1
  loc_D63BAC: FStStrNoPop var_1B8
  loc_D63BAF: ConcatStr
  loc_D63BB0: FStStrNoPop var_1BC
  loc_D63BB3: LitStr ","
  loc_D63BB6: ConcatStr
  loc_D63BB7: FStStrNoPop var_1C0
  loc_D63BBA: ILdRf var_8C
  loc_D63BBD: CStrI4
  loc_D63BBF: FStStrNoPop var_1D4
  loc_D63BC2: ConcatStr
  loc_D63BC3: FStStrNoPop var_390
  loc_D63BC6: LitStr ","
  loc_D63BC9: ConcatStr
  loc_D63BCA: CVarStr var_154
  loc_D63BCD: FLdRfVar var_144
  loc_D63BD0: FLdRfVar var_1D0
  loc_D63BD3: LitVarStr var_134, "PeriCtct"
  loc_D63BD8: PopAdLdVar
  loc_D63BD9: FLdRfVar var_1CC
  loc_D63BDC: FLdRfVar var_158
  loc_D63BDF: FLdPr Me
  loc_D63BE2: MemLdRfVar from_stack_1.global_80
  loc_D63BE5: NewIfNullPr clsctacte
  loc_D63BE8: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63BED: FLdPr var_158
  loc_D63BF0:  = Me.Fields
  loc_D63BF5: FLdPr var_1CC
  loc_D63BF8: from_stack_2 = Me.Item(from_stack_1)
  loc_D63BFD: FLdPr var_1D0
  loc_D63C00:  = Me.Value
  loc_D63C05: FLdRfVar var_144
  loc_D63C08: ConcatVar var_188
  loc_D63C0C: LitVarStr var_168, ","
  loc_D63C11: ConcatVar var_1A8
  loc_D63C15: FLdRfVar var_20C
  loc_D63C18: FLdRfVar var_1E0
  loc_D63C1B: LitVarStr var_178, "BimeCtct"
  loc_D63C20: PopAdLdVar
  loc_D63C21: FLdRfVar var_1DC
  loc_D63C24: FLdRfVar var_1D8
  loc_D63C27: FLdPr Me
  loc_D63C2A: MemLdRfVar from_stack_1.global_80
  loc_D63C2D: NewIfNullPr clsctacte
  loc_D63C30: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63C35: FLdPr var_1D8
  loc_D63C38:  = Me.Fields
  loc_D63C3D: FLdPr var_1DC
  loc_D63C40: from_stack_2 = Me.Item(from_stack_1)
  loc_D63C45: FLdPr var_1E0
  loc_D63C48:  = Me.Value
  loc_D63C4D: FLdRfVar var_20C
  loc_D63C50: ConcatVar var_21C
  loc_D63C54: LitVarStr var_198, ","
  loc_D63C59: ConcatVar var_22C
  loc_D63C5D: FLdRfVar var_24C
  loc_D63C60: FLdRfVar var_1EC
  loc_D63C63: LitVarStr var_23C, "NumeCtct"
  loc_D63C68: PopAdLdVar
  loc_D63C69: FLdRfVar var_1E8
  loc_D63C6C: FLdRfVar var_1E4
  loc_D63C6F: FLdPr Me
  loc_D63C72: MemLdRfVar from_stack_1.global_80
  loc_D63C75: NewIfNullPr clsctacte
  loc_D63C78: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63C7D: FLdPr var_1E4
  loc_D63C80:  = Me.Fields
  loc_D63C85: FLdPr var_1E8
  loc_D63C88: from_stack_2 = Me.Item(from_stack_1)
  loc_D63C8D: FLdPr var_1EC
  loc_D63C90:  = Me.Value
  loc_D63C95: FLdRfVar var_24C
  loc_D63C98: ConcatVar var_32C
  loc_D63C9C: LitVarStr var_25C, ","
  loc_D63CA1: ConcatVar var_35C
  loc_D63CA5: FLdRfVar var_38C
  loc_D63CA8: FLdRfVar var_1F8
  loc_D63CAB: LitVarStr var_26C, "MoviCtct"
  loc_D63CB0: PopAdLdVar
  loc_D63CB1: FLdRfVar var_1F4
  loc_D63CB4: FLdRfVar var_1F0
  loc_D63CB7: FLdPr Me
  loc_D63CBA: MemLdRfVar from_stack_1.global_80
  loc_D63CBD: NewIfNullPr clsctacte
  loc_D63CC0: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63CC5: FLdPr var_1F0
  loc_D63CC8:  = Me.Fields
  loc_D63CCD: FLdPr var_1F4
  loc_D63CD0: from_stack_2 = Me.Item(from_stack_1)
  loc_D63CD5: FLdPr var_1F8
  loc_D63CD8:  = Me.Value
  loc_D63CDD: FLdRfVar var_38C
  loc_D63CE0: ConcatVar var_47C
  loc_D63CE4: LitVarStr var_27C, ",1,"
  loc_D63CE9: ConcatVar var_48C
  loc_D63CED: FLdRfVar var_49C
  loc_D63CF0: FLdRfVar var_4A4
  loc_D63CF3: LitVarStr var_28C, "PeriOrde"
  loc_D63CF8: PopAdLdVar
  loc_D63CF9: FLdRfVar var_4A0
  loc_D63CFC: FLdRfVar var_1FC
  loc_D63CFF: FLdPr Me
  loc_D63D02: MemLdRfVar from_stack_1.global_80
  loc_D63D05: NewIfNullPr clsctacte
  loc_D63D08: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63D0D: FLdPr var_1FC
  loc_D63D10:  = Me.Fields
  loc_D63D15: FLdPr var_4A0
  loc_D63D18: from_stack_2 = Me.Item(from_stack_1)
  loc_D63D1D: FLdPr var_4A4
  loc_D63D20:  = Me.Value
  loc_D63D25: FLdRfVar var_49C
  loc_D63D28: ConcatVar var_4B4
  loc_D63D2C: LitVarStr var_29C, ","
  loc_D63D31: ConcatVar var_4C4
  loc_D63D35: FLdRfVar var_4D4
  loc_D63D38: FLdRfVar var_4E0
  loc_D63D3B: LitVarStr var_2AC, "CodiCtde"
  loc_D63D40: PopAdLdVar
  loc_D63D41: FLdRfVar var_4DC
  loc_D63D44: FLdRfVar var_4D8
  loc_D63D47: FLdPr Me
  loc_D63D4A: MemLdRfVar from_stack_1.global_80
  loc_D63D4D: NewIfNullPr clsctacte
  loc_D63D50: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63D55: FLdPr var_4D8
  loc_D63D58:  = Me.Fields
  loc_D63D5D: FLdPr var_4DC
  loc_D63D60: from_stack_2 = Me.Item(from_stack_1)
  loc_D63D65: FLdPr var_4E0
  loc_D63D68:  = Me.Value
  loc_D63D6D: FLdRfVar var_4D4
  loc_D63D70: ConcatVar var_4F0
  loc_D63D74: LitVarStr var_2BC, ","
  loc_D63D79: ConcatVar var_500
  loc_D63D7D: FLdRfVar var_510
  loc_D63D80: FLdRfVar var_51C
  loc_D63D83: LitVarStr var_2CC, "NumeCtde"
  loc_D63D88: PopAdLdVar
  loc_D63D89: FLdRfVar var_518
  loc_D63D8C: FLdRfVar var_514
  loc_D63D8F: FLdPr Me
  loc_D63D92: MemLdRfVar from_stack_1.global_80
  loc_D63D95: NewIfNullPr clsctacte
  loc_D63D98: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63D9D: FLdPr var_514
  loc_D63DA0:  = Me.Fields
  loc_D63DA5: FLdPr var_518
  loc_D63DA8: from_stack_2 = Me.Item(from_stack_1)
  loc_D63DAD: FLdPr var_51C
  loc_D63DB0:  = Me.Value
  loc_D63DB5: FLdRfVar var_510
  loc_D63DB8: ConcatVar var_52C
  loc_D63DBC: LitVarStr var_2DC, ","
  loc_D63DC1: ConcatVar var_53C
  loc_D63DC5: FLdRfVar var_558
  loc_D63DC8: FLdRfVar var_548
  loc_D63DCB: LitVarStr var_2EC, "MoviCtde"
  loc_D63DD0: PopAdLdVar
  loc_D63DD1: FLdRfVar var_544
  loc_D63DD4: FLdRfVar var_540
  loc_D63DD7: FLdPr Me
  loc_D63DDA: MemLdRfVar from_stack_1.global_80
  loc_D63DDD: NewIfNullPr clsctacte
  loc_D63DE0: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63DE5: FLdPr var_540
  loc_D63DE8:  = Me.Fields
  loc_D63DED: FLdPr var_544
  loc_D63DF0: from_stack_2 = Me.Item(from_stack_1)
  loc_D63DF5: FLdPr var_548
  loc_D63DF8:  = Me.Value
  loc_D63DFD: FLdRfVar var_558
  loc_D63E00: ConcatVar var_568
  loc_D63E04: LitVarStr var_2FC, ","
  loc_D63E09: ConcatVar var_578
  loc_D63E0D: FLdRfVar var_594
  loc_D63E10: FLdRfVar var_584
  loc_D63E13: LitVarStr var_30C, "CodiOfic"
  loc_D63E18: PopAdLdVar
  loc_D63E19: FLdRfVar var_580
  loc_D63E1C: FLdRfVar var_57C
  loc_D63E1F: FLdPr Me
  loc_D63E22: MemLdRfVar from_stack_1.global_80
  loc_D63E25: NewIfNullPr clsctacte
  loc_D63E28: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63E2D: FLdPr var_57C
  loc_D63E30:  = Me.Fields
  loc_D63E35: FLdPr var_580
  loc_D63E38: from_stack_2 = Me.Item(from_stack_1)
  loc_D63E3D: FLdPr var_584
  loc_D63E40:  = Me.Value
  loc_D63E45: FLdRfVar var_594
  loc_D63E48: ConcatVar var_5A4
  loc_D63E4C: LitVarStr var_31C, ",'"
  loc_D63E51: ConcatVar var_5B4
  loc_D63E55: FLdRfVar var_5D0
  loc_D63E58: FLdRfVar var_5C0
  loc_D63E5B: LitVarStr var_33C, "CuenCtct"
  loc_D63E60: PopAdLdVar
  loc_D63E61: FLdRfVar var_5BC
  loc_D63E64: FLdRfVar var_5B8
  loc_D63E67: FLdPr Me
  loc_D63E6A: MemLdRfVar from_stack_1.global_80
  loc_D63E6D: NewIfNullPr clsctacte
  loc_D63E70: from_stack_1v = clsctacte.RsFrmGet()
  loc_D63E75: FLdPr var_5B8
  loc_D63E78:  = Me.Fields
  loc_D63E7D: FLdPr var_5BC
  loc_D63E80: from_stack_2 = Me.Item(from_stack_1)
  loc_D63E85: FLdPr var_5C0
  loc_D63E88:  = Me.Value
  loc_D63E8D: FLdRfVar var_5D0
  loc_D63E90: ConcatVar var_5E0
  loc_D63E94: LitVarStr var_34C, "',"
  loc_D63E99: ConcatVar var_5F0
  loc_D63E9D: LitI4 0
  loc_D63EA2: LitI4 -1
  loc_D63EA7: LitI4 1
  loc_D63EAC: LitStr "."
  loc_D63EAF: LitStr ","
  loc_D63EB2: FLdFPR8 var_A8
  loc_D63EB5: CStrR8
  loc_D63EB7: FStStrNoPop var_394
  loc_D63EBA: ImpAdCallI2 Replace(, , , , , )
  loc_D63EBF: CVarStr var_60C
  loc_D63EC2: ConcatVar var_61C
  loc_D63EC6: LitVarStr var_36C, ","
  loc_D63ECB: ConcatVar var_62C
  loc_D63ECF: LitI4 0
  loc_D63ED4: LitI4 -1
  loc_D63ED9: LitI4 1
  loc_D63EDE: LitStr "."
  loc_D63EE1: LitStr ","
  loc_D63EE4: FLdFPR8 var_B0
  loc_D63EE7: CStrR8
  loc_D63EE9: FStStrNoPop var_398
  loc_D63EEC: ImpAdCallI2 Replace(, , , , , )
  loc_D63EF1: CVarStr var_658
  loc_D63EF4: ConcatVar var_668
  loc_D63EF8: LitVarStr var_37C, ","
  loc_D63EFD: ConcatVar var_688
  loc_D63F01: LitI4 0
  loc_D63F06: LitI4 -1
  loc_D63F0B: LitI4 1
  loc_D63F10: LitStr "."
  loc_D63F13: LitStr ","
  loc_D63F16: FLdFPR8 var_A8
  loc_D63F19: FLdFPR8 var_B0
  loc_D63F1C: SubR4
  loc_D63F1D: CStrR8
  loc_D63F1F: FStStrNoPop var_39C
  loc_D63F22: ImpAdCallI2 Replace(, , , , , )
  loc_D63F27: CVarStr var_6B4
  loc_D63F2A: ConcatVar var_6C4
  loc_D63F2E: LitVarStr var_644, ");"
  loc_D63F33: ConcatVar var_6E4
  loc_D63F37: CStrVarTmp
  loc_D63F38: FStStrNoPop var_3A0
  loc_D63F3B: FLdPr Me
  loc_D63F3E: MemStStrCopy
  loc_D63F42: FFreeStr var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1D4 = "": var_390 = "": var_394 = "": var_398 = "": var_39C = ""
  loc_D63F5B: FFreeAd var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_4A0 = "": var_4A4 = "": var_4D8 = "": var_4DC = "": var_4E0 = "": var_514 = "": var_518 = "": var_51C = "": var_540 = "": var_544 = "": var_548 = "": var_57C = "": var_580 = "": var_584 = "": var_5B8 = "": var_5BC = ""
  loc_D63F9A: FFreeVar var_5F0 = "": var_60C = "": var_61C = "": var_62C = "": var_658 = "": var_668 = "": var_688 = "": var_6B4 = "": var_6C4 = "": var_6E4 = "": var_154 = "": var_144 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = "": var_38C = "": var_47C = "": var_48C = "": var_49C = "": var_4B4 = "": var_4C4 = "": var_4D4 = "": var_4F0 = "": var_500 = "": var_510 = "": var_52C = "": var_53C = "": var_558 = "": var_568 = "": var_578 = "": var_594 = "": var_5A4 = "": var_5B4 = "": var_5D0 = ""
  loc_D63FED: LitI2_Byte 0
  loc_D63FEF: CR8I2
  loc_D63FF0: FStFPR8 var_A8
  loc_D63FF3: FLdRfVar var_158
  loc_D63FF6: FLdPr Me
  loc_D63FF9: MemLdRfVar from_stack_1.global_80
  loc_D63FFC: NewIfNullPr clsctacte
  loc_D63FFF: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64004: FLdPr var_158
  loc_D64007: Me.MoveNext
  loc_D6400C: FFree1Ad var_158
  loc_D6400F: Branch loc_D62BB2
  loc_D64012: FLdRfVar var_144
  loc_D64015: FLdRfVar var_1D0
  loc_D64018: LitVarStr var_134, "SaldCtct"
  loc_D6401D: PopAdLdVar
  loc_D6401E: FLdRfVar var_1CC
  loc_D64021: FLdRfVar var_158
  loc_D64024: FLdPr Me
  loc_D64027: MemLdRfVar from_stack_1.global_64
  loc_D6402A: NewIfNullPr clsctacte
  loc_D6402D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64032: FLdPr var_158
  loc_D64035:  = Me.Fields
  loc_D6403A: FLdPr var_1CC
  loc_D6403D: from_stack_2 = Me.Item(from_stack_1)
  loc_D64042: FLdPr var_1D0
  loc_D64045:  = Me.Value
  loc_D6404A: LitI4 2
  loc_D6404F: FLdPr Me
  loc_D64052: MemLdFPR8 global_184
  loc_D64055: FLdRfVar var_144
  loc_D64058: FnCDblVar
  loc_D6405A: AddR8
  loc_D6405B: CVarR8
  loc_D6405F: FLdRfVar var_188
  loc_D64062: ImpAdCallFPR4  = Round(, )
  loc_D64067: FLdRfVar var_188
  loc_D6406A: CR4Var
  loc_D6406B: FLdPr Me
  loc_D6406E: MemStFPR8 global_184
  loc_D64071: FFreeAd var_158 = "": var_1CC = ""
  loc_D6407A: FFreeVar var_144 = "": var_154 = ""
  loc_D64083: LitI4 2
  loc_D64088: FLdPr Me
  loc_D6408B: MemLdFPR8 global_192
  loc_D6408E: FLdPr Me
  loc_D64091: MemLdFPR8 global_152
  loc_D64094: AddR8
  loc_D64095: FLdPr Me
  loc_D64098: MemLdFPR8 global_160
  loc_D6409B: AddR8
  loc_D6409C: CVarR8
  loc_D640A0: FLdRfVar var_154
  loc_D640A3: ImpAdCallFPR4  = Round(, )
  loc_D640A8: FLdRfVar var_154
  loc_D640AB: CR4Var
  loc_D640AC: FLdPr Me
  loc_D640AF: MemStFPR8 global_192
  loc_D640B2: FFreeVar var_144 = ""
  loc_D640B9: LitI4 2
  loc_D640BE: FLdPr Me
  loc_D640C1: MemLdFPR8 global_208
  loc_D640C4: FLdPr Me
  loc_D640C7: MemLdFPR8 global_144
  loc_D640CA: AddR8
  loc_D640CB: CVarR8
  loc_D640CF: FLdRfVar var_154
  loc_D640D2: ImpAdCallFPR4  = Round(, )
  loc_D640D7: FLdRfVar var_154
  loc_D640DA: CR4Var
  loc_D640DB: FLdPr Me
  loc_D640DE: MemStFPR8 global_208
  loc_D640E1: FFreeVar var_144 = ""
  loc_D640E8: LitI4 2
  loc_D640ED: FLdPr Me
  loc_D640F0: MemLdFPR8 global_216
  loc_D640F3: FLdPr Me
  loc_D640F6: MemLdFPR8 global_176
  loc_D640F9: AddR8
  loc_D640FA: CVarR8
  loc_D640FE: FLdRfVar var_154
  loc_D64101: ImpAdCallFPR4  = Round(, )
  loc_D64106: FLdRfVar var_154
  loc_D64109: CR4Var
  loc_D6410A: FLdPr Me
  loc_D6410D: MemStFPR8 global_216
  loc_D64110: FFreeVar var_144 = ""
  loc_D64117: Branch loc_D67B47
  loc_D6411A: LitStr "SELECT detafapa.*, facipago.NovaFapa FROM detafapa "
  loc_D6411D: LitStr " INNER JOIN facipago ON facipago.CodiFapa = detafapa.CodiFapa"
  loc_D64120: ConcatStr
  loc_D64121: FStStrNoPop var_1B0
  loc_D64124: LitStr " WHERE detafapa.CodiFapa = "
  loc_D64127: ConcatStr
  loc_D64128: CVarStr var_154
  loc_D6412B: FLdRfVar var_144
  loc_D6412E: FLdRfVar var_1D0
  loc_D64131: LitVarStr var_134, "CodiFapa"
  loc_D64136: PopAdLdVar
  loc_D64137: FLdRfVar var_1CC
  loc_D6413A: FLdRfVar var_158
  loc_D6413D: FLdPr Me
  loc_D64140: MemLdRfVar from_stack_1.global_64
  loc_D64143: NewIfNullPr clsctacte
  loc_D64146: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6414B: FLdPr var_158
  loc_D6414E:  = Me.Fields
  loc_D64153: FLdPr var_1CC
  loc_D64156: from_stack_2 = Me.Item(from_stack_1)
  loc_D6415B: FLdPr var_1D0
  loc_D6415E:  = Me.Value
  loc_D64163: FLdRfVar var_144
  loc_D64166: ConcatVar var_188
  loc_D6416A: LitVarStr var_168, " AND detafapa.CuotDefa = '"
  loc_D6416F: ConcatVar var_1A8
  loc_D64173: FLdRfVar var_20C
  loc_D64176: FLdRfVar var_1E0
  loc_D64179: LitVarStr var_178, "CuotDefa"
  loc_D6417E: PopAdLdVar
  loc_D6417F: FLdRfVar var_1DC
  loc_D64182: FLdRfVar var_1D8
  loc_D64185: FLdPr Me
  loc_D64188: MemLdRfVar from_stack_1.global_64
  loc_D6418B: NewIfNullPr clsctacte
  loc_D6418E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64193: FLdPr var_1D8
  loc_D64196:  = Me.Fields
  loc_D6419B: FLdPr var_1DC
  loc_D6419E: from_stack_2 = Me.Item(from_stack_1)
  loc_D641A3: FLdPr var_1E0
  loc_D641A6:  = Me.Value
  loc_D641AB: FLdRfVar var_20C
  loc_D641AE: ConcatVar var_21C
  loc_D641B2: LitVarStr var_198, "'"
  loc_D641B7: ConcatVar var_22C
  loc_D641BB: LitVarStr var_23C, " ORDER BY CodiFapa, CuotDefa"
  loc_D641C0: ConcatVar var_24C
  loc_D641C4: CStrVarVal var_1B4
  loc_D641C8: FLdPr Me
  loc_D641CB: MemLdRfVar from_stack_1.global_56
  loc_D641CE: NewIfNullPr clsctacte
  loc_D641D1: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D641D6: FFreeStr var_1B0 = ""
  loc_D641DD: FFreeAd var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = ""
  loc_D641EC: FFreeVar var_154 = "": var_144 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = ""
  loc_D641FF: FLdRfVar var_1C4
  loc_D64202: FLdRfVar var_158
  loc_D64205: FLdPr Me
  loc_D64208: MemLdRfVar from_stack_1.global_56
  loc_D6420B: NewIfNullPr clsctacte
  loc_D6420E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64213: FLdPr var_158
  loc_D64216:  = Me.RecordCount
  loc_D6421B: ILdRf var_1C4
  loc_D6421E: LitI4 1
  loc_D64223: EqI4
  loc_D64224: FFree1Ad var_158
  loc_D64227: BranchF loc_D67B47
  loc_D6422A: FLdRfVar var_144
  loc_D6422D: FLdRfVar var_1D0
  loc_D64230: LitVarStr var_134, "NovaFapa"
  loc_D64235: PopAdLdVar
  loc_D64236: FLdRfVar var_1CC
  loc_D64239: FLdRfVar var_158
  loc_D6423C: FLdPr Me
  loc_D6423F: MemLdRfVar from_stack_1.global_56
  loc_D64242: NewIfNullPr clsctacte
  loc_D64245: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6424A: FLdPr var_158
  loc_D6424D:  = Me.Fields
  loc_D64252: FLdPr var_1CC
  loc_D64255: from_stack_2 = Me.Item(from_stack_1)
  loc_D6425A: FLdPr var_1D0
  loc_D6425D:  = Me.Value
  loc_D64262: FLdRfVar var_144
  loc_D64265: FnCByteVar
  loc_D64267: CI2UI1
  loc_D64269: LitI2_Byte 1
  loc_D6426B: EqI2
  loc_D6426C: FFreeAd var_158 = "": var_1CC = ""
  loc_D64275: FFree1Var var_144 = ""
  loc_D64278: BranchF loc_D65B83
  loc_D6427B: FLdRfVar var_144
  loc_D6427E: FLdRfVar var_1D0
  loc_D64281: LitVarStr var_134, "RecaCtct"
  loc_D64286: PopAdLdVar
  loc_D64287: FLdRfVar var_1CC
  loc_D6428A: FLdRfVar var_158
  loc_D6428D: FLdPr Me
  loc_D64290: MemLdRfVar from_stack_1.global_64
  loc_D64293: NewIfNullPr clsctacte
  loc_D64296: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6429B: FLdPr var_158
  loc_D6429E:  = Me.Fields
  loc_D642A3: FLdPr var_1CC
  loc_D642A6: from_stack_2 = Me.Item(from_stack_1)
  loc_D642AB: FLdPr var_1D0
  loc_D642AE:  = Me.Value
  loc_D642B3: FLdRfVar var_144
  loc_D642B6: FnCDblVar
  loc_D642B8: LitI2_Byte 0
  loc_D642BA: CR8I2
  loc_D642BB: GtR4
  loc_D642BC: FFreeAd var_158 = "": var_1CC = ""
  loc_D642C5: FFree1Var var_144 = ""
  loc_D642C8: BranchF loc_D6437E
  loc_D642CB: FLdRfVar var_144
  loc_D642CE: FLdRfVar var_1D0
  loc_D642D1: LitVarStr var_134, "RecaCtct"
  loc_D642D6: PopAdLdVar
  loc_D642D7: FLdRfVar var_1CC
  loc_D642DA: FLdRfVar var_158
  loc_D642DD: FLdPr Me
  loc_D642E0: MemLdRfVar from_stack_1.global_64
  loc_D642E3: NewIfNullPr clsctacte
  loc_D642E6: from_stack_1v = clsctacte.RsFrmGet()
  loc_D642EB: FLdPr var_158
  loc_D642EE:  = Me.Fields
  loc_D642F3: FLdPr var_1CC
  loc_D642F6: from_stack_2 = Me.Item(from_stack_1)
  loc_D642FB: FLdPr var_1D0
  loc_D642FE:  = Me.Value
  loc_D64303: FLdRfVar var_154
  loc_D64306: FLdRfVar var_1E0
  loc_D64309: LitVarStr var_168, "RecaDefa"
  loc_D6430E: PopAdLdVar
  loc_D6430F: FLdRfVar var_1DC
  loc_D64312: FLdRfVar var_1D8
  loc_D64315: FLdPr Me
  loc_D64318: MemLdRfVar from_stack_1.global_56
  loc_D6431B: NewIfNullPr clsctacte
  loc_D6431E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64323: FLdPr var_1D8
  loc_D64326:  = Me.Fields
  loc_D6432B: FLdPr var_1DC
  loc_D6432E: from_stack_2 = Me.Item(from_stack_1)
  loc_D64333: FLdPr var_1E0
  loc_D64336:  = Me.Value
  loc_D6433B: LitI4 2
  loc_D64340: FLdRfVar var_144
  loc_D64343: FnCDblVar
  loc_D64345: FLdRfVar var_154
  loc_D64348: FnCDblVar
  loc_D6434A: AddR8
  loc_D6434B: CVarR8
  loc_D6434F: FLdRfVar var_1A8
  loc_D64352: ImpAdCallFPR4  = Round(, )
  loc_D64357: FLdRfVar var_1A8
  loc_D6435A: CR4Var
  loc_D6435B: FLdPr Me
  loc_D6435E: MemStFPR8 global_144
  loc_D64361: FFreeAd var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = ""
  loc_D64370: FFreeVar var_144 = "": var_154 = "": var_188 = ""
  loc_D6437B: Branch loc_D643CD
  loc_D6437E: FLdRfVar var_144
  loc_D64381: FLdRfVar var_1D0
  loc_D64384: LitVarStr var_134, "RecaDefa"
  loc_D64389: PopAdLdVar
  loc_D6438A: FLdRfVar var_1CC
  loc_D6438D: FLdRfVar var_158
  loc_D64390: FLdPr Me
  loc_D64393: MemLdRfVar from_stack_1.global_56
  loc_D64396: NewIfNullPr clsctacte
  loc_D64399: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6439E: FLdPr var_158
  loc_D643A1:  = Me.Fields
  loc_D643A6: FLdPr var_1CC
  loc_D643A9: from_stack_2 = Me.Item(from_stack_1)
  loc_D643AE: FLdPr var_1D0
  loc_D643B1:  = Me.Value
  loc_D643B6: FLdRfVar var_144
  loc_D643B9: FnCDblVar
  loc_D643BB: FLdPr Me
  loc_D643BE: MemStFPR8 global_144
  loc_D643C1: FFreeAd var_158 = "": var_1CC = ""
  loc_D643CA: FFree1Var var_144 = ""
  loc_D643CD: FLdRfVar var_144
  loc_D643D0: FLdRfVar var_1D0
  loc_D643D3: LitVarStr var_134, "DecaDefa"
  loc_D643D8: PopAdLdVar
  loc_D643D9: FLdRfVar var_1CC
  loc_D643DC: FLdRfVar var_158
  loc_D643DF: FLdPr Me
  loc_D643E2: MemLdRfVar from_stack_1.global_56
  loc_D643E5: NewIfNullPr clsctacte
  loc_D643E8: from_stack_1v = clsctacte.RsFrmGet()
  loc_D643ED: FLdPr var_158
  loc_D643F0:  = Me.Fields
  loc_D643F5: FLdPr var_1CC
  loc_D643F8: from_stack_2 = Me.Item(from_stack_1)
  loc_D643FD: FLdPr var_1D0
  loc_D64400:  = Me.Value
  loc_D64405: FLdRfVar var_144
  loc_D64408: FnCDblVar
  loc_D6440A: FLdPr Me
  loc_D6440D: MemStFPR8 global_152
  loc_D64410: FFreeAd var_158 = "": var_1CC = ""
  loc_D64419: FFree1Var var_144 = ""
  loc_D6441C: FLdRfVar var_144
  loc_D6441F: FLdRfVar var_1D0
  loc_D64422: LitVarStr var_134, "DereDefa"
  loc_D64427: PopAdLdVar
  loc_D64428: FLdRfVar var_1CC
  loc_D6442B: FLdRfVar var_158
  loc_D6442E: FLdPr Me
  loc_D64431: MemLdRfVar from_stack_1.global_56
  loc_D64434: NewIfNullPr clsctacte
  loc_D64437: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6443C: FLdPr var_158
  loc_D6443F:  = Me.Fields
  loc_D64444: FLdPr var_1CC
  loc_D64447: from_stack_2 = Me.Item(from_stack_1)
  loc_D6444C: FLdPr var_1D0
  loc_D6444F:  = Me.Value
  loc_D64454: FLdRfVar var_144
  loc_D64457: FnCDblVar
  loc_D64459: FLdPr Me
  loc_D6445C: MemStFPR8 global_160
  loc_D6445F: FFreeAd var_158 = "": var_1CC = ""
  loc_D64468: FFree1Var var_144 = ""
  loc_D6446B: FLdRfVar var_144
  loc_D6446E: FLdRfVar var_1D0
  loc_D64471: LitVarStr var_134, "CapiDefa"
  loc_D64476: PopAdLdVar
  loc_D64477: FLdRfVar var_1CC
  loc_D6447A: FLdRfVar var_158
  loc_D6447D: FLdPr Me
  loc_D64480: MemLdRfVar from_stack_1.global_56
  loc_D64483: NewIfNullPr clsctacte
  loc_D64486: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6448B: FLdPr var_158
  loc_D6448E:  = Me.Fields
  loc_D64493: FLdPr var_1CC
  loc_D64496: from_stack_2 = Me.Item(from_stack_1)
  loc_D6449B: FLdPr var_1D0
  loc_D6449E:  = Me.Value
  loc_D644A3: FLdRfVar var_154
  loc_D644A6: FLdRfVar var_1E0
  loc_D644A9: LitVarStr var_168, "InteDefa"
  loc_D644AE: PopAdLdVar
  loc_D644AF: FLdRfVar var_1DC
  loc_D644B2: FLdRfVar var_1D8
  loc_D644B5: FLdPr Me
  loc_D644B8: MemLdRfVar from_stack_1.global_56
  loc_D644BB: NewIfNullPr clsctacte
  loc_D644BE: from_stack_1v = clsctacte.RsFrmGet()
  loc_D644C3: FLdPr var_1D8
  loc_D644C6:  = Me.Fields
  loc_D644CB: FLdPr var_1DC
  loc_D644CE: from_stack_2 = Me.Item(from_stack_1)
  loc_D644D3: FLdPr var_1E0
  loc_D644D6:  = Me.Value
  loc_D644DB: LitI4 2
  loc_D644E0: FLdRfVar var_144
  loc_D644E3: FnCDblVar
  loc_D644E5: FLdPr Me
  loc_D644E8: MemLdFPR8 global_152
  loc_D644EB: SubR4
  loc_D644EC: FLdPr Me
  loc_D644EF: MemLdFPR8 global_144
  loc_D644F2: AddR8
  loc_D644F3: FLdPr Me
  loc_D644F6: MemLdFPR8 global_160
  loc_D644F9: SubR4
  loc_D644FA: FLdRfVar var_154
  loc_D644FD: FnCDblVar
  loc_D644FF: AddR8
  loc_D64500: CVarR8
  loc_D64504: FLdRfVar var_1A8
  loc_D64507: ImpAdCallFPR4  = Round(, )
  loc_D6450C: FLdRfVar var_1A8
  loc_D6450F: CR4Var
  loc_D64510: FLdPr Me
  loc_D64513: MemStFPR8 global_176
  loc_D64516: FFreeAd var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = ""
  loc_D64525: FFreeVar var_144 = "": var_154 = "": var_188 = ""
  loc_D64530: FLdRfVar var_6B4
  loc_D64533: FLdRfVar var_6A4
  loc_D64536: LitVarStr var_6A0, "CapiDefa"
  loc_D6453B: PopAdLdVar
  loc_D6453C: FLdRfVar var_690
  loc_D6453F: FLdRfVar var_68C
  loc_D64542: FLdPr Me
  loc_D64545: MemLdRfVar from_stack_1.global_56
  loc_D64548: NewIfNullPr clsctacte
  loc_D6454B: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64550: FLdPr var_68C
  loc_D64553:  = Me.Fields
  loc_D64558: FLdPr var_690
  loc_D6455B: from_stack_2 = Me.Item(from_stack_1)
  loc_D64560: FLdPr var_6A4
  loc_D64563:  = Me.Value
  loc_D64568: FLdRfVar var_7E0
  loc_D6456B: FLdRfVar var_700
  loc_D6456E: LitVarStr var_7C0, "InteDefa"
  loc_D64573: PopAdLdVar
  loc_D64574: FLdRfVar var_6EC
  loc_D64577: FLdRfVar var_6E8
  loc_D6457A: FLdPr Me
  loc_D6457D: MemLdRfVar from_stack_1.global_56
  loc_D64580: NewIfNullPr clsctacte
  loc_D64583: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64588: FLdPr var_6E8
  loc_D6458B:  = Me.Fields
  loc_D64590: FLdPr var_6EC
  loc_D64593: from_stack_2 = Me.Item(from_stack_1)
  loc_D64598: FLdPr var_700
  loc_D6459B:  = Me.Value
  loc_D645A0: FLdPr Me
  loc_D645A3: MemLdStr global_260
  loc_D645A6: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, CrafDebo, ApreDebo, TotaDebo) "
  loc_D645A9: ConcatStr
  loc_D645AA: FStStrNoPop var_1B0
  loc_D645AD: LitStr " VALUES ("
  loc_D645B0: ConcatStr
  loc_D645B1: FStStrNoPop var_1B4
  loc_D645B4: FLdI2 var_86
  loc_D645B7: CStrUI1
  loc_D645B9: FStStrNoPop var_1B8
  loc_D645BC: ConcatStr
  loc_D645BD: FStStrNoPop var_1BC
  loc_D645C0: LitStr ","
  loc_D645C3: ConcatStr
  loc_D645C4: FStStrNoPop var_1C0
  loc_D645C7: ILdRf var_8C
  loc_D645CA: CStrI4
  loc_D645CC: FStStrNoPop var_1D4
  loc_D645CF: ConcatStr
  loc_D645D0: FStStrNoPop var_390
  loc_D645D3: LitStr ","
  loc_D645D6: ConcatStr
  loc_D645D7: CVarStr var_154
  loc_D645DA: FLdRfVar var_144
  loc_D645DD: FLdRfVar var_1D0
  loc_D645E0: LitVarStr var_134, "PeriCtct"
  loc_D645E5: PopAdLdVar
  loc_D645E6: FLdRfVar var_1CC
  loc_D645E9: FLdRfVar var_158
  loc_D645EC: FLdPr Me
  loc_D645EF: MemLdRfVar from_stack_1.global_64
  loc_D645F2: NewIfNullPr clsctacte
  loc_D645F5: from_stack_1v = clsctacte.RsFrmGet()
  loc_D645FA: FLdPr var_158
  loc_D645FD:  = Me.Fields
  loc_D64602: FLdPr var_1CC
  loc_D64605: from_stack_2 = Me.Item(from_stack_1)
  loc_D6460A: FLdPr var_1D0
  loc_D6460D:  = Me.Value
  loc_D64612: FLdRfVar var_144
  loc_D64615: ConcatVar var_188
  loc_D64619: LitVarStr var_168, ","
  loc_D6461E: ConcatVar var_1A8
  loc_D64622: FLdRfVar var_20C
  loc_D64625: FLdRfVar var_1E0
  loc_D64628: LitVarStr var_178, "BimeCtct"
  loc_D6462D: PopAdLdVar
  loc_D6462E: FLdRfVar var_1DC
  loc_D64631: FLdRfVar var_1D8
  loc_D64634: FLdPr Me
  loc_D64637: MemLdRfVar from_stack_1.global_64
  loc_D6463A: NewIfNullPr clsctacte
  loc_D6463D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64642: FLdPr var_1D8
  loc_D64645:  = Me.Fields
  loc_D6464A: FLdPr var_1DC
  loc_D6464D: from_stack_2 = Me.Item(from_stack_1)
  loc_D64652: FLdPr var_1E0
  loc_D64655:  = Me.Value
  loc_D6465A: FLdRfVar var_20C
  loc_D6465D: ConcatVar var_21C
  loc_D64661: LitVarStr var_198, ","
  loc_D64666: ConcatVar var_22C
  loc_D6466A: FLdRfVar var_24C
  loc_D6466D: FLdRfVar var_1EC
  loc_D64670: LitVarStr var_23C, "NumeCtct"
  loc_D64675: PopAdLdVar
  loc_D64676: FLdRfVar var_1E8
  loc_D64679: FLdRfVar var_1E4
  loc_D6467C: FLdPr Me
  loc_D6467F: MemLdRfVar from_stack_1.global_64
  loc_D64682: NewIfNullPr clsctacte
  loc_D64685: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6468A: FLdPr var_1E4
  loc_D6468D:  = Me.Fields
  loc_D64692: FLdPr var_1E8
  loc_D64695: from_stack_2 = Me.Item(from_stack_1)
  loc_D6469A: FLdPr var_1EC
  loc_D6469D:  = Me.Value
  loc_D646A2: FLdRfVar var_24C
  loc_D646A5: ConcatVar var_32C
  loc_D646A9: LitVarStr var_25C, ","
  loc_D646AE: ConcatVar var_35C
  loc_D646B2: FLdRfVar var_38C
  loc_D646B5: FLdRfVar var_1F8
  loc_D646B8: LitVarStr var_26C, "MoviCtct"
  loc_D646BD: PopAdLdVar
  loc_D646BE: FLdRfVar var_1F4
  loc_D646C1: FLdRfVar var_1F0
  loc_D646C4: FLdPr Me
  loc_D646C7: MemLdRfVar from_stack_1.global_64
  loc_D646CA: NewIfNullPr clsctacte
  loc_D646CD: from_stack_1v = clsctacte.RsFrmGet()
  loc_D646D2: FLdPr var_1F0
  loc_D646D5:  = Me.Fields
  loc_D646DA: FLdPr var_1F4
  loc_D646DD: from_stack_2 = Me.Item(from_stack_1)
  loc_D646E2: FLdPr var_1F8
  loc_D646E5:  = Me.Value
  loc_D646EA: FLdRfVar var_38C
  loc_D646ED: ConcatVar var_47C
  loc_D646F1: LitVarStr var_27C, ",1,"
  loc_D646F6: ConcatVar var_48C
  loc_D646FA: FLdRfVar var_49C
  loc_D646FD: FLdRfVar var_4A4
  loc_D64700: LitVarStr var_28C, "CodiOfic"
  loc_D64705: PopAdLdVar
  loc_D64706: FLdRfVar var_4A0
  loc_D64709: FLdRfVar var_1FC
  loc_D6470C: FLdPr Me
  loc_D6470F: MemLdRfVar from_stack_1.global_64
  loc_D64712: NewIfNullPr clsctacte
  loc_D64715: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6471A: FLdPr var_1FC
  loc_D6471D:  = Me.Fields
  loc_D64722: FLdPr var_4A0
  loc_D64725: from_stack_2 = Me.Item(from_stack_1)
  loc_D6472A: FLdPr var_4A4
  loc_D6472D:  = Me.Value
  loc_D64732: FLdRfVar var_49C
  loc_D64735: ConcatVar var_4B4
  loc_D64739: LitVarStr var_29C, ",'"
  loc_D6473E: ConcatVar var_4C4
  loc_D64742: FLdRfVar var_4D4
  loc_D64745: FLdRfVar var_4E0
  loc_D64748: LitVarStr var_2AC, "CuenCtct"
  loc_D6474D: PopAdLdVar
  loc_D6474E: FLdRfVar var_4DC
  loc_D64751: FLdRfVar var_4D8
  loc_D64754: FLdPr Me
  loc_D64757: MemLdRfVar from_stack_1.global_64
  loc_D6475A: NewIfNullPr clsctacte
  loc_D6475D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64762: FLdPr var_4D8
  loc_D64765:  = Me.Fields
  loc_D6476A: FLdPr var_4DC
  loc_D6476D: from_stack_2 = Me.Item(from_stack_1)
  loc_D64772: FLdPr var_4E0
  loc_D64775:  = Me.Value
  loc_D6477A: FLdRfVar var_4D4
  loc_D6477D: ConcatVar var_4F0
  loc_D64781: LitVarStr var_2BC, "','Aforos Varios',"
  loc_D64786: ConcatVar var_500
  loc_D6478A: FLdRfVar var_510
  loc_D6478D: FLdRfVar var_51C
  loc_D64790: LitVarStr var_2CC, "CodiFapa"
  loc_D64795: PopAdLdVar
  loc_D64796: FLdRfVar var_518
  loc_D64799: FLdRfVar var_514
  loc_D6479C: FLdPr Me
  loc_D6479F: MemLdRfVar from_stack_1.global_64
  loc_D647A2: NewIfNullPr clsctacte
  loc_D647A5: from_stack_1v = clsctacte.RsFrmGet()
  loc_D647AA: FLdPr var_514
  loc_D647AD:  = Me.Fields
  loc_D647B2: FLdPr var_518
  loc_D647B5: from_stack_2 = Me.Item(from_stack_1)
  loc_D647BA: FLdPr var_51C
  loc_D647BD:  = Me.Value
  loc_D647C2: FLdRfVar var_510
  loc_D647C5: ConcatVar var_52C
  loc_D647C9: LitVarStr var_2DC, ","
  loc_D647CE: ConcatVar var_53C
  loc_D647D2: FLdRfVar var_558
  loc_D647D5: FLdRfVar var_548
  loc_D647D8: LitVarStr var_2EC, "CuotDefa"
  loc_D647DD: PopAdLdVar
  loc_D647DE: FLdRfVar var_544
  loc_D647E1: FLdRfVar var_540
  loc_D647E4: FLdPr Me
  loc_D647E7: MemLdRfVar from_stack_1.global_64
  loc_D647EA: NewIfNullPr clsctacte
  loc_D647ED: from_stack_1v = clsctacte.RsFrmGet()
  loc_D647F2: FLdPr var_540
  loc_D647F5:  = Me.Fields
  loc_D647FA: FLdPr var_544
  loc_D647FD: from_stack_2 = Me.Item(from_stack_1)
  loc_D64802: FLdPr var_548
  loc_D64805:  = Me.Value
  loc_D6480A: FLdRfVar var_558
  loc_D6480D: ConcatVar var_568
  loc_D64811: LitVarStr var_2FC, ","
  loc_D64816: ConcatVar var_578
  loc_D6481A: FLdRfVar var_594
  loc_D6481D: FLdRfVar var_584
  loc_D64820: LitVarStr var_30C, "NumeApre"
  loc_D64825: PopAdLdVar
  loc_D64826: FLdRfVar var_580
  loc_D64829: FLdRfVar var_57C
  loc_D6482C: FLdPr Me
  loc_D6482F: MemLdRfVar from_stack_1.global_64
  loc_D64832: NewIfNullPr clsctacte
  loc_D64835: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6483A: FLdPr var_57C
  loc_D6483D:  = Me.Fields
  loc_D64842: FLdPr var_580
  loc_D64845: from_stack_2 = Me.Item(from_stack_1)
  loc_D6484A: FLdPr var_584
  loc_D6484D:  = Me.Value
  loc_D64852: FLdRfVar var_594
  loc_D64855: ConcatVar var_5A4
  loc_D64859: LitVarStr var_31C, ","
  loc_D6485E: ConcatVar var_5B4
  loc_D64862: FLdRfVar var_5D0
  loc_D64865: FLdRfVar var_5C0
  loc_D64868: LitVarStr var_33C, "CodiTimo"
  loc_D6486D: PopAdLdVar
  loc_D6486E: FLdRfVar var_5BC
  loc_D64871: FLdRfVar var_5B8
  loc_D64874: FLdPr Me
  loc_D64877: MemLdRfVar from_stack_1.global_64
  loc_D6487A: NewIfNullPr clsctacte
  loc_D6487D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64882: FLdPr var_5B8
  loc_D64885:  = Me.Fields
  loc_D6488A: FLdPr var_5BC
  loc_D6488D: from_stack_2 = Me.Item(from_stack_1)
  loc_D64892: FLdPr var_5C0
  loc_D64895:  = Me.Value
  loc_D6489A: FLdRfVar var_5D0
  loc_D6489D: ConcatVar var_5E0
  loc_D648A1: LitVarStr var_34C, ","
  loc_D648A6: ConcatVar var_5F0
  loc_D648AA: FLdRfVar var_60C
  loc_D648AD: FLdRfVar var_5FC
  loc_D648B0: LitVarStr var_36C, "PeriInfo"
  loc_D648B5: PopAdLdVar
  loc_D648B6: FLdRfVar var_5F8
  loc_D648B9: FLdRfVar var_5F4
  loc_D648BC: FLdPr Me
  loc_D648BF: MemLdRfVar from_stack_1.global_64
  loc_D648C2: NewIfNullPr clsctacte
  loc_D648C5: from_stack_1v = clsctacte.RsFrmGet()
  loc_D648CA: FLdPr var_5F4
  loc_D648CD:  = Me.Fields
  loc_D648D2: FLdPr var_5F8
  loc_D648D5: from_stack_2 = Me.Item(from_stack_1)
  loc_D648DA: FLdPr var_5FC
  loc_D648DD:  = Me.Value
  loc_D648E2: FLdRfVar var_60C
  loc_D648E5: ConcatVar var_61C
  loc_D648E9: LitVarStr var_37C, ",'"
  loc_D648EE: ConcatVar var_62C
  loc_D648F2: FLdRfVar var_658
  loc_D648F5: FLdRfVar var_648
  loc_D648F8: LitVarStr var_644, "CodiConc"
  loc_D648FD: PopAdLdVar
  loc_D648FE: FLdRfVar var_634
  loc_D64901: FLdRfVar var_630
  loc_D64904: FLdPr Me
  loc_D64907: MemLdRfVar from_stack_1.global_64
  loc_D6490A: NewIfNullPr clsctacte
  loc_D6490D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64912: FLdPr var_630
  loc_D64915:  = Me.Fields
  loc_D6491A: FLdPr var_634
  loc_D6491D: from_stack_2 = Me.Item(from_stack_1)
  loc_D64922: FLdPr var_648
  loc_D64925:  = Me.Value
  loc_D6492A: FLdRfVar var_658
  loc_D6492D: ConcatVar var_668
  loc_D64931: LitVarStr var_678, "',"
  loc_D64936: ConcatVar var_688
  loc_D6493A: LitI4 0
  loc_D6493F: LitI4 -1
  loc_D64944: LitI4 1
  loc_D64949: LitStr "."
  loc_D6494C: LitStr ","
  loc_D6494F: FLdRfVar var_6B4
  loc_D64952: FnCDblVar
  loc_D64954: CStrR8
  loc_D64956: FStStrNoPop var_394
  loc_D64959: ImpAdCallI2 Replace(, , , , , )
  loc_D6495E: CVarStr var_6C4
  loc_D64961: ConcatVar var_6E4
  loc_D64965: LitVarStr var_6D4, ","
  loc_D6496A: ConcatVar var_710
  loc_D6496E: LitI4 0
  loc_D64973: LitI4 -1
  loc_D64978: LitI4 1
  loc_D6497D: LitStr "."
  loc_D64980: LitStr ","
  loc_D64983: FLdPr Me
  loc_D64986: MemLdFPR8 global_152
  loc_D64989: CStrR8
  loc_D6498B: FStStrNoPop var_398
  loc_D6498E: ImpAdCallI2 Replace(, , , , , )
  loc_D64993: CVarStr var_720
  loc_D64996: ConcatVar var_730
  loc_D6499A: LitVarStr var_6FC, ","
  loc_D6499F: ConcatVar var_750
  loc_D649A3: LitI4 0
  loc_D649A8: LitI4 -1
  loc_D649AD: LitI4 1
  loc_D649B2: LitStr "."
  loc_D649B5: LitStr ","
  loc_D649B8: FLdPr Me
  loc_D649BB: MemLdFPR8 global_144
  loc_D649BE: CStrR8
  loc_D649C0: FStStrNoPop var_39C
  loc_D649C3: ImpAdCallI2 Replace(, , , , , )
  loc_D649C8: CVarStr var_760
  loc_D649CB: ConcatVar var_770
  loc_D649CF: LitVarStr var_740, ","
  loc_D649D4: ConcatVar var_790
  loc_D649D8: LitI4 0
  loc_D649DD: LitI4 -1
  loc_D649E2: LitI4 1
  loc_D649E7: LitStr "."
  loc_D649EA: LitStr ","
  loc_D649ED: FLdPr Me
  loc_D649F0: MemLdFPR8 global_160
  loc_D649F3: CStrR8
  loc_D649F5: FStStrNoPop var_3A0
  loc_D649F8: ImpAdCallI2 Replace(, , , , , )
  loc_D649FD: CVarStr var_7A0
  loc_D64A00: ConcatVar var_7B0
  loc_D64A04: LitVarStr var_780, ","
  loc_D64A09: ConcatVar var_7D0
  loc_D64A0D: LitI4 0
  loc_D64A12: LitI4 -1
  loc_D64A17: LitI4 1
  loc_D64A1C: LitStr "."
  loc_D64A1F: LitStr ","
  loc_D64A22: FLdRfVar var_7E0
  loc_D64A25: FnCDblVar
  loc_D64A27: CStrR8
  loc_D64A29: FStStrNoPop var_3A4
  loc_D64A2C: ImpAdCallI2 Replace(, , , , , )
  loc_D64A31: CVarStr var_7F0
  loc_D64A34: ConcatVar var_810
  loc_D64A38: LitVarStr var_800, ",0,0,0,"
  loc_D64A3D: ConcatVar var_820
  loc_D64A41: LitI4 0
  loc_D64A46: LitI4 -1
  loc_D64A4B: LitI4 1
  loc_D64A50: LitStr "."
  loc_D64A53: LitStr ","
  loc_D64A56: FLdPr Me
  loc_D64A59: MemLdFPR8 global_176
  loc_D64A5C: CStrR8
  loc_D64A5E: FStStrNoPop var_3A8
  loc_D64A61: ImpAdCallI2 Replace(, , , , , )
  loc_D64A66: CVarStr var_830
  loc_D64A69: ConcatVar var_850
  loc_D64A6D: LitVarStr var_840, ");"
  loc_D64A72: ConcatVar var_860
  loc_D64A76: CStrVarTmp
  loc_D64A77: FStStrNoPop var_3AC
  loc_D64A7A: FLdPr Me
  loc_D64A7D: MemStStrCopy
  loc_D64A81: FFreeStr var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1D4 = "": var_390 = "": var_394 = "": var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3A8 = ""
  loc_D64AA0: FFreeAd var_5F4 = "": var_5F8 = "": var_5FC = "": var_630 = "": var_634 = "": var_648 = "": var_68C = "": var_690 = "": var_6A4 = "": var_6E8 = "": var_6EC = "": var_700 = "": var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_4A0 = "": var_4A4 = "": var_4D8 = "": var_4DC = "": var_4E0 = "": var_514 = "": var_518 = "": var_51C = "": var_540 = "": var_544 = "": var_548 = "": var_57C = "": var_580 = "": var_584 = "": var_5B8 = "": var_5BC = ""
  loc_D64AF7: FFreeVar var_5F0 = "": var_60C = "": var_61C = "": var_62C = "": var_658 = "": var_668 = "": var_6B4 = "": var_688 = "": var_6C4 = "": var_6E4 = "": var_710 = "": var_720 = "": var_730 = "": var_750 = "": var_760 = "": var_770 = "": var_790 = "": var_7A0 = "": var_7B0 = "": var_7E0 = "": var_7D0 = "": var_7F0 = "": var_810 = "": var_820 = "": var_830 = "": var_850 = "": var_860 = "": var_154 = "": var_144 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = "": var_38C = "": var_47C = "": var_48C = "": var_49C = "": var_4B4 = "": var_4C4 = "": var_4D4 = "": var_4F0 = "": var_500 = "": var_510 = "": var_52C = "": var_53C = "": var_558 = "": var_568 = "": var_578 = "": var_594 = "": var_5A4 = "": var_5B4 = "": var_5D0 = ""
  loc_D64B6C: FLdRfVar var_144
  loc_D64B6F: FLdRfVar var_1D0
  loc_D64B72: LitVarStr var_134, "CapiDefa"
  loc_D64B77: PopAdLdVar
  loc_D64B78: FLdRfVar var_1CC
  loc_D64B7B: FLdRfVar var_158
  loc_D64B7E: FLdPr Me
  loc_D64B81: MemLdRfVar from_stack_1.global_56
  loc_D64B84: NewIfNullPr clsctacte
  loc_D64B87: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64B8C: FLdPr var_158
  loc_D64B8F:  = Me.Fields
  loc_D64B94: FLdPr var_1CC
  loc_D64B97: from_stack_2 = Me.Item(from_stack_1)
  loc_D64B9C: FLdPr var_1D0
  loc_D64B9F:  = Me.Value
  loc_D64BA4: LitI4 2
  loc_D64BA9: FLdPr Me
  loc_D64BAC: MemLdFPR8 global_184
  loc_D64BAF: FLdRfVar var_144
  loc_D64BB2: FnCDblVar
  loc_D64BB4: AddR8
  loc_D64BB5: CVarR8
  loc_D64BB9: FLdRfVar var_188
  loc_D64BBC: ImpAdCallFPR4  = Round(, )
  loc_D64BC1: FLdRfVar var_188
  loc_D64BC4: CR4Var
  loc_D64BC5: FLdPr Me
  loc_D64BC8: MemStFPR8 global_184
  loc_D64BCB: FFreeAd var_158 = "": var_1CC = ""
  loc_D64BD4: FFreeVar var_144 = "": var_154 = ""
  loc_D64BDD: LitI4 2
  loc_D64BE2: FLdPr Me
  loc_D64BE5: MemLdFPR8 global_192
  loc_D64BE8: FLdPr Me
  loc_D64BEB: MemLdFPR8 global_152
  loc_D64BEE: AddR8
  loc_D64BEF: FLdPr Me
  loc_D64BF2: MemLdFPR8 global_160
  loc_D64BF5: AddR8
  loc_D64BF6: CVarR8
  loc_D64BFA: FLdRfVar var_154
  loc_D64BFD: ImpAdCallFPR4  = Round(, )
  loc_D64C02: FLdRfVar var_154
  loc_D64C05: CR4Var
  loc_D64C06: FLdPr Me
  loc_D64C09: MemStFPR8 global_192
  loc_D64C0C: FFreeVar var_144 = ""
  loc_D64C13: LitI4 2
  loc_D64C18: FLdPr Me
  loc_D64C1B: MemLdFPR8 global_208
  loc_D64C1E: FLdPr Me
  loc_D64C21: MemLdFPR8 global_144
  loc_D64C24: AddR8
  loc_D64C25: CVarR8
  loc_D64C29: FLdRfVar var_154
  loc_D64C2C: ImpAdCallFPR4  = Round(, )
  loc_D64C31: FLdRfVar var_154
  loc_D64C34: CR4Var
  loc_D64C35: FLdPr Me
  loc_D64C38: MemStFPR8 global_208
  loc_D64C3B: FFreeVar var_144 = ""
  loc_D64C42: LitVarStr var_168, "SELECT * FROM faciapre WHERE CodiFapa = "
  loc_D64C47: FLdRfVar var_144
  loc_D64C4A: FLdRfVar var_1D0
  loc_D64C4D: LitVarStr var_134, "CodiFapa"
  loc_D64C52: PopAdLdVar
  loc_D64C53: FLdRfVar var_1CC
  loc_D64C56: FLdRfVar var_158
  loc_D64C59: FLdPr Me
  loc_D64C5C: MemLdRfVar from_stack_1.global_64
  loc_D64C5F: NewIfNullPr clsctacte
  loc_D64C62: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64C67: FLdPr var_158
  loc_D64C6A:  = Me.Fields
  loc_D64C6F: FLdPr var_1CC
  loc_D64C72: from_stack_2 = Me.Item(from_stack_1)
  loc_D64C77: FLdPr var_1D0
  loc_D64C7A:  = Me.Value
  loc_D64C7F: FLdRfVar var_144
  loc_D64C82: ConcatVar var_154
  loc_D64C86: LitVarStr var_178, " AND CuotDefa = "
  loc_D64C8B: ConcatVar var_188
  loc_D64C8F: FLdRfVar var_1A8
  loc_D64C92: FLdRfVar var_1E0
  loc_D64C95: LitVarStr var_198, "CuotDefa"
  loc_D64C9A: PopAdLdVar
  loc_D64C9B: FLdRfVar var_1DC
  loc_D64C9E: FLdRfVar var_1D8
  loc_D64CA1: FLdPr Me
  loc_D64CA4: MemLdRfVar from_stack_1.global_64
  loc_D64CA7: NewIfNullPr clsctacte
  loc_D64CAA: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64CAF: FLdPr var_1D8
  loc_D64CB2:  = Me.Fields
  loc_D64CB7: FLdPr var_1DC
  loc_D64CBA: from_stack_2 = Me.Item(from_stack_1)
  loc_D64CBF: FLdPr var_1E0
  loc_D64CC2:  = Me.Value
  loc_D64CC7: FLdRfVar var_1A8
  loc_D64CCA: ConcatVar var_20C
  loc_D64CCE: CStrVarVal var_1B0
  loc_D64CD2: FLdPr Me
  loc_D64CD5: MemLdRfVar from_stack_1.global_80
  loc_D64CD8: NewIfNullPr clsctacte
  loc_D64CDB: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D64CE0: FFree1Str var_1B0
  loc_D64CE3: FFreeAd var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = ""
  loc_D64CF2: FFreeVar var_144 = "": var_154 = "": var_188 = "": var_1A8 = ""
  loc_D64CFF: FLdRfVar var_1C4
  loc_D64D02: FLdRfVar var_158
  loc_D64D05: FLdPr Me
  loc_D64D08: MemLdRfVar from_stack_1.global_80
  loc_D64D0B: NewIfNullPr clsctacte
  loc_D64D0E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64D13: FLdPr var_158
  loc_D64D16:  = Me.RecordCount
  loc_D64D1B: ILdRf var_1C4
  loc_D64D1E: LitI4 0
  loc_D64D23: GtI4
  loc_D64D24: FFree1Ad var_158
  loc_D64D27: BranchF loc_D65B51
  loc_D64D2A: FLdRfVar var_158
  loc_D64D2D: FLdPr Me
  loc_D64D30: MemLdRfVar from_stack_1.global_80
  loc_D64D33: NewIfNullPr clsctacte
  loc_D64D36: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64D3B: FLdPr var_158
  loc_D64D3E: Me.MoveFirst
  loc_D64D43: FFree1Ad var_158
  loc_D64D46: FLdRfVar var_1C6
  loc_D64D49: FLdRfVar var_158
  loc_D64D4C: FLdPr Me
  loc_D64D4F: MemLdRfVar from_stack_1.global_80
  loc_D64D52: NewIfNullPr clsctacte
  loc_D64D55: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64D5A: FLdPr var_158
  loc_D64D5D:  = Me.EOF
  loc_D64D62: FLdI2 var_1C6
  loc_D64D65: NotI4
  loc_D64D66: FFree1Ad var_158
  loc_D64D69: BranchF loc_D65B51
  loc_D64D6C: FLdRfVar var_144
  loc_D64D6F: FLdRfVar var_1D0
  loc_D64D72: LitVarStr var_134, "CoadFaap"
  loc_D64D77: PopAdLdVar
  loc_D64D78: FLdRfVar var_1CC
  loc_D64D7B: FLdRfVar var_158
  loc_D64D7E: FLdPr Me
  loc_D64D81: MemLdRfVar from_stack_1.global_80
  loc_D64D84: NewIfNullPr clsctacte
  loc_D64D87: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64D8C: FLdPr var_158
  loc_D64D8F:  = Me.Fields
  loc_D64D94: FLdPr var_1CC
  loc_D64D97: from_stack_2 = Me.Item(from_stack_1)
  loc_D64D9C: FLdPr var_1D0
  loc_D64D9F:  = Me.Value
  loc_D64DA4: FLdRfVar var_188
  loc_D64DA7: FLdRfVar var_1E0
  loc_D64DAA: LitVarStr var_178, "ReseFaap"
  loc_D64DAF: PopAdLdVar
  loc_D64DB0: FLdRfVar var_1DC
  loc_D64DB3: FLdRfVar var_1D8
  loc_D64DB6: FLdPr Me
  loc_D64DB9: MemLdRfVar from_stack_1.global_80
  loc_D64DBC: NewIfNullPr clsctacte
  loc_D64DBF: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64DC4: FLdPr var_1D8
  loc_D64DC7:  = Me.Fields
  loc_D64DCC: FLdPr var_1DC
  loc_D64DCF: from_stack_2 = Me.Item(from_stack_1)
  loc_D64DD4: FLdPr var_1E0
  loc_D64DD7:  = Me.Value
  loc_D64DDC: FLdRfVar var_20C
  loc_D64DDF: FLdRfVar var_1EC
  loc_D64DE2: LitVarStr var_198, "ApleFaap"
  loc_D64DE7: PopAdLdVar
  loc_D64DE8: FLdRfVar var_1E8
  loc_D64DEB: FLdRfVar var_1E4
  loc_D64DEE: FLdPr Me
  loc_D64DF1: MemLdRfVar from_stack_1.global_80
  loc_D64DF4: NewIfNullPr clsctacte
  loc_D64DF7: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64DFC: FLdPr var_1E4
  loc_D64DFF:  = Me.Fields
  loc_D64E04: FLdPr var_1E8
  loc_D64E07: from_stack_2 = Me.Item(from_stack_1)
  loc_D64E0C: FLdPr var_1EC
  loc_D64E0F:  = Me.Value
  loc_D64E14: FLdRfVar var_22C
  loc_D64E17: FLdRfVar var_1F8
  loc_D64E1A: LitVarStr var_23C, "DefiFaap"
  loc_D64E1F: PopAdLdVar
  loc_D64E20: FLdRfVar var_1F4
  loc_D64E23: FLdRfVar var_1F0
  loc_D64E26: FLdPr Me
  loc_D64E29: MemLdRfVar from_stack_1.global_80
  loc_D64E2C: NewIfNullPr clsctacte
  loc_D64E2F: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64E34: FLdPr var_1F0
  loc_D64E37:  = Me.Fields
  loc_D64E3C: FLdPr var_1F4
  loc_D64E3F: from_stack_2 = Me.Item(from_stack_1)
  loc_D64E44: FLdPr var_1F8
  loc_D64E47:  = Me.Value
  loc_D64E4C: FLdRfVar var_32C
  loc_D64E4F: FLdRfVar var_4A4
  loc_D64E52: LitVarStr var_25C, "HoreFaap"
  loc_D64E57: PopAdLdVar
  loc_D64E58: FLdRfVar var_4A0
  loc_D64E5B: FLdRfVar var_1FC
  loc_D64E5E: FLdPr Me
  loc_D64E61: MemLdRfVar from_stack_1.global_80
  loc_D64E64: NewIfNullPr clsctacte
  loc_D64E67: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64E6C: FLdPr var_1FC
  loc_D64E6F:  = Me.Fields
  loc_D64E74: FLdPr var_4A0
  loc_D64E77: from_stack_2 = Me.Item(from_stack_1)
  loc_D64E7C: FLdPr var_4A4
  loc_D64E7F:  = Me.Value
  loc_D64E84: FLdRfVar var_38C
  loc_D64E87: FLdRfVar var_4E0
  loc_D64E8A: LitVarStr var_26C, "HoofFaap"
  loc_D64E8F: PopAdLdVar
  loc_D64E90: FLdRfVar var_4DC
  loc_D64E93: FLdRfVar var_4D8
  loc_D64E96: FLdPr Me
  loc_D64E99: MemLdRfVar from_stack_1.global_80
  loc_D64E9C: NewIfNullPr clsctacte
  loc_D64E9F: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64EA4: FLdPr var_4D8
  loc_D64EA7:  = Me.Fields
  loc_D64EAC: FLdPr var_4DC
  loc_D64EAF: from_stack_2 = Me.Item(from_stack_1)
  loc_D64EB4: FLdPr var_4E0
  loc_D64EB7:  = Me.Value
  loc_D64EBC: FLdRfVar var_48C
  loc_D64EBF: FLdRfVar var_51C
  loc_D64EC2: LitVarStr var_27C, "MoreFaap"
  loc_D64EC7: PopAdLdVar
  loc_D64EC8: FLdRfVar var_518
  loc_D64ECB: FLdRfVar var_514
  loc_D64ECE: FLdPr Me
  loc_D64ED1: MemLdRfVar from_stack_1.global_80
  loc_D64ED4: NewIfNullPr clsctacte
  loc_D64ED7: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64EDC: FLdPr var_514
  loc_D64EDF:  = Me.Fields
  loc_D64EE4: FLdPr var_518
  loc_D64EE7: from_stack_2 = Me.Item(from_stack_1)
  loc_D64EEC: FLdPr var_51C
  loc_D64EEF:  = Me.Value
  loc_D64EF4: FLdRfVar var_4B4
  loc_D64EF7: FLdRfVar var_548
  loc_D64EFA: LitVarStr var_28C, "MoofFaap"
  loc_D64EFF: PopAdLdVar
  loc_D64F00: FLdRfVar var_544
  loc_D64F03: FLdRfVar var_540
  loc_D64F06: FLdPr Me
  loc_D64F09: MemLdRfVar from_stack_1.global_80
  loc_D64F0C: NewIfNullPr clsctacte
  loc_D64F0F: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64F14: FLdPr var_540
  loc_D64F17:  = Me.Fields
  loc_D64F1C: FLdPr var_544
  loc_D64F1F: from_stack_2 = Me.Item(from_stack_1)
  loc_D64F24: FLdPr var_548
  loc_D64F27:  = Me.Value
  loc_D64F2C: FLdRfVar var_4D4
  loc_D64F2F: FLdRfVar var_584
  loc_D64F32: LitVarStr var_29C, "IcomFaap"
  loc_D64F37: PopAdLdVar
  loc_D64F38: FLdRfVar var_580
  loc_D64F3B: FLdRfVar var_57C
  loc_D64F3E: FLdPr Me
  loc_D64F41: MemLdRfVar from_stack_1.global_80
  loc_D64F44: NewIfNullPr clsctacte
  loc_D64F47: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64F4C: FLdPr var_57C
  loc_D64F4F:  = Me.Fields
  loc_D64F54: FLdPr var_580
  loc_D64F57: from_stack_2 = Me.Item(from_stack_1)
  loc_D64F5C: FLdPr var_584
  loc_D64F5F:  = Me.Value
  loc_D64F64: FLdRfVar var_500
  loc_D64F67: FLdRfVar var_5C0
  loc_D64F6A: LitVarStr var_2AC, "IrecFaap"
  loc_D64F6F: PopAdLdVar
  loc_D64F70: FLdRfVar var_5BC
  loc_D64F73: FLdRfVar var_5B8
  loc_D64F76: FLdPr Me
  loc_D64F79: MemLdRfVar from_stack_1.global_80
  loc_D64F7C: NewIfNullPr clsctacte
  loc_D64F7F: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64F84: FLdPr var_5B8
  loc_D64F87:  = Me.Fields
  loc_D64F8C: FLdPr var_5BC
  loc_D64F8F: from_stack_2 = Me.Item(from_stack_1)
  loc_D64F94: FLdPr var_5C0
  loc_D64F97:  = Me.Value
  loc_D64F9C: FLdRfVar var_52C
  loc_D64F9F: FLdRfVar var_5FC
  loc_D64FA2: LitVarStr var_2BC, "IofiFaap"
  loc_D64FA7: PopAdLdVar
  loc_D64FA8: FLdRfVar var_5F8
  loc_D64FAB: FLdRfVar var_5F4
  loc_D64FAE: FLdPr Me
  loc_D64FB1: MemLdRfVar from_stack_1.global_80
  loc_D64FB4: NewIfNullPr clsctacte
  loc_D64FB7: from_stack_1v = clsctacte.RsFrmGet()
  loc_D64FBC: FLdPr var_5F4
  loc_D64FBF:  = Me.Fields
  loc_D64FC4: FLdPr var_5F8
  loc_D64FC7: from_stack_2 = Me.Item(from_stack_1)
  loc_D64FCC: FLdPr var_5FC
  loc_D64FCF:  = Me.Value
  loc_D64FD4: LitI4 2
  loc_D64FD9: FLdFPR8 var_114
  loc_D64FDC: CVarR8
  loc_D64FE0: FLdRfVar var_144
  loc_D64FE3: AddVar var_154
  loc_D64FE7: FLdRfVar var_188
  loc_D64FEA: AddVar var_1A8
  loc_D64FEE: FLdRfVar var_20C
  loc_D64FF1: AddVar var_21C
  loc_D64FF5: FLdRfVar var_22C
  loc_D64FF8: AddVar var_24C
  loc_D64FFC: FLdRfVar var_32C
  loc_D64FFF: AddVar var_35C
  loc_D65003: FLdRfVar var_38C
  loc_D65006: AddVar var_47C
  loc_D6500A: FLdRfVar var_48C
  loc_D6500D: AddVar var_49C
  loc_D65011: FLdRfVar var_4B4
  loc_D65014: AddVar var_4C4
  loc_D65018: FLdRfVar var_4D4
  loc_D6501B: AddVar var_4F0
  loc_D6501F: FLdRfVar var_500
  loc_D65022: AddVar var_510
  loc_D65026: FLdRfVar var_52C
  loc_D65029: AddVar var_53C
  loc_D6502D: FLdRfVar var_558
  loc_D65030: ImpAdCallFPR4  = Round(, )
  loc_D65035: FLdRfVar var_558
  loc_D65038: CR4Var
  loc_D65039: FStFPR8 var_114
  loc_D6503C: FFreeAd var_5F4 = "": var_5F8 = "": var_5FC = "": var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_4A0 = "": var_4A4 = "": var_4D8 = "": var_4DC = "": var_4E0 = "": var_514 = "": var_518 = "": var_51C = "": var_540 = "": var_544 = "": var_548 = "": var_57C = "": var_580 = "": var_584 = "": var_5B8 = "": var_5BC = ""
  loc_D65081: FFreeVar var_144 = "": var_154 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = "": var_38C = "": var_47C = "": var_48C = "": var_49C = "": var_4B4 = "": var_4C4 = "": var_4D4 = "": var_4F0 = "": var_500 = "": var_510 = "": var_52C = "": var_53C = ""
  loc_D650B2: FLdRfVar var_144
  loc_D650B5: FLdRfVar var_1D0
  loc_D650B8: LitVarStr var_134, "CoadFaap"
  loc_D650BD: PopAdLdVar
  loc_D650BE: FLdRfVar var_1CC
  loc_D650C1: FLdRfVar var_158
  loc_D650C4: FLdPr Me
  loc_D650C7: MemLdRfVar from_stack_1.global_80
  loc_D650CA: NewIfNullPr clsctacte
  loc_D650CD: from_stack_1v = clsctacte.RsFrmGet()
  loc_D650D2: FLdPr var_158
  loc_D650D5:  = Me.Fields
  loc_D650DA: FLdPr var_1CC
  loc_D650DD: from_stack_2 = Me.Item(from_stack_1)
  loc_D650E2: FLdPr var_1D0
  loc_D650E5:  = Me.Value
  loc_D650EA: FLdRfVar var_188
  loc_D650ED: FLdRfVar var_1E0
  loc_D650F0: LitVarStr var_178, "ReseFaap"
  loc_D650F5: PopAdLdVar
  loc_D650F6: FLdRfVar var_1DC
  loc_D650F9: FLdRfVar var_1D8
  loc_D650FC: FLdPr Me
  loc_D650FF: MemLdRfVar from_stack_1.global_80
  loc_D65102: NewIfNullPr clsctacte
  loc_D65105: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6510A: FLdPr var_1D8
  loc_D6510D:  = Me.Fields
  loc_D65112: FLdPr var_1DC
  loc_D65115: from_stack_2 = Me.Item(from_stack_1)
  loc_D6511A: FLdPr var_1E0
  loc_D6511D:  = Me.Value
  loc_D65122: FLdRfVar var_20C
  loc_D65125: FLdRfVar var_1EC
  loc_D65128: LitVarStr var_198, "ApleFaap"
  loc_D6512D: PopAdLdVar
  loc_D6512E: FLdRfVar var_1E8
  loc_D65131: FLdRfVar var_1E4
  loc_D65134: FLdPr Me
  loc_D65137: MemLdRfVar from_stack_1.global_80
  loc_D6513A: NewIfNullPr clsctacte
  loc_D6513D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65142: FLdPr var_1E4
  loc_D65145:  = Me.Fields
  loc_D6514A: FLdPr var_1E8
  loc_D6514D: from_stack_2 = Me.Item(from_stack_1)
  loc_D65152: FLdPr var_1EC
  loc_D65155:  = Me.Value
  loc_D6515A: FLdRfVar var_22C
  loc_D6515D: FLdRfVar var_1F8
  loc_D65160: LitVarStr var_23C, "DefiFaap"
  loc_D65165: PopAdLdVar
  loc_D65166: FLdRfVar var_1F4
  loc_D65169: FLdRfVar var_1F0
  loc_D6516C: FLdPr Me
  loc_D6516F: MemLdRfVar from_stack_1.global_80
  loc_D65172: NewIfNullPr clsctacte
  loc_D65175: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6517A: FLdPr var_1F0
  loc_D6517D:  = Me.Fields
  loc_D65182: FLdPr var_1F4
  loc_D65185: from_stack_2 = Me.Item(from_stack_1)
  loc_D6518A: FLdPr var_1F8
  loc_D6518D:  = Me.Value
  loc_D65192: FLdRfVar var_32C
  loc_D65195: FLdRfVar var_4A4
  loc_D65198: LitVarStr var_25C, "HoreFaap"
  loc_D6519D: PopAdLdVar
  loc_D6519E: FLdRfVar var_4A0
  loc_D651A1: FLdRfVar var_1FC
  loc_D651A4: FLdPr Me
  loc_D651A7: MemLdRfVar from_stack_1.global_80
  loc_D651AA: NewIfNullPr clsctacte
  loc_D651AD: from_stack_1v = clsctacte.RsFrmGet()
  loc_D651B2: FLdPr var_1FC
  loc_D651B5:  = Me.Fields
  loc_D651BA: FLdPr var_4A0
  loc_D651BD: from_stack_2 = Me.Item(from_stack_1)
  loc_D651C2: FLdPr var_4A4
  loc_D651C5:  = Me.Value
  loc_D651CA: FLdRfVar var_38C
  loc_D651CD: FLdRfVar var_4E0
  loc_D651D0: LitVarStr var_26C, "HoofFaap"
  loc_D651D5: PopAdLdVar
  loc_D651D6: FLdRfVar var_4DC
  loc_D651D9: FLdRfVar var_4D8
  loc_D651DC: FLdPr Me
  loc_D651DF: MemLdRfVar from_stack_1.global_80
  loc_D651E2: NewIfNullPr clsctacte
  loc_D651E5: from_stack_1v = clsctacte.RsFrmGet()
  loc_D651EA: FLdPr var_4D8
  loc_D651ED:  = Me.Fields
  loc_D651F2: FLdPr var_4DC
  loc_D651F5: from_stack_2 = Me.Item(from_stack_1)
  loc_D651FA: FLdPr var_4E0
  loc_D651FD:  = Me.Value
  loc_D65202: FLdRfVar var_48C
  loc_D65205: FLdRfVar var_51C
  loc_D65208: LitVarStr var_27C, "MoreFaap"
  loc_D6520D: PopAdLdVar
  loc_D6520E: FLdRfVar var_518
  loc_D65211: FLdRfVar var_514
  loc_D65214: FLdPr Me
  loc_D65217: MemLdRfVar from_stack_1.global_80
  loc_D6521A: NewIfNullPr clsctacte
  loc_D6521D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65222: FLdPr var_514
  loc_D65225:  = Me.Fields
  loc_D6522A: FLdPr var_518
  loc_D6522D: from_stack_2 = Me.Item(from_stack_1)
  loc_D65232: FLdPr var_51C
  loc_D65235:  = Me.Value
  loc_D6523A: FLdRfVar var_4B4
  loc_D6523D: FLdRfVar var_548
  loc_D65240: LitVarStr var_28C, "MoofFaap"
  loc_D65245: PopAdLdVar
  loc_D65246: FLdRfVar var_544
  loc_D65249: FLdRfVar var_540
  loc_D6524C: FLdPr Me
  loc_D6524F: MemLdRfVar from_stack_1.global_80
  loc_D65252: NewIfNullPr clsctacte
  loc_D65255: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6525A: FLdPr var_540
  loc_D6525D:  = Me.Fields
  loc_D65262: FLdPr var_544
  loc_D65265: from_stack_2 = Me.Item(from_stack_1)
  loc_D6526A: FLdPr var_548
  loc_D6526D:  = Me.Value
  loc_D65272: FLdRfVar var_4D4
  loc_D65275: FLdRfVar var_584
  loc_D65278: LitVarStr var_29C, "IcomFaap"
  loc_D6527D: PopAdLdVar
  loc_D6527E: FLdRfVar var_580
  loc_D65281: FLdRfVar var_57C
  loc_D65284: FLdPr Me
  loc_D65287: MemLdRfVar from_stack_1.global_80
  loc_D6528A: NewIfNullPr clsctacte
  loc_D6528D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65292: FLdPr var_57C
  loc_D65295:  = Me.Fields
  loc_D6529A: FLdPr var_580
  loc_D6529D: from_stack_2 = Me.Item(from_stack_1)
  loc_D652A2: FLdPr var_584
  loc_D652A5:  = Me.Value
  loc_D652AA: FLdRfVar var_500
  loc_D652AD: FLdRfVar var_5C0
  loc_D652B0: LitVarStr var_2AC, "IrecFaap"
  loc_D652B5: PopAdLdVar
  loc_D652B6: FLdRfVar var_5BC
  loc_D652B9: FLdRfVar var_5B8
  loc_D652BC: FLdPr Me
  loc_D652BF: MemLdRfVar from_stack_1.global_80
  loc_D652C2: NewIfNullPr clsctacte
  loc_D652C5: from_stack_1v = clsctacte.RsFrmGet()
  loc_D652CA: FLdPr var_5B8
  loc_D652CD:  = Me.Fields
  loc_D652D2: FLdPr var_5BC
  loc_D652D5: from_stack_2 = Me.Item(from_stack_1)
  loc_D652DA: FLdPr var_5C0
  loc_D652DD:  = Me.Value
  loc_D652E2: FLdRfVar var_52C
  loc_D652E5: FLdRfVar var_5FC
  loc_D652E8: LitVarStr var_2BC, "IofiFaap"
  loc_D652ED: PopAdLdVar
  loc_D652EE: FLdRfVar var_5F8
  loc_D652F1: FLdRfVar var_5F4
  loc_D652F4: FLdPr Me
  loc_D652F7: MemLdRfVar from_stack_1.global_80
  loc_D652FA: NewIfNullPr clsctacte
  loc_D652FD: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65302: FLdPr var_5F4
  loc_D65305:  = Me.Fields
  loc_D6530A: FLdPr var_5F8
  loc_D6530D: from_stack_2 = Me.Item(from_stack_1)
  loc_D65312: FLdPr var_5FC
  loc_D65315:  = Me.Value
  loc_D6531A: LitI4 2
  loc_D6531F: FLdPr Me
  loc_D65322: MemLdFPR8 global_216
  loc_D65325: CVarR8
  loc_D65329: FLdRfVar var_144
  loc_D6532C: AddVar var_154
  loc_D65330: FLdRfVar var_188
  loc_D65333: AddVar var_1A8
  loc_D65337: FLdRfVar var_20C
  loc_D6533A: AddVar var_21C
  loc_D6533E: FLdRfVar var_22C
  loc_D65341: AddVar var_24C
  loc_D65345: FLdRfVar var_32C
  loc_D65348: AddVar var_35C
  loc_D6534C: FLdRfVar var_38C
  loc_D6534F: AddVar var_47C
  loc_D65353: FLdRfVar var_48C
  loc_D65356: AddVar var_49C
  loc_D6535A: FLdRfVar var_4B4
  loc_D6535D: AddVar var_4C4
  loc_D65361: FLdRfVar var_4D4
  loc_D65364: AddVar var_4F0
  loc_D65368: FLdRfVar var_500
  loc_D6536B: AddVar var_510
  loc_D6536F: FLdRfVar var_52C
  loc_D65372: AddVar var_53C
  loc_D65376: FLdRfVar var_558
  loc_D65379: ImpAdCallFPR4  = Round(, )
  loc_D6537E: FLdRfVar var_558
  loc_D65381: CR4Var
  loc_D65382: FLdPr Me
  loc_D65385: MemStFPR8 global_216
  loc_D65388: FFreeAd var_5F4 = "": var_5F8 = "": var_5FC = "": var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_4A0 = "": var_4A4 = "": var_4D8 = "": var_4DC = "": var_4E0 = "": var_514 = "": var_518 = "": var_51C = "": var_540 = "": var_544 = "": var_548 = "": var_57C = "": var_580 = "": var_584 = "": var_5B8 = "": var_5BC = ""
  loc_D653CD: FFreeVar var_144 = "": var_154 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = "": var_38C = "": var_47C = "": var_48C = "": var_49C = "": var_4B4 = "": var_4C4 = "": var_4D4 = "": var_4F0 = "": var_500 = "": var_510 = "": var_52C = "": var_53C = ""
  loc_D653FE: FLdRfVar var_4F0
  loc_D65401: FLdRfVar var_4A4
  loc_D65404: LitVarStr var_2BC, "CoadFaap"
  loc_D65409: PopAdLdVar
  loc_D6540A: FLdRfVar var_4A0
  loc_D6540D: FLdRfVar var_1FC
  loc_D65410: FLdPr Me
  loc_D65413: MemLdRfVar from_stack_1.global_80
  loc_D65416: NewIfNullPr clsctacte
  loc_D65419: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6541E: FLdPr var_1FC
  loc_D65421:  = Me.Fields
  loc_D65426: FLdPr var_4A0
  loc_D65429: from_stack_2 = Me.Item(from_stack_1)
  loc_D6542E: FLdPr var_4A4
  loc_D65431:  = Me.Value
  loc_D65436: FLdRfVar var_53C
  loc_D65439: FLdRfVar var_4E0
  loc_D6543C: LitVarStr var_2DC, "ReseFaap"
  loc_D65441: PopAdLdVar
  loc_D65442: FLdRfVar var_4DC
  loc_D65445: FLdRfVar var_4D8
  loc_D65448: FLdPr Me
  loc_D6544B: MemLdRfVar from_stack_1.global_80
  loc_D6544E: NewIfNullPr clsctacte
  loc_D65451: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65456: FLdPr var_4D8
  loc_D65459:  = Me.Fields
  loc_D6545E: FLdPr var_4DC
  loc_D65461: from_stack_2 = Me.Item(from_stack_1)
  loc_D65466: FLdPr var_4E0
  loc_D65469:  = Me.Value
  loc_D6546E: FLdRfVar var_594
  loc_D65471: FLdRfVar var_51C
  loc_D65474: LitVarStr var_2FC, "ApleFaap"
  loc_D65479: PopAdLdVar
  loc_D6547A: FLdRfVar var_518
  loc_D6547D: FLdRfVar var_514
  loc_D65480: FLdPr Me
  loc_D65483: MemLdRfVar from_stack_1.global_80
  loc_D65486: NewIfNullPr clsctacte
  loc_D65489: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6548E: FLdPr var_514
  loc_D65491:  = Me.Fields
  loc_D65496: FLdPr var_518
  loc_D65499: from_stack_2 = Me.Item(from_stack_1)
  loc_D6549E: FLdPr var_51C
  loc_D654A1:  = Me.Value
  loc_D654A6: FLdRfVar var_5E0
  loc_D654A9: FLdRfVar var_548
  loc_D654AC: LitVarStr var_31C, "DefiFaap"
  loc_D654B1: PopAdLdVar
  loc_D654B2: FLdRfVar var_544
  loc_D654B5: FLdRfVar var_540
  loc_D654B8: FLdPr Me
  loc_D654BB: MemLdRfVar from_stack_1.global_80
  loc_D654BE: NewIfNullPr clsctacte
  loc_D654C1: from_stack_1v = clsctacte.RsFrmGet()
  loc_D654C6: FLdPr var_540
  loc_D654C9:  = Me.Fields
  loc_D654CE: FLdPr var_544
  loc_D654D1: from_stack_2 = Me.Item(from_stack_1)
  loc_D654D6: FLdPr var_548
  loc_D654D9:  = Me.Value
  loc_D654DE: FLdRfVar var_62C
  loc_D654E1: FLdRfVar var_584
  loc_D654E4: LitVarStr var_34C, "HoreFaap"
  loc_D654E9: PopAdLdVar
  loc_D654EA: FLdRfVar var_580
  loc_D654ED: FLdRfVar var_57C
  loc_D654F0: FLdPr Me
  loc_D654F3: MemLdRfVar from_stack_1.global_80
  loc_D654F6: NewIfNullPr clsctacte
  loc_D654F9: from_stack_1v = clsctacte.RsFrmGet()
  loc_D654FE: FLdPr var_57C
  loc_D65501:  = Me.Fields
  loc_D65506: FLdPr var_580
  loc_D65509: from_stack_2 = Me.Item(from_stack_1)
  loc_D6550E: FLdPr var_584
  loc_D65511:  = Me.Value
  loc_D65516: FLdRfVar var_6B4
  loc_D65519: FLdRfVar var_5C0
  loc_D6551C: LitVarStr var_37C, "HoofFaap"
  loc_D65521: PopAdLdVar
  loc_D65522: FLdRfVar var_5BC
  loc_D65525: FLdRfVar var_5B8
  loc_D65528: FLdPr Me
  loc_D6552B: MemLdRfVar from_stack_1.global_80
  loc_D6552E: NewIfNullPr clsctacte
  loc_D65531: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65536: FLdPr var_5B8
  loc_D65539:  = Me.Fields
  loc_D6553E: FLdPr var_5BC
  loc_D65541: from_stack_2 = Me.Item(from_stack_1)
  loc_D65546: FLdPr var_5C0
  loc_D65549:  = Me.Value
  loc_D6554E: FLdRfVar var_720
  loc_D65551: FLdRfVar var_5FC
  loc_D65554: LitVarStr var_678, "MoreFaap"
  loc_D65559: PopAdLdVar
  loc_D6555A: FLdRfVar var_5F8
  loc_D6555D: FLdRfVar var_5F4
  loc_D65560: FLdPr Me
  loc_D65563: MemLdRfVar from_stack_1.global_80
  loc_D65566: NewIfNullPr clsctacte
  loc_D65569: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6556E: FLdPr var_5F4
  loc_D65571:  = Me.Fields
  loc_D65576: FLdPr var_5F8
  loc_D65579: from_stack_2 = Me.Item(from_stack_1)
  loc_D6557E: FLdPr var_5FC
  loc_D65581:  = Me.Value
  loc_D65586: FLdRfVar var_770
  loc_D65589: FLdRfVar var_648
  loc_D6558C: LitVarStr var_6D4, "MoofFaap"
  loc_D65591: PopAdLdVar
  loc_D65592: FLdRfVar var_634
  loc_D65595: FLdRfVar var_630
  loc_D65598: FLdPr Me
  loc_D6559B: MemLdRfVar from_stack_1.global_80
  loc_D6559E: NewIfNullPr clsctacte
  loc_D655A1: from_stack_1v = clsctacte.RsFrmGet()
  loc_D655A6: FLdPr var_630
  loc_D655A9:  = Me.Fields
  loc_D655AE: FLdPr var_634
  loc_D655B1: from_stack_2 = Me.Item(from_stack_1)
  loc_D655B6: FLdPr var_648
  loc_D655B9:  = Me.Value
  loc_D655BE: FLdRfVar var_7D0
  loc_D655C1: FLdRfVar var_6A4
  loc_D655C4: LitVarStr var_740, "IcomFaap"
  loc_D655C9: PopAdLdVar
  loc_D655CA: FLdRfVar var_690
  loc_D655CD: FLdRfVar var_68C
  loc_D655D0: FLdPr Me
  loc_D655D3: MemLdRfVar from_stack_1.global_80
  loc_D655D6: NewIfNullPr clsctacte
  loc_D655D9: from_stack_1v = clsctacte.RsFrmGet()
  loc_D655DE: FLdPr var_68C
  loc_D655E1:  = Me.Fields
  loc_D655E6: FLdPr var_690
  loc_D655E9: from_stack_2 = Me.Item(from_stack_1)
  loc_D655EE: FLdPr var_6A4
  loc_D655F1:  = Me.Value
  loc_D655F6: FLdRfVar var_820
  loc_D655F9: FLdRfVar var_700
  loc_D655FC: LitVarStr var_7C0, "IrecFaap"
  loc_D65601: PopAdLdVar
  loc_D65602: FLdRfVar var_6EC
  loc_D65605: FLdRfVar var_6E8
  loc_D65608: FLdPr Me
  loc_D6560B: MemLdRfVar from_stack_1.global_80
  loc_D6560E: NewIfNullPr clsctacte
  loc_D65611: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65616: FLdPr var_6E8
  loc_D65619:  = Me.Fields
  loc_D6561E: FLdPr var_6EC
  loc_D65621: from_stack_2 = Me.Item(from_stack_1)
  loc_D65626: FLdPr var_700
  loc_D65629:  = Me.Value
  loc_D6562E: FLdRfVar var_87C
  loc_D65631: FLdRfVar var_86C
  loc_D65634: LitVarStr var_840, "IofiFaap"
  loc_D65639: PopAdLdVar
  loc_D6563A: FLdRfVar var_868
  loc_D6563D: FLdRfVar var_864
  loc_D65640: FLdPr Me
  loc_D65643: MemLdRfVar from_stack_1.global_80
  loc_D65646: NewIfNullPr clsctacte
  loc_D65649: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6564E: FLdPr var_864
  loc_D65651:  = Me.Fields
  loc_D65656: FLdPr var_868
  loc_D65659: from_stack_2 = Me.Item(from_stack_1)
  loc_D6565E: FLdPr var_86C
  loc_D65661:  = Me.Value
  loc_D65666: FLdPr Me
  loc_D65669: MemLdStr global_260
  loc_D6566C: LitStr " INSERT INTO boleapre (PeriBole, NumeBole, NumeApre, CodiInju, CodiFapa, CuotDefa, FealBoap, FeacBoap, EstaBoap, CoadBoap, ReseBoap, ApleBoap, DefiBoap, HoreBoap, HoofBoap, MoreBoap, MoofBoap, IcomBoap, IrecBoap, IofiBoap, CodiUsua) "
  loc_D6566F: ConcatStr
  loc_D65670: FStStrNoPop var_1B0
  loc_D65673: LitStr " VALUES ("
  loc_D65676: ConcatStr
  loc_D65677: FStStrNoPop var_1B4
  loc_D6567A: FLdI2 var_86
  loc_D6567D: CStrUI1
  loc_D6567F: FStStrNoPop var_1B8
  loc_D65682: ConcatStr
  loc_D65683: FStStrNoPop var_1BC
  loc_D65686: LitStr ","
  loc_D65689: ConcatStr
  loc_D6568A: FStStrNoPop var_1C0
  loc_D6568D: ILdRf var_8C
  loc_D65690: CStrI4
  loc_D65692: FStStrNoPop var_1D4
  loc_D65695: ConcatStr
  loc_D65696: FStStrNoPop var_390
  loc_D65699: LitStr ","
  loc_D6569C: ConcatStr
  loc_D6569D: CVarStr var_154
  loc_D656A0: FLdRfVar var_144
  loc_D656A3: FLdRfVar var_1D0
  loc_D656A6: LitVarStr var_134, "NumeApre"
  loc_D656AB: PopAdLdVar
  loc_D656AC: FLdRfVar var_1CC
  loc_D656AF: FLdRfVar var_158
  loc_D656B2: FLdPr Me
  loc_D656B5: MemLdRfVar from_stack_1.global_80
  loc_D656B8: NewIfNullPr clsctacte
  loc_D656BB: from_stack_1v = clsctacte.RsFrmGet()
  loc_D656C0: FLdPr var_158
  loc_D656C3:  = Me.Fields
  loc_D656C8: FLdPr var_1CC
  loc_D656CB: from_stack_2 = Me.Item(from_stack_1)
  loc_D656D0: FLdPr var_1D0
  loc_D656D3:  = Me.Value
  loc_D656D8: FLdRfVar var_144
  loc_D656DB: ConcatVar var_188
  loc_D656DF: LitVarStr var_168, ","
  loc_D656E4: ConcatVar var_1A8
  loc_D656E8: FLdRfVar var_20C
  loc_D656EB: FLdRfVar var_1E0
  loc_D656EE: LitVarStr var_178, "CodiInju"
  loc_D656F3: PopAdLdVar
  loc_D656F4: FLdRfVar var_1DC
  loc_D656F7: FLdRfVar var_1D8
  loc_D656FA: FLdPr Me
  loc_D656FD: MemLdRfVar from_stack_1.global_80
  loc_D65700: NewIfNullPr clsctacte
  loc_D65703: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65708: FLdPr var_1D8
  loc_D6570B:  = Me.Fields
  loc_D65710: FLdPr var_1DC
  loc_D65713: from_stack_2 = Me.Item(from_stack_1)
  loc_D65718: FLdPr var_1E0
  loc_D6571B:  = Me.Value
  loc_D65720: FLdRfVar var_20C
  loc_D65723: ConcatVar var_21C
  loc_D65727: LitVarStr var_198, ","
  loc_D6572C: ConcatVar var_22C
  loc_D65730: FLdRfVar var_24C
  loc_D65733: FLdRfVar var_1EC
  loc_D65736: LitVarStr var_23C, "CodiFapa"
  loc_D6573B: PopAdLdVar
  loc_D6573C: FLdRfVar var_1E8
  loc_D6573F: FLdRfVar var_1E4
  loc_D65742: FLdPr Me
  loc_D65745: MemLdRfVar from_stack_1.global_80
  loc_D65748: NewIfNullPr clsctacte
  loc_D6574B: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65750: FLdPr var_1E4
  loc_D65753:  = Me.Fields
  loc_D65758: FLdPr var_1E8
  loc_D6575B: from_stack_2 = Me.Item(from_stack_1)
  loc_D65760: FLdPr var_1EC
  loc_D65763:  = Me.Value
  loc_D65768: FLdRfVar var_24C
  loc_D6576B: ConcatVar var_32C
  loc_D6576F: LitVarStr var_25C, ","
  loc_D65774: ConcatVar var_35C
  loc_D65778: FLdRfVar var_38C
  loc_D6577B: FLdRfVar var_1F8
  loc_D6577E: LitVarStr var_26C, "CuotDefa"
  loc_D65783: PopAdLdVar
  loc_D65784: FLdRfVar var_1F4
  loc_D65787: FLdRfVar var_1F0
  loc_D6578A: FLdPr Me
  loc_D6578D: MemLdRfVar from_stack_1.global_80
  loc_D65790: NewIfNullPr clsctacte
  loc_D65793: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65798: FLdPr var_1F0
  loc_D6579B:  = Me.Fields
  loc_D657A0: FLdPr var_1F4
  loc_D657A3: from_stack_2 = Me.Item(from_stack_1)
  loc_D657A8: FLdPr var_1F8
  loc_D657AB:  = Me.Value
  loc_D657B0: FLdRfVar var_38C
  loc_D657B3: ConcatVar var_47C
  loc_D657B7: LitVarStr var_27C, ",'"
  loc_D657BC: ConcatVar var_48C
  loc_D657C0: LitI4 1
  loc_D657C5: LitI4 1
  loc_D657CA: LitVarStr var_29C, "yyyy-mm-dd"
  loc_D657CF: FStVarCopyObj var_49C
  loc_D657D2: FLdRfVar var_49C
  loc_D657D5: FLdRfVar var_C8
  loc_D657D8: CVarRef
  loc_D657DD: ImpAdCallI2 Format$(, )
  loc_D657E2: CVarStr var_4B4
  loc_D657E5: ConcatVar var_4C4
  loc_D657E9: LitVarStr var_2AC, "',Null,'Emitido',"
  loc_D657EE: ConcatVar var_4D4
  loc_D657F2: LitI4 0
  loc_D657F7: LitI4 -1
  loc_D657FC: LitI4 1
  loc_D65801: LitStr "."
  loc_D65804: LitStr ","
  loc_D65807: FLdRfVar var_4F0
  loc_D6580A: CStrVarTmp
  loc_D6580B: FStStrNoPop var_394
  loc_D6580E: ImpAdCallI2 Replace(, , , , , )
  loc_D65813: CVarStr var_500
  loc_D65816: ConcatVar var_510
  loc_D6581A: LitVarStr var_2CC, ","
  loc_D6581F: ConcatVar var_52C
  loc_D65823: LitI4 0
  loc_D65828: LitI4 -1
  loc_D6582D: LitI4 1
  loc_D65832: LitStr "."
  loc_D65835: LitStr ","
  loc_D65838: FLdRfVar var_53C
  loc_D6583B: CStrVarTmp
  loc_D6583C: FStStrNoPop var_398
  loc_D6583F: ImpAdCallI2 Replace(, , , , , )
  loc_D65844: CVarStr var_558
  loc_D65847: ConcatVar var_568
  loc_D6584B: LitVarStr var_2EC, ","
  loc_D65850: ConcatVar var_578
  loc_D65854: LitI4 0
  loc_D65859: LitI4 -1
  loc_D6585E: LitI4 1
  loc_D65863: LitStr "."
  loc_D65866: LitStr ","
  loc_D65869: FLdRfVar var_594
  loc_D6586C: CStrVarTmp
  loc_D6586D: FStStrNoPop var_39C
  loc_D65870: ImpAdCallI2 Replace(, , , , , )
  loc_D65875: CVarStr var_5A4
  loc_D65878: ConcatVar var_5B4
  loc_D6587C: LitVarStr var_30C, ","
  loc_D65881: ConcatVar var_5D0
  loc_D65885: LitI4 0
  loc_D6588A: LitI4 -1
  loc_D6588F: LitI4 1
  loc_D65894: LitStr "."
  loc_D65897: LitStr ","
  loc_D6589A: FLdRfVar var_5E0
  loc_D6589D: CStrVarTmp
  loc_D6589E: FStStrNoPop var_3A0
  loc_D658A1: ImpAdCallI2 Replace(, , , , , )
  loc_D658A6: CVarStr var_5F0
  loc_D658A9: ConcatVar var_60C
  loc_D658AD: LitVarStr var_33C, ","
  loc_D658B2: ConcatVar var_61C
  loc_D658B6: LitI4 0
  loc_D658BB: LitI4 -1
  loc_D658C0: LitI4 1
  loc_D658C5: LitStr "."
  loc_D658C8: LitStr ","
  loc_D658CB: FLdRfVar var_62C
  loc_D658CE: CStrVarTmp
  loc_D658CF: FStStrNoPop var_3A4
  loc_D658D2: ImpAdCallI2 Replace(, , , , , )
  loc_D658D7: CVarStr var_658
  loc_D658DA: ConcatVar var_668
  loc_D658DE: LitVarStr var_36C, ","
  loc_D658E3: ConcatVar var_688
  loc_D658E7: LitI4 0
  loc_D658EC: LitI4 -1
  loc_D658F1: LitI4 1
  loc_D658F6: LitStr "."
  loc_D658F9: LitStr ","
  loc_D658FC: FLdRfVar var_6B4
  loc_D658FF: CStrVarTmp
  loc_D65900: FStStrNoPop var_3A8
  loc_D65903: ImpAdCallI2 Replace(, , , , , )
  loc_D65908: CVarStr var_6C4
  loc_D6590B: ConcatVar var_6E4
  loc_D6590F: LitVarStr var_644, ","
  loc_D65914: ConcatVar var_710
  loc_D65918: LitI4 0
  loc_D6591D: LitI4 -1
  loc_D65922: LitI4 1
  loc_D65927: LitStr "."
  loc_D6592A: LitStr ","
  loc_D6592D: FLdRfVar var_720
  loc_D65930: CStrVarTmp
  loc_D65931: FStStrNoPop var_3AC
  loc_D65934: ImpAdCallI2 Replace(, , , , , )
  loc_D65939: CVarStr var_730
  loc_D6593C: ConcatVar var_750
  loc_D65940: LitVarStr var_6A0, ","
  loc_D65945: ConcatVar var_760
  loc_D65949: LitI4 0
  loc_D6594E: LitI4 -1
  loc_D65953: LitI4 1
  loc_D65958: LitStr "."
  loc_D6595B: LitStr ","
  loc_D6595E: FLdRfVar var_770
  loc_D65961: CStrVarTmp
  loc_D65962: FStStrNoPop var_3B0
  loc_D65965: ImpAdCallI2 Replace(, , , , , )
  loc_D6596A: CVarStr var_790
  loc_D6596D: ConcatVar var_7A0
  loc_D65971: LitVarStr var_6FC, ","
  loc_D65976: ConcatVar var_7B0
  loc_D6597A: LitI4 0
  loc_D6597F: LitI4 -1
  loc_D65984: LitI4 1
  loc_D65989: LitStr "."
  loc_D6598C: LitStr ","
  loc_D6598F: FLdRfVar var_7D0
  loc_D65992: CStrVarTmp
  loc_D65993: FStStrNoPop var_3B4
  loc_D65996: ImpAdCallI2 Replace(, , , , , )
  loc_D6599B: CVarStr var_7E0
  loc_D6599E: ConcatVar var_7F0
  loc_D659A2: LitVarStr var_780, ","
  loc_D659A7: ConcatVar var_810
  loc_D659AB: LitI4 0
  loc_D659B0: LitI4 -1
  loc_D659B5: LitI4 1
  loc_D659BA: LitStr "."
  loc_D659BD: LitStr ","
  loc_D659C0: FLdRfVar var_820
  loc_D659C3: CStrVarTmp
  loc_D659C4: FStStrNoPop var_3B8
  loc_D659C7: ImpAdCallI2 Replace(, , , , , )
  loc_D659CC: CVarStr var_830
  loc_D659CF: ConcatVar var_850
  loc_D659D3: LitVarStr var_800, ","
  loc_D659D8: ConcatVar var_860
  loc_D659DC: LitI4 0
  loc_D659E1: LitI4 -1
  loc_D659E6: LitI4 1
  loc_D659EB: LitStr "."
  loc_D659EE: LitStr ","
  loc_D659F1: FLdRfVar var_87C
  loc_D659F4: CStrVarTmp
  loc_D659F5: FStStrNoPop var_3BC
  loc_D659F8: ImpAdCallI2 Replace(, , , , , )
  loc_D659FD: CVarStr var_88C
  loc_D65A00: ConcatVar var_89C
  loc_D65A04: LitVarStr var_8AC, ",'"
  loc_D65A09: ConcatVar var_8BC
  loc_D65A0D: ImpAdLdI4 MemVar_D9302C
  loc_D65A10: CVarStr var_8CC
  loc_D65A13: ConcatVar var_8DC
  loc_D65A17: LitVarStr var_8EC, "');"
  loc_D65A1C: ConcatVar var_8FC
  loc_D65A20: CStrVarTmp
  loc_D65A21: FStStrNoPop var_3C0
  loc_D65A24: FLdPr Me
  loc_D65A27: MemStStrCopy
  loc_D65A2B: FFreeStr var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1D4 = "": var_390 = "": var_394 = "": var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3A8 = "": var_3AC = "": var_3B0 = "": var_3B4 = "": var_3B8 = "": var_3BC = ""
  loc_D65A54: FFreeAd var_5F4 = "": var_5F8 = "": var_5FC = "": var_630 = "": var_634 = "": var_648 = "": var_68C = "": var_690 = "": var_6A4 = "": var_6E8 = "": var_6EC = "": var_700 = "": var_864 = "": var_868 = "": var_86C = "": var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_4A0 = "": var_4A4 = "": var_4D8 = "": var_4DC = "": var_4E0 = "": var_514 = "": var_518 = "": var_51C = "": var_540 = "": var_544 = "": var_548 = "": var_57C = "": var_580 = "": var_584 = "": var_5B8 = "": var_5BC = ""
  loc_D65AB1: FFreeVar var_8BC = "": var_8DC = "": var_8FC = "": var_5F0 = "": var_60C = "": var_62C = "": var_61C = "": var_658 = "": var_668 = "": var_6B4 = "": var_688 = "": var_6C4 = "": var_6E4 = "": var_720 = "": var_710 = "": var_730 = "": var_750 = "": var_770 = "": var_760 = "": var_790 = "": var_7A0 = "": var_7D0 = "": var_7B0 = "": var_7E0 = "": var_7F0 = "": var_820 = "": var_810 = "": var_830 = "": var_850 = "": var_87C = "": var_860 = "": var_88C = "": var_89C = "": var_154 = "": var_144 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = "": var_38C = "": var_47C = "": var_49C = "": var_48C = "": var_4B4 = "": var_4C4 = "": var_4F0 = "": var_4D4 = "": var_500 = "": var_510 = "": var_53C = "": var_52C = "": var_558 = "": var_568 = "": var_594 = "": var_578 = "": var_5A4 = "": var_5B4 = "": var_5E0 = ""
  loc_D65B32: FLdRfVar var_158
  loc_D65B35: FLdPr Me
  loc_D65B38: MemLdRfVar from_stack_1.global_80
  loc_D65B3B: NewIfNullPr clsctacte
  loc_D65B3E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65B43: FLdPr var_158
  loc_D65B46: Me.MoveNext
  loc_D65B4B: FFree1Ad var_158
  loc_D65B4E: Branch loc_D64D46
  loc_D65B51: LitI4 2
  loc_D65B56: FLdPr Me
  loc_D65B59: MemLdFPR8 global_216
  loc_D65B5C: FLdPr Me
  loc_D65B5F: MemLdFPR8 global_176
  loc_D65B62: AddR8
  loc_D65B63: CVarR8
  loc_D65B67: FLdRfVar var_154
  loc_D65B6A: ImpAdCallFPR4  = Round(, )
  loc_D65B6F: FLdRfVar var_154
  loc_D65B72: CR4Var
  loc_D65B73: FLdPr Me
  loc_D65B76: MemStFPR8 global_216
  loc_D65B79: FFreeVar var_144 = ""
  loc_D65B80: Branch loc_D67B47
  loc_D65B83: LitVarStr var_168, "SELECT * FROM faciapre WHERE CodiFapa = "
  loc_D65B88: FLdRfVar var_144
  loc_D65B8B: FLdRfVar var_1D0
  loc_D65B8E: LitVarStr var_134, "CodiFapa"
  loc_D65B93: PopAdLdVar
  loc_D65B94: FLdRfVar var_1CC
  loc_D65B97: FLdRfVar var_158
  loc_D65B9A: FLdPr Me
  loc_D65B9D: MemLdRfVar from_stack_1.global_64
  loc_D65BA0: NewIfNullPr clsctacte
  loc_D65BA3: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65BA8: FLdPr var_158
  loc_D65BAB:  = Me.Fields
  loc_D65BB0: FLdPr var_1CC
  loc_D65BB3: from_stack_2 = Me.Item(from_stack_1)
  loc_D65BB8: FLdPr var_1D0
  loc_D65BBB:  = Me.Value
  loc_D65BC0: FLdRfVar var_144
  loc_D65BC3: ConcatVar var_154
  loc_D65BC7: LitVarStr var_178, " AND CuotDefa = "
  loc_D65BCC: ConcatVar var_188
  loc_D65BD0: FLdRfVar var_1A8
  loc_D65BD3: FLdRfVar var_1E0
  loc_D65BD6: LitVarStr var_198, "CuotDefa"
  loc_D65BDB: PopAdLdVar
  loc_D65BDC: FLdRfVar var_1DC
  loc_D65BDF: FLdRfVar var_1D8
  loc_D65BE2: FLdPr Me
  loc_D65BE5: MemLdRfVar from_stack_1.global_64
  loc_D65BE8: NewIfNullPr clsctacte
  loc_D65BEB: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65BF0: FLdPr var_1D8
  loc_D65BF3:  = Me.Fields
  loc_D65BF8: FLdPr var_1DC
  loc_D65BFB: from_stack_2 = Me.Item(from_stack_1)
  loc_D65C00: FLdPr var_1E0
  loc_D65C03:  = Me.Value
  loc_D65C08: FLdRfVar var_1A8
  loc_D65C0B: ConcatVar var_20C
  loc_D65C0F: CStrVarVal var_1B0
  loc_D65C13: FLdPr Me
  loc_D65C16: MemLdRfVar from_stack_1.global_80
  loc_D65C19: NewIfNullPr clsctacte
  loc_D65C1C: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D65C21: FFree1Str var_1B0
  loc_D65C24: FFreeAd var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = ""
  loc_D65C33: FFreeVar var_144 = "": var_154 = "": var_188 = "": var_1A8 = ""
  loc_D65C40: FLdRfVar var_1C4
  loc_D65C43: FLdRfVar var_158
  loc_D65C46: FLdPr Me
  loc_D65C49: MemLdRfVar from_stack_1.global_80
  loc_D65C4C: NewIfNullPr clsctacte
  loc_D65C4F: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65C54: FLdPr var_158
  loc_D65C57:  = Me.RecordCount
  loc_D65C5C: ILdRf var_1C4
  loc_D65C5F: LitI4 0
  loc_D65C64: GtI4
  loc_D65C65: FFree1Ad var_158
  loc_D65C68: BranchF loc_D66A92
  loc_D65C6B: FLdRfVar var_158
  loc_D65C6E: FLdPr Me
  loc_D65C71: MemLdRfVar from_stack_1.global_80
  loc_D65C74: NewIfNullPr clsctacte
  loc_D65C77: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65C7C: FLdPr var_158
  loc_D65C7F: Me.MoveFirst
  loc_D65C84: FFree1Ad var_158
  loc_D65C87: FLdRfVar var_1C6
  loc_D65C8A: FLdRfVar var_158
  loc_D65C8D: FLdPr Me
  loc_D65C90: MemLdRfVar from_stack_1.global_80
  loc_D65C93: NewIfNullPr clsctacte
  loc_D65C96: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65C9B: FLdPr var_158
  loc_D65C9E:  = Me.EOF
  loc_D65CA3: FLdI2 var_1C6
  loc_D65CA6: NotI4
  loc_D65CA7: FFree1Ad var_158
  loc_D65CAA: BranchF loc_D66A92
  loc_D65CAD: FLdRfVar var_144
  loc_D65CB0: FLdRfVar var_1D0
  loc_D65CB3: LitVarStr var_134, "CoadFaap"
  loc_D65CB8: PopAdLdVar
  loc_D65CB9: FLdRfVar var_1CC
  loc_D65CBC: FLdRfVar var_158
  loc_D65CBF: FLdPr Me
  loc_D65CC2: MemLdRfVar from_stack_1.global_80
  loc_D65CC5: NewIfNullPr clsctacte
  loc_D65CC8: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65CCD: FLdPr var_158
  loc_D65CD0:  = Me.Fields
  loc_D65CD5: FLdPr var_1CC
  loc_D65CD8: from_stack_2 = Me.Item(from_stack_1)
  loc_D65CDD: FLdPr var_1D0
  loc_D65CE0:  = Me.Value
  loc_D65CE5: FLdRfVar var_188
  loc_D65CE8: FLdRfVar var_1E0
  loc_D65CEB: LitVarStr var_178, "ReseFaap"
  loc_D65CF0: PopAdLdVar
  loc_D65CF1: FLdRfVar var_1DC
  loc_D65CF4: FLdRfVar var_1D8
  loc_D65CF7: FLdPr Me
  loc_D65CFA: MemLdRfVar from_stack_1.global_80
  loc_D65CFD: NewIfNullPr clsctacte
  loc_D65D00: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65D05: FLdPr var_1D8
  loc_D65D08:  = Me.Fields
  loc_D65D0D: FLdPr var_1DC
  loc_D65D10: from_stack_2 = Me.Item(from_stack_1)
  loc_D65D15: FLdPr var_1E0
  loc_D65D18:  = Me.Value
  loc_D65D1D: FLdRfVar var_20C
  loc_D65D20: FLdRfVar var_1EC
  loc_D65D23: LitVarStr var_198, "ApleFaap"
  loc_D65D28: PopAdLdVar
  loc_D65D29: FLdRfVar var_1E8
  loc_D65D2C: FLdRfVar var_1E4
  loc_D65D2F: FLdPr Me
  loc_D65D32: MemLdRfVar from_stack_1.global_80
  loc_D65D35: NewIfNullPr clsctacte
  loc_D65D38: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65D3D: FLdPr var_1E4
  loc_D65D40:  = Me.Fields
  loc_D65D45: FLdPr var_1E8
  loc_D65D48: from_stack_2 = Me.Item(from_stack_1)
  loc_D65D4D: FLdPr var_1EC
  loc_D65D50:  = Me.Value
  loc_D65D55: FLdRfVar var_22C
  loc_D65D58: FLdRfVar var_1F8
  loc_D65D5B: LitVarStr var_23C, "DefiFaap"
  loc_D65D60: PopAdLdVar
  loc_D65D61: FLdRfVar var_1F4
  loc_D65D64: FLdRfVar var_1F0
  loc_D65D67: FLdPr Me
  loc_D65D6A: MemLdRfVar from_stack_1.global_80
  loc_D65D6D: NewIfNullPr clsctacte
  loc_D65D70: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65D75: FLdPr var_1F0
  loc_D65D78:  = Me.Fields
  loc_D65D7D: FLdPr var_1F4
  loc_D65D80: from_stack_2 = Me.Item(from_stack_1)
  loc_D65D85: FLdPr var_1F8
  loc_D65D88:  = Me.Value
  loc_D65D8D: FLdRfVar var_32C
  loc_D65D90: FLdRfVar var_4A4
  loc_D65D93: LitVarStr var_25C, "HoreFaap"
  loc_D65D98: PopAdLdVar
  loc_D65D99: FLdRfVar var_4A0
  loc_D65D9C: FLdRfVar var_1FC
  loc_D65D9F: FLdPr Me
  loc_D65DA2: MemLdRfVar from_stack_1.global_80
  loc_D65DA5: NewIfNullPr clsctacte
  loc_D65DA8: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65DAD: FLdPr var_1FC
  loc_D65DB0:  = Me.Fields
  loc_D65DB5: FLdPr var_4A0
  loc_D65DB8: from_stack_2 = Me.Item(from_stack_1)
  loc_D65DBD: FLdPr var_4A4
  loc_D65DC0:  = Me.Value
  loc_D65DC5: FLdRfVar var_38C
  loc_D65DC8: FLdRfVar var_4E0
  loc_D65DCB: LitVarStr var_26C, "HoofFaap"
  loc_D65DD0: PopAdLdVar
  loc_D65DD1: FLdRfVar var_4DC
  loc_D65DD4: FLdRfVar var_4D8
  loc_D65DD7: FLdPr Me
  loc_D65DDA: MemLdRfVar from_stack_1.global_80
  loc_D65DDD: NewIfNullPr clsctacte
  loc_D65DE0: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65DE5: FLdPr var_4D8
  loc_D65DE8:  = Me.Fields
  loc_D65DED: FLdPr var_4DC
  loc_D65DF0: from_stack_2 = Me.Item(from_stack_1)
  loc_D65DF5: FLdPr var_4E0
  loc_D65DF8:  = Me.Value
  loc_D65DFD: FLdRfVar var_48C
  loc_D65E00: FLdRfVar var_51C
  loc_D65E03: LitVarStr var_27C, "MoreFaap"
  loc_D65E08: PopAdLdVar
  loc_D65E09: FLdRfVar var_518
  loc_D65E0C: FLdRfVar var_514
  loc_D65E0F: FLdPr Me
  loc_D65E12: MemLdRfVar from_stack_1.global_80
  loc_D65E15: NewIfNullPr clsctacte
  loc_D65E18: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65E1D: FLdPr var_514
  loc_D65E20:  = Me.Fields
  loc_D65E25: FLdPr var_518
  loc_D65E28: from_stack_2 = Me.Item(from_stack_1)
  loc_D65E2D: FLdPr var_51C
  loc_D65E30:  = Me.Value
  loc_D65E35: FLdRfVar var_4B4
  loc_D65E38: FLdRfVar var_548
  loc_D65E3B: LitVarStr var_28C, "MoofFaap"
  loc_D65E40: PopAdLdVar
  loc_D65E41: FLdRfVar var_544
  loc_D65E44: FLdRfVar var_540
  loc_D65E47: FLdPr Me
  loc_D65E4A: MemLdRfVar from_stack_1.global_80
  loc_D65E4D: NewIfNullPr clsctacte
  loc_D65E50: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65E55: FLdPr var_540
  loc_D65E58:  = Me.Fields
  loc_D65E5D: FLdPr var_544
  loc_D65E60: from_stack_2 = Me.Item(from_stack_1)
  loc_D65E65: FLdPr var_548
  loc_D65E68:  = Me.Value
  loc_D65E6D: FLdRfVar var_4D4
  loc_D65E70: FLdRfVar var_584
  loc_D65E73: LitVarStr var_29C, "IcomFaap"
  loc_D65E78: PopAdLdVar
  loc_D65E79: FLdRfVar var_580
  loc_D65E7C: FLdRfVar var_57C
  loc_D65E7F: FLdPr Me
  loc_D65E82: MemLdRfVar from_stack_1.global_80
  loc_D65E85: NewIfNullPr clsctacte
  loc_D65E88: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65E8D: FLdPr var_57C
  loc_D65E90:  = Me.Fields
  loc_D65E95: FLdPr var_580
  loc_D65E98: from_stack_2 = Me.Item(from_stack_1)
  loc_D65E9D: FLdPr var_584
  loc_D65EA0:  = Me.Value
  loc_D65EA5: FLdRfVar var_500
  loc_D65EA8: FLdRfVar var_5C0
  loc_D65EAB: LitVarStr var_2AC, "IrecFaap"
  loc_D65EB0: PopAdLdVar
  loc_D65EB1: FLdRfVar var_5BC
  loc_D65EB4: FLdRfVar var_5B8
  loc_D65EB7: FLdPr Me
  loc_D65EBA: MemLdRfVar from_stack_1.global_80
  loc_D65EBD: NewIfNullPr clsctacte
  loc_D65EC0: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65EC5: FLdPr var_5B8
  loc_D65EC8:  = Me.Fields
  loc_D65ECD: FLdPr var_5BC
  loc_D65ED0: from_stack_2 = Me.Item(from_stack_1)
  loc_D65ED5: FLdPr var_5C0
  loc_D65ED8:  = Me.Value
  loc_D65EDD: FLdRfVar var_52C
  loc_D65EE0: FLdRfVar var_5FC
  loc_D65EE3: LitVarStr var_2BC, "IofiFaap"
  loc_D65EE8: PopAdLdVar
  loc_D65EE9: FLdRfVar var_5F8
  loc_D65EEC: FLdRfVar var_5F4
  loc_D65EEF: FLdPr Me
  loc_D65EF2: MemLdRfVar from_stack_1.global_80
  loc_D65EF5: NewIfNullPr clsctacte
  loc_D65EF8: from_stack_1v = clsctacte.RsFrmGet()
  loc_D65EFD: FLdPr var_5F4
  loc_D65F00:  = Me.Fields
  loc_D65F05: FLdPr var_5F8
  loc_D65F08: from_stack_2 = Me.Item(from_stack_1)
  loc_D65F0D: FLdPr var_5FC
  loc_D65F10:  = Me.Value
  loc_D65F15: LitI4 2
  loc_D65F1A: FLdPr Me
  loc_D65F1D: MemLdFPR8 global_216
  loc_D65F20: CVarR8
  loc_D65F24: FLdRfVar var_144
  loc_D65F27: AddVar var_154
  loc_D65F2B: FLdRfVar var_188
  loc_D65F2E: AddVar var_1A8
  loc_D65F32: FLdRfVar var_20C
  loc_D65F35: AddVar var_21C
  loc_D65F39: FLdRfVar var_22C
  loc_D65F3C: AddVar var_24C
  loc_D65F40: FLdRfVar var_32C
  loc_D65F43: AddVar var_35C
  loc_D65F47: FLdRfVar var_38C
  loc_D65F4A: AddVar var_47C
  loc_D65F4E: FLdRfVar var_48C
  loc_D65F51: AddVar var_49C
  loc_D65F55: FLdRfVar var_4B4
  loc_D65F58: AddVar var_4C4
  loc_D65F5C: FLdRfVar var_4D4
  loc_D65F5F: AddVar var_4F0
  loc_D65F63: FLdRfVar var_500
  loc_D65F66: AddVar var_510
  loc_D65F6A: FLdRfVar var_52C
  loc_D65F6D: AddVar var_53C
  loc_D65F71: FLdRfVar var_558
  loc_D65F74: ImpAdCallFPR4  = Round(, )
  loc_D65F79: FLdRfVar var_558
  loc_D65F7C: CR4Var
  loc_D65F7D: FLdPr Me
  loc_D65F80: MemStFPR8 global_216
  loc_D65F83: FFreeAd var_5F4 = "": var_5F8 = "": var_5FC = "": var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_4A0 = "": var_4A4 = "": var_4D8 = "": var_4DC = "": var_4E0 = "": var_514 = "": var_518 = "": var_51C = "": var_540 = "": var_544 = "": var_548 = "": var_57C = "": var_580 = "": var_584 = "": var_5B8 = "": var_5BC = ""
  loc_D65FC8: FFreeVar var_144 = "": var_154 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = "": var_38C = "": var_47C = "": var_48C = "": var_49C = "": var_4B4 = "": var_4C4 = "": var_4D4 = "": var_4F0 = "": var_500 = "": var_510 = "": var_52C = "": var_53C = ""
  loc_D65FF9: FLdRfVar var_144
  loc_D65FFC: FLdRfVar var_1D0
  loc_D65FFF: LitVarStr var_134, "CoadFaap"
  loc_D66004: PopAdLdVar
  loc_D66005: FLdRfVar var_1CC
  loc_D66008: FLdRfVar var_158
  loc_D6600B: FLdPr Me
  loc_D6600E: MemLdRfVar from_stack_1.global_80
  loc_D66011: NewIfNullPr clsctacte
  loc_D66014: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66019: FLdPr var_158
  loc_D6601C:  = Me.Fields
  loc_D66021: FLdPr var_1CC
  loc_D66024: from_stack_2 = Me.Item(from_stack_1)
  loc_D66029: FLdPr var_1D0
  loc_D6602C:  = Me.Value
  loc_D66031: FLdRfVar var_188
  loc_D66034: FLdRfVar var_1E0
  loc_D66037: LitVarStr var_178, "ReseFaap"
  loc_D6603C: PopAdLdVar
  loc_D6603D: FLdRfVar var_1DC
  loc_D66040: FLdRfVar var_1D8
  loc_D66043: FLdPr Me
  loc_D66046: MemLdRfVar from_stack_1.global_80
  loc_D66049: NewIfNullPr clsctacte
  loc_D6604C: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66051: FLdPr var_1D8
  loc_D66054:  = Me.Fields
  loc_D66059: FLdPr var_1DC
  loc_D6605C: from_stack_2 = Me.Item(from_stack_1)
  loc_D66061: FLdPr var_1E0
  loc_D66064:  = Me.Value
  loc_D66069: FLdRfVar var_20C
  loc_D6606C: FLdRfVar var_1EC
  loc_D6606F: LitVarStr var_198, "ApleFaap"
  loc_D66074: PopAdLdVar
  loc_D66075: FLdRfVar var_1E8
  loc_D66078: FLdRfVar var_1E4
  loc_D6607B: FLdPr Me
  loc_D6607E: MemLdRfVar from_stack_1.global_80
  loc_D66081: NewIfNullPr clsctacte
  loc_D66084: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66089: FLdPr var_1E4
  loc_D6608C:  = Me.Fields
  loc_D66091: FLdPr var_1E8
  loc_D66094: from_stack_2 = Me.Item(from_stack_1)
  loc_D66099: FLdPr var_1EC
  loc_D6609C:  = Me.Value
  loc_D660A1: FLdRfVar var_22C
  loc_D660A4: FLdRfVar var_1F8
  loc_D660A7: LitVarStr var_23C, "DefiFaap"
  loc_D660AC: PopAdLdVar
  loc_D660AD: FLdRfVar var_1F4
  loc_D660B0: FLdRfVar var_1F0
  loc_D660B3: FLdPr Me
  loc_D660B6: MemLdRfVar from_stack_1.global_80
  loc_D660B9: NewIfNullPr clsctacte
  loc_D660BC: from_stack_1v = clsctacte.RsFrmGet()
  loc_D660C1: FLdPr var_1F0
  loc_D660C4:  = Me.Fields
  loc_D660C9: FLdPr var_1F4
  loc_D660CC: from_stack_2 = Me.Item(from_stack_1)
  loc_D660D1: FLdPr var_1F8
  loc_D660D4:  = Me.Value
  loc_D660D9: FLdRfVar var_32C
  loc_D660DC: FLdRfVar var_4A4
  loc_D660DF: LitVarStr var_25C, "HoreFaap"
  loc_D660E4: PopAdLdVar
  loc_D660E5: FLdRfVar var_4A0
  loc_D660E8: FLdRfVar var_1FC
  loc_D660EB: FLdPr Me
  loc_D660EE: MemLdRfVar from_stack_1.global_80
  loc_D660F1: NewIfNullPr clsctacte
  loc_D660F4: from_stack_1v = clsctacte.RsFrmGet()
  loc_D660F9: FLdPr var_1FC
  loc_D660FC:  = Me.Fields
  loc_D66101: FLdPr var_4A0
  loc_D66104: from_stack_2 = Me.Item(from_stack_1)
  loc_D66109: FLdPr var_4A4
  loc_D6610C:  = Me.Value
  loc_D66111: FLdRfVar var_38C
  loc_D66114: FLdRfVar var_4E0
  loc_D66117: LitVarStr var_26C, "HoofFaap"
  loc_D6611C: PopAdLdVar
  loc_D6611D: FLdRfVar var_4DC
  loc_D66120: FLdRfVar var_4D8
  loc_D66123: FLdPr Me
  loc_D66126: MemLdRfVar from_stack_1.global_80
  loc_D66129: NewIfNullPr clsctacte
  loc_D6612C: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66131: FLdPr var_4D8
  loc_D66134:  = Me.Fields
  loc_D66139: FLdPr var_4DC
  loc_D6613C: from_stack_2 = Me.Item(from_stack_1)
  loc_D66141: FLdPr var_4E0
  loc_D66144:  = Me.Value
  loc_D66149: FLdRfVar var_48C
  loc_D6614C: FLdRfVar var_51C
  loc_D6614F: LitVarStr var_27C, "MoreFaap"
  loc_D66154: PopAdLdVar
  loc_D66155: FLdRfVar var_518
  loc_D66158: FLdRfVar var_514
  loc_D6615B: FLdPr Me
  loc_D6615E: MemLdRfVar from_stack_1.global_80
  loc_D66161: NewIfNullPr clsctacte
  loc_D66164: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66169: FLdPr var_514
  loc_D6616C:  = Me.Fields
  loc_D66171: FLdPr var_518
  loc_D66174: from_stack_2 = Me.Item(from_stack_1)
  loc_D66179: FLdPr var_51C
  loc_D6617C:  = Me.Value
  loc_D66181: FLdRfVar var_4B4
  loc_D66184: FLdRfVar var_548
  loc_D66187: LitVarStr var_28C, "MoofFaap"
  loc_D6618C: PopAdLdVar
  loc_D6618D: FLdRfVar var_544
  loc_D66190: FLdRfVar var_540
  loc_D66193: FLdPr Me
  loc_D66196: MemLdRfVar from_stack_1.global_80
  loc_D66199: NewIfNullPr clsctacte
  loc_D6619C: from_stack_1v = clsctacte.RsFrmGet()
  loc_D661A1: FLdPr var_540
  loc_D661A4:  = Me.Fields
  loc_D661A9: FLdPr var_544
  loc_D661AC: from_stack_2 = Me.Item(from_stack_1)
  loc_D661B1: FLdPr var_548
  loc_D661B4:  = Me.Value
  loc_D661B9: FLdRfVar var_4D4
  loc_D661BC: FLdRfVar var_584
  loc_D661BF: LitVarStr var_29C, "IcomFaap"
  loc_D661C4: PopAdLdVar
  loc_D661C5: FLdRfVar var_580
  loc_D661C8: FLdRfVar var_57C
  loc_D661CB: FLdPr Me
  loc_D661CE: MemLdRfVar from_stack_1.global_80
  loc_D661D1: NewIfNullPr clsctacte
  loc_D661D4: from_stack_1v = clsctacte.RsFrmGet()
  loc_D661D9: FLdPr var_57C
  loc_D661DC:  = Me.Fields
  loc_D661E1: FLdPr var_580
  loc_D661E4: from_stack_2 = Me.Item(from_stack_1)
  loc_D661E9: FLdPr var_584
  loc_D661EC:  = Me.Value
  loc_D661F1: FLdRfVar var_500
  loc_D661F4: FLdRfVar var_5C0
  loc_D661F7: LitVarStr var_2AC, "IrecFaap"
  loc_D661FC: PopAdLdVar
  loc_D661FD: FLdRfVar var_5BC
  loc_D66200: FLdRfVar var_5B8
  loc_D66203: FLdPr Me
  loc_D66206: MemLdRfVar from_stack_1.global_80
  loc_D66209: NewIfNullPr clsctacte
  loc_D6620C: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66211: FLdPr var_5B8
  loc_D66214:  = Me.Fields
  loc_D66219: FLdPr var_5BC
  loc_D6621C: from_stack_2 = Me.Item(from_stack_1)
  loc_D66221: FLdPr var_5C0
  loc_D66224:  = Me.Value
  loc_D66229: FLdRfVar var_52C
  loc_D6622C: FLdRfVar var_5FC
  loc_D6622F: LitVarStr var_2BC, "IofiFaap"
  loc_D66234: PopAdLdVar
  loc_D66235: FLdRfVar var_5F8
  loc_D66238: FLdRfVar var_5F4
  loc_D6623B: FLdPr Me
  loc_D6623E: MemLdRfVar from_stack_1.global_80
  loc_D66241: NewIfNullPr clsctacte
  loc_D66244: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66249: FLdPr var_5F4
  loc_D6624C:  = Me.Fields
  loc_D66251: FLdPr var_5F8
  loc_D66254: from_stack_2 = Me.Item(from_stack_1)
  loc_D66259: FLdPr var_5FC
  loc_D6625C:  = Me.Value
  loc_D66261: LitI4 2
  loc_D66266: FLdFPR8 var_114
  loc_D66269: CVarR8
  loc_D6626D: FLdRfVar var_144
  loc_D66270: AddVar var_154
  loc_D66274: FLdRfVar var_188
  loc_D66277: AddVar var_1A8
  loc_D6627B: FLdRfVar var_20C
  loc_D6627E: AddVar var_21C
  loc_D66282: FLdRfVar var_22C
  loc_D66285: AddVar var_24C
  loc_D66289: FLdRfVar var_32C
  loc_D6628C: AddVar var_35C
  loc_D66290: FLdRfVar var_38C
  loc_D66293: AddVar var_47C
  loc_D66297: FLdRfVar var_48C
  loc_D6629A: AddVar var_49C
  loc_D6629E: FLdRfVar var_4B4
  loc_D662A1: AddVar var_4C4
  loc_D662A5: FLdRfVar var_4D4
  loc_D662A8: AddVar var_4F0
  loc_D662AC: FLdRfVar var_500
  loc_D662AF: AddVar var_510
  loc_D662B3: FLdRfVar var_52C
  loc_D662B6: AddVar var_53C
  loc_D662BA: FLdRfVar var_558
  loc_D662BD: ImpAdCallFPR4  = Round(, )
  loc_D662C2: FLdRfVar var_558
  loc_D662C5: CR4Var
  loc_D662C6: FStFPR8 var_114
  loc_D662C9: FFreeAd var_5F4 = "": var_5F8 = "": var_5FC = "": var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_4A0 = "": var_4A4 = "": var_4D8 = "": var_4DC = "": var_4E0 = "": var_514 = "": var_518 = "": var_51C = "": var_540 = "": var_544 = "": var_548 = "": var_57C = "": var_580 = "": var_584 = "": var_5B8 = "": var_5BC = ""
  loc_D6630E: FFreeVar var_144 = "": var_154 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = "": var_38C = "": var_47C = "": var_48C = "": var_49C = "": var_4B4 = "": var_4C4 = "": var_4D4 = "": var_4F0 = "": var_500 = "": var_510 = "": var_52C = "": var_53C = ""
  loc_D6633F: FLdRfVar var_4F0
  loc_D66342: FLdRfVar var_4A4
  loc_D66345: LitVarStr var_2BC, "CoadFaap"
  loc_D6634A: PopAdLdVar
  loc_D6634B: FLdRfVar var_4A0
  loc_D6634E: FLdRfVar var_1FC
  loc_D66351: FLdPr Me
  loc_D66354: MemLdRfVar from_stack_1.global_80
  loc_D66357: NewIfNullPr clsctacte
  loc_D6635A: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6635F: FLdPr var_1FC
  loc_D66362:  = Me.Fields
  loc_D66367: FLdPr var_4A0
  loc_D6636A: from_stack_2 = Me.Item(from_stack_1)
  loc_D6636F: FLdPr var_4A4
  loc_D66372:  = Me.Value
  loc_D66377: FLdRfVar var_53C
  loc_D6637A: FLdRfVar var_4E0
  loc_D6637D: LitVarStr var_2DC, "ReseFaap"
  loc_D66382: PopAdLdVar
  loc_D66383: FLdRfVar var_4DC
  loc_D66386: FLdRfVar var_4D8
  loc_D66389: FLdPr Me
  loc_D6638C: MemLdRfVar from_stack_1.global_80
  loc_D6638F: NewIfNullPr clsctacte
  loc_D66392: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66397: FLdPr var_4D8
  loc_D6639A:  = Me.Fields
  loc_D6639F: FLdPr var_4DC
  loc_D663A2: from_stack_2 = Me.Item(from_stack_1)
  loc_D663A7: FLdPr var_4E0
  loc_D663AA:  = Me.Value
  loc_D663AF: FLdRfVar var_594
  loc_D663B2: FLdRfVar var_51C
  loc_D663B5: LitVarStr var_2FC, "ApleFaap"
  loc_D663BA: PopAdLdVar
  loc_D663BB: FLdRfVar var_518
  loc_D663BE: FLdRfVar var_514
  loc_D663C1: FLdPr Me
  loc_D663C4: MemLdRfVar from_stack_1.global_80
  loc_D663C7: NewIfNullPr clsctacte
  loc_D663CA: from_stack_1v = clsctacte.RsFrmGet()
  loc_D663CF: FLdPr var_514
  loc_D663D2:  = Me.Fields
  loc_D663D7: FLdPr var_518
  loc_D663DA: from_stack_2 = Me.Item(from_stack_1)
  loc_D663DF: FLdPr var_51C
  loc_D663E2:  = Me.Value
  loc_D663E7: FLdRfVar var_5E0
  loc_D663EA: FLdRfVar var_548
  loc_D663ED: LitVarStr var_31C, "DefiFaap"
  loc_D663F2: PopAdLdVar
  loc_D663F3: FLdRfVar var_544
  loc_D663F6: FLdRfVar var_540
  loc_D663F9: FLdPr Me
  loc_D663FC: MemLdRfVar from_stack_1.global_80
  loc_D663FF: NewIfNullPr clsctacte
  loc_D66402: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66407: FLdPr var_540
  loc_D6640A:  = Me.Fields
  loc_D6640F: FLdPr var_544
  loc_D66412: from_stack_2 = Me.Item(from_stack_1)
  loc_D66417: FLdPr var_548
  loc_D6641A:  = Me.Value
  loc_D6641F: FLdRfVar var_62C
  loc_D66422: FLdRfVar var_584
  loc_D66425: LitVarStr var_34C, "HoreFaap"
  loc_D6642A: PopAdLdVar
  loc_D6642B: FLdRfVar var_580
  loc_D6642E: FLdRfVar var_57C
  loc_D66431: FLdPr Me
  loc_D66434: MemLdRfVar from_stack_1.global_80
  loc_D66437: NewIfNullPr clsctacte
  loc_D6643A: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6643F: FLdPr var_57C
  loc_D66442:  = Me.Fields
  loc_D66447: FLdPr var_580
  loc_D6644A: from_stack_2 = Me.Item(from_stack_1)
  loc_D6644F: FLdPr var_584
  loc_D66452:  = Me.Value
  loc_D66457: FLdRfVar var_6B4
  loc_D6645A: FLdRfVar var_5C0
  loc_D6645D: LitVarStr var_37C, "HoofFaap"
  loc_D66462: PopAdLdVar
  loc_D66463: FLdRfVar var_5BC
  loc_D66466: FLdRfVar var_5B8
  loc_D66469: FLdPr Me
  loc_D6646C: MemLdRfVar from_stack_1.global_80
  loc_D6646F: NewIfNullPr clsctacte
  loc_D66472: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66477: FLdPr var_5B8
  loc_D6647A:  = Me.Fields
  loc_D6647F: FLdPr var_5BC
  loc_D66482: from_stack_2 = Me.Item(from_stack_1)
  loc_D66487: FLdPr var_5C0
  loc_D6648A:  = Me.Value
  loc_D6648F: FLdRfVar var_720
  loc_D66492: FLdRfVar var_5FC
  loc_D66495: LitVarStr var_678, "MoreFaap"
  loc_D6649A: PopAdLdVar
  loc_D6649B: FLdRfVar var_5F8
  loc_D6649E: FLdRfVar var_5F4
  loc_D664A1: FLdPr Me
  loc_D664A4: MemLdRfVar from_stack_1.global_80
  loc_D664A7: NewIfNullPr clsctacte
  loc_D664AA: from_stack_1v = clsctacte.RsFrmGet()
  loc_D664AF: FLdPr var_5F4
  loc_D664B2:  = Me.Fields
  loc_D664B7: FLdPr var_5F8
  loc_D664BA: from_stack_2 = Me.Item(from_stack_1)
  loc_D664BF: FLdPr var_5FC
  loc_D664C2:  = Me.Value
  loc_D664C7: FLdRfVar var_770
  loc_D664CA: FLdRfVar var_648
  loc_D664CD: LitVarStr var_6D4, "MoofFaap"
  loc_D664D2: PopAdLdVar
  loc_D664D3: FLdRfVar var_634
  loc_D664D6: FLdRfVar var_630
  loc_D664D9: FLdPr Me
  loc_D664DC: MemLdRfVar from_stack_1.global_80
  loc_D664DF: NewIfNullPr clsctacte
  loc_D664E2: from_stack_1v = clsctacte.RsFrmGet()
  loc_D664E7: FLdPr var_630
  loc_D664EA:  = Me.Fields
  loc_D664EF: FLdPr var_634
  loc_D664F2: from_stack_2 = Me.Item(from_stack_1)
  loc_D664F7: FLdPr var_648
  loc_D664FA:  = Me.Value
  loc_D664FF: FLdRfVar var_7D0
  loc_D66502: FLdRfVar var_6A4
  loc_D66505: LitVarStr var_740, "IcomFaap"
  loc_D6650A: PopAdLdVar
  loc_D6650B: FLdRfVar var_690
  loc_D6650E: FLdRfVar var_68C
  loc_D66511: FLdPr Me
  loc_D66514: MemLdRfVar from_stack_1.global_80
  loc_D66517: NewIfNullPr clsctacte
  loc_D6651A: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6651F: FLdPr var_68C
  loc_D66522:  = Me.Fields
  loc_D66527: FLdPr var_690
  loc_D6652A: from_stack_2 = Me.Item(from_stack_1)
  loc_D6652F: FLdPr var_6A4
  loc_D66532:  = Me.Value
  loc_D66537: FLdRfVar var_820
  loc_D6653A: FLdRfVar var_700
  loc_D6653D: LitVarStr var_7C0, "IrecFaap"
  loc_D66542: PopAdLdVar
  loc_D66543: FLdRfVar var_6EC
  loc_D66546: FLdRfVar var_6E8
  loc_D66549: FLdPr Me
  loc_D6654C: MemLdRfVar from_stack_1.global_80
  loc_D6654F: NewIfNullPr clsctacte
  loc_D66552: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66557: FLdPr var_6E8
  loc_D6655A:  = Me.Fields
  loc_D6655F: FLdPr var_6EC
  loc_D66562: from_stack_2 = Me.Item(from_stack_1)
  loc_D66567: FLdPr var_700
  loc_D6656A:  = Me.Value
  loc_D6656F: FLdRfVar var_87C
  loc_D66572: FLdRfVar var_86C
  loc_D66575: LitVarStr var_840, "IofiFaap"
  loc_D6657A: PopAdLdVar
  loc_D6657B: FLdRfVar var_868
  loc_D6657E: FLdRfVar var_864
  loc_D66581: FLdPr Me
  loc_D66584: MemLdRfVar from_stack_1.global_80
  loc_D66587: NewIfNullPr clsctacte
  loc_D6658A: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6658F: FLdPr var_864
  loc_D66592:  = Me.Fields
  loc_D66597: FLdPr var_868
  loc_D6659A: from_stack_2 = Me.Item(from_stack_1)
  loc_D6659F: FLdPr var_86C
  loc_D665A2:  = Me.Value
  loc_D665A7: FLdPr Me
  loc_D665AA: MemLdStr global_260
  loc_D665AD: LitStr " INSERT INTO boleapre (PeriBole, NumeBole, NumeApre, CodiInju, CodiFapa, CuotDefa, FealBoap, FeacBoap, EstaBoap, CoadBoap, ReseBoap, ApleBoap, DefiBoap, HoreBoap, HoofBoap, MoreBoap, MoofBoap,IcomBoap,IrecBoap,IofiBoap, CodiUsua) "
  loc_D665B0: ConcatStr
  loc_D665B1: FStStrNoPop var_1B0
  loc_D665B4: LitStr " VALUES ("
  loc_D665B7: ConcatStr
  loc_D665B8: FStStrNoPop var_1B4
  loc_D665BB: FLdI2 var_86
  loc_D665BE: CStrUI1
  loc_D665C0: FStStrNoPop var_1B8
  loc_D665C3: ConcatStr
  loc_D665C4: FStStrNoPop var_1BC
  loc_D665C7: LitStr ","
  loc_D665CA: ConcatStr
  loc_D665CB: FStStrNoPop var_1C0
  loc_D665CE: ILdRf var_8C
  loc_D665D1: CStrI4
  loc_D665D3: FStStrNoPop var_1D4
  loc_D665D6: ConcatStr
  loc_D665D7: FStStrNoPop var_390
  loc_D665DA: LitStr ","
  loc_D665DD: ConcatStr
  loc_D665DE: CVarStr var_154
  loc_D665E1: FLdRfVar var_144
  loc_D665E4: FLdRfVar var_1D0
  loc_D665E7: LitVarStr var_134, "NumeApre"
  loc_D665EC: PopAdLdVar
  loc_D665ED: FLdRfVar var_1CC
  loc_D665F0: FLdRfVar var_158
  loc_D665F3: FLdPr Me
  loc_D665F6: MemLdRfVar from_stack_1.global_80
  loc_D665F9: NewIfNullPr clsctacte
  loc_D665FC: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66601: FLdPr var_158
  loc_D66604:  = Me.Fields
  loc_D66609: FLdPr var_1CC
  loc_D6660C: from_stack_2 = Me.Item(from_stack_1)
  loc_D66611: FLdPr var_1D0
  loc_D66614:  = Me.Value
  loc_D66619: FLdRfVar var_144
  loc_D6661C: ConcatVar var_188
  loc_D66620: LitVarStr var_168, ","
  loc_D66625: ConcatVar var_1A8
  loc_D66629: FLdRfVar var_20C
  loc_D6662C: FLdRfVar var_1E0
  loc_D6662F: LitVarStr var_178, "CodiInju"
  loc_D66634: PopAdLdVar
  loc_D66635: FLdRfVar var_1DC
  loc_D66638: FLdRfVar var_1D8
  loc_D6663B: FLdPr Me
  loc_D6663E: MemLdRfVar from_stack_1.global_80
  loc_D66641: NewIfNullPr clsctacte
  loc_D66644: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66649: FLdPr var_1D8
  loc_D6664C:  = Me.Fields
  loc_D66651: FLdPr var_1DC
  loc_D66654: from_stack_2 = Me.Item(from_stack_1)
  loc_D66659: FLdPr var_1E0
  loc_D6665C:  = Me.Value
  loc_D66661: FLdRfVar var_20C
  loc_D66664: ConcatVar var_21C
  loc_D66668: LitVarStr var_198, ","
  loc_D6666D: ConcatVar var_22C
  loc_D66671: FLdRfVar var_24C
  loc_D66674: FLdRfVar var_1EC
  loc_D66677: LitVarStr var_23C, "CodiFapa"
  loc_D6667C: PopAdLdVar
  loc_D6667D: FLdRfVar var_1E8
  loc_D66680: FLdRfVar var_1E4
  loc_D66683: FLdPr Me
  loc_D66686: MemLdRfVar from_stack_1.global_80
  loc_D66689: NewIfNullPr clsctacte
  loc_D6668C: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66691: FLdPr var_1E4
  loc_D66694:  = Me.Fields
  loc_D66699: FLdPr var_1E8
  loc_D6669C: from_stack_2 = Me.Item(from_stack_1)
  loc_D666A1: FLdPr var_1EC
  loc_D666A4:  = Me.Value
  loc_D666A9: FLdRfVar var_24C
  loc_D666AC: ConcatVar var_32C
  loc_D666B0: LitVarStr var_25C, ","
  loc_D666B5: ConcatVar var_35C
  loc_D666B9: FLdRfVar var_38C
  loc_D666BC: FLdRfVar var_1F8
  loc_D666BF: LitVarStr var_26C, "CuotDefa"
  loc_D666C4: PopAdLdVar
  loc_D666C5: FLdRfVar var_1F4
  loc_D666C8: FLdRfVar var_1F0
  loc_D666CB: FLdPr Me
  loc_D666CE: MemLdRfVar from_stack_1.global_80
  loc_D666D1: NewIfNullPr clsctacte
  loc_D666D4: from_stack_1v = clsctacte.RsFrmGet()
  loc_D666D9: FLdPr var_1F0
  loc_D666DC:  = Me.Fields
  loc_D666E1: FLdPr var_1F4
  loc_D666E4: from_stack_2 = Me.Item(from_stack_1)
  loc_D666E9: FLdPr var_1F8
  loc_D666EC:  = Me.Value
  loc_D666F1: FLdRfVar var_38C
  loc_D666F4: ConcatVar var_47C
  loc_D666F8: LitVarStr var_27C, ",'"
  loc_D666FD: ConcatVar var_48C
  loc_D66701: LitI4 1
  loc_D66706: LitI4 1
  loc_D6670B: LitVarStr var_29C, "yyyy-mm-dd"
  loc_D66710: FStVarCopyObj var_49C
  loc_D66713: FLdRfVar var_49C
  loc_D66716: FLdRfVar var_C8
  loc_D66719: CVarRef
  loc_D6671E: ImpAdCallI2 Format$(, )
  loc_D66723: CVarStr var_4B4
  loc_D66726: ConcatVar var_4C4
  loc_D6672A: LitVarStr var_2AC, "',Null,'Emitido',"
  loc_D6672F: ConcatVar var_4D4
  loc_D66733: LitI4 0
  loc_D66738: LitI4 -1
  loc_D6673D: LitI4 1
  loc_D66742: LitStr "."
  loc_D66745: LitStr ","
  loc_D66748: FLdRfVar var_4F0
  loc_D6674B: CStrVarTmp
  loc_D6674C: FStStrNoPop var_394
  loc_D6674F: ImpAdCallI2 Replace(, , , , , )
  loc_D66754: CVarStr var_500
  loc_D66757: ConcatVar var_510
  loc_D6675B: LitVarStr var_2CC, ","
  loc_D66760: ConcatVar var_52C
  loc_D66764: LitI4 0
  loc_D66769: LitI4 -1
  loc_D6676E: LitI4 1
  loc_D66773: LitStr "."
  loc_D66776: LitStr ","
  loc_D66779: FLdRfVar var_53C
  loc_D6677C: CStrVarTmp
  loc_D6677D: FStStrNoPop var_398
  loc_D66780: ImpAdCallI2 Replace(, , , , , )
  loc_D66785: CVarStr var_558
  loc_D66788: ConcatVar var_568
  loc_D6678C: LitVarStr var_2EC, ","
  loc_D66791: ConcatVar var_578
  loc_D66795: LitI4 0
  loc_D6679A: LitI4 -1
  loc_D6679F: LitI4 1
  loc_D667A4: LitStr "."
  loc_D667A7: LitStr ","
  loc_D667AA: FLdRfVar var_594
  loc_D667AD: CStrVarTmp
  loc_D667AE: FStStrNoPop var_39C
  loc_D667B1: ImpAdCallI2 Replace(, , , , , )
  loc_D667B6: CVarStr var_5A4
  loc_D667B9: ConcatVar var_5B4
  loc_D667BD: LitVarStr var_30C, ","
  loc_D667C2: ConcatVar var_5D0
  loc_D667C6: LitI4 0
  loc_D667CB: LitI4 -1
  loc_D667D0: LitI4 1
  loc_D667D5: LitStr "."
  loc_D667D8: LitStr ","
  loc_D667DB: FLdRfVar var_5E0
  loc_D667DE: CStrVarTmp
  loc_D667DF: FStStrNoPop var_3A0
  loc_D667E2: ImpAdCallI2 Replace(, , , , , )
  loc_D667E7: CVarStr var_5F0
  loc_D667EA: ConcatVar var_60C
  loc_D667EE: LitVarStr var_33C, ","
  loc_D667F3: ConcatVar var_61C
  loc_D667F7: LitI4 0
  loc_D667FC: LitI4 -1
  loc_D66801: LitI4 1
  loc_D66806: LitStr "."
  loc_D66809: LitStr ","
  loc_D6680C: FLdRfVar var_62C
  loc_D6680F: CStrVarTmp
  loc_D66810: FStStrNoPop var_3A4
  loc_D66813: ImpAdCallI2 Replace(, , , , , )
  loc_D66818: CVarStr var_658
  loc_D6681B: ConcatVar var_668
  loc_D6681F: LitVarStr var_36C, ","
  loc_D66824: ConcatVar var_688
  loc_D66828: LitI4 0
  loc_D6682D: LitI4 -1
  loc_D66832: LitI4 1
  loc_D66837: LitStr "."
  loc_D6683A: LitStr ","
  loc_D6683D: FLdRfVar var_6B4
  loc_D66840: CStrVarTmp
  loc_D66841: FStStrNoPop var_3A8
  loc_D66844: ImpAdCallI2 Replace(, , , , , )
  loc_D66849: CVarStr var_6C4
  loc_D6684C: ConcatVar var_6E4
  loc_D66850: LitVarStr var_644, ","
  loc_D66855: ConcatVar var_710
  loc_D66859: LitI4 0
  loc_D6685E: LitI4 -1
  loc_D66863: LitI4 1
  loc_D66868: LitStr "."
  loc_D6686B: LitStr ","
  loc_D6686E: FLdRfVar var_720
  loc_D66871: CStrVarTmp
  loc_D66872: FStStrNoPop var_3AC
  loc_D66875: ImpAdCallI2 Replace(, , , , , )
  loc_D6687A: CVarStr var_730
  loc_D6687D: ConcatVar var_750
  loc_D66881: LitVarStr var_6A0, ","
  loc_D66886: ConcatVar var_760
  loc_D6688A: LitI4 0
  loc_D6688F: LitI4 -1
  loc_D66894: LitI4 1
  loc_D66899: LitStr "."
  loc_D6689C: LitStr ","
  loc_D6689F: FLdRfVar var_770
  loc_D668A2: CStrVarTmp
  loc_D668A3: FStStrNoPop var_3B0
  loc_D668A6: ImpAdCallI2 Replace(, , , , , )
  loc_D668AB: CVarStr var_790
  loc_D668AE: ConcatVar var_7A0
  loc_D668B2: LitVarStr var_6FC, ","
  loc_D668B7: ConcatVar var_7B0
  loc_D668BB: LitI4 0
  loc_D668C0: LitI4 -1
  loc_D668C5: LitI4 1
  loc_D668CA: LitStr "."
  loc_D668CD: LitStr ","
  loc_D668D0: FLdRfVar var_7D0
  loc_D668D3: CStrVarTmp
  loc_D668D4: FStStrNoPop var_3B4
  loc_D668D7: ImpAdCallI2 Replace(, , , , , )
  loc_D668DC: CVarStr var_7E0
  loc_D668DF: ConcatVar var_7F0
  loc_D668E3: LitVarStr var_780, ","
  loc_D668E8: ConcatVar var_810
  loc_D668EC: LitI4 0
  loc_D668F1: LitI4 -1
  loc_D668F6: LitI4 1
  loc_D668FB: LitStr "."
  loc_D668FE: LitStr ","
  loc_D66901: FLdRfVar var_820
  loc_D66904: CStrVarTmp
  loc_D66905: FStStrNoPop var_3B8
  loc_D66908: ImpAdCallI2 Replace(, , , , , )
  loc_D6690D: CVarStr var_830
  loc_D66910: ConcatVar var_850
  loc_D66914: LitVarStr var_800, ","
  loc_D66919: ConcatVar var_860
  loc_D6691D: LitI4 0
  loc_D66922: LitI4 -1
  loc_D66927: LitI4 1
  loc_D6692C: LitStr "."
  loc_D6692F: LitStr ","
  loc_D66932: FLdRfVar var_87C
  loc_D66935: CStrVarTmp
  loc_D66936: FStStrNoPop var_3BC
  loc_D66939: ImpAdCallI2 Replace(, , , , , )
  loc_D6693E: CVarStr var_88C
  loc_D66941: ConcatVar var_89C
  loc_D66945: LitVarStr var_8AC, ",'"
  loc_D6694A: ConcatVar var_8BC
  loc_D6694E: ImpAdLdI4 MemVar_D9302C
  loc_D66951: CVarStr var_8CC
  loc_D66954: ConcatVar var_8DC
  loc_D66958: LitVarStr var_8EC, "');"
  loc_D6695D: ConcatVar var_8FC
  loc_D66961: CStrVarTmp
  loc_D66962: FStStrNoPop var_3C0
  loc_D66965: FLdPr Me
  loc_D66968: MemStStrCopy
  loc_D6696C: FFreeStr var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1D4 = "": var_390 = "": var_394 = "": var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3A8 = "": var_3AC = "": var_3B0 = "": var_3B4 = "": var_3B8 = "": var_3BC = ""
  loc_D66995: FFreeAd var_5F4 = "": var_5F8 = "": var_5FC = "": var_630 = "": var_634 = "": var_648 = "": var_68C = "": var_690 = "": var_6A4 = "": var_6E8 = "": var_6EC = "": var_700 = "": var_864 = "": var_868 = "": var_86C = "": var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_4A0 = "": var_4A4 = "": var_4D8 = "": var_4DC = "": var_4E0 = "": var_514 = "": var_518 = "": var_51C = "": var_540 = "": var_544 = "": var_548 = "": var_57C = "": var_580 = "": var_584 = "": var_5B8 = "": var_5BC = ""
  loc_D669F2: FFreeVar var_8BC = "": var_8DC = "": var_8FC = "": var_5F0 = "": var_60C = "": var_62C = "": var_61C = "": var_658 = "": var_668 = "": var_6B4 = "": var_688 = "": var_6C4 = "": var_6E4 = "": var_720 = "": var_710 = "": var_730 = "": var_750 = "": var_770 = "": var_760 = "": var_790 = "": var_7A0 = "": var_7D0 = "": var_7B0 = "": var_7E0 = "": var_7F0 = "": var_820 = "": var_810 = "": var_830 = "": var_850 = "": var_87C = "": var_860 = "": var_88C = "": var_89C = "": var_154 = "": var_144 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = "": var_38C = "": var_47C = "": var_49C = "": var_48C = "": var_4B4 = "": var_4C4 = "": var_4F0 = "": var_4D4 = "": var_500 = "": var_510 = "": var_53C = "": var_52C = "": var_558 = "": var_568 = "": var_594 = "": var_578 = "": var_5A4 = "": var_5B4 = "": var_5E0 = ""
  loc_D66A73: FLdRfVar var_158
  loc_D66A76: FLdPr Me
  loc_D66A79: MemLdRfVar from_stack_1.global_80
  loc_D66A7C: NewIfNullPr clsctacte
  loc_D66A7F: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66A84: FLdPr var_158
  loc_D66A87: Me.MoveNext
  loc_D66A8C: FFree1Ad var_158
  loc_D66A8F: Branch loc_D65C87
  loc_D66A92: FLdRfVar var_144
  loc_D66A95: FLdRfVar var_1D0
  loc_D66A98: LitVarStr var_134, "RecaCtct"
  loc_D66A9D: PopAdLdVar
  loc_D66A9E: FLdRfVar var_1CC
  loc_D66AA1: FLdRfVar var_158
  loc_D66AA4: FLdPr Me
  loc_D66AA7: MemLdRfVar from_stack_1.global_64
  loc_D66AAA: NewIfNullPr clsctacte
  loc_D66AAD: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66AB2: FLdPr var_158
  loc_D66AB5:  = Me.Fields
  loc_D66ABA: FLdPr var_1CC
  loc_D66ABD: from_stack_2 = Me.Item(from_stack_1)
  loc_D66AC2: FLdPr var_1D0
  loc_D66AC5:  = Me.Value
  loc_D66ACA: FLdRfVar var_144
  loc_D66ACD: FnCDblVar
  loc_D66ACF: LitI2_Byte 0
  loc_D66AD1: CR8I2
  loc_D66AD2: GtR4
  loc_D66AD3: FFreeAd var_158 = "": var_1CC = ""
  loc_D66ADC: FFree1Var var_144 = ""
  loc_D66ADF: BranchF loc_D66B95
  loc_D66AE2: FLdRfVar var_144
  loc_D66AE5: FLdRfVar var_1D0
  loc_D66AE8: LitVarStr var_134, "RecaCtct"
  loc_D66AED: PopAdLdVar
  loc_D66AEE: FLdRfVar var_1CC
  loc_D66AF1: FLdRfVar var_158
  loc_D66AF4: FLdPr Me
  loc_D66AF7: MemLdRfVar from_stack_1.global_64
  loc_D66AFA: NewIfNullPr clsctacte
  loc_D66AFD: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66B02: FLdPr var_158
  loc_D66B05:  = Me.Fields
  loc_D66B0A: FLdPr var_1CC
  loc_D66B0D: from_stack_2 = Me.Item(from_stack_1)
  loc_D66B12: FLdPr var_1D0
  loc_D66B15:  = Me.Value
  loc_D66B1A: FLdRfVar var_154
  loc_D66B1D: FLdRfVar var_1E0
  loc_D66B20: LitVarStr var_168, "RecaDefa"
  loc_D66B25: PopAdLdVar
  loc_D66B26: FLdRfVar var_1DC
  loc_D66B29: FLdRfVar var_1D8
  loc_D66B2C: FLdPr Me
  loc_D66B2F: MemLdRfVar from_stack_1.global_56
  loc_D66B32: NewIfNullPr clsctacte
  loc_D66B35: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66B3A: FLdPr var_1D8
  loc_D66B3D:  = Me.Fields
  loc_D66B42: FLdPr var_1DC
  loc_D66B45: from_stack_2 = Me.Item(from_stack_1)
  loc_D66B4A: FLdPr var_1E0
  loc_D66B4D:  = Me.Value
  loc_D66B52: LitI4 2
  loc_D66B57: FLdRfVar var_144
  loc_D66B5A: FnCDblVar
  loc_D66B5C: FLdRfVar var_154
  loc_D66B5F: FnCDblVar
  loc_D66B61: AddR8
  loc_D66B62: CVarR8
  loc_D66B66: FLdRfVar var_1A8
  loc_D66B69: ImpAdCallFPR4  = Round(, )
  loc_D66B6E: FLdRfVar var_1A8
  loc_D66B71: CR4Var
  loc_D66B72: FLdPr Me
  loc_D66B75: MemStFPR8 global_144
  loc_D66B78: FFreeAd var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = ""
  loc_D66B87: FFreeVar var_144 = "": var_154 = "": var_188 = ""
  loc_D66B92: Branch loc_D66BE4
  loc_D66B95: FLdRfVar var_144
  loc_D66B98: FLdRfVar var_1D0
  loc_D66B9B: LitVarStr var_134, "RecaDefa"
  loc_D66BA0: PopAdLdVar
  loc_D66BA1: FLdRfVar var_1CC
  loc_D66BA4: FLdRfVar var_158
  loc_D66BA7: FLdPr Me
  loc_D66BAA: MemLdRfVar from_stack_1.global_56
  loc_D66BAD: NewIfNullPr clsctacte
  loc_D66BB0: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66BB5: FLdPr var_158
  loc_D66BB8:  = Me.Fields
  loc_D66BBD: FLdPr var_1CC
  loc_D66BC0: from_stack_2 = Me.Item(from_stack_1)
  loc_D66BC5: FLdPr var_1D0
  loc_D66BC8:  = Me.Value
  loc_D66BCD: FLdRfVar var_144
  loc_D66BD0: FnCDblVar
  loc_D66BD2: FLdPr Me
  loc_D66BD5: MemStFPR8 global_144
  loc_D66BD8: FFreeAd var_158 = "": var_1CC = ""
  loc_D66BE1: FFree1Var var_144 = ""
  loc_D66BE4: FLdRfVar var_144
  loc_D66BE7: FLdRfVar var_1D0
  loc_D66BEA: LitVarStr var_134, "InteDefa"
  loc_D66BEF: PopAdLdVar
  loc_D66BF0: FLdRfVar var_1CC
  loc_D66BF3: FLdRfVar var_158
  loc_D66BF6: FLdPr Me
  loc_D66BF9: MemLdRfVar from_stack_1.global_56
  loc_D66BFC: NewIfNullPr clsctacte
  loc_D66BFF: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66C04: FLdPr var_158
  loc_D66C07:  = Me.Fields
  loc_D66C0C: FLdPr var_1CC
  loc_D66C0F: from_stack_2 = Me.Item(from_stack_1)
  loc_D66C14: FLdPr var_1D0
  loc_D66C17:  = Me.Value
  loc_D66C1C: FLdRfVar var_144
  loc_D66C1F: FnCDblVar
  loc_D66C21: FLdPr Me
  loc_D66C24: MemStFPR8 global_168
  loc_D66C27: FFreeAd var_158 = "": var_1CC = ""
  loc_D66C30: FFree1Var var_144 = ""
  loc_D66C33: FLdRfVar var_144
  loc_D66C36: FLdRfVar var_1D0
  loc_D66C39: LitVarStr var_134, "DecaDefa"
  loc_D66C3E: PopAdLdVar
  loc_D66C3F: FLdRfVar var_1CC
  loc_D66C42: FLdRfVar var_158
  loc_D66C45: FLdPr Me
  loc_D66C48: MemLdRfVar from_stack_1.global_56
  loc_D66C4B: NewIfNullPr clsctacte
  loc_D66C4E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66C53: FLdPr var_158
  loc_D66C56:  = Me.Fields
  loc_D66C5B: FLdPr var_1CC
  loc_D66C5E: from_stack_2 = Me.Item(from_stack_1)
  loc_D66C63: FLdPr var_1D0
  loc_D66C66:  = Me.Value
  loc_D66C6B: FLdRfVar var_144
  loc_D66C6E: FnCDblVar
  loc_D66C70: FLdPr Me
  loc_D66C73: MemStFPR8 global_128
  loc_D66C76: FFreeAd var_158 = "": var_1CC = ""
  loc_D66C7F: FFree1Var var_144 = ""
  loc_D66C82: FLdRfVar var_144
  loc_D66C85: FLdRfVar var_1D0
  loc_D66C88: LitVarStr var_134, "DereDefa"
  loc_D66C8D: PopAdLdVar
  loc_D66C8E: FLdRfVar var_1CC
  loc_D66C91: FLdRfVar var_158
  loc_D66C94: FLdPr Me
  loc_D66C97: MemLdRfVar from_stack_1.global_56
  loc_D66C9A: NewIfNullPr clsctacte
  loc_D66C9D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66CA2: FLdPr var_158
  loc_D66CA5:  = Me.Fields
  loc_D66CAA: FLdPr var_1CC
  loc_D66CAD: from_stack_2 = Me.Item(from_stack_1)
  loc_D66CB2: FLdPr var_1D0
  loc_D66CB5:  = Me.Value
  loc_D66CBA: FLdRfVar var_144
  loc_D66CBD: FnCDblVar
  loc_D66CBF: FLdPr Me
  loc_D66CC2: MemStFPR8 global_136
  loc_D66CC5: FFreeAd var_158 = "": var_1CC = ""
  loc_D66CCE: FFree1Var var_144 = ""
  loc_D66CD1: FLdRfVar var_144
  loc_D66CD4: FLdRfVar var_1D0
  loc_D66CD7: LitVarStr var_134, "CapiDefa"
  loc_D66CDC: PopAdLdVar
  loc_D66CDD: FLdRfVar var_1CC
  loc_D66CE0: FLdRfVar var_158
  loc_D66CE3: FLdPr Me
  loc_D66CE6: MemLdRfVar from_stack_1.global_56
  loc_D66CE9: NewIfNullPr clsctacte
  loc_D66CEC: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66CF1: FLdPr var_158
  loc_D66CF4:  = Me.Fields
  loc_D66CF9: FLdPr var_1CC
  loc_D66CFC: from_stack_2 = Me.Item(from_stack_1)
  loc_D66D01: FLdPr var_1D0
  loc_D66D04:  = Me.Value
  loc_D66D09: FLdRfVar var_144
  loc_D66D0C: FnCDblVar
  loc_D66D0E: FStFPR8 var_D0
  loc_D66D11: FFreeAd var_158 = "": var_1CC = ""
  loc_D66D1A: FFree1Var var_144 = ""
  loc_D66D1D: LitStr "SELECT * FROM facictacte "
  loc_D66D20: LitStr " WHERE CodiFapa = "
  loc_D66D23: ConcatStr
  loc_D66D24: CVarStr var_154
  loc_D66D27: FLdRfVar var_144
  loc_D66D2A: FLdRfVar var_1D0
  loc_D66D2D: LitVarStr var_134, "CodiFapa"
  loc_D66D32: PopAdLdVar
  loc_D66D33: FLdRfVar var_1CC
  loc_D66D36: FLdRfVar var_158
  loc_D66D39: FLdPr Me
  loc_D66D3C: MemLdRfVar from_stack_1.global_64
  loc_D66D3F: NewIfNullPr clsctacte
  loc_D66D42: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66D47: FLdPr var_158
  loc_D66D4A:  = Me.Fields
  loc_D66D4F: FLdPr var_1CC
  loc_D66D52: from_stack_2 = Me.Item(from_stack_1)
  loc_D66D57: FLdPr var_1D0
  loc_D66D5A:  = Me.Value
  loc_D66D5F: FLdRfVar var_144
  loc_D66D62: ConcatVar var_188
  loc_D66D66: LitVarStr var_168, " AND CuotDefa = "
  loc_D66D6B: ConcatVar var_1A8
  loc_D66D6F: FLdRfVar var_20C
  loc_D66D72: FLdRfVar var_1E0
  loc_D66D75: LitVarStr var_178, "CuotDefa"
  loc_D66D7A: PopAdLdVar
  loc_D66D7B: FLdRfVar var_1DC
  loc_D66D7E: FLdRfVar var_1D8
  loc_D66D81: FLdPr Me
  loc_D66D84: MemLdRfVar from_stack_1.global_64
  loc_D66D87: NewIfNullPr clsctacte
  loc_D66D8A: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66D8F: FLdPr var_1D8
  loc_D66D92:  = Me.Fields
  loc_D66D97: FLdPr var_1DC
  loc_D66D9A: from_stack_2 = Me.Item(from_stack_1)
  loc_D66D9F: FLdPr var_1E0
  loc_D66DA2:  = Me.Value
  loc_D66DA7: FLdRfVar var_20C
  loc_D66DAA: ConcatVar var_21C
  loc_D66DAE: LitVarStr var_198, " AND SaldFacc > 0"
  loc_D66DB3: ConcatVar var_22C
  loc_D66DB7: LitVarStr var_23C, " ORDER BY CodiFapa, CuotDefa, CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_D66DBC: ConcatVar var_24C
  loc_D66DC0: CStrVarVal var_1B0
  loc_D66DC4: FLdPr Me
  loc_D66DC7: MemLdRfVar from_stack_1.global_80
  loc_D66DCA: NewIfNullPr clsctacte
  loc_D66DCD: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D66DD2: FFree1Str var_1B0
  loc_D66DD5: FFreeAd var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = ""
  loc_D66DE4: FFreeVar var_154 = "": var_144 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = ""
  loc_D66DF7: FLdRfVar var_1C4
  loc_D66DFA: FLdPr Me
  loc_D66DFD: MemLdRfVar from_stack_1.global_80
  loc_D66E00: NewIfNullPr clsctacte
  loc_D66E03: from_stack_1 = clsctacte.RecordCount
  loc_D66E08: ILdRf var_1C4
  loc_D66E0B: LitI4 0
  loc_D66E10: GtI4
  loc_D66E11: BranchF loc_D67B47
  loc_D66E14: FLdPr Me
  loc_D66E17: MemLdRfVar from_stack_1.global_80
  loc_D66E1A: NewIfNullPr clsctacte
  loc_D66E1D: Call clsctacte.MoveFirst()
  loc_D66E22: FLdRfVar var_1C6
  loc_D66E25: FLdPr Me
  loc_D66E28: MemLdRfVar from_stack_1.global_80
  loc_D66E2B: NewIfNullPr clsctacte
  loc_D66E2E: from_stack_1 = clsctacte.EOF
  loc_D66E33: FLdI2 var_1C6
  loc_D66E36: NotI4
  loc_D66E37: BranchF loc_D67B47
  loc_D66E3A: FLdRfVar var_144
  loc_D66E3D: FLdRfVar var_1D0
  loc_D66E40: LitVarStr var_134, "SaldFacc"
  loc_D66E45: PopAdLdVar
  loc_D66E46: FLdRfVar var_1CC
  loc_D66E49: FLdRfVar var_158
  loc_D66E4C: FLdPr Me
  loc_D66E4F: MemLdRfVar from_stack_1.global_80
  loc_D66E52: NewIfNullPr clsctacte
  loc_D66E55: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66E5A: FLdPr var_158
  loc_D66E5D:  = Me.Fields
  loc_D66E62: FLdPr var_1CC
  loc_D66E65: from_stack_2 = Me.Item(from_stack_1)
  loc_D66E6A: FLdPr var_1D0
  loc_D66E6D:  = Me.Value
  loc_D66E72: FLdRfVar var_144
  loc_D66E75: FnCDblVar
  loc_D66E77: FStFPR8 var_D8
  loc_D66E7A: FFreeAd var_158 = "": var_1CC = ""
  loc_D66E83: FFree1Var var_144 = ""
  loc_D66E86: FLdRfVar var_144
  loc_D66E89: FLdRfVar var_1D0
  loc_D66E8C: LitVarStr var_134, "SaldFacc"
  loc_D66E91: PopAdLdVar
  loc_D66E92: FLdRfVar var_1CC
  loc_D66E95: FLdRfVar var_158
  loc_D66E98: FLdPr Me
  loc_D66E9B: MemLdRfVar from_stack_1.global_80
  loc_D66E9E: NewIfNullPr clsctacte
  loc_D66EA1: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66EA6: FLdPr var_158
  loc_D66EA9:  = Me.Fields
  loc_D66EAE: FLdPr var_1CC
  loc_D66EB1: from_stack_2 = Me.Item(from_stack_1)
  loc_D66EB6: FLdPr var_1D0
  loc_D66EB9:  = Me.Value
  loc_D66EBE: FLdRfVar var_144
  loc_D66EC1: FnCDblVar
  loc_D66EC3: FStFPR8 var_D0
  loc_D66EC6: FFreeAd var_158 = "": var_1CC = ""
  loc_D66ECF: FFree1Var var_144 = ""
  loc_D66ED2: FLdFPR8 var_D0
  loc_D66ED5: LitI2_Byte 0
  loc_D66ED7: CR8I2
  loc_D66ED8: GtR4
  loc_D66ED9: FLdPr Me
  loc_D66EDC: MemLdFPR8 global_144
  loc_D66EDF: LitI2_Byte 0
  loc_D66EE1: CR8I2
  loc_D66EE2: GtR4
  loc_D66EE3: OrI4
  loc_D66EE4: FLdPr Me
  loc_D66EE7: MemLdFPR8 global_168
  loc_D66EEA: LitI2_Byte 0
  loc_D66EEC: CR8I2
  loc_D66EED: GtR4
  loc_D66EEE: OrI4
  loc_D66EEF: BranchF loc_D67B36
  loc_D66EF2: FLdRfVar var_144
  loc_D66EF5: FLdRfVar var_1D0
  loc_D66EF8: LitVarStr var_134, "PeriCtct"
  loc_D66EFD: PopAdLdVar
  loc_D66EFE: FLdRfVar var_1CC
  loc_D66F01: FLdRfVar var_158
  loc_D66F04: FLdPr Me
  loc_D66F07: MemLdRfVar from_stack_1.global_80
  loc_D66F0A: NewIfNullPr clsctacte
  loc_D66F0D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66F12: FLdPr var_158
  loc_D66F15:  = Me.Fields
  loc_D66F1A: FLdPr var_1CC
  loc_D66F1D: from_stack_2 = Me.Item(from_stack_1)
  loc_D66F22: FLdPr var_1D0
  loc_D66F25:  = Me.Value
  loc_D66F2A: FLdRfVar var_154
  loc_D66F2D: FLdRfVar var_1E0
  loc_D66F30: LitVarStr var_168, "BimeCtct"
  loc_D66F35: PopAdLdVar
  loc_D66F36: FLdRfVar var_1DC
  loc_D66F39: FLdRfVar var_1D8
  loc_D66F3C: FLdPr Me
  loc_D66F3F: MemLdRfVar from_stack_1.global_80
  loc_D66F42: NewIfNullPr clsctacte
  loc_D66F45: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66F4A: FLdPr var_1D8
  loc_D66F4D:  = Me.Fields
  loc_D66F52: FLdPr var_1DC
  loc_D66F55: from_stack_2 = Me.Item(from_stack_1)
  loc_D66F5A: FLdPr var_1E0
  loc_D66F5D:  = Me.Value
  loc_D66F62: FLdRfVar var_188
  loc_D66F65: FLdRfVar var_1EC
  loc_D66F68: LitVarStr var_178, "NumeCtct"
  loc_D66F6D: PopAdLdVar
  loc_D66F6E: FLdRfVar var_1E8
  loc_D66F71: FLdRfVar var_1E4
  loc_D66F74: FLdPr Me
  loc_D66F77: MemLdRfVar from_stack_1.global_80
  loc_D66F7A: NewIfNullPr clsctacte
  loc_D66F7D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66F82: FLdPr var_1E4
  loc_D66F85:  = Me.Fields
  loc_D66F8A: FLdPr var_1E8
  loc_D66F8D: from_stack_2 = Me.Item(from_stack_1)
  loc_D66F92: FLdPr var_1EC
  loc_D66F95:  = Me.Value
  loc_D66F9A: FLdRfVar var_1A8
  loc_D66F9D: FLdRfVar var_1F8
  loc_D66FA0: LitVarStr var_198, "MoviCtct"
  loc_D66FA5: PopAdLdVar
  loc_D66FA6: FLdRfVar var_1F4
  loc_D66FA9: FLdRfVar var_1F0
  loc_D66FAC: FLdPr Me
  loc_D66FAF: MemLdRfVar from_stack_1.global_80
  loc_D66FB2: NewIfNullPr clsctacte
  loc_D66FB5: from_stack_1v = clsctacte.RsFrmGet()
  loc_D66FBA: FLdPr var_1F0
  loc_D66FBD:  = Me.Fields
  loc_D66FC2: FLdPr var_1F4
  loc_D66FC5: from_stack_2 = Me.Item(from_stack_1)
  loc_D66FCA: FLdPr var_1F8
  loc_D66FCD:  = Me.Value
  loc_D66FD2: FLdRfVar var_1A8
  loc_D66FD5: CI2Var
  loc_D66FD6: FLdRfVar var_188
  loc_D66FD9: CI4Var
  loc_D66FDB: FLdRfVar var_154
  loc_D66FDE: CI2Var
  loc_D66FDF: FLdRfVar var_144
  loc_D66FE2: CI2Var
  loc_D66FE3: ILdRf var_8C
  loc_D66FE6: FLdI2 var_86
  loc_D66FE9: ImpAdCallI2 Proc_270_127_ACCCB4(, , , , , )
  loc_D66FEE: FStI2 var_DA
  loc_D66FF1: FFreeAd var_158 = "": var_1CC = "": var_1D8 = "": var_1DC = "": var_1E4 = "": var_1E8 = "": var_1F0 = "": var_1F4 = "": var_1D0 = "": var_1E0 = "": var_1EC = ""
  loc_D6700C: FFreeVar var_144 = "": var_154 = "": var_188 = ""
  loc_D67017: LitI4 2
  loc_D6701C: FLdFPR8 var_D8
  loc_D6701F: FLdPr Me
  loc_D67022: MemLdFPR8 global_128
  loc_D67025: SubR4
  loc_D67026: FLdPr Me
  loc_D67029: MemLdFPR8 global_144
  loc_D6702C: AddR8
  loc_D6702D: FLdPr Me
  loc_D67030: MemLdFPR8 global_136
  loc_D67033: SubR4
  loc_D67034: FLdPr Me
  loc_D67037: MemLdFPR8 global_168
  loc_D6703A: AddR8
  loc_D6703B: CVarR8
  loc_D6703F: FLdRfVar var_154
  loc_D67042: ImpAdCallFPR4  = Round(, )
  loc_D67047: FLdRfVar var_154
  loc_D6704A: CR4Var
  loc_D6704B: FLdPr Me
  loc_D6704E: MemStFPR8 global_176
  loc_D67051: FFreeVar var_144 = ""
  loc_D67058: LitStr "SELECT * FROM ctacte "
  loc_D6705B: LitStr " WHERE ctacte.CodiOfic = "
  loc_D6705E: ConcatStr
  loc_D6705F: CVarStr var_154
  loc_D67062: FLdRfVar var_144
  loc_D67065: FLdRfVar var_1D0
  loc_D67068: LitVarStr var_134, "CodiOfic"
  loc_D6706D: PopAdLdVar
  loc_D6706E: FLdRfVar var_1CC
  loc_D67071: FLdRfVar var_158
  loc_D67074: FLdPr Me
  loc_D67077: MemLdRfVar from_stack_1.global_80
  loc_D6707A: NewIfNullPr clsctacte
  loc_D6707D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D67082: FLdPr var_158
  loc_D67085:  = Me.Fields
  loc_D6708A: FLdPr var_1CC
  loc_D6708D: from_stack_2 = Me.Item(from_stack_1)
  loc_D67092: FLdPr var_1D0
  loc_D67095:  = Me.Value
  loc_D6709A: FLdRfVar var_144
  loc_D6709D: ConcatVar var_188
  loc_D670A1: LitVarStr var_168, " AND ctacte.CuenCtct = '"
  loc_D670A6: ConcatVar var_1A8
  loc_D670AA: FLdRfVar var_20C
  loc_D670AD: FLdRfVar var_1E0
  loc_D670B0: LitVarStr var_178, "CuenCtct"
  loc_D670B5: PopAdLdVar
  loc_D670B6: FLdRfVar var_1DC
  loc_D670B9: FLdRfVar var_1D8
  loc_D670BC: FLdPr Me
  loc_D670BF: MemLdRfVar from_stack_1.global_80
  loc_D670C2: NewIfNullPr clsctacte
  loc_D670C5: from_stack_1v = clsctacte.RsFrmGet()
  loc_D670CA: FLdPr var_1D8
  loc_D670CD:  = Me.Fields
  loc_D670D2: FLdPr var_1DC
  loc_D670D5: from_stack_2 = Me.Item(from_stack_1)
  loc_D670DA: FLdPr var_1E0
  loc_D670DD:  = Me.Value
  loc_D670E2: FLdRfVar var_20C
  loc_D670E5: ConcatVar var_21C
  loc_D670E9: LitVarStr var_198, "'"
  loc_D670EE: ConcatVar var_22C
  loc_D670F2: LitVarStr var_23C, " AND ctacte.PeriCtct = "
  loc_D670F7: ConcatVar var_24C
  loc_D670FB: FLdRfVar var_32C
  loc_D670FE: FLdRfVar var_1EC
  loc_D67101: LitVarStr var_25C, "PeriCtct"
  loc_D67106: PopAdLdVar
  loc_D67107: FLdRfVar var_1E8
  loc_D6710A: FLdRfVar var_1E4
  loc_D6710D: FLdPr Me
  loc_D67110: MemLdRfVar from_stack_1.global_80
  loc_D67113: NewIfNullPr clsctacte
  loc_D67116: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6711B: FLdPr var_1E4
  loc_D6711E:  = Me.Fields
  loc_D67123: FLdPr var_1E8
  loc_D67126: from_stack_2 = Me.Item(from_stack_1)
  loc_D6712B: FLdPr var_1EC
  loc_D6712E:  = Me.Value
  loc_D67133: FLdRfVar var_32C
  loc_D67136: ConcatVar var_35C
  loc_D6713A: LitVarStr var_26C, " AND ctacte.BimeCtct = "
  loc_D6713F: ConcatVar var_38C
  loc_D67143: FLdRfVar var_47C
  loc_D67146: FLdRfVar var_1F8
  loc_D67149: LitVarStr var_27C, "BimeCtct"
  loc_D6714E: PopAdLdVar
  loc_D6714F: FLdRfVar var_1F4
  loc_D67152: FLdRfVar var_1F0
  loc_D67155: FLdPr Me
  loc_D67158: MemLdRfVar from_stack_1.global_80
  loc_D6715B: NewIfNullPr clsctacte
  loc_D6715E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D67163: FLdPr var_1F0
  loc_D67166:  = Me.Fields
  loc_D6716B: FLdPr var_1F4
  loc_D6716E: from_stack_2 = Me.Item(from_stack_1)
  loc_D67173: FLdPr var_1F8
  loc_D67176:  = Me.Value
  loc_D6717B: FLdRfVar var_47C
  loc_D6717E: ConcatVar var_48C
  loc_D67182: LitVarStr var_28C, " AND ctacte.NumeCtct = "
  loc_D67187: ConcatVar var_49C
  loc_D6718B: FLdRfVar var_4B4
  loc_D6718E: FLdRfVar var_4A4
  loc_D67191: LitVarStr var_29C, "NumeCtct"
  loc_D67196: PopAdLdVar
  loc_D67197: FLdRfVar var_4A0
  loc_D6719A: FLdRfVar var_1FC
  loc_D6719D: FLdPr Me
  loc_D671A0: MemLdRfVar from_stack_1.global_80
  loc_D671A3: NewIfNullPr clsctacte
  loc_D671A6: from_stack_1v = clsctacte.RsFrmGet()
  loc_D671AB: FLdPr var_1FC
  loc_D671AE:  = Me.Fields
  loc_D671B3: FLdPr var_4A0
  loc_D671B6: from_stack_2 = Me.Item(from_stack_1)
  loc_D671BB: FLdPr var_4A4
  loc_D671BE:  = Me.Value
  loc_D671C3: FLdRfVar var_4B4
  loc_D671C6: ConcatVar var_4C4
  loc_D671CA: LitVarStr var_2AC, " AND ctacte.MoviCtct = "
  loc_D671CF: ConcatVar var_4D4
  loc_D671D3: FLdRfVar var_4F0
  loc_D671D6: FLdRfVar var_4E0
  loc_D671D9: LitVarStr var_2BC, "MoviCtct"
  loc_D671DE: PopAdLdVar
  loc_D671DF: FLdRfVar var_4DC
  loc_D671E2: FLdRfVar var_4D8
  loc_D671E5: FLdPr Me
  loc_D671E8: MemLdRfVar from_stack_1.global_80
  loc_D671EB: NewIfNullPr clsctacte
  loc_D671EE: from_stack_1v = clsctacte.RsFrmGet()
  loc_D671F3: FLdPr var_4D8
  loc_D671F6:  = Me.Fields
  loc_D671FB: FLdPr var_4DC
  loc_D671FE: from_stack_2 = Me.Item(from_stack_1)
  loc_D67203: FLdPr var_4E0
  loc_D67206:  = Me.Value
  loc_D6720B: FLdRfVar var_4F0
  loc_D6720E: ConcatVar var_500
  loc_D67212: LitVarStr var_2CC, " ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.MoviCtct"
  loc_D67217: ConcatVar var_510
  loc_D6721B: CStrVarVal var_1B0
  loc_D6721F: FLdPr Me
  loc_D67222: MemLdRfVar from_stack_1.global_84
  loc_D67225: NewIfNullPr clsctacte
  loc_D67228: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D6722D: FFree1Str var_1B0
  loc_D67230: FFreeAd var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_4A0 = "": var_4A4 = "": var_4D8 = "": var_4DC = ""
  loc_D67257: FFreeVar var_154 = "": var_144 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = "": var_38C = "": var_47C = "": var_48C = "": var_49C = "": var_4B4 = "": var_4C4 = "": var_4D4 = "": var_4F0 = "": var_500 = ""
  loc_D67282: FLdRfVar var_1C4
  loc_D67285: FLdPr Me
  loc_D67288: MemLdRfVar from_stack_1.global_84
  loc_D6728B: NewIfNullPr clsctacte
  loc_D6728E: from_stack_1 = clsctacte.RecordCount
  loc_D67293: ILdRf var_1C4
  loc_D67296: LitI4 1
  loc_D6729B: EqI4
  loc_D6729C: BranchF loc_D67B06
  loc_D6729F: FLdPr Me
  loc_D672A2: MemLdStr global_260
  loc_D672A5: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, ApreDebo, TotaDebo) "
  loc_D672A8: ConcatStr
  loc_D672A9: FStStrNoPop var_1B0
  loc_D672AC: LitStr " VALUES ("
  loc_D672AF: ConcatStr
  loc_D672B0: FStStrNoPop var_1B4
  loc_D672B3: FLdI2 var_86
  loc_D672B6: CStrUI1
  loc_D672B8: FStStrNoPop var_1B8
  loc_D672BB: ConcatStr
  loc_D672BC: FStStrNoPop var_1BC
  loc_D672BF: LitStr ","
  loc_D672C2: ConcatStr
  loc_D672C3: FStStrNoPop var_1C0
  loc_D672C6: ILdRf var_8C
  loc_D672C9: CStrI4
  loc_D672CB: FStStrNoPop var_1D4
  loc_D672CE: ConcatStr
  loc_D672CF: FStStrNoPop var_390
  loc_D672D2: LitStr ","
  loc_D672D5: ConcatStr
  loc_D672D6: CVarStr var_154
  loc_D672D9: FLdRfVar var_144
  loc_D672DC: FLdRfVar var_1D0
  loc_D672DF: LitVarStr var_134, "PeriCtct"
  loc_D672E4: PopAdLdVar
  loc_D672E5: FLdRfVar var_1CC
  loc_D672E8: FLdRfVar var_158
  loc_D672EB: FLdPr Me
  loc_D672EE: MemLdRfVar from_stack_1.global_84
  loc_D672F1: NewIfNullPr clsctacte
  loc_D672F4: from_stack_1v = clsctacte.RsFrmGet()
  loc_D672F9: FLdPr var_158
  loc_D672FC:  = Me.Fields
  loc_D67301: FLdPr var_1CC
  loc_D67304: from_stack_2 = Me.Item(from_stack_1)
  loc_D67309: FLdPr var_1D0
  loc_D6730C:  = Me.Value
  loc_D67311: FLdRfVar var_144
  loc_D67314: ConcatVar var_188
  loc_D67318: LitVarStr var_168, ","
  loc_D6731D: ConcatVar var_1A8
  loc_D67321: FLdRfVar var_20C
  loc_D67324: FLdRfVar var_1E0
  loc_D67327: LitVarStr var_178, "BimeCtct"
  loc_D6732C: PopAdLdVar
  loc_D6732D: FLdRfVar var_1DC
  loc_D67330: FLdRfVar var_1D8
  loc_D67333: FLdPr Me
  loc_D67336: MemLdRfVar from_stack_1.global_84
  loc_D67339: NewIfNullPr clsctacte
  loc_D6733C: from_stack_1v = clsctacte.RsFrmGet()
  loc_D67341: FLdPr var_1D8
  loc_D67344:  = Me.Fields
  loc_D67349: FLdPr var_1DC
  loc_D6734C: from_stack_2 = Me.Item(from_stack_1)
  loc_D67351: FLdPr var_1E0
  loc_D67354:  = Me.Value
  loc_D67359: FLdRfVar var_20C
  loc_D6735C: ConcatVar var_21C
  loc_D67360: LitVarStr var_198, ","
  loc_D67365: ConcatVar var_22C
  loc_D67369: FLdRfVar var_24C
  loc_D6736C: FLdRfVar var_1EC
  loc_D6736F: LitVarStr var_23C, "NumeCtct"
  loc_D67374: PopAdLdVar
  loc_D67375: FLdRfVar var_1E8
  loc_D67378: FLdRfVar var_1E4
  loc_D6737B: FLdPr Me
  loc_D6737E: MemLdRfVar from_stack_1.global_84
  loc_D67381: NewIfNullPr clsctacte
  loc_D67384: from_stack_1v = clsctacte.RsFrmGet()
  loc_D67389: FLdPr var_1E4
  loc_D6738C:  = Me.Fields
  loc_D67391: FLdPr var_1E8
  loc_D67394: from_stack_2 = Me.Item(from_stack_1)
  loc_D67399: FLdPr var_1EC
  loc_D6739C:  = Me.Value
  loc_D673A1: FLdRfVar var_24C
  loc_D673A4: ConcatVar var_32C
  loc_D673A8: LitVarStr var_25C, ","
  loc_D673AD: ConcatVar var_35C
  loc_D673B1: FLdRfVar var_38C
  loc_D673B4: FLdRfVar var_1F8
  loc_D673B7: LitVarStr var_26C, "MoviCtct"
  loc_D673BC: PopAdLdVar
  loc_D673BD: FLdRfVar var_1F4
  loc_D673C0: FLdRfVar var_1F0
  loc_D673C3: FLdPr Me
  loc_D673C6: MemLdRfVar from_stack_1.global_84
  loc_D673C9: NewIfNullPr clsctacte
  loc_D673CC: from_stack_1v = clsctacte.RsFrmGet()
  loc_D673D1: FLdPr var_1F0
  loc_D673D4:  = Me.Fields
  loc_D673D9: FLdPr var_1F4
  loc_D673DC: from_stack_2 = Me.Item(from_stack_1)
  loc_D673E1: FLdPr var_1F8
  loc_D673E4:  = Me.Value
  loc_D673E9: FLdRfVar var_38C
  loc_D673EC: ConcatVar var_47C
  loc_D673F0: LitVarStr var_27C, ","
  loc_D673F5: ConcatVar var_48C
  loc_D673F9: FLdI2 var_DA
  loc_D673FC: CVarI2 var_28C
  loc_D673FF: ConcatVar var_49C
  loc_D67403: LitVarStr var_29C, ","
  loc_D67408: ConcatVar var_4B4
  loc_D6740C: FLdRfVar var_4C4
  loc_D6740F: FLdRfVar var_4A4
  loc_D67412: LitVarStr var_2AC, "CodiOfic"
  loc_D67417: PopAdLdVar
  loc_D67418: FLdRfVar var_4A0
  loc_D6741B: FLdRfVar var_1FC
  loc_D6741E: FLdPr Me
  loc_D67421: MemLdRfVar from_stack_1.global_84
  loc_D67424: NewIfNullPr clsctacte
  loc_D67427: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6742C: FLdPr var_1FC
  loc_D6742F:  = Me.Fields
  loc_D67434: FLdPr var_4A0
  loc_D67437: from_stack_2 = Me.Item(from_stack_1)
  loc_D6743C: FLdPr var_4A4
  loc_D6743F:  = Me.Value
  loc_D67444: FLdRfVar var_4C4
  loc_D67447: ConcatVar var_4D4
  loc_D6744B: LitVarStr var_2BC, ",'"
  loc_D67450: ConcatVar var_4F0
  loc_D67454: FLdRfVar var_500
  loc_D67457: FLdRfVar var_4E0
  loc_D6745A: LitVarStr var_2CC, "CuenCtct"
  loc_D6745F: PopAdLdVar
  loc_D67460: FLdRfVar var_4DC
  loc_D67463: FLdRfVar var_4D8
  loc_D67466: FLdPr Me
  loc_D67469: MemLdRfVar from_stack_1.global_84
  loc_D6746C: NewIfNullPr clsctacte
  loc_D6746F: from_stack_1v = clsctacte.RsFrmGet()
  loc_D67474: FLdPr var_4D8
  loc_D67477:  = Me.Fields
  loc_D6747C: FLdPr var_4DC
  loc_D6747F: from_stack_2 = Me.Item(from_stack_1)
  loc_D67484: FLdPr var_4E0
  loc_D67487:  = Me.Value
  loc_D6748C: FLdRfVar var_500
  loc_D6748F: ConcatVar var_510
  loc_D67493: LitVarStr var_2DC, "','"
  loc_D67498: ConcatVar var_52C
  loc_D6749C: FLdRfVar var_53C
  loc_D6749F: FLdRfVar var_51C
  loc_D674A2: LitVarStr var_2EC, "TipoCtct"
  loc_D674A7: PopAdLdVar
  loc_D674A8: FLdRfVar var_518
  loc_D674AB: FLdRfVar var_514
  loc_D674AE: FLdPr Me
  loc_D674B1: MemLdRfVar from_stack_1.global_84
  loc_D674B4: NewIfNullPr clsctacte
  loc_D674B7: from_stack_1v = clsctacte.RsFrmGet()
  loc_D674BC: FLdPr var_514
  loc_D674BF:  = Me.Fields
  loc_D674C4: FLdPr var_518
  loc_D674C7: from_stack_2 = Me.Item(from_stack_1)
  loc_D674CC: FLdPr var_51C
  loc_D674CF:  = Me.Value
  loc_D674D4: FLdRfVar var_53C
  loc_D674D7: ConcatVar var_558
  loc_D674DB: LitVarStr var_2FC, "',"
  loc_D674E0: ConcatVar var_568
  loc_D674E4: FLdRfVar var_578
  loc_D674E7: FLdRfVar var_548
  loc_D674EA: LitVarStr var_30C, "CodiFapa"
  loc_D674EF: PopAdLdVar
  loc_D674F0: FLdRfVar var_544
  loc_D674F3: FLdRfVar var_540
  loc_D674F6: FLdPr Me
  loc_D674F9: MemLdRfVar from_stack_1.global_80
  loc_D674FC: NewIfNullPr clsctacte
  loc_D674FF: from_stack_1v = clsctacte.RsFrmGet()
  loc_D67504: FLdPr var_540
  loc_D67507:  = Me.Fields
  loc_D6750C: FLdPr var_544
  loc_D6750F: from_stack_2 = Me.Item(from_stack_1)
  loc_D67514: FLdPr var_548
  loc_D67517:  = Me.Value
  loc_D6751C: FLdRfVar var_578
  loc_D6751F: ConcatVar var_594
  loc_D67523: LitVarStr var_31C, ","
  loc_D67528: ConcatVar var_5A4
  loc_D6752C: FLdRfVar var_5B4
  loc_D6752F: FLdRfVar var_584
  loc_D67532: LitVarStr var_33C, "CuotDefa"
  loc_D67537: PopAdLdVar
  loc_D67538: FLdRfVar var_580
  loc_D6753B: FLdRfVar var_57C
  loc_D6753E: FLdPr Me
  loc_D67541: MemLdRfVar from_stack_1.global_80
  loc_D67544: NewIfNullPr clsctacte
  loc_D67547: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6754C: FLdPr var_57C
  loc_D6754F:  = Me.Fields
  loc_D67554: FLdPr var_580
  loc_D67557: from_stack_2 = Me.Item(from_stack_1)
  loc_D6755C: FLdPr var_584
  loc_D6755F:  = Me.Value
  loc_D67564: FLdRfVar var_5B4
  loc_D67567: ConcatVar var_5D0
  loc_D6756B: LitVarStr var_34C, ","
  loc_D67570: ConcatVar var_5E0
  loc_D67574: FLdRfVar var_5F0
  loc_D67577: FLdRfVar var_5C0
  loc_D6757A: LitVarStr var_36C, "NumeApre"
  loc_D6757F: PopAdLdVar
  loc_D67580: FLdRfVar var_5BC
  loc_D67583: FLdRfVar var_5B8
  loc_D67586: FLdPr Me
  loc_D67589: MemLdRfVar from_stack_1.global_84
  loc_D6758C: NewIfNullPr clsctacte
  loc_D6758F: from_stack_1v = clsctacte.RsFrmGet()
  loc_D67594: FLdPr var_5B8
  loc_D67597:  = Me.Fields
  loc_D6759C: FLdPr var_5BC
  loc_D6759F: from_stack_2 = Me.Item(from_stack_1)
  loc_D675A4: FLdPr var_5C0
  loc_D675A7:  = Me.Value
  loc_D675AC: FLdRfVar var_5F0
  loc_D675AF: ConcatVar var_60C
  loc_D675B3: LitVarStr var_37C, ","
  loc_D675B8: ConcatVar var_61C
  loc_D675BC: FLdRfVar var_62C
  loc_D675BF: FLdRfVar var_5FC
  loc_D675C2: LitVarStr var_644, "CodiTimo"
  loc_D675C7: PopAdLdVar
  loc_D675C8: FLdRfVar var_5F8
  loc_D675CB: FLdRfVar var_5F4
  loc_D675CE: FLdPr Me
  loc_D675D1: MemLdRfVar from_stack_1.global_84
  loc_D675D4: NewIfNullPr clsctacte
  loc_D675D7: from_stack_1v = clsctacte.RsFrmGet()
  loc_D675DC: FLdPr var_5F4
  loc_D675DF:  = Me.Fields
  loc_D675E4: FLdPr var_5F8
  loc_D675E7: from_stack_2 = Me.Item(from_stack_1)
  loc_D675EC: FLdPr var_5FC
  loc_D675EF:  = Me.Value
  loc_D675F4: FLdRfVar var_62C
  loc_D675F7: ConcatVar var_658
  loc_D675FB: LitVarStr var_678, ","
  loc_D67600: ConcatVar var_668
  loc_D67604: FLdRfVar var_688
  loc_D67607: FLdRfVar var_648
  loc_D6760A: LitVarStr var_6A0, "PeriInfo"
  loc_D6760F: PopAdLdVar
  loc_D67610: FLdRfVar var_634
  loc_D67613: FLdRfVar var_630
  loc_D67616: FLdPr Me
  loc_D67619: MemLdRfVar from_stack_1.global_84
  loc_D6761C: NewIfNullPr clsctacte
  loc_D6761F: from_stack_1v = clsctacte.RsFrmGet()
  loc_D67624: FLdPr var_630
  loc_D67627:  = Me.Fields
  loc_D6762C: FLdPr var_634
  loc_D6762F: from_stack_2 = Me.Item(from_stack_1)
  loc_D67634: FLdPr var_648
  loc_D67637:  = Me.Value
  loc_D6763C: FLdRfVar var_688
  loc_D6763F: ConcatVar var_6B4
  loc_D67643: LitVarStr var_6D4, ",'"
  loc_D67648: ConcatVar var_6C4
  loc_D6764C: FLdRfVar var_6E4
  loc_D6764F: FLdRfVar var_6A4
  loc_D67652: LitVarStr var_6FC, "CodiConc"
  loc_D67657: PopAdLdVar
  loc_D67658: FLdRfVar var_690
  loc_D6765B: FLdRfVar var_68C
  loc_D6765E: FLdPr Me
  loc_D67661: MemLdRfVar from_stack_1.global_84
  loc_D67664: NewIfNullPr clsctacte
  loc_D67667: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6766C: FLdPr var_68C
  loc_D6766F:  = Me.Fields
  loc_D67674: FLdPr var_690
  loc_D67677: from_stack_2 = Me.Item(from_stack_1)
  loc_D6767C: FLdPr var_6A4
  loc_D6767F:  = Me.Value
  loc_D67684: FLdRfVar var_6E4
  loc_D67687: ConcatVar var_710
  loc_D6768B: LitVarStr var_740, "',"
  loc_D67690: ConcatVar var_720
  loc_D67694: LitI4 0
  loc_D67699: LitI4 -1
  loc_D6769E: LitI4 1
  loc_D676A3: LitStr "."
  loc_D676A6: LitStr ","
  loc_D676A9: FLdFPR8 var_D8
  loc_D676AC: CStrR8
  loc_D676AE: FStStrNoPop var_394
  loc_D676B1: ImpAdCallI2 Replace(, , , , , )
  loc_D676B6: CVarStr var_730
  loc_D676B9: ConcatVar var_750
  loc_D676BD: LitVarStr var_780, ","
  loc_D676C2: ConcatVar var_760
  loc_D676C6: LitI4 0
  loc_D676CB: LitI4 -1
  loc_D676D0: LitI4 1
  loc_D676D5: LitStr "."
  loc_D676D8: LitStr ","
  loc_D676DB: FLdPr Me
  loc_D676DE: MemLdFPR8 global_128
  loc_D676E1: CStrR8
  loc_D676E3: FStStrNoPop var_398
  loc_D676E6: ImpAdCallI2 Replace(, , , , , )
  loc_D676EB: CVarStr var_770
  loc_D676EE: ConcatVar var_790
  loc_D676F2: LitVarStr var_7C0, ","
  loc_D676F7: ConcatVar var_7A0
  loc_D676FB: LitI4 0
  loc_D67700: LitI4 -1
  loc_D67705: LitI4 1
  loc_D6770A: LitStr "."
  loc_D6770D: LitStr ","
  loc_D67710: FLdPr Me
  loc_D67713: MemLdFPR8 global_144
  loc_D67716: CStrR8
  loc_D67718: FStStrNoPop var_39C
  loc_D6771B: ImpAdCallI2 Replace(, , , , , )
  loc_D67720: CVarStr var_7B0
  loc_D67723: ConcatVar var_7D0
  loc_D67727: LitVarStr var_800, ","
  loc_D6772C: ConcatVar var_7E0
  loc_D67730: LitI4 0
  loc_D67735: LitI4 -1
  loc_D6773A: LitI4 1
  loc_D6773F: LitStr "."
  loc_D67742: LitStr ","
  loc_D67745: FLdPr Me
  loc_D67748: MemLdFPR8 global_136
  loc_D6774B: CStrR8
  loc_D6774D: FStStrNoPop var_3A0
  loc_D67750: ImpAdCallI2 Replace(, , , , , )
  loc_D67755: CVarStr var_7F0
  loc_D67758: ConcatVar var_810
  loc_D6775C: LitVarStr var_840, ","
  loc_D67761: ConcatVar var_820
  loc_D67765: LitI4 0
  loc_D6776A: LitI4 -1
  loc_D6776F: LitI4 1
  loc_D67774: LitStr "."
  loc_D67777: LitStr ","
  loc_D6777A: FLdPr Me
  loc_D6777D: MemLdFPR8 global_168
  loc_D67780: CStrR8
  loc_D67782: FStStrNoPop var_3A4
  loc_D67785: ImpAdCallI2 Replace(, , , , , )
  loc_D6778A: CVarStr var_830
  loc_D6778D: ConcatVar var_850
  loc_D67791: LitVarStr var_8AC, ",0,0,"
  loc_D67796: ConcatVar var_860
  loc_D6779A: LitI4 0
  loc_D6779F: LitI4 -1
  loc_D677A4: LitI4 1
  loc_D677A9: LitStr "."
  loc_D677AC: LitStr ","
  loc_D677AF: FLdPr Me
  loc_D677B2: MemLdFPR8 global_176
  loc_D677B5: CStrR8
  loc_D677B7: FStStrNoPop var_3A8
  loc_D677BA: ImpAdCallI2 Replace(, , , , , )
  loc_D677BF: CVarStr var_87C
  loc_D677C2: ConcatVar var_88C
  loc_D677C6: LitVarStr var_8CC, ");"
  loc_D677CB: ConcatVar var_89C
  loc_D677CF: CStrVarTmp
  loc_D677D0: FStStrNoPop var_3AC
  loc_D677D3: FLdPr Me
  loc_D677D6: MemStStrCopy
  loc_D677DA: FFreeStr var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1D4 = "": var_390 = "": var_394 = "": var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3A8 = ""
  loc_D677F9: FFreeAd var_5F4 = "": var_5F8 = "": var_5FC = "": var_630 = "": var_634 = "": var_648 = "": var_68C = "": var_690 = "": var_6A4 = "": var_158 = "": var_1CC = "": var_1D0 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_4A0 = "": var_4A4 = "": var_4D8 = "": var_4DC = "": var_4E0 = "": var_514 = "": var_518 = "": var_51C = "": var_540 = "": var_544 = "": var_548 = "": var_57C = "": var_580 = "": var_584 = "": var_5B8 = "": var_5BC = ""
  loc_D6784A: FFreeVar var_5F0 = "": var_60C = "": var_61C = "": var_62C = "": var_658 = "": var_668 = "": var_688 = "": var_6B4 = "": var_6C4 = "": var_6E4 = "": var_710 = "": var_720 = "": var_730 = "": var_750 = "": var_760 = "": var_770 = "": var_790 = "": var_7A0 = "": var_7B0 = "": var_7D0 = "": var_7E0 = "": var_7F0 = "": var_810 = "": var_820 = "": var_830 = "": var_850 = "": var_860 = "": var_87C = "": var_88C = "": var_89C = "": var_154 = "": var_144 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = "": var_38C = "": var_47C = "": var_48C = "": var_49C = "": var_4B4 = "": var_4C4 = "": var_4D4 = "": var_4F0 = "": var_500 = "": var_510 = "": var_52C = "": var_53C = "": var_558 = "": var_568 = "": var_578 = "": var_594 = "": var_5A4 = "": var_5B4 = "": var_5D0 = ""
  loc_D678C5: FLdRfVar var_144
  loc_D678C8: FLdRfVar var_1D0
  loc_D678CB: LitVarStr var_134, "PeriCtct"
  loc_D678D0: PopAdLdVar
  loc_D678D1: FLdRfVar var_1CC
  loc_D678D4: FLdRfVar var_158
  loc_D678D7: FLdPr Me
  loc_D678DA: MemLdRfVar from_stack_1.global_80
  loc_D678DD: NewIfNullPr clsctacte
  loc_D678E0: from_stack_1v = clsctacte.RsFrmGet()
  loc_D678E5: FLdPr var_158
  loc_D678E8:  = Me.Fields
  loc_D678ED: FLdPr var_1CC
  loc_D678F0: from_stack_2 = Me.Item(from_stack_1)
  loc_D678F5: FLdPr var_1D0
  loc_D678F8:  = Me.Value
  loc_D678FD: FLdRfVar var_154
  loc_D67900: FLdRfVar var_1E0
  loc_D67903: LitVarStr var_168, "BimeCtct"
  loc_D67908: PopAdLdVar
  loc_D67909: FLdRfVar var_1DC
  loc_D6790C: FLdRfVar var_1D8
  loc_D6790F: FLdPr Me
  loc_D67912: MemLdRfVar from_stack_1.global_80
  loc_D67915: NewIfNullPr clsctacte
  loc_D67918: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6791D: FLdPr var_1D8
  loc_D67920:  = Me.Fields
  loc_D67925: FLdPr var_1DC
  loc_D67928: from_stack_2 = Me.Item(from_stack_1)
  loc_D6792D: FLdPr var_1E0
  loc_D67930:  = Me.Value
  loc_D67935: FLdRfVar var_188
  loc_D67938: FLdRfVar var_1EC
  loc_D6793B: LitVarStr var_178, "NumeCtct"
  loc_D67940: PopAdLdVar
  loc_D67941: FLdRfVar var_1E8
  loc_D67944: FLdRfVar var_1E4
  loc_D67947: FLdPr Me
  loc_D6794A: MemLdRfVar from_stack_1.global_80
  loc_D6794D: NewIfNullPr clsctacte
  loc_D67950: from_stack_1v = clsctacte.RsFrmGet()
  loc_D67955: FLdPr var_1E4
  loc_D67958:  = Me.Fields
  loc_D6795D: FLdPr var_1E8
  loc_D67960: from_stack_2 = Me.Item(from_stack_1)
  loc_D67965: FLdPr var_1EC
  loc_D67968:  = Me.Value
  loc_D6796D: FLdRfVar var_1A8
  loc_D67970: FLdRfVar var_1F8
  loc_D67973: LitVarStr var_198, "MoviCtct"
  loc_D67978: PopAdLdVar
  loc_D67979: FLdRfVar var_1F4
  loc_D6797C: FLdRfVar var_1F0
  loc_D6797F: FLdPr Me
  loc_D67982: MemLdRfVar from_stack_1.global_80
  loc_D67985: NewIfNullPr clsctacte
  loc_D67988: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6798D: FLdPr var_1F0
  loc_D67990:  = Me.Fields
  loc_D67995: FLdPr var_1F4
  loc_D67998: from_stack_2 = Me.Item(from_stack_1)
  loc_D6799D: FLdPr var_1F8
  loc_D679A0:  = Me.Value
  loc_D679A5: FLdI2 var_DA
  loc_D679A8: FLdRfVar var_1A8
  loc_D679AB: CI2Var
  loc_D679AC: FLdRfVar var_188
  loc_D679AF: CI4Var
  loc_D679B1: FLdRfVar var_154
  loc_D679B4: CI2Var
  loc_D679B5: FLdRfVar var_144
  loc_D679B8: CI2Var
  loc_D679B9: ILdRf var_8C
  loc_D679BC: FLdI2 var_86
  loc_D679BF: ImpAdCallFPR4 Proc_270_130_AC5C58(, , , , , , )
  loc_D679C4: FFreeAd var_158 = "": var_1CC = "": var_1D8 = "": var_1DC = "": var_1E4 = "": var_1E8 = "": var_1F0 = "": var_1F4 = "": var_1D0 = "": var_1E0 = "": var_1EC = ""
  loc_D679DF: FFreeVar var_144 = "": var_154 = "": var_188 = ""
  loc_D679EA: LitI4 2
  loc_D679EF: FLdPr Me
  loc_D679F2: MemLdFPR8 global_184
  loc_D679F5: FLdFPR8 var_D8
  loc_D679F8: AddR8
  loc_D679F9: CVarR8
  loc_D679FD: FLdRfVar var_154
  loc_D67A00: ImpAdCallFPR4  = Round(, )
  loc_D67A05: FLdRfVar var_154
  loc_D67A08: CR4Var
  loc_D67A09: FLdPr Me
  loc_D67A0C: MemStFPR8 global_184
  loc_D67A0F: FFreeVar var_144 = ""
  loc_D67A16: LitI4 2
  loc_D67A1B: FLdPr Me
  loc_D67A1E: MemLdFPR8 global_208
  loc_D67A21: FLdPr Me
  loc_D67A24: MemLdFPR8 global_144
  loc_D67A27: AddR8
  loc_D67A28: CVarR8
  loc_D67A2C: FLdRfVar var_154
  loc_D67A2F: ImpAdCallFPR4  = Round(, )
  loc_D67A34: FLdRfVar var_154
  loc_D67A37: CR4Var
  loc_D67A38: FLdPr Me
  loc_D67A3B: MemStFPR8 global_208
  loc_D67A3E: FFreeVar var_144 = ""
  loc_D67A45: LitI4 2
  loc_D67A4A: FLdPr Me
  loc_D67A4D: MemLdFPR8 global_192
  loc_D67A50: FLdPr Me
  loc_D67A53: MemLdFPR8 global_128
  loc_D67A56: AddR8
  loc_D67A57: FLdPr Me
  loc_D67A5A: MemLdFPR8 global_136
  loc_D67A5D: AddR8
  loc_D67A5E: CVarR8
  loc_D67A62: FLdRfVar var_154
  loc_D67A65: ImpAdCallFPR4  = Round(, )
  loc_D67A6A: FLdRfVar var_154
  loc_D67A6D: CR4Var
  loc_D67A6E: FLdPr Me
  loc_D67A71: MemStFPR8 global_192
  loc_D67A74: FFreeVar var_144 = ""
  loc_D67A7B: LitI4 2
  loc_D67A80: FLdPr Me
  loc_D67A83: MemLdFPR8 global_200
  loc_D67A86: FLdPr Me
  loc_D67A89: MemLdFPR8 global_168
  loc_D67A8C: AddR8
  loc_D67A8D: CVarR8
  loc_D67A91: FLdRfVar var_154
  loc_D67A94: ImpAdCallFPR4  = Round(, )
  loc_D67A99: FLdRfVar var_154
  loc_D67A9C: CR4Var
  loc_D67A9D: FLdPr Me
  loc_D67AA0: MemStFPR8 global_200
  loc_D67AA3: FFreeVar var_144 = ""
  loc_D67AAA: LitI4 2
  loc_D67AAF: FLdPr Me
  loc_D67AB2: MemLdFPR8 global_216
  loc_D67AB5: FLdPr Me
  loc_D67AB8: MemLdFPR8 global_176
  loc_D67ABB: AddR8
  loc_D67ABC: CVarR8
  loc_D67AC0: FLdRfVar var_154
  loc_D67AC3: ImpAdCallFPR4  = Round(, )
  loc_D67AC8: FLdRfVar var_154
  loc_D67ACB: CR4Var
  loc_D67ACC: FLdPr Me
  loc_D67ACF: MemStFPR8 global_216
  loc_D67AD2: FFreeVar var_144 = ""
  loc_D67AD9: LitI2_Byte 0
  loc_D67ADB: CR8I2
  loc_D67ADC: FLdPr Me
  loc_D67ADF: MemStFPR8 global_144
  loc_D67AE2: LitI2_Byte 0
  loc_D67AE4: CR8I2
  loc_D67AE5: FLdPr Me
  loc_D67AE8: MemStFPR8 global_128
  loc_D67AEB: LitI2_Byte 0
  loc_D67AED: CR8I2
  loc_D67AEE: FLdPr Me
  loc_D67AF1: MemStFPR8 global_136
  loc_D67AF4: LitI2_Byte 0
  loc_D67AF6: CR8I2
  loc_D67AF7: FLdPr Me
  loc_D67AFA: MemStFPR8 global_168
  loc_D67AFD: LitI2_Byte 0
  loc_D67AFF: CR8I2
  loc_D67B00: FLdPr Me
  loc_D67B03: MemStFPR8 global_176
  loc_D67B06: FLdRfVar var_D0
  loc_D67B09: CVarRef
  loc_D67B0E: LitVarI2 var_144, 0
  loc_D67B13: FLdFPR8 var_D8
  loc_D67B16: FLdFPR8 var_D0
  loc_D67B19: EqR4
  loc_D67B1A: CVarBoolI2 var_134
  loc_D67B1E: FLdRfVar var_154
  loc_D67B21: ImpAdCallFPR4  = IIf(, , )
  loc_D67B26: FLdRfVar var_154
  loc_D67B29: CR4Var
  loc_D67B2A: FStFPR8 var_D0
  loc_D67B2D: FFreeVar var_134 = "": var_144 = ""
  loc_D67B36: FLdPr Me
  loc_D67B39: MemLdRfVar from_stack_1.global_80
  loc_D67B3C: NewIfNullPr clsctacte
  loc_D67B3F: Call clsctacte.MoveSiguiente()
  loc_D67B44: Branch loc_D66E22
  loc_D67B47: FLdRfVar var_158
  loc_D67B4A: FLdPr Me
  loc_D67B4D: MemLdRfVar from_stack_1.global_64
  loc_D67B50: NewIfNullPr clsctacte
  loc_D67B53: from_stack_1v = clsctacte.RsFrmGet()
  loc_D67B58: FLdPr var_158
  loc_D67B5B: Me.MoveNext
  loc_D67B60: FFree1Ad var_158
  loc_D67B63: Branch loc_D61B72
  loc_D67B66: ImpAdLdFPR8 MemVar_D93068
  loc_D67B69: LitI2_Byte 0
  loc_D67B6B: CR8I2
  loc_D67B6C: GtR4
  loc_D67B6D: BranchF loc_D67E3E
  loc_D67B70: LitI4 2
  loc_D67B75: FLdPr Me
  loc_D67B78: MemLdFPR8 global_216
  loc_D67B7B: ImpAdLdFPR8 MemVar_D93068
  loc_D67B7E: AddR8
  loc_D67B7F: CVarR8
  loc_D67B83: FLdRfVar var_154
  loc_D67B86: ImpAdCallFPR4  = Round(, )
  loc_D67B8B: FLdRfVar var_154
  loc_D67B8E: CR4Var
  loc_D67B8F: FLdPr Me
  loc_D67B92: MemStFPR8 global_216
  loc_D67B95: FFreeVar var_144 = ""
  loc_D67B9C: FLdPr Me
  loc_D67B9F: MemLdStr global_260
  loc_D67BA2: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, ApreDebo, TotaDebo) "
  loc_D67BA5: ConcatStr
  loc_D67BA6: FStStrNoPop var_1B0
  loc_D67BA9: LitStr " VALUES ("
  loc_D67BAC: ConcatStr
  loc_D67BAD: FStStrNoPop var_1B4
  loc_D67BB0: FLdI2 var_86
  loc_D67BB3: CStrUI1
  loc_D67BB5: FStStrNoPop var_1B8
  loc_D67BB8: ConcatStr
  loc_D67BB9: FStStrNoPop var_1BC
  loc_D67BBC: LitStr ","
  loc_D67BBF: ConcatStr
  loc_D67BC0: FStStrNoPop var_1C0
  loc_D67BC3: ILdRf var_8C
  loc_D67BC6: CStrI4
  loc_D67BC8: FStStrNoPop var_1D4
  loc_D67BCB: ConcatStr
  loc_D67BCC: FStStrNoPop var_390
  loc_D67BCF: LitStr ","
  loc_D67BD2: ConcatStr
  loc_D67BD3: CVarStr var_154
  loc_D67BD6: FLdRfVar var_C8
  loc_D67BD9: CVarRef
  loc_D67BDE: FLdRfVar var_144
  loc_D67BE1: ImpAdCallFPR4  = Year()
  loc_D67BE6: FLdRfVar var_144
  loc_D67BE9: ConcatVar var_188
  loc_D67BED: LitVarStr var_168, ","
  loc_D67BF2: ConcatVar var_1A8
  loc_D67BF6: FLdRfVar var_C8
  loc_D67BF9: CVarRef
  loc_D67BFE: FLdRfVar var_20C
  loc_D67C01: ImpAdCallFPR4  = Month()
  loc_D67C06: FLdRfVar var_20C
  loc_D67C09: ConcatVar var_21C
  loc_D67C0D: LitVarStr var_198, ",1,1,1,3,'','Aforos Varios',0,0,0,0,"
  loc_D67C12: ConcatVar var_22C
  loc_D67C16: ImpAdLdI2 MemVar_D93034
  loc_D67C19: CVarI2 var_23C
  loc_D67C1C: ConcatVar var_24C
  loc_D67C20: LitVarStr var_25C, ",'13032400',"
  loc_D67C25: ConcatVar var_32C
  loc_D67C29: LitI4 0
  loc_D67C2E: LitI4 -1
  loc_D67C33: LitI4 1
  loc_D67C38: LitStr "."
  loc_D67C3B: LitStr ","
  loc_D67C3E: ImpAdLdFPR8 MemVar_D93068
  loc_D67C41: CStrR8
  loc_D67C43: FStStrNoPop var_394
  loc_D67C46: ImpAdCallI2 Replace(, , , , , )
  loc_D67C4B: CVarStr var_35C
  loc_D67C4E: ConcatVar var_38C
  loc_D67C52: LitVarStr var_26C, ",0,0,0,0,0,0,"
  loc_D67C57: ConcatVar var_47C
  loc_D67C5B: LitI4 0
  loc_D67C60: LitI4 -1
  loc_D67C65: LitI4 1
  loc_D67C6A: LitStr "."
  loc_D67C6D: LitStr ","
  loc_D67C70: ImpAdLdFPR8 MemVar_D93068
  loc_D67C73: CStrR8
  loc_D67C75: FStStrNoPop var_398
  loc_D67C78: ImpAdCallI2 Replace(, , , , , )
  loc_D67C7D: CVarStr var_48C
  loc_D67C80: ConcatVar var_49C
  loc_D67C84: LitVarStr var_27C, ");"
  loc_D67C89: ConcatVar var_4B4
  loc_D67C8D: CStrVarTmp
  loc_D67C8E: FStStrNoPop var_39C
  loc_D67C91: FLdPr Me
  loc_D67C94: MemStStrCopy
  loc_D67C98: FFreeStr var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1D4 = "": var_390 = "": var_394 = "": var_398 = ""
  loc_D67CAF: FFreeVar var_154 = "": var_144 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = "": var_38C = "": var_47C = "": var_48C = "": var_49C = ""
  loc_D67CD0: FLdPr Me
  loc_D67CD3: MemLdStr global_260
  loc_D67CD6: LitStr " INSERT INTO devadeta (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, PeriOrde, CodiSede, CantDede, PrunDede, SubtDede, DescDede, TotaDede) "
  loc_D67CD9: ConcatStr
  loc_D67CDA: FStStrNoPop var_1B0
  loc_D67CDD: LitStr " VALUES ("
  loc_D67CE0: ConcatStr
  loc_D67CE1: FStStrNoPop var_1B4
  loc_D67CE4: FLdI2 var_86
  loc_D67CE7: CStrUI1
  loc_D67CE9: FStStrNoPop var_1B8
  loc_D67CEC: ConcatStr
  loc_D67CED: FStStrNoPop var_1BC
  loc_D67CF0: LitStr ","
  loc_D67CF3: ConcatStr
  loc_D67CF4: FStStrNoPop var_1C0
  loc_D67CF7: ILdRf var_8C
  loc_D67CFA: CStrI4
  loc_D67CFC: FStStrNoPop var_1D4
  loc_D67CFF: ConcatStr
  loc_D67D00: FStStrNoPop var_390
  loc_D67D03: LitStr ","
  loc_D67D06: ConcatStr
  loc_D67D07: CVarStr var_154
  loc_D67D0A: FLdRfVar var_C8
  loc_D67D0D: CVarRef
  loc_D67D12: FLdRfVar var_144
  loc_D67D15: ImpAdCallFPR4  = Year()
  loc_D67D1A: FLdRfVar var_144
  loc_D67D1D: ConcatVar var_188
  loc_D67D21: LitVarStr var_168, ","
  loc_D67D26: ConcatVar var_1A8
  loc_D67D2A: FLdRfVar var_C8
  loc_D67D2D: CVarRef
  loc_D67D32: FLdRfVar var_20C
  loc_D67D35: ImpAdCallFPR4  = Month()
  loc_D67D3A: FLdRfVar var_20C
  loc_D67D3D: ConcatVar var_21C
  loc_D67D41: LitVarStr var_198, ",1,1,"
  loc_D67D46: ConcatVar var_22C
  loc_D67D4A: ImpAdLdI2 MemVar_D93034
  loc_D67D4D: CVarI2 var_23C
  loc_D67D50: ConcatVar var_24C
  loc_D67D54: LitVarStr var_25C, ",641,1,"
  loc_D67D59: ConcatVar var_32C
  loc_D67D5D: LitI4 0
  loc_D67D62: LitI4 -1
  loc_D67D67: LitI4 1
  loc_D67D6C: LitStr "."
  loc_D67D6F: LitStr ","
  loc_D67D72: ImpAdLdFPR8 MemVar_D93068
  loc_D67D75: CStrR8
  loc_D67D77: FStStrNoPop var_394
  loc_D67D7A: ImpAdCallI2 Replace(, , , , , )
  loc_D67D7F: CVarStr var_35C
  loc_D67D82: ConcatVar var_38C
  loc_D67D86: LitVarStr var_26C, ","
  loc_D67D8B: ConcatVar var_47C
  loc_D67D8F: LitI4 0
  loc_D67D94: LitI4 -1
  loc_D67D99: LitI4 1
  loc_D67D9E: LitStr "."
  loc_D67DA1: LitStr ","
  loc_D67DA4: ImpAdLdFPR8 MemVar_D93068
  loc_D67DA7: CStrR8
  loc_D67DA9: FStStrNoPop var_398
  loc_D67DAC: ImpAdCallI2 Replace(, , , , , )
  loc_D67DB1: CVarStr var_48C
  loc_D67DB4: ConcatVar var_49C
  loc_D67DB8: LitVarStr var_27C, ",0,"
  loc_D67DBD: ConcatVar var_4B4
  loc_D67DC1: LitI4 0
  loc_D67DC6: LitI4 -1
  loc_D67DCB: LitI4 1
  loc_D67DD0: LitStr "."
  loc_D67DD3: LitStr ","
  loc_D67DD6: ImpAdLdFPR8 MemVar_D93068
  loc_D67DD9: CStrR8
  loc_D67DDB: FStStrNoPop var_39C
  loc_D67DDE: ImpAdCallI2 Replace(, , , , , )
  loc_D67DE3: CVarStr var_4C4
  loc_D67DE6: ConcatVar var_4D4
  loc_D67DEA: LitVarStr var_28C, ");"
  loc_D67DEF: ConcatVar var_4F0
  loc_D67DF3: CStrVarTmp
  loc_D67DF4: FStStrNoPop var_3A0
  loc_D67DF7: FLdPr Me
  loc_D67DFA: MemStStrCopy
  loc_D67DFE: FFreeStr var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1D4 = "": var_390 = "": var_394 = "": var_398 = "": var_39C = ""
  loc_D67E17: FFreeVar var_154 = "": var_144 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = "": var_38C = "": var_47C = "": var_48C = "": var_49C = "": var_4B4 = "": var_4C4 = "": var_4D4 = ""
  loc_D67E3E: ImpAdLdFPR8 MemVar_D93050
  loc_D67E41: LitI2_Byte 0
  loc_D67E43: CR8I2
  loc_D67E44: GtR4
  loc_D67E45: BranchF loc_D686C4
  loc_D67E48: LitStr "SELECT NumeApre, SUM(SaldCtct) as SaldCtct, SUM(RecaCtct) as RecaCtct FROM tmp_ctacteboleto WHERE SaldCtct > 0 AND NumeApre <> 0 AND SeleCtct = 'Si'"
  loc_D67E4B: LitStr " GROUP BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.NumeApre"
  loc_D67E4E: ConcatStr
  loc_D67E4F: FStStrNoPop var_1B0
  loc_D67E52: FLdPr Me
  loc_D67E55: MemLdRfVar from_stack_1.global_64
  loc_D67E58: NewIfNullPr clsctacte
  loc_D67E5B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D67E60: FFree1Str var_1B0
  loc_D67E63: FLdRfVar var_1C4
  loc_D67E66: FLdRfVar var_158
  loc_D67E69: FLdPr Me
  loc_D67E6C: MemLdRfVar from_stack_1.global_64
  loc_D67E6F: NewIfNullPr clsctacte
  loc_D67E72: from_stack_1v = clsctacte.RsFrmGet()
  loc_D67E77: FLdPr var_158
  loc_D67E7A:  = Me.RecordCount
  loc_D67E7F: ILdRf var_1C4
  loc_D67E82: LitI4 0
  loc_D67E87: GtI4
  loc_D67E88: FFree1Ad var_158
  loc_D67E8B: BranchF loc_D686C1
  loc_D67E8E: FLdRfVar var_1C6
  loc_D67E91: FLdRfVar var_158
  loc_D67E94: FLdPr Me
  loc_D67E97: MemLdRfVar from_stack_1.global_64
  loc_D67E9A: NewIfNullPr clsctacte
  loc_D67E9D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D67EA2: FLdPr var_158
  loc_D67EA5:  = Me.EOF
  loc_D67EAA: FLdI2 var_1C6
  loc_D67EAD: NotI4
  loc_D67EAE: FFree1Ad var_158
  loc_D67EB1: BranchF loc_D686C1
  loc_D67EB4: FLdRfVar var_144
  loc_D67EB7: FLdRfVar var_1D0
  loc_D67EBA: LitVarStr var_134, "NumeApre"
  loc_D67EBF: PopAdLdVar
  loc_D67EC0: FLdRfVar var_1CC
  loc_D67EC3: FLdRfVar var_158
  loc_D67EC6: FLdPr Me
  loc_D67EC9: MemLdRfVar from_stack_1.global_64
  loc_D67ECC: NewIfNullPr clsctacte
  loc_D67ECF: from_stack_1v = clsctacte.RsFrmGet()
  loc_D67ED4: FLdPr var_158
  loc_D67ED7:  = Me.Fields
  loc_D67EDC: FLdPr var_1CC
  loc_D67EDF: from_stack_2 = Me.Item(from_stack_1)
  loc_D67EE4: FLdPr var_1D0
  loc_D67EE7:  = Me.Value
  loc_D67EEC: FLdRfVar var_154
  loc_D67EEF: FLdRfVar var_1E0
  loc_D67EF2: LitVarStr var_168, "SaldCtct"
  loc_D67EF7: PopAdLdVar
  loc_D67EF8: FLdRfVar var_1DC
  loc_D67EFB: FLdRfVar var_1D8
  loc_D67EFE: FLdPr Me
  loc_D67F01: MemLdRfVar from_stack_1.global_64
  loc_D67F04: NewIfNullPr clsctacte
  loc_D67F07: from_stack_1v = clsctacte.RsFrmGet()
  loc_D67F0C: FLdPr var_1D8
  loc_D67F0F:  = Me.Fields
  loc_D67F14: FLdPr var_1DC
  loc_D67F17: from_stack_2 = Me.Item(from_stack_1)
  loc_D67F1C: FLdPr var_1E0
  loc_D67F1F:  = Me.Value
  loc_D67F24: FLdRfVar var_188
  loc_D67F27: FLdRfVar var_1EC
  loc_D67F2A: LitVarStr var_178, "RecaCtct"
  loc_D67F2F: PopAdLdVar
  loc_D67F30: FLdRfVar var_1E8
  loc_D67F33: FLdRfVar var_1E4
  loc_D67F36: FLdPr Me
  loc_D67F39: MemLdRfVar from_stack_1.global_64
  loc_D67F3C: NewIfNullPr clsctacte
  loc_D67F3F: from_stack_1v = clsctacte.RsFrmGet()
  loc_D67F44: FLdPr var_1E4
  loc_D67F47:  = Me.Fields
  loc_D67F4C: FLdPr var_1E8
  loc_D67F4F: from_stack_2 = Me.Item(from_stack_1)
  loc_D67F54: FLdPr var_1EC
  loc_D67F57:  = Me.Value
  loc_D67F5C: FLdRfVar var_1A8
  loc_D67F5F: FLdRfVar var_188
  loc_D67F62: CR4Var
  loc_D67F63: PopFPR8
  loc_D67F64: FLdRfVar var_154
  loc_D67F67: CR4Var
  loc_D67F68: PopFPR8
  loc_D67F69: FLdRfVar var_144
  loc_D67F6C: CI4Var
  loc_D67F6E: FLdPr Me
  loc_D67F71: MemLdRfVar from_stack_1.global_76
  loc_D67F74: NewIfNullPr clsapremio
  loc_D67F77: from_stack_4v = clsapremio.BuscaGastosApremioDetalle(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D67F7C: FLdRfVar var_1A8
  loc_D67F7F: FStVar var_9C
  loc_D67F83: FFreeAd var_158 = "": var_1CC = "": var_1D8 = "": var_1DC = "": var_1E4 = "": var_1E8 = "": var_1D0 = "": var_1E0 = ""
  loc_D67F98: FFreeVar var_144 = "": var_154 = ""
  loc_D67FA1: FLdRfVar var_1C6
  loc_D67FA4: FLdRfVar var_144
  loc_D67FA7: FLdRfVar var_1D0
  loc_D67FAA: LitVarStr var_134, "NumeApre"
  loc_D67FAF: PopAdLdVar
  loc_D67FB0: FLdRfVar var_1CC
  loc_D67FB3: FLdRfVar var_158
  loc_D67FB6: FLdPr Me
  loc_D67FB9: MemLdRfVar from_stack_1.global_64
  loc_D67FBC: NewIfNullPr clsctacte
  loc_D67FBF: from_stack_1v = clsctacte.RsFrmGet()
  loc_D67FC4: FLdPr var_158
  loc_D67FC7:  = Me.Fields
  loc_D67FCC: FLdPr var_1CC
  loc_D67FCF: from_stack_2 = Me.Item(from_stack_1)
  loc_D67FD4: FLdPr var_1D0
  loc_D67FD7:  = Me.Value
  loc_D67FDC: FLdRfVar var_144
  loc_D67FDF: CI4Var
  loc_D67FE1: FLdPr Me
  loc_D67FE4: MemLdRfVar from_stack_1.global_76
  loc_D67FE7: NewIfNullPr clsapremio
  loc_D67FEA: from_stack_2v = clsapremio.BuscaInstanciaApremio(from_stack_1v)
  loc_D67FEF: FLdI2 var_1C6
  loc_D67FF2: FStI2 var_9E
  loc_D67FF5: FFreeAd var_158 = "": var_1CC = ""
  loc_D67FFE: FFree1Var var_144 = ""
  loc_D68001: LitVarI2 var_134, 1
  loc_D68006: PopAdLdVar
  loc_D68007: FLdRfVar var_9C
  loc_D6800A: VarIndexLdVar
  loc_D68010: PopAd
  loc_D68012: LitVarI2 var_178, 2
  loc_D68017: PopAdLdVar
  loc_D68018: FLdRfVar var_9C
  loc_D6801B: VarIndexLdVar
  loc_D68021: PopAd
  loc_D68023: LitVarI2 var_23C, 3
  loc_D68028: PopAdLdVar
  loc_D68029: FLdRfVar var_9C
  loc_D6802C: VarIndexLdVar
  loc_D68032: PopAd
  loc_D68034: LitVarI2 var_26C, 4
  loc_D68039: PopAdLdVar
  loc_D6803A: FLdRfVar var_9C
  loc_D6803D: VarIndexLdVar
  loc_D68043: PopAd
  loc_D68045: LitVarI2 var_28C, 5
  loc_D6804A: PopAdLdVar
  loc_D6804B: FLdRfVar var_9C
  loc_D6804E: VarIndexLdVar
  loc_D68054: PopAd
  loc_D68056: LitVarI2 var_2AC, 6
  loc_D6805B: PopAdLdVar
  loc_D6805C: FLdRfVar var_9C
  loc_D6805F: VarIndexLdVar
  loc_D68065: PopAd
  loc_D68067: LitVarI2 var_2CC, 7
  loc_D6806C: PopAdLdVar
  loc_D6806D: FLdRfVar var_9C
  loc_D68070: VarIndexLdVar
  loc_D68076: PopAd
  loc_D68078: LitVarI2 var_2EC, 8
  loc_D6807D: PopAdLdVar
  loc_D6807E: FLdRfVar var_9C
  loc_D68081: VarIndexLdVar
  loc_D68087: PopAd
  loc_D68089: LitVarI2 var_30C, 9
  loc_D6808E: PopAdLdVar
  loc_D6808F: FLdRfVar var_9C
  loc_D68092: VarIndexLdVar
  loc_D68098: PopAd
  loc_D6809A: LitVarI2 var_33C, 10
  loc_D6809F: PopAdLdVar
  loc_D680A0: FLdRfVar var_9C
  loc_D680A3: VarIndexLdVar
  loc_D680A9: PopAd
  loc_D680AB: LitVarI2 var_36C, 11
  loc_D680B0: PopAdLdVar
  loc_D680B1: FLdRfVar var_9C
  loc_D680B4: VarIndexLdVar
  loc_D680BA: PopAd
  loc_D680BC: LitI4 2
  loc_D680C1: FLdFPR8 var_114
  loc_D680C4: FLdRfVar var_144
  loc_D680C7: FnCDblVar
  loc_D680C9: AddR8
  loc_D680CA: FLdRfVar var_154
  loc_D680CD: FnCDblVar
  loc_D680CF: AddR8
  loc_D680D0: FLdRfVar var_188
  loc_D680D3: FnCDblVar
  loc_D680D5: AddR8
  loc_D680D6: FLdRfVar var_1A8
  loc_D680D9: FnCDblVar
  loc_D680DB: AddR8
  loc_D680DC: FLdRfVar var_20C
  loc_D680DF: FnCDblVar
  loc_D680E1: AddR8
  loc_D680E2: FLdRfVar var_21C
  loc_D680E5: FnCDblVar
  loc_D680E7: AddR8
  loc_D680E8: FLdRfVar var_22C
  loc_D680EB: FnCDblVar
  loc_D680ED: AddR8
  loc_D680EE: FLdRfVar var_24C
  loc_D680F1: FnCDblVar
  loc_D680F3: AddR8
  loc_D680F4: FLdRfVar var_32C
  loc_D680F7: FnCDblVar
  loc_D680F9: AddR8
  loc_D680FA: FLdRfVar var_35C
  loc_D680FD: FnCDblVar
  loc_D680FF: AddR8
  loc_D68100: FLdRfVar var_38C
  loc_D68103: FnCDblVar
  loc_D68105: AddR8
  loc_D68106: CVarR8
  loc_D6810A: FLdRfVar var_48C
  loc_D6810D: ImpAdCallFPR4  = Round(, )
  loc_D68112: FLdRfVar var_48C
  loc_D68115: CR4Var
  loc_D68116: FStFPR8 var_114
  loc_D68119: FFreeVar var_144 = "": var_154 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = "": var_38C = "": var_47C = ""
  loc_D68136: LitVarI2 var_27C, 1
  loc_D6813B: PopAdLdVar
  loc_D6813C: FLdRfVar var_9C
  loc_D6813F: VarIndexLdVar
  loc_D68145: PopAd
  loc_D68147: LitVarI2 var_2AC, 2
  loc_D6814C: PopAdLdVar
  loc_D6814D: FLdRfVar var_9C
  loc_D68150: VarIndexLdVar
  loc_D68156: PopAd
  loc_D68158: LitVarI2 var_2DC, 3
  loc_D6815D: PopAdLdVar
  loc_D6815E: FLdRfVar var_9C
  loc_D68161: VarIndexLdVar
  loc_D68167: PopAd
  loc_D68169: LitVarI2 var_30C, 4
  loc_D6816E: PopAdLdVar
  loc_D6816F: FLdRfVar var_9C
  loc_D68172: VarIndexLdVar
  loc_D68178: PopAd
  loc_D6817A: LitVarI2 var_34C, 5
  loc_D6817F: PopAdLdVar
  loc_D68180: FLdRfVar var_9C
  loc_D68183: VarIndexLdVar
  loc_D68189: PopAd
  loc_D6818B: LitVarI2 var_644, 6
  loc_D68190: PopAdLdVar
  loc_D68191: FLdRfVar var_9C
  loc_D68194: VarIndexLdVar
  loc_D6819A: PopAd
  loc_D6819C: LitVarI2 var_6D4, 7
  loc_D681A1: PopAdLdVar
  loc_D681A2: FLdRfVar var_9C
  loc_D681A5: VarIndexLdVar
  loc_D681AB: PopAd
  loc_D681AD: LitVarI2 var_780, 8
  loc_D681B2: PopAdLdVar
  loc_D681B3: FLdRfVar var_9C
  loc_D681B6: VarIndexLdVar
  loc_D681BC: PopAd
  loc_D681BE: LitVarI2 var_840, 9
  loc_D681C3: PopAdLdVar
  loc_D681C4: FLdRfVar var_9C
  loc_D681C7: VarIndexLdVar
  loc_D681CD: PopAd
  loc_D681CF: LitVarI2 var_8EC, 10
  loc_D681D4: PopAdLdVar
  loc_D681D5: FLdRfVar var_9C
  loc_D681D8: VarIndexLdVar
  loc_D681DE: PopAd
  loc_D681E0: LitVarI2 var_92C, 11
  loc_D681E5: PopAdLdVar
  loc_D681E6: FLdRfVar var_9C
  loc_D681E9: VarIndexLdVar
  loc_D681EF: PopAd
  loc_D681F1: FLdPr Me
  loc_D681F4: MemLdStr global_260
  loc_D681F7: LitStr "INSERT INTO boleapre (PeriBole, NumeBole, NumeApre, CodiInju, CodiFapa, CuotDefa, FealBoap, FeacBoap, EstaBoap, CoadBoap, ReseBoap, ApleBoap, DefiBoap, HoreBoap, HoofBoap, MoreBoap, MoofBoap, IcomBoap, IrecBoap, IofiBoap, CodiUsua) "
  loc_D681FA: ConcatStr
  loc_D681FB: FStStrNoPop var_1B0
  loc_D681FE: LitStr " VALUES ("
  loc_D68201: ConcatStr
  loc_D68202: FStStrNoPop var_1B4
  loc_D68205: FLdI2 var_86
  loc_D68208: CStrUI1
  loc_D6820A: FStStrNoPop var_1B8
  loc_D6820D: ConcatStr
  loc_D6820E: FStStrNoPop var_1BC
  loc_D68211: LitStr ","
  loc_D68214: ConcatStr
  loc_D68215: FStStrNoPop var_1C0
  loc_D68218: ILdRf var_8C
  loc_D6821B: CStrI4
  loc_D6821D: FStStrNoPop var_1D4
  loc_D68220: ConcatStr
  loc_D68221: FStStrNoPop var_390
  loc_D68224: LitStr ","
  loc_D68227: ConcatStr
  loc_D68228: CVarStr var_154
  loc_D6822B: FLdRfVar var_144
  loc_D6822E: FLdRfVar var_1D0
  loc_D68231: LitVarStr var_134, "NumeApre"
  loc_D68236: PopAdLdVar
  loc_D68237: FLdRfVar var_1CC
  loc_D6823A: FLdRfVar var_158
  loc_D6823D: FLdPr Me
  loc_D68240: MemLdRfVar from_stack_1.global_64
  loc_D68243: NewIfNullPr clsctacte
  loc_D68246: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6824B: FLdPr var_158
  loc_D6824E:  = Me.Fields
  loc_D68253: FLdPr var_1CC
  loc_D68256: from_stack_2 = Me.Item(from_stack_1)
  loc_D6825B: FLdPr var_1D0
  loc_D6825E:  = Me.Value
  loc_D68263: FLdRfVar var_144
  loc_D68266: ConcatVar var_188
  loc_D6826A: LitVarStr var_168, ","
  loc_D6826F: ConcatVar var_1A8
  loc_D68273: FLdI2 var_9E
  loc_D68276: CVarI2 var_178
  loc_D68279: ConcatVar var_20C
  loc_D6827D: LitVarStr var_198, ",0,0,'"
  loc_D68282: ConcatVar var_21C
  loc_D68286: LitI4 1
  loc_D6828B: LitI4 1
  loc_D68290: LitVarStr var_25C, "yyyy-mm-dd"
  loc_D68295: FStVarCopyObj var_22C
  loc_D68298: FLdRfVar var_22C
  loc_D6829B: FLdRfVar var_C8
  loc_D6829E: CVarRef
  loc_D682A3: ImpAdCallI2 Format$(, )
  loc_D682A8: CVarStr var_24C
  loc_D682AB: ConcatVar var_32C
  loc_D682AF: LitVarStr var_26C, "',Null,'Emitido',"
  loc_D682B4: ConcatVar var_35C
  loc_D682B8: LitI4 0
  loc_D682BD: LitI4 -1
  loc_D682C2: LitI4 1
  loc_D682C7: LitStr "."
  loc_D682CA: LitStr ","
  loc_D682CD: FLdRfVar var_38C
  loc_D682D0: FnCDblVar
  loc_D682D2: CStrR8
  loc_D682D4: FStStrNoPop var_394
  loc_D682D7: ImpAdCallI2 Replace(, , , , , )
  loc_D682DC: CVarStr var_47C
  loc_D682DF: ConcatVar var_48C
  loc_D682E3: LitVarStr var_29C, ","
  loc_D682E8: ConcatVar var_49C
  loc_D682EC: LitI4 0
  loc_D682F1: LitI4 -1
  loc_D682F6: LitI4 1
  loc_D682FB: LitStr "."
  loc_D682FE: LitStr ","
  loc_D68301: FLdRfVar var_4B4
  loc_D68304: FnCDblVar
  loc_D68306: CStrR8
  loc_D68308: FStStrNoPop var_398
  loc_D6830B: ImpAdCallI2 Replace(, , , , , )
  loc_D68310: CVarStr var_4C4
  loc_D68313: ConcatVar var_4D4
  loc_D68317: LitVarStr var_2CC, ","
  loc_D6831C: ConcatVar var_4F0
  loc_D68320: LitI4 0
  loc_D68325: LitI4 -1
  loc_D6832A: LitI4 1
  loc_D6832F: LitStr "."
  loc_D68332: LitStr ","
  loc_D68335: FLdRfVar var_500
  loc_D68338: FnCDblVar
  loc_D6833A: CStrR8
  loc_D6833C: FStStrNoPop var_39C
  loc_D6833F: ImpAdCallI2 Replace(, , , , , )
  loc_D68344: CVarStr var_510
  loc_D68347: ConcatVar var_52C
  loc_D6834B: LitVarStr var_2FC, ","
  loc_D68350: ConcatVar var_53C
  loc_D68354: LitI4 0
  loc_D68359: LitI4 -1
  loc_D6835E: LitI4 1
  loc_D68363: LitStr "."
  loc_D68366: LitStr ","
  loc_D68369: FLdRfVar var_558
  loc_D6836C: FnCDblVar
  loc_D6836E: CStrR8
  loc_D68370: FStStrNoPop var_3A0
  loc_D68373: ImpAdCallI2 Replace(, , , , , )
  loc_D68378: CVarStr var_568
  loc_D6837B: ConcatVar var_578
  loc_D6837F: LitVarStr var_33C, ","
  loc_D68384: ConcatVar var_594
  loc_D68388: LitI4 0
  loc_D6838D: LitI4 -1
  loc_D68392: LitI4 1
  loc_D68397: LitStr "."
  loc_D6839A: LitStr ","
  loc_D6839D: FLdRfVar var_5A4
  loc_D683A0: FnCDblVar
  loc_D683A2: CStrR8
  loc_D683A4: FStStrNoPop var_3A4
  loc_D683A7: ImpAdCallI2 Replace(, , , , , )
  loc_D683AC: CVarStr var_5B4
  loc_D683AF: ConcatVar var_5D0
  loc_D683B3: LitVarStr var_37C, ","
  loc_D683B8: ConcatVar var_5E0
  loc_D683BC: LitI4 0
  loc_D683C1: LitI4 -1
  loc_D683C6: LitI4 1
  loc_D683CB: LitStr "."
  loc_D683CE: LitStr ","
  loc_D683D1: FLdRfVar var_5F0
  loc_D683D4: FnCDblVar
  loc_D683D6: CStrR8
  loc_D683D8: FStStrNoPop var_3A8
  loc_D683DB: ImpAdCallI2 Replace(, , , , , )
  loc_D683E0: CVarStr var_60C
  loc_D683E3: ConcatVar var_61C
  loc_D683E7: LitVarStr var_6A0, ","
  loc_D683EC: ConcatVar var_62C
  loc_D683F0: LitI4 0
  loc_D683F5: LitI4 -1
  loc_D683FA: LitI4 1
  loc_D683FF: LitStr "."
  loc_D68402: LitStr ","
  loc_D68405: FLdRfVar var_658
  loc_D68408: FnCDblVar
  loc_D6840A: CStrR8
  loc_D6840C: FStStrNoPop var_3AC
  loc_D6840F: ImpAdCallI2 Replace(, , , , , )
  loc_D68414: CVarStr var_668
  loc_D68417: ConcatVar var_688
  loc_D6841B: LitVarStr var_740, ","
  loc_D68420: ConcatVar var_6B4
  loc_D68424: LitI4 0
  loc_D68429: LitI4 -1
  loc_D6842E: LitI4 1
  loc_D68433: LitStr "."
  loc_D68436: LitStr ","
  loc_D68439: FLdRfVar var_6C4
  loc_D6843C: FnCDblVar
  loc_D6843E: CStrR8
  loc_D68440: FStStrNoPop var_3B0
  loc_D68443: ImpAdCallI2 Replace(, , , , , )
  loc_D68448: CVarStr var_6E4
  loc_D6844B: ConcatVar var_710
  loc_D6844F: LitVarStr var_800, ","
  loc_D68454: ConcatVar var_720
  loc_D68458: LitI4 0
  loc_D6845D: LitI4 -1
  loc_D68462: LitI4 1
  loc_D68467: LitStr "."
  loc_D6846A: LitStr ","
  loc_D6846D: FLdRfVar var_730
  loc_D68470: FnCDblVar
  loc_D68472: CStrR8
  loc_D68474: FStStrNoPop var_3B4
  loc_D68477: ImpAdCallI2 Replace(, , , , , )
  loc_D6847C: CVarStr var_750
  loc_D6847F: ConcatVar var_760
  loc_D68483: LitVarStr var_8CC, ","
  loc_D68488: ConcatVar var_770
  loc_D6848C: LitI4 0
  loc_D68491: LitI4 -1
  loc_D68496: LitI4 1
  loc_D6849B: LitStr "."
  loc_D6849E: LitStr ","
  loc_D684A1: FLdRfVar var_790
  loc_D684A4: FnCDblVar
  loc_D684A6: CStrR8
  loc_D684A8: FStStrNoPop var_3B8
  loc_D684AB: ImpAdCallI2 Replace(, , , , , )
  loc_D684B0: CVarStr var_7A0
  loc_D684B3: ConcatVar var_7B0
  loc_D684B7: LitVarStr var_91C, ","
  loc_D684BC: ConcatVar var_7D0
  loc_D684C0: LitI4 0
  loc_D684C5: LitI4 -1
  loc_D684CA: LitI4 1
  loc_D684CF: LitStr "."
  loc_D684D2: LitStr ","
  loc_D684D5: FLdRfVar var_7E0
  loc_D684D8: FnCDblVar
  loc_D684DA: CStrR8
  loc_D684DC: FStStrNoPop var_3BC
  loc_D684DF: ImpAdCallI2 Replace(, , , , , )
  loc_D684E4: CVarStr var_7F0
  loc_D684E7: ConcatVar var_810
  loc_D684EB: LitVarStr var_94C, ",'"
  loc_D684F0: ConcatVar var_820
  loc_D684F4: ImpAdLdI4 MemVar_D9302C
  loc_D684F7: CVarStr var_95C
  loc_D684FA: ConcatVar var_830
  loc_D684FE: LitVarStr var_96C, "');"
  loc_D68503: ConcatVar var_850
  loc_D68507: CStrVarTmp
  loc_D68508: FStStrNoPop var_3C0
  loc_D6850B: FLdPr Me
  loc_D6850E: MemStStrCopy
  loc_D68512: FFreeStr var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1D4 = "": var_390 = "": var_394 = "": var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3A8 = "": var_3AC = "": var_3B0 = "": var_3B4 = "": var_3B8 = "": var_3BC = ""
  loc_D6853B: FFreeAd var_158 = "": var_1CC = ""
  loc_D68544: FFreeVar var_5E0 = "": var_60C = "": var_61C = "": var_658 = "": var_62C = "": var_668 = "": var_688 = "": var_6C4 = "": var_6B4 = "": var_6E4 = "": var_710 = "": var_730 = "": var_720 = "": var_750 = "": var_760 = "": var_790 = "": var_770 = "": var_7A0 = "": var_7B0 = "": var_7E0 = "": var_7D0 = "": var_7F0 = "": var_810 = "": var_820 = "": var_830 = "": var_850 = "": var_154 = "": var_144 = "": var_188 = "": var_1A8 = "": var_20C = "": var_22C = "": var_21C = "": var_24C = "": var_32C = "": var_38C = "": var_35C = "": var_47C = "": var_48C = "": var_4B4 = "": var_49C = "": var_4C4 = "": var_4D4 = "": var_500 = "": var_4F0 = "": var_510 = "": var_52C = "": var_558 = "": var_53C = "": var_568 = "": var_578 = "": var_5A4 = "": var_594 = "": var_5B4 = "": var_5D0 = ""
  loc_D685B7: FLdPr Me
  loc_D685BA: MemLdFPR8 global_216
  loc_D685BD: LitVarI2 var_134, 1
  loc_D685C2: PopAdLdVar
  loc_D685C3: FLdRfVar var_9C
  loc_D685C6: VarIndexLdVar
  loc_D685CC: FnCDblVar
  loc_D685CE: AddR8
  loc_D685CF: LitVarI2 var_178, 2
  loc_D685D4: PopAdLdVar
  loc_D685D5: FLdRfVar var_9C
  loc_D685D8: VarIndexLdVar
  loc_D685DE: FnCDblVar
  loc_D685E0: AddR8
  loc_D685E1: LitVarI2 var_23C, 3
  loc_D685E6: PopAdLdVar
  loc_D685E7: FLdRfVar var_9C
  loc_D685EA: VarIndexLdVar
  loc_D685F0: FnCDblVar
  loc_D685F2: AddR8
  loc_D685F3: LitVarI2 var_26C, 4
  loc_D685F8: PopAdLdVar
  loc_D685F9: FLdRfVar var_9C
  loc_D685FC: VarIndexLdVar
  loc_D68602: FnCDblVar
  loc_D68604: AddR8
  loc_D68605: LitVarI2 var_28C, 5
  loc_D6860A: PopAdLdVar
  loc_D6860B: FLdRfVar var_9C
  loc_D6860E: VarIndexLdVar
  loc_D68614: FnCDblVar
  loc_D68616: AddR8
  loc_D68617: LitVarI2 var_2AC, 6
  loc_D6861C: PopAdLdVar
  loc_D6861D: FLdRfVar var_9C
  loc_D68620: VarIndexLdVar
  loc_D68626: FnCDblVar
  loc_D68628: AddR8
  loc_D68629: LitVarI2 var_2CC, 7
  loc_D6862E: PopAdLdVar
  loc_D6862F: FLdRfVar var_9C
  loc_D68632: VarIndexLdVar
  loc_D68638: FnCDblVar
  loc_D6863A: AddR8
  loc_D6863B: LitVarI2 var_2EC, 8
  loc_D68640: PopAdLdVar
  loc_D68641: FLdRfVar var_9C
  loc_D68644: VarIndexLdVar
  loc_D6864A: FnCDblVar
  loc_D6864C: AddR8
  loc_D6864D: LitVarI2 var_30C, 9
  loc_D68652: PopAdLdVar
  loc_D68653: FLdRfVar var_9C
  loc_D68656: VarIndexLdVar
  loc_D6865C: FnCDblVar
  loc_D6865E: AddR8
  loc_D6865F: LitVarI2 var_33C, 10
  loc_D68664: PopAdLdVar
  loc_D68665: FLdRfVar var_9C
  loc_D68668: VarIndexLdVar
  loc_D6866E: FnCDblVar
  loc_D68670: AddR8
  loc_D68671: LitVarI2 var_36C, 11
  loc_D68676: PopAdLdVar
  loc_D68677: FLdRfVar var_9C
  loc_D6867A: VarIndexLdVar
  loc_D68680: FnCDblVar
  loc_D68682: AddR8
  loc_D68683: FLdPr Me
  loc_D68686: MemStFPR8 global_216
  loc_D68689: FFreeVar var_144 = "": var_154 = "": var_188 = "": var_1A8 = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_32C = "": var_35C = ""
  loc_D686A2: FLdRfVar var_158
  loc_D686A5: FLdPr Me
  loc_D686A8: MemLdRfVar from_stack_1.global_64
  loc_D686AB: NewIfNullPr clsctacte
  loc_D686AE: from_stack_1v = clsctacte.RsFrmGet()
  loc_D686B3: FLdPr var_158
  loc_D686B6: Me.MoveNext
  loc_D686BB: FFree1Ad var_158
  loc_D686BE: Branch loc_D67E8E
  loc_D686C1: Branch loc_D688CB
  loc_D686C4: LitStr "SELECT NumeApre, SUM(SaldCtct) as SaldCtct, SUM(RecaCtct) as RecaCtct FROM tmp_ctacteboleto WHERE SaldCtct > 0 AND NumeApre <> 0 AND SeleCtct = 'Si'"
  loc_D686C7: LitStr " GROUP BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.NumeApre"
  loc_D686CA: ConcatStr
  loc_D686CB: FStStrNoPop var_1B0
  loc_D686CE: FLdPr Me
  loc_D686D1: MemLdRfVar from_stack_1.global_64
  loc_D686D4: NewIfNullPr clsctacte
  loc_D686D7: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D686DC: FFree1Str var_1B0
  loc_D686DF: FLdRfVar var_1C4
  loc_D686E2: FLdRfVar var_158
  loc_D686E5: FLdPr Me
  loc_D686E8: MemLdRfVar from_stack_1.global_64
  loc_D686EB: NewIfNullPr clsctacte
  loc_D686EE: from_stack_1v = clsctacte.RsFrmGet()
  loc_D686F3: FLdPr var_158
  loc_D686F6:  = Me.RecordCount
  loc_D686FB: ILdRf var_1C4
  loc_D686FE: LitI4 0
  loc_D68703: GtI4
  loc_D68704: FFree1Ad var_158
  loc_D68707: BranchF loc_D688CB
  loc_D6870A: FLdRfVar var_1C6
  loc_D6870D: FLdRfVar var_158
  loc_D68710: FLdPr Me
  loc_D68713: MemLdRfVar from_stack_1.global_64
  loc_D68716: NewIfNullPr clsctacte
  loc_D68719: from_stack_1v = clsctacte.RsFrmGet()
  loc_D6871E: FLdPr var_158
  loc_D68721:  = Me.EOF
  loc_D68726: FLdI2 var_1C6
  loc_D68729: NotI4
  loc_D6872A: FFree1Ad var_158
  loc_D6872D: BranchF loc_D688CB
  loc_D68730: FLdRfVar var_1C6
  loc_D68733: FLdRfVar var_144
  loc_D68736: FLdRfVar var_1D0
  loc_D68739: LitVarStr var_134, "NumeApre"
  loc_D6873E: PopAdLdVar
  loc_D6873F: FLdRfVar var_1CC
  loc_D68742: FLdRfVar var_158
  loc_D68745: FLdPr Me
  loc_D68748: MemLdRfVar from_stack_1.global_64
  loc_D6874B: NewIfNullPr clsctacte
  loc_D6874E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D68753: FLdPr var_158
  loc_D68756:  = Me.Fields
  loc_D6875B: FLdPr var_1CC
  loc_D6875E: from_stack_2 = Me.Item(from_stack_1)
  loc_D68763: FLdPr var_1D0
  loc_D68766:  = Me.Value
  loc_D6876B: FLdRfVar var_144
  loc_D6876E: CI4Var
  loc_D68770: FLdPr Me
  loc_D68773: MemLdRfVar from_stack_1.global_76
  loc_D68776: NewIfNullPr clsapremio
  loc_D68779: from_stack_2v = clsapremio.BuscaInstanciaApremio(from_stack_1v)
  loc_D6877E: FLdI2 var_1C6
  loc_D68781: FStI2 var_9E
  loc_D68784: FFreeAd var_158 = "": var_1CC = ""
  loc_D6878D: FFree1Var var_144 = ""
  loc_D68790: FLdPr Me
  loc_D68793: MemLdStr global_260
  loc_D68796: LitStr "INSERT INTO boleapre (PeriBole, NumeBole, NumeApre, CodiInju, CodiFapa, CuotDefa, FealBoap, FeacBoap, EstaBoap, CoadBoap, ReseBoap, ApleBoap, DefiBoap, HoreBoap, HoofBoap, MoreBoap, MoofBoap, IcomBoap, IrecBoap, IofiBoap, CodiUsua) "
  loc_D68799: ConcatStr
  loc_D6879A: FStStrNoPop var_1B0
  loc_D6879D: LitStr " VALUES ("
  loc_D687A0: ConcatStr
  loc_D687A1: FStStrNoPop var_1B4
  loc_D687A4: FLdI2 var_86
  loc_D687A7: CStrUI1
  loc_D687A9: FStStrNoPop var_1B8
  loc_D687AC: ConcatStr
  loc_D687AD: FStStrNoPop var_1BC
  loc_D687B0: LitStr ","
  loc_D687B3: ConcatStr
  loc_D687B4: FStStrNoPop var_1C0
  loc_D687B7: ILdRf var_8C
  loc_D687BA: CStrI4
  loc_D687BC: FStStrNoPop var_1D4
  loc_D687BF: ConcatStr
  loc_D687C0: FStStrNoPop var_390
  loc_D687C3: LitStr ","
  loc_D687C6: ConcatStr
  loc_D687C7: CVarStr var_154
  loc_D687CA: FLdRfVar var_144
  loc_D687CD: FLdRfVar var_1D0
  loc_D687D0: LitVarStr var_134, "NumeApre"
  loc_D687D5: PopAdLdVar
  loc_D687D6: FLdRfVar var_1CC
  loc_D687D9: FLdRfVar var_158
  loc_D687DC: FLdPr Me
  loc_D687DF: MemLdRfVar from_stack_1.global_64
  loc_D687E2: NewIfNullPr clsctacte
  loc_D687E5: from_stack_1v = clsctacte.RsFrmGet()
  loc_D687EA: FLdPr var_158
  loc_D687ED:  = Me.Fields
  loc_D687F2: FLdPr var_1CC
  loc_D687F5: from_stack_2 = Me.Item(from_stack_1)
  loc_D687FA: FLdPr var_1D0
  loc_D687FD:  = Me.Value
  loc_D68802: FLdRfVar var_144
  loc_D68805: ConcatVar var_188
  loc_D68809: LitVarStr var_168, ","
  loc_D6880E: ConcatVar var_1A8
  loc_D68812: FLdI2 var_9E
  loc_D68815: CVarI2 var_178
  loc_D68818: ConcatVar var_20C
  loc_D6881C: LitVarStr var_198, ",0,0,'"
  loc_D68821: ConcatVar var_21C
  loc_D68825: LitI4 1
  loc_D6882A: LitI4 1
  loc_D6882F: LitVarStr var_25C, "yyyy-mm-dd"
  loc_D68834: FStVarCopyObj var_22C
  loc_D68837: FLdRfVar var_22C
  loc_D6883A: FLdRfVar var_C8
  loc_D6883D: CVarRef
  loc_D68842: ImpAdCallI2 Format$(, )
  loc_D68847: CVarStr var_24C
  loc_D6884A: ConcatVar var_32C
  loc_D6884E: LitVarStr var_26C, "',Null,'Emitido',0,0,0,0,0,0,0,0,0,0,0,'"
  loc_D68853: ConcatVar var_35C
  loc_D68857: ImpAdLdI4 MemVar_D9302C
  loc_D6885A: CVarStr var_27C
  loc_D6885D: ConcatVar var_38C
  loc_D68861: LitVarStr var_28C, "');"
  loc_D68866: ConcatVar var_47C
  loc_D6886A: CStrVarTmp
  loc_D6886B: FStStrNoPop var_394
  loc_D6886E: FLdPr Me
  loc_D68871: MemStStrCopy
  loc_D68875: FFreeStr var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1D4 = "": var_390 = ""
  loc_D68888: FFreeAd var_158 = "": var_1CC = ""
  loc_D68891: FFreeVar var_154 = "": var_144 = "": var_188 = "": var_1A8 = "": var_20C = "": var_22C = "": var_21C = "": var_24C = "": var_32C = "": var_35C = "": var_38C = ""
  loc_D688AC: FLdRfVar var_158
  loc_D688AF: FLdPr Me
  loc_D688B2: MemLdRfVar from_stack_1.global_64
  loc_D688B5: NewIfNullPr clsctacte
  loc_D688B8: from_stack_1v = clsctacte.RsFrmGet()
  loc_D688BD: FLdPr var_158
  loc_D688C0: Me.MoveNext
  loc_D688C5: FFree1Ad var_158
  loc_D688C8: Branch loc_D6870A
  loc_D688CB: LitI2_Byte 0
  loc_D688CD: CR8I2
  loc_D688CE: FStFPR8 var_124
  loc_D688D1: LitI2_Byte 0
  loc_D688D3: CR8I2
  loc_D688D4: FStFPR8 var_11C
  loc_D688D7: ImpAdLdFPR8 MemVar_D93050
  loc_D688DA: FLdFPR8 var_114
  loc_D688DD: NeR8
  loc_D688DE: BranchF loc_D68966
  loc_D688E1: FLdFPR8 var_114
  loc_D688E4: ImpAdLdFPR8 MemVar_D93050
  loc_D688E7: GtR4
  loc_D688E8: BranchF loc_D68914
  loc_D688EB: LitI4 2
  loc_D688F0: FLdFPR8 var_114
  loc_D688F3: ImpAdLdFPR8 MemVar_D93050
  loc_D688F6: SubR4
  loc_D688F7: CVarR8
  loc_D688FB: FLdRfVar var_154
  loc_D688FE: ImpAdCallFPR4  = Round(, )
  loc_D68903: FLdRfVar var_154
  loc_D68906: CR4Var
  loc_D68907: FStFPR8 var_11C
  loc_D6890A: FFreeVar var_144 = ""
  loc_D68911: Branch loc_D68944
  loc_D68914: FLdFPR8 var_114
  loc_D68917: ImpAdLdFPR8 MemVar_D93050
  loc_D6891A: LtR8
  loc_D6891B: BranchF loc_D68944
  loc_D6891E: LitI4 2
  loc_D68923: ImpAdLdFPR8 MemVar_D93050
  loc_D68926: FLdFPR8 var_114
  loc_D68929: SubR4
  loc_D6892A: CVarR8
  loc_D6892E: FLdRfVar var_154
  loc_D68931: ImpAdCallFPR4  = Round(, )
  loc_D68936: FLdRfVar var_154
  loc_D68939: CR4Var
  loc_D6893A: FStFPR8 var_124
  loc_D6893D: FFreeVar var_144 = ""
  loc_D68944: ImpAdLdFPR8 MemVar_D93040
  loc_D68947: ImpAdLdFPR8 MemVar_D93058
  loc_D6894A: AddR8
  loc_D6894B: ImpAdLdFPR8 MemVar_D93050
  loc_D6894E: AddR8
  loc_D6894F: FLdFPR8 var_11C
  loc_D68952: AddR8
  loc_D68953: FLdFPR8 var_124
  loc_D68956: SubR4
  loc_D68957: ImpAdLdFPR8 MemVar_D93060
  loc_D6895A: AddR8
  loc_D6895B: ImpAdLdFPR8 MemVar_D93048
  loc_D6895E: SubR4
  loc_D6895F: ImpAdLdFPR8 MemVar_D93068
  loc_D68962: AddR8
  loc_D68963: ImpAdStFPR8 MemVar_D93070
  loc_D68966: ImpAdLdUI1
  loc_D6896A: CI2UI1
  loc_D6896C: LitI2_Byte 5
  loc_D6896E: EqI2
  loc_D6896F: BranchF loc_D689E4
  loc_D68972: FLdFPR8 var_E4
  loc_D68975: LitI2_Byte 0
  loc_D68977: CR8I2
  loc_D68978: GtR4
  loc_D68979: BranchF loc_D68985
  loc_D6897C: FLdFPR8 var_FC
  loc_D6897F: FStFPR8 var_10C
  loc_D68982: Branch loc_D689E1
  loc_D68985: FLdPr Me
  loc_D68988: VCallAd Control_ID_FechVencMsk
  loc_D6898B: FStAdFunc var_158
  loc_D6898E: FLdPr var_158
  loc_D68991: LateIdLdVar var_144 DispID_15 0
  loc_D68998: PopAd
  loc_D6899A: FLdFPR8 var_104
  loc_D6899D: FLdRfVar var_144
  loc_D689A0: CStrVarTmp
  loc_D689A1: FStStrNoPop var_1B0
  loc_D689A4: CDateStr
  loc_D689A6: GeR8
  loc_D689A7: FFree1Str var_1B0
  loc_D689AA: FFree1Ad var_158
  loc_D689AD: FFree1Var var_144 = ""
  loc_D689B0: BranchF loc_D689BC
  loc_D689B3: FLdFPR8 var_104
  loc_D689B6: FStFPR8 var_10C
  loc_D689B9: Branch loc_D689E1
  loc_D689BC: FLdPr Me
  loc_D689BF: VCallAd Control_ID_FechVencMsk
  loc_D689C2: FStAdFunc var_158
  loc_D689C5: FLdPr var_158
  loc_D689C8: LateIdLdVar var_144 DispID_15 0
  loc_D689CF: CStrVarTmp
  loc_D689D0: FStStrNoPop var_1B0
  loc_D689D3: CDateStr
  loc_D689D5: FStFPR8 var_10C
  loc_D689D8: FFree1Str var_1B0
  loc_D689DB: FFree1Ad var_158
  loc_D689DE: FFree1Var var_144 = ""
  loc_D689E1: Branch loc_D68A09
  loc_D689E4: FLdPr Me
  loc_D689E7: VCallAd Control_ID_FechVencMsk
  loc_D689EA: FStAdFunc var_158
  loc_D689ED: FLdPr var_158
  loc_D689F0: LateIdLdVar var_144 DispID_15 0
  loc_D689F7: CStrVarTmp
  loc_D689F8: FStStrNoPop var_1B0
  loc_D689FB: CDateStr
  loc_D689FD: FStFPR8 var_10C
  loc_D68A00: FFree1Str var_1B0
  loc_D68A03: FFree1Ad var_158
  loc_D68A06: FFree1Var var_144 = ""
  loc_D68A09: FLdPr Me
  loc_D68A0C: MemLdStr global_260
  loc_D68A0F: FLdPr Me
  loc_D68A12: MemLdRfVar from_stack_1.global_68
  loc_D68A15: NewIfNullPr clsboleto
  loc_D68A18: Call clsboleto.AddnewTransaction(from_stack_1v)
  loc_D68A1D: LitI4 2
  loc_D68A22: FLdPr Me
  loc_D68A25: MemLdRfVar from_stack_1.global_184
  loc_D68A28: CVarRef
  loc_D68A2D: FLdRfVar var_144
  loc_D68A30: ImpAdCallFPR4  = Round(, )
  loc_D68A35: FLdRfVar var_144
  loc_D68A38: LitI4 2
  loc_D68A3D: ImpAdLdRf MemVar_D93040
  loc_D68A40: CVarRef
  loc_D68A45: FLdRfVar var_154
  loc_D68A48: ImpAdCallFPR4  = Round(, )
  loc_D68A4D: FLdRfVar var_154
  loc_D68A50: NeVarBool
  loc_D68A52: FFreeVar var_144 = ""
  loc_D68A59: BranchF loc_D68A71
  loc_D68A5C: LitStr "El total del CAPITAL del BOLETO no es igual al TOTAL del CAPITAL de los movimientos del boleto, verifique..."
  loc_D68A5F: FLdPr Me
  loc_D68A62: MemStStrCopy
  loc_D68A66: FLdPr Me
  loc_D68A69: MemLdStr global_256
  loc_D68A6C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D68A71: LitI4 2
  loc_D68A76: FLdPr Me
  loc_D68A79: MemLdRfVar from_stack_1.global_208
  loc_D68A7C: CVarRef
  loc_D68A81: FLdRfVar var_144
  loc_D68A84: ImpAdCallFPR4  = Round(, )
  loc_D68A89: FLdRfVar var_144
  loc_D68A8C: LitI4 2
  loc_D68A91: ImpAdLdRf MemVar_D93058
  loc_D68A94: CVarRef
  loc_D68A99: FLdRfVar var_154
  loc_D68A9C: ImpAdCallFPR4  = Round(, )
  loc_D68AA1: FLdRfVar var_154
  loc_D68AA4: NeVarBool
  loc_D68AA6: FFreeVar var_144 = ""
  loc_D68AAD: BranchF loc_D68AC5
  loc_D68AB0: LitStr "El total del RECARGO del boleto no es igual al TOTAL del RECARGO de los movimientos del boleto, verifique..."
  loc_D68AB3: FLdPr Me
  loc_D68AB6: MemStStrCopy
  loc_D68ABA: FLdPr Me
  loc_D68ABD: MemLdStr global_256
  loc_D68AC0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D68AC5: LitI4 2
  loc_D68ACA: FLdPr Me
  loc_D68ACD: MemLdRfVar from_stack_1.global_192
  loc_D68AD0: CVarRef
  loc_D68AD5: FLdRfVar var_144
  loc_D68AD8: ImpAdCallFPR4  = Round(, )
  loc_D68ADD: FLdRfVar var_144
  loc_D68AE0: LitI4 2
  loc_D68AE5: ImpAdLdRf MemVar_D93048
  loc_D68AE8: CVarRef
  loc_D68AED: FLdRfVar var_154
  loc_D68AF0: ImpAdCallFPR4  = Round(, )
  loc_D68AF5: FLdRfVar var_154
  loc_D68AF8: NeVarBool
  loc_D68AFA: FFreeVar var_144 = ""
  loc_D68B01: BranchF loc_D68B19
  loc_D68B04: LitStr "El total del DESCUENTO del boleto no es igual al TOTAL del DESCUENTO de los movimientos del boleto, verifique..."
  loc_D68B07: FLdPr Me
  loc_D68B0A: MemStStrCopy
  loc_D68B0E: FLdPr Me
  loc_D68B11: MemLdStr global_256
  loc_D68B14: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D68B19: LitI4 2
  loc_D68B1E: FLdPr Me
  loc_D68B21: MemLdRfVar from_stack_1.global_216
  loc_D68B24: CVarRef
  loc_D68B29: FLdRfVar var_144
  loc_D68B2C: ImpAdCallFPR4  = Round(, )
  loc_D68B31: FLdRfVar var_144
  loc_D68B34: LitI4 2
  loc_D68B39: ImpAdLdRf MemVar_D93070
  loc_D68B3C: CVarRef
  loc_D68B41: FLdRfVar var_154
  loc_D68B44: ImpAdCallFPR4  = Round(, )
  loc_D68B49: FLdRfVar var_154
  loc_D68B4C: NeVarBool
  loc_D68B4E: FFreeVar var_144 = ""
  loc_D68B55: BranchF loc_D68B6D
  loc_D68B58: LitStr "El TOTAL GENERAL del BOLETO no es igual al TOTAL GENERAL del los movimientos del boleto, verifique..."
  loc_D68B5B: FLdPr Me
  loc_D68B5E: MemStStrCopy
  loc_D68B62: FLdPr Me
  loc_D68B65: MemLdStr global_256
  loc_D68B68: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D68B6D: ImpAdLdRf MemVar_D94934
  loc_D68B70: NewIfNullAd
  loc_D68B73: FStAd var_970 
  loc_D68B77: FLdRfVar var_1C6
  loc_D68B7A: ImpAdLdRf MemVar_D94934
  loc_D68B7D: NewIfNullPr rptEmisionBoleto
  loc_D68B80: from_stack_1v = rptEmisionBoleto.ImprimiendoGet()
  loc_D68B85: FLdI2 var_1C6
  loc_D68B88: BranchF loc_D68B93
  loc_D68B8B: ImpAdCallFPR4 DoEvents()
  loc_D68B90: Branch loc_D68B77
  loc_D68B93: ImpAdLdRf MemVar_D94934
  loc_D68B96: NewIfNullAd
  loc_D68B99: CastAd
  loc_D68B9C: FStAdFuncNoPop
  loc_D68B9F: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_D68BA4: FFree1Ad var_158
  loc_D68BA7: FLdI2 var_86
  loc_D68BAA: CStrUI1
  loc_D68BAC: CVarStr var_144
  loc_D68BAF: PopAdLdVar
  loc_D68BB0: FLdPr var_970
  loc_D68BB3: VCallAd Control_ID_PeriBoleMsk
  loc_D68BB6: FStAdFunc var_158
  loc_D68BB9: FLdPr var_158
  loc_D68BBC: LateIdSt
  loc_D68BC1: FFree1Ad var_158
  loc_D68BC4: FFree1Var var_144 = ""
  loc_D68BC7: ILdRf var_8C
  loc_D68BCA: CStrI4
  loc_D68BCC: CVarStr var_144
  loc_D68BCF: PopAdLdVar
  loc_D68BD0: FLdPr var_970
  loc_D68BD3: VCallAd Control_ID_NumeBoleMsk
  loc_D68BD6: FStAdFunc var_158
  loc_D68BD9: FLdPr var_158
  loc_D68BDC: LateIdSt
  loc_D68BE1: FFree1Ad var_158
  loc_D68BE4: FFree1Var var_144 = ""
  loc_D68BE7: LitVarI4
  loc_D68BEF: LitVarI4
  loc_D68BF7: ImpAdLdI2 MemVar_D93078
  loc_D68BFA: LitI2_Byte 0
  loc_D68BFC: EqI2
  loc_D68BFD: CVarBoolI2 var_134
  loc_D68C01: FLdRfVar var_188
  loc_D68C04: ImpAdCallFPR4  = IIf(, , )
  loc_D68C09: FLdRfVar var_188
  loc_D68C0C: CI2Var
  loc_D68C0D: FLdPr var_970
  loc_D68C10: VCallAd Control_ID_BancoChk
  loc_D68C13: FStAdFunc var_158
  loc_D68C16: FLdPr var_158
  loc_D68C19: rptEmisionBoleto.CheckBox.Value = from_stack_1
  loc_D68C1E: FFree1Ad var_158
  loc_D68C21: FFreeVar var_134 = "": var_144 = "": var_154 = ""
  loc_D68C2C: FLdPr Me
  loc_D68C2F: MemLdStr global_264
  loc_D68C32: FLdPr var_970
  loc_D68C35: Call rptEmisionBoleto.sImprimirApremioPendientePut(from_stack_1v)
  loc_D68C3A: FLdPr Me
  loc_D68C3D: MemLdStr global_268
  loc_D68C40: FLdPr var_970
  loc_D68C43: Call rptEmisionBoleto.sImprimirApremioInhibidoPut(from_stack_1v)
  loc_D68C48: FLdPr Me
  loc_D68C4B: MemLdStr global_272
  loc_D68C4E: FLdPr var_970
  loc_D68C51: Call rptEmisionBoleto.sImprimirApremioEmbargoPut(from_stack_1v)
  loc_D68C56: FLdRfVar var_1B0
  loc_D68C59: ImpAdLdRf MemVar_D9459C
  loc_D68C5C: NewIfNullPr dlgTotalBoleto
  loc_D68C5F: from_stack_1v = dlgTotalBoleto.ImpSeleccionadaGet()
  loc_D68C64: ILdRf var_1B0
  loc_D68C67: FLdPr var_970
  loc_D68C6A: VCallAd Control_ID_TotalTxt
  loc_D68C6D: FStAdFunc var_158
  loc_D68C70: FLdPr var_158
  loc_D68C73: dlgTotalBoleto.ComboBox.Text = from_stack_1
  loc_D68C78: FFree1Str var_1B0
  loc_D68C7B: FFree1Ad var_158
  loc_D68C7E: FLdPr var_970
  loc_D68C81: Call rptEmisionBoleto.cmdPredeterminada_Click()
  loc_D68C86: LitNothing
  loc_D68C88: FStAd var_970 
  loc_D68C8C: LitI2_Byte 0
  loc_D68C8E: FLdPr Me
  loc_D68C91: VCallAd Control_ID_HabilitarChk
  loc_D68C94: FStAdFunc var_158
  loc_D68C97: FLdPr var_158
  loc_D68C9A: Me.Value = from_stack_1
  loc_D68C9F: FFree1Ad var_158
  loc_D68CA2: LitStr vbNullString
  loc_D68CA5: FLdPr Me
  loc_D68CA8: VCallAd Control_ID_PagoCuentaTxt
  loc_D68CAB: FStAdFunc var_158
  loc_D68CAE: FLdPr var_158
  loc_D68CB1: Me.Text = from_stack_1
  loc_D68CB6: FFree1Ad var_158
  loc_D68CB9: LitI4 0
  loc_D68CBE: LitI4 0
  loc_D68CC3: FLdRfVar var_974
  loc_D68CC6: Redim
  loc_D68CD0: FLdPr Me
  loc_D68CD3: VCallAd Control_ID_PagoCuentaTxt
  loc_D68CD6: CVarAd
  loc_D68CDA: ParmAry1St
  loc_D68CE0: FLdRfVar var_974
  loc_D68CE3: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_D68CE8: FLdRfVar var_974
  loc_D68CEB: Erase
  loc_D68CEC: Call Proc_164_23_B1FC70()
  loc_D68CF1: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_GotFocus() 'ACBC6C
  'Data Table: 4E7624
  loc_ACBB54: Call Proc_164_23_B1FC70()
  loc_ACBB59: LitStr vbNullString
  loc_ACBB5C: FLdPr Me
  loc_ACBB5F: VCallAd Control_ID_CucuPersLbl
  loc_ACBB62: FStAdFunc var_88
  loc_ACBB65: FLdPr var_88
  loc_ACBB68: Me.Caption = from_stack_1
  loc_ACBB6D: FFree1Ad var_88
  loc_ACBB70: LitStr vbNullString
  loc_ACBB73: FLdPr Me
  loc_ACBB76: VCallAd Control_ID_DetaPersLbl
  loc_ACBB79: FStAdFunc var_88
  loc_ACBB7C: FLdPr var_88
  loc_ACBB7F: Me.Caption = from_stack_1
  loc_ACBB84: FFree1Ad var_88
  loc_ACBB87: LitStr vbNullString
  loc_ACBB8A: FLdPr Me
  loc_ACBB8D: VCallAd Control_ID_DomiPersLbl
  loc_ACBB90: FStAdFunc var_88
  loc_ACBB93: FLdPr var_88
  loc_ACBB96: Me.Caption = from_stack_1
  loc_ACBB9B: FFree1Ad var_88
  loc_ACBB9E: LitI2_Byte 0
  loc_ACBBA0: FLdPr Me
  loc_ACBBA3: VCallAd Control_ID_SeleTodoChk
  loc_ACBBA6: FStAdFunc var_88
  loc_ACBBA9: FLdPr var_88
  loc_ACBBAC: Me.Value = from_stack_1
  loc_ACBBB1: FFree1Ad var_88
  loc_ACBBB4: LitI2_Byte 0
  loc_ACBBB6: FLdPr Me
  loc_ACBBB9: VCallAd Control_ID_HabilitarChk
  loc_ACBBBC: FStAdFunc var_88
  loc_ACBBBF: FLdPr var_88
  loc_ACBBC2: Me.Value = from_stack_1
  loc_ACBBC7: FFree1Ad var_88
  loc_ACBBCA: LitStr vbNullString
  loc_ACBBCD: FLdPr Me
  loc_ACBBD0: VCallAd Control_ID_PagoCuentaTxt
  loc_ACBBD3: FStAdFunc var_88
  loc_ACBBD6: FLdPr var_88
  loc_ACBBD9: Me.Text = from_stack_1
  loc_ACBBDE: FFree1Ad var_88
  loc_ACBBE1: LitI4 0
  loc_ACBBE6: LitI4 1
  loc_ACBBEB: FLdRfVar var_8C
  loc_ACBBEE: Redim
  loc_ACBBF8: FLdPr Me
  loc_ACBBFB: VCallAd Control_ID_HabilitarChk
  loc_ACBBFE: CVarAd
  loc_ACBC02: ParmAry1St
  loc_ACBC08: FLdPr Me
  loc_ACBC0B: VCallAd Control_ID_PagoCuentaTxt
  loc_ACBC0E: CVarAd
  loc_ACBC12: ParmAry1St
  loc_ACBC18: FLdRfVar var_8C
  loc_ACBC1B: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_ACBC20: FLdRfVar var_8C
  loc_ACBC23: Erase
  loc_ACBC24: FLdPrThis
  loc_ACBC25: VCallAd Control_ID_NumeCtaTxt
  loc_ACBC28: CVarAd
  loc_ACBC2C: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_ACBC31: FFree1Var var_9C = ""
  loc_ACBC34: FLdRfVar var_AE
  loc_ACBC37: FLdPr Me
  loc_ACBC3A: VCallAd Control_ID_SeleTodoChk
  loc_ACBC3D: FStAdFunc var_88
  loc_ACBC40: FLdPr var_88
  loc_ACBC43:  = Me.Enabled
  loc_ACBC48: FLdI2 var_AE
  loc_ACBC4B: LitI2_Byte 0
  loc_ACBC4D: EqI2
  loc_ACBC4E: FFree1Ad var_88
  loc_ACBC51: BranchF loc_ACBC6A
  loc_ACBC54: LitI2_Byte &HFF
  loc_ACBC56: FLdPr Me
  loc_ACBC59: VCallAd Control_ID_SeleTodoChk
  loc_ACBC5C: FStAdFunc var_88
  loc_ACBC5F: FLdPr var_88
  loc_ACBC62: Me.Enabled = from_stack_1b
  loc_ACBC67: FFree1Ad var_88
  loc_ACBC6A: ExitProcHresult
  loc_ACBC6B: LtI2
End Sub

Private Sub NumeCtaTxt_KeyPress(KeyAscii As Integer) 'B4F9E0
  'Data Table: 4E7624
  loc_B4F638: ILdI2 KeyAscii
  loc_B4F63B: CI4UI1
  loc_B4F63C: LitI4 &H20
  loc_B4F641: EqI4
  loc_B4F642: BranchF loc_B4F9DF
  loc_B4F645: LitI2_Byte 0
  loc_B4F647: IStI2 KeyAscii
  loc_B4F64A: FLdRfVar var_8A
  loc_B4F64D: FLdPr Me
  loc_B4F650: VCallAd Control_ID_OficinaCbo
  loc_B4F653: FStAdFunc var_88
  loc_B4F656: FLdPr var_88
  loc_B4F659:  = Me.ListIndex
  loc_B4F65E: FLdI2 var_8A
  loc_B4F661: FStI2 var_8C
  loc_B4F664: FFree1Ad var_88
  loc_B4F667: FLdI2 var_8C
  loc_B4F66A: LitI2_Byte 0
  loc_B4F66C: EqI2
  loc_B4F66D: BranchF loc_B4F67B
  loc_B4F670: LitI2_Byte 1
  loc_B4F672: CUI1I2
  loc_B4F674: ImpAdStUI1 MemVar_D93038
  loc_B4F678: Branch loc_B4F6F0
  loc_B4F67B: FLdI2 var_8C
  loc_B4F67E: LitI2_Byte 1
  loc_B4F680: EqI2
  loc_B4F681: BranchF loc_B4F68F
  loc_B4F684: LitI2_Byte 2
  loc_B4F686: CUI1I2
  loc_B4F688: ImpAdStUI1 MemVar_D93038
  loc_B4F68C: Branch loc_B4F6F0
  loc_B4F68F: FLdI2 var_8C
  loc_B4F692: LitI2_Byte 2
  loc_B4F694: EqI2
  loc_B4F695: BranchF loc_B4F6A3
  loc_B4F698: LitI2_Byte 3
  loc_B4F69A: CUI1I2
  loc_B4F69C: ImpAdStUI1 MemVar_D93038
  loc_B4F6A0: Branch loc_B4F6F0
  loc_B4F6A3: FLdI2 var_8C
  loc_B4F6A6: LitI2_Byte 3
  loc_B4F6A8: EqI2
  loc_B4F6A9: BranchF loc_B4F6B7
  loc_B4F6AC: LitI2_Byte 4
  loc_B4F6AE: CUI1I2
  loc_B4F6B0: ImpAdStUI1 MemVar_D93038
  loc_B4F6B4: Branch loc_B4F6F0
  loc_B4F6B7: FLdI2 var_8C
  loc_B4F6BA: LitI2_Byte 4
  loc_B4F6BC: EqI2
  loc_B4F6BD: BranchF loc_B4F6CB
  loc_B4F6C0: LitI2_Byte 5
  loc_B4F6C2: CUI1I2
  loc_B4F6C4: ImpAdStUI1 MemVar_D93038
  loc_B4F6C8: Branch loc_B4F6F0
  loc_B4F6CB: FLdI2 var_8C
  loc_B4F6CE: LitI2_Byte 5
  loc_B4F6D0: EqI2
  loc_B4F6D1: BranchF loc_B4F6DF
  loc_B4F6D4: LitI2_Byte 6
  loc_B4F6D6: CUI1I2
  loc_B4F6D8: ImpAdStUI1 MemVar_D93038
  loc_B4F6DC: Branch loc_B4F6F0
  loc_B4F6DF: FLdI2 var_8C
  loc_B4F6E2: LitI2_Byte 6
  loc_B4F6E4: EqI2
  loc_B4F6E5: BranchF loc_B4F6F0
  loc_B4F6E8: LitI2_Byte 7
  loc_B4F6EA: CUI1I2
  loc_B4F6EC: ImpAdStUI1 MemVar_D93038
  loc_B4F6F0: LitVar_Missing var_AC
  loc_B4F6F3: PopAdLdVar
  loc_B4F6F4: LitVarI4
  loc_B4F6FC: PopAdLdVar
  loc_B4F6FD: ImpAdLdRf MemVar_D94034
  loc_B4F700: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4F703: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_B4F708: FLdRfVar var_B0
  loc_B4F70B: FLdRfVar var_88
  loc_B4F70E: ImpAdLdRf MemVar_D94034
  loc_B4F711: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4F714: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B4F719: FLdPr var_88
  loc_B4F71C: from_stack_1 = clsbase.RecordCount
  loc_B4F721: ILdRf var_B0
  loc_B4F724: LitI4 0
  loc_B4F729: GtI4
  loc_B4F72A: FFree1Ad var_88
  loc_B4F72D: BranchF loc_B4F9CD
  loc_B4F730: FLdRfVar var_CC
  loc_B4F733: FLdRfVar var_BC
  loc_B4F736: LitVarStr var_9C, "CodiOfic"
  loc_B4F73B: PopAdLdVar
  loc_B4F73C: FLdRfVar var_B8
  loc_B4F73F: FLdRfVar var_B4
  loc_B4F742: FLdRfVar var_88
  loc_B4F745: ImpAdLdRf MemVar_D94034
  loc_B4F748: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4F74B: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B4F750: FLdPr var_88
  loc_B4F753: from_stack_1v = clsbase.RsFrmGet()
  loc_B4F758: FLdPr var_B4
  loc_B4F75B:  = Me.Fields
  loc_B4F760: FLdPr var_B8
  loc_B4F763: from_stack_2 = Me.Item(from_stack_1)
  loc_B4F768: FLdPr var_BC
  loc_B4F76B:  = Me.Value
  loc_B4F770: FLdRfVar var_CC
  loc_B4F773: FStVar var_DC
  loc_B4F777: FFreeAd var_88 = "": var_B4 = "": var_B8 = ""
  loc_B4F782: FLdRfVar var_DC
  loc_B4F785: LitVarI2 var_9C, 1
  loc_B4F78A: HardType
  loc_B4F78B: EqVarBool
  loc_B4F78D: BranchF loc_B4F7C7
  loc_B4F790: FLdRfVar var_E0
  loc_B4F793: LitI2_Byte 0
  loc_B4F795: FLdPr Me
  loc_B4F798: VCallAd Control_ID_OficinaCbo
  loc_B4F79B: FStAdFunc var_88
  loc_B4F79E: FLdPr var_88
  loc_B4F7A1: from_stack_2 = Me.List(from_stack_1)
  loc_B4F7A6: ILdRf var_E0
  loc_B4F7A9: FLdPr Me
  loc_B4F7AC: VCallAd Control_ID_OficinaCbo
  loc_B4F7AF: FStAdFunc var_B4
  loc_B4F7B2: FLdPr var_B4
  loc_B4F7B5: Me.Text = from_stack_1
  loc_B4F7BA: FFree1Str var_E0
  loc_B4F7BD: FFreeAd var_88 = ""
  loc_B4F7C4: Branch loc_B4F962
  loc_B4F7C7: FLdRfVar var_DC
  loc_B4F7CA: LitVarI2 var_9C, 2
  loc_B4F7CF: HardType
  loc_B4F7D0: EqVarBool
  loc_B4F7D2: BranchF loc_B4F80C
  loc_B4F7D5: FLdRfVar var_E0
  loc_B4F7D8: LitI2_Byte 1
  loc_B4F7DA: FLdPr Me
  loc_B4F7DD: VCallAd Control_ID_OficinaCbo
  loc_B4F7E0: FStAdFunc var_88
  loc_B4F7E3: FLdPr var_88
  loc_B4F7E6: from_stack_2 = Me.List(from_stack_1)
  loc_B4F7EB: ILdRf var_E0
  loc_B4F7EE: FLdPr Me
  loc_B4F7F1: VCallAd Control_ID_OficinaCbo
  loc_B4F7F4: FStAdFunc var_B4
  loc_B4F7F7: FLdPr var_B4
  loc_B4F7FA: Me.Text = from_stack_1
  loc_B4F7FF: FFree1Str var_E0
  loc_B4F802: FFreeAd var_88 = ""
  loc_B4F809: Branch loc_B4F962
  loc_B4F80C: FLdRfVar var_DC
  loc_B4F80F: LitVarI2 var_9C, 3
  loc_B4F814: HardType
  loc_B4F815: EqVarBool
  loc_B4F817: BranchF loc_B4F851
  loc_B4F81A: FLdRfVar var_E0
  loc_B4F81D: LitI2_Byte 2
  loc_B4F81F: FLdPr Me
  loc_B4F822: VCallAd Control_ID_OficinaCbo
  loc_B4F825: FStAdFunc var_88
  loc_B4F828: FLdPr var_88
  loc_B4F82B: from_stack_2 = Me.List(from_stack_1)
  loc_B4F830: ILdRf var_E0
  loc_B4F833: FLdPr Me
  loc_B4F836: VCallAd Control_ID_OficinaCbo
  loc_B4F839: FStAdFunc var_B4
  loc_B4F83C: FLdPr var_B4
  loc_B4F83F: Me.Text = from_stack_1
  loc_B4F844: FFree1Str var_E0
  loc_B4F847: FFreeAd var_88 = ""
  loc_B4F84E: Branch loc_B4F962
  loc_B4F851: FLdRfVar var_DC
  loc_B4F854: LitVarI2 var_9C, 4
  loc_B4F859: HardType
  loc_B4F85A: EqVarBool
  loc_B4F85C: BranchF loc_B4F896
  loc_B4F85F: FLdRfVar var_E0
  loc_B4F862: LitI2_Byte 3
  loc_B4F864: FLdPr Me
  loc_B4F867: VCallAd Control_ID_OficinaCbo
  loc_B4F86A: FStAdFunc var_88
  loc_B4F86D: FLdPr var_88
  loc_B4F870: from_stack_2 = Me.List(from_stack_1)
  loc_B4F875: ILdRf var_E0
  loc_B4F878: FLdPr Me
  loc_B4F87B: VCallAd Control_ID_OficinaCbo
  loc_B4F87E: FStAdFunc var_B4
  loc_B4F881: FLdPr var_B4
  loc_B4F884: Me.Text = from_stack_1
  loc_B4F889: FFree1Str var_E0
  loc_B4F88C: FFreeAd var_88 = ""
  loc_B4F893: Branch loc_B4F962
  loc_B4F896: FLdRfVar var_DC
  loc_B4F899: LitVarI2 var_9C, 5
  loc_B4F89E: HardType
  loc_B4F89F: EqVarBool
  loc_B4F8A1: BranchF loc_B4F8DB
  loc_B4F8A4: FLdRfVar var_E0
  loc_B4F8A7: LitI2_Byte 4
  loc_B4F8A9: FLdPr Me
  loc_B4F8AC: VCallAd Control_ID_OficinaCbo
  loc_B4F8AF: FStAdFunc var_88
  loc_B4F8B2: FLdPr var_88
  loc_B4F8B5: from_stack_2 = Me.List(from_stack_1)
  loc_B4F8BA: ILdRf var_E0
  loc_B4F8BD: FLdPr Me
  loc_B4F8C0: VCallAd Control_ID_OficinaCbo
  loc_B4F8C3: FStAdFunc var_B4
  loc_B4F8C6: FLdPr var_B4
  loc_B4F8C9: Me.Text = from_stack_1
  loc_B4F8CE: FFree1Str var_E0
  loc_B4F8D1: FFreeAd var_88 = ""
  loc_B4F8D8: Branch loc_B4F962
  loc_B4F8DB: FLdRfVar var_DC
  loc_B4F8DE: LitVarI2 var_9C, 6
  loc_B4F8E3: HardType
  loc_B4F8E4: EqVarBool
  loc_B4F8E6: BranchF loc_B4F920
  loc_B4F8E9: FLdRfVar var_E0
  loc_B4F8EC: LitI2_Byte 5
  loc_B4F8EE: FLdPr Me
  loc_B4F8F1: VCallAd Control_ID_OficinaCbo
  loc_B4F8F4: FStAdFunc var_88
  loc_B4F8F7: FLdPr var_88
  loc_B4F8FA: from_stack_2 = Me.List(from_stack_1)
  loc_B4F8FF: ILdRf var_E0
  loc_B4F902: FLdPr Me
  loc_B4F905: VCallAd Control_ID_OficinaCbo
  loc_B4F908: FStAdFunc var_B4
  loc_B4F90B: FLdPr var_B4
  loc_B4F90E: Me.Text = from_stack_1
  loc_B4F913: FFree1Str var_E0
  loc_B4F916: FFreeAd var_88 = ""
  loc_B4F91D: Branch loc_B4F962
  loc_B4F920: FLdRfVar var_DC
  loc_B4F923: LitVarI2 var_9C, 7
  loc_B4F928: HardType
  loc_B4F929: EqVarBool
  loc_B4F92B: BranchF loc_B4F962
  loc_B4F92E: FLdRfVar var_E0
  loc_B4F931: LitI2_Byte 6
  loc_B4F933: FLdPr Me
  loc_B4F936: VCallAd Control_ID_OficinaCbo
  loc_B4F939: FStAdFunc var_88
  loc_B4F93C: FLdPr var_88
  loc_B4F93F: from_stack_2 = Me.List(from_stack_1)
  loc_B4F944: ILdRf var_E0
  loc_B4F947: FLdPr Me
  loc_B4F94A: VCallAd Control_ID_OficinaCbo
  loc_B4F94D: FStAdFunc var_B4
  loc_B4F950: FLdPr var_B4
  loc_B4F953: Me.Text = from_stack_1
  loc_B4F958: FFree1Str var_E0
  loc_B4F95B: FFreeAd var_88 = ""
  loc_B4F962: FLdRfVar var_CC
  loc_B4F965: FLdRfVar var_BC
  loc_B4F968: LitVarStr var_9C, "CuenCtct"
  loc_B4F96D: PopAdLdVar
  loc_B4F96E: FLdRfVar var_B8
  loc_B4F971: FLdRfVar var_B4
  loc_B4F974: FLdRfVar var_88
  loc_B4F977: ImpAdLdRf MemVar_D94034
  loc_B4F97A: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4F97D: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B4F982: FLdPr var_88
  loc_B4F985: from_stack_1v = clsbase.RsFrmGet()
  loc_B4F98A: FLdPr var_B4
  loc_B4F98D:  = Me.Fields
  loc_B4F992: FLdPr var_B8
  loc_B4F995: from_stack_2 = Me.Item(from_stack_1)
  loc_B4F99A: FLdPr var_BC
  loc_B4F99D:  = Me.Value
  loc_B4F9A2: FLdRfVar var_CC
  loc_B4F9A5: CStrVarTmp
  loc_B4F9A6: FStStrNoPop var_E0
  loc_B4F9A9: FLdPr Me
  loc_B4F9AC: VCallAd Control_ID_NumeCtaTxt
  loc_B4F9AF: FStAdFunc var_E4
  loc_B4F9B2: FLdPr var_E4
  loc_B4F9B5: Me.Text = from_stack_1
  loc_B4F9BA: FFree1Str var_E0
  loc_B4F9BD: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B4F9CA: FFree1Var var_CC = ""
  loc_B4F9CD: FLdPr Me
  loc_B4F9D0: VCallAd Control_ID_NumeCtaTxt
  loc_B4F9D3: CVarAd
  loc_B4F9D7: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B4F9DC: FFree1Var var_CC = ""
  loc_B4F9DF: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'B28EF4
  'Data Table: 4E7624
  loc_B28C48: FLdRfVar var_8A
  loc_B28C4B: FLdPr Me
  loc_B28C4E: VCallAd Control_ID_NumeCtaTxt
  loc_B28C51: FStAdFunc var_88
  loc_B28C54: FLdPr var_88
  loc_B28C57:  = Me.Enabled
  loc_B28C5C: FLdI2 var_8A
  loc_B28C5F: FFree1Ad var_88
  loc_B28C62: BranchF loc_B28EF2
  loc_B28C65: FLdRfVar var_8A
  loc_B28C68: FLdPr Me
  loc_B28C6B: VCallAd Control_ID_OficinaCbo
  loc_B28C6E: FStAdFunc var_88
  loc_B28C71: FLdPr var_88
  loc_B28C74:  = Me.ListIndex
  loc_B28C79: FLdI2 var_8A
  loc_B28C7C: FStI2 var_8C
  loc_B28C7F: FFree1Ad var_88
  loc_B28C82: FLdI2 var_8C
  loc_B28C85: LitI2_Byte 0
  loc_B28C87: EqI2
  loc_B28C88: BranchF loc_B28C96
  loc_B28C8B: LitI2_Byte 1
  loc_B28C8D: CUI1I2
  loc_B28C8F: ImpAdStUI1 MemVar_D93038
  loc_B28C93: Branch loc_B28D0B
  loc_B28C96: FLdI2 var_8C
  loc_B28C99: LitI2_Byte 1
  loc_B28C9B: EqI2
  loc_B28C9C: BranchF loc_B28CAA
  loc_B28C9F: LitI2_Byte 2
  loc_B28CA1: CUI1I2
  loc_B28CA3: ImpAdStUI1 MemVar_D93038
  loc_B28CA7: Branch loc_B28D0B
  loc_B28CAA: FLdI2 var_8C
  loc_B28CAD: LitI2_Byte 2
  loc_B28CAF: EqI2
  loc_B28CB0: BranchF loc_B28CBE
  loc_B28CB3: LitI2_Byte 3
  loc_B28CB5: CUI1I2
  loc_B28CB7: ImpAdStUI1 MemVar_D93038
  loc_B28CBB: Branch loc_B28D0B
  loc_B28CBE: FLdI2 var_8C
  loc_B28CC1: LitI2_Byte 3
  loc_B28CC3: EqI2
  loc_B28CC4: BranchF loc_B28CD2
  loc_B28CC7: LitI2_Byte 4
  loc_B28CC9: CUI1I2
  loc_B28CCB: ImpAdStUI1 MemVar_D93038
  loc_B28CCF: Branch loc_B28D0B
  loc_B28CD2: FLdI2 var_8C
  loc_B28CD5: LitI2_Byte 4
  loc_B28CD7: EqI2
  loc_B28CD8: BranchF loc_B28CE6
  loc_B28CDB: LitI2_Byte 5
  loc_B28CDD: CUI1I2
  loc_B28CDF: ImpAdStUI1 MemVar_D93038
  loc_B28CE3: Branch loc_B28D0B
  loc_B28CE6: FLdI2 var_8C
  loc_B28CE9: LitI2_Byte 5
  loc_B28CEB: EqI2
  loc_B28CEC: BranchF loc_B28CFA
  loc_B28CEF: LitI2_Byte 6
  loc_B28CF1: CUI1I2
  loc_B28CF3: ImpAdStUI1 MemVar_D93038
  loc_B28CF7: Branch loc_B28D0B
  loc_B28CFA: FLdI2 var_8C
  loc_B28CFD: LitI2_Byte 6
  loc_B28CFF: EqI2
  loc_B28D00: BranchF loc_B28D0B
  loc_B28D03: LitI2_Byte 7
  loc_B28D05: CUI1I2
  loc_B28D07: ImpAdStUI1 MemVar_D93038
  loc_B28D0B: FLdRfVar var_90
  loc_B28D0E: FLdPr Me
  loc_B28D11: VCallAd Control_ID_NumeCtaTxt
  loc_B28D14: FStAdFunc var_88
  loc_B28D17: FLdPr var_88
  loc_B28D1A:  = Me.Text
  loc_B28D1F: FLdPr Me
  loc_B28D22: MemLdRfVar from_stack_1.global_88
  loc_B28D25: NewIfNullRf
  loc_B28D29: LitStr "Titular"
  loc_B28D2C: ILdRf var_90
  loc_B28D2F: ImpAdLdUI1
  loc_B28D33: CStrI2
  loc_B28D35: FStStrNoPop var_94
  loc_B28D38: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B28D3D: FFreeStr var_94 = ""
  loc_B28D44: FFree1Ad var_88
  loc_B28D47: BranchF loc_B28E6C
  loc_B28D4A: FLdRfVar var_90
  loc_B28D4D: FLdPr Me
  loc_B28D50: MemLdRfVar from_stack_1.global_88
  loc_B28D53: NewIfNullPr tblPersona
  loc_B28D56: from_stack_1v = tblPersona.CucuPersGet()
  loc_B28D5B: ILdRf var_90
  loc_B28D5E: FLdPr Me
  loc_B28D61: VCallAd Control_ID_CucuPersLbl
  loc_B28D64: FStAdFunc var_88
  loc_B28D67: FLdPr var_88
  loc_B28D6A: Me.Caption = from_stack_1
  loc_B28D6F: FFree1Str var_90
  loc_B28D72: FFree1Ad var_88
  loc_B28D75: FLdRfVar var_90
  loc_B28D78: FLdPr Me
  loc_B28D7B: MemLdRfVar from_stack_1.global_88
  loc_B28D7E: NewIfNullPr tblPersona
  loc_B28D81: from_stack_1v = tblPersona.DetaPersGet()
  loc_B28D86: ILdRf var_90
  loc_B28D89: FLdPr Me
  loc_B28D8C: VCallAd Control_ID_DetaPersLbl
  loc_B28D8F: FStAdFunc var_88
  loc_B28D92: FLdPr var_88
  loc_B28D95: Me.Caption = from_stack_1
  loc_B28D9A: FFree1Str var_90
  loc_B28D9D: FFree1Ad var_88
  loc_B28DA0: FLdRfVar var_94
  loc_B28DA3: FLdPr Me
  loc_B28DA6: MemLdRfVar from_stack_1.global_88
  loc_B28DA9: NewIfNullPr tblPersona
  loc_B28DAC: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B28DB1: FLdRfVar var_98
  loc_B28DB4: FLdPr Me
  loc_B28DB7: MemLdRfVar from_stack_1.global_88
  loc_B28DBA: NewIfNullPr tblPersona
  loc_B28DBD: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B28DC2: FLdRfVar var_90
  loc_B28DC5: FLdPr Me
  loc_B28DC8: MemLdRfVar from_stack_1.global_88
  loc_B28DCB: NewIfNullPr tblPersona
  loc_B28DCE: from_stack_1v = tblPersona.DetaCallGet()
  loc_B28DD3: ILdRf var_90
  loc_B28DD6: LitStr " "
  loc_B28DD9: ConcatStr
  loc_B28DDA: CVarStr var_F8
  loc_B28DDD: LitVarStr var_C8, vbNullString
  loc_B28DE2: FStVarCopyObj var_D8
  loc_B28DE5: FLdRfVar var_D8
  loc_B28DE8: LitStr "Nro: "
  loc_B28DEB: ILdRf var_98
  loc_B28DEE: ConcatStr
  loc_B28DEF: CVarStr var_B8
  loc_B28DF2: ILdRf var_94
  loc_B28DF5: LitStr "0"
  loc_B28DF8: NeStr
  loc_B28DFA: CVarBoolI2 var_A8
  loc_B28DFE: FLdRfVar var_E8
  loc_B28E01: ImpAdCallFPR4  = IIf(, , )
  loc_B28E06: FLdRfVar var_E8
  loc_B28E09: ConcatVar var_108
  loc_B28E0D: LitVarStr var_118, " "
  loc_B28E12: ConcatVar var_128
  loc_B28E16: FLdRfVar var_12C
  loc_B28E19: FLdPr Me
  loc_B28E1C: MemLdRfVar from_stack_1.global_88
  loc_B28E1F: NewIfNullPr tblPersona
  loc_B28E22: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B28E27: FLdZeroAd var_12C
  loc_B28E2A: CVarStr var_13C
  loc_B28E2D: ConcatVar var_14C
  loc_B28E31: CStrVarVal var_150
  loc_B28E35: FLdPr Me
  loc_B28E38: VCallAd Control_ID_DomiPersLbl
  loc_B28E3B: FStAdFunc var_88
  loc_B28E3E: FLdPr var_88
  loc_B28E41: Me.Caption = from_stack_1
  loc_B28E46: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_B28E51: FFree1Ad var_88
  loc_B28E54: FFreeVar var_A8 = "": var_B8 = "": var_D8 = "": var_F8 = "": var_E8 = "": var_108 = "": var_128 = "": var_13C = ""
  loc_B28E69: Branch loc_B28EF2
  loc_B28E6C: FLdRfVar var_90
  loc_B28E6F: FLdPr Me
  loc_B28E72: MemLdRfVar from_stack_1.global_88
  loc_B28E75: NewIfNullPr tblPersona
  loc_B28E78: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B28E7D: ILdRf var_90
  loc_B28E80: FLdPr Me
  loc_B28E83: MemStStrCopy
  loc_B28E87: FFree1Str var_90
  loc_B28E8A: FLdPr Me
  loc_B28E8D: MemLdStr global_256
  loc_B28E90: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B28E95: LitStr vbNullString
  loc_B28E98: FLdPr Me
  loc_B28E9B: VCallAd Control_ID_CucuPersLbl
  loc_B28E9E: FStAdFunc var_88
  loc_B28EA1: FLdPr var_88
  loc_B28EA4: Me.Caption = from_stack_1
  loc_B28EA9: FFree1Ad var_88
  loc_B28EAC: LitStr vbNullString
  loc_B28EAF: FLdPr Me
  loc_B28EB2: VCallAd Control_ID_DetaPersLbl
  loc_B28EB5: FStAdFunc var_88
  loc_B28EB8: FLdPr var_88
  loc_B28EBB: Me.Caption = from_stack_1
  loc_B28EC0: FFree1Ad var_88
  loc_B28EC3: LitStr vbNullString
  loc_B28EC6: FLdPr Me
  loc_B28EC9: VCallAd Control_ID_DomiPersLbl
  loc_B28ECC: FStAdFunc var_88
  loc_B28ECF: FLdPr var_88
  loc_B28ED2: Me.Caption = from_stack_1
  loc_B28ED7: FFree1Ad var_88
  loc_B28EDA: FLdPr Me
  loc_B28EDD: VCallAd Control_ID_NumeCtaTxt
  loc_B28EE0: CVarAd
  loc_B28EE4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B28EE9: FFree1Var var_B8 = ""
  loc_B28EEC: LitI2_Byte &HFF
  loc_B28EEE: IStI2 Cancel
  loc_B28EF1: ExitProcHresult
  loc_B28EF2: ExitProcHresult
End Sub

Private Sub PagoCuentaTxt_GotFocus() '9C42F8
  'Data Table: 4E7624
  loc_9C42E4: FLdPr Me
  loc_9C42E7: VCallAd Control_ID_PagoCuentaTxt
  loc_9C42EA: CVarAd
  loc_9C42EE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C42F3: FFree1Var var_94 = ""
  loc_9C42F6: ExitProcHresult
End Sub

Private Sub PagoCuentaTxt_KeyPress(KeyAscii As Integer) 'A06B50
  'Data Table: 4E7624
  loc_A06B1C: LitStr "1234567890,."
  loc_A06B1F: FStStrCopy var_88
  loc_A06B22: FLdRfVar var_88
  loc_A06B25: ILdRf KeyAscii
  loc_A06B28: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A06B2D: IStI2 KeyAscii
  loc_A06B30: FFree1Str var_88
  loc_A06B33: ILdI2 KeyAscii
  loc_A06B36: LitStr "."
  loc_A06B39: ImpAdCallI2 Asc()
  loc_A06B3E: EqI2
  loc_A06B3F: BranchF loc_A06B4D
  loc_A06B42: LitStr ","
  loc_A06B45: ImpAdCallI2 Asc()
  loc_A06B4A: IStI2 KeyAscii
  loc_A06B4D: ExitProcHresult
End Sub

Private Sub PagoCuentaTxt_LostFocus() 'A89528
  'Data Table: 4E7624
  loc_A894A0: FLdRfVar var_8C
  loc_A894A3: FLdPr Me
  loc_A894A6: VCallAd Control_ID_PagoCuentaTxt
  loc_A894A9: FStAdFunc var_88
  loc_A894AC: FLdPr var_88
  loc_A894AF:  = Me.Text
  loc_A894B4: LitI4 1
  loc_A894B9: LitI4 1
  loc_A894BE: LitVarStr var_AC, "0.00"
  loc_A894C3: FStVarCopyObj var_BC
  loc_A894C6: FLdRfVar var_BC
  loc_A894C9: FLdZeroAd var_8C
  loc_A894CC: CVarStr var_9C
  loc_A894CF: FLdRfVar var_CC
  loc_A894D2: ImpAdCallFPR4  = Format(, )
  loc_A894D7: FLdRfVar var_CC
  loc_A894DA: CStrVarVal var_D0
  loc_A894DE: FLdPr Me
  loc_A894E1: VCallAd Control_ID_PagoCuentaTxt
  loc_A894E4: FStAdFunc var_D4
  loc_A894E7: FLdPr var_D4
  loc_A894EA: Me.Text = from_stack_1
  loc_A894EF: FFree1Str var_D0
  loc_A894F2: FFreeAd var_88 = ""
  loc_A894F9: FFreeVar var_9C = "": var_BC = ""
  loc_A89502: FLdRfVar var_8C
  loc_A89505: FLdPr Me
  loc_A89508: VCallAd Control_ID_PagoCuentaTxt
  loc_A8950B: FStAdFunc var_88
  loc_A8950E: FLdPr var_88
  loc_A89511:  = Me.Text
  loc_A89516: ILdRf var_8C
  loc_A89519: CR8Str
  loc_A8951B: FLdPr Me
  loc_A8951E: MemStFPR8 global_232
  loc_A89521: FFree1Str var_8C
  loc_A89524: FFree1Ad var_88
  loc_A89527: ExitProcHresult
End Sub

Private Sub PagoCuentaTxt_Validate(Cancel As Boolean) 'ABABEC
  'Data Table: 4E7624
  loc_ABAB00: FLdRfVar var_8A
  loc_ABAB03: FLdPr Me
  loc_ABAB06: VCallAd Control_ID_PagoCuentaTxt
  loc_ABAB09: FStAdFunc var_88
  loc_ABAB0C: FLdPr var_88
  loc_ABAB0F:  = Me.Enabled
  loc_ABAB14: FLdI2 var_8A
  loc_ABAB17: FFree1Ad var_88
  loc_ABAB1A: BranchF loc_ABAB85
  loc_ABAB1D: FLdRfVar var_90
  loc_ABAB20: FLdPr Me
  loc_ABAB23: VCallAd Control_ID_PagoCuentaTxt
  loc_ABAB26: FStAdFunc var_88
  loc_ABAB29: FLdPr var_88
  loc_ABAB2C:  = Me.Text
  loc_ABAB31: LitI2_Byte 0
  loc_ABAB33: LitI2_Byte 0
  loc_ABAB35: ILdRf var_90
  loc_ABAB38: LitStr "Pago a Cuenta"
  loc_ABAB3B: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_ABAB40: FStStrNoPop var_94
  loc_ABAB43: FLdPr Me
  loc_ABAB46: MemStStrCopy
  loc_ABAB4A: FFreeStr var_90 = ""
  loc_ABAB51: FFree1Ad var_88
  loc_ABAB54: FLdPr Me
  loc_ABAB57: MemLdStr global_256
  loc_ABAB5A: LitStr vbNullString
  loc_ABAB5D: NeStr
  loc_ABAB5F: BranchF loc_ABAB85
  loc_ABAB62: FLdPr Me
  loc_ABAB65: MemLdStr global_256
  loc_ABAB68: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABAB6D: FLdPr Me
  loc_ABAB70: VCallAd Control_ID_PagoCuentaTxt
  loc_ABAB73: CVarAd
  loc_ABAB77: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABAB7C: FFree1Var var_A4 = ""
  loc_ABAB7F: LitI2_Byte &HFF
  loc_ABAB81: IStI2 Cancel
  loc_ABAB84: ExitProcHresult
  loc_ABAB85: FLdRfVar var_94
  loc_ABAB88: FLdPr Me
  loc_ABAB8B: VCallAd Control_ID_txtTotal
  loc_ABAB8E: FStAdFunc var_A8
  loc_ABAB91: FLdPr var_A8
  loc_ABAB94:  = Me.Text
  loc_ABAB99: FLdRfVar var_90
  loc_ABAB9C: FLdPr Me
  loc_ABAB9F: VCallAd Control_ID_PagoCuentaTxt
  loc_ABABA2: FStAdFunc var_88
  loc_ABABA5: FLdPr var_88
  loc_ABABA8:  = Me.Text
  loc_ABABAD: ILdRf var_90
  loc_ABABB0: CR8Str
  loc_ABABB2: ILdRf var_94
  loc_ABABB5: CR8Str
  loc_ABABB7: GeR8
  loc_ABABB8: FFreeStr var_90 = ""
  loc_ABABBF: FFreeAd var_88 = ""
  loc_ABABC6: BranchF loc_ABABE9
  loc_ABABC9: LitStr "El PAGO a CUENTA no puede ser mayor al total de la deuda. Verifique..."
  loc_ABABCC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABABD1: FLdPr Me
  loc_ABABD4: VCallAd Control_ID_PagoCuentaTxt
  loc_ABABD7: CVarAd
  loc_ABABDB: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABABE0: FFree1Var var_A4 = ""
  loc_ABABE3: LitI2_Byte &HFF
  loc_ABABE5: IStI2 Cancel
  loc_ABABE8: ExitProcHresult
  loc_ABABE9: ExitProcHresult
End Sub

Private Sub HabilitarChk_Click() 'ADDDD4
  'Data Table: 4E7624
  loc_ADDC8C: FLdRfVar var_8A
  loc_ADDC8F: FLdPr Me
  loc_ADDC92: VCallAd Control_ID_HabilitarChk
  loc_ADDC95: FStAdFunc var_88
  loc_ADDC98: FLdPr var_88
  loc_ADDC9B:  = Me.Value
  loc_ADDCA0: FLdI2 var_8A
  loc_ADDCA3: LitI2_Byte 0
  loc_ADDCA5: EqI2
  loc_ADDCA6: FFree1Ad var_88
  loc_ADDCA9: BranchF loc_ADDCF9
  loc_ADDCAC: LitStr vbNullString
  loc_ADDCAF: FLdPr Me
  loc_ADDCB2: VCallAd Control_ID_PagoCuentaTxt
  loc_ADDCB5: FStAdFunc var_88
  loc_ADDCB8: FLdPr var_88
  loc_ADDCBB: Me.Text = from_stack_1
  loc_ADDCC0: FFree1Ad var_88
  loc_ADDCC3: LitI4 0
  loc_ADDCC8: LitI4 0
  loc_ADDCCD: FLdRfVar var_90
  loc_ADDCD0: Redim
  loc_ADDCDA: FLdPr Me
  loc_ADDCDD: VCallAd Control_ID_PagoCuentaTxt
  loc_ADDCE0: CVarAd
  loc_ADDCE4: ParmAry1St
  loc_ADDCEA: FLdRfVar var_90
  loc_ADDCED: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_ADDCF2: FLdRfVar var_90
  loc_ADDCF5: Erase
  loc_ADDCF6: Branch loc_ADDDD2
  loc_ADDCF9: LitI4 0
  loc_ADDCFE: LitI4 0
  loc_ADDD03: FLdRfVar var_90
  loc_ADDD06: Redim
  loc_ADDD10: FLdPr Me
  loc_ADDD13: VCallAd Control_ID_PagoCuentaTxt
  loc_ADDD16: CVarAd
  loc_ADDD1A: ParmAry1St
  loc_ADDD20: FLdRfVar var_90
  loc_ADDD23: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ADDD28: FLdRfVar var_90
  loc_ADDD2B: Erase
  loc_ADDD2C: LitI2_Byte 0
  loc_ADDD2E: FLdPr Me
  loc_ADDD31: VCallAd Control_ID_PagoCuentaTxt
  loc_ADDD34: FStAdFunc var_88
  loc_ADDD37: FLdPr var_88
  loc_ADDD3A: Me.Locked = from_stack_1b
  loc_ADDD3F: FFree1Ad var_88
  loc_ADDD42: LitI4 1
  loc_ADDD47: LitI4 1
  loc_ADDD4C: LitVarStr var_C0, "0.00"
  loc_ADDD51: FStVarCopyObj var_D0
  loc_ADDD54: FLdRfVar var_D0
  loc_ADDD57: LitVarI2 var_A0, 0
  loc_ADDD5C: FLdRfVar var_E0
  loc_ADDD5F: ImpAdCallFPR4  = Format(, )
  loc_ADDD64: FLdRfVar var_E0
  loc_ADDD67: CStrVarVal var_E4
  loc_ADDD6B: FLdPr Me
  loc_ADDD6E: VCallAd Control_ID_PagoCuentaTxt
  loc_ADDD71: FStAdFunc var_88
  loc_ADDD74: FLdPr var_88
  loc_ADDD77: Me.Text = from_stack_1
  loc_ADDD7C: FFree1Str var_E4
  loc_ADDD7F: FFree1Ad var_88
  loc_ADDD82: FFreeVar var_A0 = "": var_D0 = ""
  loc_ADDD8B: FLdPr Me
  loc_ADDD8E: VCallAd Control_ID_PagoCuentaTxt
  loc_ADDD91: FStAdFunc var_88
  loc_ADDD94: FLdPr var_88
  loc_ADDD97: Me.SetFocus
  loc_ADDD9C: FFree1Ad var_88
  loc_ADDD9F: LitI4 0
  loc_ADDDA4: LitI4 0
  loc_ADDDA9: FLdRfVar var_90
  loc_ADDDAC: Redim
  loc_ADDDB6: FLdPr Me
  loc_ADDDB9: VCallAd Control_ID_SeleTodoChk
  loc_ADDDBC: CVarAd
  loc_ADDDC0: ParmAry1St
  loc_ADDDC6: FLdRfVar var_90
  loc_ADDDC9: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_ADDDCE: FLdRfVar var_90
  loc_ADDDD1: Erase
  loc_ADDDD2: ExitProcHresult
End Sub

Private Function Proc_164_23_B1FC70() 'B1FC70
  'Data Table: 4E7624
  loc_B1F9C0: FLdPr Me
  loc_B1F9C3: VCallAd Control_ID_ctacteFlex
  loc_B1F9C6: FStAdFunc var_88
  loc_B1F9C9: FLdPr var_88
  loc_B1F9CC: LateIdCall
  loc_B1F9D4: LitVarI4
  loc_B1F9DC: PopAdLdVar
  loc_B1F9DD: FLdPr var_88
  loc_B1F9E0: LateIdSt
  loc_B1F9E5: LitVarI4
  loc_B1F9ED: PopAdLdVar
  loc_B1F9EE: LitVarI4
  loc_B1F9F6: PopAdLdVar
  loc_B1F9F7: LitVarStr var_D8, "O"
  loc_B1F9FC: PopAdLdVar
  loc_B1F9FD: FLdPr var_88
  loc_B1FA00: LateIdCallSt
  loc_B1FA08: LitVarI4
  loc_B1FA10: PopAdLdVar
  loc_B1FA11: LitVarI4
  loc_B1FA19: PopAdLdVar
  loc_B1FA1A: LitVarStr var_D8, "Cuenta"
  loc_B1FA1F: PopAdLdVar
  loc_B1FA20: FLdPr var_88
  loc_B1FA23: LateIdCallSt
  loc_B1FA2B: LitVarI4
  loc_B1FA33: PopAdLdVar
  loc_B1FA34: LitVarI4
  loc_B1FA3C: PopAdLdVar
  loc_B1FA3D: LitVarStr var_D8, "Periodo"
  loc_B1FA42: PopAdLdVar
  loc_B1FA43: FLdPr var_88
  loc_B1FA46: LateIdCallSt
  loc_B1FA4E: LitVarI4
  loc_B1FA56: PopAdLdVar
  loc_B1FA57: LitVarI4
  loc_B1FA5F: PopAdLdVar
  loc_B1FA60: LitVarStr var_D8, "Boleto"
  loc_B1FA65: PopAdLdVar
  loc_B1FA66: FLdPr var_88
  loc_B1FA69: LateIdCallSt
  loc_B1FA71: LitVarI4
  loc_B1FA79: PopAdLdVar
  loc_B1FA7A: LitVarI4
  loc_B1FA82: PopAdLdVar
  loc_B1FA83: LitVarStr var_D8, "Emision"
  loc_B1FA88: PopAdLdVar
  loc_B1FA89: FLdPr var_88
  loc_B1FA8C: LateIdCallSt
  loc_B1FA94: LitVarI4
  loc_B1FA9C: PopAdLdVar
  loc_B1FA9D: LitVarI4
  loc_B1FAA5: PopAdLdVar
  loc_B1FAA6: LitVarStr var_D8, "Vencimien"
  loc_B1FAAB: PopAdLdVar
  loc_B1FAAC: FLdPr var_88
  loc_B1FAAF: LateIdCallSt
  loc_B1FAB7: LitVarI4
  loc_B1FABF: PopAdLdVar
  loc_B1FAC0: LitVarI4
  loc_B1FAC8: PopAdLdVar
  loc_B1FAC9: LitVarStr var_D8, "Concepto"
  loc_B1FACE: PopAdLdVar
  loc_B1FACF: FLdPr var_88
  loc_B1FAD2: LateIdCallSt
  loc_B1FADA: LitVarI4
  loc_B1FAE2: PopAdLdVar
  loc_B1FAE3: LitVarI4
  loc_B1FAEB: PopAdLdVar
  loc_B1FAEC: LitVarStr var_D8, "Rec"
  loc_B1FAF1: PopAdLdVar
  loc_B1FAF2: FLdPr var_88
  loc_B1FAF5: LateIdCallSt
  loc_B1FAFD: LitVarI4
  loc_B1FB05: PopAdLdVar
  loc_B1FB06: LitVarI4
  loc_B1FB0E: PopAdLdVar
  loc_B1FB0F: LitVarStr var_D8, "Facilidad"
  loc_B1FB14: PopAdLdVar
  loc_B1FB15: FLdPr var_88
  loc_B1FB18: LateIdCallSt
  loc_B1FB20: LitVarI4
  loc_B1FB28: PopAdLdVar
  loc_B1FB29: LitVarI4
  loc_B1FB31: PopAdLdVar
  loc_B1FB32: LitVarStr var_D8, "Apremio"
  loc_B1FB37: PopAdLdVar
  loc_B1FB38: FLdPr var_88
  loc_B1FB3B: LateIdCallSt
  loc_B1FB43: LitVarI4
  loc_B1FB4B: PopAdLdVar
  loc_B1FB4C: LitVarI4
  loc_B1FB54: PopAdLdVar
  loc_B1FB55: LitVarStr var_D8, "Expedie/Comprob"
  loc_B1FB5A: PopAdLdVar
  loc_B1FB5B: FLdPr var_88
  loc_B1FB5E: LateIdCallSt
  loc_B1FB66: LitVarI4
  loc_B1FB6E: PopAdLdVar
  loc_B1FB6F: LitVarI4
  loc_B1FB77: PopAdLdVar
  loc_B1FB78: LitVarStr var_D8, "Tipo Movi."
  loc_B1FB7D: PopAdLdVar
  loc_B1FB7E: FLdPr var_88
  loc_B1FB81: LateIdCallSt
  loc_B1FB89: LitVarI4
  loc_B1FB91: PopAdLdVar
  loc_B1FB92: LitVarI4
  loc_B1FB9A: PopAdLdVar
  loc_B1FB9B: LitVarStr var_D8, "Debito"
  loc_B1FBA0: PopAdLdVar
  loc_B1FBA1: FLdPr var_88
  loc_B1FBA4: LateIdCallSt
  loc_B1FBAC: LitVarI4
  loc_B1FBB4: PopAdLdVar
  loc_B1FBB5: LitVarI4
  loc_B1FBBD: PopAdLdVar
  loc_B1FBBE: LitVarStr var_D8, "Recargo"
  loc_B1FBC3: PopAdLdVar
  loc_B1FBC4: FLdPr var_88
  loc_B1FBC7: LateIdCallSt
  loc_B1FBCF: LitVarI4
  loc_B1FBD7: PopAdLdVar
  loc_B1FBD8: LitVarI4
  loc_B1FBE0: PopAdLdVar
  loc_B1FBE1: LitVarStr var_D8, "Saldo"
  loc_B1FBE6: PopAdLdVar
  loc_B1FBE7: FLdPr var_88
  loc_B1FBEA: LateIdCallSt
  loc_B1FBF2: LitVarI4
  loc_B1FBFA: PopAdLdVar
  loc_B1FBFB: LitVarI4
  loc_B1FC03: PopAdLdVar
  loc_B1FC04: LitVarStr var_D8, "Sel"
  loc_B1FC09: PopAdLdVar
  loc_B1FC0A: FLdPr var_88
  loc_B1FC0D: LateIdCallSt
  loc_B1FC15: LitVarI4
  loc_B1FC1D: PopAdLdVar
  loc_B1FC1E: LitVarI4
  loc_B1FC26: PopAdLdVar
  loc_B1FC27: LitVarStr var_D8, "Numero"
  loc_B1FC2C: PopAdLdVar
  loc_B1FC2D: FLdPr var_88
  loc_B1FC30: LateIdCallSt
  loc_B1FC38: LitVarI4
  loc_B1FC40: PopAdLdVar
  loc_B1FC41: LitVarI4
  loc_B1FC49: PopAdLdVar
  loc_B1FC4A: LitVarStr var_D8, "Mov"
  loc_B1FC4F: PopAdLdVar
  loc_B1FC50: FLdPr var_88
  loc_B1FC53: LateIdCallSt
  loc_B1FC5B: FLdPr var_88
  loc_B1FC5E: LateIdCall
  loc_B1FC66: LitNothing
  loc_B1FC68: FStAd var_88 
  loc_B1FC6C: ExitProcHresult
  loc_B1FC6D: FLdPr Me
End Function
