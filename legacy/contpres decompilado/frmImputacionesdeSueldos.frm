VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmImputacionesdeSueldos
  Caption = "Imputaciones de Sueldos"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 16110
  ClientHeight = 9405
  Begin VB.Frame Frame1
    Caption = " Imputaciones de Sueldos "
    Left = 120
    Top = 720
    Width = 13575
    Height = 3855
    TabIndex = 21
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CheckBox chkSoloPreventiva
      Caption = "Solo Preventiva"
      Left = 2400
      Top = 1800
      Width = 3135
      Height = 375
      TabIndex = 11
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox CucuPersTxt
      Left = 2400
      Top = 2280
      Width = 1815
      Height = 375
      TabIndex = 13
      MaxLength = 70
    End
    Begin VB.TextBox DetaImpuTxt
      Left = 2400
      Top = 3270
      Width = 10935
      Height = 360
      TabIndex = 18
      MaxLength = 100
      DataField = "DetaImpu"
    End
    Begin MSMask.MaskEdBox ExorImpuMsk
      Left = 2400
      Top = 360
      Width = 2175
      Height = 360
      TabIndex = 2
      OleObjectBlob = "frmImputacionesdeSueldos.frx":0000
      DataField = "ExorImpu"
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 2400
      Top = 870
      Width = 1335
      Height = 360
      TabIndex = 6
      OleObjectBlob = "frmImputacionesdeSueldos.frx":0060
      DataField = "CodiOrga"
    End
    Begin MSMask.MaskEdBox FechImpuMsk
      Left = 2400
      Top = 2760
      Width = 1335
      Height = 360
      TabIndex = 16
      OleObjectBlob = "frmImputacionesdeSueldos.frx":00F4
      DataField = "FechImpu"
    End
    Begin MSMask.MaskEdBox CodiFifuMsk
      Left = 2400
      Top = 1320
      Width = 1575
      Height = 360
      TabIndex = 9
      OleObjectBlob = "frmImputacionesdeSueldos.frx":01A4
      DataField = "CodiFifu"
    End
    Begin VB.Label Label8
      Caption = "Finalidad-Función:"
      Left = 360
      Top = 1320
      Width = 1950
      Height = 300
      TabIndex = 8
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
    Begin VB.Label DetaFifuLbl
      Left = 4080
      Top = 1320
      Width = 9255
      Height = 360
      TabIndex = 10
      BorderStyle = 1 'Fixed Single
      DataField = "DetaFifu"
    End
    Begin VB.Label DetaProvLbl
      Left = 4320
      Top = 2280
      Width = 9015
      Height = 360
      TabIndex = 14
      BorderStyle = 1 'Fixed Single
      DataField = "DetaProv"
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
    Begin VB.Label Label15
      Caption = "Proveedor:"
      Left = 1200
      Top = 2280
      Width = 1140
      Height = 300
      TabIndex = 12
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
    Begin VB.Label LabelTotal
      Left = 10200
      Top = 360
      Width = 3135
      Height = 375
      TabIndex = 4
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label
      Caption = "Total:"
      Index = 0
      Left = 9480
      Top = 360
      Width = 735
      Height = 375
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
    Begin VB.Label Label18
      Caption = "Detalle:"
      Left = 1545
      Top = 3240
      Width = 810
      Height = 300
      TabIndex = 17
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
      Caption = "Expediente Original:"
      Left = 240
      Top = 390
      Width = 2115
      Height = 300
      TabIndex = 1
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
    Begin VB.Label Label10
      Caption = "Fecha:"
      Left = 1620
      Top = 2790
      Width = 735
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
    Begin VB.Label Label6
      Caption = "Organigrama:"
      Left = 915
      Top = 870
      Width = 1440
      Height = 300
      TabIndex = 5
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
    Begin VB.Label DetaOrgaLbl
      Left = 3840
      Top = 870
      Width = 9495
      Height = 360
      TabIndex = 7
      BorderStyle = 1 'Fixed Single
      DataField = "DetaOrga"
    End
  End
  Begin MSFlexGridLib.MSFlexGrid PartidaFlex
    Left = 120
    Top = 4680
    Width = 13575
    Height = 4095
    TabIndex = 19
    OleObjectBlob = "frmImputacionesdeSueldos.frx":022C
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmImputacionesdeSueldos.frx":0318
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 16110
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmImputacionesdeSueldos.frx":7E96
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 20
      TabStop = 0   'False
      Picture = "frmImputacionesdeSueldos.frx":83F2
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmImputacionesdeSueldos"


