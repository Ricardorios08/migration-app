VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmInteresPorRecargoABM
  Caption = "Interes para calculo de recargos por pago fuera de termino"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmInteresPorRecargoABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 15372
  ClientHeight = 10980
  Begin VB.Frame FiltroFra
    Left = 240
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
      Top = 240
      Width = 4575
      Height = 420
      TabIndex = 8
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
      Top = 240
      Width = 5775
      Height = 375
      TabIndex = 7
      OleObjectBlob = "frmInteresPorRecargoABM.frx":324A
    End
  End
  Begin VB.Frame DeadConc
    Left = 240
    Top = 5760
    Width = 15255
    Height = 2895
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
    Begin VB.TextBox PorcInteTxt
      ForeColor = &HFF0000&
      Left = 3240
      Top = 840
      Width = 1815
      Height = 360
      TabIndex = 5
      MaxLength = 6
      DataField = "PorcInte"
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
    Begin MSMask.MaskEdBox FechInteMsk
      Left = 3240
      Top = 360
      Width = 1455
      Height = 360
      TabIndex = 3
      OleObjectBlob = "frmInteresPorRecargoABM.frx":32D2
      DataField = "FechInte"
    End
    Begin VB.Label Label12
      Caption = "Porcentaje:"
      Left = 1920
      Top = 840
      Width = 1200
      Height = 300
      TabIndex = 6
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
      Caption = "Fecha:"
      Left = 2400
      Top = 360
      Width = 735
      Height = 300
      TabIndex = 4
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
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 240
    Top = 1800
    Width = 14775
    Height = 3855
    TabIndex = 0
    OleObjectBlob = "frmInteresPorRecargoABM.frx":3382
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmInteresPorRecargoABM.frx":3580
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15372
    Height = 636
    TabIndex = 9
    OleObjectBlob = "frmInteresPorRecargoABM.frx":B0FE
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 10
      TabStop = 0   'False
      Picture = "frmInteresPorRecargoABM.frx":B65A
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmInteresPorRecargoABM"


Private Sub PorcInteTxt_GotFocus() '9C2210
  'Data Table: 447EC8
  loc_9C21FC: FLdPr Me
  loc_9C21FF: VCallAd Control_ID_PorcInteTxt
  loc_9C2202: CVarAd
  loc_9C2206: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C220B: FFree1Var var_94 = ""
  loc_9C220E: ExitProcHresult
End Sub

Private Sub PorcInteTxt_KeyPress(KeyAscii As Integer) 'A062C8
  'Data Table: 447EC8
  loc_A06294: LitStr "1234567890,."
  loc_A06297: FStStrCopy var_88
  loc_A0629A: FLdRfVar var_88
  loc_A0629D: ILdRf KeyAscii
  loc_A062A0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A062A5: IStI2 KeyAscii
  loc_A062A8: FFree1Str var_88
  loc_A062AB: ILdI2 KeyAscii
  loc_A062AE: LitStr "."
  loc_A062B1: ImpAdCallI2 Asc()
  loc_A062B6: EqI2
  loc_A062B7: BranchF loc_A062C5
  loc_A062BA: LitStr ","
  loc_A062BD: ImpAdCallI2 Asc()
  loc_A062C2: IStI2 KeyAscii
  loc_A062C5: ExitProcHresult
End Sub

