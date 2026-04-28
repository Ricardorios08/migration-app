VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmInstanciaJudicialABM
  Caption = "Instancia Judicial"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmInstanciaJudicialABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 15132
  ClientHeight = 9588
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.TextBox KireInjuTxt
    ForeColor = &HFF0000&
    Left = 3000
    Top = 8520
    Width = 1335
    Height = 360
    TabIndex = 11
    MaxLength = 10
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 3960
    Width = 12600
    Height = 5505
    TabIndex = 13
    Begin VB.TextBox KiofInjuTxt
      ForeColor = &HFF0000&
      Left = 2880
      Top = 5040
      Width = 1335
      Height = 360
      TabIndex = 12
      MaxLength = 10
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox ReseInjuTxt
      ForeColor = &HFF0000&
      Left = 2880
      Top = 4080
      Width = 1335
      Height = 360
      TabIndex = 10
      MaxLength = 10
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox HoofInjuTxt
      ForeColor = &HFF0000&
      Left = 2880
      Top = 3120
      Width = 1335
      Height = 360
      TabIndex = 8
      MaxLength = 10
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox HoreInjuTxt
      ForeColor = &HFF0000&
      Left = 2880
      Top = 2640
      Width = 1335
      Height = 360
      TabIndex = 7
      MaxLength = 10
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.CommandButton FealInjuCmd
      Left = 4440
      Top = 720
      Width = 450
      Height = 345
      TabIndex = 3
      Picture = "frmInstanciaJudicialABM.frx":324A
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox ApleInjuTxt
      ForeColor = &HFF0000&
      Left = 2880
      Top = 3600
      Width = 1335
      Height = 360
      TabIndex = 9
      MaxLength = 10
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox CoadInjuTxt
      ForeColor = &HFF0000&
      Left = 2880
      Top = 2160
      Width = 1335
      Height = 360
      TabIndex = 6
      MaxLength = 10
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox DefiInjuTxt
      ForeColor = &HFF0000&
      Left = 2880
      Top = 1680
      Width = 1335
      Height = 360
      TabIndex = 5
      MaxLength = 10
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox CodiInjuTxt
      ForeColor = &HFF0000&
      Left = 2880
      Top = 240
      Width = 735
      Height = 360
      TabIndex = 1
      MaxLength = 2
    End
    Begin VB.TextBox DetaInjuTxt
      ForeColor = &HFF0000&
      Left = 2880
      Top = 1200
      Width = 7095
      Height = 360
      TabIndex = 4
      MaxLength = 40
    End
    Begin MSMask.MaskEdBox FealInjuMsk
      Left = 2880
      Top = 720
      Width = 1455
      Height = 345
      TabIndex = 2
      OleObjectBlob = "frmInstanciaJudicialABM.frx":378C
    End
    Begin VB.Label Label14
      Caption = "Kilómetros del Of. Justicia:"
      Left = 75
      Top = 5040
      Width = 2775
      Height = 300
      TabIndex = 25
      AutoSize = -1  'True
    End
    Begin VB.Label Label13
      Caption = "Kilómetros del Recaud.:"
      Left = 345
      Top = 4560
      Width = 2505
      Height = 300
      TabIndex = 24
      AutoSize = -1  'True
    End
    Begin VB.Label Label9
      Caption = "Tasa de Justicia:"
      Left = 1080
      Top = 4080
      Width = 1770
      Height = 300
      TabIndex = 22
      AutoSize = -1  'True
    End
    Begin VB.Label Label4
      Caption = "Honorario del O.F :"
      Left = 855
      Top = 3120
      Width = 1995
      Height = 300
      TabIndex = 21
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Honorario al recaudador :"
      Left = 165
      Top = 2640
      Width = 2685
      Height = 300
      TabIndex = 20
      AutoSize = -1  'True
    End
    Begin VB.Label Label17
      Caption = "Aporte de Ley :"
      Left = 1245
      Top = 3600
      Width = 1605
      Height = 300
      TabIndex = 19
      AutoSize = -1  'True
    End
    Begin VB.Label Label11
      Caption = "Comisión Administrativa :"
      Left = 216
      Top = 2160
      Width = 2640
      Height = 300
      TabIndex = 18
      AutoSize = -1  'True
    End
    Begin VB.Label Label10
      Caption = "Derecho Fijo :"
      Left = 1380
      Top = 1680
      Width = 1470
      Height = 300
      TabIndex = 17
      AutoSize = -1  'True
    End
    Begin VB.Label Label8
      Caption = "Detalle :"
      Left = 1980
      Top = 1200
      Width = 870
      Height = 300
      TabIndex = 16
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Fecha de Instancia:"
      Left = 750
      Top = 720
      Width = 2100
      Height = 300
      TabIndex = 15
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Código:"
      Left = 2040
      Top = 240
      Width = 810
      Height = 300
      TabIndex = 14
      AutoSize = -1  'True
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 840
    Width = 14865
    Height = 2955
    TabIndex = 0
    OleObjectBlob = "frmInstanciaJudicialABM.frx":383C
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmInstanciaJudicialABM.frx":3F90
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15132
    Height = 528
    TabIndex = 26
    OleObjectBlob = "frmInstanciaJudicialABM.frx":BB0E
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 27
      TabStop = 0   'False
      Picture = "frmInstanciaJudicialABM.frx":C06A
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin VB.Label Label12
    Caption = "Reposicion de Sellado :"
    Left = 480
    Top = 8520
    Width = 2490
    Height = 300
    TabIndex = 23
    AutoSize = -1  'True
  End
End

Attribute VB_Name = "frmInstanciaJudicialABM"


Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A65F00
  'Data Table: 4E2E74
  loc_A65EA4: FLdRfVar var_B4
  loc_A65EA7: FLdRfVar var_B0
  loc_A65EAA: FLdI2 ColIndex
  loc_A65EAD: CVarI2 var_A8
  loc_A65EB0: PopAdLdVar
  loc_A65EB1: FLdPr Me
  loc_A65EB4: VCallAd Control_ID_dgdABMS
  loc_A65EB7: FStAdFunc var_88
  loc_A65EBA: FLdPr var_88
  loc_A65EBD: LateIdLdVar var_98 DispID_105 0
  loc_A65EC4: CastAdVar Me
  loc_A65EC8: FStAdFunc var_AC
  loc_A65ECB: FLdPr var_AC
  loc_A65ECE: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A65ED3: FLdPr var_B0
  loc_A65ED6:  = Me.DataField
  loc_A65EDB: FLdZeroAd var_B4
  loc_A65EDE: PopTmpLdAdStr
  loc_A65EE2: FLdPr Me
  loc_A65EE5: MemLdRfVar from_stack_1.global_52
  loc_A65EE8: NewIfNullPr clsinstjudi
  loc_A65EEB: Call clsinstjudi.Sort(from_stack_1v)
  loc_A65EF0: FFree1Str var_B8
  loc_A65EF3: FFreeAd var_88 = "": var_AC = ""
  loc_A65EFC: FFree1Var var_98 = ""
  loc_A65EFF: ExitProcHresult
End Sub

Private Sub CoadInjuTxt_GotFocus() '9C7118
  'Data Table: 4E2E74
  loc_9C7104: FLdPr Me
  loc_9C7107: VCallAd Control_ID_CoadInjuTxt
  loc_9C710A: CVarAd
  loc_9C710E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7113: FFree1Var var_94 = ""
  loc_9C7116: ExitProcHresult
End Sub

Private Sub CoadInjuTxt_KeyPress(KeyAscii As Integer) 'A06398
  'Data Table: 4E2E74
  loc_A06364: LitStr "1234567890,."
  loc_A06367: FStStrCopy var_88
  loc_A0636A: FLdRfVar var_88
  loc_A0636D: ILdRf KeyAscii
  loc_A06370: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A06375: IStI2 KeyAscii
  loc_A06378: FFree1Str var_88
  loc_A0637B: ILdI2 KeyAscii
  loc_A0637E: LitStr "."
  loc_A06381: ImpAdCallI2 Asc()
  loc_A06386: EqI2
  loc_A06387: BranchF loc_A06395
  loc_A0638A: LitStr ","
  loc_A0638D: ImpAdCallI2 Asc()
  loc_A06392: IStI2 KeyAscii
  loc_A06395: ExitProcHresult
End Sub

Private Sub CoadInjuTxt_LostFocus() 'A742B8
  'Data Table: 4E2E74
  loc_A74254: FLdRfVar var_8C
  loc_A74257: FLdPr Me
  loc_A7425A: VCallAd Control_ID_CoadInjuTxt
  loc_A7425D: FStAdFunc var_88
  loc_A74260: FLdPr var_88
  loc_A74263:  = Me.Text
  loc_A74268: LitI4 1
  loc_A7426D: LitI4 1
  loc_A74272: LitVarStr var_AC, "##0.00"
  loc_A74277: FStVarCopyObj var_BC
  loc_A7427A: FLdRfVar var_BC
  loc_A7427D: FLdZeroAd var_8C
  loc_A74280: CVarStr var_9C
  loc_A74283: FLdRfVar var_CC
  loc_A74286: ImpAdCallFPR4  = Format(, )
  loc_A7428B: FLdRfVar var_CC
  loc_A7428E: CStrVarVal var_D0
  loc_A74292: FLdPr Me
  loc_A74295: VCallAd Control_ID_CoadInjuTxt
  loc_A74298: FStAdFunc var_D4
  loc_A7429B: FLdPr var_D4
  loc_A7429E: Me.Text = from_stack_1
  loc_A742A3: FFree1Str var_D0
  loc_A742A6: FFreeAd var_88 = ""
  loc_A742AD: FFreeVar var_9C = "": var_BC = ""
  loc_A742B6: ExitProcHresult
End Sub

