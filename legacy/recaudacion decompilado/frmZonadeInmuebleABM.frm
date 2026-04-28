VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmZonadeInmuebleABM
  Caption = "Zona inmueble"
  WindowState = 2
  ScaleMode = 3
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmZonadeInmuebleABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 12648
  ClientHeight = 6528
  Begin VB.Frame Frame1
    Left = 120
    Top = 3960
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
    Begin VB.TextBox DetaZoinTxt
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
    Begin VB.TextBox CodiZoinTxt
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
    Height = 3075
    TabIndex = 0
    OleObjectBlob = "frmZonadeInmuebleABM.frx":324A
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmZonadeInmuebleABM.frx":3430
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 12648
    Height = 528
    TabIndex = 6
    OleObjectBlob = "frmZonadeInmuebleABM.frx":AFAE
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 7
      TabStop = 0   'False
      Picture = "frmZonadeInmuebleABM.frx":B50A
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmZonadeInmuebleABM"


Private Sub CodiZoinTxt_GotFocus() '9BF678
  'Data Table: 42C864
  loc_9BF664: FLdPr Me
  loc_9BF667: VCallAd Control_ID_CodiZoinTxt
  loc_9BF66A: CVarAd
  loc_9BF66E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF673: FFree1Var var_94 = ""
  loc_9BF676: ExitProcHresult
End Sub

Private Sub CodiZoinTxt_KeyPress(KeyAscii As Integer) '9D3474
  'Data Table: 42C864
  loc_9D345C: LitStr "0123456789"
  loc_9D345F: FStStrCopy var_88
  loc_9D3462: FLdRfVar var_88
  loc_9D3465: ILdRf KeyAscii
  loc_9D3468: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D346D: IStI2 KeyAscii
  loc_9D3470: FFree1Str var_88
  loc_9D3473: ExitProcHresult
End Sub

Private Sub CodiZoinTxt_Validate(Cancel As Boolean) 'ABE874
  'Data Table: 42C864
  loc_ABE77C: FLdRfVar var_8A
  loc_ABE77F: FLdPr Me
  loc_ABE782: VCallAd Control_ID_CodiZoinTxt
  loc_ABE785: FStAdFunc var_88
  loc_ABE788: FLdPr var_88
  loc_ABE78B:  = Me.Enabled
  loc_ABE790: FLdI2 var_8A
  loc_ABE793: LitI2_Byte &HFF
  loc_ABE795: EqI2
  loc_ABE796: FFree1Ad var_88
  loc_ABE799: BranchF loc_ABE873
  loc_ABE79C: FLdRfVar var_90
  loc_ABE79F: FLdPr Me
  loc_ABE7A2: VCallAd Control_ID_CodiZoinTxt
  loc_ABE7A5: FStAdFunc var_88
  loc_ABE7A8: FLdPr var_88
  loc_ABE7AB:  = Me.Text
  loc_ABE7B0: LitI2_Byte 0
  loc_ABE7B2: LitI2_Byte 0
  loc_ABE7B4: ILdRf var_90
  loc_ABE7B7: LitStr "codigo"
  loc_ABE7BA: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_ABE7BF: FStStrNoPop var_94
  loc_ABE7C2: FLdPr Me
  loc_ABE7C5: MemStStrCopy
  loc_ABE7C9: FFreeStr var_90 = ""
  loc_ABE7D0: FFree1Ad var_88
  loc_ABE7D3: FLdPr Me
  loc_ABE7D6: MemLdStr global_60
  loc_ABE7D9: LitStr vbNullString
  loc_ABE7DC: NeStr
  loc_ABE7DE: BranchF loc_ABE804
  loc_ABE7E1: FLdPr Me
  loc_ABE7E4: MemLdStr global_60
  loc_ABE7E7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABE7EC: FLdPr Me
  loc_ABE7EF: VCallAd Control_ID_CodiZoinTxt
  loc_ABE7F2: CVarAd
  loc_ABE7F6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABE7FB: FFree1Var var_A4 = ""
  loc_ABE7FE: LitI2_Byte &HFF
  loc_ABE800: IStI2 Cancel
  loc_ABE803: ExitProcHresult
  loc_ABE804: FLdRfVar var_94
  loc_ABE807: FLdRfVar var_90
  loc_ABE80A: FLdPr Me
  loc_ABE80D: VCallAd Control_ID_CodiZoinTxt
  loc_ABE810: FStAdFunc var_88
  loc_ABE813: FLdPr var_88
  loc_ABE816:  = Me.Text
  loc_ABE81B: ILdRf var_90
  loc_ABE81E: CI2Str
  loc_ABE820: FLdPr Me
  loc_ABE823: MemLdRfVar from_stack_1.global_52
  loc_ABE826: NewIfNullPr clszonainmu
  loc_ABE829: from_stack_2v = clszonainmu.ValidaClave(from_stack_1v)
  loc_ABE82E: ILdRf var_94
  loc_ABE831: FLdPr Me
  loc_ABE834: MemStStrCopy
  loc_ABE838: FFreeStr var_90 = ""
  loc_ABE83F: FFree1Ad var_88
  loc_ABE842: FLdPr Me
  loc_ABE845: MemLdStr global_60
  loc_ABE848: LitStr vbNullString
  loc_ABE84B: NeStr
  loc_ABE84D: BranchF loc_ABE873
  loc_ABE850: FLdPr Me
  loc_ABE853: MemLdStr global_60
  loc_ABE856: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABE85B: FLdPr Me
  loc_ABE85E: VCallAd Control_ID_CodiZoinTxt
  loc_ABE861: CVarAd
  loc_ABE865: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABE86A: FFree1Var var_A4 = ""
  loc_ABE86D: LitI2_Byte &HFF
  loc_ABE86F: IStI2 Cancel
  loc_ABE872: ExitProcHresult
  loc_ABE873: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'A76890
  'Data Table: 42C864
  loc_A76824: LitI2_Byte 0
  loc_A76826: FLdPr Me
  loc_A76829: MemStI2 global_56
  loc_A7682C: LitI2_Byte 0
  loc_A7682E: ILdRf Me
  loc_A76831: CastAd
  loc_A76834: FStAdFunc var_88
  loc_A76837: FLdRfVar var_88
  loc_A7683A: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_A7683F: FFree1Ad var_88
  loc_A76842: LitI4 0
  loc_A76847: LitI4 0
  loc_A7684C: FLdRfVar var_8C
  loc_A7684F: Redim
  loc_A76859: FLdPr Me
  loc_A7685C: VCallAd Control_ID_dgdABMS
  loc_A7685F: CVarAd
  loc_A76863: ParmAry1St
  loc_A76869: FLdRfVar var_8C
  loc_A7686C: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A76871: FLdRfVar var_8C
  loc_A76874: Erase
  loc_A76875: Call EnlazaTodo()
  loc_A7687A: ILdRf Me
  loc_A7687D: CastAd
  loc_A76880: FStAdFunc var_88
  loc_A76883: FLdRfVar var_88
  loc_A76886: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_A7688B: FFree1Ad var_88
  loc_A7688E: ExitProcHresult
