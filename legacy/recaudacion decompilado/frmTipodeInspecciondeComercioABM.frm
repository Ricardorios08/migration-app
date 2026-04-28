VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmTipodeInspecciondeComercioABM
  Caption = "Tipo de Inspección de Comercio "
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmTipodeInspecciondeComercioABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 12492
  ClientHeight = 9408
  Begin VB.Frame Frame1
    Left = 120
    Top = 3600
    Width = 8295
    Height = 2055
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
    Begin VB.TextBox DetaTiicTxt
      Left = 1320
      Top = 960
      Width = 6015
      Height = 360
      TabIndex = 2
      MaxLength = 40
      DataField = "DetaTiic"
    End
    Begin MSMask.MaskEdBox CodiTiicMsk
      Left = 1320
      Top = 480
      Width = 615
      Height = 360
      TabIndex = 1
      OleObjectBlob = "frmTipodeInspecciondeComercioABM.frx":08CA
      DataField = "CodiTiic"
    End
    Begin VB.Label Label3
      Caption = "Detalle:"
      Left = 480
      Top = 960
      Width = 810
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
    Begin VB.Label Label1
      Caption = "Código:"
      Left = 480
      Top = 480
      Width = 810
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
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 840
    Width = 8295
    Height = 2535
    TabIndex = 0
    OleObjectBlob = "frmTipodeInspecciondeComercioABM.frx":0958
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmTipodeInspecciondeComercioABM.frx":0B3E
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 12492
    Height = 636
    TabIndex = 6
    OleObjectBlob = "frmTipodeInspecciondeComercioABM.frx":86BC
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 7
      TabStop = 0   'False
      Picture = "frmTipodeInspecciondeComercioABM.frx":8C18
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmTipodeInspecciondeComercioABM"


Private Sub DetaTiicTxt_GotFocus() '9C5150
  'Data Table: 42B018
  loc_9C513C: FLdPr Me
  loc_9C513F: VCallAd Control_ID_DetaTiicTxt
  loc_9C5142: CVarAd
  loc_9C5146: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C514B: FFree1Var var_94 = ""
  loc_9C514E: ExitProcHresult
End Sub

