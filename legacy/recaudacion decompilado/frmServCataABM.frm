VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmServCataABM
  Caption = "Servicios de Catastro"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmServCataABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 12564
  ClientHeight = 9060
  Begin VB.Frame Frame1
    Left = 0
    Top = 4440
    Width = 9600
    Height = 3240
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
    Begin VB.TextBox CodiTiliTxt
      ForeColor = &HFF0000&
      Left = 2415
      Top = 2160
      Width = 495
      Height = 345
      TabIndex = 11
      MaxLength = 2
      DataField = "CodiTili"
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
    Begin VB.OptionButton PorCantidadOpt
      Caption = "Por Cantidad"
      Left = 4560
      Top = 1680
      Width = 1935
      Height = 375
      TabIndex = 9
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
    Begin VB.OptionButton PorMetroOpt
      Caption = "Por Metro"
      Left = 2400
      Top = 1680
      Width = 1935
      Height = 375
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
    Begin VB.TextBox PeriOrdeTxt
      ForeColor = &HFF0000&
      Left = 2400
      Top = 240
      Width = 795
      Height = 360
      TabIndex = 3
      MaxLength = 4
      DataField = "PeriOrde"
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
    Begin VB.TextBox ImpoSecaTxt
      ForeColor = &HFF0000&
      Left = 2400
      Top = 2640
      Width = 1035
      Height = 360
      TabIndex = 14
      MaxLength = 10
      DataField = "ImpoSeca"
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
    Begin VB.TextBox DetaSecaTxt
      ForeColor = &HFF0000&
      Left = 2400
      Top = 1200
      Width = 7035
      Height = 360
      TabIndex = 7
      MaxLength = 40
      DataField = "DetaSeca"
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
    Begin VB.TextBox CodiSecaTxt
      ForeColor = &HFF0000&
      Left = 2400
      Top = 720
      Width = 555
      Height = 360
      TabIndex = 5
      MaxLength = 3
      DataField = "CodiSeca"
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
      Caption = "Forma:"
      Left = 1560
      Top = 1680
      Width = 750
      Height = 300
      TabIndex = 15
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
      Caption = "Tipo de Liquidacion:"
      Left = 240
      Top = 2160
      Width = 2100
      Height = 300
      TabIndex = 10
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
    Begin VB.Label DetaTiliLbl
      Left = 3000
      Top = 2160
      Width = 5535
      Height = 345
      TabIndex = 12
      DataField = "DetaTili"
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
      Caption = "Periodo:"
      Left = 1500
      Top = 240
      Width = 870
      Height = 300
      TabIndex = 2
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
      Caption = "Unidades Tributarias:"
      Left = 120
      Top = 2640
      Width = 2250
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
    Begin VB.Label Label3
      Caption = "Detalle:"
      Left = 1560
      Top = 1200
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
      Caption = "Código:"
      Left = 1560
      Top = 720
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
    Width = 9600
    Height = 3315
    TabIndex = 0
    OleObjectBlob = "frmServCataABM.frx":324A
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmServCataABM.frx":34D2
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 12564
    Height = 636
    TabIndex = 16
    OleObjectBlob = "frmServCataABM.frx":B050
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 17
      TabStop = 0   'False
      Picture = "frmServCataABM.frx":B5AC
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmServCataABM"


Private Sub cmdCancelar_Click() 'A93E98
  'Data Table: 47B61C
  loc_A93DF8: LitI2_Byte 0
  loc_A93DFA: FLdPr Me
  loc_A93DFD: MemStI2 global_56
  loc_A93E00: LitI2_Byte 0
  loc_A93E02: ILdRf Me
  loc_A93E05: CastAd
  loc_A93E08: FStAdFunc var_88
  loc_A93E0B: FLdRfVar var_88
  loc_A93E0E: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_A93E13: FFree1Ad var_88
  loc_A93E16: LitI4 0
  loc_A93E1B: LitI4 0
  loc_A93E20: FLdRfVar var_8C
  loc_A93E23: Redim
  loc_A93E2D: FLdPr Me
  loc_A93E30: VCallAd Control_ID_dgdABMS
  loc_A93E33: CVarAd
  loc_A93E37: ParmAry1St
  loc_A93E3D: FLdRfVar var_8C
  loc_A93E40: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A93E45: FLdRfVar var_8C
  loc_A93E48: Erase
  loc_A93E49: FLdPr Me
  loc_A93E4C: MemLdRfVar from_stack_1.global_52
  loc_A93E4F: NewIfNullAd
  loc_A93E52: FStAd var_A0 
  loc_A93E56: FLdRfVar var_A0
  loc_A93E59: CVarRef
  loc_A93E5E: ILdRf Me
  loc_A93E61: CastAd
  loc_A93E64: FStAdFunc var_88
  loc_A93E67: FLdRfVar var_88
  loc_A93E6A: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_A93E6F: ILdRf var_A0
  loc_A93E72: CastAd
  loc_A93E75: FLdPr Me
  loc_A93E78: MemStAdFunc
  loc_A93E7C: FFreeAd var_88 = ""
  loc_A93E83: ILdRf Me
  loc_A93E86: CastAd
  loc_A93E89: FStAdFunc var_88
  loc_A93E8C: FLdRfVar var_88
  loc_A93E8F: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_A93E94: FFree1Ad var_88
  loc_A93E97: ExitProcHresult
End Sub

Private Sub CodiSecaTxt_GotFocus() '9BD7D0
  'Data Table: 47B61C
  loc_9BD7BC: FLdPr Me
  loc_9BD7BF: VCallAd Control_ID_CodiSecaTxt
  loc_9BD7C2: CVarAd
  loc_9BD7C6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD7CB: FFree1Var var_94 = ""
  loc_9BD7CE: ExitProcHresult
End Sub

Private Sub CodiSecaTxt_KeyPress(KeyAscii As Integer) '9DBAF0
  'Data Table: 47B61C
  loc_9DBAD8: LitStr "0123456789"
  loc_9DBADB: FStStrCopy var_88
  loc_9DBADE: FLdRfVar var_88
  loc_9DBAE1: ILdRf KeyAscii
  loc_9DBAE4: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DBAE9: IStI2 KeyAscii
  loc_9DBAEC: FFree1Str var_88
  loc_9DBAEF: ExitProcHresult
End Sub

