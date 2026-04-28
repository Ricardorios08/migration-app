VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmServDevaABM
  Caption = "Servicios de Derechos Varios"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 420
  ClientWidth = 12576
  ClientHeight = 9288
  Begin VB.ComboBox PeriInfoCbl
    Style = 2
    ForeColor = &HFF0000&
    Left = 3720
    Top = 720
    Width = 1335
    Height = 420
    TabIndex = 25
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
    Left = 240
    Top = 4560
    Width = 10695
    Height = 4455
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
    Begin VB.TextBox CodiConcTxt
      Left = 2880
      Top = 2880
      Width = 1455
      Height = 375
      TabIndex = 16
      MaxLength = 8
      DataField = "CodiConc"
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
    Begin VB.TextBox PeriInfoTxt
      ForeColor = &HFF0000&
      Left = 2880
      Top = 2400
      Width = 795
      Height = 375
      TabIndex = 14
      MaxLength = 4
      DataField = "PeriInfo"
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
    Begin VB.CheckBox CtctSedeChk
      Left = 2880
      Top = 1920
      Width = 255
      Height = 375
      TabIndex = 12
      DataField = "CtctSede"
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
    Begin VB.CheckBox VariSedeChk
      Left = 2880
      Top = 3360
      Width = 255
      Height = 300
      TabIndex = 19
      DataField = "VariSede"
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
    Begin VB.TextBox DetaSedeTxt
      Left = 2880
      Top = 1440
      Width = 7575
      Height = 360
      TabIndex = 10
      MaxLength = 60
      DataField = "DetaSede"
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
    Begin VB.TextBox ImpoSedeTxt
      Left = 2880
      Top = 3840
      Width = 1695
      Height = 360
      TabIndex = 21
      MaxLength = 8
      DataField = "ImpoSede"
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
    Begin MSMask.MaskEdBox CodiSedeMsk
      Left = 2880
      Top = 960
      Width = 1332
      Height = 360
      TabIndex = 9
      OleObjectBlob = "frmServDevaABM.frx":0000
      DataField = "CodiSede"
    End
    Begin MSMask.MaskEdBox PeriOrdeMsk
      Left = 2880
      Top = 480
      Width = 735
      Height = 360
      TabIndex = 6
      OleObjectBlob = "frmServDevaABM.frx":009A
      DataField = "PeriOrde"
    End
    Begin VB.Label Label9
      Caption = "Periodo del Concepto:"
      Left = 480
      Top = 2400
      Width = 2340
      Height = 300
      TabIndex = 13
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
      Caption = "Con Creación de Cuenta:"
      Left = 180
      Top = 1920
      Width = 2670
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
    Begin VB.Label Label6
      Caption = "¿El Importe es Variable?:"
      Left = 180
      Top = 3360
      Width = 2670
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
    Begin VB.Label Label4
      Caption = "Unidades Tributarias:"
      Left = 600
      Top = 3840
      Width = 2250
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
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1980
      Top = 480
      Width = 870
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
    Begin VB.Label Label3
      Caption = "Detalle:"
      Left = 2040
      Top = 1440
      Width = 810
      Height = 300
      TabIndex = 8
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
      Caption = "Código:"
      Left = 2040
      Top = 960
      Width = 810
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
    Begin VB.Label Label5
      Caption = "Concepto:"
      Left = 1755
      Top = 2880
      Width = 1095
      Height = 300
      TabIndex = 15
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
    Begin VB.Label Label11
      Left = 120
      Top = 2880
      Width = 60
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
    Begin VB.Label DetaConcLbl
      Left = 4440
      Top = 2880
      Width = 6015
      Height = 360
      TabIndex = 17
      BorderStyle = 1 'Fixed Single
      DataField = "DetaConc"
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
  Begin VB.Frame FiltroFra
    Left = 240
    Top = 1200
    Width = 10695
    Height = 855
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
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
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
    End
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5655
      Height = 375
      TabIndex = 2
      OleObjectBlob = "frmServDevaABM.frx":012A
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 240
    Top = 2280
    Width = 10692
    Height = 2172
    TabIndex = 3
    OleObjectBlob = "frmServDevaABM.frx":018A
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmServDevaABM.frx":03F6
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 12576
    Height = 528
    TabIndex = 23
    OleObjectBlob = "frmServDevaABM.frx":7F74
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 24
      TabStop = 0   'False
      Picture = "frmServDevaABM.frx":84D0
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin VB.Label Label8
    Caption = "Periodo:"
    Left = 2760
    Top = 720
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
End

Attribute VB_Name = "frmServDevaABM"


Private Sub FiltroMsk_UnknownEvent_0 '9C3608
  'Data Table: 4CDEE0
  loc_9C35F4: FLdPr Me
  loc_9C35F7: VCallAd Control_ID_FiltroMsk
  loc_9C35FA: CVarAd
  loc_9C35FE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3603: FFree1Var var_94 = ""
  loc_9C3606: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'B55270
  'Data Table: 4CDEE0
  loc_B54EAC: ILdRf Me
  loc_B54EAF: CastAd
  loc_B54EB2: FStAdFunc var_88
  loc_B54EB5: FLdRfVar var_88
  loc_B54EB8: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B54EBD: FFree1Ad var_88
  loc_B54EC0: FLdPr Me
  loc_B54EC3: VCallAd Control_ID_FiltroMsk
  loc_B54EC6: FStAdFunc var_88
  loc_B54EC9: FLdPr var_88
  loc_B54ECC: LateIdLdVar var_98 DispID_22 0
  loc_B54ED3: CStrVarTmp
  loc_B54ED4: FStStrNoPop var_9C
  loc_B54ED7: ImpAdCallI2 Trim$()
  loc_B54EDC: FStStrNoPop var_A0
  loc_B54EDF: LitStr vbNullString
  loc_B54EE2: NeStr
  loc_B54EE4: FFreeStr var_9C = ""
  loc_B54EEB: FFree1Ad var_88
  loc_B54EEE: FFree1Var var_98 = ""
  loc_B54EF1: BranchF loc_B5514B
  loc_B54EF4: FLdRfVar var_A2
  loc_B54EF7: FLdPr Me
  loc_B54EFA: VCallAd Control_ID_FiltroCbo
  loc_B54EFD: FStAdFunc var_88
  loc_B54F00: FLdPr var_88
  loc_B54F03:  = Me.ListIndex
  loc_B54F08: FLdI2 var_A2
  loc_B54F0B: LitI2_Byte 0
  loc_B54F0D: EqI2
  loc_B54F0E: FFree1Ad var_88
  loc_B54F11: BranchF loc_B54F83
  loc_B54F14: LitStr "CodiSede = "
  loc_B54F17: FLdPr Me
  loc_B54F1A: VCallAd Control_ID_FiltroMsk
  loc_B54F1D: FStAdFunc var_88
  loc_B54F20: FLdPr var_88
  loc_B54F23: LateIdLdVar var_98 DispID_22 0
  loc_B54F2A: CStrVarTmp
  loc_B54F2B: FStStrNoPop var_9C
  loc_B54F2E: ConcatStr
  loc_B54F2F: PopTmpLdAdStr
  loc_B54F33: FLdPr Me
  loc_B54F36: MemLdRfVar from_stack_1.global_52
  loc_B54F39: NewIfNullPr clsservdeva
  loc_B54F3C: Call clsservdeva.Filter(from_stack_1v)
  loc_B54F41: FFreeStr var_9C = ""
  loc_B54F48: FFree1Ad var_88
  loc_B54F4B: FFree1Var var_98 = ""
  loc_B54F4E: LitStr "Código de Servicio es igual a: "
  loc_B54F51: FLdPr Me
  loc_B54F54: VCallAd Control_ID_FiltroMsk
  loc_B54F57: FStAdFunc var_88
  loc_B54F5A: FLdPr var_88
  loc_B54F5D: LateIdLdVar var_98 DispID_22 0
  loc_B54F64: CStrVarTmp
  loc_B54F65: FStStrNoPop var_9C
  loc_B54F68: ConcatStr
  loc_B54F69: FStStrNoPop var_A0
  loc_B54F6C: FLdPr Me
  loc_B54F6F: MemStStrCopy
  loc_B54F73: FFreeStr var_9C = ""
  loc_B54F7A: FFree1Ad var_88
  loc_B54F7D: FFree1Var var_98 = ""
  loc_B54F80: Branch loc_B55148
  loc_B54F83: FLdRfVar var_A2
  loc_B54F86: FLdPr Me
  loc_B54F89: VCallAd Control_ID_FiltroCbo
  loc_B54F8C: FStAdFunc var_88
  loc_B54F8F: FLdPr var_88
  loc_B54F92:  = Me.ListIndex
  loc_B54F97: FLdI2 var_A2
  loc_B54F9A: LitI2_Byte 1
  loc_B54F9C: EqI2
  loc_B54F9D: FFree1Ad var_88
  loc_B54FA0: BranchF loc_B5501B
  loc_B54FA3: LitStr "DetaSede LIKE '" & Chr(37)
  loc_B54FA6: FLdPr Me
  loc_B54FA9: VCallAd Control_ID_FiltroMsk
  loc_B54FAC: FStAdFunc var_88
  loc_B54FAF: FLdPr var_88
  loc_B54FB2: LateIdLdVar var_98 DispID_22 0
  loc_B54FB9: CStrVarTmp
  loc_B54FBA: FStStrNoPop var_9C
  loc_B54FBD: ConcatStr
  loc_B54FBE: FStStrNoPop var_A0
  loc_B54FC1: LitStr Chr(37) & "'"
  loc_B54FC4: ConcatStr
  loc_B54FC5: PopTmpLdAdStr
  loc_B54FC9: FLdPr Me
  loc_B54FCC: MemLdRfVar from_stack_1.global_52
  loc_B54FCF: NewIfNullPr clsservdeva
  loc_B54FD2: Call clsservdeva.Filter(from_stack_1v)
  loc_B54FD7: FFreeStr var_9C = "": var_A0 = ""
  loc_B54FE0: FFree1Ad var_88
  loc_B54FE3: FFree1Var var_98 = ""
  loc_B54FE6: LitStr "detalle del servicio contiene: "
  loc_B54FE9: FLdPr Me
  loc_B54FEC: VCallAd Control_ID_FiltroMsk
  loc_B54FEF: FStAdFunc var_88
  loc_B54FF2: FLdPr var_88
  loc_B54FF5: LateIdLdVar var_98 DispID_22 0
  loc_B54FFC: CStrVarTmp
  loc_B54FFD: FStStrNoPop var_9C
  loc_B55000: ConcatStr
  loc_B55001: FStStrNoPop var_A0
  loc_B55004: FLdPr Me
  loc_B55007: MemStStrCopy
  loc_B5500B: FFreeStr var_9C = ""
  loc_B55012: FFree1Ad var_88
  loc_B55015: FFree1Var var_98 = ""
  loc_B55018: Branch loc_B55148
  loc_B5501B: FLdRfVar var_A2
  loc_B5501E: FLdPr Me
  loc_B55021: VCallAd Control_ID_FiltroCbo
  loc_B55024: FStAdFunc var_88
  loc_B55027: FLdPr var_88
  loc_B5502A:  = Me.ListIndex
  loc_B5502F: FLdI2 var_A2
  loc_B55032: LitI2_Byte 2
  loc_B55034: EqI2
  loc_B55035: FFree1Ad var_88
  loc_B55038: BranchF loc_B550B3
  loc_B5503B: LitStr "CodiConc LIKE '" & Chr(37)
  loc_B5503E: FLdPr Me
  loc_B55041: VCallAd Control_ID_FiltroMsk
  loc_B55044: FStAdFunc var_88
  loc_B55047: FLdPr var_88
  loc_B5504A: LateIdLdVar var_98 DispID_22 0
  loc_B55051: CStrVarTmp
  loc_B55052: FStStrNoPop var_9C
  loc_B55055: ConcatStr
  loc_B55056: FStStrNoPop var_A0
  loc_B55059: LitStr Chr(37) & "'"
  loc_B5505C: ConcatStr
  loc_B5505D: PopTmpLdAdStr
  loc_B55061: FLdPr Me
  loc_B55064: MemLdRfVar from_stack_1.global_52
  loc_B55067: NewIfNullPr clsservdeva
  loc_B5506A: Call clsservdeva.Filter(from_stack_1v)
  loc_B5506F: FFreeStr var_9C = "": var_A0 = ""
  loc_B55078: FFree1Ad var_88
  loc_B5507B: FFree1Var var_98 = ""
  loc_B5507E: LitStr "Código de concepto contiene: "
  loc_B55081: FLdPr Me
  loc_B55084: VCallAd Control_ID_FiltroMsk
  loc_B55087: FStAdFunc var_88
  loc_B5508A: FLdPr var_88
  loc_B5508D: LateIdLdVar var_98 DispID_22 0
  loc_B55094: CStrVarTmp
  loc_B55095: FStStrNoPop var_9C
  loc_B55098: ConcatStr
  loc_B55099: FStStrNoPop var_A0
  loc_B5509C: FLdPr Me
  loc_B5509F: MemStStrCopy
  loc_B550A3: FFreeStr var_9C = ""
  loc_B550AA: FFree1Ad var_88
  loc_B550AD: FFree1Var var_98 = ""
  loc_B550B0: Branch loc_B55148
  loc_B550B3: FLdRfVar var_A2
  loc_B550B6: FLdPr Me
  loc_B550B9: VCallAd Control_ID_FiltroCbo
  loc_B550BC: FStAdFunc var_88
  loc_B550BF: FLdPr var_88
  loc_B550C2:  = Me.ListIndex
  loc_B550C7: FLdI2 var_A2
  loc_B550CA: LitI2_Byte 3
  loc_B550CC: EqI2
  loc_B550CD: FFree1Ad var_88
  loc_B550D0: BranchF loc_B55148
  loc_B550D3: LitStr "DetaConc LIKE '" & Chr(37)
  loc_B550D6: FLdPr Me
  loc_B550D9: VCallAd Control_ID_FiltroMsk
  loc_B550DC: FStAdFunc var_88
  loc_B550DF: FLdPr var_88
  loc_B550E2: LateIdLdVar var_98 DispID_22 0
  loc_B550E9: CStrVarTmp
  loc_B550EA: FStStrNoPop var_9C
  loc_B550ED: ConcatStr
  loc_B550EE: FStStrNoPop var_A0
  loc_B550F1: LitStr Chr(37) & "'"
  loc_B550F4: ConcatStr
  loc_B550F5: PopTmpLdAdStr
  loc_B550F9: FLdPr Me
  loc_B550FC: MemLdRfVar from_stack_1.global_52
  loc_B550FF: NewIfNullPr clsservdeva
  loc_B55102: Call clsservdeva.Filter(from_stack_1v)
  loc_B55107: FFreeStr var_9C = "": var_A0 = ""
  loc_B55110: FFree1Ad var_88
  loc_B55113: FFree1Var var_98 = ""
  loc_B55116: LitStr "detalle del concepto contiene. "
  loc_B55119: FLdPr Me
  loc_B5511C: VCallAd Control_ID_FiltroMsk
  loc_B5511F: FStAdFunc var_88
  loc_B55122: FLdPr var_88
  loc_B55125: LateIdLdVar var_98 DispID_22 0
  loc_B5512C: CStrVarTmp
  loc_B5512D: FStStrNoPop var_9C
  loc_B55130: ConcatStr
  loc_B55131: FStStrNoPop var_A0
  loc_B55134: FLdPr Me
  loc_B55137: MemStStrCopy
  loc_B5513B: FFreeStr var_9C = ""
  loc_B55142: FFree1Ad var_88
  loc_B55145: FFree1Var var_98 = ""
  loc_B55148: Branch loc_B5517D
  loc_B5514B: LitStr vbNullString
  loc_B5514E: FStStrCopy var_9C
  loc_B55151: FLdRfVar var_9C
  loc_B55154: FLdPr Me
  loc_B55157: MemLdRfVar from_stack_1.global_52
  loc_B5515A: NewIfNullPr clsservdeva
  loc_B5515D: Call clsservdeva.Filter(from_stack_1v)
  loc_B55162: FFree1Str var_9C
  loc_B55165: FLdPr Me
  loc_B55168: MemLdRfVar from_stack_1.global_52
  loc_B5516B: NewIfNullPr clsservdeva
  loc_B5516E: Call clsservdeva.Requery()
  loc_B55173: LitStr vbNullString
  loc_B55176: FLdPr Me
  loc_B55179: MemStStrCopy
  loc_B5517D: FLdRfVar var_AC
  loc_B55180: FLdPr Me
  loc_B55183: MemLdRfVar from_stack_1.global_52
  loc_B55186: NewIfNullPr clsservdeva
  loc_B55189: from_stack_1 = clsservdeva.RecordCount
  loc_B5518E: ILdRf var_AC
  loc_B55191: LitI4 0
  loc_B55196: GtI4
  loc_B55197: BranchF loc_B55235
  loc_B5519A: FLdPr Me
  loc_B5519D: MemLdRfVar from_stack_1.global_52
  loc_B551A0: NewIfNullAd
  loc_B551A3: FStAd var_B0 
  loc_B551A7: FLdRfVar var_B0
  loc_B551AA: CVarRef
  loc_B551AF: ILdRf Me
  loc_B551B2: CastAd
  loc_B551B5: FStAdFunc var_88
  loc_B551B8: FLdRfVar var_88
  loc_B551BB: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_B551C0: ILdRf var_B0
  loc_B551C3: CastAd
  loc_B551C6: FLdPr Me
  loc_B551C9: MemStAdFunc
  loc_B551CD: FFreeAd var_88 = ""
  loc_B551D4: LitI4 0
  loc_B551D9: LitI4 1
  loc_B551DE: FLdRfVar var_C4
  loc_B551E1: Redim
  loc_B551EB: FLdPr Me
  loc_B551EE: MemLdRfVar from_stack_1.global_52
  loc_B551F1: NewIfNullAd
  loc_B551F4: FStAd var_88 
  loc_B551F8: FLdRfVar var_88
  loc_B551FB: CVarRef
  loc_B55200: ParmAry1St
  loc_B55206: FLdPr Me
  loc_B55209: VCallAd Control_ID_dgdABMS
  loc_B5520C: CVarAd
  loc_B55210: ParmAry1St
  loc_B55216: FLdRfVar var_C4
  loc_B55219: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B5521E: ILdRf var_88
  loc_B55221: CastAd
  loc_B55224: FLdPr Me
  loc_B55227: MemStAdFunc
  loc_B5522B: FLdRfVar var_C4
  loc_B5522E: Erase
  loc_B5522F: FFree1Ad var_88
  loc_B55232: Branch loc_B55249
  loc_B55235: ILdRf Me
  loc_B55238: CastAd
  loc_B5523B: FStAdFunc var_88
  loc_B5523E: FLdRfVar var_88
  loc_B55241: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B55246: FFree1Ad var_88
  loc_B55249: FLdPr Me
  loc_B5524C: VCallAd Control_ID_dgdABMS
  loc_B5524F: FStAdFunc var_B0
  loc_B55252: FLdPr Me
  loc_B55255: MemLdStr global_64
  loc_B55258: FLdZeroAd var_B0
  loc_B5525B: FStAdFunc var_88
  loc_B5525E: FLdRfVar var_88
  loc_B55261: ImpAdCallFPR4 Proc_272_56_ACCA08(, )
  loc_B55266: FFreeAd var_88 = ""
  loc_B5526D: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) 'A65508
  'Data Table: 4CDEE0
  loc_A654A4: ILdI2 KeyAscii
  loc_A654A7: LitI2_Byte &H27
  loc_A654A9: EqI2
  loc_A654AA: BranchF loc_A654B2
  loc_A654AD: LitI2_Byte 0
  loc_A654AF: IStI2 KeyAscii
  loc_A654B2: FLdRfVar var_88
  loc_A654B5: FLdPr Me
  loc_A654B8: MemLdRfVar from_stack_1.global_52
  loc_A654BB: NewIfNullPr clsservdeva
  loc_A654BE: from_stack_1 = clsservdeva.RecordCount
  loc_A654C3: ILdRf var_88
  loc_A654C6: LitI4 0
  loc_A654CB: EqI4
  loc_A654CC: ILdI2 KeyAscii
  loc_A654CF: CI4UI1
  loc_A654D0: LitI4 8
  loc_A654D5: NeI4
  loc_A654D6: AndI4
  loc_A654D7: FLdPr Me
  loc_A654DA: VCallAd Control_ID_FiltroMsk
  loc_A654DD: FStAdFunc var_8C
  loc_A654E0: FLdPr var_8C
  loc_A654E3: LateIdLdVar var_9C DispID_16 0
  loc_A654EA: CStrVarTmp
  loc_A654EB: FStStrNoPop var_A0
  loc_A654EE: LitStr vbNullString
  loc_A654F1: EqStr
  loc_A654F3: AndI4
  loc_A654F4: FFree1Str var_A0
  loc_A654F7: FFree1Ad var_8C
  loc_A654FA: FFree1Var var_9C = ""
  loc_A654FD: BranchF loc_A65505
  loc_A65500: LitI2_Byte 0
  loc_A65502: IStI2 KeyAscii
  loc_A65505: ExitProcHresult
  loc_A65506: MidStr arg_6803