Private Sub PorcInteTxt_Validate(Cancel As Boolean) 'AEA758
  'Data Table: 447EC8
  loc_AEA5D4: FLdRfVar var_8A
  loc_AEA5D7: FLdPr Me
  loc_AEA5DA: VCallAd Control_ID_PorcInteTxt
  loc_AEA5DD: FStAdFunc var_88
  loc_AEA5E0: FLdPr var_88
  loc_AEA5E3:  = Me.Enabled
  loc_AEA5E8: FLdI2 var_8A
  loc_AEA5EB: FFree1Ad var_88
  loc_AEA5EE: BranchF loc_AEA754
  loc_AEA5F1: FLdRfVar var_90
  loc_AEA5F4: FLdPr Me
  loc_AEA5F7: VCallAd Control_ID_PorcInteTxt
  loc_AEA5FA: FStAdFunc var_88
  loc_AEA5FD: FLdPr var_88
  loc_AEA600:  = Me.Text
  loc_AEA605: LitI2_Byte 0
  loc_AEA607: LitI2_Byte 0
  loc_AEA609: ILdRf var_90
  loc_AEA60C: LitStr "Porcentaje"
  loc_AEA60F: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AEA614: FStStrNoPop var_94
  loc_AEA617: FLdPr Me
  loc_AEA61A: MemStStrCopy
  loc_AEA61E: FFreeStr var_90 = ""
  loc_AEA625: FFree1Ad var_88
  loc_AEA628: FLdPr Me
  loc_AEA62B: MemLdStr global_60
  loc_AEA62E: LitStr vbNullString
  loc_AEA631: NeStr
  loc_AEA633: BranchF loc_AEA659
  loc_AEA636: FLdPr Me
  loc_AEA639: MemLdStr global_60
  loc_AEA63C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEA641: FLdPr Me
  loc_AEA644: VCallAd Control_ID_PorcInteTxt
  loc_AEA647: CVarAd
  loc_AEA64B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEA650: FFree1Var var_A4 = ""
  loc_AEA653: LitI2_Byte &HFF
  loc_AEA655: IStI2 Cancel
  loc_AEA658: ExitProcHresult
  loc_AEA659: FLdPr Me
  loc_AEA65C: MemLdI2 global_56
  loc_AEA65F: LitI2_Byte 1
  loc_AEA661: EqI2
  loc_AEA662: BranchF loc_AEA6C9
  loc_AEA665: FLdRfVar var_90
  loc_AEA668: FLdPr Me
  loc_AEA66B: VCallAd Control_ID_PorcInteTxt
  loc_AEA66E: FStAdFunc var_88
  loc_AEA671: FLdPr var_88
  loc_AEA674:  = Me.Text
  loc_AEA679: ILdRf var_90
  loc_AEA67C: CR8Str
  loc_AEA67E: PopFPR8
  loc_AEA67F: ImpAdCallI2  = Proc_18_86_A770F8()
  loc_AEA684: FStStrNoPop var_94
  loc_AEA687: FLdPr Me
  loc_AEA68A: MemStStrCopy
  loc_AEA68E: FFreeStr var_90 = ""
  loc_AEA695: FFree1Ad var_88
  loc_AEA698: FLdPr Me
  loc_AEA69B: MemLdStr global_60
  loc_AEA69E: LitStr vbNullString
  loc_AEA6A1: NeStr
  loc_AEA6A3: BranchF loc_AEA6C9
  loc_AEA6A6: FLdPr Me
  loc_AEA6A9: MemLdStr global_60
  loc_AEA6AC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEA6B1: FLdPr Me
  loc_AEA6B4: VCallAd Control_ID_PorcInteTxt
  loc_AEA6B7: CVarAd
  loc_AEA6BB: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEA6C0: FFree1Var var_A4 = ""
  loc_AEA6C3: LitI2_Byte &HFF
  loc_AEA6C5: IStI2 Cancel
  loc_AEA6C8: ExitProcHresult
  loc_AEA6C9: FLdPr Me
  loc_AEA6CC: MemLdI2 global_56
  loc_AEA6CF: LitI2_Byte 2
  loc_AEA6D1: EqI2
  loc_AEA6D2: BranchF loc_AEA754
  loc_AEA6D5: FLdRfVar var_8A
  loc_AEA6D8: FLdPr Me
  loc_AEA6DB: MemLdRfVar from_stack_1.global_52
  loc_AEA6DE: NewIfNullPr clsinteres
  loc_AEA6E1: from_stack_1 = clsinteres.CodiInte
  loc_AEA6E6: FLdRfVar var_90
  loc_AEA6E9: FLdPr Me
  loc_AEA6EC: VCallAd Control_ID_PorcInteTxt
  loc_AEA6EF: FStAdFunc var_88
  loc_AEA6F2: FLdPr var_88
  loc_AEA6F5:  = Me.Text
  loc_AEA6FA: ILdRf var_90
  loc_AEA6FD: CR8Str
  loc_AEA6FF: PopFPR8
  loc_AEA700: FLdI2 var_8A
  loc_AEA703: CStrUI1
  loc_AEA705: FStStrNoPop var_94
  loc_AEA708: ImpAdCallI2  = Proc_18_87_ACE780(, )
  loc_AEA70D: FStStrNoPop var_A8
  loc_AEA710: FLdPr Me
  loc_AEA713: MemStStrCopy
  loc_AEA717: FFreeStr var_94 = "": var_90 = ""
  loc_AEA720: FFree1Ad var_88
  loc_AEA723: FLdPr Me
  loc_AEA726: MemLdStr global_60
  loc_AEA729: LitStr vbNullString
  loc_AEA72C: NeStr
  loc_AEA72E: BranchF loc_AEA754
  loc_AEA731: FLdPr Me
  loc_AEA734: MemLdStr global_60
  loc_AEA737: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEA73C: FLdPr Me
  loc_AEA73F: VCallAd Control_ID_PorcInteTxt
  loc_AEA742: CVarAd
  loc_AEA746: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEA74B: FFree1Var var_A4 = ""
  loc_AEA74E: LitI2_Byte &HFF
  loc_AEA750: IStI2 Cancel
  loc_AEA753: ExitProcHresult
  loc_AEA754: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'A529FC
  'Data Table: 447EC8
  loc_A529A0: LitVarStr var_94, vbNullString
  loc_A529A5: PopAdLdVar
  loc_A529A6: FLdPr Me
  loc_A529A9: VCallAd Control_ID_FiltroMsk
  loc_A529AC: FStAdFunc var_A8
  loc_A529AF: FLdPr var_A8
  loc_A529B2: LateIdSt
  loc_A529B7: FFree1Ad var_A8
  loc_A529BA: FLdRfVar var_AA
  loc_A529BD: FLdPr Me
  loc_A529C0: VCallAd Control_ID_FiltroCbo
  loc_A529C3: FStAdFunc var_A8
  loc_A529C6: FLdPr var_A8
  loc_A529C9:  = Me.ListIndex
  loc_A529CE: FLdI2 var_AA
  loc_A529D1: FStI2 var_AC
  loc_A529D4: FFree1Ad var_A8
  loc_A529D7: FLdI2 var_AC
  loc_A529DA: LitI2_Byte 0
  loc_A529DC: EqI2
  loc_A529DD: BranchF loc_A529FA
  loc_A529E0: LitVarStr var_94, "##/##/####"
  loc_A529E5: PopAdLdVar
  loc_A529E6: FLdPr Me
  loc_A529E9: VCallAd Control_ID_FiltroMsk
  loc_A529EC: FStAdFunc var_A8
  loc_A529EF: FLdPr var_A8
  loc_A529F2: LateIdSt
  loc_A529F7: FFree1Ad var_A8
  loc_A529FA: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'AFA038
  'Data Table: 447EC8
  loc_AF9E74: FLdPr Me
  loc_AF9E77: VCallAd Control_ID_FiltroMsk
  loc_AF9E7A: FStAdFunc var_88
  loc_AF9E7D: FLdPr var_88
  loc_AF9E80: LateIdLdVar var_98 DispID_22 0
  loc_AF9E87: CStrVarTmp
  loc_AF9E88: FStStrNoPop var_9C
  loc_AF9E8B: LitStr vbNullString
  loc_AF9E8E: NeStr
  loc_AF9E90: FFree1Str var_9C
  loc_AF9E93: FFree1Ad var_88
  loc_AF9E96: FFree1Var var_98 = ""
  loc_AF9E99: BranchF loc_AF9F5D
  loc_AF9E9C: FLdRfVar var_9E
  loc_AF9E9F: FLdPr Me
  loc_AF9EA2: VCallAd Control_ID_FiltroCbo
  loc_AF9EA5: FStAdFunc var_88
  loc_AF9EA8: FLdPr var_88
  loc_AF9EAB:  = Me.ListIndex
  loc_AF9EB0: FLdI2 var_9E
  loc_AF9EB3: LitI2_Byte 0
  loc_AF9EB5: EqI2
  loc_AF9EB6: FFree1Ad var_88
  loc_AF9EB9: BranchF loc_AF9F5A
  loc_AF9EBC: FLdPr Me
  loc_AF9EBF: VCallAd Control_ID_FiltroMsk
  loc_AF9EC2: FStAdFunc var_88
  loc_AF9EC5: FLdPr var_88
  loc_AF9EC8: LateIdLdVar var_98 DispID_15 0
  loc_AF9ECF: CStrVarTmp
  loc_AF9ED0: CVarStr var_B0
  loc_AF9ED3: ImpAdCallI2 IsDate()
  loc_AF9ED8: FFree1Ad var_88
  loc_AF9EDB: FFreeVar var_98 = ""
  loc_AF9EE2: BranchF loc_AF9F5A
  loc_AF9EE5: LitStr "FechInte >= #"
  loc_AF9EE8: FLdPr Me
  loc_AF9EEB: VCallAd Control_ID_FiltroMsk
  loc_AF9EEE: FStAdFunc var_88
  loc_AF9EF1: FLdPr var_88
  loc_AF9EF4: LateIdLdVar var_98 DispID_15 0
  loc_AF9EFB: CStrVarTmp
  loc_AF9EFC: FStStrNoPop var_9C
  loc_AF9EFF: ConcatStr
  loc_AF9F00: FStStrNoPop var_B4
  loc_AF9F03: LitStr "#"
  loc_AF9F06: ConcatStr
  loc_AF9F07: PopTmpLdAdStr
  loc_AF9F0B: FLdPr Me
  loc_AF9F0E: MemLdRfVar from_stack_1.global_52
  loc_AF9F11: NewIfNullPr clsinteres
  loc_AF9F14: Call clsinteres.Filter(from_stack_1v)
  loc_AF9F19: FFreeStr var_9C = "": var_B4 = ""
  loc_AF9F22: FFree1Ad var_88
  loc_AF9F25: FFree1Var var_98 = ""
  loc_AF9F28: LitStr "Fecha es igual a: "
  loc_AF9F2B: FLdPr Me
  loc_AF9F2E: VCallAd Control_ID_FiltroMsk
  loc_AF9F31: FStAdFunc var_88
  loc_AF9F34: FLdPr var_88
  loc_AF9F37: LateIdLdVar var_98 DispID_15 0
  loc_AF9F3E: CStrVarTmp
  loc_AF9F3F: FStStrNoPop var_9C
  loc_AF9F42: ConcatStr
  loc_AF9F43: FStStrNoPop var_B4
  loc_AF9F46: FLdPr Me
  loc_AF9F49: MemStStrCopy
  loc_AF9F4D: FFreeStr var_9C = ""
  loc_AF9F54: FFree1Ad var_88
  loc_AF9F57: FFree1Var var_98 = ""
  loc_AF9F5A: Branch loc_AF9F81
  loc_AF9F5D: LitStr vbNullString
  loc_AF9F60: FStStrCopy var_9C
  loc_AF9F63: FLdRfVar var_9C
  loc_AF9F66: FLdPr Me
  loc_AF9F69: MemLdRfVar from_stack_1.global_52
  loc_AF9F6C: NewIfNullPr clsinteres
  loc_AF9F6F: Call clsinteres.Filter(from_stack_1v)
  loc_AF9F74: FFree1Str var_9C
  loc_AF9F77: LitStr vbNullString
  loc_AF9F7A: FLdPr Me
  loc_AF9F7D: MemStStrCopy
  loc_AF9F81: FLdRfVar var_BC
  loc_AF9F84: FLdPr Me
  loc_AF9F87: MemLdRfVar from_stack_1.global_52
  loc_AF9F8A: NewIfNullPr clsinteres
  loc_AF9F8D: from_stack_1 = clsinteres.RecordCount
  loc_AF9F92: ILdRf var_BC
  loc_AF9F95: LitI4 0
  loc_AF9F9A: GtI4
  loc_AF9F9B: BranchF loc_AF9FFF
  loc_AF9F9E: LitI4 0
  loc_AF9FA3: LitI4 1
  loc_AF9FA8: FLdRfVar var_C0
  loc_AF9FAB: Redim
  loc_AF9FB5: FLdPr Me
  loc_AF9FB8: MemLdRfVar from_stack_1.global_52
  loc_AF9FBB: NewIfNullAd
  loc_AF9FBE: FStAd var_88 
  loc_AF9FC2: FLdRfVar var_88
  loc_AF9FC5: CVarRef
  loc_AF9FCA: ParmAry1St
  loc_AF9FD0: FLdPr Me
  loc_AF9FD3: VCallAd Control_ID_dgdABMS
  loc_AF9FD6: CVarAd
  loc_AF9FDA: ParmAry1St
  loc_AF9FE0: FLdRfVar var_C0
  loc_AF9FE3: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AF9FE8: ILdRf var_88
  loc_AF9FEB: CastAd
  loc_AF9FEE: FLdPr Me
  loc_AF9FF1: MemStAdFunc
  loc_AF9FF5: FLdRfVar var_C0
  loc_AF9FF8: Erase
  loc_AF9FF9: FFree1Ad var_88
  loc_AF9FFC: Branch loc_AFA013
  loc_AF9FFF: ILdRf Me
  loc_AFA002: CastAd
  loc_AFA005: FStAdFunc var_88
  loc_AFA008: FLdRfVar var_88
  loc_AFA00B: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_AFA010: FFree1Ad var_88
  loc_AFA013: FLdPr Me
  loc_AFA016: VCallAd Control_ID_dgdABMS
  loc_AFA019: FStAdFunc var_D4
  loc_AFA01C: FLdPr Me
  loc_AFA01F: MemLdStr global_64
  loc_AFA022: FLdZeroAd var_D4
  loc_AFA025: FStAdFunc var_88
  loc_AFA028: FLdRfVar var_88
  loc_AFA02B: ImpAdCallFPR4 Proc_272_56_ACCA08(, )
  loc_AFA030: FFreeAd var_88 = ""
  loc_AFA037: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9D162C
  'Data Table: 447EC8
  loc_9D1614: FLdPr Me
  loc_9D1617: VCallAd Control_ID_dgdABMS
  loc_9D161A: FStAdFunc var_88
  loc_9D161D: FLdRfVar var_88
  loc_9D1620: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9D1625: FFree1Ad var_88
  loc_9D1628: ExitProcHresult
  loc_9D1629: Ary1LdFPR8
  loc_9D162A: ImpAdLdFPR4 MemVar_4011A6
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9D14FC
  'Data Table: 447EC8
  loc_9D14E4: FLdPr Me
  loc_9D14E7: VCallAd Control_ID_dgdABMS
  loc_9D14EA: FStAdFunc var_88
  loc_9D14ED: FLdRfVar var_88
  loc_9D14F0: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9D14F5: FFree1Ad var_88
  loc_9D14F8: ExitProcHresult
  loc_9D14F9: GeCy
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A68F0C
  'Data Table: 447EC8
  loc_A68EB0: FLdRfVar var_B4
  loc_A68EB3: FLdRfVar var_B0
  loc_A68EB6: FLdI2 ColIndex
  loc_A68EB9: CVarI2 var_A8
  loc_A68EBC: PopAdLdVar
  loc_A68EBD: FLdPr Me
  loc_A68EC0: VCallAd Control_ID_dgdABMS
  loc_A68EC3: FStAdFunc var_88
  loc_A68EC6: FLdPr var_88
  loc_A68EC9: LateIdLdVar var_98 DispID_105 0
  loc_A68ED0: CastAdVar Me
  loc_A68ED4: FStAdFunc var_AC
  loc_A68ED7: FLdPr var_AC
  loc_A68EDA: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A68EDF: FLdPr var_B0
  loc_A68EE2:  = Me.DataField
  loc_A68EE7: FLdZeroAd var_B4
  loc_A68EEA: PopTmpLdAdStr
  loc_A68EEE: FLdPr Me
  loc_A68EF1: MemLdRfVar from_stack_1.global_52
  loc_A68EF4: NewIfNullPr clsinteres
  loc_A68EF7: Call clsinteres.Sort(from_stack_1v)
  loc_A68EFC: FFree1Str var_B8
  loc_A68EFF: FFreeAd var_88 = "": var_AC = ""
  loc_A68F08: FFree1Var var_98 = ""
  loc_A68F0B: ExitProcHresult
