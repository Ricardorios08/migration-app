VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmPlandeCuentas
  Caption = "Plan de Cuentas"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmPlandeCuentas.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 14340
  ClientHeight = 9315
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
      Height = 420
      TabIndex = 4
      OleObjectBlob = "frmPlandeCuentas.frx":08CA
    End
  End
  Begin VB.Frame fraABMS
    Caption = " Plan de Cuentas Contables "
    Left = 120
    Top = 3960
    Width = 13935
    Height = 3135
    TabIndex = 6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin MSMask.MaskEdBox CodiTicuMsk
      Left = 2100
      Top = 1920
      Width = 735
      Height = 420
      TabIndex = 14
      OleObjectBlob = "frmPlandeCuentas.frx":0952
      DataField = "CodiTicu"
    End
    Begin VB.TextBox DetaCucoTxt
      ForeColor = &HFF0000&
      Left = 2100
      Top = 1080
      Width = 11655
      Height = 420
      TabIndex = 12
      MaxLength = 60
      DataField = "DetaCuco"
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
    Begin MSMask.MaskEdBox CodiCucoMsk
      Left = 2100
      Top = 600
      Width = 2775
      Height = 360
      TabIndex = 8
      OleObjectBlob = "frmPlandeCuentas.frx":09E2
      DataField = "CodiCuco"
    End
    Begin VB.Label Label6
      Caption = "Rubro:"
      Left = 1335
      Top = 2400
      Width = 720
      Height = 300
      TabIndex = 16
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
    Begin VB.Label ImpuCucoLbl
      Left = 6240
      Top = 600
      Width = 735
      Height = 360
      TabIndex = 10
      BorderStyle = 1 'Fixed Single
      DataField = "ImpuCuco"
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
      Caption = "Imputable:"
      Left = 5040
      Top = 600
      Width = 1125
      Height = 300
      TabIndex = 9
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
    Begin VB.Label ImpuTicuLbl
      Left = 2100
      Top = 2400
      Width = 735
      Height = 360
      TabIndex = 17
      BorderStyle = 1 'Fixed Single
      DataField = "ImpuTicu"
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
    Begin VB.Label DetaTiculbl
      Left = 2940
      Top = 1920
      Width = 9735
      Height = 360
      TabIndex = 15
      BorderStyle = 1 'Fixed Single
      DataField = "DetaTicu"
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
      Caption = "Tipo de Cuenta:"
      Left = 375
      Top = 1920
      Width = 1680
      Height = 300
      TabIndex = 13
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
    Begin VB.Label Label1
      Caption = "Cuenta Contable:"
      Left = 195
      Top = 600
      Width = 1860
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
    Begin VB.Label Label2
      Caption = "Detalle:"
      Left = 1245
      Top = 1080
      Width = 810
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
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 13935
    Height = 2175
    TabIndex = 5
    OleObjectBlob = "frmPlandeCuentas.frx":0A6A
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmPlandeCuentas.frx":0E92
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 14340
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmPlandeCuentas.frx":8A10
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmPlandeCuentas.frx":8F6C
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmPlandeCuentas"

Public html As New UnkObject


Private Sub CodiTicuMsk_UnknownEvent_0 '94BA68
  'Data Table: 4597B8
  loc_94BA54: FLdPr Me
  loc_94BA57: VCallAd Control_ID_CodiTicuMsk
  loc_94BA5A: CVarAd
  loc_94BA5E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94BA63: FFree1Var var_94 = ""
  loc_94BA66: ExitProcHresult
End Sub

Private Sub CodiTicuMsk_UnknownEvent_8 '9F3E4C
  'Data Table: 4597B8
  loc_9F3D1C: FLdRfVar var_8A
  loc_9F3D1F: FLdPr Me
  loc_9F3D22: VCallAd Control_ID_cmdCancelar
  loc_9F3D25: FStAdFunc var_88
  loc_9F3D28: FLdPr var_88
  loc_9F3D2B:  = Me.Value
  loc_9F3D30: FLdI2 var_8A
  loc_9F3D33: NotI4
  loc_9F3D34: FLdPr Me
  loc_9F3D37: VCallAd Control_ID_CodiTicuMsk
  loc_9F3D3A: FStAdFunc var_90
  loc_9F3D3D: FLdPr var_90
  loc_9F3D40: LateIdLdVar var_A0 DispID_13 -32767
  loc_9F3D47: CBoolVar
  loc_9F3D49: AndI4
  loc_9F3D4A: FFreeAd var_88 = ""
  loc_9F3D51: FFree1Var var_A0 = ""
  loc_9F3D54: BranchF loc_9F3E4A
  loc_9F3D57: FLdPr Me
  loc_9F3D5A: VCallAd Control_ID_CodiTicuMsk
  loc_9F3D5D: FStAdFunc var_88
  loc_9F3D60: FLdPr var_88
  loc_9F3D63: LateIdLdVar var_A0 DispID_22 0
  loc_9F3D6A: PopAd
  loc_9F3D6C: FLdPr Me
  loc_9F3D6F: MemLdRfVar from_stack_1.global_76
  loc_9F3D72: NewIfNullRf
  loc_9F3D76: FLdRfVar var_A0
  loc_9F3D79: CStrVarTmp
  loc_9F3D7A: FStStrNoPop var_A4
  loc_9F3D7D: ImpAdCallI2 Proc_266_12_9A22BC(, )
  loc_9F3D82: FStStrNoPop var_A8
  loc_9F3D85: FLdPr Me
  loc_9F3D88: MemStStrCopy
  loc_9F3D8C: FFreeStr var_A4 = ""
  loc_9F3D93: FFree1Ad var_88
  loc_9F3D96: FFree1Var var_A0 = ""
  loc_9F3D99: FLdPr Me
  loc_9F3D9C: VCallAd Control_ID_CodiTicuMsk
  loc_9F3D9F: FStAdFunc var_B0
  loc_9F3DA2: FLdPr Me
  loc_9F3DA5: VCallAd Control_ID_DetaTiculbl
  loc_9F3DA8: FStAdFunc var_AC
  loc_9F3DAB: FLdRfVar var_AC
  loc_9F3DAE: FLdZeroAd var_B0
  loc_9F3DB1: FStAdFuncNoPop
  loc_9F3DB4: CastAd
  loc_9F3DB7: FStAdFunc var_90
  loc_9F3DBA: FLdRfVar var_90
  loc_9F3DBD: FLdPr Me
  loc_9F3DC0: MemLdRfVar from_stack_1.global_68
  loc_9F3DC3: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9F3DC8: IStI2 ColIndex
  loc_9F3DCB: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_9F3DD6: ILdI2 ColIndex
  loc_9F3DD9: BranchF loc_9F3E1F
  loc_9F3DDC: FLdPr Me
  loc_9F3DDF: MemLdStr global_68
  loc_9F3DE2: LitStr "Advertencia: El Tipo de cuenta NO es Imputable. Verifique..."
  loc_9F3DE5: EqStr
  loc_9F3DE7: FLdRfVar var_A4
  loc_9F3DEA: FLdPr Me
  loc_9F3DED: VCallAd Control_ID_ImpuCucoLbl
  loc_9F3DF0: FStAdFunc var_88
  loc_9F3DF3: FLdPr var_88
  loc_9F3DF6:  = Me.Caption
  loc_9F3DFB: ILdRf var_A4
  loc_9F3DFE: LitStr "No"
  loc_9F3E01: EqStr
  loc_9F3E03: AndI4
  loc_9F3E04: FFree1Str var_A4
  loc_9F3E07: FFree1Ad var_88
  loc_9F3E0A: BranchF loc_9F3E1C
  loc_9F3E0D: LitStr vbNullString
  loc_9F3E10: FLdPr Me
  loc_9F3E13: MemStStrCopy
  loc_9F3E17: LitI2_Byte 0
  loc_9F3E19: IStI2 ColIndex
  loc_9F3E1C: Branch loc_9F3E4A
  loc_9F3E1F: FLdRfVar var_A4
  loc_9F3E22: FLdPr Me
  loc_9F3E25: MemLdRfVar from_stack_1.global_76
  loc_9F3E28: NewIfNullPr tbltipocuco
  loc_9F3E2B: from_stack_1v = tbltipocuco.DetaTicuGet()
  loc_9F3E30: ILdRf var_A4
  loc_9F3E33: FLdPr Me
  loc_9F3E36: VCallAd Control_ID_DetaTiculbl
  loc_9F3E39: FStAdFunc var_88
  loc_9F3E3C: FLdPr var_88
  loc_9F3E3F: Me.Caption = from_stack_1
  loc_9F3E44: FFree1Str var_A4
  loc_9F3E47: FFree1Ad var_88
  loc_9F3E4A: ExitProcHresult
End Sub