Private Sub DetaTiicTxt_Validate(Cancel As Boolean) 'A91374
  'Data Table: 42B018
  loc_A912D4: FLdRfVar var_8A
  loc_A912D7: FLdPr Me
  loc_A912DA: VCallAd Control_ID_cmdCancelar
  loc_A912DD: FStAdFunc var_88
  loc_A912E0: FLdPr var_88
  loc_A912E3:  = Me.Value
  loc_A912E8: FLdI2 var_8A
  loc_A912EB: NotI4
  loc_A912EC: FLdRfVar var_92
  loc_A912EF: FLdPr Me
  loc_A912F2: VCallAd Control_ID_DetaTiicTxt
  loc_A912F5: FStAdFunc var_90
  loc_A912F8: FLdPr var_90
  loc_A912FB:  = Me.Enabled
  loc_A91300: FLdI2 var_92
  loc_A91303: AndI4
  loc_A91304: FFreeAd var_88 = ""
  loc_A9130B: BranchF loc_A91371
  loc_A9130E: FLdRfVar var_98
  loc_A91311: FLdPr Me
  loc_A91314: VCallAd Control_ID_DetaTiicTxt
  loc_A91317: FStAdFunc var_88
  loc_A9131A: FLdPr var_88
  loc_A9131D:  = Me.Text
  loc_A91322: ILdRf var_98
  loc_A91325: LitStr "Código"
  loc_A91328: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A9132D: FStStrNoPop var_9C
  loc_A91330: FLdPr Me
  loc_A91333: MemStStrCopy
  loc_A91337: FFreeStr var_98 = ""
  loc_A9133E: FFree1Ad var_88
  loc_A91341: FLdPr Me
  loc_A91344: MemLdStr global_60
  loc_A91347: LitStr vbNullString
  loc_A9134A: NeStr
  loc_A9134C: BranchF loc_A91371
  loc_A9134F: FLdPr Me
  loc_A91352: MemLdStr global_60
  loc_A91355: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A9135A: FLdPr Me
  loc_A9135D: VCallAd Control_ID_DetaTiicTxt
  loc_A91360: CVarAd
  loc_A91364: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A91369: FFree1Var var_AC = ""
  loc_A9136C: LitI2_Byte &HFF
  loc_A9136E: IStI2 Cancel
  loc_A91371: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'AB1824
  'Data Table: 42B018
  loc_AB1750: LitI2_Byte 0
  loc_AB1752: FLdPr Me
  loc_AB1755: MemStI2 global_56
  loc_AB1758: LitI2_Byte 0
  loc_AB175A: ILdRf Me
  loc_AB175D: CastAd
  loc_AB1760: FStAdFunc var_88
  loc_AB1763: FLdRfVar var_88
  loc_AB1766: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AB176B: FFree1Ad var_88
  loc_AB176E: LitI4 0
  loc_AB1773: LitI4 0
  loc_AB1778: FLdRfVar var_8C
  loc_AB177B: Redim
  loc_AB1785: FLdPr Me
  loc_AB1788: VCallAd Control_ID_dgdABMS
  loc_AB178B: CVarAd
  loc_AB178F: ParmAry1St
  loc_AB1795: FLdRfVar var_8C
  loc_AB1798: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AB179D: FLdRfVar var_8C
  loc_AB17A0: Erase
  loc_AB17A1: FLdRfVar var_A0
  loc_AB17A4: FLdPr Me
  loc_AB17A7: MemLdRfVar from_stack_1.global_52
  loc_AB17AA: NewIfNullPr clstipoinco
  loc_AB17AD: from_stack_1 = clstipoinco.RecordCount
  loc_AB17B2: ILdRf var_A0
  loc_AB17B5: LitI4 0
  loc_AB17BA: EqI4
  loc_AB17BB: BranchF loc_AB17D2
  loc_AB17BE: ILdRf Me
  loc_AB17C1: CastAd
  loc_AB17C4: FStAdFunc var_88
  loc_AB17C7: FLdRfVar var_88
  loc_AB17CA: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_AB17CF: FFree1Ad var_88
  loc_AB17D2: FLdPr Me
  loc_AB17D5: MemLdRfVar from_stack_1.global_52
  loc_AB17D8: NewIfNullAd
  loc_AB17DB: FStAd var_A4 
  loc_AB17DF: FLdRfVar var_A4
  loc_AB17E2: CVarRef
  loc_AB17E7: ILdRf Me
  loc_AB17EA: CastAd
  loc_AB17ED: FStAdFunc var_88
  loc_AB17F0: FLdRfVar var_88
  loc_AB17F3: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_AB17F8: ILdRf var_A4
  loc_AB17FB: CastAd
  loc_AB17FE: FLdPr Me
  loc_AB1801: MemStAdFunc
  loc_AB1805: FFreeAd var_88 = ""
  loc_AB180C: ILdRf Me
  loc_AB180F: CastAd
  loc_AB1812: FStAdFunc var_88
  loc_AB1815: FLdRfVar var_88
  loc_AB1818: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AB181D: FFree1Ad var_88
  loc_AB1820: ExitProcHresult
End Sub