End Sub

Private Sub Form_Load() 'AB7A48
  'Data Table: 42C864
  loc_AB7960: LitI2_Byte 0
  loc_AB7962: CR8I2
  loc_AB7963: PopFPR4
  loc_AB7964: FLdPr Me
  loc_AB7967: Me.Left = from_stack_1s
  loc_AB796C: LitI2_Byte 0
  loc_AB796E: CR8I2
  loc_AB796F: PopFPR4
  loc_AB7970: FLdPr Me
  loc_AB7973: Me.Top = from_stack_1s
  loc_AB7978: LitStr "SELECT CodiZoin, DetaZoin FROM zonainmu ORDER BY CodiZoin"
  loc_AB797B: FLdPr Me
  loc_AB797E: MemLdRfVar from_stack_1.global_52
  loc_AB7981: NewIfNullPr clszonainmu
  loc_AB7984: Call clszonainmu.RedefineRS(from_stack_1v)
  loc_AB7989: LitStr "CodiZoin"
  loc_AB798C: FLdPr Me
  loc_AB798F: VCallAd Control_ID_CodiZoinTxt
  loc_AB7992: FStAdFunc var_88
  loc_AB7995: FLdPr var_88
  loc_AB7998: Me.DataField = from_stack_1
  loc_AB799D: FFree1Ad var_88
  loc_AB79A0: LitStr "DetaZoin"
  loc_AB79A3: FLdPr Me
  loc_AB79A6: VCallAd Control_ID_DetaZoinTxt
  loc_AB79A9: FStAdFunc var_88
  loc_AB79AC: FLdPr var_88
  loc_AB79AF: Me.DataField = from_stack_1
  loc_AB79B4: FFree1Ad var_88
  loc_AB79B7: LitI4 0
  loc_AB79BC: LitI4 1
  loc_AB79C1: FLdRfVar var_8C
  loc_AB79C4: Redim
  loc_AB79CE: FLdPr Me
  loc_AB79D1: MemLdRfVar from_stack_1.global_52
  loc_AB79D4: NewIfNullAd
  loc_AB79D7: FStAd var_88 
  loc_AB79DB: FLdRfVar var_88
  loc_AB79DE: CVarRef
  loc_AB79E3: ParmAry1St
  loc_AB79E9: FLdPr Me
  loc_AB79EC: VCallAd Control_ID_dgdABMS
  loc_AB79EF: CVarAd
  loc_AB79F3: ParmAry1St
  loc_AB79F9: FLdRfVar var_8C
  loc_AB79FC: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AB7A01: ILdRf var_88
  loc_AB7A04: CastAd
  loc_AB7A07: FLdPr Me
  loc_AB7A0A: MemStAdFunc
  loc_AB7A0E: FLdRfVar var_8C
  loc_AB7A11: Erase
  loc_AB7A12: FFree1Ad var_88
  loc_AB7A15: Call EnlazaTodo()
  loc_AB7A1A: ILdRf Me
  loc_AB7A1D: CastAd
  loc_AB7A20: FStAdFunc var_88
  loc_AB7A23: FLdRfVar var_88
  loc_AB7A26: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AB7A2B: FFree1Ad var_88
  loc_AB7A2E: LitI2_Byte 0
  loc_AB7A30: ILdRf Me
  loc_AB7A33: CastAd
  loc_AB7A36: FStAdFunc var_88
  loc_AB7A39: FLdRfVar var_88
  loc_AB7A3C: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AB7A41: FFree1Ad var_88
  loc_AB7A44: ExitProcHresult
  loc_AB7A45: ConcatStr
  loc_AB7A46: FStStrNoPop var_13F0