End Sub

Private Sub PeriInfoTxt_GotFocus() '9C3F08
  'Data Table: 4CDEE0
  loc_9C3EF4: FLdPr Me
  loc_9C3EF7: VCallAd Control_ID_PeriInfoTxt
  loc_9C3EFA: CVarAd
  loc_9C3EFE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3F03: FFree1Var var_94 = ""
  loc_9C3F06: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9D5484
  'Data Table: 4CDEE0
  loc_9D546C: FLdPr Me
  loc_9D546F: VCallAd Control_ID_dgdABMS
  loc_9D5472: FStAdFunc var_88
  loc_9D5475: FLdRfVar var_88
  loc_9D5478: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9D547D: FFree1Ad var_88
  loc_9D5480: ExitProcHresult
  loc_9D5481: ImpAdLdFPR4 MemVar_0
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9D5568
  'Data Table: 4CDEE0
  loc_9D5550: FLdPr Me
  loc_9D5553: VCallAd Control_ID_dgdABMS
  loc_9D5556: FStAdFunc var_88
  loc_9D5559: FLdRfVar var_88
  loc_9D555C: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9D5561: FFree1Ad var_88
  loc_9D5564: ExitProcHresult
  loc_9D5565: FStR4 arg_339
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A68570
  'Data Table: 4CDEE0
  loc_A68514: FLdRfVar var_B4
  loc_A68517: FLdRfVar var_B0
  loc_A6851A: FLdI2 ColIndex
  loc_A6851D: CVarI2 var_A8
  loc_A68520: PopAdLdVar
  loc_A68521: FLdPr Me
  loc_A68524: VCallAd Control_ID_dgdABMS
  loc_A68527: FStAdFunc var_88
  loc_A6852A: FLdPr var_88
  loc_A6852D: LateIdLdVar var_98 DispID_105 0
  loc_A68534: CastAdVar Me
  loc_A68538: FStAdFunc var_AC
  loc_A6853B: FLdPr var_AC
  loc_A6853E: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A68543: FLdPr var_B0
  loc_A68546:  = Me.DataField
  loc_A6854B: FLdZeroAd var_B4
  loc_A6854E: PopTmpLdAdStr
  loc_A68552: FLdPr Me
  loc_A68555: MemLdRfVar from_stack_1.global_52
  loc_A68558: NewIfNullPr clsservdeva
  loc_A6855B: Call clsservdeva.Sort(from_stack_1v)
  loc_A68560: FFree1Str var_B8
  loc_A68563: FFreeAd var_88 = "": var_AC = ""
  loc_A6856C: FFree1Var var_98 = ""
  loc_A6856F: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'A5A200
  'Data Table: 4CDEE0
  loc_A5A198: FLdRfVar var_88
  loc_A5A19B: FLdPr Me
  loc_A5A19E: MemLdRfVar from_stack_1.global_52
  loc_A5A1A1: NewIfNullPr clsservdeva
  loc_A5A1A4: from_stack_1 = clsservdeva.RecordCount
  loc_A5A1A9: ILdRf var_88
  loc_A5A1AC: LitI4 0
  loc_A5A1B1: GtI4
  loc_A5A1B2: BranchF loc_A5A1FF
  loc_A5A1B5: FLdRfVar var_8A
  loc_A5A1B8: FLdPr Me
  loc_A5A1BB: MemLdRfVar from_stack_1.global_52
  loc_A5A1BE: NewIfNullPr clsservdeva
  loc_A5A1C1: from_stack_1 = clsservdeva.EOF
  loc_A5A1C6: FLdI2 var_8A
  loc_A5A1C9: BranchF loc_A5A1DA
  loc_A5A1CC: FLdPr Me
  loc_A5A1CF: MemLdRfVar from_stack_1.global_52
  loc_A5A1D2: NewIfNullPr clsservdeva
  loc_A5A1D5: Call clsservdeva.MoveLast()
  loc_A5A1DA: FLdRfVar var_8A
  loc_A5A1DD: FLdPr Me
  loc_A5A1E0: MemLdRfVar from_stack_1.global_52
  loc_A5A1E3: NewIfNullPr clsservdeva
  loc_A5A1E6: from_stack_1 = clsservdeva.BOF
  loc_A5A1EB: FLdI2 var_8A
  loc_A5A1EE: BranchF loc_A5A1FF
  loc_A5A1F1: FLdPr Me
  loc_A5A1F4: MemLdRfVar from_stack_1.global_52
  loc_A5A1F7: NewIfNullPr clsservdeva
  loc_A5A1FA: Call clsservdeva.MoveFirst()
  loc_A5A1FF: ExitProcHresult
End Sub

Private Sub CodiConcTxt_GotFocus() '9C2F48
  'Data Table: 4CDEE0
  loc_9C2F34: FLdPr Me
  loc_9C2F37: VCallAd Control_ID_CodiConcTxt
  loc_9C2F3A: CVarAd
  loc_9C2F3E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2F43: FFree1Var var_94 = ""
  loc_9C2F46: ExitProcHresult
End Sub