Private Sub CodiTicuMsk_KeyPress(KeyAscii As Integer) '9F063C
  'Data Table: 4597B8
  loc_9F0514: ILdI2 KeyAscii
  loc_9F0517: CI4UI1
  loc_9F0518: LitI4 &H20
  loc_9F051D: EqI4
  loc_9F051E: BranchF loc_9F0639
  loc_9F0521: LitVar_Missing var_A4
  loc_9F0524: PopAdLdVar
  loc_9F0525: LitVarI4
  loc_9F052D: PopAdLdVar
  loc_9F052E: ImpAdLdRf MemVar_C3D79C
  loc_9F0531: NewIfNullPr bscTipoCuentaContable
  loc_9F0534: bscTipoCuentaContable.Show from_stack_1, from_stack_2
  loc_9F0539: FLdRfVar var_AC
  loc_9F053C: FLdRfVar var_A8
  loc_9F053F: ImpAdLdRf MemVar_C3D79C
  loc_9F0542: NewIfNullPr bscTipoCuentaContable
  loc_9F0545: from_stack_1v = bscTipoCuentaContable.global_4296000Get()
  loc_9F054A: FLdPr var_A8
  loc_9F054D: from_stack_1 = clsbase.RecordCount
  loc_9F0552: ILdRf var_AC
  loc_9F0555: LitI4 0
  loc_9F055A: GtI4
  loc_9F055B: FFree1Ad var_A8
  loc_9F055E: BranchF loc_9F0639
  loc_9F0561: FLdRfVar var_C8
  loc_9F0564: FLdRfVar var_B8
  loc_9F0567: LitVarStr var_94, "CodiTicu"
  loc_9F056C: PopAdLdVar
  loc_9F056D: FLdRfVar var_B4
  loc_9F0570: FLdRfVar var_B0
  loc_9F0573: FLdRfVar var_A8
  loc_9F0576: ImpAdLdRf MemVar_C3D79C
  loc_9F0579: NewIfNullPr bscTipoCuentaContable
  loc_9F057C: from_stack_1v = bscTipoCuentaContable.global_4296000Get()
  loc_9F0581: FLdPr var_A8
  loc_9F0584: from_stack_1v = clsbase.RsFrmGet()
  loc_9F0589: FLdPr var_B0
  loc_9F058C:  = Me.Fields
  loc_9F0591: FLdPr var_B4
  loc_9F0594: from_stack_2 = Me.Item(from_stack_1)
  loc_9F0599: FLdPr var_B8
  loc_9F059C:  = Me.Value
  loc_9F05A1: FLdRfVar var_C8
  loc_9F05A4: CStrVarTmp
  loc_9F05A5: CVarStr var_D8
  loc_9F05A8: PopAdLdVar
  loc_9F05A9: FLdPr Me
  loc_9F05AC: VCallAd Control_ID_CodiTicuMsk
  loc_9F05AF: FStAdFunc var_DC
  loc_9F05B2: FLdPr var_DC
  loc_9F05B5: LateIdSt
  loc_9F05BA: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F05C7: FFreeVar var_C8 = ""
  loc_9F05CE: FLdRfVar var_C8
  loc_9F05D1: FLdRfVar var_B8
  loc_9F05D4: LitVarStr var_94, "DetaTicu"
  loc_9F05D9: PopAdLdVar
  loc_9F05DA: FLdRfVar var_B4
  loc_9F05DD: FLdRfVar var_B0
  loc_9F05E0: FLdRfVar var_A8
  loc_9F05E3: ImpAdLdRf MemVar_C3D79C
  loc_9F05E6: NewIfNullPr bscTipoCuentaContable
  loc_9F05E9: from_stack_1v = bscTipoCuentaContable.global_4296000Get()
  loc_9F05EE: FLdPr var_A8
  loc_9F05F1: from_stack_1v = clsbase.RsFrmGet()
  loc_9F05F6: FLdPr var_B0
  loc_9F05F9:  = Me.Fields
  loc_9F05FE: FLdPr var_B4
  loc_9F0601: from_stack_2 = Me.Item(from_stack_1)
  loc_9F0606: FLdPr var_B8
  loc_9F0609:  = Me.Value
  loc_9F060E: FLdRfVar var_C8
  loc_9F0611: CStrVarTmp
  loc_9F0612: FStStrNoPop var_E0
  loc_9F0615: FLdPr Me
  loc_9F0618: VCallAd Control_ID_DetaTiculbl
  loc_9F061B: FStAdFunc var_DC
  loc_9F061E: FLdPr var_DC
  loc_9F0621: Me.Caption = from_stack_1
  loc_9F0626: FFree1Str var_E0
  loc_9F0629: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F0636: FFree1Var var_C8 = ""
  loc_9F0639: ExitProcHresult
  loc_9F063A: BranchF loc_9F451B
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'ADA8D0
  'Data Table: 4597B8
  loc_ADA278: ILdRf Button
  loc_ADA27B: FStAd var_88 
  loc_ADA27F: FLdRfVar var_8C
  loc_ADA282: FLdPr var_88
  loc_ADA285:  = Me.Key
  loc_ADA28A: FLdZeroAd var_8C
  loc_ADA28D: FStStr var_90
  loc_ADA290: ILdRf var_90
  loc_ADA293: LitStr "btnCrear"
  loc_ADA296: EqStr
  loc_ADA298: BranchF loc_ADA341
  loc_ADA29B: LitI2_Byte 1
  loc_ADA29D: FLdPr Me
  loc_ADA2A0: MemStUI1
  loc_ADA2A4: ILdRf Me
  loc_ADA2A7: CastAd
  loc_ADA2AA: FStAdFunc var_94
  loc_ADA2AD: FLdRfVar var_94
  loc_ADA2B0: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_ADA2B5: FFree1Ad var_94
  loc_ADA2B8: LitI4 0
  loc_ADA2BD: LitI4 0
  loc_ADA2C2: FLdRfVar var_98
  loc_ADA2C5: Redim
  loc_ADA2CF: FLdPr Me
  loc_ADA2D2: VCallAd Control_ID_dgdABMS
  loc_ADA2D5: CVarAd
  loc_ADA2D9: ParmAry1St
  loc_ADA2DF: FLdRfVar var_98
  loc_ADA2E2: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_ADA2E7: FLdRfVar var_98
  loc_ADA2EA: Erase
  loc_ADA2EB: ILdRf Me
  loc_ADA2EE: CastAd
  loc_ADA2F1: FStAdFunc var_94
  loc_ADA2F4: FLdRfVar var_94
  loc_ADA2F7: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_ADA2FC: FFree1Ad var_94
  loc_ADA2FF: ILdRf Me
  loc_ADA302: CastAd
  loc_ADA305: FStAdFunc var_94
  loc_ADA308: FLdRfVar var_94
  loc_ADA30B: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_ADA310: FFree1Ad var_94
  loc_ADA313: ILdRf Me
  loc_ADA316: CastAd
  loc_ADA319: FStAdFunc var_94
  loc_ADA31C: FLdRfVar var_94
  loc_ADA31F: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_ADA324: FFree1Ad var_94
  loc_ADA327: FLdPr Me
  loc_ADA32A: VCallAd Control_ID_CodiCucoMsk
  loc_ADA32D: FStAdFunc var_94
  loc_ADA330: FLdPr var_94
  loc_ADA333: LateIdCall
  loc_ADA33B: FFree1Ad var_94
  loc_ADA33E: Branch loc_ADA8CC
  loc_ADA341: ILdRf var_90
  loc_ADA344: LitStr "btnModificar"
  loc_ADA347: EqStr
  loc_ADA349: BranchF loc_ADA429
  loc_ADA34C: FLdRfVar var_AC
  loc_ADA34F: FLdPr Me
  loc_ADA352: MemLdRfVar from_stack_1.global_56
  loc_ADA355: NewIfNullPr clscuentacontable
  loc_ADA358: from_stack_1 = clscuentacontable.RecordCount
  loc_ADA35D: ILdRf var_AC
  loc_ADA360: LitI4 0
  loc_ADA365: GtI4
  loc_ADA366: BranchF loc_ADA426
  loc_ADA369: LitI2_Byte 2
  loc_ADA36B: FLdPr Me
  loc_ADA36E: MemStUI1
  loc_ADA372: ILdRf Me
  loc_ADA375: CastAd
  loc_ADA378: FStAdFunc var_94
  loc_ADA37B: FLdRfVar var_94
  loc_ADA37E: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_ADA383: FFree1Ad var_94
  loc_ADA386: LitI4 0
  loc_ADA38B: LitI4 0
  loc_ADA390: FLdRfVar var_98
  loc_ADA393: Redim
  loc_ADA39D: FLdPr Me
  loc_ADA3A0: VCallAd Control_ID_dgdABMS
  loc_ADA3A3: CVarAd
  loc_ADA3A7: ParmAry1St
  loc_ADA3AD: FLdRfVar var_98
  loc_ADA3B0: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_ADA3B5: FLdRfVar var_98
  loc_ADA3B8: Erase
  loc_ADA3B9: ILdRf Me
  loc_ADA3BC: CastAd
  loc_ADA3BF: FStAdFunc var_94
  loc_ADA3C2: FLdRfVar var_94
  loc_ADA3C5: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_ADA3CA: FFree1Ad var_94
  loc_ADA3CD: ILdRf Me
  loc_ADA3D0: CastAd
  loc_ADA3D3: FStAdFunc var_94
  loc_ADA3D6: FLdRfVar var_94
  loc_ADA3D9: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_ADA3DE: FFree1Ad var_94
  loc_ADA3E1: LitI4 0
  loc_ADA3E6: LitI4 0
  loc_ADA3EB: FLdRfVar var_98
  loc_ADA3EE: Redim
  loc_ADA3F8: FLdPr Me
  loc_ADA3FB: VCallAd Control_ID_CodiCucoMsk
  loc_ADA3FE: CVarAd
  loc_ADA402: ParmAry1St
  loc_ADA408: FLdRfVar var_98
  loc_ADA40B: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_ADA410: FLdRfVar var_98
  loc_ADA413: Erase
  loc_ADA414: FLdPr Me
  loc_ADA417: VCallAd Control_ID_DetaCucoTxt
  loc_ADA41A: CVarAd
  loc_ADA41E: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_ADA423: FFree1Var var_A8 = ""
  loc_ADA426: Branch loc_ADA8CC
  loc_ADA429: ILdRf var_90
  loc_ADA42C: LitStr "btnEliminar"
  loc_ADA42F: EqStr
  loc_ADA431: BranchF loc_ADA551
  loc_ADA434: FLdRfVar var_AC
  loc_ADA437: FLdPr Me
  loc_ADA43A: MemLdRfVar from_stack_1.global_56
  loc_ADA43D: NewIfNullPr clscuentacontable
  loc_ADA440: from_stack_1 = clscuentacontable.RecordCount
  loc_ADA445: ILdRf var_AC
  loc_ADA448: LitI4 0
  loc_ADA44D: GtI4
  loc_ADA44E: BranchF loc_ADA54E
  loc_ADA451: FLdRfVar var_8C
  loc_ADA454: FLdPr Me
  loc_ADA457: MemLdRfVar from_stack_1.global_56
  loc_ADA45A: NewIfNullPr clscuentacontable
  loc_ADA45D: from_stack_1v = clscuentacontable.ValidaEliminar()
  loc_ADA462: ILdRf var_8C
  loc_ADA465: FLdPr Me
  loc_ADA468: MemStStrCopy
  loc_ADA46C: FFree1Str var_8C
  loc_ADA46F: FLdPr Me
  loc_ADA472: MemLdStr global_68
  loc_ADA475: LitStr vbNullString
  loc_ADA478: NeStr
  loc_ADA47A: BranchF loc_ADA490
  loc_ADA47D: LitI4 0
  loc_ADA482: FLdPr Me
  loc_ADA485: MemLdStr global_68
  loc_ADA488: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_ADA48D: Branch loc_ADA54E
  loc_ADA490: LitI2_Byte 0
  loc_ADA492: PopTmpLdAd2 var_B0
  loc_ADA495: LitI2_Byte &HFF
  loc_ADA497: PopTmpLdAd2 var_AE
  loc_ADA49A: LitStr "¿Desea ELIMINAR la Cuenta Contable?"
  loc_ADA49D: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_ADA4A2: CI4UI1
  loc_ADA4A3: LitI4 6
  loc_ADA4A8: EqI4
  loc_ADA4A9: BranchF loc_ADA54E
  loc_ADA4AC: FLdRfVar var_A8
  loc_ADA4AF: FLdRfVar var_C8
  loc_ADA4B2: LitVarStr var_C4, "PeriInfo"
  loc_ADA4B7: PopAdLdVar
  loc_ADA4B8: FLdRfVar var_B4
  loc_ADA4BB: FLdRfVar var_94
  loc_ADA4BE: FLdPr Me
  loc_ADA4C1: MemLdRfVar from_stack_1.global_56
  loc_ADA4C4: NewIfNullPr clscuentacontable
  loc_ADA4C7: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_ADA4CC: FLdPr var_94
  loc_ADA4CF:  = Me.Fields
  loc_ADA4D4: FLdPr var_B4
  loc_ADA4D7: from_stack_2 = Me.Item(from_stack_1)
  loc_ADA4DC: FLdPr var_C8
  loc_ADA4DF:  = Me.Value
  loc_ADA4E4: FLdRfVar var_F4
  loc_ADA4E7: FLdRfVar var_E4
  loc_ADA4EA: LitVarStr var_E0, "CodiCuco"
  loc_ADA4EF: PopAdLdVar
  loc_ADA4F0: FLdRfVar var_D0
  loc_ADA4F3: FLdRfVar var_CC
  loc_ADA4F6: FLdPr Me
  loc_ADA4F9: MemLdRfVar from_stack_1.global_56
  loc_ADA4FC: NewIfNullPr clscuentacontable
  loc_ADA4FF: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_ADA504: FLdPr var_CC
  loc_ADA507:  = Me.Fields
  loc_ADA50C: FLdPr var_D0
  loc_ADA50F: from_stack_2 = Me.Item(from_stack_1)
  loc_ADA514: FLdPr var_E4
  loc_ADA517:  = Me.Value
  loc_ADA51C: FLdRfVar var_F4
  loc_ADA51F: CStrVarTmp
  loc_ADA520: FStStrNoPop var_8C
  loc_ADA523: FLdRfVar var_A8
  loc_ADA526: CI2Var
  loc_ADA527: FLdPr Me
  loc_ADA52A: MemLdRfVar from_stack_1.global_56
  loc_ADA52D: NewIfNullPr clscuentacontable
  loc_ADA530: Call clscuentacontable.Eliminar(from_stack_1v, from_stack_2v)
  loc_ADA535: FFree1Str var_8C
  loc_ADA538: FFreeAd var_94 = "": var_B4 = "": var_CC = "": var_D0 = "": var_C8 = ""
  loc_ADA547: FFreeVar var_A8 = ""
  loc_ADA54E: Branch loc_ADA8CC
  loc_ADA551: ILdRf var_90
  loc_ADA554: LitStr "btnGuardar"
  loc_ADA557: EqStr
  loc_ADA559: BranchF loc_ADA79C
  loc_ADA55C: LitStr vbNullString
  loc_ADA55F: FLdPr Me
  loc_ADA562: MemStStrCopy
  loc_ADA566: LitI2_Byte 0
  loc_ADA568: PopTmpLdAd2 var_AE
  loc_ADA56B: Call CodiCucoMsk_UnknownEvent_8()
  loc_ADA570: FLdPr Me
  loc_ADA573: MemLdStr global_68
  loc_ADA576: LitStr vbNullString
  loc_ADA579: NeStr
  loc_ADA57B: BranchF loc_ADA57F
  loc_ADA57E: ExitProcHresult
  loc_ADA57F: LitI2_Byte 0
  loc_ADA581: PopTmpLdAd2 var_AE
  loc_ADA584: Call DetaCucoTxt_Validate(from_stack_1v)
  loc_ADA589: FLdPr Me
  loc_ADA58C: MemLdStr global_68
  loc_ADA58F: LitStr vbNullString
  loc_ADA592: NeStr
  loc_ADA594: BranchF loc_ADA598
  loc_ADA597: ExitProcHresult
  loc_ADA598: LitI2_Byte 0
  loc_ADA59A: PopTmpLdAd2 var_AE
  loc_ADA59D: Call CodiTicuMsk_UnknownEvent_8()
  loc_ADA5A2: FLdPr Me
  loc_ADA5A5: MemLdStr global_68
  loc_ADA5A8: LitStr vbNullString
  loc_ADA5AB: NeStr
  loc_ADA5AD: BranchF loc_ADA5B1
  loc_ADA5B0: ExitProcHresult
  loc_ADA5B1: FLdPr Me
  loc_ADA5B4: MemLdUI1 global_64
  loc_ADA5B8: FStUI1 var_F6
  loc_ADA5BC: FLdUI1
  loc_ADA5C0: LitI2_Byte 1
  loc_ADA5C2: EqI2
  loc_ADA5C3: BranchF loc_ADA735
  loc_ADA5C6: FLdRfVar var_AE
  loc_ADA5C9: FLdPr Me
  loc_ADA5CC: VCallAd Control_ID_CodiCucoMsk
  loc_ADA5CF: FStAdFunc var_94
  loc_ADA5D2: FLdPr var_94
  loc_ADA5D5: LateIdLdVar var_A8 DispID_22 0
  loc_ADA5DC: CStrVarTmp
  loc_ADA5DD: FStStrNoPop var_8C
  loc_ADA5E0: FLdPr Me
  loc_ADA5E3: MemLdRfVar from_stack_1.global_56
  loc_ADA5E6: NewIfNullPr clscuentacontable
  loc_ADA5E9: from_stack_2v = clscuentacontable.NivelCuentaContable(from_stack_1v)
  loc_ADA5EE: FLdUI1
  loc_ADA5F2: CI2UI1
  loc_ADA5F4: LitI2_Byte 1
  loc_ADA5F6: GtI2
  loc_ADA5F7: FFree1Str var_8C
  loc_ADA5FA: FFree1Ad var_94
  loc_ADA5FD: FFree1Var var_A8 = ""
  loc_ADA600: BranchF loc_ADA6B6
  loc_ADA603: FLdPr Me
  loc_ADA606: VCallAd Control_ID_CodiCucoMsk
  loc_ADA609: FStAdFunc var_94
  loc_ADA60C: FLdPr var_94
  loc_ADA60F: LateIdLdVar var_A8 DispID_22 0
  loc_ADA616: PopAd
  loc_ADA618: FLdPr Me
  loc_ADA61B: VCallAd Control_ID_CodiCucoMsk
  loc_ADA61E: FStAdFunc var_B4
  loc_ADA621: FLdPr var_B4
  loc_ADA624: LateIdLdVar var_F4 DispID_22 0
  loc_ADA62B: PopAd
  loc_ADA62D: FLdRfVar var_AE
  loc_ADA630: FLdRfVar var_F4
  loc_ADA633: CStrVarTmp
  loc_ADA634: FStStrNoPop var_100
  loc_ADA637: FLdPr Me
  loc_ADA63A: MemLdRfVar from_stack_1.global_56
  loc_ADA63D: NewIfNullPr clscuentacontable
  loc_ADA640: from_stack_2v = clscuentacontable.NivelCuentaContable(from_stack_1v)
  loc_ADA645: LitStr "UPDATE infogov.cuentacontable SET ImpuCuco = 0 WHERE PeriInfo = "
  loc_ADA648: ImpAdLdI2 MemVar_C3D064
  loc_ADA64B: CStrUI1
  loc_ADA64D: FStStrNoPop var_8C
  loc_ADA650: ConcatStr
  loc_ADA651: FStStrNoPop var_FC
  loc_ADA654: LitStr " AND CodiCuco = '"
  loc_ADA657: ConcatStr
  loc_ADA658: FStStrNoPop var_10C
  loc_ADA65B: FLdRfVar var_108
  loc_ADA65E: FLdUI1
  loc_ADA662: CI2UI1
  loc_ADA664: FLdRfVar var_A8
  loc_ADA667: CStrVarTmp
  loc_ADA668: FStStrNoPop var_104
  loc_ADA66B: FLdPr Me
  loc_ADA66E: MemLdRfVar from_stack_1.global_56
  loc_ADA671: NewIfNullPr clscuentacontable
  loc_ADA674: from_stack_3v = clscuentacontable.CuentaContableNivelSuperior(from_stack_1v, from_stack_2v)
  loc_ADA679: ILdRf var_108
  loc_ADA67C: ConcatStr
  loc_ADA67D: FStStrNoPop var_110
  loc_ADA680: LitStr "'"
  loc_ADA683: ConcatStr
  loc_ADA684: FStStrNoPop var_114
  loc_ADA687: FLdPr Me
  loc_ADA68A: MemLdRfVar from_stack_1.global_60
  loc_ADA68D: NewIfNullPr clscuentacontable
  loc_ADA690: Call clscuentacontable.RedefineRS(from_stack_1v)
  loc_ADA695: FFreeStr var_8C = "": var_FC = "": var_100 = "": var_104 = "": var_10C = "": var_108 = "": var_110 = ""
  loc_ADA6A8: FFreeAd var_94 = ""
  loc_ADA6AF: FFreeVar var_A8 = ""
  loc_ADA6B6: FLdPr Me
  loc_ADA6B9: VCallAd Control_ID_CodiCucoMsk
  loc_ADA6BC: FStAdFunc var_94
  loc_ADA6BF: FLdPr var_94
  loc_ADA6C2: LateIdLdVar var_A8 DispID_22 0
  loc_ADA6C9: PopAd
  loc_ADA6CB: FLdRfVar var_FC
  loc_ADA6CE: FLdPr Me
  loc_ADA6D1: VCallAd Control_ID_DetaCucoTxt
  loc_ADA6D4: FStAdFunc var_B4
  loc_ADA6D7: FLdPr var_B4
  loc_ADA6DA:  = Me.Text
  loc_ADA6DF: FLdPr Me
  loc_ADA6E2: VCallAd Control_ID_CodiTicuMsk
  loc_ADA6E5: FStAdFunc var_C8
  loc_ADA6E8: FLdPr var_C8
  loc_ADA6EB: LateIdLdVar var_F4 DispID_0 0
  loc_ADA6F2: PopAd
  loc_ADA6F4: LitStr vbNullString
  loc_ADA6F7: FLdRfVar var_F4
  loc_ADA6FA: CStrVarTmp
  loc_ADA6FB: FStStrNoPop var_100
  loc_ADA6FE: ILdRf var_FC
  loc_ADA701: FLdRfVar var_A8
  loc_ADA704: CStrVarTmp
  loc_ADA705: FStStrNoPop var_8C
  loc_ADA708: ImpAdLdI2 MemVar_C3D064
  loc_ADA70B: FLdPr Me
  loc_ADA70E: MemLdRfVar from_stack_1.global_56
  loc_ADA711: NewIfNullPr clscuentacontable
  loc_ADA714: Call clscuentacontable.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_ADA719: FFreeStr var_8C = "": var_FC = ""
  loc_ADA722: FFreeAd var_94 = "": var_B4 = ""
  loc_ADA72B: FFreeVar var_A8 = ""
  loc_ADA732: Branch loc_ADA794
  loc_ADA735: FLdUI1
  loc_ADA739: LitI2_Byte 2
  loc_ADA73B: EqI2
  loc_ADA73C: BranchF loc_ADA794
  loc_ADA73F: FLdRfVar var_8C
  loc_ADA742: FLdPr Me
  loc_ADA745: VCallAd Control_ID_DetaCucoTxt
  loc_ADA748: FStAdFunc var_94
  loc_ADA74B: FLdPr var_94
  loc_ADA74E:  = Me.Text
  loc_ADA753: FLdPr Me
  loc_ADA756: VCallAd Control_ID_CodiTicuMsk
  loc_ADA759: FStAdFunc var_B4
  loc_ADA75C: FLdPr var_B4
  loc_ADA75F: LateIdLdVar var_A8 DispID_22 0
  loc_ADA766: PopAd
  loc_ADA768: LitStr vbNullString
  loc_ADA76B: FLdRfVar var_A8
  loc_ADA76E: CStrVarTmp
  loc_ADA76F: FStStrNoPop var_FC
  loc_ADA772: ILdRf var_8C
  loc_ADA775: FLdPr Me
  loc_ADA778: MemLdRfVar from_stack_1.global_56
  loc_ADA77B: NewIfNullPr clscuentacontable
  loc_ADA77E: Call clscuentacontable.Modificar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_ADA783: FFreeStr var_8C = ""
  loc_ADA78A: FFreeAd var_94 = ""
  loc_ADA791: FFree1Var var_A8 = ""
  loc_ADA794: Call cmdCancelar_Click()
  loc_ADA799: Branch loc_ADA8CC
  loc_ADA79C: ILdRf var_90
  loc_ADA79F: LitStr "btnCancelar"
  loc_ADA7A2: EqStr
  loc_ADA7A4: BranchF loc_ADA7AF
  loc_ADA7A7: Call cmdCancelar_Click()
  loc_ADA7AC: Branch loc_ADA8CC
  loc_ADA7AF: ILdRf var_90
  loc_ADA7B2: LitStr "btnPrimero"
  loc_ADA7B5: EqStr
  loc_ADA7B7: BranchF loc_ADA7CB
  loc_ADA7BA: FLdPr Me
  loc_ADA7BD: MemLdRfVar from_stack_1.global_56
  loc_ADA7C0: NewIfNullPr clscuentacontable
  loc_ADA7C3: Call clscuentacontable.MoveFirst()
  loc_ADA7C8: Branch loc_ADA8CC
  loc_ADA7CB: ILdRf var_90
  loc_ADA7CE: LitStr "btnAnterior"
  loc_ADA7D1: EqStr
  loc_ADA7D3: BranchF loc_ADA7E7
  loc_ADA7D6: FLdPr Me
  loc_ADA7D9: MemLdRfVar from_stack_1.global_56
  loc_ADA7DC: NewIfNullPr clscuentacontable
  loc_ADA7DF: Call clscuentacontable.MovePrevious()
  loc_ADA7E4: Branch loc_ADA8CC
  loc_ADA7E7: ILdRf var_90
  loc_ADA7EA: LitStr "btnSiguiente"
  loc_ADA7ED: EqStr
  loc_ADA7EF: BranchF loc_ADA803
  loc_ADA7F2: FLdPr Me
  loc_ADA7F5: MemLdRfVar from_stack_1.global_56
  loc_ADA7F8: NewIfNullPr clscuentacontable
  loc_ADA7FB: Call clscuentacontable.MoveNext()
  loc_ADA800: Branch loc_ADA8CC
  loc_ADA803: ILdRf var_90
  loc_ADA806: LitStr "btnUltimo"
  loc_ADA809: EqStr
  loc_ADA80B: BranchF loc_ADA81F
  loc_ADA80E: FLdPr Me
  loc_ADA811: MemLdRfVar from_stack_1.global_56
  loc_ADA814: NewIfNullPr clscuentacontable
  loc_ADA817: Call clscuentacontable.MoveLast()
  loc_ADA81C: Branch loc_ADA8CC
  loc_ADA81F: ILdRf var_90
  loc_ADA822: LitStr "btnFiltrar"
  loc_ADA825: EqStr
  loc_ADA827: BranchF loc_ADA82D
  loc_ADA82A: Branch loc_ADA8CC
  loc_ADA82D: ILdRf var_90
  loc_ADA830: LitStr "btnBuscar"
  loc_ADA833: EqStr
  loc_ADA835: BranchF loc_ADA83B
  loc_ADA838: Branch loc_ADA8CC
  loc_ADA83B: ILdRf var_90
  loc_ADA83E: LitStr "btnImprimir"
  loc_ADA841: EqStr
  loc_ADA843: BranchF loc_ADA875
  loc_ADA846: ImpAdLdRf MemVar_C3DD7C
  loc_ADA849: NewIfNullAd
  loc_ADA84C: CastAd
  loc_ADA84F: FStAdFuncNoPop
  loc_ADA852: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_ADA857: FFree1Ad var_94
  loc_ADA85A: LitVar_Missing var_E0
  loc_ADA85D: PopAdLdVar
  loc_ADA85E: LitVarI4
  loc_ADA866: PopAdLdVar
  loc_ADA867: ImpAdLdRf MemVar_C3DD7C
  loc_ADA86A: NewIfNullPr rptListadodelPlandeCuentas
  loc_ADA86D: rptListadodelPlandeCuentas.Show from_stack_1, from_stack_2
  loc_ADA872: Branch loc_ADA8CC
  loc_ADA875: ILdRf var_90
  loc_ADA878: LitStr "btnAyuda"
  loc_ADA87B: EqStr
  loc_ADA87D: BranchF loc_ADA8AC
  loc_ADA880: LitVar_Missing var_154
  loc_ADA883: LitVar_Missing var_134
  loc_ADA886: LitVar_Missing var_F4
  loc_ADA889: LitI4 0
  loc_ADA88E: LitVarStr var_C4, "Opcion no disponible en esta version."
  loc_ADA893: FStVarCopyObj var_A8
  loc_ADA896: FLdRfVar var_A8
  loc_ADA899: ImpAdCallFPR4 MsgBox(, , , , )
  loc_ADA89E: FFreeVar var_A8 = "": var_F4 = "": var_134 = ""
  loc_ADA8A9: Branch loc_ADA8CC
  loc_ADA8AC: ILdRf var_90
  loc_ADA8AF: LitStr "btnSalir"
  loc_ADA8B2: EqStr
  loc_ADA8B4: BranchF loc_ADA8CC
  loc_ADA8B7: ILdRf Me
  loc_ADA8BA: FStAdNoPop
  loc_ADA8BE: ImpAdLdRf MemVar_C44F9C
  loc_ADA8C1: NewIfNullPr Me
  loc_ADA8C4: Me.Global.Unload from_stack_1
  loc_ADA8C9: FFree1Ad var_94
  loc_ADA8CC: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '95F400
  'Data Table: 4597B8
  loc_95F3E8: FLdPr Me
  loc_95F3EB: VCallAd Control_ID_dgdABMS
  loc_95F3EE: FStAdFunc var_88
  loc_95F3F1: FLdRfVar var_88
  loc_95F3F4: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_95F3F9: FFree1Ad var_88
  loc_95F3FC: ExitProcHresult
  loc_95F3FD: VCallAd Control_ID_ilsABMS