End Sub

Private Sub FechInteMsk_UnknownEvent_0 '9C2258
  'Data Table: 447EC8
  loc_9C2244: FLdPr Me
  loc_9C2247: VCallAd Control_ID_FechInteMsk
  loc_9C224A: CVarAd
  loc_9C224E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2253: FFree1Var var_94 = ""
  loc_9C2256: ExitProcHresult
End Sub

Private Sub FechInteMsk_UnknownEvent_8 'AF0A50
  'Data Table: 447EC8
  loc_AF08B4: FLdRfVar var_8A
  loc_AF08B7: FLdPr Me
  loc_AF08BA: VCallAd Control_ID_cmdCancelar
  loc_AF08BD: FStAdFunc var_88
  loc_AF08C0: FLdPr var_88
  loc_AF08C3:  = Me.Value
  loc_AF08C8: FLdI2 var_8A
  loc_AF08CB: NotI4
  loc_AF08CC: FLdPr Me
  loc_AF08CF: VCallAd Control_ID_FechInteMsk
  loc_AF08D2: FStAdFunc var_90
  loc_AF08D5: FLdPr var_90
  loc_AF08D8: LateIdLdVar var_A0 DispID_13 -32767
  loc_AF08DF: CBoolVar
  loc_AF08E1: AndI4
  loc_AF08E2: FFreeAd var_88 = ""
  loc_AF08E9: FFree1Var var_A0 = ""
  loc_AF08EC: BranchF loc_AF0A4E
  loc_AF08EF: FLdPr Me
  loc_AF08F2: VCallAd Control_ID_FechInteMsk
  loc_AF08F5: FStAdFunc var_88
  loc_AF08F8: FLdPr var_88
  loc_AF08FB: LateIdLdVar var_A0 DispID_15 0
  loc_AF0902: CStrVarTmp
  loc_AF0903: FStStrNoPop var_A4
  loc_AF0906: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_AF090B: FStStrNoPop var_A8
  loc_AF090E: FLdPr Me
  loc_AF0911: MemStStrCopy
  loc_AF0915: FFreeStr var_A4 = ""
  loc_AF091C: FFree1Ad var_88
  loc_AF091F: FFree1Var var_A0 = ""
  loc_AF0922: FLdPr Me
  loc_AF0925: MemLdStr global_60
  loc_AF0928: LitStr vbNullString
  loc_AF092B: NeStr
  loc_AF092D: BranchF loc_AF0953
  loc_AF0930: FLdPr Me
  loc_AF0933: MemLdStr global_60
  loc_AF0936: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF093B: FLdPr Me
  loc_AF093E: VCallAd Control_ID_FechInteMsk
  loc_AF0941: CVarAd
  loc_AF0945: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF094A: FFree1Var var_A0 = ""
  loc_AF094D: LitI2_Byte &HFF
  loc_AF094F: IStI2 ColIndex
  loc_AF0952: ExitProcHresult
  loc_AF0953: FLdPr Me
  loc_AF0956: MemLdI2 global_56
  loc_AF0959: LitI2_Byte 1
  loc_AF095B: EqI2
  loc_AF095C: BranchF loc_AF09C3
  loc_AF095F: FLdPr Me
  loc_AF0962: VCallAd Control_ID_FechInteMsk
  loc_AF0965: FStAdFunc var_88
  loc_AF0968: FLdPr var_88
  loc_AF096B: LateIdLdVar var_A0 DispID_15 0
  loc_AF0972: CStrVarTmp
  loc_AF0973: FStStrNoPop var_A4
  loc_AF0976: ImpAdCallI2 Proc_18_84_A7DE34()
  loc_AF097B: FStStrNoPop var_A8
  loc_AF097E: FLdPr Me
  loc_AF0981: MemStStrCopy
  loc_AF0985: FFreeStr var_A4 = ""
  loc_AF098C: FFree1Ad var_88
  loc_AF098F: FFree1Var var_A0 = ""
  loc_AF0992: FLdPr Me
  loc_AF0995: MemLdStr global_60
  loc_AF0998: LitStr vbNullString
  loc_AF099B: NeStr
  loc_AF099D: BranchF loc_AF09C3
  loc_AF09A0: FLdPr Me
  loc_AF09A3: MemLdStr global_60
  loc_AF09A6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF09AB: FLdPr Me
  loc_AF09AE: VCallAd Control_ID_FechInteMsk
  loc_AF09B1: CVarAd
  loc_AF09B5: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF09BA: FFree1Var var_A0 = ""
  loc_AF09BD: LitI2_Byte &HFF
  loc_AF09BF: IStI2 ColIndex
  loc_AF09C2: ExitProcHresult
  loc_AF09C3: FLdPr Me
  loc_AF09C6: MemLdI2 global_56
  loc_AF09C9: LitI2_Byte 2
  loc_AF09CB: EqI2
  loc_AF09CC: BranchF loc_AF0A4E
  loc_AF09CF: FLdRfVar var_8A
  loc_AF09D2: FLdPr Me
  loc_AF09D5: MemLdRfVar from_stack_1.global_52
  loc_AF09D8: NewIfNullPr clsinteres
  loc_AF09DB: from_stack_1 = clsinteres.CodiInte
  loc_AF09E0: FLdPr Me
  loc_AF09E3: VCallAd Control_ID_FechInteMsk
  loc_AF09E6: FStAdFunc var_88
  loc_AF09E9: FLdPr var_88
  loc_AF09EC: LateIdLdVar var_A0 DispID_15 0
  loc_AF09F3: CStrVarTmp
  loc_AF09F4: FStStrNoPop var_A8
  loc_AF09F7: FLdI2 var_8A
  loc_AF09FA: CStrUI1
  loc_AF09FC: FStStrNoPop var_A4
  loc_AF09FF: ImpAdCallI2 Proc_18_85_AD4EB0(, )
  loc_AF0A04: FStStrNoPop var_AC
  loc_AF0A07: FLdPr Me
  loc_AF0A0A: MemStStrCopy
  loc_AF0A0E: FFreeStr var_A4 = "": var_A8 = ""
  loc_AF0A17: FFree1Ad var_88
  loc_AF0A1A: FFree1Var var_A0 = ""
  loc_AF0A1D: FLdPr Me
  loc_AF0A20: MemLdStr global_60
  loc_AF0A23: LitStr vbNullString
  loc_AF0A26: NeStr
  loc_AF0A28: BranchF loc_AF0A4E
  loc_AF0A2B: FLdPr Me
  loc_AF0A2E: MemLdStr global_60
  loc_AF0A31: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF0A36: FLdPr Me
  loc_AF0A39: VCallAd Control_ID_FechInteMsk
  loc_AF0A3C: CVarAd
  loc_AF0A40: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF0A45: FFree1Var var_A0 = ""
  loc_AF0A48: LitI2_Byte &HFF
  loc_AF0A4A: IStI2 ColIndex
  loc_AF0A4D: ExitProcHresult
  loc_AF0A4E: ExitProcHresult