Private Sub CodiConcTxt_KeyPress(KeyAscii As Integer) 'AF2160
  'Data Table: 4CDEE0
  loc_AF1FAC: ILdI2 KeyAscii
  loc_AF1FAF: CI4UI1
  loc_AF1FB0: LitI4 &H20
  loc_AF1FB5: EqI4
  loc_AF1FB6: BranchF loc_AF215D
  loc_AF1FB9: LitI2_Byte 0
  loc_AF1FBB: IStI2 KeyAscii
  loc_AF1FBE: FLdRfVar var_8A
  loc_AF1FC1: FLdPr Me
  loc_AF1FC4: VCallAd Control_ID_CtctSedeChk
  loc_AF1FC7: FStAdFunc var_88
  loc_AF1FCA: FLdPr var_88
  loc_AF1FCD:  = Me.Value
  loc_AF1FD2: FLdI2 var_8A
  loc_AF1FD5: LitI2_Byte 0
  loc_AF1FD7: EqI2
  loc_AF1FD8: FFree1Ad var_88
  loc_AF1FDB: BranchF loc_AF208F
  loc_AF1FDE: LitVar_Missing var_AC
  loc_AF1FE1: PopAdLdVar
  loc_AF1FE2: LitVarI4
  loc_AF1FEA: PopAdLdVar
  loc_AF1FEB: ImpAdLdRf MemVar_D94278
  loc_AF1FEE: NewIfNullPr dlgBuscarConceptoDsVcSinCreacion
  loc_AF1FF1: dlgBuscarConceptoDsVcSinCreacion.Show from_stack_1, from_stack_2
  loc_AF1FF6: FLdRfVar var_B0
  loc_AF1FF9: FLdRfVar var_88
  loc_AF1FFC: ImpAdLdRf MemVar_D94278
  loc_AF1FFF: NewIfNullPr dlgBuscarConceptoDsVcSinCreacion
  loc_AF2002: from_stack_1v = dlgBuscarConceptoDsVcSinCreacion.global_4274648Get()
  loc_AF2007: FLdPr var_88
  loc_AF200A: from_stack_1 = clsconcepto.RecordCount
  loc_AF200F: ILdRf var_B0
  loc_AF2012: LitI4 0
  loc_AF2017: GtI4
  loc_AF2018: FFree1Ad var_88
  loc_AF201B: BranchF loc_AF208C
  loc_AF201E: FLdRfVar var_B4
  loc_AF2021: FLdRfVar var_88
  loc_AF2024: ImpAdLdRf MemVar_D94278
  loc_AF2027: NewIfNullPr dlgBuscarConceptoDsVcSinCreacion
  loc_AF202A: from_stack_1v = dlgBuscarConceptoDsVcSinCreacion.global_4274648Get()
  loc_AF202F: FLdPr var_88
  loc_AF2032: from_stack_1 = clsconcepto.CodiConc
  loc_AF2037: ILdRf var_B4
  loc_AF203A: FLdPr Me
  loc_AF203D: VCallAd Control_ID_CodiConcTxt
  loc_AF2040: FStAdFunc var_B8
  loc_AF2043: FLdPr var_B8
  loc_AF2046: Me.Text = from_stack_1
  loc_AF204B: FFree1Str var_B4
  loc_AF204E: FFreeAd var_88 = ""
  loc_AF2055: FLdRfVar var_B4
  loc_AF2058: FLdRfVar var_88
  loc_AF205B: ImpAdLdRf MemVar_D94278
  loc_AF205E: NewIfNullPr dlgBuscarConceptoDsVcSinCreacion
  loc_AF2061: from_stack_1v = dlgBuscarConceptoDsVcSinCreacion.global_4274648Get()
  loc_AF2066: FLdPr var_88
  loc_AF2069: from_stack_1 = clsconcepto.DetaConc
  loc_AF206E: ILdRf var_B4
  loc_AF2071: FLdPr Me
  loc_AF2074: VCallAd Control_ID_DetaConcLbl
  loc_AF2077: FStAdFunc var_B8
  loc_AF207A: FLdPr var_B8
  loc_AF207D: Me.Caption = from_stack_1
  loc_AF2082: FFree1Str var_B4
  loc_AF2085: FFreeAd var_88 = ""
  loc_AF208C: Branch loc_AF215D
  loc_AF208F: FLdRfVar var_8A
  loc_AF2092: FLdPr Me
  loc_AF2095: VCallAd Control_ID_CtctSedeChk
  loc_AF2098: FStAdFunc var_88
  loc_AF209B: FLdPr var_88
  loc_AF209E:  = Me.Value
  loc_AF20A3: FLdI2 var_8A
  loc_AF20A6: LitI2_Byte 1
  loc_AF20A8: EqI2
  loc_AF20A9: FFree1Ad var_88
  loc_AF20AC: BranchF loc_AF215D
  loc_AF20AF: LitVar_Missing var_AC
  loc_AF20B2: PopAdLdVar
  loc_AF20B3: LitVarI4
  loc_AF20BB: PopAdLdVar
  loc_AF20BC: ImpAdLdRf MemVar_D94340
  loc_AF20BF: NewIfNullPr dlgBuscarConceptoDsVcConCreacion
  loc_AF20C2: dlgBuscarConceptoDsVcConCreacion.Show from_stack_1, from_stack_2
  loc_AF20C7: FLdRfVar var_B0
  loc_AF20CA: FLdRfVar var_88
  loc_AF20CD: ImpAdLdRf MemVar_D94340
  loc_AF20D0: NewIfNullPr dlgBuscarConceptoDsVcConCreacion
  loc_AF20D3: from_stack_1v = dlgBuscarConceptoDsVcConCreacion.global_4272952Get()
  loc_AF20D8: FLdPr var_88
  loc_AF20DB: from_stack_1 = clsconcepto.RecordCount
  loc_AF20E0: ILdRf var_B0
  loc_AF20E3: LitI4 0
  loc_AF20E8: GtI4
  loc_AF20E9: FFree1Ad var_88
  loc_AF20EC: BranchF loc_AF215D
  loc_AF20EF: FLdRfVar var_B4
  loc_AF20F2: FLdRfVar var_88
  loc_AF20F5: ImpAdLdRf MemVar_D94340
  loc_AF20F8: NewIfNullPr dlgBuscarConceptoDsVcConCreacion
  loc_AF20FB: from_stack_1v = dlgBuscarConceptoDsVcConCreacion.global_4272952Get()
  loc_AF2100: FLdPr var_88
  loc_AF2103: from_stack_1 = clsconcepto.CodiConc
  loc_AF2108: ILdRf var_B4
  loc_AF210B: FLdPr Me
  loc_AF210E: VCallAd Control_ID_CodiConcTxt
  loc_AF2111: FStAdFunc var_B8
  loc_AF2114: FLdPr var_B8
  loc_AF2117: Me.Text = from_stack_1
  loc_AF211C: FFree1Str var_B4
  loc_AF211F: FFreeAd var_88 = ""
  loc_AF2126: FLdRfVar var_B4
  loc_AF2129: FLdRfVar var_88
  loc_AF212C: ImpAdLdRf MemVar_D94340
  loc_AF212F: NewIfNullPr dlgBuscarConceptoDsVcConCreacion
  loc_AF2132: from_stack_1v = dlgBuscarConceptoDsVcConCreacion.global_4272952Get()
  loc_AF2137: FLdPr var_88
  loc_AF213A: from_stack_1 = clsconcepto.DetaConc
  loc_AF213F: ILdRf var_B4
  loc_AF2142: FLdPr Me
  loc_AF2145: VCallAd Control_ID_DetaConcLbl
  loc_AF2148: FStAdFunc var_B8
  loc_AF214B: FLdPr var_B8
  loc_AF214E: Me.Caption = from_stack_1
  loc_AF2153: FFree1Str var_B4
  loc_AF2156: FFreeAd var_88 = ""
  loc_AF215D: ExitProcHresult
  loc_AF215E: FFreeStr  = ""
End Sub

Private Sub CodiConcTxt_Validate(Cancel As Boolean) 'B12534
  'Data Table: 4CDEE0
  loc_B122E0: FLdRfVar var_8A
  loc_B122E3: FLdPr Me
  loc_B122E6: VCallAd Control_ID_cmdCancelar
  loc_B122E9: FStAdFunc var_88
  loc_B122EC: FLdPr var_88
  loc_B122EF:  = Me.Value
  loc_B122F4: FLdI2 var_8A
  loc_B122F7: NotI4
  loc_B122F8: FLdRfVar var_92
  loc_B122FB: FLdPr Me
  loc_B122FE: VCallAd Control_ID_CodiConcTxt
  loc_B12301: FStAdFunc var_90
  loc_B12304: FLdPr var_90
  loc_B12307:  = Me.Enabled
  loc_B1230C: FLdI2 var_92
  loc_B1230F: AndI4
  loc_B12310: FFreeAd var_88 = ""
  loc_B12317: BranchF loc_B12531
  loc_B1231A: FLdRfVar var_8A
  loc_B1231D: FLdPr Me
  loc_B12320: VCallAd Control_ID_CtctSedeChk
  loc_B12323: FStAdFunc var_88
  loc_B12326: FLdPr var_88
  loc_B12329:  = Me.Value
  loc_B1232E: FLdI2 var_8A
  loc_B12331: LitI2_Byte 0
  loc_B12333: EqI2
  loc_B12334: FFree1Ad var_88
  loc_B12337: BranchF loc_B12427
  loc_B1233A: FLdRfVar var_98
  loc_B1233D: FLdPr Me
  loc_B12340: VCallAd Control_ID_PeriInfoTxt
  loc_B12343: FStAdFunc var_88
  loc_B12346: FLdPr var_88
  loc_B12349:  = Me.Text
  loc_B1234E: FLdRfVar var_9C
  loc_B12351: FLdPr Me
  loc_B12354: VCallAd Control_ID_CodiConcTxt
  loc_B12357: FStAdFunc var_90
  loc_B1235A: FLdPr var_90
  loc_B1235D:  = Me.Text
  loc_B12362: LitI2_Byte 0
  loc_B12364: LitI2_Byte 0
  loc_B12366: LitI2_Byte 0
  loc_B12368: LitI2_Byte 0
  loc_B1236A: LitI2_Byte &HFF
  loc_B1236C: LitI2_Byte 0
  loc_B1236E: LitI2_Byte 0
  loc_B12370: LitI2_Byte &HFF
  loc_B12372: LitI2_Byte &HFF
  loc_B12374: ILdRf var_9C
  loc_B12377: ILdRf var_98
  loc_B1237A: CI2Str
  loc_B1237C: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_B12381: FStStrNoPop var_A0
  loc_B12384: FLdPr Me
  loc_B12387: MemStStrCopy
  loc_B1238B: FFreeStr var_98 = "": var_9C = ""
  loc_B12394: FFreeAd var_88 = ""
  loc_B1239B: FLdPr Me
  loc_B1239E: VCallAd Control_ID_CodiConcTxt
  loc_B123A1: FStAdFuncNoPop
  loc_B123A4: CastAd
  loc_B123A7: FStAdFunc var_90
  loc_B123AA: FLdRfVar var_90
  loc_B123AD: FLdPr Me
  loc_B123B0: MemLdStr global_68
  loc_B123B3: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_B123B8: IStI2 Cancel
  loc_B123BB: FFreeAd var_88 = ""
  loc_B123C2: ILdI2 Cancel
  loc_B123C5: NotI4
  loc_B123C6: BranchF loc_B12424
  loc_B123C9: FLdRfVar var_98
  loc_B123CC: FLdPr Me
  loc_B123CF: VCallAd Control_ID_PeriInfoTxt
  loc_B123D2: FStAdFunc var_88
  loc_B123D5: FLdPr var_88
  loc_B123D8:  = Me.Text
  loc_B123DD: FLdRfVar var_9C
  loc_B123E0: FLdPr Me
  loc_B123E3: VCallAd Control_ID_CodiConcTxt
  loc_B123E6: FStAdFunc var_90
  loc_B123E9: FLdPr var_90
  loc_B123EC:  = Me.Text
  loc_B123F1: ILdRf var_9C
  loc_B123F4: ILdRf var_98
  loc_B123F7: CI2Str
  loc_B123F9: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_B123FE: FStStrNoPop var_A0
  loc_B12401: FLdPr Me
  loc_B12404: VCallAd Control_ID_DetaConcLbl
  loc_B12407: FStAdFunc var_A4
  loc_B1240A: FLdPr var_A4
  loc_B1240D: Me.Caption = from_stack_1
  loc_B12412: FFreeStr var_98 = "": var_9C = ""
  loc_B1241B: FFreeAd var_88 = "": var_90 = ""
  loc_B12424: Branch loc_B12531
  loc_B12427: FLdRfVar var_8A
  loc_B1242A: FLdPr Me
  loc_B1242D: VCallAd Control_ID_CtctSedeChk
  loc_B12430: FStAdFunc var_88
  loc_B12433: FLdPr var_88
  loc_B12436:  = Me.Value
  loc_B1243B: FLdI2 var_8A
  loc_B1243E: LitI2_Byte 1
  loc_B12440: EqI2
  loc_B12441: FFree1Ad var_88
  loc_B12444: BranchF loc_B12531
  loc_B12447: FLdRfVar var_98
  loc_B1244A: FLdPr Me
  loc_B1244D: VCallAd Control_ID_PeriInfoTxt
  loc_B12450: FStAdFunc var_88
  loc_B12453: FLdPr var_88
  loc_B12456:  = Me.Text
  loc_B1245B: FLdRfVar var_9C
  loc_B1245E: FLdPr Me
  loc_B12461: VCallAd Control_ID_CodiConcTxt
  loc_B12464: FStAdFunc var_90
  loc_B12467: FLdPr var_90
  loc_B1246A:  = Me.Text
  loc_B1246F: LitI2_Byte 0
  loc_B12471: LitI2_Byte 0
  loc_B12473: LitI2_Byte 0
  loc_B12475: LitI2_Byte &HFF
  loc_B12477: LitI2_Byte &HFF
  loc_B12479: LitI2_Byte 0
  loc_B1247B: LitI2_Byte &HFF
  loc_B1247D: LitI2_Byte 0
  loc_B1247F: LitI2_Byte &HFF
  loc_B12481: ILdRf var_9C
  loc_B12484: ILdRf var_98
  loc_B12487: CI2Str
  loc_B12489: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_B1248E: FStStrNoPop var_A0
  loc_B12491: FLdPr Me
  loc_B12494: MemStStrCopy
  loc_B12498: FFreeStr var_98 = "": var_9C = ""
  loc_B124A1: FFreeAd var_88 = ""
  loc_B124A8: FLdPr Me
  loc_B124AB: VCallAd Control_ID_CodiConcTxt
  loc_B124AE: FStAdFuncNoPop
  loc_B124B1: CastAd
  loc_B124B4: FStAdFunc var_90
  loc_B124B7: FLdRfVar var_90
  loc_B124BA: FLdPr Me
  loc_B124BD: MemLdStr global_68
  loc_B124C0: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_B124C5: IStI2 Cancel
  loc_B124C8: FFreeAd var_88 = ""
  loc_B124CF: ILdI2 Cancel
  loc_B124D2: NotI4
  loc_B124D3: BranchF loc_B12531
  loc_B124D6: FLdRfVar var_98
  loc_B124D9: FLdPr Me
  loc_B124DC: VCallAd Control_ID_PeriInfoTxt
  loc_B124DF: FStAdFunc var_88
  loc_B124E2: FLdPr var_88
  loc_B124E5:  = Me.Text
  loc_B124EA: FLdRfVar var_9C
  loc_B124ED: FLdPr Me
  loc_B124F0: VCallAd Control_ID_CodiConcTxt
  loc_B124F3: FStAdFunc var_90
  loc_B124F6: FLdPr var_90
  loc_B124F9:  = Me.Text
  loc_B124FE: ILdRf var_9C
  loc_B12501: ILdRf var_98
  loc_B12504: CI2Str
  loc_B12506: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_B1250B: FStStrNoPop var_A0
  loc_B1250E: FLdPr Me
  loc_B12511: VCallAd Control_ID_DetaConcLbl
  loc_B12514: FStAdFunc var_A4
  loc_B12517: FLdPr var_A4
  loc_B1251A: Me.Caption = from_stack_1
  loc_B1251F: FFreeStr var_98 = "": var_9C = ""
  loc_B12528: FFreeAd var_88 = "": var_90 = ""
  loc_B12531: ExitProcHresult
  loc_B12532: CStrVarTmp
End Sub

