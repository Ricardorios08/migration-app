VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Begin VB.Form frmBarrioABM
  Caption = "Barrio"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmBarrioABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 13992
  ClientHeight = 9060
  Begin VB.ComboBox FiltroCbo
    Style = 2
    Left = 120
    Top = 840
    Width = 4575
    Height = 420
    TabIndex = 12
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
  Begin VB.Frame Frame1
    Left = 120
    Top = 4680
    Width = 8280
    Height = 1920
    TabIndex = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton CodiLocaCmd
      Left = 3240
      Top = 1440
      Width = 450
      Height = 345
      TabIndex = 9
      Picture = "frmBarrioABM.frx":324A
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox CodiLocaTxt
      ForeColor = &HFF0000&
      Left = 2280
      Top = 1440
      Width = 735
      Height = 360
      TabIndex = 3
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
    Begin VB.TextBox DetaBarrTxt
      ForeColor = &HFF0000&
      Left = 2280
      Top = 960
      Width = 5055
      Height = 360
      TabIndex = 2
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
    Begin VB.TextBox CodiBarrTxt
      ForeColor = &HFF0000&
      Left = 2280
      Top = 480
      Width = 735
      Height = 360
      TabIndex = 1
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
    Begin VB.Label DetaLocaLbl
      Caption = "Label4"
      ForeColor = &HFF0000&
      Left = 3960
      Top = 1440
      Width = 2775
      Height = 360
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
    Begin VB.Label Label1
      Caption = "Código Localidad:"
      Left = 345
      Top = 1440
      Width = 1890
      Height = 300
      TabIndex = 7
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
      Caption = "Detalle:"
      Left = 1425
      Top = 960
      Width = 810
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
    Begin VB.Label Label2
      Caption = "Código Barrio:"
      Left = 735
      Top = 480
      Width = 1500
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
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1560
    Width = 12240
    Height = 3075
    TabIndex = 0
    OleObjectBlob = "frmBarrioABM.frx":3344
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmBarrioABM.frx":367E
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 13992
    Height = 636
    TabIndex = 10
    OleObjectBlob = "frmBarrioABM.frx":B1FC
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 11
      TabStop = 0   'False
      Picture = "frmBarrioABM.frx":B758
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin MSMask.MaskEdBox FiltroMsk
    Left = 4800
    Top = 840
    Width = 5775
    Height = 375
    TabIndex = 13
    OleObjectBlob = "frmBarrioABM.frx":C022
  End
End

Attribute VB_Name = "frmBarrioABM"