Private Sub tlbABMS_ButtonClick(Button As Button) 'B7DCE4
  'Data Table: 49566C
  loc_B7D03C: ILdRf Button
  loc_B7D03F: FStAd var_88 
  loc_B7D043: FLdRfVar var_90
  loc_B7D046: FLdPr var_88
  loc_B7D049:  = Me.Key
  loc_B7D04E: FLdZeroAd var_90
  loc_B7D051: FStStr var_94
  loc_B7D054: ILdRf var_94
  loc_B7D057: LitStr "btnCrear"
  loc_B7D05A: EqStr
  loc_B7D05C: BranchF loc_B7D37D
  loc_B7D05F: LitI2_Byte 1
  loc_B7D061: FLdPr Me
  loc_B7D064: MemStUI1
  loc_B7D068: ILdRf Me
  loc_B7D06B: CastAd
  loc_B7D06E: FStAdFunc var_98
  loc_B7D071: FLdRfVar var_98
  loc_B7D074: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_B7D079: FFree1Ad var_98
  loc_B7D07C: LitStr vbNullString
  loc_B7D07F: FLdPr Me
  loc_B7D082: VCallAd Control_ID_CucuPersTxt
  loc_B7D085: FStAdFunc var_98
  loc_B7D088: FLdPr var_98
  loc_B7D08B: Me.Text = from_stack_1
  loc_B7D090: FFree1Ad var_98
  loc_B7D093: LitStr vbNullString
  loc_B7D096: FLdPr Me
  loc_B7D099: VCallAd Control_ID_DetaProvLbl
  loc_B7D09C: FStAdFunc var_98
  loc_B7D09F: FLdPr var_98
  loc_B7D0A2: Me.Caption = from_stack_1
  loc_B7D0A7: FFree1Ad var_98
  loc_B7D0AA: FLdPr Me
  loc_B7D0AD: VCallAd Control_ID_FechImpuMsk
  loc_B7D0B0: FStAdFunc var_98
  loc_B7D0B3: FLdPr var_98
  loc_B7D0B6: LateIdLdVar var_A8 DispID_22 0
  loc_B7D0BD: CStrVarTmp
  loc_B7D0BE: FStStrNoPop var_90
  loc_B7D0C1: LitStr vbNullString
  loc_B7D0C4: EqStr
  loc_B7D0C6: FFree1Str var_90
  loc_B7D0C9: FFree1Ad var_98
  loc_B7D0CC: FFree1Var var_A8 = ""
  loc_B7D0CF: BranchF loc_B7D0F9
  loc_B7D0D2: LitI2_Byte 0
  loc_B7D0D4: PopTmpLdAd2 var_AA
  loc_B7D0D7: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_B7D0DC: CStrDate
  loc_B7D0DE: CVarStr var_A8
  loc_B7D0E1: PopAdLdVar
  loc_B7D0E2: FLdPr Me
  loc_B7D0E5: VCallAd Control_ID_FechImpuMsk
  loc_B7D0E8: FStAdFunc var_98
  loc_B7D0EB: FLdPr var_98
  loc_B7D0EE: LateIdSt
  loc_B7D0F3: FFree1Ad var_98
  loc_B7D0F6: FFree1Var var_A8 = ""
  loc_B7D0F9: Call Proc_118_33_9B9DB8()
  loc_B7D0FE: LitStr "Municipalidad de Guaymallén"
  loc_B7D101: LitStr "Municipalidad de Guaymallén"
  loc_B7D104: EqStr
  loc_B7D106: BranchF loc_B7D15D
  loc_B7D109: LitStr "SELECT p.*"
  loc_B7D10C: LitStr " FROM partida p"
  loc_B7D10F: ConcatStr
  loc_B7D110: FStStrNoPop var_90
  loc_B7D113: LitStr " WHERE p.PeriInfo = "
  loc_B7D116: ConcatStr
  loc_B7D117: FStStrNoPop var_C0
  loc_B7D11A: ImpAdLdI2 MemVar_C3D064
  loc_B7D11D: CStrUI1
  loc_B7D11F: FStStrNoPop var_C4
  loc_B7D122: ConcatStr
  loc_B7D123: FStStrNoPop var_C8
  loc_B7D126: LitStr vbNullString
  loc_B7D129: ConcatStr
  loc_B7D12A: FStStrNoPop var_CC
  loc_B7D12D: LitStr " AND (p.CodiPart LIKE '4111" & Chr(37) & "' OR p.CodiPart = '41312290')"
  loc_B7D130: ConcatStr
  loc_B7D131: FStStrNoPop var_D0
  loc_B7D134: LitStr " AND p.ImpuPart = 1;"
  loc_B7D137: ConcatStr
  loc_B7D138: FStStrNoPop var_D4
  loc_B7D13B: FLdPr Me
  loc_B7D13E: MemLdRfVar from_stack_1.global_56
  loc_B7D141: NewIfNullPr clsimputacion
  loc_B7D144: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_B7D149: FFreeStr var_90 = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_B7D15A: Branch loc_B7D1AE
  loc_B7D15D: LitStr "SELECT p.*"
  loc_B7D160: LitStr " FROM partida p"
  loc_B7D163: ConcatStr
  loc_B7D164: FStStrNoPop var_90
  loc_B7D167: LitStr " WHERE p.PeriInfo = "
  loc_B7D16A: ConcatStr
  loc_B7D16B: FStStrNoPop var_C0
  loc_B7D16E: ImpAdLdI2 MemVar_C3D064
  loc_B7D171: CStrUI1
  loc_B7D173: FStStrNoPop var_C4
  loc_B7D176: ConcatStr
  loc_B7D177: FStStrNoPop var_C8
  loc_B7D17A: LitStr vbNullString
  loc_B7D17D: ConcatStr
  loc_B7D17E: FStStrNoPop var_CC
  loc_B7D181: LitStr " AND p.CodiPart LIKE '4111" & Chr(37) & "'"
  loc_B7D184: ConcatStr
  loc_B7D185: FStStrNoPop var_D0
  loc_B7D188: LitStr " AND p.ImpuPart = 1;"
  loc_B7D18B: ConcatStr
  loc_B7D18C: FStStrNoPop var_D4
  loc_B7D18F: FLdPr Me
  loc_B7D192: MemLdRfVar from_stack_1.global_56
  loc_B7D195: NewIfNullPr clsimputacion
  loc_B7D198: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_B7D19D: FFreeStr var_90 = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_B7D1AE: FLdRfVar var_D8
  loc_B7D1B1: FLdPr Me
  loc_B7D1B4: MemLdRfVar from_stack_1.global_56
  loc_B7D1B7: NewIfNullPr clsimputacion
  loc_B7D1BA: from_stack_1 = clsimputacion.RecordCount
  loc_B7D1BF: ILdRf var_D8
  loc_B7D1C2: LitI4 0
  loc_B7D1C7: GtI4
  loc_B7D1C8: BranchF loc_B7D321
  loc_B7D1CB: FLdPr Me
  loc_B7D1CE: MemLdRfVar from_stack_1.global_56
  loc_B7D1D1: NewIfNullPr clsimputacion
  loc_B7D1D4: Call clsimputacion.MoveFirst()
  loc_B7D1D9: FLdRfVar var_AA
  loc_B7D1DC: FLdPr Me
  loc_B7D1DF: MemLdRfVar from_stack_1.global_56
  loc_B7D1E2: NewIfNullPr clsimputacion
  loc_B7D1E5: from_stack_1 = clsimputacion.EOF
  loc_B7D1EA: FLdI2 var_AA
  loc_B7D1ED: NotI4
  loc_B7D1EE: BranchF loc_B7D321
  loc_B7D1F1: FLdRfVar var_F0
  loc_B7D1F4: FLdRfVar var_E0
  loc_B7D1F7: LitVarStr var_BC, "CodiPart"
  loc_B7D1FC: PopAdLdVar
  loc_B7D1FD: FLdRfVar var_DC
  loc_B7D200: FLdRfVar var_98
  loc_B7D203: FLdPr Me
  loc_B7D206: MemLdRfVar from_stack_1.global_56
  loc_B7D209: NewIfNullPr clsimputacion
  loc_B7D20C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B7D211: FLdPr var_98
  loc_B7D214:  = Me.Fields
  loc_B7D219: FLdPr var_DC
  loc_B7D21C: from_stack_2 = Me.Item(from_stack_1)
  loc_B7D221: FLdPr var_E0
  loc_B7D224:  = Me.Value
  loc_B7D229: FLdRfVar var_F0
  loc_B7D22C: LitI4 9
  loc_B7D231: FLdRfVar var_A8
  loc_B7D234: ImpAdCallFPR4  = Chr()
  loc_B7D239: FLdRfVar var_A8
  loc_B7D23C: ConcatVar var_100
  loc_B7D240: FLdRfVar var_12C
  loc_B7D243: FLdRfVar var_11C
  loc_B7D246: LitVarStr var_118, "DetaPart"
  loc_B7D24B: PopAdLdVar
  loc_B7D24C: FLdRfVar var_108
  loc_B7D24F: FLdRfVar var_104
  loc_B7D252: FLdPr Me
  loc_B7D255: MemLdRfVar from_stack_1.global_56
  loc_B7D258: NewIfNullPr clsimputacion
  loc_B7D25B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B7D260: FLdPr var_104
  loc_B7D263:  = Me.Fields
  loc_B7D268: FLdPr var_108
  loc_B7D26B: from_stack_2 = Me.Item(from_stack_1)
  loc_B7D270: FLdPr var_11C
  loc_B7D273:  = Me.Value
  loc_B7D278: FLdRfVar var_12C
  loc_B7D27B: ConcatVar var_13C
  loc_B7D27F: LitI4 9
  loc_B7D284: FLdRfVar var_14C
  loc_B7D287: ImpAdCallFPR4  = Chr()
  loc_B7D28C: FLdRfVar var_14C
  loc_B7D28F: ConcatVar var_15C
  loc_B7D293: LitVarStr var_16C, "0"
  loc_B7D298: ConcatVar var_17C
  loc_B7D29C: LitI4 9
  loc_B7D2A1: FLdRfVar var_18C
  loc_B7D2A4: ImpAdCallFPR4  = Chr()
  loc_B7D2A9: FLdRfVar var_18C
  loc_B7D2AC: ConcatVar var_19C
  loc_B7D2B0: LitVarStr var_1AC, "No"
  loc_B7D2B5: ConcatVar var_1BC
  loc_B7D2B9: CStrVarTmp
  loc_B7D2BA: FStStrNoPop var_90
  loc_B7D2BD: FLdPr Me
  loc_B7D2C0: MemStStrCopy
  loc_B7D2C4: FFree1Str var_90
  loc_B7D2C7: FFreeAd var_98 = "": var_DC = "": var_E0 = "": var_104 = "": var_108 = ""
  loc_B7D2D6: FFreeVar var_F0 = "": var_A8 = "": var_100 = "": var_12C = "": var_13C = "": var_14C = "": var_15C = "": var_17C = "": var_18C = "": var_19C = ""
  loc_B7D2EF: FLdPr Me
  loc_B7D2F2: MemLdRfVar from_stack_1.global_76
  loc_B7D2F5: CDargRef
  loc_B7D2F9: FLdPr Me
  loc_B7D2FC: VCallAd Control_ID_PartidaFlex
  loc_B7D2FF: FStAdFunc var_98
  loc_B7D302: FLdPr var_98
  loc_B7D305: LateIdCall
  loc_B7D30D: FFree1Ad var_98
  loc_B7D310: FLdPr Me
  loc_B7D313: MemLdRfVar from_stack_1.global_56
  loc_B7D316: NewIfNullPr clsimputacion
  loc_B7D319: Call clsimputacion.MoveSiguiente()
  loc_B7D31E: Branch loc_B7D1D9
  loc_B7D321: ILdRf Me
  loc_B7D324: CastAd
  loc_B7D327: FStAdFunc var_98
  loc_B7D32A: FLdRfVar var_98
  loc_B7D32D: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_B7D332: FFree1Ad var_98
  loc_B7D335: LitI4 0
  loc_B7D33A: LitI4 0
  loc_B7D33F: FLdRfVar var_1C0
  loc_B7D342: Redim
  loc_B7D34C: FLdPr Me
  loc_B7D34F: VCallAd Control_ID_PartidaFlex
  loc_B7D352: CVarAd
  loc_B7D356: ParmAry1St
  loc_B7D35C: FLdRfVar var_1C0
  loc_B7D35F: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_B7D364: FLdRfVar var_1C0
  loc_B7D367: Erase
  loc_B7D368: FLdPr Me
  loc_B7D36B: VCallAd Control_ID_ExorImpuMsk
  loc_B7D36E: CVarAd
  loc_B7D372: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_B7D377: FFree1Var var_A8 = ""
  loc_B7D37A: Branch loc_B7DCE2
  loc_B7D37D: ILdRf var_94
  loc_B7D380: LitStr "btnModificar"
  loc_B7D383: EqStr
  loc_B7D385: BranchF loc_B7D38B
  loc_B7D388: Branch loc_B7DCE2
  loc_B7D38B: ILdRf var_94
  loc_B7D38E: LitStr "btnEliminar"
  loc_B7D391: EqStr
  loc_B7D393: BranchF loc_B7D399
  loc_B7D396: Branch loc_B7DCE2
  loc_B7D399: ILdRf var_94
  loc_B7D39C: LitStr "btnGuardar"
  loc_B7D39F: EqStr
  loc_B7D3A1: BranchF loc_B7DBDE
  loc_B7D3A4: LitStr vbNullString
  loc_B7D3A7: FLdPr Me
  loc_B7D3AA: MemStStrCopy
  loc_B7D3AE: LitI2_Byte 0
  loc_B7D3B0: PopTmpLdAd2 var_AA
  loc_B7D3B3: Call ExorImpuMsk_UnknownEvent_8()
  loc_B7D3B8: FLdPr Me
  loc_B7D3BB: MemLdStr global_68
  loc_B7D3BE: LitStr vbNullString
  loc_B7D3C1: NeStr
  loc_B7D3C3: BranchF loc_B7D3C7
  loc_B7D3C6: ExitProcHresult
  loc_B7D3C7: LitI2_Byte 0
  loc_B7D3C9: PopTmpLdAd2 var_AA
  loc_B7D3CC: Call CodiOrgaMsk_UnknownEvent_8()
  loc_B7D3D1: FLdPr Me
  loc_B7D3D4: MemLdStr global_68
  loc_B7D3D7: LitStr vbNullString
  loc_B7D3DA: NeStr
  loc_B7D3DC: BranchF loc_B7D3E0
  loc_B7D3DF: ExitProcHresult
  loc_B7D3E0: LitI2_Byte 0
  loc_B7D3E2: PopTmpLdAd2 var_AA
  loc_B7D3E5: Call DetaImpuTxt_Validate(from_stack_1v)
  loc_B7D3EA: FLdPr Me
  loc_B7D3ED: MemLdStr global_68
  loc_B7D3F0: LitStr vbNullString
  loc_B7D3F3: NeStr
  loc_B7D3F5: BranchF loc_B7D3F9
  loc_B7D3F8: ExitProcHresult
  loc_B7D3F9: LitI2_Byte 0
  loc_B7D3FB: PopTmpLdAd2 var_AA
  loc_B7D3FE: Call FechImpuMsk_UnknownEvent_8()
  loc_B7D403: FLdPr Me
  loc_B7D406: MemLdStr global_68
  loc_B7D409: LitStr vbNullString
  loc_B7D40C: NeStr
  loc_B7D40E: BranchF loc_B7D412
  loc_B7D411: ExitProcHresult
  loc_B7D412: LitI2_Byte 0
  loc_B7D414: PopTmpLdAd2 var_AA
  loc_B7D417: Call PartidaFlex_UnknownEvent_8()
  loc_B7D41C: FLdPr Me
  loc_B7D41F: MemLdStr global_68
  loc_B7D422: LitStr vbNullString
  loc_B7D425: NeStr
  loc_B7D427: BranchF loc_B7D42B
  loc_B7D42A: ExitProcHresult
  loc_B7D42B: LitI2_Byte 0
  loc_B7D42D: PopTmpLdAd2 var_AA
  loc_B7D430: Call CucuPersTxt_Validate(from_stack_1v)
  loc_B7D435: FLdPr Me
  loc_B7D438: MemLdStr global_68
  loc_B7D43B: LitStr vbNullString
  loc_B7D43E: NeStr
  loc_B7D440: BranchF loc_B7D444
  loc_B7D443: ExitProcHresult
  loc_B7D444: FLdPr Me
  loc_B7D447: MemLdUI1 global_64
  loc_B7D44B: FStUI1 var_1C2
  loc_B7D44F: FLdUI1
  loc_B7D453: LitI2_Byte 1
  loc_B7D455: EqI2
  loc_B7D456: BranchF loc_B7DBBF
  loc_B7D459: LitI2_Byte 1
  loc_B7D45B: FLdPr Me
  loc_B7D45E: MemLdRfVar from_stack_1.global_88
  loc_B7D461: FLdPr Me
  loc_B7D464: VCallAd Control_ID_PartidaFlex
  loc_B7D467: FStAdFunc var_98
  loc_B7D46A: FLdPr var_98
  loc_B7D46D: LateIdLdVar var_A8 DispID_4 0
  loc_B7D474: CI4Var
  loc_B7D476: LitI4 1
  loc_B7D47B: SubI4
  loc_B7D47C: CI2I4
  loc_B7D47D: FFree1Ad var_98
  loc_B7D480: FFree1Var var_A8 = ""
  loc_B7D483: ForI2 var_1C6
  loc_B7D489: FLdPr Me
  loc_B7D48C: MemLdI2 global_88
  loc_B7D48F: CI4UI1
  loc_B7D490: CVarI4
  loc_B7D494: PopAdLdVar
  loc_B7D495: LitVarI4
  loc_B7D49D: PopAdLdVar
  loc_B7D49E: FLdPr Me
  loc_B7D4A1: VCallAd Control_ID_PartidaFlex
  loc_B7D4A4: FStAdFunc var_98
  loc_B7D4A7: FLdPr var_98
  loc_B7D4AA: LateIdCallLdVar
  loc_B7D4B4: CStrVarTmp
  loc_B7D4B5: FStStrNoPop var_90
  loc_B7D4B8: CR8Str
  loc_B7D4BA: LitI2_Byte 0
  loc_B7D4BC: CR8I2
  loc_B7D4BD: GtR4
  loc_B7D4BE: FLdPr Me
  loc_B7D4C1: MemLdI2 global_88
  loc_B7D4C4: CI4UI1
  loc_B7D4C5: CVarI4
  loc_B7D4C9: PopAdLdVar
  loc_B7D4CA: LitVarI4
  loc_B7D4D2: PopAdLdVar
  loc_B7D4D3: FLdPr Me
  loc_B7D4D6: VCallAd Control_ID_PartidaFlex
  loc_B7D4D9: FStAdFunc var_DC
  loc_B7D4DC: FLdPr var_DC
  loc_B7D4DF: LateIdCallLdVar
  loc_B7D4E9: CStrVarTmp
  loc_B7D4EA: FStStrNoPop var_C0
  loc_B7D4ED: LitStr "Si"
  loc_B7D4F0: EqStr
  loc_B7D4F2: AndI4
  loc_B7D4F3: FFreeStr var_90 = ""
  loc_B7D4FA: FFreeAd var_98 = ""
  loc_B7D501: FFreeVar var_A8 = ""
  loc_B7D508: BranchF loc_B7DAF5
  loc_B7D50B: FLdPr Me
  loc_B7D50E: MemLdI2 global_88
  loc_B7D511: CI4UI1
  loc_B7D512: CVarI4
  loc_B7D516: PopAdLdVar
  loc_B7D517: LitVarI4
  loc_B7D51F: PopAdLdVar
  loc_B7D520: FLdPr Me
  loc_B7D523: VCallAd Control_ID_PartidaFlex
  loc_B7D526: FStAdFunc var_98
  loc_B7D529: FLdPr var_98
  loc_B7D52C: LateIdCallLdVar
  loc_B7D536: PopAd
  loc_B7D538: FLdPr Me
  loc_B7D53B: VCallAd Control_ID_CodiOrgaMsk
  loc_B7D53E: FStAdFunc var_DC
  loc_B7D541: FLdPr var_DC
  loc_B7D544: LateIdLdVar var_F0 DispID_22 0
  loc_B7D54B: PopAd
  loc_B7D54D: FLdPr Me
  loc_B7D550: VCallAd Control_ID_CodiFifuMsk
  loc_B7D553: FStAdFunc var_E0
  loc_B7D556: FLdPr var_E0
  loc_B7D559: LateIdLdVar var_100 DispID_22 0
  loc_B7D560: PopAd
  loc_B7D562: FLdPr Me
  loc_B7D565: VCallAd Control_ID_FechImpuMsk
  loc_B7D568: FStAdFunc var_104
  loc_B7D56B: FLdPr var_104
  loc_B7D56E: LateIdLdVar var_12C DispID_15 0
  loc_B7D575: PopAd
  loc_B7D577: FLdPr Me
  loc_B7D57A: VCallAd Control_ID_ExorImpuMsk
  loc_B7D57D: FStAdFunc var_108
  loc_B7D580: FLdPr var_108
  loc_B7D583: LateIdLdVar var_13C DispID_15 0
  loc_B7D58A: PopAd
  loc_B7D58C: FLdPr Me
  loc_B7D58F: MemLdI2 global_88
  loc_B7D592: CI4UI1
  loc_B7D593: CVarI4
  loc_B7D597: PopAdLdVar
  loc_B7D598: LitVarI4
  loc_B7D5A0: PopAdLdVar
  loc_B7D5A1: FLdPr Me
  loc_B7D5A4: VCallAd Control_ID_PartidaFlex
  loc_B7D5A7: FStAdFunc var_11C
  loc_B7D5AA: FLdPr var_11C
  loc_B7D5AD: LateIdCallLdVar
  loc_B7D5B7: PopAd
  loc_B7D5B9: FLdPr Me
  loc_B7D5BC: MemLdI2 global_88
  loc_B7D5BF: CI4UI1
  loc_B7D5C0: CVarI4
  loc_B7D5C4: PopAdLdVar
  loc_B7D5C5: LitVarI4
  loc_B7D5CD: PopAdLdVar
  loc_B7D5CE: FLdPr Me
  loc_B7D5D1: VCallAd Control_ID_PartidaFlex
  loc_B7D5D4: FStAdFunc var_24C
  loc_B7D5D7: FLdPr var_24C
  loc_B7D5DA: LateIdCallLdVar
  loc_B7D5E4: PopAd
  loc_B7D5E6: FLdRfVar var_90
  loc_B7D5E9: FLdPr Me
  loc_B7D5EC: VCallAd Control_ID_DetaImpuTxt
  loc_B7D5EF: FStAdFunc var_250
  loc_B7D5F2: FLdPr var_250
  loc_B7D5F5:  = Me.Text
  loc_B7D5FA: FLdRfVar var_D8
  loc_B7D5FD: LitI2_Byte 0
  loc_B7D5FF: LitI2_Byte 0
  loc_B7D601: LitI2_Byte 0
  loc_B7D603: LitI4 0
  loc_B7D608: LitI2_Byte 0
  loc_B7D60A: LitI4 0
  loc_B7D60F: ILdRf var_90
  loc_B7D612: FLdRfVar var_15C
  loc_B7D615: CStrVarTmp
  loc_B7D616: FStStrNoPop var_254
  loc_B7D619: CR8Str
  loc_B7D61B: PopFPR8
  loc_B7D61C: FLdRfVar var_14C
  loc_B7D61F: CStrVarTmp
  loc_B7D620: FStStrNoPop var_D4
  loc_B7D623: CR8Str
  loc_B7D625: PopFPR8
  loc_B7D626: LitI2_Byte 1
  loc_B7D628: CR8I2
  loc_B7D629: PopFPR8
  loc_B7D62A: FLdRfVar var_13C
  loc_B7D62D: CStrVarTmp
  loc_B7D62E: FStStrNoPop var_D0
  loc_B7D631: FLdRfVar var_12C
  loc_B7D634: CStrVarTmp
  loc_B7D635: FStStrNoPop var_CC
  loc_B7D638: FLdRfVar var_100
  loc_B7D63B: CStrVarTmp
  loc_B7D63C: FStStrNoPop var_C8
  loc_B7D63F: LitI4 1
  loc_B7D644: LitI2_Byte 1
  loc_B7D646: FLdRfVar var_F0
  loc_B7D649: CStrVarTmp
  loc_B7D64A: FStStrNoPop var_C4
  loc_B7D64D: FLdRfVar var_A8
  loc_B7D650: CStrVarTmp
  loc_B7D651: FStStrNoPop var_C0
  loc_B7D654: FLdPr Me
  loc_B7D657: MemLdRfVar from_stack_1.global_52
  loc_B7D65A: NewIfNullPr clsimputacion
  loc_B7D65D: from_stack_16v = clsimputacion.AddNewPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_B7D662: ILdRf var_D8
  loc_B7D665: FLdPr Me
  loc_B7D668: MemStI4 global_72
  loc_B7D66B: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_254 = ""
  loc_B7D67E: FFreeAd var_98 = "": var_DC = "": var_E0 = "": var_104 = "": var_108 = "": var_11C = "": var_24C = ""
  loc_B7D691: FFreeVar var_A8 = "": var_F0 = "": var_100 = "": var_12C = "": var_13C = "": var_14C = ""
  loc_B7D6A2: FLdPr Me
  loc_B7D6A5: MemLdStr global_72
  loc_B7D6A8: LitI4 0
  loc_B7D6AD: EqI4
  loc_B7D6AE: BranchF loc_B7D6BE
  loc_B7D6B1: LitI4 0
  loc_B7D6B6: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_B7D6B9: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B7D6BE: FLdRfVar var_AA
  loc_B7D6C1: FLdPr Me
  loc_B7D6C4: VCallAd Control_ID_chkSoloPreventiva
  loc_B7D6C7: FStAdFunc var_98
  loc_B7D6CA: FLdPr var_98
  loc_B7D6CD:  = Me.Value
  loc_B7D6D2: FLdI2 var_AA
  loc_B7D6D5: CI4UI1
  loc_B7D6D6: LitI4 0
  loc_B7D6DB: EqI4
  loc_B7D6DC: FFree1Ad var_98
  loc_B7D6DF: BranchF loc_B7DAF0
  loc_B7D6E2: FLdPr Me
  loc_B7D6E5: MemLdI2 global_88
  loc_B7D6E8: CI4UI1
  loc_B7D6E9: CVarI4
  loc_B7D6ED: PopAdLdVar
  loc_B7D6EE: LitVarI4
  loc_B7D6F6: PopAdLdVar
  loc_B7D6F7: FLdPr Me
  loc_B7D6FA: VCallAd Control_ID_PartidaFlex
  loc_B7D6FD: FStAdFunc var_98
  loc_B7D700: FLdPr var_98
  loc_B7D703: LateIdCallLdVar
  loc_B7D70D: PopAd
  loc_B7D70F: FLdPr Me
  loc_B7D712: VCallAd Control_ID_CodiOrgaMsk
  loc_B7D715: FStAdFunc var_DC
  loc_B7D718: FLdPr var_DC
  loc_B7D71B: LateIdLdVar var_F0 DispID_22 0
  loc_B7D722: PopAd
  loc_B7D724: FLdPr Me
  loc_B7D727: VCallAd Control_ID_CodiFifuMsk
  loc_B7D72A: FStAdFunc var_E0
  loc_B7D72D: FLdPr var_E0
  loc_B7D730: LateIdLdVar var_100 DispID_22 0
  loc_B7D737: PopAd
  loc_B7D739: FLdPr Me
  loc_B7D73C: VCallAd Control_ID_FechImpuMsk
  loc_B7D73F: FStAdFunc var_104
  loc_B7D742: FLdPr var_104
  loc_B7D745: LateIdLdVar var_12C DispID_15 0
  loc_B7D74C: PopAd
  loc_B7D74E: FLdPr Me
  loc_B7D751: VCallAd Control_ID_ExorImpuMsk
  loc_B7D754: FStAdFunc var_108
  loc_B7D757: FLdPr var_108
  loc_B7D75A: LateIdLdVar var_13C DispID_15 0
  loc_B7D761: PopAd
  loc_B7D763: FLdPr Me
  loc_B7D766: MemLdI2 global_88
  loc_B7D769: CI4UI1
  loc_B7D76A: CVarI4
  loc_B7D76E: PopAdLdVar
  loc_B7D76F: LitVarI4
  loc_B7D777: PopAdLdVar
  loc_B7D778: FLdPr Me
  loc_B7D77B: VCallAd Control_ID_PartidaFlex
  loc_B7D77E: FStAdFunc var_11C
  loc_B7D781: FLdPr var_11C
  loc_B7D784: LateIdCallLdVar
  loc_B7D78E: PopAd
  loc_B7D790: FLdPr Me
  loc_B7D793: MemLdI2 global_88
  loc_B7D796: CI4UI1
  loc_B7D797: CVarI4
  loc_B7D79B: PopAdLdVar
  loc_B7D79C: LitVarI4
  loc_B7D7A4: PopAdLdVar
  loc_B7D7A5: FLdPr Me
  loc_B7D7A8: VCallAd Control_ID_PartidaFlex
  loc_B7D7AB: FStAdFunc var_24C
  loc_B7D7AE: FLdPr var_24C
  loc_B7D7B1: LateIdCallLdVar
  loc_B7D7BB: PopAd
  loc_B7D7BD: FLdRfVar var_90
  loc_B7D7C0: FLdPr Me
  loc_B7D7C3: VCallAd Control_ID_DetaImpuTxt
  loc_B7D7C6: FStAdFunc var_250
  loc_B7D7C9: FLdPr var_250
  loc_B7D7CC:  = Me.Text
  loc_B7D7D1: FLdRfVar var_C0
  loc_B7D7D4: FLdPr Me
  loc_B7D7D7: VCallAd Control_ID_CucuPersTxt
  loc_B7D7DA: FStAdFunc var_258
  loc_B7D7DD: FLdPr var_258
  loc_B7D7E0:  = Me.Text
  loc_B7D7E5: FLdRfVar var_D8
  loc_B7D7E8: LitI2_Byte 0
  loc_B7D7EA: LitI2_Byte 0
  loc_B7D7EC: LitI2_Byte 0
  loc_B7D7EE: LitI4 0
  loc_B7D7F3: ILdRf var_C0
  loc_B7D7F6: LitI2_Byte 0
  loc_B7D7F8: CUI1I2
  loc_B7D7FA: LitI2_Byte 0
  loc_B7D7FC: LitI4 0
  loc_B7D801: LitI4 0
  loc_B7D806: ILdRf var_90
  loc_B7D809: FLdRfVar var_15C
  loc_B7D80C: CStrVarTmp
  loc_B7D80D: FStStrNoPop var_25C
  loc_B7D810: CR8Str
  loc_B7D812: PopFPR8
  loc_B7D813: FLdRfVar var_14C
  loc_B7D816: CStrVarTmp
  loc_B7D817: FStStrNoPop var_254
  loc_B7D81A: CR8Str
  loc_B7D81C: PopFPR8
  loc_B7D81D: LitI2_Byte 1
  loc_B7D81F: CR8I2
  loc_B7D820: PopFPR8
  loc_B7D821: FLdRfVar var_13C
  loc_B7D824: CStrVarTmp
  loc_B7D825: FStStrNoPop var_D4
  loc_B7D828: FLdRfVar var_12C
  loc_B7D82B: CStrVarTmp
  loc_B7D82C: FStStrNoPop var_D0
  loc_B7D82F: FLdRfVar var_100
  loc_B7D832: CStrVarTmp
  loc_B7D833: FStStrNoPop var_CC
  loc_B7D836: LitI4 1
  loc_B7D83B: LitI2_Byte 1
  loc_B7D83D: FLdRfVar var_F0
  loc_B7D840: CStrVarTmp
  loc_B7D841: FStStrNoPop var_C8
  loc_B7D844: FLdRfVar var_A8
  loc_B7D847: CStrVarTmp
  loc_B7D848: FStStrNoPop var_C4
  loc_B7D84B: FLdPr Me
  loc_B7D84E: MemLdRfVar from_stack_1.global_52
  loc_B7D851: NewIfNullPr clsimputacion
  loc_B7D854: from_stack_16v = clsimputacion.AddNewDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_B7D859: ILdRf var_D8
  loc_B7D85C: FLdPr Me
  loc_B7D85F: MemStI4 global_72
  loc_B7D862: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_254 = "": var_25C = "": var_90 = ""
  loc_B7D877: FFreeAd var_98 = "": var_DC = "": var_E0 = "": var_104 = "": var_108 = "": var_11C = "": var_24C = "": var_250 = ""
  loc_B7D88C: FFreeVar var_A8 = "": var_F0 = "": var_100 = "": var_12C = "": var_13C = "": var_14C = ""
  loc_B7D89D: FLdPr Me
  loc_B7D8A0: MemLdStr global_72
  loc_B7D8A3: LitI4 0
  loc_B7D8A8: EqI4
  loc_B7D8A9: BranchF loc_B7D8B9
  loc_B7D8AC: LitI4 0
  loc_B7D8B1: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_B7D8B4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B7D8B9: FLdPr Me
  loc_B7D8BC: MemLdI2 global_88
  loc_B7D8BF: CI4UI1
  loc_B7D8C0: CVarI4
  loc_B7D8C4: PopAdLdVar
  loc_B7D8C5: LitVarI4
  loc_B7D8CD: PopAdLdVar
  loc_B7D8CE: FLdPr Me
  loc_B7D8D1: VCallAd Control_ID_PartidaFlex
  loc_B7D8D4: FStAdFunc var_98
  loc_B7D8D7: FLdPr var_98
  loc_B7D8DA: LateIdCallLdVar
  loc_B7D8E4: PopAd
  loc_B7D8E6: FLdPr Me
  loc_B7D8E9: VCallAd Control_ID_CodiOrgaMsk
  loc_B7D8EC: FStAdFunc var_DC
  loc_B7D8EF: FLdPr var_DC
  loc_B7D8F2: LateIdLdVar var_F0 DispID_22 0
  loc_B7D8F9: PopAd
  loc_B7D8FB: FLdPr Me
  loc_B7D8FE: VCallAd Control_ID_CodiFifuMsk
  loc_B7D901: FStAdFunc var_E0
  loc_B7D904: FLdPr var_E0
  loc_B7D907: LateIdLdVar var_100 DispID_22 0
  loc_B7D90E: PopAd
  loc_B7D910: FLdPr Me
  loc_B7D913: VCallAd Control_ID_FechImpuMsk
  loc_B7D916: FStAdFunc var_104
  loc_B7D919: FLdPr var_104
  loc_B7D91C: LateIdLdVar var_12C DispID_15 0
  loc_B7D923: PopAd
  loc_B7D925: FLdPr Me
  loc_B7D928: VCallAd Control_ID_FechImpuMsk
  loc_B7D92B: FStAdFunc var_108
  loc_B7D92E: FLdPr var_108
  loc_B7D931: LateIdLdVar var_13C DispID_15 0
  loc_B7D938: PopAd
  loc_B7D93A: FLdPr Me
  loc_B7D93D: VCallAd Control_ID_ExorImpuMsk
  loc_B7D940: FStAdFunc var_11C
  loc_B7D943: FLdPr var_11C
  loc_B7D946: LateIdLdVar var_14C DispID_15 0
  loc_B7D94D: PopAd
  loc_B7D94F: FLdPr Me
  loc_B7D952: VCallAd Control_ID_ExorImpuMsk
  loc_B7D955: FStAdFunc var_24C
  loc_B7D958: FLdPr var_24C
  loc_B7D95B: LateIdLdVar var_15C DispID_15 0
  loc_B7D962: PopAd
  loc_B7D964: FLdPr Me
  loc_B7D967: MemLdI2 global_88
  loc_B7D96A: CI4UI1
  loc_B7D96B: CVarI4
  loc_B7D96F: PopAdLdVar
  loc_B7D970: LitVarI4
  loc_B7D978: PopAdLdVar
  loc_B7D979: FLdPr Me
  loc_B7D97C: VCallAd Control_ID_PartidaFlex
  loc_B7D97F: FStAdFunc var_250
  loc_B7D982: FLdPr var_250
  loc_B7D985: LateIdCallLdVar
  loc_B7D98F: PopAd
  loc_B7D991: FLdPr Me
  loc_B7D994: MemLdI2 global_88
  loc_B7D997: CI4UI1
  loc_B7D998: CVarI4
  loc_B7D99C: PopAdLdVar
  loc_B7D99D: LitVarI4
  loc_B7D9A5: PopAdLdVar
  loc_B7D9A6: FLdPr Me
  loc_B7D9A9: VCallAd Control_ID_PartidaFlex
  loc_B7D9AC: FStAdFunc var_258
  loc_B7D9AF: FLdPr var_258
  loc_B7D9B2: LateIdCallLdVar
  loc_B7D9BC: PopAd
  loc_B7D9BE: FLdRfVar var_90
  loc_B7D9C1: FLdPr Me
  loc_B7D9C4: VCallAd Control_ID_DetaImpuTxt
  loc_B7D9C7: FStAdFunc var_260
  loc_B7D9CA: FLdPr var_260
  loc_B7D9CD:  = Me.Text
  loc_B7D9D2: FLdRfVar var_C0
  loc_B7D9D5: FLdPr Me
  loc_B7D9D8: VCallAd Control_ID_CucuPersTxt
  loc_B7D9DB: FStAdFunc var_264
  loc_B7D9DE: FLdPr var_264
  loc_B7D9E1:  = Me.Text
  loc_B7D9E6: FLdRfVar var_D8
  loc_B7D9E9: LitI2_Byte 0
  loc_B7D9EB: LitI2_Byte 0
  loc_B7D9ED: LitI2_Byte 0
  loc_B7D9EF: LitStr vbNullString
  loc_B7D9F2: LitI4 0
  loc_B7D9F7: LitStr "s/f000000000000"
  loc_B7D9FA: ILdRf var_C0
  loc_B7D9FD: LitI2_Byte 0
  loc_B7D9FF: CStrUI1
  loc_B7DA01: FStStrNoPop var_27C
  loc_B7DA04: LitI2_Byte 0
  loc_B7DA06: CStrUI1
  loc_B7DA08: FStStrNoPop var_278
  loc_B7DA0B: LitI2_Byte 0
  loc_B7DA0D: LitI2_Byte 0
  loc_B7DA0F: CStrUI1
  loc_B7DA11: FStStrNoPop var_274
  loc_B7DA14: LitI2_Byte 0
  loc_B7DA16: CStrUI1
  loc_B7DA18: FStStrNoPop var_270
  loc_B7DA1B: ILdRf var_90
  loc_B7DA1E: FLdRfVar var_18C
  loc_B7DA21: CStrVarTmp
  loc_B7DA22: FStStrNoPop var_26C
  loc_B7DA25: CR8Str
  loc_B7DA27: PopFPR8
  loc_B7DA28: FLdRfVar var_17C
  loc_B7DA2B: CStrVarTmp
  loc_B7DA2C: FStStrNoPop var_268
  loc_B7DA2F: CR8Str
  loc_B7DA31: PopFPR8
  loc_B7DA32: LitI2_Byte 1
  loc_B7DA34: CR8I2
  loc_B7DA35: PopFPR8
  loc_B7DA36: FLdRfVar var_15C
  loc_B7DA39: CStrVarTmp
  loc_B7DA3A: FStStrNoPop var_25C
  loc_B7DA3D: FLdRfVar var_14C
  loc_B7DA40: CStrVarTmp
  loc_B7DA41: FStStrNoPop var_254
  loc_B7DA44: FLdRfVar var_13C
  loc_B7DA47: CStrVarTmp
  loc_B7DA48: FStStrNoPop var_D4
  loc_B7DA4B: FLdRfVar var_12C
  loc_B7DA4E: CStrVarTmp
  loc_B7DA4F: FStStrNoPop var_D0
  loc_B7DA52: FLdRfVar var_100
  loc_B7DA55: CStrVarTmp
  loc_B7DA56: FStStrNoPop var_CC
  loc_B7DA59: LitI4 1
  loc_B7DA5E: LitI2_Byte 1
  loc_B7DA60: FLdRfVar var_F0
  loc_B7DA63: CStrVarTmp
  loc_B7DA64: FStStrNoPop var_C8
  loc_B7DA67: FLdRfVar var_A8
  loc_B7DA6A: CStrVarTmp
  loc_B7DA6B: FStStrNoPop var_C4
  loc_B7DA6E: FLdPr Me
  loc_B7DA71: MemLdRfVar from_stack_1.global_52
  loc_B7DA74: NewIfNullPr clsimputacion
  loc_B7DA77: from_stack_16v = clsimputacion.AddNewDevengado(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_B7DA7C: ILdRf var_D8
  loc_B7DA7F: FLdPr Me
  loc_B7DA82: MemStI4 global_72
  loc_B7DA85: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_254 = "": var_25C = "": var_268 = "": var_26C = "": var_90 = "": var_270 = "": var_274 = "": var_278 = "": var_27C = ""
  loc_B7DAA6: FFreeAd var_98 = "": var_DC = "": var_E0 = "": var_104 = "": var_108 = "": var_11C = "": var_24C = "": var_250 = "": var_258 = "": var_260 = ""
  loc_B7DABF: FFreeVar var_A8 = "": var_F0 = "": var_100 = "": var_12C = "": var_13C = "": var_14C = "": var_15C = "": var_17C = ""
  loc_B7DAD4: FLdPr Me
  loc_B7DAD7: MemLdStr global_72
  loc_B7DADA: LitI4 0
  loc_B7DADF: EqI4
  loc_B7DAE0: BranchF loc_B7DAF0
  loc_B7DAE3: LitI4 0
  loc_B7DAE8: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_B7DAEB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B7DAF0: LitI2_Byte &HFF
  loc_B7DAF2: FStI2 var_8A
  loc_B7DAF5: FLdPr Me
  loc_B7DAF8: MemLdRfVar from_stack_1.global_88
  loc_B7DAFB: NextI2 var_1C6, loc_B7D489
  loc_B7DB00: FLdI2 var_8A
  loc_B7DB03: BranchF loc_B7DBBC
  loc_B7DB06: FLdPr Me
  loc_B7DB09: VCallAd Control_ID_ExorImpuMsk
  loc_B7DB0C: FStAdFunc var_98
  loc_B7DB0F: FLdPr var_98
  loc_B7DB12: LateIdLdVar var_A8 DispID_22 0
  loc_B7DB19: PopAd
  loc_B7DB1B: LitI2_Byte &HFF
  loc_B7DB1D: PopTmpLdAd2 var_27E
  loc_B7DB20: LitI2_Byte 0
  loc_B7DB22: PopTmpLdAd2 var_AA
  loc_B7DB25: LitStr "¿Imprime el Volante de Imputación del Expediente "
  loc_B7DB28: FLdRfVar var_A8
  loc_B7DB2B: CStrVarTmp
  loc_B7DB2C: FStStrNoPop var_90
  loc_B7DB2F: ConcatStr
  loc_B7DB30: FStStrNoPop var_C0
  loc_B7DB33: LitStr "?"
  loc_B7DB36: ConcatStr
  loc_B7DB37: FStStrNoPop var_C4
  loc_B7DB3A: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_B7DB3F: CI4UI1
  loc_B7DB40: LitI4 6
  loc_B7DB45: EqI4
  loc_B7DB46: FFreeStr var_90 = "": var_C0 = ""
  loc_B7DB4F: FFree1Ad var_98
  loc_B7DB52: FFree1Var var_A8 = ""
  loc_B7DB55: BranchF loc_B7DBBC
  loc_B7DB58: ImpAdLdRf MemVar_C3D9BC
  loc_B7DB5B: NewIfNullAd
  loc_B7DB5E: CastAd
  loc_B7DB61: FStAdFuncNoPop
  loc_B7DB64: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_B7DB69: FFree1Ad var_98
  loc_B7DB6C: FLdPr Me
  loc_B7DB6F: VCallAd Control_ID_ExorImpuMsk
  loc_B7DB72: FStAdFunc var_98
  loc_B7DB75: FLdPr var_98
  loc_B7DB78: LateIdLdVar var_A8 DispID_15 0
  loc_B7DB7F: CStrVarTmp
  loc_B7DB80: FStStrNoPop var_90
  loc_B7DB83: ImpAdLdRf MemVar_C3D9BC
  loc_B7DB86: NewIfNullPr rptVolantedeImputaciones
  loc_B7DB89: VCallAd Control_ID_cboExorImpu
  loc_B7DB8C: FStAdFunc var_DC
  loc_B7DB8F: FLdPr var_DC
  loc_B7DB92: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_B7DB97: FFree1Str var_90
  loc_B7DB9A: FFreeAd var_98 = ""
  loc_B7DBA1: FFree1Var var_A8 = ""
  loc_B7DBA4: LitVar_Missing var_118
  loc_B7DBA7: PopAdLdVar
  loc_B7DBA8: LitVarI4
  loc_B7DBB0: PopAdLdVar
  loc_B7DBB1: ImpAdLdRf MemVar_C3D9BC
  loc_B7DBB4: NewIfNullPr rptVolantedeImputaciones
  loc_B7DBB7: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_B7DBBC: Branch loc_B7DBD6
  loc_B7DBBF: FLdUI1
  loc_B7DBC3: LitI2_Byte 2
  loc_B7DBC5: EqI2
  loc_B7DBC6: BranchF loc_B7DBCC
  loc_B7DBC9: Branch loc_B7DBD6
  loc_B7DBCC: FLdUI1
  loc_B7DBD0: LitI2_Byte 3
  loc_B7DBD2: EqI2
  loc_B7DBD3: BranchF loc_B7DBD6
  loc_B7DBD6: Call cmdCancelar_Click()
  loc_B7DBDB: Branch loc_B7DCE2
  loc_B7DBDE: ILdRf var_94
  loc_B7DBE1: LitStr "btnCancelar"
  loc_B7DBE4: EqStr
  loc_B7DBE6: BranchF loc_B7DBF1
  loc_B7DBE9: Call cmdCancelar_Click()
  loc_B7DBEE: Branch loc_B7DCE2
  loc_B7DBF1: ILdRf var_94
  loc_B7DBF4: LitStr "btnPrimero"
  loc_B7DBF7: EqStr
  loc_B7DBF9: BranchF loc_B7DC0D
  loc_B7DBFC: FLdPr Me
  loc_B7DBFF: MemLdRfVar from_stack_1.global_52
  loc_B7DC02: NewIfNullPr clsimputacion
  loc_B7DC05: Call clsimputacion.MoveFirst()
  loc_B7DC0A: Branch loc_B7DCE2
  loc_B7DC0D: ILdRf var_94
  loc_B7DC10: LitStr "btnAnterior"
  loc_B7DC13: EqStr
  loc_B7DC15: BranchF loc_B7DC29
  loc_B7DC18: FLdPr Me
  loc_B7DC1B: MemLdRfVar from_stack_1.global_52
  loc_B7DC1E: NewIfNullPr clsimputacion
  loc_B7DC21: Call clsimputacion.MovePrevious()
  loc_B7DC26: Branch loc_B7DCE2
  loc_B7DC29: ILdRf var_94
  loc_B7DC2C: LitStr "btnSiguiente"
  loc_B7DC2F: EqStr
  loc_B7DC31: BranchF loc_B7DC45
  loc_B7DC34: FLdPr Me
  loc_B7DC37: MemLdRfVar from_stack_1.global_52
  loc_B7DC3A: NewIfNullPr clsimputacion
  loc_B7DC3D: Call clsimputacion.MoveNext()
  loc_B7DC42: Branch loc_B7DCE2
  loc_B7DC45: ILdRf var_94
  loc_B7DC48: LitStr "btnUltimo"
  loc_B7DC4B: EqStr
  loc_B7DC4D: BranchF loc_B7DC61
  loc_B7DC50: FLdPr Me
  loc_B7DC53: MemLdRfVar from_stack_1.global_52
  loc_B7DC56: NewIfNullPr clsimputacion
  loc_B7DC59: Call clsimputacion.MoveLast()
  loc_B7DC5E: Branch loc_B7DCE2
  loc_B7DC61: ILdRf var_94
  loc_B7DC64: LitStr "btnFiltrar"
  loc_B7DC67: EqStr
  loc_B7DC69: BranchF loc_B7DC6F
  loc_B7DC6C: Branch loc_B7DCE2
  loc_B7DC6F: ILdRf var_94
  loc_B7DC72: LitStr "btnBuscar"
  loc_B7DC75: EqStr
  loc_B7DC77: BranchF loc_B7DC7D
  loc_B7DC7A: Branch loc_B7DCE2
  loc_B7DC7D: ILdRf var_94
  loc_B7DC80: LitStr "btnImprimir"
  loc_B7DC83: EqStr
  loc_B7DC85: BranchF loc_B7DC8B
  loc_B7DC88: Branch loc_B7DCE2
  loc_B7DC8B: ILdRf var_94
  loc_B7DC8E: LitStr "btnAyuda"
  loc_B7DC91: EqStr
  loc_B7DC93: BranchF loc_B7DCC2
  loc_B7DC96: LitVar_Missing var_12C
  loc_B7DC99: LitVar_Missing var_100
  loc_B7DC9C: LitVar_Missing var_F0
  loc_B7DC9F: LitI4 0
  loc_B7DCA4: LitVarStr var_BC, "Opcion no disponible en esta version."
  loc_B7DCA9: FStVarCopyObj var_A8
  loc_B7DCAC: FLdRfVar var_A8
  loc_B7DCAF: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B7DCB4: FFreeVar var_A8 = "": var_F0 = "": var_100 = ""
  loc_B7DCBF: Branch loc_B7DCE2
  loc_B7DCC2: ILdRf var_94
  loc_B7DCC5: LitStr "btnSalir"
  loc_B7DCC8: EqStr
  loc_B7DCCA: BranchF loc_B7DCE2
  loc_B7DCCD: ILdRf Me
  loc_B7DCD0: FStAdNoPop
  loc_B7DCD4: ImpAdLdRf MemVar_C44F9C
  loc_B7DCD7: NewIfNullPr Me
  loc_B7DCDA: Me.Global.Unload from_stack_1
  loc_B7DCDF: FFree1Ad var_98
  loc_B7DCE2: ExitProcHresult
  loc_B7DCE3: LitI2_Byte &HF4
End Sub

Private Sub Form_Load() '9CA31C
  'Data Table: 49566C
  loc_9CA234: LitVarStr var_94, "######"
  loc_9CA239: PopAdLdVar
  loc_9CA23A: FLdPr Me
  loc_9CA23D: VCallAd Control_ID_CodiOrgaMsk
  loc_9CA240: FStAdFunc var_A8
  loc_9CA243: FLdPr var_A8
  loc_9CA246: LateIdSt
  loc_9CA24B: FFree1Ad var_A8
  loc_9CA24E: ILdRf Me
  loc_9CA251: CastAd
  loc_9CA254: FStAdFunc var_A8
  loc_9CA257: FLdRfVar var_A8
  loc_9CA25A: ImpAdCallFPR4 Proc_261_41_999BCC()
  loc_9CA25F: FFree1Ad var_A8
  loc_9CA262: ILdRf Me
  loc_9CA265: CastAd
  loc_9CA268: FStAdFunc var_A8
  loc_9CA26B: FLdRfVar var_A8
  loc_9CA26E: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9CA273: FFree1Ad var_A8
  loc_9CA276: LitI2_Byte 0
  loc_9CA278: CR8I2
  loc_9CA279: PopFPR4
  loc_9CA27A: FLdPr Me
  loc_9CA27D: Me.Left = from_stack_1s
  loc_9CA282: LitI2_Byte 0
  loc_9CA284: CR8I2
  loc_9CA285: PopFPR4
  loc_9CA286: FLdPr Me
  loc_9CA289: Me.Top = from_stack_1s
  loc_9CA28E: FLdPr Me
  loc_9CA291: VCallAd Control_ID_PartidaFlex
  loc_9CA294: FStAdFunc var_AC
  loc_9CA297: LitVarI4
  loc_9CA29F: PopAdLdVar
  loc_9CA2A0: LitVarI4
  loc_9CA2A8: PopAdLdVar
  loc_9CA2A9: FLdPr var_AC
  loc_9CA2AC: LateIdCallSt
  loc_9CA2B4: LitVarI4
  loc_9CA2BC: PopAdLdVar
  loc_9CA2BD: LitVarI4
  loc_9CA2C5: PopAdLdVar
  loc_9CA2C6: FLdPr var_AC
  loc_9CA2C9: LateIdCallSt
  loc_9CA2D1: LitVarI4
  loc_9CA2D9: PopAdLdVar
  loc_9CA2DA: LitVarI4
  loc_9CA2E2: PopAdLdVar
  loc_9CA2E3: FLdPr var_AC
  loc_9CA2E6: LateIdCallSt
  loc_9CA2EE: LitVarI4
  loc_9CA2F6: PopAdLdVar
  loc_9CA2F7: LitVarI4
  loc_9CA2FF: PopAdLdVar
  loc_9CA300: FLdPr var_AC
  loc_9CA303: LateIdCallSt
  loc_9CA30B: LitNothing
  loc_9CA30D: FStAd var_AC 
  loc_9CA311: Call Proc_118_33_9B9DB8()
  loc_9CA316: Call cmdCancelar_Click()
  loc_9CA31B: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '949848
  'Data Table: 49566C
  loc_949834: ILdI2 KeyAscii
  loc_949837: CI4UI1
  loc_949838: LitI4 &HD
  loc_94983D: EqI4
  loc_94983E: BranchF loc_949846
  loc_949841: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_949846: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9590D8
  'Data Table: 49566C
  loc_9590C0: ILdI2 KeyCode
  loc_9590C3: ILdRf Me
  loc_9590C6: CastAd
  loc_9590C9: FStAdFunc var_88
  loc_9590CC: FLdRfVar var_88
  loc_9590CF: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_9590D4: FFree1Ad var_88
  loc_9590D7: ExitProcHresult
End Sub

Private Sub CucuPersTxt_GotFocus() '94DB98
  'Data Table: 49566C
  loc_94DB84: FLdPr Me
  loc_94DB87: VCallAd Control_ID_CucuPersTxt
  loc_94DB8A: CVarAd
  loc_94DB8E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94DB93: FFree1Var var_94 = ""
  loc_94DB96: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyUp(KeyCode As Integer, Shift As Integer) 'A0BF90
  'Data Table: 49566C
  loc_A0BE2C: ILdI2 Shift
  loc_A0BE2F: CI4UI1
  loc_A0BE30: LitI4 2
  loc_A0BE35: EqI4
  loc_A0BE36: ILdI2 KeyCode
  loc_A0BE39: CI4UI1
  loc_A0BE3A: LitI4 &H42
  loc_A0BE3F: EqI4
  loc_A0BE40: AndI4
  loc_A0BE41: BranchF loc_A0BF8C
  loc_A0BE44: LitI2_Byte &HFF
  loc_A0BE46: ImpAdLdRf MemVar_C3D74C
  loc_A0BE49: NewIfNullPr bscProveedor
  loc_A0BE4C: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_A0BE51: LitNothing
  loc_A0BE53: CastAd
  loc_A0BE56: FStAdFuncNoPop
  loc_A0BE59: FLdRfVar var_88
  loc_A0BE5C: ImpAdLdRf MemVar_C3D74C
  loc_A0BE5F: NewIfNullPr bscProveedor
  loc_A0BE62: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0BE67: FLdPr var_88
  loc_A0BE6A: Call clsbase.RsFrmSet(from_stack_1v)
  loc_A0BE6F: FFreeAd var_8C = ""
  loc_A0BE76: LitVar_Missing var_AC
  loc_A0BE79: PopAdLdVar
  loc_A0BE7A: LitVarI4
  loc_A0BE82: PopAdLdVar
  loc_A0BE83: ImpAdLdRf MemVar_C3D74C
  loc_A0BE86: NewIfNullPr bscProveedor
  loc_A0BE89: bscProveedor.Show from_stack_1, from_stack_2
  loc_A0BE8E: FLdRfVar var_B0
  loc_A0BE91: FLdRfVar var_88
  loc_A0BE94: ImpAdLdRf MemVar_C3D74C
  loc_A0BE97: NewIfNullPr bscProveedor
  loc_A0BE9A: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0BE9F: FLdPr var_88
  loc_A0BEA2: from_stack_1 = clsbase.RecordCount
  loc_A0BEA7: ILdRf var_B0
  loc_A0BEAA: LitI4 0
  loc_A0BEAF: GtI4
  loc_A0BEB0: FFree1Ad var_88
  loc_A0BEB3: BranchF loc_A0BF8C
  loc_A0BEB6: FLdRfVar var_C8
  loc_A0BEB9: FLdRfVar var_B8
  loc_A0BEBC: LitVarStr var_9C, "CucuPers"
  loc_A0BEC1: PopAdLdVar
  loc_A0BEC2: FLdRfVar var_B4
  loc_A0BEC5: FLdRfVar var_8C
  loc_A0BEC8: FLdRfVar var_88
  loc_A0BECB: ImpAdLdRf MemVar_C3D74C
  loc_A0BECE: NewIfNullPr bscProveedor
  loc_A0BED1: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0BED6: FLdPr var_88
  loc_A0BED9: from_stack_1v = clsbase.RsFrmGet()
  loc_A0BEDE: FLdPr var_8C
  loc_A0BEE1:  = Me.Fields
  loc_A0BEE6: FLdPr var_B4
  loc_A0BEE9: from_stack_2 = Me.Item(from_stack_1)
  loc_A0BEEE: FLdPr var_B8
  loc_A0BEF1:  = Me.Value
  loc_A0BEF6: FLdRfVar var_C8
  loc_A0BEF9: CStrVarTmp
  loc_A0BEFA: FStStrNoPop var_CC
  loc_A0BEFD: FLdPr Me
  loc_A0BF00: VCallAd Control_ID_CucuPersTxt
  loc_A0BF03: FStAdFunc var_D0
  loc_A0BF06: FLdPr var_D0
  loc_A0BF09: Me.Text = from_stack_1
  loc_A0BF0E: FFree1Str var_CC
  loc_A0BF11: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0BF1E: FFree1Var var_C8 = ""
  loc_A0BF21: FLdRfVar var_C8
  loc_A0BF24: FLdRfVar var_B8
  loc_A0BF27: LitVarStr var_9C, "DetaProv"
  loc_A0BF2C: PopAdLdVar
  loc_A0BF2D: FLdRfVar var_B4
  loc_A0BF30: FLdRfVar var_8C
  loc_A0BF33: FLdRfVar var_88
  loc_A0BF36: ImpAdLdRf MemVar_C3D74C
  loc_A0BF39: NewIfNullPr bscProveedor
  loc_A0BF3C: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0BF41: FLdPr var_88
  loc_A0BF44: from_stack_1v = clsbase.RsFrmGet()
  loc_A0BF49: FLdPr var_8C
  loc_A0BF4C:  = Me.Fields
  loc_A0BF51: FLdPr var_B4
  loc_A0BF54: from_stack_2 = Me.Item(from_stack_1)
  loc_A0BF59: FLdPr var_B8
  loc_A0BF5C:  = Me.Value
  loc_A0BF61: FLdRfVar var_C8
  loc_A0BF64: CStrVarTmp
  loc_A0BF65: FStStrNoPop var_CC
  loc_A0BF68: FLdPr Me
  loc_A0BF6B: VCallAd Control_ID_DetaProvLbl
  loc_A0BF6E: FStAdFunc var_D0
  loc_A0BF71: FLdPr var_D0
  loc_A0BF74: Me.Caption = from_stack_1
  loc_A0BF79: FFree1Str var_CC
  loc_A0BF7C: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0BF89: FFree1Var var_C8 = ""
  loc_A0BF8C: ExitProcHresult
  loc_A0BF8D: ExitProcI2
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) 'B4A7C0
  'Data Table: 49566C
  loc_B49D18: FLdRfVar var_8C
  loc_B49D1B: FLdPr Me
  loc_B49D1E: VCallAd Control_ID_CucuPersTxt
  loc_B49D21: FStAdFunc var_88
  loc_B49D24: FLdPr var_88
  loc_B49D27:  = Me.Text
  loc_B49D2C: ILdRf var_8C
  loc_B49D2F: ImpAdCallI2 Trim$()
  loc_B49D34: FStStrNoPop var_90
  loc_B49D37: LitStr vbNullString
  loc_B49D3A: NeStr
  loc_B49D3C: FFreeStr var_8C = ""
  loc_B49D43: FFree1Ad var_88
  loc_B49D46: BranchF loc_B4A60D
  loc_B49D49: FLdPr Me
  loc_B49D4C: VCallAd Control_ID_CucuPersTxt
  loc_B49D4F: FStAdFunc var_88
  loc_B49D52: FLdRfVar var_88
  loc_B49D55: ImpAdCallI2 Proc_266_39_9F3844()
  loc_B49D5A: FFree1Ad var_88
  loc_B49D5D: BranchF loc_B4A1A7
  loc_B49D60: LitI2_Byte &HFF
  loc_B49D62: ImpAdLdRf MemVar_C3D74C
  loc_B49D65: NewIfNullPr bscProveedor
  loc_B49D68: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_B49D6D: LitStr "AND proveedor.CucuPers LIKE '" & Chr(37)
  loc_B49D70: FLdRfVar var_8C
  loc_B49D73: FLdPr Me
  loc_B49D76: VCallAd Control_ID_OKButton
  loc_B49D79: FStAdFunc var_88
  loc_B49D7C: FLdPr var_88
  loc_B49D7F:  = bscProveedor.TextBox.Text
  loc_B49D84: ILdRf var_8C
  loc_B49D87: ConcatStr
  loc_B49D88: FStStrNoPop var_90
  loc_B49D8B: LitStr Chr(37) & "' ORDER BY DetaProv"
  loc_B49D8E: ConcatStr
  loc_B49D8F: FStStrNoPop var_94
  loc_B49D92: ImpAdLdRf MemVar_C3D74C
  loc_B49D95: NewIfNullPr bscProveedor
  loc_B49D98: Call bscProveedor.Constructor(from_stack_1v)
  loc_B49D9D: FFreeStr var_8C = "": var_90 = ""
  loc_B49DA6: FFree1Ad var_88
  loc_B49DA9: FLdRfVar var_9C
  loc_B49DAC: FLdRfVar var_98
  loc_B49DAF: FLdRfVar var_88
  loc_B49DB2: ImpAdLdRf MemVar_C3D74C
  loc_B49DB5: NewIfNullPr bscProveedor
  loc_B49DB8: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49DBD: FLdPr var_88
  loc_B49DC0: from_stack_1v = clsbase.RsFrmGet()
  loc_B49DC5: FLdPr var_98
  loc_B49DC8:  = Me.RecordCount
  loc_B49DCD: ILdRf var_9C
  loc_B49DD0: LitI4 1
  loc_B49DD5: EqI4
  loc_B49DD6: FFreeAd var_88 = ""
  loc_B49DDD: BranchF loc_B49F00
  loc_B49DE0: FLdRfVar var_C4
  loc_B49DE3: FLdRfVar var_B4
  loc_B49DE6: LitVarStr var_B0, "CucuPers"
  loc_B49DEB: PopAdLdVar
  loc_B49DEC: FLdRfVar var_A0
  loc_B49DEF: FLdRfVar var_98
  loc_B49DF2: FLdRfVar var_88
  loc_B49DF5: ImpAdLdRf MemVar_C3D74C
  loc_B49DF8: NewIfNullPr bscProveedor
  loc_B49DFB: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49E00: FLdPr var_88
  loc_B49E03: from_stack_1v = clsbase.RsFrmGet()
  loc_B49E08: FLdPr var_98
  loc_B49E0B:  = Me.Fields
  loc_B49E10: FLdPr var_A0
  loc_B49E13: from_stack_2 = Me.Item(from_stack_1)
  loc_B49E18: FLdPr var_B4
  loc_B49E1B:  = Me.Value
  loc_B49E20: FLdRfVar var_C4
  loc_B49E23: CStrVarTmp
  loc_B49E24: FStStrNoPop var_8C
  loc_B49E27: FLdPr Me
  loc_B49E2A: VCallAd Control_ID_CucuPersTxt
  loc_B49E2D: FStAdFunc var_C8
  loc_B49E30: FLdPr var_C8
  loc_B49E33: Me.Text = from_stack_1
  loc_B49E38: FFree1Str var_8C
  loc_B49E3B: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B49E48: FFree1Var var_C4 = ""
  loc_B49E4B: FLdRfVar var_C4
  loc_B49E4E: FLdRfVar var_B4
  loc_B49E51: LitVarStr var_B0, "DetaProv"
  loc_B49E56: PopAdLdVar
  loc_B49E57: FLdRfVar var_A0
  loc_B49E5A: FLdRfVar var_98
  loc_B49E5D: FLdRfVar var_88
  loc_B49E60: ImpAdLdRf MemVar_C3D74C
  loc_B49E63: NewIfNullPr bscProveedor
  loc_B49E66: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49E6B: FLdPr var_88
  loc_B49E6E: from_stack_1v = clsbase.RsFrmGet()
  loc_B49E73: FLdPr var_98
  loc_B49E76:  = Me.Fields
  loc_B49E7B: FLdPr var_A0
  loc_B49E7E: from_stack_2 = Me.Item(from_stack_1)
  loc_B49E83: FLdPr var_B4
  loc_B49E86:  = Me.Value
  loc_B49E8B: FLdRfVar var_C4
  loc_B49E8E: CStrVarTmp
  loc_B49E8F: FStStrNoPop var_8C
  loc_B49E92: FLdPr Me
  loc_B49E95: VCallAd Control_ID_DetaProvLbl
  loc_B49E98: FStAdFunc var_C8
  loc_B49E9B: FLdPr var_C8
  loc_B49E9E: Me.Caption = from_stack_1
  loc_B49EA3: FFree1Str var_8C
  loc_B49EA6: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B49EB3: FFree1Var var_C4 = ""
  loc_B49EB6: LitStr vbNullString
  loc_B49EB9: FLdPr Me
  loc_B49EBC: MemStStrCopy
  loc_B49EC0: FLdPr Me
  loc_B49EC3: VCallAd Control_ID_CucuPersTxt
  loc_B49EC6: FStAdFunc var_B4
  loc_B49EC9: FLdPr Me
  loc_B49ECC: VCallAd Control_ID_DetaProvLbl
  loc_B49ECF: FStAdFunc var_A0
  loc_B49ED2: FLdRfVar var_A0
  loc_B49ED5: FLdZeroAd var_B4
  loc_B49ED8: FStAdFuncNoPop
  loc_B49EDB: CastAd
  loc_B49EDE: FStAdFunc var_98
  loc_B49EE1: FLdRfVar var_98
  loc_B49EE4: FLdPr Me
  loc_B49EE7: MemLdRfVar from_stack_1.global_68
  loc_B49EEA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B49EEF: IStI2 Cancel
  loc_B49EF2: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B49EFD: Branch loc_B4A1A4
  loc_B49F00: FLdRfVar var_9C
  loc_B49F03: FLdRfVar var_98
  loc_B49F06: FLdRfVar var_88
  loc_B49F09: ImpAdLdRf MemVar_C3D74C
  loc_B49F0C: NewIfNullPr bscProveedor
  loc_B49F0F: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49F14: FLdPr var_88
  loc_B49F17: from_stack_1v = clsbase.RsFrmGet()
  loc_B49F1C: FLdPr var_98
  loc_B49F1F:  = Me.RecordCount
  loc_B49F24: ILdRf var_9C
  loc_B49F27: LitI4 1
  loc_B49F2C: GtI4
  loc_B49F2D: FFreeAd var_88 = ""
  loc_B49F34: BranchF loc_B4A10F
  loc_B49F37: LitVar_Missing var_D8
  loc_B49F3A: PopAdLdVar
  loc_B49F3B: LitVarI4
  loc_B49F43: PopAdLdVar
  loc_B49F44: ImpAdLdRf MemVar_C3D74C
  loc_B49F47: NewIfNullPr bscProveedor
  loc_B49F4A: bscProveedor.Show from_stack_1, from_stack_2
  loc_B49F4F: FLdRfVar var_9C
  loc_B49F52: FLdRfVar var_88
  loc_B49F55: ImpAdLdRf MemVar_C3D74C
  loc_B49F58: NewIfNullPr bscProveedor
  loc_B49F5B: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49F60: FLdPr var_88
  loc_B49F63: from_stack_1 = clsbase.RecordCount
  loc_B49F68: ILdRf var_9C
  loc_B49F6B: LitI4 0
  loc_B49F70: GtI4
  loc_B49F71: FFree1Ad var_88
  loc_B49F74: BranchF loc_B4A097
  loc_B49F77: FLdRfVar var_C4
  loc_B49F7A: FLdRfVar var_B4
  loc_B49F7D: LitVarStr var_B0, "CucuPers"
  loc_B49F82: PopAdLdVar
  loc_B49F83: FLdRfVar var_A0
  loc_B49F86: FLdRfVar var_98
  loc_B49F89: FLdRfVar var_88
  loc_B49F8C: ImpAdLdRf MemVar_C3D74C
  loc_B49F8F: NewIfNullPr bscProveedor
  loc_B49F92: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49F97: FLdPr var_88
  loc_B49F9A: from_stack_1v = clsbase.RsFrmGet()
  loc_B49F9F: FLdPr var_98
  loc_B49FA2:  = Me.Fields
  loc_B49FA7: FLdPr var_A0
  loc_B49FAA: from_stack_2 = Me.Item(from_stack_1)
  loc_B49FAF: FLdPr var_B4
  loc_B49FB2:  = Me.Value
  loc_B49FB7: FLdRfVar var_C4
  loc_B49FBA: CStrVarTmp
  loc_B49FBB: FStStrNoPop var_8C
  loc_B49FBE: FLdPr Me
  loc_B49FC1: VCallAd Control_ID_CucuPersTxt
  loc_B49FC4: FStAdFunc var_C8
  loc_B49FC7: FLdPr var_C8
  loc_B49FCA: Me.Text = from_stack_1
  loc_B49FCF: FFree1Str var_8C
  loc_B49FD2: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B49FDF: FFree1Var var_C4 = ""
  loc_B49FE2: FLdRfVar var_C4
  loc_B49FE5: FLdRfVar var_B4
  loc_B49FE8: LitVarStr var_B0, "DetaProv"
  loc_B49FED: PopAdLdVar
  loc_B49FEE: FLdRfVar var_A0
  loc_B49FF1: FLdRfVar var_98
  loc_B49FF4: FLdRfVar var_88
  loc_B49FF7: ImpAdLdRf MemVar_C3D74C
  loc_B49FFA: NewIfNullPr bscProveedor
  loc_B49FFD: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4A002: FLdPr var_88
  loc_B4A005: from_stack_1v = clsbase.RsFrmGet()
  loc_B4A00A: FLdPr var_98
  loc_B4A00D:  = Me.Fields
  loc_B4A012: FLdPr var_A0
  loc_B4A015: from_stack_2 = Me.Item(from_stack_1)
  loc_B4A01A: FLdPr var_B4
  loc_B4A01D:  = Me.Value
  loc_B4A022: FLdRfVar var_C4
  loc_B4A025: CStrVarTmp
  loc_B4A026: FStStrNoPop var_8C
  loc_B4A029: FLdPr Me
  loc_B4A02C: VCallAd Control_ID_DetaProvLbl
  loc_B4A02F: FStAdFunc var_C8
  loc_B4A032: FLdPr var_C8
  loc_B4A035: Me.Caption = from_stack_1
  loc_B4A03A: FFree1Str var_8C
  loc_B4A03D: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B4A04A: FFree1Var var_C4 = ""
  loc_B4A04D: LitStr vbNullString
  loc_B4A050: FLdPr Me
  loc_B4A053: MemStStrCopy
  loc_B4A057: FLdPr Me
  loc_B4A05A: VCallAd Control_ID_CucuPersTxt
  loc_B4A05D: FStAdFunc var_B4
  loc_B4A060: FLdPr Me
  loc_B4A063: VCallAd Control_ID_DetaProvLbl
  loc_B4A066: FStAdFunc var_A0
  loc_B4A069: FLdRfVar var_A0
  loc_B4A06C: FLdZeroAd var_B4
  loc_B4A06F: FStAdFuncNoPop
  loc_B4A072: CastAd
  loc_B4A075: FStAdFunc var_98
  loc_B4A078: FLdRfVar var_98
  loc_B4A07B: FLdPr Me
  loc_B4A07E: MemLdRfVar from_stack_1.global_68
  loc_B4A081: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4A086: IStI2 Cancel
  loc_B4A089: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B4A094: Branch loc_B4A10C
  loc_B4A097: LitStr vbNullString
  loc_B4A09A: FLdPr Me
  loc_B4A09D: VCallAd Control_ID_CucuPersTxt
  loc_B4A0A0: FStAdFunc var_88
  loc_B4A0A3: FLdPr var_88
  loc_B4A0A6: Me.Text = from_stack_1
  loc_B4A0AB: FFree1Ad var_88
  loc_B4A0AE: LitStr vbNullString
  loc_B4A0B1: FLdPr Me
  loc_B4A0B4: VCallAd Control_ID_DetaProvLbl
  loc_B4A0B7: FStAdFunc var_88
  loc_B4A0BA: FLdPr var_88
  loc_B4A0BD: Me.Caption = from_stack_1
  loc_B4A0C2: FFree1Ad var_88
  loc_B4A0C5: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B4A0C8: FLdPr Me
  loc_B4A0CB: MemStStrCopy
  loc_B4A0CF: FLdPr Me
  loc_B4A0D2: VCallAd Control_ID_CucuPersTxt
  loc_B4A0D5: FStAdFunc var_B4
  loc_B4A0D8: FLdPr Me
  loc_B4A0DB: VCallAd Control_ID_DetaProvLbl
  loc_B4A0DE: FStAdFunc var_A0
  loc_B4A0E1: FLdRfVar var_A0
  loc_B4A0E4: FLdZeroAd var_B4
  loc_B4A0E7: FStAdFuncNoPop
  loc_B4A0EA: CastAd
  loc_B4A0ED: FStAdFunc var_98
  loc_B4A0F0: FLdRfVar var_98
  loc_B4A0F3: FLdPr Me
  loc_B4A0F6: MemLdRfVar from_stack_1.global_68
  loc_B4A0F9: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4A0FE: IStI2 Cancel
  loc_B4A101: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B4A10C: Branch loc_B4A1A4
  loc_B4A10F: FLdRfVar var_9C
  loc_B4A112: FLdRfVar var_98
  loc_B4A115: FLdRfVar var_88
  loc_B4A118: ImpAdLdRf MemVar_C3D74C
  loc_B4A11B: NewIfNullPr bscProveedor
  loc_B4A11E: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4A123: FLdPr var_88
  loc_B4A126: from_stack_1v = clsbase.RsFrmGet()
  loc_B4A12B: FLdPr var_98
  loc_B4A12E:  = Me.RecordCount
  loc_B4A133: ILdRf var_9C
  loc_B4A136: LitI4 1
  loc_B4A13B: LtI4
  loc_B4A13C: FFreeAd var_88 = ""
  loc_B4A143: BranchF loc_B4A1A4
  loc_B4A146: LitStr vbNullString
  loc_B4A149: FLdPr Me
  loc_B4A14C: VCallAd Control_ID_DetaProvLbl
  loc_B4A14F: FStAdFunc var_88
  loc_B4A152: FLdPr var_88
  loc_B4A155: Me.Caption = from_stack_1
  loc_B4A15A: FFree1Ad var_88
  loc_B4A15D: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B4A160: FLdPr Me
  loc_B4A163: MemStStrCopy
  loc_B4A167: FLdPr Me
  loc_B4A16A: VCallAd Control_ID_CucuPersTxt
  loc_B4A16D: FStAdFunc var_B4
  loc_B4A170: FLdPr Me
  loc_B4A173: VCallAd Control_ID_DetaProvLbl
  loc_B4A176: FStAdFunc var_A0
  loc_B4A179: FLdRfVar var_A0
  loc_B4A17C: FLdZeroAd var_B4
  loc_B4A17F: FStAdFuncNoPop
  loc_B4A182: CastAd
  loc_B4A185: FStAdFunc var_98
  loc_B4A188: FLdRfVar var_98
  loc_B4A18B: FLdPr Me
  loc_B4A18E: MemLdRfVar from_stack_1.global_68
  loc_B4A191: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4A196: IStI2 Cancel
  loc_B4A199: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B4A1A4: Branch loc_B4A60A
  loc_B4A1A7: LitI2_Byte &HFF
  loc_B4A1A9: ImpAdLdRf MemVar_C3D74C
  loc_B4A1AC: NewIfNullPr bscProveedor
  loc_B4A1AF: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_B4A1B4: FLdRfVar var_8C
  loc_B4A1B7: FLdPr Me
  loc_B4A1BA: VCallAd Control_ID_OKButton
  loc_B4A1BD: FStAdFunc var_88
  loc_B4A1C0: FLdPr var_88
  loc_B4A1C3:  = bscProveedor.TextBox.Text
  loc_B4A1C8: LitStr " AND DetaProv LIKE '" & Chr(37)
  loc_B4A1CB: LitI4 0
  loc_B4A1D0: LitI4 -1
  loc_B4A1D5: LitI4 1
  loc_B4A1DA: LitStr Chr(37)
  loc_B4A1DD: LitStr " "
  loc_B4A1E0: ILdRf var_8C
  loc_B4A1E3: ImpAdCallI2 Replace(, , , , , )
  loc_B4A1E8: FStStrNoPop var_90
  loc_B4A1EB: ConcatStr
  loc_B4A1EC: FStStrNoPop var_94
  loc_B4A1EF: LitStr Chr(37) & "' ORDER BY DetaProv"
  loc_B4A1F2: ConcatStr
  loc_B4A1F3: FStStrNoPop var_DC
  loc_B4A1F6: ImpAdLdRf MemVar_C3D74C
  loc_B4A1F9: NewIfNullPr bscProveedor
  loc_B4A1FC: Call bscProveedor.Constructor(from_stack_1v)
  loc_B4A201: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_B4A20C: FFree1Ad var_88
  loc_B4A20F: FLdRfVar var_9C
  loc_B4A212: FLdRfVar var_98
  loc_B4A215: FLdRfVar var_88
  loc_B4A218: ImpAdLdRf MemVar_C3D74C
  loc_B4A21B: NewIfNullPr bscProveedor
  loc_B4A21E: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4A223: FLdPr var_88
  loc_B4A226: from_stack_1v = clsbase.RsFrmGet()
  loc_B4A22B: FLdPr var_98
  loc_B4A22E:  = Me.RecordCount
  loc_B4A233: ILdRf var_9C
  loc_B4A236: LitI4 1
  loc_B4A23B: EqI4
  loc_B4A23C: FFreeAd var_88 = ""
  loc_B4A243: BranchF loc_B4A366
  loc_B4A246: FLdRfVar var_C4
  loc_B4A249: FLdRfVar var_B4
  loc_B4A24C: LitVarStr var_B0, "CucuPers"
  loc_B4A251: PopAdLdVar
  loc_B4A252: FLdRfVar var_A0
  loc_B4A255: FLdRfVar var_98
  loc_B4A258: FLdRfVar var_88
  loc_B4A25B: ImpAdLdRf MemVar_C3D74C
  loc_B4A25E: NewIfNullPr bscProveedor
  loc_B4A261: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4A266: FLdPr var_88
  loc_B4A269: from_stack_1v = clsbase.RsFrmGet()
  loc_B4A26E: FLdPr var_98
  loc_B4A271:  = Me.Fields
  loc_B4A276: FLdPr var_A0
  loc_B4A279: from_stack_2 = Me.Item(from_stack_1)
  loc_B4A27E: FLdPr var_B4
  loc_B4A281:  = Me.Value
  loc_B4A286: FLdRfVar var_C4
  loc_B4A289: CStrVarTmp
  loc_B4A28A: FStStrNoPop var_8C
  loc_B4A28D: FLdPr Me
  loc_B4A290: VCallAd Control_ID_CucuPersTxt
  loc_B4A293: FStAdFunc var_C8
  loc_B4A296: FLdPr var_C8
  loc_B4A299: Me.Text = from_stack_1
  loc_B4A29E: FFree1Str var_8C
  loc_B4A2A1: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B4A2AE: FFree1Var var_C4 = ""
  loc_B4A2B1: FLdRfVar var_C4
  loc_B4A2B4: FLdRfVar var_B4
  loc_B4A2B7: LitVarStr var_B0, "DetaProv"
  loc_B4A2BC: PopAdLdVar
  loc_B4A2BD: FLdRfVar var_A0
  loc_B4A2C0: FLdRfVar var_98
  loc_B4A2C3: FLdRfVar var_88
  loc_B4A2C6: ImpAdLdRf MemVar_C3D74C
  loc_B4A2C9: NewIfNullPr bscProveedor
  loc_B4A2CC: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4A2D1: FLdPr var_88
  loc_B4A2D4: from_stack_1v = clsbase.RsFrmGet()
  loc_B4A2D9: FLdPr var_98
  loc_B4A2DC:  = Me.Fields
  loc_B4A2E1: FLdPr var_A0
  loc_B4A2E4: from_stack_2 = Me.Item(from_stack_1)
  loc_B4A2E9: FLdPr var_B4
  loc_B4A2EC:  = Me.Value
  loc_B4A2F1: FLdRfVar var_C4
  loc_B4A2F4: CStrVarTmp
  loc_B4A2F5: FStStrNoPop var_8C
  loc_B4A2F8: FLdPr Me
  loc_B4A2FB: VCallAd Control_ID_DetaProvLbl
  loc_B4A2FE: FStAdFunc var_C8
  loc_B4A301: FLdPr var_C8
  loc_B4A304: Me.Caption = from_stack_1
  loc_B4A309: FFree1Str var_8C
  loc_B4A30C: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B4A319: FFree1Var var_C4 = ""
  loc_B4A31C: LitStr vbNullString
  loc_B4A31F: FLdPr Me
  loc_B4A322: MemStStrCopy
  loc_B4A326: FLdPr Me
  loc_B4A329: VCallAd Control_ID_CucuPersTxt
  loc_B4A32C: FStAdFunc var_B4
  loc_B4A32F: FLdPr Me
  loc_B4A332: VCallAd Control_ID_DetaProvLbl
  loc_B4A335: FStAdFunc var_A0
  loc_B4A338: FLdRfVar var_A0
  loc_B4A33B: FLdZeroAd var_B4
  loc_B4A33E: FStAdFuncNoPop
  loc_B4A341: CastAd
  loc_B4A344: FStAdFunc var_98
  loc_B4A347: FLdRfVar var_98
  loc_B4A34A: FLdPr Me
  loc_B4A34D: MemLdRfVar from_stack_1.global_68
  loc_B4A350: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4A355: IStI2 Cancel
  loc_B4A358: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B4A363: Branch loc_B4A60A
  loc_B4A366: FLdRfVar var_9C
  loc_B4A369: FLdRfVar var_98
  loc_B4A36C: FLdRfVar var_88
  loc_B4A36F: ImpAdLdRf MemVar_C3D74C
  loc_B4A372: NewIfNullPr bscProveedor
  loc_B4A375: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4A37A: FLdPr var_88
  loc_B4A37D: from_stack_1v = clsbase.RsFrmGet()
  loc_B4A382: FLdPr var_98
  loc_B4A385:  = Me.RecordCount
  loc_B4A38A: ILdRf var_9C
  loc_B4A38D: LitI4 1
  loc_B4A392: GtI4
  loc_B4A393: FFreeAd var_88 = ""
  loc_B4A39A: BranchF loc_B4A575
  loc_B4A39D: LitVar_Missing var_D8
  loc_B4A3A0: PopAdLdVar
  loc_B4A3A1: LitVarI4
  loc_B4A3A9: PopAdLdVar
  loc_B4A3AA: ImpAdLdRf MemVar_C3D74C
  loc_B4A3AD: NewIfNullPr bscProveedor
  loc_B4A3B0: bscProveedor.Show from_stack_1, from_stack_2
  loc_B4A3B5: FLdRfVar var_9C
  loc_B4A3B8: FLdRfVar var_88
  loc_B4A3BB: ImpAdLdRf MemVar_C3D74C
  loc_B4A3BE: NewIfNullPr bscProveedor
  loc_B4A3C1: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4A3C6: FLdPr var_88
  loc_B4A3C9: from_stack_1 = clsbase.RecordCount
  loc_B4A3CE: ILdRf var_9C
  loc_B4A3D1: LitI4 0
  loc_B4A3D6: GtI4
  loc_B4A3D7: FFree1Ad var_88
  loc_B4A3DA: BranchF loc_B4A4FD
  loc_B4A3DD: FLdRfVar var_C4
  loc_B4A3E0: FLdRfVar var_B4
  loc_B4A3E3: LitVarStr var_B0, "CucuPers"
  loc_B4A3E8: PopAdLdVar
  loc_B4A3E9: FLdRfVar var_A0
  loc_B4A3EC: FLdRfVar var_98
  loc_B4A3EF: FLdRfVar var_88
  loc_B4A3F2: ImpAdLdRf MemVar_C3D74C
  loc_B4A3F5: NewIfNullPr bscProveedor
  loc_B4A3F8: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4A3FD: FLdPr var_88
  loc_B4A400: from_stack_1v = clsbase.RsFrmGet()
  loc_B4A405: FLdPr var_98
  loc_B4A408:  = Me.Fields
  loc_B4A40D: FLdPr var_A0
  loc_B4A410: from_stack_2 = Me.Item(from_stack_1)
  loc_B4A415: FLdPr var_B4
  loc_B4A418:  = Me.Value
  loc_B4A41D: FLdRfVar var_C4
  loc_B4A420: CStrVarTmp
  loc_B4A421: FStStrNoPop var_8C
  loc_B4A424: FLdPr Me
  loc_B4A427: VCallAd Control_ID_CucuPersTxt
  loc_B4A42A: FStAdFunc var_C8
  loc_B4A42D: FLdPr var_C8
  loc_B4A430: Me.Text = from_stack_1
  loc_B4A435: FFree1Str var_8C
  loc_B4A438: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B4A445: FFree1Var var_C4 = ""
  loc_B4A448: FLdRfVar var_C4
  loc_B4A44B: FLdRfVar var_B4
  loc_B4A44E: LitVarStr var_B0, "DetaProv"
  loc_B4A453: PopAdLdVar
  loc_B4A454: FLdRfVar var_A0
  loc_B4A457: FLdRfVar var_98
  loc_B4A45A: FLdRfVar var_88
  loc_B4A45D: ImpAdLdRf MemVar_C3D74C
  loc_B4A460: NewIfNullPr bscProveedor
  loc_B4A463: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4A468: FLdPr var_88
  loc_B4A46B: from_stack_1v = clsbase.RsFrmGet()
  loc_B4A470: FLdPr var_98
  loc_B4A473:  = Me.Fields
  loc_B4A478: FLdPr var_A0
  loc_B4A47B: from_stack_2 = Me.Item(from_stack_1)
  loc_B4A480: FLdPr var_B4
  loc_B4A483:  = Me.Value
  loc_B4A488: FLdRfVar var_C4
  loc_B4A48B: CStrVarTmp
  loc_B4A48C: FStStrNoPop var_8C
  loc_B4A48F: FLdPr Me
  loc_B4A492: VCallAd Control_ID_DetaProvLbl
  loc_B4A495: FStAdFunc var_C8
  loc_B4A498: FLdPr var_C8
  loc_B4A49B: Me.Caption = from_stack_1
  loc_B4A4A0: FFree1Str var_8C
  loc_B4A4A3: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B4A4B0: FFree1Var var_C4 = ""
  loc_B4A4B3: LitStr vbNullString
  loc_B4A4B6: FLdPr Me
  loc_B4A4B9: MemStStrCopy
  loc_B4A4BD: FLdPr Me
  loc_B4A4C0: VCallAd Control_ID_CucuPersTxt
  loc_B4A4C3: FStAdFunc var_B4
  loc_B4A4C6: FLdPr Me
  loc_B4A4C9: VCallAd Control_ID_DetaProvLbl
  loc_B4A4CC: FStAdFunc var_A0
  loc_B4A4CF: FLdRfVar var_A0
  loc_B4A4D2: FLdZeroAd var_B4
  loc_B4A4D5: FStAdFuncNoPop
  loc_B4A4D8: CastAd
  loc_B4A4DB: FStAdFunc var_98
  loc_B4A4DE: FLdRfVar var_98
  loc_B4A4E1: FLdPr Me
  loc_B4A4E4: MemLdRfVar from_stack_1.global_68
  loc_B4A4E7: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4A4EC: IStI2 Cancel
  loc_B4A4EF: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B4A4FA: Branch loc_B4A572
  loc_B4A4FD: LitStr vbNullString
  loc_B4A500: FLdPr Me
  loc_B4A503: VCallAd Control_ID_CucuPersTxt
  loc_B4A506: FStAdFunc var_88
  loc_B4A509: FLdPr var_88
  loc_B4A50C: Me.Text = from_stack_1
  loc_B4A511: FFree1Ad var_88
  loc_B4A514: LitStr vbNullString
  loc_B4A517: FLdPr Me
  loc_B4A51A: VCallAd Control_ID_DetaProvLbl
  loc_B4A51D: FStAdFunc var_88
  loc_B4A520: FLdPr var_88
  loc_B4A523: Me.Caption = from_stack_1
  loc_B4A528: FFree1Ad var_88
  loc_B4A52B: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B4A52E: FLdPr Me
  loc_B4A531: MemStStrCopy
  loc_B4A535: FLdPr Me
  loc_B4A538: VCallAd Control_ID_CucuPersTxt
  loc_B4A53B: FStAdFunc var_B4
  loc_B4A53E: FLdPr Me
  loc_B4A541: VCallAd Control_ID_DetaProvLbl
  loc_B4A544: FStAdFunc var_A0
  loc_B4A547: FLdRfVar var_A0
  loc_B4A54A: FLdZeroAd var_B4
  loc_B4A54D: FStAdFuncNoPop
  loc_B4A550: CastAd
  loc_B4A553: FStAdFunc var_98
  loc_B4A556: FLdRfVar var_98
  loc_B4A559: FLdPr Me
  loc_B4A55C: MemLdRfVar from_stack_1.global_68
  loc_B4A55F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4A564: IStI2 Cancel
  loc_B4A567: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B4A572: Branch loc_B4A60A
  loc_B4A575: FLdRfVar var_9C
  loc_B4A578: FLdRfVar var_98
  loc_B4A57B: FLdRfVar var_88
  loc_B4A57E: ImpAdLdRf MemVar_C3D74C
  loc_B4A581: NewIfNullPr bscProveedor
  loc_B4A584: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4A589: FLdPr var_88
  loc_B4A58C: from_stack_1v = clsbase.RsFrmGet()
  loc_B4A591: FLdPr var_98
  loc_B4A594:  = Me.RecordCount
  loc_B4A599: ILdRf var_9C
  loc_B4A59C: LitI4 1
  loc_B4A5A1: LtI4
  loc_B4A5A2: FFreeAd var_88 = ""
  loc_B4A5A9: BranchF loc_B4A60A
  loc_B4A5AC: LitStr vbNullString
  loc_B4A5AF: FLdPr Me
  loc_B4A5B2: VCallAd Control_ID_DetaProvLbl
  loc_B4A5B5: FStAdFunc var_88
  loc_B4A5B8: FLdPr var_88
  loc_B4A5BB: Me.Caption = from_stack_1
  loc_B4A5C0: FFree1Ad var_88
  loc_B4A5C3: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B4A5C6: FLdPr Me
  loc_B4A5C9: MemStStrCopy
  loc_B4A5CD: FLdPr Me
  loc_B4A5D0: VCallAd Control_ID_CucuPersTxt
  loc_B4A5D3: FStAdFunc var_B4
  loc_B4A5D6: FLdPr Me
  loc_B4A5D9: VCallAd Control_ID_DetaProvLbl
  loc_B4A5DC: FStAdFunc var_A0
  loc_B4A5DF: FLdRfVar var_A0
  loc_B4A5E2: FLdZeroAd var_B4
  loc_B4A5E5: FStAdFuncNoPop
  loc_B4A5E8: CastAd
  loc_B4A5EB: FStAdFunc var_98
  loc_B4A5EE: FLdRfVar var_98
  loc_B4A5F1: FLdPr Me
  loc_B4A5F4: MemLdRfVar from_stack_1.global_68
  loc_B4A5F7: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4A5FC: IStI2 Cancel
  loc_B4A5FF: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B4A60A: Branch loc_B4A7BE
  loc_B4A60D: LitI2_Byte &HFF
  loc_B4A60F: ImpAdLdRf MemVar_C3D74C
  loc_B4A612: NewIfNullPr bscProveedor
  loc_B4A615: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_B4A61A: LitNothing
  loc_B4A61C: CastAd
  loc_B4A61F: FStAdFuncNoPop
  loc_B4A622: ImpAdLdRf MemVar_C3D74C
  loc_B4A625: NewIfNullPr bscProveedor
  loc_B4A628: Call bscProveedor.global_4315292Set(from_stack_1v)
  loc_B4A62D: FFree1Ad var_88
  loc_B4A630: LitVar_Missing var_D8
  loc_B4A633: PopAdLdVar
  loc_B4A634: LitVarI4
  loc_B4A63C: PopAdLdVar
  loc_B4A63D: ImpAdLdRf MemVar_C3D74C
  loc_B4A640: NewIfNullPr bscProveedor
  loc_B4A643: bscProveedor.Show from_stack_1, from_stack_2
  loc_B4A648: FLdRfVar var_9C
  loc_B4A64B: FLdRfVar var_88
  loc_B4A64E: ImpAdLdRf MemVar_C3D74C
  loc_B4A651: NewIfNullPr bscProveedor
  loc_B4A654: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4A659: FLdPr var_88
  loc_B4A65C: from_stack_1 = clsbase.RecordCount
  loc_B4A661: ILdRf var_9C
  loc_B4A664: LitI4 0
  loc_B4A669: GtI4
  loc_B4A66A: FFree1Ad var_88
  loc_B4A66D: BranchF loc_B4A749
  loc_B4A670: FLdRfVar var_C4
  loc_B4A673: FLdRfVar var_B4
  loc_B4A676: LitVarStr var_B0, "CucuPers"
  loc_B4A67B: PopAdLdVar
  loc_B4A67C: FLdRfVar var_A0
  loc_B4A67F: FLdRfVar var_98
  loc_B4A682: FLdRfVar var_88
  loc_B4A685: ImpAdLdRf MemVar_C3D74C
  loc_B4A688: NewIfNullPr bscProveedor
  loc_B4A68B: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4A690: FLdPr var_88
  loc_B4A693: from_stack_1v = clsbase.RsFrmGet()
  loc_B4A698: FLdPr var_98
  loc_B4A69B:  = Me.Fields
  loc_B4A6A0: FLdPr var_A0
  loc_B4A6A3: from_stack_2 = Me.Item(from_stack_1)
  loc_B4A6A8: FLdPr var_B4
  loc_B4A6AB:  = Me.Value
  loc_B4A6B0: FLdRfVar var_C4
  loc_B4A6B3: CStrVarTmp
  loc_B4A6B4: FStStrNoPop var_8C
  loc_B4A6B7: FLdPr Me
  loc_B4A6BA: VCallAd Control_ID_CucuPersTxt
  loc_B4A6BD: FStAdFunc var_C8
  loc_B4A6C0: FLdPr var_C8
  loc_B4A6C3: Me.Text = from_stack_1
  loc_B4A6C8: FFree1Str var_8C
  loc_B4A6CB: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B4A6D8: FFree1Var var_C4 = ""
  loc_B4A6DB: FLdRfVar var_C4
  loc_B4A6DE: FLdRfVar var_B4
  loc_B4A6E1: LitVarStr var_B0, "DetaProv"
  loc_B4A6E6: PopAdLdVar
  loc_B4A6E7: FLdRfVar var_A0
  loc_B4A6EA: FLdRfVar var_98
  loc_B4A6ED: FLdRfVar var_88
  loc_B4A6F0: ImpAdLdRf MemVar_C3D74C
  loc_B4A6F3: NewIfNullPr bscProveedor
  loc_B4A6F6: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4A6FB: FLdPr var_88
  loc_B4A6FE: from_stack_1v = clsbase.RsFrmGet()
  loc_B4A703: FLdPr var_98
  loc_B4A706:  = Me.Fields
  loc_B4A70B: FLdPr var_A0
  loc_B4A70E: from_stack_2 = Me.Item(from_stack_1)
  loc_B4A713: FLdPr var_B4
  loc_B4A716:  = Me.Value
  loc_B4A71B: FLdRfVar var_C4
  loc_B4A71E: CStrVarTmp
  loc_B4A71F: FStStrNoPop var_8C
  loc_B4A722: FLdPr Me
  loc_B4A725: VCallAd Control_ID_DetaProvLbl
  loc_B4A728: FStAdFunc var_C8
  loc_B4A72B: FLdPr var_C8
  loc_B4A72E: Me.Caption = from_stack_1
  loc_B4A733: FFree1Str var_8C
  loc_B4A736: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B4A743: FFree1Var var_C4 = ""
  loc_B4A746: Branch loc_B4A7BE
  loc_B4A749: LitStr vbNullString
  loc_B4A74C: FLdPr Me
  loc_B4A74F: VCallAd Control_ID_CucuPersTxt
  loc_B4A752: FStAdFunc var_88
  loc_B4A755: FLdPr var_88
  loc_B4A758: Me.Text = from_stack_1
  loc_B4A75D: FFree1Ad var_88
  loc_B4A760: LitStr vbNullString
  loc_B4A763: FLdPr Me
  loc_B4A766: VCallAd Control_ID_DetaProvLbl
  loc_B4A769: FStAdFunc var_88
  loc_B4A76C: FLdPr var_88
  loc_B4A76F: Me.Caption = from_stack_1
  loc_B4A774: FFree1Ad var_88
  loc_B4A777: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B4A77A: FLdPr Me
  loc_B4A77D: MemStStrCopy
  loc_B4A781: FLdPr Me
  loc_B4A784: VCallAd Control_ID_CucuPersTxt
  loc_B4A787: FStAdFunc var_B4
  loc_B4A78A: FLdPr Me
  loc_B4A78D: VCallAd Control_ID_DetaProvLbl
  loc_B4A790: FStAdFunc var_A0
  loc_B4A793: FLdRfVar var_A0
  loc_B4A796: FLdZeroAd var_B4
  loc_B4A799: FStAdFuncNoPop
  loc_B4A79C: CastAd
  loc_B4A79F: FStAdFunc var_98
  loc_B4A7A2: FLdRfVar var_98
  loc_B4A7A5: FLdPr Me
  loc_B4A7A8: MemLdRfVar from_stack_1.global_68
  loc_B4A7AB: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4A7B0: IStI2 Cancel
  loc_B4A7B3: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B4A7BE: ExitProcHresult