End Sub

Private Sub Form_Activate() 'A62440
  'Data Table: 42C864
  loc_A623E4: FLdRfVar var_C2
  loc_A623E7: FLdRfVar var_C0
  loc_A623EA: LitVarI2 var_B8, 1
  loc_A623EF: FLdPr Me
  loc_A623F2: VCallAd Control_ID_tlbABMS
  loc_A623F5: FStAdFunc var_88
  loc_A623F8: FLdPr var_88
  loc_A623FB: LateIdLdVar var_98 DispID_3 0
  loc_A62402: CastAdVar Me
  loc_A62406: FStAdFunc var_BC
  loc_A62409: FLdPr var_BC
  loc_A6240C:  = Me.Buttons.ControlDefault
  loc_A62411: FLdPr var_C0
  loc_A62414:  = Me.Enabled
  loc_A62419: FLdI2 var_C2
  loc_A6241C: FFreeAd var_88 = "": var_BC = ""
  loc_A62425: FFreeVar var_98 = ""
  loc_A6242C: BranchF loc_A6243D
  loc_A6242F: FLdPr Me
  loc_A62432: MemLdRfVar from_stack_1.global_52
  loc_A62435: NewIfNullPr clszonainmu
  loc_A62438: Call clszonainmu.Requery()
  loc_A6243D: ExitProcHresult
  loc_A6243E: FStStrNoPop var_1340
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9D3A64
  'Data Table: 42C864
  loc_9D3A4C: ILdI2 KeyCode
  loc_9D3A4F: ILdRf Me
  loc_9D3A52: CastAd
  loc_9D3A55: FStAdFunc var_88
  loc_9D3A58: FLdRfVar var_88
  loc_9D3A5B: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9D3A60: FFree1Ad var_88
  loc_9D3A63: ExitProcHresult
End Sub

Private Sub DetaZoinTxt_GotFocus() '9BF870
  'Data Table: 42C864
  loc_9BF85C: FLdPr Me
  loc_9BF85F: VCallAd Control_ID_DetaZoinTxt
  loc_9BF862: CVarAd
  loc_9BF866: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF86B: FFree1Var var_94 = ""
  loc_9BF86E: ExitProcHresult
End Sub