Private Sub CoadInjuTxt_Validate(Cancel As Boolean) 'AB70F4
  'Data Table: 4E2E74
  loc_AB7010: FLdRfVar var_8A
  loc_AB7013: FLdPr Me
  loc_AB7016: VCallAd Control_ID_cmdCancelar
  loc_AB7019: FStAdFunc var_88
  loc_AB701C: FLdPr var_88
  loc_AB701F:  = Me.Value
  loc_AB7024: FLdI2 var_8A
  loc_AB7027: NotI4
  loc_AB7028: FLdRfVar var_92
  loc_AB702B: FLdPr Me
  loc_AB702E: VCallAd Control_ID_CoadInjuTxt
  loc_AB7031: FStAdFunc var_90
  loc_AB7034: FLdPr var_90
  loc_AB7037:  = Me.Enabled
  loc_AB703C: FLdI2 var_92
  loc_AB703F: AndI4
  loc_AB7040: FFreeAd var_88 = ""
  loc_AB7047: BranchF loc_AB70F2
  loc_AB704A: FLdRfVar var_98
  loc_AB704D: FLdPr Me
  loc_AB7050: VCallAd Control_ID_CoadInjuTxt
  loc_AB7053: FStAdFunc var_88
  loc_AB7056: FLdPr var_88
  loc_AB7059:  = Me.Text
  loc_AB705E: FLdZeroAd var_98
  loc_AB7061: CVarStr var_A8
  loc_AB7064: ImpAdCallI2 IsNumeric()
  loc_AB7069: NotI4
  loc_AB706A: FFree1Ad var_88
  loc_AB706D: FFree1Var var_A8 = ""
  loc_AB7070: BranchF loc_AB708A
  loc_AB7073: LitStr "0"
  loc_AB7076: FLdPr Me
  loc_AB7079: VCallAd Control_ID_CoadInjuTxt
  loc_AB707C: FStAdFunc var_88
  loc_AB707F: FLdPr var_88
  loc_AB7082: Me.Text = from_stack_1
  loc_AB7087: FFree1Ad var_88
  loc_AB708A: FLdRfVar var_98
  loc_AB708D: FLdPr Me
  loc_AB7090: VCallAd Control_ID_CoadInjuTxt
  loc_AB7093: FStAdFunc var_88
  loc_AB7096: FLdPr var_88
  loc_AB7099:  = Me.Text
  loc_AB709E: LitI2_Byte &HFF
  loc_AB70A0: LitI2_Byte 0
  loc_AB70A2: ILdRf var_98
  loc_AB70A5: LitStr "ingrese descuento"
  loc_AB70A8: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AB70AD: FStStrNoPop var_AC
  loc_AB70B0: FLdPr Me
  loc_AB70B3: MemStStrCopy
  loc_AB70B7: FFreeStr var_98 = ""
  loc_AB70BE: FFree1Ad var_88
  loc_AB70C1: FLdPr Me
  loc_AB70C4: MemLdStr global_60
  loc_AB70C7: LitStr vbNullString
  loc_AB70CA: NeStr
  loc_AB70CC: BranchF loc_AB70F2
  loc_AB70CF: FLdPr Me
  loc_AB70D2: MemLdStr global_60
  loc_AB70D5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB70DA: FLdPr Me
  loc_AB70DD: VCallAd Control_ID_CoadInjuTxt
  loc_AB70E0: CVarAd
  loc_AB70E4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB70E9: FFree1Var var_A8 = ""
  loc_AB70EC: LitI2_Byte &HFF
  loc_AB70EE: IStI2 Cancel
  loc_AB70F1: ExitProcHresult
  loc_AB70F2: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'A74420
  'Data Table: 4E2E74
  loc_A743B4: LitI2_Byte 0
  loc_A743B6: FLdPr Me
  loc_A743B9: MemStI2 global_56
  loc_A743BC: LitI2_Byte 0
  loc_A743BE: ILdRf Me
  loc_A743C1: CastAd
  loc_A743C4: FStAdFunc var_88
  loc_A743C7: FLdRfVar var_88
  loc_A743CA: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_A743CF: FFree1Ad var_88
  loc_A743D2: LitI4 0
  loc_A743D7: LitI4 0
  loc_A743DC: FLdRfVar var_8C
  loc_A743DF: Redim
  loc_A743E9: FLdPr Me
  loc_A743EC: VCallAd Control_ID_dgdABMS
  loc_A743EF: CVarAd
  loc_A743F3: ParmAry1St
  loc_A743F9: FLdRfVar var_8C
  loc_A743FC: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A74401: FLdRfVar var_8C
  loc_A74404: Erase
  loc_A74405: Call EnlazaTodo()
  loc_A7440A: ILdRf Me
  loc_A7440D: CastAd
  loc_A74410: FStAdFunc var_88
  loc_A74413: FLdRfVar var_88
  loc_A74416: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_A7441B: FFree1Ad var_88
  loc_A7441E: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'C2FBFC
  'Data Table: 4E2E74
  loc_C2F108: ILdRf Button
  loc_C2F10B: FStAd var_88 
  loc_C2F10F: FLdRfVar var_90
  loc_C2F112: FLdPr var_88
  loc_C2F115:  = Me.Key
  loc_C2F11A: FLdZeroAd var_90
  loc_C2F11D: FStStr var_94
  loc_C2F120: ILdRf var_94
  loc_C2F123: LitStr "btnCrear"
  loc_C2F126: EqStr
  loc_C2F128: BranchF loc_C2F554
  loc_C2F12B: LitI2_Byte 1
  loc_C2F12D: FLdPr Me
  loc_C2F130: MemStI2 global_56
  loc_C2F133: ILdRf Me
  loc_C2F136: CastAd
  loc_C2F139: FStAdFunc var_98
  loc_C2F13C: FLdRfVar var_98
  loc_C2F13F: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_C2F144: FFree1Ad var_98
  loc_C2F147: LitI4 0
  loc_C2F14C: LitI4 0
  loc_C2F151: FLdRfVar var_9C
  loc_C2F154: Redim
  loc_C2F15E: FLdPr Me
  loc_C2F161: VCallAd Control_ID_dgdABMS
  loc_C2F164: CVarAd
  loc_C2F168: ParmAry1St
  loc_C2F16E: FLdRfVar var_9C
  loc_C2F171: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C2F176: FLdRfVar var_9C
  loc_C2F179: Erase
  loc_C2F17A: ILdRf Me
  loc_C2F17D: CastAd
  loc_C2F180: FStAdFunc var_98
  loc_C2F183: FLdRfVar var_98
  loc_C2F186: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_C2F18B: FFree1Ad var_98
  loc_C2F18E: ILdRf Me
  loc_C2F191: CastAd
  loc_C2F194: FStAdFunc var_98
  loc_C2F197: FLdRfVar var_98
  loc_C2F19A: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_C2F19F: FFree1Ad var_98
  loc_C2F1A2: LitI4 1
  loc_C2F1A7: LitI4 1
  loc_C2F1AC: LitVarStr var_CC, "0.00"
  loc_C2F1B1: FStVarCopyObj var_DC
  loc_C2F1B4: FLdRfVar var_DC
  loc_C2F1B7: LitVarStr var_BC, "0"
  loc_C2F1BC: FStVarCopyObj var_AC
  loc_C2F1BF: FLdRfVar var_AC
  loc_C2F1C2: FLdRfVar var_EC
  loc_C2F1C5: ImpAdCallFPR4  = Format(, )
  loc_C2F1CA: FLdRfVar var_EC
  loc_C2F1CD: CStrVarVal var_90
  loc_C2F1D1: FLdPr Me
  loc_C2F1D4: VCallAd Control_ID_DefiInjuTxt
  loc_C2F1D7: FStAdFunc var_98
  loc_C2F1DA: FLdPr var_98
  loc_C2F1DD: Me.Text = from_stack_1
  loc_C2F1E2: FFree1Str var_90
  loc_C2F1E5: FFree1Ad var_98
  loc_C2F1E8: FFreeVar var_AC = "": var_DC = ""
  loc_C2F1F1: LitI4 1
  loc_C2F1F6: LitI4 1
  loc_C2F1FB: LitVarStr var_CC, "0.00"
  loc_C2F200: FStVarCopyObj var_DC
  loc_C2F203: FLdRfVar var_DC
  loc_C2F206: LitVarStr var_BC, "0"
  loc_C2F20B: FStVarCopyObj var_AC
  loc_C2F20E: FLdRfVar var_AC
  loc_C2F211: FLdRfVar var_EC
  loc_C2F214: ImpAdCallFPR4  = Format(, )
  loc_C2F219: FLdRfVar var_EC
  loc_C2F21C: CStrVarVal var_90
  loc_C2F220: FLdPr Me
  loc_C2F223: VCallAd Control_ID_CoadInjuTxt
  loc_C2F226: FStAdFunc var_98
  loc_C2F229: FLdPr var_98
  loc_C2F22C: Me.Text = from_stack_1
  loc_C2F231: FFree1Str var_90
  loc_C2F234: FFree1Ad var_98
  loc_C2F237: FFreeVar var_AC = "": var_DC = ""
  loc_C2F240: LitI4 1
  loc_C2F245: LitI4 1
  loc_C2F24A: LitVarStr var_CC, "0.00"
  loc_C2F24F: FStVarCopyObj var_DC
  loc_C2F252: FLdRfVar var_DC
  loc_C2F255: LitVarStr var_BC, "0"
  loc_C2F25A: FStVarCopyObj var_AC
  loc_C2F25D: FLdRfVar var_AC
  loc_C2F260: FLdRfVar var_EC
  loc_C2F263: ImpAdCallFPR4  = Format(, )
  loc_C2F268: FLdRfVar var_EC
  loc_C2F26B: CStrVarVal var_90
  loc_C2F26F: FLdPr Me
  loc_C2F272: VCallAd Control_ID_HoreInjuTxt
  loc_C2F275: FStAdFunc var_98
  loc_C2F278: FLdPr var_98
  loc_C2F27B: Me.Text = from_stack_1
  loc_C2F280: FFree1Str var_90
  loc_C2F283: FFree1Ad var_98
  loc_C2F286: FFreeVar var_AC = "": var_DC = ""
  loc_C2F28F: LitI4 1
  loc_C2F294: LitI4 1
  loc_C2F299: LitVarStr var_CC, "0.00"
  loc_C2F29E: FStVarCopyObj var_DC
  loc_C2F2A1: FLdRfVar var_DC
  loc_C2F2A4: LitVarStr var_BC, "0"
  loc_C2F2A9: FStVarCopyObj var_AC
  loc_C2F2AC: FLdRfVar var_AC
  loc_C2F2AF: FLdRfVar var_EC
  loc_C2F2B2: ImpAdCallFPR4  = Format(, )
  loc_C2F2B7: FLdRfVar var_EC
  loc_C2F2BA: CStrVarVal var_90
  loc_C2F2BE: FLdPr Me
  loc_C2F2C1: VCallAd Control_ID_HoofInjuTxt
  loc_C2F2C4: FStAdFunc var_98
  loc_C2F2C7: FLdPr var_98
  loc_C2F2CA: Me.Text = from_stack_1
  loc_C2F2CF: FFree1Str var_90
  loc_C2F2D2: FFree1Ad var_98
  loc_C2F2D5: FFreeVar var_AC = "": var_DC = ""
  loc_C2F2DE: LitI4 1
  loc_C2F2E3: LitI4 1
  loc_C2F2E8: LitVarStr var_CC, "0.00"
  loc_C2F2ED: FStVarCopyObj var_DC
  loc_C2F2F0: FLdRfVar var_DC
  loc_C2F2F3: LitVarStr var_BC, "0"
  loc_C2F2F8: FStVarCopyObj var_AC
  loc_C2F2FB: FLdRfVar var_AC
  loc_C2F2FE: FLdRfVar var_EC
  loc_C2F301: ImpAdCallFPR4  = Format(, )
  loc_C2F306: FLdRfVar var_EC
  loc_C2F309: CStrVarVal var_90
  loc_C2F30D: FLdPr Me
  loc_C2F310: VCallAd Control_ID_ApleInjuTxt
  loc_C2F313: FStAdFunc var_98
  loc_C2F316: FLdPr var_98
  loc_C2F319: Me.Text = from_stack_1
  loc_C2F31E: FFree1Str var_90
  loc_C2F321: FFree1Ad var_98
  loc_C2F324: FFreeVar var_AC = "": var_DC = ""
  loc_C2F32D: LitI4 1
  loc_C2F332: LitI4 1
  loc_C2F337: LitVarStr var_CC, "0.00"
  loc_C2F33C: FStVarCopyObj var_DC
  loc_C2F33F: FLdRfVar var_DC
  loc_C2F342: LitVarStr var_BC, "0"
  loc_C2F347: FStVarCopyObj var_AC
  loc_C2F34A: FLdRfVar var_AC
  loc_C2F34D: FLdRfVar var_EC
  loc_C2F350: ImpAdCallFPR4  = Format(, )
  loc_C2F355: FLdRfVar var_EC
  loc_C2F358: CStrVarVal var_90
  loc_C2F35C: FLdPr Me
  loc_C2F35F: VCallAd Control_ID_ReseInjuTxt
  loc_C2F362: FStAdFunc var_98
  loc_C2F365: FLdPr var_98
  loc_C2F368: Me.Text = from_stack_1
  loc_C2F36D: FFree1Str var_90
  loc_C2F370: FFree1Ad var_98
  loc_C2F373: FFreeVar var_AC = "": var_DC = ""
  loc_C2F37C: LitI4 1
  loc_C2F381: LitI4 1
  loc_C2F386: LitVarStr var_CC, "0.00"
  loc_C2F38B: FStVarCopyObj var_DC
  loc_C2F38E: FLdRfVar var_DC
  loc_C2F391: LitVarStr var_BC, "0"
  loc_C2F396: FStVarCopyObj var_AC
  loc_C2F399: FLdRfVar var_AC
  loc_C2F39C: FLdRfVar var_EC
  loc_C2F39F: ImpAdCallFPR4  = Format(, )
  loc_C2F3A4: FLdRfVar var_EC
  loc_C2F3A7: CStrVarVal var_90
  loc_C2F3AB: FLdPr Me
  loc_C2F3AE: VCallAd Control_ID_KireInjuTxt
  loc_C2F3B1: FStAdFunc var_98
  loc_C2F3B4: FLdPr var_98
  loc_C2F3B7: Me.Text = from_stack_1
  loc_C2F3BC: FFree1Str var_90
  loc_C2F3BF: FFree1Ad var_98
  loc_C2F3C2: FFreeVar var_AC = "": var_DC = ""
  loc_C2F3CB: LitI4 1
  loc_C2F3D0: LitI4 1
  loc_C2F3D5: LitVarStr var_CC, "0.00"
  loc_C2F3DA: FStVarCopyObj var_DC
  loc_C2F3DD: FLdRfVar var_DC
  loc_C2F3E0: LitVarStr var_BC, "0"
  loc_C2F3E5: FStVarCopyObj var_AC
  loc_C2F3E8: FLdRfVar var_AC
  loc_C2F3EB: FLdRfVar var_EC
  loc_C2F3EE: ImpAdCallFPR4  = Format(, )
  loc_C2F3F3: FLdRfVar var_EC
  loc_C2F3F6: CStrVarVal var_90
  loc_C2F3FA: FLdPr Me
  loc_C2F3FD: VCallAd Control_ID_KiofInjuTxt
  loc_C2F400: FStAdFunc var_98
  loc_C2F403: FLdPr var_98
  loc_C2F406: Me.Text = from_stack_1
  loc_C2F40B: FFree1Str var_90
  loc_C2F40E: FFree1Ad var_98
  loc_C2F411: FFreeVar var_AC = "": var_DC = ""
  loc_C2F41A: LitI2_Byte 0
  loc_C2F41C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C2F421: CStrDate
  loc_C2F423: CVarStr var_AC
  loc_C2F426: PopAdLdVar
  loc_C2F427: FLdPr Me
  loc_C2F42A: VCallAd Control_ID_FealInjuMsk
  loc_C2F42D: FStAdFunc var_98
  loc_C2F430: FLdPr var_98
  loc_C2F433: LateIdSt
  loc_C2F438: FFree1Ad var_98
  loc_C2F43B: FFree1Var var_AC = ""
  loc_C2F43E: FLdRfVar var_F0
  loc_C2F441: FLdPr Me
  loc_C2F444: MemLdRfVar from_stack_1.global_52
  loc_C2F447: NewIfNullPr clsinstjudi
  loc_C2F44A: from_stack_1v = clsinstjudi.NuevoRegistro()
  loc_C2F44F: ILdRf var_F0
  loc_C2F452: CStrI4
  loc_C2F454: FStStrNoPop var_90
  loc_C2F457: FLdPr Me
  loc_C2F45A: VCallAd Control_ID_CodiInjuTxt
  loc_C2F45D: FStAdFunc var_98
  loc_C2F460: FLdPr var_98
  loc_C2F463: Me.Text = from_stack_1
  loc_C2F468: FFree1Str var_90
  loc_C2F46B: FFree1Ad var_98
  loc_C2F46E: LitI4 0
  loc_C2F473: LitI4 &HB
  loc_C2F478: FLdRfVar var_9C
  loc_C2F47B: Redim
  loc_C2F485: FLdPr Me
  loc_C2F488: VCallAd Control_ID_CodiInjuTxt
  loc_C2F48B: CVarAd
  loc_C2F48F: ParmAry1St
  loc_C2F495: FLdPr Me
  loc_C2F498: VCallAd Control_ID_FealInjuMsk
  loc_C2F49B: CVarAd
  loc_C2F49F: ParmAry1St
  loc_C2F4A5: FLdPr Me
  loc_C2F4A8: VCallAd Control_ID_DetaInjuTxt
  loc_C2F4AB: CVarAd
  loc_C2F4AF: ParmAry1St
  loc_C2F4B5: FLdPr Me
  loc_C2F4B8: VCallAd Control_ID_DefiInjuTxt
  loc_C2F4BB: CVarAd
  loc_C2F4BF: ParmAry1St
  loc_C2F4C5: FLdPr Me
  loc_C2F4C8: VCallAd Control_ID_CoadInjuTxt
  loc_C2F4CB: CVarAd
  loc_C2F4CF: ParmAry1St
  loc_C2F4D5: FLdPr Me
  loc_C2F4D8: VCallAd Control_ID_HoreInjuTxt
  loc_C2F4DB: CVarAd
  loc_C2F4DF: ParmAry1St
  loc_C2F4E5: FLdPr Me
  loc_C2F4E8: VCallAd Control_ID_HoofInjuTxt
  loc_C2F4EB: CVarAd
  loc_C2F4EF: ParmAry1St
  loc_C2F4F5: FLdPr Me
  loc_C2F4F8: VCallAd Control_ID_ApleInjuTxt
  loc_C2F4FB: CVarAd
  loc_C2F4FF: ParmAry1St
  loc_C2F505: FLdPr Me
  loc_C2F508: VCallAd Control_ID_ReseInjuTxt
  loc_C2F50B: CVarAd
  loc_C2F50F: ParmAry1St
  loc_C2F515: FLdPr Me
  loc_C2F518: VCallAd Control_ID_FealInjuCmd
  loc_C2F51B: CVarAd
  loc_C2F51F: ParmAry1St
  loc_C2F525: FLdPr Me
  loc_C2F528: VCallAd Control_ID_KireInjuTxt
  loc_C2F52B: CVarAd
  loc_C2F52F: ParmAry1St
  loc_C2F535: FLdPr Me
  loc_C2F538: VCallAd Control_ID_KiofInjuTxt
  loc_C2F53B: CVarAd
  loc_C2F53F: ParmAry1St
  loc_C2F545: FLdRfVar var_9C
  loc_C2F548: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_C2F54D: FLdRfVar var_9C
  loc_C2F550: Erase
  loc_C2F551: Branch loc_C2FBF8
  loc_C2F554: ILdRf var_94
  loc_C2F557: LitStr "btnModificar"
  loc_C2F55A: EqStr
  loc_C2F55C: BranchF loc_C2F695
  loc_C2F55F: FLdRfVar var_F0
  loc_C2F562: FLdPr Me
  loc_C2F565: MemLdRfVar from_stack_1.global_52
  loc_C2F568: NewIfNullPr clsinstjudi
  loc_C2F56B: from_stack_1 = clsinstjudi.RecordCount
  loc_C2F570: ILdRf var_F0
  loc_C2F573: LitI4 0
  loc_C2F578: GtI4
  loc_C2F579: BranchF loc_C2F692
  loc_C2F57C: LitI2_Byte 2
  loc_C2F57E: FLdPr Me
  loc_C2F581: MemStI2 global_56
  loc_C2F584: ILdRf Me
  loc_C2F587: CastAd
  loc_C2F58A: FStAdFunc var_98
  loc_C2F58D: FLdRfVar var_98
  loc_C2F590: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_C2F595: FFree1Ad var_98
  loc_C2F598: LitI4 0
  loc_C2F59D: LitI4 0
  loc_C2F5A2: FLdRfVar var_9C
  loc_C2F5A5: Redim
  loc_C2F5AF: FLdPr Me
  loc_C2F5B2: VCallAd Control_ID_dgdABMS
  loc_C2F5B5: CVarAd
  loc_C2F5B9: ParmAry1St
  loc_C2F5BF: FLdRfVar var_9C
  loc_C2F5C2: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C2F5C7: FLdRfVar var_9C
  loc_C2F5CA: Erase
  loc_C2F5CB: ILdRf Me
  loc_C2F5CE: CastAd
  loc_C2F5D1: FStAdFunc var_98
  loc_C2F5D4: FLdRfVar var_98
  loc_C2F5D7: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_C2F5DC: FFree1Ad var_98
  loc_C2F5DF: LitI4 0
  loc_C2F5E4: LitI4 8
  loc_C2F5E9: FLdRfVar var_9C
  loc_C2F5EC: Redim
  loc_C2F5F6: FLdPr Me
  loc_C2F5F9: VCallAd Control_ID_DetaInjuTxt
  loc_C2F5FC: CVarAd
  loc_C2F600: ParmAry1St
  loc_C2F606: FLdPr Me
  loc_C2F609: VCallAd Control_ID_DefiInjuTxt
  loc_C2F60C: CVarAd
  loc_C2F610: ParmAry1St
  loc_C2F616: FLdPr Me
  loc_C2F619: VCallAd Control_ID_CoadInjuTxt
  loc_C2F61C: CVarAd
  loc_C2F620: ParmAry1St
  loc_C2F626: FLdPr Me
  loc_C2F629: VCallAd Control_ID_HoreInjuTxt
  loc_C2F62C: CVarAd
  loc_C2F630: ParmAry1St
  loc_C2F636: FLdPr Me
  loc_C2F639: VCallAd Control_ID_HoofInjuTxt
  loc_C2F63C: CVarAd
  loc_C2F640: ParmAry1St
  loc_C2F646: FLdPr Me
  loc_C2F649: VCallAd Control_ID_ApleInjuTxt
  loc_C2F64C: CVarAd
  loc_C2F650: ParmAry1St
  loc_C2F656: FLdPr Me
  loc_C2F659: VCallAd Control_ID_ReseInjuTxt
  loc_C2F65C: CVarAd
  loc_C2F660: ParmAry1St
  loc_C2F666: FLdPr Me
  loc_C2F669: VCallAd Control_ID_KireInjuTxt
  loc_C2F66C: CVarAd
  loc_C2F670: ParmAry1St
  loc_C2F676: FLdPr Me
  loc_C2F679: VCallAd Control_ID_KiofInjuTxt
  loc_C2F67C: CVarAd
  loc_C2F680: ParmAry1St
  loc_C2F686: FLdRfVar var_9C
  loc_C2F689: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_C2F68E: FLdRfVar var_9C
  loc_C2F691: Erase
  loc_C2F692: Branch loc_C2FBF8
  loc_C2F695: ILdRf var_94
  loc_C2F698: LitStr "btnEliminar"
  loc_C2F69B: EqStr
  loc_C2F69D: BranchF loc_C2F6F2
  loc_C2F6A0: FLdRfVar var_F0
  loc_C2F6A3: FLdPr Me
  loc_C2F6A6: MemLdRfVar from_stack_1.global_52
  loc_C2F6A9: NewIfNullPr clsinstjudi
  loc_C2F6AC: from_stack_1 = clsinstjudi.RecordCount
  loc_C2F6B1: ILdRf var_F0
  loc_C2F6B4: LitI4 0
  loc_C2F6B9: GtI4
  loc_C2F6BA: BranchF loc_C2F6EF
  loc_C2F6BD: LitVar_Missing var_100
  loc_C2F6C0: LitVar_Missing var_EC
  loc_C2F6C3: LitVar_Missing var_DC
  loc_C2F6C6: LitI4 4
  loc_C2F6CB: LitVarStr var_BC, "¿Desea eliminar el registro?"
  loc_C2F6D0: FStVarCopyObj var_AC
  loc_C2F6D3: FLdRfVar var_AC
  loc_C2F6D6: ImpAdCallI2 MsgBox(, , , , )
  loc_C2F6DB: LitI4 6
  loc_C2F6E0: EqI4
  loc_C2F6E1: FFreeVar var_AC = "": var_DC = "": var_EC = ""
  loc_C2F6EC: BranchF loc_C2F6EF
  loc_C2F6EF: Branch loc_C2FBF8
  loc_C2F6F2: ILdRf var_94
  loc_C2F6F5: LitStr "btnGuardar"
  loc_C2F6F8: EqStr
  loc_C2F6FA: BranchF loc_C2FAF4
  loc_C2F6FD: LitI2_Byte 0
  loc_C2F6FF: PopTmpLdAd2 var_1A2
  loc_C2F702: Call CodiInjuTxt_Validate(from_stack_1v)
  loc_C2F707: FLdPr Me
  loc_C2F70A: MemLdStr global_60
  loc_C2F70D: LitStr vbNullString
  loc_C2F710: NeStr
  loc_C2F712: BranchF loc_C2F716
  loc_C2F715: ExitProcHresult
  loc_C2F716: LitI2_Byte 0
  loc_C2F718: PopTmpLdAd2 var_1A2
  loc_C2F71B: Call FealInjuMsk_UnknownEvent_8()
  loc_C2F720: FLdPr Me
  loc_C2F723: MemLdStr global_60
  loc_C2F726: LitStr vbNullString
  loc_C2F729: NeStr
  loc_C2F72B: BranchF loc_C2F72F
  loc_C2F72E: ExitProcHresult
  loc_C2F72F: LitI2_Byte 0
  loc_C2F731: PopTmpLdAd2 var_1A2
  loc_C2F734: Call DetaInjuTxt_Validate(from_stack_1v)
  loc_C2F739: FLdPr Me
  loc_C2F73C: MemLdStr global_60
  loc_C2F73F: LitStr vbNullString
  loc_C2F742: NeStr
  loc_C2F744: BranchF loc_C2F748
  loc_C2F747: ExitProcHresult
  loc_C2F748: LitI2_Byte 0
  loc_C2F74A: PopTmpLdAd2 var_1A2
  loc_C2F74D: Call DefiInjuTxt_Validate(from_stack_1v)
  loc_C2F752: FLdPr Me
  loc_C2F755: MemLdStr global_60
  loc_C2F758: LitStr vbNullString
  loc_C2F75B: NeStr
  loc_C2F75D: BranchF loc_C2F761
  loc_C2F760: ExitProcHresult
  loc_C2F761: LitI2_Byte 0
  loc_C2F763: PopTmpLdAd2 var_1A2
  loc_C2F766: Call CoadInjuTxt_Validate(from_stack_1v)
  loc_C2F76B: FLdPr Me
  loc_C2F76E: MemLdStr global_60
  loc_C2F771: LitStr vbNullString
  loc_C2F774: NeStr
  loc_C2F776: BranchF loc_C2F77A
  loc_C2F779: ExitProcHresult
  loc_C2F77A: LitI2_Byte 0
  loc_C2F77C: PopTmpLdAd2 var_1A2
  loc_C2F77F: Call HoreInjuTxt_Validate(from_stack_1v)
  loc_C2F784: FLdPr Me
  loc_C2F787: MemLdStr global_60
  loc_C2F78A: LitStr vbNullString
  loc_C2F78D: NeStr
  loc_C2F78F: BranchF loc_C2F793
  loc_C2F792: ExitProcHresult
  loc_C2F793: LitI2_Byte 0
  loc_C2F795: PopTmpLdAd2 var_1A2
  loc_C2F798: Call HoofInjuTxt_Validate(from_stack_1v)
  loc_C2F79D: FLdPr Me
  loc_C2F7A0: MemLdStr global_60
  loc_C2F7A3: LitStr vbNullString
  loc_C2F7A6: NeStr
  loc_C2F7A8: BranchF loc_C2F7AC
  loc_C2F7AB: ExitProcHresult
  loc_C2F7AC: LitI2_Byte 0
  loc_C2F7AE: PopTmpLdAd2 var_1A2
  loc_C2F7B1: Call ApleInjuTxt_Validate(from_stack_1v)
  loc_C2F7B6: FLdPr Me
  loc_C2F7B9: MemLdStr global_60
  loc_C2F7BC: LitStr vbNullString
  loc_C2F7BF: NeStr
  loc_C2F7C1: BranchF loc_C2F7C5
  loc_C2F7C4: ExitProcHresult
  loc_C2F7C5: LitI2_Byte 0
  loc_C2F7C7: PopTmpLdAd2 var_1A2
  loc_C2F7CA: Call ReseInjuTxt_Validate(from_stack_1v)
  loc_C2F7CF: FLdPr Me
  loc_C2F7D2: MemLdStr global_60
  loc_C2F7D5: LitStr vbNullString
  loc_C2F7D8: NeStr
  loc_C2F7DA: BranchF loc_C2F7DE
  loc_C2F7DD: ExitProcHresult
  loc_C2F7DE: LitI2_Byte 0
  loc_C2F7E0: PopTmpLdAd2 var_1A2
  loc_C2F7E3: Call KireInjuTxt_Validate(from_stack_1v)
  loc_C2F7E8: FLdPr Me
  loc_C2F7EB: MemLdStr global_60
  loc_C2F7EE: LitStr vbNullString
  loc_C2F7F1: NeStr
  loc_C2F7F3: BranchF loc_C2F7F7
  loc_C2F7F6: ExitProcHresult
  loc_C2F7F7: LitI2_Byte 0
  loc_C2F7F9: PopTmpLdAd2 var_1A2
  loc_C2F7FC: Call KiofInjuTxt_Validate(from_stack_1v)
  loc_C2F801: FLdPr Me
  loc_C2F804: MemLdStr global_60
  loc_C2F807: LitStr vbNullString
  loc_C2F80A: NeStr
  loc_C2F80C: BranchF loc_C2F810
  loc_C2F80F: ExitProcHresult
  loc_C2F810: FLdPr Me
  loc_C2F813: MemLdI2 global_56
  loc_C2F816: FStI2 var_1A4
  loc_C2F819: FLdI2 var_1A4
  loc_C2F81C: LitI2_Byte 1
  loc_C2F81E: EqI2
  loc_C2F81F: BranchF loc_C2F984
  loc_C2F822: FLdRfVar var_90
  loc_C2F825: FLdPr Me
  loc_C2F828: VCallAd Control_ID_CodiInjuTxt
  loc_C2F82B: FStAdFunc var_98
  loc_C2F82E: FLdPr var_98
  loc_C2F831:  = Me.Text
  loc_C2F836: FLdPr Me
  loc_C2F839: VCallAd Control_ID_FealInjuMsk
  loc_C2F83C: FStAdFunc var_1A8
  loc_C2F83F: FLdPr var_1A8
  loc_C2F842: LateIdLdVar var_AC DispID_15 0
  loc_C2F849: PopAd
  loc_C2F84B: FLdRfVar var_1B0
  loc_C2F84E: FLdPr Me
  loc_C2F851: VCallAd Control_ID_DetaInjuTxt
  loc_C2F854: FStAdFunc var_1AC
  loc_C2F857: FLdPr var_1AC
  loc_C2F85A:  = Me.Text
  loc_C2F85F: FLdRfVar var_1B8
  loc_C2F862: FLdPr Me
  loc_C2F865: VCallAd Control_ID_DefiInjuTxt
  loc_C2F868: FStAdFunc var_1B4
  loc_C2F86B: FLdPr var_1B4
  loc_C2F86E:  = Me.Text
  loc_C2F873: FLdRfVar var_1C0
  loc_C2F876: FLdPr Me
  loc_C2F879: VCallAd Control_ID_CoadInjuTxt
  loc_C2F87C: FStAdFunc var_1BC
  loc_C2F87F: FLdPr var_1BC
  loc_C2F882:  = Me.Text
  loc_C2F887: FLdRfVar var_1C8
  loc_C2F88A: FLdPr Me
  loc_C2F88D: VCallAd Control_ID_HoreInjuTxt
  loc_C2F890: FStAdFunc var_1C4
  loc_C2F893: FLdPr var_1C4
  loc_C2F896:  = Me.Text
  loc_C2F89B: FLdRfVar var_1D0
  loc_C2F89E: FLdPr Me
  loc_C2F8A1: VCallAd Control_ID_HoofInjuTxt
  loc_C2F8A4: FStAdFunc var_1CC
  loc_C2F8A7: FLdPr var_1CC
  loc_C2F8AA:  = Me.Text
  loc_C2F8AF: FLdRfVar var_1D8
  loc_C2F8B2: FLdPr Me
  loc_C2F8B5: VCallAd Control_ID_ApleInjuTxt
  loc_C2F8B8: FStAdFunc var_1D4
  loc_C2F8BB: FLdPr var_1D4
  loc_C2F8BE:  = Me.Text
  loc_C2F8C3: FLdRfVar var_1E0
  loc_C2F8C6: FLdPr Me
  loc_C2F8C9: VCallAd Control_ID_ReseInjuTxt
  loc_C2F8CC: FStAdFunc var_1DC
  loc_C2F8CF: FLdPr var_1DC
  loc_C2F8D2:  = Me.Text
  loc_C2F8D7: FLdRfVar var_1E8
  loc_C2F8DA: FLdPr Me
  loc_C2F8DD: VCallAd Control_ID_KireInjuTxt
  loc_C2F8E0: FStAdFunc var_1E4
  loc_C2F8E3: FLdPr var_1E4
  loc_C2F8E6:  = Me.Text
  loc_C2F8EB: FLdRfVar var_1F0
  loc_C2F8EE: FLdPr Me
  loc_C2F8F1: VCallAd Control_ID_KiofInjuTxt
  loc_C2F8F4: FStAdFunc var_1EC
  loc_C2F8F7: FLdPr var_1EC
  loc_C2F8FA:  = Me.Text
  loc_C2F8FF: ILdRf var_1F0
  loc_C2F902: CR8Str
  loc_C2F904: PopFPR8
  loc_C2F905: ILdRf var_1E8
  loc_C2F908: CR8Str
  loc_C2F90A: PopFPR8
  loc_C2F90B: ILdRf var_1E0
  loc_C2F90E: CR8Str
  loc_C2F910: PopFPR8
  loc_C2F911: ILdRf var_1D8
  loc_C2F914: CR8Str
  loc_C2F916: PopFPR8
  loc_C2F917: ILdRf var_1D0
  loc_C2F91A: CR8Str
  loc_C2F91C: PopFPR8
  loc_C2F91D: ILdRf var_1C8
  loc_C2F920: CR8Str
  loc_C2F922: PopFPR8
  loc_C2F923: ILdRf var_1C0
  loc_C2F926: CR8Str
  loc_C2F928: PopFPR8
  loc_C2F929: ILdRf var_1B8
  loc_C2F92C: CR8Str
  loc_C2F92E: PopFPR8
  loc_C2F92F: ILdRf var_1B0
  loc_C2F932: FLdRfVar var_AC
  loc_C2F935: CStrVarTmp
  loc_C2F936: FStStrNoPop var_1F4
  loc_C2F939: ILdRf var_90
  loc_C2F93C: CI2Str
  loc_C2F93E: FLdPr Me
  loc_C2F941: MemLdRfVar from_stack_1.global_52
  loc_C2F944: NewIfNullPr clsinstjudi
  loc_C2F947: Call clsinstjudi.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v)
  loc_C2F94C: FFreeStr var_90 = "": var_1F4 = "": var_1B0 = "": var_1B8 = "": var_1C0 = "": var_1C8 = "": var_1D0 = "": var_1D8 = "": var_1E0 = "": var_1E8 = ""
  loc_C2F965: FFreeAd var_98 = "": var_1A8 = "": var_1AC = "": var_1B4 = "": var_1BC = "": var_1C4 = "": var_1CC = "": var_1D4 = "": var_1DC = "": var_1E4 = ""
  loc_C2F97E: FFree1Var var_AC = ""
  loc_C2F981: Branch loc_C2FAEC
  loc_C2F984: FLdI2 var_1A4
  loc_C2F987: LitI2_Byte 2
  loc_C2F989: EqI2
  loc_C2F98A: BranchF loc_C2FAEC
  loc_C2F98D: FLdRfVar var_90
  loc_C2F990: FLdPr Me
  loc_C2F993: VCallAd Control_ID_CodiInjuTxt
  loc_C2F996: FStAdFunc var_98
  loc_C2F999: FLdPr var_98
  loc_C2F99C:  = Me.Text
  loc_C2F9A1: FLdPr Me
  loc_C2F9A4: VCallAd Control_ID_FealInjuMsk
  loc_C2F9A7: FStAdFunc var_1A8
  loc_C2F9AA: FLdPr var_1A8
  loc_C2F9AD: LateIdLdVar var_AC DispID_15 0
  loc_C2F9B4: PopAd
  loc_C2F9B6: FLdRfVar var_1B0
  loc_C2F9B9: FLdPr Me
  loc_C2F9BC: VCallAd Control_ID_DetaInjuTxt
  loc_C2F9BF: FStAdFunc var_1AC
  loc_C2F9C2: FLdPr var_1AC
  loc_C2F9C5:  = Me.Text
  loc_C2F9CA: FLdRfVar var_1B8
  loc_C2F9CD: FLdPr Me
  loc_C2F9D0: VCallAd Control_ID_DefiInjuTxt
  loc_C2F9D3: FStAdFunc var_1B4
  loc_C2F9D6: FLdPr var_1B4
  loc_C2F9D9:  = Me.Text
  loc_C2F9DE: FLdRfVar var_1C0
  loc_C2F9E1: FLdPr Me
  loc_C2F9E4: VCallAd Control_ID_CoadInjuTxt
  loc_C2F9E7: FStAdFunc var_1BC
  loc_C2F9EA: FLdPr var_1BC
  loc_C2F9ED:  = Me.Text
  loc_C2F9F2: FLdRfVar var_1C8
  loc_C2F9F5: FLdPr Me
  loc_C2F9F8: VCallAd Control_ID_HoreInjuTxt
  loc_C2F9FB: FStAdFunc var_1C4
  loc_C2F9FE: FLdPr var_1C4
  loc_C2FA01:  = Me.Text
  loc_C2FA06: FLdRfVar var_1D0
  loc_C2FA09: FLdPr Me
  loc_C2FA0C: VCallAd Control_ID_HoofInjuTxt
  loc_C2FA0F: FStAdFunc var_1CC
  loc_C2FA12: FLdPr var_1CC
  loc_C2FA15:  = Me.Text
  loc_C2FA1A: FLdRfVar var_1D8
  loc_C2FA1D: FLdPr Me
  loc_C2FA20: VCallAd Control_ID_ApleInjuTxt
  loc_C2FA23: FStAdFunc var_1D4
  loc_C2FA26: FLdPr var_1D4
  loc_C2FA29:  = Me.Text
  loc_C2FA2E: FLdRfVar var_1E0
  loc_C2FA31: FLdPr Me
  loc_C2FA34: VCallAd Control_ID_ReseInjuTxt
  loc_C2FA37: FStAdFunc var_1DC
  loc_C2FA3A: FLdPr var_1DC
  loc_C2FA3D:  = Me.Text
  loc_C2FA42: FLdRfVar var_1E8
  loc_C2FA45: FLdPr Me
  loc_C2FA48: VCallAd Control_ID_KireInjuTxt
  loc_C2FA4B: FStAdFunc var_1E4
  loc_C2FA4E: FLdPr var_1E4
  loc_C2FA51:  = Me.Text
  loc_C2FA56: FLdRfVar var_1F0
  loc_C2FA59: FLdPr Me
  loc_C2FA5C: VCallAd Control_ID_KiofInjuTxt
  loc_C2FA5F: FStAdFunc var_1EC
  loc_C2FA62: FLdPr var_1EC
  loc_C2FA65:  = Me.Text
  loc_C2FA6A: ILdRf var_1F0
  loc_C2FA6D: CR8Str
  loc_C2FA6F: PopFPR8
  loc_C2FA70: ILdRf var_1E8
  loc_C2FA73: CR8Str
  loc_C2FA75: PopFPR8
  loc_C2FA76: ILdRf var_1E0
  loc_C2FA79: CR8Str
  loc_C2FA7B: PopFPR8
  loc_C2FA7C: ILdRf var_1D8
  loc_C2FA7F: CR8Str
  loc_C2FA81: PopFPR8
  loc_C2FA82: ILdRf var_1D0
  loc_C2FA85: CR8Str
  loc_C2FA87: PopFPR8
  loc_C2FA88: ILdRf var_1C8
  loc_C2FA8B: CR8Str
  loc_C2FA8D: PopFPR8
  loc_C2FA8E: ILdRf var_1C0
  loc_C2FA91: CR8Str
  loc_C2FA93: PopFPR8
  loc_C2FA94: ILdRf var_1B8
  loc_C2FA97: CR8Str
  loc_C2FA99: PopFPR8
  loc_C2FA9A: ILdRf var_1B0
  loc_C2FA9D: FLdRfVar var_AC
  loc_C2FAA0: CStrVarTmp
  loc_C2FAA1: FStStrNoPop var_1F4
  loc_C2FAA4: ILdRf var_90
  loc_C2FAA7: CI2Str
  loc_C2FAA9: FLdPr Me
  loc_C2FAAC: MemLdRfVar from_stack_1.global_52
  loc_C2FAAF: NewIfNullPr clsinstjudi
  loc_C2FAB2: Call clsinstjudi.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v)
  loc_C2FAB7: FFreeStr var_90 = "": var_1F4 = "": var_1B0 = "": var_1B8 = "": var_1C0 = "": var_1C8 = "": var_1D0 = "": var_1D8 = "": var_1E0 = "": var_1E8 = ""
  loc_C2FAD0: FFreeAd var_98 = "": var_1A8 = "": var_1AC = "": var_1B4 = "": var_1BC = "": var_1C4 = "": var_1CC = "": var_1D4 = "": var_1DC = "": var_1E4 = ""
  loc_C2FAE9: FFree1Var var_AC = ""
  loc_C2FAEC: Call cmdCancelar_Click()
  loc_C2FAF1: Branch loc_C2FBF8
  loc_C2FAF4: ILdRf var_94
  loc_C2FAF7: LitStr "btnCancelar"
  loc_C2FAFA: EqStr
  loc_C2FAFC: BranchF loc_C2FB07
  loc_C2FAFF: Call cmdCancelar_Click()
  loc_C2FB04: Branch loc_C2FBF8
  loc_C2FB07: ILdRf var_94
  loc_C2FB0A: LitStr "btnPrimero"
  loc_C2FB0D: EqStr
  loc_C2FB0F: BranchF loc_C2FB23
  loc_C2FB12: FLdPr Me
  loc_C2FB15: MemLdRfVar from_stack_1.global_52
  loc_C2FB18: NewIfNullPr clsinstjudi
  loc_C2FB1B: Call clsinstjudi.MoveFirst()
  loc_C2FB20: Branch loc_C2FBF8
  loc_C2FB23: ILdRf var_94
  loc_C2FB26: LitStr "btnAnterior"
  loc_C2FB29: EqStr
  loc_C2FB2B: BranchF loc_C2FB3F
  loc_C2FB2E: FLdPr Me
  loc_C2FB31: MemLdRfVar from_stack_1.global_52
  loc_C2FB34: NewIfNullPr clsinstjudi
  loc_C2FB37: Call clsinstjudi.MovePrevious()
  loc_C2FB3C: Branch loc_C2FBF8
  loc_C2FB3F: ILdRf var_94
  loc_C2FB42: LitStr "btnSiguiente"
  loc_C2FB45: EqStr
  loc_C2FB47: BranchF loc_C2FB5B
  loc_C2FB4A: FLdPr Me
  loc_C2FB4D: MemLdRfVar from_stack_1.global_52
  loc_C2FB50: NewIfNullPr clsinstjudi
  loc_C2FB53: Call clsinstjudi.MoveNext()
  loc_C2FB58: Branch loc_C2FBF8
  loc_C2FB5B: ILdRf var_94
  loc_C2FB5E: LitStr "btnUltimo"
  loc_C2FB61: EqStr
  loc_C2FB63: BranchF loc_C2FB77
  loc_C2FB66: FLdPr Me
  loc_C2FB69: MemLdRfVar from_stack_1.global_52
  loc_C2FB6C: NewIfNullPr clsinstjudi
  loc_C2FB6F: Call clsinstjudi.MoveLast()
  loc_C2FB74: Branch loc_C2FBF8
  loc_C2FB77: ILdRf var_94
  loc_C2FB7A: LitStr "btnFiltrar"
  loc_C2FB7D: EqStr
  loc_C2FB7F: BranchF loc_C2FB85
  loc_C2FB82: Branch loc_C2FBF8
  loc_C2FB85: ILdRf var_94
  loc_C2FB88: LitStr "btnBuscar"
  loc_C2FB8B: EqStr
  loc_C2FB8D: BranchF loc_C2FB93
  loc_C2FB90: Branch loc_C2FBF8
  loc_C2FB93: ILdRf var_94
  loc_C2FB96: LitStr "btnImprimir"
  loc_C2FB99: EqStr
  loc_C2FB9B: BranchF loc_C2FBA1
  loc_C2FB9E: Branch loc_C2FBF8
  loc_C2FBA1: ILdRf var_94
  loc_C2FBA4: LitStr "btnAyuda"
  loc_C2FBA7: EqStr
  loc_C2FBA9: BranchF loc_C2FBD8
  loc_C2FBAC: LitVar_Missing var_100
  loc_C2FBAF: LitVar_Missing var_EC
  loc_C2FBB2: LitVar_Missing var_DC
  loc_C2FBB5: LitI4 0
  loc_C2FBBA: LitVarStr var_BC, "Opcion no disponible en esta version."
  loc_C2FBBF: FStVarCopyObj var_AC
  loc_C2FBC2: FLdRfVar var_AC
  loc_C2FBC5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C2FBCA: FFreeVar var_AC = "": var_DC = "": var_EC = ""
  loc_C2FBD5: Branch loc_C2FBF8
  loc_C2FBD8: ILdRf var_94
  loc_C2FBDB: LitStr "btnSalir"
  loc_C2FBDE: EqStr
  loc_C2FBE0: BranchF loc_C2FBF8
  loc_C2FBE3: ILdRf Me
  loc_C2FBE6: FStAdNoPop
  loc_C2FBEA: ImpAdLdRf MemVar_D9C5D8
  loc_C2FBED: NewIfNullPr Global
  loc_C2FBF0: Global.Unload from_stack_1
  loc_C2FBF5: FFree1Ad var_98
  loc_C2FBF8: ExitProcHresult
  loc_C2FBF9: LitI2 2