End Sub

Private Sub dgdABMS_UnknownEvent_1 '95F4E4
  'Data Table: 4597B8
  loc_95F4CC: FLdPr Me
  loc_95F4CF: VCallAd Control_ID_dgdABMS
  loc_95F4D2: FStAdFunc var_88
  loc_95F4D5: FLdRfVar var_88
  loc_95F4D8: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_95F4DD: FFree1Ad var_88
  loc_95F4E0: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99BF00
  'Data Table: 4597B8
  loc_99BEA4: FLdRfVar var_B4
  loc_99BEA7: FLdRfVar var_B0
  loc_99BEAA: FLdI2 ColIndex
  loc_99BEAD: CVarI2 var_A8
  loc_99BEB0: PopAdLdVar
  loc_99BEB1: FLdPr Me
  loc_99BEB4: VCallAd Control_ID_dgdABMS
  loc_99BEB7: FStAdFunc var_88
  loc_99BEBA: FLdPr var_88
  loc_99BEBD: LateIdLdVar var_98 DispID_105 0
  loc_99BEC4: CastAdVar Me
  loc_99BEC8: FStAdFunc var_AC
  loc_99BECB: FLdPr var_AC
  loc_99BECE: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99BED3: FLdPr var_B0
  loc_99BED6:  = Me.DataField
  loc_99BEDB: FLdZeroAd var_B4
  loc_99BEDE: PopTmpLdAdStr
  loc_99BEE2: FLdPr Me
  loc_99BEE5: MemLdRfVar from_stack_1.global_56
  loc_99BEE8: NewIfNullPr clscuentacontable
  loc_99BEEB: Call clscuentacontable.Sort(from_stack_1v)
  loc_99BEF0: FFree1Str var_B8
  loc_99BEF3: FFreeAd var_88 = "": var_AC = ""
  loc_99BEFC: FFree1Var var_98 = ""
  loc_99BEFF: ExitProcHresult
