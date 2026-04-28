VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmEstadoInmuebleABM
  Caption = "Estado del Inmueble"
  WindowState = 2
  ScaleMode = 3
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmEstadoInmuebleABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 8640
  ClientHeight = 5760
  Begin VB.Frame Frame1
    Left = 120
    Top = 4200
    Width = 8280
    Height = 1680
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
    Begin VB.TextBox DetaEsinTxt
      ForeColor = &HFF0000&
      Left = 1650
      Top = 885
      Width = 6135
      Height = 360
      TabIndex = 2
      MaxLength = 30
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
    Begin VB.TextBox CodiEsinTxt
      ForeColor = &HFF0000&
      Left = 1650
      Top = 405
      Width = 735
      Height = 360
      TabIndex = 1
      MaxLength = 2
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
      Left = 720
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
    Begin VB.Label Label2
      Caption = "Código:"
      Left = 720
      Top = 405
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
    Top = 780
    Width = 8280
    Height = 3315
    TabIndex = 0
    OleObjectBlob = "frmEstadoInmuebleABM.frx":324A
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmEstadoInmuebleABM.frx":3430
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 8640
    Height = 528
    TabIndex = 6
    OleObjectBlob = "frmEstadoInmuebleABM.frx":AFAE
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 7
      TabStop = 0   'False
      Picture = "frmEstadoInmuebleABM.frx":B50A
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmEstadoInmuebleABM"


Private Sub cmdCancelar_Click() 'A73870
  'Data Table: 42C040
  loc_A73804: LitI2_Byte 0
  loc_A73806: FLdPr Me
  loc_A73809: MemStI2 global_56
  loc_A7380C: LitI2_Byte 0
  loc_A7380E: ILdRf Me
  loc_A73811: CastAd
  loc_A73814: FStAdFunc var_88
  loc_A73817: FLdRfVar var_88
  loc_A7381A: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_A7381F: FFree1Ad var_88
  loc_A73822: LitI4 0
  loc_A73827: LitI4 0
  loc_A7382C: FLdRfVar var_8C
  loc_A7382F: Redim
  loc_A73839: FLdPr Me
  loc_A7383C: VCallAd Control_ID_dgdABMS
  loc_A7383F: CVarAd
  loc_A73843: ParmAry1St
  loc_A73849: FLdRfVar var_8C
  loc_A7384C: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A73851: FLdRfVar var_8C
  loc_A73854: Erase
  loc_A73855: Call EnlazaTodo()
  loc_A7385A: ILdRf Me
  loc_A7385D: CastAd
  loc_A73860: FStAdFunc var_88
  loc_A73863: FLdRfVar var_88
  loc_A73866: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_A7386B: FFree1Ad var_88
  loc_A7386E: ExitProcHresult
End Sub

Private Sub CodiEsinTxt_GotFocus() '9C5C90
  'Data Table: 42C040
  loc_9C5C7C: FLdPr Me
  loc_9C5C7F: VCallAd Control_ID_CodiEsinTxt
  loc_9C5C82: CVarAd
  loc_9C5C86: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5C8B: FFree1Var var_94 = ""
  loc_9C5C8E: ExitProcHresult
End Sub

Private Sub CodiEsinTxt_KeyPress(KeyAscii As Integer) '9D8450
  'Data Table: 42C040
  loc_9D8438: LitStr "0123456789"
  loc_9D843B: FStStrCopy var_88
  loc_9D843E: FLdRfVar var_88
  loc_9D8441: ILdRf KeyAscii
  loc_9D8444: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D8449: IStI2 KeyAscii
  loc_9D844C: FFree1Str var_88
  loc_9D844F: ExitProcHresult
End Sub