End Sub

Private Sub ExorImpuMsk_UnknownEvent_8 '9C4878
  'Data Table: 49566C
  loc_9C47B4: FLdRfVar var_8A
  loc_9C47B7: FLdPr Me
  loc_9C47BA: VCallAd Control_ID_cmdCancelar
  loc_9C47BD: FStAdFunc var_88
  loc_9C47C0: FLdPr var_88
  loc_9C47C3:  = Me.Value
  loc_9C47C8: FLdI2 var_8A
  loc_9C47CB: NotI4
  loc_9C47CC: FLdPr Me
  loc_9C47CF: VCallAd Control_ID_ExorImpuMsk
  loc_9C47D2: FStAdFunc var_90
  loc_9C47D5: FLdPr var_90
  loc_9C47D8: LateIdLdVar var_A0 DispID_13 -32767
  loc_9C47DF: CBoolVar
  loc_9C47E1: AndI4
  loc_9C47E2: FFreeAd var_88 = ""
  loc_9C47E9: FFree1Var var_A0 = ""
  loc_9C47EC: BranchF loc_9C4875
  loc_9C47EF: FLdPr Me
  loc_9C47F2: VCallAd Control_ID_ExorImpuMsk
  loc_9C47F5: FStAdFunc var_88
  loc_9C47F8: FLdPr var_88
  loc_9C47FB: LateIdLdVar var_A0 DispID_22 0
  loc_9C4802: PopAd
  loc_9C4804: LitI2_Byte 0
  loc_9C4806: PopTmpLdAd2 var_A8
  loc_9C4809: LitI2_Byte 0
  loc_9C480B: PopTmpLdAd2 var_A6
  loc_9C480E: LitI2_Byte 0
  loc_9C4810: PopTmpLdAd2 var_8A
  loc_9C4813: FLdRfVar var_A0
  loc_9C4816: CStrVarTmp
  loc_9C4817: FStStrNoPop var_A4
  loc_9C481A: LitStr "Expediente Original"
  loc_9C481D: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9C4822: FStStrNoPop var_AC
  loc_9C4825: FLdPr Me
  loc_9C4828: MemStStrCopy
  loc_9C482C: FFreeStr var_A4 = ""
  loc_9C4833: FFree1Ad var_88
  loc_9C4836: FFree1Var var_A0 = ""
  loc_9C4839: FLdPr Me
  loc_9C483C: VCallAd Control_ID_ExorImpuMsk
  loc_9C483F: FStAdFunc var_B4
  loc_9C4842: LitNothing
  loc_9C4844: CastAd
  loc_9C4847: FStAdFunc var_B0
  loc_9C484A: FLdRfVar var_B0
  loc_9C484D: FLdZeroAd var_B4
  loc_9C4850: FStAdFuncNoPop
  loc_9C4853: CastAd
  loc_9C4856: FStAdFunc var_90
  loc_9C4859: FLdRfVar var_90
  loc_9C485C: FLdPr Me
  loc_9C485F: MemLdRfVar from_stack_1.global_68
  loc_9C4862: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C4867: IStI2 Cancel
  loc_9C486A: FFreeAd var_88 = "": var_90 = "": var_B0 = ""
  loc_9C4875: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '99FD50
  'Data Table: 49566C
  loc_99FCE0: LitVarStr var_94, vbNullString
  loc_99FCE5: PopAdLdVar
  loc_99FCE6: FLdPr Me
  loc_99FCE9: VCallAd Control_ID_CodiOrgaMsk
  loc_99FCEC: FStAdFunc var_A8
  loc_99FCEF: FLdPr var_A8
  loc_99FCF2: LateIdSt
  loc_99FCF7: FFree1Ad var_A8
  loc_99FCFA: FLdPr Me
  loc_99FCFD: VCallAd Control_ID_CodiOrgaMsk
  loc_99FD00: FStAdFunc var_A8
  loc_99FD03: FLdPr var_A8
  loc_99FD06: LateIdLdVar var_B8 DispID_22 0
  loc_99FD0D: CStrVarTmp
  loc_99FD0E: FStStrNoPop var_BC
  loc_99FD11: LitStr vbNullString
  loc_99FD14: EqStr
  loc_99FD16: FFree1Str var_BC
  loc_99FD19: FFree1Ad var_A8
  loc_99FD1C: FFree1Var var_B8 = ""
  loc_99FD1F: BranchF loc_99FD3C
  loc_99FD22: LitVarStr var_94, vbNullString
  loc_99FD27: PopAdLdVar
  loc_99FD28: FLdPr Me
  loc_99FD2B: VCallAd Control_ID_CodiOrgaMsk
  loc_99FD2E: FStAdFunc var_A8
  loc_99FD31: FLdPr var_A8
  loc_99FD34: LateIdSt
  loc_99FD39: FFree1Ad var_A8
  loc_99FD3C: FLdPr Me
  loc_99FD3F: VCallAd Control_ID_CodiOrgaMsk
  loc_99FD42: CVarAd
  loc_99FD46: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_99FD4B: FFree1Var var_B8 = ""
  loc_99FD4E: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_1 '9886C0
  'Data Table: 49566C
  loc_98867C: ImpAdLdI2 MemVar_C3D064
  loc_98867F: LitI2 2024
  loc_988682: GeI2
  loc_988683: BranchF loc_9886A3
  loc_988686: LitVarStr var_94, "###"
  loc_98868B: PopAdLdVar
  loc_98868C: FLdPr Me
  loc_98868F: VCallAd Control_ID_CodiOrgaMsk
  loc_988692: FStAdFunc var_A8
  loc_988695: FLdPr var_A8
  loc_988698: LateIdSt
  loc_98869D: FFree1Ad var_A8
  loc_9886A0: Branch loc_9886BD
  loc_9886A3: LitVarStr var_94, "######"
  loc_9886A8: PopAdLdVar
  loc_9886A9: FLdPr Me
  loc_9886AC: VCallAd Control_ID_CodiOrgaMsk
  loc_9886AF: FStAdFunc var_A8
  loc_9886B2: FLdPr var_A8
  loc_9886B5: LateIdSt
  loc_9886BA: FFree1Ad var_A8
  loc_9886BD: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'B54E44
  'Data Table: 49566C
  loc_B5435C: FLdRfVar var_8A
  loc_B5435F: FLdPr Me
  loc_B54362: VCallAd Control_ID_cmdCancelar
  loc_B54365: FStAdFunc var_88
  loc_B54368: FLdPr var_88
  loc_B5436B:  = Me.Value
  loc_B54370: FLdI2 var_8A
  loc_B54373: NotI4
  loc_B54374: FLdPr Me
  loc_B54377: VCallAd Control_ID_CodiOrgaMsk
  loc_B5437A: FStAdFunc var_90
  loc_B5437D: FLdPr var_90
  loc_B54380: LateIdLdVar var_A0 DispID_13 -32767
  loc_B54387: CBoolVar
  loc_B54389: AndI4
  loc_B5438A: FFreeAd var_88 = ""
  loc_B54391: FFree1Var var_A0 = ""
  loc_B54394: BranchF loc_B54E43
  loc_B54397: FLdPr Me
  loc_B5439A: VCallAd Control_ID_CodiOrgaMsk
  loc_B5439D: FStAdFunc var_88
  loc_B543A0: FLdPr var_88
  loc_B543A3: LateIdLdVar var_A0 DispID_22 0
  loc_B543AA: CStrVarTmp
  loc_B543AB: FStStrNoPop var_A4
  loc_B543AE: ImpAdCallI2 Trim$()
  loc_B543B3: FStStrNoPop var_A8
  loc_B543B6: LitStr vbNullString
  loc_B543B9: NeStr
  loc_B543BB: FFreeStr var_A4 = ""
  loc_B543C2: FFree1Ad var_88
  loc_B543C5: FFree1Var var_A0 = ""
  loc_B543C8: BranchF loc_B54C28
  loc_B543CB: FLdPr Me
  loc_B543CE: VCallAd Control_ID_CodiOrgaMsk
  loc_B543D1: FStAdFunc var_88
  loc_B543D4: FLdRfVar var_88
  loc_B543D7: ImpAdCallI2 Proc_266_40_A1E128()
  loc_B543DC: FFree1Ad var_88
  loc_B543DF: BranchF loc_B54805
  loc_B543E2: FLdPr Me
  loc_B543E5: VCallAd Control_ID_CodiOrgaMsk
  loc_B543E8: FStAdFunc var_88
  loc_B543EB: FLdPr var_88
  loc_B543EE: LateIdLdVar var_A0 DispID_22 0
  loc_B543F5: PopAd
  loc_B543F7: LitStr " AND o.CodiOrga = '"
  loc_B543FA: LitI4 0
  loc_B543FF: LitI4 -1
  loc_B54404: LitI4 1
  loc_B54409: LitStr vbNullString
  loc_B5440C: LitStr "."
  loc_B5440F: FLdRfVar var_A0
  loc_B54412: CStrVarTmp
  loc_B54413: FStStrNoPop var_A4
  loc_B54416: ImpAdCallI2 Replace(, , , , , )
  loc_B5441B: FStStrNoPop var_A8
  loc_B5441E: ConcatStr
  loc_B5441F: FStStrNoPop var_AC
  loc_B54422: LitStr "'"
  loc_B54425: ConcatStr
  loc_B54426: FStStrNoPop var_B0
  loc_B54429: ImpAdLdI2 MemVar_C3D064
  loc_B5442C: ImpAdLdRf MemVar_C3D710
  loc_B5442F: NewIfNullPr bscOrganigrama
  loc_B54432: Call bscOrganigrama.Constructor(from_stack_1v, from_stack_2v)
  loc_B54437: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_B54442: FFree1Ad var_88
  loc_B54445: FFree1Var var_A0 = ""
  loc_B54448: FLdRfVar var_B4
  loc_B5444B: FLdRfVar var_90
  loc_B5444E: FLdRfVar var_88
  loc_B54451: ImpAdLdRf MemVar_C3D710
  loc_B54454: NewIfNullPr bscOrganigrama
  loc_B54457: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B5445C: FLdPr var_88
  loc_B5445F: from_stack_1v = clsbase.RsFrmGet()
  loc_B54464: FLdPr var_90
  loc_B54467:  = Me.RecordCount
  loc_B5446C: ILdRf var_B4
  loc_B5446F: LitI4 1
  loc_B54474: EqI4
  loc_B54475: FFreeAd var_88 = ""
  loc_B5447C: BranchF loc_B545A1
  loc_B5447F: FLdRfVar var_A0
  loc_B54482: FLdRfVar var_CC
  loc_B54485: LitVarStr var_C8, "CodiOrga"
  loc_B5448A: PopAdLdVar
  loc_B5448B: FLdRfVar var_B8
  loc_B5448E: FLdRfVar var_90
  loc_B54491: FLdRfVar var_88
  loc_B54494: ImpAdLdRf MemVar_C3D710
  loc_B54497: NewIfNullPr bscOrganigrama
  loc_B5449A: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B5449F: FLdPr var_88
  loc_B544A2: from_stack_1v = clsbase.RsFrmGet()
  loc_B544A7: FLdPr var_90
  loc_B544AA:  = Me.Fields
  loc_B544AF: FLdPr var_B8
  loc_B544B2: from_stack_2 = Me.Item(from_stack_1)
  loc_B544B7: FLdPr var_CC
  loc_B544BA:  = Me.Value
  loc_B544BF: FLdRfVar var_A4
  loc_B544C2: FLdPr Me
  loc_B544C5:  = Me.Name
  loc_B544CA: FLdPr Me
  loc_B544CD: MemLdRfVar from_stack_1.global_96
  loc_B544D0: NewIfNullRf
  loc_B544D4: ILdRf var_A4
  loc_B544D7: FLdRfVar var_A0
  loc_B544DA: CStrVarTmp
  loc_B544DB: FStStrNoPop var_A8
  loc_B544DE: ImpAdLdI2 MemVar_C3D064
  loc_B544E1: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B544E6: FStStrNoPop var_AC
  loc_B544E9: FLdPr Me
  loc_B544EC: MemStStrCopy
  loc_B544F0: FFreeStr var_A8 = "": var_A4 = ""
  loc_B544F9: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B54504: FFree1Var var_A0 = ""
  loc_B54507: FLdRfVar var_A4
  loc_B5450A: FLdPr Me
  loc_B5450D: MemLdRfVar from_stack_1.global_96
  loc_B54510: NewIfNullPr tblorganigrama
  loc_B54513: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B54518: FLdZeroAd var_A4
  loc_B5451B: CVarStr var_A0
  loc_B5451E: PopAdLdVar
  loc_B5451F: FLdPr Me
  loc_B54522: VCallAd Control_ID_CodiOrgaMsk
  loc_B54525: FStAdFunc var_88
  loc_B54528: FLdPr var_88
  loc_B5452B: LateIdSt
  loc_B54530: FFree1Ad var_88
  loc_B54533: FFree1Var var_A0 = ""
  loc_B54536: FLdRfVar var_A4
  loc_B54539: FLdPr Me
  loc_B5453C: MemLdRfVar from_stack_1.global_96
  loc_B5453F: NewIfNullPr tblorganigrama
  loc_B54542: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B54547: ILdRf var_A4
  loc_B5454A: FLdPr Me
  loc_B5454D: VCallAd Control_ID_DetaOrgaLbl
  loc_B54550: FStAdFunc var_88
  loc_B54553: FLdPr var_88
  loc_B54556: Me.Caption = from_stack_1
  loc_B5455B: FFree1Str var_A4
  loc_B5455E: FFree1Ad var_88
  loc_B54561: FLdPr Me
  loc_B54564: VCallAd Control_ID_CodiOrgaMsk
  loc_B54567: FStAdFunc var_CC
  loc_B5456A: FLdPr Me
  loc_B5456D: VCallAd Control_ID_DetaOrgaLbl
  loc_B54570: FStAdFunc var_B8
  loc_B54573: FLdRfVar var_B8
  loc_B54576: FLdZeroAd var_CC
  loc_B54579: FStAdFuncNoPop
  loc_B5457C: CastAd
  loc_B5457F: FStAdFunc var_90
  loc_B54582: FLdRfVar var_90
  loc_B54585: FLdPr Me
  loc_B54588: MemLdRfVar from_stack_1.global_68
  loc_B5458B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B54590: IStI2 Cancel
  loc_B54593: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B5459E: Branch loc_B54802
  loc_B545A1: FLdRfVar var_B4
  loc_B545A4: FLdRfVar var_90
  loc_B545A7: FLdRfVar var_88
  loc_B545AA: ImpAdLdRf MemVar_C3D710
  loc_B545AD: NewIfNullPr bscOrganigrama
  loc_B545B0: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B545B5: FLdPr var_88
  loc_B545B8: from_stack_1v = clsbase.RsFrmGet()
  loc_B545BD: FLdPr var_90
  loc_B545C0:  = Me.RecordCount
  loc_B545C5: ILdRf var_B4
  loc_B545C8: LitI4 1
  loc_B545CD: GtI4
  loc_B545CE: FFreeAd var_88 = ""
  loc_B545D5: BranchF loc_B54784
  loc_B545D8: LitVar_Missing var_DC
  loc_B545DB: PopAdLdVar
  loc_B545DC: LitVarI4
  loc_B545E4: PopAdLdVar
  loc_B545E5: ImpAdLdRf MemVar_C3D710
  loc_B545E8: NewIfNullPr bscOrganigrama
  loc_B545EB: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B545F0: FLdRfVar var_B4
  loc_B545F3: FLdRfVar var_88
  loc_B545F6: ImpAdLdRf MemVar_C3D710
  loc_B545F9: NewIfNullPr bscOrganigrama
  loc_B545FC: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B54601: FLdPr var_88
  loc_B54604: from_stack_1 = clsbase.RecordCount
  loc_B54609: ILdRf var_B4
  loc_B5460C: LitI4 0
  loc_B54611: GtI4
  loc_B54612: FFree1Ad var_88
  loc_B54615: BranchF loc_B5473A
  loc_B54618: FLdRfVar var_A0
  loc_B5461B: FLdRfVar var_CC
  loc_B5461E: LitVarStr var_C8, "CodiOrga"
  loc_B54623: PopAdLdVar
  loc_B54624: FLdRfVar var_B8
  loc_B54627: FLdRfVar var_90
  loc_B5462A: FLdRfVar var_88
  loc_B5462D: ImpAdLdRf MemVar_C3D710
  loc_B54630: NewIfNullPr bscOrganigrama
  loc_B54633: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B54638: FLdPr var_88
  loc_B5463B: from_stack_1v = clsbase.RsFrmGet()
  loc_B54640: FLdPr var_90
  loc_B54643:  = Me.Fields
  loc_B54648: FLdPr var_B8
  loc_B5464B: from_stack_2 = Me.Item(from_stack_1)
  loc_B54650: FLdPr var_CC
  loc_B54653:  = Me.Value
  loc_B54658: FLdRfVar var_A4
  loc_B5465B: FLdPr Me
  loc_B5465E:  = Me.Name
  loc_B54663: FLdPr Me
  loc_B54666: MemLdRfVar from_stack_1.global_96
  loc_B54669: NewIfNullRf
  loc_B5466D: ILdRf var_A4
  loc_B54670: FLdRfVar var_A0
  loc_B54673: CStrVarTmp
  loc_B54674: FStStrNoPop var_A8
  loc_B54677: ImpAdLdI2 MemVar_C3D064
  loc_B5467A: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B5467F: FStStrNoPop var_AC
  loc_B54682: FLdPr Me
  loc_B54685: MemStStrCopy
  loc_B54689: FFreeStr var_A8 = "": var_A4 = ""
  loc_B54692: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B5469D: FFree1Var var_A0 = ""
  loc_B546A0: FLdRfVar var_A4
  loc_B546A3: FLdPr Me
  loc_B546A6: MemLdRfVar from_stack_1.global_96
  loc_B546A9: NewIfNullPr tblorganigrama
  loc_B546AC: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B546B1: FLdZeroAd var_A4
  loc_B546B4: CVarStr var_A0
  loc_B546B7: PopAdLdVar
  loc_B546B8: FLdPr Me
  loc_B546BB: VCallAd Control_ID_CodiOrgaMsk
  loc_B546BE: FStAdFunc var_88
  loc_B546C1: FLdPr var_88
  loc_B546C4: LateIdSt
  loc_B546C9: FFree1Ad var_88
  loc_B546CC: FFree1Var var_A0 = ""
  loc_B546CF: FLdRfVar var_A4
  loc_B546D2: FLdPr Me
  loc_B546D5: MemLdRfVar from_stack_1.global_96
  loc_B546D8: NewIfNullPr tblorganigrama
  loc_B546DB: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B546E0: ILdRf var_A4
  loc_B546E3: FLdPr Me
  loc_B546E6: VCallAd Control_ID_DetaOrgaLbl
  loc_B546E9: FStAdFunc var_88
  loc_B546EC: FLdPr var_88
  loc_B546EF: Me.Caption = from_stack_1
  loc_B546F4: FFree1Str var_A4
  loc_B546F7: FFree1Ad var_88
  loc_B546FA: FLdPr Me
  loc_B546FD: VCallAd Control_ID_CodiOrgaMsk
  loc_B54700: FStAdFunc var_CC
  loc_B54703: FLdPr Me
  loc_B54706: VCallAd Control_ID_DetaOrgaLbl
  loc_B54709: FStAdFunc var_B8
  loc_B5470C: FLdRfVar var_B8
  loc_B5470F: FLdZeroAd var_CC
  loc_B54712: FStAdFuncNoPop
  loc_B54715: CastAd
  loc_B54718: FStAdFunc var_90
  loc_B5471B: FLdRfVar var_90
  loc_B5471E: FLdPr Me
  loc_B54721: MemLdRfVar from_stack_1.global_68
  loc_B54724: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B54729: IStI2 Cancel
  loc_B5472C: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B54737: Branch loc_B54781
  loc_B5473A: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_B5473D: FLdPr Me
  loc_B54740: MemStStrCopy
  loc_B54744: FLdPr Me
  loc_B54747: VCallAd Control_ID_CodiOrgaMsk
  loc_B5474A: FStAdFunc var_CC
  loc_B5474D: FLdPr Me
  loc_B54750: VCallAd Control_ID_DetaOrgaLbl
  loc_B54753: FStAdFunc var_B8
  loc_B54756: FLdRfVar var_B8
  loc_B54759: FLdZeroAd var_CC
  loc_B5475C: FStAdFuncNoPop
  loc_B5475F: CastAd
  loc_B54762: FStAdFunc var_90
  loc_B54765: FLdRfVar var_90
  loc_B54768: FLdPr Me
  loc_B5476B: MemLdRfVar from_stack_1.global_68
  loc_B5476E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B54773: IStI2 Cancel
  loc_B54776: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B54781: Branch loc_B54802
  loc_B54784: FLdRfVar var_B4
  loc_B54787: FLdRfVar var_90
  loc_B5478A: FLdRfVar var_88
  loc_B5478D: ImpAdLdRf MemVar_C3D710
  loc_B54790: NewIfNullPr bscOrganigrama
  loc_B54793: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B54798: FLdPr var_88
  loc_B5479B: from_stack_1v = clsbase.RsFrmGet()
  loc_B547A0: FLdPr var_90
  loc_B547A3:  = Me.RecordCount
  loc_B547A8: ILdRf var_B4
  loc_B547AB: LitI4 1
  loc_B547B0: LtI4
  loc_B547B1: FFreeAd var_88 = ""
  loc_B547B8: BranchF loc_B54802
  loc_B547BB: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_B547BE: FLdPr Me
  loc_B547C1: MemStStrCopy
  loc_B547C5: FLdPr Me
  loc_B547C8: VCallAd Control_ID_CodiOrgaMsk
  loc_B547CB: FStAdFunc var_CC
  loc_B547CE: FLdPr Me
  loc_B547D1: VCallAd Control_ID_DetaOrgaLbl
  loc_B547D4: FStAdFunc var_B8
  loc_B547D7: FLdRfVar var_B8
  loc_B547DA: FLdZeroAd var_CC
  loc_B547DD: FStAdFuncNoPop
  loc_B547E0: CastAd
  loc_B547E3: FStAdFunc var_90
  loc_B547E6: FLdRfVar var_90
  loc_B547E9: FLdPr Me
  loc_B547EC: MemLdRfVar from_stack_1.global_68
  loc_B547EF: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B547F4: IStI2 Cancel
  loc_B547F7: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B54802: Branch loc_B54C25
  loc_B54805: FLdPr Me
  loc_B54808: VCallAd Control_ID_CodiOrgaMsk
  loc_B5480B: FStAdFunc var_88
  loc_B5480E: FLdPr var_88
  loc_B54811: LateIdLdVar var_A0 DispID_22 0
  loc_B54818: PopAd
  loc_B5481A: LitStr " AND o.DetaOrga LIKE '" & Chr(37)
  loc_B5481D: LitI4 0
  loc_B54822: LitI4 -1
  loc_B54827: LitI4 1
  loc_B5482C: LitStr Chr(37)
  loc_B5482F: LitStr " "
  loc_B54832: FLdRfVar var_A0
  loc_B54835: CStrVarTmp
  loc_B54836: FStStrNoPop var_A4
  loc_B54839: ImpAdCallI2 Replace(, , , , , )
  loc_B5483E: FStStrNoPop var_A8
  loc_B54841: ConcatStr
  loc_B54842: FStStrNoPop var_AC
  loc_B54845: LitStr Chr(37) & "'"
  loc_B54848: ConcatStr
  loc_B54849: FStStrNoPop var_B0
  loc_B5484C: ImpAdLdI2 MemVar_C3D064
  loc_B5484F: ImpAdLdRf MemVar_C3D710
  loc_B54852: NewIfNullPr bscOrganigrama
  loc_B54855: Call bscOrganigrama.Constructor(from_stack_1v, from_stack_2v)
  loc_B5485A: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_B54865: FFree1Ad var_88
  loc_B54868: FFree1Var var_A0 = ""
  loc_B5486B: FLdRfVar var_B4
  loc_B5486E: FLdRfVar var_90
  loc_B54871: FLdRfVar var_88
  loc_B54874: ImpAdLdRf MemVar_C3D710
  loc_B54877: NewIfNullPr bscOrganigrama
  loc_B5487A: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B5487F: FLdPr var_88
  loc_B54882: from_stack_1v = clsbase.RsFrmGet()
  loc_B54887: FLdPr var_90
  loc_B5488A:  = Me.RecordCount
  loc_B5488F: ILdRf var_B4
  loc_B54892: LitI4 1
  loc_B54897: EqI4
  loc_B54898: FFreeAd var_88 = ""
  loc_B5489F: BranchF loc_B549C4
  loc_B548A2: FLdRfVar var_A0
  loc_B548A5: FLdRfVar var_CC
  loc_B548A8: LitVarStr var_C8, "CodiOrga"
  loc_B548AD: PopAdLdVar
  loc_B548AE: FLdRfVar var_B8
  loc_B548B1: FLdRfVar var_90
  loc_B548B4: FLdRfVar var_88
  loc_B548B7: ImpAdLdRf MemVar_C3D710
  loc_B548BA: NewIfNullPr bscOrganigrama
  loc_B548BD: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B548C2: FLdPr var_88
  loc_B548C5: from_stack_1v = clsbase.RsFrmGet()
  loc_B548CA: FLdPr var_90
  loc_B548CD:  = Me.Fields
  loc_B548D2: FLdPr var_B8
  loc_B548D5: from_stack_2 = Me.Item(from_stack_1)
  loc_B548DA: FLdPr var_CC
  loc_B548DD:  = Me.Value
  loc_B548E2: FLdRfVar var_A4
  loc_B548E5: FLdPr Me
  loc_B548E8:  = Me.Name
  loc_B548ED: FLdPr Me
  loc_B548F0: MemLdRfVar from_stack_1.global_96
  loc_B548F3: NewIfNullRf
  loc_B548F7: ILdRf var_A4
  loc_B548FA: FLdRfVar var_A0
  loc_B548FD: CStrVarTmp
  loc_B548FE: FStStrNoPop var_A8
  loc_B54901: ImpAdLdI2 MemVar_C3D064
  loc_B54904: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B54909: FStStrNoPop var_AC
  loc_B5490C: FLdPr Me
  loc_B5490F: MemStStrCopy
  loc_B54913: FFreeStr var_A8 = "": var_A4 = ""
  loc_B5491C: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B54927: FFree1Var var_A0 = ""
  loc_B5492A: FLdRfVar var_A4
  loc_B5492D: FLdPr Me
  loc_B54930: MemLdRfVar from_stack_1.global_96
  loc_B54933: NewIfNullPr tblorganigrama
  loc_B54936: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B5493B: FLdZeroAd var_A4
  loc_B5493E: CVarStr var_A0
  loc_B54941: PopAdLdVar
  loc_B54942: FLdPr Me
  loc_B54945: VCallAd Control_ID_CodiOrgaMsk
  loc_B54948: FStAdFunc var_88
  loc_B5494B: FLdPr var_88
  loc_B5494E: LateIdSt
  loc_B54953: FFree1Ad var_88
  loc_B54956: FFree1Var var_A0 = ""
  loc_B54959: FLdRfVar var_A4
  loc_B5495C: FLdPr Me
  loc_B5495F: MemLdRfVar from_stack_1.global_96
  loc_B54962: NewIfNullPr tblorganigrama
  loc_B54965: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B5496A: ILdRf var_A4
  loc_B5496D: FLdPr Me
  loc_B54970: VCallAd Control_ID_DetaOrgaLbl
  loc_B54973: FStAdFunc var_88
  loc_B54976: FLdPr var_88
  loc_B54979: Me.Caption = from_stack_1
  loc_B5497E: FFree1Str var_A4
  loc_B54981: FFree1Ad var_88
  loc_B54984: FLdPr Me
  loc_B54987: VCallAd Control_ID_CodiOrgaMsk
  loc_B5498A: FStAdFunc var_CC
  loc_B5498D: FLdPr Me
  loc_B54990: VCallAd Control_ID_DetaOrgaLbl
  loc_B54993: FStAdFunc var_B8
  loc_B54996: FLdRfVar var_B8
  loc_B54999: FLdZeroAd var_CC
  loc_B5499C: FStAdFuncNoPop
  loc_B5499F: CastAd
  loc_B549A2: FStAdFunc var_90
  loc_B549A5: FLdRfVar var_90
  loc_B549A8: FLdPr Me
  loc_B549AB: MemLdRfVar from_stack_1.global_68
  loc_B549AE: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B549B3: IStI2 Cancel
  loc_B549B6: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B549C1: Branch loc_B54C25
  loc_B549C4: FLdRfVar var_B4
  loc_B549C7: FLdRfVar var_90
  loc_B549CA: FLdRfVar var_88
  loc_B549CD: ImpAdLdRf MemVar_C3D710
  loc_B549D0: NewIfNullPr bscOrganigrama
  loc_B549D3: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B549D8: FLdPr var_88
  loc_B549DB: from_stack_1v = clsbase.RsFrmGet()
  loc_B549E0: FLdPr var_90
  loc_B549E3:  = Me.RecordCount
  loc_B549E8: ILdRf var_B4
  loc_B549EB: LitI4 1
  loc_B549F0: GtI4
  loc_B549F1: FFreeAd var_88 = ""
  loc_B549F8: BranchF loc_B54BA7
  loc_B549FB: LitVar_Missing var_DC
  loc_B549FE: PopAdLdVar
  loc_B549FF: LitVarI4
  loc_B54A07: PopAdLdVar
  loc_B54A08: ImpAdLdRf MemVar_C3D710
  loc_B54A0B: NewIfNullPr bscOrganigrama
  loc_B54A0E: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B54A13: FLdRfVar var_B4
  loc_B54A16: FLdRfVar var_88
  loc_B54A19: ImpAdLdRf MemVar_C3D710
  loc_B54A1C: NewIfNullPr bscOrganigrama
  loc_B54A1F: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B54A24: FLdPr var_88
  loc_B54A27: from_stack_1 = clsbase.RecordCount
  loc_B54A2C: ILdRf var_B4
  loc_B54A2F: LitI4 0
  loc_B54A34: GtI4
  loc_B54A35: FFree1Ad var_88
  loc_B54A38: BranchF loc_B54B5D
  loc_B54A3B: FLdRfVar var_A0
  loc_B54A3E: FLdRfVar var_CC
  loc_B54A41: LitVarStr var_C8, "CodiOrga"
  loc_B54A46: PopAdLdVar
  loc_B54A47: FLdRfVar var_B8
  loc_B54A4A: FLdRfVar var_90
  loc_B54A4D: FLdRfVar var_88
  loc_B54A50: ImpAdLdRf MemVar_C3D710
  loc_B54A53: NewIfNullPr bscOrganigrama
  loc_B54A56: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B54A5B: FLdPr var_88
  loc_B54A5E: from_stack_1v = clsbase.RsFrmGet()
  loc_B54A63: FLdPr var_90
  loc_B54A66:  = Me.Fields
  loc_B54A6B: FLdPr var_B8
  loc_B54A6E: from_stack_2 = Me.Item(from_stack_1)
  loc_B54A73: FLdPr var_CC
  loc_B54A76:  = Me.Value
  loc_B54A7B: FLdRfVar var_A4
  loc_B54A7E: FLdPr Me
  loc_B54A81:  = Me.Name
  loc_B54A86: FLdPr Me
  loc_B54A89: MemLdRfVar from_stack_1.global_96
  loc_B54A8C: NewIfNullRf
  loc_B54A90: ILdRf var_A4
  loc_B54A93: FLdRfVar var_A0
  loc_B54A96: CStrVarTmp
  loc_B54A97: FStStrNoPop var_A8
  loc_B54A9A: ImpAdLdI2 MemVar_C3D064
  loc_B54A9D: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B54AA2: FStStrNoPop var_AC
  loc_B54AA5: FLdPr Me
  loc_B54AA8: MemStStrCopy
  loc_B54AAC: FFreeStr var_A8 = "": var_A4 = ""
  loc_B54AB5: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B54AC0: FFree1Var var_A0 = ""
  loc_B54AC3: FLdRfVar var_A4
  loc_B54AC6: FLdPr Me
  loc_B54AC9: MemLdRfVar from_stack_1.global_96
  loc_B54ACC: NewIfNullPr tblorganigrama
  loc_B54ACF: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B54AD4: FLdZeroAd var_A4
  loc_B54AD7: CVarStr var_A0
  loc_B54ADA: PopAdLdVar
  loc_B54ADB: FLdPr Me
  loc_B54ADE: VCallAd Control_ID_CodiOrgaMsk
  loc_B54AE1: FStAdFunc var_88
  loc_B54AE4: FLdPr var_88
  loc_B54AE7: LateIdSt
  loc_B54AEC: FFree1Ad var_88
  loc_B54AEF: FFree1Var var_A0 = ""
  loc_B54AF2: FLdRfVar var_A4
  loc_B54AF5: FLdPr Me
  loc_B54AF8: MemLdRfVar from_stack_1.global_96
  loc_B54AFB: NewIfNullPr tblorganigrama
  loc_B54AFE: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B54B03: ILdRf var_A4
  loc_B54B06: FLdPr Me
  loc_B54B09: VCallAd Control_ID_DetaOrgaLbl
  loc_B54B0C: FStAdFunc var_88
  loc_B54B0F: FLdPr var_88
  loc_B54B12: Me.Caption = from_stack_1
  loc_B54B17: FFree1Str var_A4
  loc_B54B1A: FFree1Ad var_88
  loc_B54B1D: FLdPr Me
  loc_B54B20: VCallAd Control_ID_CodiOrgaMsk
  loc_B54B23: FStAdFunc var_CC
  loc_B54B26: FLdPr Me
  loc_B54B29: VCallAd Control_ID_DetaOrgaLbl
  loc_B54B2C: FStAdFunc var_B8
  loc_B54B2F: FLdRfVar var_B8
  loc_B54B32: FLdZeroAd var_CC
  loc_B54B35: FStAdFuncNoPop
  loc_B54B38: CastAd
  loc_B54B3B: FStAdFunc var_90
  loc_B54B3E: FLdRfVar var_90
  loc_B54B41: FLdPr Me
  loc_B54B44: MemLdRfVar from_stack_1.global_68
  loc_B54B47: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B54B4C: IStI2 Cancel
  loc_B54B4F: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B54B5A: Branch loc_B54BA4
  loc_B54B5D: LitStr "El Organigrama NO EXISTE. Verique..."
  loc_B54B60: FLdPr Me
  loc_B54B63: MemStStrCopy
  loc_B54B67: FLdPr Me
  loc_B54B6A: VCallAd Control_ID_CodiOrgaMsk
  loc_B54B6D: FStAdFunc var_CC
  loc_B54B70: FLdPr Me
  loc_B54B73: VCallAd Control_ID_DetaOrgaLbl
  loc_B54B76: FStAdFunc var_B8
  loc_B54B79: FLdRfVar var_B8
  loc_B54B7C: FLdZeroAd var_CC
  loc_B54B7F: FStAdFuncNoPop
  loc_B54B82: CastAd
  loc_B54B85: FStAdFunc var_90
  loc_B54B88: FLdRfVar var_90
  loc_B54B8B: FLdPr Me
  loc_B54B8E: MemLdRfVar from_stack_1.global_68
  loc_B54B91: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B54B96: IStI2 Cancel
  loc_B54B99: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B54BA4: Branch loc_B54C25
  loc_B54BA7: FLdRfVar var_B4
  loc_B54BAA: FLdRfVar var_90
  loc_B54BAD: FLdRfVar var_88
  loc_B54BB0: ImpAdLdRf MemVar_C3D710
  loc_B54BB3: NewIfNullPr bscOrganigrama
  loc_B54BB6: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B54BBB: FLdPr var_88
  loc_B54BBE: from_stack_1v = clsbase.RsFrmGet()
  loc_B54BC3: FLdPr var_90
  loc_B54BC6:  = Me.RecordCount
  loc_B54BCB: ILdRf var_B4
  loc_B54BCE: LitI4 1
  loc_B54BD3: LtI4
  loc_B54BD4: FFreeAd var_88 = ""
  loc_B54BDB: BranchF loc_B54C25
  loc_B54BDE: LitStr "El organigrama NO EXISTE. Verique..."
  loc_B54BE1: FLdPr Me
  loc_B54BE4: MemStStrCopy
  loc_B54BE8: FLdPr Me
  loc_B54BEB: VCallAd Control_ID_CodiOrgaMsk
  loc_B54BEE: FStAdFunc var_CC
  loc_B54BF1: FLdPr Me
  loc_B54BF4: VCallAd Control_ID_DetaOrgaLbl
  loc_B54BF7: FStAdFunc var_B8
  loc_B54BFA: FLdRfVar var_B8
  loc_B54BFD: FLdZeroAd var_CC
  loc_B54C00: FStAdFuncNoPop
  loc_B54C03: CastAd
  loc_B54C06: FStAdFunc var_90
  loc_B54C09: FLdRfVar var_90
  loc_B54C0C: FLdPr Me
  loc_B54C0F: MemLdRfVar from_stack_1.global_68
  loc_B54C12: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B54C17: IStI2 Cancel
  loc_B54C1A: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B54C25: Branch loc_B54DF4
  loc_B54C28: LitI2_Byte 0
  loc_B54C2A: ImpAdLdRf MemVar_C3D710
  loc_B54C2D: NewIfNullPr bscOrganigrama
  loc_B54C30: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_B54C35: LitNothing
  loc_B54C37: CastAd
  loc_B54C3A: FStAdFuncNoPop
  loc_B54C3D: ImpAdLdRf MemVar_C3D710
  loc_B54C40: NewIfNullPr bscOrganigrama
  loc_B54C43: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_B54C48: FFree1Ad var_88
  loc_B54C4B: LitVar_Missing var_DC
  loc_B54C4E: PopAdLdVar
  loc_B54C4F: LitVarI4
  loc_B54C57: PopAdLdVar
  loc_B54C58: ImpAdLdRf MemVar_C3D710
  loc_B54C5B: NewIfNullPr bscOrganigrama
  loc_B54C5E: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B54C63: FLdRfVar var_B4
  loc_B54C66: FLdRfVar var_88
  loc_B54C69: ImpAdLdRf MemVar_C3D710
  loc_B54C6C: NewIfNullPr bscOrganigrama
  loc_B54C6F: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B54C74: FLdPr var_88
  loc_B54C77: from_stack_1 = clsbase.RecordCount
  loc_B54C7C: ILdRf var_B4
  loc_B54C7F: LitI4 0
  loc_B54C84: GtI4
  loc_B54C85: FFree1Ad var_88
  loc_B54C88: BranchF loc_B54DAD
  loc_B54C8B: FLdRfVar var_A0
  loc_B54C8E: FLdRfVar var_CC
  loc_B54C91: LitVarStr var_C8, "CodiOrga"
  loc_B54C96: PopAdLdVar
  loc_B54C97: FLdRfVar var_B8
  loc_B54C9A: FLdRfVar var_90
  loc_B54C9D: FLdRfVar var_88
  loc_B54CA0: ImpAdLdRf MemVar_C3D710
  loc_B54CA3: NewIfNullPr bscOrganigrama
  loc_B54CA6: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B54CAB: FLdPr var_88
  loc_B54CAE: from_stack_1v = clsbase.RsFrmGet()
  loc_B54CB3: FLdPr var_90
  loc_B54CB6:  = Me.Fields
  loc_B54CBB: FLdPr var_B8
  loc_B54CBE: from_stack_2 = Me.Item(from_stack_1)
  loc_B54CC3: FLdPr var_CC
  loc_B54CC6:  = Me.Value
  loc_B54CCB: FLdRfVar var_A4
  loc_B54CCE: FLdPr Me
  loc_B54CD1:  = Me.Name
  loc_B54CD6: FLdPr Me
  loc_B54CD9: MemLdRfVar from_stack_1.global_96
  loc_B54CDC: NewIfNullRf
  loc_B54CE0: ILdRf var_A4
  loc_B54CE3: FLdRfVar var_A0
  loc_B54CE6: CStrVarTmp
  loc_B54CE7: FStStrNoPop var_A8
  loc_B54CEA: ImpAdLdI2 MemVar_C3D064
  loc_B54CED: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B54CF2: FStStrNoPop var_AC
  loc_B54CF5: FLdPr Me
  loc_B54CF8: MemStStrCopy
  loc_B54CFC: FFreeStr var_A8 = "": var_A4 = ""
  loc_B54D05: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B54D10: FFree1Var var_A0 = ""
  loc_B54D13: FLdRfVar var_A4
  loc_B54D16: FLdPr Me
  loc_B54D19: MemLdRfVar from_stack_1.global_96
  loc_B54D1C: NewIfNullPr tblorganigrama
  loc_B54D1F: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B54D24: FLdZeroAd var_A4
  loc_B54D27: CVarStr var_A0
  loc_B54D2A: PopAdLdVar
  loc_B54D2B: FLdPr Me
  loc_B54D2E: VCallAd Control_ID_CodiOrgaMsk
  loc_B54D31: FStAdFunc var_88
  loc_B54D34: FLdPr var_88
  loc_B54D37: LateIdSt
  loc_B54D3C: FFree1Ad var_88
  loc_B54D3F: FFree1Var var_A0 = ""
  loc_B54D42: FLdRfVar var_A4
  loc_B54D45: FLdPr Me
  loc_B54D48: MemLdRfVar from_stack_1.global_96
  loc_B54D4B: NewIfNullPr tblorganigrama
  loc_B54D4E: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B54D53: ILdRf var_A4
  loc_B54D56: FLdPr Me
  loc_B54D59: VCallAd Control_ID_DetaOrgaLbl
  loc_B54D5C: FStAdFunc var_88
  loc_B54D5F: FLdPr var_88
  loc_B54D62: Me.Caption = from_stack_1
  loc_B54D67: FFree1Str var_A4
  loc_B54D6A: FFree1Ad var_88
  loc_B54D6D: FLdPr Me
  loc_B54D70: VCallAd Control_ID_CodiOrgaMsk
  loc_B54D73: FStAdFunc var_CC
  loc_B54D76: FLdPr Me
  loc_B54D79: VCallAd Control_ID_DetaOrgaLbl
  loc_B54D7C: FStAdFunc var_B8
  loc_B54D7F: FLdRfVar var_B8
  loc_B54D82: FLdZeroAd var_CC
  loc_B54D85: FStAdFuncNoPop
  loc_B54D88: CastAd
  loc_B54D8B: FStAdFunc var_90
  loc_B54D8E: FLdRfVar var_90
  loc_B54D91: FLdPr Me
  loc_B54D94: MemLdRfVar from_stack_1.global_68
  loc_B54D97: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B54D9C: IStI2 Cancel
  loc_B54D9F: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B54DAA: Branch loc_B54DF4
  loc_B54DAD: LitStr "El organigrama NO EXISTE. Verifique..."
  loc_B54DB0: FLdPr Me
  loc_B54DB3: MemStStrCopy
  loc_B54DB7: FLdPr Me
  loc_B54DBA: VCallAd Control_ID_CodiOrgaMsk
  loc_B54DBD: FStAdFunc var_CC
  loc_B54DC0: FLdPr Me
  loc_B54DC3: VCallAd Control_ID_DetaOrgaLbl
  loc_B54DC6: FStAdFunc var_B8
  loc_B54DC9: FLdRfVar var_B8
  loc_B54DCC: FLdZeroAd var_CC
  loc_B54DCF: FStAdFuncNoPop
  loc_B54DD2: CastAd
  loc_B54DD5: FStAdFunc var_90
  loc_B54DD8: FLdRfVar var_90
  loc_B54DDB: FLdPr Me
  loc_B54DDE: MemLdRfVar from_stack_1.global_68
  loc_B54DE1: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B54DE6: IStI2 Cancel
  loc_B54DE9: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B54DF4: ILdI2 Cancel
  loc_B54DF7: NotI4
  loc_B54DF8: BranchF loc_B54E29
  loc_B54DFB: FLdRfVar var_A4
  loc_B54DFE: FLdPr Me
  loc_B54E01: MemLdRfVar from_stack_1.global_96
  loc_B54E04: NewIfNullPr tblorganigrama
  loc_B54E07: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B54E0C: ILdRf var_A4
  loc_B54E0F: FLdPr Me
  loc_B54E12: VCallAd Control_ID_DetaOrgaLbl
  loc_B54E15: FStAdFunc var_88
  loc_B54E18: FLdPr var_88
  loc_B54E1B: Me.Caption = from_stack_1
  loc_B54E20: FFree1Str var_A4
  loc_B54E23: FFree1Ad var_88
  loc_B54E26: Branch loc_B54E43
  loc_B54E29: LitVarStr var_C8, vbNullString
  loc_B54E2E: PopAdLdVar
  loc_B54E2F: FLdPr Me
  loc_B54E32: VCallAd Control_ID_CodiOrgaMsk
  loc_B54E35: FStAdFunc var_88
  loc_B54E38: FLdPr var_88
  loc_B54E3B: LateIdSt
  loc_B54E40: FFree1Ad var_88
  loc_B54E43: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_KeyPress(KeyAscii As Integer) '9AD65C
  'Data Table: 49566C
  loc_9AD5C0: FLdPr Me
  loc_9AD5C3: VCallAd Control_ID_CodiOrgaMsk
  loc_9AD5C6: FStAdFunc var_88
  loc_9AD5C9: FLdPr var_88
  loc_9AD5CC: LateIdLdVar var_98 DispID_22 0
  loc_9AD5D3: PopAd
  loc_9AD5D5: LitI4 0
  loc_9AD5DA: LitI4 -1
  loc_9AD5DF: LitI4 1
  loc_9AD5E4: LitStr vbNullString
  loc_9AD5E7: LitStr "."
  loc_9AD5EA: FLdRfVar var_98
  loc_9AD5ED: CStrVarTmp
  loc_9AD5EE: FStStrNoPop var_9C
  loc_9AD5F1: ImpAdCallI2 Replace(, , , , , )
  loc_9AD5F6: FStStrNoPop var_A0
  loc_9AD5F9: FnLenStr
  loc_9AD5FA: LitI4 5
  loc_9AD5FF: GtI4
  loc_9AD600: FFreeStr var_9C = ""
  loc_9AD607: FFree1Ad var_88
  loc_9AD60A: FFree1Var var_98 = ""
  loc_9AD60D: BranchF loc_9AD65B
  loc_9AD610: FLdPr Me
  loc_9AD613: VCallAd Control_ID_CodiOrgaMsk
  loc_9AD616: FStAdFunc var_88
  loc_9AD619: FLdRfVar var_88
  loc_9AD61C: ImpAdCallI2 Proc_266_40_A1E128()
  loc_9AD621: FFree1Ad var_88
  loc_9AD624: BranchF loc_9AD65B
  loc_9AD627: ILdI2 KeyAscii
  loc_9AD62A: CI4UI1
  loc_9AD62B: LitI4 8
  loc_9AD630: NeI4
  loc_9AD631: FLdPr Me
  loc_9AD634: VCallAd Control_ID_CodiOrgaMsk
  loc_9AD637: FStAdFunc var_88
  loc_9AD63A: FLdPr var_88
  loc_9AD63D: LateIdLdVar var_98 DispID_17 0
  loc_9AD644: CI4Var
  loc_9AD646: LitI4 0
  loc_9AD64B: EqI4
  loc_9AD64C: AndI4
  loc_9AD64D: FFree1Ad var_88
  loc_9AD650: FFree1Var var_98 = ""
  loc_9AD653: BranchF loc_9AD65B
  loc_9AD656: LitI2_Byte 0
  loc_9AD658: IStI2 KeyAscii
  loc_9AD65B: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_KeyUp(KeyCode As Integer, Shift As Integer) 'A06F5C
  'Data Table: 49566C
  loc_A06E08: ILdI2 Shift
  loc_A06E0B: CI4UI1
  loc_A06E0C: LitI4 2
  loc_A06E11: EqI4
  loc_A06E12: ILdI2 KeyCode
  loc_A06E15: CI4UI1
  loc_A06E16: LitI4 &H42
  loc_A06E1B: EqI4
  loc_A06E1C: AndI4
  loc_A06E1D: BranchF loc_A06F5B
  loc_A06E20: LitI2_Byte 0
  loc_A06E22: ImpAdLdRf MemVar_C3D710
  loc_A06E25: NewIfNullPr bscOrganigrama
  loc_A06E28: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_A06E2D: LitNothing
  loc_A06E2F: CastAd
  loc_A06E32: FStAdFuncNoPop
  loc_A06E35: ImpAdLdRf MemVar_C3D710
  loc_A06E38: NewIfNullPr bscOrganigrama
  loc_A06E3B: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_A06E40: FFree1Ad var_88
  loc_A06E43: LitVar_Missing var_A8
  loc_A06E46: PopAdLdVar
  loc_A06E47: LitVarI4
  loc_A06E4F: PopAdLdVar
  loc_A06E50: ImpAdLdRf MemVar_C3D710
  loc_A06E53: NewIfNullPr bscOrganigrama
  loc_A06E56: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_A06E5B: FLdRfVar var_AC
  loc_A06E5E: FLdRfVar var_88
  loc_A06E61: ImpAdLdRf MemVar_C3D710
  loc_A06E64: NewIfNullPr bscOrganigrama
  loc_A06E67: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A06E6C: FLdPr var_88
  loc_A06E6F: from_stack_1 = clsbase.RecordCount
  loc_A06E74: ILdRf var_AC
  loc_A06E77: LitI4 0
  loc_A06E7C: GtI4
  loc_A06E7D: FFree1Ad var_88
  loc_A06E80: BranchF loc_A06F5B
  loc_A06E83: FLdRfVar var_C8
  loc_A06E86: FLdRfVar var_B8
  loc_A06E89: LitVarStr var_98, "CodiOrga"
  loc_A06E8E: PopAdLdVar
  loc_A06E8F: FLdRfVar var_B4
  loc_A06E92: FLdRfVar var_B0
  loc_A06E95: FLdRfVar var_88
  loc_A06E98: ImpAdLdRf MemVar_C3D710
  loc_A06E9B: NewIfNullPr bscOrganigrama
  loc_A06E9E: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A06EA3: FLdPr var_88
  loc_A06EA6: from_stack_1v = clsbase.RsFrmGet()
  loc_A06EAB: FLdPr var_B0
  loc_A06EAE:  = Me.Fields
  loc_A06EB3: FLdPr var_B4
  loc_A06EB6: from_stack_2 = Me.Item(from_stack_1)
  loc_A06EBB: FLdPr var_B8
  loc_A06EBE:  = Me.Value
  loc_A06EC3: FLdRfVar var_C8
  loc_A06EC6: CStrVarTmp
  loc_A06EC7: CVarStr var_D8
  loc_A06ECA: PopAdLdVar
  loc_A06ECB: FLdPr Me
  loc_A06ECE: VCallAd Control_ID_CodiOrgaMsk
  loc_A06ED1: FStAdFunc var_DC
  loc_A06ED4: FLdPr var_DC
  loc_A06ED7: LateIdSt
  loc_A06EDC: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A06EE9: FFreeVar var_C8 = ""
  loc_A06EF0: FLdRfVar var_C8
  loc_A06EF3: FLdRfVar var_B8
  loc_A06EF6: LitVarStr var_98, "DetaOrga"
  loc_A06EFB: PopAdLdVar
  loc_A06EFC: FLdRfVar var_B4
  loc_A06EFF: FLdRfVar var_B0
  loc_A06F02: FLdRfVar var_88
  loc_A06F05: ImpAdLdRf MemVar_C3D710
  loc_A06F08: NewIfNullPr bscOrganigrama
  loc_A06F0B: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A06F10: FLdPr var_88
  loc_A06F13: from_stack_1v = clsbase.RsFrmGet()
  loc_A06F18: FLdPr var_B0
  loc_A06F1B:  = Me.Fields
  loc_A06F20: FLdPr var_B4
  loc_A06F23: from_stack_2 = Me.Item(from_stack_1)
  loc_A06F28: FLdPr var_B8
  loc_A06F2B:  = Me.Value
  loc_A06F30: FLdRfVar var_C8
  loc_A06F33: CStrVarTmp
  loc_A06F34: FStStrNoPop var_E0
  loc_A06F37: FLdPr Me
  loc_A06F3A: VCallAd Control_ID_DetaOrgaLbl
  loc_A06F3D: FStAdFunc var_DC
  loc_A06F40: FLdPr var_DC
  loc_A06F43: Me.Caption = from_stack_1
  loc_A06F48: FFree1Str var_E0
  loc_A06F4B: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A06F58: FFree1Var var_C8 = ""
  loc_A06F5B: ExitProcHresult