End Sub

Private Sub DetaCucoTxt_GotFocus() '94BAB0
  'Data Table: 4597B8
  loc_94BA9C: FLdPr Me
  loc_94BA9F: VCallAd Control_ID_DetaCucoTxt
  loc_94BAA2: CVarAd
  loc_94BAA6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94BAAB: FFree1Var var_94 = ""
  loc_94BAAE: ExitProcHresult
End Sub

Private Sub DetaCucoTxt_Validate(Cancel As Boolean) '9BEC84
  'Data Table: 4597B8
  loc_9BEBC8: FLdRfVar var_8A
  loc_9BEBCB: FLdPr Me
  loc_9BEBCE: VCallAd Control_ID_cmdCancelar
  loc_9BEBD1: FStAdFunc var_88
  loc_9BEBD4: FLdPr var_88
  loc_9BEBD7:  = Me.Value
  loc_9BEBDC: FLdI2 var_8A
  loc_9BEBDF: NotI4
  loc_9BEBE0: FLdRfVar var_92
  loc_9BEBE3: FLdPr Me
  loc_9BEBE6: VCallAd Control_ID_DetaCucoTxt
  loc_9BEBE9: FStAdFunc var_90
  loc_9BEBEC: FLdPr var_90
  loc_9BEBEF:  = Me.Enabled
  loc_9BEBF4: FLdI2 var_92
  loc_9BEBF7: AndI4
  loc_9BEBF8: FFreeAd var_88 = ""
  loc_9BEBFF: BranchF loc_9BEC80
  loc_9BEC02: FLdRfVar var_98
  loc_9BEC05: FLdPr Me
  loc_9BEC08: VCallAd Control_ID_DetaCucoTxt
  loc_9BEC0B: FStAdFunc var_88
  loc_9BEC0E: FLdPr var_88
  loc_9BEC11:  = Me.Text
  loc_9BEC16: LitI2_Byte 0
  loc_9BEC18: PopTmpLdAd2 var_9A
  loc_9BEC1B: LitI2_Byte 0
  loc_9BEC1D: PopTmpLdAd2 var_92
  loc_9BEC20: LitI2_Byte 0
  loc_9BEC22: PopTmpLdAd2 var_8A
  loc_9BEC25: ILdRf var_98
  loc_9BEC28: LitStr "Detalle"
  loc_9BEC2B: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9BEC30: FStStrNoPop var_A0
  loc_9BEC33: FLdPr Me
  loc_9BEC36: MemStStrCopy
  loc_9BEC3A: FFreeStr var_98 = ""
  loc_9BEC41: FFree1Ad var_88
  loc_9BEC44: FLdPr Me
  loc_9BEC47: VCallAd Control_ID_DetaCucoTxt
  loc_9BEC4A: FStAdFunc var_A8
  loc_9BEC4D: LitNothing
  loc_9BEC4F: CastAd
  loc_9BEC52: FStAdFunc var_A4
  loc_9BEC55: FLdRfVar var_A4
  loc_9BEC58: FLdZeroAd var_A8
  loc_9BEC5B: FStAdFuncNoPop
  loc_9BEC5E: CastAd
  loc_9BEC61: FStAdFunc var_90
  loc_9BEC64: FLdRfVar var_90
  loc_9BEC67: FLdPr Me
  loc_9BEC6A: MemLdRfVar from_stack_1.global_68
  loc_9BEC6D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BEC72: IStI2 Cancel
  loc_9BEC75: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9BEC80: ExitProcHresult
  loc_9BEC81: FnLenStr
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94BB40
  'Data Table: 4597B8
  loc_94BB2C: FLdPr Me
  loc_94BB2F: VCallAd Control_ID_FiltroMsk
  loc_94BB32: CVarAd
  loc_94BB36: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94BB3B: FFree1Var var_94 = ""
  loc_94BB3E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A77B7C
  'Data Table: 4597B8
  loc_A777B0: ILdRf Me
  loc_A777B3: CastAd
  loc_A777B6: FStAdFunc var_88
  loc_A777B9: FLdRfVar var_88
  loc_A777BC: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A777C1: FFree1Ad var_88
  loc_A777C4: FLdPr Me
  loc_A777C7: VCallAd Control_ID_FiltroMsk
  loc_A777CA: FStAdFunc var_88
  loc_A777CD: FLdPr var_88
  loc_A777D0: LateIdLdVar var_98 DispID_22 0
  loc_A777D7: CStrVarTmp
  loc_A777D8: FStStrNoPop var_9C
  loc_A777DB: ImpAdCallI2 Trim$()
  loc_A777E0: FStStrNoPop var_A0
  loc_A777E3: LitStr vbNullString
  loc_A777E6: NeStr
  loc_A777E8: FFreeStr var_9C = ""
  loc_A777EF: FFree1Ad var_88
  loc_A777F2: FFree1Var var_98 = ""
  loc_A777F5: BranchF loc_A77A58
  loc_A777F8: FLdRfVar var_A2
  loc_A777FB: FLdPr Me
  loc_A777FE: VCallAd Control_ID_FiltroCbo
  loc_A77801: FStAdFunc var_88
  loc_A77804: FLdPr var_88
  loc_A77807:  = Me.ListIndex
  loc_A7780C: FLdI2 var_A2
  loc_A7780F: LitI2_Byte 0
  loc_A77811: EqI2
  loc_A77812: FFree1Ad var_88
  loc_A77815: BranchF loc_A77890
  loc_A77818: LitStr "CodiCuco LIKE '"
  loc_A7781B: FLdPr Me
  loc_A7781E: VCallAd Control_ID_FiltroMsk
  loc_A77821: FStAdFunc var_88
  loc_A77824: FLdPr var_88
  loc_A77827: LateIdLdVar var_98 DispID_22 0
  loc_A7782E: CStrVarTmp
  loc_A7782F: FStStrNoPop var_9C
  loc_A77832: ConcatStr
  loc_A77833: FStStrNoPop var_A0
  loc_A77836: LitStr Chr(37) & "'"
  loc_A77839: ConcatStr
  loc_A7783A: PopTmpLdAdStr
  loc_A7783E: FLdPr Me
  loc_A77841: MemLdRfVar from_stack_1.global_56
  loc_A77844: NewIfNullPr clscuentacontable
  loc_A77847: Call clscuentacontable.Filter(from_stack_1v)
  loc_A7784C: FFreeStr var_9C = "": var_A0 = ""
  loc_A77855: FFree1Ad var_88
  loc_A77858: FFree1Var var_98 = ""
  loc_A7785B: LitStr "Código de la Cuenta Contable comience con: "
  loc_A7785E: FLdPr Me
  loc_A77861: VCallAd Control_ID_FiltroMsk
  loc_A77864: FStAdFunc var_88
  loc_A77867: FLdPr var_88
  loc_A7786A: LateIdLdVar var_98 DispID_22 0
  loc_A77871: CStrVarTmp
  loc_A77872: FStStrNoPop var_9C
  loc_A77875: ConcatStr
  loc_A77876: FStStrNoPop var_A0
  loc_A77879: FLdPr Me
  loc_A7787C: MemStStrCopy
  loc_A77880: FFreeStr var_9C = ""
  loc_A77887: FFree1Ad var_88
  loc_A7788A: FFree1Var var_98 = ""
  loc_A7788D: Branch loc_A77A55
  loc_A77890: FLdRfVar var_A2
  loc_A77893: FLdPr Me
  loc_A77896: VCallAd Control_ID_FiltroCbo
  loc_A77899: FStAdFunc var_88
  loc_A7789C: FLdPr var_88
  loc_A7789F:  = Me.ListIndex
  loc_A778A4: FLdI2 var_A2
  loc_A778A7: LitI2_Byte 1
  loc_A778A9: EqI2
  loc_A778AA: FFree1Ad var_88
  loc_A778AD: BranchF loc_A77928
  loc_A778B0: LitStr "DetaCuco LIKE '" & Chr(37)
  loc_A778B3: FLdPr Me
  loc_A778B6: VCallAd Control_ID_FiltroMsk
  loc_A778B9: FStAdFunc var_88
  loc_A778BC: FLdPr var_88
  loc_A778BF: LateIdLdVar var_98 DispID_22 0
  loc_A778C6: CStrVarTmp
  loc_A778C7: FStStrNoPop var_9C
  loc_A778CA: ConcatStr
  loc_A778CB: FStStrNoPop var_A0
  loc_A778CE: LitStr Chr(37) & "'"
  loc_A778D1: ConcatStr
  loc_A778D2: PopTmpLdAdStr
  loc_A778D6: FLdPr Me
  loc_A778D9: MemLdRfVar from_stack_1.global_56
  loc_A778DC: NewIfNullPr clscuentacontable
  loc_A778DF: Call clscuentacontable.Filter(from_stack_1v)
  loc_A778E4: FFreeStr var_9C = "": var_A0 = ""
  loc_A778ED: FFree1Ad var_88
  loc_A778F0: FFree1Var var_98 = ""
  loc_A778F3: LitStr "Detalle de la Cuenta Contable contiene: "
  loc_A778F6: FLdPr Me
  loc_A778F9: VCallAd Control_ID_FiltroMsk
  loc_A778FC: FStAdFunc var_88
  loc_A778FF: FLdPr var_88
  loc_A77902: LateIdLdVar var_98 DispID_22 0
  loc_A77909: CStrVarTmp
  loc_A7790A: FStStrNoPop var_9C
  loc_A7790D: ConcatStr
  loc_A7790E: FStStrNoPop var_A0
  loc_A77911: FLdPr Me
  loc_A77914: MemStStrCopy
  loc_A77918: FFreeStr var_9C = ""
  loc_A7791F: FFree1Ad var_88
  loc_A77922: FFree1Var var_98 = ""
  loc_A77925: Branch loc_A77A55
  loc_A77928: FLdRfVar var_A2
  loc_A7792B: FLdPr Me
  loc_A7792E: VCallAd Control_ID_FiltroCbo
  loc_A77931: FStAdFunc var_88
  loc_A77934: FLdPr var_88
  loc_A77937:  = Me.ListIndex
  loc_A7793C: FLdI2 var_A2
  loc_A7793F: LitI2_Byte 2
  loc_A77941: EqI2
  loc_A77942: FFree1Ad var_88
  loc_A77945: BranchF loc_A779C0
  loc_A77948: LitStr "CodiTicu LIKE '"
  loc_A7794B: FLdPr Me
  loc_A7794E: VCallAd Control_ID_FiltroMsk
  loc_A77951: FStAdFunc var_88
  loc_A77954: FLdPr var_88
  loc_A77957: LateIdLdVar var_98 DispID_22 0
  loc_A7795E: CStrVarTmp
  loc_A7795F: FStStrNoPop var_9C
  loc_A77962: ConcatStr
  loc_A77963: FStStrNoPop var_A0
  loc_A77966: LitStr Chr(37) & "'"
  loc_A77969: ConcatStr
  loc_A7796A: PopTmpLdAdStr
  loc_A7796E: FLdPr Me
  loc_A77971: MemLdRfVar from_stack_1.global_56
  loc_A77974: NewIfNullPr clscuentacontable
  loc_A77977: Call clscuentacontable.Filter(from_stack_1v)
  loc_A7797C: FFreeStr var_9C = "": var_A0 = ""
  loc_A77985: FFree1Ad var_88
  loc_A77988: FFree1Var var_98 = ""
  loc_A7798B: LitStr "Código del Tipo de Cuenta Contable comience con: "
  loc_A7798E: FLdPr Me
  loc_A77991: VCallAd Control_ID_FiltroMsk
  loc_A77994: FStAdFunc var_88
  loc_A77997: FLdPr var_88
  loc_A7799A: LateIdLdVar var_98 DispID_22 0
  loc_A779A1: CStrVarTmp
  loc_A779A2: FStStrNoPop var_9C
  loc_A779A5: ConcatStr
  loc_A779A6: FStStrNoPop var_A0
  loc_A779A9: FLdPr Me
  loc_A779AC: MemStStrCopy
  loc_A779B0: FFreeStr var_9C = ""
  loc_A779B7: FFree1Ad var_88
  loc_A779BA: FFree1Var var_98 = ""
  loc_A779BD: Branch loc_A77A55
  loc_A779C0: FLdRfVar var_A2
  loc_A779C3: FLdPr Me
  loc_A779C6: VCallAd Control_ID_FiltroCbo
  loc_A779C9: FStAdFunc var_88
  loc_A779CC: FLdPr var_88
  loc_A779CF:  = Me.ListIndex
  loc_A779D4: FLdI2 var_A2
  loc_A779D7: LitI2_Byte 3
  loc_A779D9: EqI2
  loc_A779DA: FFree1Ad var_88
  loc_A779DD: BranchF loc_A77A55
  loc_A779E0: LitStr "DetaTicu LIKE '" & Chr(37)
  loc_A779E3: FLdPr Me
  loc_A779E6: VCallAd Control_ID_FiltroMsk
  loc_A779E9: FStAdFunc var_88
  loc_A779EC: FLdPr var_88
  loc_A779EF: LateIdLdVar var_98 DispID_22 0
  loc_A779F6: CStrVarTmp
  loc_A779F7: FStStrNoPop var_9C
  loc_A779FA: ConcatStr
  loc_A779FB: FStStrNoPop var_A0
  loc_A779FE: LitStr Chr(37) & "'"
  loc_A77A01: ConcatStr
  loc_A77A02: PopTmpLdAdStr
  loc_A77A06: FLdPr Me
  loc_A77A09: MemLdRfVar from_stack_1.global_56
  loc_A77A0C: NewIfNullPr clscuentacontable
  loc_A77A0F: Call clscuentacontable.Filter(from_stack_1v)
  loc_A77A14: FFreeStr var_9C = "": var_A0 = ""
  loc_A77A1D: FFree1Ad var_88
  loc_A77A20: FFree1Var var_98 = ""
  loc_A77A23: LitStr "Detalle del Tipo de Cuenta Contable contiene: "
  loc_A77A26: FLdPr Me
  loc_A77A29: VCallAd Control_ID_FiltroMsk
  loc_A77A2C: FStAdFunc var_88
  loc_A77A2F: FLdPr var_88
  loc_A77A32: LateIdLdVar var_98 DispID_22 0
  loc_A77A39: CStrVarTmp
  loc_A77A3A: FStStrNoPop var_9C
  loc_A77A3D: ConcatStr
  loc_A77A3E: FStStrNoPop var_A0
  loc_A77A41: FLdPr Me
  loc_A77A44: MemStStrCopy
  loc_A77A48: FFreeStr var_9C = ""
  loc_A77A4F: FFree1Ad var_88
  loc_A77A52: FFree1Var var_98 = ""
  loc_A77A55: Branch loc_A77A7C
  loc_A77A58: LitStr vbNullString
  loc_A77A5B: FStStrCopy var_9C
  loc_A77A5E: FLdRfVar var_9C
  loc_A77A61: FLdPr Me
  loc_A77A64: MemLdRfVar from_stack_1.global_56
  loc_A77A67: NewIfNullPr clscuentacontable
  loc_A77A6A: Call clscuentacontable.Filter(from_stack_1v)
  loc_A77A6F: FFree1Str var_9C
  loc_A77A72: LitStr vbNullString
  loc_A77A75: FLdPr Me
  loc_A77A78: MemStStrCopy
  loc_A77A7C: FLdRfVar var_AC
  loc_A77A7F: FLdPr Me
  loc_A77A82: MemLdRfVar from_stack_1.global_56
  loc_A77A85: NewIfNullPr clscuentacontable
  loc_A77A88: from_stack_1 = clscuentacontable.RecordCount
  loc_A77A8D: ILdRf var_AC
  loc_A77A90: LitI4 0
  loc_A77A95: GtI4
  loc_A77A96: BranchF loc_A77B34
  loc_A77A99: FLdPr Me
  loc_A77A9C: MemLdRfVar from_stack_1.global_56
  loc_A77A9F: NewIfNullAd
  loc_A77AA2: FStAd var_B0 
  loc_A77AA6: FLdRfVar var_B0
  loc_A77AA9: CVarRef
  loc_A77AAE: ILdRf Me
  loc_A77AB1: CastAd
  loc_A77AB4: FStAdFunc var_88
  loc_A77AB7: FLdRfVar var_88
  loc_A77ABA: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A77ABF: ILdRf var_B0
  loc_A77AC2: CastAd
  loc_A77AC5: FLdPr Me
  loc_A77AC8: MemStAdFunc
  loc_A77ACC: FFreeAd var_88 = ""
  loc_A77AD3: LitI4 0
  loc_A77AD8: LitI4 1
  loc_A77ADD: FLdRfVar var_C4
  loc_A77AE0: Redim
  loc_A77AEA: FLdPr Me
  loc_A77AED: MemLdRfVar from_stack_1.global_56
  loc_A77AF0: NewIfNullAd
  loc_A77AF3: FStAd var_88 
  loc_A77AF7: FLdRfVar var_88
  loc_A77AFA: CVarRef
  loc_A77AFF: ParmAry1St
  loc_A77B05: FLdPr Me
  loc_A77B08: VCallAd Control_ID_dgdABMS
  loc_A77B0B: CVarAd
  loc_A77B0F: ParmAry1St
  loc_A77B15: FLdRfVar var_C4
  loc_A77B18: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A77B1D: ILdRf var_88
  loc_A77B20: CastAd
  loc_A77B23: FLdPr Me
  loc_A77B26: MemStAdFunc
  loc_A77B2A: FLdRfVar var_C4
  loc_A77B2D: Erase
  loc_A77B2E: FFree1Ad var_88
  loc_A77B31: Branch loc_A77B48
  loc_A77B34: ILdRf Me
  loc_A77B37: CastAd
  loc_A77B3A: FStAdFunc var_88
  loc_A77B3D: FLdRfVar var_88
  loc_A77B40: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A77B45: FFree1Ad var_88
  loc_A77B48: FLdPr Me
  loc_A77B4B: VCallAd Control_ID_dgdABMS
  loc_A77B4E: FStAdFunc var_B0
  loc_A77B51: LitI4 0
  loc_A77B56: FStStrCopy var_9C
  loc_A77B59: FLdRfVar var_9C
  loc_A77B5C: FLdPr Me
  loc_A77B5F: MemLdStr global_72
  loc_A77B62: FLdZeroAd var_B0
  loc_A77B65: FStAdFunc var_88
  loc_A77B68: FLdRfVar var_88
  loc_A77B6B: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A77B70: FFree1Str var_9C
  loc_A77B73: FFreeAd var_88 = ""
  loc_A77B7A: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '999384
  'Data Table: 4597B8
  loc_999320: ILdI2 KeyAscii
  loc_999323: LitI2_Byte &H27
  loc_999325: EqI2
  loc_999326: BranchF loc_99932E
  loc_999329: LitI2_Byte 0
  loc_99932B: IStI2 KeyAscii
  loc_99932E: FLdRfVar var_88
  loc_999331: FLdPr Me
  loc_999334: MemLdRfVar from_stack_1.global_56
  loc_999337: NewIfNullPr clscuentacontable
  loc_99933A: from_stack_1 = clscuentacontable.RecordCount
  loc_99933F: ILdRf var_88
  loc_999342: LitI4 0
  loc_999347: EqI4
  loc_999348: ILdI2 KeyAscii
  loc_99934B: CI4UI1
  loc_99934C: LitI4 8
  loc_999351: NeI4
  loc_999352: AndI4
  loc_999353: FLdPr Me
  loc_999356: VCallAd Control_ID_FiltroMsk
  loc_999359: FStAdFunc var_8C
  loc_99935C: FLdPr var_8C
  loc_99935F: LateIdLdVar var_9C DispID_16 0
  loc_999366: CStrVarTmp
  loc_999367: FStStrNoPop var_A0
  loc_99936A: LitStr vbNullString
  loc_99936D: EqStr
  loc_99936F: AndI4
  loc_999370: FFree1Str var_A0
  loc_999373: FFree1Ad var_8C
  loc_999376: FFree1Var var_9C = ""
  loc_999379: BranchF loc_999381
  loc_99937C: LitI2_Byte 0
  loc_99937E: IStI2 KeyAscii
  loc_999381: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '9E0460
  'Data Table: 4597B8
  loc_9E035C: LitI2_Byte 0
  loc_9E035E: CUI1I2
  loc_9E0360: FLdPr Me
  loc_9E0363: MemStUI1
  loc_9E0367: ILdRf Me
  loc_9E036A: CastAd
  loc_9E036D: FStAdFunc var_88
  loc_9E0370: FLdRfVar var_88
  loc_9E0373: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9E0378: FFree1Ad var_88
  loc_9E037B: LitI4 0
  loc_9E0380: LitI4 0
  loc_9E0385: FLdRfVar var_8C
  loc_9E0388: Redim
  loc_9E0392: FLdPr Me
  loc_9E0395: VCallAd Control_ID_dgdABMS
  loc_9E0398: CVarAd
  loc_9E039C: ParmAry1St
  loc_9E03A2: FLdRfVar var_8C
  loc_9E03A5: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9E03AA: FLdRfVar var_8C
  loc_9E03AD: Erase
  loc_9E03AE: FLdPr Me
  loc_9E03B1: MemLdRfVar from_stack_1.global_56
  loc_9E03B4: NewIfNullAd
  loc_9E03B7: FStAd var_A0 
  loc_9E03BB: FLdRfVar var_A0
  loc_9E03BE: CVarRef
  loc_9E03C3: ILdRf Me
  loc_9E03C6: CastAd
  loc_9E03C9: FStAdFunc var_88
  loc_9E03CC: FLdRfVar var_88
  loc_9E03CF: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9E03D4: ILdRf var_A0
  loc_9E03D7: CastAd
  loc_9E03DA: FLdPr Me
  loc_9E03DD: MemStAdFunc
  loc_9E03E1: FFreeAd var_88 = ""
  loc_9E03E8: FLdRfVar var_B4
  loc_9E03EB: FLdPr Me
  loc_9E03EE: MemLdRfVar from_stack_1.global_56
  loc_9E03F1: NewIfNullPr clscuentacontable
  loc_9E03F4: from_stack_1 = clscuentacontable.RecordCount
  loc_9E03F9: ILdRf var_B4
  loc_9E03FC: LitI4 0
  loc_9E0401: EqI4
  loc_9E0402: BranchF loc_9E0419
  loc_9E0405: ILdRf Me
  loc_9E0408: CastAd
  loc_9E040B: FStAdFunc var_88
  loc_9E040E: FLdRfVar var_88
  loc_9E0411: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_9E0416: FFree1Ad var_88
  loc_9E0419: ILdRf Me
  loc_9E041C: CastAd
  loc_9E041F: FStAdFunc var_88
  loc_9E0422: FLdRfVar var_88
  loc_9E0425: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9E042A: FFree1Ad var_88
  loc_9E042D: FLdPr Me
  loc_9E0430: VCallAd Control_ID_dgdABMS
  loc_9E0433: FStAdFunc var_A0
  loc_9E0436: LitI4 0
  loc_9E043B: FStStrCopy var_B8
  loc_9E043E: FLdRfVar var_B8
  loc_9E0441: FLdPr Me
  loc_9E0444: MemLdStr global_72
  loc_9E0447: FLdZeroAd var_A0
  loc_9E044A: FStAdFunc var_88
  loc_9E044D: FLdRfVar var_88
  loc_9E0450: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_9E0455: FFree1Str var_B8
  loc_9E0458: FFreeAd var_88 = ""
  loc_9E045F: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'A03FE0
  'Data Table: 4597B8
  loc_A03E74: LitVarStr var_94, vbNullString
  loc_A03E79: PopAdLdVar
  loc_A03E7A: FLdPr Me
  loc_A03E7D: VCallAd Control_ID_FiltroMsk
  loc_A03E80: FStAdFunc var_A8
  loc_A03E83: FLdPr var_A8
  loc_A03E86: LateIdSt
  loc_A03E8B: FFree1Ad var_A8
  loc_A03E8E: FLdRfVar var_AA
  loc_A03E91: FLdPr Me
  loc_A03E94: VCallAd Control_ID_FiltroCbo
  loc_A03E97: FStAdFunc var_A8
  loc_A03E9A: FLdPr var_A8
  loc_A03E9D:  = Me.ListIndex
  loc_A03EA2: FLdI2 var_AA
  loc_A03EA5: FStI2 var_AC
  loc_A03EA8: FFree1Ad var_A8
  loc_A03EAB: FLdI2 var_AC
  loc_A03EAE: LitI2_Byte 0
  loc_A03EB0: EqI2
  loc_A03EB1: BranchF loc_A03EEB
  loc_A03EB4: LitVarStr var_94, "#.#.##.##.##.##"
  loc_A03EB9: PopAdLdVar
  loc_A03EBA: FLdPr Me
  loc_A03EBD: VCallAd Control_ID_FiltroMsk
  loc_A03EC0: FStAdFunc var_A8
  loc_A03EC3: FLdPr var_A8
  loc_A03EC6: LateIdSt
  loc_A03ECB: FFree1Ad var_A8
  loc_A03ECE: LitStr "CodiCuco"
  loc_A03ED1: FStStrCopy var_B0
  loc_A03ED4: FLdRfVar var_B0
  loc_A03ED7: FLdPr Me
  loc_A03EDA: MemLdRfVar from_stack_1.global_56
  loc_A03EDD: NewIfNullPr clscuentacontable
  loc_A03EE0: Call clscuentacontable.Sort(from_stack_1v)
  loc_A03EE5: FFree1Str var_B0
  loc_A03EE8: Branch loc_A03FDC
  loc_A03EEB: FLdI2 var_AC
  loc_A03EEE: LitI2_Byte 1
  loc_A03EF0: EqI2
  loc_A03EF1: BranchF loc_A03F45
  loc_A03EF4: LitVarStr var_94, "&"
  loc_A03EF9: PopAdLdVar
  loc_A03EFA: FLdPr Me
  loc_A03EFD: VCallAd Control_ID_FiltroMsk
  loc_A03F00: FStAdFunc var_A8
  loc_A03F03: FLdPr var_A8
  loc_A03F06: LateIdSt
  loc_A03F0B: FFree1Ad var_A8
  loc_A03F0E: LitVarStr var_94, vbNullString
  loc_A03F13: PopAdLdVar
  loc_A03F14: FLdPr Me
  loc_A03F17: VCallAd Control_ID_FiltroMsk
  loc_A03F1A: FStAdFunc var_A8
  loc_A03F1D: FLdPr var_A8
  loc_A03F20: LateIdSt
  loc_A03F25: FFree1Ad var_A8
  loc_A03F28: LitStr "DetaCuco"
  loc_A03F2B: FStStrCopy var_B0
  loc_A03F2E: FLdRfVar var_B0
  loc_A03F31: FLdPr Me
  loc_A03F34: MemLdRfVar from_stack_1.global_56
  loc_A03F37: NewIfNullPr clscuentacontable
  loc_A03F3A: Call clscuentacontable.Sort(from_stack_1v)
  loc_A03F3F: FFree1Str var_B0
  loc_A03F42: Branch loc_A03FDC
  loc_A03F45: FLdI2 var_AC
  loc_A03F48: LitI2_Byte 2
  loc_A03F4A: EqI2
  loc_A03F4B: BranchF loc_A03F85
  loc_A03F4E: LitVarStr var_94, "####"
  loc_A03F53: PopAdLdVar
  loc_A03F54: FLdPr Me
  loc_A03F57: VCallAd Control_ID_FiltroMsk
  loc_A03F5A: FStAdFunc var_A8
  loc_A03F5D: FLdPr var_A8
  loc_A03F60: LateIdSt
  loc_A03F65: FFree1Ad var_A8
  loc_A03F68: LitStr "CodiTicu"
  loc_A03F6B: FStStrCopy var_B0
  loc_A03F6E: FLdRfVar var_B0
  loc_A03F71: FLdPr Me
  loc_A03F74: MemLdRfVar from_stack_1.global_56
  loc_A03F77: NewIfNullPr clscuentacontable
  loc_A03F7A: Call clscuentacontable.Sort(from_stack_1v)
  loc_A03F7F: FFree1Str var_B0
  loc_A03F82: Branch loc_A03FDC
  loc_A03F85: FLdI2 var_AC
  loc_A03F88: LitI2_Byte 3
  loc_A03F8A: EqI2
  loc_A03F8B: BranchF loc_A03FDC
  loc_A03F8E: LitVarStr var_94, "&"
  loc_A03F93: PopAdLdVar
  loc_A03F94: FLdPr Me
  loc_A03F97: VCallAd Control_ID_FiltroMsk
  loc_A03F9A: FStAdFunc var_A8
  loc_A03F9D: FLdPr var_A8
  loc_A03FA0: LateIdSt
  loc_A03FA5: FFree1Ad var_A8
  loc_A03FA8: LitVarStr var_94, vbNullString
  loc_A03FAD: PopAdLdVar
  loc_A03FAE: FLdPr Me
  loc_A03FB1: VCallAd Control_ID_FiltroMsk
  loc_A03FB4: FStAdFunc var_A8
  loc_A03FB7: FLdPr var_A8
  loc_A03FBA: LateIdSt
  loc_A03FBF: FFree1Ad var_A8
  loc_A03FC2: LitStr "DetaTicu"
  loc_A03FC5: FStStrCopy var_B0
  loc_A03FC8: FLdRfVar var_B0
  loc_A03FCB: FLdPr Me
  loc_A03FCE: MemLdRfVar from_stack_1.global_56
  loc_A03FD1: NewIfNullPr clscuentacontable
  loc_A03FD4: Call clscuentacontable.Sort(from_stack_1v)
  loc_A03FD9: FFree1Str var_B0
  loc_A03FDC: ExitProcHresult