Private Sub DetaZoinTxt_Validate(Cancel As Boolean) 'A920D0
  'Data Table: 42C864
  loc_A92030: FLdRfVar var_8A
  loc_A92033: FLdPr Me
  loc_A92036: VCallAd Control_ID_cmdCancelar
  loc_A92039: FStAdFunc var_88
  loc_A9203C: FLdPr var_88
  loc_A9203F:  = Me.Value
  loc_A92044: FLdI2 var_8A
  loc_A92047: NotI4
  loc_A92048: FLdRfVar var_92
  loc_A9204B: FLdPr Me
  loc_A9204E: VCallAd Control_ID_DetaZoinTxt
  loc_A92051: FStAdFunc var_90
  loc_A92054: FLdPr var_90
  loc_A92057:  = Me.Enabled
  loc_A9205C: FLdI2 var_92
  loc_A9205F: AndI4
  loc_A92060: FFreeAd var_88 = ""
  loc_A92067: BranchF loc_A920CD
  loc_A9206A: FLdRfVar var_98
  loc_A9206D: FLdPr Me
  loc_A92070: VCallAd Control_ID_DetaZoinTxt
  loc_A92073: FStAdFunc var_88
  loc_A92076: FLdPr var_88
  loc_A92079:  = Me.Text
  loc_A9207E: ILdRf var_98
  loc_A92081: LitStr "la zona"
  loc_A92084: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A92089: FStStrNoPop var_9C
  loc_A9208C: FLdPr Me
  loc_A9208F: MemStStrCopy
  loc_A92093: FFreeStr var_98 = ""
  loc_A9209A: FFree1Ad var_88
  loc_A9209D: FLdPr Me
  loc_A920A0: MemLdStr global_60
  loc_A920A3: LitStr vbNullString
  loc_A920A6: NeStr
  loc_A920A8: BranchF loc_A920CD
  loc_A920AB: FLdPr Me
  loc_A920AE: MemLdStr global_60
  loc_A920B1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A920B6: FLdPr Me
  loc_A920B9: VCallAd Control_ID_DetaZoinTxt
  loc_A920BC: CVarAd
  loc_A920C0: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A920C5: FFree1Var var_AC = ""
  loc_A920C8: LitI2_Byte &HFF
  loc_A920CA: IStI2 Cancel
  loc_A920CD: ExitProcHresult
  loc_A920CE: ConcatStr
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B6E274
  'Data Table: 42C864
  loc_B6DDEC: ILdRf Button
  loc_B6DDEF: FStAd var_88 
  loc_B6DDF3: FLdRfVar var_8C
  loc_B6DDF6: FLdPr var_88
  loc_B6DDF9:  = Me.Key
  loc_B6DDFE: FLdZeroAd var_8C
  loc_B6DE01: FStStr var_90
  loc_B6DE04: ILdRf var_90
  loc_B6DE07: LitStr "btnCrear"
  loc_B6DE0A: EqStr
  loc_B6DE0C: BranchF loc_B6DEFC
  loc_B6DE0F: LitI2_Byte 1
  loc_B6DE11: FLdPr Me
  loc_B6DE14: MemStI2 global_56
  loc_B6DE17: ILdRf Me
  loc_B6DE1A: CastAd
  loc_B6DE1D: FStAdFunc var_94
  loc_B6DE20: FLdRfVar var_94
  loc_B6DE23: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B6DE28: FFree1Ad var_94
  loc_B6DE2B: LitI4 0
  loc_B6DE30: LitI4 0
  loc_B6DE35: FLdRfVar var_98
  loc_B6DE38: Redim
  loc_B6DE42: FLdPr Me
  loc_B6DE45: VCallAd Control_ID_dgdABMS
  loc_B6DE48: CVarAd
  loc_B6DE4C: ParmAry1St
  loc_B6DE52: FLdRfVar var_98
  loc_B6DE55: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B6DE5A: FLdRfVar var_98
  loc_B6DE5D: Erase
  loc_B6DE5E: ILdRf Me
  loc_B6DE61: CastAd
  loc_B6DE64: FStAdFunc var_94
  loc_B6DE67: FLdRfVar var_94
  loc_B6DE6A: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B6DE6F: FFree1Ad var_94
  loc_B6DE72: ILdRf Me
  loc_B6DE75: CastAd
  loc_B6DE78: FStAdFunc var_94
  loc_B6DE7B: FLdRfVar var_94
  loc_B6DE7E: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B6DE83: FFree1Ad var_94
  loc_B6DE86: FLdRfVar var_AC
  loc_B6DE89: FLdPr Me
  loc_B6DE8C: MemLdRfVar from_stack_1.global_52
  loc_B6DE8F: NewIfNullPr clszonainmu
  loc_B6DE92: from_stack_1v = clszonainmu.NuevoRegistro()
  loc_B6DE97: ILdRf var_AC
  loc_B6DE9A: CStrI4
  loc_B6DE9C: FStStrNoPop var_8C
  loc_B6DE9F: FLdPr Me
  loc_B6DEA2: VCallAd Control_ID_CodiZoinTxt
  loc_B6DEA5: FStAdFunc var_94
  loc_B6DEA8: FLdPr var_94
  loc_B6DEAB: Me.Text = from_stack_1
  loc_B6DEB0: FFree1Str var_8C
  loc_B6DEB3: FFree1Ad var_94
  loc_B6DEB6: LitI4 0
  loc_B6DEBB: LitI4 1
  loc_B6DEC0: FLdRfVar var_98
  loc_B6DEC3: Redim
  loc_B6DECD: FLdPr Me
  loc_B6DED0: VCallAd Control_ID_CodiZoinTxt
  loc_B6DED3: CVarAd
  loc_B6DED7: ParmAry1St
  loc_B6DEDD: FLdPr Me
  loc_B6DEE0: VCallAd Control_ID_DetaZoinTxt
  loc_B6DEE3: CVarAd
  loc_B6DEE7: ParmAry1St
  loc_B6DEED: FLdRfVar var_98
  loc_B6DEF0: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B6DEF5: FLdRfVar var_98
  loc_B6DEF8: Erase
  loc_B6DEF9: Branch loc_B6E273
  loc_B6DEFC: ILdRf var_90
  loc_B6DEFF: LitStr "btnModificar"
  loc_B6DF02: EqStr
  loc_B6DF04: BranchF loc_B6DFBD
  loc_B6DF07: FLdRfVar var_AC
  loc_B6DF0A: FLdPr Me
  loc_B6DF0D: MemLdRfVar from_stack_1.global_52
  loc_B6DF10: NewIfNullPr clszonainmu
  loc_B6DF13: from_stack_1 = clszonainmu.RecordCount
  loc_B6DF18: ILdRf var_AC
  loc_B6DF1B: LitI4 0
  loc_B6DF20: GtI4
  loc_B6DF21: BranchF loc_B6DFBA
  loc_B6DF24: LitI2_Byte 2
  loc_B6DF26: FLdPr Me
  loc_B6DF29: MemStI2 global_56
  loc_B6DF2C: ILdRf Me
  loc_B6DF2F: CastAd
  loc_B6DF32: FStAdFunc var_94
  loc_B6DF35: FLdRfVar var_94
  loc_B6DF38: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B6DF3D: FFree1Ad var_94
  loc_B6DF40: LitI4 0
  loc_B6DF45: LitI4 0
  loc_B6DF4A: FLdRfVar var_98
  loc_B6DF4D: Redim
  loc_B6DF57: FLdPr Me
  loc_B6DF5A: VCallAd Control_ID_dgdABMS
  loc_B6DF5D: CVarAd
  loc_B6DF61: ParmAry1St
  loc_B6DF67: FLdRfVar var_98
  loc_B6DF6A: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B6DF6F: FLdRfVar var_98
  loc_B6DF72: Erase
  loc_B6DF73: ILdRf Me
  loc_B6DF76: CastAd
  loc_B6DF79: FStAdFunc var_94
  loc_B6DF7C: FLdRfVar var_94
  loc_B6DF7F: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B6DF84: FFree1Ad var_94
  loc_B6DF87: LitI4 0
  loc_B6DF8C: LitI4 0
  loc_B6DF91: FLdRfVar var_98
  loc_B6DF94: Redim
  loc_B6DF9E: FLdPr Me
  loc_B6DFA1: VCallAd Control_ID_DetaZoinTxt
  loc_B6DFA4: CVarAd
  loc_B6DFA8: ParmAry1St
  loc_B6DFAE: FLdRfVar var_98
  loc_B6DFB1: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B6DFB6: FLdRfVar var_98
  loc_B6DFB9: Erase
  loc_B6DFBA: Branch loc_B6E273
  loc_B6DFBD: ILdRf var_90
  loc_B6DFC0: LitStr "btnEliminar"
  loc_B6DFC3: EqStr
  loc_B6DFC5: BranchF loc_B6E074
  loc_B6DFC8: FLdRfVar var_AC
  loc_B6DFCB: FLdPr Me
  loc_B6DFCE: MemLdRfVar from_stack_1.global_52
  loc_B6DFD1: NewIfNullPr clszonainmu
  loc_B6DFD4: from_stack_1 = clszonainmu.RecordCount
  loc_B6DFD9: ILdRf var_AC
  loc_B6DFDC: LitI4 0
  loc_B6DFE1: GtI4
  loc_B6DFE2: BranchF loc_B6E071
  loc_B6DFE5: FLdRfVar var_8C
  loc_B6DFE8: FLdRfVar var_BE
  loc_B6DFEB: FLdPr Me
  loc_B6DFEE: MemLdRfVar from_stack_1.global_52
  loc_B6DFF1: NewIfNullPr clszonainmu
  loc_B6DFF4: from_stack_1 = clszonainmu.CodiZoin
  loc_B6DFF9: FLdI2 var_BE
  loc_B6DFFC: FLdPr Me
  loc_B6DFFF: MemLdRfVar from_stack_1.global_52
  loc_B6E002: NewIfNullPr clszonainmu
  loc_B6E005: from_stack_2v = clszonainmu.ValidaEliminarInmueble(from_stack_1v)
  loc_B6E00A: ILdRf var_8C
  loc_B6E00D: FLdPr Me
  loc_B6E010: MemStStrCopy
  loc_B6E014: FFree1Str var_8C
  loc_B6E017: FLdPr Me
  loc_B6E01A: MemLdStr global_60
  loc_B6E01D: LitStr vbNullString
  loc_B6E020: NeStr
  loc_B6E022: BranchF loc_B6E031
  loc_B6E025: FLdPr Me
  loc_B6E028: MemLdStr global_60
  loc_B6E02B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B6E030: ExitProcHresult
  loc_B6E031: LitVar_Missing var_120
  loc_B6E034: LitVar_Missing var_100
  loc_B6E037: LitVar_Missing var_BC
  loc_B6E03A: LitI4 4
  loc_B6E03F: LitVarStr var_D0, "¿Desea eliminar el registro?"
  loc_B6E044: FStVarCopyObj var_A8
  loc_B6E047: FLdRfVar var_A8
  loc_B6E04A: ImpAdCallI2 MsgBox(, , , , )
  loc_B6E04F: LitI4 6
  loc_B6E054: EqI4
  loc_B6E055: FFreeVar var_A8 = "": var_BC = "": var_100 = ""
  loc_B6E060: BranchF loc_B6E071
  loc_B6E063: FLdPr Me
  loc_B6E066: MemLdRfVar from_stack_1.global_52
  loc_B6E069: NewIfNullPr clszonainmu
  loc_B6E06C: Call clszonainmu.Delete()
  loc_B6E071: Branch loc_B6E273
  loc_B6E074: ILdRf var_90
  loc_B6E077: LitStr "btnGuardar"
  loc_B6E07A: EqStr
  loc_B6E07C: BranchF loc_B6E16F
  loc_B6E07F: LitI2_Byte 0
  loc_B6E081: PopTmpLdAd2 var_BE
  loc_B6E084: Call CodiZoinTxt_Validate(from_stack_1v)
  loc_B6E089: FLdPr Me
  loc_B6E08C: MemLdStr global_60
  loc_B6E08F: LitStr vbNullString
  loc_B6E092: NeStr
  loc_B6E094: BranchF loc_B6E098
  loc_B6E097: ExitProcHresult
  loc_B6E098: LitI2_Byte 0
  loc_B6E09A: PopTmpLdAd2 var_BE
  loc_B6E09D: Call DetaZoinTxt_Validate(from_stack_1v)
  loc_B6E0A2: FLdPr Me
  loc_B6E0A5: MemLdStr global_60
  loc_B6E0A8: LitStr vbNullString
  loc_B6E0AB: NeStr
  loc_B6E0AD: BranchF loc_B6E0B1
  loc_B6E0B0: ExitProcHresult
  loc_B6E0B1: FLdPr Me
  loc_B6E0B4: MemLdI2 global_56
  loc_B6E0B7: FStI2 var_122
  loc_B6E0BA: FLdI2 var_122
  loc_B6E0BD: LitI2_Byte 1
  loc_B6E0BF: EqI2
  loc_B6E0C0: BranchF loc_B6E112
  loc_B6E0C3: FLdRfVar var_8C
  loc_B6E0C6: FLdPr Me
  loc_B6E0C9: VCallAd Control_ID_CodiZoinTxt
  loc_B6E0CC: FStAdFunc var_94
  loc_B6E0CF: FLdPr var_94
  loc_B6E0D2:  = Me.Text
  loc_B6E0D7: FLdRfVar var_12C
  loc_B6E0DA: FLdPr Me
  loc_B6E0DD: VCallAd Control_ID_DetaZoinTxt
  loc_B6E0E0: FStAdFunc var_128
  loc_B6E0E3: FLdPr var_128
  loc_B6E0E6:  = Me.Text
  loc_B6E0EB: ILdRf var_12C
  loc_B6E0EE: ILdRf var_8C
  loc_B6E0F1: CI2Str
  loc_B6E0F3: FLdPr Me
  loc_B6E0F6: MemLdRfVar from_stack_1.global_52
  loc_B6E0F9: NewIfNullPr clszonainmu
  loc_B6E0FC: Call clszonainmu.AddNew(from_stack_1v, from_stack_2v)
  loc_B6E101: FFreeStr var_8C = ""
  loc_B6E108: FFreeAd var_94 = ""
  loc_B6E10F: Branch loc_B6E167
  loc_B6E112: FLdI2 var_122
  loc_B6E115: LitI2_Byte 2
  loc_B6E117: EqI2
  loc_B6E118: BranchF loc_B6E167
  loc_B6E11B: FLdRfVar var_8C
  loc_B6E11E: FLdPr Me
  loc_B6E121: VCallAd Control_ID_CodiZoinTxt
  loc_B6E124: FStAdFunc var_94
  loc_B6E127: FLdPr var_94
  loc_B6E12A:  = Me.Text
  loc_B6E12F: FLdRfVar var_12C
  loc_B6E132: FLdPr Me
  loc_B6E135: VCallAd Control_ID_DetaZoinTxt
  loc_B6E138: FStAdFunc var_128
  loc_B6E13B: FLdPr var_128
  loc_B6E13E:  = Me.Text
  loc_B6E143: ILdRf var_12C
  loc_B6E146: ILdRf var_8C
  loc_B6E149: CI2Str
  loc_B6E14B: FLdPr Me
  loc_B6E14E: MemLdRfVar from_stack_1.global_52
  loc_B6E151: NewIfNullPr clszonainmu
  loc_B6E154: Call clszonainmu.Modificar(from_stack_1v, from_stack_2v)
  loc_B6E159: FFreeStr var_8C = ""
  loc_B6E160: FFreeAd var_94 = ""
  loc_B6E167: Call cmdCancelar_Click()
  loc_B6E16C: Branch loc_B6E273
  loc_B6E16F: ILdRf var_90
  loc_B6E172: LitStr "btnCancelar"
  loc_B6E175: EqStr
  loc_B6E177: BranchF loc_B6E182
  loc_B6E17A: Call cmdCancelar_Click()
  loc_B6E17F: Branch loc_B6E273
  loc_B6E182: ILdRf var_90
  loc_B6E185: LitStr "btnPrimero"
  loc_B6E188: EqStr
  loc_B6E18A: BranchF loc_B6E19E
  loc_B6E18D: FLdPr Me
  loc_B6E190: MemLdRfVar from_stack_1.global_52
  loc_B6E193: NewIfNullPr clszonainmu
  loc_B6E196: Call clszonainmu.MoveFirst()
  loc_B6E19B: Branch loc_B6E273
  loc_B6E19E: ILdRf var_90
  loc_B6E1A1: LitStr "btnAnterior"
  loc_B6E1A4: EqStr
  loc_B6E1A6: BranchF loc_B6E1BA
  loc_B6E1A9: FLdPr Me
  loc_B6E1AC: MemLdRfVar from_stack_1.global_52
  loc_B6E1AF: NewIfNullPr clszonainmu
  loc_B6E1B2: Call clszonainmu.MovePrevious()
  loc_B6E1B7: Branch loc_B6E273
  loc_B6E1BA: ILdRf var_90
  loc_B6E1BD: LitStr "btnSiguiente"
  loc_B6E1C0: EqStr
  loc_B6E1C2: BranchF loc_B6E1D6
  loc_B6E1C5: FLdPr Me
  loc_B6E1C8: MemLdRfVar from_stack_1.global_52
  loc_B6E1CB: NewIfNullPr clszonainmu
  loc_B6E1CE: Call clszonainmu.MoveNext()
  loc_B6E1D3: Branch loc_B6E273
  loc_B6E1D6: ILdRf var_90
  loc_B6E1D9: LitStr "btnUltimo"
  loc_B6E1DC: EqStr
  loc_B6E1DE: BranchF loc_B6E1F2
  loc_B6E1E1: FLdPr Me
  loc_B6E1E4: MemLdRfVar from_stack_1.global_52
  loc_B6E1E7: NewIfNullPr clszonainmu
  loc_B6E1EA: Call clszonainmu.MoveLast()
  loc_B6E1EF: Branch loc_B6E273
  loc_B6E1F2: ILdRf var_90
  loc_B6E1F5: LitStr "btnFiltrar"
  loc_B6E1F8: EqStr
  loc_B6E1FA: BranchF loc_B6E200
  loc_B6E1FD: Branch loc_B6E273
  loc_B6E200: ILdRf var_90
  loc_B6E203: LitStr "btnBuscar"
  loc_B6E206: EqStr
  loc_B6E208: BranchF loc_B6E20E
  loc_B6E20B: Branch loc_B6E273
  loc_B6E20E: ILdRf var_90
  loc_B6E211: LitStr "btnImprimir"
  loc_B6E214: EqStr
  loc_B6E216: BranchF loc_B6E21C
  loc_B6E219: Branch loc_B6E273
  loc_B6E21C: ILdRf var_90
  loc_B6E21F: LitStr "btnAyuda"
  loc_B6E222: EqStr
  loc_B6E224: BranchF loc_B6E253
  loc_B6E227: LitVar_Missing var_120
  loc_B6E22A: LitVar_Missing var_100
  loc_B6E22D: LitVar_Missing var_BC
  loc_B6E230: LitI4 0
  loc_B6E235: LitVarStr var_D0, "Opcion no disponible en esta version."
  loc_B6E23A: FStVarCopyObj var_A8
  loc_B6E23D: FLdRfVar var_A8
  loc_B6E240: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B6E245: FFreeVar var_A8 = "": var_BC = "": var_100 = ""
  loc_B6E250: Branch loc_B6E273
  loc_B6E253: ILdRf var_90
  loc_B6E256: LitStr "btnSalir"
  loc_B6E259: EqStr
  loc_B6E25B: BranchF loc_B6E273
  loc_B6E25E: ILdRf Me
  loc_B6E261: FStAdNoPop
  loc_B6E265: ImpAdLdRf MemVar_D9C5D8
  loc_B6E268: NewIfNullPr Global
  loc_B6E26B: Global.Unload from_stack_1
  loc_B6E270: FFree1Ad var_94
  loc_B6E273: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A68384
  'Data Table: 42C864
  loc_A68328: FLdRfVar var_B4
  loc_A6832B: FLdRfVar var_B0
  loc_A6832E: FLdI2 ColIndex
  loc_A68331: CVarI2 var_A8
  loc_A68334: PopAdLdVar
  loc_A68335: FLdPr Me
  loc_A68338: VCallAd Control_ID_dgdABMS
  loc_A6833B: FStAdFunc var_88
  loc_A6833E: FLdPr var_88
  loc_A68341: LateIdLdVar var_98 DispID_105 0
  loc_A68348: CastAdVar Me
  loc_A6834C: FStAdFunc var_AC
  loc_A6834F: FLdPr var_AC
  loc_A68352: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A68357: FLdPr var_B0
  loc_A6835A:  = Me.DataField
  loc_A6835F: FLdZeroAd var_B4
  loc_A68362: PopTmpLdAdStr
  loc_A68366: FLdPr Me
  loc_A68369: MemLdRfVar from_stack_1.global_52
  loc_A6836C: NewIfNullPr clszonainmu
  loc_A6836F: Call clszonainmu.Sort(from_stack_1v)
  loc_A68374: FFree1Str var_B8
  loc_A68377: FFreeAd var_88 = "": var_AC = ""
  loc_A68380: FFree1Var var_98 = ""
  loc_A68383: ExitProcHresult
