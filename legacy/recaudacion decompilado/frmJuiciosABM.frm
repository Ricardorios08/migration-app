VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmJuiciosABM
  Caption = "Juicios - Demandado"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmJuiciosABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 14784
  ClientHeight = 10956
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
    Width = 10695
    Height = 855
    TabIndex = 2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 3
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
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 375
      TabIndex = 4
      OleObjectBlob = "frmJuiciosABM.frx":324A
    End
  End
  Begin VB.Frame Frame1
    Left = 240
    Top = 7080
    Width = 14040
    Height = 3360
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
    Begin VB.TextBox CircJuicTxt
      ForeColor = &HFF0000&
      Left = 1920
      Top = 1800
      Width = 2220
      Height = 360
      TabIndex = 16
      MaxLength = 15
      DataField = "CircJuic"
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
    Begin VB.TextBox TribJuicTxt
      ForeColor = &HFF0000&
      Left = 1920
      Top = 1320
      Width = 11220
      Height = 360
      TabIndex = 15
      MaxLength = 100
      DataField = "TribJuic"
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
    Begin VB.TextBox ImpoJuicTxt
      ForeColor = &HFF0000&
      Left = 1920
      Top = 2760
      Width = 1695
      Height = 345
      TabIndex = 14
      Alignment = 1 'Right Justify
      MaxLength = 15
      DataField = "ImpoJuic"
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
    Begin VB.TextBox ExpeJuicTxt
      ForeColor = &HFF0000&
      Left = 1920
      Top = 360
      Width = 2340
      Height = 360
      TabIndex = 8
      MaxLength = 15
      DataField = "ExpeJuic"
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
    Begin VB.TextBox CaraJuicTxt
      ForeColor = &HFF0000&
      Left = 1920
      Top = 840
      Width = 11220
      Height = 360
      TabIndex = 10
      MaxLength = 100
      DataField = "CaraJuic"
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
    Begin MSMask.MaskEdBox FechJuicMsk
      Left = 1920
      Top = 2280
      Width = 1455
      Height = 345
      TabIndex = 12
      OleObjectBlob = "frmJuiciosABM.frx":32D2
      DataField = "FechJuic"
    End
    Begin VB.Label Label1
      Caption = "Circunscripción:"
      Index = 5
      Left = 120
      Top = 1800
      Width = 1680
      Height = 300
      TabIndex = 18
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
      Caption = "Tribunal:"
      Index = 4
      Left = 840
      Top = 1320
      Width = 900
      Height = 300
      TabIndex = 17
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
      Caption = "Importe:"
      Index = 2
      Left = 960
      Top = 2760
      Width = 900
      Height = 300
      TabIndex = 13
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
      Caption = "Fecha:"
      Index = 1
      Left = 1080
      Top = 2280
      Width = 750
      Height = 300
      TabIndex = 11
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
      Index = 0
      Left = 480
      Top = 360
      Width = 1260
      Height = 300
      TabIndex = 7
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
      Caption = "Caratula:"
      Index = 3
      Left = 840
      Top = 840
      Width = 960
      Height = 300
      TabIndex = 9
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
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 14520
    Height = 4995
    TabIndex = 5
    OleObjectBlob = "frmJuiciosABM.frx":3382
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmJuiciosABM.frx":3A08
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 14784
    Height = 528
    TabIndex = 0
    OleObjectBlob = "frmJuiciosABM.frx":B586
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmJuiciosABM.frx":BAE2
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmJuiciosABM"


Private Sub FiltroCbo_Click() 'A96740
  'Data Table: 466AD0
  loc_A96688: LitVarStr var_94, vbNullString
  loc_A9668D: PopAdLdVar
  loc_A9668E: FLdPr Me
  loc_A96691: VCallAd Control_ID_FiltroMsk
  loc_A96694: FStAdFunc var_A8
  loc_A96697: FLdPr var_A8
  loc_A9669A: LateIdSt
  loc_A9669F: FFree1Ad var_A8
  loc_A966A2: FLdRfVar var_AA
  loc_A966A5: FLdPr Me
  loc_A966A8: VCallAd Control_ID_FiltroCbo
  loc_A966AB: FStAdFunc var_A8
  loc_A966AE: FLdPr var_A8
  loc_A966B1:  = Me.ListIndex
  loc_A966B6: FLdI2 var_AA
  loc_A966B9: FStI2 var_AC
  loc_A966BC: FFree1Ad var_A8
  loc_A966BF: FLdI2 var_AC
  loc_A966C2: LitI2_Byte 0
  loc_A966C4: EqI2
  loc_A966C5: BranchF loc_A966FF
  loc_A966C8: LitVarStr var_94, vbNullString
  loc_A966CD: PopAdLdVar
  loc_A966CE: FLdPr Me
  loc_A966D1: VCallAd Control_ID_FiltroMsk
  loc_A966D4: FStAdFunc var_A8
  loc_A966D7: FLdPr var_A8
  loc_A966DA: LateIdSt
  loc_A966DF: FFree1Ad var_A8
  loc_A966E2: LitStr "ExpeJuic"
  loc_A966E5: FStStrCopy var_B0
  loc_A966E8: FLdRfVar var_B0
  loc_A966EB: FLdPr Me
  loc_A966EE: MemLdRfVar from_stack_1.global_52
  loc_A966F1: NewIfNullPr clsjuicios
  loc_A966F4: Call clsjuicios.Sort(from_stack_1v)
  loc_A966F9: FFree1Str var_B0
  loc_A966FC: Branch loc_A9673C
  loc_A966FF: FLdI2 var_AC
  loc_A96702: LitI2_Byte 1
  loc_A96704: EqI2
  loc_A96705: BranchF loc_A9673C
  loc_A96708: LitVarStr var_94, vbNullString
  loc_A9670D: PopAdLdVar
  loc_A9670E: FLdPr Me
  loc_A96711: VCallAd Control_ID_FiltroMsk
  loc_A96714: FStAdFunc var_A8
  loc_A96717: FLdPr var_A8
  loc_A9671A: LateIdSt
  loc_A9671F: FFree1Ad var_A8
  loc_A96722: LitStr "CaraJuic"
  loc_A96725: FStStrCopy var_B0
  loc_A96728: FLdRfVar var_B0
  loc_A9672B: FLdPr Me
  loc_A9672E: MemLdRfVar from_stack_1.global_52
  loc_A96731: NewIfNullPr clsjuicios
  loc_A96734: Call clsjuicios.Sort(from_stack_1v)
  loc_A96739: FFree1Str var_B0
  loc_A9673C: ExitProcHresult
End Sub

Private Sub ImpoJuicTxt_GotFocus() '9C2570
  'Data Table: 466AD0
  loc_9C255C: FLdPr Me
  loc_9C255F: VCallAd Control_ID_ImpoJuicTxt
  loc_9C2562: CVarAd
  loc_9C2566: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C256B: FFree1Var var_94 = ""
  loc_9C256E: ExitProcHresult
End Sub

Private Sub ImpoJuicTxt_KeyPress(KeyAscii As Integer) 'A083B0
  'Data Table: 466AD0
  loc_A0837C: LitStr "1234567890,."
  loc_A0837F: FStStrCopy var_88
  loc_A08382: FLdRfVar var_88
  loc_A08385: ILdRf KeyAscii
  loc_A08388: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A0838D: IStI2 KeyAscii
  loc_A08390: FFree1Str var_88
  loc_A08393: ILdI2 KeyAscii
  loc_A08396: LitStr "."
  loc_A08399: ImpAdCallI2 Asc()
  loc_A0839E: EqI2
  loc_A0839F: BranchF loc_A083AD
  loc_A083A2: LitStr ","
  loc_A083A5: ImpAdCallI2 Asc()
  loc_A083AA: IStI2 KeyAscii
  loc_A083AD: ExitProcHresult
  loc_A083AE: FFreeAd  = ""
End Sub

Private Sub ImpoJuicTxt_LostFocus() 'A74F18
  'Data Table: 466AD0
  loc_A74EB4: FLdRfVar var_8C
  loc_A74EB7: FLdPr Me
  loc_A74EBA: VCallAd Control_ID_ImpoJuicTxt
  loc_A74EBD: FStAdFunc var_88
  loc_A74EC0: FLdPr var_88
  loc_A74EC3:  = Me.Text
  loc_A74EC8: LitI4 1
  loc_A74ECD: LitI4 1
  loc_A74ED2: LitVarStr var_AC, "0.00"
  loc_A74ED7: FStVarCopyObj var_BC
  loc_A74EDA: FLdRfVar var_BC
  loc_A74EDD: FLdZeroAd var_8C
  loc_A74EE0: CVarStr var_9C
  loc_A74EE3: FLdRfVar var_CC
  loc_A74EE6: ImpAdCallFPR4  = Format(, )
  loc_A74EEB: FLdRfVar var_CC
  loc_A74EEE: CStrVarVal var_D0
  loc_A74EF2: FLdPr Me
  loc_A74EF5: VCallAd Control_ID_ImpoJuicTxt
  loc_A74EF8: FStAdFunc var_D4
  loc_A74EFB: FLdPr var_D4
  loc_A74EFE: Me.Text = from_stack_1
  loc_A74F03: FFree1Str var_D0
  loc_A74F06: FFreeAd var_88 = ""
  loc_A74F0D: FFreeVar var_9C = "": var_BC = ""
  loc_A74F16: ExitProcHresult
End Sub