Private Sub FiltroCbo_Click() 'AA9C7C
  'Data Table: 45B1D8
  loc_AA9BAC: LitVarStr var_94, vbNullString
  loc_AA9BB1: PopAdLdVar
  loc_AA9BB2: FLdPr Me
  loc_AA9BB5: VCallAd Control_ID_FiltroMsk
  loc_AA9BB8: FStAdFunc var_A8
  loc_AA9BBB: FLdPr var_A8
  loc_AA9BBE: LateIdSt
  loc_AA9BC3: FFree1Ad var_A8
  loc_AA9BC6: LitVarStr var_94, vbNullString
  loc_AA9BCB: PopAdLdVar
  loc_AA9BCC: FLdPr Me
  loc_AA9BCF: VCallAd Control_ID_FiltroMsk
  loc_AA9BD2: FStAdFunc var_A8
  loc_AA9BD5: FLdPr var_A8
  loc_AA9BD8: LateIdSt
  loc_AA9BDD: FFree1Ad var_A8
  loc_AA9BE0: FLdRfVar var_AA
  loc_AA9BE3: FLdPr Me
  loc_AA9BE6: VCallAd Control_ID_FiltroCbo
  loc_AA9BE9: FStAdFunc var_A8
  loc_AA9BEC: FLdPr var_A8
  loc_AA9BEF:  = Me.ListIndex
  loc_AA9BF4: FLdI2 var_AA
  loc_AA9BF7: FStI2 var_AC
  loc_AA9BFA: FFree1Ad var_A8
  loc_AA9BFD: FLdI2 var_AC
  loc_AA9C00: LitI2_Byte 0
  loc_AA9C02: EqI2
  loc_AA9C03: BranchF loc_AA9C3D
  loc_AA9C06: LitVarStr var_94, "#####"
  loc_AA9C0B: PopAdLdVar
  loc_AA9C0C: FLdPr Me
  loc_AA9C0F: VCallAd Control_ID_FiltroMsk
  loc_AA9C12: FStAdFunc var_A8
  loc_AA9C15: FLdPr var_A8
  loc_AA9C18: LateIdSt
  loc_AA9C1D: FFree1Ad var_A8
  loc_AA9C20: LitStr "CodiBarr"
  loc_AA9C23: FStStrCopy var_B0
  loc_AA9C26: FLdRfVar var_B0
  loc_AA9C29: FLdPr Me
  loc_AA9C2C: MemLdRfVar from_stack_1.global_52
  loc_AA9C2F: NewIfNullPr clsBarrio
  loc_AA9C32: Call clsBarrio.Sort(from_stack_1v)
  loc_AA9C37: FFree1Str var_B0
  loc_AA9C3A: Branch loc_AA9C7A
  loc_AA9C3D: FLdI2 var_AC
  loc_AA9C40: LitI2_Byte 1
  loc_AA9C42: EqI2
  loc_AA9C43: BranchF loc_AA9C7A
  loc_AA9C46: LitVarStr var_94, vbNullString
  loc_AA9C4B: PopAdLdVar
  loc_AA9C4C: FLdPr Me
  loc_AA9C4F: VCallAd Control_ID_FiltroMsk
  loc_AA9C52: FStAdFunc var_A8
  loc_AA9C55: FLdPr var_A8
  loc_AA9C58: LateIdSt
  loc_AA9C5D: FFree1Ad var_A8
  loc_AA9C60: LitStr "DetaBarr"
  loc_AA9C63: FStStrCopy var_B0
  loc_AA9C66: FLdRfVar var_B0
  loc_AA9C69: FLdPr Me
  loc_AA9C6C: MemLdRfVar from_stack_1.global_52
  loc_AA9C6F: NewIfNullPr clsBarrio
  loc_AA9C72: Call clsBarrio.Sort(from_stack_1v)
  loc_AA9C77: FFree1Str var_B0
  loc_AA9C7A: ExitProcHresult
  loc_AA9C7B: UMiI4
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '9C50C0
  'Data Table: 45B1D8
  loc_9C50AC: FLdPr Me
  loc_9C50AF: VCallAd Control_ID_FiltroMsk
  loc_9C50B2: CVarAd
  loc_9C50B6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C50BB: FFree1Var var_94 = ""
  loc_9C50BE: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'B0CCE4
  'Data Table: 45B1D8
  loc_B0CAC4: ILdRf Me
  loc_B0CAC7: CastAd
  loc_B0CACA: FStAdFunc var_88
  loc_B0CACD: FLdRfVar var_88
  loc_B0CAD0: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B0CAD5: FFree1Ad var_88
  loc_B0CAD8: FLdPr Me
  loc_B0CADB: VCallAd Control_ID_FiltroMsk
  loc_B0CADE: FStAdFunc var_88
  loc_B0CAE1: FLdPr var_88
  loc_B0CAE4: LateIdLdVar var_98 DispID_20 0
  loc_B0CAEB: CStrVarTmp
  loc_B0CAEC: CVarStr var_A8
  loc_B0CAEF: FLdRfVar var_B8
  loc_B0CAF2: ImpAdCallFPR4  = Trim()
  loc_B0CAF7: FLdRfVar var_B8
  loc_B0CAFA: LitVarStr var_C8, vbNullString
  loc_B0CAFF: HardType
  loc_B0CB00: NeVarBool
  loc_B0CB02: FFree1Ad var_88
  loc_B0CB05: FFreeVar var_98 = "": var_A8 = ""
  loc_B0CB0E: BranchF loc_B0CC62
  loc_B0CB11: FLdRfVar var_DA
  loc_B0CB14: FLdPr Me
  loc_B0CB17: VCallAd Control_ID_FiltroCbo
  loc_B0CB1A: FStAdFunc var_88
  loc_B0CB1D: FLdPr var_88
  loc_B0CB20:  = Me.ListIndex
  loc_B0CB25: FLdI2 var_DA
  loc_B0CB28: LitI2_Byte 0
  loc_B0CB2A: EqI2
  loc_B0CB2B: FFree1Ad var_88
  loc_B0CB2E: BranchF loc_B0CBB5
  loc_B0CB31: LitStr "CodiBarr >= "
  loc_B0CB34: FLdPr Me
  loc_B0CB37: VCallAd Control_ID_FiltroMsk
  loc_B0CB3A: FStAdFunc var_88
  loc_B0CB3D: FLdPr var_88
  loc_B0CB40: LateIdLdVar var_98 DispID_22 0
  loc_B0CB47: CStrVarTmp
  loc_B0CB48: FStStrNoPop var_E0
  loc_B0CB4B: ConcatStr
  loc_B0CB4C: PopTmpLdAdStr
  loc_B0CB50: FLdPr Me
  loc_B0CB53: MemLdRfVar from_stack_1.global_52
  loc_B0CB56: NewIfNullPr clsBarrio
  loc_B0CB59: Call clsBarrio.Filter(from_stack_1v)
  loc_B0CB5E: FFreeStr var_E0 = ""
  loc_B0CB65: FFree1Ad var_88
  loc_B0CB68: FFree1Var var_98 = ""
  loc_B0CB6B: LitVarStr var_C8, "Numero de Cuenta que es mayor o igual a: "
  loc_B0CB70: FLdPr Me
  loc_B0CB73: VCallAd Control_ID_FiltroMsk
  loc_B0CB76: FStAdFunc var_88
  loc_B0CB79: FLdPr var_88
  loc_B0CB7C: LateIdLdVar var_98 DispID_22 0
  loc_B0CB83: CStrVarTmp
  loc_B0CB84: CVarStr var_A8
  loc_B0CB87: FLdRfVar var_B8
  loc_B0CB8A: ImpAdCallFPR4  = Trim()
  loc_B0CB8F: FLdRfVar var_B8
  loc_B0CB92: ConcatVar var_D8
  loc_B0CB96: CStrVarTmp
  loc_B0CB97: FStStrNoPop var_E0
  loc_B0CB9A: FLdPr Me
  loc_B0CB9D: MemStStrCopy
  loc_B0CBA1: FFree1Str var_E0
  loc_B0CBA4: FFree1Ad var_88
  loc_B0CBA7: FFreeVar var_98 = "": var_A8 = "": var_B8 = ""
  loc_B0CBB2: Branch loc_B0CC5F
  loc_B0CBB5: FLdRfVar var_DA
  loc_B0CBB8: FLdPr Me
  loc_B0CBBB: VCallAd Control_ID_FiltroCbo
  loc_B0CBBE: FStAdFunc var_88
  loc_B0CBC1: FLdPr var_88
  loc_B0CBC4:  = Me.ListIndex
  loc_B0CBC9: FLdI2 var_DA
  loc_B0CBCC: LitI2_Byte 1
  loc_B0CBCE: EqI2
  loc_B0CBCF: FFree1Ad var_88
  loc_B0CBD2: BranchF loc_B0CC5F
  loc_B0CBD5: LitStr "DetaBarr LIKE '" & Chr(37)
  loc_B0CBD8: FLdPr Me
  loc_B0CBDB: VCallAd Control_ID_FiltroMsk
  loc_B0CBDE: FStAdFunc var_88
  loc_B0CBE1: FLdPr var_88
  loc_B0CBE4: LateIdLdVar var_98 DispID_22 0
  loc_B0CBEB: CStrVarTmp
  loc_B0CBEC: FStStrNoPop var_E0
  loc_B0CBEF: ConcatStr
  loc_B0CBF0: FStStrNoPop var_E4
  loc_B0CBF3: LitStr Chr(37) & "'"
  loc_B0CBF6: ConcatStr
  loc_B0CBF7: PopTmpLdAdStr
  loc_B0CBFB: FLdPr Me
  loc_B0CBFE: MemLdRfVar from_stack_1.global_52
  loc_B0CC01: NewIfNullPr clsBarrio
  loc_B0CC04: Call clsBarrio.Filter(from_stack_1v)
  loc_B0CC09: FFreeStr var_E0 = "": var_E4 = ""
  loc_B0CC12: FFree1Ad var_88
  loc_B0CC15: FFree1Var var_98 = ""
  loc_B0CC18: LitVarStr var_C8, "Detalle de calle que contiene. "
  loc_B0CC1D: FLdPr Me
  loc_B0CC20: VCallAd Control_ID_FiltroMsk
  loc_B0CC23: FStAdFunc var_88
  loc_B0CC26: FLdPr var_88
  loc_B0CC29: LateIdLdVar var_98 DispID_22 0
  loc_B0CC30: CStrVarTmp
  loc_B0CC31: CVarStr var_A8
  loc_B0CC34: FLdRfVar var_B8
  loc_B0CC37: ImpAdCallFPR4  = Trim()
  loc_B0CC3C: FLdRfVar var_B8
  loc_B0CC3F: ConcatVar var_D8
  loc_B0CC43: CStrVarTmp
  loc_B0CC44: FStStrNoPop var_E0
  loc_B0CC47: FLdPr Me
  loc_B0CC4A: MemStStrCopy
  loc_B0CC4E: FFree1Str var_E0
  loc_B0CC51: FFree1Ad var_88
  loc_B0CC54: FFreeVar var_98 = "": var_A8 = "": var_B8 = ""
  loc_B0CC5F: Branch loc_B0CC86
  loc_B0CC62: LitStr vbNullString
  loc_B0CC65: FStStrCopy var_E0
  loc_B0CC68: FLdRfVar var_E0
  loc_B0CC6B: FLdPr Me
  loc_B0CC6E: MemLdRfVar from_stack_1.global_52
  loc_B0CC71: NewIfNullPr clsBarrio
  loc_B0CC74: Call clsBarrio.Filter(from_stack_1v)
  loc_B0CC79: FFree1Str var_E0
  loc_B0CC7C: LitStr vbNullString
  loc_B0CC7F: FLdPr Me
  loc_B0CC82: MemStStrCopy
  loc_B0CC86: FLdRfVar var_EC
  loc_B0CC89: FLdPr Me
  loc_B0CC8C: MemLdRfVar from_stack_1.global_52
  loc_B0CC8F: NewIfNullPr clsBarrio
  loc_B0CC92: from_stack_1 = clsBarrio.RecordCount
  loc_B0CC97: ILdRf var_EC
  loc_B0CC9A: LitI4 0
  loc_B0CC9F: GtI4
  loc_B0CCA0: BranchF loc_B0CCAB
  loc_B0CCA3: Call EnlazaTodo()
  loc_B0CCA8: Branch loc_B0CCBF
  loc_B0CCAB: ILdRf Me
  loc_B0CCAE: CastAd
  loc_B0CCB1: FStAdFunc var_88
  loc_B0CCB4: FLdRfVar var_88
  loc_B0CCB7: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B0CCBC: FFree1Ad var_88
  loc_B0CCBF: FLdPr Me
  loc_B0CCC2: VCallAd Control_ID_dgdABMS
  loc_B0CCC5: FStAdFunc var_F0
  loc_B0CCC8: FLdPr Me
  loc_B0CCCB: MemLdStr global_64
  loc_B0CCCE: FLdZeroAd var_F0
  loc_B0CCD1: FStAdFunc var_88
  loc_B0CCD4: FLdRfVar var_88
  loc_B0CCD7: ImpAdCallFPR4 Proc_272_56_ACCA08(, )
  loc_B0CCDC: FFreeAd var_88 = ""
  loc_B0CCE3: ExitProcHresult
End Sub

Private Sub DetaBarrTxt_GotFocus() '9C73A0
  'Data Table: 45B1D8
  loc_9C738C: FLdPr Me
  loc_9C738F: VCallAd Control_ID_DetaBarrTxt
  loc_9C7392: CVarAd
  loc_9C7396: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C739B: FFree1Var var_94 = ""
  loc_9C739E: ExitProcHresult