Private Sub CodiEsinTxt_Validate(Cancel As Boolean) 'ABD764
  'Data Table: 42C040
  loc_ABD66C: FLdRfVar var_8A
  loc_ABD66F: FLdPr Me
  loc_ABD672: VCallAd Control_ID_CodiEsinTxt
  loc_ABD675: FStAdFunc var_88
  loc_ABD678: FLdPr var_88
  loc_ABD67B:  = Me.Enabled
  loc_ABD680: FLdI2 var_8A
  loc_ABD683: LitI2_Byte &HFF
  loc_ABD685: EqI2
  loc_ABD686: FFree1Ad var_88
  loc_ABD689: BranchF loc_ABD763
  loc_ABD68C: FLdRfVar var_90
  loc_ABD68F: FLdPr Me
  loc_ABD692: VCallAd Control_ID_CodiEsinTxt
  loc_ABD695: FStAdFunc var_88
  loc_ABD698: FLdPr var_88
  loc_ABD69B:  = Me.Text
  loc_ABD6A0: LitI2_Byte 0
  loc_ABD6A2: LitI2_Byte 0
  loc_ABD6A4: ILdRf var_90
  loc_ABD6A7: LitStr "codigo"
  loc_ABD6AA: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_ABD6AF: FStStrNoPop var_94
  loc_ABD6B2: FLdPr Me
  loc_ABD6B5: MemStStrCopy
  loc_ABD6B9: FFreeStr var_90 = ""
  loc_ABD6C0: FFree1Ad var_88
  loc_ABD6C3: FLdPr Me
  loc_ABD6C6: MemLdStr global_60
  loc_ABD6C9: LitStr vbNullString
  loc_ABD6CC: NeStr
  loc_ABD6CE: BranchF loc_ABD6F4
  loc_ABD6D1: FLdPr Me
  loc_ABD6D4: MemLdStr global_60
  loc_ABD6D7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABD6DC: FLdPr Me
  loc_ABD6DF: VCallAd Control_ID_CodiEsinTxt
  loc_ABD6E2: CVarAd
  loc_ABD6E6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABD6EB: FFree1Var var_A4 = ""
  loc_ABD6EE: LitI2_Byte &HFF
  loc_ABD6F0: IStI2 Cancel
  loc_ABD6F3: ExitProcHresult
  loc_ABD6F4: FLdRfVar var_94
  loc_ABD6F7: FLdRfVar var_90
  loc_ABD6FA: FLdPr Me
  loc_ABD6FD: VCallAd Control_ID_CodiEsinTxt
  loc_ABD700: FStAdFunc var_88
  loc_ABD703: FLdPr var_88
  loc_ABD706:  = Me.Text
  loc_ABD70B: ILdRf var_90
  loc_ABD70E: CI2Str
  loc_ABD710: FLdPr Me
  loc_ABD713: MemLdRfVar from_stack_1.global_52
  loc_ABD716: NewIfNullPr clsestainmu
  loc_ABD719: from_stack_2v = clsestainmu.ValidaClave(from_stack_1v)
  loc_ABD71E: ILdRf var_94
  loc_ABD721: FLdPr Me
  loc_ABD724: MemStStrCopy
  loc_ABD728: FFreeStr var_90 = ""
  loc_ABD72F: FFree1Ad var_88
  loc_ABD732: FLdPr Me
  loc_ABD735: MemLdStr global_60
  loc_ABD738: LitStr vbNullString
  loc_ABD73B: NeStr
  loc_ABD73D: BranchF loc_ABD763
  loc_ABD740: FLdPr Me
  loc_ABD743: MemLdStr global_60
  loc_ABD746: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABD74B: FLdPr Me
  loc_ABD74E: VCallAd Control_ID_CodiEsinTxt
  loc_ABD751: CVarAd
  loc_ABD755: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABD75A: FFree1Var var_A4 = ""
  loc_ABD75D: LitI2_Byte &HFF
  loc_ABD75F: IStI2 Cancel
  loc_ABD762: ExitProcHresult
  loc_ABD763: ExitProcHresult
End Sub

