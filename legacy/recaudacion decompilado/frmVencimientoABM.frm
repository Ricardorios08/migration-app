VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmVencimientoABM
  Caption = "Vencimiento"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmVencimientoABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 11160
  ClientHeight = 8508
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
    Top = 840
    Width = 4575
    Height = 420
    TabIndex = 22
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 4200
    Width = 10560
    Height = 4200
    TabIndex = 9
    Begin VB.TextBox CodiOficTxt
      ForeColor = &HFF0000&
      Left = 2880
      Top = 1560
      Width = 615
      Height = 360
      TabIndex = 3
      MaxLength = 2
    End
    Begin VB.TextBox PeriLiquTxt
      ForeColor = &HFF0000&
      Left = 2880
      Top = 600
      Width = 855
      Height = 345
      TabIndex = 1
      MaxLength = 4
    End
    Begin VB.CommandButton CodiTiliCmd
      Left = 3600
      Top = 2040
      Width = 450
      Height = 360
      TabIndex = 6
      Picture = "frmVencimientoABM.frx":324A
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton CodiOficCmd
      Left = 3600
      Top = 1560
      Width = 450
      Height = 360
      TabIndex = 4
      Picture = "frmVencimientoABM.frx":3344
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.ComboBox TipoVencCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2880
      Top = 2520
      Width = 2295
      Height = 420
      TabIndex = 7
    End
    Begin VB.TextBox CodiTiliTxt
      ForeColor = &HFF0000&
      Left = 2880
      Top = 2040
      Width = 615
      Height = 360
      TabIndex = 5
      MaxLength = 3
    End
    Begin VB.TextBox BimeLiquTxt
      ForeColor = &HFF0000&
      Left = 2880
      Top = 1080
      Width = 615
      Height = 360
      TabIndex = 2
      MaxLength = 2
    End
    Begin MSMask.MaskEdBox FeveVencMsk
      Left = 2880
      Top = 3120
      Width = 1455
      Height = 345
      TabIndex = 8
      OleObjectBlob = "frmVencimientoABM.frx":343E
    End
    Begin MSMask.MaskEdBox VepeVencMsk
      Left = 2880
      Top = 3600
      Width = 1455
      Height = 345
      TabIndex = 20
      OleObjectBlob = "frmVencimientoABM.frx":34EE
    End
    Begin VB.Label Label5
      Caption = "Vencimiento del Periodo:"
      Left = 120
      Top = 3600
      Width = 2625
      Height = 300
      TabIndex = 21
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
      Caption = "Vencimiento:"
      Left = 1440
      Top = 3120
      Width = 1380
      Height = 300
      TabIndex = 17
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
    Begin VB.Label Label3
      Caption = "Oficina:"
      Left = 2025
      Top = 1560
      Width = 795
      Height = 300
      TabIndex = 16
      AutoSize = -1  'True
    End
    Begin VB.Label Label10
      Caption = "Periodo:"
      Left = 1950
      Top = 600
      Width = 870
      Height = 300
      TabIndex = 15
      AutoSize = -1  'True
    End
    Begin VB.Label DetaTiliLbl
      Caption = "Label4"
      ForeColor = &HFF0000&
      Left = 4200
      Top = 2040
      Width = 5415
      Height = 360
      TabIndex = 14
    End
    Begin VB.Label DetaOficLbl
      Caption = "Label4"
      ForeColor = &HFF0000&
      Left = 4200
      Top = 1560
      Width = 5295
      Height = 360
      TabIndex = 13
    End
    Begin VB.Label Label7
      Caption = "Tipo de Venc:"
      Left = 1365
      Top = 2520
      Width = 1455
      Height = 300
      TabIndex = 12
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Código Tipo Liqu:"
      Left = 990
      Top = 2040
      Width = 1830
      Height = 300
      TabIndex = 11
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Mes/Bim/Trim/Sem/Anul:"
      Left = 240
      Top = 1080
      Width = 2580
      Height = 300
      TabIndex = 10
      AutoSize = -1  'True
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1440
    Width = 10080
    Height = 2715
    TabIndex = 0
    OleObjectBlob = "frmVencimientoABM.frx":359E
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmVencimientoABM.frx":39C8
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 11160
    Height = 528
    TabIndex = 18
    OleObjectBlob = "frmVencimientoABM.frx":B546
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 19
      TabStop = 0   'False
      Picture = "frmVencimientoABM.frx":BAA2
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
    TabIndex = 23
    OleObjectBlob = "frmVencimientoABM.frx":C36C
  End
End

Attribute VB_Name = "frmVencimientoABM"


Private Sub PeriLiquTxt_GotFocus() '9C4F10
  'Data Table: 4C62A0
  loc_9C4EFC: FLdPr Me
  loc_9C4EFF: VCallAd Control_ID_PeriLiquTxt
  loc_9C4F02: CVarAd
  loc_9C4F06: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4F0B: FFree1Var var_94 = ""
  loc_9C4F0E: ExitProcHresult
  loc_9C4F0F: Ary1LdRf
End Sub

Private Sub PeriLiquTxt_KeyPress(KeyAscii As Integer) '9D6B60
  'Data Table: 4C62A0
  loc_9D6B48: LitStr "0123456789"
  loc_9D6B4B: FStStrCopy var_88
  loc_9D6B4E: FLdRfVar var_88
  loc_9D6B51: ILdRf KeyAscii
  loc_9D6B54: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D6B59: IStI2 KeyAscii
  loc_9D6B5C: FFree1Str var_88
  loc_9D6B5F: ExitProcHresult
End Sub

Private Sub PeriLiquTxt_Validate(Cancel As Boolean) 'AB6FCC
  'Data Table: 4C62A0
  loc_AB6EE8: FLdRfVar var_8A
  loc_AB6EEB: FLdPr Me
  loc_AB6EEE: VCallAd Control_ID_cmdCancelar
  loc_AB6EF1: FStAdFunc var_88
  loc_AB6EF4: FLdPr var_88
  loc_AB6EF7:  = Me.Value
  loc_AB6EFC: FLdI2 var_8A
  loc_AB6EFF: NotI4
  loc_AB6F00: FLdRfVar var_92
  loc_AB6F03: FLdPr Me
  loc_AB6F06: VCallAd Control_ID_PeriLiquTxt
  loc_AB6F09: FStAdFunc var_90
  loc_AB6F0C: FLdPr var_90
  loc_AB6F0F:  = Me.Enabled
  loc_AB6F14: FLdI2 var_92
  loc_AB6F17: AndI4
  loc_AB6F18: FFreeAd var_88 = ""
  loc_AB6F1F: BranchF loc_AB6FC8
  loc_AB6F22: FLdRfVar var_98
  loc_AB6F25: FLdPr Me
  loc_AB6F28: VCallAd Control_ID_PeriLiquTxt
  loc_AB6F2B: FStAdFunc var_88
  loc_AB6F2E: FLdPr var_88
  loc_AB6F31:  = Me.Text
  loc_AB6F36: FLdZeroAd var_98
  loc_AB6F39: CVarStr var_A8
  loc_AB6F3C: ImpAdCallI2 IsNumeric()
  loc_AB6F41: NotI4
  loc_AB6F42: FFree1Ad var_88
  loc_AB6F45: FFree1Var var_A8 = ""
  loc_AB6F48: BranchF loc_AB6F62
  loc_AB6F4B: LitStr "0"
  loc_AB6F4E: FLdPr Me
  loc_AB6F51: VCallAd Control_ID_PeriLiquTxt
  loc_AB6F54: FStAdFunc var_88
  loc_AB6F57: FLdPr var_88
  loc_AB6F5A: Me.Text = from_stack_1
  loc_AB6F5F: FFree1Ad var_88
  loc_AB6F62: FLdRfVar var_98
  loc_AB6F65: FLdPr Me
  loc_AB6F68: VCallAd Control_ID_PeriLiquTxt
  loc_AB6F6B: FStAdFunc var_88
  loc_AB6F6E: FLdPr var_88
  loc_AB6F71:  = Me.Text
  loc_AB6F76: LitI2_Byte 0
  loc_AB6F78: ILdRf var_98
  loc_AB6F7B: LitStr "ingrese Periodo"
  loc_AB6F7E: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_AB6F83: FStStrNoPop var_AC
  loc_AB6F86: FLdPr Me
  loc_AB6F89: MemStStrCopy
  loc_AB6F8D: FFreeStr var_98 = ""
  loc_AB6F94: FFree1Ad var_88
  loc_AB6F97: FLdPr Me
  loc_AB6F9A: MemLdStr global_60
  loc_AB6F9D: LitStr vbNullString
  loc_AB6FA0: NeStr
  loc_AB6FA2: BranchF loc_AB6FC8
  loc_AB6FA5: FLdPr Me
  loc_AB6FA8: MemLdStr global_60
  loc_AB6FAB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB6FB0: FLdPr Me
  loc_AB6FB3: VCallAd Control_ID_PeriLiquTxt
  loc_AB6FB6: CVarAd
  loc_AB6FBA: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB6FBF: FFree1Var var_A8 = ""
  loc_AB6FC2: LitI2_Byte &HFF
  loc_AB6FC4: IStI2 Cancel
  loc_AB6FC7: ExitProcHresult
  loc_AB6FC8: ExitProcHresult
  loc_AB6FC9: FLdPr Me
End Sub

Private Sub TipoVencCbo_Validate(Cancel As Boolean) 'ACE33C
  'Data Table: 4C62A0
  loc_ACE230: FLdRfVar var_8A
  loc_ACE233: FLdPr Me
  loc_ACE236: VCallAd Control_ID_cmdCancelar
  loc_ACE239: FStAdFunc var_88
  loc_ACE23C: FLdPr var_88
  loc_ACE23F:  = Me.Value
  loc_ACE244: FLdI2 var_8A
  loc_ACE247: NotI4
  loc_ACE248: FLdRfVar var_92
  loc_ACE24B: FLdPr Me
  loc_ACE24E: VCallAd Control_ID_TipoVencCbo
  loc_ACE251: FStAdFunc var_90
  loc_ACE254: FLdPr var_90
  loc_ACE257:  = Me.Enabled
  loc_ACE25C: FLdI2 var_92
  loc_ACE25F: AndI4
  loc_ACE260: FFreeAd var_88 = ""
  loc_ACE267: BranchF loc_ACE33B
  loc_ACE26A: FLdRfVar var_98
  loc_ACE26D: FLdPr Me
  loc_ACE270: VCallAd Control_ID_PeriLiquTxt
  loc_ACE273: FStAdFunc var_88
  loc_ACE276: FLdPr var_88
  loc_ACE279:  = Me.Text
  loc_ACE27E: FLdRfVar var_9C
  loc_ACE281: FLdPr Me
  loc_ACE284: VCallAd Control_ID_BimeLiquTxt
  loc_ACE287: FStAdFunc var_90
  loc_ACE28A: FLdPr var_90
  loc_ACE28D:  = Me.Text
  loc_ACE292: FLdRfVar var_A4
  loc_ACE295: FLdPr Me
  loc_ACE298: VCallAd Control_ID_CodiOficTxt
  loc_ACE29B: FStAdFunc var_A0
  loc_ACE29E: FLdPr var_A0
  loc_ACE2A1:  = Me.Text
  loc_ACE2A6: FLdRfVar var_AC
  loc_ACE2A9: FLdPr Me
  loc_ACE2AC: VCallAd Control_ID_CodiTiliTxt
  loc_ACE2AF: FStAdFunc var_A8
  loc_ACE2B2: FLdPr var_A8
  loc_ACE2B5:  = Me.Text
  loc_ACE2BA: FLdRfVar var_B4
  loc_ACE2BD: FLdPr Me
  loc_ACE2C0: VCallAd Control_ID_TipoVencCbo
  loc_ACE2C3: FStAdFunc var_B0
  loc_ACE2C6: FLdPr var_B0
  loc_ACE2C9:  = Me.Text
  loc_ACE2CE: FLdRfVar var_B8
  loc_ACE2D1: ILdRf var_B4
  loc_ACE2D4: ILdRf var_AC
  loc_ACE2D7: CI2Str
  loc_ACE2D9: ILdRf var_A4
  loc_ACE2DC: CI2Str
  loc_ACE2DE: ILdRf var_9C
  loc_ACE2E1: CI2Str
  loc_ACE2E3: ILdRf var_98
  loc_ACE2E6: CI2Str
  loc_ACE2E8: FLdPr Me
  loc_ACE2EB: MemLdRfVar from_stack_1.global_52
  loc_ACE2EE: NewIfNullPr clsvencimiento
  loc_ACE2F1: from_stack_6v = clsvencimiento.ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_ACE2F6: ILdRf var_B8
  loc_ACE2F9: FLdPr Me
  loc_ACE2FC: MemStStrCopy
  loc_ACE300: FFreeStr var_98 = "": var_9C = "": var_A4 = "": var_AC = "": var_B4 = ""
  loc_ACE30F: FFreeAd var_88 = "": var_90 = "": var_A0 = "": var_A8 = ""
  loc_ACE31C: FLdPr Me
  loc_ACE31F: MemLdStr global_60
  loc_ACE322: LitStr vbNullString
  loc_ACE325: NeStr
  loc_ACE327: BranchF loc_ACE33B
  loc_ACE32A: FLdPr Me
  loc_ACE32D: MemLdStr global_60
  loc_ACE330: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACE335: LitI2_Byte &HFF
  loc_ACE337: IStI2 Cancel
  loc_ACE33A: ExitProcHresult
  loc_ACE33B: ExitProcHresult