End Sub

Private Sub PartidaFlex_UnknownEvent_0 '964CC4
  'Data Table: 49566C
  loc_964CAC: FLdPr Me
  loc_964CAF: VCallAd Control_ID_PartidaFlex
  loc_964CB2: FStAdFunc var_88
  loc_964CB5: FLdRfVar var_88
  loc_964CB8: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_964CBD: FFree1Ad var_88
  loc_964CC0: ExitProcHresult
End Sub

Private Sub PartidaFlex_UnknownEvent_1 '9592EC
  'Data Table: 49566C
  loc_9592D4: FLdPr Me
  loc_9592D7: VCallAd Control_ID_PartidaFlex
  loc_9592DA: FStAdFunc var_88
  loc_9592DD: FLdRfVar var_88
  loc_9592E0: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_9592E5: FFree1Ad var_88
  loc_9592E8: ExitProcHresult
End Sub

Private Sub PartidaFlex_UnknownEvent_8 'AB8760
  'Data Table: 49566C
  loc_AB81D4: FLdRfVar var_8A
  loc_AB81D7: FLdPr Me
  loc_AB81DA: VCallAd Control_ID_cmdCancelar
  loc_AB81DD: FStAdFunc var_88
  loc_AB81E0: FLdPr var_88
  loc_AB81E3:  = Me.Value
  loc_AB81E8: FLdI2 var_8A
  loc_AB81EB: NotI4
  loc_AB81EC: FFree1Ad var_88
  loc_AB81EF: BranchF loc_AB875F
  loc_AB81F2: LitI2_Byte 1
  loc_AB81F4: FLdPr Me
  loc_AB81F7: MemLdRfVar from_stack_1.global_88
  loc_AB81FA: FLdPr Me
  loc_AB81FD: VCallAd Control_ID_PartidaFlex
  loc_AB8200: FStAdFunc var_88
  loc_AB8203: FLdPr var_88
  loc_AB8206: LateIdLdVar var_9C DispID_4 0
  loc_AB820D: CI4Var
  loc_AB820F: LitI4 1
  loc_AB8214: SubI4
  loc_AB8215: CI2I4
  loc_AB8216: FFree1Ad var_88
  loc_AB8219: FFree1Var var_9C = ""
  loc_AB821C: ForI2 var_A0
  loc_AB8222: FLdPr Me
  loc_AB8225: MemLdI2 global_88
  loc_AB8228: CI4UI1
  loc_AB8229: CVarI4
  loc_AB822D: PopAdLdVar
  loc_AB822E: LitVarI4
  loc_AB8236: PopAdLdVar
  loc_AB8237: FLdPr Me
  loc_AB823A: VCallAd Control_ID_PartidaFlex
  loc_AB823D: FStAdFunc var_88
  loc_AB8240: FLdPr var_88
  loc_AB8243: LateIdCallLdVar
  loc_AB824D: CStrVarTmp
  loc_AB824E: CVarStr var_F0
  loc_AB8251: ImpAdCallI2 IsNumeric()
  loc_AB8256: FFree1Ad var_88
  loc_AB8259: FFreeVar var_9C = ""
  loc_AB8260: BranchF loc_AB870D
  loc_AB8263: FLdPr Me
  loc_AB8266: MemLdI2 global_88
  loc_AB8269: CI4UI1
  loc_AB826A: CVarI4
  loc_AB826E: PopAdLdVar
  loc_AB826F: LitVarI4
  loc_AB8277: PopAdLdVar
  loc_AB8278: FLdPr Me
  loc_AB827B: VCallAd Control_ID_PartidaFlex
  loc_AB827E: FStAdFunc var_88
  loc_AB8281: FLdPr var_88
  loc_AB8284: LateIdCallLdVar
  loc_AB828E: CStrVarTmp
  loc_AB828F: FStStrNoPop var_F4
  loc_AB8292: CR8Str
  loc_AB8294: LitI2_Byte 0
  loc_AB8296: CR8I2
  loc_AB8297: GtR4
  loc_AB8298: FFree1Str var_F4
  loc_AB829B: FFree1Ad var_88
  loc_AB829E: FFree1Var var_9C = ""
  loc_AB82A1: BranchF loc_AB870A
  loc_AB82A4: LitI2_Byte 0
  loc_AB82A6: BranchF loc_AB83BA
  loc_AB82A9: FLdPr Me
  loc_AB82AC: MemLdI2 global_88
  loc_AB82AF: CI4UI1
  loc_AB82B0: CVarI4
  loc_AB82B4: PopAdLdVar
  loc_AB82B5: LitVarI4
  loc_AB82BD: PopAdLdVar
  loc_AB82BE: FLdPr Me
  loc_AB82C1: VCallAd Control_ID_PartidaFlex
  loc_AB82C4: FStAdFunc var_88
  loc_AB82C7: FLdPr var_88
  loc_AB82CA: LateIdCallLdVar
  loc_AB82D4: PopAd
  loc_AB82D6: FLdRfVar var_F8
  loc_AB82D9: FLdRfVar var_9C
  loc_AB82DC: CStrVarTmp
  loc_AB82DD: FStStrNoPop var_F4
  loc_AB82E0: LitI4 1
  loc_AB82E5: ImpAdLdI2 MemVar_C3D064
  loc_AB82E8: FLdPr Me
  loc_AB82EB: MemLdRfVar from_stack_1.global_60
  loc_AB82EE: NewIfNullPr clsinsupart
  loc_AB82F1: from_stack_4v = clsinsupart.ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AB82F6: ILdRf var_F8
  loc_AB82F9: FLdPr Me
  loc_AB82FC: MemStStrCopy
  loc_AB8300: FFreeStr var_F4 = ""
  loc_AB8307: FFree1Ad var_88
  loc_AB830A: FFree1Var var_9C = ""
  loc_AB830D: FLdPr Me
  loc_AB8310: MemLdStr global_68
  loc_AB8313: LitStr vbNullString
  loc_AB8316: EqStr
  loc_AB8318: BranchF loc_AB8388
  loc_AB831B: LitI4 0
  loc_AB8320: LitStr "Item "
  loc_AB8323: FLdPr Me
  loc_AB8326: MemLdI2 global_88
  loc_AB8329: CStrUI1
  loc_AB832B: FStStrNoPop var_F4
  loc_AB832E: ConcatStr
  loc_AB832F: FStStrNoPop var_F8
  loc_AB8332: LitStr ": "
  loc_AB8335: ConcatStr
  loc_AB8336: FStStrNoPop var_FC
  loc_AB8339: LitStr "La Partida NO CORRESPONDE al Insumo. Reintente..."
  loc_AB833C: ConcatStr
  loc_AB833D: FStStrNoPop var_100
  loc_AB8340: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AB8345: FFreeStr var_F4 = "": var_F8 = "": var_FC = ""
  loc_AB8350: FLdPr Me
  loc_AB8353: MemLdI2 global_88
  loc_AB8356: CI4UI1
  loc_AB8357: CVarI4
  loc_AB835B: PopAdLdVar
  loc_AB835C: LitVarI4
  loc_AB8364: PopAdLdVar
  loc_AB8365: LitVarStr var_110, "No"
  loc_AB836A: PopAdLdVar
  loc_AB836B: FLdPr Me
  loc_AB836E: VCallAd Control_ID_PartidaFlex
  loc_AB8371: FStAdFunc var_88
  loc_AB8374: FLdPr var_88
  loc_AB8377: LateIdCallSt
  loc_AB837F: FFree1Ad var_88
  loc_AB8382: Branch loc_AB8754
  loc_AB8385: Branch loc_AB83BA
  loc_AB8388: FLdPr Me
  loc_AB838B: MemLdI2 global_88
  loc_AB838E: CI4UI1
  loc_AB838F: CVarI4
  loc_AB8393: PopAdLdVar
  loc_AB8394: LitVarI4
  loc_AB839C: PopAdLdVar
  loc_AB839D: LitVarStr var_110, "Si"
  loc_AB83A2: PopAdLdVar
  loc_AB83A3: FLdPr Me
  loc_AB83A6: VCallAd Control_ID_PartidaFlex
  loc_AB83A9: FStAdFunc var_88
  loc_AB83AC: FLdPr var_88
  loc_AB83AF: LateIdCallSt
  loc_AB83B7: FFree1Ad var_88
  loc_AB83BA: FLdPr Me
  loc_AB83BD: MemLdI2 global_88
  loc_AB83C0: CI4UI1
  loc_AB83C1: CVarI4
  loc_AB83C5: PopAdLdVar
  loc_AB83C6: LitVarI4
  loc_AB83CE: PopAdLdVar
  loc_AB83CF: FLdPr Me
  loc_AB83D2: VCallAd Control_ID_PartidaFlex
  loc_AB83D5: FStAdFunc var_88
  loc_AB83D8: FLdPr var_88
  loc_AB83DB: LateIdCallLdVar
  loc_AB83E5: PopAd
  loc_AB83E7: FLdPr Me
  loc_AB83EA: MemLdRfVar from_stack_1.global_92
  loc_AB83ED: NewIfNullRf
  loc_AB83F1: FLdRfVar var_9C
  loc_AB83F4: CStrVarTmp
  loc_AB83F5: FStStrNoPop var_F4
  loc_AB83F8: ImpAdLdI2 MemVar_C3D064
  loc_AB83FB: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_AB8400: FFree1Str var_F4
  loc_AB8403: FFree1Ad var_88
  loc_AB8406: FFree1Var var_9C = ""
  loc_AB8409: FLdPr Me
  loc_AB840C: VCallAd Control_ID_CodiOrgaMsk
  loc_AB840F: FStAdFunc var_88
  loc_AB8412: FLdPr var_88
  loc_AB8415: LateIdLdVar var_9C DispID_22 0
  loc_AB841C: PopAd
  loc_AB841E: FLdPr Me
  loc_AB8421: MemLdRfVar from_stack_1.global_96
  loc_AB8424: NewIfNullRf
  loc_AB8428: FLdRfVar var_9C
  loc_AB842B: CStrVarTmp
  loc_AB842C: FStStrNoPop var_F4
  loc_AB842F: ImpAdLdI2 MemVar_C3D064
  loc_AB8432: ImpAdCallFPR4 Proc_259_20_B23018(, , )
  loc_AB8437: FFree1Str var_F4
  loc_AB843A: FFree1Ad var_88
  loc_AB843D: FFree1Var var_9C = ""
  loc_AB8440: FLdPr Me
  loc_AB8443: VCallAd Control_ID_CodiFifuMsk
  loc_AB8446: FStAdFunc var_88
  loc_AB8449: FLdPr var_88
  loc_AB844C: LateIdLdVar var_9C DispID_22 0
  loc_AB8453: PopAd
  loc_AB8455: FLdPr Me
  loc_AB8458: MemLdRfVar from_stack_1.global_100
  loc_AB845B: NewIfNullRf
  loc_AB845F: FLdRfVar var_9C
  loc_AB8462: CStrVarTmp
  loc_AB8463: FStStrNoPop var_F4
  loc_AB8466: ImpAdLdI2 MemVar_C3D064
  loc_AB8469: ImpAdCallFPR4 Proc_259_12_AE1238(, , )
  loc_AB846E: FFree1Str var_F4
  loc_AB8471: FFree1Ad var_88
  loc_AB8474: FFree1Var var_9C = ""
  loc_AB8477: FLdPr Me
  loc_AB847A: MemLdI2 global_88
  loc_AB847D: CI4UI1
  loc_AB847E: CVarI4
  loc_AB8482: PopAdLdVar
  loc_AB8483: LitVarI4
  loc_AB848B: PopAdLdVar
  loc_AB848C: FLdPr Me
  loc_AB848F: VCallAd Control_ID_PartidaFlex
  loc_AB8492: FStAdFunc var_88
  loc_AB8495: FLdPr var_88
  loc_AB8498: LateIdCallLdVar
  loc_AB84A2: PopAd
  loc_AB84A4: FLdPr Me
  loc_AB84A7: VCallAd Control_ID_FechImpuMsk
  loc_AB84AA: FStAdFunc var_124
  loc_AB84AD: FLdPr var_124
  loc_AB84B0: LateIdLdVar var_F0 DispID_15 0
  loc_AB84B7: PopAd
  loc_AB84B9: FLdRfVar var_FC
  loc_AB84BC: LitI2_Byte 0
  loc_AB84BE: PopTmpLdAd2 var_8A
  loc_AB84C1: LitStr "0"
  loc_AB84C4: FLdRfVar var_F0
  loc_AB84C7: CStrVarTmp
  loc_AB84C8: FStStrNoPop var_F8
  loc_AB84CB: FLdPr Me
  loc_AB84CE: MemLdRfVar from_stack_1.global_108
  loc_AB84D1: NewIfNullRf
  loc_AB84D5: FLdPr Me
  loc_AB84D8: MemLdRfVar from_stack_1.global_100
  loc_AB84DB: NewIfNullRf
  loc_AB84DF: FLdPr Me
  loc_AB84E2: MemLdRfVar from_stack_1.global_96
  loc_AB84E5: NewIfNullRf
  loc_AB84E9: FLdPr Me
  loc_AB84EC: MemLdRfVar from_stack_1.global_92
  loc_AB84EF: NewIfNullRf
  loc_AB84F3: FLdRfVar var_9C
  loc_AB84F6: CStrVarTmp
  loc_AB84F7: FStStrNoPop var_F4
  loc_AB84FA: FLdPr Me
  loc_AB84FD: MemLdRfVar from_stack_1.global_52
  loc_AB8500: NewIfNullPr clsimputacion
  loc_AB8503: from_stack_9v = clsimputacion.ValidaPrevImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_AB8508: ILdRf var_FC
  loc_AB850B: FLdPr Me
  loc_AB850E: MemStStrCopy
  loc_AB8512: FFreeStr var_F4 = "": var_F8 = ""
  loc_AB851B: FFreeAd var_88 = ""
  loc_AB8522: FFreeVar var_9C = ""
  loc_AB8529: FLdPr Me
  loc_AB852C: MemLdStr global_68
  loc_AB852F: LitStr vbNullString
  loc_AB8532: NeStr
  loc_AB8534: BranchF loc_AB8636
  loc_AB8537: LitStr "Item "
  loc_AB853A: FLdPr Me
  loc_AB853D: MemLdI2 global_88
  loc_AB8540: CStrUI1
  loc_AB8542: FStStrNoPop var_F4
  loc_AB8545: ConcatStr
  loc_AB8546: FStStrNoPop var_F8
  loc_AB8549: LitStr " - Partida: "
  loc_AB854C: ConcatStr
  loc_AB854D: FStStrNoPop var_FC
  loc_AB8550: FLdPr Me
  loc_AB8553: MemLdI2 global_88
  loc_AB8556: CI4UI1
  loc_AB8557: CVarI4
  loc_AB855B: PopAdLdVar
  loc_AB855C: LitVarI4
  loc_AB8564: PopAdLdVar
  loc_AB8565: FLdPr Me
  loc_AB8568: VCallAd Control_ID_PartidaFlex
  loc_AB856B: FStAdFunc var_88
  loc_AB856E: FLdPr var_88
  loc_AB8571: LateIdCallLdVar
  loc_AB857B: CStrVarTmp
  loc_AB857C: FStStrNoPop var_100
  loc_AB857F: ConcatStr
  loc_AB8580: FStStrNoPop var_128
  loc_AB8583: FLdPr Me
  loc_AB8586: MemLdStr global_68
  loc_AB8589: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AB858E: FFreeStr var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_AB859B: FFree1Ad var_88
  loc_AB859E: FFree1Var var_9C = ""
  loc_AB85A1: LitI4 &HB
  loc_AB85A6: FLdPr Me
  loc_AB85A9: MemLdStr global_68
  loc_AB85AC: ImpAdCallI2 Left$(, )
  loc_AB85B1: FStStrNoPop var_F4
  loc_AB85B4: LitStr "Advertencia"
  loc_AB85B7: EqStr
  loc_AB85B9: FFree1Str var_F4
  loc_AB85BC: BranchF loc_AB85FE
  loc_AB85BF: FLdPr Me
  loc_AB85C2: MemLdI2 global_88
  loc_AB85C5: CI4UI1
  loc_AB85C6: CVarI4
  loc_AB85CA: PopAdLdVar
  loc_AB85CB: LitVarI4
  loc_AB85D3: PopAdLdVar
  loc_AB85D4: LitVarStr var_110, "Si"
  loc_AB85D9: PopAdLdVar
  loc_AB85DA: FLdPr Me
  loc_AB85DD: VCallAd Control_ID_PartidaFlex
  loc_AB85E0: FStAdFunc var_88
  loc_AB85E3: FLdPr var_88
  loc_AB85E6: LateIdCallSt
  loc_AB85EE: FFree1Ad var_88
  loc_AB85F1: LitStr vbNullString
  loc_AB85F4: FLdPr Me
  loc_AB85F7: MemStStrCopy
  loc_AB85FB: Branch loc_AB8630
  loc_AB85FE: FLdPr Me
  loc_AB8601: MemLdI2 global_88
  loc_AB8604: CI4UI1
  loc_AB8605: CVarI4
  loc_AB8609: PopAdLdVar
  loc_AB860A: LitVarI4
  loc_AB8612: PopAdLdVar
  loc_AB8613: LitVarStr var_110, "No"
  loc_AB8618: PopAdLdVar
  loc_AB8619: FLdPr Me
  loc_AB861C: VCallAd Control_ID_PartidaFlex
  loc_AB861F: FStAdFunc var_88
  loc_AB8622: FLdPr var_88
  loc_AB8625: LateIdCallSt
  loc_AB862D: FFree1Ad var_88
  loc_AB8630: Branch loc_AB8754
  loc_AB8633: Branch loc_AB8668
  loc_AB8636: FLdPr Me
  loc_AB8639: MemLdI2 global_88
  loc_AB863C: CI4UI1
  loc_AB863D: CVarI4
  loc_AB8641: PopAdLdVar
  loc_AB8642: LitVarI4
  loc_AB864A: PopAdLdVar
  loc_AB864B: LitVarStr var_110, "Si"
  loc_AB8650: PopAdLdVar
  loc_AB8651: FLdPr Me
  loc_AB8654: VCallAd Control_ID_PartidaFlex
  loc_AB8657: FStAdFunc var_88
  loc_AB865A: FLdPr var_88
  loc_AB865D: LateIdCallSt
  loc_AB8665: FFree1Ad var_88
  loc_AB8668: FLdPr Me
  loc_AB866B: VCallAd Control_ID_FechImpuMsk
  loc_AB866E: FStAdFunc var_88
  loc_AB8671: FLdPr var_88
  loc_AB8674: LateIdLdVar var_9C DispID_15 0
  loc_AB867B: PopAd
  loc_AB867D: FLdPr Me
  loc_AB8680: VCallAd Control_ID_ExorImpuMsk
  loc_AB8683: FStAdFunc var_124
  loc_AB8686: FLdPr var_124
  loc_AB8689: LateIdLdVar var_F0 DispID_22 0
  loc_AB8690: PopAd
  loc_AB8692: FLdRfVar var_F8
  loc_AB8695: LitStr vbNullString
  loc_AB8698: LitStr vbNullString
  loc_AB869B: LitI2_Byte 0
  loc_AB869D: LitI2_Byte 0
  loc_AB869F: LitI2_Byte 0
  loc_AB86A1: LitI2_Byte 0
  loc_AB86A3: LitI4 0
  loc_AB86A8: FLdRfVar var_F0
  loc_AB86AB: CStrVarTmp
  loc_AB86AC: FStStrNoPop var_F4
  loc_AB86AF: LitI2_Byte 1
  loc_AB86B1: ImpAdLdI2 MemVar_C3D064
  loc_AB86B4: FLdPr Me
  loc_AB86B7: MemLdRfVar from_stack_1.global_52
  loc_AB86BA: NewIfNullPr clsimputacion
  loc_AB86BD: from_stack_11v = clsimputacion.UltimaFechImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_AB86C2: LitI2_Byte &HFF
  loc_AB86C4: PopTmpLdAd2 var_8A
  loc_AB86C7: LitNothing
  loc_AB86C9: CastAd
  loc_AB86CC: FStAdFunc var_12C
  loc_AB86CF: FLdRfVar var_12C
  loc_AB86D2: ILdRf var_F8
  loc_AB86D5: LitI2_Byte &HFF
  loc_AB86D7: LitI2_Byte &HFF
  loc_AB86D9: FLdRfVar var_9C
  loc_AB86DC: CStrVarTmp
  loc_AB86DD: FStStrNoPop var_FC
  loc_AB86E0: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_AB86E5: FStStrNoPop var_100
  loc_AB86E8: FLdPr Me
  loc_AB86EB: MemStStrCopy
  loc_AB86EF: FFreeStr var_F4 = "": var_FC = "": var_F8 = ""
  loc_AB86FA: FFreeAd var_88 = "": var_124 = ""
  loc_AB8703: FFreeVar var_9C = ""
  loc_AB870A: Branch loc_AB8754
  loc_AB870D: FLdPr Me
  loc_AB8710: VCallAd Control_ID_PartidaFlex
  loc_AB8713: FStAdFunc var_88
  loc_AB8716: FLdPr var_88
  loc_AB8719: LateIdLdVar var_9C DispID_10 0
  loc_AB8720: CI4Var
  loc_AB8722: CVarI4
  loc_AB8726: PopAdLdVar
  loc_AB8727: LitVarI4
  loc_AB872F: PopAdLdVar
  loc_AB8730: LitVarStr var_110, "0"
  loc_AB8735: PopAdLdVar
  loc_AB8736: FLdPr Me
  loc_AB8739: VCallAd Control_ID_PartidaFlex
  loc_AB873C: FStAdFunc var_124
  loc_AB873F: FLdPr var_124
  loc_AB8742: LateIdCallSt
  loc_AB874A: FFreeAd var_88 = ""
  loc_AB8751: FFree1Var var_9C = ""
  loc_AB8754: FLdPr Me
  loc_AB8757: MemLdRfVar from_stack_1.global_88
  loc_AB875A: NextI2 var_A0, loc_AB8222
  loc_AB875F: ExitProcHresult