Private Sub CodiSecaTxt_Validate(Cancel As Boolean) 'ABF4A4
  'Data Table: 47B61C
  loc_ABF3AC: FLdRfVar var_8A
  loc_ABF3AF: FLdPr Me
  loc_ABF3B2: VCallAd Control_ID_CodiSecaTxt
  loc_ABF3B5: FStAdFunc var_88
  loc_ABF3B8: FLdPr var_88
  loc_ABF3BB:  = Me.Enabled
  loc_ABF3C0: FLdI2 var_8A
  loc_ABF3C3: LitI2_Byte &HFF
  loc_ABF3C5: EqI2
  loc_ABF3C6: FFree1Ad var_88
  loc_ABF3C9: BranchF loc_ABF4A3
  loc_ABF3CC: FLdRfVar var_90
  loc_ABF3CF: FLdPr Me
  loc_ABF3D2: VCallAd Control_ID_CodiSecaTxt
  loc_ABF3D5: FStAdFunc var_88
  loc_ABF3D8: FLdPr var_88
  loc_ABF3DB:  = Me.Text
  loc_ABF3E0: LitI2_Byte 0
  loc_ABF3E2: LitI2_Byte 0
  loc_ABF3E4: ILdRf var_90
  loc_ABF3E7: LitStr "codigo"
  loc_ABF3EA: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_ABF3EF: FStStrNoPop var_94
  loc_ABF3F2: FLdPr Me
  loc_ABF3F5: MemStStrCopy
  loc_ABF3F9: FFreeStr var_90 = ""
  loc_ABF400: FFree1Ad var_88
  loc_ABF403: FLdPr Me
  loc_ABF406: MemLdStr global_60
  loc_ABF409: LitStr vbNullString
  loc_ABF40C: NeStr
  loc_ABF40E: BranchF loc_ABF434
  loc_ABF411: FLdPr Me
  loc_ABF414: MemLdStr global_60
  loc_ABF417: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABF41C: FLdPr Me
  loc_ABF41F: VCallAd Control_ID_CodiSecaTxt
  loc_ABF422: CVarAd
  loc_ABF426: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABF42B: FFree1Var var_A4 = ""
  loc_ABF42E: LitI2_Byte &HFF
  loc_ABF430: IStI2 Cancel
  loc_ABF433: ExitProcHresult
  loc_ABF434: FLdRfVar var_94
  loc_ABF437: FLdRfVar var_90
  loc_ABF43A: FLdPr Me
  loc_ABF43D: VCallAd Control_ID_CodiSecaTxt
  loc_ABF440: FStAdFunc var_88
  loc_ABF443: FLdPr var_88
  loc_ABF446:  = Me.Text
  loc_ABF44B: ILdRf var_90
  loc_ABF44E: CI2Str
  loc_ABF450: FLdPr Me
  loc_ABF453: MemLdRfVar from_stack_1.global_52
  loc_ABF456: NewIfNullPr clsservcata
  loc_ABF459: from_stack_2v = clsservcata.ValidaClave(from_stack_1v)
  loc_ABF45E: ILdRf var_94
  loc_ABF461: FLdPr Me
  loc_ABF464: MemStStrCopy
  loc_ABF468: FFreeStr var_90 = ""
  loc_ABF46F: FFree1Ad var_88
  loc_ABF472: FLdPr Me
  loc_ABF475: MemLdStr global_60
  loc_ABF478: LitStr vbNullString
  loc_ABF47B: NeStr
  loc_ABF47D: BranchF loc_ABF4A3
  loc_ABF480: FLdPr Me
  loc_ABF483: MemLdStr global_60
  loc_ABF486: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABF48B: FLdPr Me
  loc_ABF48E: VCallAd Control_ID_CodiSecaTxt
  loc_ABF491: CVarAd
  loc_ABF495: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABF49A: FFree1Var var_A4 = ""
  loc_ABF49D: LitI2_Byte &HFF
  loc_ABF49F: IStI2 Cancel
  loc_ABF4A2: ExitProcHresult
  loc_ABF4A3: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BA51B4
  'Data Table: 47B61C
  loc_BA4BC8: ILdRf Button
  loc_BA4BCB: FStAd var_88 
  loc_BA4BCF: FLdRfVar var_90
  loc_BA4BD2: FLdPr var_88
  loc_BA4BD5:  = Me.Key
  loc_BA4BDA: FLdZeroAd var_90
  loc_BA4BDD: FStStr var_94
  loc_BA4BE0: ILdRf var_94
  loc_BA4BE3: LitStr "btnCrear"
  loc_BA4BE6: EqStr
  loc_BA4BE8: BranchF loc_BA4D65
  loc_BA4BEB: LitI2_Byte 1
  loc_BA4BED: FLdPr Me
  loc_BA4BF0: MemStI2 global_56
  loc_BA4BF3: ILdRf Me
  loc_BA4BF6: CastAd
  loc_BA4BF9: FStAdFunc var_98
  loc_BA4BFC: FLdRfVar var_98
  loc_BA4BFF: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BA4C04: FFree1Ad var_98
  loc_BA4C07: LitI4 0
  loc_BA4C0C: LitI4 0
  loc_BA4C11: FLdRfVar var_9C
  loc_BA4C14: Redim
  loc_BA4C1E: FLdPr Me
  loc_BA4C21: VCallAd Control_ID_dgdABMS
  loc_BA4C24: CVarAd
  loc_BA4C28: ParmAry1St
  loc_BA4C2E: FLdRfVar var_9C
  loc_BA4C31: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BA4C36: FLdRfVar var_9C
  loc_BA4C39: Erase
  loc_BA4C3A: ILdRf Me
  loc_BA4C3D: CastAd
  loc_BA4C40: FStAdFunc var_98
  loc_BA4C43: FLdRfVar var_98
  loc_BA4C46: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BA4C4B: FFree1Ad var_98
  loc_BA4C4E: ILdRf Me
  loc_BA4C51: CastAd
  loc_BA4C54: FStAdFunc var_98
  loc_BA4C57: FLdRfVar var_98
  loc_BA4C5A: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_BA4C5F: FFree1Ad var_98
  loc_BA4C62: LitI4 0
  loc_BA4C67: LitI4 5
  loc_BA4C6C: FLdRfVar var_9C
  loc_BA4C6F: Redim
  loc_BA4C79: FLdPr Me
  loc_BA4C7C: VCallAd Control_ID_CodiSecaTxt
  loc_BA4C7F: CVarAd
  loc_BA4C83: ParmAry1St
  loc_BA4C89: FLdPr Me
  loc_BA4C8C: VCallAd Control_ID_DetaSecaTxt
  loc_BA4C8F: CVarAd
  loc_BA4C93: ParmAry1St
  loc_BA4C99: FLdPr Me
  loc_BA4C9C: VCallAd Control_ID_PorMetroOpt
  loc_BA4C9F: CVarAd
  loc_BA4CA3: ParmAry1St
  loc_BA4CA9: FLdPr Me
  loc_BA4CAC: VCallAd Control_ID_PorCantidadOpt
  loc_BA4CAF: CVarAd
  loc_BA4CB3: ParmAry1St
  loc_BA4CB9: FLdPr Me
  loc_BA4CBC: VCallAd Control_ID_CodiTiliTxt
  loc_BA4CBF: CVarAd
  loc_BA4CC3: ParmAry1St
  loc_BA4CC9: FLdPr Me
  loc_BA4CCC: VCallAd Control_ID_ImpoSecaTxt
  loc_BA4CCF: CVarAd
  loc_BA4CD3: ParmAry1St
  loc_BA4CD9: FLdRfVar var_9C
  loc_BA4CDC: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BA4CE1: FLdRfVar var_9C
  loc_BA4CE4: Erase
  loc_BA4CE5: ImpAdLdI2 MemVar_D93036
  loc_BA4CE8: CStrUI1
  loc_BA4CEA: FStStrNoPop var_90
  loc_BA4CED: FLdPr Me
  loc_BA4CF0: VCallAd Control_ID_PeriOrdeTxt
  loc_BA4CF3: FStAdFunc var_98
  loc_BA4CF6: FLdPr var_98
  loc_BA4CF9: Me.Text = from_stack_1
  loc_BA4CFE: FFree1Str var_90
  loc_BA4D01: FFree1Ad var_98
  loc_BA4D04: FLdRfVar var_FE
  loc_BA4D07: FLdPr Me
  loc_BA4D0A: MemLdRfVar from_stack_1.global_52
  loc_BA4D0D: NewIfNullPr clsservcata
  loc_BA4D10: from_stack_1v = clsservcata.NuevoRegistro()
  loc_BA4D15: FLdI2 var_FE
  loc_BA4D18: CStrUI1
  loc_BA4D1A: FStStrNoPop var_90
  loc_BA4D1D: FLdPr Me
  loc_BA4D20: VCallAd Control_ID_CodiSecaTxt
  loc_BA4D23: FStAdFunc var_98
  loc_BA4D26: FLdPr var_98
  loc_BA4D29: Me.Text = from_stack_1
  loc_BA4D2E: FFree1Str var_90
  loc_BA4D31: FFree1Ad var_98
  loc_BA4D34: LitStr "0"
  loc_BA4D37: FLdPr Me
  loc_BA4D3A: VCallAd Control_ID_CodiTiliTxt
  loc_BA4D3D: FStAdFunc var_98
  loc_BA4D40: FLdPr var_98
  loc_BA4D43: Me.Text = from_stack_1
  loc_BA4D48: FFree1Ad var_98
  loc_BA4D4B: LitStr "0"
  loc_BA4D4E: FLdPr Me
  loc_BA4D51: VCallAd Control_ID_ImpoSecaTxt
  loc_BA4D54: FStAdFunc var_98
  loc_BA4D57: FLdPr var_98
  loc_BA4D5A: Me.Text = from_stack_1
  loc_BA4D5F: FFree1Ad var_98
  loc_BA4D62: Branch loc_BA51B1
  loc_BA4D65: ILdRf var_94
  loc_BA4D68: LitStr "btnModificar"
  loc_BA4D6B: EqStr
  loc_BA4D6D: BranchF loc_BA4E66
  loc_BA4D70: FLdRfVar var_104
  loc_BA4D73: FLdPr Me
  loc_BA4D76: MemLdRfVar from_stack_1.global_52
  loc_BA4D79: NewIfNullPr clsservcata
  loc_BA4D7C: from_stack_1 = clsservcata.RecordCount
  loc_BA4D81: ILdRf var_104
  loc_BA4D84: LitI4 0
  loc_BA4D89: GtI4
  loc_BA4D8A: BranchF loc_BA4E63
  loc_BA4D8D: LitI2_Byte 2
  loc_BA4D8F: FLdPr Me
  loc_BA4D92: MemStI2 global_56
  loc_BA4D95: ILdRf Me
  loc_BA4D98: CastAd
  loc_BA4D9B: FStAdFunc var_98
  loc_BA4D9E: FLdRfVar var_98
  loc_BA4DA1: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BA4DA6: FFree1Ad var_98
  loc_BA4DA9: LitI4 0
  loc_BA4DAE: LitI4 0
  loc_BA4DB3: FLdRfVar var_9C
  loc_BA4DB6: Redim
  loc_BA4DC0: FLdPr Me
  loc_BA4DC3: VCallAd Control_ID_dgdABMS
  loc_BA4DC6: CVarAd
  loc_BA4DCA: ParmAry1St
  loc_BA4DD0: FLdRfVar var_9C
  loc_BA4DD3: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BA4DD8: FLdRfVar var_9C
  loc_BA4DDB: Erase
  loc_BA4DDC: ILdRf Me
  loc_BA4DDF: CastAd
  loc_BA4DE2: FStAdFunc var_98
  loc_BA4DE5: FLdRfVar var_98
  loc_BA4DE8: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BA4DED: FFree1Ad var_98
  loc_BA4DF0: LitI4 0
  loc_BA4DF5: LitI4 4
  loc_BA4DFA: FLdRfVar var_9C
  loc_BA4DFD: Redim
  loc_BA4E07: FLdPr Me
  loc_BA4E0A: VCallAd Control_ID_DetaSecaTxt
  loc_BA4E0D: CVarAd
  loc_BA4E11: ParmAry1St
  loc_BA4E17: FLdPr Me
  loc_BA4E1A: VCallAd Control_ID_PorCantidadOpt
  loc_BA4E1D: CVarAd
  loc_BA4E21: ParmAry1St
  loc_BA4E27: FLdPr Me
  loc_BA4E2A: VCallAd Control_ID_PorMetroOpt
  loc_BA4E2D: CVarAd
  loc_BA4E31: ParmAry1St
  loc_BA4E37: FLdPr Me
  loc_BA4E3A: VCallAd Control_ID_CodiTiliTxt
  loc_BA4E3D: CVarAd
  loc_BA4E41: ParmAry1St
  loc_BA4E47: FLdPr Me
  loc_BA4E4A: VCallAd Control_ID_ImpoSecaTxt
  loc_BA4E4D: CVarAd
  loc_BA4E51: ParmAry1St
  loc_BA4E57: FLdRfVar var_9C
  loc_BA4E5A: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BA4E5F: FLdRfVar var_9C
  loc_BA4E62: Erase
  loc_BA4E63: Branch loc_BA51B1
  loc_BA4E66: ILdRf var_94
  loc_BA4E69: LitStr "btnEliminar"
  loc_BA4E6C: EqStr
  loc_BA4E6E: BranchF loc_BA4E91
  loc_BA4E71: FLdRfVar var_104
  loc_BA4E74: FLdPr Me
  loc_BA4E77: MemLdRfVar from_stack_1.global_52
  loc_BA4E7A: NewIfNullPr clsservcata
  loc_BA4E7D: from_stack_1 = clsservcata.RecordCount
  loc_BA4E82: ILdRf var_104
  loc_BA4E85: LitI4 0
  loc_BA4E8A: GtI4
  loc_BA4E8B: BranchF loc_BA4E8E
  loc_BA4E8E: Branch loc_BA51B1
  loc_BA4E91: ILdRf var_94
  loc_BA4E94: LitStr "btnGuardar"
  loc_BA4E97: EqStr
  loc_BA4E99: BranchF loc_BA50AD
  loc_BA4E9C: LitStr vbNullString
  loc_BA4E9F: FLdPr Me
  loc_BA4EA2: MemStStrCopy
  loc_BA4EA6: LitI2_Byte 0
  loc_BA4EA8: PopTmpLdAd2 var_FE
  loc_BA4EAB: Call CodiSecaTxt_Validate(from_stack_1v)
  loc_BA4EB0: FLdPr Me
  loc_BA4EB3: MemLdStr global_60
  loc_BA4EB6: LitStr vbNullString
  loc_BA4EB9: NeStr
  loc_BA4EBB: BranchF loc_BA4EBF
  loc_BA4EBE: ExitProcHresult
  loc_BA4EBF: LitI2_Byte 0
  loc_BA4EC1: PopTmpLdAd2 var_FE
  loc_BA4EC4: Call DetaSecaTxt_Validate(from_stack_1v)
  loc_BA4EC9: FLdPr Me
  loc_BA4ECC: MemLdStr global_60
  loc_BA4ECF: LitStr vbNullString
  loc_BA4ED2: NeStr
  loc_BA4ED4: BranchF loc_BA4ED8
  loc_BA4ED7: ExitProcHresult
  loc_BA4ED8: LitI2_Byte 0
  loc_BA4EDA: PopTmpLdAd2 var_FE
  loc_BA4EDD: Call ImpoSecaTxt_Validate(from_stack_1v)
  loc_BA4EE2: FLdPr Me
  loc_BA4EE5: MemLdStr global_60
  loc_BA4EE8: LitStr vbNullString
  loc_BA4EEB: NeStr
  loc_BA4EED: BranchF loc_BA4EF1
  loc_BA4EF0: ExitProcHresult
  loc_BA4EF1: FLdPr Me
  loc_BA4EF4: MemLdI2 global_56
  loc_BA4EF7: FStI2 var_106
  loc_BA4EFA: FLdI2 var_106
  loc_BA4EFD: LitI2_Byte 1
  loc_BA4EFF: EqI2
  loc_BA4F00: BranchF loc_BA4FD3
  loc_BA4F03: FLdRfVar var_14C
  loc_BA4F06: FLdPr Me
  loc_BA4F09: VCallAd Control_ID_CodiSecaTxt
  loc_BA4F0C: FStAdFunc var_148
  loc_BA4F0F: FLdPr var_148
  loc_BA4F12:  = Me.Text
  loc_BA4F17: FLdRfVar var_154
  loc_BA4F1A: FLdPr Me
  loc_BA4F1D: VCallAd Control_ID_DetaSecaTxt
  loc_BA4F20: FStAdFunc var_150
  loc_BA4F23: FLdPr var_150
  loc_BA4F26:  = Me.Text
  loc_BA4F2B: FLdRfVar var_FE
  loc_BA4F2E: FLdPr Me
  loc_BA4F31: VCallAd Control_ID_PorMetroOpt
  loc_BA4F34: FStAdFunc var_98
  loc_BA4F37: FLdPr var_98
  loc_BA4F3A:  = Me.Value
  loc_BA4F3F: LitVarI2 var_BC, 1
  loc_BA4F44: LitVarI2 var_AC, 0
  loc_BA4F49: FLdI2 var_FE
  loc_BA4F4C: LitI2_Byte &HFF
  loc_BA4F4E: EqI2
  loc_BA4F4F: CVarBoolI2 var_118
  loc_BA4F53: FLdRfVar var_CC
  loc_BA4F56: ImpAdCallFPR4  = IIf(, , )
  loc_BA4F5B: FLdRfVar var_90
  loc_BA4F5E: FLdPr Me
  loc_BA4F61: VCallAd Control_ID_CodiTiliTxt
  loc_BA4F64: FStAdFunc var_13C
  loc_BA4F67: FLdPr var_13C
  loc_BA4F6A:  = Me.Text
  loc_BA4F6F: FLdRfVar var_144
  loc_BA4F72: FLdPr Me
  loc_BA4F75: VCallAd Control_ID_ImpoSecaTxt
  loc_BA4F78: FStAdFunc var_140
  loc_BA4F7B: FLdPr var_140
  loc_BA4F7E:  = Me.Text
  loc_BA4F83: ILdRf var_144
  loc_BA4F86: CR8Str
  loc_BA4F88: PopFPR8
  loc_BA4F89: ILdRf var_90
  loc_BA4F8C: CR8Str
  loc_BA4F8E: PopFPR8
  loc_BA4F8F: FLdRfVar var_CC
  loc_BA4F92: CUI1Var
  loc_BA4F94: LitStr "Bimestral"
  loc_BA4F97: ILdRf var_154
  loc_BA4F9A: ILdRf var_14C
  loc_BA4F9D: CI2Str
  loc_BA4F9F: FLdPr Me
  loc_BA4FA2: MemLdRfVar from_stack_1.global_52
  loc_BA4FA5: NewIfNullPr clsservcata
  loc_BA4FA8: Call clsservcata.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_BA4FAD: FFreeStr var_14C = "": var_154 = "": var_90 = ""
  loc_BA4FB8: FFreeAd var_98 = "": var_13C = "": var_140 = "": var_148 = ""
  loc_BA4FC5: FFreeVar var_118 = "": var_AC = "": var_BC = ""
  loc_BA4FD0: Branch loc_BA50A5
  loc_BA4FD3: FLdI2 var_106
  loc_BA4FD6: LitI2_Byte 2
  loc_BA4FD8: EqI2
  loc_BA4FD9: BranchF loc_BA50A5
  loc_BA4FDC: FLdRfVar var_14C
  loc_BA4FDF: FLdPr Me
  loc_BA4FE2: VCallAd Control_ID_CodiSecaTxt
  loc_BA4FE5: FStAdFunc var_148
  loc_BA4FE8: FLdPr var_148
  loc_BA4FEB:  = Me.Text
  loc_BA4FF0: FLdRfVar var_154
  loc_BA4FF3: FLdPr Me
  loc_BA4FF6: VCallAd Control_ID_DetaSecaTxt
  loc_BA4FF9: FStAdFunc var_150
  loc_BA4FFC: FLdPr var_150
  loc_BA4FFF:  = Me.Text
  loc_BA5004: FLdRfVar var_FE
  loc_BA5007: FLdPr Me
  loc_BA500A: VCallAd Control_ID_PorMetroOpt
  loc_BA500D: FStAdFunc var_98
  loc_BA5010: FLdPr var_98
  loc_BA5013:  = Me.Value
  loc_BA5018: LitVarI2 var_BC, 1
  loc_BA501D: LitVarI2 var_AC, 0
  loc_BA5022: FLdI2 var_FE
  loc_BA5025: LitI2_Byte &HFF
  loc_BA5027: EqI2
  loc_BA5028: CVarBoolI2 var_118
  loc_BA502C: FLdRfVar var_CC
  loc_BA502F: ImpAdCallFPR4  = IIf(, , )
  loc_BA5034: FLdRfVar var_90
  loc_BA5037: FLdPr Me
  loc_BA503A: VCallAd Control_ID_CodiTiliTxt
  loc_BA503D: FStAdFunc var_13C
  loc_BA5040: FLdPr var_13C
  loc_BA5043:  = Me.Text
  loc_BA5048: FLdRfVar var_144
  loc_BA504B: FLdPr Me
  loc_BA504E: VCallAd Control_ID_ImpoSecaTxt
  loc_BA5051: FStAdFunc var_140
  loc_BA5054: FLdPr var_140
  loc_BA5057:  = Me.Text
  loc_BA505C: ILdRf var_144
  loc_BA505F: ILdRf var_90
  loc_BA5062: CI2Str
  loc_BA5064: FLdRfVar var_CC
  loc_BA5067: CUI1Var
  loc_BA5069: LitStr "Bimestral"
  loc_BA506C: ILdRf var_154
  loc_BA506F: ILdRf var_14C
  loc_BA5072: CI2Str
  loc_BA5074: FLdPr Me
  loc_BA5077: MemLdRfVar from_stack_1.global_52
  loc_BA507A: NewIfNullPr clsservcata
  loc_BA507D: Call clsservcata.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_BA5082: FFreeStr var_14C = "": var_154 = "": var_90 = ""
  loc_BA508D: FFreeAd var_98 = "": var_13C = "": var_140 = "": var_148 = ""
  loc_BA509A: FFreeVar var_118 = "": var_AC = "": var_BC = ""
  loc_BA50A5: Call cmdCancelar_Click()
  loc_BA50AA: Branch loc_BA51B1
  loc_BA50AD: ILdRf var_94
  loc_BA50B0: LitStr "btnCancelar"
  loc_BA50B3: EqStr
  loc_BA50B5: BranchF loc_BA50C0
  loc_BA50B8: Call cmdCancelar_Click()
  loc_BA50BD: Branch loc_BA51B1
  loc_BA50C0: ILdRf var_94
  loc_BA50C3: LitStr "btnPrimero"
  loc_BA50C6: EqStr
  loc_BA50C8: BranchF loc_BA50DC
  loc_BA50CB: FLdPr Me
  loc_BA50CE: MemLdRfVar from_stack_1.global_52
  loc_BA50D1: NewIfNullPr clsservcata
  loc_BA50D4: Call clsservcata.MoveFirst()
  loc_BA50D9: Branch loc_BA51B1
  loc_BA50DC: ILdRf var_94
  loc_BA50DF: LitStr "btnAnterior"
  loc_BA50E2: EqStr
  loc_BA50E4: BranchF loc_BA50F8
  loc_BA50E7: FLdPr Me
  loc_BA50EA: MemLdRfVar from_stack_1.global_52
  loc_BA50ED: NewIfNullPr clsservcata
  loc_BA50F0: Call clsservcata.MovePrevious()
  loc_BA50F5: Branch loc_BA51B1
  loc_BA50F8: ILdRf var_94
  loc_BA50FB: LitStr "btnSiguiente"
  loc_BA50FE: EqStr
  loc_BA5100: BranchF loc_BA5114
  loc_BA5103: FLdPr Me
  loc_BA5106: MemLdRfVar from_stack_1.global_52
  loc_BA5109: NewIfNullPr clsservcata
  loc_BA510C: Call clsservcata.MoveNext()
  loc_BA5111: Branch loc_BA51B1
  loc_BA5114: ILdRf var_94
  loc_BA5117: LitStr "btnUltimo"
  loc_BA511A: EqStr
  loc_BA511C: BranchF loc_BA5130
  loc_BA511F: FLdPr Me
  loc_BA5122: MemLdRfVar from_stack_1.global_52
  loc_BA5125: NewIfNullPr clsservcata
  loc_BA5128: Call clsservcata.MoveLast()
  loc_BA512D: Branch loc_BA51B1
  loc_BA5130: ILdRf var_94
  loc_BA5133: LitStr "btnFiltrar"
  loc_BA5136: EqStr
  loc_BA5138: BranchF loc_BA513E
  loc_BA513B: Branch loc_BA51B1
  loc_BA513E: ILdRf var_94
  loc_BA5141: LitStr "btnBuscar"
  loc_BA5144: EqStr
  loc_BA5146: BranchF loc_BA514C
  loc_BA5149: Branch loc_BA51B1
  loc_BA514C: ILdRf var_94
  loc_BA514F: LitStr "btnImprimir"
  loc_BA5152: EqStr
  loc_BA5154: BranchF loc_BA515A
  loc_BA5157: Branch loc_BA51B1
  loc_BA515A: ILdRf var_94
  loc_BA515D: LitStr "btnAyuda"
  loc_BA5160: EqStr
  loc_BA5162: BranchF loc_BA5191
  loc_BA5165: LitVar_Missing var_DC
  loc_BA5168: LitVar_Missing var_CC
  loc_BA516B: LitVar_Missing var_BC
  loc_BA516E: LitI4 0
  loc_BA5173: LitVarStr var_118, "Opcion no disponible en esta version."
  loc_BA5178: FStVarCopyObj var_AC
  loc_BA517B: FLdRfVar var_AC
  loc_BA517E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BA5183: FFreeVar var_AC = "": var_BC = "": var_CC = ""
  loc_BA518E: Branch loc_BA51B1
  loc_BA5191: ILdRf var_94
  loc_BA5194: LitStr "btnSalir"
  loc_BA5197: EqStr
  loc_BA5199: BranchF loc_BA51B1
  loc_BA519C: ILdRf Me
  loc_BA519F: FStAdNoPop
  loc_BA51A3: ImpAdLdRf MemVar_D9C5D8
  loc_BA51A6: NewIfNullPr Global
  loc_BA51A9: Global.Unload from_stack_1
  loc_BA51AE: FFree1Ad var_98
  loc_BA51B1: ExitProcHresult
  loc_BA51B2: NewIfNullPr Me
