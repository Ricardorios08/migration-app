VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Begin VB.Form frmProcesaPagosePagos
  Caption = "Busca y Procesa pagos de E-Pagos "
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 336
  ClientWidth = 14544
  ClientHeight = 5820
  Begin VB.Frame Frame1
    Caption = "Busca y Procesa los pago de E-PAGOS"
    Left = 1200
    Top = 600
    Width = 10935
    Height = 3615
    TabIndex = 8
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13,8
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.OptionButton OptEPagos
      Caption = "E-Pagos"
      Left = 2520
      Top = 480
      Width = 1332
      Height = 492
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
    Begin VB.OptionButton OptMacro
      Caption = "Macro"
      Left = 4680
      Top = 480
      Width = 1332
      Height = 492
      TabIndex = 10
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
    Begin VB.TextBox NumeAcpaTxt
      ForeColor = &HFF0000&
      Left = 2490
      Top = 2160
      Width = 495
      Height = 345
      TabIndex = 5
      MaxLength = 3
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
    Begin MSComctlLib.ProgressBar ProgressBar
      Left = 1200
      Top = 2880
      Width = 8775
      Height = 495
      Visible = 0   'False
      TabIndex = 9
      OleObjectBlob = "frmProcesaPagosePagos.frx":0000
    End
    Begin MSMask.MaskEdBox FeenAcpaMsk
      Left = 2520
      Top = 1680
      Width = 1335
      Height = 360
      TabIndex = 3
      OleObjectBlob = "frmProcesaPagosePagos.frx":0068
    End
    Begin MSMask.MaskEdBox FechProcMsk
      Left = 2520
      Top = 1080
      Width = 1332
      Height = 360
      TabIndex = 1
      OleObjectBlob = "frmProcesaPagosePagos.frx":0118
    End
    Begin VB.Label Label1
      Caption = "Fecha de Pagos:"
      Left = 600
      Top = 1080
      Width = 1800
      Height = 300
      TabIndex = 0
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
    Begin VB.Label Label2
      Caption = "Nro. de Grupo:"
      Left = 840
      Top = 2160
      Width = 1560
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
    Begin VB.Label Label7
      Caption = "Fecha de Envio:"
      Left = 600
      Top = 1680
      Width = 1710
      Height = 300
      TabIndex = 2
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
  Begin VB.CommandButton ConfirmarCmd
    Left = 5640
    Top = 4800
    Width = 1455
    Height = 615
    TabIndex = 6
    Picture = "frmProcesaPagosePagos.frx":01C8
    Style = 1
  End
  Begin VB.CommandButton cmdSalir
    Left = 12720
    Top = 840
    Width = 975
    Height = 855
    TabIndex = 7
    Picture = "frmProcesaPagosePagos.frx":04F6
    Style = 1
    CausesValidation = 0   'False
  End
End

Attribute VB_Name = "frmProcesaPagosePagos"


Private Sub Form_Load() 'A7D480
  'Data Table: 43B18C
  loc_A7D3FC: LitI2_Byte 0
  loc_A7D3FE: CR8I2
  loc_A7D3FF: PopFPR4
  loc_A7D400: FLdPr Me
  loc_A7D403: Me.Left = from_stack_1s
  loc_A7D408: LitI2_Byte 0
  loc_A7D40A: CR8I2
  loc_A7D40B: PopFPR4
  loc_A7D40C: FLdPr Me
  loc_A7D40F: Me.Top = from_stack_1s
  loc_A7D414: LitI2_Byte 0
  loc_A7D416: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A7D41B: FLdPr Me
  loc_A7D41E: MemStFPR8 global_56
  loc_A7D421: LitI2_Byte &HFF
  loc_A7D423: FLdPr Me
  loc_A7D426: VCallAd Control_ID_OptEPagos
  loc_A7D429: FStAdFunc var_88
  loc_A7D42C: FLdPr var_88
  loc_A7D42F: Me.Value = from_stack_1b
  loc_A7D434: FFree1Ad var_88
  loc_A7D437: FLdPr Me
  loc_A7D43A: MemLdFPR8 global_56
  loc_A7D43D: CStrDate
  loc_A7D43F: CVarStr var_98
  loc_A7D442: PopAdLdVar
  loc_A7D443: FLdPr Me
  loc_A7D446: VCallAd Control_ID_FechProcMsk
  loc_A7D449: FStAdFunc var_88
  loc_A7D44C: FLdPr var_88
  loc_A7D44F: LateIdSt
  loc_A7D454: FFree1Ad var_88
  loc_A7D457: FFree1Var var_98 = ""
  loc_A7D45A: FLdPr Me
  loc_A7D45D: MemLdFPR8 global_56
  loc_A7D460: CStrDate
  loc_A7D462: CVarStr var_98
  loc_A7D465: PopAdLdVar
  loc_A7D466: FLdPr Me
  loc_A7D469: VCallAd Control_ID_FeenAcpaMsk
  loc_A7D46C: FStAdFunc var_88
  loc_A7D46F: FLdPr var_88
  loc_A7D472: LateIdSt
  loc_A7D477: FFree1Ad var_88
  loc_A7D47A: FFree1Var var_98 = ""
  loc_A7D47D: ExitProcHresult