Private Sub Form_Load() 'AB76C4
  'Data Table: 42C040
  loc_AB75DC: LitI2_Byte 0
  loc_AB75DE: CR8I2
  loc_AB75DF: PopFPR4
  loc_AB75E0: FLdPr Me
  loc_AB75E3: Me.Left = from_stack_1s
  loc_AB75E8: LitI2_Byte 0
  loc_AB75EA: CR8I2
  loc_AB75EB: PopFPR4
  loc_AB75EC: FLdPr Me
  loc_AB75EF: Me.Top = from_stack_1s
  loc_AB75F4: LitStr "SELECT CodiEsin, DetaEsin FROM estainmu ORDER BY CodiEsin"
  loc_AB75F7: FLdPr Me
  loc_AB75FA: MemLdRfVar from_stack_1.global_52
  loc_AB75FD: NewIfNullPr clsestainmu
  loc_AB7600: Call clsestainmu.RedefineRS(from_stack_1v)
  loc_AB7605: LitStr "CodiEsin"
  loc_AB7608: FLdPr Me
  loc_AB760B: VCallAd Control_ID_CodiEsinTxt
  loc_AB760E: FStAdFunc var_88
  loc_AB7611: FLdPr var_88
  loc_AB7614: Me.DataField = from_stack_1
  loc_AB7619: FFree1Ad var_88
  loc_AB761C: LitStr "DetaEsin"
  loc_AB761F: FLdPr Me
  loc_AB7622: VCallAd Control_ID_DetaEsinTxt
  loc_AB7625: FStAdFunc var_88
  loc_AB7628: FLdPr var_88
  loc_AB762B: Me.DataField = from_stack_1
  loc_AB7630: FFree1Ad var_88
  loc_AB7633: LitI4 0
  loc_AB7638: LitI4 1
  loc_AB763D: FLdRfVar var_8C
  loc_AB7640: Redim
  loc_AB764A: FLdPr Me
  loc_AB764D: MemLdRfVar from_stack_1.global_52
  loc_AB7650: NewIfNullAd
  loc_AB7653: FStAd var_88 
  loc_AB7657: FLdRfVar var_88
  loc_AB765A: CVarRef
  loc_AB765F: ParmAry1St
  loc_AB7665: FLdPr Me
  loc_AB7668: VCallAd Control_ID_dgdABMS
  loc_AB766B: CVarAd
  loc_AB766F: ParmAry1St
  loc_AB7675: FLdRfVar var_8C
  loc_AB7678: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AB767D: ILdRf var_88
  loc_AB7680: CastAd
  loc_AB7683: FLdPr Me
  loc_AB7686: MemStAdFunc
  loc_AB768A: FLdRfVar var_8C
  loc_AB768D: Erase
  loc_AB768E: FFree1Ad var_88
  loc_AB7691: Call EnlazaTodo()
  loc_AB7696: ILdRf Me
  loc_AB7699: CastAd
  loc_AB769C: FStAdFunc var_88
  loc_AB769F: FLdRfVar var_88
  loc_AB76A2: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AB76A7: FFree1Ad var_88
  loc_AB76AA: LitI2_Byte 0
  loc_AB76AC: ILdRf Me
  loc_AB76AF: CastAd
  loc_AB76B2: FStAdFunc var_88
  loc_AB76B5: FLdRfVar var_88
  loc_AB76B8: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AB76BD: FFree1Ad var_88
  loc_AB76C0: ExitProcHresult
  loc_AB76C1: FFree1Var var_D0 = ""
End Sub