End Sub

Private Sub CodiTiliTxt_GotFocus() '9BD818
  'Data Table: 47B61C
  loc_9BD804: FLdPr Me
  loc_9BD807: VCallAd Control_ID_CodiTiliTxt
  loc_9BD80A: CVarAd
  loc_9BD80E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD813: FFree1Var var_94 = ""
  loc_9BD816: ExitProcHresult
  loc_9BD817: SetLastSystemError
End Sub

Private Sub CodiTiliTxt_KeyPress(KeyAscii As Integer) 'AACFF0
  'Data Table: 47B61C
  loc_AACF18: LitStr "0123456789 "
  loc_AACF1B: FStStrCopy var_88
  loc_AACF1E: FLdRfVar var_88
  loc_AACF21: ILdRf KeyAscii
  loc_AACF24: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_AACF29: IStI2 KeyAscii
  loc_AACF2C: FFree1Str var_88
  loc_AACF2F: ILdI2 KeyAscii
  loc_AACF32: LitI2_Byte &H20
  loc_AACF34: EqI2
  loc_AACF35: BranchF loc_AACFEC
  loc_AACF38: LitI2_Byte 0
  loc_AACF3A: IStI2 KeyAscii
  loc_AACF3D: LitI2_Byte 1
  loc_AACF3F: CUI1I2
  loc_AACF41: ImpAdLdRf MemVar_D94160
  loc_AACF44: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AACF47: Call dlgBuscarTipodeLiquidacion.ByOficinaPut(from_stack_1v)
  loc_AACF4C: LitStr "SELECT * FROM tipoliqu WHERE CodiOfic = 1"
  loc_AACF4F: ImpAdLdRf MemVar_D94160
  loc_AACF52: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AACF55: Call dlgBuscarTipodeLiquidacion.sPasaSelectPut(from_stack_1v)
  loc_AACF5A: LitVar_Missing var_A8
  loc_AACF5D: PopAdLdVar
  loc_AACF5E: LitVarI4
  loc_AACF66: PopAdLdVar
  loc_AACF67: ImpAdLdRf MemVar_D94160
  loc_AACF6A: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AACF6D: dlgBuscarTipodeLiquidacion.Show from_stack_1, from_stack_2
  loc_AACF72: FLdRfVar var_88
  loc_AACF75: ImpAdLdRf MemVar_D94160
  loc_AACF78: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AACF7B: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaCodigoGet()
  loc_AACF80: ILdRf var_88
  loc_AACF83: LitStr vbNullString
  loc_AACF86: NeStr
  loc_AACF88: FFree1Str var_88
  loc_AACF8B: BranchF loc_AACFEC
  loc_AACF8E: FLdRfVar var_88
  loc_AACF91: ImpAdLdRf MemVar_D94160
  loc_AACF94: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AACF97: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaCodigoGet()
  loc_AACF9C: ILdRf var_88
  loc_AACF9F: FLdPr Me
  loc_AACFA2: VCallAd Control_ID_Campo1Txt
  loc_AACFA5: FStAdFunc var_AC
  loc_AACFA8: FLdPr var_AC
  loc_AACFAB: dlgBuscarTipodeLiquidacion.TextBox.Text = from_stack_1
  loc_AACFB0: FFree1Str var_88
  loc_AACFB3: FFree1Ad var_AC
  loc_AACFB6: LitStr vbNullString
  loc_AACFB9: ImpAdLdRf MemVar_D94160
  loc_AACFBC: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AACFBF: Call dlgBuscarTipodeLiquidacion.sPasaCodigoPut(from_stack_1v)
  loc_AACFC4: FLdRfVar var_88
  loc_AACFC7: ImpAdLdRf MemVar_D94160
  loc_AACFCA: NewIfNullPr dlgBuscarTipodeLiquidacion
  loc_AACFCD: from_stack_1v = dlgBuscarTipodeLiquidacion.sPasaDetalleGet()
  loc_AACFD2: ILdRf var_88
  loc_AACFD5: FLdPr Me
  loc_AACFD8: VCallAd Control_ID_
  loc_AACFDB: FStAdFunc var_AC
  loc_AACFDE: FLdPr var_AC
  loc_AACFE1: dlgBuscarTipodeLiquidacion.Label.Caption = from_stack_1
  loc_AACFE6: FFree1Str var_88
  loc_AACFE9: FFree1Ad var_AC
  loc_AACFEC: ExitProcHresult
  loc_AACFED: FLdPr Me