Private Sub Form_Load() 'AA3FA8
  'Data Table: 42B018
  loc_AA3EF0: ILdRf Me
  loc_AA3EF3: CastAd
  loc_AA3EF6: FStAdFunc var_88
  loc_AA3EF9: FLdRfVar var_88
  loc_AA3EFC: ImpAdCallFPR4 Proc_272_42_A95944()
  loc_AA3F01: FFree1Ad var_88
  loc_AA3F04: ILdRf Me
  loc_AA3F07: CastAd
  loc_AA3F0A: FStAdFunc var_88
  loc_AA3F0D: FLdRfVar var_88
  loc_AA3F10: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_AA3F15: FFree1Ad var_88
  loc_AA3F18: LitI2_Byte 0
  loc_AA3F1A: CR8I2
  loc_AA3F1B: PopFPR4
  loc_AA3F1C: FLdPr Me
  loc_AA3F1F: Me.Left = from_stack_1s
  loc_AA3F24: LitI2_Byte 0
  loc_AA3F26: CR8I2
  loc_AA3F27: PopFPR4
  loc_AA3F28: FLdPr Me
  loc_AA3F2B: Me.Top = from_stack_1s
  loc_AA3F30: LitStr "SELECT * FROM tipoinco ORDER BY CodiTiic"
  loc_AA3F33: FLdPr Me
  loc_AA3F36: MemLdRfVar from_stack_1.global_52
  loc_AA3F39: NewIfNullPr clstipoinco
  loc_AA3F3C: Call clstipoinco.RedefineRS(from_stack_1v)
  loc_AA3F41: LitI4 0
  loc_AA3F46: LitI4 1
  loc_AA3F4B: FLdRfVar var_8C
  loc_AA3F4E: Redim
  loc_AA3F58: FLdPr Me
  loc_AA3F5B: MemLdRfVar from_stack_1.global_52
  loc_AA3F5E: NewIfNullAd
  loc_AA3F61: FStAd var_88 
  loc_AA3F65: FLdRfVar var_88
  loc_AA3F68: CVarRef
  loc_AA3F6D: ParmAry1St
  loc_AA3F73: FLdPr Me
  loc_AA3F76: VCallAd Control_ID_dgdABMS
  loc_AA3F79: CVarAd
  loc_AA3F7D: ParmAry1St
  loc_AA3F83: FLdRfVar var_8C
  loc_AA3F86: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AA3F8B: ILdRf var_88
  loc_AA3F8E: CastAd
  loc_AA3F91: FLdPr Me
  loc_AA3F94: MemStAdFunc
  loc_AA3F98: FLdRfVar var_8C
  loc_AA3F9B: Erase
  loc_AA3F9C: FFree1Ad var_88
  loc_AA3F9F: Call cmdCancelar_Click()
  loc_AA3FA4: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A61FE0
  'Data Table: 42B018
  loc_A61F84: FLdRfVar var_C2
  loc_A61F87: FLdRfVar var_C0
  loc_A61F8A: LitVarI2 var_B8, 1
  loc_A61F8F: FLdPr Me
  loc_A61F92: VCallAd Control_ID_tlbABMS
  loc_A61F95: FStAdFunc var_88
  loc_A61F98: FLdPr var_88
  loc_A61F9B: LateIdLdVar var_98 DispID_3 0
  loc_A61FA2: CastAdVar Me
  loc_A61FA6: FStAdFunc var_BC
  loc_A61FA9: FLdPr var_BC
  loc_A61FAC:  = Me.Buttons.ControlDefault
  loc_A61FB1: FLdPr var_C0
  loc_A61FB4:  = Me.Enabled
  loc_A61FB9: FLdI2 var_C2
  loc_A61FBC: FFreeAd var_88 = "": var_BC = ""
  loc_A61FC5: FFreeVar var_98 = ""
  loc_A61FCC: BranchF loc_A61FDD
  loc_A61FCF: FLdPr Me
  loc_A61FD2: MemLdRfVar from_stack_1.global_52
  loc_A61FD5: NewIfNullPr clstipoinco
  loc_A61FD8: Call clstipoinco.Requery()
  loc_A61FDD: ExitProcHresult
  loc_A61FDE: LitStr "StrFormMemory_0"
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9CD73C
  'Data Table: 42B018
  loc_9CD724: ILdI2 KeyCode
  loc_9CD727: ILdRf Me
  loc_9CD72A: CastAd
  loc_9CD72D: FStAdFunc var_88
  loc_9CD730: FLdRfVar var_88
  loc_9CD733: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9CD738: FFree1Ad var_88
  loc_9CD73B: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B5BFE4
  'Data Table: 42B018
  loc_B5BBF4: ILdRf Button
  loc_B5BBF7: FStAd var_88 
  loc_B5BBFB: FLdRfVar var_90
  loc_B5BBFE: FLdPr var_88
  loc_B5BC01:  = Me.Key
  loc_B5BC06: FLdZeroAd var_90
  loc_B5BC09: FStStr var_94
  loc_B5BC0C: ILdRf var_94
  loc_B5BC0F: LitStr "btnCrear"
  loc_B5BC12: EqStr
  loc_B5BC14: BranchF loc_B5BCE8
  loc_B5BC17: LitI2_Byte 1
  loc_B5BC19: FLdPr Me
  loc_B5BC1C: MemStI2 global_56
  loc_B5BC1F: ILdRf Me
  loc_B5BC22: CastAd
  loc_B5BC25: FStAdFunc var_98
  loc_B5BC28: FLdRfVar var_98
  loc_B5BC2B: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B5BC30: FFree1Ad var_98
  loc_B5BC33: LitI4 0
  loc_B5BC38: LitI4 0
  loc_B5BC3D: FLdRfVar var_9C
  loc_B5BC40: Redim
  loc_B5BC4A: FLdPr Me
  loc_B5BC4D: VCallAd Control_ID_dgdABMS
  loc_B5BC50: CVarAd
  loc_B5BC54: ParmAry1St
  loc_B5BC5A: FLdRfVar var_9C
  loc_B5BC5D: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B5BC62: FLdRfVar var_9C
  loc_B5BC65: Erase
  loc_B5BC66: ILdRf Me
  loc_B5BC69: CastAd
  loc_B5BC6C: FStAdFunc var_98
  loc_B5BC6F: FLdRfVar var_98
  loc_B5BC72: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B5BC77: FFree1Ad var_98
  loc_B5BC7A: ILdRf Me
  loc_B5BC7D: CastAd
  loc_B5BC80: FStAdFunc var_98
  loc_B5BC83: FLdRfVar var_98
  loc_B5BC86: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B5BC8B: FFree1Ad var_98
  loc_B5BC8E: ILdRf Me
  loc_B5BC91: CastAd
  loc_B5BC94: FStAdFunc var_98
  loc_B5BC97: FLdRfVar var_98
  loc_B5BC9A: ImpAdCallFPR4 Proc_272_17_A8BE98()
  loc_B5BC9F: FFree1Ad var_98
  loc_B5BCA2: FLdRfVar var_AE
  loc_B5BCA5: FLdPr Me
  loc_B5BCA8: MemLdRfVar from_stack_1.global_52
  loc_B5BCAB: NewIfNullPr clstipoinco
  loc_B5BCAE: from_stack_1v = clstipoinco.NuevoRegistro()
  loc_B5BCB3: FLdI2 var_AE
  loc_B5BCB6: CStrUI1
  loc_B5BCB8: CVarStr var_AC
  loc_B5BCBB: PopAdLdVar
  loc_B5BCBC: FLdPr Me
  loc_B5BCBF: VCallAd Control_ID_CodiTiicMsk
  loc_B5BCC2: FStAdFunc var_98
  loc_B5BCC5: FLdPr var_98
  loc_B5BCC8: LateIdSt
  loc_B5BCCD: FFree1Ad var_98
  loc_B5BCD0: FFree1Var var_AC = ""
  loc_B5BCD3: FLdPr Me
  loc_B5BCD6: VCallAd Control_ID_CodiTiicMsk
  loc_B5BCD9: CVarAd
  loc_B5BCDD: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B5BCE2: FFree1Var var_AC = ""
  loc_B5BCE5: Branch loc_B5BFE0
  loc_B5BCE8: ILdRf var_94
  loc_B5BCEB: LitStr "btnModificar"
  loc_B5BCEE: EqStr
  loc_B5BCF0: BranchF loc_B5BD8C
  loc_B5BCF3: LitI2_Byte 2
  loc_B5BCF5: FLdPr Me
  loc_B5BCF8: MemStI2 global_56
  loc_B5BCFB: ILdRf Me
  loc_B5BCFE: CastAd
  loc_B5BD01: FStAdFunc var_98
  loc_B5BD04: FLdRfVar var_98
  loc_B5BD07: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B5BD0C: FFree1Ad var_98
  loc_B5BD0F: LitI4 0
  loc_B5BD14: LitI4 0
  loc_B5BD19: FLdRfVar var_9C
  loc_B5BD1C: Redim
  loc_B5BD26: FLdPr Me
  loc_B5BD29: VCallAd Control_ID_dgdABMS
  loc_B5BD2C: CVarAd
  loc_B5BD30: ParmAry1St
  loc_B5BD36: FLdRfVar var_9C
  loc_B5BD39: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B5BD3E: FLdRfVar var_9C
  loc_B5BD41: Erase
  loc_B5BD42: ILdRf Me
  loc_B5BD45: CastAd
  loc_B5BD48: FStAdFunc var_98
  loc_B5BD4B: FLdRfVar var_98
  loc_B5BD4E: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B5BD53: FFree1Ad var_98
  loc_B5BD56: LitI4 0
  loc_B5BD5B: LitI4 0
  loc_B5BD60: FLdRfVar var_9C
  loc_B5BD63: Redim
  loc_B5BD6D: FLdPr Me
  loc_B5BD70: VCallAd Control_ID_DetaTiicTxt
  loc_B5BD73: CVarAd
  loc_B5BD77: ParmAry1St
  loc_B5BD7D: FLdRfVar var_9C
  loc_B5BD80: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B5BD85: FLdRfVar var_9C
  loc_B5BD88: Erase
  loc_B5BD89: Branch loc_B5BFE0
  loc_B5BD8C: ILdRf var_94
  loc_B5BD8F: LitStr "btnEliminar"
  loc_B5BD92: EqStr
  loc_B5BD94: BranchF loc_B5BDB7
  loc_B5BD97: FLdRfVar var_C4
  loc_B5BD9A: FLdPr Me
  loc_B5BD9D: MemLdRfVar from_stack_1.global_52
  loc_B5BDA0: NewIfNullPr clstipoinco
  loc_B5BDA3: from_stack_1 = clstipoinco.RecordCount
  loc_B5BDA8: ILdRf var_C4
  loc_B5BDAB: LitI4 0
  loc_B5BDB0: GtI4
  loc_B5BDB1: BranchF loc_B5BDB4
  loc_B5BDB4: Branch loc_B5BFE0
  loc_B5BDB7: ILdRf var_94
  loc_B5BDBA: LitStr "btnGuardar"
  loc_B5BDBD: EqStr
  loc_B5BDBF: BranchF loc_B5BEDC
  loc_B5BDC2: LitStr vbNullString
  loc_B5BDC5: FLdPr Me
  loc_B5BDC8: MemStStrCopy
  loc_B5BDCC: LitI2_Byte 0
  loc_B5BDCE: PopTmpLdAd2 var_AE
  loc_B5BDD1: Call CodiTiicMsk_UnknownEvent_8()
  loc_B5BDD6: FLdPr Me
  loc_B5BDD9: MemLdStr global_60
  loc_B5BDDC: LitStr vbNullString
  loc_B5BDDF: NeStr
  loc_B5BDE1: BranchF loc_B5BDE5
  loc_B5BDE4: ExitProcHresult
  loc_B5BDE5: LitI2_Byte 0
  loc_B5BDE7: PopTmpLdAd2 var_AE
  loc_B5BDEA: Call DetaTiicTxt_Validate(from_stack_1v)
  loc_B5BDEF: FLdPr Me
  loc_B5BDF2: MemLdStr global_60
  loc_B5BDF5: LitStr vbNullString
  loc_B5BDF8: NeStr
  loc_B5BDFA: BranchF loc_B5BDFE
  loc_B5BDFD: ExitProcHresult
  loc_B5BDFE: FLdPr Me
  loc_B5BE01: MemLdI2 global_56
  loc_B5BE04: FStI2 var_C6
  loc_B5BE07: FLdI2 var_C6
  loc_B5BE0A: LitI2_Byte 1
  loc_B5BE0C: EqI2
  loc_B5BE0D: BranchF loc_B5BE69
  loc_B5BE10: FLdPr Me
  loc_B5BE13: VCallAd Control_ID_CodiTiicMsk
  loc_B5BE16: FStAdFunc var_98
  loc_B5BE19: FLdPr var_98
  loc_B5BE1C: LateIdLdVar var_AC DispID_22 0
  loc_B5BE23: PopAd
  loc_B5BE25: FLdRfVar var_90
  loc_B5BE28: FLdPr Me
  loc_B5BE2B: VCallAd Control_ID_DetaTiicTxt
  loc_B5BE2E: FStAdFunc var_CC
  loc_B5BE31: FLdPr var_CC
  loc_B5BE34:  = Me.Text
  loc_B5BE39: LitI2_Byte &HFF
  loc_B5BE3B: ILdRf var_90
  loc_B5BE3E: FLdRfVar var_AC
  loc_B5BE41: CStrVarTmp
  loc_B5BE42: FStStrNoPop var_D0
  loc_B5BE45: CI2Str
  loc_B5BE47: FLdPr Me
  loc_B5BE4A: MemLdRfVar from_stack_1.global_52
  loc_B5BE4D: NewIfNullPr clstipoinco
  loc_B5BE50: Call clstipoinco.AddNew(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B5BE55: FFreeStr var_D0 = ""
  loc_B5BE5C: FFreeAd var_98 = ""
  loc_B5BE63: FFree1Var var_AC = ""
  loc_B5BE66: Branch loc_B5BED4
  loc_B5BE69: FLdI2 var_C6
  loc_B5BE6C: LitI2_Byte 2
  loc_B5BE6E: EqI2
  loc_B5BE6F: BranchF loc_B5BECB
  loc_B5BE72: FLdPr Me
  loc_B5BE75: VCallAd Control_ID_CodiTiicMsk
  loc_B5BE78: FStAdFunc var_98
  loc_B5BE7B: FLdPr var_98
  loc_B5BE7E: LateIdLdVar var_AC DispID_22 0
  loc_B5BE85: PopAd
  loc_B5BE87: FLdRfVar var_90
  loc_B5BE8A: FLdPr Me
  loc_B5BE8D: VCallAd Control_ID_DetaTiicTxt
  loc_B5BE90: FStAdFunc var_CC
  loc_B5BE93: FLdPr var_CC
  loc_B5BE96:  = Me.Text
  loc_B5BE9B: LitI2_Byte &HFF
  loc_B5BE9D: ILdRf var_90
  loc_B5BEA0: FLdRfVar var_AC
  loc_B5BEA3: CStrVarTmp
  loc_B5BEA4: FStStrNoPop var_D0
  loc_B5BEA7: CI2Str
  loc_B5BEA9: FLdPr Me
  loc_B5BEAC: MemLdRfVar from_stack_1.global_52
  loc_B5BEAF: NewIfNullPr clstipoinco
  loc_B5BEB2: Call clstipoinco.Modificar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B5BEB7: FFreeStr var_D0 = ""
  loc_B5BEBE: FFreeAd var_98 = ""
  loc_B5BEC5: FFree1Var var_AC = ""
  loc_B5BEC8: Branch loc_B5BED4
  loc_B5BECB: FLdI2 var_C6
  loc_B5BECE: LitI2_Byte 3
  loc_B5BED0: EqI2
  loc_B5BED1: BranchF loc_B5BED4
  loc_B5BED4: Call cmdCancelar_Click()
  loc_B5BED9: Branch loc_B5BFE0
  loc_B5BEDC: ILdRf var_94
  loc_B5BEDF: LitStr "btnCancelar"
  loc_B5BEE2: EqStr
  loc_B5BEE4: BranchF loc_B5BEEF
  loc_B5BEE7: Call cmdCancelar_Click()
  loc_B5BEEC: Branch loc_B5BFE0
  loc_B5BEEF: ILdRf var_94
  loc_B5BEF2: LitStr "btnPrimero"
  loc_B5BEF5: EqStr
  loc_B5BEF7: BranchF loc_B5BF0B
  loc_B5BEFA: FLdPr Me
  loc_B5BEFD: MemLdRfVar from_stack_1.global_52
  loc_B5BF00: NewIfNullPr clstipoinco
  loc_B5BF03: Call clstipoinco.MoveFirst()
  loc_B5BF08: Branch loc_B5BFE0
  loc_B5BF0B: ILdRf var_94
  loc_B5BF0E: LitStr "btnAnterior"
  loc_B5BF11: EqStr
  loc_B5BF13: BranchF loc_B5BF27
  loc_B5BF16: FLdPr Me
  loc_B5BF19: MemLdRfVar from_stack_1.global_52
  loc_B5BF1C: NewIfNullPr clstipoinco
  loc_B5BF1F: Call clstipoinco.MovePrevious()
  loc_B5BF24: Branch loc_B5BFE0
  loc_B5BF27: ILdRf var_94
  loc_B5BF2A: LitStr "btnSiguiente"
  loc_B5BF2D: EqStr
  loc_B5BF2F: BranchF loc_B5BF43
  loc_B5BF32: FLdPr Me
  loc_B5BF35: MemLdRfVar from_stack_1.global_52
  loc_B5BF38: NewIfNullPr clstipoinco
  loc_B5BF3B: Call clstipoinco.MoveNext()
  loc_B5BF40: Branch loc_B5BFE0
  loc_B5BF43: ILdRf var_94
  loc_B5BF46: LitStr "btnUltimo"
  loc_B5BF49: EqStr
  loc_B5BF4B: BranchF loc_B5BF5F
  loc_B5BF4E: FLdPr Me
  loc_B5BF51: MemLdRfVar from_stack_1.global_52
  loc_B5BF54: NewIfNullPr clstipoinco
  loc_B5BF57: Call clstipoinco.MoveLast()
  loc_B5BF5C: Branch loc_B5BFE0
  loc_B5BF5F: ILdRf var_94
  loc_B5BF62: LitStr "btnFiltrar"
  loc_B5BF65: EqStr
  loc_B5BF67: BranchF loc_B5BF6D
  loc_B5BF6A: Branch loc_B5BFE0
  loc_B5BF6D: ILdRf var_94
  loc_B5BF70: LitStr "btnBuscar"
  loc_B5BF73: EqStr
  loc_B5BF75: BranchF loc_B5BF7B
  loc_B5BF78: Branch loc_B5BFE0
  loc_B5BF7B: ILdRf var_94
  loc_B5BF7E: LitStr "btnImprimir"
  loc_B5BF81: EqStr
  loc_B5BF83: BranchF loc_B5BF89
  loc_B5BF86: Branch loc_B5BFE0
  loc_B5BF89: ILdRf var_94
  loc_B5BF8C: LitStr "btnAyuda"
  loc_B5BF8F: EqStr
  loc_B5BF91: BranchF loc_B5BFC0
  loc_B5BF94: LitVar_Missing var_130
  loc_B5BF97: LitVar_Missing var_110
  loc_B5BF9A: LitVar_Missing var_F0
  loc_B5BF9D: LitI4 0
  loc_B5BFA2: LitVarStr var_C0, "Opción no disponible en esta versión."
  loc_B5BFA7: FStVarCopyObj var_AC
  loc_B5BFAA: FLdRfVar var_AC
  loc_B5BFAD: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B5BFB2: FFreeVar var_AC = "": var_F0 = "": var_110 = ""
  loc_B5BFBD: Branch loc_B5BFE0
  loc_B5BFC0: ILdRf var_94
  loc_B5BFC3: LitStr "btnSalir"
  loc_B5BFC6: EqStr
  loc_B5BFC8: BranchF loc_B5BFE0
  loc_B5BFCB: ILdRf Me
  loc_B5BFCE: FStAdNoPop
  loc_B5BFD2: ImpAdLdRf MemVar_D9C5D8
  loc_B5BFD5: NewIfNullPr Global
  loc_B5BFD8: Global.Unload from_stack_1
  loc_B5BFDD: FFree1Ad var_98
  loc_B5BFE0: ExitProcHresult
  loc_B5BFE1: FLdPr var_88
End Sub

Private Sub CodiTiicMsk_UnknownEvent_8 'A96BE4
  'Data Table: 42B018
  loc_A96B38: FLdRfVar var_8A
  loc_A96B3B: FLdPr Me
  loc_A96B3E: VCallAd Control_ID_cmdCancelar
  loc_A96B41: FStAdFunc var_88
  loc_A96B44: FLdPr var_88
  loc_A96B47:  = Me.Value
  loc_A96B4C: FLdI2 var_8A
  loc_A96B4F: NotI4
  loc_A96B50: FLdPr Me
  loc_A96B53: VCallAd Control_ID_CodiTiicMsk
  loc_A96B56: FStAdFunc var_90
  loc_A96B59: FLdPr var_90
  loc_A96B5C: LateIdLdVar var_A0 DispID_13 -32767
  loc_A96B63: CBoolVar
  loc_A96B65: AndI4
  loc_A96B66: FFreeAd var_88 = ""
  loc_A96B6D: FFree1Var var_A0 = ""
  loc_A96B70: BranchF loc_A96BE2
  loc_A96B73: FLdPr Me
  loc_A96B76: VCallAd Control_ID_CodiTiicMsk
  loc_A96B79: FStAdFunc var_88
  loc_A96B7C: FLdPr var_88
  loc_A96B7F: LateIdLdVar var_A0 DispID_22 0
  loc_A96B86: PopAd
  loc_A96B88: LitI2_Byte 0
  loc_A96B8A: LitI2_Byte 0
  loc_A96B8C: FLdRfVar var_A0
  loc_A96B8F: CStrVarTmp
  loc_A96B90: FStStrNoPop var_A4
  loc_A96B93: LitStr "Código"
  loc_A96B96: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A96B9B: FStStrNoPop var_A8
  loc_A96B9E: FLdPr Me
  loc_A96BA1: MemStStrCopy
  loc_A96BA5: FFreeStr var_A4 = ""
  loc_A96BAC: FFree1Ad var_88
  loc_A96BAF: FFree1Var var_A0 = ""
  loc_A96BB2: FLdPr Me
  loc_A96BB5: MemLdStr global_60
  loc_A96BB8: LitStr vbNullString
  loc_A96BBB: NeStr
  loc_A96BBD: BranchF loc_A96BE2
  loc_A96BC0: FLdPr Me
  loc_A96BC3: MemLdStr global_60
  loc_A96BC6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A96BCB: FLdPr Me
  loc_A96BCE: VCallAd Control_ID_CodiTiicMsk
  loc_A96BD1: CVarAd
  loc_A96BD5: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A96BDA: FFree1Var var_A0 = ""
  loc_A96BDD: LitI2_Byte &HFF
  loc_A96BDF: IStI2 Button
  loc_A96BE2: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9CD8B8
  'Data Table: 42B018
  loc_9CD8A0: FLdPr Me
  loc_9CD8A3: VCallAd Control_ID_dgdABMS
  loc_9CD8A6: FStAdFunc var_88
  loc_9CD8A9: FLdRfVar var_88
  loc_9CD8AC: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9CD8B1: FFree1Ad var_88
  loc_9CD8B4: ExitProcHresult
  loc_9CD8B5: FnLBound
  loc_9CD8B6: CBoolVarNull
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9CD86C
  'Data Table: 42B018
  loc_9CD854: FLdPr Me
  loc_9CD857: VCallAd Control_ID_dgdABMS
  loc_9CD85A: FStAdFunc var_88
  loc_9CD85D: FLdRfVar var_88
  loc_9CD860: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9CD865: FFree1Ad var_88
  loc_9CD868: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A66234
  'Data Table: 42B018
  loc_A661D8: FLdRfVar var_B4
  loc_A661DB: FLdRfVar var_B0
  loc_A661DE: FLdI2 ColIndex
  loc_A661E1: CVarI2 var_A8
  loc_A661E4: PopAdLdVar
  loc_A661E5: FLdPr Me
  loc_A661E8: VCallAd Control_ID_dgdABMS
  loc_A661EB: FStAdFunc var_88
  loc_A661EE: FLdPr var_88
  loc_A661F1: LateIdLdVar var_98 DispID_105 0
  loc_A661F8: CastAdVar Me
  loc_A661FC: FStAdFunc var_AC
  loc_A661FF: FLdPr var_AC
  loc_A66202: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A66207: FLdPr var_B0
  loc_A6620A:  = Me.DataField
  loc_A6620F: FLdZeroAd var_B4
  loc_A66212: PopTmpLdAdStr
  loc_A66216: FLdPr Me
  loc_A66219: MemLdRfVar from_stack_1.global_52
  loc_A6621C: NewIfNullPr clstipoinco
  loc_A6621F: Call clstipoinco.Sort(from_stack_1v)
  loc_A66224: FFree1Str var_B8
  loc_A66227: FFreeAd var_88 = "": var_AC = ""
  loc_A66230: FFree1Var var_98 = ""
  loc_A66233: ExitProcHresult
End Sub

Private Function Proc_151_11_9C5078() '9C5078
  'Data Table: 42B018
  loc_9C5064: FLdPr Me
  loc_9C5067: VCallAd Control_ID_CodiTiicMsk
  loc_9C506A: CVarAd
  loc_9C506E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5073: FFree1Var var_94 = ""
  loc_9C5076: ExitProcHresult
End Function