End Sub

Private Sub PartidaFlex_Click() '940B00
  'Data Table: 49566C
  loc_940AF8: Call Proc_118_32_9F109C()
  loc_940AFD: ExitProcHresult
End Sub

Private Sub PartidaFlex_KeyPress(KeyAscii As Integer) 'A2EEB8
  'Data Table: 49566C
  loc_A2ECEC: ILdI2 KeyAscii
  loc_A2ECEF: CI4UI1
  loc_A2ECF0: LitI4 8
  loc_A2ECF5: EqI4
  loc_A2ECF6: BranchF loc_A2EDE3
  loc_A2ECF9: FLdPr Me
  loc_A2ECFC: VCallAd Control_ID_PartidaFlex
  loc_A2ECFF: FStAdFunc var_88
  loc_A2ED02: FLdPr var_88
  loc_A2ED05: LateIdLdVar var_98 DispID_11 0
  loc_A2ED0C: CI4Var
  loc_A2ED0E: LitI4 2
  loc_A2ED13: EqI4
  loc_A2ED14: FFree1Ad var_88
  loc_A2ED17: FFree1Var var_98 = ""
  loc_A2ED1A: BranchF loc_A2EDE0
  loc_A2ED1D: FLdPr Me
  loc_A2ED20: VCallAd Control_ID_PartidaFlex
  loc_A2ED23: FStAdFunc var_88
  loc_A2ED26: FLdPr var_88
  loc_A2ED29: LateIdLdVar var_98 DispID_0 0
  loc_A2ED30: PopAd
  loc_A2ED32: FLdPr Me
  loc_A2ED35: VCallAd Control_ID_PartidaFlex
  loc_A2ED38: FStAdFunc var_9C
  loc_A2ED3B: FLdPr var_9C
  loc_A2ED3E: LateIdLdVar var_AC DispID_0 0
  loc_A2ED45: PopAd
  loc_A2ED47: FLdPr Me
  loc_A2ED4A: VCallAd Control_ID_PartidaFlex
  loc_A2ED4D: FStAdFunc var_B4
  loc_A2ED50: FLdPr var_B4
  loc_A2ED53: LateIdLdVar var_C4 DispID_0 0
  loc_A2ED5A: PopAd
  loc_A2ED5C: LitVarI2 var_118, 0
  loc_A2ED61: FLdRfVar var_C4
  loc_A2ED64: CStrVarTmp
  loc_A2ED65: FStStrNoPop var_C8
  loc_A2ED68: FnLenStr
  loc_A2ED69: LitI4 1
  loc_A2ED6E: SubI4
  loc_A2ED6F: CVarI4
  loc_A2ED73: FLdRfVar var_AC
  loc_A2ED76: CStrVarTmp
  loc_A2ED77: FStStrNoPop var_B0
  loc_A2ED7A: FnLenStr
  loc_A2ED7B: LitI4 1
  loc_A2ED80: SubI4
  loc_A2ED81: LitI4 0
  loc_A2ED86: GtI4
  loc_A2ED87: CVarBoolI2 var_D8
  loc_A2ED8B: FLdRfVar var_128
  loc_A2ED8E: ImpAdCallFPR4  = IIf(, , )
  loc_A2ED93: FLdRfVar var_128
  loc_A2ED96: CI4Var
  loc_A2ED98: FLdRfVar var_98
  loc_A2ED9B: CStrVarTmp
  loc_A2ED9C: FStStrNoPop var_12C
  loc_A2ED9F: ImpAdCallI2 Left$(, )
  loc_A2EDA4: CVarStr var_13C
  loc_A2EDA7: PopAdLdVar
  loc_A2EDA8: FLdPr Me
  loc_A2EDAB: VCallAd Control_ID_PartidaFlex
  loc_A2EDAE: FStAdFunc var_150
  loc_A2EDB1: FLdPr var_150
  loc_A2EDB4: LateIdSt
  loc_A2EDB9: FFreeStr var_B0 = "": var_C8 = ""
  loc_A2EDC2: FFreeAd var_88 = "": var_9C = "": var_B4 = ""
  loc_A2EDCD: FFreeVar var_98 = "": var_AC = "": var_C4 = "": var_D8 = "": var_F8 = "": var_118 = "": var_128 = ""
  loc_A2EDE0: Branch loc_A2EEB6
  loc_A2EDE3: LitStr "1234567890.,"
  loc_A2EDE6: FStStrCopy var_B0
  loc_A2EDE9: FLdRfVar var_B0
  loc_A2EDEC: ILdRf KeyAscii
  loc_A2EDEF: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_A2EDF4: IStI2 KeyAscii
  loc_A2EDF7: FFree1Str var_B0
  loc_A2EDFA: ILdI2 KeyAscii
  loc_A2EDFD: LitStr "."
  loc_A2EE00: ImpAdCallI2 Asc()
  loc_A2EE05: EqI2
  loc_A2EE06: BranchF loc_A2EE14
  loc_A2EE09: LitStr ","
  loc_A2EE0C: ImpAdCallI2 Asc()
  loc_A2EE11: IStI2 KeyAscii
  loc_A2EE14: FLdPr Me
  loc_A2EE17: VCallAd Control_ID_PartidaFlex
  loc_A2EE1A: FStAdFunc var_88
  loc_A2EE1D: FLdPr var_88
  loc_A2EE20: LateIdLdVar var_98 DispID_11 0
  loc_A2EE27: CI4Var
  loc_A2EE29: LitI4 2
  loc_A2EE2E: EqI4
  loc_A2EE2F: FFree1Ad var_88
  loc_A2EE32: FFree1Var var_98 = ""
  loc_A2EE35: BranchF loc_A2EEB6
  loc_A2EE38: FLdPr Me
  loc_A2EE3B: VCallAd Control_ID_PartidaFlex
  loc_A2EE3E: FStAdFunc var_88
  loc_A2EE41: FLdPr var_88
  loc_A2EE44: LateIdLdVar var_98 DispID_0 0
  loc_A2EE4B: CStrVarTmp
  loc_A2EE4C: FStStrNoPop var_B0
  loc_A2EE4F: FnLenStr
  loc_A2EE50: LitI4 &HC
  loc_A2EE55: LeI4
  loc_A2EE56: FFree1Str var_B0
  loc_A2EE59: FFree1Ad var_88
  loc_A2EE5C: FFree1Var var_98 = ""
  loc_A2EE5F: BranchF loc_A2EEB6
  loc_A2EE62: FLdPr Me
  loc_A2EE65: VCallAd Control_ID_PartidaFlex
  loc_A2EE68: FStAdFunc var_88
  loc_A2EE6B: FLdPr var_88
  loc_A2EE6E: LateIdLdVar var_98 DispID_0 0
  loc_A2EE75: CStrVarTmp
  loc_A2EE76: CVarStr var_C4
  loc_A2EE79: ILdI2 KeyAscii
  loc_A2EE7C: CI4UI1
  loc_A2EE7D: FLdRfVar var_AC
  loc_A2EE80: ImpAdCallFPR4  = Chr()
  loc_A2EE85: FLdRfVar var_AC
  loc_A2EE88: AddVar var_F8
  loc_A2EE8C: CStrVarTmp
  loc_A2EE8D: CVarStr var_118
  loc_A2EE90: PopAdLdVar
  loc_A2EE91: FLdPr Me
  loc_A2EE94: VCallAd Control_ID_PartidaFlex
  loc_A2EE97: FStAdFunc var_9C
  loc_A2EE9A: FLdPr var_9C
  loc_A2EE9D: LateIdSt
  loc_A2EEA2: FFreeAd var_88 = ""
  loc_A2EEA9: FFreeVar var_98 = "": var_C4 = "": var_AC = "": var_F8 = ""
  loc_A2EEB6: ExitProcHresult