End Sub

Private Sub CodiTiliTxt_Validate(Cancel As Boolean) 'AAD534
  'Data Table: 47B61C
  loc_AAD468: FLdRfVar var_8A
  loc_AAD46B: FLdPr Me
  loc_AAD46E: VCallAd Control_ID_CodiTiliTxt
  loc_AAD471: FStAdFunc var_88
  loc_AAD474: FLdPr var_88
  loc_AAD477:  = Me.Enabled
  loc_AAD47C: FLdI2 var_8A
  loc_AAD47F: FFree1Ad var_88
  loc_AAD482: BranchF loc_AAD531
  loc_AAD485: FLdRfVar var_90
  loc_AAD488: FLdPr Me
  loc_AAD48B: VCallAd Control_ID_CodiTiliTxt
  loc_AAD48E: FStAdFunc var_88
  loc_AAD491: FLdPr var_88
  loc_AAD494:  = Me.Text
  loc_AAD499: ILdRf var_90
  loc_AAD49C: LitI2_Byte 1
  loc_AAD49E: CUI1I2
  loc_AAD4A0: ImpAdCallI2  = Proc_18_25_A7CBA0()
  loc_AAD4A5: FStStrNoPop var_94
  loc_AAD4A8: FLdPr Me
  loc_AAD4AB: MemStStrCopy
  loc_AAD4AF: FFreeStr var_90 = ""
  loc_AAD4B6: FFree1Ad var_88
  loc_AAD4B9: FLdPr Me
  loc_AAD4BC: MemLdStr global_60
  loc_AAD4BF: LitStr vbNullString
  loc_AAD4C2: NeStr
  loc_AAD4C4: BranchF loc_AAD4ED
  loc_AAD4C7: FLdPr Me
  loc_AAD4CA: MemLdStr global_60
  loc_AAD4CD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AAD4D2: FLdPr Me
  loc_AAD4D5: VCallAd Control_ID_CodiTiliTxt
  loc_AAD4D8: CVarAd
  loc_AAD4DC: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AAD4E1: FFree1Var var_A4 = ""
  loc_AAD4E4: LitI2_Byte &HFF
  loc_AAD4E6: IStI2 Cancel
  loc_AAD4E9: ExitProcHresult
  loc_AAD4EA: Branch loc_AAD531
  loc_AAD4ED: FLdRfVar var_90
  loc_AAD4F0: FLdPr Me
  loc_AAD4F3: VCallAd Control_ID_CodiTiliTxt
  loc_AAD4F6: FStAdFunc var_88
  loc_AAD4F9: FLdPr var_88
  loc_AAD4FC:  = Me.Text
  loc_AAD501: ILdRf var_90
  loc_AAD504: CUI1Str
  loc_AAD506: LitI2_Byte 1
  loc_AAD508: CUI1I2
  loc_AAD50A: ImpAdCallI2 Proc_270_49_A8F1B0(, )
  loc_AAD50F: FStStrNoPop var_94
  loc_AAD512: FLdPr Me
  loc_AAD515: VCallAd Control_ID_DetaTiliLbl
  loc_AAD518: FStAdFunc var_A8
  loc_AAD51B: FLdPr var_A8
  loc_AAD51E: Me.Caption = from_stack_1
  loc_AAD523: FFreeStr var_90 = ""
  loc_AAD52A: FFreeAd var_88 = ""
  loc_AAD531: ExitProcHresult