End Sub

Private Sub FechInteMsk_KeyPress(KeyAscii As Integer) 'A1E754
  'Data Table: 447EC8
  loc_A1E710: ILdI2 KeyAscii
  loc_A1E713: CI4UI1
  loc_A1E714: LitI4 &H20
  loc_A1E719: EqI4
  loc_A1E71A: BranchF loc_A1E750
  loc_A1E71D: LitVar_Missing var_A4
  loc_A1E720: PopAdLdVar
  loc_A1E721: LitVarI4
  loc_A1E729: PopAdLdVar
  loc_A1E72A: ImpAdLdRf MemVar_D930A4
  loc_A1E72D: NewIfNullPr frmCalendario
  loc_A1E730: frmCalendario.Show from_stack_1, from_stack_2
  loc_A1E735: ImpAdLdRf MemVar_D93028
  loc_A1E738: CDargRef
  loc_A1E73C: FLdPr Me
  loc_A1E73F: VCallAd Control_ID_FechInteMsk
  loc_A1E742: FStAdFunc var_A8
  loc_A1E745: FLdPr var_A8
  loc_A1E748: LateIdSt
  loc_A1E74D: FFree1Ad var_A8
  loc_A1E750: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B764FC
  'Data Table: 447EC8
  loc_B76040: ILdRf Button
  loc_B76043: FStAd var_88 
  loc_B76047: FLdRfVar var_90
  loc_B7604A: FLdPr var_88
  loc_B7604D:  = Me.Key
  loc_B76052: FLdZeroAd var_90
  loc_B76055: FStStr var_94
  loc_B76058: ILdRf var_94
  loc_B7605B: LitStr "btnCrear"
  loc_B7605E: EqStr
  loc_B76060: BranchF loc_B761E1
  loc_B76063: LitI2_Byte 1
  loc_B76065: FLdPr Me
  loc_B76068: MemStI2 global_56
  loc_B7606B: ILdRf Me
  loc_B7606E: CastAd
  loc_B76071: FStAdFunc var_98
  loc_B76074: FLdRfVar var_98
  loc_B76077: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B7607C: FFree1Ad var_98
  loc_B7607F: LitI4 0
  loc_B76084: LitI4 0
  loc_B76089: FLdRfVar var_9C
  loc_B7608C: Redim
  loc_B76096: FLdPr Me
  loc_B76099: VCallAd Control_ID_dgdABMS
  loc_B7609C: CVarAd
  loc_B760A0: ParmAry1St
  loc_B760A6: FLdRfVar var_9C
  loc_B760A9: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B760AE: FLdRfVar var_9C
  loc_B760B1: Erase
  loc_B760B2: ILdRf Me
  loc_B760B5: CastAd
  loc_B760B8: FStAdFunc var_98
  loc_B760BB: FLdRfVar var_98
  loc_B760BE: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B760C3: FFree1Ad var_98
  loc_B760C6: ILdRf Me
  loc_B760C9: CastAd
  loc_B760CC: FStAdFunc var_98
  loc_B760CF: FLdRfVar var_98
  loc_B760D2: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B760D7: FFree1Ad var_98
  loc_B760DA: LitI2_Byte 0
  loc_B760DC: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B760E1: CStrDate
  loc_B760E3: CVarStr var_AC
  loc_B760E6: PopAdLdVar
  loc_B760E7: FLdPr Me
  loc_B760EA: VCallAd Control_ID_FechInteMsk
  loc_B760ED: FStAdFunc var_98
  loc_B760F0: FLdPr var_98
  loc_B760F3: LateIdSt
  loc_B760F8: FFree1Ad var_98
  loc_B760FB: FFree1Var var_AC = ""
  loc_B760FE: FLdRfVar var_C4
  loc_B76101: LitI4 0
  loc_B76106: FLdPr Me
  loc_B76109: MemLdRfVar from_stack_1.global_52
  loc_B7610C: NewIfNullPr clsinteres
  loc_B7610F: from_stack_2v = clsinteres.BuscaInteresNew(from_stack_1v)
  loc_B76114: FLdRfVar var_C4
  loc_B76117: LitI4 0
  loc_B7611C: FLdPr Me
  loc_B7611F: MemLdRfVar from_stack_1.global_52
  loc_B76122: NewIfNullPr clsinteres
  loc_B76125: from_stack_2v = clsinteres.BuscaInteresNew(from_stack_1v)
  loc_B7612A: LitI4 1
  loc_B7612F: LitI4 1
  loc_B76134: LitVarStr var_D4, "0.0000"
  loc_B76139: FStVarCopyObj var_E4
  loc_B7613C: FLdRfVar var_E4
  loc_B7613F: FLdFPR8 var_C4
  loc_B76142: CVarR8
  loc_B76146: FLdRfVar var_F4
  loc_B76149: ImpAdCallFPR4  = Format(, )
  loc_B7614E: FLdRfVar var_F4
  loc_B76151: CStrVarVal var_90
  loc_B76155: FLdPr Me
  loc_B76158: VCallAd Control_ID_PorcInteTxt
  loc_B7615B: FStAdFunc var_98
  loc_B7615E: FLdPr var_98
  loc_B76161: Me.Text = from_stack_1
  loc_B76166: FFree1Str var_90
  loc_B76169: FFree1Ad var_98
  loc_B7616C: FFreeVar var_AC = "": var_E4 = ""
  loc_B76175: ILdRf Me
  loc_B76178: CastAd
  loc_B7617B: FStAdFunc var_98
  loc_B7617E: FLdRfVar var_98
  loc_B76181: ImpAdCallFPR4 Proc_272_17_A8BE98()
  loc_B76186: FFree1Ad var_98
  loc_B76189: FLdPr Me
  loc_B7618C: VCallAd Control_ID_FechInteMsk
  loc_B7618F: CVarAd
  loc_B76193: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B76198: FFree1Var var_AC = ""
  loc_B7619B: LitI4 0
  loc_B761A0: LitI4 1
  loc_B761A5: FLdRfVar var_9C
  loc_B761A8: Redim
  loc_B761B2: FLdPr Me
  loc_B761B5: VCallAd Control_ID_FiltroCbo
  loc_B761B8: CVarAd
  loc_B761BC: ParmAry1St
  loc_B761C2: FLdPr Me
  loc_B761C5: VCallAd Control_ID_FiltroMsk
  loc_B761C8: CVarAd
  loc_B761CC: ParmAry1St
  loc_B761D2: FLdRfVar var_9C
  loc_B761D5: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B761DA: FLdRfVar var_9C
  loc_B761DD: Erase
  loc_B761DE: Branch loc_B764F9
  loc_B761E1: ILdRf var_94
  loc_B761E4: LitStr "btnModificar"
  loc_B761E7: EqStr
  loc_B761E9: BranchF loc_B762C6
  loc_B761EC: FLdRfVar var_F8
  loc_B761EF: FLdPr Me
  loc_B761F2: MemLdRfVar from_stack_1.global_52
  loc_B761F5: NewIfNullPr clsinteres
  loc_B761F8: from_stack_1 = clsinteres.RecordCount
  loc_B761FD: ILdRf var_F8
  loc_B76200: LitI4 0
  loc_B76205: GtI4
  loc_B76206: BranchF loc_B762C3
  loc_B76209: LitI2_Byte 2
  loc_B7620B: FLdPr Me
  loc_B7620E: MemStI2 global_56
  loc_B76211: ILdRf Me
  loc_B76214: CastAd
  loc_B76217: FStAdFunc var_98
  loc_B7621A: FLdRfVar var_98
  loc_B7621D: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B76222: FFree1Ad var_98
  loc_B76225: LitI4 0
  loc_B7622A: LitI4 0
  loc_B7622F: FLdRfVar var_9C
  loc_B76232: Redim
  loc_B7623C: FLdPr Me
  loc_B7623F: VCallAd Control_ID_dgdABMS
  loc_B76242: CVarAd
  loc_B76246: ParmAry1St
  loc_B7624C: FLdRfVar var_9C
  loc_B7624F: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B76254: FLdRfVar var_9C
  loc_B76257: Erase
  loc_B76258: ILdRf Me
  loc_B7625B: CastAd
  loc_B7625E: FStAdFunc var_98
  loc_B76261: FLdRfVar var_98
  loc_B76264: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B76269: FFree1Ad var_98
  loc_B7626C: ILdRf Me
  loc_B7626F: CastAd
  loc_B76272: FStAdFunc var_98
  loc_B76275: FLdRfVar var_98
  loc_B76278: ImpAdCallFPR4 Proc_272_17_A8BE98()
  loc_B7627D: FFree1Ad var_98
  loc_B76280: LitI4 0
  loc_B76285: LitI4 1
  loc_B7628A: FLdRfVar var_9C
  loc_B7628D: Redim
  loc_B76297: FLdPr Me
  loc_B7629A: VCallAd Control_ID_FiltroCbo
  loc_B7629D: CVarAd
  loc_B762A1: ParmAry1St
  loc_B762A7: FLdPr Me
  loc_B762AA: VCallAd Control_ID_FiltroMsk
  loc_B762AD: CVarAd
  loc_B762B1: ParmAry1St
  loc_B762B7: FLdRfVar var_9C
  loc_B762BA: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B762BF: FLdRfVar var_9C
  loc_B762C2: Erase
  loc_B762C3: Branch loc_B764F9
  loc_B762C6: ILdRf var_94
  loc_B762C9: LitStr "btnEliminar"
  loc_B762CC: EqStr
  loc_B762CE: BranchF loc_B762D4
  loc_B762D1: Branch loc_B764F9
  loc_B762D4: ILdRf var_94
  loc_B762D7: LitStr "btnGuardar"
  loc_B762DA: EqStr
  loc_B762DC: BranchF loc_B763F5
  loc_B762DF: LitI2_Byte 0
  loc_B762E1: PopTmpLdAd2 var_FA
  loc_B762E4: Call FechInteMsk_UnknownEvent_8()
  loc_B762E9: FLdPr Me
  loc_B762EC: MemLdStr global_60
  loc_B762EF: LitStr vbNullString
  loc_B762F2: NeStr
  loc_B762F4: BranchF loc_B762F8
  loc_B762F7: ExitProcHresult
  loc_B762F8: LitI2_Byte 0
  loc_B762FA: PopTmpLdAd2 var_FA
  loc_B762FD: Call PorcInteTxt_Validate(from_stack_1v)
  loc_B76302: FLdPr Me
  loc_B76305: MemLdStr global_60
  loc_B76308: LitStr vbNullString
  loc_B7630B: NeStr
  loc_B7630D: BranchF loc_B76311
  loc_B76310: ExitProcHresult
  loc_B76311: FLdPr Me
  loc_B76314: MemLdI2 global_56
  loc_B76317: FStI2 var_FC
  loc_B7631A: FLdI2 var_FC
  loc_B7631D: LitI2_Byte 1
  loc_B7631F: EqI2
  loc_B76320: BranchF loc_B7637B
  loc_B76323: FLdPr Me
  loc_B76326: VCallAd Control_ID_FechInteMsk
  loc_B76329: FStAdFunc var_98
  loc_B7632C: FLdPr var_98
  loc_B7632F: LateIdLdVar var_AC DispID_15 0
  loc_B76336: PopAd
  loc_B76338: FLdRfVar var_90
  loc_B7633B: FLdPr Me
  loc_B7633E: VCallAd Control_ID_PorcInteTxt
  loc_B76341: FStAdFunc var_100
  loc_B76344: FLdPr var_100
  loc_B76347:  = Me.Text
  loc_B7634C: ILdRf var_90
  loc_B7634F: CR8Str
  loc_B76351: PopFPR8
  loc_B76352: FLdRfVar var_AC
  loc_B76355: CStrVarTmp
  loc_B76356: FStStrNoPop var_104
  loc_B76359: FLdPr Me
  loc_B7635C: MemLdRfVar from_stack_1.global_52
  loc_B7635F: NewIfNullPr clsinteres
  loc_B76362: Call clsinteres.AddNew(from_stack_1v, from_stack_2v)
  loc_B76367: FFreeStr var_104 = ""
  loc_B7636E: FFreeAd var_98 = ""
  loc_B76375: FFree1Var var_AC = ""
  loc_B76378: Branch loc_B763ED
  loc_B7637B: FLdI2 var_FC
  loc_B7637E: LitI2_Byte 2
  loc_B76380: EqI2
  loc_B76381: BranchF loc_B763ED
  loc_B76384: FLdRfVar var_FA
  loc_B76387: FLdPr Me
  loc_B7638A: MemLdRfVar from_stack_1.global_52
  loc_B7638D: NewIfNullPr clsinteres
  loc_B76390: from_stack_1 = clsinteres.CodiInte
  loc_B76395: FLdPr Me
  loc_B76398: VCallAd Control_ID_FechInteMsk
  loc_B7639B: FStAdFunc var_98
  loc_B7639E: FLdPr var_98
  loc_B763A1: LateIdLdVar var_AC DispID_15 0
  loc_B763A8: PopAd
  loc_B763AA: FLdRfVar var_90
  loc_B763AD: FLdPr Me
  loc_B763B0: VCallAd Control_ID_PorcInteTxt
  loc_B763B3: FStAdFunc var_100
  loc_B763B6: FLdPr var_100
  loc_B763B9:  = Me.Text
  loc_B763BE: ILdRf var_90
  loc_B763C1: CR8Str
  loc_B763C3: PopFPR8
  loc_B763C4: FLdRfVar var_AC
  loc_B763C7: CStrVarTmp
  loc_B763C8: FStStrNoPop var_104
  loc_B763CB: FLdI2 var_FA
  loc_B763CE: FLdPr Me
  loc_B763D1: MemLdRfVar from_stack_1.global_52
  loc_B763D4: NewIfNullPr clsinteres
  loc_B763D7: Call clsinteres.Modificar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B763DC: FFreeStr var_104 = ""
  loc_B763E3: FFreeAd var_98 = ""
  loc_B763EA: FFree1Var var_AC = ""
  loc_B763ED: Call cmdCancelar_Click()
  loc_B763F2: Branch loc_B764F9
  loc_B763F5: ILdRf var_94
  loc_B763F8: LitStr "btnCancelar"
  loc_B763FB: EqStr
  loc_B763FD: BranchF loc_B76408
  loc_B76400: Call cmdCancelar_Click()
  loc_B76405: Branch loc_B764F9
  loc_B76408: ILdRf var_94
  loc_B7640B: LitStr "btnPrimero"
  loc_B7640E: EqStr
  loc_B76410: BranchF loc_B76424
  loc_B76413: FLdPr Me
  loc_B76416: MemLdRfVar from_stack_1.global_52
  loc_B76419: NewIfNullPr clsinteres
  loc_B7641C: Call clsinteres.MoveFirst()
  loc_B76421: Branch loc_B764F9
  loc_B76424: ILdRf var_94
  loc_B76427: LitStr "btnAnterior"
  loc_B7642A: EqStr
  loc_B7642C: BranchF loc_B76440
  loc_B7642F: FLdPr Me
  loc_B76432: MemLdRfVar from_stack_1.global_52
  loc_B76435: NewIfNullPr clsinteres
  loc_B76438: Call clsinteres.MovePrevious()
  loc_B7643D: Branch loc_B764F9
  loc_B76440: ILdRf var_94
  loc_B76443: LitStr "btnSiguiente"
  loc_B76446: EqStr
  loc_B76448: BranchF loc_B7645C
  loc_B7644B: FLdPr Me
  loc_B7644E: MemLdRfVar from_stack_1.global_52
  loc_B76451: NewIfNullPr clsinteres
  loc_B76454: Call clsinteres.MoveNext()
  loc_B76459: Branch loc_B764F9
  loc_B7645C: ILdRf var_94
  loc_B7645F: LitStr "btnUltimo"
  loc_B76462: EqStr
  loc_B76464: BranchF loc_B76478
  loc_B76467: FLdPr Me
  loc_B7646A: MemLdRfVar from_stack_1.global_52
  loc_B7646D: NewIfNullPr clsinteres
  loc_B76470: Call clsinteres.MoveLast()
  loc_B76475: Branch loc_B764F9
  loc_B76478: ILdRf var_94
  loc_B7647B: LitStr "btnFiltrar"
  loc_B7647E: EqStr
  loc_B76480: BranchF loc_B76486
  loc_B76483: Branch loc_B764F9
  loc_B76486: ILdRf var_94
  loc_B76489: LitStr "btnBuscar"
  loc_B7648C: EqStr
  loc_B7648E: BranchF loc_B76494
  loc_B76491: Branch loc_B764F9
  loc_B76494: ILdRf var_94
  loc_B76497: LitStr "btnImprimir"
  loc_B7649A: EqStr
  loc_B7649C: BranchF loc_B764A2
  loc_B7649F: Branch loc_B764F9
  loc_B764A2: ILdRf var_94
  loc_B764A5: LitStr "btnAyuda"
  loc_B764A8: EqStr
  loc_B764AA: BranchF loc_B764D9
  loc_B764AD: LitVar_Missing var_134
  loc_B764B0: LitVar_Missing var_F4
  loc_B764B3: LitVar_Missing var_E4
  loc_B764B6: LitI4 0
  loc_B764BB: LitVarStr var_BC, "Opcion no disponible en esta version."
  loc_B764C0: FStVarCopyObj var_AC
  loc_B764C3: FLdRfVar var_AC
  loc_B764C6: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B764CB: FFreeVar var_AC = "": var_E4 = "": var_F4 = ""
  loc_B764D6: Branch loc_B764F9
  loc_B764D9: ILdRf var_94
  loc_B764DC: LitStr "btnSalir"
  loc_B764DF: EqStr
  loc_B764E1: BranchF loc_B764F9
  loc_B764E4: ILdRf Me
  loc_B764E7: FStAdNoPop
  loc_B764EB: ImpAdLdRf MemVar_D9C5D8
  loc_B764EE: NewIfNullPr Global
  loc_B764F1: Global.Unload from_stack_1
  loc_B764F6: FFree1Ad var_98
  loc_B764F9: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'AB9554
  'Data Table: 447EC8
  loc_AB9470: LitI2_Byte 0
  loc_AB9472: FLdPr Me
  loc_AB9475: MemStI2 global_56
  loc_AB9478: LitI2_Byte 0
  loc_AB947A: ILdRf Me
  loc_AB947D: CastAd
  loc_AB9480: FStAdFunc var_88
  loc_AB9483: FLdRfVar var_88
  loc_AB9486: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AB948B: FFree1Ad var_88
  loc_AB948E: LitI4 0
  loc_AB9493: LitI4 0
  loc_AB9498: FLdRfVar var_8C
  loc_AB949B: Redim
  loc_AB94A5: FLdPr Me
  loc_AB94A8: VCallAd Control_ID_dgdABMS
  loc_AB94AB: CVarAd
  loc_AB94AF: ParmAry1St
  loc_AB94B5: FLdRfVar var_8C
  loc_AB94B8: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AB94BD: FLdRfVar var_8C
  loc_AB94C0: Erase
  loc_AB94C1: FLdPr Me
  loc_AB94C4: MemLdRfVar from_stack_1.global_52
  loc_AB94C7: NewIfNullAd
  loc_AB94CA: FStAd var_A0 
  loc_AB94CE: FLdRfVar var_A0
  loc_AB94D1: CVarRef
  loc_AB94D6: ILdRf Me
  loc_AB94D9: CastAd
  loc_AB94DC: FStAdFunc var_88
  loc_AB94DF: FLdRfVar var_88
  loc_AB94E2: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_AB94E7: ILdRf var_A0
  loc_AB94EA: CastAd
  loc_AB94ED: FLdPr Me
  loc_AB94F0: MemStAdFunc
  loc_AB94F4: FFreeAd var_88 = ""
  loc_AB94FB: ILdRf Me
  loc_AB94FE: CastAd
  loc_AB9501: FStAdFunc var_88
  loc_AB9504: FLdRfVar var_88
  loc_AB9507: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AB950C: FFree1Ad var_88
  loc_AB950F: LitI4 0
  loc_AB9514: LitI4 1
  loc_AB9519: FLdRfVar var_8C
  loc_AB951C: Redim
  loc_AB9526: FLdPr Me
  loc_AB9529: VCallAd Control_ID_FiltroCbo
  loc_AB952C: CVarAd
  loc_AB9530: ParmAry1St
  loc_AB9536: FLdPr Me
  loc_AB9539: VCallAd Control_ID_FiltroMsk
  loc_AB953C: CVarAd
  loc_AB9540: ParmAry1St
  loc_AB9546: FLdRfVar var_8C
  loc_AB9549: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AB954E: FLdRfVar var_8C
  loc_AB9551: Erase
  loc_AB9552: ExitProcHresult