End Sub

Private Sub HoreInjuTxt_GotFocus() '9C7160
  'Data Table: 4E2E74
  loc_9C714C: FLdPr Me
  loc_9C714F: VCallAd Control_ID_HoreInjuTxt
  loc_9C7152: CVarAd
  loc_9C7156: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C715B: FFree1Var var_94 = ""
  loc_9C715E: ExitProcHresult
End Sub

Private Sub HoreInjuTxt_KeyPress(KeyAscii As Integer) 'A07030
  'Data Table: 4E2E74
  loc_A06FFC: LitStr "1234567890,."
  loc_A06FFF: FStStrCopy var_88
  loc_A07002: FLdRfVar var_88
  loc_A07005: ILdRf KeyAscii
  loc_A07008: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A0700D: IStI2 KeyAscii
  loc_A07010: FFree1Str var_88
  loc_A07013: ILdI2 KeyAscii
  loc_A07016: LitStr "."
  loc_A07019: ImpAdCallI2 Asc()
  loc_A0701E: EqI2
  loc_A0701F: BranchF loc_A0702D
  loc_A07022: LitStr ","
  loc_A07025: ImpAdCallI2 Asc()
  loc_A0702A: IStI2 KeyAscii
  loc_A0702D: ExitProcHresult
End Sub