End Sub

Private Sub DetaBarrTxt_Validate(Cancel As Boolean) 'A9270C
  'Data Table: 45B1D8
  loc_A9266C: FLdRfVar var_8A
  loc_A9266F: FLdPr Me
  loc_A92672: VCallAd Control_ID_cmdCancelar
  loc_A92675: FStAdFunc var_88
  loc_A92678: FLdPr var_88
  loc_A9267B:  = Me.Value
  loc_A92680: FLdI2 var_8A
  loc_A92683: NotI4
  loc_A92684: FLdRfVar var_92
  loc_A92687: FLdPr Me
  loc_A9268A: VCallAd Control_ID_DetaBarrTxt
  loc_A9268D: FStAdFunc var_90
  loc_A92690: FLdPr var_90
  loc_A92693:  = Me.Enabled
  loc_A92698: FLdI2 var_92
  loc_A9269B: AndI4
  loc_A9269C: FFreeAd var_88 = ""
  loc_A926A3: BranchF loc_A92709
  loc_A926A6: FLdRfVar var_98
  loc_A926A9: FLdPr Me
  loc_A926AC: VCallAd Control_ID_DetaBarrTxt
  loc_A926AF: FStAdFunc var_88
  loc_A926B2: FLdPr var_88
  loc_A926B5:  = Me.Text
  loc_A926BA: ILdRf var_98
  loc_A926BD: LitStr "BARRIO"
  loc_A926C0: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A926C5: FStStrNoPop var_9C
  loc_A926C8: FLdPr Me
  loc_A926CB: MemStStrCopy
  loc_A926CF: FFreeStr var_98 = ""
  loc_A926D6: FFree1Ad var_88
  loc_A926D9: FLdPr Me
  loc_A926DC: MemLdStr global_60
  loc_A926DF: LitStr vbNullString
  loc_A926E2: NeStr
  loc_A926E4: BranchF loc_A92709
  loc_A926E7: FLdPr Me
  loc_A926EA: MemLdStr global_60
  loc_A926ED: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A926F2: FLdPr Me
  loc_A926F5: VCallAd Control_ID_DetaBarrTxt
  loc_A926F8: CVarAd
  loc_A926FC: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A92701: FFree1Var var_AC = ""
  loc_A92704: LitI2_Byte &HFF
  loc_A92706: IStI2 Cancel
  loc_A92709: ExitProcHresult
  loc_A9270A: FLdPr arg_6000
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A68428
  'Data Table: 45B1D8
  loc_A683CC: FLdRfVar var_B4
  loc_A683CF: FLdRfVar var_B0
  loc_A683D2: FLdI2 ColIndex
  loc_A683D5: CVarI2 var_A8
  loc_A683D8: PopAdLdVar
  loc_A683D9: FLdPr Me
  loc_A683DC: VCallAd Control_ID_dgdABMS
  loc_A683DF: FStAdFunc var_88
  loc_A683E2: FLdPr var_88
  loc_A683E5: LateIdLdVar var_98 DispID_105 0
  loc_A683EC: CastAdVar Me
  loc_A683F0: FStAdFunc var_AC
  loc_A683F3: FLdPr var_AC
  loc_A683F6: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A683FB: FLdPr var_B0
  loc_A683FE:  = Me.DataField
  loc_A68403: FLdZeroAd var_B4
  loc_A68406: PopTmpLdAdStr
  loc_A6840A: FLdPr Me
  loc_A6840D: MemLdRfVar from_stack_1.global_52
  loc_A68410: NewIfNullPr clsBarrio
  loc_A68413: Call clsBarrio.Sort(from_stack_1v)
  loc_A68418: FFree1Str var_B8
  loc_A6841B: FFreeAd var_88 = "": var_AC = ""
  loc_A68424: FFree1Var var_98 = ""
  loc_A68427: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B709EC
  'Data Table: 45B1D8
  loc_B70560: ILdRf Button
  loc_B70563: FStAd var_88 
  loc_B70567: FLdRfVar var_90
  loc_B7056A: FLdPr var_88
  loc_B7056D:  = Me.Key
  loc_B70572: FLdZeroAd var_90
  loc_B70575: FStStr var_94
  loc_B70578: ILdRf var_94
  loc_B7057B: LitStr "btnCrear"
  loc_B7057E: EqStr
  loc_B70580: BranchF loc_B706A7
  loc_B70583: LitI2_Byte 1
  loc_B70585: FLdPr Me
  loc_B70588: MemStI2 global_56
  loc_B7058B: ILdRf Me
  loc_B7058E: CastAd
  loc_B70591: FStAdFunc var_98
  loc_B70594: FLdRfVar var_98
  loc_B70597: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B7059C: FFree1Ad var_98
  loc_B7059F: LitI4 0
  loc_B705A4: LitI4 0
  loc_B705A9: FLdRfVar var_9C
  loc_B705AC: Redim
  loc_B705B6: FLdPr Me
  loc_B705B9: VCallAd Control_ID_dgdABMS
  loc_B705BC: CVarAd
  loc_B705C0: ParmAry1St
  loc_B705C6: FLdRfVar var_9C
  loc_B705C9: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B705CE: FLdRfVar var_9C
  loc_B705D1: Erase
  loc_B705D2: ILdRf Me
  loc_B705D5: CastAd
  loc_B705D8: FStAdFunc var_98
  loc_B705DB: FLdRfVar var_98
  loc_B705DE: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B705E3: FFree1Ad var_98
  loc_B705E6: ILdRf Me
  loc_B705E9: CastAd
  loc_B705EC: FStAdFunc var_98
  loc_B705EF: FLdRfVar var_98
  loc_B705F2: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B705F7: FFree1Ad var_98
  loc_B705FA: FLdRfVar var_B0
  loc_B705FD: FLdPr Me
  loc_B70600: MemLdRfVar from_stack_1.global_52
  loc_B70603: NewIfNullPr clsBarrio
  loc_B70606: from_stack_1v = clsBarrio.NuevoRegistro()
  loc_B7060B: ILdRf var_B0
  loc_B7060E: CStrI4
  loc_B70610: FStStrNoPop var_90
  loc_B70613: FLdPr Me
  loc_B70616: VCallAd Control_ID_CodiBarrTxt
  loc_B70619: FStAdFunc var_98
  loc_B7061C: FLdPr var_98
  loc_B7061F: Me.Text = from_stack_1
  loc_B70624: FFree1Str var_90
  loc_B70627: FFree1Ad var_98
  loc_B7062A: LitStr "0"
  loc_B7062D: FLdPr Me
  loc_B70630: VCallAd Control_ID_CodiLocaTxt
  loc_B70633: FStAdFunc var_98
  loc_B70636: FLdPr var_98
  loc_B70639: Me.Text = from_stack_1
  loc_B7063E: FFree1Ad var_98
  loc_B70641: LitI4 0
  loc_B70646: LitI4 3
  loc_B7064B: FLdRfVar var_9C
  loc_B7064E: Redim
  loc_B70658: FLdPr Me
  loc_B7065B: VCallAd Control_ID_CodiBarrTxt
  loc_B7065E: CVarAd
  loc_B70662: ParmAry1St
  loc_B70668: FLdPr Me
  loc_B7066B: VCallAd Control_ID_DetaBarrTxt
  loc_B7066E: CVarAd
  loc_B70672: ParmAry1St
  loc_B70678: FLdPr Me
  loc_B7067B: VCallAd Control_ID_CodiLocaTxt
  loc_B7067E: CVarAd
  loc_B70682: ParmAry1St
  loc_B70688: FLdPr Me
  loc_B7068B: VCallAd Control_ID_CodiLocaCmd
  loc_B7068E: CVarAd
  loc_B70692: ParmAry1St
  loc_B70698: FLdRfVar var_9C
  loc_B7069B: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B706A0: FLdRfVar var_9C
  loc_B706A3: Erase
  loc_B706A4: Branch loc_B709E8
  loc_B706A7: ILdRf var_94
  loc_B706AA: LitStr "btnModificar"
  loc_B706AD: EqStr
  loc_B706AF: BranchF loc_B70788
  loc_B706B2: FLdRfVar var_B0
  loc_B706B5: FLdPr Me
  loc_B706B8: MemLdRfVar from_stack_1.global_52
  loc_B706BB: NewIfNullPr clsBarrio
  loc_B706BE: from_stack_1 = clsBarrio.RecordCount
  loc_B706C3: ILdRf var_B0
  loc_B706C6: LitI4 0
  loc_B706CB: GtI4
  loc_B706CC: BranchF loc_B70785
  loc_B706CF: LitI2_Byte 2
  loc_B706D1: FLdPr Me
  loc_B706D4: MemStI2 global_56
  loc_B706D7: ILdRf Me
  loc_B706DA: CastAd
  loc_B706DD: FStAdFunc var_98
  loc_B706E0: FLdRfVar var_98
  loc_B706E3: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B706E8: FFree1Ad var_98
  loc_B706EB: LitI4 0
  loc_B706F0: LitI4 0
  loc_B706F5: FLdRfVar var_9C
  loc_B706F8: Redim
  loc_B70702: FLdPr Me
  loc_B70705: VCallAd Control_ID_dgdABMS
  loc_B70708: CVarAd
  loc_B7070C: ParmAry1St
  loc_B70712: FLdRfVar var_9C
  loc_B70715: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B7071A: FLdRfVar var_9C
  loc_B7071D: Erase
  loc_B7071E: ILdRf Me
  loc_B70721: CastAd
  loc_B70724: FStAdFunc var_98
  loc_B70727: FLdRfVar var_98
  loc_B7072A: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B7072F: FFree1Ad var_98
  loc_B70732: LitI4 0
  loc_B70737: LitI4 2
  loc_B7073C: FLdRfVar var_9C
  loc_B7073F: Redim
  loc_B70749: FLdPr Me
  loc_B7074C: VCallAd Control_ID_DetaBarrTxt
  loc_B7074F: CVarAd
  loc_B70753: ParmAry1St
  loc_B70759: FLdPr Me
  loc_B7075C: VCallAd Control_ID_CodiLocaTxt
  loc_B7075F: CVarAd
  loc_B70763: ParmAry1St
  loc_B70769: FLdPr Me
  loc_B7076C: VCallAd Control_ID_CodiLocaCmd
  loc_B7076F: CVarAd
  loc_B70773: ParmAry1St
  loc_B70779: FLdRfVar var_9C
  loc_B7077C: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B70781: FLdRfVar var_9C
  loc_B70784: Erase
  loc_B70785: Branch loc_B709E8
  loc_B70788: ILdRf var_94
  loc_B7078B: LitStr "btnEliminar"
  loc_B7078E: EqStr
  loc_B70790: BranchF loc_B70796
  loc_B70793: Branch loc_B709E8
  loc_B70796: ILdRf var_94
  loc_B70799: LitStr "btnGuardar"
  loc_B7079C: EqStr
  loc_B7079E: BranchF loc_B708E4
  loc_B707A1: LitI2_Byte 0
  loc_B707A3: PopTmpLdAd2 var_E2
  loc_B707A6: Call CodiBarrTxt_Validate(from_stack_1v)
  loc_B707AB: FLdPr Me
  loc_B707AE: MemLdStr global_60
  loc_B707B1: LitStr vbNullString
  loc_B707B4: NeStr
  loc_B707B6: BranchF loc_B707BA
  loc_B707B9: ExitProcHresult
  loc_B707BA: LitI2_Byte 0
  loc_B707BC: PopTmpLdAd2 var_E2
  loc_B707BF: Call DetaBarrTxt_Validate(from_stack_1v)
  loc_B707C4: FLdPr Me
  loc_B707C7: MemLdStr global_60
  loc_B707CA: LitStr vbNullString
  loc_B707CD: NeStr
  loc_B707CF: BranchF loc_B707D3
  loc_B707D2: ExitProcHresult
  loc_B707D3: LitI2_Byte 0
  loc_B707D5: PopTmpLdAd2 var_E2
  loc_B707D8: Call CodiLocaTxt_Validate(from_stack_1v)
  loc_B707DD: FLdPr Me
  loc_B707E0: MemLdStr global_60
  loc_B707E3: LitStr vbNullString
  loc_B707E6: NeStr
  loc_B707E8: BranchF loc_B707EC
  loc_B707EB: ExitProcHresult
  loc_B707EC: FLdPr Me
  loc_B707EF: MemLdI2 global_56
  loc_B707F2: FStI2 var_E4
  loc_B707F5: FLdI2 var_E4
  loc_B707F8: LitI2_Byte 1
  loc_B707FA: EqI2
  loc_B707FB: BranchF loc_B7086A
  loc_B707FE: FLdRfVar var_90
  loc_B70801: FLdPr Me
  loc_B70804: VCallAd Control_ID_CodiBarrTxt
  loc_B70807: FStAdFunc var_98
  loc_B7080A: FLdPr var_98
  loc_B7080D:  = Me.Text
  loc_B70812: FLdRfVar var_EC
  loc_B70815: FLdPr Me
  loc_B70818: VCallAd Control_ID_DetaBarrTxt
  loc_B7081B: FStAdFunc var_E8
  loc_B7081E: FLdPr var_E8
  loc_B70821:  = Me.Text
  loc_B70826: FLdRfVar var_F4
  loc_B70829: FLdPr Me
  loc_B7082C: VCallAd Control_ID_CodiLocaTxt
  loc_B7082F: FStAdFunc var_F0
  loc_B70832: FLdPr var_F0
  loc_B70835:  = Me.Text
  loc_B7083A: ILdRf var_F4
  loc_B7083D: CI2Str
  loc_B7083F: ILdRf var_EC
  loc_B70842: ILdRf var_90
  loc_B70845: CI2Str
  loc_B70847: FLdPr Me
  loc_B7084A: MemLdRfVar from_stack_1.global_52
  loc_B7084D: NewIfNullPr clsBarrio
  loc_B70850: Call clsBarrio.AddNew(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B70855: FFreeStr var_90 = "": var_EC = ""
  loc_B7085E: FFreeAd var_98 = "": var_E8 = ""
  loc_B70867: Branch loc_B708DC
  loc_B7086A: FLdI2 var_E4
  loc_B7086D: LitI2_Byte 2
  loc_B7086F: EqI2
  loc_B70870: BranchF loc_B708DC
  loc_B70873: FLdRfVar var_90
  loc_B70876: FLdPr Me
  loc_B70879: VCallAd Control_ID_CodiBarrTxt
  loc_B7087C: FStAdFunc var_98
  loc_B7087F: FLdPr var_98
  loc_B70882:  = Me.Text
  loc_B70887: FLdRfVar var_EC
  loc_B7088A: FLdPr Me
  loc_B7088D: VCallAd Control_ID_DetaBarrTxt
  loc_B70890: FStAdFunc var_E8
  loc_B70893: FLdPr var_E8
  loc_B70896:  = Me.Text
  loc_B7089B: FLdRfVar var_F4
  loc_B7089E: FLdPr Me
  loc_B708A1: VCallAd Control_ID_CodiLocaTxt
  loc_B708A4: FStAdFunc var_F0
  loc_B708A7: FLdPr var_F0
  loc_B708AA:  = Me.Text
  loc_B708AF: ILdRf var_F4
  loc_B708B2: CI2Str
  loc_B708B4: ILdRf var_EC
  loc_B708B7: ILdRf var_90
  loc_B708BA: CI2Str
  loc_B708BC: FLdPr Me
  loc_B708BF: MemLdRfVar from_stack_1.global_52
  loc_B708C2: NewIfNullPr clsBarrio
  loc_B708C5: Call clsBarrio.Modificar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B708CA: FFreeStr var_90 = "": var_EC = ""
  loc_B708D3: FFreeAd var_98 = "": var_E8 = ""
  loc_B708DC: Call cmdCancelar_Click()
  loc_B708E1: Branch loc_B709E8
  loc_B708E4: ILdRf var_94
  loc_B708E7: LitStr "btnCancelar"
  loc_B708EA: EqStr
  loc_B708EC: BranchF loc_B708F7
  loc_B708EF: Call cmdCancelar_Click()
  loc_B708F4: Branch loc_B709E8
  loc_B708F7: ILdRf var_94
  loc_B708FA: LitStr "btnPrimero"
  loc_B708FD: EqStr
  loc_B708FF: BranchF loc_B70913
  loc_B70902: FLdPr Me
  loc_B70905: MemLdRfVar from_stack_1.global_52
  loc_B70908: NewIfNullPr clsBarrio
  loc_B7090B: Call clsBarrio.MoveFirst()
  loc_B70910: Branch loc_B709E8
  loc_B70913: ILdRf var_94
  loc_B70916: LitStr "btnAnterior"
  loc_B70919: EqStr
  loc_B7091B: BranchF loc_B7092F
  loc_B7091E: FLdPr Me
  loc_B70921: MemLdRfVar from_stack_1.global_52
  loc_B70924: NewIfNullPr clsBarrio
  loc_B70927: Call clsBarrio.MovePrevious()
  loc_B7092C: Branch loc_B709E8
  loc_B7092F: ILdRf var_94
  loc_B70932: LitStr "btnSiguiente"
  loc_B70935: EqStr
  loc_B70937: BranchF loc_B7094B
  loc_B7093A: FLdPr Me
  loc_B7093D: MemLdRfVar from_stack_1.global_52
  loc_B70940: NewIfNullPr clsBarrio
  loc_B70943: Call clsBarrio.MoveNext()
  loc_B70948: Branch loc_B709E8
  loc_B7094B: ILdRf var_94
  loc_B7094E: LitStr "btnUltimo"
  loc_B70951: EqStr
  loc_B70953: BranchF loc_B70967
  loc_B70956: FLdPr Me
  loc_B70959: MemLdRfVar from_stack_1.global_52
  loc_B7095C: NewIfNullPr clsBarrio
  loc_B7095F: Call clsBarrio.MoveLast()
  loc_B70964: Branch loc_B709E8
  loc_B70967: ILdRf var_94
  loc_B7096A: LitStr "btnFiltrar"
  loc_B7096D: EqStr
  loc_B7096F: BranchF loc_B70975
  loc_B70972: Branch loc_B709E8
  loc_B70975: ILdRf var_94
  loc_B70978: LitStr "btnBuscar"
  loc_B7097B: EqStr
  loc_B7097D: BranchF loc_B70983
  loc_B70980: Branch loc_B709E8
  loc_B70983: ILdRf var_94
  loc_B70986: LitStr "btnImprimir"
  loc_B70989: EqStr
  loc_B7098B: BranchF loc_B70991
  loc_B7098E: Branch loc_B709E8
  loc_B70991: ILdRf var_94
  loc_B70994: LitStr "btnAyuda"
  loc_B70997: EqStr
  loc_B70999: BranchF loc_B709C8
  loc_B7099C: LitVar_Missing var_E0
  loc_B7099F: LitVar_Missing var_D0
  loc_B709A2: LitVar_Missing var_C0
  loc_B709A5: LitI4 0
  loc_B709AA: LitVarStr var_104, "Opcion no disponible en esta version."
  loc_B709AF: FStVarCopyObj var_AC
  loc_B709B2: FLdRfVar var_AC
  loc_B709B5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B709BA: FFreeVar var_AC = "": var_C0 = "": var_D0 = ""
  loc_B709C5: Branch loc_B709E8
  loc_B709C8: ILdRf var_94
  loc_B709CB: LitStr "btnSalir"
  loc_B709CE: EqStr
  loc_B709D0: BranchF loc_B709E8
  loc_B709D3: ILdRf Me
  loc_B709D6: FStAdNoPop
  loc_B709DA: ImpAdLdRf MemVar_D9C5D8
  loc_B709DD: NewIfNullPr Global
  loc_B709E0: Global.Unload from_stack_1
  loc_B709E5: FFree1Ad var_98
  loc_B709E8: ExitProcHresult
  loc_B709E9: FFree1Var var_A4 = ""
End Sub

Private Sub CodiLocaCmd_Click() 'AA785C
  'Data Table: 45B1D8
  loc_AA7794: LitVar_Missing var_A4
  loc_AA7797: PopAdLdVar
  loc_AA7798: LitVarI4
  loc_AA77A0: PopAdLdVar
  loc_AA77A1: ImpAdLdRf MemVar_D94228
  loc_AA77A4: NewIfNullPr dlgBuscarLocalidad
  loc_AA77A7: dlgBuscarLocalidad.Show from_stack_1, from_stack_2
  loc_AA77AC: FLdRfVar var_AC
  loc_AA77AF: FLdRfVar var_A8
  loc_AA77B2: ImpAdLdRf MemVar_D94228
  loc_AA77B5: NewIfNullPr dlgBuscarLocalidad
  loc_AA77B8: from_stack_1v = dlgBuscarLocalidad.global_4338864Get()
  loc_AA77BD: FLdPr var_A8
  loc_AA77C0: from_stack_1 = clslocalidad.RecordCount
  loc_AA77C5: ILdRf var_AC
  loc_AA77C8: LitI4 0
  loc_AA77CD: GtI4
  loc_AA77CE: FFree1Ad var_A8
  loc_AA77D1: BranchF loc_AA7847
  loc_AA77D4: FLdRfVar var_AE
  loc_AA77D7: FLdRfVar var_A8
  loc_AA77DA: ImpAdLdRf MemVar_D94228
  loc_AA77DD: NewIfNullPr dlgBuscarLocalidad
  loc_AA77E0: from_stack_1v = dlgBuscarLocalidad.global_4338864Get()
  loc_AA77E5: FLdPr var_A8
  loc_AA77E8: from_stack_1 = clslocalidad.CodiLoca
  loc_AA77ED: FLdI2 var_AE
  loc_AA77F0: CStrUI1
  loc_AA77F2: FStStrNoPop var_B4
  loc_AA77F5: FLdPr Me
  loc_AA77F8: VCallAd Control_ID_CodiLocaTxt
  loc_AA77FB: FStAdFunc var_B8
  loc_AA77FE: FLdPr var_B8
  loc_AA7801: Me.Text = from_stack_1
  loc_AA7806: FFree1Str var_B4
  loc_AA7809: FFreeAd var_A8 = ""
  loc_AA7810: FLdRfVar var_B4
  loc_AA7813: FLdRfVar var_A8
  loc_AA7816: ImpAdLdRf MemVar_D94228
  loc_AA7819: NewIfNullPr dlgBuscarLocalidad
  loc_AA781C: from_stack_1v = dlgBuscarLocalidad.global_4338864Get()
  loc_AA7821: FLdPr var_A8
  loc_AA7824: from_stack_1 = clslocalidad.DetaLoca
  loc_AA7829: ILdRf var_B4
  loc_AA782C: FLdPr Me
  loc_AA782F: VCallAd Control_ID_DetaLocaLbl
  loc_AA7832: FStAdFunc var_B8
  loc_AA7835: FLdPr var_B8
  loc_AA7838: Me.Caption = from_stack_1
  loc_AA783D: FFree1Str var_B4
  loc_AA7840: FFreeAd var_A8 = ""
  loc_AA7847: FLdPr Me
  loc_AA784A: VCallAd Control_ID_CodiLocaTxt
  loc_AA784D: CVarAd
  loc_AA7851: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA7856: FFree1Var var_C8 = ""
  loc_AA7859: ExitProcHresult
  loc_AA785A: FnAbsI2
End Sub

Private Sub cmdCancelar_Click() 'AA2B14
  'Data Table: 45B1D8
  loc_AA2A64: LitI2_Byte 0
  loc_AA2A66: FLdPr Me
  loc_AA2A69: MemStI2 global_56
  loc_AA2A6C: LitI2_Byte 0
  loc_AA2A6E: ILdRf Me
  loc_AA2A71: CastAd
  loc_AA2A74: FStAdFunc var_88
  loc_AA2A77: FLdRfVar var_88
  loc_AA2A7A: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AA2A7F: FFree1Ad var_88
  loc_AA2A82: LitI4 0
  loc_AA2A87: LitI4 0
  loc_AA2A8C: FLdRfVar var_8C
  loc_AA2A8F: Redim
  loc_AA2A99: FLdPr Me
  loc_AA2A9C: VCallAd Control_ID_dgdABMS
  loc_AA2A9F: CVarAd
  loc_AA2AA3: ParmAry1St
  loc_AA2AA9: FLdRfVar var_8C
  loc_AA2AAC: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AA2AB1: FLdRfVar var_8C
  loc_AA2AB4: Erase
  loc_AA2AB5: Call EnlazaTodo()
  loc_AA2ABA: ILdRf Me
  loc_AA2ABD: CastAd
  loc_AA2AC0: FStAdFunc var_88
  loc_AA2AC3: FLdRfVar var_88
  loc_AA2AC6: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AA2ACB: FFree1Ad var_88
  loc_AA2ACE: LitI4 0
  loc_AA2AD3: LitI4 1
  loc_AA2AD8: FLdRfVar var_8C
  loc_AA2ADB: Redim
  loc_AA2AE5: FLdPr Me
  loc_AA2AE8: VCallAd Control_ID_FiltroCbo
  loc_AA2AEB: CVarAd
  loc_AA2AEF: ParmAry1St
  loc_AA2AF5: FLdPr Me
  loc_AA2AF8: VCallAd Control_ID_FiltroMsk
  loc_AA2AFB: CVarAd
  loc_AA2AFF: ParmAry1St
  loc_AA2B05: FLdRfVar var_8C
  loc_AA2B08: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AA2B0D: FLdRfVar var_8C
  loc_AA2B10: Erase
  loc_AA2B11: ExitProcHresult
End Sub

Private Sub CodiLocaTxt_GotFocus() '9C5108
  'Data Table: 45B1D8
  loc_9C50F4: FLdPr Me
  loc_9C50F7: VCallAd Control_ID_CodiLocaTxt
  loc_9C50FA: CVarAd
  loc_9C50FE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5103: FFree1Var var_94 = ""
  loc_9C5106: ExitProcHresult
End Sub

Private Sub CodiLocaTxt_KeyPress(KeyAscii As Integer) '9D7104
  'Data Table: 45B1D8
  loc_9D70EC: LitStr "0123456789"
  loc_9D70EF: FStStrCopy var_88
  loc_9D70F2: FLdRfVar var_88
  loc_9D70F5: ILdRf KeyAscii
  loc_9D70F8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D70FD: IStI2 KeyAscii
  loc_9D7100: FFree1Str var_88
  loc_9D7103: ExitProcHresult
End Sub

Private Sub CodiLocaTxt_Validate(Cancel As Boolean) 'ACED2C
  'Data Table: 45B1D8
  loc_ACEC08: FLdRfVar var_8A
  loc_ACEC0B: FLdPr Me
  loc_ACEC0E: VCallAd Control_ID_CodiLocaTxt
  loc_ACEC11: FStAdFunc var_88
  loc_ACEC14: FLdPr var_88
  loc_ACEC17:  = Me.Enabled
  loc_ACEC1C: FLdI2 var_8A
  loc_ACEC1F: LitI2_Byte &HFF
  loc_ACEC21: EqI2
  loc_ACEC22: FFree1Ad var_88
  loc_ACEC25: BranchF loc_ACED2A
  loc_ACEC28: FLdRfVar var_90
  loc_ACEC2B: FLdPr Me
  loc_ACEC2E: VCallAd Control_ID_CodiLocaTxt
  loc_ACEC31: FStAdFunc var_88
  loc_ACEC34: FLdPr var_88
  loc_ACEC37:  = Me.Text
  loc_ACEC3C: FLdZeroAd var_90
  loc_ACEC3F: CVarStr var_A0
  loc_ACEC42: ImpAdCallI2 IsNumeric()
  loc_ACEC47: NotI4
  loc_ACEC48: FFree1Ad var_88
  loc_ACEC4B: FFree1Var var_A0 = ""
  loc_ACEC4E: BranchF loc_ACEC6F
  loc_ACEC51: LitI2_Byte 0
  loc_ACEC53: CStrUI1
  loc_ACEC55: FStStrNoPop var_90
  loc_ACEC58: FLdPr Me
  loc_ACEC5B: VCallAd Control_ID_CodiLocaTxt
  loc_ACEC5E: FStAdFunc var_88
  loc_ACEC61: FLdPr var_88
  loc_ACEC64: Me.Text = from_stack_1
  loc_ACEC69: FFree1Str var_90
  loc_ACEC6C: FFree1Ad var_88
  loc_ACEC6F: FLdRfVar var_90
  loc_ACEC72: FLdPr Me
  loc_ACEC75: VCallAd Control_ID_CodiLocaTxt
  loc_ACEC78: FStAdFunc var_88
  loc_ACEC7B: FLdPr var_88
  loc_ACEC7E:  = Me.Text
  loc_ACEC83: ILdRf var_90
  loc_ACEC86: ImpAdCallI2 Proc_18_22_A588CC()
  loc_ACEC8B: FStStrNoPop var_A4
  loc_ACEC8E: FLdPr Me
  loc_ACEC91: MemStStrCopy
  loc_ACEC95: FFreeStr var_90 = ""
  loc_ACEC9C: FFree1Ad var_88
  loc_ACEC9F: FLdPr Me
  loc_ACECA2: MemLdStr global_60
  loc_ACECA5: LitStr vbNullString
  loc_ACECA8: NeStr
  loc_ACECAA: BranchF loc_ACECEA
  loc_ACECAD: FLdPr Me
  loc_ACECB0: MemLdStr global_60
  loc_ACECB3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACECB8: LitStr vbNullString
  loc_ACECBB: FLdPr Me
  loc_ACECBE: VCallAd Control_ID_DetaLocaLbl
  loc_ACECC1: FStAdFunc var_88
  loc_ACECC4: FLdPr var_88
  loc_ACECC7: Me.Caption = from_stack_1
  loc_ACECCC: FFree1Ad var_88
  loc_ACECCF: FLdPr Me
  loc_ACECD2: VCallAd Control_ID_CodiLocaTxt
  loc_ACECD5: CVarAd
  loc_ACECD9: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ACECDE: FFree1Var var_A0 = ""
  loc_ACECE1: LitI2_Byte &HFF
  loc_ACECE3: IStI2 Cancel
  loc_ACECE6: ExitProcHresult
  loc_ACECE7: Branch loc_ACED2A
  loc_ACECEA: FLdRfVar var_90
  loc_ACECED: FLdPr Me
  loc_ACECF0: VCallAd Control_ID_CodiLocaTxt
  loc_ACECF3: FStAdFunc var_88
  loc_ACECF6: FLdPr var_88
  loc_ACECF9:  = Me.Text
  loc_ACECFE: ILdRf var_90
  loc_ACED01: CI2Str
  loc_ACED03: ImpAdCallI2 Proc_270_30_A7AC80()
  loc_ACED08: FStStrNoPop var_A4
  loc_ACED0B: FLdPr Me
  loc_ACED0E: VCallAd Control_ID_DetaLocaLbl
  loc_ACED11: FStAdFunc var_A8
  loc_ACED14: FLdPr var_A8
  loc_ACED17: Me.Caption = from_stack_1
  loc_ACED1C: FFreeStr var_90 = ""
  loc_ACED23: FFreeAd var_88 = ""
  loc_ACED2A: ExitProcHresult
End Sub

Private Sub Form_Load() 'AF2B04
  'Data Table: 45B1D8
  loc_AF295C: LitI2_Byte 0
  loc_AF295E: CR8I2
  loc_AF295F: PopFPR4
  loc_AF2960: FLdPr Me
  loc_AF2963: Me.Left = from_stack_1s
  loc_AF2968: LitI2_Byte 0
  loc_AF296A: CR8I2
  loc_AF296B: PopFPR4
  loc_AF296C: FLdPr Me
  loc_AF296F: Me.Top = from_stack_1s
  loc_AF2974: LitStr "SELECT infogov.barrio.CodiBarr, infogov.barrio.DetaBarr , infogov.barrio.CodiLoca, infogov.localidad.DetaLoca FROM infogov.barrio LEFT JOIN infogov.localidad ON infogov.localidad.Codiloca = infogov.barrio.Codiloca ORDER BY infogov.barrio.CodiBarr"
  loc_AF2977: FLdPr Me
  loc_AF297A: MemLdRfVar from_stack_1.global_52
  loc_AF297D: NewIfNullPr clsBarrio
  loc_AF2980: Call clsBarrio.RedefineRS(from_stack_1v)
  loc_AF2985: LitStr "CodiBarr"
  loc_AF2988: FLdPr Me
  loc_AF298B: VCallAd Control_ID_CodiBarrTxt
  loc_AF298E: FStAdFunc var_88
  loc_AF2991: FLdPr var_88
  loc_AF2994: Me.DataField = from_stack_1
  loc_AF2999: FFree1Ad var_88
  loc_AF299C: LitStr "DetaBarr"
  loc_AF299F: FLdPr Me
  loc_AF29A2: VCallAd Control_ID_DetaBarrTxt
  loc_AF29A5: FStAdFunc var_88
  loc_AF29A8: FLdPr var_88
  loc_AF29AB: Me.DataField = from_stack_1
  loc_AF29B0: FFree1Ad var_88
  loc_AF29B3: LitStr "CodiLoca"
  loc_AF29B6: FLdPr Me
  loc_AF29B9: VCallAd Control_ID_CodiLocaTxt
  loc_AF29BC: FStAdFunc var_88
  loc_AF29BF: FLdPr var_88
  loc_AF29C2: Me.DataField = from_stack_1
  loc_AF29C7: FFree1Ad var_88
  loc_AF29CA: LitStr "DetaLoca"
  loc_AF29CD: FLdPr Me
  loc_AF29D0: VCallAd Control_ID_DetaLocaLbl
  loc_AF29D3: FStAdFunc var_88
  loc_AF29D6: FLdPr var_88
  loc_AF29D9: Me.DataField = from_stack_1
  loc_AF29DE: FFree1Ad var_88
  loc_AF29E1: LitI4 0
  loc_AF29E6: LitI4 1
  loc_AF29EB: FLdRfVar var_8C
  loc_AF29EE: Redim
  loc_AF29F8: FLdPr Me
  loc_AF29FB: MemLdRfVar from_stack_1.global_52
  loc_AF29FE: NewIfNullAd
  loc_AF2A01: FStAd var_88 
  loc_AF2A05: FLdRfVar var_88
  loc_AF2A08: CVarRef
  loc_AF2A0D: ParmAry1St
  loc_AF2A13: FLdPr Me
  loc_AF2A16: VCallAd Control_ID_dgdABMS
  loc_AF2A19: CVarAd
  loc_AF2A1D: ParmAry1St
  loc_AF2A23: FLdRfVar var_8C
  loc_AF2A26: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AF2A2B: ILdRf var_88
  loc_AF2A2E: CastAd
  loc_AF2A31: FLdPr Me
  loc_AF2A34: MemStAdFunc
  loc_AF2A38: FLdRfVar var_8C
  loc_AF2A3B: Erase
  loc_AF2A3C: FFree1Ad var_88
  loc_AF2A3F: Call EnlazaTodo()
  loc_AF2A44: ILdRf Me
  loc_AF2A47: CastAd
  loc_AF2A4A: FStAdFunc var_88
  loc_AF2A4D: FLdRfVar var_88
  loc_AF2A50: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AF2A55: FFree1Ad var_88
  loc_AF2A58: LitI2_Byte 0
  loc_AF2A5A: ILdRf Me
  loc_AF2A5D: CastAd
  loc_AF2A60: FStAdFunc var_88
  loc_AF2A63: FLdRfVar var_88
  loc_AF2A66: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AF2A6B: FFree1Ad var_88
  loc_AF2A6E: LitVarI2 var_9C, 0
  loc_AF2A73: PopAdLdVar
  loc_AF2A74: LitStr "Código"
  loc_AF2A77: FLdPr Me
  loc_AF2A7A: VCallAd Control_ID_FiltroCbo
  loc_AF2A7D: FStAdFunc var_88
  loc_AF2A80: FLdPr var_88
  loc_AF2A83: Me.AddItem from_stack_1, from_stack_2
  loc_AF2A88: FFree1Ad var_88
  loc_AF2A8B: LitVarI2 var_9C, 1
  loc_AF2A90: PopAdLdVar
  loc_AF2A91: LitStr "Detalle del Barrio"
  loc_AF2A94: FLdPr Me
  loc_AF2A97: VCallAd Control_ID_FiltroCbo
  loc_AF2A9A: FStAdFunc var_88
  loc_AF2A9D: FLdPr var_88
  loc_AF2AA0: Me.AddItem from_stack_1, from_stack_2
  loc_AF2AA5: FFree1Ad var_88
  loc_AF2AA8: LitI2_Byte 0
  loc_AF2AAA: FLdPr Me
  loc_AF2AAD: VCallAd Control_ID_FiltroCbo
  loc_AF2AB0: FStAdFunc var_88
  loc_AF2AB3: FLdPr var_88
  loc_AF2AB6: Me.ListIndex = from_stack_1
  loc_AF2ABB: FFree1Ad var_88
  loc_AF2ABE: LitI4 0
  loc_AF2AC3: LitI4 1
  loc_AF2AC8: FLdRfVar var_8C
  loc_AF2ACB: Redim
  loc_AF2AD5: FLdPr Me
  loc_AF2AD8: VCallAd Control_ID_FiltroCbo
  loc_AF2ADB: CVarAd
  loc_AF2ADF: ParmAry1St
  loc_AF2AE5: FLdPr Me
  loc_AF2AE8: VCallAd Control_ID_FiltroMsk
  loc_AF2AEB: CVarAd
  loc_AF2AEF: ParmAry1St
  loc_AF2AF5: FLdRfVar var_8C
  loc_AF2AF8: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AF2AFD: FLdRfVar var_8C
  loc_AF2B00: Erase
  loc_AF2B01: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A63C00
  'Data Table: 45B1D8
  loc_A63BA4: FLdRfVar var_C2
  loc_A63BA7: FLdRfVar var_C0
  loc_A63BAA: LitVarI2 var_B8, 1
  loc_A63BAF: FLdPr Me
  loc_A63BB2: VCallAd Control_ID_tlbABMS
  loc_A63BB5: FStAdFunc var_88
  loc_A63BB8: FLdPr var_88
  loc_A63BBB: LateIdLdVar var_98 DispID_3 0
  loc_A63BC2: CastAdVar Me
  loc_A63BC6: FStAdFunc var_BC
  loc_A63BC9: FLdPr var_BC
  loc_A63BCC:  = Me.Buttons.ControlDefault
  loc_A63BD1: FLdPr var_C0
  loc_A63BD4:  = Me.Enabled
  loc_A63BD9: FLdI2 var_C2
  loc_A63BDC: FFreeAd var_88 = "": var_BC = ""
  loc_A63BE5: FFreeVar var_98 = ""
  loc_A63BEC: BranchF loc_A63BFD
  loc_A63BEF: FLdPr Me
  loc_A63BF2: MemLdRfVar from_stack_1.global_52
  loc_A63BF5: NewIfNullPr clsBarrio
  loc_A63BF8: Call clsBarrio.Requery()
  loc_A63BFD: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9D7318
  'Data Table: 45B1D8
  loc_9D7300: ILdI2 KeyCode
  loc_9D7303: ILdRf Me
  loc_9D7306: CastAd
  loc_9D7309: FStAdFunc var_88
  loc_9D730C: FLdRfVar var_88
  loc_9D730F: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9D7314: FFree1Ad var_88
  loc_9D7317: ExitProcHresult
End Sub

Private Sub CodiBarrTxt_GotFocus() '9C71F0
  'Data Table: 45B1D8
  loc_9C71DC: FLdPr Me
  loc_9C71DF: VCallAd Control_ID_CodiBarrTxt
  loc_9C71E2: CVarAd
  loc_9C71E6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C71EB: FFree1Var var_94 = ""
  loc_9C71EE: ExitProcHresult
End Sub

Private Sub CodiBarrTxt_KeyPress(KeyAscii As Integer) '9D7234
  'Data Table: 45B1D8
  loc_9D721C: LitStr "0123456789"
  loc_9D721F: FStStrCopy var_88
  loc_9D7222: FLdRfVar var_88
  loc_9D7225: ILdRf KeyAscii
  loc_9D7228: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D722D: IStI2 KeyAscii
  loc_9D7230: FFree1Str var_88
  loc_9D7233: ExitProcHresult
End Sub

Private Sub CodiBarrTxt_Validate(Cancel As Boolean) 'AD70D0
  'Data Table: 45B1D8
  loc_AD6F90: FLdRfVar var_8A
  loc_AD6F93: FLdPr Me
  loc_AD6F96: VCallAd Control_ID_CodiBarrTxt
  loc_AD6F99: FStAdFunc var_88
  loc_AD6F9C: FLdPr var_88
  loc_AD6F9F:  = Me.Enabled
  loc_AD6FA4: FLdI2 var_8A
  loc_AD6FA7: LitI2_Byte &HFF
  loc_AD6FA9: EqI2
  loc_AD6FAA: FFree1Ad var_88
  loc_AD6FAD: BranchF loc_AD70CE
  loc_AD6FB0: FLdRfVar var_90
  loc_AD6FB3: FLdPr Me
  loc_AD6FB6: VCallAd Control_ID_CodiBarrTxt
  loc_AD6FB9: FStAdFunc var_88
  loc_AD6FBC: FLdPr var_88
  loc_AD6FBF:  = Me.Text
  loc_AD6FC4: FLdZeroAd var_90
  loc_AD6FC7: CVarStr var_A0
  loc_AD6FCA: ImpAdCallI2 IsNumeric()
  loc_AD6FCF: NotI4
  loc_AD6FD0: FFree1Ad var_88
  loc_AD6FD3: FFree1Var var_A0 = ""
  loc_AD6FD6: BranchF loc_AD6FF7
  loc_AD6FD9: LitI2_Byte 0
  loc_AD6FDB: CStrUI1
  loc_AD6FDD: FStStrNoPop var_90
  loc_AD6FE0: FLdPr Me
  loc_AD6FE3: VCallAd Control_ID_CodiBarrTxt
  loc_AD6FE6: FStAdFunc var_88
  loc_AD6FE9: FLdPr var_88
  loc_AD6FEC: Me.Text = from_stack_1
  loc_AD6FF1: FFree1Str var_90
  loc_AD6FF4: FFree1Ad var_88
  loc_AD6FF7: FLdRfVar var_90
  loc_AD6FFA: FLdPr Me
  loc_AD6FFD: VCallAd Control_ID_CodiBarrTxt
  loc_AD7000: FStAdFunc var_88
  loc_AD7003: FLdPr var_88
  loc_AD7006:  = Me.Text
  loc_AD700B: LitI2_Byte 0
  loc_AD700D: LitI2_Byte 0
  loc_AD700F: ILdRf var_90
  loc_AD7012: LitStr "codigo del barrio"
  loc_AD7015: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_AD701A: FStStrNoPop var_A4
  loc_AD701D: FLdPr Me
  loc_AD7020: MemStStrCopy
  loc_AD7024: FFreeStr var_90 = ""
  loc_AD702B: FFree1Ad var_88
  loc_AD702E: FLdPr Me
  loc_AD7031: MemLdStr global_60
  loc_AD7034: LitStr vbNullString
  loc_AD7037: NeStr
  loc_AD7039: BranchF loc_AD705F
  loc_AD703C: FLdPr Me
  loc_AD703F: MemLdStr global_60
  loc_AD7042: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD7047: FLdPr Me
  loc_AD704A: VCallAd Control_ID_CodiBarrTxt
  loc_AD704D: CVarAd
  loc_AD7051: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD7056: FFree1Var var_A0 = ""
  loc_AD7059: LitI2_Byte &HFF
  loc_AD705B: IStI2 Cancel
  loc_AD705E: ExitProcHresult
  loc_AD705F: FLdRfVar var_A4
  loc_AD7062: FLdRfVar var_90
  loc_AD7065: FLdPr Me
  loc_AD7068: VCallAd Control_ID_CodiBarrTxt
  loc_AD706B: FStAdFunc var_88
  loc_AD706E: FLdPr var_88
  loc_AD7071:  = Me.Text
  loc_AD7076: ILdRf var_90
  loc_AD7079: CI2Str
  loc_AD707B: FLdPr Me
  loc_AD707E: MemLdRfVar from_stack_1.global_52
  loc_AD7081: NewIfNullPr clsBarrio
  loc_AD7084: from_stack_2v = clsBarrio.ValidaClave(from_stack_1v)
  loc_AD7089: ILdRf var_A4
  loc_AD708C: FLdPr Me
  loc_AD708F: MemStStrCopy
  loc_AD7093: FFreeStr var_90 = ""
  loc_AD709A: FFree1Ad var_88
  loc_AD709D: FLdPr Me
  loc_AD70A0: MemLdStr global_60
  loc_AD70A3: LitStr vbNullString
  loc_AD70A6: NeStr
  loc_AD70A8: BranchF loc_AD70CE
  loc_AD70AB: FLdPr Me
  loc_AD70AE: MemLdStr global_60
  loc_AD70B1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD70B6: FLdPr Me
  loc_AD70B9: VCallAd Control_ID_CodiBarrTxt
  loc_AD70BC: CVarAd
  loc_AD70C0: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD70C5: FFree1Var var_A0 = ""
  loc_AD70C8: LitI2_Byte &HFF
  loc_AD70CA: IStI2 Cancel
  loc_AD70CD: ExitProcHresult
  loc_AD70CE: ExitProcHresult
End Sub

Public Sub EnlazaTodo() 'A8DF54
  'Data Table: 45B1D8
  loc_A8DEC4: LitI4 0
  loc_A8DEC9: LitI4 4
  loc_A8DECE: FLdRfVar var_88
  loc_A8DED1: Redim
  loc_A8DEDB: FLdPr Me
  loc_A8DEDE: MemLdRfVar from_stack_1.global_52
  loc_A8DEE1: NewIfNullAd
  loc_A8DEE4: FStAd var_8C 
  loc_A8DEE8: FLdRfVar var_8C
  loc_A8DEEB: CVarRef
  loc_A8DEF0: ParmAry1St
  loc_A8DEF6: FLdPr Me
  loc_A8DEF9: VCallAd Control_ID_CodiBarrTxt
  loc_A8DEFC: CVarAd
  loc_A8DF00: ParmAry1St
  loc_A8DF06: FLdPr Me
  loc_A8DF09: VCallAd Control_ID_DetaBarrTxt
  loc_A8DF0C: CVarAd
  loc_A8DF10: ParmAry1St
  loc_A8DF16: FLdPr Me
  loc_A8DF19: VCallAd Control_ID_CodiLocaTxt
  loc_A8DF1C: CVarAd
  loc_A8DF20: ParmAry1St
  loc_A8DF26: FLdPr Me
  loc_A8DF29: VCallAd Control_ID_DetaLocaLbl
  loc_A8DF2C: CVarAd
  loc_A8DF30: ParmAry1St
  loc_A8DF36: FLdRfVar var_88
  loc_A8DF39: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A8DF3E: ILdRf var_8C
  loc_A8DF41: CastAd
  loc_A8DF44: FLdPr Me
  loc_A8DF47: MemStAdFunc
  loc_A8DF4B: FLdRfVar var_88
  loc_A8DF4E: Erase
  loc_A8DF4F: FFree1Ad var_8C
  loc_A8DF52: ExitProcHresult
End Sub