End Sub

Private Sub PartidaFlex_EnterCell() '9C301C
  'Data Table: 49566C
  loc_9C2F60: FLdPr Me
  loc_9C2F63: VCallAd Control_ID_PartidaFlex
  loc_9C2F66: FStAdFunc var_88
  loc_9C2F69: FLdPr var_88
  loc_9C2F6C: LateIdLdVar var_98 DispID_11 0
  loc_9C2F73: CI4Var
  loc_9C2F75: LitI4 2
  loc_9C2F7A: EqI4
  loc_9C2F7B: FFree1Ad var_88
  loc_9C2F7E: FFree1Var var_98 = ""
  loc_9C2F81: BranchF loc_9C3019
  loc_9C2F84: FLdPr Me
  loc_9C2F87: VCallAd Control_ID_PartidaFlex
  loc_9C2F8A: FStAdFunc var_88
  loc_9C2F8D: FLdPr var_88
  loc_9C2F90: LateIdLdVar var_98 DispID_0 0
  loc_9C2F97: CStrVarTmp
  loc_9C2F98: FStStrNoPop var_9C
  loc_9C2F9B: LitStr "0"
  loc_9C2F9E: EqStr
  loc_9C2FA0: FFree1Str var_9C
  loc_9C2FA3: FFree1Ad var_88
  loc_9C2FA6: FFree1Var var_98 = ""
  loc_9C2FA9: BranchF loc_9C3019
  loc_9C2FAC: FLdPr Me
  loc_9C2FAF: VCallAd Control_ID_PartidaFlex
  loc_9C2FB2: FStAdFunc var_88
  loc_9C2FB5: FLdPr var_88
  loc_9C2FB8: LateIdLdVar var_98 DispID_0 0
  loc_9C2FBF: PopAd
  loc_9C2FC1: FLdPr Me
  loc_9C2FC4: VCallAd Control_ID_PartidaFlex
  loc_9C2FC7: FStAdFunc var_A0
  loc_9C2FCA: FLdPr var_A0
  loc_9C2FCD: LateIdLdVar var_B0 DispID_0 0
  loc_9C2FD4: CStrVarTmp
  loc_9C2FD5: FStStrNoPop var_9C
  loc_9C2FD8: FnLenStr
  loc_9C2FD9: LitI4 1
  loc_9C2FDE: SubI4
  loc_9C2FDF: FLdRfVar var_98
  loc_9C2FE2: CStrVarTmp
  loc_9C2FE3: FStStrNoPop var_B4
  loc_9C2FE6: ImpAdCallI2 Left$(, )
  loc_9C2FEB: CVarStr var_C4
  loc_9C2FEE: PopAdLdVar
  loc_9C2FEF: FLdPr Me
  loc_9C2FF2: VCallAd Control_ID_PartidaFlex
  loc_9C2FF5: FStAdFunc var_D8
  loc_9C2FF8: FLdPr var_D8
  loc_9C2FFB: LateIdSt
  loc_9C3000: FFreeStr var_9C = ""
  loc_9C3007: FFreeAd var_88 = "": var_A0 = ""
  loc_9C3010: FFreeVar var_98 = "": var_B0 = ""
  loc_9C3019: ExitProcHresult
  loc_9C301A: LtR8
End Sub

Private Sub PartidaFlex_LeaveCell() 'A39560
  'Data Table: 49566C
  loc_A39340: FLdRfVar var_8A
  loc_A39343: FLdPr Me
  loc_A39346: VCallAd Control_ID_cmdCancelar
  loc_A39349: FStAdFunc var_88
  loc_A3934C: FLdPr var_88
  loc_A3934F:  = Me.Value
  loc_A39354: FLdI2 var_8A
  loc_A39357: NotI4
  loc_A39358: FFree1Ad var_88
  loc_A3935B: BranchF loc_A3955F
  loc_A3935E: FLdPr Me
  loc_A39361: VCallAd Control_ID_PartidaFlex
  loc_A39364: FStAdFunc var_88
  loc_A39367: FLdPr var_88
  loc_A3936A: LateIdLdVar var_9C DispID_10 0
  loc_A39371: CI4Var
  loc_A39373: CVarI4
  loc_A39377: PopAdLdVar
  loc_A39378: LitVarI4
  loc_A39380: PopAdLdVar
  loc_A39381: FLdPr Me
  loc_A39384: VCallAd Control_ID_PartidaFlex
  loc_A39387: FStAdFunc var_E0
  loc_A3938A: FLdPr var_E0
  loc_A3938D: LateIdCallLdVar
  loc_A39397: PopAd
  loc_A39399: LitStr "0"
  loc_A3939C: LitI2_Byte &HFF
  loc_A3939E: LitI2_Byte &HFF
  loc_A393A0: LitI2_Byte 0
  loc_A393A2: FLdRfVar var_F0
  loc_A393A5: CStrVarTmp
  loc_A393A6: FStStrNoPop var_F4
  loc_A393A9: LitStr "Importe"
  loc_A393AC: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_A393B1: FStStrNoPop var_F8
  loc_A393B4: FLdPr Me
  loc_A393B7: MemStStrCopy
  loc_A393BB: FFreeStr var_F4 = ""
  loc_A393C2: FFreeAd var_88 = ""
  loc_A393C9: FFreeVar var_9C = ""
  loc_A393D0: FLdPr Me
  loc_A393D3: MemLdStr global_68
  loc_A393D6: LitStr vbNullString
  loc_A393D9: NeStr
  loc_A393DB: BranchF loc_A39425
  loc_A393DE: FLdPr Me
  loc_A393E1: VCallAd Control_ID_PartidaFlex
  loc_A393E4: FStAdFunc var_88
  loc_A393E7: FLdPr var_88
  loc_A393EA: LateIdLdVar var_9C DispID_10 0
  loc_A393F1: CI4Var
  loc_A393F3: CVarI4
  loc_A393F7: PopAdLdVar
  loc_A393F8: LitVarI4
  loc_A39400: PopAdLdVar
  loc_A39401: LitVarStr var_108, "0"
  loc_A39406: PopAdLdVar
  loc_A39407: FLdPr Me
  loc_A3940A: VCallAd Control_ID_PartidaFlex
  loc_A3940D: FStAdFunc var_E0
  loc_A39410: FLdPr var_E0
  loc_A39413: LateIdCallSt
  loc_A3941B: FFreeAd var_88 = ""
  loc_A39422: FFree1Var var_9C = ""
  loc_A39425: LitI2_Byte 0
  loc_A39427: CR8I2
  loc_A39428: FLdPr Me
  loc_A3942B: MemStFPR8 global_80
  loc_A3942E: LitI2_Byte 1
  loc_A39430: FLdPr Me
  loc_A39433: MemLdRfVar from_stack_1.global_88
  loc_A39436: FLdPr Me
  loc_A39439: VCallAd Control_ID_PartidaFlex
  loc_A3943C: FStAdFunc var_88
  loc_A3943F: FLdPr var_88
  loc_A39442: LateIdLdVar var_9C DispID_4 0
  loc_A39449: CI4Var
  loc_A3944B: LitI4 1
  loc_A39450: SubI4
  loc_A39451: CI2I4
  loc_A39452: FFree1Ad var_88
  loc_A39455: FFree1Var var_9C = ""
  loc_A39458: ForI2 var_11C
  loc_A3945E: FLdPr Me
  loc_A39461: MemLdI2 global_88
  loc_A39464: CI4UI1
  loc_A39465: CVarI4
  loc_A39469: PopAdLdVar
  loc_A3946A: LitVarI4
  loc_A39472: PopAdLdVar
  loc_A39473: FLdPr Me
  loc_A39476: VCallAd Control_ID_PartidaFlex
  loc_A39479: FStAdFunc var_88
  loc_A3947C: FLdPr var_88
  loc_A3947F: LateIdCallLdVar
  loc_A39489: CStrVarTmp
  loc_A3948A: FStStrNoPop var_F4
  loc_A3948D: CR8Str
  loc_A3948F: CBoolR4
  loc_A39491: FFree1Str var_F4
  loc_A39494: FFree1Ad var_88
  loc_A39497: FFree1Var var_9C = ""
  loc_A3949A: BranchF loc_A39512
  loc_A3949D: FLdPr Me
  loc_A394A0: MemLdI2 global_88
  loc_A394A3: CI4UI1
  loc_A394A4: CVarI4
  loc_A394A8: PopAdLdVar
  loc_A394A9: LitVarI4
  loc_A394B1: PopAdLdVar
  loc_A394B2: FLdPr Me
  loc_A394B5: VCallAd Control_ID_PartidaFlex
  loc_A394B8: FStAdFunc var_88
  loc_A394BB: FLdPr var_88
  loc_A394BE: LateIdCallLdVar
  loc_A394C8: PopAd
  loc_A394CA: LitI4 0
  loc_A394CF: LitI4 -1
  loc_A394D4: LitI4 1
  loc_A394D9: LitStr ","
  loc_A394DC: LitStr "."
  loc_A394DF: FLdRfVar var_9C
  loc_A394E2: CStrVarTmp
  loc_A394E3: FStStrNoPop var_F4
  loc_A394E6: ImpAdCallI2 Replace(, , , , , )
  loc_A394EB: FStStr var_120
  loc_A394EE: FLdPr Me
  loc_A394F1: MemLdFPR8 global_80
  loc_A394F4: FLdZeroAd var_120
  loc_A394F7: FStStrNoPop var_F8
  loc_A394FA: CR8Str
  loc_A394FC: AddR8
  loc_A394FD: FLdPr Me
  loc_A39500: MemStFPR8 global_80
  loc_A39503: FFreeStr var_F4 = "": var_F8 = ""
  loc_A3950C: FFree1Ad var_88
  loc_A3950F: FFree1Var var_9C = ""
  loc_A39512: FLdPr Me
  loc_A39515: MemLdRfVar from_stack_1.global_88
  loc_A39518: NextI2 var_11C, loc_A3945E
  loc_A3951D: LitI4 1
  loc_A39522: LitI4 1
  loc_A39527: LitVarStr var_BC, "currency"
  loc_A3952C: FStVarCopyObj var_9C
  loc_A3952F: FLdRfVar var_9C
  loc_A39532: FLdPr Me
  loc_A39535: MemLdRfVar from_stack_1.global_80
  loc_A39538: CVarRef
  loc_A3953D: ImpAdCallI2 Format$(, )
  loc_A39542: FStStrNoPop var_F4
  loc_A39545: FLdPr Me
  loc_A39548: VCallAd Control_ID_LabelTotal
  loc_A3954B: FStAdFunc var_88
  loc_A3954E: FLdPr var_88
  loc_A39551: Me.Caption = from_stack_1
  loc_A39556: FFree1Str var_F4
  loc_A39559: FFree1Ad var_88
  loc_A3955C: FFree1Var var_9C = ""
  loc_A3955F: ExitProcHresult
End Sub

Private Sub FechImpuMsk_UnknownEvent_0 '94DB08
  'Data Table: 49566C
  loc_94DAF4: FLdPr Me
  loc_94DAF7: VCallAd Control_ID_FechImpuMsk
  loc_94DAFA: CVarAd
  loc_94DAFE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94DB03: FFree1Var var_94 = ""
  loc_94DB06: ExitProcHresult
End Sub

Private Function FechImpuMsk_UnknownEvent_8(arg_C) '9C9588
  'Data Table: 49566C
  loc_9C94B4: FLdRfVar var_8A
  loc_9C94B7: FLdPr Me
  loc_9C94BA: VCallAd Control_ID_cmdCancelar
  loc_9C94BD: FStAdFunc var_88
  loc_9C94C0: FLdPr var_88
  loc_9C94C3:  = Me.Value
  loc_9C94C8: FLdI2 var_8A
  loc_9C94CB: NotI4
  loc_9C94CC: FLdPr Me
  loc_9C94CF: VCallAd Control_ID_FechImpuMsk
  loc_9C94D2: FStAdFunc var_90
  loc_9C94D5: FLdPr var_90
  loc_9C94D8: LateIdLdVar var_A0 DispID_13 -32767
  loc_9C94DF: CBoolVar
  loc_9C94E1: AndI4
  loc_9C94E2: FFreeAd var_88 = ""
  loc_9C94E9: FFree1Var var_A0 = ""
  loc_9C94EC: BranchF loc_9C9587
  loc_9C94EF: FLdPr Me
  loc_9C94F2: VCallAd Control_ID_FechImpuMsk
  loc_9C94F5: FStAdFunc var_88
  loc_9C94F8: FLdPr var_88
  loc_9C94FB: LateIdLdVar var_A0 DispID_15 0
  loc_9C9502: PopAd
  loc_9C9504: FLdPr Me
  loc_9C9507: VCallAd Control_ID_FechImpuMsk
  loc_9C950A: FStAdFunc var_AC
  loc_9C950D: LitI2_Byte &HFF
  loc_9C950F: PopTmpLdAd2 var_8A
  loc_9C9512: FLdZeroAd var_AC
  loc_9C9515: FStAdFunc var_90
  loc_9C9518: FLdRfVar var_90
  loc_9C951B: LitStr "01/01/2018"
  loc_9C951E: LitI2_Byte &HFF
  loc_9C9520: LitI2_Byte &HFF
  loc_9C9522: FLdRfVar var_A0
  loc_9C9525: CStrVarTmp
  loc_9C9526: FStStrNoPop var_A4
  loc_9C9529: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C952E: FStStrNoPop var_A8
  loc_9C9531: FLdPr Me
  loc_9C9534: MemStStrCopy
  loc_9C9538: FFreeStr var_A4 = ""
  loc_9C953F: FFreeAd var_88 = "": var_90 = ""
  loc_9C9548: FFree1Var var_A0 = ""
  loc_9C954B: FLdPr Me
  loc_9C954E: VCallAd Control_ID_FechImpuMsk
  loc_9C9551: FStAdFunc var_B0
  loc_9C9554: LitNothing
  loc_9C9556: CastAd
  loc_9C9559: FStAdFunc var_AC
  loc_9C955C: FLdRfVar var_AC
  loc_9C955F: FLdZeroAd var_B0
  loc_9C9562: FStAdFuncNoPop
  loc_9C9565: CastAd
  loc_9C9568: FStAdFunc var_90
  loc_9C956B: FLdRfVar var_90
  loc_9C956E: FLdPr Me
  loc_9C9571: MemLdRfVar from_stack_1.global_68
  loc_9C9574: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C9579: IStI2 arg_C
  loc_9C957C: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_9C9587: ExitProcHresult