End Sub

Private Sub Form_Load() 'AA67FC
  'Data Table: 447EC8
  loc_AA673C: LitI2_Byte 0
  loc_AA673E: CR8I2
  loc_AA673F: PopFPR4
  loc_AA6740: FLdPr Me
  loc_AA6743: Me.Left = from_stack_1s
  loc_AA6748: LitI2_Byte 0
  loc_AA674A: CR8I2
  loc_AA674B: PopFPR4
  loc_AA674C: FLdPr Me
  loc_AA674F: Me.Top = from_stack_1s
  loc_AA6754: LitStr "SELECT * FROM interes ORDER BY CodiInte"
  loc_AA6757: FLdPr Me
  loc_AA675A: MemLdRfVar from_stack_1.global_52
  loc_AA675D: NewIfNullPr clsinteres
  loc_AA6760: Call clsinteres.RedefineRS(from_stack_1v)
  loc_AA6765: LitI4 0
  loc_AA676A: LitI4 1
  loc_AA676F: FLdRfVar var_88
  loc_AA6772: Redim
  loc_AA677C: FLdPr Me
  loc_AA677F: MemLdRfVar from_stack_1.global_52
  loc_AA6782: NewIfNullAd
  loc_AA6785: FStAd var_8C 
  loc_AA6789: FLdRfVar var_8C
  loc_AA678C: CVarRef
  loc_AA6791: ParmAry1St
  loc_AA6797: FLdPr Me
  loc_AA679A: VCallAd Control_ID_dgdABMS
  loc_AA679D: CVarAd
  loc_AA67A1: ParmAry1St
  loc_AA67A7: FLdRfVar var_88
  loc_AA67AA: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AA67AF: ILdRf var_8C
  loc_AA67B2: CastAd
  loc_AA67B5: FLdPr Me
  loc_AA67B8: MemStAdFunc
  loc_AA67BC: FLdRfVar var_88
  loc_AA67BF: Erase
  loc_AA67C0: FFree1Ad var_8C
  loc_AA67C3: Call cmdCancelar_Click()
  loc_AA67C8: LitVarI2 var_9C, 0
  loc_AA67CD: PopAdLdVar
  loc_AA67CE: LitStr "Fecha"
  loc_AA67D1: FLdPr Me
  loc_AA67D4: VCallAd Control_ID_FiltroCbo
  loc_AA67D7: FStAdFunc var_8C
  loc_AA67DA: FLdPr var_8C
  loc_AA67DD: Me.AddItem from_stack_1, from_stack_2
  loc_AA67E2: FFree1Ad var_8C
  loc_AA67E5: LitI2_Byte 0
  loc_AA67E7: FLdPr Me
  loc_AA67EA: VCallAd Control_ID_FiltroCbo
  loc_AA67ED: FStAdFunc var_8C
  loc_AA67F0: FLdPr var_8C
  loc_AA67F3: Me.ListIndex = from_stack_1
  loc_AA67F8: FFree1Ad var_8C
  loc_AA67FB: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A64060
  'Data Table: 447EC8
  loc_A64004: FLdRfVar var_C2
  loc_A64007: FLdRfVar var_C0
  loc_A6400A: LitVarI2 var_B8, 1
  loc_A6400F: FLdPr Me
  loc_A64012: VCallAd Control_ID_tlbABMS
  loc_A64015: FStAdFunc var_88
  loc_A64018: FLdPr var_88
  loc_A6401B: LateIdLdVar var_98 DispID_3 0
  loc_A64022: CastAdVar Me
  loc_A64026: FStAdFunc var_BC
  loc_A64029: FLdPr var_BC
  loc_A6402C:  = Me.Buttons.ControlDefault
  loc_A64031: FLdPr var_C0
  loc_A64034:  = Me.Enabled
  loc_A64039: FLdI2 var_C2
  loc_A6403C: FFreeAd var_88 = "": var_BC = ""
  loc_A64045: FFreeVar var_98 = ""
  loc_A6404C: BranchF loc_A6405D
  loc_A6404F: FLdPr Me
  loc_A64052: MemLdRfVar from_stack_1.global_52
  loc_A64055: NewIfNullPr clsinteres
  loc_A64058: Call clsinteres.Requery()
  loc_A6405D: ExitProcHresult
  loc_A6405E: PopTmpLdAd2 arg_5003
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9C9A60
  'Data Table: 447EC8
  loc_9C9A48: ILdI2 KeyCode
  loc_9C9A4B: ILdRf Me
  loc_9C9A4E: CastAd
  loc_9C9A51: FStAdFunc var_88
  loc_9C9A54: FLdRfVar var_88
  loc_9C9A57: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9C9A5C: FFree1Ad var_88
  loc_9C9A5F: ExitProcHresult
End Sub