Private Sub cmdCancelar_Click() 'ADDF6C
  'Data Table: 4CDEE0
  loc_ADDE24: LitI2_Byte 0
  loc_ADDE26: FLdPr Me
  loc_ADDE29: MemStI2 global_60
  loc_ADDE2C: LitI2_Byte 0
  loc_ADDE2E: ILdRf Me
  loc_ADDE31: CastAd
  loc_ADDE34: FStAdFunc var_88
  loc_ADDE37: FLdRfVar var_88
  loc_ADDE3A: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_ADDE3F: FFree1Ad var_88
  loc_ADDE42: LitI4 0
  loc_ADDE47: LitI4 0
  loc_ADDE4C: FLdRfVar var_8C
  loc_ADDE4F: Redim
  loc_ADDE59: FLdPr Me
  loc_ADDE5C: VCallAd Control_ID_dgdABMS
  loc_ADDE5F: CVarAd
  loc_ADDE63: ParmAry1St
  loc_ADDE69: FLdRfVar var_8C
  loc_ADDE6C: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ADDE71: FLdRfVar var_8C
  loc_ADDE74: Erase
  loc_ADDE75: FLdPr Me
  loc_ADDE78: MemLdRfVar from_stack_1.global_52
  loc_ADDE7B: NewIfNullAd
  loc_ADDE7E: FStAd var_A0 
  loc_ADDE82: FLdRfVar var_A0
  loc_ADDE85: CVarRef
  loc_ADDE8A: ILdRf Me
  loc_ADDE8D: CastAd
  loc_ADDE90: FStAdFunc var_88
  loc_ADDE93: FLdRfVar var_88
  loc_ADDE96: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_ADDE9B: ILdRf var_A0
  loc_ADDE9E: CastAd
  loc_ADDEA1: FLdPr Me
  loc_ADDEA4: MemStAdFunc
  loc_ADDEA8: FFreeAd var_88 = ""
  loc_ADDEAF: FLdRfVar var_B4
  loc_ADDEB2: FLdPr Me
  loc_ADDEB5: MemLdRfVar from_stack_1.global_52
  loc_ADDEB8: NewIfNullPr clsservdeva
  loc_ADDEBB: from_stack_1 = clsservdeva.RecordCount
  loc_ADDEC0: ILdRf var_B4
  loc_ADDEC3: LitI4 0
  loc_ADDEC8: EqI4
  loc_ADDEC9: BranchF loc_ADDEE0
  loc_ADDECC: ILdRf Me
  loc_ADDECF: CastAd
  loc_ADDED2: FStAdFunc var_88
  loc_ADDED5: FLdRfVar var_88
  loc_ADDED8: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_ADDEDD: FFree1Ad var_88
  loc_ADDEE0: ILdRf Me
  loc_ADDEE3: CastAd
  loc_ADDEE6: FStAdFunc var_88
  loc_ADDEE9: FLdRfVar var_88
  loc_ADDEEC: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_ADDEF1: FFree1Ad var_88
  loc_ADDEF4: LitI4 0
  loc_ADDEF9: LitI4 2
  loc_ADDEFE: FLdRfVar var_8C
  loc_ADDF01: Redim
  loc_ADDF0B: FLdPr Me
  loc_ADDF0E: VCallAd Control_ID_FiltroCbo
  loc_ADDF11: CVarAd
  loc_ADDF15: ParmAry1St
  loc_ADDF1B: FLdPr Me
  loc_ADDF1E: VCallAd Control_ID_FiltroMsk
  loc_ADDF21: CVarAd
  loc_ADDF25: ParmAry1St
  loc_ADDF2B: FLdPr Me
  loc_ADDF2E: VCallAd Control_ID_PeriInfoCbl
  loc_ADDF31: CVarAd
  loc_ADDF35: ParmAry1St
  loc_ADDF3B: FLdRfVar var_8C
  loc_ADDF3E: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ADDF43: FLdRfVar var_8C
  loc_ADDF46: Erase
  loc_ADDF47: FLdPr Me
  loc_ADDF4A: VCallAd Control_ID_dgdABMS
  loc_ADDF4D: FStAdFunc var_A0
  loc_ADDF50: FLdPr Me
  loc_ADDF53: MemLdStr global_64
  loc_ADDF56: FLdZeroAd var_A0
  loc_ADDF59: FStAdFunc var_88
  loc_ADDF5C: FLdRfVar var_88
  loc_ADDF5F: ImpAdCallFPR4 Proc_272_56_ACCA08(, )
  loc_ADDF64: FFreeAd var_88 = ""
  loc_ADDF6B: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BF0724
  'Data Table: 4CDEE0
  loc_BEFF20: ILdRf Button
  loc_BEFF23: FStAd var_88 
  loc_BEFF27: FLdRfVar var_90
  loc_BEFF2A: FLdPr var_88
  loc_BEFF2D:  = Me.Key
  loc_BEFF32: FLdZeroAd var_90
  loc_BEFF35: FStStr var_94
  loc_BEFF38: ILdRf var_94
  loc_BEFF3B: LitStr "btnCrear"
  loc_BEFF3E: EqStr
  loc_BEFF40: BranchF loc_BF0117
  loc_BEFF43: LitI2_Byte 1
  loc_BEFF45: FLdPr Me
  loc_BEFF48: MemStI2 global_60
  loc_BEFF4B: ILdRf Me
  loc_BEFF4E: CastAd
  loc_BEFF51: FStAdFunc var_98
  loc_BEFF54: FLdRfVar var_98
  loc_BEFF57: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BEFF5C: FFree1Ad var_98
  loc_BEFF5F: LitI4 0
  loc_BEFF64: LitI4 2
  loc_BEFF69: FLdRfVar var_9C
  loc_BEFF6C: Redim
  loc_BEFF76: FLdPr Me
  loc_BEFF79: VCallAd Control_ID_dgdABMS
  loc_BEFF7C: CVarAd
  loc_BEFF80: ParmAry1St
  loc_BEFF86: FLdPr Me
  loc_BEFF89: VCallAd Control_ID_FiltroCbo
  loc_BEFF8C: CVarAd
  loc_BEFF90: ParmAry1St
  loc_BEFF96: FLdPr Me
  loc_BEFF99: VCallAd Control_ID_FiltroMsk
  loc_BEFF9C: CVarAd
  loc_BEFFA0: ParmAry1St
  loc_BEFFA6: FLdRfVar var_9C
  loc_BEFFA9: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BEFFAE: FLdRfVar var_9C
  loc_BEFFB1: Erase
  loc_BEFFB2: ILdRf Me
  loc_BEFFB5: CastAd
  loc_BEFFB8: FStAdFunc var_98
  loc_BEFFBB: FLdRfVar var_98
  loc_BEFFBE: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BEFFC3: FFree1Ad var_98
  loc_BEFFC6: ILdRf Me
  loc_BEFFC9: CastAd
  loc_BEFFCC: FStAdFunc var_98
  loc_BEFFCF: FLdRfVar var_98
  loc_BEFFD2: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_BEFFD7: FFree1Ad var_98
  loc_BEFFDA: ILdRf Me
  loc_BEFFDD: CastAd
  loc_BEFFE0: FStAdFunc var_98
  loc_BEFFE3: FLdRfVar var_98
  loc_BEFFE6: ImpAdCallFPR4 Proc_272_17_A8BE98()
  loc_BEFFEB: FFree1Ad var_98
  loc_BEFFEE: LitI4 0
  loc_BEFFF3: LitI4 1
  loc_BEFFF8: FLdRfVar var_9C
  loc_BEFFFB: Redim
  loc_BF0005: FLdPr Me
  loc_BF0008: VCallAd Control_ID_PeriOrdeMsk
  loc_BF000B: CVarAd
  loc_BF000F: ParmAry1St
  loc_BF0015: FLdPr Me
  loc_BF0018: VCallAd Control_ID_PeriInfoTxt
  loc_BF001B: CVarAd
  loc_BF001F: ParmAry1St
  loc_BF0025: FLdRfVar var_9C
  loc_BF0028: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BF002D: FLdRfVar var_9C
  loc_BF0030: Erase
  loc_BF0031: FLdRfVar var_90
  loc_BF0034: FLdPr Me
  loc_BF0037: VCallAd Control_ID_PeriInfoCbl
  loc_BF003A: FStAdFunc var_98
  loc_BF003D: FLdPr var_98
  loc_BF0040:  = Me.Text
  loc_BF0045: FLdZeroAd var_90
  loc_BF0048: CVarStr var_AC
  loc_BF004B: PopAdLdVar
  loc_BF004C: FLdPr Me
  loc_BF004F: VCallAd Control_ID_PeriOrdeMsk
  loc_BF0052: FStAdFunc var_E0
  loc_BF0055: FLdPr var_E0
  loc_BF0058: LateIdSt
  loc_BF005D: FFreeAd var_98 = ""
  loc_BF0064: FFree1Var var_AC = ""
  loc_BF0067: LitI2_Byte 0
  loc_BF0069: CStrUI1
  loc_BF006B: CVarStr var_AC
  loc_BF006E: PopAdLdVar
  loc_BF006F: FLdPr Me
  loc_BF0072: VCallAd Control_ID_CodiSedeMsk
  loc_BF0075: FStAdFunc var_98
  loc_BF0078: FLdPr var_98
  loc_BF007B: LateIdSt
  loc_BF0080: FFree1Ad var_98
  loc_BF0083: FFree1Var var_AC = ""
  loc_BF0086: LitI2_Byte 0
  loc_BF0088: FLdPr Me
  loc_BF008B: VCallAd Control_ID_VariSedeChk
  loc_BF008E: FStAdFunc var_98
  loc_BF0091: FLdPr var_98
  loc_BF0094: Me.Value = from_stack_1
  loc_BF0099: FFree1Ad var_98
  loc_BF009C: FLdRfVar var_90
  loc_BF009F: FLdPr Me
  loc_BF00A2: VCallAd Control_ID_PeriInfoCbl
  loc_BF00A5: FStAdFunc var_98
  loc_BF00A8: FLdPr var_98
  loc_BF00AB:  = Me.Text
  loc_BF00B0: ILdRf var_90
  loc_BF00B3: FLdPr Me
  loc_BF00B6: VCallAd Control_ID_PeriInfoTxt
  loc_BF00B9: FStAdFunc var_E0
  loc_BF00BC: FLdPr var_E0
  loc_BF00BF: Me.Text = from_stack_1
  loc_BF00C4: FFree1Str var_90
  loc_BF00C7: FFreeAd var_98 = ""
  loc_BF00CE: LitI2_Byte 0
  loc_BF00D0: FLdPr Me
  loc_BF00D3: VCallAd Control_ID_CtctSedeChk
  loc_BF00D6: FStAdFunc var_98
  loc_BF00D9: FLdPr var_98
  loc_BF00DC: Me.Value = from_stack_1
  loc_BF00E1: FFree1Ad var_98
  loc_BF00E4: LitI2_Byte 0
  loc_BF00E6: CStrUI1
  loc_BF00E8: FStStrNoPop var_90
  loc_BF00EB: FLdPr Me
  loc_BF00EE: VCallAd Control_ID_ImpoSedeTxt
  loc_BF00F1: FStAdFunc var_98
  loc_BF00F4: FLdPr var_98
  loc_BF00F7: Me.Text = from_stack_1
  loc_BF00FC: FFree1Str var_90
  loc_BF00FF: FFree1Ad var_98
  loc_BF0102: FLdPr Me
  loc_BF0105: VCallAd Control_ID_CodiSedeMsk
  loc_BF0108: CVarAd
  loc_BF010C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BF0111: FFree1Var var_AC = ""
  loc_BF0114: Branch loc_BF0720
  loc_BF0117: ILdRf var_94
  loc_BF011A: LitStr "btnModificar"
  loc_BF011D: EqStr
  loc_BF011F: BranchF loc_BF022E
  loc_BF0122: FLdRfVar var_E4
  loc_BF0125: FLdPr Me
  loc_BF0128: MemLdRfVar from_stack_1.global_52
  loc_BF012B: NewIfNullPr clsservdeva
  loc_BF012E: from_stack_1 = clsservdeva.RecordCount
  loc_BF0133: ILdRf var_E4
  loc_BF0136: LitI4 0
  loc_BF013B: GtI4
  loc_BF013C: BranchF loc_BF022B
  loc_BF013F: LitI2_Byte 2
  loc_BF0141: FLdPr Me
  loc_BF0144: MemStI2 global_60
  loc_BF0147: ILdRf Me
  loc_BF014A: CastAd
  loc_BF014D: FStAdFunc var_98
  loc_BF0150: FLdRfVar var_98
  loc_BF0153: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BF0158: FFree1Ad var_98
  loc_BF015B: LitI4 0
  loc_BF0160: LitI4 2
  loc_BF0165: FLdRfVar var_9C
  loc_BF0168: Redim
  loc_BF0172: FLdPr Me
  loc_BF0175: VCallAd Control_ID_dgdABMS
  loc_BF0178: CVarAd
  loc_BF017C: ParmAry1St
  loc_BF0182: FLdPr Me
  loc_BF0185: VCallAd Control_ID_FiltroCbo
  loc_BF0188: CVarAd
  loc_BF018C: ParmAry1St
  loc_BF0192: FLdPr Me
  loc_BF0195: VCallAd Control_ID_FiltroMsk
  loc_BF0198: CVarAd
  loc_BF019C: ParmAry1St
  loc_BF01A2: FLdRfVar var_9C
  loc_BF01A5: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BF01AA: FLdRfVar var_9C
  loc_BF01AD: Erase
  loc_BF01AE: ILdRf Me
  loc_BF01B1: CastAd
  loc_BF01B4: FStAdFunc var_98
  loc_BF01B7: FLdRfVar var_98
  loc_BF01BA: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BF01BF: FFree1Ad var_98
  loc_BF01C2: ILdRf Me
  loc_BF01C5: CastAd
  loc_BF01C8: FStAdFunc var_98
  loc_BF01CB: FLdRfVar var_98
  loc_BF01CE: ImpAdCallFPR4 Proc_272_17_A8BE98()
  loc_BF01D3: FFree1Ad var_98
  loc_BF01D6: LitI4 0
  loc_BF01DB: LitI4 1
  loc_BF01E0: FLdRfVar var_9C
  loc_BF01E3: Redim
  loc_BF01ED: FLdPr Me
  loc_BF01F0: VCallAd Control_ID_PeriOrdeMsk
  loc_BF01F3: CVarAd
  loc_BF01F7: ParmAry1St
  loc_BF01FD: FLdPr Me
  loc_BF0200: VCallAd Control_ID_CodiSedeMsk
  loc_BF0203: CVarAd
  loc_BF0207: ParmAry1St
  loc_BF020D: FLdRfVar var_9C
  loc_BF0210: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BF0215: FLdRfVar var_9C
  loc_BF0218: Erase
  loc_BF0219: FLdPr Me
  loc_BF021C: VCallAd Control_ID_DetaSedeTxt
  loc_BF021F: CVarAd
  loc_BF0223: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BF0228: FFree1Var var_AC = ""
  loc_BF022B: Branch loc_BF0720
  loc_BF022E: ILdRf var_94
  loc_BF0231: LitStr "btnEliminar"
  loc_BF0234: EqStr
  loc_BF0236: BranchF loc_BF0376
  loc_BF0239: FLdRfVar var_E4
  loc_BF023C: FLdPr Me
  loc_BF023F: MemLdRfVar from_stack_1.global_52
  loc_BF0242: NewIfNullPr clsservdeva
  loc_BF0245: from_stack_1 = clsservdeva.RecordCount
  loc_BF024A: ILdRf var_E4
  loc_BF024D: LitI4 0
  loc_BF0252: GtI4
  loc_BF0253: BranchF loc_BF0373
  loc_BF0256: FLdPr Me
  loc_BF0259: VCallAd Control_ID_PeriOrdeMsk
  loc_BF025C: FStAdFunc var_98
  loc_BF025F: FLdPr var_98
  loc_BF0262: LateIdLdVar var_AC DispID_0 0
  loc_BF0269: PopAd
  loc_BF026B: FLdPr Me
  loc_BF026E: VCallAd Control_ID_CodiSedeMsk
  loc_BF0271: FStAdFunc var_E0
  loc_BF0274: FLdPr var_E0
  loc_BF0277: LateIdLdVar var_BC DispID_0 0
  loc_BF027E: PopAd
  loc_BF0280: FLdRfVar var_F0
  loc_BF0283: FLdRfVar var_BC
  loc_BF0286: CStrVarTmp
  loc_BF0287: FStStrNoPop var_EC
  loc_BF028A: CI2Str
  loc_BF028C: FLdRfVar var_AC
  loc_BF028F: CStrVarTmp
  loc_BF0290: FStStrNoPop var_90
  loc_BF0293: CI2Str
  loc_BF0295: FLdPr Me
  loc_BF0298: MemLdRfVar from_stack_1.global_52
  loc_BF029B: NewIfNullPr clsservdeva
  loc_BF029E: from_stack_3v = clsservdeva.ValidaEliminar(from_stack_1v, from_stack_2v)
  loc_BF02A3: ILdRf var_F0
  loc_BF02A6: FLdPr Me
  loc_BF02A9: MemStStrCopy
  loc_BF02AD: FFreeStr var_90 = "": var_EC = ""
  loc_BF02B6: FFreeAd var_98 = ""
  loc_BF02BD: FFreeVar var_AC = ""
  loc_BF02C4: FLdPr Me
  loc_BF02C7: MemLdStr global_68
  loc_BF02CA: LitStr vbNullString
  loc_BF02CD: NeStr
  loc_BF02CF: BranchF loc_BF02F5
  loc_BF02D2: FLdPr Me
  loc_BF02D5: MemLdStr global_68
  loc_BF02D8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BF02DD: FLdPr Me
  loc_BF02E0: VCallAd Control_ID_DetaSedeTxt
  loc_BF02E3: CVarAd
  loc_BF02E7: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BF02EC: FFree1Var var_AC = ""
  loc_BF02EF: LitI2_Byte &HFF
  loc_BF02F1: FStI2 var_E6
  loc_BF02F4: ExitProcHresult
  loc_BF02F5: LitI2_Byte 3
  loc_BF02F7: FLdPr Me
  loc_BF02FA: MemStI2 global_60
  loc_BF02FD: LitI2_Byte 0
  loc_BF02FF: PopTmpLdAd2 var_F4
  loc_BF0302: LitI2_Byte &HFF
  loc_BF0304: PopTmpLdAd2 var_F2
  loc_BF0307: LitStr "¿Desea eliminar el registro?"
  loc_BF030A: ImpAdCallI2 Proc_272_31_AB42E0(, , )
  loc_BF030F: CI4UI1
  loc_BF0310: LitI4 6
  loc_BF0315: EqI4
  loc_BF0316: BranchF loc_BF0373
  loc_BF0319: FLdPr Me
  loc_BF031C: VCallAd Control_ID_PeriOrdeMsk
  loc_BF031F: FStAdFunc var_98
  loc_BF0322: FLdPr var_98
  loc_BF0325: LateIdLdVar var_AC DispID_0 0
  loc_BF032C: PopAd
  loc_BF032E: FLdPr Me
  loc_BF0331: VCallAd Control_ID_CodiSedeMsk
  loc_BF0334: FStAdFunc var_E0
  loc_BF0337: FLdPr var_E0
  loc_BF033A: LateIdLdVar var_BC DispID_0 0
  loc_BF0341: CStrVarTmp
  loc_BF0342: FStStrNoPop var_EC
  loc_BF0345: CI2Str
  loc_BF0347: FLdRfVar var_AC
  loc_BF034A: CStrVarTmp
  loc_BF034B: FStStrNoPop var_90
  loc_BF034E: CI2Str
  loc_BF0350: FLdPr Me
  loc_BF0353: MemLdRfVar from_stack_1.global_52
  loc_BF0356: NewIfNullPr clsservdeva
  loc_BF0359: Call clsservdeva.Eliminar(from_stack_1v, from_stack_2v)
  loc_BF035E: FFreeStr var_90 = ""
  loc_BF0365: FFreeAd var_98 = ""
  loc_BF036C: FFreeVar var_AC = ""
  loc_BF0373: Branch loc_BF0720
  loc_BF0376: ILdRf var_94
  loc_BF0379: LitStr "btnGuardar"
  loc_BF037C: EqStr
  loc_BF037E: BranchF loc_BF061C
  loc_BF0381: LitStr vbNullString
  loc_BF0384: FLdPr Me
  loc_BF0387: MemStStrCopy
  loc_BF038B: LitI2_Byte 0
  loc_BF038D: PopTmpLdAd2 var_F2
  loc_BF0390: Call PeriOrdeMsk_UnknownEvent_8()
  loc_BF0395: FLdPr Me
  loc_BF0398: MemLdStr global_68
  loc_BF039B: LitStr vbNullString
  loc_BF039E: NeStr
  loc_BF03A0: BranchF loc_BF03A4
  loc_BF03A3: ExitProcHresult
  loc_BF03A4: LitI2_Byte 0
  loc_BF03A6: PopTmpLdAd2 var_F2
  loc_BF03A9: Call CodiSedeMsk_UnknownEvent_8()
  loc_BF03AE: FLdPr Me
  loc_BF03B1: MemLdStr global_68
  loc_BF03B4: LitStr vbNullString
  loc_BF03B7: NeStr
  loc_BF03B9: BranchF loc_BF03BD
  loc_BF03BC: ExitProcHresult
  loc_BF03BD: LitI2_Byte 0
  loc_BF03BF: PopTmpLdAd2 var_F2
  loc_BF03C2: Call DetaSedeTxt_Validate(from_stack_1v)
  loc_BF03C7: FLdPr Me
  loc_BF03CA: MemLdStr global_68
  loc_BF03CD: LitStr vbNullString
  loc_BF03D0: NeStr
  loc_BF03D2: BranchF loc_BF03D6
  loc_BF03D5: ExitProcHresult
  loc_BF03D6: LitI2_Byte 0
  loc_BF03D8: PopTmpLdAd2 var_F2
  loc_BF03DB: Call CodiConcTxt_Validate(from_stack_1v)
  loc_BF03E0: FLdPr Me
  loc_BF03E3: MemLdStr global_68
  loc_BF03E6: LitStr vbNullString
  loc_BF03E9: NeStr
  loc_BF03EB: BranchF loc_BF03EF
  loc_BF03EE: ExitProcHresult
  loc_BF03EF: LitI2_Byte 0
  loc_BF03F1: PopTmpLdAd2 var_F2
  loc_BF03F4: Call ImpoSedeTxt_Validate(from_stack_1v)
  loc_BF03F9: FLdPr Me
  loc_BF03FC: MemLdStr global_68
  loc_BF03FF: LitStr vbNullString
  loc_BF0402: NeStr
  loc_BF0404: BranchF loc_BF0408
  loc_BF0407: ExitProcHresult
  loc_BF0408: FLdPr Me
  loc_BF040B: MemLdI2 global_60
  loc_BF040E: FStI2 var_F6
  loc_BF0411: FLdI2 var_F6
  loc_BF0414: LitI2_Byte 1
  loc_BF0416: EqI2
  loc_BF0417: BranchF loc_BF0514
  loc_BF041A: FLdPr Me
  loc_BF041D: VCallAd Control_ID_PeriOrdeMsk
  loc_BF0420: FStAdFunc var_98
  loc_BF0423: FLdPr var_98
  loc_BF0426: LateIdLdVar var_AC DispID_22 0
  loc_BF042D: PopAd
  loc_BF042F: FLdPr Me
  loc_BF0432: VCallAd Control_ID_CodiSedeMsk
  loc_BF0435: FStAdFunc var_E0
  loc_BF0438: FLdPr var_E0
  loc_BF043B: LateIdLdVar var_BC DispID_22 0
  loc_BF0442: PopAd
  loc_BF0444: FLdRfVar var_90
  loc_BF0447: FLdPr Me
  loc_BF044A: VCallAd Control_ID_DetaSedeTxt
  loc_BF044D: FStAdFunc var_FC
  loc_BF0450: FLdPr var_FC
  loc_BF0453:  = Me.Text
  loc_BF0458: FLdRfVar var_EC
  loc_BF045B: FLdPr Me
  loc_BF045E: VCallAd Control_ID_CodiConcTxt
  loc_BF0461: FStAdFunc var_100
  loc_BF0464: FLdPr var_100
  loc_BF0467:  = Me.Text
  loc_BF046C: FLdRfVar var_F2
  loc_BF046F: FLdPr Me
  loc_BF0472: VCallAd Control_ID_VariSedeChk
  loc_BF0475: FStAdFunc var_104
  loc_BF0478: FLdPr var_104
  loc_BF047B:  = Me.Value
  loc_BF0480: FLdRfVar var_F4
  loc_BF0483: FLdPr Me
  loc_BF0486: VCallAd Control_ID_CtctSedeChk
  loc_BF0489: FStAdFunc var_108
  loc_BF048C: FLdPr var_108
  loc_BF048F:  = Me.Value
  loc_BF0494: FLdRfVar var_F0
  loc_BF0497: FLdPr Me
  loc_BF049A: VCallAd Control_ID_ImpoSedeTxt
  loc_BF049D: FStAdFunc var_10C
  loc_BF04A0: FLdPr var_10C
  loc_BF04A3:  = Me.Text
  loc_BF04A8: LitI2_Byte &HFF
  loc_BF04AA: ILdRf var_F0
  loc_BF04AD: CR8Str
  loc_BF04AF: PopFPR8
  loc_BF04B0: FLdI2 var_F4
  loc_BF04B3: CStrUI1
  loc_BF04B5: FStStrNoPop var_11C
  loc_BF04B8: FLdI2 var_F2
  loc_BF04BB: CStrUI1
  loc_BF04BD: FStStrNoPop var_118
  loc_BF04C0: ILdRf var_EC
  loc_BF04C3: ImpAdLdI2 MemVar_D93034
  loc_BF04C6: ILdRf var_90
  loc_BF04C9: FLdRfVar var_BC
  loc_BF04CC: CStrVarTmp
  loc_BF04CD: FStStrNoPop var_114
  loc_BF04D0: CI4Str
  loc_BF04D1: FLdRfVar var_AC
  loc_BF04D4: CStrVarTmp
  loc_BF04D5: FStStrNoPop var_110
  loc_BF04D8: CI2Str
  loc_BF04DA: FLdPr Me
  loc_BF04DD: MemLdRfVar from_stack_1.global_52
  loc_BF04E0: NewIfNullPr clsservdeva
  loc_BF04E3: Call clsservdeva.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v)
  loc_BF04E8: FFreeStr var_110 = "": var_114 = "": var_90 = "": var_EC = "": var_118 = "": var_11C = ""
  loc_BF04F9: FFreeAd var_98 = "": var_E0 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_BF050A: FFreeVar var_AC = ""
  loc_BF0511: Branch loc_BF0614
  loc_BF0514: FLdI2 var_F6
  loc_BF0517: LitI2_Byte 2
  loc_BF0519: EqI2
  loc_BF051A: BranchF loc_BF0614
  loc_BF051D: FLdPr Me
  loc_BF0520: VCallAd Control_ID_PeriOrdeMsk
  loc_BF0523: FStAdFunc var_98
  loc_BF0526: FLdPr var_98
  loc_BF0529: LateIdLdVar var_AC DispID_22 0
  loc_BF0530: PopAd
  loc_BF0532: FLdPr Me
  loc_BF0535: VCallAd Control_ID_CodiSedeMsk
  loc_BF0538: FStAdFunc var_E0
  loc_BF053B: FLdPr var_E0
  loc_BF053E: LateIdLdVar var_BC DispID_22 0
  loc_BF0545: PopAd
  loc_BF0547: FLdRfVar var_90
  loc_BF054A: FLdPr Me
  loc_BF054D: VCallAd Control_ID_DetaSedeTxt
  loc_BF0550: FStAdFunc var_FC
  loc_BF0553: FLdPr var_FC
  loc_BF0556:  = Me.Text
  loc_BF055B: FLdRfVar var_EC
  loc_BF055E: FLdPr Me
  loc_BF0561: VCallAd Control_ID_CodiConcTxt
  loc_BF0564: FStAdFunc var_100
  loc_BF0567: FLdPr var_100
  loc_BF056A:  = Me.Text
  loc_BF056F: FLdRfVar var_F2
  loc_BF0572: FLdPr Me
  loc_BF0575: VCallAd Control_ID_VariSedeChk
  loc_BF0578: FStAdFunc var_104
  loc_BF057B: FLdPr var_104
  loc_BF057E:  = Me.Value
  loc_BF0583: FLdRfVar var_F4
  loc_BF0586: FLdPr Me
  loc_BF0589: VCallAd Control_ID_CtctSedeChk
  loc_BF058C: FStAdFunc var_108
  loc_BF058F: FLdPr var_108
  loc_BF0592:  = Me.Value
  loc_BF0597: FLdRfVar var_F0
  loc_BF059A: FLdPr Me
  loc_BF059D: VCallAd Control_ID_ImpoSedeTxt
  loc_BF05A0: FStAdFunc var_10C
  loc_BF05A3: FLdPr var_10C
  loc_BF05A6:  = Me.Text
  loc_BF05AB: LitI2_Byte &HFF
  loc_BF05AD: ILdRf var_F0
  loc_BF05B0: CR8Str
  loc_BF05B2: PopFPR8
  loc_BF05B3: FLdI2 var_F4
  loc_BF05B6: CStrUI1
  loc_BF05B8: FStStrNoPop var_11C
  loc_BF05BB: FLdI2 var_F2
  loc_BF05BE: CStrUI1
  loc_BF05C0: FStStrNoPop var_118
  loc_BF05C3: ILdRf var_EC
  loc_BF05C6: ImpAdLdI2 MemVar_D93034
  loc_BF05C9: ILdRf var_90
  loc_BF05CC: FLdRfVar var_BC
  loc_BF05CF: CStrVarTmp
  loc_BF05D0: FStStrNoPop var_114
  loc_BF05D3: CI4Str
  loc_BF05D4: FLdRfVar var_AC
  loc_BF05D7: CStrVarTmp
  loc_BF05D8: FStStrNoPop var_110
  loc_BF05DB: CI2Str
  loc_BF05DD: FLdPr Me
  loc_BF05E0: MemLdRfVar from_stack_1.global_52
  loc_BF05E3: NewIfNullPr clsservdeva
  loc_BF05E6: Call clsservdeva.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v)
  loc_BF05EB: FFreeStr var_110 = "": var_114 = "": var_90 = "": var_EC = "": var_118 = "": var_11C = ""
  loc_BF05FC: FFreeAd var_98 = "": var_E0 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_BF060D: FFreeVar var_AC = ""
  loc_BF0614: Call cmdCancelar_Click()
  loc_BF0619: Branch loc_BF0720
  loc_BF061C: ILdRf var_94
  loc_BF061F: LitStr "btnCancelar"
  loc_BF0622: EqStr
  loc_BF0624: BranchF loc_BF062F
  loc_BF0627: Call cmdCancelar_Click()
  loc_BF062C: Branch loc_BF0720
  loc_BF062F: ILdRf var_94
  loc_BF0632: LitStr "btnPrimero"
  loc_BF0635: EqStr
  loc_BF0637: BranchF loc_BF064B
  loc_BF063A: FLdPr Me
  loc_BF063D: MemLdRfVar from_stack_1.global_52
  loc_BF0640: NewIfNullPr clsservdeva
  loc_BF0643: Call clsservdeva.MoveFirst()
  loc_BF0648: Branch loc_BF0720
  loc_BF064B: ILdRf var_94
  loc_BF064E: LitStr "btnAnterior"
  loc_BF0651: EqStr
  loc_BF0653: BranchF loc_BF0667
  loc_BF0656: FLdPr Me
  loc_BF0659: MemLdRfVar from_stack_1.global_52
  loc_BF065C: NewIfNullPr clsservdeva
  loc_BF065F: Call clsservdeva.MovePrevious()
  loc_BF0664: Branch loc_BF0720
  loc_BF0667: ILdRf var_94
  loc_BF066A: LitStr "btnSiguiente"
  loc_BF066D: EqStr
  loc_BF066F: BranchF loc_BF0683
  loc_BF0672: FLdPr Me
  loc_BF0675: MemLdRfVar from_stack_1.global_52
  loc_BF0678: NewIfNullPr clsservdeva
  loc_BF067B: Call clsservdeva.MoveNext()
  loc_BF0680: Branch loc_BF0720
  loc_BF0683: ILdRf var_94
  loc_BF0686: LitStr "btnUltimo"
  loc_BF0689: EqStr
  loc_BF068B: BranchF loc_BF069F
  loc_BF068E: FLdPr Me
  loc_BF0691: MemLdRfVar from_stack_1.global_52
  loc_BF0694: NewIfNullPr clsservdeva
  loc_BF0697: Call clsservdeva.MoveLast()
  loc_BF069C: Branch loc_BF0720
  loc_BF069F: ILdRf var_94
  loc_BF06A2: LitStr "btnFiltrar"
  loc_BF06A5: EqStr
  loc_BF06A7: BranchF loc_BF06AD
  loc_BF06AA: Branch loc_BF0720
  loc_BF06AD: ILdRf var_94
  loc_BF06B0: LitStr "btnBuscar"
  loc_BF06B3: EqStr
  loc_BF06B5: BranchF loc_BF06BB
  loc_BF06B8: Branch loc_BF0720
  loc_BF06BB: ILdRf var_94
  loc_BF06BE: LitStr "btnImprimir"
  loc_BF06C1: EqStr
  loc_BF06C3: BranchF loc_BF06C9
  loc_BF06C6: Branch loc_BF0720
  loc_BF06C9: ILdRf var_94
  loc_BF06CC: LitStr "btnAyuda"
  loc_BF06CF: EqStr
  loc_BF06D1: BranchF loc_BF0700
  loc_BF06D4: LitVar_Missing var_15C
  loc_BF06D7: LitVar_Missing var_CC
  loc_BF06DA: LitVar_Missing var_BC
  loc_BF06DD: LitI4 0
  loc_BF06E2: LitVarStr var_DC, "Opción no disponible en esta versión."
  loc_BF06E7: FStVarCopyObj var_AC
  loc_BF06EA: FLdRfVar var_AC
  loc_BF06ED: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BF06F2: FFreeVar var_AC = "": var_BC = "": var_CC = ""
  loc_BF06FD: Branch loc_BF0720
  loc_BF0700: ILdRf var_94
  loc_BF0703: LitStr "btnSalir"
  loc_BF0706: EqStr
  loc_BF0708: BranchF loc_BF0720
  loc_BF070B: ILdRf Me
  loc_BF070E: FStAdNoPop
  loc_BF0712: ImpAdLdRf MemVar_D9C5D8
  loc_BF0715: NewIfNullPr Global
  loc_BF0718: Global.Unload from_stack_1
  loc_BF071D: FFree1Ad var_98
  loc_BF0720: ExitProcHresult