End Sub

Private Sub DetaSecaTxt_GotFocus() '9C0EF0
  'Data Table: 47B61C
  loc_9C0EDC: FLdPr Me
  loc_9C0EDF: VCallAd Control_ID_DetaSecaTxt
  loc_9C0EE2: CVarAd
  loc_9C0EE6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0EEB: FFree1Var var_94 = ""
  loc_9C0EEE: ExitProcHresult
End Sub

Private Sub DetaSecaTxt_Validate(Cancel As Boolean) 'A90B70
  'Data Table: 47B61C
  loc_A90AD0: FLdRfVar var_8A
  loc_A90AD3: FLdPr Me
  loc_A90AD6: VCallAd Control_ID_cmdCancelar
  loc_A90AD9: FStAdFunc var_88
  loc_A90ADC: FLdPr var_88
  loc_A90ADF:  = Me.Value
  loc_A90AE4: FLdI2 var_8A
  loc_A90AE7: NotI4
  loc_A90AE8: FLdRfVar var_92
  loc_A90AEB: FLdPr Me
  loc_A90AEE: VCallAd Control_ID_DetaSecaTxt
  loc_A90AF1: FStAdFunc var_90
  loc_A90AF4: FLdPr var_90
  loc_A90AF7:  = Me.Enabled
  loc_A90AFC: FLdI2 var_92
  loc_A90AFF: AndI4
  loc_A90B00: FFreeAd var_88 = ""
  loc_A90B07: BranchF loc_A90B6D
  loc_A90B0A: FLdRfVar var_98
  loc_A90B0D: FLdPr Me
  loc_A90B10: VCallAd Control_ID_DetaSecaTxt
  loc_A90B13: FStAdFunc var_88
  loc_A90B16: FLdPr var_88
  loc_A90B19:  = Me.Text
  loc_A90B1E: ILdRf var_98
  loc_A90B21: LitStr "Servicio Catastro"
  loc_A90B24: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A90B29: FStStrNoPop var_9C
  loc_A90B2C: FLdPr Me
  loc_A90B2F: MemStStrCopy
  loc_A90B33: FFreeStr var_98 = ""
  loc_A90B3A: FFree1Ad var_88
  loc_A90B3D: FLdPr Me
  loc_A90B40: MemLdStr global_60
  loc_A90B43: LitStr vbNullString
  loc_A90B46: NeStr
  loc_A90B48: BranchF loc_A90B6D
  loc_A90B4B: FLdPr Me
  loc_A90B4E: MemLdStr global_60
  loc_A90B51: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A90B56: FLdPr Me
  loc_A90B59: VCallAd Control_ID_DetaSecaTxt
  loc_A90B5C: CVarAd
  loc_A90B60: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A90B65: FFree1Var var_AC = ""
  loc_A90B68: LitI2_Byte &HFF
  loc_A90B6A: IStI2 Cancel
  loc_A90B6D: ExitProcHresult
  loc_A90B6E: ExitProcR4
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A679E8
  'Data Table: 47B61C
  loc_A6798C: FLdRfVar var_B4
  loc_A6798F: FLdRfVar var_B0
  loc_A67992: FLdI2 ColIndex
  loc_A67995: CVarI2 var_A8
  loc_A67998: PopAdLdVar
  loc_A67999: FLdPr Me
  loc_A6799C: VCallAd Control_ID_dgdABMS
  loc_A6799F: FStAdFunc var_88
  loc_A679A2: FLdPr var_88
  loc_A679A5: LateIdLdVar var_98 DispID_105 0
  loc_A679AC: CastAdVar Me
  loc_A679B0: FStAdFunc var_AC
  loc_A679B3: FLdPr var_AC
  loc_A679B6: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A679BB: FLdPr var_B0
  loc_A679BE:  = Me.DataField
  loc_A679C3: FLdZeroAd var_B4
  loc_A679C6: PopTmpLdAdStr
  loc_A679CA: FLdPr Me
  loc_A679CD: MemLdRfVar from_stack_1.global_52
  loc_A679D0: NewIfNullPr clsservcata
  loc_A679D3: Call clsservcata.Sort(from_stack_1v)
  loc_A679D8: FFree1Str var_B8
  loc_A679DB: FFreeAd var_88 = "": var_AC = ""
  loc_A679E4: FFree1Var var_98 = ""
  loc_A679E7: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'AA9548
  'Data Table: 47B61C
  loc_AA9474: FLdPr Me
  loc_AA9477: MemLdI2 global_56
  loc_AA947A: LitI2_Byte 0
  loc_AA947C: EqI2
  loc_AA947D: FLdRfVar var_88
  loc_AA9480: FLdPr Me
  loc_AA9483: MemLdRfVar from_stack_1.global_52
  loc_AA9486: NewIfNullPr clsservcata
  loc_AA9489: from_stack_1 = clsservcata.RecordCount
  loc_AA948E: ILdRf var_88
  loc_AA9491: LitI4 0
  loc_AA9496: GtI4
  loc_AA9497: AndI4
  loc_AA9498: BranchF loc_AA9547
  loc_AA949B: FLdRfVar var_8A
  loc_AA949E: FLdPr Me
  loc_AA94A1: MemLdRfVar from_stack_1.global_52
  loc_AA94A4: NewIfNullPr clsservcata
  loc_AA94A7: from_stack_1 = clsservcata.BOF
  loc_AA94AC: FLdI2 var_8A
  loc_AA94AF: BranchF loc_AA94C0
  loc_AA94B2: FLdPr Me
  loc_AA94B5: MemLdRfVar from_stack_1.global_52
  loc_AA94B8: NewIfNullPr clsservcata
  loc_AA94BB: Call clsservcata.MoveFirst()
  loc_AA94C0: FLdRfVar var_8A
  loc_AA94C3: FLdPr Me
  loc_AA94C6: MemLdRfVar from_stack_1.global_52
  loc_AA94C9: NewIfNullPr clsservcata
  loc_AA94CC: from_stack_1 = clsservcata.EOF
  loc_AA94D1: FLdI2 var_8A
  loc_AA94D4: BranchF loc_AA94E5
  loc_AA94D7: FLdPr Me
  loc_AA94DA: MemLdRfVar from_stack_1.global_52
  loc_AA94DD: NewIfNullPr clsservcata
  loc_AA94E0: Call clsservcata.MoveLast()
  loc_AA94E5: FLdRfVar var_8A
  loc_AA94E8: FLdPr Me
  loc_AA94EB: MemLdRfVar from_stack_1.global_52
  loc_AA94EE: NewIfNullPr clsservcata
  loc_AA94F1: from_stack_1 = clsservcata.FormSeca
  loc_AA94F6: FLdUI1
  loc_AA94FA: FStUI1 var_8C
  loc_AA94FE: FLdUI1
  loc_AA9502: LitStr "0"
  loc_AA9505: CUI1Str
  loc_AA9507: EqI2
  loc_AA9508: BranchF loc_AA9524
  loc_AA950B: LitI2_Byte &HFF
  loc_AA950D: FLdPr Me
  loc_AA9510: VCallAd Control_ID_PorMetroOpt
  loc_AA9513: FStAdFunc var_90
  loc_AA9516: FLdPr var_90
  loc_AA9519: Me.Value = from_stack_1b
  loc_AA951E: FFree1Ad var_90
  loc_AA9521: Branch loc_AA9547
  loc_AA9524: FLdUI1
  loc_AA9528: LitStr "1"
  loc_AA952B: CUI1Str
  loc_AA952D: EqI2
  loc_AA952E: BranchF loc_AA9547
  loc_AA9531: LitI2_Byte &HFF
  loc_AA9533: FLdPr Me
  loc_AA9536: VCallAd Control_ID_PorCantidadOpt
  loc_AA9539: FStAdFunc var_90
  loc_AA953C: FLdPr var_90
  loc_AA953F: Me.Value = from_stack_1b
  loc_AA9544: FFree1Ad var_90
  loc_AA9547: ExitProcHresult