Private Sub ImpoJuicTxt_Validate(Cancel As Boolean) 'A6EFD4
  'Data Table: 466AD0
  loc_A6EF68: FLdRfVar var_8C
  loc_A6EF6B: FLdPr Me
  loc_A6EF6E: VCallAd Control_ID_ImpoJuicTxt
  loc_A6EF71: FStAdFunc var_88
  loc_A6EF74: FLdPr var_88
  loc_A6EF77:  = Me.Text
  loc_A6EF7C: LitI2_Byte &HFF
  loc_A6EF7E: LitI2_Byte 0
  loc_A6EF80: ILdRf var_8C
  loc_A6EF83: LitStr "el importe"
  loc_A6EF86: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A6EF8B: FStStrNoPop var_90
  loc_A6EF8E: FLdPr Me
  loc_A6EF91: MemStStrCopy
  loc_A6EF95: FFreeStr var_8C = ""
  loc_A6EF9C: FFree1Ad var_88
  loc_A6EF9F: FLdPr Me
  loc_A6EFA2: MemLdStr global_60
  loc_A6EFA5: LitStr vbNullString
  loc_A6EFA8: NeStr
  loc_A6EFAA: BranchF loc_A6EFD0
  loc_A6EFAD: FLdPr Me
  loc_A6EFB0: MemLdStr global_60
  loc_A6EFB3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A6EFB8: FLdPr Me
  loc_A6EFBB: VCallAd Control_ID_ImpoJuicTxt
  loc_A6EFBE: CVarAd
  loc_A6EFC2: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A6EFC7: FFree1Var var_A0 = ""
  loc_A6EFCA: LitI2_Byte &HFF
  loc_A6EFCC: IStI2 Cancel
  loc_A6EFCF: ExitProcHresult
  loc_A6EFD0: ExitProcHresult
  loc_A6EFD1: FFreeVar var_FFFFFFA8 = ""
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '9C2690
  'Data Table: 466AD0
  loc_9C267C: FLdPr Me
  loc_9C267F: VCallAd Control_ID_FiltroMsk
  loc_9C2682: CVarAd
  loc_9C2686: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C268B: FFree1Var var_94 = ""
  loc_9C268E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'B26438
  'Data Table: 466AD0
  loc_B26188: ILdRf Me
  loc_B2618B: CastAd
  loc_B2618E: FStAdFunc var_88
  loc_B26191: FLdRfVar var_88
  loc_B26194: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B26199: FFree1Ad var_88
  loc_B2619C: FLdPr Me
  loc_B2619F: VCallAd Control_ID_FiltroMsk
  loc_B261A2: FStAdFunc var_88
  loc_B261A5: FLdPr var_88
  loc_B261A8: LateIdLdVar var_98 DispID_22 0
  loc_B261AF: CStrVarTmp
  loc_B261B0: FStStrNoPop var_9C
  loc_B261B3: ImpAdCallI2 Trim$()
  loc_B261B8: FStStrNoPop var_A0
  loc_B261BB: LitStr vbNullString
  loc_B261BE: NeStr
  loc_B261C0: FFreeStr var_9C = ""
  loc_B261C7: FFree1Ad var_88
  loc_B261CA: FFree1Var var_98 = ""
  loc_B261CD: BranchF loc_B26312
  loc_B261D0: FLdRfVar var_A2
  loc_B261D3: FLdPr Me
  loc_B261D6: VCallAd Control_ID_FiltroCbo
  loc_B261D9: FStAdFunc var_88
  loc_B261DC: FLdPr var_88
  loc_B261DF:  = Me.ListIndex
  loc_B261E4: FLdI2 var_A2
  loc_B261E7: LitI2_Byte 0
  loc_B261E9: EqI2
  loc_B261EA: FFree1Ad var_88
  loc_B261ED: BranchF loc_B26271
  loc_B261F0: LitStr "ExpeJuic LIKE '"
  loc_B261F3: FLdPr Me
  loc_B261F6: VCallAd Control_ID_FiltroMsk
  loc_B261F9: FStAdFunc var_88
  loc_B261FC: FLdPr var_88
  loc_B261FF: LateIdLdVar var_98 DispID_22 0
  loc_B26206: CStrVarTmp
  loc_B26207: FStStrNoPop var_9C
  loc_B2620A: ConcatStr
  loc_B2620B: FStStrNoPop var_A0
  loc_B2620E: LitStr Chr(37) & "'"
  loc_B26211: ConcatStr
  loc_B26212: PopTmpLdAdStr
  loc_B26216: FLdPr Me
  loc_B26219: MemLdRfVar from_stack_1.global_52
  loc_B2621C: NewIfNullPr clsjuicios
  loc_B2621F: Call clsjuicios.Filter(from_stack_1v)
  loc_B26224: FFreeStr var_9C = "": var_A0 = ""
  loc_B2622D: FFree1Ad var_88
  loc_B26230: FFree1Var var_98 = ""
  loc_B26233: LitStr "Expediente que contiene """
  loc_B26236: FLdPr Me
  loc_B26239: VCallAd Control_ID_FiltroMsk
  loc_B2623C: FStAdFunc var_88
  loc_B2623F: FLdPr var_88
  loc_B26242: LateIdLdVar var_98 DispID_22 0
  loc_B26249: CStrVarTmp
  loc_B2624A: FStStrNoPop var_9C
  loc_B2624D: ConcatStr
  loc_B2624E: FStStrNoPop var_A0
  loc_B26251: LitStr """"
  loc_B26254: ConcatStr
  loc_B26255: FStStrNoPop var_A8
  loc_B26258: FLdPr Me
  loc_B2625B: MemStStrCopy
  loc_B2625F: FFreeStr var_9C = "": var_A0 = ""
  loc_B26268: FFree1Ad var_88
  loc_B2626B: FFree1Var var_98 = ""
  loc_B2626E: Branch loc_B2630F
  loc_B26271: FLdRfVar var_A2
  loc_B26274: FLdPr Me
  loc_B26277: VCallAd Control_ID_FiltroCbo
  loc_B2627A: FStAdFunc var_88
  loc_B2627D: FLdPr var_88
  loc_B26280:  = Me.ListIndex
  loc_B26285: FLdI2 var_A2
  loc_B26288: LitI2_Byte 1
  loc_B2628A: EqI2
  loc_B2628B: FFree1Ad var_88
  loc_B2628E: BranchF loc_B2630F
  loc_B26291: LitStr "CaraJuic LIKE '"
  loc_B26294: FLdPr Me
  loc_B26297: VCallAd Control_ID_FiltroMsk
  loc_B2629A: FStAdFunc var_88
  loc_B2629D: FLdPr var_88
  loc_B262A0: LateIdLdVar var_98 DispID_22 0
  loc_B262A7: CStrVarTmp
  loc_B262A8: FStStrNoPop var_9C
  loc_B262AB: ConcatStr
  loc_B262AC: FStStrNoPop var_A0
  loc_B262AF: LitStr Chr(37) & "'"
  loc_B262B2: ConcatStr
  loc_B262B3: PopTmpLdAdStr
  loc_B262B7: FLdPr Me
  loc_B262BA: MemLdRfVar from_stack_1.global_52
  loc_B262BD: NewIfNullPr clsjuicios
  loc_B262C0: Call clsjuicios.Filter(from_stack_1v)
  loc_B262C5: FFreeStr var_9C = "": var_A0 = ""
  loc_B262CE: FFree1Ad var_88
  loc_B262D1: FFree1Var var_98 = ""
  loc_B262D4: LitStr "Caratula que contiene """
  loc_B262D7: FLdPr Me
  loc_B262DA: VCallAd Control_ID_FiltroMsk
  loc_B262DD: FStAdFunc var_88
  loc_B262E0: FLdPr var_88
  loc_B262E3: LateIdLdVar var_98 DispID_22 0
  loc_B262EA: CStrVarTmp
  loc_B262EB: FStStrNoPop var_9C
  loc_B262EE: ConcatStr
  loc_B262EF: FStStrNoPop var_A0
  loc_B262F2: LitStr """"
  loc_B262F5: ConcatStr
  loc_B262F6: FStStrNoPop var_A8
  loc_B262F9: FLdPr Me
  loc_B262FC: MemStStrCopy
  loc_B26300: FFreeStr var_9C = "": var_A0 = ""
  loc_B26309: FFree1Ad var_88
  loc_B2630C: FFree1Var var_98 = ""
  loc_B2630F: Branch loc_B26344
  loc_B26312: LitStr vbNullString
  loc_B26315: FStStrCopy var_9C
  loc_B26318: FLdRfVar var_9C
  loc_B2631B: FLdPr Me
  loc_B2631E: MemLdRfVar from_stack_1.global_52
  loc_B26321: NewIfNullPr clsjuicios
  loc_B26324: Call clsjuicios.Filter(from_stack_1v)
  loc_B26329: FFree1Str var_9C
  loc_B2632C: FLdPr Me
  loc_B2632F: MemLdRfVar from_stack_1.global_52
  loc_B26332: NewIfNullPr clsjuicios
  loc_B26335: Call clsjuicios.Requery()
  loc_B2633A: LitStr vbNullString
  loc_B2633D: FLdPr Me
  loc_B26340: MemStStrCopy
  loc_B26344: FLdRfVar var_AC
  loc_B26347: FLdPr Me
  loc_B2634A: MemLdRfVar from_stack_1.global_52
  loc_B2634D: NewIfNullPr clsjuicios
  loc_B26350: from_stack_1 = clsjuicios.RecordCount
  loc_B26355: ILdRf var_AC
  loc_B26358: LitI4 0
  loc_B2635D: GtI4
  loc_B2635E: BranchF loc_B263FC
  loc_B26361: FLdPr Me
  loc_B26364: MemLdRfVar from_stack_1.global_52
  loc_B26367: NewIfNullAd
  loc_B2636A: FStAd var_B0 
  loc_B2636E: FLdRfVar var_B0
  loc_B26371: CVarRef
  loc_B26376: ILdRf Me
  loc_B26379: CastAd
  loc_B2637C: FStAdFunc var_88
  loc_B2637F: FLdRfVar var_88
  loc_B26382: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_B26387: ILdRf var_B0
  loc_B2638A: CastAd
  loc_B2638D: FLdPr Me
  loc_B26390: MemStAdFunc
  loc_B26394: FFreeAd var_88 = ""
  loc_B2639B: LitI4 0
  loc_B263A0: LitI4 1
  loc_B263A5: FLdRfVar var_C4
  loc_B263A8: Redim
  loc_B263B2: FLdPr Me
  loc_B263B5: MemLdRfVar from_stack_1.global_52
  loc_B263B8: NewIfNullAd
  loc_B263BB: FStAd var_88 
  loc_B263BF: FLdRfVar var_88
  loc_B263C2: CVarRef
  loc_B263C7: ParmAry1St
  loc_B263CD: FLdPr Me
  loc_B263D0: VCallAd Control_ID_dgdABMS
  loc_B263D3: CVarAd
  loc_B263D7: ParmAry1St
  loc_B263DD: FLdRfVar var_C4
  loc_B263E0: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B263E5: ILdRf var_88
  loc_B263E8: CastAd
  loc_B263EB: FLdPr Me
  loc_B263EE: MemStAdFunc
  loc_B263F2: FLdRfVar var_C4
  loc_B263F5: Erase
  loc_B263F6: FFree1Ad var_88
  loc_B263F9: Branch loc_B26410
  loc_B263FC: ILdRf Me
  loc_B263FF: CastAd
  loc_B26402: FStAdFunc var_88
  loc_B26405: FLdRfVar var_88
  loc_B26408: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B2640D: FFree1Ad var_88
  loc_B26410: FLdPr Me
  loc_B26413: VCallAd Control_ID_dgdABMS
  loc_B26416: FStAdFunc var_B0
  loc_B26419: FLdPr Me
  loc_B2641C: MemLdStr global_64
  loc_B2641F: FLdZeroAd var_B0
  loc_B26422: FStAdFunc var_88
  loc_B26425: FLdRfVar var_88
  loc_B26428: ImpAdCallFPR4 Proc_272_56_ACCA08(, )
  loc_B2642D: FFreeAd var_88 = ""
  loc_B26434: ExitProcHresult
  loc_B26435: FLdPr var_B00
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) 'A63168
  'Data Table: 466AD0
  loc_A63104: ILdI2 KeyAscii
  loc_A63107: LitI2_Byte &H27
  loc_A63109: EqI2
  loc_A6310A: BranchF loc_A63112
  loc_A6310D: LitI2_Byte 0
  loc_A6310F: IStI2 KeyAscii
  loc_A63112: FLdRfVar var_88
  loc_A63115: FLdPr Me
  loc_A63118: MemLdRfVar from_stack_1.global_52
  loc_A6311B: NewIfNullPr clsjuicios
  loc_A6311E: from_stack_1 = clsjuicios.RecordCount
  loc_A63123: ILdRf var_88
  loc_A63126: LitI4 0
  loc_A6312B: EqI4
  loc_A6312C: ILdI2 KeyAscii
  loc_A6312F: CI4UI1
  loc_A63130: LitI4 8
  loc_A63135: NeI4
  loc_A63136: AndI4
  loc_A63137: FLdPr Me
  loc_A6313A: VCallAd Control_ID_FiltroMsk
  loc_A6313D: FStAdFunc var_8C
  loc_A63140: FLdPr var_8C
  loc_A63143: LateIdLdVar var_9C DispID_16 0
  loc_A6314A: CStrVarTmp
  loc_A6314B: FStStrNoPop var_A0
  loc_A6314E: LitStr vbNullString
  loc_A63151: EqStr
  loc_A63153: AndI4
  loc_A63154: FFree1Str var_A0
  loc_A63157: FFree1Ad var_8C
  loc_A6315A: FFree1Var var_9C = ""
  loc_A6315D: BranchF loc_A63165
  loc_A63160: LitI2_Byte 0
  loc_A63162: IStI2 KeyAscii
  loc_A63165: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BCDB48
  'Data Table: 466AD0
  loc_BCD46C: ILdRf Button
  loc_BCD46F: FStAd var_88 
  loc_BCD473: FLdRfVar var_8C
  loc_BCD476: FLdPr var_88
  loc_BCD479:  = Me.Key
  loc_BCD47E: FLdZeroAd var_8C
  loc_BCD481: FStStr var_90
  loc_BCD484: ILdRf var_90
  loc_BCD487: LitStr "btnCrear"
  loc_BCD48A: EqStr
  loc_BCD48C: BranchF loc_BCD5EA
  loc_BCD48F: LitI2_Byte 1
  loc_BCD491: FLdPr Me
  loc_BCD494: MemStI2 global_56
  loc_BCD497: ILdRf Me
  loc_BCD49A: CastAd
  loc_BCD49D: FStAdFunc var_94
  loc_BCD4A0: FLdRfVar var_94
  loc_BCD4A3: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BCD4A8: FFree1Ad var_94
  loc_BCD4AB: LitI4 0
  loc_BCD4B0: LitI4 2
  loc_BCD4B5: FLdRfVar var_98
  loc_BCD4B8: Redim
  loc_BCD4C2: FLdPr Me
  loc_BCD4C5: VCallAd Control_ID_dgdABMS
  loc_BCD4C8: CVarAd
  loc_BCD4CC: ParmAry1St
  loc_BCD4D2: FLdPr Me
  loc_BCD4D5: VCallAd Control_ID_FiltroCbo
  loc_BCD4D8: CVarAd
  loc_BCD4DC: ParmAry1St
  loc_BCD4E2: FLdPr Me
  loc_BCD4E5: VCallAd Control_ID_FiltroMsk
  loc_BCD4E8: CVarAd
  loc_BCD4EC: ParmAry1St
  loc_BCD4F2: FLdRfVar var_98
  loc_BCD4F5: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BCD4FA: FLdRfVar var_98
  loc_BCD4FD: Erase
  loc_BCD4FE: ILdRf Me
  loc_BCD501: CastAd
  loc_BCD504: FStAdFunc var_94
  loc_BCD507: FLdRfVar var_94
  loc_BCD50A: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BCD50F: FFree1Ad var_94
  loc_BCD512: ILdRf Me
  loc_BCD515: CastAd
  loc_BCD518: FStAdFunc var_94
  loc_BCD51B: FLdRfVar var_94
  loc_BCD51E: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_BCD523: FFree1Ad var_94
  loc_BCD526: ILdRf Me
  loc_BCD529: CastAd
  loc_BCD52C: FStAdFunc var_94
  loc_BCD52F: FLdRfVar var_94
  loc_BCD532: ImpAdCallFPR4 Proc_272_17_A8BE98()
  loc_BCD537: FFree1Ad var_94
  loc_BCD53A: FLdPr Me
  loc_BCD53D: VCallAd Control_ID_ExpeJuicTxt
  loc_BCD540: CVarAd
  loc_BCD544: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BCD549: FFree1Var var_A8 = ""
  loc_BCD54C: LitStr "Juzgado Paz Letrado de Guaymallén"
  loc_BCD54F: FLdPr Me
  loc_BCD552: VCallAd Control_ID_TribJuicTxt
  loc_BCD555: FStAdFunc var_94
  loc_BCD558: FLdPr var_94
  loc_BCD55B: Me.Text = from_stack_1
  loc_BCD560: FFree1Ad var_94
  loc_BCD563: LitStr "Primera"
  loc_BCD566: FLdPr Me
  loc_BCD569: VCallAd Control_ID_CircJuicTxt
  loc_BCD56C: FStAdFunc var_94
  loc_BCD56F: FLdPr var_94
  loc_BCD572: Me.Text = from_stack_1
  loc_BCD577: FFree1Ad var_94
  loc_BCD57A: LitI2_Byte 0
  loc_BCD57C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BCD581: CStrDate
  loc_BCD583: CVarStr var_A8
  loc_BCD586: PopAdLdVar
  loc_BCD587: FLdPr Me
  loc_BCD58A: VCallAd Control_ID_FechJuicMsk
  loc_BCD58D: FStAdFunc var_94
  loc_BCD590: FLdPr var_94
  loc_BCD593: LateIdSt
  loc_BCD598: FFree1Ad var_94
  loc_BCD59B: FFree1Var var_A8 = ""
  loc_BCD59E: LitI4 1
  loc_BCD5A3: LitI4 1
  loc_BCD5A8: LitVarStr var_E8, "0.00"
  loc_BCD5AD: FStVarCopyObj var_B8
  loc_BCD5B0: FLdRfVar var_B8
  loc_BCD5B3: LitVarI2 var_A8, 0
  loc_BCD5B8: FLdRfVar var_C8
  loc_BCD5BB: ImpAdCallFPR4  = Format(, )
  loc_BCD5C0: FLdRfVar var_C8
  loc_BCD5C3: CStrVarVal var_8C
  loc_BCD5C7: FLdPr Me
  loc_BCD5CA: VCallAd Control_ID_ImpoJuicTxt
  loc_BCD5CD: FStAdFunc var_94
  loc_BCD5D0: FLdPr var_94
  loc_BCD5D3: Me.Text = from_stack_1
  loc_BCD5D8: FFree1Str var_8C
  loc_BCD5DB: FFree1Ad var_94
  loc_BCD5DE: FFreeVar var_A8 = "": var_B8 = ""
  loc_BCD5E7: Branch loc_BCDB45
  loc_BCD5EA: ILdRf var_90
  loc_BCD5ED: LitStr "btnModificar"
  loc_BCD5F0: EqStr
  loc_BCD5F2: BranchF loc_BCD6EC
  loc_BCD5F5: FLdRfVar var_EC
  loc_BCD5F8: FLdPr Me
  loc_BCD5FB: MemLdRfVar from_stack_1.global_52
  loc_BCD5FE: NewIfNullPr clsjuicios
  loc_BCD601: from_stack_1 = clsjuicios.RecordCount
  loc_BCD606: ILdRf var_EC
  loc_BCD609: LitI4 0
  loc_BCD60E: GtI4
  loc_BCD60F: BranchF loc_BCD6E1
  loc_BCD612: LitI2_Byte 2
  loc_BCD614: FLdPr Me
  loc_BCD617: MemStI2 global_56
  loc_BCD61A: ILdRf Me
  loc_BCD61D: CastAd
  loc_BCD620: FStAdFunc var_94
  loc_BCD623: FLdRfVar var_94
  loc_BCD626: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BCD62B: FFree1Ad var_94
  loc_BCD62E: LitI4 0
  loc_BCD633: LitI4 0
  loc_BCD638: FLdRfVar var_98
  loc_BCD63B: Redim
  loc_BCD645: FLdPr Me
  loc_BCD648: VCallAd Control_ID_dgdABMS
  loc_BCD64B: CVarAd
  loc_BCD64F: ParmAry1St
  loc_BCD655: FLdRfVar var_98
  loc_BCD658: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BCD65D: FLdRfVar var_98
  loc_BCD660: Erase
  loc_BCD661: ILdRf Me
  loc_BCD664: CastAd
  loc_BCD667: FStAdFunc var_94
  loc_BCD66A: FLdRfVar var_94
  loc_BCD66D: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BCD672: FFree1Ad var_94
  loc_BCD675: ILdRf Me
  loc_BCD678: CastAd
  loc_BCD67B: FStAdFunc var_94
  loc_BCD67E: FLdRfVar var_94
  loc_BCD681: ImpAdCallFPR4 Proc_272_17_A8BE98()
  loc_BCD686: FFree1Ad var_94
  loc_BCD689: LitI4 0
  loc_BCD68E: LitI4 1
  loc_BCD693: FLdRfVar var_98
  loc_BCD696: Redim
  loc_BCD6A0: FLdPr Me
  loc_BCD6A3: VCallAd Control_ID_FiltroCbo
  loc_BCD6A6: CVarAd
  loc_BCD6AA: ParmAry1St
  loc_BCD6B0: FLdPr Me
  loc_BCD6B3: VCallAd Control_ID_FiltroMsk
  loc_BCD6B6: CVarAd
  loc_BCD6BA: ParmAry1St
  loc_BCD6C0: FLdRfVar var_98
  loc_BCD6C3: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BCD6C8: FLdRfVar var_98
  loc_BCD6CB: Erase
  loc_BCD6CC: FLdPr Me
  loc_BCD6CF: VCallAd Control_ID_ExpeJuicTxt
  loc_BCD6D2: CVarAd
  loc_BCD6D6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BCD6DB: FFree1Var var_A8 = ""
  loc_BCD6DE: Branch loc_BCD6E9
  loc_BCD6E1: LitStr "No se puede modificar. No existe ningún registro."
  loc_BCD6E4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BCD6E9: Branch loc_BCDB45
  loc_BCD6EC: ILdRf var_90
  loc_BCD6EF: LitStr "btnEliminar"
  loc_BCD6F2: EqStr
  loc_BCD6F4: BranchF loc_BCD7E4
  loc_BCD6F7: FLdRfVar var_EC
  loc_BCD6FA: FLdPr Me
  loc_BCD6FD: MemLdRfVar from_stack_1.global_52
  loc_BCD700: NewIfNullPr clsjuicios
  loc_BCD703: from_stack_1 = clsjuicios.RecordCount
  loc_BCD708: ILdRf var_EC
  loc_BCD70B: LitI4 0
  loc_BCD710: GtI4
  loc_BCD711: BranchF loc_BCD7E1
  loc_BCD714: FLdRfVar var_8C
  loc_BCD717: FLdPr Me
  loc_BCD71A: MemLdRfVar from_stack_1.global_52
  loc_BCD71D: NewIfNullPr clsjuicios
  loc_BCD720: from_stack_1 = clsjuicios.BajaUsua
  loc_BCD725: ILdRf var_8C
  loc_BCD728: LitStr vbNullString
  loc_BCD72B: NeStr
  loc_BCD72D: FFree1Str var_8C
  loc_BCD730: BranchF loc_BCD78D
  loc_BCD733: LitStr "Ya fue dado de baja por: "
  loc_BCD736: FLdRfVar var_8C
  loc_BCD739: FLdPr Me
  loc_BCD73C: MemLdRfVar from_stack_1.global_52
  loc_BCD73F: NewIfNullPr clsjuicios
  loc_BCD742: from_stack_1 = clsjuicios.BajaUsua
  loc_BCD747: ILdRf var_8C
  loc_BCD74A: ConcatStr
  loc_BCD74B: FStStrNoPop var_F0
  loc_BCD74E: LitStr " el día: "
  loc_BCD751: ConcatStr
  loc_BCD752: FStStrNoPop var_F8
  loc_BCD755: FLdRfVar var_F4
  loc_BCD758: FLdPr Me
  loc_BCD75B: MemLdRfVar from_stack_1.global_52
  loc_BCD75E: NewIfNullPr clsjuicios
  loc_BCD761: from_stack_1 = clsjuicios.BajaFeho
  loc_BCD766: ILdRf var_F4
  loc_BCD769: ConcatStr
  loc_BCD76A: FStStrNoPop var_FC
  loc_BCD76D: FLdPr Me
  loc_BCD770: MemStStrCopy
  loc_BCD774: FFreeStr var_8C = "": var_F0 = "": var_F8 = "": var_F4 = ""
  loc_BCD781: FLdPr Me
  loc_BCD784: MemLdStr global_60
  loc_BCD787: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BCD78C: ExitProcHresult
  loc_BCD78D: LitVar_Missing var_12C
  loc_BCD790: LitVar_Missing var_C8
  loc_BCD793: LitVar_Missing var_B8
  loc_BCD796: LitI4 4
  loc_BCD79B: LitVarStr var_D8, "¿Desea dar de baja el juicio seleccionada?"
  loc_BCD7A0: FStVarCopyObj var_A8
  loc_BCD7A3: FLdRfVar var_A8
  loc_BCD7A6: ImpAdCallI2 MsgBox(, , , , )
  loc_BCD7AB: LitI4 6
  loc_BCD7B0: EqI4
  loc_BCD7B1: FFreeVar var_A8 = "": var_B8 = "": var_C8 = ""
  loc_BCD7BC: BranchF loc_BCD7E1
  loc_BCD7BF: FLdRfVar var_EC
  loc_BCD7C2: FLdPr Me
  loc_BCD7C5: MemLdRfVar from_stack_1.global_52
  loc_BCD7C8: NewIfNullPr clsjuicios
  loc_BCD7CB: from_stack_1 = clsjuicios.NumeJuic
  loc_BCD7D0: ILdRf var_EC
  loc_BCD7D3: FLdPr Me
  loc_BCD7D6: MemLdRfVar from_stack_1.global_52
  loc_BCD7D9: NewIfNullPr clsjuicios
  loc_BCD7DC: Call clsjuicios.Baja(from_stack_1v)
  loc_BCD7E1: Branch loc_BCDB45
  loc_BCD7E4: ILdRf var_90
  loc_BCD7E7: LitStr "btnGuardar"
  loc_BCD7EA: EqStr
  loc_BCD7EC: BranchF loc_BCDA41
  loc_BCD7EF: LitI2_Byte 0
  loc_BCD7F1: PopTmpLdAd2 var_12E
  loc_BCD7F4: Call ExpeJuicTxt_Validate(from_stack_1v)
  loc_BCD7F9: FLdPr Me
  loc_BCD7FC: MemLdStr global_60
  loc_BCD7FF: LitStr vbNullString
  loc_BCD802: NeStr
  loc_BCD804: BranchF loc_BCD808
  loc_BCD807: ExitProcHresult
  loc_BCD808: LitI2_Byte 0
  loc_BCD80A: PopTmpLdAd2 var_12E
  loc_BCD80D: Call CaraJuicTxt_Validate(from_stack_1v)
  loc_BCD812: FLdPr Me
  loc_BCD815: MemLdStr global_60
  loc_BCD818: LitStr vbNullString
  loc_BCD81B: NeStr
  loc_BCD81D: BranchF loc_BCD821
  loc_BCD820: ExitProcHresult
  loc_BCD821: LitI2_Byte 0
  loc_BCD823: PopTmpLdAd2 var_12E
  loc_BCD826: Call TribJuicTxt_Validate(from_stack_1v)
  loc_BCD82B: FLdPr Me
  loc_BCD82E: MemLdStr global_60
  loc_BCD831: LitStr vbNullString
  loc_BCD834: NeStr
  loc_BCD836: BranchF loc_BCD83A
  loc_BCD839: ExitProcHresult
  loc_BCD83A: LitI2_Byte 0
  loc_BCD83C: PopTmpLdAd2 var_12E
  loc_BCD83F: Call CircJuicTxt_Validate(from_stack_1v)
  loc_BCD844: FLdPr Me
  loc_BCD847: MemLdStr global_60
  loc_BCD84A: LitStr vbNullString
  loc_BCD84D: NeStr
  loc_BCD84F: BranchF loc_BCD853
  loc_BCD852: ExitProcHresult
  loc_BCD853: LitI2_Byte 0
  loc_BCD855: PopTmpLdAd2 var_12E
  loc_BCD858: Call FechJuicMsk_UnknownEvent_8()
  loc_BCD85D: FLdPr Me
  loc_BCD860: MemLdStr global_60
  loc_BCD863: LitStr vbNullString
  loc_BCD866: NeStr
  loc_BCD868: BranchF loc_BCD86C
  loc_BCD86B: ExitProcHresult
  loc_BCD86C: LitI2_Byte 0
  loc_BCD86E: PopTmpLdAd2 var_12E
  loc_BCD871: Call ImpoJuicTxt_Validate(from_stack_1v)
  loc_BCD876: FLdPr Me
  loc_BCD879: MemLdStr global_60
  loc_BCD87C: LitStr vbNullString
  loc_BCD87F: NeStr
  loc_BCD881: BranchF loc_BCD885
  loc_BCD884: ExitProcHresult
  loc_BCD885: FLdPr Me
  loc_BCD888: MemLdI2 global_56
  loc_BCD88B: FStI2 var_130
  loc_BCD88E: FLdI2 var_130
  loc_BCD891: LitI2_Byte 1
  loc_BCD893: EqI2
  loc_BCD894: BranchF loc_BCD95B
  loc_BCD897: FLdRfVar var_8C
  loc_BCD89A: FLdPr Me
  loc_BCD89D: VCallAd Control_ID_ExpeJuicTxt
  loc_BCD8A0: FStAdFunc var_94
  loc_BCD8A3: FLdPr var_94
  loc_BCD8A6:  = Me.Text
  loc_BCD8AB: FLdRfVar var_F0
  loc_BCD8AE: FLdPr Me
  loc_BCD8B1: VCallAd Control_ID_CaraJuicTxt
  loc_BCD8B4: FStAdFunc var_134
  loc_BCD8B7: FLdPr var_134
  loc_BCD8BA:  = Me.Text
  loc_BCD8BF: FLdRfVar var_F4
  loc_BCD8C2: FLdPr Me
  loc_BCD8C5: VCallAd Control_ID_TribJuicTxt
  loc_BCD8C8: FStAdFunc var_138
  loc_BCD8CB: FLdPr var_138
  loc_BCD8CE:  = Me.Text
  loc_BCD8D3: FLdRfVar var_F8
  loc_BCD8D6: FLdPr Me
  loc_BCD8D9: VCallAd Control_ID_CircJuicTxt
  loc_BCD8DC: FStAdFunc var_13C
  loc_BCD8DF: FLdPr var_13C
  loc_BCD8E2:  = Me.Text
  loc_BCD8E7: FLdPr Me
  loc_BCD8EA: VCallAd Control_ID_FechJuicMsk
  loc_BCD8ED: FStAdFunc var_140
  loc_BCD8F0: FLdPr var_140
  loc_BCD8F3: LateIdLdVar var_A8 DispID_15 0
  loc_BCD8FA: PopAd
  loc_BCD8FC: FLdRfVar var_FC
  loc_BCD8FF: FLdPr Me
  loc_BCD902: VCallAd Control_ID_ImpoJuicTxt
  loc_BCD905: FStAdFunc var_144
  loc_BCD908: FLdPr var_144
  loc_BCD90B:  = Me.Text
  loc_BCD910: ILdRf var_FC
  loc_BCD913: CR8Str
  loc_BCD915: PopFPR8
  loc_BCD916: FLdRfVar var_A8
  loc_BCD919: CStrVarTmp
  loc_BCD91A: FStStrNoPop var_148
  loc_BCD91D: ILdRf var_F8
  loc_BCD920: ILdRf var_F4
  loc_BCD923: ILdRf var_F0
  loc_BCD926: ILdRf var_8C
  loc_BCD929: FLdPr Me
  loc_BCD92C: MemLdRfVar from_stack_1.global_52
  loc_BCD92F: NewIfNullPr clsjuicios
  loc_BCD932: Call clsjuicios.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_BCD937: FFreeStr var_8C = "": var_F0 = "": var_F4 = "": var_F8 = "": var_148 = ""
  loc_BCD946: FFreeAd var_94 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_BCD955: FFree1Var var_A8 = ""
  loc_BCD958: Branch loc_BCDA39
  loc_BCD95B: FLdI2 var_130
  loc_BCD95E: LitI2_Byte 2
  loc_BCD960: EqI2
  loc_BCD961: BranchF loc_BCDA39
  loc_BCD964: FLdRfVar var_EC
  loc_BCD967: FLdPr Me
  loc_BCD96A: MemLdRfVar from_stack_1.global_52
  loc_BCD96D: NewIfNullPr clsjuicios
  loc_BCD970: from_stack_1 = clsjuicios.NumeJuic
  loc_BCD975: FLdRfVar var_8C
  loc_BCD978: FLdPr Me
  loc_BCD97B: VCallAd Control_ID_ExpeJuicTxt
  loc_BCD97E: FStAdFunc var_94
  loc_BCD981: FLdPr var_94
  loc_BCD984:  = Me.Text
  loc_BCD989: FLdRfVar var_F0
  loc_BCD98C: FLdPr Me
  loc_BCD98F: VCallAd Control_ID_CaraJuicTxt
  loc_BCD992: FStAdFunc var_134
  loc_BCD995: FLdPr var_134
  loc_BCD998:  = Me.Text
  loc_BCD99D: FLdRfVar var_F4
  loc_BCD9A0: FLdPr Me
  loc_BCD9A3: VCallAd Control_ID_TribJuicTxt
  loc_BCD9A6: FStAdFunc var_138
  loc_BCD9A9: FLdPr var_138
  loc_BCD9AC:  = Me.Text
  loc_BCD9B1: FLdRfVar var_F8
  loc_BCD9B4: FLdPr Me
  loc_BCD9B7: VCallAd Control_ID_CircJuicTxt
  loc_BCD9BA: FStAdFunc var_13C
  loc_BCD9BD: FLdPr var_13C
  loc_BCD9C0:  = Me.Text
  loc_BCD9C5: FLdPr Me
  loc_BCD9C8: VCallAd Control_ID_FechJuicMsk
  loc_BCD9CB: FStAdFunc var_140
  loc_BCD9CE: FLdPr var_140
  loc_BCD9D1: LateIdLdVar var_A8 DispID_15 0
  loc_BCD9D8: PopAd
  loc_BCD9DA: FLdRfVar var_FC
  loc_BCD9DD: FLdPr Me
  loc_BCD9E0: VCallAd Control_ID_ImpoJuicTxt
  loc_BCD9E3: FStAdFunc var_144
  loc_BCD9E6: FLdPr var_144
  loc_BCD9E9:  = Me.Text
  loc_BCD9EE: ILdRf var_FC
  loc_BCD9F1: CR8Str
  loc_BCD9F3: PopFPR8
  loc_BCD9F4: FLdRfVar var_A8
  loc_BCD9F7: CStrVarTmp
  loc_BCD9F8: FStStrNoPop var_148
  loc_BCD9FB: ILdRf var_F8
  loc_BCD9FE: ILdRf var_F4
  loc_BCDA01: ILdRf var_F0
  loc_BCDA04: ILdRf var_8C
  loc_BCDA07: ILdRf var_EC
  loc_BCDA0A: FLdPr Me
  loc_BCDA0D: MemLdRfVar from_stack_1.global_52
  loc_BCDA10: NewIfNullPr clsjuicios
  loc_BCDA13: Call clsjuicios.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_BCDA18: FFreeStr var_8C = "": var_F0 = "": var_F4 = "": var_F8 = "": var_148 = ""
  loc_BCDA27: FFreeAd var_94 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_BCDA36: FFree1Var var_A8 = ""
  loc_BCDA39: Call cmdCancelar_Click()
  loc_BCDA3E: Branch loc_BCDB45
  loc_BCDA41: ILdRf var_90
  loc_BCDA44: LitStr "btnCancelar"
  loc_BCDA47: EqStr
  loc_BCDA49: BranchF loc_BCDA54
  loc_BCDA4C: Call cmdCancelar_Click()
  loc_BCDA51: Branch loc_BCDB45
  loc_BCDA54: ILdRf var_90
  loc_BCDA57: LitStr "btnPrimero"
  loc_BCDA5A: EqStr
  loc_BCDA5C: BranchF loc_BCDA70
  loc_BCDA5F: FLdPr Me
  loc_BCDA62: MemLdRfVar from_stack_1.global_52
  loc_BCDA65: NewIfNullPr clsjuicios
  loc_BCDA68: Call clsjuicios.MoveFirst()
  loc_BCDA6D: Branch loc_BCDB45
  loc_BCDA70: ILdRf var_90
  loc_BCDA73: LitStr "btnAnterior"
  loc_BCDA76: EqStr
  loc_BCDA78: BranchF loc_BCDA8C
  loc_BCDA7B: FLdPr Me
  loc_BCDA7E: MemLdRfVar from_stack_1.global_52
  loc_BCDA81: NewIfNullPr clsjuicios
  loc_BCDA84: Call clsjuicios.MovePrevious()
  loc_BCDA89: Branch loc_BCDB45
  loc_BCDA8C: ILdRf var_90
  loc_BCDA8F: LitStr "btnSiguiente"
  loc_BCDA92: EqStr
  loc_BCDA94: BranchF loc_BCDAA8
  loc_BCDA97: FLdPr Me
  loc_BCDA9A: MemLdRfVar from_stack_1.global_52
  loc_BCDA9D: NewIfNullPr clsjuicios
  loc_BCDAA0: Call clsjuicios.MoveNext()
  loc_BCDAA5: Branch loc_BCDB45
  loc_BCDAA8: ILdRf var_90
  loc_BCDAAB: LitStr "btnUltimo"
  loc_BCDAAE: EqStr
  loc_BCDAB0: BranchF loc_BCDAC4
  loc_BCDAB3: FLdPr Me
  loc_BCDAB6: MemLdRfVar from_stack_1.global_52
  loc_BCDAB9: NewIfNullPr clsjuicios
  loc_BCDABC: Call clsjuicios.MoveLast()
  loc_BCDAC1: Branch loc_BCDB45
  loc_BCDAC4: ILdRf var_90
  loc_BCDAC7: LitStr "btnFiltrar"
  loc_BCDACA: EqStr
  loc_BCDACC: BranchF loc_BCDAD2
  loc_BCDACF: Branch loc_BCDB45
  loc_BCDAD2: ILdRf var_90
  loc_BCDAD5: LitStr "btnBuscar"
  loc_BCDAD8: EqStr
  loc_BCDADA: BranchF loc_BCDAE0
  loc_BCDADD: Branch loc_BCDB45
  loc_BCDAE0: ILdRf var_90
  loc_BCDAE3: LitStr "btnImprimir"
  loc_BCDAE6: EqStr
  loc_BCDAE8: BranchF loc_BCDAEE
  loc_BCDAEB: Branch loc_BCDB45
  loc_BCDAEE: ILdRf var_90
  loc_BCDAF1: LitStr "btnAyuda"
  loc_BCDAF4: EqStr
  loc_BCDAF6: BranchF loc_BCDB25
  loc_BCDAF9: LitVar_Missing var_12C
  loc_BCDAFC: LitVar_Missing var_C8
  loc_BCDAFF: LitVar_Missing var_B8
  loc_BCDB02: LitI4 0
  loc_BCDB07: LitVarStr var_D8, "Opcion no disponible en esta version."
  loc_BCDB0C: FStVarCopyObj var_A8
  loc_BCDB0F: FLdRfVar var_A8
  loc_BCDB12: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BCDB17: FFreeVar var_A8 = "": var_B8 = "": var_C8 = ""
  loc_BCDB22: Branch loc_BCDB45
  loc_BCDB25: ILdRf var_90
  loc_BCDB28: LitStr "btnSalir"
  loc_BCDB2B: EqStr
  loc_BCDB2D: BranchF loc_BCDB45
  loc_BCDB30: ILdRf Me
  loc_BCDB33: FStAdNoPop
  loc_BCDB37: ImpAdLdRf MemVar_D9C5D8
  loc_BCDB3A: NewIfNullPr Global
  loc_BCDB3D: Global.Unload from_stack_1
  loc_BCDB42: FFree1Ad var_94
  loc_BCDB45: ExitProcHresult
End Sub

Private Sub FechJuicMsk_UnknownEvent_0 '9C25B8
  'Data Table: 466AD0
  loc_9C25A4: FLdPr Me
  loc_9C25A7: VCallAd Control_ID_FechJuicMsk
  loc_9C25AA: CVarAd
  loc_9C25AE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C25B3: FFree1Var var_94 = ""
  loc_9C25B6: ExitProcHresult
End Sub

Private Sub FechJuicMsk_UnknownEvent_8 'A9237C
  'Data Table: 466AD0
  loc_A922DC: FLdRfVar var_8A
  loc_A922DF: FLdPr Me
  loc_A922E2: VCallAd Control_ID_cmdCancelar
  loc_A922E5: FStAdFunc var_88
  loc_A922E8: FLdPr var_88
  loc_A922EB:  = Me.Value
  loc_A922F0: FLdI2 var_8A
  loc_A922F3: NotI4
  loc_A922F4: FLdPr Me
  loc_A922F7: VCallAd Control_ID_FechJuicMsk
  loc_A922FA: FStAdFunc var_90
  loc_A922FD: FLdPr var_90
  loc_A92300: LateIdLdVar var_A0 DispID_13 -32767
  loc_A92307: CBoolVar
  loc_A92309: AndI4
  loc_A9230A: FFreeAd var_88 = ""
  loc_A92311: FFree1Var var_A0 = ""
  loc_A92314: BranchF loc_A9237A
  loc_A92317: FLdPr Me
  loc_A9231A: VCallAd Control_ID_FechJuicMsk
  loc_A9231D: FStAdFunc var_88
  loc_A92320: FLdPr var_88
  loc_A92323: LateIdLdVar var_A0 DispID_15 0
  loc_A9232A: CStrVarTmp
  loc_A9232B: FStStrNoPop var_A4
  loc_A9232E: ImpAdCallI2 Proc_18_7_A46DF4()
  loc_A92333: FStStrNoPop var_A8
  loc_A92336: FLdPr Me
  loc_A92339: MemStStrCopy
  loc_A9233D: FFreeStr var_A4 = ""
  loc_A92344: FFree1Ad var_88
  loc_A92347: FFree1Var var_A0 = ""
  loc_A9234A: FLdPr Me
  loc_A9234D: MemLdStr global_60
  loc_A92350: LitStr vbNullString
  loc_A92353: NeStr
  loc_A92355: BranchF loc_A9237A
  loc_A92358: FLdPr Me
  loc_A9235B: MemLdStr global_60
  loc_A9235E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A92363: FLdPr Me
  loc_A92366: VCallAd Control_ID_FechJuicMsk
  loc_A92369: CVarAd
  loc_A9236D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A92372: FFree1Var var_A0 = ""
  loc_A92375: LitI2_Byte &HFF
  loc_A92377: IStI2 Button
  loc_A9237A: ExitProcHresult
End Sub

Private Sub FechJuicMsk_KeyPress(KeyAscii As Integer) 'A22BD0
  'Data Table: 466AD0
  loc_A22B88: ILdI2 KeyAscii
  loc_A22B8B: CI4UI1
  loc_A22B8C: LitI4 &H20
  loc_A22B91: EqI4
  loc_A22B92: BranchF loc_A22BCF
  loc_A22B95: LitVar_Missing var_A4
  loc_A22B98: PopAdLdVar
  loc_A22B99: LitVarI4
  loc_A22BA1: PopAdLdVar
  loc_A22BA2: ImpAdLdRf MemVar_D930A4
  loc_A22BA5: NewIfNullPr frmCalendario
  loc_A22BA8: frmCalendario.Show from_stack_1, from_stack_2
  loc_A22BAD: ImpAdLdRf MemVar_D93028
  loc_A22BB0: CDargRef
  loc_A22BB4: FLdPr Me
  loc_A22BB7: VCallAd Control_ID_FechJuicMsk
  loc_A22BBA: FStAdFunc var_A8
  loc_A22BBD: FLdPr var_A8
  loc_A22BC0: LateIdSt
  loc_A22BC5: FFree1Ad var_A8
  loc_A22BC8: LitStr vbNullString
  loc_A22BCB: ImpAdStStrCopy MemVar_D93028
  loc_A22BCF: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'ABA5F4
  'Data Table: 466AD0
  loc_ABA510: LitI2_Byte 0
  loc_ABA512: FLdPr Me
  loc_ABA515: MemStI2 global_56
  loc_ABA518: LitI2_Byte 0
  loc_ABA51A: ILdRf Me
  loc_ABA51D: CastAd
  loc_ABA520: FStAdFunc var_88
  loc_ABA523: FLdRfVar var_88
  loc_ABA526: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_ABA52B: FFree1Ad var_88
  loc_ABA52E: LitI4 0
  loc_ABA533: LitI4 0
  loc_ABA538: FLdRfVar var_8C
  loc_ABA53B: Redim
  loc_ABA545: FLdPr Me
  loc_ABA548: VCallAd Control_ID_dgdABMS
  loc_ABA54B: CVarAd
  loc_ABA54F: ParmAry1St
  loc_ABA555: FLdRfVar var_8C
  loc_ABA558: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ABA55D: FLdRfVar var_8C
  loc_ABA560: Erase
  loc_ABA561: FLdPr Me
  loc_ABA564: MemLdRfVar from_stack_1.global_52
  loc_ABA567: NewIfNullAd
  loc_ABA56A: FStAd var_A0 
  loc_ABA56E: FLdRfVar var_A0
  loc_ABA571: CVarRef
  loc_ABA576: ILdRf Me
  loc_ABA579: CastAd
  loc_ABA57C: FStAdFunc var_88
  loc_ABA57F: FLdRfVar var_88
  loc_ABA582: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_ABA587: ILdRf var_A0
  loc_ABA58A: CastAd
  loc_ABA58D: FLdPr Me
  loc_ABA590: MemStAdFunc
  loc_ABA594: FFreeAd var_88 = ""
  loc_ABA59B: ILdRf Me
  loc_ABA59E: CastAd
  loc_ABA5A1: FStAdFunc var_88
  loc_ABA5A4: FLdRfVar var_88
  loc_ABA5A7: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_ABA5AC: FFree1Ad var_88
  loc_ABA5AF: LitI4 0
  loc_ABA5B4: LitI4 1
  loc_ABA5B9: FLdRfVar var_8C
  loc_ABA5BC: Redim
  loc_ABA5C6: FLdPr Me
  loc_ABA5C9: VCallAd Control_ID_FiltroCbo
  loc_ABA5CC: CVarAd
  loc_ABA5D0: ParmAry1St
  loc_ABA5D6: FLdPr Me
  loc_ABA5D9: VCallAd Control_ID_FiltroMsk
  loc_ABA5DC: CVarAd
  loc_ABA5E0: ParmAry1St
  loc_ABA5E6: FLdRfVar var_8C
  loc_ABA5E9: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ABA5EE: FLdRfVar var_8C
  loc_ABA5F1: Erase
  loc_ABA5F2: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9D10D4
  'Data Table: 466AD0
  loc_9D10BC: FLdPr Me
  loc_9D10BF: VCallAd Control_ID_dgdABMS
  loc_9D10C2: FStAdFunc var_88
  loc_9D10C5: FLdRfVar var_88
  loc_9D10C8: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9D10CD: FFree1Ad var_88
  loc_9D10D0: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9D0A4C
  'Data Table: 466AD0
  loc_9D0A34: FLdPr Me
  loc_9D0A37: VCallAd Control_ID_dgdABMS
  loc_9D0A3A: FStAdFunc var_88
  loc_9D0A3D: FLdRfVar var_88
  loc_9D0A40: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9D0A45: FFree1Ad var_88
  loc_9D0A48: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A666B0
  'Data Table: 466AD0
  loc_A66654: FLdRfVar var_B4
  loc_A66657: FLdRfVar var_B0
  loc_A6665A: FLdI2 ColIndex
  loc_A6665D: CVarI2 var_A8
  loc_A66660: PopAdLdVar
  loc_A66661: FLdPr Me
  loc_A66664: VCallAd Control_ID_dgdABMS
  loc_A66667: FStAdFunc var_88
  loc_A6666A: FLdPr var_88
  loc_A6666D: LateIdLdVar var_98 DispID_105 0
  loc_A66674: CastAdVar Me
  loc_A66678: FStAdFunc var_AC
  loc_A6667B: FLdPr var_AC
  loc_A6667E: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A66683: FLdPr var_B0
  loc_A66686:  = Me.DataField
  loc_A6668B: FLdZeroAd var_B4
  loc_A6668E: PopTmpLdAdStr
  loc_A66692: FLdPr Me
  loc_A66695: MemLdRfVar from_stack_1.global_52
  loc_A66698: NewIfNullPr clsjuicios
  loc_A6669B: Call clsjuicios.Sort(from_stack_1v)
  loc_A666A0: FFree1Str var_B8
  loc_A666A3: FFreeAd var_88 = "": var_AC = ""
  loc_A666AC: FFree1Var var_98 = ""
  loc_A666AF: ExitProcHresult
End Sub

Private Sub CaraJuicTxt_GotFocus() '9C2498
  'Data Table: 466AD0
  loc_9C2484: FLdPr Me
  loc_9C2487: VCallAd Control_ID_CaraJuicTxt
  loc_9C248A: CVarAd
  loc_9C248E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2493: FFree1Var var_94 = ""
  loc_9C2496: ExitProcHresult
End Sub

Private Sub CaraJuicTxt_Validate(Cancel As Boolean) 'A92544
  'Data Table: 466AD0
  loc_A924A4: FLdRfVar var_8A
  loc_A924A7: FLdPr Me
  loc_A924AA: VCallAd Control_ID_cmdCancelar
  loc_A924AD: FStAdFunc var_88
  loc_A924B0: FLdPr var_88
  loc_A924B3:  = Me.Value
  loc_A924B8: FLdI2 var_8A
  loc_A924BB: NotI4
  loc_A924BC: FLdRfVar var_92
  loc_A924BF: FLdPr Me
  loc_A924C2: VCallAd Control_ID_CaraJuicTxt
  loc_A924C5: FStAdFunc var_90
  loc_A924C8: FLdPr var_90
  loc_A924CB:  = Me.Enabled
  loc_A924D0: FLdI2 var_92
  loc_A924D3: AndI4
  loc_A924D4: FFreeAd var_88 = ""
  loc_A924DB: BranchF loc_A92541
  loc_A924DE: FLdRfVar var_98
  loc_A924E1: FLdPr Me
  loc_A924E4: VCallAd Control_ID_CaraJuicTxt
  loc_A924E7: FStAdFunc var_88
  loc_A924EA: FLdPr var_88
  loc_A924ED:  = Me.Text
  loc_A924F2: ILdRf var_98
  loc_A924F5: LitStr "Caratula"
  loc_A924F8: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A924FD: FStStrNoPop var_9C
  loc_A92500: FLdPr Me
  loc_A92503: MemStStrCopy
  loc_A92507: FFreeStr var_98 = ""
  loc_A9250E: FFree1Ad var_88
  loc_A92511: FLdPr Me
  loc_A92514: MemLdStr global_60
  loc_A92517: LitStr vbNullString
  loc_A9251A: NeStr
  loc_A9251C: BranchF loc_A92541
  loc_A9251F: FLdPr Me
  loc_A92522: MemLdStr global_60
  loc_A92525: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A9252A: FLdPr Me
  loc_A9252D: VCallAd Control_ID_CaraJuicTxt
  loc_A92530: CVarAd
  loc_A92534: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A92539: FFree1Var var_AC = ""
  loc_A9253C: LitI2_Byte &HFF
  loc_A9253E: IStI2 Cancel
  loc_A92541: ExitProcHresult
End Sub

Private Sub Form_Load() 'AB9A18
  'Data Table: 466AD0
  loc_AB9930: LitI2_Byte 0
  loc_AB9932: CR8I2
  loc_AB9933: PopFPR4
  loc_AB9934: FLdPr Me
  loc_AB9937: Me.Left = from_stack_1s
  loc_AB993C: LitI2_Byte 0
  loc_AB993E: CR8I2
  loc_AB993F: PopFPR4
  loc_AB9940: FLdPr Me
  loc_AB9943: Me.Top = from_stack_1s
  loc_AB9948: LitStr "SELECT * FROM juicio "
  loc_AB994B: LitStr " ORDER BY NumeJuic"
  loc_AB994E: ConcatStr
  loc_AB994F: FStStrNoPop var_88
  loc_AB9952: FLdPr Me
  loc_AB9955: MemLdRfVar from_stack_1.global_52
  loc_AB9958: NewIfNullPr clsjuicios
  loc_AB995B: Call clsjuicios.RedefineRS(from_stack_1v)
  loc_AB9960: FFree1Str var_88
  loc_AB9963: LitI4 0
  loc_AB9968: LitI4 1
  loc_AB996D: FLdRfVar var_8C
  loc_AB9970: Redim
  loc_AB997A: FLdPr Me
  loc_AB997D: MemLdRfVar from_stack_1.global_52
  loc_AB9980: NewIfNullAd
  loc_AB9983: FStAd var_90 
  loc_AB9987: FLdRfVar var_90
  loc_AB998A: CVarRef
  loc_AB998F: ParmAry1St
  loc_AB9995: FLdPr Me
  loc_AB9998: VCallAd Control_ID_dgdABMS
  loc_AB999B: CVarAd
  loc_AB999F: ParmAry1St
  loc_AB99A5: FLdRfVar var_8C
  loc_AB99A8: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AB99AD: ILdRf var_90
  loc_AB99B0: CastAd
  loc_AB99B3: FLdPr Me
  loc_AB99B6: MemStAdFunc
  loc_AB99BA: FLdRfVar var_8C
  loc_AB99BD: Erase
  loc_AB99BE: FFree1Ad var_90
  loc_AB99C1: Call cmdCancelar_Click()
  loc_AB99C6: LitVarI2 var_A0, 0
  loc_AB99CB: PopAdLdVar
  loc_AB99CC: LitStr "Expediente"
  loc_AB99CF: FLdPr Me
  loc_AB99D2: VCallAd Control_ID_FiltroCbo
  loc_AB99D5: FStAdFunc var_90
  loc_AB99D8: FLdPr var_90
  loc_AB99DB: Me.AddItem from_stack_1, from_stack_2
  loc_AB99E0: FFree1Ad var_90
  loc_AB99E3: LitVarI2 var_A0, 1
  loc_AB99E8: PopAdLdVar
  loc_AB99E9: LitStr "Caratula"
  loc_AB99EC: FLdPr Me
  loc_AB99EF: VCallAd Control_ID_FiltroCbo
  loc_AB99F2: FStAdFunc var_90
  loc_AB99F5: FLdPr var_90
  loc_AB99F8: Me.AddItem from_stack_1, from_stack_2
  loc_AB99FD: FFree1Ad var_90
  loc_AB9A00: LitI2_Byte 0
  loc_AB9A02: FLdPr Me
  loc_AB9A05: VCallAd Control_ID_FiltroCbo
  loc_AB9A08: FStAdFunc var_90
  loc_AB9A0B: FLdPr var_90
  loc_AB9A0E: Me.ListIndex = from_stack_1
  loc_AB9A13: FFree1Ad var_90
  loc_AB9A16: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A65A00
  'Data Table: 466AD0
  loc_A659A4: FLdRfVar var_C2
  loc_A659A7: FLdRfVar var_C0
  loc_A659AA: LitVarI2 var_B8, 1
  loc_A659AF: FLdPr Me
  loc_A659B2: VCallAd Control_ID_tlbABMS
  loc_A659B5: FStAdFunc var_88
  loc_A659B8: FLdPr var_88
  loc_A659BB: LateIdLdVar var_98 DispID_3 0
  loc_A659C2: CastAdVar Me
  loc_A659C6: FStAdFunc var_BC
  loc_A659C9: FLdPr var_BC
  loc_A659CC:  = Me.Buttons.ControlDefault
  loc_A659D1: FLdPr var_C0
  loc_A659D4:  = Me.Enabled
  loc_A659D9: FLdI2 var_C2
  loc_A659DC: FFreeAd var_88 = "": var_BC = ""
  loc_A659E5: FFreeVar var_98 = ""
  loc_A659EC: BranchF loc_A659FD
  loc_A659EF: FLdPr Me
  loc_A659F2: MemLdRfVar from_stack_1.global_52
  loc_A659F5: NewIfNullPr clsjuicios
  loc_A659F8: Call clsjuicios.Requery()
  loc_A659FD: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9D0E28
  'Data Table: 466AD0
  loc_9D0E10: ILdI2 KeyCode
  loc_9D0E13: ILdRf Me
  loc_9D0E16: CastAd
  loc_9D0E19: FStAdFunc var_88
  loc_9D0E1C: FLdRfVar var_88
  loc_9D0E1F: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9D0E24: FFree1Ad var_88
  loc_9D0E27: ExitProcHresult
End Sub

Private Sub CircJuicTxt_GotFocus() '9C24E0
  'Data Table: 466AD0
  loc_9C24CC: FLdPr Me
  loc_9C24CF: VCallAd Control_ID_CircJuicTxt
  loc_9C24D2: CVarAd
  loc_9C24D6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C24DB: FFree1Var var_94 = ""
  loc_9C24DE: ExitProcHresult
End Sub

Private Sub CircJuicTxt_Validate(Cancel As Boolean) 'A92628
  'Data Table: 466AD0
  loc_A92588: FLdRfVar var_8A
  loc_A9258B: FLdPr Me
  loc_A9258E: VCallAd Control_ID_cmdCancelar
  loc_A92591: FStAdFunc var_88
  loc_A92594: FLdPr var_88
  loc_A92597:  = Me.Value
  loc_A9259C: FLdI2 var_8A
  loc_A9259F: NotI4
  loc_A925A0: FLdRfVar var_92
  loc_A925A3: FLdPr Me
  loc_A925A6: VCallAd Control_ID_TribJuicTxt
  loc_A925A9: FStAdFunc var_90
  loc_A925AC: FLdPr var_90
  loc_A925AF:  = Me.Enabled
  loc_A925B4: FLdI2 var_92
  loc_A925B7: AndI4
  loc_A925B8: FFreeAd var_88 = ""
  loc_A925BF: BranchF loc_A92625
  loc_A925C2: FLdRfVar var_98
  loc_A925C5: FLdPr Me
  loc_A925C8: VCallAd Control_ID_CircJuicTxt
  loc_A925CB: FStAdFunc var_88
  loc_A925CE: FLdPr var_88
  loc_A925D1:  = Me.Text
  loc_A925D6: ILdRf var_98
  loc_A925D9: LitStr "Circunscripción"
  loc_A925DC: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A925E1: FStStrNoPop var_9C
  loc_A925E4: FLdPr Me
  loc_A925E7: MemStStrCopy
  loc_A925EB: FFreeStr var_98 = ""
  loc_A925F2: FFree1Ad var_88
  loc_A925F5: FLdPr Me
  loc_A925F8: MemLdStr global_60
  loc_A925FB: LitStr vbNullString
  loc_A925FE: NeStr
  loc_A92600: BranchF loc_A92625
  loc_A92603: FLdPr Me
  loc_A92606: MemLdStr global_60
  loc_A92609: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A9260E: FLdPr Me
  loc_A92611: VCallAd Control_ID_CircJuicTxt
  loc_A92614: CVarAd
  loc_A92618: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A9261D: FFree1Var var_AC = ""
  loc_A92620: LitI2_Byte &HFF
  loc_A92622: IStI2 Cancel
  loc_A92625: ExitProcHresult
End Sub

Private Sub TribJuicTxt_GotFocus() '9C27F8
  'Data Table: 466AD0
  loc_9C27E4: FLdPr Me
  loc_9C27E7: VCallAd Control_ID_TribJuicTxt
  loc_9C27EA: CVarAd
  loc_9C27EE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C27F3: FFree1Var var_94 = ""
  loc_9C27F6: ExitProcHresult
End Sub

Private Sub TribJuicTxt_Validate(Cancel As Boolean) 'A91A94
  'Data Table: 466AD0
  loc_A919F4: FLdRfVar var_8A
  loc_A919F7: FLdPr Me
  loc_A919FA: VCallAd Control_ID_cmdCancelar
  loc_A919FD: FStAdFunc var_88
  loc_A91A00: FLdPr var_88
  loc_A91A03:  = Me.Value
  loc_A91A08: FLdI2 var_8A
  loc_A91A0B: NotI4
  loc_A91A0C: FLdRfVar var_92
  loc_A91A0F: FLdPr Me
  loc_A91A12: VCallAd Control_ID_TribJuicTxt
  loc_A91A15: FStAdFunc var_90
  loc_A91A18: FLdPr var_90
  loc_A91A1B:  = Me.Enabled
  loc_A91A20: FLdI2 var_92
  loc_A91A23: AndI4
  loc_A91A24: FFreeAd var_88 = ""
  loc_A91A2B: BranchF loc_A91A91
  loc_A91A2E: FLdRfVar var_98
  loc_A91A31: FLdPr Me
  loc_A91A34: VCallAd Control_ID_TribJuicTxt
  loc_A91A37: FStAdFunc var_88
  loc_A91A3A: FLdPr var_88
  loc_A91A3D:  = Me.Text
  loc_A91A42: ILdRf var_98
  loc_A91A45: LitStr "Tribunal"
  loc_A91A48: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A91A4D: FStStrNoPop var_9C
  loc_A91A50: FLdPr Me
  loc_A91A53: MemStStrCopy
  loc_A91A57: FFreeStr var_98 = ""
  loc_A91A5E: FFree1Ad var_88
  loc_A91A61: FLdPr Me
  loc_A91A64: MemLdStr global_60
  loc_A91A67: LitStr vbNullString
  loc_A91A6A: NeStr
  loc_A91A6C: BranchF loc_A91A91
  loc_A91A6F: FLdPr Me
  loc_A91A72: MemLdStr global_60
  loc_A91A75: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A91A7A: FLdPr Me
  loc_A91A7D: VCallAd Control_ID_TribJuicTxt
  loc_A91A80: CVarAd
  loc_A91A84: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A91A89: FFree1Var var_AC = ""
  loc_A91A8C: LitI2_Byte &HFF
  loc_A91A8E: IStI2 Cancel
  loc_A91A91: ExitProcHresult
End Sub

Private Sub ExpeJuicTxt_GotFocus() '9C2528
  'Data Table: 466AD0
  loc_9C2514: FLdPr Me
  loc_9C2517: VCallAd Control_ID_ExpeJuicTxt
  loc_9C251A: CVarAd
  loc_9C251E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2523: FFree1Var var_94 = ""
  loc_9C2526: ExitProcHresult
End Sub

Private Sub ExpeJuicTxt_Validate(Cancel As Boolean) 'A92298
  'Data Table: 466AD0
  loc_A921F8: FLdRfVar var_8A
  loc_A921FB: FLdPr Me
  loc_A921FE: VCallAd Control_ID_cmdCancelar
  loc_A92201: FStAdFunc var_88
  loc_A92204: FLdPr var_88
  loc_A92207:  = Me.Value
  loc_A9220C: FLdI2 var_8A
  loc_A9220F: NotI4
  loc_A92210: FLdRfVar var_92
  loc_A92213: FLdPr Me
  loc_A92216: VCallAd Control_ID_ExpeJuicTxt
  loc_A92219: FStAdFunc var_90
  loc_A9221C: FLdPr var_90
  loc_A9221F:  = Me.Enabled
  loc_A92224: FLdI2 var_92
  loc_A92227: AndI4
  loc_A92228: FFreeAd var_88 = ""
  loc_A9222F: BranchF loc_A92295
  loc_A92232: FLdRfVar var_98
  loc_A92235: FLdPr Me
  loc_A92238: VCallAd Control_ID_ExpeJuicTxt
  loc_A9223B: FStAdFunc var_88
  loc_A9223E: FLdPr var_88
  loc_A92241:  = Me.Text
  loc_A92246: ILdRf var_98
  loc_A92249: LitStr "Expediente"
  loc_A9224C: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A92251: FStStrNoPop var_9C
  loc_A92254: FLdPr Me
  loc_A92257: MemStStrCopy
  loc_A9225B: FFreeStr var_98 = ""
  loc_A92262: FFree1Ad var_88
  loc_A92265: FLdPr Me
  loc_A92268: MemLdStr global_60
  loc_A9226B: LitStr vbNullString
  loc_A9226E: NeStr
  loc_A92270: BranchF loc_A92295
  loc_A92273: FLdPr Me
  loc_A92276: MemLdStr global_60
  loc_A92279: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A9227E: FLdPr Me
  loc_A92281: VCallAd Control_ID_ExpeJuicTxt
  loc_A92284: CVarAd
  loc_A92288: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A9228D: FFree1Var var_AC = ""
  loc_A92290: LitI2_Byte &HFF
  loc_A92292: IStI2 Cancel
  loc_A92295: ExitProcHresult
End Sub