End Sub

Private Sub CodiCucoMsk_UnknownEvent_0 '94B990
  'Data Table: 4597B8
  loc_94B97C: FLdPr Me
  loc_94B97F: VCallAd Control_ID_CodiCucoMsk
  loc_94B982: CVarAd
  loc_94B986: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B98B: FFree1Var var_94 = ""
  loc_94B98E: ExitProcHresult
  loc_94B98F: ExitProcCy
End Sub

Private Function CodiCucoMsk_UnknownEvent_8(arg_C) '9C312C
  'Data Table: 4597B8
  loc_9C306C: FLdRfVar var_8A
  loc_9C306F: FLdPr Me
  loc_9C3072: VCallAd Control_ID_cmdCancelar
  loc_9C3075: FStAdFunc var_88
  loc_9C3078: FLdPr var_88
  loc_9C307B:  = Me.Value
  loc_9C3080: FLdI2 var_8A
  loc_9C3083: NotI4
  loc_9C3084: FLdPr Me
  loc_9C3087: VCallAd Control_ID_CodiCucoMsk
  loc_9C308A: FStAdFunc var_90
  loc_9C308D: FLdPr var_90
  loc_9C3090: LateIdLdVar var_A0 DispID_13 -32767
  loc_9C3097: CBoolVar
  loc_9C3099: AndI4
  loc_9C309A: FFreeAd var_88 = ""
  loc_9C30A1: FFree1Var var_A0 = ""
  loc_9C30A4: BranchF loc_9C312A
  loc_9C30A7: FLdPr Me
  loc_9C30AA: VCallAd Control_ID_CodiCucoMsk
  loc_9C30AD: FStAdFunc var_88
  loc_9C30B0: FLdPr var_88
  loc_9C30B3: LateIdLdVar var_A0 DispID_22 0
  loc_9C30BA: PopAd
  loc_9C30BC: FLdRfVar var_A8
  loc_9C30BF: FLdRfVar var_A0
  loc_9C30C2: CStrVarTmp
  loc_9C30C3: FStStrNoPop var_A4
  loc_9C30C6: ImpAdLdI2 MemVar_C3D064
  loc_9C30C9: FLdPr Me
  loc_9C30CC: MemLdRfVar from_stack_1.global_56
  loc_9C30CF: NewIfNullPr clscuentacontable
  loc_9C30D2: from_stack_3v = clscuentacontable.ValidaCodiCuco(from_stack_1v, from_stack_2v)
  loc_9C30D7: ILdRf var_A8
  loc_9C30DA: FLdPr Me
  loc_9C30DD: MemStStrCopy
  loc_9C30E1: FFreeStr var_A4 = ""
  loc_9C30E8: FFree1Ad var_88
  loc_9C30EB: FFree1Var var_A0 = ""
  loc_9C30EE: FLdPr Me
  loc_9C30F1: VCallAd Control_ID_CodiCucoMsk
  loc_9C30F4: FStAdFunc var_B0
  loc_9C30F7: LitNothing
  loc_9C30F9: CastAd
  loc_9C30FC: FStAdFunc var_AC
  loc_9C30FF: FLdRfVar var_AC
  loc_9C3102: FLdZeroAd var_B0
  loc_9C3105: FStAdFuncNoPop
  loc_9C3108: CastAd
  loc_9C310B: FStAdFunc var_90
  loc_9C310E: FLdRfVar var_90
  loc_9C3111: FLdPr Me
  loc_9C3114: MemLdRfVar from_stack_1.global_68
  loc_9C3117: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C311C: IStI2 arg_C
  loc_9C311F: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_9C312A: ExitProcHresult