End Sub

Private Sub ImpoSecaTxt_GotFocus() '9C1010
  'Data Table: 47B61C
  loc_9C0FFC: FLdPr Me
  loc_9C0FFF: VCallAd Control_ID_ImpoSecaTxt
  loc_9C1002: CVarAd
  loc_9C1006: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C100B: FFree1Var var_94 = ""
  loc_9C100E: ExitProcHresult
End Sub

Private Sub ImpoSecaTxt_KeyPress(KeyAscii As Integer) 'A07780
  'Data Table: 47B61C
  loc_A0774C: LitStr "1234567890,."
  loc_A0774F: FStStrCopy var_88
  loc_A07752: FLdRfVar var_88
  loc_A07755: ILdRf KeyAscii
  loc_A07758: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A0775D: IStI2 KeyAscii
  loc_A07760: FFree1Str var_88
  loc_A07763: ILdI2 KeyAscii
  loc_A07766: LitStr "."
  loc_A07769: ImpAdCallI2 Asc()
  loc_A0776E: EqI2
  loc_A0776F: BranchF loc_A0777D
  loc_A07772: LitStr ","
  loc_A07775: ImpAdCallI2 Asc()
  loc_A0777A: IStI2 KeyAscii
  loc_A0777D: ExitProcHresult
  loc_A0777E: GeI4