Private Sub HoreInjuTxt_LostFocus() 'A744C8
  'Data Table: 4E2E74
  loc_A74464: FLdRfVar var_8C
  loc_A74467: FLdPr Me
  loc_A7446A: VCallAd Control_ID_HoreInjuTxt
  loc_A7446D: FStAdFunc var_88
  loc_A74470: FLdPr var_88
  loc_A74473:  = Me.Text
  loc_A74478: LitI4 1
  loc_A7447D: LitI4 1
  loc_A74482: LitVarStr var_AC, "##0.00"
  loc_A74487: FStVarCopyObj var_BC
  loc_A7448A: FLdRfVar var_BC
  loc_A7448D: FLdZeroAd var_8C
  loc_A74490: CVarStr var_9C
  loc_A74493: FLdRfVar var_CC
  loc_A74496: ImpAdCallFPR4  = Format(, )
  loc_A7449B: FLdRfVar var_CC
  loc_A7449E: CStrVarVal var_D0
  loc_A744A2: FLdPr Me
  loc_A744A5: VCallAd Control_ID_HoreInjuTxt
  loc_A744A8: FStAdFunc var_D4
  loc_A744AB: FLdPr var_D4
  loc_A744AE: Me.Text = from_stack_1
  loc_A744B3: FFree1Str var_D0
  loc_A744B6: FFreeAd var_88 = ""
  loc_A744BD: FFreeVar var_9C = "": var_BC = ""
  loc_A744C6: ExitProcHresult
End Sub

Private Sub HoreInjuTxt_Validate(Cancel As Boolean) 'AB60C4
  'Data Table: 4E2E74
  loc_AB5FE0: FLdRfVar var_8A
  loc_AB5FE3: FLdPr Me
  loc_AB5FE6: VCallAd Control_ID_cmdCancelar
  loc_AB5FE9: FStAdFunc var_88
  loc_AB5FEC: FLdPr var_88
  loc_AB5FEF:  = Me.Value
  loc_AB5FF4: FLdI2 var_8A
  loc_AB5FF7: NotI4
  loc_AB5FF8: FLdRfVar var_92
  loc_AB5FFB: FLdPr Me
  loc_AB5FFE: VCallAd Control_ID_HoreInjuTxt
  loc_AB6001: FStAdFunc var_90
  loc_AB6004: FLdPr var_90
  loc_AB6007:  = Me.Enabled
  loc_AB600C: FLdI2 var_92
  loc_AB600F: AndI4
  loc_AB6010: FFreeAd var_88 = ""
  loc_AB6017: BranchF loc_AB60C2
  loc_AB601A: FLdRfVar var_98
  loc_AB601D: FLdPr Me
  loc_AB6020: VCallAd Control_ID_HoreInjuTxt
  loc_AB6023: FStAdFunc var_88
  loc_AB6026: FLdPr var_88
  loc_AB6029:  = Me.Text
  loc_AB602E: FLdZeroAd var_98
  loc_AB6031: CVarStr var_A8
  loc_AB6034: ImpAdCallI2 IsNumeric()
  loc_AB6039: NotI4
  loc_AB603A: FFree1Ad var_88
  loc_AB603D: FFree1Var var_A8 = ""
  loc_AB6040: BranchF loc_AB605A
  loc_AB6043: LitStr "0"
  loc_AB6046: FLdPr Me
  loc_AB6049: VCallAd Control_ID_HoreInjuTxt
  loc_AB604C: FStAdFunc var_88
  loc_AB604F: FLdPr var_88
  loc_AB6052: Me.Text = from_stack_1
  loc_AB6057: FFree1Ad var_88
  loc_AB605A: FLdRfVar var_98
  loc_AB605D: FLdPr Me
  loc_AB6060: VCallAd Control_ID_HoreInjuTxt
  loc_AB6063: FStAdFunc var_88
  loc_AB6066: FLdPr var_88
  loc_AB6069:  = Me.Text
  loc_AB606E: LitI2_Byte &HFF
  loc_AB6070: LitI2_Byte 0
  loc_AB6072: ILdRf var_98
  loc_AB6075: LitStr "ingrese descuento"
  loc_AB6078: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AB607D: FStStrNoPop var_AC
  loc_AB6080: FLdPr Me
  loc_AB6083: MemStStrCopy
  loc_AB6087: FFreeStr var_98 = ""
  loc_AB608E: FFree1Ad var_88
  loc_AB6091: FLdPr Me
  loc_AB6094: MemLdStr global_60
  loc_AB6097: LitStr vbNullString
  loc_AB609A: NeStr
  loc_AB609C: BranchF loc_AB60C2
  loc_AB609F: FLdPr Me
  loc_AB60A2: MemLdStr global_60
  loc_AB60A5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB60AA: FLdPr Me
  loc_AB60AD: VCallAd Control_ID_HoreInjuTxt
  loc_AB60B0: CVarAd
  loc_AB60B4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB60B9: FFree1Var var_A8 = ""
  loc_AB60BC: LitI2_Byte &HFF
  loc_AB60BE: IStI2 Cancel
  loc_AB60C1: ExitProcHresult
  loc_AB60C2: ExitProcHresult
End Sub

Private Sub HoofInjuTxt_GotFocus() '9C7238
  'Data Table: 4E2E74
  loc_9C7224: FLdPr Me
  loc_9C7227: VCallAd Control_ID_HoofInjuTxt
  loc_9C722A: CVarAd
  loc_9C722E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7233: FFree1Var var_94 = ""
  loc_9C7236: ExitProcHresult
End Sub

Private Sub HoofInjuTxt_KeyPress(KeyAscii As Integer) 'A07100
  'Data Table: 4E2E74
  loc_A070CC: LitStr "1234567890,."
  loc_A070CF: FStStrCopy var_88
  loc_A070D2: FLdRfVar var_88
  loc_A070D5: ILdRf KeyAscii
  loc_A070D8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A070DD: IStI2 KeyAscii
  loc_A070E0: FFree1Str var_88
  loc_A070E3: ILdI2 KeyAscii
  loc_A070E6: LitStr "."
  loc_A070E9: ImpAdCallI2 Asc()
  loc_A070EE: EqI2
  loc_A070EF: BranchF loc_A070FD
  loc_A070F2: LitStr ","
  loc_A070F5: ImpAdCallI2 Asc()
  loc_A070FA: IStI2 KeyAscii
  loc_A070FD: ExitProcHresult