End Function

Private Sub Form_Load() 'A230AC
  'Data Table: 4597B8
  loc_A22F10: LitVarStr var_94, "#.#.##.##.##.##"
  loc_A22F15: PopAdLdVar
  loc_A22F16: FLdPr Me
  loc_A22F19: VCallAd Control_ID_CodiCucoMsk
  loc_A22F1C: FStAdFunc var_A8
  loc_A22F1F: FLdPr var_A8
  loc_A22F22: LateIdSt
  loc_A22F27: FFree1Ad var_A8
  loc_A22F2A: ImpAdLdI2 MemVar_C3D064
  loc_A22F2D: LitI2 2025
  loc_A22F30: LeI2
  loc_A22F31: BranchF loc_A22F51
  loc_A22F34: LitVarI4
  loc_A22F3C: PopAdLdVar
  loc_A22F3D: FLdPr Me
  loc_A22F40: VCallAd Control_ID_dgdABMS
  loc_A22F43: FStAdFunc var_A8
  loc_A22F46: FLdPr var_A8
  loc_A22F49: LateIdSt
  loc_A22F4E: FFree1Ad var_A8
  loc_A22F51: LitI2_Byte 0
  loc_A22F53: CR8I2
  loc_A22F54: PopFPR4
  loc_A22F55: FLdPr Me
  loc_A22F58: Me.Left = from_stack_1s
  loc_A22F5D: LitI2_Byte 0
  loc_A22F5F: CR8I2
  loc_A22F60: PopFPR4
  loc_A22F61: FLdPr Me
  loc_A22F64: Me.Top = from_stack_1s
  loc_A22F69: LitStr vbNullString
  loc_A22F6C: FLdPr Me
  loc_A22F6F: MemStStrCopy
  loc_A22F73: LitStr "SELECT PeriInfo, CodiCuco, DetaCuco, IF(ImpuCuco=0,'No','Si') ImpuCuco, cc.CodiTicu, IFNULL(DetaTicu,'') DetaTicu, IF(ImpuTicu=0,'No','Si') ImpuTicu, IF(cc.ModiUsua!='',cc.ModiUsua,cc.AltaUsua) CodiUsua"
  loc_A22F76: LitStr " FROM infogov.cuentacontable cc"
  loc_A22F79: ConcatStr
  loc_A22F7A: FStStrNoPop var_AC
  loc_A22F7D: LitStr " LEFT JOIN tipocuco ON tipocuco.CodiTicu = cc.CodiTicu"
  loc_A22F80: ConcatStr
  loc_A22F81: FStStrNoPop var_B0
  loc_A22F84: LitStr " WHERE PeriInfo = "
  loc_A22F87: ConcatStr
  loc_A22F88: FStStrNoPop var_B4
  loc_A22F8B: ImpAdLdI2 MemVar_C3D064
  loc_A22F8E: CStrUI1
  loc_A22F90: FStStrNoPop var_B8
  loc_A22F93: ConcatStr
  loc_A22F94: FStStrNoPop var_BC
  loc_A22F97: LitStr " ORDER BY PeriInfo, CodiCuco"
  loc_A22F9A: ConcatStr
  loc_A22F9B: FStStrNoPop var_C0
  loc_A22F9E: FLdPr Me
  loc_A22FA1: MemLdRfVar from_stack_1.global_56
  loc_A22FA4: NewIfNullPr clscuentacontable
  loc_A22FA7: Call clscuentacontable.RedefineRS(from_stack_1v)
  loc_A22FAC: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A22FBB: LitVarI2 var_94, 0
  loc_A22FC0: PopAdLdVar
  loc_A22FC1: LitStr "Cuenta Contable (Código)"
  loc_A22FC4: FLdPr Me
  loc_A22FC7: VCallAd Control_ID_FiltroCbo
  loc_A22FCA: FStAdFunc var_A8
  loc_A22FCD: FLdPr var_A8
  loc_A22FD0: Me.AddItem from_stack_1, from_stack_2
  loc_A22FD5: FFree1Ad var_A8
  loc_A22FD8: LitVarI2 var_94, 1
  loc_A22FDD: PopAdLdVar
  loc_A22FDE: LitStr "Cuenta Contable (Detalle)"
  loc_A22FE1: FLdPr Me
  loc_A22FE4: VCallAd Control_ID_FiltroCbo
  loc_A22FE7: FStAdFunc var_A8
  loc_A22FEA: FLdPr var_A8
  loc_A22FED: Me.AddItem from_stack_1, from_stack_2
  loc_A22FF2: FFree1Ad var_A8
  loc_A22FF5: LitVarI2 var_94, 2
  loc_A22FFA: PopAdLdVar
  loc_A22FFB: LitStr "Tipo de Cuenta Contable (Código)"
  loc_A22FFE: FLdPr Me
  loc_A23001: VCallAd Control_ID_FiltroCbo
  loc_A23004: FStAdFunc var_A8
  loc_A23007: FLdPr var_A8
  loc_A2300A: Me.AddItem from_stack_1, from_stack_2
  loc_A2300F: FFree1Ad var_A8
  loc_A23012: LitVarI2 var_94, 3
  loc_A23017: PopAdLdVar
  loc_A23018: LitStr "Tipo de Cuenta Contable (Detalle)"
  loc_A2301B: FLdPr Me
  loc_A2301E: VCallAd Control_ID_FiltroCbo
  loc_A23021: FStAdFunc var_A8
  loc_A23024: FLdPr var_A8
  loc_A23027: Me.AddItem from_stack_1, from_stack_2
  loc_A2302C: FFree1Ad var_A8
  loc_A2302F: LitI2_Byte 0
  loc_A23031: FLdPr Me
  loc_A23034: VCallAd Control_ID_FiltroCbo
  loc_A23037: FStAdFunc var_A8
  loc_A2303A: FLdPr var_A8
  loc_A2303D: Me.ListIndex = from_stack_1
  loc_A23042: FFree1Ad var_A8
  loc_A23045: Call cmdCancelar_Click()
  loc_A2304A: LitI4 0
  loc_A2304F: LitI4 1
  loc_A23054: FLdRfVar var_C4
  loc_A23057: Redim
  loc_A23061: FLdPr Me
  loc_A23064: MemLdRfVar from_stack_1.global_56
  loc_A23067: NewIfNullAd
  loc_A2306A: FStAd var_A8 
  loc_A2306E: FLdRfVar var_A8
  loc_A23071: CVarRef
  loc_A23076: ParmAry1St
  loc_A2307C: FLdPr Me
  loc_A2307F: VCallAd Control_ID_dgdABMS
  loc_A23082: CVarAd
  loc_A23086: ParmAry1St
  loc_A2308C: FLdRfVar var_C4
  loc_A2308F: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A23094: ILdRf var_A8
  loc_A23097: CastAd
  loc_A2309A: FLdPr Me
  loc_A2309D: MemStAdFunc
  loc_A230A1: FLdRfVar var_C4
  loc_A230A4: Erase
  loc_A230A5: FFree1Ad var_A8
  loc_A230A8: ExitProcHresult