End Sub

Private Sub ImpoSecaTxt_LostFocus() 'A76258
  'Data Table: 47B61C
  loc_A761F4: FLdRfVar var_8C
  loc_A761F7: FLdPr Me
  loc_A761FA: VCallAd Control_ID_ImpoSecaTxt
  loc_A761FD: FStAdFunc var_88
  loc_A76200: FLdPr var_88
  loc_A76203:  = Me.Text
  loc_A76208: LitI4 1
  loc_A7620D: LitI4 1
  loc_A76212: LitVarStr var_AC, "0.000"
  loc_A76217: FStVarCopyObj var_BC
  loc_A7621A: FLdRfVar var_BC
  loc_A7621D: FLdZeroAd var_8C
  loc_A76220: CVarStr var_9C
  loc_A76223: FLdRfVar var_CC
  loc_A76226: ImpAdCallFPR4  = Format(, )
  loc_A7622B: FLdRfVar var_CC
  loc_A7622E: CStrVarVal var_D0
  loc_A76232: FLdPr Me
  loc_A76235: VCallAd Control_ID_ImpoSecaTxt
  loc_A76238: FStAdFunc var_D4
  loc_A7623B: FLdPr var_D4
  loc_A7623E: Me.Text = from_stack_1
  loc_A76243: FFree1Str var_D0
  loc_A76246: FFreeAd var_88 = ""
  loc_A7624D: FFreeVar var_9C = "": var_BC = ""
  loc_A76256: ExitProcHresult
End Sub