Private Sub Form_Activate() 'A62A80
  'Data Table: 42C040
  loc_A62A24: FLdRfVar var_C2
  loc_A62A27: FLdRfVar var_C0
  loc_A62A2A: LitVarI2 var_B8, 1
  loc_A62A2F: FLdPr Me
  loc_A62A32: VCallAd Control_ID_tlbABMS
  loc_A62A35: FStAdFunc var_88
  loc_A62A38: FLdPr var_88
  loc_A62A3B: LateIdLdVar var_98 DispID_3 0
  loc_A62A42: CastAdVar Me
  loc_A62A46: FStAdFunc var_BC
  loc_A62A49: FLdPr var_BC
  loc_A62A4C:  = Me.Buttons.ControlDefault
  loc_A62A51: FLdPr var_C0
  loc_A62A54:  = Me.Enabled
  loc_A62A59: FLdI2 var_C2
  loc_A62A5C: FFreeAd var_88 = "": var_BC = ""
  loc_A62A65: FFreeVar var_98 = ""
  loc_A62A6C: BranchF loc_A62A7D
  loc_A62A6F: FLdPr Me
  loc_A62A72: MemLdRfVar from_stack_1.global_52
  loc_A62A75: NewIfNullPr clsestainmu
  loc_A62A78: Call clsestainmu.Requery()
  loc_A62A7D: ExitProcHresult
  loc_A62A7E: PopAdLd4
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9D8534
  'Data Table: 42C040
  loc_9D851C: ILdI2 KeyCode
  loc_9D851F: ILdRf Me
  loc_9D8522: CastAd
  loc_9D8525: FStAdFunc var_88
  loc_9D8528: FLdRfVar var_88
  loc_9D852B: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9D8530: FFree1Ad var_88
  loc_9D8533: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B6F138
  'Data Table: 42C040
  loc_B6ECB0: ILdRf Button
  loc_B6ECB3: FStAd var_88 
  loc_B6ECB7: FLdRfVar var_8C
  loc_B6ECBA: FLdPr var_88
  loc_B6ECBD:  = Me.Key
  loc_B6ECC2: FLdZeroAd var_8C
  loc_B6ECC5: FStStr var_90
  loc_B6ECC8: ILdRf var_90
  loc_B6ECCB: LitStr "btnCrear"
  loc_B6ECCE: EqStr
  loc_B6ECD0: BranchF loc_B6EDC0
  loc_B6ECD3: LitI2_Byte 1
  loc_B6ECD5: FLdPr Me
  loc_B6ECD8: MemStI2 global_56
  loc_B6ECDB: ILdRf Me
  loc_B6ECDE: CastAd
  loc_B6ECE1: FStAdFunc var_94
  loc_B6ECE4: FLdRfVar var_94
  loc_B6ECE7: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B6ECEC: FFree1Ad var_94
  loc_B6ECEF: LitI4 0
  loc_B6ECF4: LitI4 0
  loc_B6ECF9: FLdRfVar var_98
  loc_B6ECFC: Redim
  loc_B6ED06: FLdPr Me
  loc_B6ED09: VCallAd Control_ID_dgdABMS
  loc_B6ED0C: CVarAd
  loc_B6ED10: ParmAry1St
  loc_B6ED16: FLdRfVar var_98
  loc_B6ED19: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B6ED1E: FLdRfVar var_98
  loc_B6ED21: Erase
  loc_B6ED22: ILdRf Me
  loc_B6ED25: CastAd
  loc_B6ED28: FStAdFunc var_94
  loc_B6ED2B: FLdRfVar var_94
  loc_B6ED2E: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B6ED33: FFree1Ad var_94
  loc_B6ED36: ILdRf Me
  loc_B6ED39: CastAd
  loc_B6ED3C: FStAdFunc var_94
  loc_B6ED3F: FLdRfVar var_94
  loc_B6ED42: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B6ED47: FFree1Ad var_94
  loc_B6ED4A: FLdRfVar var_AC
  loc_B6ED4D: FLdPr Me
  loc_B6ED50: MemLdRfVar from_stack_1.global_52
  loc_B6ED53: NewIfNullPr clsestainmu
  loc_B6ED56: from_stack_1v = clsestainmu.NuevoRegistro()
  loc_B6ED5B: ILdRf var_AC
  loc_B6ED5E: CStrI4
  loc_B6ED60: FStStrNoPop var_8C
  loc_B6ED63: FLdPr Me
  loc_B6ED66: VCallAd Control_ID_CodiEsinTxt
  loc_B6ED69: FStAdFunc var_94
  loc_B6ED6C: FLdPr var_94
  loc_B6ED6F: Me.Text = from_stack_1
  loc_B6ED74: FFree1Str var_8C
  loc_B6ED77: FFree1Ad var_94
  loc_B6ED7A: LitI4 0
  loc_B6ED7F: LitI4 1
  loc_B6ED84: FLdRfVar var_98
  loc_B6ED87: Redim
  loc_B6ED91: FLdPr Me
  loc_B6ED94: VCallAd Control_ID_CodiEsinTxt
  loc_B6ED97: CVarAd
  loc_B6ED9B: ParmAry1St
  loc_B6EDA1: FLdPr Me
  loc_B6EDA4: VCallAd Control_ID_DetaEsinTxt
  loc_B6EDA7: CVarAd
  loc_B6EDAB: ParmAry1St
  loc_B6EDB1: FLdRfVar var_98
  loc_B6EDB4: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B6EDB9: FLdRfVar var_98
  loc_B6EDBC: Erase
  loc_B6EDBD: Branch loc_B6F137
  loc_B6EDC0: ILdRf var_90
  loc_B6EDC3: LitStr "btnModificar"
  loc_B6EDC6: EqStr
  loc_B6EDC8: BranchF loc_B6EE81
  loc_B6EDCB: FLdRfVar var_AC
  loc_B6EDCE: FLdPr Me
  loc_B6EDD1: MemLdRfVar from_stack_1.global_52
  loc_B6EDD4: NewIfNullPr clsestainmu
  loc_B6EDD7: from_stack_1 = clsestainmu.RecordCount
  loc_B6EDDC: ILdRf var_AC
  loc_B6EDDF: LitI4 0
  loc_B6EDE4: GtI4
  loc_B6EDE5: BranchF loc_B6EE7E
  loc_B6EDE8: LitI2_Byte 2
  loc_B6EDEA: FLdPr Me
  loc_B6EDED: MemStI2 global_56
  loc_B6EDF0: ILdRf Me
  loc_B6EDF3: CastAd
  loc_B6EDF6: FStAdFunc var_94
  loc_B6EDF9: FLdRfVar var_94
  loc_B6EDFC: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B6EE01: FFree1Ad var_94
  loc_B6EE04: LitI4 0
  loc_B6EE09: LitI4 0
  loc_B6EE0E: FLdRfVar var_98
  loc_B6EE11: Redim
  loc_B6EE1B: FLdPr Me
  loc_B6EE1E: VCallAd Control_ID_dgdABMS
  loc_B6EE21: CVarAd
  loc_B6EE25: ParmAry1St
  loc_B6EE2B: FLdRfVar var_98
  loc_B6EE2E: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B6EE33: FLdRfVar var_98
  loc_B6EE36: Erase
  loc_B6EE37: ILdRf Me
  loc_B6EE3A: CastAd
  loc_B6EE3D: FStAdFunc var_94
  loc_B6EE40: FLdRfVar var_94
  loc_B6EE43: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B6EE48: FFree1Ad var_94
  loc_B6EE4B: LitI4 0
  loc_B6EE50: LitI4 0
  loc_B6EE55: FLdRfVar var_98
  loc_B6EE58: Redim
  loc_B6EE62: FLdPr Me
  loc_B6EE65: VCallAd Control_ID_DetaEsinTxt
  loc_B6EE68: CVarAd
  loc_B6EE6C: ParmAry1St
  loc_B6EE72: FLdRfVar var_98
  loc_B6EE75: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B6EE7A: FLdRfVar var_98
  loc_B6EE7D: Erase
  loc_B6EE7E: Branch loc_B6F137
  loc_B6EE81: ILdRf var_90
  loc_B6EE84: LitStr "btnEliminar"
  loc_B6EE87: EqStr
  loc_B6EE89: BranchF loc_B6EF38
  loc_B6EE8C: FLdRfVar var_AC
  loc_B6EE8F: FLdPr Me
  loc_B6EE92: MemLdRfVar from_stack_1.global_52
  loc_B6EE95: NewIfNullPr clsestainmu
  loc_B6EE98: from_stack_1 = clsestainmu.RecordCount
  loc_B6EE9D: ILdRf var_AC
  loc_B6EEA0: LitI4 0
  loc_B6EEA5: GtI4
  loc_B6EEA6: BranchF loc_B6EF35
  loc_B6EEA9: FLdRfVar var_8C
  loc_B6EEAC: FLdRfVar var_BE
  loc_B6EEAF: FLdPr Me
  loc_B6EEB2: MemLdRfVar from_stack_1.global_52
  loc_B6EEB5: NewIfNullPr clsestainmu
  loc_B6EEB8: from_stack_1 = clsestainmu.CodiEsin
  loc_B6EEBD: FLdI2 var_BE
  loc_B6EEC0: FLdPr Me
  loc_B6EEC3: MemLdRfVar from_stack_1.global_52
  loc_B6EEC6: NewIfNullPr clsestainmu
  loc_B6EEC9: from_stack_2v = clsestainmu.ValidaEliminarInmueble(from_stack_1v)
  loc_B6EECE: ILdRf var_8C
  loc_B6EED1: FLdPr Me
  loc_B6EED4: MemStStrCopy
  loc_B6EED8: FFree1Str var_8C
  loc_B6EEDB: FLdPr Me
  loc_B6EEDE: MemLdStr global_60
  loc_B6EEE1: LitStr vbNullString
  loc_B6EEE4: NeStr
  loc_B6EEE6: BranchF loc_B6EEF5
  loc_B6EEE9: FLdPr Me
  loc_B6EEEC: MemLdStr global_60
  loc_B6EEEF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B6EEF4: ExitProcHresult
  loc_B6EEF5: LitVar_Missing var_120
  loc_B6EEF8: LitVar_Missing var_100
  loc_B6EEFB: LitVar_Missing var_BC
  loc_B6EEFE: LitI4 4
  loc_B6EF03: LitVarStr var_D0, "¿Desea eliminar el registro?"
  loc_B6EF08: FStVarCopyObj var_A8
  loc_B6EF0B: FLdRfVar var_A8
  loc_B6EF0E: ImpAdCallI2 MsgBox(, , , , )
  loc_B6EF13: LitI4 6
  loc_B6EF18: EqI4
  loc_B6EF19: FFreeVar var_A8 = "": var_BC = "": var_100 = ""
  loc_B6EF24: BranchF loc_B6EF35
  loc_B6EF27: FLdPr Me
  loc_B6EF2A: MemLdRfVar from_stack_1.global_52
  loc_B6EF2D: NewIfNullPr clsestainmu
  loc_B6EF30: Call clsestainmu.Delete()
  loc_B6EF35: Branch loc_B6F137
  loc_B6EF38: ILdRf var_90
  loc_B6EF3B: LitStr "btnGuardar"
  loc_B6EF3E: EqStr
  loc_B6EF40: BranchF loc_B6F033
  loc_B6EF43: LitI2_Byte 0
  loc_B6EF45: PopTmpLdAd2 var_BE
  loc_B6EF48: Call CodiEsinTxt_Validate(from_stack_1v)
  loc_B6EF4D: FLdPr Me
  loc_B6EF50: MemLdStr global_60
  loc_B6EF53: LitStr vbNullString
  loc_B6EF56: NeStr
  loc_B6EF58: BranchF loc_B6EF5C
  loc_B6EF5B: ExitProcHresult
  loc_B6EF5C: LitI2_Byte 0
  loc_B6EF5E: PopTmpLdAd2 var_BE
  loc_B6EF61: Call DetaEsinTxt_Validate(from_stack_1v)
  loc_B6EF66: FLdPr Me
  loc_B6EF69: MemLdStr global_60
  loc_B6EF6C: LitStr vbNullString
  loc_B6EF6F: NeStr
  loc_B6EF71: BranchF loc_B6EF75
  loc_B6EF74: ExitProcHresult
  loc_B6EF75: FLdPr Me
  loc_B6EF78: MemLdI2 global_56
  loc_B6EF7B: FStI2 var_122
  loc_B6EF7E: FLdI2 var_122
  loc_B6EF81: LitI2_Byte 1
  loc_B6EF83: EqI2
  loc_B6EF84: BranchF loc_B6EFD6
  loc_B6EF87: FLdRfVar var_8C
  loc_B6EF8A: FLdPr Me
  loc_B6EF8D: VCallAd Control_ID_CodiEsinTxt
  loc_B6EF90: FStAdFunc var_94
  loc_B6EF93: FLdPr var_94
  loc_B6EF96:  = Me.Text
  loc_B6EF9B: FLdRfVar var_12C
  loc_B6EF9E: FLdPr Me
  loc_B6EFA1: VCallAd Control_ID_DetaEsinTxt
  loc_B6EFA4: FStAdFunc var_128
  loc_B6EFA7: FLdPr var_128
  loc_B6EFAA:  = Me.Text
  loc_B6EFAF: ILdRf var_12C
  loc_B6EFB2: ILdRf var_8C
  loc_B6EFB5: CI2Str
  loc_B6EFB7: FLdPr Me
  loc_B6EFBA: MemLdRfVar from_stack_1.global_52
  loc_B6EFBD: NewIfNullPr clsestainmu
  loc_B6EFC0: Call clsestainmu.AddNew(from_stack_1v, from_stack_2v)
  loc_B6EFC5: FFreeStr var_8C = ""
  loc_B6EFCC: FFreeAd var_94 = ""
  loc_B6EFD3: Branch loc_B6F02B
  loc_B6EFD6: FLdI2 var_122
  loc_B6EFD9: LitI2_Byte 2
  loc_B6EFDB: EqI2
  loc_B6EFDC: BranchF loc_B6F02B
  loc_B6EFDF: FLdRfVar var_8C
  loc_B6EFE2: FLdPr Me
  loc_B6EFE5: VCallAd Control_ID_CodiEsinTxt
  loc_B6EFE8: FStAdFunc var_94
  loc_B6EFEB: FLdPr var_94
  loc_B6EFEE:  = Me.Text
  loc_B6EFF3: FLdRfVar var_12C
  loc_B6EFF6: FLdPr Me
  loc_B6EFF9: VCallAd Control_ID_DetaEsinTxt
  loc_B6EFFC: FStAdFunc var_128
  loc_B6EFFF: FLdPr var_128
  loc_B6F002:  = Me.Text
  loc_B6F007: ILdRf var_12C
  loc_B6F00A: ILdRf var_8C
  loc_B6F00D: CI2Str
  loc_B6F00F: FLdPr Me
  loc_B6F012: MemLdRfVar from_stack_1.global_52
  loc_B6F015: NewIfNullPr clsestainmu
  loc_B6F018: Call clsestainmu.Modificar(from_stack_1v, from_stack_2v)
  loc_B6F01D: FFreeStr var_8C = ""
  loc_B6F024: FFreeAd var_94 = ""
  loc_B6F02B: Call cmdCancelar_Click()
  loc_B6F030: Branch loc_B6F137
  loc_B6F033: ILdRf var_90
  loc_B6F036: LitStr "btnCancelar"
  loc_B6F039: EqStr
  loc_B6F03B: BranchF loc_B6F046
  loc_B6F03E: Call cmdCancelar_Click()
  loc_B6F043: Branch loc_B6F137
  loc_B6F046: ILdRf var_90
  loc_B6F049: LitStr "btnPrimero"
  loc_B6F04C: EqStr
  loc_B6F04E: BranchF loc_B6F062
  loc_B6F051: FLdPr Me
  loc_B6F054: MemLdRfVar from_stack_1.global_52
  loc_B6F057: NewIfNullPr clsestainmu
  loc_B6F05A: Call clsestainmu.MoveFirst()
  loc_B6F05F: Branch loc_B6F137
  loc_B6F062: ILdRf var_90
  loc_B6F065: LitStr "btnAnterior"
  loc_B6F068: EqStr
  loc_B6F06A: BranchF loc_B6F07E
  loc_B6F06D: FLdPr Me
  loc_B6F070: MemLdRfVar from_stack_1.global_52
  loc_B6F073: NewIfNullPr clsestainmu
  loc_B6F076: Call clsestainmu.MovePrevious()
  loc_B6F07B: Branch loc_B6F137
  loc_B6F07E: ILdRf var_90
  loc_B6F081: LitStr "btnSiguiente"
  loc_B6F084: EqStr
  loc_B6F086: BranchF loc_B6F09A
  loc_B6F089: FLdPr Me
  loc_B6F08C: MemLdRfVar from_stack_1.global_52
  loc_B6F08F: NewIfNullPr clsestainmu
  loc_B6F092: Call clsestainmu.MoveNext()
  loc_B6F097: Branch loc_B6F137
  loc_B6F09A: ILdRf var_90
  loc_B6F09D: LitStr "btnUltimo"
  loc_B6F0A0: EqStr
  loc_B6F0A2: BranchF loc_B6F0B6
  loc_B6F0A5: FLdPr Me
  loc_B6F0A8: MemLdRfVar from_stack_1.global_52
  loc_B6F0AB: NewIfNullPr clsestainmu
  loc_B6F0AE: Call clsestainmu.MoveLast()
  loc_B6F0B3: Branch loc_B6F137
  loc_B6F0B6: ILdRf var_90
  loc_B6F0B9: LitStr "btnFiltrar"
  loc_B6F0BC: EqStr
  loc_B6F0BE: BranchF loc_B6F0C4
  loc_B6F0C1: Branch loc_B6F137
  loc_B6F0C4: ILdRf var_90
  loc_B6F0C7: LitStr "btnBuscar"
  loc_B6F0CA: EqStr
  loc_B6F0CC: BranchF loc_B6F0D2
  loc_B6F0CF: Branch loc_B6F137
  loc_B6F0D2: ILdRf var_90
  loc_B6F0D5: LitStr "btnImprimir"
  loc_B6F0D8: EqStr
  loc_B6F0DA: BranchF loc_B6F0E0
  loc_B6F0DD: Branch loc_B6F137
  loc_B6F0E0: ILdRf var_90
  loc_B6F0E3: LitStr "btnAyuda"
  loc_B6F0E6: EqStr
  loc_B6F0E8: BranchF loc_B6F117
  loc_B6F0EB: LitVar_Missing var_120
  loc_B6F0EE: LitVar_Missing var_100
  loc_B6F0F1: LitVar_Missing var_BC
  loc_B6F0F4: LitI4 0
  loc_B6F0F9: LitVarStr var_D0, "Opcion no disponible en esta version."
  loc_B6F0FE: FStVarCopyObj var_A8
  loc_B6F101: FLdRfVar var_A8
  loc_B6F104: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B6F109: FFreeVar var_A8 = "": var_BC = "": var_100 = ""
  loc_B6F114: Branch loc_B6F137
  loc_B6F117: ILdRf var_90
  loc_B6F11A: LitStr "btnSalir"
  loc_B6F11D: EqStr
  loc_B6F11F: BranchF loc_B6F137
  loc_B6F122: ILdRf Me
  loc_B6F125: FStAdNoPop
  loc_B6F129: ImpAdLdRf MemVar_D9C5D8
  loc_B6F12C: NewIfNullPr Global
  loc_B6F12F: Global.Unload from_stack_1
  loc_B6F134: FFree1Ad var_94
  loc_B6F137: ExitProcHresult