End Function

Private Sub FechImpuMsk_KeyPress(KeyAscii As Integer) '988918
  'Data Table: 49566C
  loc_9888D4: ILdI2 KeyAscii
  loc_9888D7: CI4UI1
  loc_9888D8: LitI4 &H20
  loc_9888DD: EqI4
  loc_9888DE: BranchF loc_988914
  loc_9888E1: LitVar_Missing var_A4
  loc_9888E4: PopAdLdVar
  loc_9888E5: LitVarI4
  loc_9888ED: PopAdLdVar
  loc_9888EE: ImpAdLdRf MemVar_C3D9A8
  loc_9888F1: NewIfNullPr frmCalendario
  loc_9888F4: frmCalendario.Show from_stack_1, from_stack_2
  loc_9888F9: ImpAdLdRf MemVar_C3D038
  loc_9888FC: CDargRef
  loc_988900: FLdPr Me
  loc_988903: VCallAd Control_ID_FechImpuMsk
  loc_988906: FStAdFunc var_A8
  loc_988909: FLdPr var_A8
  loc_98890C: LateIdSt
  loc_988911: FFree1Ad var_A8
  loc_988914: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_UnknownEvent_0 '9B73F0
  'Data Table: 49566C
  loc_9B733C: LitVarStr var_94, vbNullString
  loc_9B7341: PopAdLdVar
  loc_9B7342: FLdPr Me
  loc_9B7345: VCallAd Control_ID_CodiFifuMsk
  loc_9B7348: FStAdFunc var_A8
  loc_9B734B: FLdPr var_A8
  loc_9B734E: LateIdSt
  loc_9B7353: FFree1Ad var_A8
  loc_9B7356: FLdPr Me
  loc_9B7359: VCallAd Control_ID_CodiFifuMsk
  loc_9B735C: FStAdFunc var_A8
  loc_9B735F: FLdPr var_A8
  loc_9B7362: LateIdLdVar var_B8 DispID_22 0
  loc_9B7369: CStrVarTmp
  loc_9B736A: FStStrNoPop var_BC
  loc_9B736D: LitStr "__.__.__"
  loc_9B7370: EqStr
  loc_9B7372: FFree1Str var_BC
  loc_9B7375: FFree1Ad var_A8
  loc_9B7378: FFree1Var var_B8 = ""
  loc_9B737B: BranchF loc_9B7398
  loc_9B737E: LitVarStr var_94, vbNullString
  loc_9B7383: PopAdLdVar
  loc_9B7384: FLdPr Me
  loc_9B7387: VCallAd Control_ID_CodiFifuMsk
  loc_9B738A: FStAdFunc var_A8
  loc_9B738D: FLdPr var_A8
  loc_9B7390: LateIdSt
  loc_9B7395: FFree1Ad var_A8
  loc_9B7398: FLdPr Me
  loc_9B739B: VCallAd Control_ID_CodiFifuMsk
  loc_9B739E: FStAdFunc var_A8
  loc_9B73A1: FLdPr var_A8
  loc_9B73A4: LateIdLdVar var_B8 DispID_22 0
  loc_9B73AB: CStrVarTmp
  loc_9B73AC: FStStrNoPop var_BC
  loc_9B73AF: LitStr vbNullString
  loc_9B73B2: EqStr
  loc_9B73B4: FFree1Str var_BC
  loc_9B73B7: FFree1Ad var_A8
  loc_9B73BA: FFree1Var var_B8 = ""
  loc_9B73BD: BranchF loc_9B73DA
  loc_9B73C0: LitVarStr var_94, "019000"
  loc_9B73C5: PopAdLdVar
  loc_9B73C6: FLdPr Me
  loc_9B73C9: VCallAd Control_ID_CodiFifuMsk
  loc_9B73CC: FStAdFunc var_A8
  loc_9B73CF: FLdPr var_A8
  loc_9B73D2: LateIdSt
  loc_9B73D7: FFree1Ad var_A8
  loc_9B73DA: FLdPr Me
  loc_9B73DD: VCallAd Control_ID_CodiFifuMsk
  loc_9B73E0: CVarAd
  loc_9B73E4: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9B73E9: FFree1Var var_B8 = ""
  loc_9B73EC: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_UnknownEvent_1 '96AC7C
  'Data Table: 49566C
  loc_96AC60: LitVarStr var_94, "##.##.##"
  loc_96AC65: PopAdLdVar
  loc_96AC66: FLdPr Me
  loc_96AC69: VCallAd Control_ID_CodiFifuMsk
  loc_96AC6C: FStAdFunc var_A8
  loc_96AC6F: FLdPr var_A8
  loc_96AC72: LateIdSt
  loc_96AC77: FFree1Ad var_A8
  loc_96AC7A: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_UnknownEvent_8 'B564B4
  'Data Table: 49566C
  loc_B559D4: FLdRfVar var_8A
  loc_B559D7: FLdPr Me
  loc_B559DA: VCallAd Control_ID_cmdCancelar
  loc_B559DD: FStAdFunc var_88
  loc_B559E0: FLdPr var_88
  loc_B559E3:  = Me.Value
  loc_B559E8: FLdI2 var_8A
  loc_B559EB: NotI4
  loc_B559EC: FLdPr Me
  loc_B559EF: VCallAd Control_ID_CodiFifuMsk
  loc_B559F2: FStAdFunc var_90
  loc_B559F5: FLdPr var_90
  loc_B559F8: LateIdLdVar var_A0 DispID_13 -32767
  loc_B559FF: CBoolVar
  loc_B55A01: AndI4
  loc_B55A02: FFreeAd var_88 = ""
  loc_B55A09: FFree1Var var_A0 = ""
  loc_B55A0C: BranchF loc_B564B0
  loc_B55A0F: FLdPr Me
  loc_B55A12: VCallAd Control_ID_CodiFifuMsk
  loc_B55A15: FStAdFunc var_88
  loc_B55A18: FLdPr var_88
  loc_B55A1B: LateIdLdVar var_A0 DispID_22 0
  loc_B55A22: CStrVarTmp
  loc_B55A23: FStStrNoPop var_A4
  loc_B55A26: ImpAdCallI2 Trim$()
  loc_B55A2B: FStStrNoPop var_A8
  loc_B55A2E: LitStr vbNullString
  loc_B55A31: NeStr
  loc_B55A33: FFreeStr var_A4 = ""
  loc_B55A3A: FFree1Ad var_88
  loc_B55A3D: FFree1Var var_A0 = ""
  loc_B55A40: BranchF loc_B562B2
  loc_B55A43: FLdPr Me
  loc_B55A46: VCallAd Control_ID_CodiFifuMsk
  loc_B55A49: FStAdFunc var_88
  loc_B55A4C: FLdRfVar var_88
  loc_B55A4F: ImpAdCallI2 Proc_266_40_A1E128()
  loc_B55A54: FFree1Ad var_88
  loc_B55A57: BranchF loc_B55E86
  loc_B55A5A: FLdPr Me
  loc_B55A5D: VCallAd Control_ID_CodiOrgaMsk
  loc_B55A60: FStAdFunc var_88
  loc_B55A63: FLdPr var_88
  loc_B55A66: LateIdLdVar var_A0 DispID_22 0
  loc_B55A6D: PopAd
  loc_B55A6F: FLdPr Me
  loc_B55A72: VCallAd Control_ID_CodiFifuMsk
  loc_B55A75: FStAdFunc var_90
  loc_B55A78: FLdPr var_90
  loc_B55A7B: LateIdLdVar var_B8 DispID_22 0
  loc_B55A82: PopAd
  loc_B55A84: LitStr " AND finalidad.CodiFifu LIKE '"
  loc_B55A87: LitI4 0
  loc_B55A8C: LitI4 -1
  loc_B55A91: LitI4 1
  loc_B55A96: LitStr vbNullString
  loc_B55A99: LitStr "."
  loc_B55A9C: FLdRfVar var_B8
  loc_B55A9F: CStrVarTmp
  loc_B55AA0: FStStrNoPop var_A4
  loc_B55AA3: ImpAdCallI2 Replace(, , , , , )
  loc_B55AA8: FStStrNoPop var_A8
  loc_B55AAB: ConcatStr
  loc_B55AAC: FStStrNoPop var_BC
  loc_B55AAF: LitStr Chr(37) & "' ORDER BY finalidad.CodiFifu"
  loc_B55AB2: ConcatStr
  loc_B55AB3: FStStrNoPop var_C4
  loc_B55AB6: FLdRfVar var_A0
  loc_B55AB9: CStrVarTmp
  loc_B55ABA: FStStrNoPop var_C0
  loc_B55ABD: LitStr vbNullString
  loc_B55AC0: ImpAdLdI2 MemVar_C3D064
  loc_B55AC3: ImpAdLdRf MemVar_C3D6E8
  loc_B55AC6: NewIfNullPr bscFinalidad
  loc_B55AC9: Call bscFinalidad.Constructor(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B55ACE: FFreeStr var_A4 = "": var_A8 = "": var_BC = "": var_C0 = ""
  loc_B55ADB: FFreeAd var_88 = ""
  loc_B55AE2: FFreeVar var_A0 = ""
  loc_B55AE9: FLdRfVar var_C8
  loc_B55AEC: FLdRfVar var_90
  loc_B55AEF: FLdRfVar var_88
  loc_B55AF2: ImpAdLdRf MemVar_C3D6E8
  loc_B55AF5: NewIfNullPr bscFinalidad
  loc_B55AF8: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B55AFD: FLdPr var_88
  loc_B55B00: from_stack_1v = clsbase.RsFrmGet()
  loc_B55B05: FLdPr var_90
  loc_B55B08:  = Me.RecordCount
  loc_B55B0D: ILdRf var_C8
  loc_B55B10: LitI4 1
  loc_B55B15: EqI4
  loc_B55B16: FFreeAd var_88 = ""
  loc_B55B1D: BranchF loc_B55C32
  loc_B55B20: FLdRfVar var_A0
  loc_B55B23: FLdRfVar var_E0
  loc_B55B26: LitVarStr var_DC, "CodiFifu"
  loc_B55B2B: PopAdLdVar
  loc_B55B2C: FLdRfVar var_CC
  loc_B55B2F: FLdRfVar var_90
  loc_B55B32: FLdRfVar var_88
  loc_B55B35: ImpAdLdRf MemVar_C3D6E8
  loc_B55B38: NewIfNullPr bscFinalidad
  loc_B55B3B: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B55B40: FLdPr var_88
  loc_B55B43: from_stack_1v = clsbase.RsFrmGet()
  loc_B55B48: FLdPr var_90
  loc_B55B4B:  = Me.Fields
  loc_B55B50: FLdPr var_CC
  loc_B55B53: from_stack_2 = Me.Item(from_stack_1)
  loc_B55B58: FLdPr var_E0
  loc_B55B5B:  = Me.Value
  loc_B55B60: FLdPr Me
  loc_B55B63: MemLdRfVar from_stack_1.global_100
  loc_B55B66: NewIfNullRf
  loc_B55B6A: FLdRfVar var_A0
  loc_B55B6D: CStrVarTmp
  loc_B55B6E: FStStrNoPop var_A4
  loc_B55B71: ImpAdLdI2 MemVar_C3D064
  loc_B55B74: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_B55B79: FStStrNoPop var_A8
  loc_B55B7C: FLdPr Me
  loc_B55B7F: MemStStrCopy
  loc_B55B83: FFreeStr var_A4 = ""
  loc_B55B8A: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B55B95: FFree1Var var_A0 = ""
  loc_B55B98: FLdRfVar var_A4
  loc_B55B9B: FLdPr Me
  loc_B55B9E: MemLdRfVar from_stack_1.global_100
  loc_B55BA1: NewIfNullPr tblfinalidad
  loc_B55BA4: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_B55BA9: FLdZeroAd var_A4
  loc_B55BAC: CVarStr var_A0
  loc_B55BAF: PopAdLdVar
  loc_B55BB0: FLdPr Me
  loc_B55BB3: VCallAd Control_ID_CodiFifuMsk
  loc_B55BB6: FStAdFunc var_88
  loc_B55BB9: FLdPr var_88
  loc_B55BBC: LateIdSt
  loc_B55BC1: FFree1Ad var_88
  loc_B55BC4: FFree1Var var_A0 = ""
  loc_B55BC7: FLdRfVar var_A4
  loc_B55BCA: FLdPr Me
  loc_B55BCD: MemLdRfVar from_stack_1.global_100
  loc_B55BD0: NewIfNullPr tblfinalidad
  loc_B55BD3: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_B55BD8: ILdRf var_A4
  loc_B55BDB: FLdPr Me
  loc_B55BDE: VCallAd Control_ID_DetaFifuLbl
  loc_B55BE1: FStAdFunc var_88
  loc_B55BE4: FLdPr var_88
  loc_B55BE7: Me.Caption = from_stack_1
  loc_B55BEC: FFree1Str var_A4
  loc_B55BEF: FFree1Ad var_88
  loc_B55BF2: FLdPr Me
  loc_B55BF5: VCallAd Control_ID_CodiFifuMsk
  loc_B55BF8: FStAdFunc var_E0
  loc_B55BFB: FLdPr Me
  loc_B55BFE: VCallAd Control_ID_DetaFifuLbl
  loc_B55C01: FStAdFunc var_CC
  loc_B55C04: FLdRfVar var_CC
  loc_B55C07: FLdZeroAd var_E0
  loc_B55C0A: FStAdFuncNoPop
  loc_B55C0D: CastAd
  loc_B55C10: FStAdFunc var_90
  loc_B55C13: FLdRfVar var_90
  loc_B55C16: FLdPr Me
  loc_B55C19: MemLdRfVar from_stack_1.global_68
  loc_B55C1C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B55C21: IStI2 KeyAscii
  loc_B55C24: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B55C2F: Branch loc_B55E83
  loc_B55C32: FLdRfVar var_C8
  loc_B55C35: FLdRfVar var_90
  loc_B55C38: FLdRfVar var_88
  loc_B55C3B: ImpAdLdRf MemVar_C3D6E8
  loc_B55C3E: NewIfNullPr bscFinalidad
  loc_B55C41: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B55C46: FLdPr var_88
  loc_B55C49: from_stack_1v = clsbase.RsFrmGet()
  loc_B55C4E: FLdPr var_90
  loc_B55C51:  = Me.RecordCount
  loc_B55C56: ILdRf var_C8
  loc_B55C59: LitI4 1
  loc_B55C5E: GtI4
  loc_B55C5F: FFreeAd var_88 = ""
  loc_B55C66: BranchF loc_B55E05
  loc_B55C69: LitVar_Missing var_F0
  loc_B55C6C: PopAdLdVar
  loc_B55C6D: LitVarI4
  loc_B55C75: PopAdLdVar
  loc_B55C76: ImpAdLdRf MemVar_C3D6E8
  loc_B55C79: NewIfNullPr bscFinalidad
  loc_B55C7C: bscFinalidad.Show from_stack_1, from_stack_2
  loc_B55C81: FLdRfVar var_C8
  loc_B55C84: FLdRfVar var_88
  loc_B55C87: ImpAdLdRf MemVar_C3D6E8
  loc_B55C8A: NewIfNullPr bscFinalidad
  loc_B55C8D: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B55C92: FLdPr var_88
  loc_B55C95: from_stack_1 = clsbase.RecordCount
  loc_B55C9A: ILdRf var_C8
  loc_B55C9D: LitI4 0
  loc_B55CA2: GtI4
  loc_B55CA3: FFree1Ad var_88
  loc_B55CA6: BranchF loc_B55DBB
  loc_B55CA9: FLdRfVar var_A0
  loc_B55CAC: FLdRfVar var_E0
  loc_B55CAF: LitVarStr var_DC, "CodiFifu"
  loc_B55CB4: PopAdLdVar
  loc_B55CB5: FLdRfVar var_CC
  loc_B55CB8: FLdRfVar var_90
  loc_B55CBB: FLdRfVar var_88
  loc_B55CBE: ImpAdLdRf MemVar_C3D6E8
  loc_B55CC1: NewIfNullPr bscFinalidad
  loc_B55CC4: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B55CC9: FLdPr var_88
  loc_B55CCC: from_stack_1v = clsbase.RsFrmGet()
  loc_B55CD1: FLdPr var_90
  loc_B55CD4:  = Me.Fields
  loc_B55CD9: FLdPr var_CC
  loc_B55CDC: from_stack_2 = Me.Item(from_stack_1)
  loc_B55CE1: FLdPr var_E0
  loc_B55CE4:  = Me.Value
  loc_B55CE9: FLdPr Me
  loc_B55CEC: MemLdRfVar from_stack_1.global_100
  loc_B55CEF: NewIfNullRf
  loc_B55CF3: FLdRfVar var_A0
  loc_B55CF6: CStrVarTmp
  loc_B55CF7: FStStrNoPop var_A4
  loc_B55CFA: ImpAdLdI2 MemVar_C3D064
  loc_B55CFD: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_B55D02: FStStrNoPop var_A8
  loc_B55D05: FLdPr Me
  loc_B55D08: MemStStrCopy
  loc_B55D0C: FFreeStr var_A4 = ""
  loc_B55D13: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B55D1E: FFree1Var var_A0 = ""
  loc_B55D21: FLdRfVar var_A4
  loc_B55D24: FLdPr Me
  loc_B55D27: MemLdRfVar from_stack_1.global_100
  loc_B55D2A: NewIfNullPr tblfinalidad
  loc_B55D2D: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_B55D32: FLdZeroAd var_A4
  loc_B55D35: CVarStr var_A0
  loc_B55D38: PopAdLdVar
  loc_B55D39: FLdPr Me
  loc_B55D3C: VCallAd Control_ID_CodiFifuMsk
  loc_B55D3F: FStAdFunc var_88
  loc_B55D42: FLdPr var_88
  loc_B55D45: LateIdSt
  loc_B55D4A: FFree1Ad var_88
  loc_B55D4D: FFree1Var var_A0 = ""
  loc_B55D50: FLdRfVar var_A4
  loc_B55D53: FLdPr Me
  loc_B55D56: MemLdRfVar from_stack_1.global_100
  loc_B55D59: NewIfNullPr tblfinalidad
  loc_B55D5C: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_B55D61: ILdRf var_A4
  loc_B55D64: FLdPr Me
  loc_B55D67: VCallAd Control_ID_DetaFifuLbl
  loc_B55D6A: FStAdFunc var_88
  loc_B55D6D: FLdPr var_88
  loc_B55D70: Me.Caption = from_stack_1
  loc_B55D75: FFree1Str var_A4
  loc_B55D78: FFree1Ad var_88
  loc_B55D7B: FLdPr Me
  loc_B55D7E: VCallAd Control_ID_CodiFifuMsk
  loc_B55D81: FStAdFunc var_E0
  loc_B55D84: FLdPr Me
  loc_B55D87: VCallAd Control_ID_DetaFifuLbl
  loc_B55D8A: FStAdFunc var_CC
  loc_B55D8D: FLdRfVar var_CC
  loc_B55D90: FLdZeroAd var_E0
  loc_B55D93: FStAdFuncNoPop
  loc_B55D96: CastAd
  loc_B55D99: FStAdFunc var_90
  loc_B55D9C: FLdRfVar var_90
  loc_B55D9F: FLdPr Me
  loc_B55DA2: MemLdRfVar from_stack_1.global_68
  loc_B55DA5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B55DAA: IStI2 KeyAscii
  loc_B55DAD: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B55DB8: Branch loc_B55E02
  loc_B55DBB: LitStr "La Finalidad NO EXISTE. Verifique..."
  loc_B55DBE: FLdPr Me
  loc_B55DC1: MemStStrCopy
  loc_B55DC5: FLdPr Me
  loc_B55DC8: VCallAd Control_ID_CodiFifuMsk
  loc_B55DCB: FStAdFunc var_E0
  loc_B55DCE: FLdPr Me
  loc_B55DD1: VCallAd Control_ID_DetaFifuLbl
  loc_B55DD4: FStAdFunc var_CC
  loc_B55DD7: FLdRfVar var_CC
  loc_B55DDA: FLdZeroAd var_E0
  loc_B55DDD: FStAdFuncNoPop
  loc_B55DE0: CastAd
  loc_B55DE3: FStAdFunc var_90
  loc_B55DE6: FLdRfVar var_90
  loc_B55DE9: FLdPr Me
  loc_B55DEC: MemLdRfVar from_stack_1.global_68
  loc_B55DEF: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B55DF4: IStI2 KeyAscii
  loc_B55DF7: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B55E02: Branch loc_B55E83
  loc_B55E05: FLdRfVar var_C8
  loc_B55E08: FLdRfVar var_90
  loc_B55E0B: FLdRfVar var_88
  loc_B55E0E: ImpAdLdRf MemVar_C3D6E8
  loc_B55E11: NewIfNullPr bscFinalidad
  loc_B55E14: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B55E19: FLdPr var_88
  loc_B55E1C: from_stack_1v = clsbase.RsFrmGet()
  loc_B55E21: FLdPr var_90
  loc_B55E24:  = Me.RecordCount
  loc_B55E29: ILdRf var_C8
  loc_B55E2C: LitI4 1
  loc_B55E31: LtI4
  loc_B55E32: FFreeAd var_88 = ""
  loc_B55E39: BranchF loc_B55E83
  loc_B55E3C: LitStr "La Finalidad NO EXISTE. Verifique..."
  loc_B55E3F: FLdPr Me
  loc_B55E42: MemStStrCopy
  loc_B55E46: FLdPr Me
  loc_B55E49: VCallAd Control_ID_CodiFifuMsk
  loc_B55E4C: FStAdFunc var_E0
  loc_B55E4F: FLdPr Me
  loc_B55E52: VCallAd Control_ID_DetaFifuLbl
  loc_B55E55: FStAdFunc var_CC
  loc_B55E58: FLdRfVar var_CC
  loc_B55E5B: FLdZeroAd var_E0
  loc_B55E5E: FStAdFuncNoPop
  loc_B55E61: CastAd
  loc_B55E64: FStAdFunc var_90
  loc_B55E67: FLdRfVar var_90
  loc_B55E6A: FLdPr Me
  loc_B55E6D: MemLdRfVar from_stack_1.global_68
  loc_B55E70: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B55E75: IStI2 KeyAscii
  loc_B55E78: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B55E83: Branch loc_B562AF
  loc_B55E86: FLdPr Me
  loc_B55E89: VCallAd Control_ID_CodiOrgaMsk
  loc_B55E8C: FStAdFunc var_88
  loc_B55E8F: FLdPr var_88
  loc_B55E92: LateIdLdVar var_A0 DispID_22 0
  loc_B55E99: PopAd
  loc_B55E9B: FLdPr Me
  loc_B55E9E: VCallAd Control_ID_CodiFifuMsk
  loc_B55EA1: FStAdFunc var_90
  loc_B55EA4: FLdPr var_90
  loc_B55EA7: LateIdLdVar var_B8 DispID_22 0
  loc_B55EAE: PopAd
  loc_B55EB0: LitStr " AND DetaFifu LIKE '" & Chr(37)
  loc_B55EB3: LitI4 0
  loc_B55EB8: LitI4 -1
  loc_B55EBD: LitI4 1
  loc_B55EC2: LitStr Chr(37)
  loc_B55EC5: LitStr " "
  loc_B55EC8: FLdRfVar var_B8
  loc_B55ECB: CStrVarTmp
  loc_B55ECC: FStStrNoPop var_A4
  loc_B55ECF: ImpAdCallI2 Replace(, , , , , )
  loc_B55ED4: FStStrNoPop var_A8
  loc_B55ED7: ConcatStr
  loc_B55ED8: FStStrNoPop var_BC
  loc_B55EDB: LitStr Chr(37) & "' ORDER BY DetaFifu"
  loc_B55EDE: ConcatStr
  loc_B55EDF: FStStrNoPop var_C4
  loc_B55EE2: FLdRfVar var_A0
  loc_B55EE5: CStrVarTmp
  loc_B55EE6: FStStrNoPop var_C0
  loc_B55EE9: LitStr vbNullString
  loc_B55EEC: ImpAdLdI2 MemVar_C3D064
  loc_B55EEF: ImpAdLdRf MemVar_C3D6E8
  loc_B55EF2: NewIfNullPr bscFinalidad
  loc_B55EF5: Call bscFinalidad.Constructor(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B55EFA: FFreeStr var_A4 = "": var_A8 = "": var_BC = "": var_C0 = ""
  loc_B55F07: FFreeAd var_88 = ""
  loc_B55F0E: FFreeVar var_A0 = ""
  loc_B55F15: FLdRfVar var_C8
  loc_B55F18: FLdRfVar var_90
  loc_B55F1B: FLdRfVar var_88
  loc_B55F1E: ImpAdLdRf MemVar_C3D6E8
  loc_B55F21: NewIfNullPr bscFinalidad
  loc_B55F24: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B55F29: FLdPr var_88
  loc_B55F2C: from_stack_1v = clsbase.RsFrmGet()
  loc_B55F31: FLdPr var_90
  loc_B55F34:  = Me.RecordCount
  loc_B55F39: ILdRf var_C8
  loc_B55F3C: LitI4 1
  loc_B55F41: EqI4
  loc_B55F42: FFreeAd var_88 = ""
  loc_B55F49: BranchF loc_B5605E
  loc_B55F4C: FLdRfVar var_A0
  loc_B55F4F: FLdRfVar var_E0
  loc_B55F52: LitVarStr var_DC, "CodiFifu"
  loc_B55F57: PopAdLdVar
  loc_B55F58: FLdRfVar var_CC
  loc_B55F5B: FLdRfVar var_90
  loc_B55F5E: FLdRfVar var_88
  loc_B55F61: ImpAdLdRf MemVar_C3D6E8
  loc_B55F64: NewIfNullPr bscFinalidad
  loc_B55F67: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B55F6C: FLdPr var_88
  loc_B55F6F: from_stack_1v = clsbase.RsFrmGet()
  loc_B55F74: FLdPr var_90
  loc_B55F77:  = Me.Fields
  loc_B55F7C: FLdPr var_CC
  loc_B55F7F: from_stack_2 = Me.Item(from_stack_1)
  loc_B55F84: FLdPr var_E0
  loc_B55F87:  = Me.Value
  loc_B55F8C: FLdPr Me
  loc_B55F8F: MemLdRfVar from_stack_1.global_100
  loc_B55F92: NewIfNullRf
  loc_B55F96: FLdRfVar var_A0
  loc_B55F99: CStrVarTmp
  loc_B55F9A: FStStrNoPop var_A4
  loc_B55F9D: ImpAdLdI2 MemVar_C3D064
  loc_B55FA0: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_B55FA5: FStStrNoPop var_A8
  loc_B55FA8: FLdPr Me
  loc_B55FAB: MemStStrCopy
  loc_B55FAF: FFreeStr var_A4 = ""
  loc_B55FB6: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B55FC1: FFree1Var var_A0 = ""
  loc_B55FC4: FLdRfVar var_A4
  loc_B55FC7: FLdPr Me
  loc_B55FCA: MemLdRfVar from_stack_1.global_100
  loc_B55FCD: NewIfNullPr tblfinalidad
  loc_B55FD0: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_B55FD5: FLdZeroAd var_A4
  loc_B55FD8: CVarStr var_A0
  loc_B55FDB: PopAdLdVar
  loc_B55FDC: FLdPr Me
  loc_B55FDF: VCallAd Control_ID_CodiFifuMsk
  loc_B55FE2: FStAdFunc var_88
  loc_B55FE5: FLdPr var_88
  loc_B55FE8: LateIdSt
  loc_B55FED: FFree1Ad var_88
  loc_B55FF0: FFree1Var var_A0 = ""
  loc_B55FF3: FLdRfVar var_A4
  loc_B55FF6: FLdPr Me
  loc_B55FF9: MemLdRfVar from_stack_1.global_100
  loc_B55FFC: NewIfNullPr tblfinalidad
  loc_B55FFF: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_B56004: ILdRf var_A4
  loc_B56007: FLdPr Me
  loc_B5600A: VCallAd Control_ID_DetaFifuLbl
  loc_B5600D: FStAdFunc var_88
  loc_B56010: FLdPr var_88
  loc_B56013: Me.Caption = from_stack_1
  loc_B56018: FFree1Str var_A4
  loc_B5601B: FFree1Ad var_88
  loc_B5601E: FLdPr Me
  loc_B56021: VCallAd Control_ID_CodiFifuMsk
  loc_B56024: FStAdFunc var_E0
  loc_B56027: FLdPr Me
  loc_B5602A: VCallAd Control_ID_DetaFifuLbl
  loc_B5602D: FStAdFunc var_CC
  loc_B56030: FLdRfVar var_CC
  loc_B56033: FLdZeroAd var_E0
  loc_B56036: FStAdFuncNoPop
  loc_B56039: CastAd
  loc_B5603C: FStAdFunc var_90
  loc_B5603F: FLdRfVar var_90
  loc_B56042: FLdPr Me
  loc_B56045: MemLdRfVar from_stack_1.global_68
  loc_B56048: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5604D: IStI2 KeyAscii
  loc_B56050: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B5605B: Branch loc_B562AF
  loc_B5605E: FLdRfVar var_C8
  loc_B56061: FLdRfVar var_90
  loc_B56064: FLdRfVar var_88
  loc_B56067: ImpAdLdRf MemVar_C3D6E8
  loc_B5606A: NewIfNullPr bscFinalidad
  loc_B5606D: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B56072: FLdPr var_88
  loc_B56075: from_stack_1v = clsbase.RsFrmGet()
  loc_B5607A: FLdPr var_90
  loc_B5607D:  = Me.RecordCount
  loc_B56082: ILdRf var_C8
  loc_B56085: LitI4 1
  loc_B5608A: GtI4
  loc_B5608B: FFreeAd var_88 = ""
  loc_B56092: BranchF loc_B56231
  loc_B56095: LitVar_Missing var_F0
  loc_B56098: PopAdLdVar
  loc_B56099: LitVarI4
  loc_B560A1: PopAdLdVar
  loc_B560A2: ImpAdLdRf MemVar_C3D6E8
  loc_B560A5: NewIfNullPr bscFinalidad
  loc_B560A8: bscFinalidad.Show from_stack_1, from_stack_2
  loc_B560AD: FLdRfVar var_C8
  loc_B560B0: FLdRfVar var_88
  loc_B560B3: ImpAdLdRf MemVar_C3D6E8
  loc_B560B6: NewIfNullPr bscFinalidad
  loc_B560B9: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B560BE: FLdPr var_88
  loc_B560C1: from_stack_1 = clsbase.RecordCount
  loc_B560C6: ILdRf var_C8
  loc_B560C9: LitI4 0
  loc_B560CE: GtI4
  loc_B560CF: FFree1Ad var_88
  loc_B560D2: BranchF loc_B561E7
  loc_B560D5: FLdRfVar var_A0
  loc_B560D8: FLdRfVar var_E0
  loc_B560DB: LitVarStr var_DC, "CodiFifu"
  loc_B560E0: PopAdLdVar
  loc_B560E1: FLdRfVar var_CC
  loc_B560E4: FLdRfVar var_90
  loc_B560E7: FLdRfVar var_88
  loc_B560EA: ImpAdLdRf MemVar_C3D6E8
  loc_B560ED: NewIfNullPr bscFinalidad
  loc_B560F0: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B560F5: FLdPr var_88
  loc_B560F8: from_stack_1v = clsbase.RsFrmGet()
  loc_B560FD: FLdPr var_90
  loc_B56100:  = Me.Fields
  loc_B56105: FLdPr var_CC
  loc_B56108: from_stack_2 = Me.Item(from_stack_1)
  loc_B5610D: FLdPr var_E0
  loc_B56110:  = Me.Value
  loc_B56115: FLdPr Me
  loc_B56118: MemLdRfVar from_stack_1.global_100
  loc_B5611B: NewIfNullRf
  loc_B5611F: FLdRfVar var_A0
  loc_B56122: CStrVarTmp
  loc_B56123: FStStrNoPop var_A4
  loc_B56126: ImpAdLdI2 MemVar_C3D064
  loc_B56129: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_B5612E: FStStrNoPop var_A8
  loc_B56131: FLdPr Me
  loc_B56134: MemStStrCopy
  loc_B56138: FFreeStr var_A4 = ""
  loc_B5613F: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B5614A: FFree1Var var_A0 = ""
  loc_B5614D: FLdRfVar var_A4
  loc_B56150: FLdPr Me
  loc_B56153: MemLdRfVar from_stack_1.global_100
  loc_B56156: NewIfNullPr tblfinalidad
  loc_B56159: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_B5615E: FLdZeroAd var_A4
  loc_B56161: CVarStr var_A0
  loc_B56164: PopAdLdVar
  loc_B56165: FLdPr Me
  loc_B56168: VCallAd Control_ID_CodiFifuMsk
  loc_B5616B: FStAdFunc var_88
  loc_B5616E: FLdPr var_88
  loc_B56171: LateIdSt
  loc_B56176: FFree1Ad var_88
  loc_B56179: FFree1Var var_A0 = ""
  loc_B5617C: FLdRfVar var_A4
  loc_B5617F: FLdPr Me
  loc_B56182: MemLdRfVar from_stack_1.global_100
  loc_B56185: NewIfNullPr tblfinalidad
  loc_B56188: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_B5618D: ILdRf var_A4
  loc_B56190: FLdPr Me
  loc_B56193: VCallAd Control_ID_DetaFifuLbl
  loc_B56196: FStAdFunc var_88
  loc_B56199: FLdPr var_88
  loc_B5619C: Me.Caption = from_stack_1
  loc_B561A1: FFree1Str var_A4
  loc_B561A4: FFree1Ad var_88
  loc_B561A7: FLdPr Me
  loc_B561AA: VCallAd Control_ID_CodiFifuMsk
  loc_B561AD: FStAdFunc var_E0
  loc_B561B0: FLdPr Me
  loc_B561B3: VCallAd Control_ID_DetaFifuLbl
  loc_B561B6: FStAdFunc var_CC
  loc_B561B9: FLdRfVar var_CC
  loc_B561BC: FLdZeroAd var_E0
  loc_B561BF: FStAdFuncNoPop
  loc_B561C2: CastAd
  loc_B561C5: FStAdFunc var_90
  loc_B561C8: FLdRfVar var_90
  loc_B561CB: FLdPr Me
  loc_B561CE: MemLdRfVar from_stack_1.global_68
  loc_B561D1: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B561D6: IStI2 KeyAscii
  loc_B561D9: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B561E4: Branch loc_B5622E
  loc_B561E7: LitStr "La Finalidad NO EXISTE. Verique..."
  loc_B561EA: FLdPr Me
  loc_B561ED: MemStStrCopy
  loc_B561F1: FLdPr Me
  loc_B561F4: VCallAd Control_ID_CodiFifuMsk
  loc_B561F7: FStAdFunc var_E0
  loc_B561FA: FLdPr Me
  loc_B561FD: VCallAd Control_ID_DetaFifuLbl
  loc_B56200: FStAdFunc var_CC
  loc_B56203: FLdRfVar var_CC
  loc_B56206: FLdZeroAd var_E0
  loc_B56209: FStAdFuncNoPop
  loc_B5620C: CastAd
  loc_B5620F: FStAdFunc var_90
  loc_B56212: FLdRfVar var_90
  loc_B56215: FLdPr Me
  loc_B56218: MemLdRfVar from_stack_1.global_68
  loc_B5621B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B56220: IStI2 KeyAscii
  loc_B56223: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B5622E: Branch loc_B562AF
  loc_B56231: FLdRfVar var_C8
  loc_B56234: FLdRfVar var_90
  loc_B56237: FLdRfVar var_88
  loc_B5623A: ImpAdLdRf MemVar_C3D6E8
  loc_B5623D: NewIfNullPr bscFinalidad
  loc_B56240: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B56245: FLdPr var_88
  loc_B56248: from_stack_1v = clsbase.RsFrmGet()
  loc_B5624D: FLdPr var_90
  loc_B56250:  = Me.RecordCount
  loc_B56255: ILdRf var_C8
  loc_B56258: LitI4 1
  loc_B5625D: LtI4
  loc_B5625E: FFreeAd var_88 = ""
  loc_B56265: BranchF loc_B562AF
  loc_B56268: LitStr "La Finalidad NO EXISTE. Verique..."
  loc_B5626B: FLdPr Me
  loc_B5626E: MemStStrCopy
  loc_B56272: FLdPr Me
  loc_B56275: VCallAd Control_ID_CodiFifuMsk
  loc_B56278: FStAdFunc var_E0
  loc_B5627B: FLdPr Me
  loc_B5627E: VCallAd Control_ID_DetaFifuLbl
  loc_B56281: FStAdFunc var_CC
  loc_B56284: FLdRfVar var_CC
  loc_B56287: FLdZeroAd var_E0
  loc_B5628A: FStAdFuncNoPop
  loc_B5628D: CastAd
  loc_B56290: FStAdFunc var_90
  loc_B56293: FLdRfVar var_90
  loc_B56296: FLdPr Me
  loc_B56299: MemLdRfVar from_stack_1.global_68
  loc_B5629C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B562A1: IStI2 KeyAscii
  loc_B562A4: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B562AF: Branch loc_B56461
  loc_B562B2: LitNothing
  loc_B562B4: CastAd
  loc_B562B7: FStAdFuncNoPop
  loc_B562BA: ImpAdLdRf MemVar_C3D6E8
  loc_B562BD: NewIfNullPr bscFinalidad
  loc_B562C0: Call bscFinalidad.global_4320824Set(from_stack_1v)
  loc_B562C5: FFree1Ad var_88
  loc_B562C8: LitVar_Missing var_F0
  loc_B562CB: PopAdLdVar
  loc_B562CC: LitVarI4
  loc_B562D4: PopAdLdVar
  loc_B562D5: ImpAdLdRf MemVar_C3D6E8
  loc_B562D8: NewIfNullPr bscFinalidad
  loc_B562DB: bscFinalidad.Show from_stack_1, from_stack_2
  loc_B562E0: FLdRfVar var_C8
  loc_B562E3: FLdRfVar var_88
  loc_B562E6: ImpAdLdRf MemVar_C3D6E8
  loc_B562E9: NewIfNullPr bscFinalidad
  loc_B562EC: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B562F1: FLdPr var_88
  loc_B562F4: from_stack_1 = clsbase.RecordCount
  loc_B562F9: ILdRf var_C8
  loc_B562FC: LitI4 0
  loc_B56301: GtI4
  loc_B56302: FFree1Ad var_88
  loc_B56305: BranchF loc_B5641A
  loc_B56308: FLdRfVar var_A0
  loc_B5630B: FLdRfVar var_E0
  loc_B5630E: LitVarStr var_DC, "CodiFifu"
  loc_B56313: PopAdLdVar
  loc_B56314: FLdRfVar var_CC
  loc_B56317: FLdRfVar var_90
  loc_B5631A: FLdRfVar var_88
  loc_B5631D: ImpAdLdRf MemVar_C3D6E8
  loc_B56320: NewIfNullPr bscFinalidad
  loc_B56323: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_B56328: FLdPr var_88
  loc_B5632B: from_stack_1v = clsbase.RsFrmGet()
  loc_B56330: FLdPr var_90
  loc_B56333:  = Me.Fields
  loc_B56338: FLdPr var_CC
  loc_B5633B: from_stack_2 = Me.Item(from_stack_1)
  loc_B56340: FLdPr var_E0
  loc_B56343:  = Me.Value
  loc_B56348: FLdPr Me
  loc_B5634B: MemLdRfVar from_stack_1.global_100
  loc_B5634E: NewIfNullRf
  loc_B56352: FLdRfVar var_A0
  loc_B56355: CStrVarTmp
  loc_B56356: FStStrNoPop var_A4
  loc_B56359: ImpAdLdI2 MemVar_C3D064
  loc_B5635C: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_B56361: FStStrNoPop var_A8
  loc_B56364: FLdPr Me
  loc_B56367: MemStStrCopy
  loc_B5636B: FFreeStr var_A4 = ""
  loc_B56372: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B5637D: FFree1Var var_A0 = ""
  loc_B56380: FLdRfVar var_A4
  loc_B56383: FLdPr Me
  loc_B56386: MemLdRfVar from_stack_1.global_100
  loc_B56389: NewIfNullPr tblfinalidad
  loc_B5638C: from_stack_1v = tblfinalidad.CodiFifuGet()
  loc_B56391: FLdZeroAd var_A4
  loc_B56394: CVarStr var_A0
  loc_B56397: PopAdLdVar
  loc_B56398: FLdPr Me
  loc_B5639B: VCallAd Control_ID_CodiFifuMsk
  loc_B5639E: FStAdFunc var_88
  loc_B563A1: FLdPr var_88
  loc_B563A4: LateIdSt
  loc_B563A9: FFree1Ad var_88
  loc_B563AC: FFree1Var var_A0 = ""
  loc_B563AF: FLdRfVar var_A4
  loc_B563B2: FLdPr Me
  loc_B563B5: MemLdRfVar from_stack_1.global_100
  loc_B563B8: NewIfNullPr tblfinalidad
  loc_B563BB: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_B563C0: ILdRf var_A4
  loc_B563C3: FLdPr Me
  loc_B563C6: VCallAd Control_ID_DetaFifuLbl
  loc_B563C9: FStAdFunc var_88
  loc_B563CC: FLdPr var_88
  loc_B563CF: Me.Caption = from_stack_1
  loc_B563D4: FFree1Str var_A4
  loc_B563D7: FFree1Ad var_88
  loc_B563DA: FLdPr Me
  loc_B563DD: VCallAd Control_ID_CodiFifuMsk
  loc_B563E0: FStAdFunc var_E0
  loc_B563E3: FLdPr Me
  loc_B563E6: VCallAd Control_ID_DetaFifuLbl
  loc_B563E9: FStAdFunc var_CC
  loc_B563EC: FLdRfVar var_CC
  loc_B563EF: FLdZeroAd var_E0
  loc_B563F2: FStAdFuncNoPop
  loc_B563F5: CastAd
  loc_B563F8: FStAdFunc var_90
  loc_B563FB: FLdRfVar var_90
  loc_B563FE: FLdPr Me
  loc_B56401: MemLdRfVar from_stack_1.global_68
  loc_B56404: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B56409: IStI2 KeyAscii
  loc_B5640C: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B56417: Branch loc_B56461
  loc_B5641A: LitStr "La Finalidad NO EXISTE. Verifique..."
  loc_B5641D: FLdPr Me
  loc_B56420: MemStStrCopy
  loc_B56424: FLdPr Me
  loc_B56427: VCallAd Control_ID_CodiFifuMsk
  loc_B5642A: FStAdFunc var_E0
  loc_B5642D: FLdPr Me
  loc_B56430: VCallAd Control_ID_DetaFifuLbl
  loc_B56433: FStAdFunc var_CC
  loc_B56436: FLdRfVar var_CC
  loc_B56439: FLdZeroAd var_E0
  loc_B5643C: FStAdFuncNoPop
  loc_B5643F: CastAd
  loc_B56442: FStAdFunc var_90
  loc_B56445: FLdRfVar var_90
  loc_B56448: FLdPr Me
  loc_B5644B: MemLdRfVar from_stack_1.global_68
  loc_B5644E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B56453: IStI2 KeyAscii
  loc_B56456: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_B56461: ILdI2 KeyAscii
  loc_B56464: NotI4
  loc_B56465: BranchF loc_B56496
  loc_B56468: FLdRfVar var_A4
  loc_B5646B: FLdPr Me
  loc_B5646E: MemLdRfVar from_stack_1.global_100
  loc_B56471: NewIfNullPr tblfinalidad
  loc_B56474: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_B56479: ILdRf var_A4
  loc_B5647C: FLdPr Me
  loc_B5647F: VCallAd Control_ID_DetaFifuLbl
  loc_B56482: FStAdFunc var_88
  loc_B56485: FLdPr var_88
  loc_B56488: Me.Caption = from_stack_1
  loc_B5648D: FFree1Str var_A4
  loc_B56490: FFree1Ad var_88
  loc_B56493: Branch loc_B564B0
  loc_B56496: LitVarStr var_DC, vbNullString
  loc_B5649B: PopAdLdVar
  loc_B5649C: FLdPr Me
  loc_B5649F: VCallAd Control_ID_CodiFifuMsk
  loc_B564A2: FStAdFunc var_88
  loc_B564A5: FLdPr var_88
  loc_B564A8: LateIdSt
  loc_B564AD: FFree1Ad var_88
  loc_B564B0: ExitProcHresult
  loc_B564B1: MemLdFPR4 global_1039
End Sub

Private Sub CodiFifuMsk_KeyPress(KeyAscii As Integer) '9AE0B4
  'Data Table: 49566C
  loc_9AE014: FLdPr Me
  loc_9AE017: VCallAd Control_ID_CodiFifuMsk
  loc_9AE01A: FStAdFunc var_88
  loc_9AE01D: FLdPr var_88
  loc_9AE020: LateIdLdVar var_98 DispID_22 0
  loc_9AE027: PopAd
  loc_9AE029: LitI4 0
  loc_9AE02E: LitI4 -1
  loc_9AE033: LitI4 1
  loc_9AE038: LitStr vbNullString
  loc_9AE03B: LitStr "."
  loc_9AE03E: FLdRfVar var_98
  loc_9AE041: CStrVarTmp
  loc_9AE042: FStStrNoPop var_9C
  loc_9AE045: ImpAdCallI2 Replace(, , , , , )
  loc_9AE04A: FStStrNoPop var_A0
  loc_9AE04D: FnLenStr
  loc_9AE04E: LitI2_Byte 6
  loc_9AE050: CI2UI1
  loc_9AE052: LitI2_Byte 1
  loc_9AE054: SubI2
  loc_9AE055: CI4UI1
  loc_9AE056: GtI4
  loc_9AE057: FFreeStr var_9C = ""
  loc_9AE05E: FFree1Ad var_88
  loc_9AE061: FFree1Var var_98 = ""
  loc_9AE064: BranchF loc_9AE0B2
  loc_9AE067: FLdPr Me
  loc_9AE06A: VCallAd Control_ID_CodiFifuMsk
  loc_9AE06D: FStAdFunc var_88
  loc_9AE070: FLdRfVar var_88
  loc_9AE073: ImpAdCallI2 Proc_266_40_A1E128()
  loc_9AE078: FFree1Ad var_88
  loc_9AE07B: BranchF loc_9AE0B2
  loc_9AE07E: ILdI2 KeyAscii
  loc_9AE081: CI4UI1
  loc_9AE082: LitI4 8
  loc_9AE087: NeI4
  loc_9AE088: FLdPr Me
  loc_9AE08B: VCallAd Control_ID_CodiFifuMsk
  loc_9AE08E: FStAdFunc var_88
  loc_9AE091: FLdPr var_88
  loc_9AE094: LateIdLdVar var_98 DispID_17 0
  loc_9AE09B: CI4Var
  loc_9AE09D: LitI4 0
  loc_9AE0A2: EqI4
  loc_9AE0A3: AndI4
  loc_9AE0A4: FFree1Ad var_88
  loc_9AE0A7: FFree1Var var_98 = ""
  loc_9AE0AA: BranchF loc_9AE0B2
  loc_9AE0AD: LitI2_Byte 0
  loc_9AE0AF: IStI2 KeyAscii
  loc_9AE0B2: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_KeyUp(KeyCode As Integer, Shift As Integer) 'A183F8
  'Data Table: 49566C
  loc_A18278: ILdI2 Shift
  loc_A1827B: CI4UI1
  loc_A1827C: LitI4 2
  loc_A18281: EqI4
  loc_A18282: ILdI2 KeyCode
  loc_A18285: CI4UI1
  loc_A18286: LitI4 &H42
  loc_A1828B: EqI4
  loc_A1828C: AndI4
  loc_A1828D: BranchF loc_A183F7
  loc_A18290: LitStr vbNullString
  loc_A18293: ImpAdLdRf MemVar_C3D6E8
  loc_A18296: NewIfNullPr bscFinalidad
  loc_A18299: Call bscFinalidad.sCodiPartPut(from_stack_1v)
  loc_A1829E: FLdPr Me
  loc_A182A1: VCallAd Control_ID_
  loc_A182A4: FStAdFunc var_88
  loc_A182A7: FLdPr var_88
  loc_A182AA: LateIdLdVar var_98 DispID_22 0
  loc_A182B1: CStrVarTmp
  loc_A182B2: FStStrNoPop var_9C
  loc_A182B5: ImpAdLdRf MemVar_C3D6E8
  loc_A182B8: NewIfNullPr bscFinalidad
  loc_A182BB: Call bscFinalidad.sCodiOrgaPut(from_stack_1v)
  loc_A182C0: FFree1Str var_9C
  loc_A182C3: FFree1Ad var_88
  loc_A182C6: FFree1Var var_98 = ""
  loc_A182C9: LitNothing
  loc_A182CB: CastAd
  loc_A182CE: FStAdFuncNoPop
  loc_A182D1: ImpAdLdRf MemVar_C3D6E8
  loc_A182D4: NewIfNullPr bscFinalidad
  loc_A182D7: Call bscFinalidad.global_4320824Set(from_stack_1v)
  loc_A182DC: FFree1Ad var_88
  loc_A182DF: LitVar_Missing var_BC
  loc_A182E2: PopAdLdVar
  loc_A182E3: LitVarI4
  loc_A182EB: PopAdLdVar
  loc_A182EC: ImpAdLdRf MemVar_C3D6E8
  loc_A182EF: NewIfNullPr bscFinalidad
  loc_A182F2: bscFinalidad.Show from_stack_1, from_stack_2
  loc_A182F7: FLdRfVar var_C0
  loc_A182FA: FLdRfVar var_88
  loc_A182FD: ImpAdLdRf MemVar_C3D6E8
  loc_A18300: NewIfNullPr bscFinalidad
  loc_A18303: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_A18308: FLdPr var_88
  loc_A1830B: from_stack_1 = clsbase.RecordCount
  loc_A18310: ILdRf var_C0
  loc_A18313: LitI4 0
  loc_A18318: GtI4
  loc_A18319: FFree1Ad var_88
  loc_A1831C: BranchF loc_A183F7
  loc_A1831F: FLdRfVar var_98
  loc_A18322: FLdRfVar var_CC
  loc_A18325: LitVarStr var_AC, "CodiFifu"
  loc_A1832A: PopAdLdVar
  loc_A1832B: FLdRfVar var_C8
  loc_A1832E: FLdRfVar var_C4
  loc_A18331: FLdRfVar var_88
  loc_A18334: ImpAdLdRf MemVar_C3D6E8
  loc_A18337: NewIfNullPr bscFinalidad
  loc_A1833A: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_A1833F: FLdPr var_88
  loc_A18342: from_stack_1v = clsbase.RsFrmGet()
  loc_A18347: FLdPr var_C4
  loc_A1834A:  = Me.Fields
  loc_A1834F: FLdPr var_C8
  loc_A18352: from_stack_2 = Me.Item(from_stack_1)
  loc_A18357: FLdPr var_CC
  loc_A1835A:  = Me.Value
  loc_A1835F: FLdRfVar var_98
  loc_A18362: CStrVarTmp
  loc_A18363: CVarStr var_DC
  loc_A18366: PopAdLdVar
  loc_A18367: FLdPr Me
  loc_A1836A: VCallAd Control_ID_CodiFifuMsk
  loc_A1836D: FStAdFunc var_E0
  loc_A18370: FLdPr var_E0
  loc_A18373: LateIdSt
  loc_A18378: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A18385: FFreeVar var_98 = ""
  loc_A1838C: FLdRfVar var_98
  loc_A1838F: FLdRfVar var_CC
  loc_A18392: LitVarStr var_AC, "DetaFifu"
  loc_A18397: PopAdLdVar
  loc_A18398: FLdRfVar var_C8
  loc_A1839B: FLdRfVar var_C4
  loc_A1839E: FLdRfVar var_88
  loc_A183A1: ImpAdLdRf MemVar_C3D6E8
  loc_A183A4: NewIfNullPr bscFinalidad
  loc_A183A7: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_A183AC: FLdPr var_88
  loc_A183AF: from_stack_1v = clsbase.RsFrmGet()
  loc_A183B4: FLdPr var_C4
  loc_A183B7:  = Me.Fields
  loc_A183BC: FLdPr var_C8
  loc_A183BF: from_stack_2 = Me.Item(from_stack_1)
  loc_A183C4: FLdPr var_CC
  loc_A183C7:  = Me.Value
  loc_A183CC: FLdRfVar var_98
  loc_A183CF: CStrVarTmp
  loc_A183D0: FStStrNoPop var_9C
  loc_A183D3: FLdPr Me
  loc_A183D6: VCallAd Control_ID_DetaFifuLbl
  loc_A183D9: FStAdFunc var_E0
  loc_A183DC: FLdPr var_E0
  loc_A183DF: Me.Caption = from_stack_1
  loc_A183E4: FFree1Str var_9C
  loc_A183E7: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A183F4: FFree1Var var_98 = ""
  loc_A183F7: ExitProcHresult
End Sub

Private Sub chkSoloPreventiva_Click() '9927B8
  'Data Table: 49566C
  loc_992764: FLdRfVar var_8A
  loc_992767: FLdPr Me
  loc_99276A: VCallAd Control_ID_chkSoloPreventiva
  loc_99276D: FStAdFunc var_88
  loc_992770: FLdPr var_88
  loc_992773:  = Me.Value
  loc_992778: FLdI2 var_8A
  loc_99277B: CI4UI1
  loc_99277C: LitI4 1
  loc_992781: EqI4
  loc_992782: FFree1Ad var_88
  loc_992785: BranchF loc_9927A1
  loc_992788: LitI2_Byte 0
  loc_99278A: FLdPr Me
  loc_99278D: VCallAd Control_ID_CucuPersTxt
  loc_992790: FStAdFunc var_88
  loc_992793: FLdPr var_88
  loc_992796: Me.Enabled = from_stack_1b
  loc_99279B: FFree1Ad var_88
  loc_99279E: Branch loc_9927B7
  loc_9927A1: LitI2_Byte &HFF
  loc_9927A3: FLdPr Me
  loc_9927A6: VCallAd Control_ID_CucuPersTxt
  loc_9927A9: FStAdFunc var_88
  loc_9927AC: FLdPr var_88
  loc_9927AF: Me.Enabled = from_stack_1b
  loc_9927B4: FFree1Ad var_88
  loc_9927B7: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '9A00A4
  'Data Table: 49566C
  loc_9A003C: LitI2_Byte 0
  loc_9A003E: CUI1I2
  loc_9A0040: FLdPr Me
  loc_9A0043: MemStUI1
  loc_9A0047: ILdRf Me
  loc_9A004A: CastAd
  loc_9A004D: FStAdFunc var_88
  loc_9A0050: FLdRfVar var_88
  loc_9A0053: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9A0058: FFree1Ad var_88
  loc_9A005B: LitI4 0
  loc_9A0060: LitI4 0
  loc_9A0065: FLdRfVar var_8C
  loc_9A0068: Redim
  loc_9A0072: FLdPr Me
  loc_9A0075: VCallAd Control_ID_PartidaFlex
  loc_9A0078: CVarAd
  loc_9A007C: ParmAry1St
  loc_9A0082: FLdRfVar var_8C
  loc_9A0085: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_9A008A: FLdRfVar var_8C
  loc_9A008D: Erase
  loc_9A008E: ILdRf Me
  loc_9A0091: CastAd
  loc_9A0094: FStAdFunc var_88
  loc_9A0097: FLdRfVar var_88
  loc_9A009A: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9A009F: FFree1Ad var_88
  loc_9A00A2: ExitProcHresult
End Sub

Private Sub DetaImpuTxt_GotFocus() '94DB50
  'Data Table: 49566C
  loc_94DB3C: FLdPr Me
  loc_94DB3F: VCallAd Control_ID_DetaImpuTxt
  loc_94DB42: CVarAd
  loc_94DB46: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94DB4B: FFree1Var var_94 = ""
  loc_94DB4E: ExitProcHresult
End Sub

Private Sub DetaImpuTxt_Validate(Cancel As Boolean) '9C09F8
  'Data Table: 49566C
  loc_9C093C: FLdRfVar var_8A
  loc_9C093F: FLdPr Me
  loc_9C0942: VCallAd Control_ID_cmdCancelar
  loc_9C0945: FStAdFunc var_88
  loc_9C0948: FLdPr var_88
  loc_9C094B:  = Me.Value
  loc_9C0950: FLdI2 var_8A
  loc_9C0953: NotI4
  loc_9C0954: FLdRfVar var_92
  loc_9C0957: FLdPr Me
  loc_9C095A: VCallAd Control_ID_DetaImpuTxt
  loc_9C095D: FStAdFunc var_90
  loc_9C0960: FLdPr var_90
  loc_9C0963:  = Me.Enabled
  loc_9C0968: FLdI2 var_92
  loc_9C096B: AndI4
  loc_9C096C: FFreeAd var_88 = ""
  loc_9C0973: BranchF loc_9C09F4
  loc_9C0976: FLdRfVar var_98
  loc_9C0979: FLdPr Me
  loc_9C097C: VCallAd Control_ID_DetaImpuTxt
  loc_9C097F: FStAdFunc var_88
  loc_9C0982: FLdPr var_88
  loc_9C0985:  = Me.Text
  loc_9C098A: LitI2_Byte 0
  loc_9C098C: PopTmpLdAd2 var_9A
  loc_9C098F: LitI2_Byte 0
  loc_9C0991: PopTmpLdAd2 var_92
  loc_9C0994: LitI2_Byte 0
  loc_9C0996: PopTmpLdAd2 var_8A
  loc_9C0999: ILdRf var_98
  loc_9C099C: LitStr "Detalle"
  loc_9C099F: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9C09A4: FStStrNoPop var_A0
  loc_9C09A7: FLdPr Me
  loc_9C09AA: MemStStrCopy
  loc_9C09AE: FFreeStr var_98 = ""
  loc_9C09B5: FFree1Ad var_88
  loc_9C09B8: FLdPr Me
  loc_9C09BB: VCallAd Control_ID_DetaImpuTxt
  loc_9C09BE: FStAdFunc var_A8
  loc_9C09C1: LitNothing
  loc_9C09C3: CastAd
  loc_9C09C6: FStAdFunc var_A4
  loc_9C09C9: FLdRfVar var_A4
  loc_9C09CC: FLdZeroAd var_A8
  loc_9C09CF: FStAdFuncNoPop
  loc_9C09D2: CastAd
  loc_9C09D5: FStAdFunc var_90
  loc_9C09D8: FLdRfVar var_90
  loc_9C09DB: FLdPr Me
  loc_9C09DE: MemLdRfVar from_stack_1.global_68
  loc_9C09E1: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C09E6: IStI2 Cancel
  loc_9C09E9: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9C09F4: ExitProcHresult
End Sub

Private Function Proc_118_32_9F109C() '9F109C
  'Data Table: 49566C
  loc_9F0F5C: FLdPr Me
  loc_9F0F5F: VCallAd Control_ID_PartidaFlex
  loc_9F0F62: FStAdFunc var_88
  loc_9F0F65: FLdPr var_88
  loc_9F0F68: LateIdLdVar var_98 DispID_38 0
  loc_9F0F6F: CI4Var
  loc_9F0F71: LitI4 &HFFFF80
  loc_9F0F76: EqI4
  loc_9F0F77: FFree1Ad var_88
  loc_9F0F7A: FFree1Var var_98 = ""
  loc_9F0F7D: BranchF loc_9F1000
  loc_9F0F80: LitI2_Byte 0
  loc_9F0F82: CUI1I2
  loc_9F0F84: FLdPr Me
  loc_9F0F87: MemLdRfVar from_stack_1.global_112
  loc_9F0F8A: FLdPr Me
  loc_9F0F8D: VCallAd Control_ID_PartidaFlex
  loc_9F0F90: FStAdFunc var_88
  loc_9F0F93: FLdPr var_88
  loc_9F0F96: LateIdLdVar var_98 DispID_5 0
  loc_9F0F9D: CI4Var
  loc_9F0F9F: LitI4 1
  loc_9F0FA4: SubI4
  loc_9F0FA5: CUI1I4
  loc_9F0FA7: FFree1Ad var_88
  loc_9F0FAA: FFree1Var var_98 = ""
  loc_9F0FAD: ForUI1 var_9C
  loc_9F0FB3: FLdPr Me
  loc_9F0FB6: MemLdUI1 global_112
  loc_9F0FBA: CI4UI1
  loc_9F0FBB: CVarI4
  loc_9F0FBF: PopAdLdVar
  loc_9F0FC0: FLdPr Me
  loc_9F0FC3: VCallAd Control_ID_PartidaFlex
  loc_9F0FC6: FStAdFunc var_88
  loc_9F0FC9: FLdPr var_88
  loc_9F0FCC: LateIdSt
  loc_9F0FD1: FFree1Ad var_88
  loc_9F0FD4: LitVarI4
  loc_9F0FDC: PopAdLdVar
  loc_9F0FDD: FLdPr Me
  loc_9F0FE0: VCallAd Control_ID_PartidaFlex
  loc_9F0FE3: FStAdFunc var_88
  loc_9F0FE6: FLdPr var_88
  loc_9F0FE9: LateIdSt
  loc_9F0FEE: FFree1Ad var_88
  loc_9F0FF1: FLdPr Me
  loc_9F0FF4: MemLdRfVar from_stack_1.global_112
  loc_9F0FF7: NextUI1
  loc_9F0FFD: Branch loc_9F107D
  loc_9F1000: LitI2_Byte 0
  loc_9F1002: CUI1I2
  loc_9F1004: FLdPr Me
  loc_9F1007: MemLdRfVar from_stack_1.global_112
  loc_9F100A: FLdPr Me
  loc_9F100D: VCallAd Control_ID_PartidaFlex
  loc_9F1010: FStAdFunc var_88
  loc_9F1013: FLdPr var_88
  loc_9F1016: LateIdLdVar var_98 DispID_5 0
  loc_9F101D: CI4Var
  loc_9F101F: LitI4 1
  loc_9F1024: SubI4
  loc_9F1025: CUI1I4
  loc_9F1027: FFree1Ad var_88
  loc_9F102A: FFree1Var var_98 = ""
  loc_9F102D: ForUI1 var_C0
  loc_9F1033: FLdPr Me
  loc_9F1036: MemLdUI1 global_112
  loc_9F103A: CI4UI1
  loc_9F103B: CVarI4
  loc_9F103F: PopAdLdVar
  loc_9F1040: FLdPr Me
  loc_9F1043: VCallAd Control_ID_PartidaFlex
  loc_9F1046: FStAdFunc var_88
  loc_9F1049: FLdPr var_88
  loc_9F104C: LateIdSt
  loc_9F1051: FFree1Ad var_88
  loc_9F1054: LitVarI4
  loc_9F105C: PopAdLdVar
  loc_9F105D: FLdPr Me
  loc_9F1060: VCallAd Control_ID_PartidaFlex
  loc_9F1063: FStAdFunc var_88
  loc_9F1066: FLdPr var_88
  loc_9F1069: LateIdSt
  loc_9F106E: FFree1Ad var_88
  loc_9F1071: FLdPr Me
  loc_9F1074: MemLdRfVar from_stack_1.global_112
  loc_9F1077: NextUI1
  loc_9F107D: LitVarI4
  loc_9F1085: PopAdLdVar
  loc_9F1086: FLdPr Me
  loc_9F1089: VCallAd Control_ID_PartidaFlex
  loc_9F108C: FStAdFunc var_88
  loc_9F108F: FLdPr var_88
  loc_9F1092: LateIdSt
  loc_9F1097: FFree1Ad var_88
  loc_9F109A: ExitProcHresult
End Function

Private Function Proc_118_33_9B9DB8() '9B9DB8
  'Data Table: 49566C
  loc_9B9CF4: FLdPr Me
  loc_9B9CF7: VCallAd Control_ID_PartidaFlex
  loc_9B9CFA: FStAdFunc var_88
  loc_9B9CFD: FLdPr var_88
  loc_9B9D00: LateIdCall
  loc_9B9D08: LitVarI4
  loc_9B9D10: PopAdLdVar
  loc_9B9D11: FLdPr var_88
  loc_9B9D14: LateIdSt
  loc_9B9D19: LitVarI4
  loc_9B9D21: PopAdLdVar
  loc_9B9D22: LitVarI4
  loc_9B9D2A: PopAdLdVar
  loc_9B9D2B: LitVarStr var_D8, "Partida"
  loc_9B9D30: PopAdLdVar
  loc_9B9D31: FLdPr var_88
  loc_9B9D34: LateIdCallSt
  loc_9B9D3C: LitVarI4
  loc_9B9D44: PopAdLdVar
  loc_9B9D45: LitVarI4
  loc_9B9D4D: PopAdLdVar
  loc_9B9D4E: LitVarStr var_D8, "Partida (Detalle)"
  loc_9B9D53: PopAdLdVar
  loc_9B9D54: FLdPr var_88
  loc_9B9D57: LateIdCallSt
  loc_9B9D5F: LitVarI4
  loc_9B9D67: PopAdLdVar
  loc_9B9D68: LitVarI4
  loc_9B9D70: PopAdLdVar
  loc_9B9D71: LitVarStr var_D8, "Importe"
  loc_9B9D76: PopAdLdVar
  loc_9B9D77: FLdPr var_88
  loc_9B9D7A: LateIdCallSt
  loc_9B9D82: LitVarI4
  loc_9B9D8A: PopAdLdVar
  loc_9B9D8B: LitVarI4
  loc_9B9D93: PopAdLdVar
  loc_9B9D94: LitVarStr var_D8, "correcto"
  loc_9B9D99: PopAdLdVar
  loc_9B9D9A: FLdPr var_88
  loc_9B9D9D: LateIdCallSt
  loc_9B9DA5: FLdPr var_88
  loc_9B9DA8: LateIdCall
  loc_9B9DB0: LitNothing
  loc_9B9DB2: FStAd var_88 
  loc_9B9DB6: ExitProcHresult
End Function