End Sub

Private Sub HoofInjuTxt_LostFocus() 'A75128
  'Data Table: 4E2E74
  loc_A750C4: FLdRfVar var_8C
  loc_A750C7: FLdPr Me
  loc_A750CA: VCallAd Control_ID_HoofInjuTxt
  loc_A750CD: FStAdFunc var_88
  loc_A750D0: FLdPr var_88
  loc_A750D3:  = Me.Text
  loc_A750D8: LitI4 1
  loc_A750DD: LitI4 1
  loc_A750E2: LitVarStr var_AC, "##0.00"
  loc_A750E7: FStVarCopyObj var_BC
  loc_A750EA: FLdRfVar var_BC
  loc_A750ED: FLdZeroAd var_8C
  loc_A750F0: CVarStr var_9C
  loc_A750F3: FLdRfVar var_CC
  loc_A750F6: ImpAdCallFPR4  = Format(, )
  loc_A750FB: FLdRfVar var_CC
  loc_A750FE: CStrVarVal var_D0
  loc_A75102: FLdPr Me
  loc_A75105: VCallAd Control_ID_HoofInjuTxt
  loc_A75108: FStAdFunc var_D4
  loc_A7510B: FLdPr var_D4
  loc_A7510E: Me.Text = from_stack_1
  loc_A75113: FFree1Str var_D0
  loc_A75116: FFreeAd var_88 = ""
  loc_A7511D: FFreeVar var_9C = "": var_BC = ""
  loc_A75126: ExitProcHresult
End Sub

Private Sub HoofInjuTxt_Validate(Cancel As Boolean) 'AB5F9C
  'Data Table: 4E2E74
  loc_AB5EB8: FLdRfVar var_8A
  loc_AB5EBB: FLdPr Me
  loc_AB5EBE: VCallAd Control_ID_cmdCancelar
  loc_AB5EC1: FStAdFunc var_88
  loc_AB5EC4: FLdPr var_88
  loc_AB5EC7:  = Me.Value
  loc_AB5ECC: FLdI2 var_8A
  loc_AB5ECF: NotI4
  loc_AB5ED0: FLdRfVar var_92
  loc_AB5ED3: FLdPr Me
  loc_AB5ED6: VCallAd Control_ID_HoofInjuTxt
  loc_AB5ED9: FStAdFunc var_90
  loc_AB5EDC: FLdPr var_90
  loc_AB5EDF:  = Me.Enabled
  loc_AB5EE4: FLdI2 var_92
  loc_AB5EE7: AndI4
  loc_AB5EE8: FFreeAd var_88 = ""
  loc_AB5EEF: BranchF loc_AB5F9A
  loc_AB5EF2: FLdRfVar var_98
  loc_AB5EF5: FLdPr Me
  loc_AB5EF8: VCallAd Control_ID_HoofInjuTxt
  loc_AB5EFB: FStAdFunc var_88
  loc_AB5EFE: FLdPr var_88
  loc_AB5F01:  = Me.Text
  loc_AB5F06: FLdZeroAd var_98
  loc_AB5F09: CVarStr var_A8
  loc_AB5F0C: ImpAdCallI2 IsNumeric()
  loc_AB5F11: NotI4
  loc_AB5F12: FFree1Ad var_88
  loc_AB5F15: FFree1Var var_A8 = ""
  loc_AB5F18: BranchF loc_AB5F32
  loc_AB5F1B: LitStr "0"
  loc_AB5F1E: FLdPr Me
  loc_AB5F21: VCallAd Control_ID_HoofInjuTxt
  loc_AB5F24: FStAdFunc var_88
  loc_AB5F27: FLdPr var_88
  loc_AB5F2A: Me.Text = from_stack_1
  loc_AB5F2F: FFree1Ad var_88
  loc_AB5F32: FLdRfVar var_98
  loc_AB5F35: FLdPr Me
  loc_AB5F38: VCallAd Control_ID_HoofInjuTxt
  loc_AB5F3B: FStAdFunc var_88
  loc_AB5F3E: FLdPr var_88
  loc_AB5F41:  = Me.Text
  loc_AB5F46: LitI2_Byte &HFF
  loc_AB5F48: LitI2_Byte 0
  loc_AB5F4A: ILdRf var_98
  loc_AB5F4D: LitStr "ingrese descuento"
  loc_AB5F50: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AB5F55: FStStrNoPop var_AC
  loc_AB5F58: FLdPr Me
  loc_AB5F5B: MemStStrCopy
  loc_AB5F5F: FFreeStr var_98 = ""
  loc_AB5F66: FFree1Ad var_88
  loc_AB5F69: FLdPr Me
  loc_AB5F6C: MemLdStr global_60
  loc_AB5F6F: LitStr vbNullString
  loc_AB5F72: NeStr
  loc_AB5F74: BranchF loc_AB5F9A
  loc_AB5F77: FLdPr Me
  loc_AB5F7A: MemLdStr global_60
  loc_AB5F7D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB5F82: FLdPr Me
  loc_AB5F85: VCallAd Control_ID_HoofInjuTxt
  loc_AB5F88: CVarAd
  loc_AB5F8C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB5F91: FFree1Var var_A8 = ""
  loc_AB5F94: LitI2_Byte &HFF
  loc_AB5F96: IStI2 Cancel
  loc_AB5F99: ExitProcHresult
  loc_AB5F9A: ExitProcHresult
End Sub

Private Sub ApleInjuTxt_GotFocus() '9C7280
  'Data Table: 4E2E74
  loc_9C726C: FLdPr Me
  loc_9C726F: VCallAd Control_ID_ApleInjuTxt
  loc_9C7272: CVarAd
  loc_9C7276: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C727B: FFree1Var var_94 = ""
  loc_9C727E: ExitProcHresult
End Sub

Private Sub ApleInjuTxt_KeyPress(KeyAscii As Integer) 'A07098
  'Data Table: 4E2E74
  loc_A07064: LitStr "1234567890,."
  loc_A07067: FStStrCopy var_88
  loc_A0706A: FLdRfVar var_88
  loc_A0706D: ILdRf KeyAscii
  loc_A07070: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A07075: IStI2 KeyAscii
  loc_A07078: FFree1Str var_88
  loc_A0707B: ILdI2 KeyAscii
  loc_A0707E: LitStr "."
  loc_A07081: ImpAdCallI2 Asc()
  loc_A07086: EqI2
  loc_A07087: BranchF loc_A07095
  loc_A0708A: LitStr ","
  loc_A0708D: ImpAdCallI2 Asc()
  loc_A07092: IStI2 KeyAscii
  loc_A07095: ExitProcHresult
End Sub

Private Sub ApleInjuTxt_LostFocus() 'A75498
  'Data Table: 4E2E74
  loc_A75434: FLdRfVar var_8C
  loc_A75437: FLdPr Me
  loc_A7543A: VCallAd Control_ID_ApleInjuTxt
  loc_A7543D: FStAdFunc var_88
  loc_A75440: FLdPr var_88
  loc_A75443:  = Me.Text
  loc_A75448: LitI4 1
  loc_A7544D: LitI4 1
  loc_A75452: LitVarStr var_AC, "##0.00"
  loc_A75457: FStVarCopyObj var_BC
  loc_A7545A: FLdRfVar var_BC
  loc_A7545D: FLdZeroAd var_8C
  loc_A75460: CVarStr var_9C
  loc_A75463: FLdRfVar var_CC
  loc_A75466: ImpAdCallFPR4  = Format(, )
  loc_A7546B: FLdRfVar var_CC
  loc_A7546E: CStrVarVal var_D0
  loc_A75472: FLdPr Me
  loc_A75475: VCallAd Control_ID_ApleInjuTxt
  loc_A75478: FStAdFunc var_D4
  loc_A7547B: FLdPr var_D4
  loc_A7547E: Me.Text = from_stack_1
  loc_A75483: FFree1Str var_D0
  loc_A75486: FFreeAd var_88 = ""
  loc_A7548D: FFreeVar var_9C = "": var_BC = ""
  loc_A75496: ExitProcHresult
End Sub

Private Sub ApleInjuTxt_Validate(Cancel As Boolean) 'AB643C
  'Data Table: 4E2E74
  loc_AB6358: FLdRfVar var_8A
  loc_AB635B: FLdPr Me
  loc_AB635E: VCallAd Control_ID_cmdCancelar
  loc_AB6361: FStAdFunc var_88
  loc_AB6364: FLdPr var_88
  loc_AB6367:  = Me.Value
  loc_AB636C: FLdI2 var_8A
  loc_AB636F: NotI4
  loc_AB6370: FLdRfVar var_92
  loc_AB6373: FLdPr Me
  loc_AB6376: VCallAd Control_ID_ApleInjuTxt
  loc_AB6379: FStAdFunc var_90
  loc_AB637C: FLdPr var_90
  loc_AB637F:  = Me.Enabled
  loc_AB6384: FLdI2 var_92
  loc_AB6387: AndI4
  loc_AB6388: FFreeAd var_88 = ""
  loc_AB638F: BranchF loc_AB643A
  loc_AB6392: FLdRfVar var_98
  loc_AB6395: FLdPr Me
  loc_AB6398: VCallAd Control_ID_ApleInjuTxt
  loc_AB639B: FStAdFunc var_88
  loc_AB639E: FLdPr var_88
  loc_AB63A1:  = Me.Text
  loc_AB63A6: FLdZeroAd var_98
  loc_AB63A9: CVarStr var_A8
  loc_AB63AC: ImpAdCallI2 IsNumeric()
  loc_AB63B1: NotI4
  loc_AB63B2: FFree1Ad var_88
  loc_AB63B5: FFree1Var var_A8 = ""
  loc_AB63B8: BranchF loc_AB63D2
  loc_AB63BB: LitStr "0"
  loc_AB63BE: FLdPr Me
  loc_AB63C1: VCallAd Control_ID_ApleInjuTxt
  loc_AB63C4: FStAdFunc var_88
  loc_AB63C7: FLdPr var_88
  loc_AB63CA: Me.Text = from_stack_1
  loc_AB63CF: FFree1Ad var_88
  loc_AB63D2: FLdRfVar var_98
  loc_AB63D5: FLdPr Me
  loc_AB63D8: VCallAd Control_ID_ApleInjuTxt
  loc_AB63DB: FStAdFunc var_88
  loc_AB63DE: FLdPr var_88
  loc_AB63E1:  = Me.Text
  loc_AB63E6: LitI2_Byte &HFF
  loc_AB63E8: LitI2_Byte 0
  loc_AB63EA: ILdRf var_98
  loc_AB63ED: LitStr "ingrese descuento"
  loc_AB63F0: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AB63F5: FStStrNoPop var_AC
  loc_AB63F8: FLdPr Me
  loc_AB63FB: MemStStrCopy
  loc_AB63FF: FFreeStr var_98 = ""
  loc_AB6406: FFree1Ad var_88
  loc_AB6409: FLdPr Me
  loc_AB640C: MemLdStr global_60
  loc_AB640F: LitStr vbNullString
  loc_AB6412: NeStr
  loc_AB6414: BranchF loc_AB643A
  loc_AB6417: FLdPr Me
  loc_AB641A: MemLdStr global_60
  loc_AB641D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB6422: FLdPr Me
  loc_AB6425: VCallAd Control_ID_ApleInjuTxt
  loc_AB6428: CVarAd
  loc_AB642C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB6431: FFree1Var var_A8 = ""
  loc_AB6434: LitI2_Byte &HFF
  loc_AB6436: IStI2 Cancel
  loc_AB6439: ExitProcHresult
  loc_AB643A: ExitProcHresult
End Sub

Private Sub KiofInjuTxt_GotFocus() '9C72C8
  'Data Table: 4E2E74
  loc_9C72B4: FLdPr Me
  loc_9C72B7: VCallAd Control_ID_KiofInjuTxt
  loc_9C72BA: CVarAd
  loc_9C72BE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C72C3: FFree1Var var_94 = ""
  loc_9C72C6: ExitProcHresult
End Sub

Private Sub KiofInjuTxt_KeyPress(KeyAscii As Integer) 'A06F60
  'Data Table: 4E2E74
  loc_A06F2C: LitStr "1234567890,."
  loc_A06F2F: FStStrCopy var_88
  loc_A06F32: FLdRfVar var_88
  loc_A06F35: ILdRf KeyAscii
  loc_A06F38: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A06F3D: IStI2 KeyAscii
  loc_A06F40: FFree1Str var_88
  loc_A06F43: ILdI2 KeyAscii
  loc_A06F46: LitStr "."
  loc_A06F49: ImpAdCallI2 Asc()
  loc_A06F4E: EqI2
  loc_A06F4F: BranchF loc_A06F5D
  loc_A06F52: LitStr ","
  loc_A06F55: ImpAdCallI2 Asc()
  loc_A06F5A: IStI2 KeyAscii
  loc_A06F5D: ExitProcHresult
End Sub

Private Sub KiofInjuTxt_LostFocus() 'A75AC8
  'Data Table: 4E2E74
  loc_A75A64: FLdRfVar var_8C
  loc_A75A67: FLdPr Me
  loc_A75A6A: VCallAd Control_ID_KiofInjuTxt
  loc_A75A6D: FStAdFunc var_88
  loc_A75A70: FLdPr var_88
  loc_A75A73:  = Me.Text
  loc_A75A78: LitI4 1
  loc_A75A7D: LitI4 1
  loc_A75A82: LitVarStr var_AC, "##0.00"
  loc_A75A87: FStVarCopyObj var_BC
  loc_A75A8A: FLdRfVar var_BC
  loc_A75A8D: FLdZeroAd var_8C
  loc_A75A90: CVarStr var_9C
  loc_A75A93: FLdRfVar var_CC
  loc_A75A96: ImpAdCallFPR4  = Format(, )
  loc_A75A9B: FLdRfVar var_CC
  loc_A75A9E: CStrVarVal var_D0
  loc_A75AA2: FLdPr Me
  loc_A75AA5: VCallAd Control_ID_KiofInjuTxt
  loc_A75AA8: FStAdFunc var_D4
  loc_A75AAB: FLdPr var_D4
  loc_A75AAE: Me.Text = from_stack_1
  loc_A75AB3: FFree1Str var_D0
  loc_A75AB6: FFreeAd var_88 = ""
  loc_A75ABD: FFreeVar var_9C = "": var_BC = ""
  loc_A75AC6: ExitProcHresult
End Sub