End Sub

Public Sub EnlazaTodo() 'A7BE78
  'Data Table: 42C864
  loc_A7BE08: LitI4 0
  loc_A7BE0D: LitI4 2
  loc_A7BE12: FLdRfVar var_88
  loc_A7BE15: Redim
  loc_A7BE1F: FLdPr Me
  loc_A7BE22: MemLdRfVar from_stack_1.global_52
  loc_A7BE25: NewIfNullAd
  loc_A7BE28: FStAd var_8C 
  loc_A7BE2C: FLdRfVar var_8C
  loc_A7BE2F: CVarRef
  loc_A7BE34: ParmAry1St
  loc_A7BE3A: FLdPr Me
  loc_A7BE3D: VCallAd Control_ID_CodiZoinTxt
  loc_A7BE40: CVarAd
  loc_A7BE44: ParmAry1St
  loc_A7BE4A: FLdPr Me
  loc_A7BE4D: VCallAd Control_ID_DetaZoinTxt
  loc_A7BE50: CVarAd
  loc_A7BE54: ParmAry1St
  loc_A7BE5A: FLdRfVar var_88
  loc_A7BE5D: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A7BE62: ILdRf var_8C
  loc_A7BE65: CastAd
  loc_A7BE68: FLdPr Me
  loc_A7BE6B: MemStAdFunc
  loc_A7BE6F: FLdRfVar var_88
  loc_A7BE72: Erase
  loc_A7BE73: FFree1Ad var_8C
  loc_A7BE76: ExitProcHresult
End Sub