End Sub

Private Sub Form_Activate() '9972FC
  'Data Table: 4597B8
  loc_9972A0: FLdRfVar var_C2
  loc_9972A3: FLdRfVar var_C0
  loc_9972A6: LitVarI2 var_B8, 1
  loc_9972AB: FLdPr Me
  loc_9972AE: VCallAd Control_ID_tlbABMS
  loc_9972B1: FStAdFunc var_88
  loc_9972B4: FLdPr var_88
  loc_9972B7: LateIdLdVar var_98 DispID_3 0
  loc_9972BE: CastAdVar Me
  loc_9972C2: FStAdFunc var_BC
  loc_9972C5: FLdPr var_BC
  loc_9972C8:  = Me.Buttons.ControlDefault
  loc_9972CD: FLdPr var_C0
  loc_9972D0:  = Me.Enabled
  loc_9972D5: FLdI2 var_C2
  loc_9972D8: FFreeAd var_88 = "": var_BC = ""
  loc_9972E1: FFreeVar var_98 = ""
  loc_9972E8: BranchF loc_9972F9
  loc_9972EB: FLdPr Me
  loc_9972EE: MemLdRfVar from_stack_1.global_56
  loc_9972F1: NewIfNullPr clscuentacontable
  loc_9972F4: Call clscuentacontable.Requery()
  loc_9972F9: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '948DEC
  'Data Table: 4597B8
  loc_948DD8: ILdI2 KeyAscii
  loc_948DDB: CI4UI1
  loc_948DDC: LitI4 &HD
  loc_948DE1: EqI4
  loc_948DE2: BranchF loc_948DEA
  loc_948DE5: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_948DEA: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '95F958
  'Data Table: 4597B8
  loc_95F940: ILdI2 KeyCode
  loc_95F943: ILdRf Me
  loc_95F946: CastAd
  loc_95F949: FStAdFunc var_88
  loc_95F94C: FLdRfVar var_88
  loc_95F94F: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_95F954: FFree1Ad var_88
  loc_95F957: ExitProcHresult
End Sub

Public Function htmlGet() '45A4D0
  htmlGet = html
End Function

Public Sub htmlPut(Value) '45A4DF
  html = Value
End Sub

Public Sub htmlSet(Value) '45A4EE
  html = Value
End Sub