End Sub

Private Sub NumeAcpaTxt_Change() '9BDD70
  'Data Table: 43B18C
  loc_9BDD5C: FLdPr Me
  loc_9BDD5F: VCallAd Control_ID_NumeAcpaTxt
  loc_9BDD62: CVarAd
  loc_9BDD66: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BDD6B: FFree1Var var_94 = ""
  loc_9BDD6E: ExitProcHresult
End Sub

Private Sub NumeAcpaTxt_Validate(Cancel As Boolean) 'AEA034
  'Data Table: 43B18C
  loc_AE9EB4: FLdRfVar var_8A
  loc_AE9EB7: FLdPr Me
  loc_AE9EBA: VCallAd Control_ID_NumeAcpaTxt
  loc_AE9EBD: FStAdFunc var_88
  loc_AE9EC0: FLdPr var_88
  loc_AE9EC3:  = Me.Enabled
  loc_AE9EC8: FLdI2 var_8A
  loc_AE9ECB: LitI2_Byte &HFF
  loc_AE9ECD: EqI2
  loc_AE9ECE: FFree1Ad var_88
  loc_AE9ED1: BranchF loc_AEA031
  loc_AE9ED4: FLdRfVar var_90
  loc_AE9ED7: FLdPr Me
  loc_AE9EDA: VCallAd Control_ID_NumeAcpaTxt
  loc_AE9EDD: FStAdFunc var_88
  loc_AE9EE0: FLdPr var_88
  loc_AE9EE3:  = Me.Text
  loc_AE9EE8: LitI2_Byte 0
  loc_AE9EEA: LitI2_Byte 0
  loc_AE9EEC: ILdRf var_90
  loc_AE9EEF: LitStr "Numero de Grupo"
  loc_AE9EF2: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AE9EF7: FStStrNoPop var_94
  loc_AE9EFA: FLdPr Me
  loc_AE9EFD: MemStStrCopy
  loc_AE9F01: FFreeStr var_90 = ""
  loc_AE9F08: FFree1Ad var_88
  loc_AE9F0B: FLdPr Me
  loc_AE9F0E: MemLdStr global_64
  loc_AE9F11: LitStr vbNullString
  loc_AE9F14: NeStr
  loc_AE9F16: BranchF loc_AE9F3C
  loc_AE9F19: FLdPr Me
  loc_AE9F1C: MemLdStr global_64
  loc_AE9F1F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE9F24: FLdPr Me
  loc_AE9F27: VCallAd Control_ID_NumeAcpaTxt
  loc_AE9F2A: CVarAd
  loc_AE9F2E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE9F33: FFree1Var var_A4 = ""
  loc_AE9F36: LitI2_Byte &HFF
  loc_AE9F38: IStI2 Cancel
  loc_AE9F3B: ExitProcHresult
  loc_AE9F3C: FLdPr Me
  loc_AE9F3F: VCallAd Control_ID_FeenAcpaMsk
  loc_AE9F42: FStAdFunc var_88
  loc_AE9F45: FLdPr var_88
  loc_AE9F48: LateIdLdVar var_A4 DispID_15 0
  loc_AE9F4F: PopAd
  loc_AE9F51: FLdRfVar var_90
  loc_AE9F54: FLdPr Me
  loc_AE9F57: VCallAd Control_ID_NumeAcpaTxt
  loc_AE9F5A: FStAdFunc var_A8
  loc_AE9F5D: FLdPr var_A8
  loc_AE9F60:  = Me.Text
  loc_AE9F65: FLdRfVar var_AC
  loc_AE9F68: ILdRf var_90
  loc_AE9F6B: CI2Str
  loc_AE9F6D: FLdRfVar var_A4
  loc_AE9F70: CStrVarTmp
  loc_AE9F71: FStStrNoPop var_94
  loc_AE9F74: FLdPr Me
  loc_AE9F77: MemLdRfVar from_stack_1.global_68
  loc_AE9F7A: NewIfNullPr clsacrepago
  loc_AE9F7D: from_stack_3v = clsacrepago.ValidaClave(from_stack_1v, from_stack_2v)
  loc_AE9F82: ILdRf var_AC
  loc_AE9F85: FLdPr Me
  loc_AE9F88: MemStStrCopy
  loc_AE9F8C: FFreeStr var_94 = "": var_90 = ""
  loc_AE9F95: FFreeAd var_88 = ""
  loc_AE9F9C: FFree1Var var_A4 = ""
  loc_AE9F9F: FLdPr Me
  loc_AE9FA2: MemLdStr global_64
  loc_AE9FA5: LitStr vbNullString
  loc_AE9FA8: NeStr
  loc_AE9FAA: BranchF loc_AE9FD0
  loc_AE9FAD: FLdPr Me
  loc_AE9FB0: MemLdStr global_64
  loc_AE9FB3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE9FB8: FLdPr Me
  loc_AE9FBB: VCallAd Control_ID_NumeAcpaTxt
  loc_AE9FBE: CVarAd
  loc_AE9FC2: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE9FC7: FFree1Var var_A4 = ""
  loc_AE9FCA: LitI2_Byte &HFF
  loc_AE9FCC: IStI2 Cancel
  loc_AE9FCF: ExitProcHresult
  loc_AE9FD0: FLdRfVar var_90
  loc_AE9FD3: FLdPr Me
  loc_AE9FD6: VCallAd Control_ID_NumeAcpaTxt
  loc_AE9FD9: FStAdFunc var_88
  loc_AE9FDC: FLdPr var_88
  loc_AE9FDF:  = Me.Text
  loc_AE9FE4: ILdRf var_90
  loc_AE9FE7: ImpAdCallI2 Proc_18_42_A841B8()
  loc_AE9FEC: FStStrNoPop var_94
  loc_AE9FEF: FLdPr Me
  loc_AE9FF2: MemStStrCopy
  loc_AE9FF6: FFreeStr var_90 = ""
  loc_AE9FFD: FFree1Ad var_88
  loc_AEA000: FLdPr Me
  loc_AEA003: MemLdStr global_64
  loc_AEA006: LitStr vbNullString
  loc_AEA009: NeStr
  loc_AEA00B: BranchF loc_AEA031
  loc_AEA00E: FLdPr Me
  loc_AEA011: MemLdStr global_64
  loc_AEA014: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEA019: FLdPr Me
  loc_AEA01C: VCallAd Control_ID_NumeAcpaTxt
  loc_AEA01F: CVarAd
  loc_AEA023: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEA028: FFree1Var var_A4 = ""
  loc_AEA02B: LitI2_Byte &HFF
  loc_AEA02D: IStI2 Cancel
  loc_AEA030: ExitProcHresult
  loc_AEA031: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click() 'AB2D48
  'Data Table: 43B18C
  loc_AB2C7C: FLdRfVar var_96
  loc_AB2C7F: FLdPr Me
  loc_AB2C82: VCallAd Control_ID_OptEPagos
  loc_AB2C85: FStAdFunc var_94
  loc_AB2C88: FLdPr var_94
  loc_AB2C8B:  = Me.Value
  loc_AB2C90: FLdI2 var_96
  loc_AB2C93: LitI2_Byte &HFF
  loc_AB2C95: EqI2
  loc_AB2C96: FFree1Ad var_94
  loc_AB2C99: BranchF loc_AB2CAA
  loc_AB2C9C: LitStr "epagos"
  loc_AB2C9F: FStStrCopy var_90
  loc_AB2CA2: LitI2_Byte &H40
  loc_AB2CA4: FStI2 var_8A
  loc_AB2CA7: Branch loc_AB2CB5
  loc_AB2CAA: LitStr "macro"
  loc_AB2CAD: FStStrCopy var_90
  loc_AB2CB0: LitI2_Byte &H41
  loc_AB2CB2: FStI2 var_8A
  loc_AB2CB5: LitI2_Byte &HB
  loc_AB2CB7: FLdPr Me
  loc_AB2CBA: Me.MousePointer = from_stack_1
  loc_AB2CBF: FLdPr Me
  loc_AB2CC2: VCallAd Control_ID_FechProcMsk
  loc_AB2CC5: FStAdFunc var_94
  loc_AB2CC8: FLdPr var_94
  loc_AB2CCB: LateIdLdVar var_A8 DispID_15 0
  loc_AB2CD2: PopAd
  loc_AB2CD4: FLdPr Me
  loc_AB2CD7: VCallAd Control_ID_FeenAcpaMsk
  loc_AB2CDA: FStAdFunc var_AC
  loc_AB2CDD: FLdPr var_AC
  loc_AB2CE0: LateIdLdVar var_BC DispID_15 0
  loc_AB2CE7: PopAd
  loc_AB2CE9: FLdRfVar var_C4
  loc_AB2CEC: FLdPr Me
  loc_AB2CEF: VCallAd Control_ID_NumeAcpaTxt
  loc_AB2CF2: FStAdFunc var_C0
  loc_AB2CF5: FLdPr var_C0
  loc_AB2CF8:  = Me.Text
  loc_AB2CFD: ILdRf var_90
  loc_AB2D00: FLdI2 var_8A
  loc_AB2D03: ILdRf var_C4
  loc_AB2D06: CI2Str
  loc_AB2D08: FLdRfVar var_BC
  loc_AB2D0B: CStrVarTmp
  loc_AB2D0C: FStStrNoPop var_CC
  loc_AB2D0F: FLdRfVar var_A8
  loc_AB2D12: CStrVarTmp
  loc_AB2D13: FStStrNoPop var_C8
  loc_AB2D16: FLdPr Me
  loc_AB2D19: MemLdRfVar from_stack_1.global_52
  loc_AB2D1C: NewIfNullPr clspago
  loc_AB2D1F: Call clspago.CreaPagosEPagos(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_AB2D24: FFreeStr var_C8 = "": var_CC = ""
  loc_AB2D2D: FFreeAd var_94 = "": var_AC = ""
  loc_AB2D36: FFreeVar var_A8 = ""
  loc_AB2D3D: LitI2_Byte 0
  loc_AB2D3F: FLdPr Me
  loc_AB2D42: Me.MousePointer = from_stack_1
  loc_AB2D47: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9C8208
  'Data Table: 43B18C
  loc_9C81F0: ILdRf Me
  loc_9C81F3: FStAdNoPop
  loc_9C81F7: ImpAdLdRf MemVar_D9C5D8
  loc_9C81FA: NewIfNullPr Global
  loc_9C81FD: Global.Unload from_stack_1
  loc_9C8202: FFree1Ad var_88
  loc_9C8205: ExitProcHresult
End Sub

Private Sub FechProcMsk_UnknownEvent_0 '9BD3E0
  'Data Table: 43B18C
  loc_9BD3CC: FLdPr Me
  loc_9BD3CF: VCallAd Control_ID_FechProcMsk
  loc_9BD3D2: CVarAd
  loc_9BD3D6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD3DB: FFree1Var var_94 = ""
  loc_9BD3DE: ExitProcHresult
End Sub

Private Function FechProcMsk_UnknownEvent_8(arg_C) 'A80694
  'Data Table: 43B18C
  loc_A80610: FLdPr Me
  loc_A80613: VCallAd Control_ID_FechProcMsk
  loc_A80616: FStAdFunc var_88
  loc_A80619: FLdPr var_88
  loc_A8061C: LateIdLdVar var_98 DispID_13 -32767
  loc_A80623: CBoolVar
  loc_A80625: FFree1Ad var_88
  loc_A80628: FFree1Var var_98 = ""
  loc_A8062B: BranchF loc_A80691
  loc_A8062E: FLdPr Me
  loc_A80631: VCallAd Control_ID_FechProcMsk
  loc_A80634: FStAdFunc var_88
  loc_A80637: FLdPr var_88
  loc_A8063A: LateIdLdVar var_98 DispID_15 0
  loc_A80641: CStrVarTmp
  loc_A80642: FStStrNoPop var_9C
  loc_A80645: ImpAdCallI2 Proc_18_7_A46DF4()
  loc_A8064A: FStStrNoPop var_A0
  loc_A8064D: FLdPr Me
  loc_A80650: MemStStrCopy
  loc_A80654: FFreeStr var_9C = ""
  loc_A8065B: FFree1Ad var_88
  loc_A8065E: FFree1Var var_98 = ""
  loc_A80661: FLdPr Me
  loc_A80664: MemLdStr global_64
  loc_A80667: LitStr vbNullString
  loc_A8066A: NeStr
  loc_A8066C: BranchF loc_A80691
  loc_A8066F: FLdPr Me
  loc_A80672: MemLdStr global_64
  loc_A80675: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8067A: FLdPr Me
  loc_A8067D: VCallAd Control_ID_FechProcMsk
  loc_A80680: CVarAd
  loc_A80684: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A80689: FFree1Var var_98 = ""
  loc_A8068C: LitI2_Byte &HFF
  loc_A8068E: IStI2 arg_C
  loc_A80691: ExitProcHresult
End Function

Private Sub FechProcMsk_KeyPress(KeyAscii As Integer) 'A23504
  'Data Table: 43B18C
  loc_A234BC: ILdI2 KeyAscii
  loc_A234BF: CI4UI1
  loc_A234C0: LitI4 &H20
  loc_A234C5: EqI4
  loc_A234C6: BranchF loc_A23503
  loc_A234C9: LitVar_Missing var_A4
  loc_A234CC: PopAdLdVar
  loc_A234CD: LitVarI4
  loc_A234D5: PopAdLdVar
  loc_A234D6: ImpAdLdRf MemVar_D930A4
  loc_A234D9: NewIfNullPr frmCalendario
  loc_A234DC: frmCalendario.Show from_stack_1, from_stack_2
  loc_A234E1: ImpAdLdRf MemVar_D93028
  loc_A234E4: CDargRef
  loc_A234E8: FLdPr Me
  loc_A234EB: VCallAd Control_ID_FechProcMsk
  loc_A234EE: FStAdFunc var_A8
  loc_A234F1: FLdPr var_A8
  loc_A234F4: LateIdSt
  loc_A234F9: FFree1Ad var_A8
  loc_A234FC: LitStr vbNullString
  loc_A234FF: ImpAdStStrCopy MemVar_D93028
  loc_A23503: ExitProcHresult
End Sub

Private Sub FeenAcpaMsk_UnknownEvent_0 '9C1568
  'Data Table: 43B18C
  loc_9C1554: FLdPr Me
  loc_9C1557: VCallAd Control_ID_FeenAcpaMsk
  loc_9C155A: CVarAd
  loc_9C155E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1563: FFree1Var var_94 = ""
  loc_9C1566: ExitProcHresult
End Sub

Private Sub FeenAcpaMsk_UnknownEvent_8 'AC5620
  'Data Table: 43B18C
  loc_AC5528: FLdPr Me
  loc_AC552B: VCallAd Control_ID_FeenAcpaMsk
  loc_AC552E: FStAdFunc var_88
  loc_AC5531: FLdPr var_88
  loc_AC5534: LateIdLdVar var_98 DispID_13 -32767
  loc_AC553B: CBoolVar
  loc_AC553D: FFree1Ad var_88
  loc_AC5540: FFree1Var var_98 = ""
  loc_AC5543: BranchF loc_AC561D
  loc_AC5546: FLdPr Me
  loc_AC5549: VCallAd Control_ID_FeenAcpaMsk
  loc_AC554C: FStAdFunc var_88
  loc_AC554F: FLdPr var_88
  loc_AC5552: LateIdLdVar var_98 DispID_15 0
  loc_AC5559: CStrVarTmp
  loc_AC555A: FStStrNoPop var_9C
  loc_AC555D: ImpAdCallI2 Proc_18_7_A46DF4()
  loc_AC5562: FStStrNoPop var_A0
  loc_AC5565: FLdPr Me
  loc_AC5568: MemStStrCopy
  loc_AC556C: FFreeStr var_9C = ""
  loc_AC5573: FFree1Ad var_88
  loc_AC5576: FFree1Var var_98 = ""
  loc_AC5579: FLdPr Me
  loc_AC557C: MemLdStr global_64
  loc_AC557F: LitStr vbNullString
  loc_AC5582: NeStr
  loc_AC5584: BranchF loc_AC55A9
  loc_AC5587: FLdPr Me
  loc_AC558A: MemLdStr global_64
  loc_AC558D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC5592: FLdPr Me
  loc_AC5595: VCallAd Control_ID_FeenAcpaMsk
  loc_AC5598: CVarAd
  loc_AC559C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC55A1: FFree1Var var_98 = ""
  loc_AC55A4: LitI2_Byte &HFF
  loc_AC55A6: IStI2 KeyAscii
  loc_AC55A9: FLdPr Me
  loc_AC55AC: VCallAd Control_ID_FeenAcpaMsk
  loc_AC55AF: FStAdFunc var_88
  loc_AC55B2: FLdPr var_88
  loc_AC55B5: LateIdLdVar var_98 DispID_15 0
  loc_AC55BC: PopAd
  loc_AC55BE: LitI4 1
  loc_AC55C3: LitI4 1
  loc_AC55C8: LitVarStr var_C0, "yyyy-mm-dd"
  loc_AC55CD: FStVarCopyObj var_D0
  loc_AC55D0: FLdRfVar var_D0
  loc_AC55D3: FLdRfVar var_98
  loc_AC55D6: CStrVarTmp
  loc_AC55D7: CVarStr var_B0
  loc_AC55DA: FLdRfVar var_E0
  loc_AC55DD: ImpAdCallFPR4  = Format(, )
  loc_AC55E2: FLdRfVar var_E0
  loc_AC55E5: CStrVarVal var_9C
  loc_AC55E9: ImpAdCallI2 Proc_270_107_AA35C8()
  loc_AC55EE: CStrUI1
  loc_AC55F0: FStStrNoPop var_A0
  loc_AC55F3: FLdPr Me
  loc_AC55F6: VCallAd Control_ID_NumeAcpaTxt
  loc_AC55F9: FStAdFunc var_E4
  loc_AC55FC: FLdPr var_E4
  loc_AC55FF: Me.Text = from_stack_1
  loc_AC5604: FFreeStr var_9C = ""
  loc_AC560B: FFreeAd var_88 = ""
  loc_AC5612: FFreeVar var_98 = "": var_B0 = "": var_D0 = ""
  loc_AC561D: ExitProcHresult
End Sub

Private Sub FeenAcpaMsk_KeyPress(KeyAscii As Integer) 'A2340C
  'Data Table: 43B18C
  loc_A233C4: ILdI2 KeyAscii
  loc_A233C7: CI4UI1
  loc_A233C8: LitI4 &H20
  loc_A233CD: EqI4
  loc_A233CE: BranchF loc_A2340B
  loc_A233D1: LitVar_Missing var_A4
  loc_A233D4: PopAdLdVar
  loc_A233D5: LitVarI4
  loc_A233DD: PopAdLdVar
  loc_A233DE: ImpAdLdRf MemVar_D930A4
  loc_A233E1: NewIfNullPr frmCalendario
  loc_A233E4: frmCalendario.Show from_stack_1, from_stack_2
  loc_A233E9: ImpAdLdRf MemVar_D93028
  loc_A233EC: CDargRef
  loc_A233F0: FLdPr Me
  loc_A233F3: VCallAd Control_ID_FeenAcpaMsk
  loc_A233F6: FStAdFunc var_A8
  loc_A233F9: FLdPr var_A8
  loc_A233FC: LateIdSt
  loc_A23401: FFree1Ad var_A8
  loc_A23404: LitStr vbNullString
  loc_A23407: ImpAdStStrCopy MemVar_D93028
  loc_A2340B: ExitProcHresult
End Sub