End Sub

Private Sub VepeVencMsk_UnknownEvent_0 '9C5030
  'Data Table: 4C62A0
  loc_9C501C: FLdPr Me
  loc_9C501F: VCallAd Control_ID_VepeVencMsk
  loc_9C5022: CVarAd
  loc_9C5026: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C502B: FFree1Var var_94 = ""
  loc_9C502E: ExitProcHresult
End Sub

Private Sub VepeVencMsk_UnknownEvent_8 'AAA4C8
  'Data Table: 4C62A0
  loc_AAA400: FLdRfVar var_8A
  loc_AAA403: FLdPr Me
  loc_AAA406: VCallAd Control_ID_cmdCancelar
  loc_AAA409: FStAdFunc var_88
  loc_AAA40C: FLdPr var_88
  loc_AAA40F:  = Me.Value
  loc_AAA414: FLdI2 var_8A
  loc_AAA417: NotI4
  loc_AAA418: FLdPr Me
  loc_AAA41B: VCallAd Control_ID_VepeVencMsk
  loc_AAA41E: FStAdFunc var_90
  loc_AAA421: FLdPr var_90
  loc_AAA424: LateIdLdVar var_A0 DispID_13 -32767
  loc_AAA42B: CBoolVar
  loc_AAA42D: AndI4
  loc_AAA42E: FFreeAd var_88 = ""
  loc_AAA435: FFree1Var var_A0 = ""
  loc_AAA438: BranchF loc_AAA4C7
  loc_AAA43B: FLdPr Me
  loc_AAA43E: VCallAd Control_ID_VepeVencMsk
  loc_AAA441: FStAdFunc var_88
  loc_AAA444: FLdPr var_88
  loc_AAA447: LateIdLdVar var_A0 DispID_22 0
  loc_AAA44E: CStrVarTmp
  loc_AAA44F: FStStrNoPop var_A4
  loc_AAA452: LitStr vbNullString
  loc_AAA455: NeStr
  loc_AAA457: FFree1Str var_A4
  loc_AAA45A: FFree1Ad var_88
  loc_AAA45D: FFree1Var var_A0 = ""
  loc_AAA460: BranchF loc_AAA4C7
  loc_AAA463: FLdPr Me
  loc_AAA466: VCallAd Control_ID_VepeVencMsk
  loc_AAA469: FStAdFunc var_88
  loc_AAA46C: FLdPr var_88
  loc_AAA46F: LateIdLdVar var_A0 DispID_15 0
  loc_AAA476: CStrVarTmp
  loc_AAA477: FStStrNoPop var_A4
  loc_AAA47A: ImpAdCallI2 Proc_18_6_A08898()
  loc_AAA47F: FStStrNoPop var_A8
  loc_AAA482: FLdPr Me
  loc_AAA485: MemStStrCopy
  loc_AAA489: FFreeStr var_A4 = ""
  loc_AAA490: FFree1Ad var_88
  loc_AAA493: FFree1Var var_A0 = ""
  loc_AAA496: FLdPr Me
  loc_AAA499: MemLdStr global_60
  loc_AAA49C: LitStr vbNullString
  loc_AAA49F: NeStr
  loc_AAA4A1: BranchF loc_AAA4C7
  loc_AAA4A4: FLdPr Me
  loc_AAA4A7: MemLdStr global_60
  loc_AAA4AA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AAA4AF: FLdPr Me
  loc_AAA4B2: VCallAd Control_ID_VepeVencMsk
  loc_AAA4B5: CVarAd
  loc_AAA4B9: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AAA4BE: FFree1Var var_A0 = ""
  loc_AAA4C1: LitI2_Byte &HFF
  loc_AAA4C3: IStI2 Cancel
  loc_AAA4C6: ExitProcHresult
  loc_AAA4C7: ExitProcHresult
End Sub

Private Sub VepeVencMsk_KeyPress(KeyAscii As Integer) 'A248E0
  'Data Table: 4C62A0
  loc_A24898: ILdI2 KeyAscii
  loc_A2489B: CI4UI1
  loc_A2489C: LitI4 &H20
  loc_A248A1: EqI4
  loc_A248A2: BranchF loc_A248DF
  loc_A248A5: LitVar_Missing var_A4
  loc_A248A8: PopAdLdVar
  loc_A248A9: LitVarI4
  loc_A248B1: PopAdLdVar
  loc_A248B2: ImpAdLdRf MemVar_D930A4
  loc_A248B5: NewIfNullPr frmCalendario
  loc_A248B8: frmCalendario.Show from_stack_1, from_stack_2
  loc_A248BD: ImpAdLdRf MemVar_D93028
  loc_A248C0: CDargRef
  loc_A248C4: FLdPr Me
  loc_A248C7: VCallAd Control_ID_VepeVencMsk
  loc_A248CA: FStAdFunc var_A8
  loc_A248CD: FLdPr var_A8
  loc_A248D0: LateIdSt
  loc_A248D5: FFree1Ad var_A8
  loc_A248D8: LitStr vbNullString
  loc_A248DB: ImpAdStStrCopy MemVar_D93028
  loc_A248DF: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '9C4FE8
  'Data Table: 4C62A0
  loc_9C4FD4: FLdPr Me
  loc_9C4FD7: VCallAd Control_ID_FiltroMsk
  loc_9C4FDA: CVarAd
  loc_9C4FDE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4FE3: FFree1Var var_94 = ""
  loc_9C4FE6: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'AA50A4
  'Data Table: 4C62A0
  loc_AA4FE8: FLdRfVar var_8A
  loc_AA4FEB: FLdPr Me
  loc_AA4FEE: VCallAd Control_ID_FiltroCbo
  loc_AA4FF1: FStAdFunc var_88
  loc_AA4FF4: FLdPr var_88
  loc_AA4FF7:  = Me.ListIndex
  loc_AA4FFC: FLdI2 var_8A
  loc_AA4FFF: FStI2 var_8C
  loc_AA5002: FFree1Ad var_88
  loc_AA5005: FLdI2 var_8C
  loc_AA5008: LitI2_Byte 0
  loc_AA500A: EqI2
  loc_AA500B: BranchF loc_AA5043
  loc_AA500E: LitStr "Periodo que es igual a: "
  loc_AA5011: FLdPr Me
  loc_AA5014: VCallAd Control_ID_FiltroMsk
  loc_AA5017: FStAdFunc var_88
  loc_AA501A: FLdPr var_88
  loc_AA501D: LateIdLdVar var_9C DispID_22 0
  loc_AA5024: CStrVarTmp
  loc_AA5025: FStStrNoPop var_A0
  loc_AA5028: ConcatStr
  loc_AA5029: FStStrNoPop var_A4
  loc_AA502C: FLdPr Me
  loc_AA502F: MemStStrCopy
  loc_AA5033: FFreeStr var_A0 = ""
  loc_AA503A: FFree1Ad var_88
  loc_AA503D: FFree1Var var_9C = ""
  loc_AA5040: Branch loc_AA507E
  loc_AA5043: FLdI2 var_8C
  loc_AA5046: LitI2_Byte 1
  loc_AA5048: EqI2
  loc_AA5049: BranchF loc_AA507E
  loc_AA504C: LitStr "Oficina que es igual a: "
  loc_AA504F: FLdPr Me
  loc_AA5052: VCallAd Control_ID_FiltroMsk
  loc_AA5055: FStAdFunc var_88
  loc_AA5058: FLdPr var_88
  loc_AA505B: LateIdLdVar var_9C DispID_22 0
  loc_AA5062: CStrVarTmp
  loc_AA5063: FStStrNoPop var_A0
  loc_AA5066: ConcatStr
  loc_AA5067: FStStrNoPop var_A4
  loc_AA506A: FLdPr Me
  loc_AA506D: MemStStrCopy
  loc_AA5071: FFreeStr var_A0 = ""
  loc_AA5078: FFree1Ad var_88
  loc_AA507B: FFree1Var var_9C = ""
  loc_AA507E: FLdPr Me
  loc_AA5081: VCallAd Control_ID_dgdABMS
  loc_AA5084: FStAdFunc var_A8
  loc_AA5087: FLdPr Me
  loc_AA508A: MemLdStr global_64
  loc_AA508D: FLdZeroAd var_A8
  loc_AA5090: FStAdFunc var_88
  loc_AA5093: FLdRfVar var_88
  loc_AA5096: ImpAdCallFPR4 Proc_272_56_ACCA08(, )
  loc_AA509B: FFreeAd var_88 = ""
  loc_AA50A2: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '9C4ECC
  'Data Table: 4C62A0
  loc_9C4EB4: ILdI2 KeyAscii
  loc_9C4EB7: CI4UI1
  loc_9C4EB8: LitI4 &HD
  loc_9C4EBD: EqI4
  loc_9C4EBE: BranchF loc_9C4ECB
  loc_9C4EC1: Call Proc_129_34_AA86B4()
  loc_9C4EC6: Call cmdCancelar_Click()
  loc_9C4ECB: ExitProcHresult
End Sub