End Sub

Private Sub PeriInfoCbl_Click() 'A6365C
  'Data Table: 4CDEE0
  loc_A63604: LitStr " SELECT PeriOrde, CodiSede, DetaSede, servdeva.PeriInfo, servdeva.CodiConc, IFNULL(DetaConc,'') as DetaConc, VariSede, CtctSede, ImpoSede FROM servdeva "
  loc_A63607: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = servdeva.PeriInfo AND concepto.CodiConc = servdeva.CodiConc"
  loc_A6360A: ConcatStr
  loc_A6360B: FStStrNoPop var_88
  loc_A6360E: LitStr " WHERE servdeva.PeriOrde = "
  loc_A63611: ConcatStr
  loc_A63612: FStStrNoPop var_94
  loc_A63615: FLdRfVar var_90
  loc_A63618: FLdPr Me
  loc_A6361B: VCallAd Control_ID_PeriInfoCbl
  loc_A6361E: FStAdFunc var_8C
  loc_A63621: FLdPr var_8C
  loc_A63624:  = Me.Text
  loc_A63629: ILdRf var_90
  loc_A6362C: ConcatStr
  loc_A6362D: FStStrNoPop var_98
  loc_A63630: LitStr " ORDER BY servdeva.PeriOrde, servdeva.CodiSede"
  loc_A63633: ConcatStr
  loc_A63634: FStStrNoPop var_9C
  loc_A63637: FLdPr Me
  loc_A6363A: MemLdRfVar from_stack_1.global_52
  loc_A6363D: NewIfNullPr clsservdeva
  loc_A63640: Call clsservdeva.RedefineRS(from_stack_1v)
  loc_A63645: FFreeStr var_88 = "": var_94 = "": var_90 = "": var_98 = ""
  loc_A63652: FFree1Ad var_8C
  loc_A63655: Call cmdCancelar_Click()
  loc_A6365A: ExitProcHresult