End Sub

Private Sub DetaEsinTxt_GotFocus() '9C5C48
  'Data Table: 42C040
  loc_9C5C34: FLdPr Me
  loc_9C5C37: VCallAd Control_ID_DetaEsinTxt
  loc_9C5C3A: CVarAd
  loc_9C5C3E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5C43: FFree1Var var_94 = ""
  loc_9C5C46: ExitProcHresult
End Sub

Private Sub DetaEsinTxt_Validate(Cancel As Boolean) 'A90F00
  'Data Table: 42C040
  loc_A90E60: FLdRfVar var_8A
  loc_A90E63: FLdPr Me
  loc_A90E66: VCallAd Control_ID_cmdCancelar
  loc_A90E69: FStAdFunc var_88
  loc_A90E6C: FLdPr var_88
  loc_A90E6F:  = Me.Value
  loc_A90E74: FLdI2 var_8A
  loc_A90E77: NotI4
  loc_A90E78: FLdRfVar var_92
  loc_A90E7B: FLdPr Me
  loc_A90E7E: VCallAd Control_ID_DetaEsinTxt
  loc_A90E81: FStAdFunc var_90
  loc_A90E84: FLdPr var_90
  loc_A90E87:  = Me.Enabled
  loc_A90E8C: FLdI2 var_92
  loc_A90E8F: AndI4
  loc_A90E90: FFreeAd var_88 = ""
  loc_A90E97: BranchF loc_A90EFD
  loc_A90E9A: FLdRfVar var_98
  loc_A90E9D: FLdPr Me
  loc_A90EA0: VCallAd Control_ID_DetaEsinTxt
  loc_A90EA3: FStAdFunc var_88
  loc_A90EA6: FLdPr var_88
  loc_A90EA9:  = Me.Text
  loc_A90EAE: ILdRf var_98
  loc_A90EB1: LitStr "la zona"
  loc_A90EB4: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A90EB9: FStStrNoPop var_9C
  loc_A90EBC: FLdPr Me
  loc_A90EBF: MemStStrCopy
  loc_A90EC3: FFreeStr var_98 = ""
  loc_A90ECA: FFree1Ad var_88
  loc_A90ECD: FLdPr Me
  loc_A90ED0: MemLdStr global_60
  loc_A90ED3: LitStr vbNullString
  loc_A90ED6: NeStr
  loc_A90ED8: BranchF loc_A90EFD
  loc_A90EDB: FLdPr Me
  loc_A90EDE: MemLdStr global_60
  loc_A90EE1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A90EE6: FLdPr Me
  loc_A90EE9: VCallAd Control_ID_DetaEsinTxt
  loc_A90EEC: CVarAd
  loc_A90EF0: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A90EF5: FFree1Var var_AC = ""
  loc_A90EF8: LitI2_Byte &HFF
  loc_A90EFA: IStI2 Cancel
  loc_A90EFD: ExitProcHresult
  loc_A90EFE: Ary1LdCy
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A67380
  'Data Table: 42C040
  loc_A67324: FLdRfVar var_B4
  loc_A67327: FLdRfVar var_B0
  loc_A6732A: FLdI2 ColIndex
  loc_A6732D: CVarI2 var_A8
  loc_A67330: PopAdLdVar
  loc_A67331: FLdPr Me
  loc_A67334: VCallAd Control_ID_dgdABMS
  loc_A67337: FStAdFunc var_88
  loc_A6733A: FLdPr var_88
  loc_A6733D: LateIdLdVar var_98 DispID_105 0
  loc_A67344: CastAdVar Me
  loc_A67348: FStAdFunc var_AC
  loc_A6734B: FLdPr var_AC
  loc_A6734E: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A67353: FLdPr var_B0
  loc_A67356:  = Me.DataField
  loc_A6735B: FLdZeroAd var_B4
  loc_A6735E: PopTmpLdAdStr
  loc_A67362: FLdPr Me
  loc_A67365: MemLdRfVar from_stack_1.global_52
  loc_A67368: NewIfNullPr clsestainmu
  loc_A6736B: Call clsestainmu.Sort(from_stack_1v)
  loc_A67370: FFree1Str var_B8
  loc_A67373: FFreeAd var_88 = "": var_AC = ""
  loc_A6737C: FFree1Var var_98 = ""
  loc_A6737F: ExitProcHresult