Private Sub CodiOficCmd_Click() 'AD5610
  'Data Table: 4C62A0
  loc_AD54E4: LitVar_Missing var_A4
  loc_AD54E7: PopAdLdVar
  loc_AD54E8: LitVarI4
  loc_AD54F0: PopAdLdVar
  loc_AD54F1: ImpAdLdRf MemVar_D946B4
  loc_AD54F4: NewIfNullPr dlgBuscarOficina
  loc_AD54F7: dlgBuscarOficina.Show from_stack_1, from_stack_2
  loc_AD54FC: FLdRfVar var_AC
  loc_AD54FF: FLdRfVar var_A8
  loc_AD5502: ImpAdLdRf MemVar_D946B4
  loc_AD5505: NewIfNullPr dlgBuscarOficina
  loc_AD5508: from_stack_1v = dlgBuscarOficina.global_4254676Get()
  loc_AD550D: FLdPr var_A8
  loc_AD5510: from_stack_1 = clsbase.RecordCount
  loc_AD5515: ILdRf var_AC
  loc_AD5518: LitI4 0
  loc_AD551D: GtI4
  loc_AD551E: FFree1Ad var_A8
  loc_AD5521: BranchF loc_AD55FA
  loc_AD5524: FLdRfVar var_C8
  loc_AD5527: FLdRfVar var_B8
  loc_AD552A: LitVarStr var_94, "CodiOfic"
  loc_AD552F: PopAdLdVar
  loc_AD5530: FLdRfVar var_B4
  loc_AD5533: FLdRfVar var_B0
  loc_AD5536: FLdRfVar var_A8
  loc_AD5539: ImpAdLdRf MemVar_D946B4
  loc_AD553C: NewIfNullPr dlgBuscarOficina
  loc_AD553F: from_stack_1v = dlgBuscarOficina.global_4254676Get()
  loc_AD5544: FLdPr var_A8
  loc_AD5547: from_stack_1v = clsbase.RsFrmGet()
  loc_AD554C: FLdPr var_B0
  loc_AD554F:  = Me.Fields
  loc_AD5554: FLdPr var_B4
  loc_AD5557: from_stack_2 = Me.Item(from_stack_1)
  loc_AD555C: FLdPr var_B8
  loc_AD555F:  = Me.Value
  loc_AD5564: FLdRfVar var_C8
  loc_AD5567: CStrVarTmp
  loc_AD5568: FStStrNoPop var_CC
  loc_AD556B: FLdPr Me
  loc_AD556E: VCallAd Control_ID_CodiOficTxt
  loc_AD5571: FStAdFunc var_D0
  loc_AD5574: FLdPr var_D0
  loc_AD5577: Me.Text = from_stack_1
  loc_AD557C: FFree1Str var_CC
  loc_AD557F: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_AD558C: FFree1Var var_C8 = ""
  loc_AD558F: FLdRfVar var_C8
  loc_AD5592: FLdRfVar var_B8
  loc_AD5595: LitVarStr var_94, "DetaOfic"
  loc_AD559A: PopAdLdVar
  loc_AD559B: FLdRfVar var_B4
  loc_AD559E: FLdRfVar var_B0
  loc_AD55A1: FLdRfVar var_A8
  loc_AD55A4: ImpAdLdRf MemVar_D946B4
  loc_AD55A7: NewIfNullPr dlgBuscarOficina
  loc_AD55AA: from_stack_1v = dlgBuscarOficina.global_4254676Get()
  loc_AD55AF: FLdPr var_A8
  loc_AD55B2: from_stack_1v = clsbase.RsFrmGet()
  loc_AD55B7: FLdPr var_B0
  loc_AD55BA:  = Me.Fields
  loc_AD55BF: FLdPr var_B4
  loc_AD55C2: from_stack_2 = Me.Item(from_stack_1)
  loc_AD55C7: FLdPr var_B8
  loc_AD55CA:  = Me.Value
  loc_AD55CF: FLdRfVar var_C8
  loc_AD55D2: CStrVarTmp
  loc_AD55D3: FStStrNoPop var_CC
  loc_AD55D6: FLdPr Me
  loc_AD55D9: VCallAd Control_ID_DetaOficLbl
  loc_AD55DC: FStAdFunc var_D0
  loc_AD55DF: FLdPr var_D0
  loc_AD55E2: Me.Caption = from_stack_1
  loc_AD55E7: FFree1Str var_CC
  loc_AD55EA: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_AD55F7: FFree1Var var_C8 = ""
  loc_AD55FA: FLdPr Me
  loc_AD55FD: VCallAd Control_ID_CodiOficTxt
  loc_AD5600: CVarAd
  loc_AD5604: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD5609: FFree1Var var_C8 = ""
  loc_AD560C: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BE4F10
  'Data Table: 4C62A0
  loc_BE4790: ILdRf Button
  loc_BE4793: FStAd var_88 
  loc_BE4797: FLdRfVar var_8C
  loc_BE479A: FLdPr var_88
  loc_BE479D:  = Me.Key
  loc_BE47A2: FLdZeroAd var_8C
  loc_BE47A5: FStStr var_90
  loc_BE47A8: ILdRf var_90
  loc_BE47AB: LitStr "btnCrear"
  loc_BE47AE: EqStr
  loc_BE47B0: BranchF loc_BE4996
  loc_BE47B3: LitI2_Byte 1
  loc_BE47B5: FLdPr Me
  loc_BE47B8: MemStI2 global_56
  loc_BE47BB: ILdRf Me
  loc_BE47BE: CastAd
  loc_BE47C1: FStAdFunc var_94
  loc_BE47C4: FLdRfVar var_94
  loc_BE47C7: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BE47CC: FFree1Ad var_94
  loc_BE47CF: LitI4 0
  loc_BE47D4: LitI4 0
  loc_BE47D9: FLdRfVar var_98
  loc_BE47DC: Redim
  loc_BE47E6: FLdPr Me
  loc_BE47E9: VCallAd Control_ID_dgdABMS
  loc_BE47EC: CVarAd
  loc_BE47F0: ParmAry1St
  loc_BE47F6: FLdRfVar var_98
  loc_BE47F9: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BE47FE: FLdRfVar var_98
  loc_BE4801: Erase
  loc_BE4802: ILdRf Me
  loc_BE4805: CastAd
  loc_BE4808: FStAdFunc var_94
  loc_BE480B: FLdRfVar var_94
  loc_BE480E: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BE4813: FFree1Ad var_94
  loc_BE4816: ILdRf Me
  loc_BE4819: CastAd
  loc_BE481C: FStAdFunc var_94
  loc_BE481F: FLdRfVar var_94
  loc_BE4822: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_BE4827: FFree1Ad var_94
  loc_BE482A: LitI2_Byte 0
  loc_BE482C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BE4831: CVarDate var_A8
  loc_BE4835: FLdRfVar var_C8
  loc_BE4838: ImpAdCallFPR4  = Year()
  loc_BE483D: FLdRfVar var_C8
  loc_BE4840: CStrVarVal var_8C
  loc_BE4844: FLdPr Me
  loc_BE4847: VCallAd Control_ID_PeriLiquTxt
  loc_BE484A: FStAdFunc var_94
  loc_BE484D: FLdPr var_94
  loc_BE4850: Me.Text = from_stack_1
  loc_BE4855: FFree1Str var_8C
  loc_BE4858: FFree1Ad var_94
  loc_BE485B: FFreeVar var_A8 = ""
  loc_BE4862: LitI2_Byte 0
  loc_BE4864: CStrUI1
  loc_BE4866: FStStrNoPop var_8C
  loc_BE4869: FLdPr Me
  loc_BE486C: VCallAd Control_ID_BimeLiquTxt
  loc_BE486F: FStAdFunc var_94
  loc_BE4872: FLdPr var_94
  loc_BE4875: Me.Text = from_stack_1
  loc_BE487A: FFree1Str var_8C
  loc_BE487D: FFree1Ad var_94
  loc_BE4880: LitI2_Byte 0
  loc_BE4882: CStrUI1
  loc_BE4884: FStStrNoPop var_8C
  loc_BE4887: FLdPr Me
  loc_BE488A: VCallAd Control_ID_CodiOficTxt
  loc_BE488D: FStAdFunc var_94
  loc_BE4890: FLdPr var_94
  loc_BE4893: Me.Text = from_stack_1
  loc_BE4898: FFree1Str var_8C
  loc_BE489B: FFree1Ad var_94
  loc_BE489E: LitI2_Byte 0
  loc_BE48A0: CStrUI1
  loc_BE48A2: FStStrNoPop var_8C
  loc_BE48A5: FLdPr Me
  loc_BE48A8: VCallAd Control_ID_CodiTiliTxt
  loc_BE48AB: FStAdFunc var_94
  loc_BE48AE: FLdPr var_94
  loc_BE48B1: Me.Text = from_stack_1
  loc_BE48B6: FFree1Str var_8C
  loc_BE48B9: FFree1Ad var_94
  loc_BE48BC: LitI2_Byte 0
  loc_BE48BE: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BE48C3: CStrDate
  loc_BE48C5: CVarStr var_A8
  loc_BE48C8: PopAdLdVar
  loc_BE48C9: FLdPr Me
  loc_BE48CC: VCallAd Control_ID_FeveVencMsk
  loc_BE48CF: FStAdFunc var_94
  loc_BE48D2: FLdPr var_94
  loc_BE48D5: LateIdSt
  loc_BE48DA: FFree1Ad var_94
  loc_BE48DD: FFree1Var var_A8 = ""
  loc_BE48E0: LitI4 0
  loc_BE48E5: LitI4 8
  loc_BE48EA: FLdRfVar var_98
  loc_BE48ED: Redim
  loc_BE48F7: FLdPr Me
  loc_BE48FA: VCallAd Control_ID_PeriLiquTxt
  loc_BE48FD: CVarAd
  loc_BE4901: ParmAry1St
  loc_BE4907: FLdPr Me
  loc_BE490A: VCallAd Control_ID_BimeLiquTxt
  loc_BE490D: CVarAd
  loc_BE4911: ParmAry1St
  loc_BE4917: FLdPr Me
  loc_BE491A: VCallAd Control_ID_CodiOficTxt
  loc_BE491D: CVarAd
  loc_BE4921: ParmAry1St
  loc_BE4927: FLdPr Me
  loc_BE492A: VCallAd Control_ID_CodiOficCmd
  loc_BE492D: CVarAd
  loc_BE4931: ParmAry1St
  loc_BE4937: FLdPr Me
  loc_BE493A: VCallAd Control_ID_CodiTiliTxt
  loc_BE493D: CVarAd
  loc_BE4941: ParmAry1St
  loc_BE4947: FLdPr Me
  loc_BE494A: VCallAd Control_ID_CodiTiliCmd
  loc_BE494D: CVarAd
  loc_BE4951: ParmAry1St
  loc_BE4957: FLdPr Me
  loc_BE495A: VCallAd Control_ID_TipoVencCbo
  loc_BE495D: CVarAd
  loc_BE4961: ParmAry1St
  loc_BE4967: FLdPr Me
  loc_BE496A: VCallAd Control_ID_FeveVencMsk
  loc_BE496D: CVarAd
  loc_BE4971: ParmAry1St
  loc_BE4977: FLdPr Me
  loc_BE497A: VCallAd Control_ID_VepeVencMsk
  loc_BE497D: CVarAd
  loc_BE4981: ParmAry1St
  loc_BE4987: FLdRfVar var_98
  loc_BE498A: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BE498F: FLdRfVar var_98
  loc_BE4992: Erase
  loc_BE4993: Branch loc_BE4F0D
  loc_BE4996: ILdRf var_90
  loc_BE4999: LitStr "btnModificar"
  loc_BE499C: EqStr
  loc_BE499E: BranchF loc_BE4A67
  loc_BE49A1: FLdRfVar var_13C
  loc_BE49A4: FLdPr Me
  loc_BE49A7: MemLdRfVar from_stack_1.global_52
  loc_BE49AA: NewIfNullPr clsvencimiento
  loc_BE49AD: from_stack_1 = clsvencimiento.RecordCount
  loc_BE49B2: ILdRf var_13C
  loc_BE49B5: LitI4 0
  loc_BE49BA: GtI4
  loc_BE49BB: BranchF loc_BE4A64
  loc_BE49BE: LitI2_Byte 2
  loc_BE49C0: FLdPr Me
  loc_BE49C3: MemStI2 global_56
  loc_BE49C6: ILdRf Me
  loc_BE49C9: CastAd
  loc_BE49CC: FStAdFunc var_94
  loc_BE49CF: FLdRfVar var_94
  loc_BE49D2: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BE49D7: FFree1Ad var_94
  loc_BE49DA: LitI4 0
  loc_BE49DF: LitI4 0
  loc_BE49E4: FLdRfVar var_98
  loc_BE49E7: Redim
  loc_BE49F1: FLdPr Me
  loc_BE49F4: VCallAd Control_ID_dgdABMS
  loc_BE49F7: CVarAd
  loc_BE49FB: ParmAry1St
  loc_BE4A01: FLdRfVar var_98
  loc_BE4A04: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BE4A09: FLdRfVar var_98
  loc_BE4A0C: Erase
  loc_BE4A0D: ILdRf Me
  loc_BE4A10: CastAd
  loc_BE4A13: FStAdFunc var_94
  loc_BE4A16: FLdRfVar var_94
  loc_BE4A19: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BE4A1E: FFree1Ad var_94
  loc_BE4A21: LitI4 0
  loc_BE4A26: LitI4 1
  loc_BE4A2B: FLdRfVar var_98
  loc_BE4A2E: Redim
  loc_BE4A38: FLdPr Me
  loc_BE4A3B: VCallAd Control_ID_FeveVencMsk
  loc_BE4A3E: CVarAd
  loc_BE4A42: ParmAry1St
  loc_BE4A48: FLdPr Me
  loc_BE4A4B: VCallAd Control_ID_VepeVencMsk
  loc_BE4A4E: CVarAd
  loc_BE4A52: ParmAry1St
  loc_BE4A58: FLdRfVar var_98
  loc_BE4A5B: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BE4A60: FLdRfVar var_98
  loc_BE4A63: Erase
  loc_BE4A64: Branch loc_BE4F0D
  loc_BE4A67: ILdRf var_90
  loc_BE4A6A: LitStr "btnEliminar"
  loc_BE4A6D: EqStr
  loc_BE4A6F: BranchF loc_BE4B75
  loc_BE4A72: FLdRfVar var_13C
  loc_BE4A75: FLdPr Me
  loc_BE4A78: MemLdRfVar from_stack_1.global_52
  loc_BE4A7B: NewIfNullPr clsvencimiento
  loc_BE4A7E: from_stack_1 = clsvencimiento.RecordCount
  loc_BE4A83: ILdRf var_13C
  loc_BE4A86: LitI4 0
  loc_BE4A8B: GtI4
  loc_BE4A8C: BranchF loc_BE4B72
  loc_BE4A8F: LitVar_Missing var_E8
  loc_BE4A92: LitVar_Missing var_D8
  loc_BE4A95: LitVar_Missing var_C8
  loc_BE4A98: LitI4 4
  loc_BE4A9D: LitVarStr var_B8, "¿Desea eliminar el registro?"
  loc_BE4AA2: FStVarCopyObj var_A8
  loc_BE4AA5: FLdRfVar var_A8
  loc_BE4AA8: ImpAdCallI2 MsgBox(, , , , )
  loc_BE4AAD: LitI4 6
  loc_BE4AB2: EqI4
  loc_BE4AB3: FFreeVar var_A8 = "": var_C8 = "": var_D8 = ""
  loc_BE4ABE: BranchF loc_BE4B72
  loc_BE4AC1: FLdRfVar var_8C
  loc_BE4AC4: FLdPr Me
  loc_BE4AC7: VCallAd Control_ID_PeriLiquTxt
  loc_BE4ACA: FStAdFunc var_94
  loc_BE4ACD: FLdPr var_94
  loc_BE4AD0:  = Me.Text
  loc_BE4AD5: FLdRfVar var_174
  loc_BE4AD8: FLdPr Me
  loc_BE4ADB: VCallAd Control_ID_BimeLiquTxt
  loc_BE4ADE: FStAdFunc var_170
  loc_BE4AE1: FLdPr var_170
  loc_BE4AE4:  = Me.Text
  loc_BE4AE9: FLdRfVar var_17C
  loc_BE4AEC: FLdPr Me
  loc_BE4AEF: VCallAd Control_ID_CodiOficTxt
  loc_BE4AF2: FStAdFunc var_178
  loc_BE4AF5: FLdPr var_178
  loc_BE4AF8:  = Me.Text
  loc_BE4AFD: FLdRfVar var_184
  loc_BE4B00: FLdPr Me
  loc_BE4B03: VCallAd Control_ID_CodiTiliTxt
  loc_BE4B06: FStAdFunc var_180
  loc_BE4B09: FLdPr var_180
  loc_BE4B0C:  = Me.Text
  loc_BE4B11: FLdRfVar var_18C
  loc_BE4B14: FLdPr Me
  loc_BE4B17: VCallAd Control_ID_TipoVencCbo
  loc_BE4B1A: FStAdFunc var_188
  loc_BE4B1D: FLdPr var_188
  loc_BE4B20:  = Me.Text
  loc_BE4B25: ILdRf var_18C
  loc_BE4B28: ILdRf var_184
  loc_BE4B2B: CI2Str
  loc_BE4B2D: ILdRf var_17C
  loc_BE4B30: CI2Str
  loc_BE4B32: ILdRf var_174
  loc_BE4B35: CI2Str
  loc_BE4B37: ILdRf var_8C
  loc_BE4B3A: CI2Str
  loc_BE4B3C: FLdPr Me
  loc_BE4B3F: MemLdRfVar from_stack_1.global_52
  loc_BE4B42: NewIfNullPr clsvencimiento
  loc_BE4B45: Call clsvencimiento.Delete(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_BE4B4A: FFreeStr var_8C = "": var_174 = "": var_17C = "": var_184 = ""
  loc_BE4B57: FFreeAd var_94 = "": var_170 = "": var_178 = "": var_180 = ""
  loc_BE4B64: FLdPr Me
  loc_BE4B67: MemLdRfVar from_stack_1.global_52
  loc_BE4B6A: NewIfNullPr clsvencimiento
  loc_BE4B6D: Call clsvencimiento.Requery()
  loc_BE4B72: Branch loc_BE4F0D
  loc_BE4B75: ILdRf var_90
  loc_BE4B78: LitStr "btnGuardar"
  loc_BE4B7B: EqStr
  loc_BE4B7D: BranchF loc_BE4E09
  loc_BE4B80: LitI2_Byte 0
  loc_BE4B82: PopTmpLdAd2 var_18E
  loc_BE4B85: Call PeriLiquTxt_Validate(from_stack_1v)
  loc_BE4B8A: FLdPr Me
  loc_BE4B8D: MemLdStr global_60
  loc_BE4B90: LitStr vbNullString
  loc_BE4B93: NeStr
  loc_BE4B95: BranchF loc_BE4B99
  loc_BE4B98: ExitProcHresult
  loc_BE4B99: LitI2_Byte 0
  loc_BE4B9B: PopTmpLdAd2 var_18E
  loc_BE4B9E: Call BimeLiquTxt_Validate(from_stack_1v)
  loc_BE4BA3: FLdPr Me
  loc_BE4BA6: MemLdStr global_60
  loc_BE4BA9: LitStr vbNullString
  loc_BE4BAC: NeStr
  loc_BE4BAE: BranchF loc_BE4BB2
  loc_BE4BB1: ExitProcHresult
  loc_BE4BB2: LitI2_Byte 0
  loc_BE4BB4: PopTmpLdAd2 var_18E
  loc_BE4BB7: Call CodiOficTxt_Validate(from_stack_1v)
  loc_BE4BBC: FLdPr Me
  loc_BE4BBF: MemLdStr global_60
  loc_BE4BC2: LitStr vbNullString
  loc_BE4BC5: NeStr
  loc_BE4BC7: BranchF loc_BE4BCB
  loc_BE4BCA: ExitProcHresult
  loc_BE4BCB: LitI2_Byte 0
  loc_BE4BCD: PopTmpLdAd2 var_18E
  loc_BE4BD0: Call CodiTiliTxt_Validate(from_stack_1v)
  loc_BE4BD5: FLdPr Me
  loc_BE4BD8: MemLdStr global_60
  loc_BE4BDB: LitStr vbNullString
  loc_BE4BDE: NeStr
  loc_BE4BE0: BranchF loc_BE4BE4
  loc_BE4BE3: ExitProcHresult
  loc_BE4BE4: LitI2_Byte 0
  loc_BE4BE6: PopTmpLdAd2 var_18E
  loc_BE4BE9: Call FeveVencMsk_UnknownEvent_8()
  loc_BE4BEE: FLdPr Me
  loc_BE4BF1: MemLdStr global_60
  loc_BE4BF4: LitStr vbNullString
  loc_BE4BF7: NeStr
  loc_BE4BF9: BranchF loc_BE4BFD
  loc_BE4BFC: ExitProcHresult
  loc_BE4BFD: LitI2_Byte 0
  loc_BE4BFF: PopTmpLdAd2 var_18E
  loc_BE4C02: Call VepeVencMsk_UnknownEvent_8()
  loc_BE4C07: FLdPr Me
  loc_BE4C0A: MemLdStr global_60
  loc_BE4C0D: LitStr vbNullString
  loc_BE4C10: NeStr
  loc_BE4C12: BranchF loc_BE4C16
  loc_BE4C15: ExitProcHresult
  loc_BE4C16: FLdPr Me
  loc_BE4C19: MemLdI2 global_56
  loc_BE4C1C: FStI2 var_190
  loc_BE4C1F: FLdI2 var_190
  loc_BE4C22: LitI2_Byte 1
  loc_BE4C24: EqI2
  loc_BE4C25: BranchF loc_BE4D13
  loc_BE4C28: FLdRfVar var_8C
  loc_BE4C2B: FLdPr Me
  loc_BE4C2E: VCallAd Control_ID_PeriLiquTxt
  loc_BE4C31: FStAdFunc var_94
  loc_BE4C34: FLdPr var_94
  loc_BE4C37:  = Me.Text
  loc_BE4C3C: FLdRfVar var_174
  loc_BE4C3F: FLdPr Me
  loc_BE4C42: VCallAd Control_ID_BimeLiquTxt
  loc_BE4C45: FStAdFunc var_170
  loc_BE4C48: FLdPr var_170
  loc_BE4C4B:  = Me.Text
  loc_BE4C50: FLdRfVar var_17C
  loc_BE4C53: FLdPr Me
  loc_BE4C56: VCallAd Control_ID_CodiOficTxt
  loc_BE4C59: FStAdFunc var_178
  loc_BE4C5C: FLdPr var_178
  loc_BE4C5F:  = Me.Text
  loc_BE4C64: FLdRfVar var_184
  loc_BE4C67: FLdPr Me
  loc_BE4C6A: VCallAd Control_ID_CodiTiliTxt
  loc_BE4C6D: FStAdFunc var_180
  loc_BE4C70: FLdPr var_180
  loc_BE4C73:  = Me.Text
  loc_BE4C78: FLdRfVar var_18C
  loc_BE4C7B: FLdPr Me
  loc_BE4C7E: VCallAd Control_ID_TipoVencCbo
  loc_BE4C81: FStAdFunc var_188
  loc_BE4C84: FLdPr var_188
  loc_BE4C87:  = Me.Text
  loc_BE4C8C: FLdPr Me
  loc_BE4C8F: VCallAd Control_ID_FeveVencMsk
  loc_BE4C92: FStAdFunc var_194
  loc_BE4C95: FLdPr var_194
  loc_BE4C98: LateIdLdVar var_A8 DispID_15 0
  loc_BE4C9F: PopAd
  loc_BE4CA1: FLdPr Me
  loc_BE4CA4: VCallAd Control_ID_VepeVencMsk
  loc_BE4CA7: FStAdFunc var_198
  loc_BE4CAA: FLdPr var_198
  loc_BE4CAD: LateIdLdVar var_C8 DispID_15 0
  loc_BE4CB4: CStrVarTmp
  loc_BE4CB5: FStStrNoPop var_1A0
  loc_BE4CB8: FLdRfVar var_A8
  loc_BE4CBB: CStrVarTmp
  loc_BE4CBC: FStStrNoPop var_19C
  loc_BE4CBF: CDateStr
  loc_BE4CC1: PopFPR8
  loc_BE4CC2: ILdRf var_18C
  loc_BE4CC5: ILdRf var_184
  loc_BE4CC8: CI2Str
  loc_BE4CCA: ILdRf var_17C
  loc_BE4CCD: CI2Str
  loc_BE4CCF: ILdRf var_174
  loc_BE4CD2: CI2Str
  loc_BE4CD4: ILdRf var_8C
  loc_BE4CD7: CI2Str
  loc_BE4CD9: FLdPr Me
  loc_BE4CDC: MemLdRfVar from_stack_1.global_52
  loc_BE4CDF: NewIfNullPr clsvencimiento
  loc_BE4CE2: Call clsvencimiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_BE4CE7: FFreeStr var_8C = "": var_174 = "": var_17C = "": var_184 = "": var_18C = "": var_19C = ""
  loc_BE4CF8: FFreeAd var_94 = "": var_170 = "": var_178 = "": var_180 = "": var_188 = "": var_194 = ""
  loc_BE4D09: FFreeVar var_A8 = ""
  loc_BE4D10: Branch loc_BE4E01
  loc_BE4D13: FLdI2 var_190
  loc_BE4D16: LitI2_Byte 2
  loc_BE4D18: EqI2
  loc_BE4D19: BranchF loc_BE4E01
  loc_BE4D1C: FLdRfVar var_8C
  loc_BE4D1F: FLdPr Me
  loc_BE4D22: VCallAd Control_ID_PeriLiquTxt
  loc_BE4D25: FStAdFunc var_94
  loc_BE4D28: FLdPr var_94
  loc_BE4D2B:  = Me.Text
  loc_BE4D30: FLdRfVar var_174
  loc_BE4D33: FLdPr Me
  loc_BE4D36: VCallAd Control_ID_BimeLiquTxt
  loc_BE4D39: FStAdFunc var_170
  loc_BE4D3C: FLdPr var_170
  loc_BE4D3F:  = Me.Text
  loc_BE4D44: FLdRfVar var_17C
  loc_BE4D47: FLdPr Me
  loc_BE4D4A: VCallAd Control_ID_CodiOficTxt
  loc_BE4D4D: FStAdFunc var_178
  loc_BE4D50: FLdPr var_178
  loc_BE4D53:  = Me.Text
  loc_BE4D58: FLdRfVar var_184
  loc_BE4D5B: FLdPr Me
  loc_BE4D5E: VCallAd Control_ID_CodiTiliTxt
  loc_BE4D61: FStAdFunc var_180
  loc_BE4D64: FLdPr var_180
  loc_BE4D67:  = Me.Text
  loc_BE4D6C: FLdRfVar var_18C
  loc_BE4D6F: FLdPr Me
  loc_BE4D72: VCallAd Control_ID_TipoVencCbo
  loc_BE4D75: FStAdFunc var_188
  loc_BE4D78: FLdPr var_188
  loc_BE4D7B:  = Me.Text
  loc_BE4D80: FLdPr Me
  loc_BE4D83: VCallAd Control_ID_FeveVencMsk
  loc_BE4D86: FStAdFunc var_194
  loc_BE4D89: FLdPr var_194
  loc_BE4D8C: LateIdLdVar var_A8 DispID_15 0
  loc_BE4D93: PopAd
  loc_BE4D95: FLdPr Me
  loc_BE4D98: VCallAd Control_ID_VepeVencMsk
  loc_BE4D9B: FStAdFunc var_198
  loc_BE4D9E: FLdPr var_198
  loc_BE4DA1: LateIdLdVar var_C8 DispID_15 0
  loc_BE4DA8: CStrVarTmp
  loc_BE4DA9: FStStrNoPop var_1A0
  loc_BE4DAC: FLdRfVar var_A8
  loc_BE4DAF: CStrVarTmp
  loc_BE4DB0: FStStrNoPop var_19C
  loc_BE4DB3: ILdRf var_18C
  loc_BE4DB6: ILdRf var_184
  loc_BE4DB9: CI2Str
  loc_BE4DBB: ILdRf var_17C
  loc_BE4DBE: CI2Str
  loc_BE4DC0: ILdRf var_174
  loc_BE4DC3: CI2Str
  loc_BE4DC5: ILdRf var_8C
  loc_BE4DC8: CI2Str
  loc_BE4DCA: FLdPr Me
  loc_BE4DCD: MemLdRfVar from_stack_1.global_52
  loc_BE4DD0: NewIfNullPr clsvencimiento
  loc_BE4DD3: Call clsvencimiento.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_BE4DD8: FFreeStr var_8C = "": var_174 = "": var_17C = "": var_184 = "": var_18C = "": var_19C = ""
  loc_BE4DE9: FFreeAd var_94 = "": var_170 = "": var_178 = "": var_180 = "": var_188 = "": var_194 = ""
  loc_BE4DFA: FFreeVar var_A8 = ""
  loc_BE4E01: Call cmdCancelar_Click()
  loc_BE4E06: Branch loc_BE4F0D
  loc_BE4E09: ILdRf var_90
  loc_BE4E0C: LitStr "btnCancelar"
  loc_BE4E0F: EqStr
  loc_BE4E11: BranchF loc_BE4E1C
  loc_BE4E14: Call cmdCancelar_Click()
  loc_BE4E19: Branch loc_BE4F0D
  loc_BE4E1C: ILdRf var_90
  loc_BE4E1F: LitStr "btnPrimero"
  loc_BE4E22: EqStr
  loc_BE4E24: BranchF loc_BE4E38
  loc_BE4E27: FLdPr Me
  loc_BE4E2A: MemLdRfVar from_stack_1.global_52
  loc_BE4E2D: NewIfNullPr clsvencimiento
  loc_BE4E30: Call clsvencimiento.MoveFirst()
  loc_BE4E35: Branch loc_BE4F0D
  loc_BE4E38: ILdRf var_90
  loc_BE4E3B: LitStr "btnAnterior"
  loc_BE4E3E: EqStr
  loc_BE4E40: BranchF loc_BE4E54
  loc_BE4E43: FLdPr Me
  loc_BE4E46: MemLdRfVar from_stack_1.global_52
  loc_BE4E49: NewIfNullPr clsvencimiento
  loc_BE4E4C: Call clsvencimiento.MovePrevious()
  loc_BE4E51: Branch loc_BE4F0D
  loc_BE4E54: ILdRf var_90
  loc_BE4E57: LitStr "btnSiguiente"
  loc_BE4E5A: EqStr
  loc_BE4E5C: BranchF loc_BE4E70
  loc_BE4E5F: FLdPr Me
  loc_BE4E62: MemLdRfVar from_stack_1.global_52
  loc_BE4E65: NewIfNullPr clsvencimiento
  loc_BE4E68: Call clsvencimiento.MoveNext()
  loc_BE4E6D: Branch loc_BE4F0D
  loc_BE4E70: ILdRf var_90
  loc_BE4E73: LitStr "btnUltimo"
  loc_BE4E76: EqStr
  loc_BE4E78: BranchF loc_BE4E8C
  loc_BE4E7B: FLdPr Me
  loc_BE4E7E: MemLdRfVar from_stack_1.global_52
  loc_BE4E81: NewIfNullPr clsvencimiento
  loc_BE4E84: Call clsvencimiento.MoveLast()
  loc_BE4E89: Branch loc_BE4F0D
  loc_BE4E8C: ILdRf var_90
  loc_BE4E8F: LitStr "btnFiltrar"
  loc_BE4E92: EqStr
  loc_BE4E94: BranchF loc_BE4E9A
  loc_BE4E97: Branch loc_BE4F0D
  loc_BE4E9A: ILdRf var_90
  loc_BE4E9D: LitStr "btnBuscar"
  loc_BE4EA0: EqStr
  loc_BE4EA2: BranchF loc_BE4EA8
  loc_BE4EA5: Branch loc_BE4F0D
  loc_BE4EA8: ILdRf var_90
  loc_BE4EAB: LitStr "btnImprimir"
  loc_BE4EAE: EqStr
  loc_BE4EB0: BranchF loc_BE4EB6
  loc_BE4EB3: Branch loc_BE4F0D
  loc_BE4EB6: ILdRf var_90
  loc_BE4EB9: LitStr "btnAyuda"
  loc_BE4EBC: EqStr
  loc_BE4EBE: BranchF loc_BE4EED
  loc_BE4EC1: LitVar_Missing var_E8
  loc_BE4EC4: LitVar_Missing var_D8
  loc_BE4EC7: LitVar_Missing var_C8
  loc_BE4ECA: LitI4 0
  loc_BE4ECF: LitVarStr var_B8, "Opcion no disponible en esta version."
  loc_BE4ED4: FStVarCopyObj var_A8
  loc_BE4ED7: FLdRfVar var_A8
  loc_BE4EDA: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BE4EDF: FFreeVar var_A8 = "": var_C8 = "": var_D8 = ""
  loc_BE4EEA: Branch loc_BE4F0D
  loc_BE4EED: ILdRf var_90
  loc_BE4EF0: LitStr "btnSalir"
  loc_BE4EF3: EqStr
  loc_BE4EF5: BranchF loc_BE4F0D
  loc_BE4EF8: ILdRf Me
  loc_BE4EFB: FStAdNoPop
  loc_BE4EFF: ImpAdLdRf MemVar_D9C5D8
  loc_BE4F02: NewIfNullPr Global
  loc_BE4F05: Global.Unload from_stack_1
  loc_BE4F0A: FFree1Ad var_94
  loc_BE4F0D: ExitProcHresult
  loc_BE4F0E: Ary1LdFPR8
End Sub

Private Sub CodiTiliCmd_Click() 'AC3540
  'Data Table: 4C62A0
  loc_AC343C: FLdRfVar var_8C
  loc_AC343F: FLdPr Me
  loc_AC3442: VCallAd Control_ID_CodiOficTxt
  loc_AC3445: FStAdFunc var_88
  loc_AC3448: FLdPr var_88
  loc_AC344B:  = Me.Text
  loc_AC3450: ILdRf var_8C
  loc_AC3453: CUI1Str
  loc_AC3455: ImpAdLdRf MemVar_D94160
  loc_AC3458: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AC345B: Call dlgBuscarTipodeLiquidacion.ByOficinaPut(from_stack_1v)
  loc_AC3460: FFree1Str var_8C
  loc_AC3463: FFree1Ad var_88
  loc_AC3466: LitStr "SELECT * FROM tipoliqu WHERE CodiOfic = "
  loc_AC3469: FLdRfVar var_8C
  loc_AC346C: FLdPr Me
  loc_AC346F: VCallAd Control_ID_CancelButton
  loc_AC3472: FStAdFunc var_88
  loc_AC3475: FLdPr var_88
  loc_AC3478:  = dlgBuscarTipodeLiquidacion.TextBox.Text
  loc_AC347D: ILdRf var_8C
  loc_AC3480: ConcatStr
  loc_AC3481: FStStrNoPop var_90
  loc_AC3484: ImpAdLdRf MemVar_D94160
  loc_AC3487: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AC348A: Call dlgBuscarTipodeLiquidacion.sPasaSelectPut(from_stack_1v)
  loc_AC348F: FFreeStr var_8C = ""
  loc_AC3496: FFree1Ad var_88
  loc_AC3499: LitVar_Missing var_B0
  loc_AC349C: PopAdLdVar
  loc_AC349D: LitVarI4
  loc_AC34A5: PopAdLdVar
  loc_AC34A6: ImpAdLdRf MemVar_D94160
  loc_AC34A9: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AC34AC: dlgBuscarTipodeLiquidacion.Show from_stack_1, from_stack_2
  loc_AC34B1: FLdRfVar var_8C
  loc_AC34B4: ImpAdLdRf MemVar_D94160
  loc_AC34B7: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AC34BA: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaCodigoGet()
  loc_AC34BF: ILdRf var_8C
  loc_AC34C2: LitStr vbNullString
  loc_AC34C5: NeStr
  loc_AC34C7: FFree1Str var_8C
  loc_AC34CA: BranchF loc_AC352B
  loc_AC34CD: FLdRfVar var_8C
  loc_AC34D0: ImpAdLdRf MemVar_D94160
  loc_AC34D3: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AC34D6: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaCodigoGet()
  loc_AC34DB: ILdRf var_8C
  loc_AC34DE: FLdPr Me
  loc_AC34E1: VCallAd Control_ID_
  loc_AC34E4: FStAdFunc var_88
  loc_AC34E7: FLdPr var_88
  loc_AC34EA: dlgBuscarTipodeLiquidacion.TextBox.Text = from_stack_1
  loc_AC34EF: FFree1Str var_8C
  loc_AC34F2: FFree1Ad var_88
  loc_AC34F5: LitStr vbNullString
  loc_AC34F8: ImpAdLdRf MemVar_D94160
  loc_AC34FB: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AC34FE: Call dlgBuscarTipodeLiquidacion.sPasaCodigoPut(from_stack_1v)
  loc_AC3503: FLdRfVar var_8C
  loc_AC3506: ImpAdLdRf MemVar_D94160
  loc_AC3509: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AC350C: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaDetalleGet()
  loc_AC3511: ILdRf var_8C
  loc_AC3514: FLdPr Me
  loc_AC3517: VCallAd Control_ID_
  loc_AC351A: FStAdFunc var_88
  loc_AC351D: FLdPr var_88
  loc_AC3520: dlgBuscarTipodeLiquidacion.Label.Caption = from_stack_1
  loc_AC3525: FFree1Str var_8C
  loc_AC3528: FFree1Ad var_88
  loc_AC352B: FLdPr Me
  loc_AC352E: VCallAd Control_ID_CodiTiliTxt
  loc_AC3531: CVarAd
  loc_AC3535: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC353A: FFree1Var var_C0 = ""
  loc_AC353D: ExitProcHresult
End Sub

Private Sub BimeLiquTxt_GotFocus() '9C4BF8
  'Data Table: 4C62A0
  loc_9C4BE4: FLdPr Me
  loc_9C4BE7: VCallAd Control_ID_BimeLiquTxt
  loc_9C4BEA: CVarAd
  loc_9C4BEE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4BF3: FFree1Var var_94 = ""
  loc_9C4BF6: ExitProcHresult
End Sub

Private Sub BimeLiquTxt_KeyPress(KeyAscii As Integer) '9D6868
  'Data Table: 4C62A0
  loc_9D6850: LitStr "0123456789"
  loc_9D6853: FStStrCopy var_88
  loc_9D6856: FLdRfVar var_88
  loc_9D6859: ILdRf KeyAscii
  loc_9D685C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D6861: IStI2 KeyAscii
  loc_9D6864: FFree1Str var_88
  loc_9D6867: ExitProcHresult
End Sub

Private Sub BimeLiquTxt_Validate(Cancel As Boolean) 'AD814C
  'Data Table: 4C62A0
  loc_AD8010: FLdRfVar var_8A
  loc_AD8013: FLdPr Me
  loc_AD8016: VCallAd Control_ID_cmdCancelar
  loc_AD8019: FStAdFunc var_88
  loc_AD801C: FLdPr var_88
  loc_AD801F:  = Me.Value
  loc_AD8024: FLdI2 var_8A
  loc_AD8027: NotI4
  loc_AD8028: FLdRfVar var_92
  loc_AD802B: FLdPr Me
  loc_AD802E: VCallAd Control_ID_BimeLiquTxt
  loc_AD8031: FStAdFunc var_90
  loc_AD8034: FLdPr var_90
  loc_AD8037:  = Me.Enabled
  loc_AD803C: FLdI2 var_92
  loc_AD803F: AndI4
  loc_AD8040: FFreeAd var_88 = ""
  loc_AD8047: BranchF loc_AD8148
  loc_AD804A: FLdRfVar var_98
  loc_AD804D: FLdPr Me
  loc_AD8050: VCallAd Control_ID_BimeLiquTxt
  loc_AD8053: FStAdFunc var_88
  loc_AD8056: FLdPr var_88
  loc_AD8059:  = Me.Text
  loc_AD805E: ILdRf var_98
  loc_AD8061: CR8Str
  loc_AD8063: LitI2_Byte &HC
  loc_AD8065: CR8I2
  loc_AD8066: LeR8
  loc_AD8067: FFree1Str var_98
  loc_AD806A: FFree1Ad var_88
  loc_AD806D: BranchF loc_AD811B
  loc_AD8070: FLdRfVar var_98
  loc_AD8073: FLdPr Me
  loc_AD8076: VCallAd Control_ID_BimeLiquTxt
  loc_AD8079: FStAdFunc var_88
  loc_AD807C: FLdPr var_88
  loc_AD807F:  = Me.Text
  loc_AD8084: FLdZeroAd var_98
  loc_AD8087: CVarStr var_A8
  loc_AD808A: ImpAdCallI2 IsNumeric()
  loc_AD808F: NotI4
  loc_AD8090: FFree1Ad var_88
  loc_AD8093: FFree1Var var_A8 = ""
  loc_AD8096: BranchF loc_AD80B0
  loc_AD8099: LitStr "0"
  loc_AD809C: FLdPr Me
  loc_AD809F: VCallAd Control_ID_BimeLiquTxt
  loc_AD80A2: FStAdFunc var_88
  loc_AD80A5: FLdPr var_88
  loc_AD80A8: Me.Text = from_stack_1
  loc_AD80AD: FFree1Ad var_88
  loc_AD80B0: FLdRfVar var_98
  loc_AD80B3: FLdPr Me
  loc_AD80B6: VCallAd Control_ID_BimeLiquTxt
  loc_AD80B9: FStAdFunc var_88
  loc_AD80BC: FLdPr var_88
  loc_AD80BF:  = Me.Text
  loc_AD80C4: LitI2_Byte 0
  loc_AD80C6: LitI2_Byte 0
  loc_AD80C8: ILdRf var_98
  loc_AD80CB: LitStr "Ingrese Bimestre"
  loc_AD80CE: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_AD80D3: FStStrNoPop var_AC
  loc_AD80D6: FLdPr Me
  loc_AD80D9: MemStStrCopy
  loc_AD80DD: FFreeStr var_98 = ""
  loc_AD80E4: FFree1Ad var_88
  loc_AD80E7: FLdPr Me
  loc_AD80EA: MemLdStr global_60
  loc_AD80ED: LitStr vbNullString
  loc_AD80F0: NeStr
  loc_AD80F2: BranchF loc_AD8118
  loc_AD80F5: FLdPr Me
  loc_AD80F8: MemLdStr global_60
  loc_AD80FB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD8100: FLdPr Me
  loc_AD8103: VCallAd Control_ID_BimeLiquTxt
  loc_AD8106: CVarAd
  loc_AD810A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD810F: FFree1Var var_A8 = ""
  loc_AD8112: LitI2_Byte &HFF
  loc_AD8114: IStI2 Cancel
  loc_AD8117: ExitProcHresult
  loc_AD8118: Branch loc_AD8148
  loc_AD811B: LitStr "Ingrese un Valor entre 1 y 12 para el Mes, Bimestre, Trimestre, Cuatrimestre, Semestre o Anual"
  loc_AD811E: FLdPr Me
  loc_AD8121: MemStStrCopy
  loc_AD8125: FLdPr Me
  loc_AD8128: MemLdStr global_60
  loc_AD812B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD8130: FLdPr Me
  loc_AD8133: VCallAd Control_ID_BimeLiquTxt
  loc_AD8136: CVarAd
  loc_AD813A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD813F: FFree1Var var_A8 = ""
  loc_AD8142: LitI2_Byte &HFF
  loc_AD8144: IStI2 Cancel
  loc_AD8147: ExitProcHresult
  loc_AD8148: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'A872D4
  'Data Table: 4C62A0
  loc_A87238: LitVarStr var_94, vbNullString
  loc_A8723D: PopAdLdVar
  loc_A8723E: FLdPr Me
  loc_A87241: VCallAd Control_ID_FiltroMsk
  loc_A87244: FStAdFunc var_A8
  loc_A87247: FLdPr var_A8
  loc_A8724A: LateIdSt
  loc_A8724F: FFree1Ad var_A8
  loc_A87252: LitVarStr var_94, vbNullString
  loc_A87257: PopAdLdVar
  loc_A87258: FLdPr Me
  loc_A8725B: VCallAd Control_ID_FiltroMsk
  loc_A8725E: FStAdFunc var_A8
  loc_A87261: FLdPr var_A8
  loc_A87264: LateIdSt
  loc_A87269: FFree1Ad var_A8
  loc_A8726C: FLdRfVar var_AA
  loc_A8726F: FLdPr Me
  loc_A87272: VCallAd Control_ID_FiltroCbo
  loc_A87275: FStAdFunc var_A8
  loc_A87278: FLdPr var_A8
  loc_A8727B:  = Me.ListIndex
  loc_A87280: FLdI2 var_AA
  loc_A87283: FStI2 var_AC
  loc_A87286: FFree1Ad var_A8
  loc_A87289: FLdI2 var_AC
  loc_A8728C: LitI2_Byte 0
  loc_A8728E: EqI2
  loc_A8728F: BranchF loc_A872AF
  loc_A87292: LitVarStr var_94, "####"
  loc_A87297: PopAdLdVar
  loc_A87298: FLdPr Me
  loc_A8729B: VCallAd Control_ID_FiltroMsk
  loc_A8729E: FStAdFunc var_A8
  loc_A872A1: FLdPr var_A8
  loc_A872A4: LateIdSt
  loc_A872A9: FFree1Ad var_A8
  loc_A872AC: Branch loc_A872D2
  loc_A872AF: FLdI2 var_AC
  loc_A872B2: LitI2_Byte 1
  loc_A872B4: EqI2
  loc_A872B5: BranchF loc_A872D2
  loc_A872B8: LitVarStr var_94, "#"
  loc_A872BD: PopAdLdVar
  loc_A872BE: FLdPr Me
  loc_A872C1: VCallAd Control_ID_FiltroMsk
  loc_A872C4: FStAdFunc var_A8
  loc_A872C7: FLdPr var_A8
  loc_A872CA: LateIdSt
  loc_A872CF: FFree1Ad var_A8
  loc_A872D2: ExitProcHresult
End Sub

Private Sub CodiOficTxt_GotFocus() '9C7508
  'Data Table: 4C62A0
  loc_9C74F4: FLdPr Me
  loc_9C74F7: VCallAd Control_ID_CodiOficTxt
  loc_9C74FA: CVarAd
  loc_9C74FE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7503: FFree1Var var_94 = ""
  loc_9C7506: ExitProcHresult
End Sub

Private Sub CodiOficTxt_KeyPress(KeyAscii As Integer) '9D694C
  'Data Table: 4C62A0
  loc_9D6934: LitStr "0123456789"
  loc_9D6937: FStStrCopy var_88
  loc_9D693A: FLdRfVar var_88
  loc_9D693D: ILdRf KeyAscii
  loc_9D6940: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D6945: IStI2 KeyAscii
  loc_9D6948: FFree1Str var_88
  loc_9D694B: ExitProcHresult
End Sub

Private Sub CodiOficTxt_Validate(Cancel As Boolean) 'AB3E4C
  'Data Table: 4C62A0
  loc_AB3D6C: FLdRfVar var_8A
  loc_AB3D6F: FLdPr Me
  loc_AB3D72: VCallAd Control_ID_cmdCancelar
  loc_AB3D75: FStAdFunc var_88
  loc_AB3D78: FLdPr var_88
  loc_AB3D7B:  = Me.Value
  loc_AB3D80: FLdI2 var_8A
  loc_AB3D83: NotI4
  loc_AB3D84: FLdRfVar var_92
  loc_AB3D87: FLdPr Me
  loc_AB3D8A: VCallAd Control_ID_CodiOficTxt
  loc_AB3D8D: FStAdFunc var_90
  loc_AB3D90: FLdPr var_90
  loc_AB3D93:  = Me.Enabled
  loc_AB3D98: FLdI2 var_92
  loc_AB3D9B: AndI4
  loc_AB3D9C: FFreeAd var_88 = ""
  loc_AB3DA3: BranchF loc_AB3E49
  loc_AB3DA6: FLdRfVar var_98
  loc_AB3DA9: FLdPr Me
  loc_AB3DAC: VCallAd Control_ID_CodiOficTxt
  loc_AB3DAF: FStAdFunc var_88
  loc_AB3DB2: FLdPr var_88
  loc_AB3DB5:  = Me.Text
  loc_AB3DBA: ILdRf var_98
  loc_AB3DBD: ImpAdCallI2 Proc_18_24_A57368()
  loc_AB3DC2: FStStrNoPop var_9C
  loc_AB3DC5: FLdPr Me
  loc_AB3DC8: MemStStrCopy
  loc_AB3DCC: FFreeStr var_98 = ""
  loc_AB3DD3: FFree1Ad var_88
  loc_AB3DD6: FLdPr Me
  loc_AB3DD9: MemLdStr global_60
  loc_AB3DDC: LitStr vbNullString
  loc_AB3DDF: NeStr
  loc_AB3DE1: BranchF loc_AB3E09
  loc_AB3DE4: FLdPr Me
  loc_AB3DE7: MemLdStr global_60
  loc_AB3DEA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB3DEF: FLdPr Me
  loc_AB3DF2: VCallAd Control_ID_CodiOficTxt
  loc_AB3DF5: CVarAd
  loc_AB3DF9: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB3DFE: FFree1Var var_AC = ""
  loc_AB3E01: LitI2_Byte &HFF
  loc_AB3E03: IStI2 Cancel
  loc_AB3E06: Branch loc_AB3E49
  loc_AB3E09: FLdRfVar var_98
  loc_AB3E0C: FLdPr Me
  loc_AB3E0F: VCallAd Control_ID_CodiOficTxt
  loc_AB3E12: FStAdFunc var_88
  loc_AB3E15: FLdPr var_88
  loc_AB3E18:  = Me.Text
  loc_AB3E1D: ILdRf var_98
  loc_AB3E20: CI2Str
  loc_AB3E22: ImpAdCallI2 Proc_270_20_A7A6C0()
  loc_AB3E27: FStStrNoPop var_9C
  loc_AB3E2A: FLdPr Me
  loc_AB3E2D: VCallAd Control_ID_DetaOficLbl
  loc_AB3E30: FStAdFunc var_90
  loc_AB3E33: FLdPr var_90
  loc_AB3E36: Me.Caption = from_stack_1
  loc_AB3E3B: FFreeStr var_98 = ""
  loc_AB3E42: FFreeAd var_88 = ""
  loc_AB3E49: ExitProcHresult
End Sub

Private Sub CodiTiliTxt_GotFocus() '9C4E38
  'Data Table: 4C62A0
  loc_9C4E24: FLdPr Me
  loc_9C4E27: VCallAd Control_ID_CodiTiliTxt
  loc_9C4E2A: CVarAd
  loc_9C4E2E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4E33: FFree1Var var_94 = ""
  loc_9C4E36: ExitProcHresult
End Sub

Private Sub CodiTiliTxt_KeyPress(KeyAscii As Integer) '9D6A30
  'Data Table: 4C62A0
  loc_9D6A18: LitStr "0123456789"
  loc_9D6A1B: FStStrCopy var_88
  loc_9D6A1E: FLdRfVar var_88
  loc_9D6A21: ILdRf KeyAscii
  loc_9D6A24: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D6A29: IStI2 KeyAscii
  loc_9D6A2C: FFree1Str var_88
  loc_9D6A2F: ExitProcHresult
End Sub

Private Sub CodiTiliTxt_Validate(Cancel As Boolean) 'ACCFB4
  'Data Table: 4C62A0
  loc_ACCE9C: FLdRfVar var_8A
  loc_ACCE9F: FLdPr Me
  loc_ACCEA2: VCallAd Control_ID_cmdCancelar
  loc_ACCEA5: FStAdFunc var_88
  loc_ACCEA8: FLdPr var_88
  loc_ACCEAB:  = Me.Value
  loc_ACCEB0: FLdI2 var_8A
  loc_ACCEB3: NotI4
  loc_ACCEB4: FLdRfVar var_92
  loc_ACCEB7: FLdPr Me
  loc_ACCEBA: VCallAd Control_ID_CodiTiliTxt
  loc_ACCEBD: FStAdFunc var_90
  loc_ACCEC0: FLdPr var_90
  loc_ACCEC3:  = Me.Enabled
  loc_ACCEC8: FLdI2 var_92
  loc_ACCECB: AndI4
  loc_ACCECC: FFreeAd var_88 = ""
  loc_ACCED3: BranchF loc_ACCFB3
  loc_ACCED6: FLdRfVar var_98
  loc_ACCED9: FLdPr Me
  loc_ACCEDC: VCallAd Control_ID_CodiOficTxt
  loc_ACCEDF: FStAdFunc var_88
  loc_ACCEE2: FLdPr var_88
  loc_ACCEE5:  = Me.Text
  loc_ACCEEA: FLdRfVar var_9C
  loc_ACCEED: FLdPr Me
  loc_ACCEF0: VCallAd Control_ID_CodiTiliTxt
  loc_ACCEF3: FStAdFunc var_90
  loc_ACCEF6: FLdPr var_90
  loc_ACCEF9:  = Me.Text
  loc_ACCEFE: ILdRf var_9C
  loc_ACCF01: ILdRf var_98
  loc_ACCF04: CUI1Str
  loc_ACCF06: ImpAdCallI2  = Proc_18_25_A7CBA0()
  loc_ACCF0B: FStStrNoPop var_A0
  loc_ACCF0E: FLdPr Me
  loc_ACCF11: MemStStrCopy
  loc_ACCF15: FFreeStr var_98 = "": var_9C = ""
  loc_ACCF1E: FFreeAd var_88 = ""
  loc_ACCF25: FLdPr Me
  loc_ACCF28: MemLdStr global_60
  loc_ACCF2B: LitStr vbNullString
  loc_ACCF2E: NeStr
  loc_ACCF30: BranchF loc_ACCF56
  loc_ACCF33: FLdPr Me
  loc_ACCF36: MemLdStr global_60
  loc_ACCF39: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACCF3E: FLdPr Me
  loc_ACCF41: VCallAd Control_ID_CodiTiliTxt
  loc_ACCF44: CVarAd
  loc_ACCF48: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ACCF4D: FFree1Var var_B0 = ""
  loc_ACCF50: LitI2_Byte &HFF
  loc_ACCF52: IStI2 Cancel
  loc_ACCF55: ExitProcHresult
  loc_ACCF56: FLdRfVar var_98
  loc_ACCF59: FLdPr Me
  loc_ACCF5C: VCallAd Control_ID_CodiOficTxt
  loc_ACCF5F: FStAdFunc var_88
  loc_ACCF62: FLdPr var_88
  loc_ACCF65:  = Me.Text
  loc_ACCF6A: FLdRfVar var_9C
  loc_ACCF6D: FLdPr Me
  loc_ACCF70: VCallAd Control_ID_CodiTiliTxt
  loc_ACCF73: FStAdFunc var_90
  loc_ACCF76: FLdPr var_90
  loc_ACCF79:  = Me.Text
  loc_ACCF7E: ILdRf var_9C
  loc_ACCF81: CUI1Str
  loc_ACCF83: ILdRf var_98
  loc_ACCF86: CUI1Str
  loc_ACCF88: ImpAdCallI2 Proc_270_49_A8F1B0(, )
  loc_ACCF8D: FStStrNoPop var_A0
  loc_ACCF90: FLdPr Me
  loc_ACCF93: VCallAd Control_ID_DetaTiliLbl
  loc_ACCF96: FStAdFunc var_B4
  loc_ACCF99: FLdPr var_B4
  loc_ACCF9C: Me.Caption = from_stack_1
  loc_ACCFA1: FFreeStr var_98 = "": var_9C = ""
  loc_ACCFAA: FFreeAd var_88 = "": var_90 = ""
  loc_ACCFB3: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9D6BAC
  'Data Table: 4C62A0
  loc_9D6B94: FLdPr Me
  loc_9D6B97: VCallAd Control_ID_dgdABMS
  loc_9D6B9A: FStAdFunc var_88
  loc_9D6B9D: FLdRfVar var_88
  loc_9D6BA0: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9D6BA5: FFree1Ad var_88
  loc_9D6BA8: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9D6BF8
  'Data Table: 4C62A0
  loc_9D6BE0: FLdPr Me
  loc_9D6BE3: VCallAd Control_ID_dgdABMS
  loc_9D6BE6: FStAdFunc var_88
  loc_9D6BE9: FLdRfVar var_88
  loc_9D6BEC: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9D6BF1: FFree1Ad var_88
  loc_9D6BF4: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A676B4
  'Data Table: 4C62A0
  loc_A67658: FLdRfVar var_B4
  loc_A6765B: FLdRfVar var_B0
  loc_A6765E: FLdI2 ColIndex
  loc_A67661: CVarI2 var_A8
  loc_A67664: PopAdLdVar
  loc_A67665: FLdPr Me
  loc_A67668: VCallAd Control_ID_dgdABMS
  loc_A6766B: FStAdFunc var_88
  loc_A6766E: FLdPr var_88
  loc_A67671: LateIdLdVar var_98 DispID_105 0
  loc_A67678: CastAdVar Me
  loc_A6767C: FStAdFunc var_AC
  loc_A6767F: FLdPr var_AC
  loc_A67682: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A67687: FLdPr var_B0
  loc_A6768A:  = Me.DataField
  loc_A6768F: FLdZeroAd var_B4
  loc_A67692: PopTmpLdAdStr
  loc_A67696: FLdPr Me
  loc_A67699: MemLdRfVar from_stack_1.global_52
  loc_A6769C: NewIfNullPr clsvencimiento
  loc_A6769F: Call clsvencimiento.Sort(from_stack_1v)
  loc_A676A4: FFree1Str var_B8
  loc_A676A7: FFreeAd var_88 = "": var_AC = ""
  loc_A676B0: FFree1Var var_98 = ""
  loc_A676B3: ExitProcHresult
End Sub

Private Sub FeveVencMsk_UnknownEvent_0 '9C4E80
  'Data Table: 4C62A0
  loc_9C4E6C: FLdPr Me
  loc_9C4E6F: VCallAd Control_ID_FeveVencMsk
  loc_9C4E72: CVarAd
  loc_9C4E76: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C4E7B: FFree1Var var_94 = ""
  loc_9C4E7E: ExitProcHresult
End Sub

Private Sub FeveVencMsk_UnknownEvent_8 'A921B4
  'Data Table: 4C62A0
  loc_A92114: FLdRfVar var_8A
  loc_A92117: FLdPr Me
  loc_A9211A: VCallAd Control_ID_cmdCancelar
  loc_A9211D: FStAdFunc var_88
  loc_A92120: FLdPr var_88
  loc_A92123:  = Me.Value
  loc_A92128: FLdI2 var_8A
  loc_A9212B: NotI4
  loc_A9212C: FLdPr Me
  loc_A9212F: VCallAd Control_ID_FeveVencMsk
  loc_A92132: FStAdFunc var_90
  loc_A92135: FLdPr var_90
  loc_A92138: LateIdLdVar var_A0 DispID_13 -32767
  loc_A9213F: CBoolVar
  loc_A92141: AndI4
  loc_A92142: FFreeAd var_88 = ""
  loc_A92149: FFree1Var var_A0 = ""
  loc_A9214C: BranchF loc_A921B3
  loc_A9214F: FLdPr Me
  loc_A92152: VCallAd Control_ID_FeveVencMsk
  loc_A92155: FStAdFunc var_88
  loc_A92158: FLdPr var_88
  loc_A9215B: LateIdLdVar var_A0 DispID_15 0
  loc_A92162: CStrVarTmp
  loc_A92163: FStStrNoPop var_A4
  loc_A92166: ImpAdCallI2 Proc_18_6_A08898()
  loc_A9216B: FStStrNoPop var_A8
  loc_A9216E: FLdPr Me
  loc_A92171: MemStStrCopy
  loc_A92175: FFreeStr var_A4 = ""
  loc_A9217C: FFree1Ad var_88
  loc_A9217F: FFree1Var var_A0 = ""
  loc_A92182: FLdPr Me
  loc_A92185: MemLdStr global_60
  loc_A92188: LitStr vbNullString
  loc_A9218B: NeStr
  loc_A9218D: BranchF loc_A921B3
  loc_A92190: FLdPr Me
  loc_A92193: MemLdStr global_60
  loc_A92196: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A9219B: FLdPr Me
  loc_A9219E: VCallAd Control_ID_FeveVencMsk
  loc_A921A1: CVarAd
  loc_A921A5: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A921AA: FFree1Var var_A0 = ""
  loc_A921AD: LitI2_Byte &HFF
  loc_A921AF: IStI2 ColIndex
  loc_A921B2: ExitProcHresult
  loc_A921B3: ExitProcHresult
End Sub

Private Sub FeveVencMsk_KeyPress(KeyAscii As Integer) 'A25958
  'Data Table: 4C62A0
  loc_A25910: ILdI2 KeyAscii
  loc_A25913: CI4UI1
  loc_A25914: LitI4 &H20
  loc_A25919: EqI4
  loc_A2591A: BranchF loc_A25957
  loc_A2591D: LitVar_Missing var_A4
  loc_A25920: PopAdLdVar
  loc_A25921: LitVarI4
  loc_A25929: PopAdLdVar
  loc_A2592A: ImpAdLdRf MemVar_D930A4
  loc_A2592D: NewIfNullPr frmCalendario
  loc_A25930: frmCalendario.Show from_stack_1, from_stack_2
  loc_A25935: ImpAdLdRf MemVar_D93028
  loc_A25938: CDargRef
  loc_A2593C: FLdPr Me
  loc_A2593F: VCallAd Control_ID_FeveVencMsk
  loc_A25942: FStAdFunc var_A8
  loc_A25945: FLdPr var_A8
  loc_A25948: LateIdSt
  loc_A2594D: FFree1Ad var_A8
  loc_A25950: LitStr vbNullString
  loc_A25953: ImpAdStStrCopy MemVar_D93028
  loc_A25957: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'AC8E94
  'Data Table: 4C62A0
  loc_AC8D8C: LitI2_Byte 0
  loc_AC8D8E: FLdPr Me
  loc_AC8D91: MemStI2 global_56
  loc_AC8D94: LitI2_Byte 0
  loc_AC8D96: ILdRf Me
  loc_AC8D99: CastAd
  loc_AC8D9C: FStAdFunc var_88
  loc_AC8D9F: FLdRfVar var_88
  loc_AC8DA2: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AC8DA7: FFree1Ad var_88
  loc_AC8DAA: LitI4 0
  loc_AC8DAF: LitI4 0
  loc_AC8DB4: FLdRfVar var_8C
  loc_AC8DB7: Redim
  loc_AC8DC1: FLdPr Me
  loc_AC8DC4: VCallAd Control_ID_dgdABMS
  loc_AC8DC7: CVarAd
  loc_AC8DCB: ParmAry1St
  loc_AC8DD1: FLdRfVar var_8C
  loc_AC8DD4: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AC8DD9: FLdRfVar var_8C
  loc_AC8DDC: Erase
  loc_AC8DDD: ILdRf Me
  loc_AC8DE0: CastAd
  loc_AC8DE3: FStAdFunc var_88
  loc_AC8DE6: FLdRfVar var_88
  loc_AC8DE9: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AC8DEE: FFree1Ad var_88
  loc_AC8DF1: FLdPr Me
  loc_AC8DF4: MemLdRfVar from_stack_1.global_52
  loc_AC8DF7: NewIfNullAd
  loc_AC8DFA: FStAd var_A0 
  loc_AC8DFE: FLdRfVar var_A0
  loc_AC8E01: CVarRef
  loc_AC8E06: ILdRf Me
  loc_AC8E09: CastAd
  loc_AC8E0C: FStAdFunc var_88
  loc_AC8E0F: FLdRfVar var_88
  loc_AC8E12: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_AC8E17: ILdRf var_A0
  loc_AC8E1A: CastAd
  loc_AC8E1D: FLdPr Me
  loc_AC8E20: MemStAdFunc
  loc_AC8E24: FFreeAd var_88 = ""
  loc_AC8E2B: LitI4 0
  loc_AC8E30: LitI4 1
  loc_AC8E35: FLdRfVar var_8C
  loc_AC8E38: Redim
  loc_AC8E42: FLdPr Me
  loc_AC8E45: VCallAd Control_ID_FiltroCbo
  loc_AC8E48: CVarAd
  loc_AC8E4C: ParmAry1St
  loc_AC8E52: FLdPr Me
  loc_AC8E55: VCallAd Control_ID_FiltroMsk
  loc_AC8E58: CVarAd
  loc_AC8E5C: ParmAry1St
  loc_AC8E62: FLdRfVar var_8C
  loc_AC8E65: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AC8E6A: FLdRfVar var_8C
  loc_AC8E6D: Erase
  loc_AC8E6E: FLdPr Me
  loc_AC8E71: VCallAd Control_ID_dgdABMS
  loc_AC8E74: FStAdFunc var_A0
  loc_AC8E77: FLdPr Me
  loc_AC8E7A: MemLdStr global_64
  loc_AC8E7D: FLdZeroAd var_A0
  loc_AC8E80: FStAdFunc var_88
  loc_AC8E83: FLdRfVar var_88
  loc_AC8E86: ImpAdCallFPR4 Proc_272_56_ACCA08(, )
  loc_AC8E8B: FFreeAd var_88 = ""
  loc_AC8E92: ExitProcHresult
End Sub

Private Sub Form_Load() 'B24320
  'Data Table: 4C62A0
  loc_B2406C: LitI2_Byte 0
  loc_B2406E: CR8I2
  loc_B2406F: PopFPR4
  loc_B24070: FLdPr Me
  loc_B24073: Me.Left = from_stack_1s
  loc_B24078: LitI2_Byte 0
  loc_B2407A: CR8I2
  loc_B2407B: PopFPR4
  loc_B2407C: FLdPr Me
  loc_B2407F: Me.Top = from_stack_1s
  loc_B24084: Call Proc_129_34_AA86B4()
  loc_B24089: LitVar_Missing var_94
  loc_B2408C: PopAdLdVar
  loc_B2408D: LitStr "Mensual"
  loc_B24090: FLdPr Me
  loc_B24093: VCallAd Control_ID_TipoVencCbo
  loc_B24096: FStAdFunc var_98
  loc_B24099: FLdPr var_98
  loc_B2409C: Me.AddItem from_stack_1, from_stack_2
  loc_B240A1: FFree1Ad var_98
  loc_B240A4: LitVar_Missing var_94
  loc_B240A7: PopAdLdVar
  loc_B240A8: LitStr "Bimestral"
  loc_B240AB: FLdPr Me
  loc_B240AE: VCallAd Control_ID_TipoVencCbo
  loc_B240B1: FStAdFunc var_98
  loc_B240B4: FLdPr var_98
  loc_B240B7: Me.AddItem from_stack_1, from_stack_2
  loc_B240BC: FFree1Ad var_98
  loc_B240BF: LitVar_Missing var_94
  loc_B240C2: PopAdLdVar
  loc_B240C3: LitStr "Semestral"
  loc_B240C6: FLdPr Me
  loc_B240C9: VCallAd Control_ID_TipoVencCbo
  loc_B240CC: FStAdFunc var_98
  loc_B240CF: FLdPr var_98
  loc_B240D2: Me.AddItem from_stack_1, from_stack_2
  loc_B240D7: FFree1Ad var_98
  loc_B240DA: LitVar_Missing var_94
  loc_B240DD: PopAdLdVar
  loc_B240DE: LitStr "Anual"
  loc_B240E1: FLdPr Me
  loc_B240E4: VCallAd Control_ID_TipoVencCbo
  loc_B240E7: FStAdFunc var_98
  loc_B240EA: FLdPr var_98
  loc_B240ED: Me.AddItem from_stack_1, from_stack_2
  loc_B240F2: FFree1Ad var_98
  loc_B240F5: LitStr "PeriLiqu"
  loc_B240F8: FLdPr Me
  loc_B240FB: VCallAd Control_ID_PeriLiquTxt
  loc_B240FE: FStAdFunc var_98
  loc_B24101: FLdPr var_98
  loc_B24104: Me.DataField = from_stack_1
  loc_B24109: FFree1Ad var_98
  loc_B2410C: LitStr "BimeLiqu"
  loc_B2410F: FLdPr Me
  loc_B24112: VCallAd Control_ID_BimeLiquTxt
  loc_B24115: FStAdFunc var_98
  loc_B24118: FLdPr var_98
  loc_B2411B: Me.DataField = from_stack_1
  loc_B24120: FFree1Ad var_98
  loc_B24123: LitStr "CodiOfic"
  loc_B24126: FLdPr Me
  loc_B24129: VCallAd Control_ID_CodiOficTxt
  loc_B2412C: FStAdFunc var_98
  loc_B2412F: FLdPr var_98
  loc_B24132: Me.DataField = from_stack_1
  loc_B24137: FFree1Ad var_98
  loc_B2413A: LitStr "DetaOfic"
  loc_B2413D: FLdPr Me
  loc_B24140: VCallAd Control_ID_DetaOficLbl
  loc_B24143: FStAdFunc var_98
  loc_B24146: FLdPr var_98
  loc_B24149: Me.DataField = from_stack_1
  loc_B2414E: FFree1Ad var_98
  loc_B24151: LitStr "CodiTili"
  loc_B24154: FLdPr Me
  loc_B24157: VCallAd Control_ID_CodiTiliTxt
  loc_B2415A: FStAdFunc var_98
  loc_B2415D: FLdPr var_98
  loc_B24160: Me.DataField = from_stack_1
  loc_B24165: FFree1Ad var_98
  loc_B24168: LitStr "DetaTili"
  loc_B2416B: FLdPr Me
  loc_B2416E: VCallAd Control_ID_DetaTiliLbl
  loc_B24171: FStAdFunc var_98
  loc_B24174: FLdPr var_98
  loc_B24177: Me.DataField = from_stack_1
  loc_B2417C: FFree1Ad var_98
  loc_B2417F: LitStr "TipoVenc"
  loc_B24182: FLdPr Me
  loc_B24185: VCallAd Control_ID_TipoVencCbo
  loc_B24188: FStAdFunc var_98
  loc_B2418B: FLdPr var_98
  loc_B2418E: Me.DataField = from_stack_1
  loc_B24193: FFree1Ad var_98
  loc_B24196: LitVarStr var_94, "FeveVenc"
  loc_B2419B: PopAdLdVar
  loc_B2419C: FLdPr Me
  loc_B2419F: VCallAd Control_ID_FeveVencMsk
  loc_B241A2: FStAdFunc var_98
  loc_B241A5: FLdPr var_98
  loc_B241A8: LateIdSt
  loc_B241AD: FFree1Ad var_98
  loc_B241B0: LitVarStr var_94, "VepeVenc"
  loc_B241B5: PopAdLdVar
  loc_B241B6: FLdPr Me
  loc_B241B9: VCallAd Control_ID_VepeVencMsk
  loc_B241BC: FStAdFunc var_98
  loc_B241BF: FLdPr var_98
  loc_B241C2: LateIdSt
  loc_B241C7: FFree1Ad var_98
  loc_B241CA: ILdRf Me
  loc_B241CD: CastAd
  loc_B241D0: FStAdFunc var_98
  loc_B241D3: FLdRfVar var_98
  loc_B241D6: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_B241DB: FFree1Ad var_98
  loc_B241DE: LitI2_Byte 0
  loc_B241E0: ILdRf Me
  loc_B241E3: CastAd
  loc_B241E6: FStAdFunc var_98
  loc_B241E9: FLdRfVar var_98
  loc_B241EC: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_B241F1: FFree1Ad var_98
  loc_B241F4: LitVarI2 var_94, 0
  loc_B241F9: PopAdLdVar
  loc_B241FA: LitStr "Periodo"
  loc_B241FD: FLdPr Me
  loc_B24200: VCallAd Control_ID_FiltroCbo
  loc_B24203: FStAdFunc var_98
  loc_B24206: FLdPr var_98
  loc_B24209: Me.AddItem from_stack_1, from_stack_2
  loc_B2420E: FFree1Ad var_98
  loc_B24211: LitVarI2 var_94, 1
  loc_B24216: PopAdLdVar
  loc_B24217: LitStr "Oficina"
  loc_B2421A: FLdPr Me
  loc_B2421D: VCallAd Control_ID_FiltroCbo
  loc_B24220: FStAdFunc var_98
  loc_B24223: FLdPr var_98
  loc_B24226: Me.AddItem from_stack_1, from_stack_2
  loc_B2422B: FFree1Ad var_98
  loc_B2422E: LitI2_Byte 0
  loc_B24230: FLdPr Me
  loc_B24233: VCallAd Control_ID_FiltroCbo
  loc_B24236: FStAdFunc var_98
  loc_B24239: FLdPr var_98
  loc_B2423C: Me.ListIndex = from_stack_1
  loc_B24241: FFree1Ad var_98
  loc_B24244: LitI4 0
  loc_B24249: LitI4 1
  loc_B2424E: FLdRfVar var_AC
  loc_B24251: Redim
  loc_B2425B: FLdPr Me
  loc_B2425E: VCallAd Control_ID_FiltroCbo
  loc_B24261: CVarAd
  loc_B24265: ParmAry1St
  loc_B2426B: FLdPr Me
  loc_B2426E: VCallAd Control_ID_FiltroMsk
  loc_B24271: CVarAd
  loc_B24275: ParmAry1St
  loc_B2427B: FLdRfVar var_AC
  loc_B2427E: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B24283: FLdRfVar var_AC
  loc_B24286: Erase
  loc_B24287: LitI4 0
  loc_B2428C: LitI4 1
  loc_B24291: FLdRfVar var_AC
  loc_B24294: Redim
  loc_B2429E: FLdPr Me
  loc_B242A1: MemLdRfVar from_stack_1.global_52
  loc_B242A4: NewIfNullAd
  loc_B242A7: FStAd var_98 
  loc_B242AB: FLdRfVar var_98
  loc_B242AE: CVarRef
  loc_B242B3: ParmAry1St
  loc_B242B9: FLdPr Me
  loc_B242BC: VCallAd Control_ID_dgdABMS
  loc_B242BF: CVarAd
  loc_B242C3: ParmAry1St
  loc_B242C9: FLdRfVar var_AC
  loc_B242CC: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B242D1: ILdRf var_98
  loc_B242D4: CastAd
  loc_B242D7: FLdPr Me
  loc_B242DA: MemStAdFunc
  loc_B242DE: FLdRfVar var_AC
  loc_B242E1: Erase
  loc_B242E2: FFree1Ad var_98
  loc_B242E5: FLdPr Me
  loc_B242E8: MemLdRfVar from_stack_1.global_52
  loc_B242EB: NewIfNullAd
  loc_B242EE: FStAd var_D0 
  loc_B242F2: FLdRfVar var_D0
  loc_B242F5: CVarRef
  loc_B242FA: ILdRf Me
  loc_B242FD: CastAd
  loc_B24300: FStAdFunc var_98
  loc_B24303: FLdRfVar var_98
  loc_B24306: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_B2430B: ILdRf var_D0
  loc_B2430E: CastAd
  loc_B24311: FLdPr Me
  loc_B24314: MemStAdFunc
  loc_B24318: FFreeAd var_98 = ""
  loc_B2431F: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A628A0
  'Data Table: 4C62A0
  loc_A62844: FLdRfVar var_C2
  loc_A62847: FLdRfVar var_C0
  loc_A6284A: LitVarI2 var_B8, 1
  loc_A6284F: FLdPr Me
  loc_A62852: VCallAd Control_ID_tlbABMS
  loc_A62855: FStAdFunc var_88
  loc_A62858: FLdPr var_88
  loc_A6285B: LateIdLdVar var_98 DispID_3 0
  loc_A62862: CastAdVar Me
  loc_A62866: FStAdFunc var_BC
  loc_A62869: FLdPr var_BC
  loc_A6286C:  = Me.Buttons.ControlDefault
  loc_A62871: FLdPr var_C0
  loc_A62874:  = Me.Enabled
  loc_A62879: FLdI2 var_C2
  loc_A6287C: FFreeAd var_88 = "": var_BC = ""
  loc_A62885: FFreeVar var_98 = ""
  loc_A6288C: BranchF loc_A6289D
  loc_A6288F: FLdPr Me
  loc_A62892: MemLdRfVar from_stack_1.global_52
  loc_A62895: NewIfNullPr clsvencimiento
  loc_A62898: Call clsvencimiento.Requery()
  loc_A6289D: ExitProcHresult
  loc_A6289E: Ary1LdFPR4
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9D6E58
  'Data Table: 4C62A0
  loc_9D6E40: ILdI2 KeyCode
  loc_9D6E43: ILdRf Me
  loc_9D6E46: CastAd
  loc_9D6E49: FStAdFunc var_88
  loc_9D6E4C: FLdRfVar var_88
  loc_9D6E4F: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9D6E54: FFree1Ad var_88
  loc_9D6E57: ExitProcHresult
End Sub

Private Function Proc_129_33_A06DC0(arg_C) 'A06DC0
  'Data Table: 4C62A0
  loc_A06D8C: LitStr "1234567890,."
  loc_A06D8F: FStStrCopy var_88
  loc_A06D92: FLdRfVar var_88
  loc_A06D95: ILdRf arg_C
  loc_A06D98: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A06D9D: IStI2 arg_C
  loc_A06DA0: FFree1Str var_88
  loc_A06DA3: ILdI2 arg_C
  loc_A06DA6: LitStr "."
  loc_A06DA9: ImpAdCallI2 Asc()
  loc_A06DAE: EqI2
  loc_A06DAF: BranchF loc_A06DBD
  loc_A06DB2: LitStr ","
  loc_A06DB5: ImpAdCallI2 Asc()
  loc_A06DBA: IStI2 arg_C
  loc_A06DBD: ExitProcHresult
End Function

Private Function Proc_129_34_AA86B4() 'AA86B4
  'Data Table: 4C62A0
  loc_AA8604: LitI4 &HB
  loc_AA8609: CI2I4
  loc_AA860A: FLdPr Me
  loc_AA860D: Me.MousePointer = from_stack_1
  loc_AA8612: FLdPr Me
  loc_AA8615: VCallAd Control_ID_FiltroMsk
  loc_AA8618: FStAdFunc var_88
  loc_AA861B: FLdPr var_88
  loc_AA861E: LateIdLdVar var_98 DispID_22 0
  loc_AA8625: PopAd
  loc_AA8627: FLdPr Me
  loc_AA862A: VCallAd Control_ID_FiltroMsk
  loc_AA862D: FStAdFunc var_A0
  loc_AA8630: FLdPr var_A0
  loc_AA8633: LateIdLdVar var_B0 DispID_22 0
  loc_AA863A: PopAd
  loc_AA863C: LitVarStr var_E0, vbNullString
  loc_AA8641: FStVarCopyObj var_F0
  loc_AA8644: FLdRfVar var_F0
  loc_AA8647: FLdRfVar var_B0
  loc_AA864A: CStrVarTmp
  loc_AA864B: CVarStr var_D0
  loc_AA864E: FLdRfVar var_98
  loc_AA8651: CStrVarTmp
  loc_AA8652: FStStrNoPop var_9C
  loc_AA8655: LitStr vbNullString
  loc_AA8658: NeStr
  loc_AA865A: CVarBoolI2 var_C0
  loc_AA865E: FLdRfVar var_100
  loc_AA8661: ImpAdCallFPR4  = IIf(, , )
  loc_AA8666: FLdPr Me
  loc_AA8669: VCallAd Control_ID_FiltroCbo
  loc_AA866C: FStAdFuncNoPop
  loc_AA866F: FLdRfVar var_100
  loc_AA8672: CStrVarVal var_104
  loc_AA8676: FLdPr Me
  loc_AA8679: MemLdRfVar from_stack_1.global_52
  loc_AA867C: NewIfNullPr clsvencimiento
  loc_AA867F: Call clsvencimiento.sSelect(from_stack_1v, from_stack_2v)
  loc_AA8684: FFreeStr var_9C = ""
  loc_AA868B: FFreeAd var_88 = "": var_A0 = ""
  loc_AA8694: FFreeVar var_98 = "": var_B0 = "": var_C0 = "": var_D0 = "": var_F0 = ""
  loc_AA86A3: LitI4 0
  loc_AA86A8: CI2I4
  loc_AA86A9: FLdPr Me
  loc_AA86AC: Me.MousePointer = from_stack_1
  loc_AA86B1: ExitProcHresult
End Function