Private Sub KiofInjuTxt_Validate(Cancel As Boolean) 'AB6EA4
  'Data Table: 4E2E74
  loc_AB6DC0: FLdRfVar var_8A
  loc_AB6DC3: FLdPr Me
  loc_AB6DC6: VCallAd Control_ID_cmdCancelar
  loc_AB6DC9: FStAdFunc var_88
  loc_AB6DCC: FLdPr var_88
  loc_AB6DCF:  = Me.Value
  loc_AB6DD4: FLdI2 var_8A
  loc_AB6DD7: NotI4
  loc_AB6DD8: FLdRfVar var_92
  loc_AB6DDB: FLdPr Me
  loc_AB6DDE: VCallAd Control_ID_KiofInjuTxt
  loc_AB6DE1: FStAdFunc var_90
  loc_AB6DE4: FLdPr var_90
  loc_AB6DE7:  = Me.Enabled
  loc_AB6DEC: FLdI2 var_92
  loc_AB6DEF: AndI4
  loc_AB6DF0: FFreeAd var_88 = ""
  loc_AB6DF7: BranchF loc_AB6EA2
  loc_AB6DFA: FLdRfVar var_98
  loc_AB6DFD: FLdPr Me
  loc_AB6E00: VCallAd Control_ID_KiofInjuTxt
  loc_AB6E03: FStAdFunc var_88
  loc_AB6E06: FLdPr var_88
  loc_AB6E09:  = Me.Text
  loc_AB6E0E: FLdZeroAd var_98
  loc_AB6E11: CVarStr var_A8
  loc_AB6E14: ImpAdCallI2 IsNumeric()
  loc_AB6E19: NotI4
  loc_AB6E1A: FFree1Ad var_88
  loc_AB6E1D: FFree1Var var_A8 = ""
  loc_AB6E20: BranchF loc_AB6E3A
  loc_AB6E23: LitStr "0"
  loc_AB6E26: FLdPr Me
  loc_AB6E29: VCallAd Control_ID_KiofInjuTxt
  loc_AB6E2C: FStAdFunc var_88
  loc_AB6E2F: FLdPr var_88
  loc_AB6E32: Me.Text = from_stack_1
  loc_AB6E37: FFree1Ad var_88
  loc_AB6E3A: FLdRfVar var_98
  loc_AB6E3D: FLdPr Me
  loc_AB6E40: VCallAd Control_ID_KiofInjuTxt
  loc_AB6E43: FStAdFunc var_88
  loc_AB6E46: FLdPr var_88
  loc_AB6E49:  = Me.Text
  loc_AB6E4E: LitI2_Byte &HFF
  loc_AB6E50: LitI2_Byte 0
  loc_AB6E52: ILdRf var_98
  loc_AB6E55: LitStr " kilómetros del Oficial de Justicia"
  loc_AB6E58: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AB6E5D: FStStrNoPop var_AC
  loc_AB6E60: FLdPr Me
  loc_AB6E63: MemStStrCopy
  loc_AB6E67: FFreeStr var_98 = ""
  loc_AB6E6E: FFree1Ad var_88
  loc_AB6E71: FLdPr Me
  loc_AB6E74: MemLdStr global_60
  loc_AB6E77: LitStr vbNullString
  loc_AB6E7A: NeStr
  loc_AB6E7C: BranchF loc_AB6EA2
  loc_AB6E7F: FLdPr Me
  loc_AB6E82: MemLdStr global_60
  loc_AB6E85: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB6E8A: FLdPr Me
  loc_AB6E8D: VCallAd Control_ID_KiofInjuTxt
  loc_AB6E90: CVarAd
  loc_AB6E94: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB6E99: FFree1Var var_A8 = ""
  loc_AB6E9C: LitI2_Byte &HFF
  loc_AB6E9E: IStI2 Cancel
  loc_AB6EA1: ExitProcHresult
  loc_AB6EA2: ExitProcHresult
End Sub

Private Sub Form_Load() 'AF4874
  'Data Table: 4E2E74
  loc_AF46BC: LitI2_Byte 0
  loc_AF46BE: CR8I2
  loc_AF46BF: PopFPR4
  loc_AF46C0: FLdPr Me
  loc_AF46C3: Me.Left = from_stack_1s
  loc_AF46C8: LitI2_Byte 0
  loc_AF46CA: CR8I2
  loc_AF46CB: PopFPR4
  loc_AF46CC: FLdPr Me
  loc_AF46CF: Me.Top = from_stack_1s
  loc_AF46D4: LitStr "SELECT CodiInju, FealInju, DetaInju, DefiInju, CoadInju, HoreInju, HoofInju, ApleInju, ReseInju, KireInju, KiofInju FROM instjudi"
  loc_AF46D7: FLdPr Me
  loc_AF46DA: MemLdRfVar from_stack_1.global_52
  loc_AF46DD: NewIfNullPr clsinstjudi
  loc_AF46E0: Call clsinstjudi.RedefineRS(from_stack_1v)
  loc_AF46E5: LitStr "CodiInju"
  loc_AF46E8: FLdPr Me
  loc_AF46EB: VCallAd Control_ID_CodiInjuTxt
  loc_AF46EE: FStAdFunc var_88
  loc_AF46F1: FLdPr var_88
  loc_AF46F4: Me.DataField = from_stack_1
  loc_AF46F9: FFree1Ad var_88
  loc_AF46FC: LitVarStr var_98, "FealInju"
  loc_AF4701: PopAdLdVar
  loc_AF4702: FLdPr Me
  loc_AF4705: VCallAd Control_ID_FealInjuMsk
  loc_AF4708: FStAdFunc var_88
  loc_AF470B: FLdPr var_88
  loc_AF470E: LateIdSt
  loc_AF4713: FFree1Ad var_88
  loc_AF4716: LitStr "DetaInju"
  loc_AF4719: FLdPr Me
  loc_AF471C: VCallAd Control_ID_DetaInjuTxt
  loc_AF471F: FStAdFunc var_88
  loc_AF4722: FLdPr var_88
  loc_AF4725: Me.DataField = from_stack_1
  loc_AF472A: FFree1Ad var_88
  loc_AF472D: LitStr "DefiInju"
  loc_AF4730: FLdPr Me
  loc_AF4733: VCallAd Control_ID_DefiInjuTxt
  loc_AF4736: FStAdFunc var_88
  loc_AF4739: FLdPr var_88
  loc_AF473C: Me.DataField = from_stack_1
  loc_AF4741: FFree1Ad var_88
  loc_AF4744: LitStr "CoadInju"
  loc_AF4747: FLdPr Me
  loc_AF474A: VCallAd Control_ID_CoadInjuTxt
  loc_AF474D: FStAdFunc var_88
  loc_AF4750: FLdPr var_88
  loc_AF4753: Me.DataField = from_stack_1
  loc_AF4758: FFree1Ad var_88
  loc_AF475B: LitStr "HoreInju"
  loc_AF475E: FLdPr Me
  loc_AF4761: VCallAd Control_ID_HoreInjuTxt
  loc_AF4764: FStAdFunc var_88
  loc_AF4767: FLdPr var_88
  loc_AF476A: Me.DataField = from_stack_1
  loc_AF476F: FFree1Ad var_88
  loc_AF4772: LitStr "HoofInju"
  loc_AF4775: FLdPr Me
  loc_AF4778: VCallAd Control_ID_HoofInjuTxt
  loc_AF477B: FStAdFunc var_88
  loc_AF477E: FLdPr var_88
  loc_AF4781: Me.DataField = from_stack_1
  loc_AF4786: FFree1Ad var_88
  loc_AF4789: LitStr "ApleInju"
  loc_AF478C: FLdPr Me
  loc_AF478F: VCallAd Control_ID_ApleInjuTxt
  loc_AF4792: FStAdFunc var_88
  loc_AF4795: FLdPr var_88
  loc_AF4798: Me.DataField = from_stack_1
  loc_AF479D: FFree1Ad var_88
  loc_AF47A0: LitStr "ReseInju"
  loc_AF47A3: FLdPr Me
  loc_AF47A6: VCallAd Control_ID_ReseInjuTxt
  loc_AF47A9: FStAdFunc var_88
  loc_AF47AC: FLdPr var_88
  loc_AF47AF: Me.DataField = from_stack_1
  loc_AF47B4: FFree1Ad var_88
  loc_AF47B7: LitStr "KireInju"
  loc_AF47BA: FLdPr Me
  loc_AF47BD: VCallAd Control_ID_KireInjuTxt
  loc_AF47C0: FStAdFunc var_88
  loc_AF47C3: FLdPr var_88
  loc_AF47C6: Me.DataField = from_stack_1
  loc_AF47CB: FFree1Ad var_88
  loc_AF47CE: LitStr "KiofInju"
  loc_AF47D1: FLdPr Me
  loc_AF47D4: VCallAd Control_ID_KiofInjuTxt
  loc_AF47D7: FStAdFunc var_88
  loc_AF47DA: FLdPr var_88
  loc_AF47DD: Me.DataField = from_stack_1
  loc_AF47E2: FFree1Ad var_88
  loc_AF47E5: LitI4 0
  loc_AF47EA: LitI4 1
  loc_AF47EF: FLdRfVar var_AC
  loc_AF47F2: Redim
  loc_AF47FC: FLdPr Me
  loc_AF47FF: MemLdRfVar from_stack_1.global_52
  loc_AF4802: NewIfNullAd
  loc_AF4805: FStAd var_88 
  loc_AF4809: FLdRfVar var_88
  loc_AF480C: CVarRef
  loc_AF4811: ParmAry1St
  loc_AF4817: FLdPr Me
  loc_AF481A: VCallAd Control_ID_dgdABMS
  loc_AF481D: CVarAd
  loc_AF4821: ParmAry1St
  loc_AF4827: FLdRfVar var_AC
  loc_AF482A: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AF482F: ILdRf var_88
  loc_AF4832: CastAd
  loc_AF4835: FLdPr Me
  loc_AF4838: MemStAdFunc
  loc_AF483C: FLdRfVar var_AC
  loc_AF483F: Erase
  loc_AF4840: FFree1Ad var_88
  loc_AF4843: Call EnlazaTodo()
  loc_AF4848: ILdRf Me
  loc_AF484B: CastAd
  loc_AF484E: FStAdFunc var_88
  loc_AF4851: FLdRfVar var_88
  loc_AF4854: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AF4859: FFree1Ad var_88
  loc_AF485C: LitI2_Byte 0
  loc_AF485E: ILdRf Me
  loc_AF4861: CastAd
  loc_AF4864: FStAdFunc var_88
  loc_AF4867: FLdRfVar var_88
  loc_AF486A: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AF486F: FFree1Ad var_88
  loc_AF4872: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A62760
  'Data Table: 4E2E74
  loc_A62704: FLdRfVar var_C2
  loc_A62707: FLdRfVar var_C0
  loc_A6270A: LitVarI2 var_B8, 1
  loc_A6270F: FLdPr Me
  loc_A62712: VCallAd Control_ID_tlbABMS
  loc_A62715: FStAdFunc var_88
  loc_A62718: FLdPr var_88
  loc_A6271B: LateIdLdVar var_98 DispID_3 0
  loc_A62722: CastAdVar Me
  loc_A62726: FStAdFunc var_BC
  loc_A62729: FLdPr var_BC
  loc_A6272C:  = Me.Buttons.ControlDefault
  loc_A62731: FLdPr var_C0
  loc_A62734:  = Me.Enabled
  loc_A62739: FLdI2 var_C2
  loc_A6273C: FFreeAd var_88 = "": var_BC = ""
  loc_A62745: FFreeVar var_98 = ""
  loc_A6274C: BranchF loc_A6275D
  loc_A6274F: FLdPr Me
  loc_A62752: MemLdRfVar from_stack_1.global_52
  loc_A62755: NewIfNullPr clsinstjudi
  loc_A62758: Call clsinstjudi.Requery()
  loc_A6275D: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9C912C
  'Data Table: 4E2E74
  loc_9C9114: ILdI2 KeyCode
  loc_9C9117: ILdRf Me
  loc_9C911A: CastAd
  loc_9C911D: FStAdFunc var_88
  loc_9C9120: FLdRfVar var_88
  loc_9C9123: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9C9128: FFree1Ad var_88
  loc_9C912B: ExitProcHresult
End Sub

Private Sub KireInjuTxt_GotFocus() '9C7310
  'Data Table: 4E2E74
  loc_9C72FC: FLdPr Me
  loc_9C72FF: VCallAd Control_ID_KireInjuTxt
  loc_9C7302: CVarAd
  loc_9C7306: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C730B: FFree1Var var_94 = ""
  loc_9C730E: ExitProcHresult
End Sub

Private Sub KireInjuTxt_KeyPress(KeyAscii As Integer) 'A081A8
  'Data Table: 4E2E74
  loc_A08174: LitStr "1234567890,."
  loc_A08177: FStStrCopy var_88
  loc_A0817A: FLdRfVar var_88
  loc_A0817D: ILdRf KeyAscii
  loc_A08180: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A08185: IStI2 KeyAscii
  loc_A08188: FFree1Str var_88
  loc_A0818B: ILdI2 KeyAscii
  loc_A0818E: LitStr "."
  loc_A08191: ImpAdCallI2 Asc()
  loc_A08196: EqI2
  loc_A08197: BranchF loc_A081A5
  loc_A0819A: LitStr ","
  loc_A0819D: ImpAdCallI2 Asc()
  loc_A081A2: IStI2 KeyAscii
  loc_A081A5: ExitProcHresult
End Sub

Private Sub KireInjuTxt_LostFocus() 'A76728
  'Data Table: 4E2E74
  loc_A766C4: FLdRfVar var_8C
  loc_A766C7: FLdPr Me
  loc_A766CA: VCallAd Control_ID_KireInjuTxt
  loc_A766CD: FStAdFunc var_88
  loc_A766D0: FLdPr var_88
  loc_A766D3:  = Me.Text
  loc_A766D8: LitI4 1
  loc_A766DD: LitI4 1
  loc_A766E2: LitVarStr var_AC, "##0.00"
  loc_A766E7: FStVarCopyObj var_BC
  loc_A766EA: FLdRfVar var_BC
  loc_A766ED: FLdZeroAd var_8C
  loc_A766F0: CVarStr var_9C
  loc_A766F3: FLdRfVar var_CC
  loc_A766F6: ImpAdCallFPR4  = Format(, )
  loc_A766FB: FLdRfVar var_CC
  loc_A766FE: CStrVarVal var_D0
  loc_A76702: FLdPr Me
  loc_A76705: VCallAd Control_ID_KireInjuTxt
  loc_A76708: FStAdFunc var_D4
  loc_A7670B: FLdPr var_D4
  loc_A7670E: Me.Text = from_stack_1
  loc_A76713: FFree1Str var_D0
  loc_A76716: FFreeAd var_88 = ""
  loc_A7671D: FFreeVar var_9C = "": var_BC = ""
  loc_A76726: ExitProcHresult
End Sub

Private Sub KireInjuTxt_Validate(Cancel As Boolean) 'AB540C
  'Data Table: 4E2E74
  loc_AB5328: FLdRfVar var_8A
  loc_AB532B: FLdPr Me
  loc_AB532E: VCallAd Control_ID_cmdCancelar
  loc_AB5331: FStAdFunc var_88
  loc_AB5334: FLdPr var_88
  loc_AB5337:  = Me.Value
  loc_AB533C: FLdI2 var_8A
  loc_AB533F: NotI4
  loc_AB5340: FLdRfVar var_92
  loc_AB5343: FLdPr Me
  loc_AB5346: VCallAd Control_ID_KireInjuTxt
  loc_AB5349: FStAdFunc var_90
  loc_AB534C: FLdPr var_90
  loc_AB534F:  = Me.Enabled
  loc_AB5354: FLdI2 var_92
  loc_AB5357: AndI4
  loc_AB5358: FFreeAd var_88 = ""
  loc_AB535F: BranchF loc_AB540A
  loc_AB5362: FLdRfVar var_98
  loc_AB5365: FLdPr Me
  loc_AB5368: VCallAd Control_ID_KireInjuTxt
  loc_AB536B: FStAdFunc var_88
  loc_AB536E: FLdPr var_88
  loc_AB5371:  = Me.Text
  loc_AB5376: FLdZeroAd var_98
  loc_AB5379: CVarStr var_A8
  loc_AB537C: ImpAdCallI2 IsNumeric()
  loc_AB5381: NotI4
  loc_AB5382: FFree1Ad var_88
  loc_AB5385: FFree1Var var_A8 = ""
  loc_AB5388: BranchF loc_AB53A2
  loc_AB538B: LitStr "0"
  loc_AB538E: FLdPr Me
  loc_AB5391: VCallAd Control_ID_KireInjuTxt
  loc_AB5394: FStAdFunc var_88
  loc_AB5397: FLdPr var_88
  loc_AB539A: Me.Text = from_stack_1
  loc_AB539F: FFree1Ad var_88
  loc_AB53A2: FLdRfVar var_98
  loc_AB53A5: FLdPr Me
  loc_AB53A8: VCallAd Control_ID_KireInjuTxt
  loc_AB53AB: FStAdFunc var_88
  loc_AB53AE: FLdPr var_88
  loc_AB53B1:  = Me.Text
  loc_AB53B6: LitI2_Byte &HFF
  loc_AB53B8: LitI2_Byte 0
  loc_AB53BA: ILdRf var_98
  loc_AB53BD: LitStr " kilómetros del Recaudador"
  loc_AB53C0: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AB53C5: FStStrNoPop var_AC
  loc_AB53C8: FLdPr Me
  loc_AB53CB: MemStStrCopy
  loc_AB53CF: FFreeStr var_98 = ""
  loc_AB53D6: FFree1Ad var_88
  loc_AB53D9: FLdPr Me
  loc_AB53DC: MemLdStr global_60
  loc_AB53DF: LitStr vbNullString
  loc_AB53E2: NeStr
  loc_AB53E4: BranchF loc_AB540A
  loc_AB53E7: FLdPr Me
  loc_AB53EA: MemLdStr global_60
  loc_AB53ED: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB53F2: FLdPr Me
  loc_AB53F5: VCallAd Control_ID_KireInjuTxt
  loc_AB53F8: CVarAd
  loc_AB53FC: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB5401: FFree1Var var_A8 = ""
  loc_AB5404: LitI2_Byte &HFF
  loc_AB5406: IStI2 Cancel
  loc_AB5409: ExitProcHresult
  loc_AB540A: ExitProcHresult