End Sub

Private Sub PeriOrdeMsk_UnknownEvent_0 '9C3F50
  'Data Table: 4CDEE0
  loc_9C3F3C: FLdPr Me
  loc_9C3F3F: VCallAd Control_ID_PeriOrdeMsk
  loc_9C3F42: CVarAd
  loc_9C3F46: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3F4B: FFree1Var var_94 = ""
  loc_9C3F4E: ExitProcHresult
End Sub

Private Function PeriOrdeMsk_UnknownEvent_8(arg_C) 'A90618
  'Data Table: 4CDEE0
  loc_A90578: FLdRfVar var_8A
  loc_A9057B: FLdPr Me
  loc_A9057E: VCallAd Control_ID_cmdCancelar
  loc_A90581: FStAdFunc var_88
  loc_A90584: FLdPr var_88
  loc_A90587:  = Me.Value
  loc_A9058C: FLdI2 var_8A
  loc_A9058F: NotI4
  loc_A90590: FLdPr Me
  loc_A90593: VCallAd Control_ID_PeriOrdeMsk
  loc_A90596: FStAdFunc var_90
  loc_A90599: FLdPr var_90
  loc_A9059C: LateIdLdVar var_A0 DispID_13 -32767
  loc_A905A3: CBoolVar
  loc_A905A5: AndI4
  loc_A905A6: FFreeAd var_88 = ""
  loc_A905AD: FFree1Var var_A0 = ""
  loc_A905B0: BranchF loc_A90616
  loc_A905B3: FLdPr Me
  loc_A905B6: VCallAd Control_ID_PeriOrdeMsk
  loc_A905B9: FStAdFunc var_88
  loc_A905BC: FLdPr var_88
  loc_A905BF: LateIdLdVar var_A0 DispID_22 0
  loc_A905C6: CStrVarTmp
  loc_A905C7: FStStrNoPop var_A4
  loc_A905CA: ImpAdCallI2 Proc_18_19_A413E4()
  loc_A905CF: FStStrNoPop var_A8
  loc_A905D2: FLdPr Me
  loc_A905D5: MemStStrCopy
  loc_A905D9: FFreeStr var_A4 = ""
  loc_A905E0: FFree1Ad var_88
  loc_A905E3: FFree1Var var_A0 = ""
  loc_A905E6: FLdPr Me
  loc_A905E9: MemLdStr global_68
  loc_A905EC: LitStr vbNullString
  loc_A905EF: NeStr
  loc_A905F1: BranchF loc_A90616
  loc_A905F4: FLdPr Me
  loc_A905F7: MemLdStr global_68
  loc_A905FA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A905FF: FLdPr Me
  loc_A90602: VCallAd Control_ID_PeriOrdeMsk
  loc_A90605: CVarAd
  loc_A90609: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A9060E: FFree1Var var_A0 = ""
  loc_A90611: LitI2_Byte &HFF
  loc_A90613: IStI2 arg_C
  loc_A90616: ExitProcHresult
End Function

Private Sub CodiSedeMsk_UnknownEvent_0 '9C3140
  'Data Table: 4CDEE0
  loc_9C312C: FLdPr Me
  loc_9C312F: VCallAd Control_ID_CodiSedeMsk
  loc_9C3132: CVarAd
  loc_9C3136: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C313B: FFree1Var var_94 = ""
  loc_9C313E: ExitProcHresult
End Sub

Private Function CodiSedeMsk_UnknownEvent_8(arg_C) 'ADE5D0
  'Data Table: 4CDEE0
  loc_ADE484: FLdRfVar var_8A
  loc_ADE487: FLdPr Me
  loc_ADE48A: VCallAd Control_ID_cmdCancelar
  loc_ADE48D: FStAdFunc var_88
  loc_ADE490: FLdPr var_88
  loc_ADE493:  = Me.Value
  loc_ADE498: FLdI2 var_8A
  loc_ADE49B: NotI4
  loc_ADE49C: FLdPr Me
  loc_ADE49F: VCallAd Control_ID_CodiSedeMsk
  loc_ADE4A2: FStAdFunc var_90
  loc_ADE4A5: FLdPr var_90
  loc_ADE4A8: LateIdLdVar var_A0 DispID_13 -32767
  loc_ADE4AF: CBoolVar
  loc_ADE4B1: AndI4
  loc_ADE4B2: FFreeAd var_88 = ""
  loc_ADE4B9: FFree1Var var_A0 = ""
  loc_ADE4BC: BranchF loc_ADE5CD
  loc_ADE4BF: FLdPr Me
  loc_ADE4C2: VCallAd Control_ID_CodiSedeMsk
  loc_ADE4C5: FStAdFunc var_88
  loc_ADE4C8: FLdPr var_88
  loc_ADE4CB: LateIdLdVar var_A0 DispID_22 0
  loc_ADE4D2: PopAd
  loc_ADE4D4: LitI2_Byte 0
  loc_ADE4D6: LitI2_Byte 0
  loc_ADE4D8: FLdRfVar var_A0
  loc_ADE4DB: CStrVarTmp
  loc_ADE4DC: FStStrNoPop var_A4
  loc_ADE4DF: LitStr "Codigo"
  loc_ADE4E2: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_ADE4E7: FStStrNoPop var_A8
  loc_ADE4EA: FLdPr Me
  loc_ADE4ED: MemStStrCopy
  loc_ADE4F1: FFreeStr var_A4 = ""
  loc_ADE4F8: FFree1Ad var_88
  loc_ADE4FB: FFree1Var var_A0 = ""
  loc_ADE4FE: FLdPr Me
  loc_ADE501: MemLdStr global_68
  loc_ADE504: LitStr vbNullString
  loc_ADE507: NeStr
  loc_ADE509: BranchF loc_ADE52F
  loc_ADE50C: FLdPr Me
  loc_ADE50F: MemLdStr global_68
  loc_ADE512: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADE517: FLdPr Me
  loc_ADE51A: VCallAd Control_ID_CodiSedeMsk
  loc_ADE51D: CVarAd
  loc_ADE521: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ADE526: FFree1Var var_A0 = ""
  loc_ADE529: LitI2_Byte &HFF
  loc_ADE52B: IStI2 arg_C
  loc_ADE52E: ExitProcHresult
  loc_ADE52F: FLdPr Me
  loc_ADE532: VCallAd Control_ID_PeriOrdeMsk
  loc_ADE535: FStAdFunc var_88
  loc_ADE538: FLdPr var_88
  loc_ADE53B: LateIdLdVar var_A0 DispID_22 0
  loc_ADE542: PopAd
  loc_ADE544: FLdPr Me
  loc_ADE547: VCallAd Control_ID_CodiSedeMsk
  loc_ADE54A: FStAdFunc var_90
  loc_ADE54D: FLdPr var_90
  loc_ADE550: LateIdLdVar var_B8 DispID_22 0
  loc_ADE557: PopAd
  loc_ADE559: FLdRfVar var_BC
  loc_ADE55C: FLdRfVar var_B8
  loc_ADE55F: CStrVarTmp
  loc_ADE560: FStStrNoPop var_A8
  loc_ADE563: CI4Str
  loc_ADE564: FLdRfVar var_A0
  loc_ADE567: CStrVarTmp
  loc_ADE568: FStStrNoPop var_A4
  loc_ADE56B: CI2Str
  loc_ADE56D: FLdPr Me
  loc_ADE570: MemLdRfVar from_stack_1.global_52
  loc_ADE573: NewIfNullPr clsservdeva
  loc_ADE576: from_stack_3v = clsservdeva.ValidaClave(from_stack_1v, from_stack_2v)
  loc_ADE57B: ILdRf var_BC
  loc_ADE57E: FLdPr Me
  loc_ADE581: MemStStrCopy
  loc_ADE585: FFreeStr var_A4 = "": var_A8 = ""
  loc_ADE58E: FFreeAd var_88 = ""
  loc_ADE595: FFreeVar var_A0 = ""
  loc_ADE59C: FLdPr Me
  loc_ADE59F: MemLdStr global_68
  loc_ADE5A2: LitStr vbNullString
  loc_ADE5A5: NeStr
  loc_ADE5A7: BranchF loc_ADE5CD
  loc_ADE5AA: FLdPr Me
  loc_ADE5AD: MemLdStr global_68
  loc_ADE5B0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADE5B5: FLdPr Me
  loc_ADE5B8: VCallAd Control_ID_CodiSedeMsk
  loc_ADE5BB: CVarAd
  loc_ADE5BF: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ADE5C4: FFree1Var var_A0 = ""
  loc_ADE5C7: LitI2_Byte &HFF
  loc_ADE5C9: IStI2 arg_C
  loc_ADE5CC: ExitProcHresult
  loc_ADE5CD: ExitProcHresult
  loc_ADE5CE: FLdR8 arg_6803