Private Sub ImpoSecaTxt_Validate(Cancel As Boolean) 'A954B4
  'Data Table: 47B61C
  loc_A9540C: FLdRfVar var_8A
  loc_A9540F: FLdPr Me
  loc_A95412: VCallAd Control_ID_cmdCancelar
  loc_A95415: FStAdFunc var_88
  loc_A95418: FLdPr var_88
  loc_A9541B:  = Me.Value
  loc_A95420: FLdI2 var_8A
  loc_A95423: NotI4
  loc_A95424: FLdRfVar var_92
  loc_A95427: FLdPr Me
  loc_A9542A: VCallAd Control_ID_ImpoSecaTxt
  loc_A9542D: FStAdFunc var_90
  loc_A95430: FLdPr var_90
  loc_A95433:  = Me.Enabled
  loc_A95438: FLdI2 var_92
  loc_A9543B: LitI2_Byte &HFF
  loc_A9543D: EqI2
  loc_A9543E: AndI4
  loc_A9543F: FFreeAd var_88 = ""
  loc_A95446: BranchF loc_A954B0
  loc_A95449: FLdRfVar var_98
  loc_A9544C: FLdPr Me
  loc_A9544F: VCallAd Control_ID_ImpoSecaTxt
  loc_A95452: FStAdFunc var_88
  loc_A95455: FLdPr var_88
  loc_A95458:  = Me.Text
  loc_A9545D: LitI2_Byte &HFF
  loc_A9545F: LitI2_Byte 0
  loc_A95461: ILdRf var_98
  loc_A95464: LitStr "Importe"
  loc_A95467: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A9546C: FStStrNoPop var_9C
  loc_A9546F: FLdPr Me
  loc_A95472: MemStStrCopy
  loc_A95476: FFreeStr var_98 = ""
  loc_A9547D: FFree1Ad var_88
  loc_A95480: FLdPr Me
  loc_A95483: MemLdStr global_60
  loc_A95486: LitStr vbNullString
  loc_A95489: NeStr
  loc_A9548B: BranchF loc_A954B0
  loc_A9548E: FLdPr Me
  loc_A95491: MemLdStr global_60
  loc_A95494: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A95499: FLdPr Me
  loc_A9549C: VCallAd Control_ID_ImpoSecaTxt
  loc_A9549F: CVarAd
  loc_A954A3: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A954A8: FFree1Var var_AC = ""
  loc_A954AB: LitI2_Byte &HFF
  loc_A954AD: IStI2 Cancel
  loc_A954B0: ExitProcHresult
End Sub

Private Sub Form_Load() 'AAE960
  'Data Table: 47B61C
  loc_AAE8A4: LitI2_Byte 0
  loc_AAE8A6: CR8I2
  loc_AAE8A7: PopFPR4
  loc_AAE8A8: FLdPr Me
  loc_AAE8AB: Me.Left = from_stack_1s
  loc_AAE8B0: LitI2_Byte 0
  loc_AAE8B2: CR8I2
  loc_AAE8B3: PopFPR4
  loc_AAE8B4: FLdPr Me
  loc_AAE8B7: Me.Top = from_stack_1s
  loc_AAE8BC: LitStr "SELECT * FROM servcata "
  loc_AAE8BF: LitStr "LEFT JOIN tipoliqu ON tipoliqu.CodiOfic = 1 AND tipoliqu.CodiTili = servcata.CodiTili "
  loc_AAE8C2: ConcatStr
  loc_AAE8C3: FStStrNoPop var_88
  loc_AAE8C6: LitStr " WHERE PeriOrde = "
  loc_AAE8C9: ConcatStr
  loc_AAE8CA: FStStrNoPop var_8C
  loc_AAE8CD: ImpAdLdI2 MemVar_D93034
  loc_AAE8D0: CStrUI1
  loc_AAE8D2: FStStrNoPop var_90
  loc_AAE8D5: ConcatStr
  loc_AAE8D6: FStStrNoPop var_94
  loc_AAE8D9: LitStr " ORDER BY CodiSeca"
  loc_AAE8DC: ConcatStr
  loc_AAE8DD: FStStrNoPop var_98
  loc_AAE8E0: FLdPr Me
  loc_AAE8E3: MemLdRfVar from_stack_1.global_52
  loc_AAE8E6: NewIfNullPr clsservcata
  loc_AAE8E9: Call clsservcata.RedefineRS(from_stack_1v)
  loc_AAE8EE: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = ""
  loc_AAE8FB: LitI4 0
  loc_AAE900: LitI4 1
  loc_AAE905: FLdRfVar var_9C
  loc_AAE908: Redim
  loc_AAE912: FLdPr Me
  loc_AAE915: MemLdRfVar from_stack_1.global_52
  loc_AAE918: NewIfNullAd
  loc_AAE91B: FStAd var_A0 
  loc_AAE91F: FLdRfVar var_A0
  loc_AAE922: CVarRef
  loc_AAE927: ParmAry1St
  loc_AAE92D: FLdPr Me
  loc_AAE930: VCallAd Control_ID_dgdABMS
  loc_AAE933: CVarAd
  loc_AAE937: ParmAry1St
  loc_AAE93D: FLdRfVar var_9C
  loc_AAE940: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AAE945: ILdRf var_A0
  loc_AAE948: CastAd
  loc_AAE94B: FLdPr Me
  loc_AAE94E: MemStAdFunc
  loc_AAE952: FLdRfVar var_9C
  loc_AAE955: Erase
  loc_AAE956: FFree1Ad var_A0
  loc_AAE959: Call cmdCancelar_Click()
  loc_AAE95E: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A63980
  'Data Table: 47B61C
  loc_A63924: FLdRfVar var_C2
  loc_A63927: FLdRfVar var_C0
  loc_A6392A: LitVarI2 var_B8, 1
  loc_A6392F: FLdPr Me
  loc_A63932: VCallAd Control_ID_tlbABMS
  loc_A63935: FStAdFunc var_88
  loc_A63938: FLdPr var_88
  loc_A6393B: LateIdLdVar var_98 DispID_3 0
  loc_A63942: CastAdVar Me
  loc_A63946: FStAdFunc var_BC
  loc_A63949: FLdPr var_BC
  loc_A6394C:  = Me.Buttons.ControlDefault
  loc_A63951: FLdPr var_C0
  loc_A63954:  = Me.Enabled
  loc_A63959: FLdI2 var_C2
  loc_A6395C: FFreeAd var_88 = "": var_BC = ""
  loc_A63965: FFreeVar var_98 = ""
  loc_A6396C: BranchF loc_A6397D
  loc_A6396F: FLdPr Me
  loc_A63972: MemLdRfVar from_stack_1.global_52
  loc_A63975: NewIfNullPr clsservcata
  loc_A63978: Call clsservcata.Requery()
  loc_A6397D: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9DBA0C
  'Data Table: 47B61C
  loc_9DB9F4: ILdI2 KeyAscii
  loc_9DB9F7: LitI2_Byte &HD
  loc_9DB9F9: EqI2
  loc_9DB9FA: BranchF loc_9DBA0B
  loc_9DB9FD: LitVar_TRUE var_A4
  loc_9DBA00: LitStr "{Tab}"
  loc_9DBA03: ImpAdCallFPR4 SendKeys , 
  loc_9DBA08: FFree1Var var_A4 = ""
  loc_9DBA0B: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9D5CD4
  'Data Table: 47B61C
  loc_9D5CBC: ILdI2 KeyCode
  loc_9D5CBF: ILdRf Me
  loc_9D5CC2: CastAd
  loc_9D5CC5: FStAdFunc var_88
  loc_9D5CC8: FLdRfVar var_88
  loc_9D5CCB: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9D5CD0: FFree1Ad var_88
  loc_9D5CD3: ExitProcHresult
End Sub