End Sub

Private Sub CodiInjuTxt_GotFocus() '9C6FB0
  'Data Table: 4E2E74
  loc_9C6F9C: FLdPr Me
  loc_9C6F9F: VCallAd Control_ID_CodiInjuTxt
  loc_9C6FA2: CVarAd
  loc_9C6FA6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6FAB: FFree1Var var_94 = ""
  loc_9C6FAE: ExitProcHresult
End Sub

Private Sub CodiInjuTxt_KeyPress(KeyAscii As Integer) '9C92F4
  'Data Table: 4E2E74
  loc_9C92DC: LitStr "0123456789"
  loc_9C92DF: FStStrCopy var_88
  loc_9C92E2: FLdRfVar var_88
  loc_9C92E5: ILdRf KeyAscii
  loc_9C92E8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C92ED: IStI2 KeyAscii
  loc_9C92F0: FFree1Str var_88
  loc_9C92F3: ExitProcHresult
End Sub

Private Sub CodiInjuTxt_Validate(Cancel As Boolean) 'AB6564
  'Data Table: 4E2E74
  loc_AB6480: FLdRfVar var_8A
  loc_AB6483: FLdPr Me
  loc_AB6486: VCallAd Control_ID_cmdCancelar
  loc_AB6489: FStAdFunc var_88
  loc_AB648C: FLdPr var_88
  loc_AB648F:  = Me.Value
  loc_AB6494: FLdI2 var_8A
  loc_AB6497: NotI4
  loc_AB6498: FLdRfVar var_92
  loc_AB649B: FLdPr Me
  loc_AB649E: VCallAd Control_ID_CodiInjuTxt
  loc_AB64A1: FStAdFunc var_90
  loc_AB64A4: FLdPr var_90
  loc_AB64A7:  = Me.Enabled
  loc_AB64AC: FLdI2 var_92
  loc_AB64AF: AndI4
  loc_AB64B0: FFreeAd var_88 = ""
  loc_AB64B7: BranchF loc_AB6562
  loc_AB64BA: FLdRfVar var_98
  loc_AB64BD: FLdPr Me
  loc_AB64C0: VCallAd Control_ID_CodiInjuTxt
  loc_AB64C3: FStAdFunc var_88
  loc_AB64C6: FLdPr var_88
  loc_AB64C9:  = Me.Text
  loc_AB64CE: FLdZeroAd var_98
  loc_AB64D1: CVarStr var_A8
  loc_AB64D4: ImpAdCallI2 IsNumeric()
  loc_AB64D9: NotI4
  loc_AB64DA: FFree1Ad var_88
  loc_AB64DD: FFree1Var var_A8 = ""
  loc_AB64E0: BranchF loc_AB64FA
  loc_AB64E3: LitStr "0"
  loc_AB64E6: FLdPr Me
  loc_AB64E9: VCallAd Control_ID_CodiInjuTxt
  loc_AB64EC: FStAdFunc var_88
  loc_AB64EF: FLdPr var_88
  loc_AB64F2: Me.Text = from_stack_1
  loc_AB64F7: FFree1Ad var_88
  loc_AB64FA: FLdRfVar var_98
  loc_AB64FD: FLdPr Me
  loc_AB6500: VCallAd Control_ID_CodiInjuTxt
  loc_AB6503: FStAdFunc var_88
  loc_AB6506: FLdPr var_88
  loc_AB6509:  = Me.Text
  loc_AB650E: LitI2_Byte 0
  loc_AB6510: LitI2_Byte 0
  loc_AB6512: ILdRf var_98
  loc_AB6515: LitStr "codigo de la Instancia Judicial"
  loc_AB6518: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AB651D: FStStrNoPop var_AC
  loc_AB6520: FLdPr Me
  loc_AB6523: MemStStrCopy
  loc_AB6527: FFreeStr var_98 = ""
  loc_AB652E: FFree1Ad var_88
  loc_AB6531: FLdPr Me
  loc_AB6534: MemLdStr global_60
  loc_AB6537: LitStr vbNullString
  loc_AB653A: NeStr
  loc_AB653C: BranchF loc_AB6562
  loc_AB653F: FLdPr Me
  loc_AB6542: MemLdStr global_60
  loc_AB6545: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB654A: FLdPr Me
  loc_AB654D: VCallAd Control_ID_CodiInjuTxt
  loc_AB6550: CVarAd
  loc_AB6554: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB6559: FFree1Var var_A8 = ""
  loc_AB655C: LitI2_Byte &HFF
  loc_AB655E: IStI2 Cancel
  loc_AB6561: ExitProcHresult
  loc_AB6562: ExitProcHresult
End Sub

Private Sub ReseInjuTxt_GotFocus() '9C7358
  'Data Table: 4E2E74
  loc_9C7344: FLdPr Me
  loc_9C7347: VCallAd Control_ID_ReseInjuTxt
  loc_9C734A: CVarAd
  loc_9C734E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7353: FFree1Var var_94 = ""
  loc_9C7356: ExitProcHresult
End Sub

Private Sub ReseInjuTxt_KeyPress(KeyAscii As Integer) 'A07D30
  'Data Table: 4E2E74
  loc_A07CFC: LitStr "1234567890,."
  loc_A07CFF: FStStrCopy var_88
  loc_A07D02: FLdRfVar var_88
  loc_A07D05: ILdRf KeyAscii
  loc_A07D08: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A07D0D: IStI2 KeyAscii
  loc_A07D10: FFree1Str var_88
  loc_A07D13: ILdI2 KeyAscii
  loc_A07D16: LitStr "."
  loc_A07D19: ImpAdCallI2 Asc()
  loc_A07D1E: EqI2
  loc_A07D1F: BranchF loc_A07D2D
  loc_A07D22: LitStr ","
  loc_A07D25: ImpAdCallI2 Asc()
  loc_A07D2A: IStI2 KeyAscii
  loc_A07D2D: ExitProcHresult
End Sub

Private Sub ReseInjuTxt_LostFocus() 'A765C8
  'Data Table: 4E2E74
  loc_A76564: FLdRfVar var_8C
  loc_A76567: FLdPr Me
  loc_A7656A: VCallAd Control_ID_ReseInjuTxt
  loc_A7656D: FStAdFunc var_88
  loc_A76570: FLdPr var_88
  loc_A76573:  = Me.Text
  loc_A76578: LitI4 1
  loc_A7657D: LitI4 1
  loc_A76582: LitVarStr var_AC, "##0.00"
  loc_A76587: FStVarCopyObj var_BC
  loc_A7658A: FLdRfVar var_BC
  loc_A7658D: FLdZeroAd var_8C
  loc_A76590: CVarStr var_9C
  loc_A76593: FLdRfVar var_CC
  loc_A76596: ImpAdCallFPR4  = Format(, )
  loc_A7659B: FLdRfVar var_CC
  loc_A7659E: CStrVarVal var_D0
  loc_A765A2: FLdPr Me
  loc_A765A5: VCallAd Control_ID_ReseInjuTxt
  loc_A765A8: FStAdFunc var_D4
  loc_A765AB: FLdPr var_D4
  loc_A765AE: Me.Text = from_stack_1
  loc_A765B3: FFree1Str var_D0
  loc_A765B6: FFreeAd var_88 = ""
  loc_A765BD: FFreeVar var_9C = "": var_BC = ""
  loc_A765C6: ExitProcHresult
End Sub

Private Sub ReseInjuTxt_Validate(Cancel As Boolean) 'AB746C
  'Data Table: 4E2E74
  loc_AB7388: FLdRfVar var_8A
  loc_AB738B: FLdPr Me
  loc_AB738E: VCallAd Control_ID_cmdCancelar
  loc_AB7391: FStAdFunc var_88
  loc_AB7394: FLdPr var_88
  loc_AB7397:  = Me.Value
  loc_AB739C: FLdI2 var_8A
  loc_AB739F: NotI4
  loc_AB73A0: FLdRfVar var_92
  loc_AB73A3: FLdPr Me
  loc_AB73A6: VCallAd Control_ID_ReseInjuTxt
  loc_AB73A9: FStAdFunc var_90
  loc_AB73AC: FLdPr var_90
  loc_AB73AF:  = Me.Enabled
  loc_AB73B4: FLdI2 var_92
  loc_AB73B7: AndI4
  loc_AB73B8: FFreeAd var_88 = ""
  loc_AB73BF: BranchF loc_AB746A
  loc_AB73C2: FLdRfVar var_98
  loc_AB73C5: FLdPr Me
  loc_AB73C8: VCallAd Control_ID_ReseInjuTxt
  loc_AB73CB: FStAdFunc var_88
  loc_AB73CE: FLdPr var_88
  loc_AB73D1:  = Me.Text
  loc_AB73D6: FLdZeroAd var_98
  loc_AB73D9: CVarStr var_A8
  loc_AB73DC: ImpAdCallI2 IsNumeric()
  loc_AB73E1: NotI4
  loc_AB73E2: FFree1Ad var_88
  loc_AB73E5: FFree1Var var_A8 = ""
  loc_AB73E8: BranchF loc_AB7402
  loc_AB73EB: LitStr "0"
  loc_AB73EE: FLdPr Me
  loc_AB73F1: VCallAd Control_ID_ReseInjuTxt
  loc_AB73F4: FStAdFunc var_88
  loc_AB73F7: FLdPr var_88
  loc_AB73FA: Me.Text = from_stack_1
  loc_AB73FF: FFree1Ad var_88
  loc_AB7402: FLdRfVar var_98
  loc_AB7405: FLdPr Me
  loc_AB7408: VCallAd Control_ID_ReseInjuTxt
  loc_AB740B: FStAdFunc var_88
  loc_AB740E: FLdPr var_88
  loc_AB7411:  = Me.Text
  loc_AB7416: LitI2_Byte &HFF
  loc_AB7418: LitI2_Byte 0
  loc_AB741A: ILdRf var_98
  loc_AB741D: LitStr "ingrese descuento"
  loc_AB7420: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AB7425: FStStrNoPop var_AC
  loc_AB7428: FLdPr Me
  loc_AB742B: MemStStrCopy
  loc_AB742F: FFreeStr var_98 = ""
  loc_AB7436: FFree1Ad var_88
  loc_AB7439: FLdPr Me
  loc_AB743C: MemLdStr global_60
  loc_AB743F: LitStr vbNullString
  loc_AB7442: NeStr
  loc_AB7444: BranchF loc_AB746A
  loc_AB7447: FLdPr Me
  loc_AB744A: MemLdStr global_60
  loc_AB744D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB7452: FLdPr Me
  loc_AB7455: VCallAd Control_ID_ReseInjuTxt
  loc_AB7458: CVarAd
  loc_AB745C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB7461: FFree1Var var_A8 = ""
  loc_AB7464: LitI2_Byte &HFF
  loc_AB7466: IStI2 Cancel
  loc_AB7469: ExitProcHresult
  loc_AB746A: ExitProcHresult
End Sub

Private Sub FealInjuMsk_UnknownEvent_0 '9C7040
  'Data Table: 4E2E74
  loc_9C702C: FLdPr Me
  loc_9C702F: VCallAd Control_ID_FealInjuMsk
  loc_9C7032: CVarAd
  loc_9C7036: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C703B: FFree1Var var_94 = ""
  loc_9C703E: ExitProcHresult
End Sub

Private Sub FealInjuMsk_UnknownEvent_8 'AEB210
  'Data Table: 4E2E74
  loc_AEB08C: FLdRfVar var_8A
  loc_AEB08F: FLdPr Me
  loc_AEB092: VCallAd Control_ID_cmdCancelar
  loc_AEB095: FStAdFunc var_88
  loc_AEB098: FLdPr var_88
  loc_AEB09B:  = Me.Value
  loc_AEB0A0: FLdI2 var_8A
  loc_AEB0A3: NotI4
  loc_AEB0A4: FLdPr Me
  loc_AEB0A7: VCallAd Control_ID_FealInjuMsk
  loc_AEB0AA: FStAdFunc var_90
  loc_AEB0AD: FLdPr var_90
  loc_AEB0B0: LateIdLdVar var_A0 DispID_13 -32767
  loc_AEB0B7: CBoolVar
  loc_AEB0B9: AndI4
  loc_AEB0BA: FFreeAd var_88 = ""
  loc_AEB0C1: FFree1Var var_A0 = ""
  loc_AEB0C4: BranchF loc_AEB20D
  loc_AEB0C7: LitVarStr var_B0, vbNullString
  loc_AEB0CC: PopAdLdVar
  loc_AEB0CD: FLdPr Me
  loc_AEB0D0: VCallAd Control_ID_FealInjuMsk
  loc_AEB0D3: FStAdFunc var_88
  loc_AEB0D6: FLdPr var_88
  loc_AEB0D9: LateIdSt
  loc_AEB0DE: FFree1Ad var_88
  loc_AEB0E1: FLdPr Me
  loc_AEB0E4: VCallAd Control_ID_FealInjuMsk
  loc_AEB0E7: FStAdFunc var_88
  loc_AEB0EA: FLdPr var_88
  loc_AEB0ED: LateIdLdVar var_A0 DispID_22 0
  loc_AEB0F4: CStrVarTmp
  loc_AEB0F5: FStStrNoPop var_C4
  loc_AEB0F8: ImpAdCallI2 Proc_18_6_A08898()
  loc_AEB0FD: FStStrNoPop var_C8
  loc_AEB100: FLdPr Me
  loc_AEB103: MemStStrCopy
  loc_AEB107: FFreeStr var_C4 = ""
  loc_AEB10E: FFree1Ad var_88
  loc_AEB111: FFree1Var var_A0 = ""
  loc_AEB114: LitVarStr var_B0, "##/##/####"
  loc_AEB119: PopAdLdVar
  loc_AEB11A: FLdPr Me
  loc_AEB11D: VCallAd Control_ID_FealInjuMsk
  loc_AEB120: FStAdFunc var_88
  loc_AEB123: FLdPr var_88
  loc_AEB126: LateIdSt
  loc_AEB12B: FFree1Ad var_88
  loc_AEB12E: LitVarI2 var_B0, 10
  loc_AEB133: PopAdLdVar
  loc_AEB134: FLdPr Me
  loc_AEB137: VCallAd Control_ID_FealInjuMsk
  loc_AEB13A: FStAdFunc var_88
  loc_AEB13D: FLdPr var_88
  loc_AEB140: LateIdSt
  loc_AEB145: FFree1Ad var_88
  loc_AEB148: FLdPr Me
  loc_AEB14B: MemLdStr global_60
  loc_AEB14E: LitStr vbNullString
  loc_AEB151: NeStr
  loc_AEB153: BranchF loc_AEB179
  loc_AEB156: FLdPr Me
  loc_AEB159: MemLdStr global_60
  loc_AEB15C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEB161: FLdPr Me
  loc_AEB164: VCallAd Control_ID_FealInjuMsk
  loc_AEB167: CVarAd
  loc_AEB16B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEB170: FFree1Var var_A0 = ""
  loc_AEB173: LitI2_Byte &HFF
  loc_AEB175: IStI2 Cancel
  loc_AEB178: ExitProcHresult
  loc_AEB179: FLdRfVar var_C4
  loc_AEB17C: FLdPr Me
  loc_AEB17F: VCallAd Control_ID_CodiInjuTxt
  loc_AEB182: FStAdFunc var_90
  loc_AEB185: FLdPr var_90
  loc_AEB188:  = Me.Text
  loc_AEB18D: FLdPr Me
  loc_AEB190: VCallAd Control_ID_FealInjuMsk
  loc_AEB193: FStAdFunc var_88
  loc_AEB196: FLdPr var_88
  loc_AEB199: LateIdLdVar var_A0 DispID_15 0
  loc_AEB1A0: PopAd
  loc_AEB1A2: FLdRfVar var_CC
  loc_AEB1A5: FLdRfVar var_A0
  loc_AEB1A8: CStrVarTmp
  loc_AEB1A9: FStStrNoPop var_C8
  loc_AEB1AC: ILdRf var_C4
  loc_AEB1AF: CI2Str
  loc_AEB1B1: FLdPr Me
  loc_AEB1B4: MemLdRfVar from_stack_1.global_52
  loc_AEB1B7: NewIfNullPr clsinstjudi
  loc_AEB1BA: from_stack_3v = clsinstjudi.ValidaClave(from_stack_1v, from_stack_2v)
  loc_AEB1BF: ILdRf var_CC
  loc_AEB1C2: FLdPr Me
  loc_AEB1C5: MemStStrCopy
  loc_AEB1C9: FFreeStr var_C4 = "": var_C8 = ""
  loc_AEB1D2: FFreeAd var_88 = ""
  loc_AEB1D9: FFree1Var var_A0 = ""
  loc_AEB1DC: FLdPr Me
  loc_AEB1DF: MemLdStr global_60
  loc_AEB1E2: LitStr vbNullString
  loc_AEB1E5: NeStr
  loc_AEB1E7: BranchF loc_AEB20D
  loc_AEB1EA: FLdPr Me
  loc_AEB1ED: MemLdStr global_60
  loc_AEB1F0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEB1F5: FLdPr Me
  loc_AEB1F8: VCallAd Control_ID_FealInjuMsk
  loc_AEB1FB: CVarAd
  loc_AEB1FF: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEB204: FFree1Var var_A0 = ""
  loc_AEB207: LitI2_Byte &HFF
  loc_AEB209: IStI2 Cancel
  loc_AEB20C: ExitProcHresult
  loc_AEB20D: ExitProcHresult