End Function

Private Sub Form_Load() 'B37464
  'Data Table: 4CDEE0
  loc_B3717C: ILdRf Me
  loc_B3717F: CastAd
  loc_B37182: FStAdFunc var_88
  loc_B37185: FLdRfVar var_88
  loc_B37188: ImpAdCallFPR4 Proc_272_42_A95944()
  loc_B3718D: FFree1Ad var_88
  loc_B37190: ILdRf Me
  loc_B37193: CastAd
  loc_B37196: FStAdFunc var_88
  loc_B37199: FLdRfVar var_88
  loc_B3719C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_B371A1: FFree1Ad var_88
  loc_B371A4: LitI2_Byte 0
  loc_B371A6: CR8I2
  loc_B371A7: PopFPR4
  loc_B371A8: FLdPr Me
  loc_B371AB: Me.Left = from_stack_1s
  loc_B371B0: LitI2_Byte 0
  loc_B371B2: CR8I2
  loc_B371B3: PopFPR4
  loc_B371B4: FLdPr Me
  loc_B371B7: Me.Top = from_stack_1s
  loc_B371BC: LitStr vbNullString
  loc_B371BF: FLdPr Me
  loc_B371C2: MemStStrCopy
  loc_B371C6: LitStr " SELECT PeriOrde, CodiSede, DetaSede, servdeva.PeriInfo, servdeva.CodiConc, IFNULL(DetaConc,'') as DetaConc, VariSede, CtctSede, ImpoSede FROM servdeva "
  loc_B371C9: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = servdeva.PeriInfo AND concepto.CodiConc = servdeva.CodiConc"
  loc_B371CC: ConcatStr
  loc_B371CD: FStStrNoPop var_8C
  loc_B371D0: LitStr " WHERE servdeva.PeriOrde = "
  loc_B371D3: ConcatStr
  loc_B371D4: FStStrNoPop var_90
  loc_B371D7: ImpAdLdI2 MemVar_D93034
  loc_B371DA: CStrUI1
  loc_B371DC: FStStrNoPop var_94
  loc_B371DF: ConcatStr
  loc_B371E0: FStStrNoPop var_98
  loc_B371E3: LitStr " ORDER BY servdeva.PeriOrde, servdeva.CodiSede"
  loc_B371E6: ConcatStr
  loc_B371E7: FStStrNoPop var_9C
  loc_B371EA: FLdPr Me
  loc_B371ED: MemLdRfVar from_stack_1.global_52
  loc_B371F0: NewIfNullPr clsservdeva
  loc_B371F3: Call clsservdeva.RedefineRS(from_stack_1v)
  loc_B371F8: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_B37205: LitVarI2 var_AC, 0
  loc_B3720A: PopAdLdVar
  loc_B3720B: LitStr "Código"
  loc_B3720E: FLdPr Me
  loc_B37211: VCallAd Control_ID_FiltroCbo
  loc_B37214: FStAdFunc var_88
  loc_B37217: FLdPr var_88
  loc_B3721A: Me.AddItem from_stack_1, from_stack_2
  loc_B3721F: FFree1Ad var_88
  loc_B37222: LitVarI2 var_AC, 1
  loc_B37227: PopAdLdVar
  loc_B37228: LitStr "Detalle"
  loc_B3722B: FLdPr Me
  loc_B3722E: VCallAd Control_ID_FiltroCbo
  loc_B37231: FStAdFunc var_88
  loc_B37234: FLdPr var_88
  loc_B37237: Me.AddItem from_stack_1, from_stack_2
  loc_B3723C: FFree1Ad var_88
  loc_B3723F: LitVarI2 var_AC, 2
  loc_B37244: PopAdLdVar
  loc_B37245: LitStr "Código de Concepto"
  loc_B37248: FLdPr Me
  loc_B3724B: VCallAd Control_ID_FiltroCbo
  loc_B3724E: FStAdFunc var_88
  loc_B37251: FLdPr var_88
  loc_B37254: Me.AddItem from_stack_1, from_stack_2
  loc_B37259: FFree1Ad var_88
  loc_B3725C: LitVarI2 var_AC, 3
  loc_B37261: PopAdLdVar
  loc_B37262: LitStr "Detalle de Concepto"
  loc_B37265: FLdPr Me
  loc_B37268: VCallAd Control_ID_FiltroCbo
  loc_B3726B: FStAdFunc var_88
  loc_B3726E: FLdPr var_88
  loc_B37271: Me.AddItem from_stack_1, from_stack_2
  loc_B37276: FFree1Ad var_88
  loc_B37279: LitI2_Byte 0
  loc_B3727B: FLdPr Me
  loc_B3727E: VCallAd Control_ID_FiltroCbo
  loc_B37281: FStAdFunc var_88
  loc_B37284: FLdPr var_88
  loc_B37287: Me.ListIndex = from_stack_1
  loc_B3728C: FFree1Ad var_88
  loc_B3728F: LitI4 0
  loc_B37294: LitI4 1
  loc_B37299: FLdRfVar var_B0
  loc_B3729C: Redim
  loc_B372A6: FLdPr Me
  loc_B372A9: MemLdRfVar from_stack_1.global_52
  loc_B372AC: NewIfNullAd
  loc_B372AF: FStAd var_88 
  loc_B372B3: FLdRfVar var_88
  loc_B372B6: CVarRef
  loc_B372BB: ParmAry1St
  loc_B372C1: FLdPr Me
  loc_B372C4: VCallAd Control_ID_dgdABMS
  loc_B372C7: CVarAd
  loc_B372CB: ParmAry1St
  loc_B372D1: FLdRfVar var_B0
  loc_B372D4: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B372D9: ILdRf var_88
  loc_B372DC: CastAd
  loc_B372DF: FLdPr Me
  loc_B372E2: MemStAdFunc
  loc_B372E6: FLdRfVar var_B0
  loc_B372E9: Erase
  loc_B372EA: FFree1Ad var_88
  loc_B372ED: Call cmdCancelar_Click()
  loc_B372F2: LitStr "Municipalidad de Guaymallén"
  loc_B372F5: LitStr "Municipalidad de Malargüe"
  loc_B372F8: EqStr
  loc_B372FA: BranchF loc_B37330
  loc_B372FD: LitStr "Importe:"
  loc_B37300: FLdPr Me
  loc_B37303: VCallAd Control_ID_Label4
  loc_B37306: FStAdFunc var_88
  loc_B37309: FLdPr var_88
  loc_B3730C: Me.Caption = from_stack_1
  loc_B37311: FFree1Ad var_88
  loc_B37314: LitI2 1960
  loc_B37317: CR8I2
  loc_B37318: PopFPR4
  loc_B37319: FLdPr Me
  loc_B3731C: VCallAd Control_ID_Label4
  loc_B3731F: FStAdFunc var_88
  loc_B37322: FLdPr var_88
  loc_B37325: Me.Left = from_stack_1s
  loc_B3732A: FFree1Ad var_88
  loc_B3732D: Branch loc_B37347
  loc_B37330: LitStr "Unidades Tributarias:"
  loc_B37333: FLdPr Me
  loc_B37336: VCallAd Control_ID_Label4
  loc_B37339: FStAdFunc var_88
  loc_B3733C: FLdPr var_88
  loc_B3733F: Me.Caption = from_stack_1
  loc_B37344: FFree1Ad var_88
  loc_B37347: LitI4 0
  loc_B3734C: LitI4 0
  loc_B37351: FLdRfVar var_B0
  loc_B37354: Redim
  loc_B3735E: FLdPr Me
  loc_B37361: VCallAd Control_ID_PeriInfoCbl
  loc_B37364: CVarAd
  loc_B37368: ParmAry1St
  loc_B3736E: FLdRfVar var_B0
  loc_B37371: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B37376: FLdRfVar var_B0
  loc_B37379: Erase
  loc_B3737A: LitStr "SELECT PeriOrde FROM servdeva GROUP BY PeriOrde"
  loc_B3737D: FLdPr Me
  loc_B37380: MemLdRfVar from_stack_1.global_56
  loc_B37383: NewIfNullPr clsservdeva
  loc_B37386: Call clsservdeva.RedefineRS(from_stack_1v)
  loc_B3738B: FLdRfVar var_C4
  loc_B3738E: FLdPr Me
  loc_B37391: MemLdRfVar from_stack_1.global_56
  loc_B37394: NewIfNullPr clsservdeva
  loc_B37397: from_stack_1 = clsservdeva.RecordCount
  loc_B3739C: ILdRf var_C4
  loc_B3739F: LitI4 0
  loc_B373A4: GtI4
  loc_B373A5: BranchF loc_B37463
  loc_B373A8: FLdPr Me
  loc_B373AB: MemLdRfVar from_stack_1.global_56
  loc_B373AE: NewIfNullPr clsservdeva
  loc_B373B1: Call clsservdeva.MoveFirst()
  loc_B373B6: FLdRfVar var_C6
  loc_B373B9: FLdPr Me
  loc_B373BC: MemLdRfVar from_stack_1.global_56
  loc_B373BF: NewIfNullPr clsservdeva
  loc_B373C2: from_stack_1 = clsservdeva.EOF
  loc_B373C7: FLdI2 var_C6
  loc_B373CA: NotI4
  loc_B373CB: BranchF loc_B37444
  loc_B373CE: LitVar_Missing var_E0
  loc_B373D1: PopAdLdVar
  loc_B373D2: FLdRfVar var_C0
  loc_B373D5: FLdRfVar var_D0
  loc_B373D8: LitVarStr var_AC, "PeriOrde"
  loc_B373DD: PopAdLdVar
  loc_B373DE: FLdRfVar var_CC
  loc_B373E1: FLdRfVar var_88
  loc_B373E4: FLdPr Me
  loc_B373E7: MemLdRfVar from_stack_1.global_56
  loc_B373EA: NewIfNullPr clsservdeva
  loc_B373ED: from_stack_1v = clsservdeva.RsFrmGet()
  loc_B373F2: FLdPr var_88
  loc_B373F5:  = Me.Fields
  loc_B373FA: FLdPr var_CC
  loc_B373FD: from_stack_2 = Me.Item(from_stack_1)
  loc_B37402: FLdPr var_D0
  loc_B37405:  = Me.Value
  loc_B3740A: FLdRfVar var_C0
  loc_B3740D: CStrVarTmp
  loc_B3740E: FStStrNoPop var_8C
  loc_B37411: FLdPr Me
  loc_B37414: VCallAd Control_ID_PeriInfoCbl
  loc_B37417: FStAdFunc var_E4
  loc_B3741A: FLdPr var_E4
  loc_B3741D: Me.AddItem from_stack_1, from_stack_2
  loc_B37422: FFree1Str var_8C
  loc_B37425: FFreeAd var_88 = "": var_CC = "": var_D0 = ""
  loc_B37430: FFree1Var var_C0 = ""
  loc_B37433: FLdPr Me
  loc_B37436: MemLdRfVar from_stack_1.global_56
  loc_B37439: NewIfNullPr clsservdeva
  loc_B3743C: Call clsservdeva.MoveSiguiente()
  loc_B37441: Branch loc_B373B6
  loc_B37444: ImpAdLdI2 MemVar_D93036
  loc_B37447: CStrUI1
  loc_B37449: FStStrNoPop var_8C
  loc_B3744C: FLdPr Me
  loc_B3744F: VCallAd Control_ID_PeriInfoCbl
  loc_B37452: FStAdFunc var_88
  loc_B37455: FLdPr var_88
  loc_B37458: Me.Text = from_stack_1
  loc_B3745D: FFree1Str var_8C
  loc_B37460: FFree1Ad var_88
  loc_B37463: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A65780
  'Data Table: 4CDEE0
  loc_A65724: FLdRfVar var_C2
  loc_A65727: FLdRfVar var_C0
  loc_A6572A: LitVarI2 var_B8, 1
  loc_A6572F: FLdPr Me
  loc_A65732: VCallAd Control_ID_tlbABMS
  loc_A65735: FStAdFunc var_88
  loc_A65738: FLdPr var_88
  loc_A6573B: LateIdLdVar var_98 DispID_3 0
  loc_A65742: CastAdVar Me
  loc_A65746: FStAdFunc var_BC
  loc_A65749: FLdPr var_BC
  loc_A6574C:  = Me.Buttons.ControlDefault
  loc_A65751: FLdPr var_C0
  loc_A65754:  = Me.Enabled
  loc_A65759: FLdI2 var_C2
  loc_A6575C: FFreeAd var_88 = "": var_BC = ""
  loc_A65765: FFreeVar var_98 = ""
  loc_A6576C: BranchF loc_A6577D
  loc_A6576F: FLdPr Me
  loc_A65772: MemLdRfVar from_stack_1.global_52
  loc_A65775: NewIfNullPr clsservdeva
  loc_A65778: Call clsservdeva.Requery()
  loc_A6577D: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9D564C
  'Data Table: 4CDEE0
  loc_9D5634: ILdI2 KeyAscii
  loc_9D5637: LitI2_Byte &HD
  loc_9D5639: EqI2
  loc_9D563A: BranchF loc_9D564B
  loc_9D563D: LitVar_TRUE var_A4
  loc_9D5640: LitStr "{Tab}"
  loc_9D5643: ImpAdCallFPR4 SendKeys , 
  loc_9D5648: FFree1Var var_A4 = ""
  loc_9D564B: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9D5698
  'Data Table: 4CDEE0
  loc_9D5680: ILdI2 KeyCode
  loc_9D5683: ILdRf Me
  loc_9D5686: CastAd
  loc_9D5689: FStAdFunc var_88
  loc_9D568C: FLdRfVar var_88
  loc_9D568F: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9D5694: FFree1Ad var_88
  loc_9D5697: ExitProcHresult