End Sub

Public Sub EnlazaTodo() 'A79BF8
  'Data Table: 42C040
  loc_A79B88: LitI4 0
  loc_A79B8D: LitI4 2
  loc_A79B92: FLdRfVar var_88
  loc_A79B95: Redim
  loc_A79B9F: FLdPr Me
  loc_A79BA2: MemLdRfVar from_stack_1.global_52
  loc_A79BA5: NewIfNullAd
  loc_A79BA8: FStAd var_8C 
  loc_A79BAC: FLdRfVar var_8C
  loc_A79BAF: CVarRef
  loc_A79BB4: ParmAry1St
  loc_A79BBA: FLdPr Me
  loc_A79BBD: VCallAd Control_ID_CodiEsinTxt
  loc_A79BC0: CVarAd
  loc_A79BC4: ParmAry1St
  loc_A79BCA: FLdPr Me
  loc_A79BCD: VCallAd Control_ID_DetaEsinTxt
  loc_A79BD0: CVarAd
  loc_A79BD4: ParmAry1St
  loc_A79BDA: FLdRfVar var_88
  loc_A79BDD: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A79BE2: ILdRf var_8C
  loc_A79BE5: CastAd
  loc_A79BE8: FLdPr Me
  loc_A79BEB: MemStAdFunc
  loc_A79BEF: FLdRfVar var_88
  loc_A79BF2: Erase
  loc_A79BF3: FFree1Ad var_8C
  loc_A79BF6: ExitProcHresult
End Sub