End Sub

Private Sub FealInjuCmd_Click() 'A4F1C0
  'Data Table: 4E2E74
  loc_A4F16C: LitVar_Missing var_A4
  loc_A4F16F: PopAdLdVar
  loc_A4F170: LitVarI4
  loc_A4F178: PopAdLdVar
  loc_A4F179: ImpAdLdRf MemVar_D930A4
  loc_A4F17C: NewIfNullPr frmCalendario
  loc_A4F17F: frmCalendario.Show from_stack_1, from_stack_2
  loc_A4F184: ImpAdLdI4 MemVar_D93028
  loc_A4F187: LitStr vbNullString
  loc_A4F18A: NeStr
  loc_A4F18C: BranchF loc_A4F1AA
  loc_A4F18F: ImpAdLdRf MemVar_D93028
  loc_A4F192: CDargRef
  loc_A4F196: FLdPr Me
  loc_A4F199: VCallAd Control_ID_FealInjuMsk
  loc_A4F19C: FStAdFunc var_A8
  loc_A4F19F: FLdPr var_A8
  loc_A4F1A2: LateIdSt
  loc_A4F1A7: FFree1Ad var_A8
  loc_A4F1AA: FLdPr Me
  loc_A4F1AD: VCallAd Control_ID_FealInjuMsk
  loc_A4F1B0: CVarAd
  loc_A4F1B4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A4F1B9: FFree1Var var_B8 = ""
  loc_A4F1BC: ExitProcHresult
  loc_A4F1BD: ThisVCallHidden
End Sub

Private Sub DetaInjuTxt_GotFocus() '9C7088
  'Data Table: 4E2E74
  loc_9C7074: FLdPr Me
  loc_9C7077: VCallAd Control_ID_DetaInjuTxt
  loc_9C707A: CVarAd
  loc_9C707E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7083: FFree1Var var_94 = ""
  loc_9C7086: ExitProcHresult
End Sub

Private Sub DetaInjuTxt_Validate(Cancel As Boolean) 'A9036C
  'Data Table: 4E2E74
  loc_A902CC: FLdRfVar var_8A
  loc_A902CF: FLdPr Me
  loc_A902D2: VCallAd Control_ID_cmdCancelar
  loc_A902D5: FStAdFunc var_88
  loc_A902D8: FLdPr var_88
  loc_A902DB:  = Me.Value
  loc_A902E0: FLdI2 var_8A
  loc_A902E3: NotI4
  loc_A902E4: FLdRfVar var_92
  loc_A902E7: FLdPr Me
  loc_A902EA: VCallAd Control_ID_DetaInjuTxt
  loc_A902ED: FStAdFunc var_90
  loc_A902F0: FLdPr var_90
  loc_A902F3:  = Me.Enabled
  loc_A902F8: FLdI2 var_92
  loc_A902FB: AndI4
  loc_A902FC: FFreeAd var_88 = ""
  loc_A90303: BranchF loc_A90369
  loc_A90306: FLdRfVar var_98
  loc_A90309: FLdPr Me
  loc_A9030C: VCallAd Control_ID_DetaInjuTxt
  loc_A9030F: FStAdFunc var_88
  loc_A90312: FLdPr var_88
  loc_A90315:  = Me.Text
  loc_A9031A: ILdRf var_98
  loc_A9031D: LitStr "Instancia"
  loc_A90320: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A90325: FStStrNoPop var_9C
  loc_A90328: FLdPr Me
  loc_A9032B: MemStStrCopy
  loc_A9032F: FFreeStr var_98 = ""
  loc_A90336: FFree1Ad var_88
  loc_A90339: FLdPr Me
  loc_A9033C: MemLdStr global_60
  loc_A9033F: LitStr vbNullString
  loc_A90342: NeStr
  loc_A90344: BranchF loc_A90369
  loc_A90347: FLdPr Me
  loc_A9034A: MemLdStr global_60
  loc_A9034D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A90352: FLdPr Me
  loc_A90355: VCallAd Control_ID_DetaInjuTxt
  loc_A90358: CVarAd
  loc_A9035C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A90361: FFree1Var var_AC = ""
  loc_A90364: LitI2_Byte &HFF
  loc_A90366: IStI2 Cancel
  loc_A90369: ExitProcHresult
  loc_A9036A: FLdPr var_3F8
End Sub

Private Sub DefiInjuTxt_GotFocus() '9C70D0
  'Data Table: 4E2E74
  loc_9C70BC: FLdPr Me
  loc_9C70BF: VCallAd Control_ID_DefiInjuTxt
  loc_9C70C2: CVarAd
  loc_9C70C6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C70CB: FFree1Var var_94 = ""
  loc_9C70CE: ExitProcHresult
End Sub

Private Sub DefiInjuTxt_KeyPress(KeyAscii As Integer) 'A06538
  'Data Table: 4E2E74
  loc_A06504: LitStr "1234567890,."
  loc_A06507: FStStrCopy var_88
  loc_A0650A: FLdRfVar var_88
  loc_A0650D: ILdRf KeyAscii
  loc_A06510: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A06515: IStI2 KeyAscii
  loc_A06518: FFree1Str var_88
  loc_A0651B: ILdI2 KeyAscii
  loc_A0651E: LitStr "."
  loc_A06521: ImpAdCallI2 Asc()
  loc_A06526: EqI2
  loc_A06527: BranchF loc_A06535
  loc_A0652A: LitStr ","
  loc_A0652D: ImpAdCallI2 Asc()
  loc_A06532: IStI2 KeyAscii
  loc_A06535: ExitProcHresult
  loc_A06536: ThisVCall 0
End Sub

Private Sub DefiInjuTxt_LostFocus() 'A73FF8
  'Data Table: 4E2E74
  loc_A73F94: FLdRfVar var_8C
  loc_A73F97: FLdPr Me
  loc_A73F9A: VCallAd Control_ID_DefiInjuTxt
  loc_A73F9D: FStAdFunc var_88
  loc_A73FA0: FLdPr var_88
  loc_A73FA3:  = Me.Text
  loc_A73FA8: LitI4 1
  loc_A73FAD: LitI4 1
  loc_A73FB2: LitVarStr var_AC, "##0.00"
  loc_A73FB7: FStVarCopyObj var_BC
  loc_A73FBA: FLdRfVar var_BC
  loc_A73FBD: FLdZeroAd var_8C
  loc_A73FC0: CVarStr var_9C
  loc_A73FC3: FLdRfVar var_CC
  loc_A73FC6: ImpAdCallFPR4  = Format(, )
  loc_A73FCB: FLdRfVar var_CC
  loc_A73FCE: CStrVarVal var_D0
  loc_A73FD2: FLdPr Me
  loc_A73FD5: VCallAd Control_ID_DefiInjuTxt
  loc_A73FD8: FStAdFunc var_D4
  loc_A73FDB: FLdPr var_D4
  loc_A73FDE: Me.Text = from_stack_1
  loc_A73FE3: FFree1Str var_D0
  loc_A73FE6: FFreeAd var_88 = ""
  loc_A73FED: FFreeVar var_9C = "": var_BC = ""
  loc_A73FF6: ExitProcHresult
End Sub

Private Sub DefiInjuTxt_Validate(Cancel As Boolean) 'AB6C54
  'Data Table: 4E2E74
  loc_AB6B70: FLdRfVar var_8A
  loc_AB6B73: FLdPr Me
  loc_AB6B76: VCallAd Control_ID_cmdCancelar
  loc_AB6B79: FStAdFunc var_88
  loc_AB6B7C: FLdPr var_88
  loc_AB6B7F:  = Me.Value
  loc_AB6B84: FLdI2 var_8A
  loc_AB6B87: NotI4
  loc_AB6B88: FLdRfVar var_92
  loc_AB6B8B: FLdPr Me
  loc_AB6B8E: VCallAd Control_ID_DefiInjuTxt
  loc_AB6B91: FStAdFunc var_90
  loc_AB6B94: FLdPr var_90
  loc_AB6B97:  = Me.Enabled
  loc_AB6B9C: FLdI2 var_92
  loc_AB6B9F: AndI4
  loc_AB6BA0: FFreeAd var_88 = ""
  loc_AB6BA7: BranchF loc_AB6C52
  loc_AB6BAA: FLdRfVar var_98
  loc_AB6BAD: FLdPr Me
  loc_AB6BB0: VCallAd Control_ID_DefiInjuTxt
  loc_AB6BB3: FStAdFunc var_88
  loc_AB6BB6: FLdPr var_88
  loc_AB6BB9:  = Me.Text
  loc_AB6BBE: FLdZeroAd var_98
  loc_AB6BC1: CVarStr var_A8
  loc_AB6BC4: ImpAdCallI2 IsNumeric()
  loc_AB6BC9: NotI4
  loc_AB6BCA: FFree1Ad var_88
  loc_AB6BCD: FFree1Var var_A8 = ""
  loc_AB6BD0: BranchF loc_AB6BEA
  loc_AB6BD3: LitStr "0"
  loc_AB6BD6: FLdPr Me
  loc_AB6BD9: VCallAd Control_ID_DefiInjuTxt
  loc_AB6BDC: FStAdFunc var_88
  loc_AB6BDF: FLdPr var_88
  loc_AB6BE2: Me.Text = from_stack_1
  loc_AB6BE7: FFree1Ad var_88
  loc_AB6BEA: FLdRfVar var_98
  loc_AB6BED: FLdPr Me
  loc_AB6BF0: VCallAd Control_ID_DefiInjuTxt
  loc_AB6BF3: FStAdFunc var_88
  loc_AB6BF6: FLdPr var_88
  loc_AB6BF9:  = Me.Text
  loc_AB6BFE: LitI2_Byte &HFF
  loc_AB6C00: LitI2_Byte 0
  loc_AB6C02: ILdRf var_98
  loc_AB6C05: LitStr "ingrese descuento"
  loc_AB6C08: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AB6C0D: FStStrNoPop var_AC
  loc_AB6C10: FLdPr Me
  loc_AB6C13: MemStStrCopy
  loc_AB6C17: FFreeStr var_98 = ""
  loc_AB6C1E: FFree1Ad var_88
  loc_AB6C21: FLdPr Me
  loc_AB6C24: MemLdStr global_60
  loc_AB6C27: LitStr vbNullString
  loc_AB6C2A: NeStr
  loc_AB6C2C: BranchF loc_AB6C52
  loc_AB6C2F: FLdPr Me
  loc_AB6C32: MemLdStr global_60
  loc_AB6C35: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB6C3A: FLdPr Me
  loc_AB6C3D: VCallAd Control_ID_DefiInjuTxt
  loc_AB6C40: CVarAd
  loc_AB6C44: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB6C49: FFree1Var var_A8 = ""
  loc_AB6C4C: LitI2_Byte &HFF
  loc_AB6C4E: IStI2 Cancel
  loc_AB6C51: ExitProcHresult
  loc_AB6C52: ExitProcHresult
  loc_AB6C53: ConcatStr
End Sub

Public Sub EnlazaTodo() 'AD0DB4
  'Data Table: 4E2E74
  loc_AD0CB4: LitI4 0
  loc_AD0CB9: LitI4 &HB
  loc_AD0CBE: FLdRfVar var_88
  loc_AD0CC1: Redim
  loc_AD0CCB: FLdPr Me
  loc_AD0CCE: MemLdRfVar from_stack_1.global_52
  loc_AD0CD1: NewIfNullAd
  loc_AD0CD4: FStAd var_8C 
  loc_AD0CD8: FLdRfVar var_8C
  loc_AD0CDB: CVarRef
  loc_AD0CE0: ParmAry1St
  loc_AD0CE6: FLdPr Me
  loc_AD0CE9: VCallAd Control_ID_CodiInjuTxt
  loc_AD0CEC: CVarAd
  loc_AD0CF0: ParmAry1St
  loc_AD0CF6: FLdPr Me
  loc_AD0CF9: VCallAd Control_ID_FealInjuMsk
  loc_AD0CFC: CVarAd
  loc_AD0D00: ParmAry1St
  loc_AD0D06: FLdPr Me
  loc_AD0D09: VCallAd Control_ID_DetaInjuTxt
  loc_AD0D0C: CVarAd
  loc_AD0D10: ParmAry1St
  loc_AD0D16: FLdPr Me
  loc_AD0D19: VCallAd Control_ID_DefiInjuTxt
  loc_AD0D1C: CVarAd
  loc_AD0D20: ParmAry1St
  loc_AD0D26: FLdPr Me
  loc_AD0D29: VCallAd Control_ID_CoadInjuTxt
  loc_AD0D2C: CVarAd
  loc_AD0D30: ParmAry1St
  loc_AD0D36: FLdPr Me
  loc_AD0D39: VCallAd Control_ID_HoreInjuTxt
  loc_AD0D3C: CVarAd
  loc_AD0D40: ParmAry1St
  loc_AD0D46: FLdPr Me
  loc_AD0D49: VCallAd Control_ID_HoofInjuTxt
  loc_AD0D4C: CVarAd
  loc_AD0D50: ParmAry1St
  loc_AD0D56: FLdPr Me
  loc_AD0D59: VCallAd Control_ID_ApleInjuTxt
  loc_AD0D5C: CVarAd
  loc_AD0D60: ParmAry1St
  loc_AD0D66: FLdPr Me
  loc_AD0D69: VCallAd Control_ID_ReseInjuTxt
  loc_AD0D6C: CVarAd
  loc_AD0D70: ParmAry1St
  loc_AD0D76: FLdPr Me
  loc_AD0D79: VCallAd Control_ID_KireInjuTxt
  loc_AD0D7C: CVarAd
  loc_AD0D80: ParmAry1St
  loc_AD0D86: FLdPr Me
  loc_AD0D89: VCallAd Control_ID_KiofInjuTxt
  loc_AD0D8C: CVarAd
  loc_AD0D90: ParmAry1St
  loc_AD0D96: FLdRfVar var_88
  loc_AD0D99: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AD0D9E: ILdRf var_8C
  loc_AD0DA1: CastAd
  loc_AD0DA4: FLdPr Me
  loc_AD0DA7: MemStAdFunc
  loc_AD0DAB: FLdRfVar var_88
  loc_AD0DAE: Erase
  loc_AD0DAF: FFree1Ad var_8C
  loc_AD0DB2: ExitProcHresult
End Sub