End Sub

Private Sub DetaSedeTxt_GotFocus() '9C3C80
  'Data Table: 4CDEE0
  loc_9C3C6C: FLdPr Me
  loc_9C3C6F: VCallAd Control_ID_DetaSedeTxt
  loc_9C3C72: CVarAd
  loc_9C3C76: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3C7B: FFree1Var var_94 = ""
  loc_9C3C7E: ExitProcHresult
End Sub

Private Sub DetaSedeTxt_Validate(Cancel As Boolean) 'A911AC
  'Data Table: 4CDEE0
  loc_A9110C: FLdRfVar var_8A
  loc_A9110F: FLdPr Me
  loc_A91112: VCallAd Control_ID_cmdCancelar
  loc_A91115: FStAdFunc var_88
  loc_A91118: FLdPr var_88
  loc_A9111B:  = Me.Value
  loc_A91120: FLdI2 var_8A
  loc_A91123: NotI4
  loc_A91124: FLdRfVar var_92
  loc_A91127: FLdPr Me
  loc_A9112A: VCallAd Control_ID_DetaSedeTxt
  loc_A9112D: FStAdFunc var_90
  loc_A91130: FLdPr var_90
  loc_A91133:  = Me.Enabled
  loc_A91138: FLdI2 var_92
  loc_A9113B: AndI4
  loc_A9113C: FFreeAd var_88 = ""
  loc_A91143: BranchF loc_A911A9
  loc_A91146: FLdRfVar var_98
  loc_A91149: FLdPr Me
  loc_A9114C: VCallAd Control_ID_DetaSedeTxt
  loc_A9114F: FStAdFunc var_88
  loc_A91152: FLdPr var_88
  loc_A91155:  = Me.Text
  loc_A9115A: ILdRf var_98
  loc_A9115D: LitStr "Detalle"
  loc_A91160: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A91165: FStStrNoPop var_9C
  loc_A91168: FLdPr Me
  loc_A9116B: MemStStrCopy
  loc_A9116F: FFreeStr var_98 = ""
  loc_A91176: FFree1Ad var_88
  loc_A91179: FLdPr Me
  loc_A9117C: MemLdStr global_68
  loc_A9117F: LitStr vbNullString
  loc_A91182: NeStr
  loc_A91184: BranchF loc_A911A9
  loc_A91187: FLdPr Me
  loc_A9118A: MemLdStr global_68
  loc_A9118D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A91192: FLdPr Me
  loc_A91195: VCallAd Control_ID_DetaSedeTxt
  loc_A91198: CVarAd
  loc_A9119C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A911A1: FFree1Var var_AC = ""
  loc_A911A4: LitI2_Byte &HFF
  loc_A911A6: IStI2 Cancel
  loc_A911A9: ExitProcHresult
  loc_A911AA: ImpAdLdFPR8 MemVar_0
End Sub

Private Sub FiltroCbo_Click(arg_24) 'AE24D4
  'Data Table: 4CDEE0
  loc_AE2368: LitVarStr var_94, vbNullString
  loc_AE236D: PopAdLdVar
  loc_AE236E: FLdPr Me
  loc_AE2371: VCallAd Control_ID_FiltroMsk
  loc_AE2374: FStAdFunc var_A8
  loc_AE2377: FLdPr var_A8
  loc_AE237A: LateIdSt
  loc_AE237F: FFree1Ad var_A8
  loc_AE2382: FLdRfVar var_AA
  loc_AE2385: FLdPr Me
  loc_AE2388: VCallAd Control_ID_FiltroCbo
  loc_AE238B: FStAdFunc var_A8
  loc_AE238E: FLdPr var_A8
  loc_AE2391:  = Me.ListIndex
  loc_AE2396: FLdI2 var_AA
  loc_AE2399: FStI2 var_AC
  loc_AE239C: FFree1Ad var_A8
  loc_AE239F: FLdI2 var_AC
  loc_AE23A2: LitI2_Byte 0
  loc_AE23A4: EqI2
  loc_AE23A5: BranchF loc_AE23DF
  loc_AE23A8: LitVarStr var_94, "#########"
  loc_AE23AD: PopAdLdVar
  loc_AE23AE: FLdPr Me
  loc_AE23B1: VCallAd Control_ID_FiltroMsk
  loc_AE23B4: FStAdFunc var_A8
  loc_AE23B7: FLdPr var_A8
  loc_AE23BA: LateIdSt
  loc_AE23BF: FFree1Ad var_A8
  loc_AE23C2: LitStr "CodiSede"
  loc_AE23C5: FStStrCopy var_B0
  loc_AE23C8: FLdRfVar var_B0
  loc_AE23CB: FLdPr Me
  loc_AE23CE: MemLdRfVar from_stack_1.global_52
  loc_AE23D1: NewIfNullPr clsservdeva
  loc_AE23D4: Call clsservdeva.Sort(from_stack_1v)
  loc_AE23D9: FFree1Str var_B0
  loc_AE23DC: Branch loc_AE24D0
  loc_AE23DF: FLdI2 var_AC
  loc_AE23E2: LitI2_Byte 1
  loc_AE23E4: EqI2
  loc_AE23E5: BranchF loc_AE2439
  loc_AE23E8: LitVarStr var_94, "&"
  loc_AE23ED: PopAdLdVar
  loc_AE23EE: FLdPr Me
  loc_AE23F1: VCallAd Control_ID_FiltroMsk
  loc_AE23F4: FStAdFunc var_A8
  loc_AE23F7: FLdPr var_A8
  loc_AE23FA: LateIdSt
  loc_AE23FF: FFree1Ad var_A8
  loc_AE2402: LitVarStr var_94, vbNullString
  loc_AE2407: PopAdLdVar
  loc_AE2408: FLdPr Me
  loc_AE240B: VCallAd Control_ID_FiltroMsk
  loc_AE240E: FStAdFunc var_A8
  loc_AE2411: FLdPr var_A8
  loc_AE2414: LateIdSt
  loc_AE2419: FFree1Ad var_A8
  loc_AE241C: LitStr "DetaSede"
  loc_AE241F: FStStrCopy var_B0
  loc_AE2422: FLdRfVar var_B0
  loc_AE2425: FLdPr Me
  loc_AE2428: MemLdRfVar from_stack_1.global_52
  loc_AE242B: NewIfNullPr clsservdeva
  loc_AE242E: Call clsservdeva.Sort(from_stack_1v)
  loc_AE2433: FFree1Str var_B0
  loc_AE2436: Branch loc_AE24D0
  loc_AE2439: FLdI2 var_AC
  loc_AE243C: LitI2_Byte 2
  loc_AE243E: EqI2
  loc_AE243F: BranchF loc_AE2479
  loc_AE2442: LitVarStr var_94, "########"
  loc_AE2447: PopAdLdVar
  loc_AE2448: FLdPr Me
  loc_AE244B: VCallAd Control_ID_FiltroMsk
  loc_AE244E: FStAdFunc var_A8
  loc_AE2451: FLdPr var_A8
  loc_AE2454: LateIdSt
  loc_AE2459: FFree1Ad var_A8
  loc_AE245C: LitStr "CodiConc"
  loc_AE245F: FStStrCopy var_B0
  loc_AE2462: FLdRfVar var_B0
  loc_AE2465: FLdPr Me
  loc_AE2468: MemLdRfVar from_stack_1.global_52
  loc_AE246B: NewIfNullPr clsservdeva
  loc_AE246E: Call clsservdeva.Sort(from_stack_1v)
  loc_AE2473: FFree1Str var_B0
  loc_AE2476: Branch loc_AE24D0
  loc_AE2479: FLdI2 var_AC
  loc_AE247C: LitI2_Byte 3
  loc_AE247E: EqI2
  loc_AE247F: BranchF loc_AE24D0
  loc_AE2482: LitVarStr var_94, "&"
  loc_AE2487: PopAdLdVar
  loc_AE2488: FLdPr Me
  loc_AE248B: VCallAd Control_ID_FiltroMsk
  loc_AE248E: FStAdFunc var_A8
  loc_AE2491: FLdPr var_A8
  loc_AE2494: LateIdSt
  loc_AE2499: FFree1Ad var_A8
  loc_AE249C: LitVarStr var_94, vbNullString
  loc_AE24A1: PopAdLdVar
  loc_AE24A2: FLdPr Me
  loc_AE24A5: VCallAd Control_ID_FiltroMsk
  loc_AE24A8: FStAdFunc var_A8
  loc_AE24AB: FLdPr var_A8
  loc_AE24AE: LateIdSt
  loc_AE24B3: FFree1Ad var_A8
  loc_AE24B6: LitStr "DetaConc"
  loc_AE24B9: FStStrCopy var_B0
  loc_AE24BC: FLdRfVar var_B0
  loc_AE24BF: FLdPr Me
  loc_AE24C2: MemLdRfVar from_stack_1.global_52
  loc_AE24C5: NewIfNullPr clsservdeva
  loc_AE24C8: Call clsservdeva.Sort(from_stack_1v)
  loc_AE24CD: FFree1Str var_B0
  loc_AE24D0: ExitProcHresult
  loc_AE24D1: ILdR8 arg_24
End Sub

Private Sub ImpoSedeTxt_GotFocus() '9C6FF8
  'Data Table: 4CDEE0
  loc_9C6FE4: FLdPr Me
  loc_9C6FE7: VCallAd Control_ID_ImpoSedeTxt
  loc_9C6FEA: CVarAd
  loc_9C6FEE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6FF3: FFree1Var var_94 = ""
  loc_9C6FF6: ExitProcHresult
End Sub

Private Sub ImpoSedeTxt_KeyPress(KeyAscii As Integer) 'A08758
  'Data Table: 4CDEE0
  loc_A08724: LitStr "1234567890,."
  loc_A08727: FStStrCopy var_88
  loc_A0872A: FLdRfVar var_88
  loc_A0872D: ILdRf KeyAscii
  loc_A08730: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A08735: IStI2 KeyAscii
  loc_A08738: FFree1Str var_88
  loc_A0873B: ILdI2 KeyAscii
  loc_A0873E: LitStr "."
  loc_A08741: ImpAdCallI2 Asc()
  loc_A08746: EqI2
  loc_A08747: BranchF loc_A08755
  loc_A0874A: LitStr ","
  loc_A0874D: ImpAdCallI2 Asc()
  loc_A08752: IStI2 KeyAscii
  loc_A08755: ExitProcHresult
  loc_A08756: NeCy
End Sub

Private Sub ImpoSedeTxt_LostFocus() 'A73B28
  'Data Table: 4CDEE0
  loc_A73AC4: FLdRfVar var_8C
  loc_A73AC7: FLdPr Me
  loc_A73ACA: VCallAd Control_ID_ImpoSedeTxt
  loc_A73ACD: FStAdFunc var_88
  loc_A73AD0: FLdPr var_88
  loc_A73AD3:  = Me.Text
  loc_A73AD8: LitI4 1
  loc_A73ADD: LitI4 1
  loc_A73AE2: LitVarStr var_AC, "###,###,##0.000"
  loc_A73AE7: FStVarCopyObj var_BC
  loc_A73AEA: FLdRfVar var_BC
  loc_A73AED: FLdZeroAd var_8C
  loc_A73AF0: CVarStr var_9C
  loc_A73AF3: FLdRfVar var_CC
  loc_A73AF6: ImpAdCallFPR4  = Format(, )
  loc_A73AFB: FLdRfVar var_CC
  loc_A73AFE: CStrVarVal var_D0
  loc_A73B02: FLdPr Me
  loc_A73B05: VCallAd Control_ID_ImpoSedeTxt
  loc_A73B08: FStAdFunc var_D4
  loc_A73B0B: FLdPr var_D4
  loc_A73B0E: Me.Text = from_stack_1
  loc_A73B13: FFree1Str var_D0
  loc_A73B16: FFreeAd var_88 = ""
  loc_A73B1D: FFreeVar var_9C = "": var_BC = ""
  loc_A73B26: ExitProcHresult
End Sub

Private Sub ImpoSedeTxt_Validate(Cancel As Boolean) 'A8C3D0
  'Data Table: 4CDEE0
  loc_A8C334: FLdRfVar var_8A
  loc_A8C337: FLdPr Me
  loc_A8C33A: VCallAd Control_ID_cmdCancelar
  loc_A8C33D: FStAdFunc var_88
  loc_A8C340: FLdPr var_88
  loc_A8C343:  = Me.Value
  loc_A8C348: FLdI2 var_8A
  loc_A8C34B: NotI4
  loc_A8C34C: FLdRfVar var_92
  loc_A8C34F: FLdPr Me
  loc_A8C352: VCallAd Control_ID_ImpoSedeTxt
  loc_A8C355: FStAdFunc var_90
  loc_A8C358: FLdPr var_90
  loc_A8C35B:  = Me.Enabled
  loc_A8C360: FLdI2 var_92
  loc_A8C363: AndI4
  loc_A8C364: FFreeAd var_88 = ""
  loc_A8C36B: BranchF loc_A8C3CC
  loc_A8C36E: FLdRfVar var_98
  loc_A8C371: FLdPr Me
  loc_A8C374: VCallAd Control_ID_ImpoSedeTxt
  loc_A8C377: FStAdFunc var_88
  loc_A8C37A: FLdPr var_88
  loc_A8C37D:  = Me.Text
  loc_A8C382: LitI2_Byte &HFF
  loc_A8C384: LitI2_Byte 0
  loc_A8C386: ILdRf var_98
  loc_A8C389: LitStr "Importe"
  loc_A8C38C: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A8C391: FStStrNoPop var_9C
  loc_A8C394: FLdPr Me
  loc_A8C397: MemStStrCopy
  loc_A8C39B: FFreeStr var_98 = ""
  loc_A8C3A2: FFree1Ad var_88
  loc_A8C3A5: FLdPr Me
  loc_A8C3A8: VCallAd Control_ID_ImpoSedeTxt
  loc_A8C3AB: FStAdFuncNoPop
  loc_A8C3AE: CastAd
  loc_A8C3B1: FStAdFunc var_90
  loc_A8C3B4: FLdRfVar var_90
  loc_A8C3B7: FLdPr Me
  loc_A8C3BA: MemLdStr global_68
  loc_A8C3BD: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A8C3C2: IStI2 Cancel
  loc_A8C3C5: FFreeAd var_88 = ""
  loc_A8C3CC: ExitProcHresult
End Sub
