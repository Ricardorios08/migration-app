VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmPagado
  Caption = "Pago o Anulación de la Remisión de la Orden de Pago"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmPagado.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 10455
  ClientHeight = 9000
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
      OleObjectBlob = "frmPagado.frx":08CA
    End
  End
  Begin MSComctlLib.ProgressBar ProgressBar
    Left = 120
    Top = 5040
    Width = 13695
    Height = 495
    Visible = 0   'False
    TabIndex = 8
    OleObjectBlob = "frmPagado.frx":0952
  End
  Begin VB.CheckBox chkSeleTodo
    Caption = "Selecciona Todo"
    Left = 240
    Top = 5760
    Width = 2175
    Height = 255
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
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 2280
    Width = 13695
    Height = 3255
    TabIndex = 7
    OleObjectBlob = "frmPagado.frx":09BA
  End
  Begin MSFlexGridLib.MSFlexGrid FlexCheque
    Left = 120
    Top = 6240
    Width = 13695
    Height = 2775
    TabIndex = 10
    OleObjectBlob = "frmPagado.frx":0F68
  End
  Begin MSMask.MaskEdBox FechaMsk
    Left = 3240
    Top = 1770
    Width = 1335
    Height = 360
    TabIndex = 6
    OleObjectBlob = "frmPagado.frx":1054
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmPagado.frx":1104
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 10455
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmPagado.frx":8C82
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmPagado.frx":91DE
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin VB.Label Label1
    Caption = "Fecha de Pago o Anulación:"
    Left = 120
    Top = 1800
    Width = 3105
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
End

Attribute VB_Name = "frmPagado"


Private Sub Form_Load() 'A3E1DC
  'Data Table: 44AAFC
  loc_A3DFC8: ImpAdLdI2 MemVar_C3D064
  loc_A3DFCB: LitI2 2025
  loc_A3DFCE: LeI2
  loc_A3DFCF: BranchF loc_A3DFEF
  loc_A3DFD2: LitVarI4
  loc_A3DFDA: PopAdLdVar
  loc_A3DFDB: FLdPr Me
  loc_A3DFDE: VCallAd Control_ID_dgdABMS
  loc_A3DFE1: FStAdFunc var_AC
  loc_A3DFE4: FLdPr var_AC
  loc_A3DFE7: LateIdSt
  loc_A3DFEC: FFree1Ad var_AC
  loc_A3DFEF: LitI2_Byte 0
  loc_A3DFF1: CR8I2
  loc_A3DFF2: PopFPR4
  loc_A3DFF3: FLdPr Me
  loc_A3DFF6: Me.Left = from_stack_1s
  loc_A3DFFB: LitI2_Byte 0
  loc_A3DFFD: CR8I2
  loc_A3DFFE: PopFPR4
  loc_A3DFFF: FLdPr Me
  loc_A3E002: Me.Top = from_stack_1s
  loc_A3E007: LitI2_Byte &HFF
  loc_A3E009: PopTmpLdAd2 var_AE
  loc_A3E00C: Call Proc_130_23_A5B000()
  loc_A3E011: LitStr vbNullString
  loc_A3E014: FLdPr Me
  loc_A3E017: MemStStrCopy
  loc_A3E01B: LitStr "SELECT *"
  loc_A3E01E: LitStr " FROM ("
  loc_A3E021: ConcatStr
  loc_A3E022: FStStr var_88
  loc_A3E025: ILdRf var_88
  loc_A3E028: LitStr "SELECT op.*, p.FeretePaco"
  loc_A3E02B: ConcatStr
  loc_A3E02C: FStStrNoPop var_B4
  loc_A3E02F: LitStr ", IF(op.CargoOrpa=0,'No','Si') sCargoOrpa"
  loc_A3E032: ConcatStr
  loc_A3E033: FStStrNoPop var_B8
  loc_A3E036: LitStr " FROM ordenpago op"
  loc_A3E039: ConcatStr
  loc_A3E03A: FStStrNoPop var_BC
  loc_A3E03D: LitStr " INNER JOIN paraconta p ON p.PeriInfo = op.PeriInfo"
  loc_A3E040: ConcatStr
  loc_A3E041: FStStrNoPop var_C0
  loc_A3E044: LitStr " INNER JOIN cheque ch USE INDEX (idxcheq02) ON ch.PeriInfo = op.PeriInfo AND ch.NumeOrpa = op.NumeOrpa"
  loc_A3E047: ConcatStr
  loc_A3E048: FStStrNoPop var_C4
  loc_A3E04B: LitStr " AND FepaCheq IS NULL AND FeanCheq IS NULL"
  loc_A3E04E: ConcatStr
  loc_A3E04F: FStStrNoPop var_C8
  loc_A3E052: LitStr " WHERE op.PeriInfo = "
  loc_A3E055: ConcatStr
  loc_A3E056: FStStrNoPop var_CC
  loc_A3E059: ImpAdLdI2 MemVar_C3D064
  loc_A3E05C: CStrUI1
  loc_A3E05E: FStStrNoPop var_D0
  loc_A3E061: ConcatStr
  loc_A3E062: FStStrNoPop var_D4
  loc_A3E065: LitStr " AND FeanOrpa IS NULL AND FereOrpa IS NOT NULL AND FearOrpa IS NULL"
  loc_A3E068: ConcatStr
  loc_A3E069: FStStrNoPop var_D8
  loc_A3E06C: LitStr " GROUP BY op.PeriInfo, op.NumeOrpa"
  loc_A3E06F: ConcatStr
  loc_A3E070: FStStr var_88
  loc_A3E073: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_A3E08A: LitStr "Municipalidad de Guaymallén"
  loc_A3E08D: LitStr "Municipalidad de Maipú"
  loc_A3E090: EqStr
  loc_A3E092: BranchF loc_A3E103
  loc_A3E095: ILdRf var_88
  loc_A3E098: LitStr " UNION ALL"
  loc_A3E09B: ConcatStr
  loc_A3E09C: FStStrNoPop var_B4
  loc_A3E09F: LitStr " SELECT op.*, p.FeretePaco"
  loc_A3E0A2: ConcatStr
  loc_A3E0A3: FStStrNoPop var_B8
  loc_A3E0A6: LitStr ", IF(op.CargoOrpa=0,'No','Si') sCargoOrpa"
  loc_A3E0A9: ConcatStr
  loc_A3E0AA: FStStrNoPop var_BC
  loc_A3E0AD: LitStr " FROM ordenpago op"
  loc_A3E0B0: ConcatStr
  loc_A3E0B1: FStStrNoPop var_C0
  loc_A3E0B4: LitStr " INNER JOIN paraconta p ON p.PeriInfo = op.PeriInfo"
  loc_A3E0B7: ConcatStr
  loc_A3E0B8: FStStrNoPop var_C4
  loc_A3E0BB: LitStr " INNER JOIN liquidaneto lqn ON lqn.PeriInfo = op.PeriInfo AND lqn.ExpeImpu = op.ExpeImpu AND lqn.NumeLiqu = op.NumeLiqu AND lqn.FechCaja IS NULL"
  loc_A3E0BE: ConcatStr
  loc_A3E0BF: FStStrNoPop var_C8
  loc_A3E0C2: LitStr " AND lqn.CodiRete = 114"
  loc_A3E0C5: ConcatStr
  loc_A3E0C6: FStStrNoPop var_CC
  loc_A3E0C9: LitStr " WHERE op.PeriInfo = "
  loc_A3E0CC: ConcatStr
  loc_A3E0CD: FStStrNoPop var_D0
  loc_A3E0D0: ImpAdLdI2 MemVar_C3D064
  loc_A3E0D3: CStrUI1
  loc_A3E0D5: FStStrNoPop var_D4
  loc_A3E0D8: ConcatStr
  loc_A3E0D9: FStStrNoPop var_D8
  loc_A3E0DC: LitStr " And FeanOrpa Is Null And FereOrpa Is Not Null And FearOrpa Is Null"
  loc_A3E0DF: ConcatStr
  loc_A3E0E0: FStStrNoPop var_DC
  loc_A3E0E3: LitStr " GROUP BY op.PeriInfo, op.NumeOrpa"
  loc_A3E0E6: ConcatStr
  loc_A3E0E7: FStStr var_88
  loc_A3E0EA: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_A3E103: ILdRf var_88
  loc_A3E106: LitStr ") AS tbl"
  loc_A3E109: ConcatStr
  loc_A3E10A: FStStrNoPop var_B4
  loc_A3E10D: LitStr " GROUP BY tbl.NumeOrpa ORDER BY tbl.NumeOrpa;"
  loc_A3E110: ConcatStr
  loc_A3E111: FStStr var_88
  loc_A3E114: FFree1Str var_B4
  loc_A3E117: ILdRf var_88
  loc_A3E11A: FLdPr Me
  loc_A3E11D: MemLdRfVar from_stack_1.global_56
  loc_A3E120: NewIfNullPr clsordenpago
  loc_A3E123: Call clsordenpago.RedefineRS(from_stack_1v)
  loc_A3E128: LitVarI2 var_98, 0
  loc_A3E12D: PopAdLdVar
  loc_A3E12E: LitStr "Orden de Pago"
  loc_A3E131: FLdPr Me
  loc_A3E134: VCallAd Control_ID_FiltroCbo
  loc_A3E137: FStAdFunc var_AC
  loc_A3E13A: FLdPr var_AC
  loc_A3E13D: Me.AddItem from_stack_1, from_stack_2
  loc_A3E142: FFree1Ad var_AC
  loc_A3E145: LitVarI2 var_98, 1
  loc_A3E14A: PopAdLdVar
  loc_A3E14B: LitStr "Expediente"
  loc_A3E14E: FLdPr Me
  loc_A3E151: VCallAd Control_ID_FiltroCbo
  loc_A3E154: FStAdFunc var_AC
  loc_A3E157: FLdPr var_AC
  loc_A3E15A: Me.AddItem from_stack_1, from_stack_2
  loc_A3E15F: FFree1Ad var_AC
  loc_A3E162: LitI2_Byte 0
  loc_A3E164: FLdPr Me
  loc_A3E167: VCallAd Control_ID_FiltroCbo
  loc_A3E16A: FStAdFunc var_AC
  loc_A3E16D: FLdPr var_AC
  loc_A3E170: Me.ListIndex = from_stack_1
  loc_A3E175: FFree1Ad var_AC
  loc_A3E178: Call cmdCancelar_Click()
  loc_A3E17D: LitI4 0
  loc_A3E182: LitI4 1
  loc_A3E187: FLdRfVar var_E0
  loc_A3E18A: Redim
  loc_A3E194: FLdPr Me
  loc_A3E197: MemLdRfVar from_stack_1.global_56
  loc_A3E19A: NewIfNullAd
  loc_A3E19D: FStAd var_AC 
  loc_A3E1A1: FLdRfVar var_AC
  loc_A3E1A4: CVarRef
  loc_A3E1A9: ParmAry1St
  loc_A3E1AF: FLdPr Me
  loc_A3E1B2: VCallAd Control_ID_dgdABMS
  loc_A3E1B5: CVarAd
  loc_A3E1B9: ParmAry1St
  loc_A3E1BF: FLdRfVar var_E0
  loc_A3E1C2: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A3E1C7: ILdRf var_AC
  loc_A3E1CA: CastAd
  loc_A3E1CD: FLdPr Me
  loc_A3E1D0: MemStAdFunc
  loc_A3E1D4: FLdRfVar var_E0
  loc_A3E1D7: Erase
  loc_A3E1D8: FFree1Ad var_AC
  loc_A3E1DB: ExitProcHresult
End Sub

Private Sub Form_Activate() '9F7458
  'Data Table: 44AAFC
  loc_9F7324: FLdRfVar var_C2
  loc_9F7327: FLdRfVar var_C0
  loc_9F732A: LitVarI2 var_B8, 1
  loc_9F732F: FLdPr Me
  loc_9F7332: VCallAd Control_ID_tlbABMS
  loc_9F7335: FStAdFunc var_88
  loc_9F7338: FLdPr var_88
  loc_9F733B: LateIdLdVar var_98 DispID_3 0
  loc_9F7342: CastAdVar Me
  loc_9F7346: FStAdFunc var_BC
  loc_9F7349: FLdPr var_BC
  loc_9F734C:  = Me.Buttons.ControlDefault
  loc_9F7351: FLdPr var_C0
  loc_9F7354:  = Me.Enabled
  loc_9F7359: FLdI2 var_C2
  loc_9F735C: FFreeAd var_88 = "": var_BC = ""
  loc_9F7365: FFreeVar var_98 = ""
  loc_9F736C: BranchF loc_9F7455
  loc_9F736F: FLdRfVar var_C8
  loc_9F7372: FLdPr Me
  loc_9F7375: MemLdRfVar from_stack_1.global_56
  loc_9F7378: NewIfNullPr clsordenpago
  loc_9F737B: from_stack_1 = clsordenpago.RecordCount
  loc_9F7380: ILdRf var_C8
  loc_9F7383: LitI4 0
  loc_9F7388: GtI4
  loc_9F7389: FLdRfVar var_CC
  loc_9F738C: FLdPr Me
  loc_9F738F: MemLdRfVar from_stack_1.global_56
  loc_9F7392: NewIfNullPr clsordenpago
  loc_9F7395: from_stack_1 = clsordenpago.AbsolutePosition
  loc_9F739A: ILdRf var_CC
  loc_9F739D: LitI4 0
  loc_9F73A2: GtI4
  loc_9F73A3: AndI4
  loc_9F73A4: BranchF loc_9F7447
  loc_9F73A7: FLdRfVar var_98
  loc_9F73AA: FLdRfVar var_C0
  loc_9F73AD: LitVarStr var_A8, "PeriInfo"
  loc_9F73B2: PopAdLdVar
  loc_9F73B3: FLdRfVar var_BC
  loc_9F73B6: FLdRfVar var_88
  loc_9F73B9: FLdPr Me
  loc_9F73BC: MemLdRfVar from_stack_1.global_56
  loc_9F73BF: NewIfNullPr clsordenpago
  loc_9F73C2: from_stack_1v = clsordenpago.RsFrmGet()
  loc_9F73C7: FLdPr var_88
  loc_9F73CA:  = Me.Fields
  loc_9F73CF: FLdPr var_BC
  loc_9F73D2: from_stack_2 = Me.Item(from_stack_1)
  loc_9F73D7: FLdPr var_C0
  loc_9F73DA:  = Me.Value
  loc_9F73DF: FLdRfVar var_B8
  loc_9F73E2: FLdRfVar var_E8
  loc_9F73E5: LitVarStr var_E4, "NumeOrpa"
  loc_9F73EA: PopAdLdVar
  loc_9F73EB: FLdRfVar var_D4
  loc_9F73EE: FLdRfVar var_D0
  loc_9F73F1: FLdPr Me
  loc_9F73F4: MemLdRfVar from_stack_1.global_56
  loc_9F73F7: NewIfNullPr clsordenpago
  loc_9F73FA: from_stack_1v = clsordenpago.RsFrmGet()
  loc_9F73FF: FLdPr var_D0
  loc_9F7402:  = Me.Fields
  loc_9F7407: FLdPr var_D4
  loc_9F740A: from_stack_2 = Me.Item(from_stack_1)
  loc_9F740F: FLdPr var_E8
  loc_9F7412:  = Me.Value
  loc_9F7417: FLdRfVar var_B8
  loc_9F741A: CI4Var
  loc_9F741C: FLdRfVar var_98
  loc_9F741F: CI2Var
  loc_9F7420: FLdPr Me
  loc_9F7423: MemLdRfVar from_stack_1.global_56
  loc_9F7426: NewIfNullPr clsordenpago
  loc_9F7429: Call clsordenpago.Encontrar(from_stack_1v, from_stack_2v)
  loc_9F742E: FFreeAd var_88 = "": var_BC = "": var_D0 = "": var_D4 = "": var_C0 = ""
  loc_9F743D: FFreeVar var_98 = ""
  loc_9F7444: Branch loc_9F7455
  loc_9F7447: FLdPr Me
  loc_9F744A: MemLdRfVar from_stack_1.global_56
  loc_9F744D: NewIfNullPr clsordenpago
  loc_9F7450: Call clsordenpago.Requery()
  loc_9F7455: ExitProcHresult
  loc_9F7456: PopAdLd4
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '94823C
  'Data Table: 44AAFC
  loc_948228: ILdI2 KeyAscii
  loc_94822B: CI4UI1
  loc_94822C: LitI4 &HD
  loc_948231: EqI4
  loc_948232: BranchF loc_94823A
  loc_948235: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_94823A: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '96521C
  'Data Table: 44AAFC
  loc_965204: ILdI2 KeyCode
  loc_965207: ILdRf Me
  loc_96520A: CastAd
  loc_96520D: FStAdFunc var_88
  loc_965210: FLdRfVar var_88
  loc_965213: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_965218: FFree1Ad var_88
  loc_96521B: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '963634
  'Data Table: 44AAFC
  loc_96361C: FLdPr Me
  loc_96361F: VCallAd Control_ID_dgdABMS
  loc_963622: FStAdFunc var_88
  loc_963625: FLdRfVar var_88
  loc_963628: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_96362D: FFree1Ad var_88
  loc_963630: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '958CB0
  'Data Table: 44AAFC
  loc_958C98: FLdPr Me
  loc_958C9B: VCallAd Control_ID_dgdABMS
  loc_958C9E: FStAdFunc var_88
  loc_958CA1: FLdRfVar var_88
  loc_958CA4: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_958CA9: FFree1Ad var_88
  loc_958CAC: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99A418
  'Data Table: 44AAFC
  loc_99A3BC: FLdRfVar var_B4
  loc_99A3BF: FLdRfVar var_B0
  loc_99A3C2: FLdI2 ColIndex
  loc_99A3C5: CVarI2 var_A8
  loc_99A3C8: PopAdLdVar
  loc_99A3C9: FLdPr Me
  loc_99A3CC: VCallAd Control_ID_dgdABMS
  loc_99A3CF: FStAdFunc var_88
  loc_99A3D2: FLdPr var_88
  loc_99A3D5: LateIdLdVar var_98 DispID_105 0
  loc_99A3DC: CastAdVar Me
  loc_99A3E0: FStAdFunc var_AC
  loc_99A3E3: FLdPr var_AC
  loc_99A3E6: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99A3EB: FLdPr var_B0
  loc_99A3EE:  = Me.DataField
  loc_99A3F3: FLdZeroAd var_B4
  loc_99A3F6: PopTmpLdAdStr
  loc_99A3FA: FLdPr Me
  loc_99A3FD: MemLdRfVar from_stack_1.global_56
  loc_99A400: NewIfNullPr clsordenpago
  loc_99A403: Call clsordenpago.Sort(from_stack_1v)
  loc_99A408: FFree1Str var_B8
  loc_99A40B: FFreeAd var_88 = "": var_AC = ""
  loc_99A414: FFree1Var var_98 = ""
  loc_99A417: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'B68464
  'Data Table: 44AAFC
  loc_B679EC: LitI2_Byte 0
  loc_B679EE: PopTmpLdAd2 var_86
  loc_B679F1: Call Proc_130_23_A5B000()
  loc_B679F6: FLdRfVar var_8C
  loc_B679F9: FLdPr Me
  loc_B679FC: MemLdRfVar from_stack_1.global_56
  loc_B679FF: NewIfNullPr clsordenpago
  loc_B67A02: from_stack_1 = clsordenpago.RecordCount
  loc_B67A07: ILdRf var_8C
  loc_B67A0A: LitI4 0
  loc_B67A0F: GtI4
  loc_B67A10: FLdRfVar var_90
  loc_B67A13: FLdPr Me
  loc_B67A16: MemLdRfVar from_stack_1.global_56
  loc_B67A19: NewIfNullPr clsordenpago
  loc_B67A1C: from_stack_1 = clsordenpago.AbsolutePosition
  loc_B67A21: ILdRf var_90
  loc_B67A24: LitI4 0
  loc_B67A29: GtI4
  loc_B67A2A: AndI4
  loc_B67A2B: BranchF loc_B68463
  loc_B67A2E: FLdRfVar var_86
  loc_B67A31: FLdPr Me
  loc_B67A34: MemLdRfVar from_stack_1.global_56
  loc_B67A37: NewIfNullPr clsordenpago
  loc_B67A3A: from_stack_1 = clsordenpago.BOF
  loc_B67A3F: FLdI2 var_86
  loc_B67A42: BranchF loc_B67A53
  loc_B67A45: FLdPr Me
  loc_B67A48: MemLdRfVar from_stack_1.global_56
  loc_B67A4B: NewIfNullPr clsordenpago
  loc_B67A4E: Call clsordenpago.MoveFirst()
  loc_B67A53: FLdRfVar var_86
  loc_B67A56: FLdPr Me
  loc_B67A59: MemLdRfVar from_stack_1.global_56
  loc_B67A5C: NewIfNullPr clsordenpago
  loc_B67A5F: from_stack_1 = clsordenpago.EOF
  loc_B67A64: FLdI2 var_86
  loc_B67A67: BranchF loc_B67A78
  loc_B67A6A: FLdPr Me
  loc_B67A6D: MemLdRfVar from_stack_1.global_56
  loc_B67A70: NewIfNullPr clsordenpago
  loc_B67A73: Call clsordenpago.MoveLast()
  loc_B67A78: LitStr "SELECT cheque.*, DetaProv, PainProv, DetaBanc, IFNULL(MailPers,'') MailPers, IF(AutoCheq=1,'cheque manual',IF(AutoCheq=2,'cheque impreso',IF(AutoCheq=4,'eCheq','Transferencia'))) FormaPago"
  loc_B67A7B: LitStr " FROM cheque"
  loc_B67A7E: ConcatStr
  loc_B67A7F: FStStrNoPop var_94
  loc_B67A82: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = cheque.CucuPers"
  loc_B67A85: ConcatStr
  loc_B67A86: FStStrNoPop var_98
  loc_B67A89: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = cheque.CucuPers"
  loc_B67A8C: ConcatStr
  loc_B67A8D: FStStrNoPop var_9C
  loc_B67A90: LitStr " INNER JOIN banco ON banco.PeriInfo = cheque.PeriInfo AND banco.CodiBanc = cheque.CodiBanc"
  loc_B67A93: ConcatStr
  loc_B67A94: FStStrNoPop var_A0
  loc_B67A97: LitStr " WHERE cheque.PeriInfo = "
  loc_B67A9A: ConcatStr
  loc_B67A9B: CVarStr var_DC
  loc_B67A9E: FLdRfVar var_CC
  loc_B67AA1: FLdRfVar var_BC
  loc_B67AA4: LitVarStr var_B8, "PeriInfo"
  loc_B67AA9: PopAdLdVar
  loc_B67AAA: FLdRfVar var_A8
  loc_B67AAD: FLdRfVar var_A4
  loc_B67AB0: FLdPr Me
  loc_B67AB3: MemLdRfVar from_stack_1.global_56
  loc_B67AB6: NewIfNullPr clsordenpago
  loc_B67AB9: from_stack_1v = clsordenpago.RsFrmGet()
  loc_B67ABE: FLdPr var_A4
  loc_B67AC1:  = Me.Fields
  loc_B67AC6: FLdPr var_A8
  loc_B67AC9: from_stack_2 = Me.Item(from_stack_1)
  loc_B67ACE: FLdPr var_BC
  loc_B67AD1:  = Me.Value
  loc_B67AD6: FLdRfVar var_CC
  loc_B67AD9: ConcatVar var_EC
  loc_B67ADD: LitVarStr var_FC, " AND NumeOrpa = "
  loc_B67AE2: ConcatVar var_10C
  loc_B67AE6: FLdRfVar var_138
  loc_B67AE9: FLdRfVar var_128
  loc_B67AEC: LitVarStr var_124, "NumeOrpa"
  loc_B67AF1: PopAdLdVar
  loc_B67AF2: FLdRfVar var_114
  loc_B67AF5: FLdRfVar var_110
  loc_B67AF8: FLdPr Me
  loc_B67AFB: MemLdRfVar from_stack_1.global_56
  loc_B67AFE: NewIfNullPr clsordenpago
  loc_B67B01: from_stack_1v = clsordenpago.RsFrmGet()
  loc_B67B06: FLdPr var_110
  loc_B67B09:  = Me.Fields
  loc_B67B0E: FLdPr var_114
  loc_B67B11: from_stack_2 = Me.Item(from_stack_1)
  loc_B67B16: FLdPr var_128
  loc_B67B19:  = Me.Value
  loc_B67B1E: FLdRfVar var_138
  loc_B67B21: ConcatVar var_148
  loc_B67B25: LitVarStr var_158, " AND FepaCheq IS NULL AND FeanCheq IS NULL"
  loc_B67B2A: ConcatVar var_168
  loc_B67B2E: LitVarStr var_178, " ORDER BY DetaProv, CucuPers;"
  loc_B67B33: ConcatVar var_188
  loc_B67B37: CStrVarVal var_18C
  loc_B67B3B: FLdPr Me
  loc_B67B3E: MemLdRfVar from_stack_1.global_60
  loc_B67B41: NewIfNullPr clscheque
  loc_B67B44: Call clscheque.RedefineRS(from_stack_1v)
  loc_B67B49: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_B67B56: FFreeAd var_A4 = "": var_A8 = "": var_BC = "": var_110 = "": var_114 = ""
  loc_B67B65: FFreeVar var_DC = "": var_CC = "": var_EC = "": var_10C = "": var_138 = "": var_148 = "": var_168 = ""
  loc_B67B78: FLdRfVar var_8C
  loc_B67B7B: FLdPr Me
  loc_B67B7E: MemLdRfVar from_stack_1.global_60
  loc_B67B81: NewIfNullPr clscheque
  loc_B67B84: from_stack_1 = clscheque.RecordCount
  loc_B67B89: ILdRf var_8C
  loc_B67B8C: LitI4 0
  loc_B67B91: GtI4
  loc_B67B92: BranchF loc_B68002
  loc_B67B95: FLdPr Me
  loc_B67B98: MemLdRfVar from_stack_1.global_60
  loc_B67B9B: NewIfNullPr clscheque
  loc_B67B9E: Call clscheque.MoveFirst()
  loc_B67BA3: FLdRfVar var_86
  loc_B67BA6: FLdPr Me
  loc_B67BA9: MemLdRfVar from_stack_1.global_60
  loc_B67BAC: NewIfNullPr clscheque
  loc_B67BAF: from_stack_1 = clscheque.EOF
  loc_B67BB4: FLdI2 var_86
  loc_B67BB7: NotI4
  loc_B67BB8: BranchF loc_B67FFF
  loc_B67BBB: FLdRfVar var_27C
  loc_B67BBE: LitVarStr var_278, "ImpoCheq"
  loc_B67BC3: PopAdLdVar
  loc_B67BC4: FLdRfVar var_268
  loc_B67BC7: FLdRfVar var_264
  loc_B67BCA: FLdPr Me
  loc_B67BCD: MemLdRfVar from_stack_1.global_60
  loc_B67BD0: NewIfNullPr clscheque
  loc_B67BD3: from_stack_1v = clscheque.RsFrmGet()
  loc_B67BD8: FLdPr var_264
  loc_B67BDB:  = Me.Fields
  loc_B67BE0: FLdPr var_268
  loc_B67BE3: from_stack_2 = Me.Item(from_stack_1)
  loc_B67BE8: FLdRfVar var_DC
  loc_B67BEB: FLdRfVar var_BC
  loc_B67BEE: LitVarStr var_B8, "CucuPers"
  loc_B67BF3: PopAdLdVar
  loc_B67BF4: FLdRfVar var_A8
  loc_B67BF7: FLdRfVar var_A4
  loc_B67BFA: FLdPr Me
  loc_B67BFD: MemLdRfVar from_stack_1.global_60
  loc_B67C00: NewIfNullPr clscheque
  loc_B67C03: from_stack_1v = clscheque.RsFrmGet()
  loc_B67C08: FLdPr var_A4
  loc_B67C0B:  = Me.Fields
  loc_B67C10: FLdPr var_A8
  loc_B67C13: from_stack_2 = Me.Item(from_stack_1)
  loc_B67C18: FLdPr var_BC
  loc_B67C1B:  = Me.Value
  loc_B67C20: FLdRfVar var_DC
  loc_B67C23: LitI4 9
  loc_B67C28: FLdRfVar var_CC
  loc_B67C2B: ImpAdCallFPR4  = Chr()
  loc_B67C30: FLdRfVar var_CC
  loc_B67C33: ConcatVar var_EC
  loc_B67C37: FLdRfVar var_10C
  loc_B67C3A: FLdRfVar var_128
  loc_B67C3D: LitVarStr var_FC, "DetaProv"
  loc_B67C42: PopAdLdVar
  loc_B67C43: FLdRfVar var_114
  loc_B67C46: FLdRfVar var_110
  loc_B67C49: FLdPr Me
  loc_B67C4C: MemLdRfVar from_stack_1.global_60
  loc_B67C4F: NewIfNullPr clscheque
  loc_B67C52: from_stack_1v = clscheque.RsFrmGet()
  loc_B67C57: FLdPr var_110
  loc_B67C5A:  = Me.Fields
  loc_B67C5F: FLdPr var_114
  loc_B67C62: from_stack_2 = Me.Item(from_stack_1)
  loc_B67C67: FLdPr var_128
  loc_B67C6A:  = Me.Value
  loc_B67C6F: FLdRfVar var_10C
  loc_B67C72: ConcatVar var_138
  loc_B67C76: LitI4 9
  loc_B67C7B: FLdRfVar var_148
  loc_B67C7E: ImpAdCallFPR4  = Chr()
  loc_B67C83: FLdRfVar var_148
  loc_B67C86: ConcatVar var_168
  loc_B67C8A: FLdRfVar var_188
  loc_B67C8D: FLdRfVar var_198
  loc_B67C90: LitVarStr var_124, "CodiBanc"
  loc_B67C95: PopAdLdVar
  loc_B67C96: FLdRfVar var_194
  loc_B67C99: FLdRfVar var_190
  loc_B67C9C: FLdPr Me
  loc_B67C9F: MemLdRfVar from_stack_1.global_60
  loc_B67CA2: NewIfNullPr clscheque
  loc_B67CA5: from_stack_1v = clscheque.RsFrmGet()
  loc_B67CAA: FLdPr var_190
  loc_B67CAD:  = Me.Fields
  loc_B67CB2: FLdPr var_194
  loc_B67CB5: from_stack_2 = Me.Item(from_stack_1)
  loc_B67CBA: FLdPr var_198
  loc_B67CBD:  = Me.Value
  loc_B67CC2: FLdRfVar var_188
  loc_B67CC5: ConcatVar var_1A8
  loc_B67CC9: LitI4 9
  loc_B67CCE: FLdRfVar var_1B8
  loc_B67CD1: ImpAdCallFPR4  = Chr()
  loc_B67CD6: FLdRfVar var_1B8
  loc_B67CD9: ConcatVar var_1C8
  loc_B67CDD: FLdRfVar var_1E4
  loc_B67CE0: FLdRfVar var_1D4
  loc_B67CE3: LitVarStr var_158, "DetaBanc"
  loc_B67CE8: PopAdLdVar
  loc_B67CE9: FLdRfVar var_1D0
  loc_B67CEC: FLdRfVar var_1CC
  loc_B67CEF: FLdPr Me
  loc_B67CF2: MemLdRfVar from_stack_1.global_60
  loc_B67CF5: NewIfNullPr clscheque
  loc_B67CF8: from_stack_1v = clscheque.RsFrmGet()
  loc_B67CFD: FLdPr var_1CC
  loc_B67D00:  = Me.Fields
  loc_B67D05: FLdPr var_1D0
  loc_B67D08: from_stack_2 = Me.Item(from_stack_1)
  loc_B67D0D: FLdPr var_1D4
  loc_B67D10:  = Me.Value
  loc_B67D15: FLdRfVar var_1E4
  loc_B67D18: ConcatVar var_1F4
  loc_B67D1C: LitI4 9
  loc_B67D21: FLdRfVar var_204
  loc_B67D24: ImpAdCallFPR4  = Chr()
  loc_B67D29: FLdRfVar var_204
  loc_B67D2C: ConcatVar var_214
  loc_B67D30: FLdRfVar var_230
  loc_B67D33: FLdRfVar var_220
  loc_B67D36: LitVarStr var_178, "NumeMoba"
  loc_B67D3B: PopAdLdVar
  loc_B67D3C: FLdRfVar var_21C
  loc_B67D3F: FLdRfVar var_218
  loc_B67D42: FLdPr Me
  loc_B67D45: MemLdRfVar from_stack_1.global_60
  loc_B67D48: NewIfNullPr clscheque
  loc_B67D4B: from_stack_1v = clscheque.RsFrmGet()
  loc_B67D50: FLdPr var_218
  loc_B67D53:  = Me.Fields
  loc_B67D58: FLdPr var_21C
  loc_B67D5B: from_stack_2 = Me.Item(from_stack_1)
  loc_B67D60: FLdPr var_220
  loc_B67D63:  = Me.Value
  loc_B67D68: FLdRfVar var_230
  loc_B67D6B: ConcatVar var_240
  loc_B67D6F: LitI4 9
  loc_B67D74: FLdRfVar var_250
  loc_B67D77: ImpAdCallFPR4  = Chr()
  loc_B67D7C: FLdRfVar var_250
  loc_B67D7F: ConcatVar var_260
  loc_B67D83: LitI4 1
  loc_B67D88: LitI4 1
  loc_B67D8D: LitVarStr var_29C, "currency"
  loc_B67D92: FStVarCopyObj var_2AC
  loc_B67D95: FLdRfVar var_2AC
  loc_B67D98: FLdZeroAd var_27C
  loc_B67D9B: CVarAd
  loc_B67D9F: FLdRfVar var_2BC
  loc_B67DA2: ImpAdCallFPR4  = Format(, )
  loc_B67DA7: FLdRfVar var_2BC
  loc_B67DAA: ConcatVar var_2CC
  loc_B67DAE: LitI4 9
  loc_B67DB3: FLdRfVar var_2DC
  loc_B67DB6: ImpAdCallFPR4  = Chr()
  loc_B67DBB: FLdRfVar var_2DC
  loc_B67DBE: ConcatVar var_2EC
  loc_B67DC2: LitVarStr var_2FC, "No"
  loc_B67DC7: ConcatVar var_30C
  loc_B67DCB: LitI4 9
  loc_B67DD0: FLdRfVar var_31C
  loc_B67DD3: ImpAdCallFPR4  = Chr()
  loc_B67DD8: FLdRfVar var_31C
  loc_B67DDB: ConcatVar var_32C
  loc_B67DDF: FLdRfVar var_358
  loc_B67DE2: FLdRfVar var_348
  loc_B67DE5: LitVarStr var_344, "PainProv"
  loc_B67DEA: PopAdLdVar
  loc_B67DEB: FLdRfVar var_334
  loc_B67DEE: FLdRfVar var_330
  loc_B67DF1: FLdPr Me
  loc_B67DF4: MemLdRfVar from_stack_1.global_60
  loc_B67DF7: NewIfNullPr clscheque
  loc_B67DFA: from_stack_1v = clscheque.RsFrmGet()
  loc_B67DFF: FLdPr var_330
  loc_B67E02:  = Me.Fields
  loc_B67E07: FLdPr var_334
  loc_B67E0A: from_stack_2 = Me.Item(from_stack_1)
  loc_B67E0F: FLdPr var_348
  loc_B67E12:  = Me.Value
  loc_B67E17: FLdRfVar var_358
  loc_B67E1A: ConcatVar var_368
  loc_B67E1E: LitI4 9
  loc_B67E23: FLdRfVar var_378
  loc_B67E26: ImpAdCallFPR4  = Chr()
  loc_B67E2B: FLdRfVar var_378
  loc_B67E2E: ConcatVar var_388
  loc_B67E32: FLdRfVar var_3B4
  loc_B67E35: FLdRfVar var_3A4
  loc_B67E38: LitVarStr var_3A0, "FormaPago"
  loc_B67E3D: PopAdLdVar
  loc_B67E3E: FLdRfVar var_390
  loc_B67E41: FLdRfVar var_38C
  loc_B67E44: FLdPr Me
  loc_B67E47: MemLdRfVar from_stack_1.global_60
  loc_B67E4A: NewIfNullPr clscheque
  loc_B67E4D: from_stack_1v = clscheque.RsFrmGet()
  loc_B67E52: FLdPr var_38C
  loc_B67E55:  = Me.Fields
  loc_B67E5A: FLdPr var_390
  loc_B67E5D: from_stack_2 = Me.Item(from_stack_1)
  loc_B67E62: FLdPr var_3A4
  loc_B67E65:  = Me.Value
  loc_B67E6A: FLdRfVar var_3B4
  loc_B67E6D: ConcatVar var_3C4
  loc_B67E71: LitI4 9
  loc_B67E76: FLdRfVar var_3D4
  loc_B67E79: ImpAdCallFPR4  = Chr()
  loc_B67E7E: FLdRfVar var_3D4
  loc_B67E81: ConcatVar var_3E4
  loc_B67E85: FLdRfVar var_410
  loc_B67E88: FLdRfVar var_400
  loc_B67E8B: LitVarStr var_3FC, "MailPers"
  loc_B67E90: PopAdLdVar
  loc_B67E91: FLdRfVar var_3EC
  loc_B67E94: FLdRfVar var_3E8
  loc_B67E97: FLdPr Me
  loc_B67E9A: MemLdRfVar from_stack_1.global_60
  loc_B67E9D: NewIfNullPr clscheque
  loc_B67EA0: from_stack_1v = clscheque.RsFrmGet()
  loc_B67EA5: FLdPr var_3E8
  loc_B67EA8:  = Me.Fields
  loc_B67EAD: FLdPr var_3EC
  loc_B67EB0: from_stack_2 = Me.Item(from_stack_1)
  loc_B67EB5: FLdPr var_400
  loc_B67EB8:  = Me.Value
  loc_B67EBD: FLdRfVar var_410
  loc_B67EC0: ConcatVar var_420
  loc_B67EC4: LitI4 9
  loc_B67EC9: FLdRfVar var_430
  loc_B67ECC: ImpAdCallFPR4  = Chr()
  loc_B67ED1: FLdRfVar var_430
  loc_B67ED4: ConcatVar var_440
  loc_B67ED8: FLdRfVar var_46C
  loc_B67EDB: FLdRfVar var_45C
  loc_B67EDE: LitVarStr var_458, "IdCheq"
  loc_B67EE3: PopAdLdVar
  loc_B67EE4: FLdRfVar var_448
  loc_B67EE7: FLdRfVar var_444
  loc_B67EEA: FLdPr Me
  loc_B67EED: MemLdRfVar from_stack_1.global_60
  loc_B67EF0: NewIfNullPr clscheque
  loc_B67EF3: from_stack_1v = clscheque.RsFrmGet()
  loc_B67EF8: FLdPr var_444
  loc_B67EFB:  = Me.Fields
  loc_B67F00: FLdPr var_448
  loc_B67F03: from_stack_2 = Me.Item(from_stack_1)
  loc_B67F08: FLdPr var_45C
  loc_B67F0B:  = Me.Value
  loc_B67F10: FLdRfVar var_46C
  loc_B67F13: ConcatVar var_47C
  loc_B67F17: CStrVarTmp
  loc_B67F18: CVarStr var_48C
  loc_B67F1B: PopAdLdVar
  loc_B67F1C: FLdPr Me
  loc_B67F1F: VCallAd Control_ID_FlexCheque
  loc_B67F22: FStAdFunc var_4A0
  loc_B67F25: FLdPr var_4A0
  loc_B67F28: LateIdCall
  loc_B67F30: FFreeAd var_A4 = "": var_A8 = "": var_BC = "": var_110 = "": var_114 = "": var_128 = "": var_190 = "": var_194 = "": var_198 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_218 = "": var_21C = "": var_220 = "": var_264 = "": var_268 = "": var_330 = "": var_334 = "": var_348 = "": var_38C = "": var_390 = "": var_3A4 = "": var_3E8 = "": var_3EC = "": var_400 = "": var_444 = "": var_448 = "": var_45C = ""
  loc_B67F6F: FFreeVar var_378 = "": var_388 = "": var_3B4 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_410 = "": var_420 = "": var_430 = "": var_440 = "": var_46C = "": var_47C = "": var_48C = "": var_DC = "": var_CC = "": var_EC = "": var_10C = "": var_138 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_214 = "": var_230 = "": var_240 = "": var_250 = "": var_28C = "": var_2AC = "": var_260 = "": var_2BC = "": var_2CC = "": var_2DC = "": var_2EC = "": var_30C = "": var_31C = "": var_32C = "": var_358 = ""
  loc_B67FC8: LitVarI4
  loc_B67FD0: PopAdLdVar
  loc_B67FD1: LitVarI2 var_124, 7
  loc_B67FD6: PopAdLdVar
  loc_B67FD7: FLdPr Me
  loc_B67FDA: VCallAd Control_ID_FlexCheque
  loc_B67FDD: FStAdFunc var_A4
  loc_B67FE0: FLdPr var_A4
  loc_B67FE3: LateIdCallSt
  loc_B67FEB: FFree1Ad var_A4
  loc_B67FEE: FLdPr Me
  loc_B67FF1: MemLdRfVar from_stack_1.global_60
  loc_B67FF4: NewIfNullPr clscheque
  loc_B67FF7: Call clscheque.MoveSiguiente()
  loc_B67FFC: Branch loc_B67BA3
  loc_B67FFF: Branch loc_B68463
  loc_B68002: LitStr "Municipalidad de Guaymallén"
  loc_B68005: LitStr "Municipalidad de Maipú"
  loc_B68008: EqStr
  loc_B6800A: BranchF loc_B68462
  loc_B6800D: LitStr "SELECT lqn.*, DetaProv, PainProv, IFNULL(MailPers,'') MailPers"
  loc_B68010: LitStr " FROM ordenpago o"
  loc_B68013: ConcatStr
  loc_B68014: FStStrNoPop var_94
  loc_B68017: LitStr " INNER JOIN liquidaneto lqn ON lqn.PeriInfo = o.PeriInfo AND lqn.ExpeImpu = o.ExpeImpu AND lqn.NumeLiqu = o.NumeLiqu AND lqn.FechCaja IS NULL"
  loc_B6801A: ConcatStr
  loc_B6801B: FStStrNoPop var_98
  loc_B6801E: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = lqn.CucuPers"
  loc_B68021: ConcatStr
  loc_B68022: FStStrNoPop var_9C
  loc_B68025: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = lqn.CucuPers"
  loc_B68028: ConcatStr
  loc_B68029: FStStrNoPop var_A0
  loc_B6802C: LitStr " WHERE o.PeriInfo = "
  loc_B6802F: ConcatStr
  loc_B68030: CVarStr var_DC
  loc_B68033: FLdRfVar var_CC
  loc_B68036: FLdRfVar var_BC
  loc_B68039: LitVarStr var_B8, "PeriInfo"
  loc_B6803E: PopAdLdVar
  loc_B6803F: FLdRfVar var_A8
  loc_B68042: FLdRfVar var_A4
  loc_B68045: FLdPr Me
  loc_B68048: MemLdRfVar from_stack_1.global_56
  loc_B6804B: NewIfNullPr clsordenpago
  loc_B6804E: from_stack_1v = clsordenpago.RsFrmGet()
  loc_B68053: FLdPr var_A4
  loc_B68056:  = Me.Fields
  loc_B6805B: FLdPr var_A8
  loc_B6805E: from_stack_2 = Me.Item(from_stack_1)
  loc_B68063: FLdPr var_BC
  loc_B68066:  = Me.Value
  loc_B6806B: FLdRfVar var_CC
  loc_B6806E: ConcatVar var_EC
  loc_B68072: LitVarStr var_FC, " AND o.NumeOrpa = "
  loc_B68077: ConcatVar var_10C
  loc_B6807B: FLdRfVar var_138
  loc_B6807E: FLdRfVar var_128
  loc_B68081: LitVarStr var_124, "NumeOrpa"
  loc_B68086: PopAdLdVar
  loc_B68087: FLdRfVar var_114
  loc_B6808A: FLdRfVar var_110
  loc_B6808D: FLdPr Me
  loc_B68090: MemLdRfVar from_stack_1.global_56
  loc_B68093: NewIfNullPr clsordenpago
  loc_B68096: from_stack_1v = clsordenpago.RsFrmGet()
  loc_B6809B: FLdPr var_110
  loc_B6809E:  = Me.Fields
  loc_B680A3: FLdPr var_114
  loc_B680A6: from_stack_2 = Me.Item(from_stack_1)
  loc_B680AB: FLdPr var_128
  loc_B680AE:  = Me.Value
  loc_B680B3: FLdRfVar var_138
  loc_B680B6: ConcatVar var_148
  loc_B680BA: LitVarStr var_158, " AND FeanOrpa IS NULL AND FereOrpa IS NOT NULL AND FearOrpa IS NULL"
  loc_B680BF: ConcatVar var_168
  loc_B680C3: LitVarStr var_178, " ORDER BY DetaProv, lqn.CucuPers;"
  loc_B680C8: ConcatVar var_188
  loc_B680CC: CStrVarVal var_18C
  loc_B680D0: FLdPr Me
  loc_B680D3: MemLdRfVar from_stack_1.global_60
  loc_B680D6: NewIfNullPr clscheque
  loc_B680D9: Call clscheque.RedefineRS(from_stack_1v)
  loc_B680DE: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_B680EB: FFreeAd var_A4 = "": var_A8 = "": var_BC = "": var_110 = "": var_114 = ""
  loc_B680FA: FFreeVar var_DC = "": var_CC = "": var_EC = "": var_10C = "": var_138 = "": var_148 = "": var_168 = ""
  loc_B6810D: FLdRfVar var_8C
  loc_B68110: FLdPr Me
  loc_B68113: MemLdRfVar from_stack_1.global_60
  loc_B68116: NewIfNullPr clscheque
  loc_B68119: from_stack_1 = clscheque.RecordCount
  loc_B6811E: ILdRf var_8C
  loc_B68121: LitI4 0
  loc_B68126: GtI4
  loc_B68127: BranchF loc_B6845E
  loc_B6812A: FLdPr Me
  loc_B6812D: MemLdRfVar from_stack_1.global_60
  loc_B68130: NewIfNullPr clscheque
  loc_B68133: Call clscheque.MoveFirst()
  loc_B68138: FLdRfVar var_86
  loc_B6813B: FLdPr Me
  loc_B6813E: MemLdRfVar from_stack_1.global_60
  loc_B68141: NewIfNullPr clscheque
  loc_B68144: from_stack_1 = clscheque.EOF
  loc_B68149: FLdI2 var_86
  loc_B6814C: NotI4
  loc_B6814D: BranchF loc_B6845B
  loc_B68150: FLdRfVar var_DC
  loc_B68153: FLdRfVar var_BC
  loc_B68156: LitVarStr var_B8, "CucuPers"
  loc_B6815B: PopAdLdVar
  loc_B6815C: FLdRfVar var_A8
  loc_B6815F: FLdRfVar var_A4
  loc_B68162: FLdPr Me
  loc_B68165: MemLdRfVar from_stack_1.global_60
  loc_B68168: NewIfNullPr clscheque
  loc_B6816B: from_stack_1v = clscheque.RsFrmGet()
  loc_B68170: FLdPr var_A4
  loc_B68173:  = Me.Fields
  loc_B68178: FLdPr var_A8
  loc_B6817B: from_stack_2 = Me.Item(from_stack_1)
  loc_B68180: FLdPr var_BC
  loc_B68183:  = Me.Value
  loc_B68188: FLdRfVar var_DC
  loc_B6818B: LitI4 9
  loc_B68190: FLdRfVar var_CC
  loc_B68193: ImpAdCallFPR4  = Chr()
  loc_B68198: FLdRfVar var_CC
  loc_B6819B: ConcatVar var_EC
  loc_B6819F: FLdRfVar var_10C
  loc_B681A2: FLdRfVar var_128
  loc_B681A5: LitVarStr var_FC, "DetaProv"
  loc_B681AA: PopAdLdVar
  loc_B681AB: FLdRfVar var_114
  loc_B681AE: FLdRfVar var_110
  loc_B681B1: FLdPr Me
  loc_B681B4: MemLdRfVar from_stack_1.global_60
  loc_B681B7: NewIfNullPr clscheque
  loc_B681BA: from_stack_1v = clscheque.RsFrmGet()
  loc_B681BF: FLdPr var_110
  loc_B681C2:  = Me.Fields
  loc_B681C7: FLdPr var_114
  loc_B681CA: from_stack_2 = Me.Item(from_stack_1)
  loc_B681CF: FLdPr var_128
  loc_B681D2:  = Me.Value
  loc_B681D7: FLdRfVar var_10C
  loc_B681DA: ConcatVar var_138
  loc_B681DE: LitI4 9
  loc_B681E3: FLdRfVar var_148
  loc_B681E6: ImpAdCallFPR4  = Chr()
  loc_B681EB: FLdRfVar var_148
  loc_B681EE: ConcatVar var_168
  loc_B681F2: LitVarStr var_124, "0"
  loc_B681F7: ConcatVar var_188
  loc_B681FB: LitI4 9
  loc_B68200: FLdRfVar var_1A8
  loc_B68203: ImpAdCallFPR4  = Chr()
  loc_B68208: FLdRfVar var_1A8
  loc_B6820B: ConcatVar var_1B8
  loc_B6820F: LitVarStr var_158, "no corresponde"
  loc_B68214: ConcatVar var_1C8
  loc_B68218: LitI4 9
  loc_B6821D: FLdRfVar var_1E4
  loc_B68220: ImpAdCallFPR4  = Chr()
  loc_B68225: FLdRfVar var_1E4
  loc_B68228: ConcatVar var_1F4
  loc_B6822C: FLdRfVar var_204
  loc_B6822F: FLdRfVar var_198
  loc_B68232: LitVarStr var_178, "CodiRete"
  loc_B68237: PopAdLdVar
  loc_B68238: FLdRfVar var_194
  loc_B6823B: FLdRfVar var_190
  loc_B6823E: FLdPr Me
  loc_B68241: MemLdRfVar from_stack_1.global_60
  loc_B68244: NewIfNullPr clscheque
  loc_B68247: from_stack_1v = clscheque.RsFrmGet()
  loc_B6824C: FLdPr var_190
  loc_B6824F:  = Me.Fields
  loc_B68254: FLdPr var_194
  loc_B68257: from_stack_2 = Me.Item(from_stack_1)
  loc_B6825C: FLdPr var_198
  loc_B6825F:  = Me.Value
  loc_B68264: FLdRfVar var_204
  loc_B68267: ConcatVar var_214
  loc_B6826B: LitI4 9
  loc_B68270: FLdRfVar var_230
  loc_B68273: ImpAdCallFPR4  = Chr()
  loc_B68278: FLdRfVar var_230
  loc_B6827B: ConcatVar var_240
  loc_B6827F: FLdRfVar var_250
  loc_B68282: FLdRfVar var_1D4
  loc_B68285: LitVarStr var_278, "ImpoLine"
  loc_B6828A: PopAdLdVar
  loc_B6828B: FLdRfVar var_1D0
  loc_B6828E: FLdRfVar var_1CC
  loc_B68291: FLdPr Me
  loc_B68294: MemLdRfVar from_stack_1.global_60
  loc_B68297: NewIfNullPr clscheque
  loc_B6829A: from_stack_1v = clscheque.RsFrmGet()
  loc_B6829F: FLdPr var_1CC
  loc_B682A2:  = Me.Fields
  loc_B682A7: FLdPr var_1D0
  loc_B682AA: from_stack_2 = Me.Item(from_stack_1)
  loc_B682AF: FLdPr var_1D4
  loc_B682B2:  = Me.Value
  loc_B682B7: FLdRfVar var_250
  loc_B682BA: ConcatVar var_260
  loc_B682BE: LitI4 9
  loc_B682C3: FLdRfVar var_28C
  loc_B682C6: ImpAdCallFPR4  = Chr()
  loc_B682CB: FLdRfVar var_28C
  loc_B682CE: ConcatVar var_2AC
  loc_B682D2: LitVarStr var_29C, "No"
  loc_B682D7: ConcatVar var_2BC
  loc_B682DB: LitI4 9
  loc_B682E0: FLdRfVar var_2CC
  loc_B682E3: ImpAdCallFPR4  = Chr()
  loc_B682E8: FLdRfVar var_2CC
  loc_B682EB: ConcatVar var_2DC
  loc_B682EF: FLdRfVar var_2EC
  loc_B682F2: FLdRfVar var_220
  loc_B682F5: LitVarStr var_2FC, "PainProv"
  loc_B682FA: PopAdLdVar
  loc_B682FB: FLdRfVar var_21C
  loc_B682FE: FLdRfVar var_218
  loc_B68301: FLdPr Me
  loc_B68304: MemLdRfVar from_stack_1.global_60
  loc_B68307: NewIfNullPr clscheque
  loc_B6830A: from_stack_1v = clscheque.RsFrmGet()
  loc_B6830F: FLdPr var_218
  loc_B68312:  = Me.Fields
  loc_B68317: FLdPr var_21C
  loc_B6831A: from_stack_2 = Me.Item(from_stack_1)
  loc_B6831F: FLdPr var_220
  loc_B68322:  = Me.Value
  loc_B68327: FLdRfVar var_2EC
  loc_B6832A: ConcatVar var_30C
  loc_B6832E: LitI4 9
  loc_B68333: FLdRfVar var_31C
  loc_B68336: ImpAdCallFPR4  = Chr()
  loc_B6833B: FLdRfVar var_31C
  loc_B6833E: ConcatVar var_32C
  loc_B68342: LitVarStr var_344, "Retención"
  loc_B68347: ConcatVar var_358
  loc_B6834B: LitI4 9
  loc_B68350: FLdRfVar var_368
  loc_B68353: ImpAdCallFPR4  = Chr()
  loc_B68358: FLdRfVar var_368
  loc_B6835B: ConcatVar var_378
  loc_B6835F: FLdRfVar var_388
  loc_B68362: FLdRfVar var_27C
  loc_B68365: LitVarStr var_3A0, "MailPers"
  loc_B6836A: PopAdLdVar
  loc_B6836B: FLdRfVar var_268
  loc_B6836E: FLdRfVar var_264
  loc_B68371: FLdPr Me
  loc_B68374: MemLdRfVar from_stack_1.global_60
  loc_B68377: NewIfNullPr clscheque
  loc_B6837A: from_stack_1v = clscheque.RsFrmGet()
  loc_B6837F: FLdPr var_264
  loc_B68382:  = Me.Fields
  loc_B68387: FLdPr var_268
  loc_B6838A: from_stack_2 = Me.Item(from_stack_1)
  loc_B6838F: FLdPr var_27C
  loc_B68392:  = Me.Value
  loc_B68397: FLdRfVar var_388
  loc_B6839A: ConcatVar var_3B4
  loc_B6839E: LitI4 9
  loc_B683A3: FLdRfVar var_3C4
  loc_B683A6: ImpAdCallFPR4  = Chr()
  loc_B683AB: FLdRfVar var_3C4
  loc_B683AE: ConcatVar var_3D4
  loc_B683B2: LitVarStr var_3FC, "0"
  loc_B683B7: ConcatVar var_3E4
  loc_B683BB: CStrVarTmp
  loc_B683BC: CVarStr var_410
  loc_B683BF: PopAdLdVar
  loc_B683C0: FLdPr Me
  loc_B683C3: VCallAd Control_ID_FlexCheque
  loc_B683C6: FStAdFunc var_330
  loc_B683C9: FLdPr var_330
  loc_B683CC: LateIdCall
  loc_B683D4: FFreeAd var_A4 = "": var_A8 = "": var_BC = "": var_110 = "": var_114 = "": var_128 = "": var_190 = "": var_194 = "": var_198 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_218 = "": var_21C = "": var_220 = "": var_264 = "": var_268 = "": var_27C = ""
  loc_B683FD: FFreeVar var_378 = "": var_388 = "": var_3B4 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_410 = "": var_DC = "": var_CC = "": var_EC = "": var_10C = "": var_138 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_214 = "": var_230 = "": var_240 = "": var_250 = "": var_260 = "": var_28C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_2DC = "": var_2EC = "": var_30C = "": var_31C = "": var_32C = "": var_358 = ""
  loc_B6844A: FLdPr Me
  loc_B6844D: MemLdRfVar from_stack_1.global_60
  loc_B68450: NewIfNullPr clscheque
  loc_B68453: Call clscheque.MoveSiguiente()
  loc_B68458: Branch loc_B68138
  loc_B6845B: Branch loc_B6845F
  loc_B6845E: ExitProcHresult
  loc_B6845F: Branch loc_B68463
  loc_B68462: ExitProcHresult
  loc_B68463: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '9CE980
  'Data Table: 44AAFC
  loc_9CE894: LitVarStr var_94, vbNullString
  loc_9CE899: PopAdLdVar
  loc_9CE89A: FLdPr Me
  loc_9CE89D: VCallAd Control_ID_FiltroMsk
  loc_9CE8A0: FStAdFunc var_A8
  loc_9CE8A3: FLdPr var_A8
  loc_9CE8A6: LateIdSt
  loc_9CE8AB: FFree1Ad var_A8
  loc_9CE8AE: FLdRfVar var_AA
  loc_9CE8B1: FLdPr Me
  loc_9CE8B4: VCallAd Control_ID_FiltroCbo
  loc_9CE8B7: FStAdFunc var_A8
  loc_9CE8BA: FLdPr var_A8
  loc_9CE8BD:  = Me.ListIndex
  loc_9CE8C2: FLdI2 var_AA
  loc_9CE8C5: FStI2 var_AC
  loc_9CE8C8: FFree1Ad var_A8
  loc_9CE8CB: FLdI2 var_AC
  loc_9CE8CE: LitI2_Byte 0
  loc_9CE8D0: EqI2
  loc_9CE8D1: BranchF loc_9CE925
  loc_9CE8D4: LitVarStr var_94, "&"
  loc_9CE8D9: PopAdLdVar
  loc_9CE8DA: FLdPr Me
  loc_9CE8DD: VCallAd Control_ID_FiltroMsk
  loc_9CE8E0: FStAdFunc var_A8
  loc_9CE8E3: FLdPr var_A8
  loc_9CE8E6: LateIdSt
  loc_9CE8EB: FFree1Ad var_A8
  loc_9CE8EE: LitVarStr var_94, "######"
  loc_9CE8F3: PopAdLdVar
  loc_9CE8F4: FLdPr Me
  loc_9CE8F7: VCallAd Control_ID_FiltroMsk
  loc_9CE8FA: FStAdFunc var_A8
  loc_9CE8FD: FLdPr var_A8
  loc_9CE900: LateIdSt
  loc_9CE905: FFree1Ad var_A8
  loc_9CE908: LitStr "NumeOrpa"
  loc_9CE90B: FStStrCopy var_B0
  loc_9CE90E: FLdRfVar var_B0
  loc_9CE911: FLdPr Me
  loc_9CE914: MemLdRfVar from_stack_1.global_56
  loc_9CE917: NewIfNullPr clsordenpago
  loc_9CE91A: Call clsordenpago.Sort(from_stack_1v)
  loc_9CE91F: FFree1Str var_B0
  loc_9CE922: Branch loc_9CE97C
  loc_9CE925: FLdI2 var_AC
  loc_9CE928: LitI2_Byte 1
  loc_9CE92A: EqI2
  loc_9CE92B: BranchF loc_9CE97C
  loc_9CE92E: LitVarStr var_94, "&"
  loc_9CE933: PopAdLdVar
  loc_9CE934: FLdPr Me
  loc_9CE937: VCallAd Control_ID_FiltroMsk
  loc_9CE93A: FStAdFunc var_A8
  loc_9CE93D: FLdPr var_A8
  loc_9CE940: LateIdSt
  loc_9CE945: FFree1Ad var_A8
  loc_9CE948: LitVarStr var_94, vbNullString
  loc_9CE94D: PopAdLdVar
  loc_9CE94E: FLdPr Me
  loc_9CE951: VCallAd Control_ID_FiltroMsk
  loc_9CE954: FStAdFunc var_A8
  loc_9CE957: FLdPr var_A8
  loc_9CE95A: LateIdSt
  loc_9CE95F: FFree1Ad var_A8
  loc_9CE962: LitStr "ExpeImpu"
  loc_9CE965: FStStrCopy var_B0
  loc_9CE968: FLdRfVar var_B0
  loc_9CE96B: FLdPr Me
  loc_9CE96E: MemLdRfVar from_stack_1.global_56
  loc_9CE971: NewIfNullPr clsordenpago
  loc_9CE974: Call clsordenpago.Sort(from_stack_1v)
  loc_9CE979: FFree1Str var_B0
  loc_9CE97C: ExitProcHresult
End Sub

Private Sub FlexCheque_UnknownEvent_0 '958E78
  'Data Table: 44AAFC
  loc_958E60: FLdPr Me
  loc_958E63: VCallAd Control_ID_FlexCheque
  loc_958E66: FStAdFunc var_88
  loc_958E69: FLdRfVar var_88
  loc_958E6C: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_958E71: FFree1Ad var_88
  loc_958E74: ExitProcHresult
  loc_958E75: CExtInstUnk
  loc_958E77: Ary1LdRf
End Sub

Private Sub FlexCheque_UnknownEvent_1 '958FF4
  'Data Table: 44AAFC
  loc_958FDC: FLdPr Me
  loc_958FDF: VCallAd Control_ID_FlexCheque
  loc_958FE2: FStAdFunc var_88
  loc_958FE5: FLdRfVar var_88
  loc_958FE8: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_958FED: FFree1Ad var_88
  loc_958FF0: ExitProcHresult
  loc_958FF1: ImpAdLdRf MemVar_555624
End Sub

Private Function FlexCheque_UnknownEvent_8(arg_C) 'AAD578
  'Data Table: 44AAFC
  loc_AAD050: FLdRfVar var_8E
  loc_AAD053: FLdPr Me
  loc_AAD056: VCallAd Control_ID_cmdCancelar
  loc_AAD059: FStAdFunc var_8C
  loc_AAD05C: FLdPr var_8C
  loc_AAD05F:  = Me.Value
  loc_AAD064: FLdI2 var_8E
  loc_AAD067: NotI4
  loc_AAD068: FLdPr Me
  loc_AAD06B: VCallAd Control_ID_FlexCheque
  loc_AAD06E: FStAdFunc var_94
  loc_AAD071: FLdPr var_94
  loc_AAD074: LateIdLdVar var_A4 DispID_13 -32767
  loc_AAD07B: CBoolVar
  loc_AAD07D: AndI4
  loc_AAD07E: FFreeAd var_8C = ""
  loc_AAD085: FFree1Var var_A4 = ""
  loc_AAD088: BranchF loc_AAD575
  loc_AAD08B: LitI4 1
  loc_AAD090: FLdPr Me
  loc_AAD093: MemLdRfVar from_stack_1.global_76
  loc_AAD096: FLdPr Me
  loc_AAD099: VCallAd Control_ID_FlexCheque
  loc_AAD09C: FStAdFunc var_8C
  loc_AAD09F: FLdPr var_8C
  loc_AAD0A2: LateIdLdVar var_A4 DispID_4 0
  loc_AAD0A9: CI4Var
  loc_AAD0AB: LitI4 1
  loc_AAD0B0: SubI4
  loc_AAD0B1: FFree1Ad var_8C
  loc_AAD0B4: FFree1Var var_A4 = ""
  loc_AAD0B7: ForI4 var_AC
  loc_AAD0BD: FLdPr Me
  loc_AAD0C0: MemLdRfVar from_stack_1.global_76
  loc_AAD0C3: CDargRef
  loc_AAD0C7: LitVarI4
  loc_AAD0CF: PopAdLdVar
  loc_AAD0D0: FLdPr Me
  loc_AAD0D3: VCallAd Control_ID_FlexCheque
  loc_AAD0D6: FStAdFunc var_8C
  loc_AAD0D9: FLdPr var_8C
  loc_AAD0DC: LateIdCallLdVar
  loc_AAD0E6: CStrVarTmp
  loc_AAD0E7: FStStrNoPop var_E0
  loc_AAD0EA: LitStr "Si"
  loc_AAD0ED: EqStr
  loc_AAD0EF: FLdPr Me
  loc_AAD0F2: MemLdRfVar from_stack_1.global_76
  loc_AAD0F5: CDargRef
  loc_AAD0F9: LitVarI4
  loc_AAD101: PopAdLdVar
  loc_AAD102: FLdPr Me
  loc_AAD105: VCallAd Control_ID_FlexCheque
  loc_AAD108: FStAdFunc var_94
  loc_AAD10B: FLdPr var_94
  loc_AAD10E: LateIdCallLdVar
  loc_AAD118: CStrVarTmp
  loc_AAD119: FStStrNoPop var_124
  loc_AAD11C: LitStr "Transferencia"
  loc_AAD11F: EqStr
  loc_AAD121: AndI4
  loc_AAD122: FFreeStr var_E0 = ""
  loc_AAD129: FFreeAd var_8C = ""
  loc_AAD130: FFreeVar var_A4 = ""
  loc_AAD137: BranchF loc_AAD56A
  loc_AAD13A: FLdPr Me
  loc_AAD13D: MemLdStr global_92
  loc_AAD140: LitStr vbNullString
  loc_AAD143: EqStr
  loc_AAD145: BranchF loc_AAD152
  loc_AAD148: LitStr "0"
  loc_AAD14B: FLdPr Me
  loc_AAD14E: MemStStrCopy
  loc_AAD152: FLdPr Me
  loc_AAD155: MemLdRfVar from_stack_1.global_76
  loc_AAD158: CDargRef
  loc_AAD15C: LitVarI4
  loc_AAD164: PopAdLdVar
  loc_AAD165: FLdPr Me
  loc_AAD168: VCallAd Control_ID_FlexCheque
  loc_AAD16B: FStAdFunc var_8C
  loc_AAD16E: FLdPr var_8C
  loc_AAD171: LateIdCallLdVar
  loc_AAD17B: CStrVarTmp
  loc_AAD17C: FStStrNoPop var_E0
  loc_AAD17F: FLdPr Me
  loc_AAD182: MemStStrCopy
  loc_AAD186: FFree1Str var_E0
  loc_AAD189: FFree1Ad var_8C
  loc_AAD18C: FFree1Var var_A4 = ""
  loc_AAD18F: FLdPr Me
  loc_AAD192: MemLdUI1 global_68
  loc_AAD196: LitI2_Byte 1
  loc_AAD198: EqI2
  loc_AAD199: BranchF loc_AAD314
  loc_AAD19C: FLdPr Me
  loc_AAD19F: MemLdRfVar from_stack_1.global_76
  loc_AAD1A2: CDargRef
  loc_AAD1A6: LitVarI4
  loc_AAD1AE: PopAdLdVar
  loc_AAD1AF: FLdPr Me
  loc_AAD1B2: VCallAd Control_ID_FlexCheque
  loc_AAD1B5: FStAdFunc var_8C
  loc_AAD1B8: FLdPr var_8C
  loc_AAD1BB: LateIdCallLdVar
  loc_AAD1C5: CStrVarTmp
  loc_AAD1C6: FStStrNoPop var_E0
  loc_AAD1C9: LitStr vbNullString
  loc_AAD1CC: EqStr
  loc_AAD1CE: FLdPr Me
  loc_AAD1D1: MemLdRfVar from_stack_1.global_76
  loc_AAD1D4: CDargRef
  loc_AAD1D8: LitVarI4
  loc_AAD1E0: PopAdLdVar
  loc_AAD1E1: FLdPr Me
  loc_AAD1E4: VCallAd Control_ID_FlexCheque
  loc_AAD1E7: FStAdFunc var_94
  loc_AAD1EA: FLdPr var_94
  loc_AAD1ED: LateIdCallLdVar
  loc_AAD1F7: CStrVarTmp
  loc_AAD1F8: FStStrNoPop var_124
  loc_AAD1FB: LitStr "0"
  loc_AAD1FE: EqStr
  loc_AAD200: OrI4
  loc_AAD201: FFreeStr var_E0 = ""
  loc_AAD208: FFreeAd var_8C = ""
  loc_AAD20F: FFreeVar var_A4 = ""
  loc_AAD216: BranchF loc_AAD288
  loc_AAD219: LitStr "Renglón "
  loc_AAD21C: FLdPr Me
  loc_AAD21F: MemLdStr global_76
  loc_AAD222: CStrI4
  loc_AAD224: FStStrNoPop var_E0
  loc_AAD227: ConcatStr
  loc_AAD228: FStStrNoPop var_124
  loc_AAD22B: LitStr ". Ingrese el Nro de Transaccion..."
  loc_AAD22E: ConcatStr
  loc_AAD22F: FStStrNoPop var_128
  loc_AAD232: FLdPr Me
  loc_AAD235: MemStStrCopy
  loc_AAD239: FFreeStr var_E0 = "": var_124 = ""
  loc_AAD242: FLdPr Me
  loc_AAD245: VCallAd Control_ID_FlexCheque
  loc_AAD248: FStAdFunc var_130
  loc_AAD24B: LitNothing
  loc_AAD24D: CastAd
  loc_AAD250: FStAdFunc var_12C
  loc_AAD253: FLdRfVar var_12C
  loc_AAD256: FLdZeroAd var_130
  loc_AAD259: FStAdFuncNoPop
  loc_AAD25C: CastAd
  loc_AAD25F: FStAdFunc var_94
  loc_AAD262: FLdRfVar var_94
  loc_AAD265: FLdPr Me
  loc_AAD268: MemLdRfVar from_stack_1.global_72
  loc_AAD26B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_AAD270: IStI2 arg_C
  loc_AAD273: FFreeAd var_8C = "": var_94 = "": var_12C = ""
  loc_AAD27E: ILdI2 arg_C
  loc_AAD281: BranchF loc_AAD285
  loc_AAD284: ExitProcHresult
  loc_AAD285: Branch loc_AAD314
  loc_AAD288: FLdPr Me
  loc_AAD28B: MemLdStr global_92
  loc_AAD28E: CR8Str
  loc_AAD290: LitI2 1000
  loc_AAD293: CR8I2
  loc_AAD294: LtR8
  loc_AAD295: FLdPr Me
  loc_AAD298: MemLdStr global_92
  loc_AAD29B: CR8Str
  loc_AAD29D: LitI4 &H98967F
  loc_AAD2A2: CR8I4
  loc_AAD2A3: GtR4
  loc_AAD2A4: OrI4
  loc_AAD2A5: BranchF loc_AAD314
  loc_AAD2A8: LitStr "Renglón "
  loc_AAD2AB: FLdPr Me
  loc_AAD2AE: MemLdStr global_76
  loc_AAD2B1: CStrI4
  loc_AAD2B3: FStStrNoPop var_E0
  loc_AAD2B6: ConcatStr
  loc_AAD2B7: FStStrNoPop var_124
  loc_AAD2BA: LitStr ". Ingrese un Nro de 4 ó 7 dígitos. Verifique..."
  loc_AAD2BD: ConcatStr
  loc_AAD2BE: FStStrNoPop var_128
  loc_AAD2C1: FLdPr Me
  loc_AAD2C4: MemStStrCopy
  loc_AAD2C8: FFreeStr var_E0 = "": var_124 = ""
  loc_AAD2D1: FLdPr Me
  loc_AAD2D4: VCallAd Control_ID_FlexCheque
  loc_AAD2D7: FStAdFunc var_130
  loc_AAD2DA: LitNothing
  loc_AAD2DC: CastAd
  loc_AAD2DF: FStAdFunc var_12C
  loc_AAD2E2: FLdRfVar var_12C
  loc_AAD2E5: FLdZeroAd var_130
  loc_AAD2E8: FStAdFuncNoPop
  loc_AAD2EB: CastAd
  loc_AAD2EE: FStAdFunc var_94
  loc_AAD2F1: FLdRfVar var_94
  loc_AAD2F4: FLdPr Me
  loc_AAD2F7: MemLdRfVar from_stack_1.global_72
  loc_AAD2FA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_AAD2FF: IStI2 arg_C
  loc_AAD302: FFreeAd var_8C = "": var_94 = "": var_12C = ""
  loc_AAD30D: ILdI2 arg_C
  loc_AAD310: BranchF loc_AAD314
  loc_AAD313: ExitProcHresult
  loc_AAD314: FLdPr Me
  loc_AAD317: MemLdRfVar from_stack_1.global_76
  loc_AAD31A: CDargRef
  loc_AAD31E: LitVarI4
  loc_AAD326: PopAdLdVar
  loc_AAD327: FLdPr Me
  loc_AAD32A: VCallAd Control_ID_FlexCheque
  loc_AAD32D: FStAdFunc var_8C
  loc_AAD330: FLdPr var_8C
  loc_AAD333: LateIdCallLdVar
  loc_AAD33D: PopAd
  loc_AAD33F: FLdPr Me
  loc_AAD342: MemLdRfVar from_stack_1.global_76
  loc_AAD345: CDargRef
  loc_AAD349: LitVarI4
  loc_AAD351: PopAdLdVar
  loc_AAD352: FLdPr Me
  loc_AAD355: VCallAd Control_ID_FlexCheque
  loc_AAD358: FStAdFunc var_94
  loc_AAD35B: FLdPr var_94
  loc_AAD35E: LateIdCallLdVar
  loc_AAD368: PopAd
  loc_AAD36A: FLdPr Me
  loc_AAD36D: VCallAd Control_ID_FechaMsk
  loc_AAD370: FStAdFunc var_12C
  loc_AAD373: FLdPr var_12C
  loc_AAD376: LateIdLdVar var_140 DispID_15 0
  loc_AAD37D: PopAd
  loc_AAD37F: FLdRfVar var_144
  loc_AAD382: FLdRfVar var_140
  loc_AAD385: CStrVarTmp
  loc_AAD386: FStStrNoPop var_128
  loc_AAD389: FLdRfVar var_120
  loc_AAD38C: CStrVarTmp
  loc_AAD38D: FStStrNoPop var_124
  loc_AAD390: CI4Str
  loc_AAD391: LitI2_Byte 3
  loc_AAD393: FLdRfVar var_A4
  loc_AAD396: CStrVarTmp
  loc_AAD397: FStStrNoPop var_E0
  loc_AAD39A: CI4Str
  loc_AAD39B: ImpAdLdI2 MemVar_C3D064
  loc_AAD39E: FLdPr Me
  loc_AAD3A1: MemLdRfVar from_stack_1.global_60
  loc_AAD3A4: NewIfNullPr clscheque
  loc_AAD3A7: from_stack_6v = clscheque.ExisteMoviBanc(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_AAD3AC: ILdRf var_144
  loc_AAD3AF: FLdPr Me
  loc_AAD3B2: MemStStrCopy
  loc_AAD3B6: FFreeStr var_E0 = "": var_124 = "": var_128 = ""
  loc_AAD3C1: FFreeAd var_8C = "": var_94 = ""
  loc_AAD3CA: FFreeVar var_A4 = "": var_120 = ""
  loc_AAD3D3: FLdPr Me
  loc_AAD3D6: VCallAd Control_ID_FlexCheque
  loc_AAD3D9: FStAdFunc var_130
  loc_AAD3DC: LitNothing
  loc_AAD3DE: CastAd
  loc_AAD3E1: FStAdFunc var_12C
  loc_AAD3E4: FLdRfVar var_12C
  loc_AAD3E7: FLdZeroAd var_130
  loc_AAD3EA: FStAdFuncNoPop
  loc_AAD3ED: CastAd
  loc_AAD3F0: FStAdFunc var_94
  loc_AAD3F3: FLdRfVar var_94
  loc_AAD3F6: FLdPr Me
  loc_AAD3F9: MemLdRfVar from_stack_1.global_72
  loc_AAD3FC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_AAD401: IStI2 arg_C
  loc_AAD404: FFreeAd var_8C = "": var_94 = "": var_12C = ""
  loc_AAD40F: ILdI2 arg_C
  loc_AAD412: BranchF loc_AAD419
  loc_AAD415: ExitProcHresult
  loc_AAD416: Branch loc_AAD56A
  loc_AAD419: FLdPr Me
  loc_AAD41C: MemLdRfVar from_stack_1.global_76
  loc_AAD41F: CDargRef
  loc_AAD423: LitVarI4
  loc_AAD42B: PopAdLdVar
  loc_AAD42C: FLdPr Me
  loc_AAD42F: VCallAd Control_ID_FlexCheque
  loc_AAD432: FStAdFunc var_8C
  loc_AAD435: FLdPr var_8C
  loc_AAD438: LateIdCallLdVar
  loc_AAD442: PopAd
  loc_AAD444: FLdRfVar var_8E
  loc_AAD447: FLdRfVar var_A4
  loc_AAD44A: CStrVarTmp
  loc_AAD44B: CVarStr var_120
  loc_AAD44E: FLdRfVar var_88
  loc_AAD451: NewIfNullPr IDictionary
  loc_AAD454: IDictionary.Exists(from_stack_1v)
  loc_AAD459: FLdI2 var_8E
  loc_AAD45C: NotI4
  loc_AAD45D: FFree1Ad var_8C
  loc_AAD460: FFreeVar var_A4 = ""
  loc_AAD467: BranchF loc_AAD4D6
  loc_AAD46A: FLdPr Me
  loc_AAD46D: MemLdRfVar from_stack_1.global_76
  loc_AAD470: CDargRef
  loc_AAD474: LitVarI4
  loc_AAD47C: PopAdLdVar
  loc_AAD47D: FLdPr Me
  loc_AAD480: VCallAd Control_ID_FlexCheque
  loc_AAD483: FStAdFunc var_8C
  loc_AAD486: FLdPr var_8C
  loc_AAD489: LateIdCallLdVar
  loc_AAD493: PopAd
  loc_AAD495: LitStr "Renglón "
  loc_AAD498: FLdPr Me
  loc_AAD49B: MemLdStr global_76
  loc_AAD49E: CStrI4
  loc_AAD4A0: FStStrNoPop var_E0
  loc_AAD4A3: ConcatStr
  loc_AAD4A4: FStStrNoPop var_124
  loc_AAD4A7: LitStr ". "
  loc_AAD4AA: ConcatStr
  loc_AAD4AB: CVarStr var_140
  loc_AAD4AE: FLdRfVar var_A4
  loc_AAD4B1: CStrVarTmp
  loc_AAD4B2: CVarStr var_120
  loc_AAD4B5: FLdRfVar var_88
  loc_AAD4B8: NewIfNullPr IDictionary
  loc_AAD4BB: IDictionary.Add(from_stack_1v, from_stack_2v)
  loc_AAD4C0: FFreeStr var_E0 = ""
  loc_AAD4C7: FFree1Ad var_8C
  loc_AAD4CA: FFreeVar var_A4 = "": var_120 = ""
  loc_AAD4D3: Branch loc_AAD56A
  loc_AAD4D6: LitStr "Ya Existe el Número "
  loc_AAD4D9: FLdPr Me
  loc_AAD4DC: MemLdRfVar from_stack_1.global_76
  loc_AAD4DF: CDargRef
  loc_AAD4E3: LitVarI4
  loc_AAD4EB: PopAdLdVar
  loc_AAD4EC: FLdPr Me
  loc_AAD4EF: VCallAd Control_ID_FlexCheque
  loc_AAD4F2: FStAdFunc var_8C
  loc_AAD4F5: FLdPr var_8C
  loc_AAD4F8: LateIdCallLdVar
  loc_AAD502: CStrVarTmp
  loc_AAD503: FStStrNoPop var_E0
  loc_AAD506: ConcatStr
  loc_AAD507: FStStrNoPop var_124
  loc_AAD50A: LitStr ". Verifique..."
  loc_AAD50D: ConcatStr
  loc_AAD50E: FStStrNoPop var_128
  loc_AAD511: FLdPr Me
  loc_AAD514: MemStStrCopy
  loc_AAD518: FFreeStr var_E0 = "": var_124 = ""
  loc_AAD521: FFree1Ad var_8C
  loc_AAD524: FFree1Var var_A4 = ""
  loc_AAD527: FLdPr Me
  loc_AAD52A: VCallAd Control_ID_FlexCheque
  loc_AAD52D: FStAdFunc var_130
  loc_AAD530: LitNothing
  loc_AAD532: CastAd
  loc_AAD535: FStAdFunc var_12C
  loc_AAD538: FLdRfVar var_12C
  loc_AAD53B: FLdZeroAd var_130
  loc_AAD53E: FStAdFuncNoPop
  loc_AAD541: CastAd
  loc_AAD544: FStAdFunc var_94
  loc_AAD547: FLdRfVar var_94
  loc_AAD54A: FLdPr Me
  loc_AAD54D: MemLdRfVar from_stack_1.global_72
  loc_AAD550: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_AAD555: IStI2 arg_C
  loc_AAD558: FFreeAd var_8C = "": var_94 = "": var_12C = ""
  loc_AAD563: ILdI2 arg_C
  loc_AAD566: BranchF loc_AAD56A
  loc_AAD569: ExitProcHresult
  loc_AAD56A: FLdPr Me
  loc_AAD56D: MemLdRfVar from_stack_1.global_76
  loc_AAD570: NextI4 var_AC, loc_AAD0BD
  loc_AAD575: ExitProcHresult
End Function

Private Sub FlexCheque_Click() 'A97FDC
  'Data Table: 44AAFC
  loc_A97B5C: LitI4 1
  loc_A97B61: FLdPr Me
  loc_A97B64: MemLdRfVar from_stack_1.global_76
  loc_A97B67: FLdPr Me
  loc_A97B6A: VCallAd Control_ID_FlexCheque
  loc_A97B6D: FStAdFunc var_8C
  loc_A97B70: FLdPr var_8C
  loc_A97B73: LateIdLdVar var_9C DispID_4 0
  loc_A97B7A: CI4Var
  loc_A97B7C: LitI4 1
  loc_A97B81: SubI4
  loc_A97B82: FFree1Ad var_8C
  loc_A97B85: FFree1Var var_9C = ""
  loc_A97B88: ForI4 var_A4
  loc_A97B8E: FLdPr Me
  loc_A97B91: MemLdRfVar from_stack_1.global_76
  loc_A97B94: CDargRef
  loc_A97B98: LitVarI4
  loc_A97BA0: PopAdLdVar
  loc_A97BA1: FLdPr Me
  loc_A97BA4: VCallAd Control_ID_FlexCheque
  loc_A97BA7: FStAdFunc var_8C
  loc_A97BAA: FLdPr var_8C
  loc_A97BAD: LateIdCallLdVar
  loc_A97BB7: CStrVarTmp
  loc_A97BB8: FStStrNoPop var_140
  loc_A97BBB: FLdPr Me
  loc_A97BBE: VCallAd Control_ID_FlexCheque
  loc_A97BC1: FStAdFunc var_D8
  loc_A97BC4: FLdPr var_D8
  loc_A97BC7: LateIdLdVar var_E8 DispID_10 0
  loc_A97BCE: CI4Var
  loc_A97BD0: CVarI4
  loc_A97BD4: PopAdLdVar
  loc_A97BD5: LitVarI4
  loc_A97BDD: PopAdLdVar
  loc_A97BDE: FLdPr Me
  loc_A97BE1: VCallAd Control_ID_FlexCheque
  loc_A97BE4: FStAdFunc var_12C
  loc_A97BE7: FLdPr var_12C
  loc_A97BEA: LateIdCallLdVar
  loc_A97BF4: CStrVarTmp
  loc_A97BF5: FStStrNoPop var_144
  loc_A97BF8: EqStr
  loc_A97BFA: FFreeStr var_140 = ""
  loc_A97C01: FFreeAd var_8C = "": var_D8 = ""
  loc_A97C0A: FFreeVar var_9C = "": var_E8 = ""
  loc_A97C13: BranchF loc_A97FB0
  loc_A97C16: FLdPr Me
  loc_A97C19: MemLdRfVar from_stack_1.global_76
  loc_A97C1C: CDargRef
  loc_A97C20: FLdPr Me
  loc_A97C23: VCallAd Control_ID_FlexCheque
  loc_A97C26: FStAdFunc var_8C
  loc_A97C29: FLdPr var_8C
  loc_A97C2C: LateIdSt
  loc_A97C31: FFree1Ad var_8C
  loc_A97C34: FLdPr Me
  loc_A97C37: VCallAd Control_ID_FlexCheque
  loc_A97C3A: FStAdFunc var_8C
  loc_A97C3D: FLdPr var_8C
  loc_A97C40: LateIdLdVar var_9C DispID_10 0
  loc_A97C47: CI4Var
  loc_A97C49: CVarI4
  loc_A97C4D: PopAdLdVar
  loc_A97C4E: LitVarI4
  loc_A97C56: PopAdLdVar
  loc_A97C57: FLdPr Me
  loc_A97C5A: VCallAd Control_ID_FlexCheque
  loc_A97C5D: FStAdFunc var_D8
  loc_A97C60: FLdPr var_D8
  loc_A97C63: LateIdCallLdVar
  loc_A97C6D: CStrVarTmp
  loc_A97C6E: FStStrNoPop var_140
  loc_A97C71: LitStr "Si"
  loc_A97C74: EqStr
  loc_A97C76: FFree1Str var_140
  loc_A97C79: FFreeAd var_8C = ""
  loc_A97C80: FFreeVar var_9C = ""
  loc_A97C87: BranchF loc_A97D32
  loc_A97C8A: LitStr "&HFFFFFF"
  loc_A97C8D: FStStrCopy var_88
  loc_A97C90: LitI2_Byte 0
  loc_A97C92: FLdPr Me
  loc_A97C95: MemLdRfVar from_stack_1.global_80
  loc_A97C98: LitI2_Byte 8
  loc_A97C9A: ForI2 var_148
  loc_A97CA0: FLdPr Me
  loc_A97CA3: MemLdI2 global_80
  loc_A97CA6: CI4UI1
  loc_A97CA7: CVarI4
  loc_A97CAB: PopAdLdVar
  loc_A97CAC: FLdPr Me
  loc_A97CAF: VCallAd Control_ID_FlexCheque
  loc_A97CB2: FStAdFunc var_8C
  loc_A97CB5: FLdPr var_8C
  loc_A97CB8: LateIdSt
  loc_A97CBD: FFree1Ad var_8C
  loc_A97CC0: ILdRf var_88
  loc_A97CC3: CI4Str
  loc_A97CC4: CVarI4
  loc_A97CC8: PopAdLdVar
  loc_A97CC9: FLdPr Me
  loc_A97CCC: VCallAd Control_ID_FlexCheque
  loc_A97CCF: FStAdFunc var_8C
  loc_A97CD2: FLdPr var_8C
  loc_A97CD5: LateIdSt
  loc_A97CDA: FFree1Ad var_8C
  loc_A97CDD: FLdPr Me
  loc_A97CE0: MemLdRfVar from_stack_1.global_80
  loc_A97CE3: NextI2 var_148, loc_A97CA0
  loc_A97CE8: FLdPr Me
  loc_A97CEB: VCallAd Control_ID_FlexCheque
  loc_A97CEE: FStAdFunc var_8C
  loc_A97CF1: FLdPr var_8C
  loc_A97CF4: LateIdLdVar var_9C DispID_10 0
  loc_A97CFB: CI4Var
  loc_A97CFD: CVarI4
  loc_A97D01: PopAdLdVar
  loc_A97D02: LitVarI4
  loc_A97D0A: PopAdLdVar
  loc_A97D0B: LitVarStr var_108, "No"
  loc_A97D10: PopAdLdVar
  loc_A97D11: FLdPr Me
  loc_A97D14: VCallAd Control_ID_FlexCheque
  loc_A97D17: FStAdFunc var_D8
  loc_A97D1A: FLdPr var_D8
  loc_A97D1D: LateIdCallSt
  loc_A97D25: FFreeAd var_8C = ""
  loc_A97D2C: FFree1Var var_9C = ""
  loc_A97D2F: Branch loc_A97FB0
  loc_A97D32: FLdPr Me
  loc_A97D35: MemLdUI1 global_68
  loc_A97D39: LitI2_Byte 3
  loc_A97D3B: EqI2
  loc_A97D3C: BranchF loc_A97D48
  loc_A97D3F: LitStr "&HFF"
  loc_A97D42: FStStrCopy var_88
  loc_A97D45: Branch loc_A97F0B
  loc_A97D48: FLdPr Me
  loc_A97D4B: VCallAd Control_ID_FlexCheque
  loc_A97D4E: FStAdFunc var_8C
  loc_A97D51: FLdPr var_8C
  loc_A97D54: LateIdLdVar var_9C DispID_10 0
  loc_A97D5B: CI4Var
  loc_A97D5D: CVarI4
  loc_A97D61: PopAdLdVar
  loc_A97D62: LitVarI4
  loc_A97D6A: PopAdLdVar
  loc_A97D6B: FLdPr Me
  loc_A97D6E: VCallAd Control_ID_FlexCheque
  loc_A97D71: FStAdFunc var_D8
  loc_A97D74: FLdPr var_D8
  loc_A97D77: LateIdCallLdVar
  loc_A97D81: CStrVarTmp
  loc_A97D82: FStStrNoPop var_140
  loc_A97D85: LitStr "0"
  loc_A97D88: EqStr
  loc_A97D8A: FFree1Str var_140
  loc_A97D8D: FFreeAd var_8C = ""
  loc_A97D94: FFreeVar var_9C = ""
  loc_A97D9B: BranchF loc_A97F0B
  loc_A97D9E: FLdPr Me
  loc_A97DA1: VCallAd Control_ID_FlexCheque
  loc_A97DA4: FStAdFunc var_8C
  loc_A97DA7: FLdPr var_8C
  loc_A97DAA: LateIdLdVar var_9C DispID_10 0
  loc_A97DB1: CI4Var
  loc_A97DB3: CVarI4
  loc_A97DB7: PopAdLdVar
  loc_A97DB8: LitVarI4
  loc_A97DC0: PopAdLdVar
  loc_A97DC1: FLdPr Me
  loc_A97DC4: VCallAd Control_ID_FlexCheque
  loc_A97DC7: FStAdFunc var_D8
  loc_A97DCA: FLdPr var_D8
  loc_A97DCD: LateIdCallLdVar
  loc_A97DD7: PopAd
  loc_A97DD9: FLdPr Me
  loc_A97DDC: VCallAd Control_ID_FechaMsk
  loc_A97DDF: FStAdFunc var_12C
  loc_A97DE2: FLdPr var_12C
  loc_A97DE5: LateIdLdVar var_13C DispID_15 0
  loc_A97DEC: PopAd
  loc_A97DEE: FLdPr Me
  loc_A97DF1: VCallAd Control_ID_FlexCheque
  loc_A97DF4: FStAdFunc var_150
  loc_A97DF7: FLdPr var_150
  loc_A97DFA: LateIdLdVar var_160 DispID_10 0
  loc_A97E01: CI4Var
  loc_A97E03: CVarI4
  loc_A97E07: PopAdLdVar
  loc_A97E08: LitVarI4
  loc_A97E10: PopAdLdVar
  loc_A97E11: FLdPr Me
  loc_A97E14: VCallAd Control_ID_FlexCheque
  loc_A97E17: FStAdFunc var_174
  loc_A97E1A: FLdPr var_174
  loc_A97E1D: LateIdCallLdVar
  loc_A97E27: PopAd
  loc_A97E29: FLdRfVar var_18C
  loc_A97E2C: FLdRfVar var_184
  loc_A97E2F: CStrVarTmp
  loc_A97E30: FStStrNoPop var_188
  loc_A97E33: CR8Str
  loc_A97E35: PopFPR8
  loc_A97E36: FLdRfVar var_13C
  loc_A97E39: CStrVarTmp
  loc_A97E3A: FStStrNoPop var_144
  loc_A97E3D: FLdRfVar var_E8
  loc_A97E40: CStrVarTmp
  loc_A97E41: FStStrNoPop var_140
  loc_A97E44: CI4Str
  loc_A97E45: FLdPr Me
  loc_A97E48: MemLdRfVar from_stack_1.global_60
  loc_A97E4B: NewIfNullPr clscheque
  loc_A97E4E: from_stack_4v = clscheque.ValidaSaldoLibroBanco(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A97E53: FLdPr Me
  loc_A97E56: VCallAd Control_ID_FlexCheque
  loc_A97E59: FStAdFunc var_1A0
  loc_A97E5C: LitNothing
  loc_A97E5E: CastAd
  loc_A97E61: FStAdFunc var_19C
  loc_A97E64: FLdRfVar var_19C
  loc_A97E67: FLdZeroAd var_1A0
  loc_A97E6A: FStAdFuncNoPop
  loc_A97E6D: CastAd
  loc_A97E70: FStAdFunc var_198
  loc_A97E73: FLdRfVar var_198
  loc_A97E76: FLdZeroAd var_18C
  loc_A97E79: PopTmpLdAdStr
  loc_A97E7D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A97E82: FStI2 var_14A
  loc_A97E85: FFreeStr var_140 = "": var_144 = "": var_188 = ""
  loc_A97E90: FFreeAd var_8C = "": var_D8 = "": var_12C = "": var_150 = "": var_174 = "": var_194 = "": var_198 = "": var_19C = ""
  loc_A97EA5: FFreeVar var_9C = "": var_E8 = "": var_13C = "": var_160 = ""
  loc_A97EB2: FLdI2 var_14A
  loc_A97EB5: BranchF loc_A97ED7
  loc_A97EB8: LitStr "Municipalidad de Guaymallén"
  loc_A97EBB: LitStr "Municipalidad de La Paz"
  loc_A97EBE: EqStr
  loc_A97EC0: BranchF loc_A97ED3
  loc_A97EC3: LitI4 0
  loc_A97EC8: LitStr "Advertencia: Saldo de banco insuficiente. Recuerde corregir el saldo antes del cierre de Balance..."
  loc_A97ECB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A97ED0: Branch loc_A97ED4
  loc_A97ED3: ExitProcHresult
  loc_A97ED4: Branch loc_A97F0B
  loc_A97ED7: FLdPr Me
  loc_A97EDA: VCallAd Control_ID_FlexCheque
  loc_A97EDD: FStAdFunc var_8C
  loc_A97EE0: FLdPr var_8C
  loc_A97EE3: LateIdCall
  loc_A97EEB: FFree1Ad var_8C
  loc_A97EEE: LitVarI4
  loc_A97EF6: PopAdLdVar
  loc_A97EF7: FLdPr Me
  loc_A97EFA: VCallAd Control_ID_FlexCheque
  loc_A97EFD: FStAdFunc var_8C
  loc_A97F00: FLdPr var_8C
  loc_A97F03: LateIdSt
  loc_A97F08: FFree1Ad var_8C
  loc_A97F0B: LitStr "&HFFFF80"
  loc_A97F0E: FStStrCopy var_88
  loc_A97F11: LitI2_Byte 0
  loc_A97F13: FLdPr Me
  loc_A97F16: MemLdRfVar from_stack_1.global_80
  loc_A97F19: LitI2_Byte 8
  loc_A97F1B: ForI2 var_1A4
  loc_A97F21: FLdPr Me
  loc_A97F24: MemLdI2 global_80
  loc_A97F27: CI4UI1
  loc_A97F28: CVarI4
  loc_A97F2C: PopAdLdVar
  loc_A97F2D: FLdPr Me
  loc_A97F30: VCallAd Control_ID_FlexCheque
  loc_A97F33: FStAdFunc var_8C
  loc_A97F36: FLdPr var_8C
  loc_A97F39: LateIdSt
  loc_A97F3E: FFree1Ad var_8C
  loc_A97F41: ILdRf var_88
  loc_A97F44: CI4Str
  loc_A97F45: CVarI4
  loc_A97F49: PopAdLdVar
  loc_A97F4A: FLdPr Me
  loc_A97F4D: VCallAd Control_ID_FlexCheque
  loc_A97F50: FStAdFunc var_8C
  loc_A97F53: FLdPr var_8C
  loc_A97F56: LateIdSt
  loc_A97F5B: FFree1Ad var_8C
  loc_A97F5E: FLdPr Me
  loc_A97F61: MemLdRfVar from_stack_1.global_80
  loc_A97F64: NextI2 var_1A4, loc_A97F21
  loc_A97F69: FLdPr Me
  loc_A97F6C: VCallAd Control_ID_FlexCheque
  loc_A97F6F: FStAdFunc var_8C
  loc_A97F72: FLdPr var_8C
  loc_A97F75: LateIdLdVar var_9C DispID_10 0
  loc_A97F7C: CI4Var
  loc_A97F7E: CVarI4
  loc_A97F82: PopAdLdVar
  loc_A97F83: LitVarI4
  loc_A97F8B: PopAdLdVar
  loc_A97F8C: LitVarStr var_108, "Si"
  loc_A97F91: PopAdLdVar
  loc_A97F92: FLdPr Me
  loc_A97F95: VCallAd Control_ID_FlexCheque
  loc_A97F98: FStAdFunc var_D8
  loc_A97F9B: FLdPr var_D8
  loc_A97F9E: LateIdCallSt
  loc_A97FA6: FFreeAd var_8C = ""
  loc_A97FAD: FFree1Var var_9C = ""
  loc_A97FB0: FLdPr Me
  loc_A97FB3: MemLdRfVar from_stack_1.global_76
  loc_A97FB6: NextI4 var_A4, loc_A97B8E
  loc_A97FBB: LitVarI4
  loc_A97FC3: PopAdLdVar
  loc_A97FC4: FLdPr Me
  loc_A97FC7: VCallAd Control_ID_FlexCheque
  loc_A97FCA: FStAdFunc var_8C
  loc_A97FCD: FLdPr var_8C
  loc_A97FD0: LateIdSt
  loc_A97FD5: FFree1Ad var_8C
  loc_A97FD8: ExitProcHresult
  loc_A97FD9: CI2Cy
  loc_A97FDA: FLdRfVar var_7C00
End Sub

Private Sub FlexCheque_KeyPress(KeyAscii As Integer) 'A6ED78
  'Data Table: 44AAFC
  loc_A6E9E4: ILdI2 KeyAscii
  loc_A6E9E7: CI4UI1
  loc_A6E9E8: LitI4 &H20
  loc_A6E9ED: EqI4
  loc_A6E9EE: BranchF loc_A6E9F6
  loc_A6E9F1: Call FlexCheque_Click()
  loc_A6E9F6: FLdPr Me
  loc_A6E9F9: VCallAd Control_ID_FlexCheque
  loc_A6E9FC: FStAdFunc var_88
  loc_A6E9FF: FLdPr var_88
  loc_A6EA02: LateIdLdVar var_98 DispID_10 0
  loc_A6EA09: CI4Var
  loc_A6EA0B: CVarI4
  loc_A6EA0F: PopAdLdVar
  loc_A6EA10: LitVarI4
  loc_A6EA18: PopAdLdVar
  loc_A6EA19: FLdPr Me
  loc_A6EA1C: VCallAd Control_ID_FlexCheque
  loc_A6EA1F: FStAdFunc var_DC
  loc_A6EA22: FLdPr var_DC
  loc_A6EA25: LateIdCallLdVar
  loc_A6EA2F: CStrVarTmp
  loc_A6EA30: FStStrNoPop var_F0
  loc_A6EA33: LitStr "Si"
  loc_A6EA36: EqStr
  loc_A6EA38: FFree1Str var_F0
  loc_A6EA3B: FFreeAd var_88 = ""
  loc_A6EA42: FFreeVar var_98 = ""
  loc_A6EA49: BranchF loc_A6ED74
  loc_A6EA4C: LitVarI4
  loc_A6EA54: PopAdLdVar
  loc_A6EA55: FLdPr Me
  loc_A6EA58: VCallAd Control_ID_FlexCheque
  loc_A6EA5B: FStAdFunc var_88
  loc_A6EA5E: FLdPr var_88
  loc_A6EA61: LateIdSt
  loc_A6EA66: FFree1Ad var_88
  loc_A6EA69: FLdPr Me
  loc_A6EA6C: VCallAd Control_ID_FlexCheque
  loc_A6EA6F: FStAdFunc var_88
  loc_A6EA72: FLdPr var_88
  loc_A6EA75: LateIdLdVar var_98 DispID_11 0
  loc_A6EA7C: CI4Var
  loc_A6EA7E: LitI4 4
  loc_A6EA83: EqI4
  loc_A6EA84: FLdPr Me
  loc_A6EA87: VCallAd Control_ID_FlexCheque
  loc_A6EA8A: FStAdFunc var_DC
  loc_A6EA8D: FLdPr var_DC
  loc_A6EA90: LateIdLdVar var_EC DispID_10 0
  loc_A6EA97: CI4Var
  loc_A6EA99: CVarI4
  loc_A6EA9D: PopAdLdVar
  loc_A6EA9E: LitVarI4
  loc_A6EAA6: PopAdLdVar
  loc_A6EAA7: FLdPr Me
  loc_A6EAAA: VCallAd Control_ID_FlexCheque
  loc_A6EAAD: FStAdFunc var_F4
  loc_A6EAB0: FLdPr var_F4
  loc_A6EAB3: LateIdCallLdVar
  loc_A6EABD: CStrVarTmp
  loc_A6EABE: FStStrNoPop var_F0
  loc_A6EAC1: LitStr "Transferencia"
  loc_A6EAC4: EqStr
  loc_A6EAC6: AndI4
  loc_A6EAC7: FFree1Str var_F0
  loc_A6EACA: FFreeAd var_88 = "": var_DC = ""
  loc_A6EAD3: FFreeVar var_98 = "": var_EC = ""
  loc_A6EADC: BranchF loc_A6ED74
  loc_A6EADF: ILdI2 KeyAscii
  loc_A6EAE2: CI4UI1
  loc_A6EAE3: LitI4 8
  loc_A6EAE8: EqI4
  loc_A6EAE9: BranchF loc_A6EB84
  loc_A6EAEC: FLdPr Me
  loc_A6EAEF: VCallAd Control_ID_FlexCheque
  loc_A6EAF2: FStAdFunc var_88
  loc_A6EAF5: FLdPr var_88
  loc_A6EAF8: LateIdLdVar var_98 DispID_0 0
  loc_A6EAFF: CStrVarTmp
  loc_A6EB00: FStStrNoPop var_F0
  loc_A6EB03: LitStr vbNullString
  loc_A6EB06: NeStr
  loc_A6EB08: FFree1Str var_F0
  loc_A6EB0B: FFree1Ad var_88
  loc_A6EB0E: FFree1Var var_98 = ""
  loc_A6EB11: BranchF loc_A6EB81
  loc_A6EB14: FLdPr Me
  loc_A6EB17: VCallAd Control_ID_FlexCheque
  loc_A6EB1A: FStAdFunc var_88
  loc_A6EB1D: FLdPr var_88
  loc_A6EB20: LateIdLdVar var_98 DispID_0 0
  loc_A6EB27: PopAd
  loc_A6EB29: FLdPr Me
  loc_A6EB2C: VCallAd Control_ID_FlexCheque
  loc_A6EB2F: FStAdFunc var_DC
  loc_A6EB32: FLdPr var_DC
  loc_A6EB35: LateIdLdVar var_EC DispID_0 0
  loc_A6EB3C: CStrVarTmp
  loc_A6EB3D: FStStrNoPop var_F0
  loc_A6EB40: FnLenStr
  loc_A6EB41: LitI4 1
  loc_A6EB46: SubI4
  loc_A6EB47: FLdRfVar var_98
  loc_A6EB4A: CStrVarTmp
  loc_A6EB4B: FStStrNoPop var_108
  loc_A6EB4E: ImpAdCallI2 Left$(, )
  loc_A6EB53: CVarStr var_104
  loc_A6EB56: PopAdLdVar
  loc_A6EB57: FLdPr Me
  loc_A6EB5A: VCallAd Control_ID_FlexCheque
  loc_A6EB5D: FStAdFunc var_F4
  loc_A6EB60: FLdPr var_F4
  loc_A6EB63: LateIdSt
  loc_A6EB68: FFreeStr var_F0 = ""
  loc_A6EB6F: FFreeAd var_88 = "": var_DC = ""
  loc_A6EB78: FFreeVar var_98 = "": var_EC = ""
  loc_A6EB81: Branch loc_A6ECBC
  loc_A6EB84: LitStr "Municipalidad de Guaymallén"
  loc_A6EB87: LitStr "Municipalidad de Maipú"
  loc_A6EB8A: EqStr
  loc_A6EB8C: BranchF loc_A6EC27
  loc_A6EB8F: FLdPr Me
  loc_A6EB92: VCallAd Control_ID_FlexCheque
  loc_A6EB95: FStAdFunc var_88
  loc_A6EB98: FLdPr var_88
  loc_A6EB9B: LateIdLdVar var_98 DispID_0 0
  loc_A6EBA2: CStrVarTmp
  loc_A6EBA3: FStStrNoPop var_F0
  loc_A6EBA6: FnLenStr
  loc_A6EBA7: LitI4 8
  loc_A6EBAC: LeI4
  loc_A6EBAD: FFree1Str var_F0
  loc_A6EBB0: FFree1Ad var_88
  loc_A6EBB3: FFree1Var var_98 = ""
  loc_A6EBB6: BranchF loc_A6EC24
  loc_A6EBB9: LitStr "1234567890"
  loc_A6EBBC: FStStrCopy var_F0
  loc_A6EBBF: FLdRfVar var_F0
  loc_A6EBC2: ILdRf KeyAscii
  loc_A6EBC5: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_A6EBCA: IStI2 KeyAscii
  loc_A6EBCD: FFree1Str var_F0
  loc_A6EBD0: FLdPr Me
  loc_A6EBD3: VCallAd Control_ID_FlexCheque
  loc_A6EBD6: FStAdFunc var_88
  loc_A6EBD9: FLdPr var_88
  loc_A6EBDC: LateIdLdVar var_98 DispID_0 0
  loc_A6EBE3: CStrVarTmp
  loc_A6EBE4: CVarStr var_104
  loc_A6EBE7: ILdI2 KeyAscii
  loc_A6EBEA: CI4UI1
  loc_A6EBEB: FLdRfVar var_EC
  loc_A6EBEE: ImpAdCallFPR4  = Chr()
  loc_A6EBF3: FLdRfVar var_EC
  loc_A6EBF6: AddVar var_118
  loc_A6EBFA: CStrVarTmp
  loc_A6EBFB: CVarStr var_128
  loc_A6EBFE: PopAdLdVar
  loc_A6EBFF: FLdPr Me
  loc_A6EC02: VCallAd Control_ID_FlexCheque
  loc_A6EC05: FStAdFunc var_DC
  loc_A6EC08: FLdPr var_DC
  loc_A6EC0B: LateIdSt
  loc_A6EC10: FFreeAd var_88 = ""
  loc_A6EC17: FFreeVar var_98 = "": var_104 = "": var_EC = "": var_118 = ""
  loc_A6EC24: Branch loc_A6ECBC
  loc_A6EC27: FLdPr Me
  loc_A6EC2A: VCallAd Control_ID_FlexCheque
  loc_A6EC2D: FStAdFunc var_88
  loc_A6EC30: FLdPr var_88
  loc_A6EC33: LateIdLdVar var_98 DispID_0 0
  loc_A6EC3A: CStrVarTmp
  loc_A6EC3B: FStStrNoPop var_F0
  loc_A6EC3E: FnLenStr
  loc_A6EC3F: LitI4 6
  loc_A6EC44: LeI4
  loc_A6EC45: FFree1Str var_F0
  loc_A6EC48: FFree1Ad var_88
  loc_A6EC4B: FFree1Var var_98 = ""
  loc_A6EC4E: BranchF loc_A6ECBC
  loc_A6EC51: LitStr "1234567890"
  loc_A6EC54: FStStrCopy var_F0
  loc_A6EC57: FLdRfVar var_F0
  loc_A6EC5A: ILdRf KeyAscii
  loc_A6EC5D: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_A6EC62: IStI2 KeyAscii
  loc_A6EC65: FFree1Str var_F0
  loc_A6EC68: FLdPr Me
  loc_A6EC6B: VCallAd Control_ID_FlexCheque
  loc_A6EC6E: FStAdFunc var_88
  loc_A6EC71: FLdPr var_88
  loc_A6EC74: LateIdLdVar var_98 DispID_0 0
  loc_A6EC7B: CStrVarTmp
  loc_A6EC7C: CVarStr var_104
  loc_A6EC7F: ILdI2 KeyAscii
  loc_A6EC82: CI4UI1
  loc_A6EC83: FLdRfVar var_EC
  loc_A6EC86: ImpAdCallFPR4  = Chr()
  loc_A6EC8B: FLdRfVar var_EC
  loc_A6EC8E: AddVar var_118
  loc_A6EC92: CStrVarTmp
  loc_A6EC93: CVarStr var_128
  loc_A6EC96: PopAdLdVar
  loc_A6EC97: FLdPr Me
  loc_A6EC9A: VCallAd Control_ID_FlexCheque
  loc_A6EC9D: FStAdFunc var_DC
  loc_A6ECA0: FLdPr var_DC
  loc_A6ECA3: LateIdSt
  loc_A6ECA8: FFreeAd var_88 = ""
  loc_A6ECAF: FFreeVar var_98 = "": var_104 = "": var_EC = "": var_118 = ""
  loc_A6ECBC: LitStr "Municipalidad de Guaymallén"
  loc_A6ECBF: LitStr "Municipalidad de Maipú"
  loc_A6ECC2: EqStr
  loc_A6ECC4: BranchF loc_A6ED1F
  loc_A6ECC7: FLdPr Me
  loc_A6ECCA: VCallAd Control_ID_FlexCheque
  loc_A6ECCD: FStAdFunc var_88
  loc_A6ECD0: FLdPr var_88
  loc_A6ECD3: LateIdLdVar var_98 DispID_10 0
  loc_A6ECDA: CI4Var
  loc_A6ECDC: CVarI4
  loc_A6ECE0: PopAdLdVar
  loc_A6ECE1: LitVarI4
  loc_A6ECE9: PopAdLdVar
  loc_A6ECEA: FLdPr Me
  loc_A6ECED: VCallAd Control_ID_FlexCheque
  loc_A6ECF0: FStAdFunc var_DC
  loc_A6ECF3: FLdPr var_DC
  loc_A6ECF6: LateIdCallLdVar
  loc_A6ED00: CStrVarTmp
  loc_A6ED01: FStStrNoPop var_F0
  loc_A6ED04: FLdPr Me
  loc_A6ED07: MemStStrCopy
  loc_A6ED0B: FFree1Str var_F0
  loc_A6ED0E: FFreeAd var_88 = ""
  loc_A6ED15: FFreeVar var_98 = ""
  loc_A6ED1C: Branch loc_A6ED74
  loc_A6ED1F: FLdPr Me
  loc_A6ED22: VCallAd Control_ID_FlexCheque
  loc_A6ED25: FStAdFunc var_88
  loc_A6ED28: FLdPr var_88
  loc_A6ED2B: LateIdLdVar var_98 DispID_10 0
  loc_A6ED32: CI4Var
  loc_A6ED34: CVarI4
  loc_A6ED38: PopAdLdVar
  loc_A6ED39: LitVarI4
  loc_A6ED41: PopAdLdVar
  loc_A6ED42: FLdPr Me
  loc_A6ED45: VCallAd Control_ID_FlexCheque
  loc_A6ED48: FStAdFunc var_DC
  loc_A6ED4B: FLdPr var_DC
  loc_A6ED4E: LateIdCallLdVar
  loc_A6ED58: CStrVarTmp
  loc_A6ED59: FStStrNoPop var_F0
  loc_A6ED5C: FLdPr Me
  loc_A6ED5F: MemStStrCopy
  loc_A6ED63: FFree1Str var_F0
  loc_A6ED66: FFreeAd var_88 = ""
  loc_A6ED6D: FFreeVar var_98 = ""
  loc_A6ED74: ExitProcHresult
End Sub

Private Sub FlexCheque_KeyUp(KeyCode As Integer, Shift As Integer) 'A1F278
  'Data Table: 44AAFC
  loc_A1F0EC: ILdI2 KeyCode
  loc_A1F0EF: CI4UI1
  loc_A1F0F0: LitI4 &H28
  loc_A1F0F5: EqI4
  loc_A1F0F6: ILdI2 KeyCode
  loc_A1F0F9: CI4UI1
  loc_A1F0FA: LitI4 &H26
  loc_A1F0FF: EqI4
  loc_A1F100: OrI4
  loc_A1F101: BranchF loc_A1F276
  loc_A1F104: LitI4 1
  loc_A1F109: FLdPr Me
  loc_A1F10C: MemLdRfVar from_stack_1.global_76
  loc_A1F10F: FLdPr Me
  loc_A1F112: VCallAd Control_ID_FlexCheque
  loc_A1F115: FStAdFunc var_88
  loc_A1F118: FLdPr var_88
  loc_A1F11B: LateIdLdVar var_98 DispID_4 0
  loc_A1F122: CI4Var
  loc_A1F124: LitI4 1
  loc_A1F129: SubI4
  loc_A1F12A: FFree1Ad var_88
  loc_A1F12D: FFree1Var var_98 = ""
  loc_A1F130: ForI4 var_A0
  loc_A1F136: FLdPr Me
  loc_A1F139: MemLdRfVar from_stack_1.global_76
  loc_A1F13C: CDargRef
  loc_A1F140: LitVarI4
  loc_A1F148: PopAdLdVar
  loc_A1F149: FLdPr Me
  loc_A1F14C: VCallAd Control_ID_FlexCheque
  loc_A1F14F: FStAdFunc var_88
  loc_A1F152: FLdPr var_88
  loc_A1F155: LateIdCallLdVar
  loc_A1F15F: CStrVarTmp
  loc_A1F160: FStStrNoPop var_D4
  loc_A1F163: LitStr "Si"
  loc_A1F166: EqStr
  loc_A1F168: FLdPr Me
  loc_A1F16B: MemLdRfVar from_stack_1.global_76
  loc_A1F16E: CDargRef
  loc_A1F172: LitVarI4
  loc_A1F17A: PopAdLdVar
  loc_A1F17B: FLdPr Me
  loc_A1F17E: VCallAd Control_ID_FlexCheque
  loc_A1F181: FStAdFunc var_108
  loc_A1F184: FLdPr var_108
  loc_A1F187: LateIdCallLdVar
  loc_A1F191: CStrVarTmp
  loc_A1F192: FStStrNoPop var_11C
  loc_A1F195: LitStr "Transferencia"
  loc_A1F198: EqStr
  loc_A1F19A: AndI4
  loc_A1F19B: FLdPr Me
  loc_A1F19E: MemLdRfVar from_stack_1.global_76
  loc_A1F1A1: CDargRef
  loc_A1F1A5: LitVarI4
  loc_A1F1AD: PopAdLdVar
  loc_A1F1AE: FLdPr Me
  loc_A1F1B1: VCallAd Control_ID_FlexCheque
  loc_A1F1B4: FStAdFunc var_150
  loc_A1F1B7: FLdPr var_150
  loc_A1F1BA: LateIdCallLdVar
  loc_A1F1C4: CStrVarTmp
  loc_A1F1C5: FStStrNoPop var_164
  loc_A1F1C8: LitStr vbNullString
  loc_A1F1CB: EqStr
  loc_A1F1CD: FLdPr Me
  loc_A1F1D0: MemLdRfVar from_stack_1.global_76
  loc_A1F1D3: CDargRef
  loc_A1F1D7: LitVarI4
  loc_A1F1DF: PopAdLdVar
  loc_A1F1E0: FLdPr Me
  loc_A1F1E3: VCallAd Control_ID_FlexCheque
  loc_A1F1E6: FStAdFunc var_198
  loc_A1F1E9: FLdPr var_198
  loc_A1F1EC: LateIdCallLdVar
  loc_A1F1F6: CStrVarTmp
  loc_A1F1F7: FStStrNoPop var_1AC
  loc_A1F1FA: LitStr "0"
  loc_A1F1FD: EqStr
  loc_A1F1FF: OrI4
  loc_A1F200: AndI4
  loc_A1F201: FFreeStr var_D4 = "": var_11C = "": var_164 = ""
  loc_A1F20C: FFreeAd var_88 = "": var_108 = "": var_150 = ""
  loc_A1F217: FFreeVar var_98 = "": var_118 = "": var_160 = ""
  loc_A1F222: BranchF loc_A1F26B
  loc_A1F225: FLdPr Me
  loc_A1F228: MemLdRfVar from_stack_1.global_76
  loc_A1F22B: CDargRef
  loc_A1F22F: LitVarI4
  loc_A1F237: PopAdLdVar
  loc_A1F238: FLdPr Me
  loc_A1F23B: MemLdStr global_92
  loc_A1F23E: FLdPr Me
  loc_A1F241: MemLdStr global_76
  loc_A1F244: CStrI4
  loc_A1F246: FStStrNoPop var_D4
  loc_A1F249: ConcatStr
  loc_A1F24A: CVarStr var_98
  loc_A1F24D: PopAdLdVar
  loc_A1F24E: FLdPr Me
  loc_A1F251: VCallAd Control_ID_FlexCheque
  loc_A1F254: FStAdFunc var_88
  loc_A1F257: FLdPr var_88
  loc_A1F25A: LateIdCallSt
  loc_A1F262: FFree1Str var_D4
  loc_A1F265: FFree1Ad var_88
  loc_A1F268: FFree1Var var_98 = ""
  loc_A1F26B: FLdPr Me
  loc_A1F26E: MemLdRfVar from_stack_1.global_76
  loc_A1F271: NextI4 var_A0, loc_A1F136
  loc_A1F276: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'A2E188
  'Data Table: 44AAFC
  loc_A2DFB4: LitI2_Byte 0
  loc_A2DFB6: CUI1I2
  loc_A2DFB8: FLdPr Me
  loc_A2DFBB: MemStUI1
  loc_A2DFBF: ILdRf Me
  loc_A2DFC2: CastAd
  loc_A2DFC5: FStAdFunc var_88
  loc_A2DFC8: FLdRfVar var_88
  loc_A2DFCB: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_A2DFD0: FFree1Ad var_88
  loc_A2DFD3: LitI4 0
  loc_A2DFD8: LitI4 0
  loc_A2DFDD: FLdRfVar var_8C
  loc_A2DFE0: Redim
  loc_A2DFEA: FLdPr Me
  loc_A2DFED: VCallAd Control_ID_dgdABMS
  loc_A2DFF0: CVarAd
  loc_A2DFF4: ParmAry1St
  loc_A2DFFA: FLdRfVar var_8C
  loc_A2DFFD: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A2E002: FLdRfVar var_8C
  loc_A2E005: Erase
  loc_A2E006: LitI4 0
  loc_A2E00B: LitI4 1
  loc_A2E010: FLdRfVar var_8C
  loc_A2E013: Redim
  loc_A2E01D: FLdPr Me
  loc_A2E020: VCallAd Control_ID_FlexCheque
  loc_A2E023: CVarAd
  loc_A2E027: ParmAry1St
  loc_A2E02D: FLdPr Me
  loc_A2E030: VCallAd Control_ID_chkSeleTodo
  loc_A2E033: CVarAd
  loc_A2E037: ParmAry1St
  loc_A2E03D: FLdRfVar var_8C
  loc_A2E040: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A2E045: FLdRfVar var_8C
  loc_A2E048: Erase
  loc_A2E049: ILdRf Me
  loc_A2E04C: CastAd
  loc_A2E04F: FStAdFunc var_88
  loc_A2E052: FLdRfVar var_88
  loc_A2E055: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A2E05A: FFree1Ad var_88
  loc_A2E05D: FLdRfVar var_B0
  loc_A2E060: FLdPr Me
  loc_A2E063: MemLdRfVar from_stack_1.global_56
  loc_A2E066: NewIfNullPr clsordenpago
  loc_A2E069: from_stack_1 = clsordenpago.RecordCount
  loc_A2E06E: ILdRf var_B0
  loc_A2E071: LitI4 0
  loc_A2E076: GtI4
  loc_A2E077: FLdRfVar var_B4
  loc_A2E07A: FLdPr Me
  loc_A2E07D: MemLdRfVar from_stack_1.global_56
  loc_A2E080: NewIfNullPr clsordenpago
  loc_A2E083: from_stack_1 = clsordenpago.AbsolutePosition
  loc_A2E088: ILdRf var_B4
  loc_A2E08B: LitI4 0
  loc_A2E090: GtI4
  loc_A2E091: AndI4
  loc_A2E092: BranchF loc_A2E135
  loc_A2E095: FLdRfVar var_9C
  loc_A2E098: FLdRfVar var_CC
  loc_A2E09B: LitVarStr var_C8, "PeriInfo"
  loc_A2E0A0: PopAdLdVar
  loc_A2E0A1: FLdRfVar var_B8
  loc_A2E0A4: FLdRfVar var_88
  loc_A2E0A7: FLdPr Me
  loc_A2E0AA: MemLdRfVar from_stack_1.global_56
  loc_A2E0AD: NewIfNullPr clsordenpago
  loc_A2E0B0: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A2E0B5: FLdPr var_88
  loc_A2E0B8:  = Me.Fields
  loc_A2E0BD: FLdPr var_B8
  loc_A2E0C0: from_stack_2 = Me.Item(from_stack_1)
  loc_A2E0C5: FLdPr var_CC
  loc_A2E0C8:  = Me.Value
  loc_A2E0CD: FLdRfVar var_AC
  loc_A2E0D0: FLdRfVar var_E8
  loc_A2E0D3: LitVarStr var_E4, "NumeOrpa"
  loc_A2E0D8: PopAdLdVar
  loc_A2E0D9: FLdRfVar var_D4
  loc_A2E0DC: FLdRfVar var_D0
  loc_A2E0DF: FLdPr Me
  loc_A2E0E2: MemLdRfVar from_stack_1.global_56
  loc_A2E0E5: NewIfNullPr clsordenpago
  loc_A2E0E8: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A2E0ED: FLdPr var_D0
  loc_A2E0F0:  = Me.Fields
  loc_A2E0F5: FLdPr var_D4
  loc_A2E0F8: from_stack_2 = Me.Item(from_stack_1)
  loc_A2E0FD: FLdPr var_E8
  loc_A2E100:  = Me.Value
  loc_A2E105: FLdRfVar var_AC
  loc_A2E108: CI4Var
  loc_A2E10A: FLdRfVar var_9C
  loc_A2E10D: CI2Var
  loc_A2E10E: FLdPr Me
  loc_A2E111: MemLdRfVar from_stack_1.global_56
  loc_A2E114: NewIfNullPr clsordenpago
  loc_A2E117: Call clsordenpago.Encontrar(from_stack_1v, from_stack_2v)
  loc_A2E11C: FFreeAd var_88 = "": var_B8 = "": var_D0 = "": var_D4 = "": var_CC = ""
  loc_A2E12B: FFreeVar var_9C = ""
  loc_A2E132: Branch loc_A2E143
  loc_A2E135: FLdPr Me
  loc_A2E138: MemLdRfVar from_stack_1.global_56
  loc_A2E13B: NewIfNullPr clsordenpago
  loc_A2E13E: Call clsordenpago.Requery()
  loc_A2E143: FLdPr Me
  loc_A2E146: VCallAd Control_ID_dgdABMS
  loc_A2E149: FStAdFunc var_B8
  loc_A2E14C: LitI4 0
  loc_A2E151: FStStrCopy var_EC
  loc_A2E154: FLdRfVar var_EC
  loc_A2E157: FLdPr Me
  loc_A2E15A: MemLdStr global_84
  loc_A2E15D: FLdZeroAd var_B8
  loc_A2E160: FStAdFunc var_88
  loc_A2E163: FLdRfVar var_88
  loc_A2E166: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A2E16B: FFree1Str var_EC
  loc_A2E16E: FFreeAd var_88 = ""
  loc_A2E175: LitI2_Byte 0
  loc_A2E177: LitVarI2 var_9C, 0
  loc_A2E17C: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A2E181: FFree1Var var_9C = ""
  loc_A2E184: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94A5E0
  'Data Table: 44AAFC
  loc_94A5CC: FLdPr Me
  loc_94A5CF: VCallAd Control_ID_FiltroMsk
  loc_94A5D2: CVarAd
  loc_94A5D6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A5DB: FFree1Var var_94 = ""
  loc_94A5DE: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A4B4F4
  'Data Table: 44AAFC
  loc_A4B268: ILdRf Me
  loc_A4B26B: CastAd
  loc_A4B26E: FStAdFunc var_88
  loc_A4B271: FLdRfVar var_88
  loc_A4B274: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A4B279: FFree1Ad var_88
  loc_A4B27C: FLdPr Me
  loc_A4B27F: VCallAd Control_ID_FiltroMsk
  loc_A4B282: FStAdFunc var_88
  loc_A4B285: FLdPr var_88
  loc_A4B288: LateIdLdVar var_98 DispID_22 0
  loc_A4B28F: CStrVarTmp
  loc_A4B290: FStStrNoPop var_9C
  loc_A4B293: ImpAdCallI2 Trim$()
  loc_A4B298: FStStrNoPop var_A0
  loc_A4B29B: LitStr vbNullString
  loc_A4B29E: NeStr
  loc_A4B2A0: FFreeStr var_9C = ""
  loc_A4B2A7: FFree1Ad var_88
  loc_A4B2AA: FFree1Var var_98 = ""
  loc_A4B2AD: BranchF loc_A4B3D7
  loc_A4B2B0: FLdRfVar var_A2
  loc_A4B2B3: FLdPr Me
  loc_A4B2B6: VCallAd Control_ID_FiltroCbo
  loc_A4B2B9: FStAdFunc var_88
  loc_A4B2BC: FLdPr var_88
  loc_A4B2BF:  = Me.ListIndex
  loc_A4B2C4: FLdI2 var_A2
  loc_A4B2C7: LitI2_Byte 0
  loc_A4B2C9: EqI2
  loc_A4B2CA: FFree1Ad var_88
  loc_A4B2CD: BranchF loc_A4B33F
  loc_A4B2D0: LitStr "NumeOrpa = "
  loc_A4B2D3: FLdPr Me
  loc_A4B2D6: VCallAd Control_ID_FiltroMsk
  loc_A4B2D9: FStAdFunc var_88
  loc_A4B2DC: FLdPr var_88
  loc_A4B2DF: LateIdLdVar var_98 DispID_22 0
  loc_A4B2E6: CStrVarTmp
  loc_A4B2E7: FStStrNoPop var_9C
  loc_A4B2EA: ConcatStr
  loc_A4B2EB: PopTmpLdAdStr
  loc_A4B2EF: FLdPr Me
  loc_A4B2F2: MemLdRfVar from_stack_1.global_56
  loc_A4B2F5: NewIfNullPr clsordenpago
  loc_A4B2F8: Call clsordenpago.Filter(from_stack_1v)
  loc_A4B2FD: FFreeStr var_9C = ""
  loc_A4B304: FFree1Ad var_88
  loc_A4B307: FFree1Var var_98 = ""
  loc_A4B30A: LitStr "Orden de Pago sea igual a: "
  loc_A4B30D: FLdPr Me
  loc_A4B310: VCallAd Control_ID_FiltroMsk
  loc_A4B313: FStAdFunc var_88
  loc_A4B316: FLdPr var_88
  loc_A4B319: LateIdLdVar var_98 DispID_22 0
  loc_A4B320: CStrVarTmp
  loc_A4B321: FStStrNoPop var_9C
  loc_A4B324: ConcatStr
  loc_A4B325: FStStrNoPop var_A0
  loc_A4B328: FLdPr Me
  loc_A4B32B: MemStStrCopy
  loc_A4B32F: FFreeStr var_9C = ""
  loc_A4B336: FFree1Ad var_88
  loc_A4B339: FFree1Var var_98 = ""
  loc_A4B33C: Branch loc_A4B3D4
  loc_A4B33F: FLdRfVar var_A2
  loc_A4B342: FLdPr Me
  loc_A4B345: VCallAd Control_ID_FiltroCbo
  loc_A4B348: FStAdFunc var_88
  loc_A4B34B: FLdPr var_88
  loc_A4B34E:  = Me.ListIndex
  loc_A4B353: FLdI2 var_A2
  loc_A4B356: LitI2_Byte 1
  loc_A4B358: EqI2
  loc_A4B359: FFree1Ad var_88
  loc_A4B35C: BranchF loc_A4B3D4
  loc_A4B35F: LitStr "ExpeImpu LIKE '"
  loc_A4B362: FLdPr Me
  loc_A4B365: VCallAd Control_ID_FiltroMsk
  loc_A4B368: FStAdFunc var_88
  loc_A4B36B: FLdPr var_88
  loc_A4B36E: LateIdLdVar var_98 DispID_22 0
  loc_A4B375: CStrVarTmp
  loc_A4B376: FStStrNoPop var_9C
  loc_A4B379: ConcatStr
  loc_A4B37A: FStStrNoPop var_A0
  loc_A4B37D: LitStr Chr(37) & "'"
  loc_A4B380: ConcatStr
  loc_A4B381: PopTmpLdAdStr
  loc_A4B385: FLdPr Me
  loc_A4B388: MemLdRfVar from_stack_1.global_56
  loc_A4B38B: NewIfNullPr clsordenpago
  loc_A4B38E: Call clsordenpago.Filter(from_stack_1v)
  loc_A4B393: FFreeStr var_9C = "": var_A0 = ""
  loc_A4B39C: FFree1Ad var_88
  loc_A4B39F: FFree1Var var_98 = ""
  loc_A4B3A2: LitStr "Expediente comience con: "
  loc_A4B3A5: FLdPr Me
  loc_A4B3A8: VCallAd Control_ID_FiltroMsk
  loc_A4B3AB: FStAdFunc var_88
  loc_A4B3AE: FLdPr var_88
  loc_A4B3B1: LateIdLdVar var_98 DispID_22 0
  loc_A4B3B8: CStrVarTmp
  loc_A4B3B9: FStStrNoPop var_9C
  loc_A4B3BC: ConcatStr
  loc_A4B3BD: FStStrNoPop var_A0
  loc_A4B3C0: FLdPr Me
  loc_A4B3C3: MemStStrCopy
  loc_A4B3C7: FFreeStr var_9C = ""
  loc_A4B3CE: FFree1Ad var_88
  loc_A4B3D1: FFree1Var var_98 = ""
  loc_A4B3D4: Branch loc_A4B3FB
  loc_A4B3D7: LitStr vbNullString
  loc_A4B3DA: FStStrCopy var_9C
  loc_A4B3DD: FLdRfVar var_9C
  loc_A4B3E0: FLdPr Me
  loc_A4B3E3: MemLdRfVar from_stack_1.global_56
  loc_A4B3E6: NewIfNullPr clsordenpago
  loc_A4B3E9: Call clsordenpago.Filter(from_stack_1v)
  loc_A4B3EE: FFree1Str var_9C
  loc_A4B3F1: LitStr vbNullString
  loc_A4B3F4: FLdPr Me
  loc_A4B3F7: MemStStrCopy
  loc_A4B3FB: FLdRfVar var_AC
  loc_A4B3FE: FLdPr Me
  loc_A4B401: MemLdRfVar from_stack_1.global_56
  loc_A4B404: NewIfNullPr clsordenpago
  loc_A4B407: from_stack_1 = clsordenpago.RecordCount
  loc_A4B40C: ILdRf var_AC
  loc_A4B40F: LitI4 0
  loc_A4B414: GtI4
  loc_A4B415: BranchF loc_A4B4BF
  loc_A4B418: FLdPr Me
  loc_A4B41B: MemLdRfVar from_stack_1.global_56
  loc_A4B41E: NewIfNullAd
  loc_A4B421: FStAd var_B0 
  loc_A4B425: FLdRfVar var_B0
  loc_A4B428: CVarRef
  loc_A4B42D: ILdRf Me
  loc_A4B430: CastAd
  loc_A4B433: FStAdFunc var_88
  loc_A4B436: FLdRfVar var_88
  loc_A4B439: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A4B43E: ILdRf var_B0
  loc_A4B441: CastAd
  loc_A4B444: FLdPr Me
  loc_A4B447: MemStAdFunc
  loc_A4B44B: FFreeAd var_88 = ""
  loc_A4B452: LitI4 0
  loc_A4B457: LitI4 1
  loc_A4B45C: FLdRfVar var_C4
  loc_A4B45F: Redim
  loc_A4B469: FLdPr Me
  loc_A4B46C: MemLdRfVar from_stack_1.global_56
  loc_A4B46F: NewIfNullAd
  loc_A4B472: FStAd var_88 
  loc_A4B476: FLdRfVar var_88
  loc_A4B479: CVarRef
  loc_A4B47E: ParmAry1St
  loc_A4B484: FLdPr Me
  loc_A4B487: VCallAd Control_ID_dgdABMS
  loc_A4B48A: CVarAd
  loc_A4B48E: ParmAry1St
  loc_A4B494: FLdRfVar var_C4
  loc_A4B497: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A4B49C: ILdRf var_88
  loc_A4B49F: CastAd
  loc_A4B4A2: FLdPr Me
  loc_A4B4A5: MemStAdFunc
  loc_A4B4A9: FLdRfVar var_C4
  loc_A4B4AC: Erase
  loc_A4B4AD: FFree1Ad var_88
  loc_A4B4B0: LitI2_Byte 0
  loc_A4B4B2: LitVarI2 var_98, 0
  loc_A4B4B7: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A4B4BC: FFree1Var var_98 = ""
  loc_A4B4BF: FLdPr Me
  loc_A4B4C2: VCallAd Control_ID_dgdABMS
  loc_A4B4C5: FStAdFunc var_B0
  loc_A4B4C8: LitI4 0
  loc_A4B4CD: FStStrCopy var_9C
  loc_A4B4D0: FLdRfVar var_9C
  loc_A4B4D3: FLdPr Me
  loc_A4B4D6: MemLdStr global_84
  loc_A4B4D9: FLdZeroAd var_B0
  loc_A4B4DC: FStAdFunc var_88
  loc_A4B4DF: FLdRfVar var_88
  loc_A4B4E2: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A4B4E7: FFree1Str var_9C
  loc_A4B4EA: FFreeAd var_88 = ""
  loc_A4B4F1: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'C21F34
  'Data Table: 44AAFC
  loc_C1E3E4: ILdRf Button
  loc_C1E3E7: FStAd var_88 
  loc_C1E3EB: FLdRfVar var_8C
  loc_C1E3EE: FLdPr var_88
  loc_C1E3F1:  = Me.Key
  loc_C1E3F6: FLdZeroAd var_8C
  loc_C1E3F9: FStStr var_90
  loc_C1E3FC: ILdRf var_90
  loc_C1E3FF: LitStr "btnCrear"
  loc_C1E402: EqStr
  loc_C1E404: BranchF loc_C1E5AF
  loc_C1E407: Call Form_Activate()
  loc_C1E40C: FLdRfVar var_94
  loc_C1E40F: FLdPr Me
  loc_C1E412: MemLdRfVar from_stack_1.global_56
  loc_C1E415: NewIfNullPr clsordenpago
  loc_C1E418: from_stack_1 = clsordenpago.RecordCount
  loc_C1E41D: ILdRf var_94
  loc_C1E420: LitI4 0
  loc_C1E425: GtI4
  loc_C1E426: FLdRfVar var_98
  loc_C1E429: FLdPr Me
  loc_C1E42C: MemLdRfVar from_stack_1.global_56
  loc_C1E42F: NewIfNullPr clsordenpago
  loc_C1E432: from_stack_1 = clsordenpago.AbsolutePosition
  loc_C1E437: ILdRf var_98
  loc_C1E43A: LitI4 -3
  loc_C1E43F: NeI4
  loc_C1E440: AndI4
  loc_C1E441: BranchF loc_C1E5AC
  loc_C1E444: LitI2_Byte 1
  loc_C1E446: FLdPr Me
  loc_C1E449: MemStUI1
  loc_C1E44D: ILdRf Me
  loc_C1E450: CastAd
  loc_C1E453: FStAdFunc var_9C
  loc_C1E456: FLdRfVar var_9C
  loc_C1E459: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_C1E45E: FFree1Ad var_9C
  loc_C1E461: LitI4 0
  loc_C1E466: LitI4 0
  loc_C1E46B: FLdRfVar var_A0
  loc_C1E46E: Redim
  loc_C1E478: FLdPr Me
  loc_C1E47B: VCallAd Control_ID_dgdABMS
  loc_C1E47E: CVarAd
  loc_C1E482: ParmAry1St
  loc_C1E488: FLdRfVar var_A0
  loc_C1E48B: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_C1E490: FLdRfVar var_A0
  loc_C1E493: Erase
  loc_C1E494: LitI4 0
  loc_C1E499: LitI4 2
  loc_C1E49E: FLdRfVar var_A0
  loc_C1E4A1: Redim
  loc_C1E4AB: FLdPr Me
  loc_C1E4AE: VCallAd Control_ID_chkSeleTodo
  loc_C1E4B1: CVarAd
  loc_C1E4B5: ParmAry1St
  loc_C1E4BB: FLdPr Me
  loc_C1E4BE: VCallAd Control_ID_FlexCheque
  loc_C1E4C1: CVarAd
  loc_C1E4C5: ParmAry1St
  loc_C1E4CB: FLdPr Me
  loc_C1E4CE: VCallAd Control_ID_FechaMsk
  loc_C1E4D1: CVarAd
  loc_C1E4D5: ParmAry1St
  loc_C1E4DB: FLdRfVar var_A0
  loc_C1E4DE: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_C1E4E3: FLdRfVar var_A0
  loc_C1E4E6: Erase
  loc_C1E4E7: FLdPr Me
  loc_C1E4EA: VCallAd Control_ID_FechaMsk
  loc_C1E4ED: FStAdFunc var_9C
  loc_C1E4F0: FLdPr var_9C
  loc_C1E4F3: LateIdLdVar var_B0 DispID_22 0
  loc_C1E4FA: CStrVarTmp
  loc_C1E4FB: FStStrNoPop var_8C
  loc_C1E4FE: LitStr vbNullString
  loc_C1E501: EqStr
  loc_C1E503: FFree1Str var_8C
  loc_C1E506: FFree1Ad var_9C
  loc_C1E509: FFree1Var var_B0 = ""
  loc_C1E50C: BranchF loc_C1E52F
  loc_C1E50F: ImpAdLdFPR8 MemVar_C3D04C
  loc_C1E512: CStrDate
  loc_C1E514: CVarStr var_B0
  loc_C1E517: PopAdLdVar
  loc_C1E518: FLdPr Me
  loc_C1E51B: VCallAd Control_ID_FechaMsk
  loc_C1E51E: FStAdFunc var_9C
  loc_C1E521: FLdPr var_9C
  loc_C1E524: LateIdSt
  loc_C1E529: FFree1Ad var_9C
  loc_C1E52C: FFree1Var var_B0 = ""
  loc_C1E52F: LitStr "Municipalidad de Guaymallén"
  loc_C1E532: LitStr "Municipalidad de Guaymallén"
  loc_C1E535: EqStr
  loc_C1E537: BranchF loc_C1E580
  loc_C1E53A: LitVar_FALSE
  loc_C1E53E: LitVar_TRUE var_B0
  loc_C1E541: ImpAdLdI4 MemVar_C3D03C
  loc_C1E544: LitStr "root"
  loc_C1E547: EqStr
  loc_C1E549: CVarBoolI2 var_E0
  loc_C1E54D: FLdRfVar var_D0
  loc_C1E550: ImpAdCallFPR4  = IIf(, , )
  loc_C1E555: FLdRfVar var_D0
  loc_C1E558: CBoolVar
  loc_C1E55A: CVarBoolI2 var_110
  loc_C1E55E: PopAdLdVar
  loc_C1E55F: FLdPr Me
  loc_C1E562: VCallAd Control_ID_FechaMsk
  loc_C1E565: FStAdFunc var_9C
  loc_C1E568: FLdPr var_9C
  loc_C1E56B: LateIdSt
  loc_C1E570: FFree1Ad var_9C
  loc_C1E573: FFreeVar var_E0 = "": var_B0 = "": var_C0 = "": var_D0 = ""
  loc_C1E580: LitI4 0
  loc_C1E585: CI2I4
  loc_C1E586: FLdPr Me
  loc_C1E589: VCallAd Control_ID_chkSeleTodo
  loc_C1E58C: FStAdFunc var_9C
  loc_C1E58F: FLdPr var_9C
  loc_C1E592: Me.Value = from_stack_1
  loc_C1E597: FFree1Ad var_9C
  loc_C1E59A: FLdPr Me
  loc_C1E59D: VCallAd Control_ID_FechaMsk
  loc_C1E5A0: CVarAd
  loc_C1E5A4: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_C1E5A9: FFree1Var var_B0 = ""
  loc_C1E5AC: Branch loc_C21F30
  loc_C1E5AF: ILdRf var_90
  loc_C1E5B2: LitStr "btnModificar"
  loc_C1E5B5: EqStr
  loc_C1E5B7: BranchF loc_C1E5CA
  loc_C1E5BA: LitI4 0
  loc_C1E5BF: LitStr "Opción no disponible en esta pantalla."
  loc_C1E5C2: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C1E5C7: Branch loc_C21F30
  loc_C1E5CA: ILdRf var_90
  loc_C1E5CD: LitStr "btnEliminar"
  loc_C1E5D0: EqStr
  loc_C1E5D2: BranchF loc_C1EAE5
  loc_C1E5D5: Call Form_Activate()
  loc_C1E5DA: FLdRfVar var_94
  loc_C1E5DD: FLdPr Me
  loc_C1E5E0: MemLdRfVar from_stack_1.global_56
  loc_C1E5E3: NewIfNullPr clsordenpago
  loc_C1E5E6: from_stack_1 = clsordenpago.RecordCount
  loc_C1E5EB: ILdRf var_94
  loc_C1E5EE: LitI4 0
  loc_C1E5F3: GtI4
  loc_C1E5F4: BranchF loc_C1EAE2
  loc_C1E5F7: FLdRfVar var_B0
  loc_C1E5FA: FLdRfVar var_128
  loc_C1E5FD: LitVarStr var_E0, "PeriInfo"
  loc_C1E602: PopAdLdVar
  loc_C1E603: FLdRfVar var_124
  loc_C1E606: FLdRfVar var_9C
  loc_C1E609: FLdPr Me
  loc_C1E60C: MemLdRfVar from_stack_1.global_56
  loc_C1E60F: NewIfNullPr clsordenpago
  loc_C1E612: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1E617: FLdPr var_9C
  loc_C1E61A:  = Me.Fields
  loc_C1E61F: FLdPr var_124
  loc_C1E622: from_stack_2 = Me.Item(from_stack_1)
  loc_C1E627: FLdPr var_128
  loc_C1E62A:  = Me.Value
  loc_C1E62F: FLdRfVar var_C0
  loc_C1E632: FLdRfVar var_134
  loc_C1E635: LitVarStr var_F0, "NumeOrpa"
  loc_C1E63A: PopAdLdVar
  loc_C1E63B: FLdRfVar var_130
  loc_C1E63E: FLdRfVar var_12C
  loc_C1E641: FLdPr Me
  loc_C1E644: MemLdRfVar from_stack_1.global_56
  loc_C1E647: NewIfNullPr clsordenpago
  loc_C1E64A: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1E64F: FLdPr var_12C
  loc_C1E652:  = Me.Fields
  loc_C1E657: FLdPr var_130
  loc_C1E65A: from_stack_2 = Me.Item(from_stack_1)
  loc_C1E65F: FLdPr var_134
  loc_C1E662:  = Me.Value
  loc_C1E667: FLdRfVar var_8C
  loc_C1E66A: FLdRfVar var_C0
  loc_C1E66D: CI4Var
  loc_C1E66F: FLdRfVar var_B0
  loc_C1E672: CI2Var
  loc_C1E673: FLdPr Me
  loc_C1E676: MemLdRfVar from_stack_1.global_56
  loc_C1E679: NewIfNullPr clsordenpago
  loc_C1E67C: from_stack_3v = clsordenpago.ChequesEntregadosxOP(from_stack_1v, from_stack_2v)
  loc_C1E681: ILdRf var_8C
  loc_C1E684: FLdPr Me
  loc_C1E687: MemStStrCopy
  loc_C1E68B: FFree1Str var_8C
  loc_C1E68E: FFreeAd var_9C = "": var_124 = "": var_12C = "": var_130 = "": var_128 = ""
  loc_C1E69D: FFreeVar var_B0 = ""
  loc_C1E6A4: FLdPr Me
  loc_C1E6A7: MemLdStr global_72
  loc_C1E6AA: LitStr vbNullString
  loc_C1E6AD: NeStr
  loc_C1E6AF: BranchF loc_C1E7C5
  loc_C1E6B2: LitI4 0
  loc_C1E6B7: FLdPr Me
  loc_C1E6BA: MemLdStr global_72
  loc_C1E6BD: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C1E6C2: LitI2_Byte &HFF
  loc_C1E6C4: PopTmpLdAd2 var_138
  loc_C1E6C7: LitI2_Byte &HFF
  loc_C1E6C9: PopTmpLdAd2 var_136
  loc_C1E6CC: LitStr "¿ANULA >>SOLO<< los cheques SELECCIONADOS?"
  loc_C1E6CF: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C1E6D4: CI4UI1
  loc_C1E6D5: LitI4 6
  loc_C1E6DA: EqI4
  loc_C1E6DB: BranchF loc_C1E7C2
  loc_C1E6DE: LitI2_Byte 3
  loc_C1E6E0: FLdPr Me
  loc_C1E6E3: MemStUI1
  loc_C1E6E7: LitI2_Byte &HFF
  loc_C1E6E9: FLdPr Me
  loc_C1E6EC: MemStI2 global_88
  loc_C1E6EF: ILdRf Me
  loc_C1E6F2: CastAd
  loc_C1E6F5: FStAdFunc var_9C
  loc_C1E6F8: FLdRfVar var_9C
  loc_C1E6FB: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_C1E700: FFree1Ad var_9C
  loc_C1E703: LitI4 0
  loc_C1E708: LitI4 0
  loc_C1E70D: FLdRfVar var_A0
  loc_C1E710: Redim
  loc_C1E71A: FLdPr Me
  loc_C1E71D: VCallAd Control_ID_dgdABMS
  loc_C1E720: CVarAd
  loc_C1E724: ParmAry1St
  loc_C1E72A: FLdRfVar var_A0
  loc_C1E72D: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_C1E732: FLdRfVar var_A0
  loc_C1E735: Erase
  loc_C1E736: LitI4 0
  loc_C1E73B: LitI4 2
  loc_C1E740: FLdRfVar var_A0
  loc_C1E743: Redim
  loc_C1E74D: FLdPr Me
  loc_C1E750: VCallAd Control_ID_FechaMsk
  loc_C1E753: CVarAd
  loc_C1E757: ParmAry1St
  loc_C1E75D: FLdPr Me
  loc_C1E760: VCallAd Control_ID_FlexCheque
  loc_C1E763: CVarAd
  loc_C1E767: ParmAry1St
  loc_C1E76D: FLdPr Me
  loc_C1E770: VCallAd Control_ID_chkSeleTodo
  loc_C1E773: CVarAd
  loc_C1E777: ParmAry1St
  loc_C1E77D: FLdRfVar var_A0
  loc_C1E780: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_C1E785: FLdRfVar var_A0
  loc_C1E788: Erase
  loc_C1E789: LitI2_Byte 0
  loc_C1E78B: PopTmpLdAd2 var_136
  loc_C1E78E: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_C1E793: CStrDate
  loc_C1E795: CVarStr var_B0
  loc_C1E798: PopAdLdVar
  loc_C1E799: FLdPr Me
  loc_C1E79C: VCallAd Control_ID_FechaMsk
  loc_C1E79F: FStAdFunc var_9C
  loc_C1E7A2: FLdPr var_9C
  loc_C1E7A5: LateIdSt
  loc_C1E7AA: FFree1Ad var_9C
  loc_C1E7AD: FFree1Var var_B0 = ""
  loc_C1E7B0: FLdPr Me
  loc_C1E7B3: VCallAd Control_ID_FechaMsk
  loc_C1E7B6: CVarAd
  loc_C1E7BA: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_C1E7BF: FFree1Var var_B0 = ""
  loc_C1E7C2: Branch loc_C1EAE2
  loc_C1E7C5: FLdRfVar var_B0
  loc_C1E7C8: FLdRfVar var_128
  loc_C1E7CB: LitVarStr var_E0, "FereOrpa"
  loc_C1E7D0: PopAdLdVar
  loc_C1E7D1: FLdRfVar var_124
  loc_C1E7D4: FLdRfVar var_9C
  loc_C1E7D7: FLdPr Me
  loc_C1E7DA: MemLdRfVar from_stack_1.global_56
  loc_C1E7DD: NewIfNullPr clsordenpago
  loc_C1E7E0: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1E7E5: FLdPr var_9C
  loc_C1E7E8:  = Me.Fields
  loc_C1E7ED: FLdPr var_124
  loc_C1E7F0: from_stack_2 = Me.Item(from_stack_1)
  loc_C1E7F5: FLdPr var_128
  loc_C1E7F8:  = Me.Value
  loc_C1E7FD: FLdRfVar var_C0
  loc_C1E800: FLdRfVar var_134
  loc_C1E803: LitVarStr var_F0, "FechOrpa"
  loc_C1E808: PopAdLdVar
  loc_C1E809: FLdRfVar var_130
  loc_C1E80C: FLdRfVar var_12C
  loc_C1E80F: FLdPr Me
  loc_C1E812: MemLdRfVar from_stack_1.global_56
  loc_C1E815: NewIfNullPr clsordenpago
  loc_C1E818: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1E81D: FLdPr var_12C
  loc_C1E820:  = Me.Fields
  loc_C1E825: FLdPr var_130
  loc_C1E828: from_stack_2 = Me.Item(from_stack_1)
  loc_C1E82D: FLdPr var_134
  loc_C1E830:  = Me.Value
  loc_C1E835: LitI2_Byte &HFF
  loc_C1E837: PopTmpLdAd2 var_136
  loc_C1E83A: LitNothing
  loc_C1E83C: CastAd
  loc_C1E83F: FStAdFunc var_140
  loc_C1E842: FLdRfVar var_140
  loc_C1E845: FLdRfVar var_C0
  loc_C1E848: CStrVarTmp
  loc_C1E849: FStStrNoPop var_13C
  loc_C1E84C: LitI2_Byte &HFF
  loc_C1E84E: LitI2_Byte &HFF
  loc_C1E850: FLdRfVar var_B0
  loc_C1E853: CStrVarTmp
  loc_C1E854: FStStrNoPop var_8C
  loc_C1E857: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_C1E85C: FStStrNoPop var_144
  loc_C1E85F: FLdPr Me
  loc_C1E862: MemStStrCopy
  loc_C1E866: FFreeStr var_8C = "": var_13C = ""
  loc_C1E86F: FFreeAd var_9C = "": var_124 = "": var_12C = "": var_130 = "": var_128 = "": var_134 = ""
  loc_C1E880: FFreeVar var_B0 = ""
  loc_C1E887: FLdPr Me
  loc_C1E88A: MemLdStr global_72
  loc_C1E88D: LitStr vbNullString
  loc_C1E890: NeStr
  loc_C1E892: BranchF loc_C1E9EB
  loc_C1E895: LitI4 0
  loc_C1E89A: FLdPr Me
  loc_C1E89D: MemLdStr global_72
  loc_C1E8A0: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C1E8A5: FLdRfVar var_B0
  loc_C1E8A8: FLdRfVar var_128
  loc_C1E8AB: LitVarStr var_E0, "NumeOrpa"
  loc_C1E8B0: PopAdLdVar
  loc_C1E8B1: FLdRfVar var_124
  loc_C1E8B4: FLdRfVar var_9C
  loc_C1E8B7: FLdPr Me
  loc_C1E8BA: MemLdRfVar from_stack_1.global_56
  loc_C1E8BD: NewIfNullPr clsordenpago
  loc_C1E8C0: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1E8C5: FLdPr var_9C
  loc_C1E8C8:  = Me.Fields
  loc_C1E8CD: FLdPr var_124
  loc_C1E8D0: from_stack_2 = Me.Item(from_stack_1)
  loc_C1E8D5: FLdPr var_128
  loc_C1E8D8:  = Me.Value
  loc_C1E8DD: LitI2_Byte 0
  loc_C1E8DF: PopTmpLdAd2 var_138
  loc_C1E8E2: LitI2_Byte &HFF
  loc_C1E8E4: PopTmpLdAd2 var_136
  loc_C1E8E7: LitVarStr var_F0, "¿ANULA >>TODA<< la Orden de Pago número: "
  loc_C1E8EC: FLdRfVar var_B0
  loc_C1E8EF: ConcatVar var_C0
  loc_C1E8F3: LitVarStr var_100, " ?"
  loc_C1E8F8: ConcatVar var_D0
  loc_C1E8FC: CStrVarVal var_8C
  loc_C1E900: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C1E905: CI4UI1
  loc_C1E906: LitI4 6
  loc_C1E90B: EqI4
  loc_C1E90C: FFree1Str var_8C
  loc_C1E90F: FFreeAd var_9C = "": var_124 = ""
  loc_C1E918: FFreeVar var_B0 = "": var_C0 = ""
  loc_C1E921: BranchF loc_C1E9E8
  loc_C1E924: LitI2_Byte 3
  loc_C1E926: FLdPr Me
  loc_C1E929: MemStUI1
  loc_C1E92D: LitI2_Byte 0
  loc_C1E92F: FLdPr Me
  loc_C1E932: MemStI2 global_88
  loc_C1E935: ILdRf Me
  loc_C1E938: CastAd
  loc_C1E93B: FStAdFunc var_9C
  loc_C1E93E: FLdRfVar var_9C
  loc_C1E941: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_C1E946: FFree1Ad var_9C
  loc_C1E949: LitI4 0
  loc_C1E94E: LitI4 0
  loc_C1E953: FLdRfVar var_A0
  loc_C1E956: Redim
  loc_C1E960: FLdPr Me
  loc_C1E963: VCallAd Control_ID_dgdABMS
  loc_C1E966: CVarAd
  loc_C1E96A: ParmAry1St
  loc_C1E970: FLdRfVar var_A0
  loc_C1E973: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_C1E978: FLdRfVar var_A0
  loc_C1E97B: Erase
  loc_C1E97C: LitI4 0
  loc_C1E981: LitI4 0
  loc_C1E986: FLdRfVar var_A0
  loc_C1E989: Redim
  loc_C1E993: FLdPr Me
  loc_C1E996: VCallAd Control_ID_FechaMsk
  loc_C1E999: CVarAd
  loc_C1E99D: ParmAry1St
  loc_C1E9A3: FLdRfVar var_A0
  loc_C1E9A6: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_C1E9AB: FLdRfVar var_A0
  loc_C1E9AE: Erase
  loc_C1E9AF: LitI2_Byte 0
  loc_C1E9B1: PopTmpLdAd2 var_136
  loc_C1E9B4: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_C1E9B9: CStrDate
  loc_C1E9BB: CVarStr var_B0
  loc_C1E9BE: PopAdLdVar
  loc_C1E9BF: FLdPr Me
  loc_C1E9C2: VCallAd Control_ID_FechaMsk
  loc_C1E9C5: FStAdFunc var_9C
  loc_C1E9C8: FLdPr var_9C
  loc_C1E9CB: LateIdSt
  loc_C1E9D0: FFree1Ad var_9C
  loc_C1E9D3: FFree1Var var_B0 = ""
  loc_C1E9D6: FLdPr Me
  loc_C1E9D9: VCallAd Control_ID_FechaMsk
  loc_C1E9DC: CVarAd
  loc_C1E9E0: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_C1E9E5: FFree1Var var_B0 = ""
  loc_C1E9E8: Branch loc_C1EAE2
  loc_C1E9EB: FLdRfVar var_B0
  loc_C1E9EE: FLdRfVar var_128
  loc_C1E9F1: LitVarStr var_E0, "NumeOrpa"
  loc_C1E9F6: PopAdLdVar
  loc_C1E9F7: FLdRfVar var_124
  loc_C1E9FA: FLdRfVar var_9C
  loc_C1E9FD: FLdPr Me
  loc_C1EA00: MemLdRfVar from_stack_1.global_56
  loc_C1EA03: NewIfNullPr clsordenpago
  loc_C1EA06: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1EA0B: FLdPr var_9C
  loc_C1EA0E:  = Me.Fields
  loc_C1EA13: FLdPr var_124
  loc_C1EA16: from_stack_2 = Me.Item(from_stack_1)
  loc_C1EA1B: FLdPr var_128
  loc_C1EA1E:  = Me.Value
  loc_C1EA23: LitI2_Byte 0
  loc_C1EA25: PopTmpLdAd2 var_138
  loc_C1EA28: LitI2_Byte &HFF
  loc_C1EA2A: PopTmpLdAd2 var_136
  loc_C1EA2D: LitVarStr var_F0, "¿ANULA la >>REMISIÓN<< de la Orden de Pago número: "
  loc_C1EA32: FLdRfVar var_B0
  loc_C1EA35: ConcatVar var_C0
  loc_C1EA39: LitVarStr var_100, " ?"
  loc_C1EA3E: ConcatVar var_D0
  loc_C1EA42: CStrVarVal var_8C
  loc_C1EA46: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C1EA4B: CI4UI1
  loc_C1EA4C: LitI4 6
  loc_C1EA51: EqI4
  loc_C1EA52: FFree1Str var_8C
  loc_C1EA55: FFreeAd var_9C = "": var_124 = ""
  loc_C1EA5E: FFreeVar var_B0 = "": var_C0 = ""
  loc_C1EA67: BranchF loc_C1EAE2
  loc_C1EA6A: FLdPr Me
  loc_C1EA6D: MemLdRfVar from_stack_1.global_56
  loc_C1EA70: NewIfNullPr clsordenpago
  loc_C1EA73: Call clsordenpago.ActualizaFereNULL()
  loc_C1EA78: LitI4 0
  loc_C1EA7D: LitVarStr var_F0, "Se ANULÓ la REMISIÓN de la ORDEN DE PAGO Número: "
  loc_C1EA82: FLdRfVar var_B0
  loc_C1EA85: FLdRfVar var_128
  loc_C1EA88: LitVarStr var_E0, "NumeOrpa"
  loc_C1EA8D: PopAdLdVar
  loc_C1EA8E: FLdRfVar var_124
  loc_C1EA91: FLdRfVar var_9C
  loc_C1EA94: FLdPr Me
  loc_C1EA97: MemLdRfVar from_stack_1.global_56
  loc_C1EA9A: NewIfNullPr clsordenpago
  loc_C1EA9D: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1EAA2: FLdPr var_9C
  loc_C1EAA5:  = Me.Fields
  loc_C1EAAA: FLdPr var_124
  loc_C1EAAD: from_stack_2 = Me.Item(from_stack_1)
  loc_C1EAB2: FLdPr var_128
  loc_C1EAB5:  = Me.Value
  loc_C1EABA: FLdRfVar var_B0
  loc_C1EABD: ConcatVar var_C0
  loc_C1EAC1: CStrVarVal var_8C
  loc_C1EAC5: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C1EACA: FFree1Str var_8C
  loc_C1EACD: FFreeAd var_9C = "": var_124 = ""
  loc_C1EAD6: FFreeVar var_B0 = ""
  loc_C1EADD: Call cmdCancelar_Click()
  loc_C1EAE2: Branch loc_C21F30
  loc_C1EAE5: ILdRf var_90
  loc_C1EAE8: LitStr "btnGuardar"
  loc_C1EAEB: EqStr
  loc_C1EAED: BranchF loc_C21E2C
  loc_C1EAF0: LitStr vbNullString
  loc_C1EAF3: FLdPr Me
  loc_C1EAF6: MemStStrCopy
  loc_C1EAFA: LitI2_Byte 0
  loc_C1EAFC: PopTmpLdAd2 var_136
  loc_C1EAFF: Call FechaMsk_UnknownEvent_8()
  loc_C1EB04: FLdPr Me
  loc_C1EB07: MemLdStr global_72
  loc_C1EB0A: LitStr vbNullString
  loc_C1EB0D: NeStr
  loc_C1EB0F: BranchF loc_C1EB13
  loc_C1EB12: ExitProcHresult
  loc_C1EB13: LitI2_Byte 0
  loc_C1EB15: PopTmpLdAd2 var_136
  loc_C1EB18: from_stack_2v = FlexCheque_UnknownEvent_8(from_stack_1v)
  loc_C1EB1D: FLdPr Me
  loc_C1EB20: MemLdStr global_72
  loc_C1EB23: LitStr vbNullString
  loc_C1EB26: NeStr
  loc_C1EB28: BranchF loc_C1EB2C
  loc_C1EB2B: ExitProcHresult
  loc_C1EB2C: LitStr "Municipalidad de Guaymallén"
  loc_C1EB2F: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_C1EB32: EqStr
  loc_C1EB34: BranchF loc_C1EBA8
  loc_C1EB37: FLdPr Me
  loc_C1EB3A: VCallAd Control_ID_FechaMsk
  loc_C1EB3D: FStAdFunc var_9C
  loc_C1EB40: FLdPr var_9C
  loc_C1EB43: LateIdLdVar var_B0 DispID_15 0
  loc_C1EB4A: CStrVarTmp
  loc_C1EB4B: CVarStr var_C0
  loc_C1EB4E: PopAdLdVar
  loc_C1EB4F: FLdPr Me
  loc_C1EB52: VCallAd Control_ID_FechaMsk
  loc_C1EB55: FStAdFunc var_124
  loc_C1EB58: FLdPr var_124
  loc_C1EB5B: LateIdSt
  loc_C1EB60: FFreeAd var_9C = ""
  loc_C1EB67: FFreeVar var_B0 = ""
  loc_C1EB6E: FLdPr Me
  loc_C1EB71: VCallAd Control_ID_FechaMsk
  loc_C1EB74: FStAdFunc var_9C
  loc_C1EB77: FLdPr var_9C
  loc_C1EB7A: LateIdLdVar var_B0 DispID_15 0
  loc_C1EB81: CStrVarTmp
  loc_C1EB82: CVarStr var_C0
  loc_C1EB85: FLdRfVar var_D0
  loc_C1EB88: ImpAdCallFPR4  = Year()
  loc_C1EB8D: FLdRfVar var_D0
  loc_C1EB90: ImpAdLdI2 MemVar_C3D064
  loc_C1EB93: CVarI2 var_E0
  loc_C1EB96: HardType
  loc_C1EB97: GtVarBool
  loc_C1EB99: FFree1Ad var_9C
  loc_C1EB9C: FFreeVar var_B0 = "": var_C0 = ""
  loc_C1EBA5: BranchF loc_C1EBA8
  loc_C1EBA8: FLdPr Me
  loc_C1EBAB: MemLdUI1 global_68
  loc_C1EBAF: FStUI1 var_166
  loc_C1EBB3: FLdUI1
  loc_C1EBB7: LitI2_Byte 1
  loc_C1EBB9: EqI2
  loc_C1EBBA: BranchF loc_C218B8
  loc_C1EBBD: FLdRfVar var_B0
  loc_C1EBC0: FLdRfVar var_128
  loc_C1EBC3: LitVarStr var_E0, "NumeOrpa"
  loc_C1EBC8: PopAdLdVar
  loc_C1EBC9: FLdRfVar var_124
  loc_C1EBCC: FLdRfVar var_9C
  loc_C1EBCF: FLdPr Me
  loc_C1EBD2: MemLdRfVar from_stack_1.global_56
  loc_C1EBD5: NewIfNullPr clsordenpago
  loc_C1EBD8: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1EBDD: FLdPr var_9C
  loc_C1EBE0:  = Me.Fields
  loc_C1EBE5: FLdPr var_124
  loc_C1EBE8: from_stack_2 = Me.Item(from_stack_1)
  loc_C1EBED: FLdPr var_128
  loc_C1EBF0:  = Me.Value
  loc_C1EBF5: FLdRfVar var_B0
  loc_C1EBF8: FnCLngVar
  loc_C1EBFA: FStR4 var_150
  loc_C1EBFD: FFreeAd var_9C = "": var_124 = ""
  loc_C1EC06: FFree1Var var_B0 = ""
  loc_C1EC09: LitI2_Byte 0
  loc_C1EC0B: FStI2 var_146
  loc_C1EC0E: FLdPr Me
  loc_C1EC11: MemLdRfVar from_stack_1.global_96
  loc_C1EC14: NewIfNullPr IDictionary
  loc_C1EC17: IDictionary.RemoveAll
  loc_C1EC1C: LitI4 1
  loc_C1EC21: FLdPr Me
  loc_C1EC24: MemLdRfVar from_stack_1.global_76
  loc_C1EC27: FLdPr Me
  loc_C1EC2A: VCallAd Control_ID_FlexCheque
  loc_C1EC2D: FStAdFunc var_9C
  loc_C1EC30: FLdPr var_9C
  loc_C1EC33: LateIdLdVar var_B0 DispID_4 0
  loc_C1EC3A: CI4Var
  loc_C1EC3C: LitI4 1
  loc_C1EC41: SubI4
  loc_C1EC42: FFree1Ad var_9C
  loc_C1EC45: FFree1Var var_B0 = ""
  loc_C1EC48: ForI4 var_170
  loc_C1EC4E: FLdPr Me
  loc_C1EC51: MemLdRfVar from_stack_1.global_76
  loc_C1EC54: CDargRef
  loc_C1EC58: LitVarI4
  loc_C1EC60: PopAdLdVar
  loc_C1EC61: FLdPr Me
  loc_C1EC64: VCallAd Control_ID_FlexCheque
  loc_C1EC67: FStAdFunc var_9C
  loc_C1EC6A: FLdPr var_9C
  loc_C1EC6D: LateIdCallLdVar
  loc_C1EC77: CStrVarTmp
  loc_C1EC78: FStStrNoPop var_8C
  loc_C1EC7B: LitStr "Si"
  loc_C1EC7E: EqStr
  loc_C1EC80: FFree1Str var_8C
  loc_C1EC83: FFree1Ad var_9C
  loc_C1EC86: FFree1Var var_B0 = ""
  loc_C1EC89: BranchF loc_C1EE4E
  loc_C1EC8C: LitI2_Byte &HFF
  loc_C1EC8E: FStI2 var_146
  loc_C1EC91: FLdPr Me
  loc_C1EC94: MemLdRfVar from_stack_1.global_76
  loc_C1EC97: CDargRef
  loc_C1EC9B: LitVarI4
  loc_C1ECA3: PopAdLdVar
  loc_C1ECA4: FLdPr Me
  loc_C1ECA7: VCallAd Control_ID_FlexCheque
  loc_C1ECAA: FStAdFunc var_9C
  loc_C1ECAD: FLdPr var_9C
  loc_C1ECB0: LateIdCallLdVar
  loc_C1ECBA: PopAd
  loc_C1ECBC: FLdRfVar var_136
  loc_C1ECBF: FLdRfVar var_B0
  loc_C1ECC2: CStrVarTmp
  loc_C1ECC3: CVarStr var_C0
  loc_C1ECC6: FLdPr Me
  loc_C1ECC9: MemLdRfVar from_stack_1.global_96
  loc_C1ECCC: NewIfNullPr IDictionary
  loc_C1ECCF: IDictionary.Exists(from_stack_1v)
  loc_C1ECD4: FLdI2 var_136
  loc_C1ECD7: NotI4
  loc_C1ECD8: FFree1Ad var_9C
  loc_C1ECDB: FFreeVar var_B0 = ""
  loc_C1ECE2: BranchF loc_C1EE4E
  loc_C1ECE5: FLdPr Me
  loc_C1ECE8: MemLdRfVar from_stack_1.global_76
  loc_C1ECEB: CDargRef
  loc_C1ECEF: LitVarI4
  loc_C1ECF7: PopAdLdVar
  loc_C1ECF8: FLdPr Me
  loc_C1ECFB: VCallAd Control_ID_FlexCheque
  loc_C1ECFE: FStAdFunc var_9C
  loc_C1ED01: FLdPr var_9C
  loc_C1ED04: LateIdCallLdVar
  loc_C1ED0E: PopAd
  loc_C1ED10: FLdPr Me
  loc_C1ED13: MemLdRfVar from_stack_1.global_76
  loc_C1ED16: CDargRef
  loc_C1ED1A: LitVarI4
  loc_C1ED22: PopAdLdVar
  loc_C1ED23: FLdPr Me
  loc_C1ED26: VCallAd Control_ID_FlexCheque
  loc_C1ED29: FStAdFunc var_124
  loc_C1ED2C: FLdPr var_124
  loc_C1ED2F: LateIdCallLdVar
  loc_C1ED39: PopAd
  loc_C1ED3B: FLdPr Me
  loc_C1ED3E: MemLdRfVar from_stack_1.global_76
  loc_C1ED41: CDargRef
  loc_C1ED45: LitVarI4
  loc_C1ED4D: PopAdLdVar
  loc_C1ED4E: FLdPr Me
  loc_C1ED51: VCallAd Control_ID_FlexCheque
  loc_C1ED54: FStAdFunc var_128
  loc_C1ED57: FLdPr var_128
  loc_C1ED5A: LateIdCallLdVar
  loc_C1ED64: PopAd
  loc_C1ED66: FLdPr Me
  loc_C1ED69: MemLdRfVar from_stack_1.global_76
  loc_C1ED6C: CDargRef
  loc_C1ED70: LitVarI4
  loc_C1ED78: PopAdLdVar
  loc_C1ED79: FLdPr Me
  loc_C1ED7C: VCallAd Control_ID_FlexCheque
  loc_C1ED7F: FStAdFunc var_12C
  loc_C1ED82: FLdPr var_12C
  loc_C1ED85: LateIdCallLdVar
  loc_C1ED8F: PopAd
  loc_C1ED91: FLdPr Me
  loc_C1ED94: MemLdRfVar from_stack_1.global_76
  loc_C1ED97: CDargRef
  loc_C1ED9B: LitVarI4
  loc_C1EDA3: PopAdLdVar
  loc_C1EDA4: FLdPr Me
  loc_C1EDA7: VCallAd Control_ID_FlexCheque
  loc_C1EDAA: FStAdFunc var_130
  loc_C1EDAD: FLdPr var_130
  loc_C1EDB0: LateIdCallLdVar
  loc_C1EDBA: PopAd
  loc_C1EDBC: LitVarStr var_258, vbNullString
  loc_C1EDC1: FStVarCopyObj var_268
  loc_C1EDC4: FLdRfVar var_268
  loc_C1EDC7: FLdRfVar var_164
  loc_C1EDCA: CStrVarTmp
  loc_C1EDCB: FStStrNoPop var_144
  loc_C1EDCE: LitStr ";"
  loc_C1EDD1: ConcatStr
  loc_C1EDD2: FStStrNoPop var_224
  loc_C1EDD5: FLdRfVar var_220
  loc_C1EDD8: CStrVarTmp
  loc_C1EDD9: FStStrNoPop var_228
  loc_C1EDDC: ConcatStr
  loc_C1EDDD: CVarStr var_248
  loc_C1EDE0: FLdRfVar var_C0
  loc_C1EDE3: CStrVarTmp
  loc_C1EDE4: FStStrNoPop var_8C
  loc_C1EDE7: LitStr vbNullString
  loc_C1EDEA: NeStr
  loc_C1EDEC: FLdRfVar var_D0
  loc_C1EDEF: CStrVarTmp
  loc_C1EDF0: FStStrNoPop var_13C
  loc_C1EDF3: LitStr "Transferencia"
  loc_C1EDF6: EqStr
  loc_C1EDF8: AndI4
  loc_C1EDF9: CVarBoolI2 var_238
  loc_C1EDFD: FLdRfVar var_278
  loc_C1EE00: ImpAdCallFPR4  = IIf(, , )
  loc_C1EE05: FLdRfVar var_278
  loc_C1EE08: FLdRfVar var_B0
  loc_C1EE0B: CStrVarTmp
  loc_C1EE0C: CVarStr var_288
  loc_C1EE0F: FLdPr Me
  loc_C1EE12: MemLdRfVar from_stack_1.global_96
  loc_C1EE15: NewIfNullPr IDictionary
  loc_C1EE18: IDictionary.Add(from_stack_1v, from_stack_2v)
  loc_C1EE1D: FFreeStr var_8C = "": var_13C = "": var_144 = "": var_224 = ""
  loc_C1EE2A: FFreeAd var_9C = "": var_124 = "": var_128 = "": var_12C = ""
  loc_C1EE37: FFreeVar var_B0 = "": var_C0 = "": var_D0 = "": var_164 = "": var_220 = "": var_238 = "": var_248 = "": var_268 = "": var_288 = ""
  loc_C1EE4E: FLdPr Me
  loc_C1EE51: MemLdRfVar from_stack_1.global_76
  loc_C1EE54: NextI4 var_170, loc_C1EC4E
  loc_C1EE59: FLdI2 var_146
  loc_C1EE5C: LitI2_Byte 0
  loc_C1EE5E: EqI2
  loc_C1EE5F: BranchF loc_C1EE70
  loc_C1EE62: LitI4 0
  loc_C1EE67: LitStr "Debe Seleccionar al menos un Cheque. Verifique..."
  loc_C1EE6A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C1EE6F: ExitProcHresult
  loc_C1EE70: LitI2_Byte &HFF
  loc_C1EE72: PopTmpLdAd2 var_138
  loc_C1EE75: LitI2_Byte &HFF
  loc_C1EE77: PopTmpLdAd2 var_136
  loc_C1EE7A: LitStr "¿Confirma la Entrega de los Cheques?"
  loc_C1EE7D: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C1EE82: CI4UI1
  loc_C1EE83: LitI4 6
  loc_C1EE88: EqI4
  loc_C1EE89: BranchF loc_C218B5
  loc_C1EE8C: LitVar_TRUE var_E0
  loc_C1EE8F: PopAdLdVar
  loc_C1EE90: FLdPr Me
  loc_C1EE93: VCallAd Control_ID_ProgressBar
  loc_C1EE96: FStAdFunc var_9C
  loc_C1EE99: FLdPr var_9C
  loc_C1EE9C: LateIdSt
  loc_C1EEA1: FFree1Ad var_9C
  loc_C1EEA4: FLdRfVar var_B0
  loc_C1EEA7: FLdRfVar var_128
  loc_C1EEAA: LitVarStr var_E0, "ChunOrpa"
  loc_C1EEAF: PopAdLdVar
  loc_C1EEB0: FLdRfVar var_124
  loc_C1EEB3: FLdRfVar var_9C
  loc_C1EEB6: FLdPr Me
  loc_C1EEB9: MemLdRfVar from_stack_1.global_56
  loc_C1EEBC: NewIfNullPr clsordenpago
  loc_C1EEBF: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1EEC4: FLdPr var_9C
  loc_C1EEC7:  = Me.Fields
  loc_C1EECC: FLdPr var_124
  loc_C1EECF: from_stack_2 = Me.Item(from_stack_1)
  loc_C1EED4: FLdPr var_128
  loc_C1EED7:  = Me.Value
  loc_C1EEDC: FLdRfVar var_B0
  loc_C1EEDF: FnCIntVar
  loc_C1EEE1: LitI2_Byte 1
  loc_C1EEE3: EqI2
  loc_C1EEE4: FFreeAd var_9C = "": var_124 = ""
  loc_C1EEED: FFree1Var var_B0 = ""
  loc_C1EEF0: BranchF loc_C1F08C
  loc_C1EEF3: LitStr "Municipalidad de Guaymallén"
  loc_C1EEF6: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_C1EEF9: EqStr
  loc_C1EEFB: BranchF loc_C1EFC5
  loc_C1EEFE: FLdRfVar var_C0
  loc_C1EF01: FLdRfVar var_128
  loc_C1EF04: LitVarStr var_E0, "ExpeImpu"
  loc_C1EF09: PopAdLdVar
  loc_C1EF0A: FLdRfVar var_124
  loc_C1EF0D: FLdRfVar var_9C
  loc_C1EF10: FLdPr Me
  loc_C1EF13: MemLdRfVar from_stack_1.global_56
  loc_C1EF16: NewIfNullPr clsordenpago
  loc_C1EF19: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1EF1E: FLdPr var_9C
  loc_C1EF21:  = Me.Fields
  loc_C1EF26: FLdPr var_124
  loc_C1EF29: from_stack_2 = Me.Item(from_stack_1)
  loc_C1EF2E: FLdPr var_128
  loc_C1EF31:  = Me.Value
  loc_C1EF36: FLdRfVar var_D0
  loc_C1EF39: FLdRfVar var_134
  loc_C1EF3C: LitVarStr var_F0, "NumeLiqu"
  loc_C1EF41: PopAdLdVar
  loc_C1EF42: FLdRfVar var_130
  loc_C1EF45: FLdRfVar var_12C
  loc_C1EF48: FLdPr Me
  loc_C1EF4B: MemLdRfVar from_stack_1.global_56
  loc_C1EF4E: NewIfNullPr clsordenpago
  loc_C1EF51: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1EF56: FLdPr var_12C
  loc_C1EF59:  = Me.Fields
  loc_C1EF5E: FLdPr var_130
  loc_C1EF61: from_stack_2 = Me.Item(from_stack_1)
  loc_C1EF66: FLdPr var_134
  loc_C1EF69:  = Me.Value
  loc_C1EF6E: FLdPr Me
  loc_C1EF71: VCallAd Control_ID_FechaMsk
  loc_C1EF74: FStAdFunc var_140
  loc_C1EF77: FLdPr var_140
  loc_C1EF7A: LateIdLdVar var_B0 DispID_11 -32767
  loc_C1EF81: CStrVarTmp
  loc_C1EF82: FStStrNoPop var_13C
  loc_C1EF85: FLdRfVar var_D0
  loc_C1EF88: CI2Var
  loc_C1EF89: FLdRfVar var_C0
  loc_C1EF8C: CStrVarTmp
  loc_C1EF8D: FStStrNoPop var_8C
  loc_C1EF90: ImpAdLdI2 MemVar_C3D064
  loc_C1EF93: FLdPr Me
  loc_C1EF96: MemLdRfVar from_stack_1.global_56
  loc_C1EF99: NewIfNullPr clsordenpago
  loc_C1EF9C: Call clsordenpago.ActualizaLNFechCaja(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_C1EFA1: FFreeStr var_8C = ""
  loc_C1EFA8: FFreeAd var_9C = "": var_124 = "": var_12C = "": var_130 = "": var_140 = "": var_128 = ""
  loc_C1EFB9: FFreeVar var_B0 = "": var_C0 = ""
  loc_C1EFC2: Branch loc_C1F089
  loc_C1EFC5: FLdRfVar var_C0
  loc_C1EFC8: FLdRfVar var_128
  loc_C1EFCB: LitVarStr var_E0, "ExpeImpu"
  loc_C1EFD0: PopAdLdVar
  loc_C1EFD1: FLdRfVar var_124
  loc_C1EFD4: FLdRfVar var_9C
  loc_C1EFD7: FLdPr Me
  loc_C1EFDA: MemLdRfVar from_stack_1.global_56
  loc_C1EFDD: NewIfNullPr clsordenpago
  loc_C1EFE0: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1EFE5: FLdPr var_9C
  loc_C1EFE8:  = Me.Fields
  loc_C1EFED: FLdPr var_124
  loc_C1EFF0: from_stack_2 = Me.Item(from_stack_1)
  loc_C1EFF5: FLdPr var_128
  loc_C1EFF8:  = Me.Value
  loc_C1EFFD: FLdRfVar var_D0
  loc_C1F000: FLdRfVar var_134
  loc_C1F003: LitVarStr var_F0, "NumeLiqu"
  loc_C1F008: PopAdLdVar
  loc_C1F009: FLdRfVar var_130
  loc_C1F00C: FLdRfVar var_12C
  loc_C1F00F: FLdPr Me
  loc_C1F012: MemLdRfVar from_stack_1.global_56
  loc_C1F015: NewIfNullPr clsordenpago
  loc_C1F018: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1F01D: FLdPr var_12C
  loc_C1F020:  = Me.Fields
  loc_C1F025: FLdPr var_130
  loc_C1F028: from_stack_2 = Me.Item(from_stack_1)
  loc_C1F02D: FLdPr var_134
  loc_C1F030:  = Me.Value
  loc_C1F035: FLdPr Me
  loc_C1F038: VCallAd Control_ID_FechaMsk
  loc_C1F03B: FStAdFunc var_140
  loc_C1F03E: FLdPr var_140
  loc_C1F041: LateIdLdVar var_B0 DispID_15 0
  loc_C1F048: CStrVarTmp
  loc_C1F049: FStStrNoPop var_13C
  loc_C1F04C: FLdRfVar var_D0
  loc_C1F04F: CI2Var
  loc_C1F050: FLdRfVar var_C0
  loc_C1F053: CStrVarTmp
  loc_C1F054: FStStrNoPop var_8C
  loc_C1F057: ImpAdLdI2 MemVar_C3D064
  loc_C1F05A: FLdPr Me
  loc_C1F05D: MemLdRfVar from_stack_1.global_56
  loc_C1F060: NewIfNullPr clsordenpago
  loc_C1F063: Call clsordenpago.ActualizaLNFechCaja(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_C1F068: FFreeStr var_8C = ""
  loc_C1F06F: FFreeAd var_9C = "": var_124 = "": var_12C = "": var_130 = "": var_140 = "": var_128 = ""
  loc_C1F080: FFreeVar var_B0 = "": var_C0 = ""
  loc_C1F089: Branch loc_C1F2F2
  loc_C1F08C: LitI4 0
  loc_C1F091: FLdPr Me
  loc_C1F094: MemLdRfVar from_stack_1.global_76
  loc_C1F097: FLdRfVar var_94
  loc_C1F09A: FLdPr Me
  loc_C1F09D: MemLdRfVar from_stack_1.global_96
  loc_C1F0A0: NewIfNullPr IDictionary
  loc_C1F0A3:  = IDictionary.Count
  loc_C1F0A8: ILdRf var_94
  loc_C1F0AB: LitI4 1
  loc_C1F0B0: SubI4
  loc_C1F0B1: ForI4 var_290
  loc_C1F0B7: LitStr "Municipalidad de Guaymallén"
  loc_C1F0BA: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_C1F0BD: EqStr
  loc_C1F0BF: BranchF loc_C1F1BC
  loc_C1F0C2: FLdRfVar var_D0
  loc_C1F0C5: FLdRfVar var_128
  loc_C1F0C8: LitVarStr var_E0, "ExpeImpu"
  loc_C1F0CD: PopAdLdVar
  loc_C1F0CE: FLdRfVar var_124
  loc_C1F0D1: FLdRfVar var_9C
  loc_C1F0D4: FLdPr Me
  loc_C1F0D7: MemLdRfVar from_stack_1.global_56
  loc_C1F0DA: NewIfNullPr clsordenpago
  loc_C1F0DD: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1F0E2: FLdPr var_9C
  loc_C1F0E5:  = Me.Fields
  loc_C1F0EA: FLdPr var_124
  loc_C1F0ED: from_stack_2 = Me.Item(from_stack_1)
  loc_C1F0F2: FLdPr var_128
  loc_C1F0F5:  = Me.Value
  loc_C1F0FA: FLdRfVar var_164
  loc_C1F0FD: FLdRfVar var_134
  loc_C1F100: LitVarStr var_F0, "NumeLiqu"
  loc_C1F105: PopAdLdVar
  loc_C1F106: FLdRfVar var_130
  loc_C1F109: FLdRfVar var_12C
  loc_C1F10C: FLdPr Me
  loc_C1F10F: MemLdRfVar from_stack_1.global_56
  loc_C1F112: NewIfNullPr clsordenpago
  loc_C1F115: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1F11A: FLdPr var_12C
  loc_C1F11D:  = Me.Fields
  loc_C1F122: FLdPr var_130
  loc_C1F125: from_stack_2 = Me.Item(from_stack_1)
  loc_C1F12A: FLdPr var_134
  loc_C1F12D:  = Me.Value
  loc_C1F132: FLdPr Me
  loc_C1F135: MemLdRfVar from_stack_1.global_76
  loc_C1F138: CDargRef
  loc_C1F13C: FLdRfVar var_B0
  loc_C1F13F: FLdPr Me
  loc_C1F142: MemLdRfVar from_stack_1.global_96
  loc_C1F145: NewIfNullPr IDictionary
  loc_C1F148: IDictionary.Keys
  loc_C1F14D: FLdRfVar var_B0
  loc_C1F150: VarIndexLdVar
  loc_C1F156: PopAd
  loc_C1F158: FLdPr Me
  loc_C1F15B: VCallAd Control_ID_FechaMsk
  loc_C1F15E: FStAdFunc var_140
  loc_C1F161: FLdPr var_140
  loc_C1F164: LateIdLdVar var_C0 DispID_11 -32767
  loc_C1F16B: CStrVarTmp
  loc_C1F16C: FStStrNoPop var_144
  loc_C1F16F: FLdRfVar var_220
  loc_C1F172: CStrVarVal var_13C
  loc_C1F176: FLdRfVar var_164
  loc_C1F179: CI2Var
  loc_C1F17A: FLdRfVar var_D0
  loc_C1F17D: CStrVarTmp
  loc_C1F17E: FStStrNoPop var_8C
  loc_C1F181: ImpAdLdI2 MemVar_C3D064
  loc_C1F184: FLdPr Me
  loc_C1F187: MemLdRfVar from_stack_1.global_56
  loc_C1F18A: NewIfNullPr clsordenpago
  loc_C1F18D: Call clsordenpago.ActualizaLNFechCajaxCuit(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C1F192: FFreeStr var_8C = "": var_13C = ""
  loc_C1F19B: FFreeAd var_9C = "": var_124 = "": var_12C = "": var_130 = "": var_140 = "": var_128 = ""
  loc_C1F1AC: FFreeVar var_B0 = "": var_C0 = "": var_D0 = "": var_164 = ""
  loc_C1F1B9: Branch loc_C1F2B3
  loc_C1F1BC: FLdRfVar var_D0
  loc_C1F1BF: FLdRfVar var_128
  loc_C1F1C2: LitVarStr var_E0, "ExpeImpu"
  loc_C1F1C7: PopAdLdVar
  loc_C1F1C8: FLdRfVar var_124
  loc_C1F1CB: FLdRfVar var_9C
  loc_C1F1CE: FLdPr Me
  loc_C1F1D1: MemLdRfVar from_stack_1.global_56
  loc_C1F1D4: NewIfNullPr clsordenpago
  loc_C1F1D7: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1F1DC: FLdPr var_9C
  loc_C1F1DF:  = Me.Fields
  loc_C1F1E4: FLdPr var_124
  loc_C1F1E7: from_stack_2 = Me.Item(from_stack_1)
  loc_C1F1EC: FLdPr var_128
  loc_C1F1EF:  = Me.Value
  loc_C1F1F4: FLdRfVar var_164
  loc_C1F1F7: FLdRfVar var_134
  loc_C1F1FA: LitVarStr var_F0, "NumeLiqu"
  loc_C1F1FF: PopAdLdVar
  loc_C1F200: FLdRfVar var_130
  loc_C1F203: FLdRfVar var_12C
  loc_C1F206: FLdPr Me
  loc_C1F209: MemLdRfVar from_stack_1.global_56
  loc_C1F20C: NewIfNullPr clsordenpago
  loc_C1F20F: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1F214: FLdPr var_12C
  loc_C1F217:  = Me.Fields
  loc_C1F21C: FLdPr var_130
  loc_C1F21F: from_stack_2 = Me.Item(from_stack_1)
  loc_C1F224: FLdPr var_134
  loc_C1F227:  = Me.Value
  loc_C1F22C: FLdPr Me
  loc_C1F22F: MemLdRfVar from_stack_1.global_76
  loc_C1F232: CDargRef
  loc_C1F236: FLdRfVar var_B0
  loc_C1F239: FLdPr Me
  loc_C1F23C: MemLdRfVar from_stack_1.global_96
  loc_C1F23F: NewIfNullPr IDictionary
  loc_C1F242: IDictionary.Keys
  loc_C1F247: FLdRfVar var_B0
  loc_C1F24A: VarIndexLdVar
  loc_C1F250: PopAd
  loc_C1F252: FLdPr Me
  loc_C1F255: VCallAd Control_ID_FechaMsk
  loc_C1F258: FStAdFunc var_140
  loc_C1F25B: FLdPr var_140
  loc_C1F25E: LateIdLdVar var_C0 DispID_15 0
  loc_C1F265: CStrVarTmp
  loc_C1F266: FStStrNoPop var_144
  loc_C1F269: FLdRfVar var_220
  loc_C1F26C: CStrVarVal var_13C
  loc_C1F270: FLdRfVar var_164
  loc_C1F273: CI2Var
  loc_C1F274: FLdRfVar var_D0
  loc_C1F277: CStrVarTmp
  loc_C1F278: FStStrNoPop var_8C
  loc_C1F27B: ImpAdLdI2 MemVar_C3D064
  loc_C1F27E: FLdPr Me
  loc_C1F281: MemLdRfVar from_stack_1.global_56
  loc_C1F284: NewIfNullPr clsordenpago
  loc_C1F287: Call clsordenpago.ActualizaLNFechCajaxCuit(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C1F28C: FFreeStr var_8C = "": var_13C = ""
  loc_C1F295: FFreeAd var_9C = "": var_124 = "": var_12C = "": var_130 = "": var_140 = "": var_128 = ""
  loc_C1F2A6: FFreeVar var_B0 = "": var_C0 = "": var_D0 = "": var_164 = ""
  loc_C1F2B3: FLdRfVar var_94
  loc_C1F2B6: FLdPr Me
  loc_C1F2B9: MemLdRfVar from_stack_1.global_96
  loc_C1F2BC: NewIfNullPr IDictionary
  loc_C1F2BF:  = IDictionary.Count
  loc_C1F2C4: LitI2_Byte 1
  loc_C1F2C6: CR8I2
  loc_C1F2C7: ILdRf var_94
  loc_C1F2CA: CR8I4
  loc_C1F2CB: DivR8
  loc_C1F2CC: LitI2_Byte &H64
  loc_C1F2CE: CR8I2
  loc_C1F2CF: MulR8
  loc_C1F2D0: CVarR4
  loc_C1F2D4: PopAdLdVar
  loc_C1F2D5: FLdPrThis
  loc_C1F2D6: VCallAd Control_ID_ProgressBar
  loc_C1F2D9: FStAdFunc var_9C
  loc_C1F2DC: FLdPr var_9C
  loc_C1F2DF: LateIdSt
  loc_C1F2E4: FFree1Ad var_9C
  loc_C1F2E7: FLdPr Me
  loc_C1F2EA: MemLdRfVar from_stack_1.global_76
  loc_C1F2ED: NextI4 var_290, loc_C1F0B7
  loc_C1F2F2: LitI4 0
  loc_C1F2F7: FLdPr Me
  loc_C1F2FA: MemStI4 global_100
  loc_C1F2FD: FLdRfVar var_B0
  loc_C1F300: FLdRfVar var_128
  loc_C1F303: LitVarStr var_E0, "TipoOrpa"
  loc_C1F308: PopAdLdVar
  loc_C1F309: FLdRfVar var_124
  loc_C1F30C: FLdRfVar var_9C
  loc_C1F30F: FLdPr Me
  loc_C1F312: MemLdRfVar from_stack_1.global_56
  loc_C1F315: NewIfNullPr clsordenpago
  loc_C1F318: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1F31D: FLdPr var_9C
  loc_C1F320:  = Me.Fields
  loc_C1F325: FLdPr var_124
  loc_C1F328: from_stack_2 = Me.Item(from_stack_1)
  loc_C1F32D: FLdPr var_128
  loc_C1F330:  = Me.Value
  loc_C1F335: FLdRfVar var_B0
  loc_C1F338: LitVarStr var_F0, "Devengado"
  loc_C1F33D: HardType
  loc_C1F33E: EqVarBool
  loc_C1F340: FFreeAd var_9C = "": var_124 = ""
  loc_C1F349: FFree1Var var_B0 = ""
  loc_C1F34C: BranchF loc_C1FAE3
  loc_C1F34F: FLdRfVar var_B0
  loc_C1F352: FLdRfVar var_128
  loc_C1F355: LitVarStr var_E0, "ChunOrpa"
  loc_C1F35A: PopAdLdVar
  loc_C1F35B: FLdRfVar var_124
  loc_C1F35E: FLdRfVar var_9C
  loc_C1F361: FLdPr Me
  loc_C1F364: MemLdRfVar from_stack_1.global_56
  loc_C1F367: NewIfNullPr clsordenpago
  loc_C1F36A: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1F36F: FLdPr var_9C
  loc_C1F372:  = Me.Fields
  loc_C1F377: FLdPr var_124
  loc_C1F37A: from_stack_2 = Me.Item(from_stack_1)
  loc_C1F37F: FLdPr var_128
  loc_C1F382:  = Me.Value
  loc_C1F387: FLdRfVar var_B0
  loc_C1F38A: FnCIntVar
  loc_C1F38C: LitI2_Byte 1
  loc_C1F38E: EqI2
  loc_C1F38F: FFreeAd var_9C = "": var_124 = ""
  loc_C1F398: FFree1Var var_B0 = ""
  loc_C1F39B: BranchF loc_C1F670
  loc_C1F39E: LitStr "SELECT *"
  loc_C1F3A1: LitStr " FROM ("
  loc_C1F3A4: ConcatStr
  loc_C1F3A5: FStStrNoPop var_8C
  loc_C1F3A8: LitStr " SELECT i.*, i.MapaImpu - (SELECT IFNULL(SUM(ii.PagaImpu),0) FROM imputacion ii"
  loc_C1F3AB: ConcatStr
  loc_C1F3AC: FStStrNoPop var_13C
  loc_C1F3AF: LitStr " WHERE ii.PeriInfo = i.PeriInfo AND ii.CodiPart = i.CodiPart AND ii.CodiOrga = i.CodiOrga"
  loc_C1F3B2: ConcatStr
  loc_C1F3B3: FStStrNoPop var_144
  loc_C1F3B6: LitStr " AND ii.CodiUnga = i.CodiUnga AND ii.CodiInsu = i.CodiInsu AND ii.CodiFifu = i.CodiFifu AND ii.ExorImpu = i.ExorImpu"
  loc_C1F3B9: ConcatStr
  loc_C1F3BA: FStStrNoPop var_224
  loc_C1F3BD: LitStr " AND ii.ExpeImpu = i.ExpeImpu AND ii.NumeLiqu = i.NumeLiqu AND ii.NumeOrpa = i.NumeOrpa"
  loc_C1F3C0: ConcatStr
  loc_C1F3C1: FStStrNoPop var_228
  loc_C1F3C4: LitStr " AND ii.CucuPers = i.CucuPers AND ii.CodiNope = i.CodiNope AND ii.Item = i.Item"
  loc_C1F3C7: ConcatStr
  loc_C1F3C8: FStStrNoPop var_294
  loc_C1F3CB: LitStr " AND ii.Altern = i.Altern AND ii.CodiOrco = i.CodiOrco AND ii.CodiRece = i.CodiRece"
  loc_C1F3CE: ConcatStr
  loc_C1F3CF: FStStrNoPop var_298
  loc_C1F3D2: LitStr " AND ii.NumeFact = i.NumeFact AND ii.PagaImpu != 0) saldo"
  loc_C1F3D5: ConcatStr
  loc_C1F3D6: FStStrNoPop var_29C
  loc_C1F3D9: LitStr " FROM imputacion i"
  loc_C1F3DC: ConcatStr
  loc_C1F3DD: FStStrNoPop var_2A0
  loc_C1F3E0: LitStr " WHERE i.PeriInfo = "
  loc_C1F3E3: ConcatStr
  loc_C1F3E4: CVarStr var_C0
  loc_C1F3E7: FLdRfVar var_B0
  loc_C1F3EA: FLdRfVar var_128
  loc_C1F3ED: LitVarStr var_E0, "PeriInfo"
  loc_C1F3F2: PopAdLdVar
  loc_C1F3F3: FLdRfVar var_124
  loc_C1F3F6: FLdRfVar var_9C
  loc_C1F3F9: FLdPr Me
  loc_C1F3FC: MemLdRfVar from_stack_1.global_56
  loc_C1F3FF: NewIfNullPr clsordenpago
  loc_C1F402: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1F407: FLdPr var_9C
  loc_C1F40A:  = Me.Fields
  loc_C1F40F: FLdPr var_124
  loc_C1F412: from_stack_2 = Me.Item(from_stack_1)
  loc_C1F417: FLdPr var_128
  loc_C1F41A:  = Me.Value
  loc_C1F41F: FLdRfVar var_B0
  loc_C1F422: ConcatVar var_D0
  loc_C1F426: LitVarStr var_F0, " AND i.NumeOrpa = "
  loc_C1F42B: ConcatVar var_164
  loc_C1F42F: FLdRfVar var_220
  loc_C1F432: FLdRfVar var_134
  loc_C1F435: LitVarStr var_100, "NumeOrpa"
  loc_C1F43A: PopAdLdVar
  loc_C1F43B: FLdRfVar var_130
  loc_C1F43E: FLdRfVar var_12C
  loc_C1F441: FLdPr Me
  loc_C1F444: MemLdRfVar from_stack_1.global_56
  loc_C1F447: NewIfNullPr clsordenpago
  loc_C1F44A: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1F44F: FLdPr var_12C
  loc_C1F452:  = Me.Fields
  loc_C1F457: FLdPr var_130
  loc_C1F45A: from_stack_2 = Me.Item(from_stack_1)
  loc_C1F45F: FLdPr var_134
  loc_C1F462:  = Me.Value
  loc_C1F467: FLdRfVar var_220
  loc_C1F46A: ConcatVar var_248
  loc_C1F46E: LitVarStr var_110, " AND i.MapaImpu != 0"
  loc_C1F473: ConcatVar var_268
  loc_C1F477: LitVarStr var_120, " AND i.AjusImpu = 0"
  loc_C1F47C: ConcatVar var_278
  loc_C1F480: LitVarStr var_180, " ) AS tbl"
  loc_C1F485: ConcatVar var_288
  loc_C1F489: LitVarStr var_190, " WHERE saldo > 0;"
  loc_C1F48E: ConcatVar var_2B0
  loc_C1F492: CStrVarVal var_2B4
  loc_C1F496: FLdPr Me
  loc_C1F499: MemLdRfVar from_stack_1.global_52
  loc_C1F49C: NewIfNullPr clsimputacion
  loc_C1F49F: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_C1F4A4: FFreeStr var_8C = "": var_13C = "": var_144 = "": var_224 = "": var_228 = "": var_294 = "": var_298 = "": var_29C = "": var_2A0 = ""
  loc_C1F4BB: FFreeAd var_9C = "": var_124 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_C1F4CA: FFreeVar var_C0 = "": var_B0 = "": var_D0 = "": var_164 = "": var_220 = "": var_248 = "": var_268 = "": var_278 = "": var_288 = ""
  loc_C1F4E1: FLdRfVar var_94
  loc_C1F4E4: FLdPr Me
  loc_C1F4E7: MemLdRfVar from_stack_1.global_52
  loc_C1F4EA: NewIfNullPr clsimputacion
  loc_C1F4ED: from_stack_1 = clsimputacion.RecordCount
  loc_C1F4F2: ILdRf var_94
  loc_C1F4F5: LitI4 0
  loc_C1F4FA: GtI4
  loc_C1F4FB: BranchF loc_C1F65F
  loc_C1F4FE: FLdPr Me
  loc_C1F501: MemLdRfVar from_stack_1.global_52
  loc_C1F504: NewIfNullPr clsimputacion
  loc_C1F507: Call clsimputacion.MoveFirst()
  loc_C1F50C: FLdRfVar var_136
  loc_C1F50F: FLdPr Me
  loc_C1F512: MemLdRfVar from_stack_1.global_52
  loc_C1F515: NewIfNullPr clsimputacion
  loc_C1F518: from_stack_1 = clsimputacion.EOF
  loc_C1F51D: FLdI2 var_136
  loc_C1F520: NotI4
  loc_C1F521: BranchF loc_C1F65C
  loc_C1F524: FLdRfVar var_C0
  loc_C1F527: FLdRfVar var_128
  loc_C1F52A: LitVarStr var_E0, "IdImpu"
  loc_C1F52F: PopAdLdVar
  loc_C1F530: FLdRfVar var_124
  loc_C1F533: FLdRfVar var_9C
  loc_C1F536: FLdPr Me
  loc_C1F539: MemLdRfVar from_stack_1.global_52
  loc_C1F53C: NewIfNullPr clsimputacion
  loc_C1F53F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1F544: FLdPr var_9C
  loc_C1F547:  = Me.Fields
  loc_C1F54C: FLdPr var_124
  loc_C1F54F: from_stack_2 = Me.Item(from_stack_1)
  loc_C1F554: FLdPr var_128
  loc_C1F557:  = Me.Value
  loc_C1F55C: FLdPr Me
  loc_C1F55F: VCallAd Control_ID_FechaMsk
  loc_C1F562: FStAdFunc var_12C
  loc_C1F565: FLdPr var_12C
  loc_C1F568: LateIdLdVar var_B0 DispID_15 0
  loc_C1F56F: PopAd
  loc_C1F571: FLdRfVar var_94
  loc_C1F574: LitI2_Byte 0
  loc_C1F576: LitI2_Byte 0
  loc_C1F578: LitI4 0
  loc_C1F57D: LitStr vbNullString
  loc_C1F580: FLdRfVar var_B0
  loc_C1F583: CStrVarTmp
  loc_C1F584: FStStrNoPop var_8C
  loc_C1F587: FLdRfVar var_C0
  loc_C1F58A: CI4Var
  loc_C1F58C: FLdPr Me
  loc_C1F58F: MemLdRfVar from_stack_1.global_52
  loc_C1F592: NewIfNullPr clsimputacion
  loc_C1F595: from_stack_7v = clsimputacion.AddNewPagado(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C1F59A: ILdRf var_94
  loc_C1F59D: FStR4 var_14C
  loc_C1F5A0: FFree1Str var_8C
  loc_C1F5A3: FFreeAd var_9C = "": var_124 = "": var_12C = ""
  loc_C1F5AE: FFreeVar var_B0 = ""
  loc_C1F5B5: ILdRf var_14C
  loc_C1F5B8: LitI4 0
  loc_C1F5BD: EqI4
  loc_C1F5BE: BranchF loc_C1F605
  loc_C1F5C1: LitI4 0
  loc_C1F5C6: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C1F5C9: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C1F5CE: FLdRfVar var_8C
  loc_C1F5D1: FLdPr Me
  loc_C1F5D4:  = Me.Name
  loc_C1F5D9: LitStr "O.P.: "
  loc_C1F5DC: ILdRf var_150
  loc_C1F5DF: CStrI4
  loc_C1F5E1: FStStrNoPop var_13C
  loc_C1F5E4: ConcatStr
  loc_C1F5E5: FStStrNoPop var_144
  loc_C1F5E8: LitStr ", no genero el pagado del cheque unico"
  loc_C1F5EB: ConcatStr
  loc_C1F5EC: FStStrNoPop var_224
  loc_C1F5EF: ILdRf var_8C
  loc_C1F5F2: ImpAdLdI2 MemVar_C3D064
  loc_C1F5F5: ImpAdCallFPR4 Proc_266_37_9AA1B8(, , )
  loc_C1F5FA: FFreeStr var_13C = "": var_144 = "": var_8C = ""
  loc_C1F605: FLdRfVar var_98
  loc_C1F608: FLdPr Me
  loc_C1F60B: MemLdRfVar from_stack_1.global_52
  loc_C1F60E: NewIfNullPr clsimputacion
  loc_C1F611: from_stack_1 = clsimputacion.RecordCount
  loc_C1F616: FLdRfVar var_94
  loc_C1F619: FLdPr Me
  loc_C1F61C: MemLdRfVar from_stack_1.global_52
  loc_C1F61F: NewIfNullPr clsimputacion
  loc_C1F622: from_stack_1 = clsimputacion.AbsolutePosition
  loc_C1F627: ILdRf var_94
  loc_C1F62A: CR8I4
  loc_C1F62B: ILdRf var_98
  loc_C1F62E: CR8I4
  loc_C1F62F: DivR8
  loc_C1F630: LitI2_Byte &H64
  loc_C1F632: CR8I2
  loc_C1F633: MulR8
  loc_C1F634: CVarR4
  loc_C1F638: PopAdLdVar
  loc_C1F639: FLdPrThis
  loc_C1F63A: VCallAd Control_ID_ProgressBar
  loc_C1F63D: FStAdFunc var_9C
  loc_C1F640: FLdPr var_9C
  loc_C1F643: LateIdSt
  loc_C1F648: FFree1Ad var_9C
  loc_C1F64B: FLdPr Me
  loc_C1F64E: MemLdRfVar from_stack_1.global_52
  loc_C1F651: NewIfNullPr clsimputacion
  loc_C1F654: Call clsimputacion.MoveSiguiente()
  loc_C1F659: Branch loc_C1F50C
  loc_C1F65C: Branch loc_C1F66D
  loc_C1F65F: LitI4 0
  loc_C1F664: LitStr "Error en el pagado. Consulte con el Administrador..."
  loc_C1F667: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C1F66C: ExitProcHresult
  loc_C1F66D: Branch loc_C1FAE0
  loc_C1F670: LitI4 0
  loc_C1F675: FLdPr Me
  loc_C1F678: MemLdRfVar from_stack_1.global_76
  loc_C1F67B: FLdRfVar var_94
  loc_C1F67E: FLdPr Me
  loc_C1F681: MemLdRfVar from_stack_1.global_96
  loc_C1F684: NewIfNullPr IDictionary
  loc_C1F687:  = IDictionary.Count
  loc_C1F68C: ILdRf var_94
  loc_C1F68F: LitI4 1
  loc_C1F694: SubI4
  loc_C1F695: ForI4 var_2BC
  loc_C1F69B: LitStr "SELECT *"
  loc_C1F69E: LitStr " FROM ("
  loc_C1F6A1: ConcatStr
  loc_C1F6A2: FStStrNoPop var_8C
  loc_C1F6A5: LitStr " SELECT i.*,  i.MapaImpu - (SELECT IFNULL(SUM(ii.PagaImpu),0) FROM imputacion ii"
  loc_C1F6A8: ConcatStr
  loc_C1F6A9: FStStrNoPop var_13C
  loc_C1F6AC: LitStr " WHERE ii.PeriInfo = i.PeriInfo AND ii.CodiPart = i.CodiPart AND ii.CodiOrga = i.CodiOrga"
  loc_C1F6AF: ConcatStr
  loc_C1F6B0: FStStrNoPop var_144
  loc_C1F6B3: LitStr " AND ii.CodiUnga = i.CodiUnga AND ii.CodiInsu = i.CodiInsu AND ii.CodiFifu = i.CodiFifu AND ii.ExorImpu = i.ExorImpu"
  loc_C1F6B6: ConcatStr
  loc_C1F6B7: FStStrNoPop var_224
  loc_C1F6BA: LitStr " AND ii.ExpeImpu = i.ExpeImpu AND ii.NumeLiqu = i.NumeLiqu AND ii.NumeOrpa = i.NumeOrpa"
  loc_C1F6BD: ConcatStr
  loc_C1F6BE: FStStrNoPop var_228
  loc_C1F6C1: LitStr " AND ii.CucuPers = i.CucuPers AND ii.CodiNope = i.CodiNope AND ii.Item = i.Item"
  loc_C1F6C4: ConcatStr
  loc_C1F6C5: FStStrNoPop var_294
  loc_C1F6C8: LitStr " AND ii.Altern = i.Altern AND ii.CodiOrco = i.CodiOrco AND ii.CodiRece = i.CodiRece"
  loc_C1F6CB: ConcatStr
  loc_C1F6CC: FStStrNoPop var_298
  loc_C1F6CF: LitStr " AND ii.NumeFact = i.NumeFact AND ii.PagaImpu != 0)  saldo"
  loc_C1F6D2: ConcatStr
  loc_C1F6D3: FStStrNoPop var_29C
  loc_C1F6D6: LitStr " FROM imputacion i"
  loc_C1F6D9: ConcatStr
  loc_C1F6DA: FStStrNoPop var_2A0
  loc_C1F6DD: LitStr " WHERE i.PeriInfo = "
  loc_C1F6E0: ConcatStr
  loc_C1F6E1: CVarStr var_C0
  loc_C1F6E4: FLdRfVar var_B0
  loc_C1F6E7: FLdRfVar var_128
  loc_C1F6EA: LitVarStr var_E0, "PeriInfo"
  loc_C1F6EF: PopAdLdVar
  loc_C1F6F0: FLdRfVar var_124
  loc_C1F6F3: FLdRfVar var_9C
  loc_C1F6F6: FLdPr Me
  loc_C1F6F9: MemLdRfVar from_stack_1.global_56
  loc_C1F6FC: NewIfNullPr clsordenpago
  loc_C1F6FF: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1F704: FLdPr var_9C
  loc_C1F707:  = Me.Fields
  loc_C1F70C: FLdPr var_124
  loc_C1F70F: from_stack_2 = Me.Item(from_stack_1)
  loc_C1F714: FLdPr var_128
  loc_C1F717:  = Me.Value
  loc_C1F71C: FLdRfVar var_B0
  loc_C1F71F: ConcatVar var_D0
  loc_C1F723: LitVarStr var_F0, " AND i.NumeOrpa = "
  loc_C1F728: ConcatVar var_164
  loc_C1F72C: FLdRfVar var_220
  loc_C1F72F: FLdRfVar var_134
  loc_C1F732: LitVarStr var_100, "NumeOrpa"
  loc_C1F737: PopAdLdVar
  loc_C1F738: FLdRfVar var_130
  loc_C1F73B: FLdRfVar var_12C
  loc_C1F73E: FLdPr Me
  loc_C1F741: MemLdRfVar from_stack_1.global_56
  loc_C1F744: NewIfNullPr clsordenpago
  loc_C1F747: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1F74C: FLdPr var_12C
  loc_C1F74F:  = Me.Fields
  loc_C1F754: FLdPr var_130
  loc_C1F757: from_stack_2 = Me.Item(from_stack_1)
  loc_C1F75C: FLdPr var_134
  loc_C1F75F:  = Me.Value
  loc_C1F764: FLdRfVar var_220
  loc_C1F767: ConcatVar var_248
  loc_C1F76B: LitVarStr var_110, " AND i.CucuPers = "
  loc_C1F770: ConcatVar var_268
  loc_C1F774: FLdPr Me
  loc_C1F777: MemLdRfVar from_stack_1.global_76
  loc_C1F77A: CDargRef
  loc_C1F77E: FLdRfVar var_278
  loc_C1F781: FLdPr Me
  loc_C1F784: MemLdRfVar from_stack_1.global_96
  loc_C1F787: NewIfNullPr IDictionary
  loc_C1F78A: IDictionary.Keys
  loc_C1F78F: FLdRfVar var_278
  loc_C1F792: VarIndexLdVar
  loc_C1F798: ConcatVar var_2B0
  loc_C1F79C: LitVarStr var_180, " AND i.MapaImpu != 0"
  loc_C1F7A1: ConcatVar var_2CC
  loc_C1F7A5: LitVarStr var_190, " AND i.AjusImpu = 0"
  loc_C1F7AA: ConcatVar var_2DC
  loc_C1F7AE: LitVarStr var_1A0, " ) AS tbl"
  loc_C1F7B3: ConcatVar var_2EC
  loc_C1F7B7: LitVarStr var_1B0, " WHERE saldo > 0;"
  loc_C1F7BC: ConcatVar var_2FC
  loc_C1F7C0: CStrVarVal var_2B4
  loc_C1F7C4: FLdPr Me
  loc_C1F7C7: MemLdRfVar from_stack_1.global_52
  loc_C1F7CA: NewIfNullPr clsimputacion
  loc_C1F7CD: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_C1F7D2: FFreeStr var_8C = "": var_13C = "": var_144 = "": var_224 = "": var_228 = "": var_294 = "": var_298 = "": var_29C = "": var_2A0 = ""
  loc_C1F7E9: FFreeAd var_9C = "": var_124 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_C1F7F8: FFreeVar var_C0 = "": var_B0 = "": var_D0 = "": var_164 = "": var_220 = "": var_248 = "": var_278 = "": var_268 = "": var_288 = "": var_2B0 = "": var_2CC = "": var_2DC = "": var_2EC = ""
  loc_C1F817: FLdRfVar var_94
  loc_C1F81A: FLdPr Me
  loc_C1F81D: MemLdRfVar from_stack_1.global_52
  loc_C1F820: NewIfNullPr clsimputacion
  loc_C1F823: from_stack_1 = clsimputacion.RecordCount
  loc_C1F828: ILdRf var_94
  loc_C1F82B: LitI4 0
  loc_C1F830: GtI4
  loc_C1F831: BranchF loc_C1FAA1
  loc_C1F834: FLdPr Me
  loc_C1F837: MemLdRfVar from_stack_1.global_52
  loc_C1F83A: NewIfNullPr clsimputacion
  loc_C1F83D: Call clsimputacion.MoveFirst()
  loc_C1F842: FLdRfVar var_136
  loc_C1F845: FLdPr Me
  loc_C1F848: MemLdRfVar from_stack_1.global_52
  loc_C1F84B: NewIfNullPr clsimputacion
  loc_C1F84E: from_stack_1 = clsimputacion.EOF
  loc_C1F853: FLdI2 var_136
  loc_C1F856: NotI4
  loc_C1F857: BranchF loc_C1FAA1
  loc_C1F85A: FLdRfVar var_C0
  loc_C1F85D: FLdRfVar var_128
  loc_C1F860: LitVarStr var_E0, "IdImpu"
  loc_C1F865: PopAdLdVar
  loc_C1F866: FLdRfVar var_124
  loc_C1F869: FLdRfVar var_9C
  loc_C1F86C: FLdPr Me
  loc_C1F86F: MemLdRfVar from_stack_1.global_52
  loc_C1F872: NewIfNullPr clsimputacion
  loc_C1F875: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1F87A: FLdPr var_9C
  loc_C1F87D:  = Me.Fields
  loc_C1F882: FLdPr var_124
  loc_C1F885: from_stack_2 = Me.Item(from_stack_1)
  loc_C1F88A: FLdPr var_128
  loc_C1F88D:  = Me.Value
  loc_C1F892: FLdPr Me
  loc_C1F895: VCallAd Control_ID_FechaMsk
  loc_C1F898: FStAdFunc var_12C
  loc_C1F89B: FLdPr var_12C
  loc_C1F89E: LateIdLdVar var_B0 DispID_15 0
  loc_C1F8A5: PopAd
  loc_C1F8A7: FLdRfVar var_94
  loc_C1F8AA: LitI2_Byte 0
  loc_C1F8AC: LitI2_Byte 0
  loc_C1F8AE: LitI4 0
  loc_C1F8B3: LitStr vbNullString
  loc_C1F8B6: FLdRfVar var_B0
  loc_C1F8B9: CStrVarTmp
  loc_C1F8BA: FStStrNoPop var_8C
  loc_C1F8BD: FLdRfVar var_C0
  loc_C1F8C0: CI4Var
  loc_C1F8C2: FLdPr Me
  loc_C1F8C5: MemLdRfVar from_stack_1.global_52
  loc_C1F8C8: NewIfNullPr clsimputacion
  loc_C1F8CB: from_stack_7v = clsimputacion.AddNewPagado(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C1F8D0: ILdRf var_94
  loc_C1F8D3: FStR4 var_14C
  loc_C1F8D6: FFree1Str var_8C
  loc_C1F8D9: FFreeAd var_9C = "": var_124 = "": var_12C = ""
  loc_C1F8E4: FFreeVar var_B0 = ""
  loc_C1F8EB: ILdRf var_14C
  loc_C1F8EE: LitI4 0
  loc_C1F8F3: EqI4
  loc_C1F8F4: BranchF loc_C1F976
  loc_C1F8F7: LitI4 0
  loc_C1F8FC: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C1F8FF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C1F904: FLdRfVar var_8C
  loc_C1F907: FLdPr Me
  loc_C1F90A:  = Me.Name
  loc_C1F90F: LitStr "O.P.: "
  loc_C1F912: ILdRf var_150
  loc_C1F915: CStrI4
  loc_C1F917: FStStrNoPop var_13C
  loc_C1F91A: ConcatStr
  loc_C1F91B: FStStrNoPop var_144
  loc_C1F91E: LitStr ", no genero el pagado del proveedor: "
  loc_C1F921: ConcatStr
  loc_C1F922: FStStrNoPop var_224
  loc_C1F925: FLdPr Me
  loc_C1F928: MemLdRfVar from_stack_1.global_76
  loc_C1F92B: CDargRef
  loc_C1F92F: LitVarI4
  loc_C1F937: PopAdLdVar
  loc_C1F938: FLdPr Me
  loc_C1F93B: VCallAd Control_ID_FlexCheque
  loc_C1F93E: FStAdFunc var_9C
  loc_C1F941: FLdPr var_9C
  loc_C1F944: LateIdCallLdVar
  loc_C1F94E: CStrVarTmp
  loc_C1F94F: FStStrNoPop var_228
  loc_C1F952: ConcatStr
  loc_C1F953: FStStrNoPop var_294
  loc_C1F956: ILdRf var_8C
  loc_C1F959: ImpAdLdI2 MemVar_C3D064
  loc_C1F95C: ImpAdCallFPR4 Proc_266_37_9AA1B8(, , )
  loc_C1F961: FFreeStr var_13C = "": var_144 = "": var_224 = "": var_228 = "": var_8C = ""
  loc_C1F970: FFree1Ad var_9C
  loc_C1F973: FFree1Var var_B0 = ""
  loc_C1F976: FLdRfVar var_B0
  loc_C1F979: FLdRfVar var_128
  loc_C1F97C: LitVarStr var_E0, "CodiPart"
  loc_C1F981: PopAdLdVar
  loc_C1F982: FLdRfVar var_124
  loc_C1F985: FLdRfVar var_9C
  loc_C1F988: FLdPr Me
  loc_C1F98B: MemLdRfVar from_stack_1.global_52
  loc_C1F98E: NewIfNullPr clsimputacion
  loc_C1F991: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1F996: FLdPr var_9C
  loc_C1F999:  = Me.Fields
  loc_C1F99E: FLdPr var_124
  loc_C1F9A1: from_stack_2 = Me.Item(from_stack_1)
  loc_C1F9A6: FLdPr var_128
  loc_C1F9A9:  = Me.Value
  loc_C1F9AE: LitI2_Byte &HFF
  loc_C1F9B0: LitVarI2 var_C0, 2
  loc_C1F9B5: LitI4 1
  loc_C1F9BA: FLdRfVar var_B0
  loc_C1F9BD: CStrVarTmp
  loc_C1F9BE: FStStrNoPop var_8C
  loc_C1F9C1: ImpAdCallI2 Mid$(, , )
  loc_C1F9C6: FStStrNoPop var_13C
  loc_C1F9C9: LitStr "43"
  loc_C1F9CC: EqStr
  loc_C1F9CE: AndI4
  loc_C1F9CF: FFreeStr var_8C = ""
  loc_C1F9D6: FFreeAd var_9C = "": var_124 = ""
  loc_C1F9DF: FFreeVar var_B0 = ""
  loc_C1F9E6: BranchF loc_C1FA4A
  loc_C1F9E9: FLdPr Me
  loc_C1F9EC: MemLdStr global_100
  loc_C1F9EF: CVarI4
  loc_C1F9F3: FLdRfVar var_B0
  loc_C1F9F6: FLdRfVar var_128
  loc_C1F9F9: LitVarStr var_E0, "Saldo"
  loc_C1F9FE: PopAdLdVar
  loc_C1F9FF: FLdRfVar var_124
  loc_C1FA02: FLdRfVar var_9C
  loc_C1FA05: FLdPr Me
  loc_C1FA08: MemLdRfVar from_stack_1.global_52
  loc_C1FA0B: NewIfNullPr clsimputacion
  loc_C1FA0E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1FA13: FLdPr var_9C
  loc_C1FA16:  = Me.Fields
  loc_C1FA1B: FLdPr var_124
  loc_C1FA1E: from_stack_2 = Me.Item(from_stack_1)
  loc_C1FA23: FLdPr var_128
  loc_C1FA26:  = Me.Value
  loc_C1FA2B: FLdRfVar var_B0
  loc_C1FA2E: AddVar var_C0
  loc_C1FA32: CI4Var
  loc_C1FA34: FLdPr Me
  loc_C1FA37: MemStI4 global_100
  loc_C1FA3A: FFreeAd var_9C = "": var_124 = ""
  loc_C1FA43: FFreeVar var_B0 = ""
  loc_C1FA4A: FLdRfVar var_98
  loc_C1FA4D: FLdPr Me
  loc_C1FA50: MemLdRfVar from_stack_1.global_52
  loc_C1FA53: NewIfNullPr clsimputacion
  loc_C1FA56: from_stack_1 = clsimputacion.RecordCount
  loc_C1FA5B: FLdRfVar var_94
  loc_C1FA5E: FLdPr Me
  loc_C1FA61: MemLdRfVar from_stack_1.global_52
  loc_C1FA64: NewIfNullPr clsimputacion
  loc_C1FA67: from_stack_1 = clsimputacion.AbsolutePosition
  loc_C1FA6C: ILdRf var_94
  loc_C1FA6F: CR8I4
  loc_C1FA70: ILdRf var_98
  loc_C1FA73: CR8I4
  loc_C1FA74: DivR8
  loc_C1FA75: LitI2_Byte &H64
  loc_C1FA77: CR8I2
  loc_C1FA78: MulR8
  loc_C1FA79: CVarR4
  loc_C1FA7D: PopAdLdVar
  loc_C1FA7E: FLdPrThis
  loc_C1FA7F: VCallAd Control_ID_ProgressBar
  loc_C1FA82: FStAdFunc var_9C
  loc_C1FA85: FLdPr var_9C
  loc_C1FA88: LateIdSt
  loc_C1FA8D: FFree1Ad var_9C
  loc_C1FA90: FLdPr Me
  loc_C1FA93: MemLdRfVar from_stack_1.global_52
  loc_C1FA96: NewIfNullPr clsimputacion
  loc_C1FA99: Call clsimputacion.MoveSiguiente()
  loc_C1FA9E: Branch loc_C1F842
  loc_C1FAA1: FLdRfVar var_94
  loc_C1FAA4: FLdPr Me
  loc_C1FAA7: MemLdRfVar from_stack_1.global_96
  loc_C1FAAA: NewIfNullPr IDictionary
  loc_C1FAAD:  = IDictionary.Count
  loc_C1FAB2: LitI2_Byte 1
  loc_C1FAB4: CR8I2
  loc_C1FAB5: ILdRf var_94
  loc_C1FAB8: CR8I4
  loc_C1FAB9: DivR8
  loc_C1FABA: LitI2_Byte &H64
  loc_C1FABC: CR8I2
  loc_C1FABD: MulR8
  loc_C1FABE: CVarR4
  loc_C1FAC2: PopAdLdVar
  loc_C1FAC3: FLdPrThis
  loc_C1FAC4: VCallAd Control_ID_ProgressBar
  loc_C1FAC7: FStAdFunc var_9C
  loc_C1FACA: FLdPr var_9C
  loc_C1FACD: LateIdSt
  loc_C1FAD2: FFree1Ad var_9C
  loc_C1FAD5: FLdPr Me
  loc_C1FAD8: MemLdRfVar from_stack_1.global_76
  loc_C1FADB: NextI4 var_2BC, loc_C1F69B
  loc_C1FAE0: Branch loc_C1FB8A
  loc_C1FAE3: FLdRfVar var_B0
  loc_C1FAE6: FLdRfVar var_128
  loc_C1FAE9: LitVarStr var_E0, "TipoOrpa"
  loc_C1FAEE: PopAdLdVar
  loc_C1FAEF: FLdRfVar var_124
  loc_C1FAF2: FLdRfVar var_9C
  loc_C1FAF5: FLdPr Me
  loc_C1FAF8: MemLdRfVar from_stack_1.global_56
  loc_C1FAFB: NewIfNullPr clsordenpago
  loc_C1FAFE: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1FB03: FLdPr var_9C
  loc_C1FB06:  = Me.Fields
  loc_C1FB0B: FLdPr var_124
  loc_C1FB0E: from_stack_2 = Me.Item(from_stack_1)
  loc_C1FB13: FLdPr var_128
  loc_C1FB16:  = Me.Value
  loc_C1FB1B: FLdRfVar var_B0
  loc_C1FB1E: LitVarStr var_F0, "Debito"
  loc_C1FB23: HardType
  loc_C1FB24: EqVarBool
  loc_C1FB26: FFreeAd var_9C = "": var_124 = ""
  loc_C1FB2F: FFree1Var var_B0 = ""
  loc_C1FB32: BranchF loc_C1FB8A
  loc_C1FB35: FLdRfVar var_B0
  loc_C1FB38: FLdRfVar var_128
  loc_C1FB3B: LitVarStr var_E0, "ChunOrpa"
  loc_C1FB40: PopAdLdVar
  loc_C1FB41: FLdRfVar var_124
  loc_C1FB44: FLdRfVar var_9C
  loc_C1FB47: FLdPr Me
  loc_C1FB4A: MemLdRfVar from_stack_1.global_56
  loc_C1FB4D: NewIfNullPr clsordenpago
  loc_C1FB50: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1FB55: FLdPr var_9C
  loc_C1FB58:  = Me.Fields
  loc_C1FB5D: FLdPr var_124
  loc_C1FB60: from_stack_2 = Me.Item(from_stack_1)
  loc_C1FB65: FLdPr var_128
  loc_C1FB68:  = Me.Value
  loc_C1FB6D: FLdRfVar var_B0
  loc_C1FB70: LitVarI2 var_F0, 1
  loc_C1FB75: HardType
  loc_C1FB76: EqVarBool
  loc_C1FB78: FFreeAd var_9C = "": var_124 = ""
  loc_C1FB81: FFree1Var var_B0 = ""
  loc_C1FB84: BranchF loc_C1FB8A
  loc_C1FB87: Branch loc_C1FB8A
  loc_C1FB8A: LitI4 1
  loc_C1FB8F: FLdPr Me
  loc_C1FB92: MemLdRfVar from_stack_1.global_76
  loc_C1FB95: FLdPr Me
  loc_C1FB98: VCallAd Control_ID_FlexCheque
  loc_C1FB9B: FStAdFunc var_9C
  loc_C1FB9E: FLdPr var_9C
  loc_C1FBA1: LateIdLdVar var_B0 DispID_4 0
  loc_C1FBA8: CI4Var
  loc_C1FBAA: LitI4 1
  loc_C1FBAF: SubI4
  loc_C1FBB0: FFree1Ad var_9C
  loc_C1FBB3: FFree1Var var_B0 = ""
  loc_C1FBB6: ForI4 var_304
  loc_C1FBBC: FLdPr Me
  loc_C1FBBF: MemLdRfVar from_stack_1.global_76
  loc_C1FBC2: CDargRef
  loc_C1FBC6: LitVarI4
  loc_C1FBCE: PopAdLdVar
  loc_C1FBCF: FLdPr Me
  loc_C1FBD2: VCallAd Control_ID_FlexCheque
  loc_C1FBD5: FStAdFunc var_9C
  loc_C1FBD8: FLdPr var_9C
  loc_C1FBDB: LateIdCallLdVar
  loc_C1FBE5: CStrVarTmp
  loc_C1FBE6: FStStrNoPop var_8C
  loc_C1FBE9: LitStr "Si"
  loc_C1FBEC: EqStr
  loc_C1FBEE: FFree1Str var_8C
  loc_C1FBF1: FFree1Ad var_9C
  loc_C1FBF4: FFree1Var var_B0 = ""
  loc_C1FBF7: BranchF loc_C203FE
  loc_C1FBFA: LitStr "Municipalidad de Guaymallén"
  loc_C1FBFD: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_C1FC00: EqStr
  loc_C1FC02: BranchF loc_C1FE3A
  loc_C1FC05: FLdPr Me
  loc_C1FC08: MemLdRfVar from_stack_1.global_76
  loc_C1FC0B: CDargRef
  loc_C1FC0F: LitVarI4
  loc_C1FC17: PopAdLdVar
  loc_C1FC18: FLdPr Me
  loc_C1FC1B: VCallAd Control_ID_FlexCheque
  loc_C1FC1E: FStAdFunc var_9C
  loc_C1FC21: FLdPr var_9C
  loc_C1FC24: LateIdCallLdVar
  loc_C1FC2E: PopAd
  loc_C1FC30: FLdPr Me
  loc_C1FC33: VCallAd Control_ID_FechaMsk
  loc_C1FC36: FStAdFunc var_124
  loc_C1FC39: FLdPr var_124
  loc_C1FC3C: LateIdLdVar var_C0 DispID_11 -32767
  loc_C1FC43: PopAd
  loc_C1FC45: FLdRfVar var_248
  loc_C1FC48: FLdRfVar var_130
  loc_C1FC4B: LitVarStr var_110, "ExpeImpu"
  loc_C1FC50: PopAdLdVar
  loc_C1FC51: FLdRfVar var_12C
  loc_C1FC54: FLdRfVar var_128
  loc_C1FC57: FLdPr Me
  loc_C1FC5A: MemLdRfVar from_stack_1.global_56
  loc_C1FC5D: NewIfNullPr clsordenpago
  loc_C1FC60: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1FC65: FLdPr var_128
  loc_C1FC68:  = Me.Fields
  loc_C1FC6D: FLdPr var_12C
  loc_C1FC70: from_stack_2 = Me.Item(from_stack_1)
  loc_C1FC75: FLdPr var_130
  loc_C1FC78:  = Me.Value
  loc_C1FC7D: FLdRfVar var_268
  loc_C1FC80: FLdRfVar var_308
  loc_C1FC83: LitVarStr var_120, "NumeLiqu"
  loc_C1FC88: PopAdLdVar
  loc_C1FC89: FLdRfVar var_140
  loc_C1FC8C: FLdRfVar var_134
  loc_C1FC8F: FLdPr Me
  loc_C1FC92: MemLdRfVar from_stack_1.global_56
  loc_C1FC95: NewIfNullPr clsordenpago
  loc_C1FC98: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1FC9D: FLdPr var_134
  loc_C1FCA0:  = Me.Fields
  loc_C1FCA5: FLdPr var_140
  loc_C1FCA8: from_stack_2 = Me.Item(from_stack_1)
  loc_C1FCAD: FLdPr var_308
  loc_C1FCB0:  = Me.Value
  loc_C1FCB5: FLdPr Me
  loc_C1FCB8: MemLdRfVar from_stack_1.global_76
  loc_C1FCBB: CDargRef
  loc_C1FCBF: LitVarI4
  loc_C1FCC7: PopAdLdVar
  loc_C1FCC8: FLdPr Me
  loc_C1FCCB: VCallAd Control_ID_FlexCheque
  loc_C1FCCE: FStAdFunc var_30C
  loc_C1FCD1: FLdPr var_30C
  loc_C1FCD4: LateIdCallLdVar
  loc_C1FCDE: PopAd
  loc_C1FCE0: FLdPr Me
  loc_C1FCE3: MemLdRfVar from_stack_1.global_76
  loc_C1FCE6: CDargRef
  loc_C1FCEA: LitVarI4
  loc_C1FCF2: PopAdLdVar
  loc_C1FCF3: FLdPr Me
  loc_C1FCF6: VCallAd Control_ID_FlexCheque
  loc_C1FCF9: FStAdFunc var_310
  loc_C1FCFC: FLdPr var_310
  loc_C1FCFF: LateIdCallLdVar
  loc_C1FD09: PopAd
  loc_C1FD0B: FLdPr Me
  loc_C1FD0E: MemLdRfVar from_stack_1.global_76
  loc_C1FD11: CDargRef
  loc_C1FD15: LitVarI4
  loc_C1FD1D: PopAdLdVar
  loc_C1FD1E: FLdPr Me
  loc_C1FD21: VCallAd Control_ID_FlexCheque
  loc_C1FD24: FStAdFunc var_314
  loc_C1FD27: FLdPr var_314
  loc_C1FD2A: LateIdCallLdVar
  loc_C1FD34: PopAd
  loc_C1FD36: FLdRfVar var_278
  loc_C1FD39: FLdRfVar var_320
  loc_C1FD3C: LitVarStr var_210, "PeriInfo"
  loc_C1FD41: PopAdLdVar
  loc_C1FD42: FLdRfVar var_31C
  loc_C1FD45: FLdRfVar var_318
  loc_C1FD48: FLdPr Me
  loc_C1FD4B: MemLdRfVar from_stack_1.global_56
  loc_C1FD4E: NewIfNullPr clsordenpago
  loc_C1FD51: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1FD56: FLdPr var_318
  loc_C1FD59:  = Me.Fields
  loc_C1FD5E: FLdPr var_31C
  loc_C1FD61: from_stack_2 = Me.Item(from_stack_1)
  loc_C1FD66: FLdPr var_320
  loc_C1FD69:  = Me.Value
  loc_C1FD6E: FLdRfVar var_288
  loc_C1FD71: FLdRfVar var_32C
  loc_C1FD74: LitVarStr var_238, "NumeOrpa"
  loc_C1FD79: PopAdLdVar
  loc_C1FD7A: FLdRfVar var_328
  loc_C1FD7D: FLdRfVar var_324
  loc_C1FD80: FLdPr Me
  loc_C1FD83: MemLdRfVar from_stack_1.global_56
  loc_C1FD86: NewIfNullPr clsordenpago
  loc_C1FD89: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1FD8E: FLdPr var_324
  loc_C1FD91:  = Me.Fields
  loc_C1FD96: FLdPr var_328
  loc_C1FD99: from_stack_2 = Me.Item(from_stack_1)
  loc_C1FD9E: FLdPr var_32C
  loc_C1FDA1:  = Me.Value
  loc_C1FDA6: FLdRfVar var_288
  loc_C1FDA9: CI4Var
  loc_C1FDAB: FLdRfVar var_278
  loc_C1FDAE: CI2Var
  loc_C1FDAF: FLdRfVar var_220
  loc_C1FDB2: CStrVarTmp
  loc_C1FDB3: FStStrNoPop var_294
  loc_C1FDB6: CI4Str
  loc_C1FDB7: FLdRfVar var_164
  loc_C1FDBA: CStrVarTmp
  loc_C1FDBB: FStStrNoPop var_228
  loc_C1FDBE: CI4Str
  loc_C1FDBF: FLdRfVar var_D0
  loc_C1FDC2: CStrVarTmp
  loc_C1FDC3: FStStrNoPop var_224
  loc_C1FDC6: FLdRfVar var_268
  loc_C1FDC9: CI2Var
  loc_C1FDCA: FLdRfVar var_248
  loc_C1FDCD: CStrVarTmp
  loc_C1FDCE: FStStrNoPop var_144
  loc_C1FDD1: FLdRfVar var_C0
  loc_C1FDD4: CStrVarTmp
  loc_C1FDD5: FStStrNoPop var_13C
  loc_C1FDD8: FLdRfVar var_B0
  loc_C1FDDB: CStrVarTmp
  loc_C1FDDC: FStStrNoPop var_8C
  loc_C1FDDF: CI4Str
  loc_C1FDE0: FLdPr Me
  loc_C1FDE3: MemLdRfVar from_stack_1.global_60
  loc_C1FDE6: NewIfNullPr clscheque
  loc_C1FDE9: Call clscheque.ActualizaFepaCheqInteMoba(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v)
  loc_C1FDEE: FFreeStr var_8C = "": var_13C = "": var_144 = "": var_224 = "": var_228 = ""
  loc_C1FDFD: FFreeAd var_9C = "": var_124 = "": var_128 = "": var_12C = "": var_134 = "": var_140 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_324 = "": var_328 = "": var_130 = "": var_308 = "": var_320 = ""
  loc_C1FE22: FFreeVar var_B0 = "": var_C0 = "": var_D0 = "": var_164 = "": var_220 = "": var_248 = "": var_268 = "": var_278 = ""
  loc_C1FE37: Branch loc_C2006C
  loc_C1FE3A: FLdPr Me
  loc_C1FE3D: MemLdRfVar from_stack_1.global_76
  loc_C1FE40: CDargRef
  loc_C1FE44: LitVarI4
  loc_C1FE4C: PopAdLdVar
  loc_C1FE4D: FLdPr Me
  loc_C1FE50: VCallAd Control_ID_FlexCheque
  loc_C1FE53: FStAdFunc var_9C
  loc_C1FE56: FLdPr var_9C
  loc_C1FE59: LateIdCallLdVar
  loc_C1FE63: PopAd
  loc_C1FE65: FLdPr Me
  loc_C1FE68: VCallAd Control_ID_FechaMsk
  loc_C1FE6B: FStAdFunc var_124
  loc_C1FE6E: FLdPr var_124
  loc_C1FE71: LateIdLdVar var_C0 DispID_15 0
  loc_C1FE78: PopAd
  loc_C1FE7A: FLdRfVar var_248
  loc_C1FE7D: FLdRfVar var_130
  loc_C1FE80: LitVarStr var_110, "ExpeImpu"
  loc_C1FE85: PopAdLdVar
  loc_C1FE86: FLdRfVar var_12C
  loc_C1FE89: FLdRfVar var_128
  loc_C1FE8C: FLdPr Me
  loc_C1FE8F: MemLdRfVar from_stack_1.global_56
  loc_C1FE92: NewIfNullPr clsordenpago
  loc_C1FE95: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1FE9A: FLdPr var_128
  loc_C1FE9D:  = Me.Fields
  loc_C1FEA2: FLdPr var_12C
  loc_C1FEA5: from_stack_2 = Me.Item(from_stack_1)
  loc_C1FEAA: FLdPr var_130
  loc_C1FEAD:  = Me.Value
  loc_C1FEB2: FLdRfVar var_268
  loc_C1FEB5: FLdRfVar var_308
  loc_C1FEB8: LitVarStr var_120, "NumeLiqu"
  loc_C1FEBD: PopAdLdVar
  loc_C1FEBE: FLdRfVar var_140
  loc_C1FEC1: FLdRfVar var_134
  loc_C1FEC4: FLdPr Me
  loc_C1FEC7: MemLdRfVar from_stack_1.global_56
  loc_C1FECA: NewIfNullPr clsordenpago
  loc_C1FECD: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1FED2: FLdPr var_134
  loc_C1FED5:  = Me.Fields
  loc_C1FEDA: FLdPr var_140
  loc_C1FEDD: from_stack_2 = Me.Item(from_stack_1)
  loc_C1FEE2: FLdPr var_308
  loc_C1FEE5:  = Me.Value
  loc_C1FEEA: FLdPr Me
  loc_C1FEED: MemLdRfVar from_stack_1.global_76
  loc_C1FEF0: CDargRef
  loc_C1FEF4: LitVarI4
  loc_C1FEFC: PopAdLdVar
  loc_C1FEFD: FLdPr Me
  loc_C1FF00: VCallAd Control_ID_FlexCheque
  loc_C1FF03: FStAdFunc var_30C
  loc_C1FF06: FLdPr var_30C
  loc_C1FF09: LateIdCallLdVar
  loc_C1FF13: PopAd
  loc_C1FF15: FLdPr Me
  loc_C1FF18: MemLdRfVar from_stack_1.global_76
  loc_C1FF1B: CDargRef
  loc_C1FF1F: LitVarI4
  loc_C1FF27: PopAdLdVar
  loc_C1FF28: FLdPr Me
  loc_C1FF2B: VCallAd Control_ID_FlexCheque
  loc_C1FF2E: FStAdFunc var_310
  loc_C1FF31: FLdPr var_310
  loc_C1FF34: LateIdCallLdVar
  loc_C1FF3E: PopAd
  loc_C1FF40: FLdPr Me
  loc_C1FF43: MemLdRfVar from_stack_1.global_76
  loc_C1FF46: CDargRef
  loc_C1FF4A: LitVarI4
  loc_C1FF52: PopAdLdVar
  loc_C1FF53: FLdPr Me
  loc_C1FF56: VCallAd Control_ID_FlexCheque
  loc_C1FF59: FStAdFunc var_314
  loc_C1FF5C: FLdPr var_314
  loc_C1FF5F: LateIdCallLdVar
  loc_C1FF69: PopAd
  loc_C1FF6B: FLdRfVar var_278
  loc_C1FF6E: FLdRfVar var_320
  loc_C1FF71: LitVarStr var_210, "PeriInfo"
  loc_C1FF76: PopAdLdVar
  loc_C1FF77: FLdRfVar var_31C
  loc_C1FF7A: FLdRfVar var_318
  loc_C1FF7D: FLdPr Me
  loc_C1FF80: MemLdRfVar from_stack_1.global_56
  loc_C1FF83: NewIfNullPr clsordenpago
  loc_C1FF86: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1FF8B: FLdPr var_318
  loc_C1FF8E:  = Me.Fields
  loc_C1FF93: FLdPr var_31C
  loc_C1FF96: from_stack_2 = Me.Item(from_stack_1)
  loc_C1FF9B: FLdPr var_320
  loc_C1FF9E:  = Me.Value
  loc_C1FFA3: FLdRfVar var_288
  loc_C1FFA6: FLdRfVar var_32C
  loc_C1FFA9: LitVarStr var_238, "NumeOrpa"
  loc_C1FFAE: PopAdLdVar
  loc_C1FFAF: FLdRfVar var_328
  loc_C1FFB2: FLdRfVar var_324
  loc_C1FFB5: FLdPr Me
  loc_C1FFB8: MemLdRfVar from_stack_1.global_56
  loc_C1FFBB: NewIfNullPr clsordenpago
  loc_C1FFBE: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C1FFC3: FLdPr var_324
  loc_C1FFC6:  = Me.Fields
  loc_C1FFCB: FLdPr var_328
  loc_C1FFCE: from_stack_2 = Me.Item(from_stack_1)
  loc_C1FFD3: FLdPr var_32C
  loc_C1FFD6:  = Me.Value
  loc_C1FFDB: FLdRfVar var_288
  loc_C1FFDE: CI4Var
  loc_C1FFE0: FLdRfVar var_278
  loc_C1FFE3: CI2Var
  loc_C1FFE4: FLdRfVar var_220
  loc_C1FFE7: CStrVarTmp
  loc_C1FFE8: FStStrNoPop var_294
  loc_C1FFEB: CI4Str
  loc_C1FFEC: FLdRfVar var_164
  loc_C1FFEF: CStrVarTmp
  loc_C1FFF0: FStStrNoPop var_228
  loc_C1FFF3: CI4Str
  loc_C1FFF4: FLdRfVar var_D0
  loc_C1FFF7: CStrVarTmp
  loc_C1FFF8: FStStrNoPop var_224
  loc_C1FFFB: FLdRfVar var_268
  loc_C1FFFE: CI2Var
  loc_C1FFFF: FLdRfVar var_248
  loc_C20002: CStrVarTmp
  loc_C20003: FStStrNoPop var_144
  loc_C20006: FLdRfVar var_C0
  loc_C20009: CStrVarTmp
  loc_C2000A: FStStrNoPop var_13C
  loc_C2000D: FLdRfVar var_B0
  loc_C20010: CStrVarTmp
  loc_C20011: FStStrNoPop var_8C
  loc_C20014: CI4Str
  loc_C20015: FLdPr Me
  loc_C20018: MemLdRfVar from_stack_1.global_60
  loc_C2001B: NewIfNullPr clscheque
  loc_C2001E: Call clscheque.ActualizaFepaCheqInteMoba(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v)
  loc_C20023: FFreeStr var_8C = "": var_13C = "": var_144 = "": var_224 = "": var_228 = ""
  loc_C20032: FFreeAd var_9C = "": var_124 = "": var_128 = "": var_12C = "": var_134 = "": var_140 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_324 = "": var_328 = "": var_130 = "": var_308 = "": var_320 = ""
  loc_C20057: FFreeVar var_B0 = "": var_C0 = "": var_D0 = "": var_164 = "": var_220 = "": var_248 = "": var_268 = "": var_278 = ""
  loc_C2006C: LitI2_Byte &HFF
  loc_C2006E: BranchF loc_C203B3
  loc_C20071: FLdRfVar var_B0
  loc_C20074: FLdRfVar var_128
  loc_C20077: LitVarStr var_E0, "CargoOrpa"
  loc_C2007C: PopAdLdVar
  loc_C2007D: FLdRfVar var_124
  loc_C20080: FLdRfVar var_9C
  loc_C20083: FLdPr Me
  loc_C20086: MemLdRfVar from_stack_1.global_56
  loc_C20089: NewIfNullPr clsordenpago
  loc_C2008C: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C20091: FLdPr var_9C
  loc_C20094:  = Me.Fields
  loc_C20099: FLdPr var_124
  loc_C2009C: from_stack_2 = Me.Item(from_stack_1)
  loc_C200A1: FLdPr var_128
  loc_C200A4:  = Me.Value
  loc_C200A9: FLdRfVar var_B0
  loc_C200AC: FnCByteVar
  loc_C200AE: CI2UI1
  loc_C200B0: LitI2_Byte 1
  loc_C200B2: EqI2
  loc_C200B3: FFreeAd var_9C = "": var_124 = ""
  loc_C200BC: FFree1Var var_B0 = ""
  loc_C200BF: BranchF loc_C203B3
  loc_C200C2: LitStr "0"
  loc_C200C5: FLdPr Me
  loc_C200C8: MemStStrCopy
  loc_C200CC: FLdPr Me
  loc_C200CF: MemLdStr global_72
  loc_C200D2: LitStr vbNullString
  loc_C200D5: NeStr
  loc_C200D7: BranchF loc_C2016E
  loc_C200DA: FLdRfVar var_136
  loc_C200DD: LitI2_Byte 1
  loc_C200DF: ImpAdLdI2 MemVar_C3D064
  loc_C200E2: FLdPr Me
  loc_C200E5: MemLdRfVar from_stack_1.global_56
  loc_C200E8: NewIfNullPr clsordenpago
  loc_C200EB: from_stack_3v = clsordenpago.BuscaDiasRendicionCargo(from_stack_1v, from_stack_2v)
  loc_C200F0: LitVar_Missing var_268
  loc_C200F3: LitVar_Missing var_248
  loc_C200F6: LitVar_Missing var_220
  loc_C200F9: LitVar_Missing var_164
  loc_C200FC: FLdI2 var_136
  loc_C200FF: CVarI2 var_D0
  loc_C20102: LitVarStr var_F0, "Alerta de Días para Rendición"
  loc_C20107: FStVarCopyObj var_C0
  loc_C2010A: FLdRfVar var_C0
  loc_C2010D: LitVarStr var_E0, "Ingrese cuantos días para rendir..."
  loc_C20112: FStVarCopyObj var_B0
  loc_C20115: FLdRfVar var_B0
  loc_C20118: ImpAdCallI2 InputBox(, , , , , , )
  loc_C2011D: FStStr var_154
  loc_C20120: FFreeVar var_B0 = "": var_C0 = "": var_D0 = "": var_164 = "": var_220 = "": var_248 = ""
  loc_C20131: LitI2_Byte 0
  loc_C20133: LitI2_Byte 0
  loc_C20135: ILdRf var_154
  loc_C20138: LitStr "cantidad días"
  loc_C2013B: ImpAdCallI2 Proc_266_29_9CEBC0(, , , )
  loc_C20140: FStStrNoPop var_8C
  loc_C20143: FLdPr Me
  loc_C20146: MemStStrCopy
  loc_C2014A: FFree1Str var_8C
  loc_C2014D: FLdPr Me
  loc_C20150: MemLdStr global_72
  loc_C20153: LitStr vbNullString
  loc_C20156: NeStr
  loc_C20158: BranchF loc_C2016B
  loc_C2015B: LitI4 0
  loc_C20160: FLdPr Me
  loc_C20163: MemLdStr global_72
  loc_C20166: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2016B: Branch loc_C200CC
  loc_C2016E: FLdRfVar var_248
  loc_C20171: FLdRfVar var_128
  loc_C20174: LitVarStr var_E0, "NumeOrpa"
  loc_C20179: PopAdLdVar
  loc_C2017A: FLdRfVar var_124
  loc_C2017D: FLdRfVar var_9C
  loc_C20180: FLdPr Me
  loc_C20183: MemLdRfVar from_stack_1.global_56
  loc_C20186: NewIfNullPr clsordenpago
  loc_C20189: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C2018E: FLdPr var_9C
  loc_C20191:  = Me.Fields
  loc_C20196: FLdPr var_124
  loc_C20199: from_stack_2 = Me.Item(from_stack_1)
  loc_C2019E: FLdPr var_128
  loc_C201A1:  = Me.Value
  loc_C201A6: FLdRfVar var_268
  loc_C201A9: FLdRfVar var_134
  loc_C201AC: LitVarStr var_F0, "ExpeImpu"
  loc_C201B1: PopAdLdVar
  loc_C201B2: FLdRfVar var_130
  loc_C201B5: FLdRfVar var_12C
  loc_C201B8: FLdPr Me
  loc_C201BB: MemLdRfVar from_stack_1.global_56
  loc_C201BE: NewIfNullPr clsordenpago
  loc_C201C1: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C201C6: FLdPr var_12C
  loc_C201C9:  = Me.Fields
  loc_C201CE: FLdPr var_130
  loc_C201D1: from_stack_2 = Me.Item(from_stack_1)
  loc_C201D6: FLdPr var_134
  loc_C201D9:  = Me.Value
  loc_C201DE: FLdRfVar var_278
  loc_C201E1: FLdRfVar var_30C
  loc_C201E4: LitVarStr var_100, "NumeLiqu"
  loc_C201E9: PopAdLdVar
  loc_C201EA: FLdRfVar var_308
  loc_C201ED: FLdRfVar var_140
  loc_C201F0: FLdPr Me
  loc_C201F3: MemLdRfVar from_stack_1.global_56
  loc_C201F6: NewIfNullPr clsordenpago
  loc_C201F9: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C201FE: FLdPr var_140
  loc_C20201:  = Me.Fields
  loc_C20206: FLdPr var_308
  loc_C20209: from_stack_2 = Me.Item(from_stack_1)
  loc_C2020E: FLdPr var_30C
  loc_C20211:  = Me.Value
  loc_C20216: FLdPr Me
  loc_C20219: VCallAd Control_ID_FechaMsk
  loc_C2021C: FStAdFunc var_310
  loc_C2021F: FLdPr var_310
  loc_C20222: LateIdLdVar var_B0 DispID_15 0
  loc_C20229: PopAd
  loc_C2022B: FLdRfVar var_288
  loc_C2022E: FLdRfVar var_31C
  loc_C20231: LitVarStr var_110, "DetaOrpa"
  loc_C20236: PopAdLdVar
  loc_C20237: FLdRfVar var_318
  loc_C2023A: FLdRfVar var_314
  loc_C2023D: FLdPr Me
  loc_C20240: MemLdRfVar from_stack_1.global_56
  loc_C20243: NewIfNullPr clsordenpago
  loc_C20246: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C2024B: FLdPr var_314
  loc_C2024E:  = Me.Fields
  loc_C20253: FLdPr var_318
  loc_C20256: from_stack_2 = Me.Item(from_stack_1)
  loc_C2025B: FLdPr var_31C
  loc_C2025E:  = Me.Value
  loc_C20263: FLdPr Me
  loc_C20266: MemLdRfVar from_stack_1.global_76
  loc_C20269: CDargRef
  loc_C2026D: LitVarI4
  loc_C20275: PopAdLdVar
  loc_C20276: FLdPr Me
  loc_C20279: VCallAd Control_ID_FlexCheque
  loc_C2027C: FStAdFunc var_320
  loc_C2027F: FLdPr var_320
  loc_C20282: LateIdCallLdVar
  loc_C2028C: PopAd
  loc_C2028E: FLdPr Me
  loc_C20291: MemLdRfVar from_stack_1.global_76
  loc_C20294: CDargRef
  loc_C20298: LitVarI4
  loc_C202A0: PopAdLdVar
  loc_C202A1: FLdPr Me
  loc_C202A4: VCallAd Control_ID_FlexCheque
  loc_C202A7: FStAdFunc var_324
  loc_C202AA: FLdPr var_324
  loc_C202AD: LateIdCallLdVar
  loc_C202B7: PopAd
  loc_C202B9: FLdPr Me
  loc_C202BC: MemLdRfVar from_stack_1.global_76
  loc_C202BF: CDargRef
  loc_C202C3: LitVarI4
  loc_C202CB: PopAdLdVar
  loc_C202CC: FLdPr Me
  loc_C202CF: VCallAd Control_ID_FlexCheque
  loc_C202D2: FStAdFunc var_328
  loc_C202D5: FLdPr var_328
  loc_C202D8: LateIdCallLdVar
  loc_C202E2: PopAd
  loc_C202E4: FLdPr Me
  loc_C202E7: MemLdRfVar from_stack_1.global_76
  loc_C202EA: CDargRef
  loc_C202EE: LitVarI4
  loc_C202F6: PopAdLdVar
  loc_C202F7: FLdPr Me
  loc_C202FA: VCallAd Control_ID_FlexCheque
  loc_C202FD: FStAdFunc var_32C
  loc_C20300: FLdPr var_32C
  loc_C20303: LateIdCallLdVar
  loc_C2030D: PopAd
  loc_C2030F: ILdRf var_154
  loc_C20312: CUI1Str
  loc_C20314: FLdRfVar var_220
  loc_C20317: CStrVarTmp
  loc_C20318: FStStrNoPop var_298
  loc_C2031B: CI4Str
  loc_C2031C: FLdRfVar var_164
  loc_C2031F: CStrVarTmp
  loc_C20320: FStStrNoPop var_294
  loc_C20323: CI2Str
  loc_C20325: FLdRfVar var_D0
  loc_C20328: CStrVarTmp
  loc_C20329: FStStrNoPop var_228
  loc_C2032C: CR8Str
  loc_C2032E: PopFPR8
  loc_C2032F: FLdRfVar var_C0
  loc_C20332: CStrVarTmp
  loc_C20333: FStStrNoPop var_224
  loc_C20336: FLdRfVar var_288
  loc_C20339: CStrVarTmp
  loc_C2033A: FStStrNoPop var_144
  loc_C2033D: FLdRfVar var_B0
  loc_C20340: CStrVarTmp
  loc_C20341: FStStrNoPop var_13C
  loc_C20344: FLdRfVar var_278
  loc_C20347: CI2Var
  loc_C20348: FLdRfVar var_268
  loc_C2034B: CStrVarTmp
  loc_C2034C: FStStrNoPop var_8C
  loc_C2034F: FLdRfVar var_248
  loc_C20352: CI4Var
  loc_C20354: ImpAdLdI2 MemVar_C3D064
  loc_C20357: FLdPr Me
  loc_C2035A: MemLdRfVar from_stack_1.global_56
  loc_C2035D: NewIfNullPr clsordenpago
  loc_C20360: Call clsordenpago.InsertCargo(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v)
  loc_C20365: FFreeStr var_8C = "": var_13C = "": var_144 = "": var_224 = "": var_228 = "": var_294 = ""
  loc_C20376: FFreeAd var_9C = "": var_124 = "": var_12C = "": var_130 = "": var_140 = "": var_308 = "": var_310 = "": var_314 = "": var_318 = "": var_320 = "": var_324 = "": var_328 = "": var_32C = "": var_128 = "": var_134 = "": var_30C = ""
  loc_C2039B: FFreeVar var_B0 = "": var_C0 = "": var_D0 = "": var_164 = "": var_220 = "": var_248 = "": var_268 = "": var_278 = ""
  loc_C203B0: Branch loc_C203B3
  loc_C203B3: FLdPr Me
  loc_C203B6: VCallAd Control_ID_FlexCheque
  loc_C203B9: FStAdFunc var_9C
  loc_C203BC: FLdPr var_9C
  loc_C203BF: LateIdLdVar var_B0 DispID_4 0
  loc_C203C6: PopAd
  loc_C203C8: FLdPr Me
  loc_C203CB: MemLdStr global_76
  loc_C203CE: CR8I4
  loc_C203CF: FLdRfVar var_B0
  loc_C203D2: CI4Var
  loc_C203D4: LitI4 1
  loc_C203D9: SubI4
  loc_C203DA: CR8I4
  loc_C203DB: DivR8
  loc_C203DC: LitI2_Byte &H64
  loc_C203DE: CR8I2
  loc_C203DF: MulR8
  loc_C203E0: CVarR4
  loc_C203E4: PopAdLdVar
  loc_C203E5: FLdPrThis
  loc_C203E6: VCallAd Control_ID_ProgressBar
  loc_C203E9: FStAdFunc var_124
  loc_C203EC: FLdPr var_124
  loc_C203EF: LateIdSt
  loc_C203F4: FFreeAd var_9C = ""
  loc_C203FB: FFree1Var var_B0 = ""
  loc_C203FE: FLdPr Me
  loc_C20401: MemLdRfVar from_stack_1.global_76
  loc_C20404: NextI4 var_304, loc_C1FBBC
  loc_C20409: FLdRfVar var_8C
  loc_C2040C: ILdRf var_150
  loc_C2040F: ImpAdLdI2 MemVar_C3D064
  loc_C20412: FLdPr Me
  loc_C20415: MemLdRfVar from_stack_1.global_56
  loc_C20418: NewIfNullPr clsordenpago
  loc_C2041B: from_stack_3v = clsordenpago.ChequesPendientesxOP(from_stack_1v, from_stack_2v)
  loc_C20420: ILdRf var_8C
  loc_C20423: FLdPr Me
  loc_C20426: MemStStrCopy
  loc_C2042A: FFree1Str var_8C
  loc_C2042D: FLdPr Me
  loc_C20430: MemLdStr global_72
  loc_C20433: LitStr vbNullString
  loc_C20436: EqStr
  loc_C20438: BranchF loc_C21261
  loc_C2043B: LitStr "Municipalidad de Guaymallén"
  loc_C2043E: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_C20441: EqStr
  loc_C20443: BranchF loc_C2047D
  loc_C20446: FLdPr Me
  loc_C20449: VCallAd Control_ID_FechaMsk
  loc_C2044C: FStAdFunc var_9C
  loc_C2044F: FLdPr var_9C
  loc_C20452: LateIdLdVar var_B0 DispID_11 -32767
  loc_C20459: CStrVarTmp
  loc_C2045A: FStStrNoPop var_8C
  loc_C2045D: ILdRf var_150
  loc_C20460: ImpAdLdI2 MemVar_C3D064
  loc_C20463: FLdPr Me
  loc_C20466: MemLdRfVar from_stack_1.global_56
  loc_C20469: NewIfNullPr clsordenpago
  loc_C2046C: Call clsordenpago.ModificarFearOrpa(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C20471: FFree1Str var_8C
  loc_C20474: FFree1Ad var_9C
  loc_C20477: FFree1Var var_B0 = ""
  loc_C2047A: Branch loc_C204B1
  loc_C2047D: FLdPr Me
  loc_C20480: VCallAd Control_ID_FechaMsk
  loc_C20483: FStAdFunc var_9C
  loc_C20486: FLdPr var_9C
  loc_C20489: LateIdLdVar var_B0 DispID_15 0
  loc_C20490: CStrVarTmp
  loc_C20491: FStStrNoPop var_8C
  loc_C20494: ILdRf var_150
  loc_C20497: ImpAdLdI2 MemVar_C3D064
  loc_C2049A: FLdPr Me
  loc_C2049D: MemLdRfVar from_stack_1.global_56
  loc_C204A0: NewIfNullPr clsordenpago
  loc_C204A3: Call clsordenpago.ModificarFearOrpa(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C204A8: FFree1Str var_8C
  loc_C204AB: FFree1Ad var_9C
  loc_C204AE: FFree1Var var_B0 = ""
  loc_C204B1: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_C204B4: LitStr " CREATE TEMPORARY TABLE tmovi"
  loc_C204B7: ConcatStr
  loc_C204B8: FStStrNoPop var_8C
  loc_C204BB: LitStr " SELECT PeriInfo, ExpeImpu, NumeLiqu, CucuPers"
  loc_C204BE: ConcatStr
  loc_C204BF: FStStrNoPop var_13C
  loc_C204C2: LitStr " FROM liquidaneto"
  loc_C204C5: ConcatStr
  loc_C204C6: FStStrNoPop var_144
  loc_C204C9: LitStr " WHERE PeriInfo = "
  loc_C204CC: ConcatStr
  loc_C204CD: CVarStr var_C0
  loc_C204D0: FLdRfVar var_B0
  loc_C204D3: FLdRfVar var_128
  loc_C204D6: LitVarStr var_E0, "PeriInfo"
  loc_C204DB: PopAdLdVar
  loc_C204DC: FLdRfVar var_124
  loc_C204DF: FLdRfVar var_9C
  loc_C204E2: FLdPr Me
  loc_C204E5: MemLdRfVar from_stack_1.global_56
  loc_C204E8: NewIfNullPr clsordenpago
  loc_C204EB: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C204F0: FLdPr var_9C
  loc_C204F3:  = Me.Fields
  loc_C204F8: FLdPr var_124
  loc_C204FB: from_stack_2 = Me.Item(from_stack_1)
  loc_C20500: FLdPr var_128
  loc_C20503:  = Me.Value
  loc_C20508: FLdRfVar var_B0
  loc_C2050B: ConcatVar var_D0
  loc_C2050F: LitVarStr var_F0, " AND ExpeImpu = '"
  loc_C20514: ConcatVar var_164
  loc_C20518: FLdRfVar var_220
  loc_C2051B: FLdRfVar var_134
  loc_C2051E: LitVarStr var_100, "ExpeImpu"
  loc_C20523: PopAdLdVar
  loc_C20524: FLdRfVar var_130
  loc_C20527: FLdRfVar var_12C
  loc_C2052A: FLdPr Me
  loc_C2052D: MemLdRfVar from_stack_1.global_56
  loc_C20530: NewIfNullPr clsordenpago
  loc_C20533: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C20538: FLdPr var_12C
  loc_C2053B:  = Me.Fields
  loc_C20540: FLdPr var_130
  loc_C20543: from_stack_2 = Me.Item(from_stack_1)
  loc_C20548: FLdPr var_134
  loc_C2054B:  = Me.Value
  loc_C20550: FLdRfVar var_220
  loc_C20553: ConcatVar var_248
  loc_C20557: LitVarStr var_110, "'"
  loc_C2055C: ConcatVar var_268
  loc_C20560: LitVarStr var_120, " AND NumeLiqu = "
  loc_C20565: ConcatVar var_278
  loc_C20569: FLdRfVar var_288
  loc_C2056C: FLdRfVar var_30C
  loc_C2056F: LitVarStr var_180, "NumeLiqu"
  loc_C20574: PopAdLdVar
  loc_C20575: FLdRfVar var_308
  loc_C20578: FLdRfVar var_140
  loc_C2057B: FLdPr Me
  loc_C2057E: MemLdRfVar from_stack_1.global_56
  loc_C20581: NewIfNullPr clsordenpago
  loc_C20584: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C20589: FLdPr var_140
  loc_C2058C:  = Me.Fields
  loc_C20591: FLdPr var_308
  loc_C20594: from_stack_2 = Me.Item(from_stack_1)
  loc_C20599: FLdPr var_30C
  loc_C2059C:  = Me.Value
  loc_C205A1: FLdRfVar var_288
  loc_C205A4: ConcatVar var_2B0
  loc_C205A8: LitVarStr var_190, " AND FechCaja IS NULL"
  loc_C205AD: ConcatVar var_2CC
  loc_C205B1: LitVarStr var_1A0, " AND FeanLine IS NULL"
  loc_C205B6: ConcatVar var_2DC
  loc_C205BA: LitVarStr var_1B0, " GROUP BY CucuPers;"
  loc_C205BF: ConcatVar var_2EC
  loc_C205C3: CStrVarVal var_224
  loc_C205C7: FLdPr Me
  loc_C205CA: MemLdRfVar from_stack_1.global_52
  loc_C205CD: NewIfNullPr clsimputacion
  loc_C205D0: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_C205D5: FFreeStr var_8C = "": var_13C = "": var_144 = ""
  loc_C205E0: FFreeAd var_9C = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_140 = "": var_308 = ""
  loc_C205F5: FFreeVar var_C0 = "": var_B0 = "": var_D0 = "": var_164 = "": var_220 = "": var_248 = "": var_268 = "": var_278 = "": var_288 = "": var_2B0 = "": var_2CC = "": var_2DC = ""
  loc_C20612: LitStr "SELECT *"
  loc_C20615: LitStr " FROM tmovi;"
  loc_C20618: ConcatStr
  loc_C20619: FStStrNoPop var_8C
  loc_C2061C: FLdPr Me
  loc_C2061F: MemLdRfVar from_stack_1.global_52
  loc_C20622: NewIfNullPr clsimputacion
  loc_C20625: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_C2062A: FFree1Str var_8C
  loc_C2062D: FLdRfVar var_94
  loc_C20630: FLdPr Me
  loc_C20633: MemLdRfVar from_stack_1.global_52
  loc_C20636: NewIfNullPr clsimputacion
  loc_C20639: from_stack_1 = clsimputacion.RecordCount
  loc_C2063E: ILdRf var_94
  loc_C20641: LitI4 0
  loc_C20646: GtI4
  loc_C20647: BranchF loc_C20A05
  loc_C2064A: FLdPr Me
  loc_C2064D: MemLdRfVar from_stack_1.global_52
  loc_C20650: NewIfNullPr clsimputacion
  loc_C20653: Call clsimputacion.MoveFirst()
  loc_C20658: FLdRfVar var_136
  loc_C2065B: FLdPr Me
  loc_C2065E: MemLdRfVar from_stack_1.global_52
  loc_C20661: NewIfNullPr clsimputacion
  loc_C20664: from_stack_1 = clsimputacion.EOF
  loc_C20669: FLdI2 var_136
  loc_C2066C: NotI4
  loc_C2066D: BranchF loc_C207D4
  loc_C20670: FLdRfVar var_98
  loc_C20673: FLdPr Me
  loc_C20676: MemLdRfVar from_stack_1.global_52
  loc_C20679: NewIfNullPr clsimputacion
  loc_C2067C: from_stack_1 = clsimputacion.RecordCount
  loc_C20681: FLdRfVar var_94
  loc_C20684: FLdPr Me
  loc_C20687: MemLdRfVar from_stack_1.global_52
  loc_C2068A: NewIfNullPr clsimputacion
  loc_C2068D: from_stack_1 = clsimputacion.AbsolutePosition
  loc_C20692: ILdRf var_94
  loc_C20695: CR8I4
  loc_C20696: ILdRf var_98
  loc_C20699: CR8I4
  loc_C2069A: DivR8
  loc_C2069B: LitI2_Byte &H64
  loc_C2069D: CR8I2
  loc_C2069E: MulR8
  loc_C2069F: CVarR4
  loc_C206A3: PopAdLdVar
  loc_C206A4: FLdPrThis
  loc_C206A5: VCallAd Control_ID_ProgressBar
  loc_C206A8: FStAdFunc var_9C
  loc_C206AB: FLdPr var_9C
  loc_C206AE: LateIdSt
  loc_C206B3: FFree1Ad var_9C
  loc_C206B6: FLdRfVar var_C0
  loc_C206B9: FLdRfVar var_128
  loc_C206BC: LitVarStr var_E0, "ExpeImpu"
  loc_C206C1: PopAdLdVar
  loc_C206C2: FLdRfVar var_124
  loc_C206C5: FLdRfVar var_9C
  loc_C206C8: FLdPr Me
  loc_C206CB: MemLdRfVar from_stack_1.global_56
  loc_C206CE: NewIfNullPr clsordenpago
  loc_C206D1: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C206D6: FLdPr var_9C
  loc_C206D9:  = Me.Fields
  loc_C206DE: FLdPr var_124
  loc_C206E1: from_stack_2 = Me.Item(from_stack_1)
  loc_C206E6: FLdPr var_128
  loc_C206E9:  = Me.Value
  loc_C206EE: FLdRfVar var_D0
  loc_C206F1: FLdRfVar var_134
  loc_C206F4: LitVarStr var_F0, "NumeLiqu"
  loc_C206F9: PopAdLdVar
  loc_C206FA: FLdRfVar var_130
  loc_C206FD: FLdRfVar var_12C
  loc_C20700: FLdPr Me
  loc_C20703: MemLdRfVar from_stack_1.global_56
  loc_C20706: NewIfNullPr clsordenpago
  loc_C20709: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C2070E: FLdPr var_12C
  loc_C20711:  = Me.Fields
  loc_C20716: FLdPr var_130
  loc_C20719: from_stack_2 = Me.Item(from_stack_1)
  loc_C2071E: FLdPr var_134
  loc_C20721:  = Me.Value
  loc_C20726: FLdRfVar var_164
  loc_C20729: FLdRfVar var_30C
  loc_C2072C: LitVarStr var_100, "CucuPers"
  loc_C20731: PopAdLdVar
  loc_C20732: FLdRfVar var_308
  loc_C20735: FLdRfVar var_140
  loc_C20738: FLdPr Me
  loc_C2073B: MemLdRfVar from_stack_1.global_52
  loc_C2073E: NewIfNullPr clsimputacion
  loc_C20741: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C20746: FLdPr var_140
  loc_C20749:  = Me.Fields
  loc_C2074E: FLdPr var_308
  loc_C20751: from_stack_2 = Me.Item(from_stack_1)
  loc_C20756: FLdPr var_30C
  loc_C20759:  = Me.Value
  loc_C2075E: FLdPr Me
  loc_C20761: VCallAd Control_ID_FechaMsk
  loc_C20764: FStAdFunc var_310
  loc_C20767: FLdPr var_310
  loc_C2076A: LateIdLdVar var_B0 DispID_15 0
  loc_C20771: CStrVarTmp
  loc_C20772: FStStrNoPop var_144
  loc_C20775: FLdRfVar var_164
  loc_C20778: CStrVarTmp
  loc_C20779: FStStrNoPop var_13C
  loc_C2077C: FLdRfVar var_D0
  loc_C2077F: CI2Var
  loc_C20780: FLdRfVar var_C0
  loc_C20783: CStrVarTmp
  loc_C20784: FStStrNoPop var_8C
  loc_C20787: ImpAdLdI2 MemVar_C3D064
  loc_C2078A: FLdPr Me
  loc_C2078D: MemLdRfVar from_stack_1.global_56
  loc_C20790: NewIfNullPr clsordenpago
  loc_C20793: Call clsordenpago.ActualizaLNFechCajaxCuit(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C20798: FFreeStr var_8C = "": var_13C = ""
  loc_C207A1: FFreeAd var_9C = "": var_124 = "": var_12C = "": var_130 = "": var_140 = "": var_308 = "": var_310 = "": var_128 = "": var_134 = ""
  loc_C207B8: FFreeVar var_B0 = "": var_C0 = "": var_D0 = ""
  loc_C207C3: FLdPr Me
  loc_C207C6: MemLdRfVar from_stack_1.global_52
  loc_C207C9: NewIfNullPr clsimputacion
  loc_C207CC: Call clsimputacion.MoveSiguiente()
  loc_C207D1: Branch loc_C20658
  loc_C207D4: FLdRfVar var_B0
  loc_C207D7: FLdRfVar var_128
  loc_C207DA: LitVarStr var_E0, "TipoOrpa"
  loc_C207DF: PopAdLdVar
  loc_C207E0: FLdRfVar var_124
  loc_C207E3: FLdRfVar var_9C
  loc_C207E6: FLdPr Me
  loc_C207E9: MemLdRfVar from_stack_1.global_56
  loc_C207EC: NewIfNullPr clsordenpago
  loc_C207EF: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C207F4: FLdPr var_9C
  loc_C207F7:  = Me.Fields
  loc_C207FC: FLdPr var_124
  loc_C207FF: from_stack_2 = Me.Item(from_stack_1)
  loc_C20804: FLdPr var_128
  loc_C20807:  = Me.Value
  loc_C2080C: FLdRfVar var_B0
  loc_C2080F: LitVarStr var_F0, "Devengado"
  loc_C20814: HardType
  loc_C20815: EqVarBool
  loc_C20817: FFreeAd var_9C = "": var_124 = ""
  loc_C20820: FFree1Var var_B0 = ""
  loc_C20823: BranchF loc_C20A05
  loc_C20826: LitStr "SELECT i.*"
  loc_C20829: LitStr " FROM tmovi"
  loc_C2082C: ConcatStr
  loc_C2082D: FStStrNoPop var_8C
  loc_C20830: LitStr " INNER JOIN imputacion i ON i.PeriInfo = tmovi.PeriInfo AND i.ExpeImpu = tmovi.ExpeImpu AND i.NumeLiqu = tmovi.NumeLiqu AND i.CucuPers = tmovi.CucuPers AND MapaImpu != 0;"
  loc_C20833: ConcatStr
  loc_C20834: FStStrNoPop var_13C
  loc_C20837: FLdPr Me
  loc_C2083A: MemLdRfVar from_stack_1.global_52
  loc_C2083D: NewIfNullPr clsimputacion
  loc_C20840: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_C20845: FFreeStr var_8C = ""
  loc_C2084C: FLdRfVar var_94
  loc_C2084F: FLdPr Me
  loc_C20852: MemLdRfVar from_stack_1.global_52
  loc_C20855: NewIfNullPr clsimputacion
  loc_C20858: from_stack_1 = clsimputacion.RecordCount
  loc_C2085D: ILdRf var_94
  loc_C20860: LitI4 0
  loc_C20865: GtI4
  loc_C20866: BranchF loc_C20A02
  loc_C20869: FLdPr Me
  loc_C2086C: MemLdRfVar from_stack_1.global_52
  loc_C2086F: NewIfNullPr clsimputacion
  loc_C20872: Call clsimputacion.MoveFirst()
  loc_C20877: FLdRfVar var_136
  loc_C2087A: FLdPr Me
  loc_C2087D: MemLdRfVar from_stack_1.global_52
  loc_C20880: NewIfNullPr clsimputacion
  loc_C20883: from_stack_1 = clsimputacion.EOF
  loc_C20888: FLdI2 var_136
  loc_C2088B: NotI4
  loc_C2088C: BranchF loc_C20A02
  loc_C2088F: FLdRfVar var_C0
  loc_C20892: FLdRfVar var_128
  loc_C20895: LitVarStr var_E0, "IdImpu"
  loc_C2089A: PopAdLdVar
  loc_C2089B: FLdRfVar var_124
  loc_C2089E: FLdRfVar var_9C
  loc_C208A1: FLdPr Me
  loc_C208A4: MemLdRfVar from_stack_1.global_52
  loc_C208A7: NewIfNullPr clsimputacion
  loc_C208AA: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C208AF: FLdPr var_9C
  loc_C208B2:  = Me.Fields
  loc_C208B7: FLdPr var_124
  loc_C208BA: from_stack_2 = Me.Item(from_stack_1)
  loc_C208BF: FLdPr var_128
  loc_C208C2:  = Me.Value
  loc_C208C7: FLdPr Me
  loc_C208CA: VCallAd Control_ID_FechaMsk
  loc_C208CD: FStAdFunc var_12C
  loc_C208D0: FLdPr var_12C
  loc_C208D3: LateIdLdVar var_B0 DispID_15 0
  loc_C208DA: PopAd
  loc_C208DC: FLdRfVar var_94
  loc_C208DF: LitI2_Byte 0
  loc_C208E1: LitI2_Byte 0
  loc_C208E3: LitI4 0
  loc_C208E8: LitStr vbNullString
  loc_C208EB: FLdRfVar var_B0
  loc_C208EE: CStrVarTmp
  loc_C208EF: FStStrNoPop var_8C
  loc_C208F2: FLdRfVar var_C0
  loc_C208F5: CI4Var
  loc_C208F7: FLdPr Me
  loc_C208FA: MemLdRfVar from_stack_1.global_52
  loc_C208FD: NewIfNullPr clsimputacion
  loc_C20900: from_stack_7v = clsimputacion.AddNewPagado(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C20905: ILdRf var_94
  loc_C20908: FStR4 var_14C
  loc_C2090B: FFree1Str var_8C
  loc_C2090E: FFreeAd var_9C = "": var_124 = "": var_12C = ""
  loc_C20919: FFreeVar var_B0 = ""
  loc_C20920: ILdRf var_14C
  loc_C20923: LitI4 0
  loc_C20928: EqI4
  loc_C20929: BranchF loc_C209AB
  loc_C2092C: LitI4 0
  loc_C20931: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C20934: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C20939: FLdRfVar var_8C
  loc_C2093C: FLdPr Me
  loc_C2093F:  = Me.Name
  loc_C20944: LitStr "O.P.: "
  loc_C20947: ILdRf var_150
  loc_C2094A: CStrI4
  loc_C2094C: FStStrNoPop var_13C
  loc_C2094F: ConcatStr
  loc_C20950: FStStrNoPop var_144
  loc_C20953: LitStr ", no genero el pagado del proveedor: "
  loc_C20956: ConcatStr
  loc_C20957: FStStrNoPop var_224
  loc_C2095A: FLdPr Me
  loc_C2095D: MemLdRfVar from_stack_1.global_76
  loc_C20960: CDargRef
  loc_C20964: LitVarI4
  loc_C2096C: PopAdLdVar
  loc_C2096D: FLdPr Me
  loc_C20970: VCallAd Control_ID_FlexCheque
  loc_C20973: FStAdFunc var_9C
  loc_C20976: FLdPr var_9C
  loc_C20979: LateIdCallLdVar
  loc_C20983: CStrVarTmp
  loc_C20984: FStStrNoPop var_228
  loc_C20987: ConcatStr
  loc_C20988: FStStrNoPop var_294
  loc_C2098B: ILdRf var_8C
  loc_C2098E: ImpAdLdI2 MemVar_C3D064
  loc_C20991: ImpAdCallFPR4 Proc_266_37_9AA1B8(, , )
  loc_C20996: FFreeStr var_13C = "": var_144 = "": var_224 = "": var_228 = "": var_8C = ""
  loc_C209A5: FFree1Ad var_9C
  loc_C209A8: FFree1Var var_B0 = ""
  loc_C209AB: FLdRfVar var_98
  loc_C209AE: FLdPr Me
  loc_C209B1: MemLdRfVar from_stack_1.global_52
  loc_C209B4: NewIfNullPr clsimputacion
  loc_C209B7: from_stack_1 = clsimputacion.RecordCount
  loc_C209BC: FLdRfVar var_94
  loc_C209BF: FLdPr Me
  loc_C209C2: MemLdRfVar from_stack_1.global_52
  loc_C209C5: NewIfNullPr clsimputacion
  loc_C209C8: from_stack_1 = clsimputacion.AbsolutePosition
  loc_C209CD: ILdRf var_94
  loc_C209D0: CR8I4
  loc_C209D1: ILdRf var_98
  loc_C209D4: CR8I4
  loc_C209D5: DivR8
  loc_C209D6: LitI2_Byte &H64
  loc_C209D8: CR8I2
  loc_C209D9: MulR8
  loc_C209DA: CVarR4
  loc_C209DE: PopAdLdVar
  loc_C209DF: FLdPrThis
  loc_C209E0: VCallAd Control_ID_ProgressBar
  loc_C209E3: FStAdFunc var_9C
  loc_C209E6: FLdPr var_9C
  loc_C209E9: LateIdSt
  loc_C209EE: FFree1Ad var_9C
  loc_C209F1: FLdPr Me
  loc_C209F4: MemLdRfVar from_stack_1.global_52
  loc_C209F7: NewIfNullPr clsimputacion
  loc_C209FA: Call clsimputacion.MoveSiguiente()
  loc_C209FF: Branch loc_C20877
  loc_C20A02: Branch loc_C20A05
  loc_C20A05: LitStr "SELECT r.CodiRete, r.DetaRete, r.CodiCuco, ImpoLine, r.CucuPers"
  loc_C20A08: LitStr " FROM liquidaneto lqn"
  loc_C20A0B: ConcatStr
  loc_C20A0C: FStStrNoPop var_8C
  loc_C20A0F: LitStr " INNER JOIN retenciones r ON r.PeriInfo = lqn.PeriInfo AND r.CodiRete = lqn.CodiRete"
  loc_C20A12: ConcatStr
  loc_C20A13: FStStrNoPop var_13C
  loc_C20A16: LitStr " AND r.CucuPers > 0"
  loc_C20A19: ConcatStr
  loc_C20A1A: FStStrNoPop var_144
  loc_C20A1D: LitStr " WHERE lqn.PeriInfo = "
  loc_C20A20: ConcatStr
  loc_C20A21: CVarStr var_C0
  loc_C20A24: FLdRfVar var_B0
  loc_C20A27: FLdRfVar var_128
  loc_C20A2A: LitVarStr var_E0, "PeriInfo"
  loc_C20A2F: PopAdLdVar
  loc_C20A30: FLdRfVar var_124
  loc_C20A33: FLdRfVar var_9C
  loc_C20A36: FLdPr Me
  loc_C20A39: MemLdRfVar from_stack_1.global_56
  loc_C20A3C: NewIfNullPr clsordenpago
  loc_C20A3F: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C20A44: FLdPr var_9C
  loc_C20A47:  = Me.Fields
  loc_C20A4C: FLdPr var_124
  loc_C20A4F: from_stack_2 = Me.Item(from_stack_1)
  loc_C20A54: FLdPr var_128
  loc_C20A57:  = Me.Value
  loc_C20A5C: FLdRfVar var_B0
  loc_C20A5F: ConcatVar var_D0
  loc_C20A63: LitVarStr var_F0, " AND lqn.ExpeImpu = '"
  loc_C20A68: ConcatVar var_164
  loc_C20A6C: FLdRfVar var_220
  loc_C20A6F: FLdRfVar var_134
  loc_C20A72: LitVarStr var_100, "ExpeImpu"
  loc_C20A77: PopAdLdVar
  loc_C20A78: FLdRfVar var_130
  loc_C20A7B: FLdRfVar var_12C
  loc_C20A7E: FLdPr Me
  loc_C20A81: MemLdRfVar from_stack_1.global_56
  loc_C20A84: NewIfNullPr clsordenpago
  loc_C20A87: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C20A8C: FLdPr var_12C
  loc_C20A8F:  = Me.Fields
  loc_C20A94: FLdPr var_130
  loc_C20A97: from_stack_2 = Me.Item(from_stack_1)
  loc_C20A9C: FLdPr var_134
  loc_C20A9F:  = Me.Value
  loc_C20AA4: FLdRfVar var_220
  loc_C20AA7: ConcatVar var_248
  loc_C20AAB: LitVarStr var_110, "' AND lqn.NumeLiqu = "
  loc_C20AB0: ConcatVar var_268
  loc_C20AB4: FLdRfVar var_278
  loc_C20AB7: FLdRfVar var_30C
  loc_C20ABA: LitVarStr var_120, "NumeLiqu"
  loc_C20ABF: PopAdLdVar
  loc_C20AC0: FLdRfVar var_308
  loc_C20AC3: FLdRfVar var_140
  loc_C20AC6: FLdPr Me
  loc_C20AC9: MemLdRfVar from_stack_1.global_56
  loc_C20ACC: NewIfNullPr clsordenpago
  loc_C20ACF: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C20AD4: FLdPr var_140
  loc_C20AD7:  = Me.Fields
  loc_C20ADC: FLdPr var_308
  loc_C20ADF: from_stack_2 = Me.Item(from_stack_1)
  loc_C20AE4: FLdPr var_30C
  loc_C20AE7:  = Me.Value
  loc_C20AEC: FLdRfVar var_278
  loc_C20AEF: ConcatVar var_288
  loc_C20AF3: LitVarStr var_180, " AND lqn.CodiRete > 0;"
  loc_C20AF8: ConcatVar var_2B0
  loc_C20AFC: CStrVarVal var_224
  loc_C20B00: FLdPr Me
  loc_C20B03: MemLdRfVar from_stack_1.global_64
  loc_C20B06: NewIfNullPr clsdebito
  loc_C20B09: Call clsdebito.RedefineRS(from_stack_1v)
  loc_C20B0E: FFreeStr var_8C = "": var_13C = "": var_144 = ""
  loc_C20B19: FFreeAd var_9C = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_140 = "": var_308 = ""
  loc_C20B2E: FFreeVar var_C0 = "": var_B0 = "": var_D0 = "": var_164 = "": var_220 = "": var_248 = "": var_268 = "": var_278 = "": var_288 = ""
  loc_C20B45: FLdRfVar var_94
  loc_C20B48: FLdPr Me
  loc_C20B4B: MemLdRfVar from_stack_1.global_64
  loc_C20B4E: NewIfNullPr clsdebito
  loc_C20B51: from_stack_1 = clsdebito.RecordCount
  loc_C20B56: ILdRf var_94
  loc_C20B59: LitI4 0
  loc_C20B5E: GtI4
  loc_C20B5F: BranchF loc_C21261
  loc_C20B62: FLdPr Me
  loc_C20B65: MemLdRfVar from_stack_1.global_64
  loc_C20B68: NewIfNullPr clsdebito
  loc_C20B6B: Call clsdebito.MoveFirst()
  loc_C20B70: FLdRfVar var_136
  loc_C20B73: FLdPr Me
  loc_C20B76: MemLdRfVar from_stack_1.global_64
  loc_C20B79: NewIfNullPr clsdebito
  loc_C20B7C: from_stack_1 = clsdebito.EOF
  loc_C20B81: FLdI2 var_136
  loc_C20B84: NotI4
  loc_C20B85: BranchF loc_C21261
  loc_C20B88: LitStr "Municipalidad de Guaymallén"
  loc_C20B8B: LitStr "Municipalidad de Tunuyán"
  loc_C20B8E: EqStr
  loc_C20B90: BranchF loc_C20EF3
  loc_C20B93: FLdRfVar var_2FC
  loc_C20B96: FLdRfVar var_128
  loc_C20B99: LitVarStr var_E0, "PeriInfo"
  loc_C20B9E: PopAdLdVar
  loc_C20B9F: FLdRfVar var_124
  loc_C20BA2: FLdRfVar var_9C
  loc_C20BA5: FLdPr Me
  loc_C20BA8: MemLdRfVar from_stack_1.global_56
  loc_C20BAB: NewIfNullPr clsordenpago
  loc_C20BAE: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C20BB3: FLdPr var_9C
  loc_C20BB6:  = Me.Fields
  loc_C20BBB: FLdPr var_124
  loc_C20BBE: from_stack_2 = Me.Item(from_stack_1)
  loc_C20BC3: FLdPr var_128
  loc_C20BC6:  = Me.Value
  loc_C20BCB: FLdPr Me
  loc_C20BCE: VCallAd Control_ID_FechaMsk
  loc_C20BD1: FStAdFunc var_12C
  loc_C20BD4: FLdPr var_12C
  loc_C20BD7: LateIdLdVar var_B0 DispID_15 0
  loc_C20BDE: PopAd
  loc_C20BE0: FLdRfVar var_374
  loc_C20BE3: FLdRfVar var_140
  loc_C20BE6: LitVarStr var_F0, "ExpeImpu"
  loc_C20BEB: PopAdLdVar
  loc_C20BEC: FLdRfVar var_134
  loc_C20BEF: FLdRfVar var_130
  loc_C20BF2: FLdPr Me
  loc_C20BF5: MemLdRfVar from_stack_1.global_56
  loc_C20BF8: NewIfNullPr clsordenpago
  loc_C20BFB: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C20C00: FLdPr var_130
  loc_C20C03:  = Me.Fields
  loc_C20C08: FLdPr var_134
  loc_C20C0B: from_stack_2 = Me.Item(from_stack_1)
  loc_C20C10: FLdPr var_140
  loc_C20C13:  = Me.Value
  loc_C20C18: FLdRfVar var_384
  loc_C20C1B: FLdRfVar var_310
  loc_C20C1E: LitVarStr var_100, "ExpeImpu"
  loc_C20C23: PopAdLdVar
  loc_C20C24: FLdRfVar var_30C
  loc_C20C27: FLdRfVar var_308
  loc_C20C2A: FLdPr Me
  loc_C20C2D: MemLdRfVar from_stack_1.global_56
  loc_C20C30: NewIfNullPr clsordenpago
  loc_C20C33: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C20C38: FLdPr var_308
  loc_C20C3B:  = Me.Fields
  loc_C20C40: FLdPr var_30C
  loc_C20C43: from_stack_2 = Me.Item(from_stack_1)
  loc_C20C48: FLdPr var_310
  loc_C20C4B:  = Me.Value
  loc_C20C50: FLdRfVar var_394
  loc_C20C53: FLdRfVar var_31C
  loc_C20C56: LitVarStr var_110, "CodiCuco"
  loc_C20C5B: PopAdLdVar
  loc_C20C5C: FLdRfVar var_318
  loc_C20C5F: FLdRfVar var_314
  loc_C20C62: FLdPr Me
  loc_C20C65: MemLdRfVar from_stack_1.global_64
  loc_C20C68: NewIfNullPr clsdebito
  loc_C20C6B: from_stack_1v = clsdebito.RsFrmGet()
  loc_C20C70: FLdPr var_314
  loc_C20C73:  = Me.Fields
  loc_C20C78: FLdPr var_318
  loc_C20C7B: from_stack_2 = Me.Item(from_stack_1)
  loc_C20C80: FLdPr var_31C
  loc_C20C83:  = Me.Value
  loc_C20C88: FLdRfVar var_3A4
  loc_C20C8B: FLdRfVar var_328
  loc_C20C8E: LitVarStr var_120, "CucuPers"
  loc_C20C93: PopAdLdVar
  loc_C20C94: FLdRfVar var_324
  loc_C20C97: FLdRfVar var_320
  loc_C20C9A: FLdPr Me
  loc_C20C9D: MemLdRfVar from_stack_1.global_64
  loc_C20CA0: NewIfNullPr clsdebito
  loc_C20CA3: from_stack_1v = clsdebito.RsFrmGet()
  loc_C20CA8: FLdPr var_320
  loc_C20CAB:  = Me.Fields
  loc_C20CB0: FLdPr var_324
  loc_C20CB3: from_stack_2 = Me.Item(from_stack_1)
  loc_C20CB8: FLdPr var_328
  loc_C20CBB:  = Me.Value
  loc_C20CC0: FLdRfVar var_3B4
  loc_C20CC3: FLdRfVar var_334
  loc_C20CC6: LitVarStr var_180, "ImpoLine"
  loc_C20CCB: PopAdLdVar
  loc_C20CCC: FLdRfVar var_330
  loc_C20CCF: FLdRfVar var_32C
  loc_C20CD2: FLdPr Me
  loc_C20CD5: MemLdRfVar from_stack_1.global_64
  loc_C20CD8: NewIfNullPr clsdebito
  loc_C20CDB: from_stack_1v = clsdebito.RsFrmGet()
  loc_C20CE0: FLdPr var_32C
  loc_C20CE3:  = Me.Fields
  loc_C20CE8: FLdPr var_330
  loc_C20CEB: from_stack_2 = Me.Item(from_stack_1)
  loc_C20CF0: FLdPr var_334
  loc_C20CF3:  = Me.Value
  loc_C20CF8: FLdRfVar var_C0
  loc_C20CFB: FLdRfVar var_340
  loc_C20CFE: LitVarStr var_190, "NumeOrpa"
  loc_C20D03: PopAdLdVar
  loc_C20D04: FLdRfVar var_33C
  loc_C20D07: FLdRfVar var_338
  loc_C20D0A: FLdPr Me
  loc_C20D0D: MemLdRfVar from_stack_1.global_56
  loc_C20D10: NewIfNullPr clsordenpago
  loc_C20D13: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C20D18: FLdPr var_338
  loc_C20D1B:  = Me.Fields
  loc_C20D20: FLdPr var_33C
  loc_C20D23: from_stack_2 = Me.Item(from_stack_1)
  loc_C20D28: FLdPr var_340
  loc_C20D2B:  = Me.Value
  loc_C20D30: FLdRfVar var_220
  loc_C20D33: FLdRfVar var_34C
  loc_C20D36: LitVarStr var_1C0, "DetaOrpa"
  loc_C20D3B: PopAdLdVar
  loc_C20D3C: FLdRfVar var_348
  loc_C20D3F: FLdRfVar var_344
  loc_C20D42: FLdPr Me
  loc_C20D45: MemLdRfVar from_stack_1.global_56
  loc_C20D48: NewIfNullPr clsordenpago
  loc_C20D4B: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C20D50: FLdPr var_344
  loc_C20D53:  = Me.Fields
  loc_C20D58: FLdPr var_348
  loc_C20D5B: from_stack_2 = Me.Item(from_stack_1)
  loc_C20D60: FLdPr var_34C
  loc_C20D63:  = Me.Value
  loc_C20D68: FLdRfVar var_278
  loc_C20D6B: FLdRfVar var_358
  loc_C20D6E: LitVarStr var_1E0, "CodiRete"
  loc_C20D73: PopAdLdVar
  loc_C20D74: FLdRfVar var_354
  loc_C20D77: FLdRfVar var_350
  loc_C20D7A: FLdPr Me
  loc_C20D7D: MemLdRfVar from_stack_1.global_64
  loc_C20D80: NewIfNullPr clsdebito
  loc_C20D83: from_stack_1v = clsdebito.RsFrmGet()
  loc_C20D88: FLdPr var_350
  loc_C20D8B:  = Me.Fields
  loc_C20D90: FLdPr var_354
  loc_C20D93: from_stack_2 = Me.Item(from_stack_1)
  loc_C20D98: FLdPr var_358
  loc_C20D9B:  = Me.Value
  loc_C20DA0: FLdRfVar var_2CC
  loc_C20DA3: FLdRfVar var_364
  loc_C20DA6: LitVarStr var_200, "DetaRete"
  loc_C20DAB: PopAdLdVar
  loc_C20DAC: FLdRfVar var_360
  loc_C20DAF: FLdRfVar var_35C
  loc_C20DB2: FLdPr Me
  loc_C20DB5: MemLdRfVar from_stack_1.global_64
  loc_C20DB8: NewIfNullPr clsdebito
  loc_C20DBB: from_stack_1v = clsdebito.RsFrmGet()
  loc_C20DC0: FLdPr var_35C
  loc_C20DC3:  = Me.Fields
  loc_C20DC8: FLdPr var_360
  loc_C20DCB: from_stack_2 = Me.Item(from_stack_1)
  loc_C20DD0: FLdPr var_364
  loc_C20DD3:  = Me.Value
  loc_C20DD8: FLdRfVar var_136
  loc_C20DDB: LitI2_Byte 0
  loc_C20DDD: LitI2_Byte 0
  loc_C20DDF: CStrUI1
  loc_C20DE1: FStStrNoPop var_298
  loc_C20DE4: LitVarStr var_1A0, "O.P.: "
  loc_C20DE9: FLdRfVar var_C0
  loc_C20DEC: ConcatVar var_D0
  loc_C20DF0: LitVarStr var_1B0, " - "
  loc_C20DF5: ConcatVar var_164
  loc_C20DF9: FLdRfVar var_220
  loc_C20DFC: ConcatVar var_248
  loc_C20E00: LitVarStr var_1D0, ". (Ret.: "
  loc_C20E05: ConcatVar var_268
  loc_C20E09: FLdRfVar var_278
  loc_C20E0C: ConcatVar var_288
  loc_C20E10: LitVarStr var_1F0, " - "
  loc_C20E15: ConcatVar var_2B0
  loc_C20E19: FLdRfVar var_2CC
  loc_C20E1C: ConcatVar var_2DC
  loc_C20E20: LitVarStr var_210, ")"
  loc_C20E25: ConcatVar var_2EC
  loc_C20E29: CStrVarVal var_294
  loc_C20E2D: LitStr vbNullString
  loc_C20E30: LitStr "00000000"
  loc_C20E33: LitStr "0000"
  loc_C20E36: LitStr "fcc"
  loc_C20E39: FLdRfVar var_3B4
  loc_C20E3C: CR4Var
  loc_C20E3D: PopFPR8
  loc_C20E3E: FLdRfVar var_3A4
  loc_C20E41: CStrVarTmp
  loc_C20E42: FStStrNoPop var_228
  loc_C20E45: LitI2_Byte 0
  loc_C20E47: FLdRfVar var_394
  loc_C20E4A: CStrVarTmp
  loc_C20E4B: FStStrNoPop var_224
  loc_C20E4E: FLdRfVar var_384
  loc_C20E51: CStrVarTmp
  loc_C20E52: FStStrNoPop var_144
  loc_C20E55: FLdRfVar var_374
  loc_C20E58: CStrVarTmp
  loc_C20E59: FStStrNoPop var_13C
  loc_C20E5C: FLdRfVar var_B0
  loc_C20E5F: CStrVarTmp
  loc_C20E60: FStStrNoPop var_8C
  loc_C20E63: FLdRfVar var_2FC
  loc_C20E66: CI2Var
  loc_C20E67: FLdPr Me
  loc_C20E6A: MemLdRfVar from_stack_1.global_64
  loc_C20E6D: NewIfNullPr clsdebito
  loc_C20E70: from_stack_16v = clsdebito.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C20E75: FFreeStr var_8C = "": var_13C = "": var_144 = "": var_224 = "": var_228 = "": var_294 = ""
  loc_C20E86: FFreeAd var_334 = "": var_9C = "": var_124 = "": var_12C = "": var_130 = "": var_134 = "": var_308 = "": var_30C = "": var_314 = "": var_318 = "": var_320 = "": var_324 = "": var_32C = "": var_330 = "": var_338 = "": var_33C = "": var_340 = "": var_344 = "": var_348 = "": var_34C = "": var_350 = "": var_354 = "": var_358 = "": var_35C = "": var_360 = "": var_364 = "": var_128 = "": var_140 = "": var_310 = "": var_31C = ""
  loc_C20EC7: FFreeVar var_B0 = "": var_C0 = "": var_D0 = "": var_164 = "": var_220 = "": var_248 = "": var_268 = "": var_278 = "": var_288 = "": var_2B0 = "": var_2CC = "": var_2DC = "": var_2FC = "": var_374 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3B4 = ""
  loc_C20EF0: Branch loc_C21250
  loc_C20EF3: FLdRfVar var_2FC
  loc_C20EF6: FLdRfVar var_128
  loc_C20EF9: LitVarStr var_E0, "PeriInfo"
  loc_C20EFE: PopAdLdVar
  loc_C20EFF: FLdRfVar var_124
  loc_C20F02: FLdRfVar var_9C
  loc_C20F05: FLdPr Me
  loc_C20F08: MemLdRfVar from_stack_1.global_56
  loc_C20F0B: NewIfNullPr clsordenpago
  loc_C20F0E: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C20F13: FLdPr var_9C
  loc_C20F16:  = Me.Fields
  loc_C20F1B: FLdPr var_124
  loc_C20F1E: from_stack_2 = Me.Item(from_stack_1)
  loc_C20F23: FLdPr var_128
  loc_C20F26:  = Me.Value
  loc_C20F2B: FLdPr Me
  loc_C20F2E: VCallAd Control_ID_FechaMsk
  loc_C20F31: FStAdFunc var_12C
  loc_C20F34: FLdPr var_12C
  loc_C20F37: LateIdLdVar var_B0 DispID_15 0
  loc_C20F3E: PopAd
  loc_C20F40: FLdRfVar var_374
  loc_C20F43: FLdRfVar var_140
  loc_C20F46: LitVarStr var_F0, "ExpeImpu"
  loc_C20F4B: PopAdLdVar
  loc_C20F4C: FLdRfVar var_134
  loc_C20F4F: FLdRfVar var_130
  loc_C20F52: FLdPr Me
  loc_C20F55: MemLdRfVar from_stack_1.global_56
  loc_C20F58: NewIfNullPr clsordenpago
  loc_C20F5B: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C20F60: FLdPr var_130
  loc_C20F63:  = Me.Fields
  loc_C20F68: FLdPr var_134
  loc_C20F6B: from_stack_2 = Me.Item(from_stack_1)
  loc_C20F70: FLdPr var_140
  loc_C20F73:  = Me.Value
  loc_C20F78: FLdRfVar var_384
  loc_C20F7B: FLdRfVar var_310
  loc_C20F7E: LitVarStr var_100, "ExpeImpu"
  loc_C20F83: PopAdLdVar
  loc_C20F84: FLdRfVar var_30C
  loc_C20F87: FLdRfVar var_308
  loc_C20F8A: FLdPr Me
  loc_C20F8D: MemLdRfVar from_stack_1.global_56
  loc_C20F90: NewIfNullPr clsordenpago
  loc_C20F93: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C20F98: FLdPr var_308
  loc_C20F9B:  = Me.Fields
  loc_C20FA0: FLdPr var_30C
  loc_C20FA3: from_stack_2 = Me.Item(from_stack_1)
  loc_C20FA8: FLdPr var_310
  loc_C20FAB:  = Me.Value
  loc_C20FB0: FLdRfVar var_394
  loc_C20FB3: FLdRfVar var_31C
  loc_C20FB6: LitVarStr var_110, "CodiCuco"
  loc_C20FBB: PopAdLdVar
  loc_C20FBC: FLdRfVar var_318
  loc_C20FBF: FLdRfVar var_314
  loc_C20FC2: FLdPr Me
  loc_C20FC5: MemLdRfVar from_stack_1.global_64
  loc_C20FC8: NewIfNullPr clsdebito
  loc_C20FCB: from_stack_1v = clsdebito.RsFrmGet()
  loc_C20FD0: FLdPr var_314
  loc_C20FD3:  = Me.Fields
  loc_C20FD8: FLdPr var_318
  loc_C20FDB: from_stack_2 = Me.Item(from_stack_1)
  loc_C20FE0: FLdPr var_31C
  loc_C20FE3:  = Me.Value
  loc_C20FE8: FLdRfVar var_3A4
  loc_C20FEB: FLdRfVar var_328
  loc_C20FEE: LitVarStr var_120, "CucuPers"
  loc_C20FF3: PopAdLdVar
  loc_C20FF4: FLdRfVar var_324
  loc_C20FF7: FLdRfVar var_320
  loc_C20FFA: FLdPr Me
  loc_C20FFD: MemLdRfVar from_stack_1.global_64
  loc_C21000: NewIfNullPr clsdebito
  loc_C21003: from_stack_1v = clsdebito.RsFrmGet()
  loc_C21008: FLdPr var_320
  loc_C2100B:  = Me.Fields
  loc_C21010: FLdPr var_324
  loc_C21013: from_stack_2 = Me.Item(from_stack_1)
  loc_C21018: FLdPr var_328
  loc_C2101B:  = Me.Value
  loc_C21020: FLdRfVar var_3B4
  loc_C21023: FLdRfVar var_334
  loc_C21026: LitVarStr var_180, "ImpoLine"
  loc_C2102B: PopAdLdVar
  loc_C2102C: FLdRfVar var_330
  loc_C2102F: FLdRfVar var_32C
  loc_C21032: FLdPr Me
  loc_C21035: MemLdRfVar from_stack_1.global_64
  loc_C21038: NewIfNullPr clsdebito
  loc_C2103B: from_stack_1v = clsdebito.RsFrmGet()
  loc_C21040: FLdPr var_32C
  loc_C21043:  = Me.Fields
  loc_C21048: FLdPr var_330
  loc_C2104B: from_stack_2 = Me.Item(from_stack_1)
  loc_C21050: FLdPr var_334
  loc_C21053:  = Me.Value
  loc_C21058: FLdRfVar var_C0
  loc_C2105B: FLdRfVar var_340
  loc_C2105E: LitVarStr var_190, "NumeOrpa"
  loc_C21063: PopAdLdVar
  loc_C21064: FLdRfVar var_33C
  loc_C21067: FLdRfVar var_338
  loc_C2106A: FLdPr Me
  loc_C2106D: MemLdRfVar from_stack_1.global_56
  loc_C21070: NewIfNullPr clsordenpago
  loc_C21073: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C21078: FLdPr var_338
  loc_C2107B:  = Me.Fields
  loc_C21080: FLdPr var_33C
  loc_C21083: from_stack_2 = Me.Item(from_stack_1)
  loc_C21088: FLdPr var_340
  loc_C2108B:  = Me.Value
  loc_C21090: FLdRfVar var_220
  loc_C21093: FLdRfVar var_34C
  loc_C21096: LitVarStr var_1C0, "DetaOrpa"
  loc_C2109B: PopAdLdVar
  loc_C2109C: FLdRfVar var_348
  loc_C2109F: FLdRfVar var_344
  loc_C210A2: FLdPr Me
  loc_C210A5: MemLdRfVar from_stack_1.global_56
  loc_C210A8: NewIfNullPr clsordenpago
  loc_C210AB: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C210B0: FLdPr var_344
  loc_C210B3:  = Me.Fields
  loc_C210B8: FLdPr var_348
  loc_C210BB: from_stack_2 = Me.Item(from_stack_1)
  loc_C210C0: FLdPr var_34C
  loc_C210C3:  = Me.Value
  loc_C210C8: FLdRfVar var_278
  loc_C210CB: FLdRfVar var_358
  loc_C210CE: LitVarStr var_1E0, "CodiRete"
  loc_C210D3: PopAdLdVar
  loc_C210D4: FLdRfVar var_354
  loc_C210D7: FLdRfVar var_350
  loc_C210DA: FLdPr Me
  loc_C210DD: MemLdRfVar from_stack_1.global_64
  loc_C210E0: NewIfNullPr clsdebito
  loc_C210E3: from_stack_1v = clsdebito.RsFrmGet()
  loc_C210E8: FLdPr var_350
  loc_C210EB:  = Me.Fields
  loc_C210F0: FLdPr var_354
  loc_C210F3: from_stack_2 = Me.Item(from_stack_1)
  loc_C210F8: FLdPr var_358
  loc_C210FB:  = Me.Value
  loc_C21100: FLdRfVar var_2CC
  loc_C21103: FLdRfVar var_364
  loc_C21106: LitVarStr var_200, "DetaRete"
  loc_C2110B: PopAdLdVar
  loc_C2110C: FLdRfVar var_360
  loc_C2110F: FLdRfVar var_35C
  loc_C21112: FLdPr Me
  loc_C21115: MemLdRfVar from_stack_1.global_64
  loc_C21118: NewIfNullPr clsdebito
  loc_C2111B: from_stack_1v = clsdebito.RsFrmGet()
  loc_C21120: FLdPr var_35C
  loc_C21123:  = Me.Fields
  loc_C21128: FLdPr var_360
  loc_C2112B: from_stack_2 = Me.Item(from_stack_1)
  loc_C21130: FLdPr var_364
  loc_C21133:  = Me.Value
  loc_C21138: FLdRfVar var_136
  loc_C2113B: LitI2_Byte 0
  loc_C2113D: LitI2_Byte 0
  loc_C2113F: CStrUI1
  loc_C21141: FStStrNoPop var_298
  loc_C21144: LitVarStr var_1A0, "O.P.: "
  loc_C21149: FLdRfVar var_C0
  loc_C2114C: ConcatVar var_D0
  loc_C21150: LitVarStr var_1B0, " - "
  loc_C21155: ConcatVar var_164
  loc_C21159: FLdRfVar var_220
  loc_C2115C: ConcatVar var_248
  loc_C21160: LitVarStr var_1D0, ". (Ret.: "
  loc_C21165: ConcatVar var_268
  loc_C21169: FLdRfVar var_278
  loc_C2116C: ConcatVar var_288
  loc_C21170: LitVarStr var_1F0, " - "
  loc_C21175: ConcatVar var_2B0
  loc_C21179: FLdRfVar var_2CC
  loc_C2117C: ConcatVar var_2DC
  loc_C21180: LitVarStr var_210, ")"
  loc_C21185: ConcatVar var_2EC
  loc_C21189: CStrVarVal var_294
  loc_C2118D: LitStr vbNullString
  loc_C21190: LitStr vbNullString
  loc_C21193: LitStr vbNullString
  loc_C21196: LitStr vbNullString
  loc_C21199: FLdRfVar var_3B4
  loc_C2119C: CR4Var
  loc_C2119D: PopFPR8
  loc_C2119E: FLdRfVar var_3A4
  loc_C211A1: CStrVarTmp
  loc_C211A2: FStStrNoPop var_228
  loc_C211A5: LitI2_Byte 0
  loc_C211A7: FLdRfVar var_394
  loc_C211AA: CStrVarTmp
  loc_C211AB: FStStrNoPop var_224
  loc_C211AE: FLdRfVar var_384
  loc_C211B1: CStrVarTmp
  loc_C211B2: FStStrNoPop var_144
  loc_C211B5: FLdRfVar var_374
  loc_C211B8: CStrVarTmp
  loc_C211B9: FStStrNoPop var_13C
  loc_C211BC: FLdRfVar var_B0
  loc_C211BF: CStrVarTmp
  loc_C211C0: FStStrNoPop var_8C
  loc_C211C3: FLdRfVar var_2FC
  loc_C211C6: CI2Var
  loc_C211C7: FLdPr Me
  loc_C211CA: MemLdRfVar from_stack_1.global_64
  loc_C211CD: NewIfNullPr clsdebito
  loc_C211D0: from_stack_16v = clsdebito.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C211D5: FFreeStr var_8C = "": var_13C = "": var_144 = "": var_224 = "": var_228 = "": var_294 = ""
  loc_C211E6: FFreeAd var_334 = "": var_9C = "": var_124 = "": var_12C = "": var_130 = "": var_134 = "": var_308 = "": var_30C = "": var_314 = "": var_318 = "": var_320 = "": var_324 = "": var_32C = "": var_330 = "": var_338 = "": var_33C = "": var_340 = "": var_344 = "": var_348 = "": var_34C = "": var_350 = "": var_354 = "": var_358 = "": var_35C = "": var_360 = "": var_364 = "": var_128 = "": var_140 = "": var_310 = "": var_31C = ""
  loc_C21227: FFreeVar var_B0 = "": var_C0 = "": var_D0 = "": var_164 = "": var_220 = "": var_248 = "": var_268 = "": var_278 = "": var_288 = "": var_2B0 = "": var_2CC = "": var_2DC = "": var_2FC = "": var_374 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3B4 = ""
  loc_C21250: FLdPr Me
  loc_C21253: MemLdRfVar from_stack_1.global_64
  loc_C21256: NewIfNullPr clsdebito
  loc_C21259: Call clsdebito.MoveSiguiente()
  loc_C2125E: Branch loc_C20B70
  loc_C21261: LitI2_Byte 0
  loc_C21263: BranchF loc_C214A2
  loc_C21266: LitI4 0
  loc_C2126B: FLdPr Me
  loc_C2126E: MemLdRfVar from_stack_1.global_76
  loc_C21271: FLdRfVar var_94
  loc_C21274: FLdPr Me
  loc_C21277: MemLdRfVar from_stack_1.global_96
  loc_C2127A: NewIfNullPr IDictionary
  loc_C2127D:  = IDictionary.Count
  loc_C21282: ILdRf var_94
  loc_C21285: LitI4 1
  loc_C2128A: SubI4
  loc_C2128B: ForI4 var_3BC
  loc_C21291: FLdPr Me
  loc_C21294: MemLdRfVar from_stack_1.global_76
  loc_C21297: CDargRef
  loc_C2129B: FLdRfVar var_B0
  loc_C2129E: FLdPr Me
  loc_C212A1: MemLdRfVar from_stack_1.global_96
  loc_C212A4: NewIfNullPr IDictionary
  loc_C212A7: IDictionary.Items
  loc_C212AC: FLdRfVar var_B0
  loc_C212AF: VarIndexLdVar
  loc_C212B5: LitVarStr var_F0, vbNullString
  loc_C212BA: HardType
  loc_C212BB: NeVarBool
  loc_C212BD: FFreeVar var_B0 = ""
  loc_C212C4: BranchF loc_C21497
  loc_C212C7: LitI4 1
  loc_C212CC: FLdPr Me
  loc_C212CF: MemLdRfVar from_stack_1.global_76
  loc_C212D2: CDargRef
  loc_C212D6: FLdRfVar var_B0
  loc_C212D9: FLdPr Me
  loc_C212DC: MemLdRfVar from_stack_1.global_96
  loc_C212DF: NewIfNullPr IDictionary
  loc_C212E2: IDictionary.Items
  loc_C212E7: FLdRfVar var_B0
  loc_C212EA: VarIndexLdVar
  loc_C212F0: LitVarStr var_F0, ";"
  loc_C212F5: LitI4 0
  loc_C212FA: FnInStr4Var
  loc_C212FE: CI2Var
  loc_C212FF: FLdPr Me
  loc_C21302: MemStI2 global_80
  loc_C21305: FFreeVar var_B0 = "": var_C0 = ""
  loc_C2130E: LitStr "Municipalidad de Guaymallén"
  loc_C21311: LitStr "Municipalidad de Lavalle"
  loc_C21314: NeStr
  loc_C21316: BranchF loc_C21497
  loc_C21319: FLdPr Me
  loc_C2131C: MemLdRfVar from_stack_1.global_76
  loc_C2131F: CDargRef
  loc_C21323: FLdRfVar var_B0
  loc_C21326: FLdPr Me
  loc_C21329: MemLdRfVar from_stack_1.global_96
  loc_C2132C: NewIfNullPr IDictionary
  loc_C2132F: IDictionary.Items
  loc_C21334: FLdRfVar var_B0
  loc_C21337: VarIndexLdVar
  loc_C2133D: PopAd
  loc_C2133F: LitVar_Missing var_D0
  loc_C21342: FLdPr Me
  loc_C21345: MemLdI2 global_80
  loc_C21348: LitI2_Byte 1
  loc_C2134A: AddI2
  loc_C2134B: CI4UI1
  loc_C2134C: FLdRfVar var_C0
  loc_C2134F: CStrVarVal var_8C
  loc_C21353: ImpAdCallI2 Mid$(, , )
  loc_C21358: FStStr var_298
  loc_C2135B: FLdPr Me
  loc_C2135E: MemLdRfVar from_stack_1.global_76
  loc_C21361: CDargRef
  loc_C21365: FLdRfVar var_164
  loc_C21368: FLdPr Me
  loc_C2136B: MemLdRfVar from_stack_1.global_96
  loc_C2136E: NewIfNullPr IDictionary
  loc_C21371: IDictionary.Items
  loc_C21376: FLdRfVar var_164
  loc_C21379: VarIndexLdVar
  loc_C2137F: PopAd
  loc_C21381: FLdPr Me
  loc_C21384: MemLdI2 global_80
  loc_C21387: LitI2_Byte 1
  loc_C21389: SubI2
  loc_C2138A: CVarI2 var_248
  loc_C2138D: LitI4 1
  loc_C21392: FLdRfVar var_220
  loc_C21395: CStrVarVal var_13C
  loc_C21399: ImpAdCallI2 Mid$(, , )
  loc_C2139E: FStStr var_29C
  loc_C213A1: FLdRfVar var_288
  loc_C213A4: FLdRfVar var_128
  loc_C213A7: LitVarStr var_120, "NumeOrpa"
  loc_C213AC: PopAdLdVar
  loc_C213AD: FLdRfVar var_124
  loc_C213B0: FLdRfVar var_9C
  loc_C213B3: FLdPr Me
  loc_C213B6: MemLdRfVar from_stack_1.global_56
  loc_C213B9: NewIfNullPr clsordenpago
  loc_C213BC: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C213C1: FLdPr var_9C
  loc_C213C4:  = Me.Fields
  loc_C213C9: FLdPr var_124
  loc_C213CC: from_stack_2 = Me.Item(from_stack_1)
  loc_C213D1: FLdPr var_128
  loc_C213D4:  = Me.Value
  loc_C213D9: FLdPr Me
  loc_C213DC: MemLdRfVar from_stack_1.global_76
  loc_C213DF: CDargRef
  loc_C213E3: FLdRfVar var_268
  loc_C213E6: FLdPr Me
  loc_C213E9: MemLdRfVar from_stack_1.global_96
  loc_C213EC: NewIfNullPr IDictionary
  loc_C213EF: IDictionary.Keys
  loc_C213F4: FLdRfVar var_268
  loc_C213F7: VarIndexLdVar
  loc_C213FD: PopAd
  loc_C213FF: FLdPr Me
  loc_C21402: VCallAd Control_ID_FechaMsk
  loc_C21405: FStAdFunc var_12C
  loc_C21408: FLdPr var_12C
  loc_C2140B: LateIdLdVar var_278 DispID_15 0
  loc_C21412: CStrVarTmp
  loc_C21413: FStStrNoPop var_294
  loc_C21416: FLdRfVar var_2B0
  loc_C21419: CStrVarVal var_228
  loc_C2141D: FLdRfVar var_288
  loc_C21420: CI4Var
  loc_C21422: ImpAdLdI2 MemVar_C3D064
  loc_C21425: FLdZeroAd var_29C
  loc_C21428: FStStrNoPop var_224
  loc_C2142B: FLdZeroAd var_298
  loc_C2142E: FStStrNoPop var_144
  loc_C21431: ImpAdCallFPR4 Proc_261_70_A02748(, , , , , )
  loc_C21436: FFreeStr var_8C = "": var_13C = "": var_144 = "": var_224 = "": var_228 = "": var_294 = "": var_298 = ""
  loc_C21449: FFreeAd var_9C = "": var_124 = "": var_12C = ""
  loc_C21454: FFreeVar var_B0 = "": var_C0 = "": var_D0 = "": var_164 = "": var_220 = "": var_248 = "": var_268 = "": var_278 = "": var_288 = ""
  loc_C2146B: FLdRfVar var_136
  loc_C2146E: ImpAdLdRf MemVar_C3D828
  loc_C21471: NewIfNullPr dlgEnvioEmailPagado
  loc_C21474:  = dlgEnvioEmailPagado.Enabled
  loc_C21479: FLdI2 var_136
  loc_C2147C: BranchF loc_C21497
  loc_C2147F: ImpAdLdRf MemVar_C3D828
  loc_C21482: NewIfNullAd
  loc_C21485: FStAdNoPop
  loc_C21489: ImpAdLdRf MemVar_C44F9C
  loc_C2148C: NewIfNullPr Me
  loc_C2148F: Me.Global.Unload from_stack_1
  loc_C21494: FFree1Ad var_9C
  loc_C21497: FLdPr Me
  loc_C2149A: MemLdRfVar from_stack_1.global_76
  loc_C2149D: NextI4 var_3BC, loc_C21291
  loc_C214A2: LitVar_FALSE
  loc_C214A6: PopAdLdVar
  loc_C214A7: FLdPr Me
  loc_C214AA: VCallAd Control_ID_ProgressBar
  loc_C214AD: FStAdFunc var_9C
  loc_C214B0: FLdPr var_9C
  loc_C214B3: LateIdSt
  loc_C214B8: FFree1Ad var_9C
  loc_C214BB: LitI2_Byte &HFF
  loc_C214BD: PopTmpLdAd2 var_138
  loc_C214C0: LitI2_Byte &HFF
  loc_C214C2: PopTmpLdAd2 var_136
  loc_C214C5: LitVarStr var_F0, "¿Imprime el/los Recibo/s de cheque/s de la Orden de Pago número: "
  loc_C214CA: FLdRfVar var_B0
  loc_C214CD: FLdRfVar var_128
  loc_C214D0: LitVarStr var_E0, "NumeOrpa"
  loc_C214D5: PopAdLdVar
  loc_C214D6: FLdRfVar var_124
  loc_C214D9: FLdRfVar var_9C
  loc_C214DC: FLdPr Me
  loc_C214DF: MemLdRfVar from_stack_1.global_56
  loc_C214E2: NewIfNullPr clsordenpago
  loc_C214E5: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C214EA: FLdPr var_9C
  loc_C214ED:  = Me.Fields
  loc_C214F2: FLdPr var_124
  loc_C214F5: from_stack_2 = Me.Item(from_stack_1)
  loc_C214FA: FLdPr var_128
  loc_C214FD:  = Me.Value
  loc_C21502: FLdRfVar var_B0
  loc_C21505: ConcatVar var_C0
  loc_C21509: LitVarStr var_100, " ?"
  loc_C2150E: ConcatVar var_D0
  loc_C21512: CStrVarVal var_8C
  loc_C21516: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C2151B: CI4UI1
  loc_C2151C: LitI4 6
  loc_C21521: EqI4
  loc_C21522: FFree1Str var_8C
  loc_C21525: FFreeAd var_9C = "": var_124 = ""
  loc_C2152E: FFreeVar var_B0 = "": var_C0 = ""
  loc_C21537: BranchF loc_C216B1
  loc_C2153A: ImpAdLdRf MemVar_C3DD18
  loc_C2153D: NewIfNullAd
  loc_C21540: CastAd
  loc_C21543: FStAdFuncNoPop
  loc_C21546: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_C2154B: FFree1Ad var_9C
  loc_C2154E: FLdRfVar var_B0
  loc_C21551: FLdRfVar var_128
  loc_C21554: LitVarStr var_E0, "NumeOrpa"
  loc_C21559: PopAdLdVar
  loc_C2155A: FLdRfVar var_124
  loc_C2155D: FLdRfVar var_9C
  loc_C21560: FLdPr Me
  loc_C21563: MemLdRfVar from_stack_1.global_56
  loc_C21566: NewIfNullPr clsordenpago
  loc_C21569: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C2156E: FLdPr var_9C
  loc_C21571:  = Me.Fields
  loc_C21576: FLdPr var_124
  loc_C21579: from_stack_2 = Me.Item(from_stack_1)
  loc_C2157E: FLdPr var_128
  loc_C21581:  = Me.Value
  loc_C21586: FLdRfVar var_B0
  loc_C21589: CStrVarTmp
  loc_C2158A: CVarStr var_C0
  loc_C2158D: PopAdLdVar
  loc_C2158E: ImpAdLdRf MemVar_C3DD18
  loc_C21591: NewIfNullPr rptRecibosdecheques
  loc_C21594: VCallAd Control_ID_NumeOrpaMsk
  loc_C21597: FStAdFunc var_12C
  loc_C2159A: FLdPr var_12C
  loc_C2159D: LateIdSt
  loc_C215A2: FFreeAd var_9C = "": var_124 = "": var_128 = ""
  loc_C215AD: FFreeVar var_B0 = ""
  loc_C215B4: FLdRfVar var_94
  loc_C215B7: FLdPr Me
  loc_C215BA: MemLdRfVar from_stack_1.global_96
  loc_C215BD: NewIfNullPr IDictionary
  loc_C215C0:  = IDictionary.Count
  loc_C215C5: ILdRf var_94
  loc_C215C8: LitI4 1
  loc_C215CD: EqI4
  loc_C215CE: BranchF loc_C21699
  loc_C215D1: FLdPr Me
  loc_C215D4: VCallAd Control_ID_FlexCheque
  loc_C215D7: FStAdFunc var_9C
  loc_C215DA: FLdPr var_9C
  loc_C215DD: LateIdLdVar var_B0 DispID_10 0
  loc_C215E4: CI4Var
  loc_C215E6: CVarI4
  loc_C215EA: PopAdLdVar
  loc_C215EB: LitVarI4
  loc_C215F3: PopAdLdVar
  loc_C215F4: FLdPr Me
  loc_C215F7: VCallAd Control_ID_FlexCheque
  loc_C215FA: FStAdFunc var_124
  loc_C215FD: FLdPr var_124
  loc_C21600: LateIdCallLdVar
  loc_C2160A: CStrVarTmp
  loc_C2160B: FStStrNoPop var_8C
  loc_C2160E: ImpAdLdRf MemVar_C3DD18
  loc_C21611: NewIfNullPr rptRecibosdecheques
  loc_C21614: VCallAd Control_ID_CucuPersTxt
  loc_C21617: FStAdFunc var_128
  loc_C2161A: FLdPr var_128
  loc_C2161D: rptRecibosdecheques.TextBox.Text = from_stack_1
  loc_C21622: FFree1Str var_8C
  loc_C21625: FFreeAd var_9C = "": var_124 = ""
  loc_C2162E: FFreeVar var_B0 = ""
  loc_C21635: FLdPr Me
  loc_C21638: VCallAd Control_ID_FlexCheque
  loc_C2163B: FStAdFunc var_9C
  loc_C2163E: FLdPr var_9C
  loc_C21641: LateIdLdVar var_B0 DispID_10 0
  loc_C21648: CI4Var
  loc_C2164A: CVarI4
  loc_C2164E: PopAdLdVar
  loc_C2164F: LitVarI4
  loc_C21657: PopAdLdVar
  loc_C21658: FLdPr Me
  loc_C2165B: VCallAd Control_ID_FlexCheque
  loc_C2165E: FStAdFunc var_124
  loc_C21661: FLdPr var_124
  loc_C21664: LateIdCallLdVar
  loc_C2166E: CStrVarTmp
  loc_C2166F: FStStrNoPop var_8C
  loc_C21672: ImpAdLdRf MemVar_C3DD18
  loc_C21675: NewIfNullPr rptRecibosdecheques
  loc_C21678: VCallAd Control_ID_DetaProvLbl
  loc_C2167B: FStAdFunc var_128
  loc_C2167E: FLdPr var_128
  loc_C21681: rptRecibosdecheques.Label.Caption = from_stack_1
  loc_C21686: FFree1Str var_8C
  loc_C21689: FFreeAd var_9C = "": var_124 = ""
  loc_C21692: FFreeVar var_B0 = ""
  loc_C21699: LitVar_Missing var_F0
  loc_C2169C: PopAdLdVar
  loc_C2169D: LitVarI4
  loc_C216A5: PopAdLdVar
  loc_C216A6: ImpAdLdRf MemVar_C3DD18
  loc_C216A9: NewIfNullPr rptRecibosdecheques
  loc_C216AC: rptRecibosdecheques.Show from_stack_1, from_stack_2
  loc_C216B1: FLdRfVar var_D0
  loc_C216B4: FLdRfVar var_128
  loc_C216B7: LitVarStr var_E0, "PeriInfo"
  loc_C216BC: PopAdLdVar
  loc_C216BD: FLdRfVar var_124
  loc_C216C0: FLdRfVar var_9C
  loc_C216C3: FLdPr Me
  loc_C216C6: MemLdRfVar from_stack_1.global_56
  loc_C216C9: NewIfNullPr clsordenpago
  loc_C216CC: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C216D1: FLdPr var_9C
  loc_C216D4:  = Me.Fields
  loc_C216D9: FLdPr var_124
  loc_C216DC: from_stack_2 = Me.Item(from_stack_1)
  loc_C216E1: FLdPr var_128
  loc_C216E4:  = Me.Value
  loc_C216E9: FLdRfVar var_164
  loc_C216EC: FLdRfVar var_134
  loc_C216EF: LitVarStr var_F0, "NumeOrpa"
  loc_C216F4: PopAdLdVar
  loc_C216F5: FLdRfVar var_130
  loc_C216F8: FLdRfVar var_12C
  loc_C216FB: FLdPr Me
  loc_C216FE: MemLdRfVar from_stack_1.global_56
  loc_C21701: NewIfNullPr clsordenpago
  loc_C21704: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C21709: FLdPr var_12C
  loc_C2170C:  = Me.Fields
  loc_C21711: FLdPr var_130
  loc_C21714: from_stack_2 = Me.Item(from_stack_1)
  loc_C21719: FLdPr var_134
  loc_C2171C:  = Me.Value
  loc_C21721: FLdPr Me
  loc_C21724: VCallAd Control_ID_FlexCheque
  loc_C21727: FStAdFunc var_140
  loc_C2172A: FLdPr var_140
  loc_C2172D: LateIdLdVar var_B0 DispID_10 0
  loc_C21734: CI4Var
  loc_C21736: CVarI4
  loc_C2173A: PopAdLdVar
  loc_C2173B: LitVarI4
  loc_C21743: PopAdLdVar
  loc_C21744: FLdPr Me
  loc_C21747: VCallAd Control_ID_FlexCheque
  loc_C2174A: FStAdFunc var_308
  loc_C2174D: FLdPr var_308
  loc_C21750: LateIdCallLdVar
  loc_C2175A: PopAd
  loc_C2175C: FLdRfVar var_136
  loc_C2175F: FLdRfVar var_C0
  loc_C21762: CStrVarTmp
  loc_C21763: PopTmpLdAdStr
  loc_C21767: FLdRfVar var_164
  loc_C2176A: CI4Var
  loc_C2176C: FLdRfVar var_D0
  loc_C2176F: CI2Var
  loc_C21770: FLdPr Me
  loc_C21773: MemLdRfVar from_stack_1.global_56
  loc_C21776: NewIfNullPr clsordenpago
  loc_C21779: from_stack_4v = clsordenpago.TieneRetenciones(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C2177E: FLdI2 var_136
  loc_C21781: FFree1Str var_8C
  loc_C21784: FFreeAd var_9C = "": var_124 = "": var_12C = "": var_130 = "": var_140 = "": var_308 = "": var_128 = ""
  loc_C21797: FFreeVar var_B0 = "": var_C0 = "": var_D0 = ""
  loc_C217A2: BranchF loc_C218B5
  loc_C217A5: LitI2_Byte &HFF
  loc_C217A7: PopTmpLdAd2 var_138
  loc_C217AA: LitI2_Byte 0
  loc_C217AC: PopTmpLdAd2 var_136
  loc_C217AF: LitStr "¿Imprime el/los Certificado/s de Retención/es?"
  loc_C217B2: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C217B7: CI4UI1
  loc_C217B8: LitI4 6
  loc_C217BD: EqI4
  loc_C217BE: BranchF loc_C218B5
  loc_C217C1: ImpAdLdRf MemVar_C3D85C
  loc_C217C4: NewIfNullAd
  loc_C217C7: CastAd
  loc_C217CA: FStAdFuncNoPop
  loc_C217CD: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_C217D2: FFree1Ad var_9C
  loc_C217D5: FLdRfVar var_B0
  loc_C217D8: FLdRfVar var_128
  loc_C217DB: LitVarStr var_E0, "PeriInfo"
  loc_C217E0: PopAdLdVar
  loc_C217E1: FLdRfVar var_124
  loc_C217E4: FLdRfVar var_9C
  loc_C217E7: FLdPr Me
  loc_C217EA: MemLdRfVar from_stack_1.global_56
  loc_C217ED: NewIfNullPr clsordenpago
  loc_C217F0: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C217F5: FLdPr var_9C
  loc_C217F8:  = Me.Fields
  loc_C217FD: FLdPr var_124
  loc_C21800: from_stack_2 = Me.Item(from_stack_1)
  loc_C21805: FLdPr var_128
  loc_C21808:  = Me.Value
  loc_C2180D: FLdRfVar var_B0
  loc_C21810: CStrVarTmp
  loc_C21811: FStStrNoPop var_8C
  loc_C21814: ImpAdLdRf MemVar_C3D85C
  loc_C21817: NewIfNullPr rptCertificadoderetencion
  loc_C2181A: VCallAd Control_ID_cboPeriodo
  loc_C2181D: FStAdFunc var_12C
  loc_C21820: FLdPr var_12C
  loc_C21823: rptCertificadoderetencion.ComboBox.Text = from_stack_1
  loc_C21828: FFree1Str var_8C
  loc_C2182B: FFreeAd var_9C = "": var_124 = "": var_128 = ""
  loc_C21836: FFree1Var var_B0 = ""
  loc_C21839: FLdRfVar var_B0
  loc_C2183C: FLdRfVar var_128
  loc_C2183F: LitVarStr var_E0, "NumeOrpa"
  loc_C21844: PopAdLdVar
  loc_C21845: FLdRfVar var_124
  loc_C21848: FLdRfVar var_9C
  loc_C2184B: FLdPr Me
  loc_C2184E: MemLdRfVar from_stack_1.global_56
  loc_C21851: NewIfNullPr clsordenpago
  loc_C21854: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C21859: FLdPr var_9C
  loc_C2185C:  = Me.Fields
  loc_C21861: FLdPr var_124
  loc_C21864: from_stack_2 = Me.Item(from_stack_1)
  loc_C21869: FLdPr var_128
  loc_C2186C:  = Me.Value
  loc_C21871: FLdRfVar var_B0
  loc_C21874: CStrVarTmp
  loc_C21875: FStStrNoPop var_8C
  loc_C21878: ImpAdLdRf MemVar_C3D85C
  loc_C2187B: NewIfNullPr rptCertificadoderetencion
  loc_C2187E: VCallAd Control_ID_NumeOrpaTxt
  loc_C21881: FStAdFunc var_12C
  loc_C21884: FLdPr var_12C
  loc_C21887: rptCertificadoderetencion.TextBox.Text = from_stack_1
  loc_C2188C: FFree1Str var_8C
  loc_C2188F: FFreeAd var_9C = "": var_124 = "": var_128 = ""
  loc_C2189A: FFree1Var var_B0 = ""
  loc_C2189D: LitVar_Missing var_F0
  loc_C218A0: PopAdLdVar
  loc_C218A1: LitVarI4
  loc_C218A9: PopAdLdVar
  loc_C218AA: ImpAdLdRf MemVar_C3D85C
  loc_C218AD: NewIfNullPr rptCertificadoderetencion
  loc_C218B0: rptCertificadoderetencion.Show from_stack_1, from_stack_2
  loc_C218B5: Branch loc_C21E24
  loc_C218B8: FLdUI1
  loc_C218BC: LitI2_Byte 3
  loc_C218BE: EqI2
  loc_C218BF: BranchF loc_C21E1A
  loc_C218C2: FLdRfVar var_B0
  loc_C218C5: FLdRfVar var_128
  loc_C218C8: LitVarStr var_E0, "NumeOrpa"
  loc_C218CD: PopAdLdVar
  loc_C218CE: FLdRfVar var_124
  loc_C218D1: FLdRfVar var_9C
  loc_C218D4: FLdPr Me
  loc_C218D7: MemLdRfVar from_stack_1.global_56
  loc_C218DA: NewIfNullPr clsordenpago
  loc_C218DD: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C218E2: FLdPr var_9C
  loc_C218E5:  = Me.Fields
  loc_C218EA: FLdPr var_124
  loc_C218ED: from_stack_2 = Me.Item(from_stack_1)
  loc_C218F2: FLdPr var_128
  loc_C218F5:  = Me.Value
  loc_C218FA: FLdRfVar var_B0
  loc_C218FD: CI4Var
  loc_C218FF: FStR4 var_150
  loc_C21902: FFreeAd var_9C = "": var_124 = ""
  loc_C2190B: FFree1Var var_B0 = ""
  loc_C2190E: FLdPr Me
  loc_C21911: MemLdI2 global_88
  loc_C21914: BranchF loc_C21C31
  loc_C21917: LitI2_Byte 0
  loc_C21919: FStI2 var_146
  loc_C2191C: LitI4 1
  loc_C21921: FLdPr Me
  loc_C21924: MemLdRfVar from_stack_1.global_76
  loc_C21927: FLdPr Me
  loc_C2192A: VCallAd Control_ID_FlexCheque
  loc_C2192D: FStAdFunc var_9C
  loc_C21930: FLdPr var_9C
  loc_C21933: LateIdLdVar var_B0 DispID_4 0
  loc_C2193A: CI4Var
  loc_C2193C: LitI4 1
  loc_C21941: SubI4
  loc_C21942: FFree1Ad var_9C
  loc_C21945: FFree1Var var_B0 = ""
  loc_C21948: ForI4 var_3C4
  loc_C2194E: FLdPr Me
  loc_C21951: MemLdRfVar from_stack_1.global_76
  loc_C21954: CDargRef
  loc_C21958: LitVarI4
  loc_C21960: PopAdLdVar
  loc_C21961: FLdPr Me
  loc_C21964: VCallAd Control_ID_FlexCheque
  loc_C21967: FStAdFunc var_9C
  loc_C2196A: FLdPr var_9C
  loc_C2196D: LateIdCallLdVar
  loc_C21977: CStrVarTmp
  loc_C21978: FStStrNoPop var_8C
  loc_C2197B: LitStr "Si"
  loc_C2197E: EqStr
  loc_C21980: FFree1Str var_8C
  loc_C21983: FFree1Ad var_9C
  loc_C21986: FFree1Var var_B0 = ""
  loc_C21989: BranchF loc_C21994
  loc_C2198C: LitI2_Byte &HFF
  loc_C2198E: FStI2 var_146
  loc_C21991: Branch loc_C2199F
  loc_C21994: FLdPr Me
  loc_C21997: MemLdRfVar from_stack_1.global_76
  loc_C2199A: NextI4 var_3C4, loc_C2194E
  loc_C2199F: FLdI2 var_146
  loc_C219A2: LitI2_Byte 0
  loc_C219A4: EqI2
  loc_C219A5: BranchF loc_C219B6
  loc_C219A8: LitI4 0
  loc_C219AD: LitStr "Debe Seleccionar al menos un Cheque. Reintente..."
  loc_C219B0: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C219B5: ExitProcHresult
  loc_C219B6: LitI2_Byte &HFF
  loc_C219B8: PopTmpLdAd2 var_138
  loc_C219BB: LitI2_Byte &HFF
  loc_C219BD: PopTmpLdAd2 var_136
  loc_C219C0: LitStr "¿Confirma la ANULACION de los cheques seleccionados?"
  loc_C219C3: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C219C8: CI4UI1
  loc_C219C9: LitI4 6
  loc_C219CE: EqI4
  loc_C219CF: BranchF loc_C21C2E
  loc_C219D2: LitVar_TRUE var_E0
  loc_C219D5: PopAdLdVar
  loc_C219D6: FLdPr Me
  loc_C219D9: VCallAd Control_ID_ProgressBar
  loc_C219DC: FStAdFunc var_9C
  loc_C219DF: FLdPr var_9C
  loc_C219E2: LateIdSt
  loc_C219E7: FFree1Ad var_9C
  loc_C219EA: LitI4 1
  loc_C219EF: FLdPr Me
  loc_C219F2: MemLdRfVar from_stack_1.global_76
  loc_C219F5: FLdPr Me
  loc_C219F8: VCallAd Control_ID_FlexCheque
  loc_C219FB: FStAdFunc var_9C
  loc_C219FE: FLdPr var_9C
  loc_C21A01: LateIdLdVar var_B0 DispID_4 0
  loc_C21A08: CI4Var
  loc_C21A0A: LitI4 1
  loc_C21A0F: SubI4
  loc_C21A10: FFree1Ad var_9C
  loc_C21A13: FFree1Var var_B0 = ""
  loc_C21A16: ForI4 var_3CC
  loc_C21A1C: FLdPr Me
  loc_C21A1F: MemLdRfVar from_stack_1.global_76
  loc_C21A22: CDargRef
  loc_C21A26: LitVarI4
  loc_C21A2E: PopAdLdVar
  loc_C21A2F: FLdPr Me
  loc_C21A32: VCallAd Control_ID_FlexCheque
  loc_C21A35: FStAdFunc var_9C
  loc_C21A38: FLdPr var_9C
  loc_C21A3B: LateIdCallLdVar
  loc_C21A45: CStrVarTmp
  loc_C21A46: FStStrNoPop var_8C
  loc_C21A49: LitStr "Si"
  loc_C21A4C: EqStr
  loc_C21A4E: FFree1Str var_8C
  loc_C21A51: FFree1Ad var_9C
  loc_C21A54: FFree1Var var_B0 = ""
  loc_C21A57: BranchF loc_C21BBF
  loc_C21A5A: FLdRfVar var_D0
  loc_C21A5D: FLdRfVar var_128
  loc_C21A60: LitVarStr var_E0, "PeriInfo"
  loc_C21A65: PopAdLdVar
  loc_C21A66: FLdRfVar var_124
  loc_C21A69: FLdRfVar var_9C
  loc_C21A6C: FLdPr Me
  loc_C21A6F: MemLdRfVar from_stack_1.global_56
  loc_C21A72: NewIfNullPr clsordenpago
  loc_C21A75: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C21A7A: FLdPr var_9C
  loc_C21A7D:  = Me.Fields
  loc_C21A82: FLdPr var_124
  loc_C21A85: from_stack_2 = Me.Item(from_stack_1)
  loc_C21A8A: FLdPr var_128
  loc_C21A8D:  = Me.Value
  loc_C21A92: FLdRfVar var_164
  loc_C21A95: FLdRfVar var_134
  loc_C21A98: LitVarStr var_F0, "NumeOrpa"
  loc_C21A9D: PopAdLdVar
  loc_C21A9E: FLdRfVar var_130
  loc_C21AA1: FLdRfVar var_12C
  loc_C21AA4: FLdPr Me
  loc_C21AA7: MemLdRfVar from_stack_1.global_56
  loc_C21AAA: NewIfNullPr clsordenpago
  loc_C21AAD: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C21AB2: FLdPr var_12C
  loc_C21AB5:  = Me.Fields
  loc_C21ABA: FLdPr var_130
  loc_C21ABD: from_stack_2 = Me.Item(from_stack_1)
  loc_C21AC2: FLdPr var_134
  loc_C21AC5:  = Me.Value
  loc_C21ACA: FLdRfVar var_220
  loc_C21ACD: FLdRfVar var_30C
  loc_C21AD0: LitVarStr var_100, "TipoOrpa"
  loc_C21AD5: PopAdLdVar
  loc_C21AD6: FLdRfVar var_308
  loc_C21AD9: FLdRfVar var_140
  loc_C21ADC: FLdPr Me
  loc_C21ADF: MemLdRfVar from_stack_1.global_56
  loc_C21AE2: NewIfNullPr clsordenpago
  loc_C21AE5: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C21AEA: FLdPr var_140
  loc_C21AED:  = Me.Fields
  loc_C21AF2: FLdPr var_308
  loc_C21AF5: from_stack_2 = Me.Item(from_stack_1)
  loc_C21AFA: FLdPr var_30C
  loc_C21AFD:  = Me.Value
  loc_C21B02: FLdPr Me
  loc_C21B05: VCallAd Control_ID_FechaMsk
  loc_C21B08: FStAdFunc var_310
  loc_C21B0B: FLdPr var_310
  loc_C21B0E: LateIdLdVar var_B0 DispID_15 0
  loc_C21B15: PopAd
  loc_C21B17: FLdPr Me
  loc_C21B1A: MemLdRfVar from_stack_1.global_76
  loc_C21B1D: CDargRef
  loc_C21B21: LitVarI4
  loc_C21B29: PopAdLdVar
  loc_C21B2A: FLdPr Me
  loc_C21B2D: VCallAd Control_ID_FlexCheque
  loc_C21B30: FStAdFunc var_314
  loc_C21B33: FLdPr var_314
  loc_C21B36: LateIdCallLdVar
  loc_C21B40: PopAd
  loc_C21B42: FLdRfVar var_224
  loc_C21B45: LitStr vbNullString
  loc_C21B48: FLdRfVar var_C0
  loc_C21B4B: CStrVarTmp
  loc_C21B4C: FStStrNoPop var_144
  loc_C21B4F: FLdRfVar var_B0
  loc_C21B52: CStrVarTmp
  loc_C21B53: FStStrNoPop var_13C
  loc_C21B56: FLdRfVar var_220
  loc_C21B59: CStrVarTmp
  loc_C21B5A: FStStrNoPop var_8C
  loc_C21B5D: FLdRfVar var_164
  loc_C21B60: CI4Var
  loc_C21B62: FLdRfVar var_D0
  loc_C21B65: CI2Var
  loc_C21B66: FLdPr Me
  loc_C21B69: MemLdRfVar from_stack_1.global_56
  loc_C21B6C: NewIfNullPr clsordenpago
  loc_C21B6F: from_stack_7v = clsordenpago.AnularOP(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C21B74: ILdRf var_224
  loc_C21B77: FLdPr Me
  loc_C21B7A: MemStStrCopy
  loc_C21B7E: FFreeStr var_8C = "": var_13C = "": var_144 = ""
  loc_C21B89: FFreeAd var_9C = "": var_124 = "": var_12C = "": var_130 = "": var_140 = "": var_308 = "": var_310 = "": var_314 = "": var_128 = "": var_134 = ""
  loc_C21BA2: FFreeVar var_B0 = "": var_C0 = "": var_D0 = "": var_164 = ""
  loc_C21BAF: LitI4 0
  loc_C21BB4: FLdPr Me
  loc_C21BB7: MemLdStr global_72
  loc_C21BBA: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C21BBF: FLdPr Me
  loc_C21BC2: VCallAd Control_ID_FlexCheque
  loc_C21BC5: FStAdFunc var_9C
  loc_C21BC8: FLdPr var_9C
  loc_C21BCB: LateIdLdVar var_B0 DispID_4 0
  loc_C21BD2: PopAd
  loc_C21BD4: FLdPr Me
  loc_C21BD7: MemLdStr global_76
  loc_C21BDA: CR8I4
  loc_C21BDB: FLdRfVar var_B0
  loc_C21BDE: CI4Var
  loc_C21BE0: LitI4 1
  loc_C21BE5: SubI4
  loc_C21BE6: CR8I4
  loc_C21BE7: DivR8
  loc_C21BE8: LitI2_Byte &H64
  loc_C21BEA: CR8I2
  loc_C21BEB: MulR8
  loc_C21BEC: CVarR4
  loc_C21BF0: PopAdLdVar
  loc_C21BF1: FLdPrThis
  loc_C21BF2: VCallAd Control_ID_ProgressBar
  loc_C21BF5: FStAdFunc var_124
  loc_C21BF8: FLdPr var_124
  loc_C21BFB: LateIdSt
  loc_C21C00: FFreeAd var_9C = ""
  loc_C21C07: FFree1Var var_B0 = ""
  loc_C21C0A: FLdPr Me
  loc_C21C0D: MemLdRfVar from_stack_1.global_76
  loc_C21C10: NextI4 var_3CC, loc_C21A1C
  loc_C21C15: LitVar_FALSE
  loc_C21C19: PopAdLdVar
  loc_C21C1A: FLdPr Me
  loc_C21C1D: VCallAd Control_ID_ProgressBar
  loc_C21C20: FStAdFunc var_9C
  loc_C21C23: FLdPr var_9C
  loc_C21C26: LateIdSt
  loc_C21C2B: FFree1Ad var_9C
  loc_C21C2E: Branch loc_C21D61
  loc_C21C31: FLdRfVar var_C0
  loc_C21C34: FLdRfVar var_128
  loc_C21C37: LitVarStr var_E0, "PeriInfo"
  loc_C21C3C: PopAdLdVar
  loc_C21C3D: FLdRfVar var_124
  loc_C21C40: FLdRfVar var_9C
  loc_C21C43: FLdPr Me
  loc_C21C46: MemLdRfVar from_stack_1.global_56
  loc_C21C49: NewIfNullPr clsordenpago
  loc_C21C4C: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C21C51: FLdPr var_9C
  loc_C21C54:  = Me.Fields
  loc_C21C59: FLdPr var_124
  loc_C21C5C: from_stack_2 = Me.Item(from_stack_1)
  loc_C21C61: FLdPr var_128
  loc_C21C64:  = Me.Value
  loc_C21C69: FLdRfVar var_D0
  loc_C21C6C: FLdRfVar var_134
  loc_C21C6F: LitVarStr var_F0, "NumeOrpa"
  loc_C21C74: PopAdLdVar
  loc_C21C75: FLdRfVar var_130
  loc_C21C78: FLdRfVar var_12C
  loc_C21C7B: FLdPr Me
  loc_C21C7E: MemLdRfVar from_stack_1.global_56
  loc_C21C81: NewIfNullPr clsordenpago
  loc_C21C84: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C21C89: FLdPr var_12C
  loc_C21C8C:  = Me.Fields
  loc_C21C91: FLdPr var_130
  loc_C21C94: from_stack_2 = Me.Item(from_stack_1)
  loc_C21C99: FLdPr var_134
  loc_C21C9C:  = Me.Value
  loc_C21CA1: FLdRfVar var_164
  loc_C21CA4: FLdRfVar var_30C
  loc_C21CA7: LitVarStr var_100, "TipoOrpa"
  loc_C21CAC: PopAdLdVar
  loc_C21CAD: FLdRfVar var_308
  loc_C21CB0: FLdRfVar var_140
  loc_C21CB3: FLdPr Me
  loc_C21CB6: MemLdRfVar from_stack_1.global_56
  loc_C21CB9: NewIfNullPr clsordenpago
  loc_C21CBC: from_stack_1v = clsordenpago.RsFrmGet()
  loc_C21CC1: FLdPr var_140
  loc_C21CC4:  = Me.Fields
  loc_C21CC9: FLdPr var_308
  loc_C21CCC: from_stack_2 = Me.Item(from_stack_1)
  loc_C21CD1: FLdPr var_30C
  loc_C21CD4:  = Me.Value
  loc_C21CD9: FLdPr Me
  loc_C21CDC: VCallAd Control_ID_FechaMsk
  loc_C21CDF: FStAdFunc var_310
  loc_C21CE2: FLdPr var_310
  loc_C21CE5: LateIdLdVar var_B0 DispID_15 0
  loc_C21CEC: PopAd
  loc_C21CEE: FLdRfVar var_144
  loc_C21CF1: LitStr vbNullString
  loc_C21CF4: LitStr vbNullString
  loc_C21CF7: FLdRfVar var_B0
  loc_C21CFA: CStrVarTmp
  loc_C21CFB: FStStrNoPop var_13C
  loc_C21CFE: FLdRfVar var_164
  loc_C21D01: CStrVarTmp
  loc_C21D02: FStStrNoPop var_8C
  loc_C21D05: FLdRfVar var_D0
  loc_C21D08: CI4Var
  loc_C21D0A: FLdRfVar var_C0
  loc_C21D0D: CI2Var
  loc_C21D0E: FLdPr Me
  loc_C21D11: MemLdRfVar from_stack_1.global_56
  loc_C21D14: NewIfNullPr clsordenpago
  loc_C21D17: from_stack_7v = clsordenpago.AnularOP(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C21D1C: ILdRf var_144
  loc_C21D1F: FLdPr Me
  loc_C21D22: MemStStrCopy
  loc_C21D26: FFreeStr var_8C = "": var_13C = ""
  loc_C21D2F: FFreeAd var_9C = "": var_124 = "": var_12C = "": var_130 = "": var_140 = "": var_308 = "": var_310 = "": var_128 = "": var_134 = ""
  loc_C21D46: FFreeVar var_B0 = "": var_C0 = "": var_D0 = ""
  loc_C21D51: LitI4 0
  loc_C21D56: FLdPr Me
  loc_C21D59: MemLdStr global_72
  loc_C21D5C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C21D61: FLdRfVar var_8C
  loc_C21D64: ILdRf var_150
  loc_C21D67: ImpAdLdI2 MemVar_C3D064
  loc_C21D6A: FLdPr Me
  loc_C21D6D: MemLdRfVar from_stack_1.global_56
  loc_C21D70: NewIfNullPr clsordenpago
  loc_C21D73: from_stack_3v = clsordenpago.ChequesPendientesxOP(from_stack_1v, from_stack_2v)
  loc_C21D78: ILdRf var_8C
  loc_C21D7B: FLdPr Me
  loc_C21D7E: MemStStrCopy
  loc_C21D82: FFree1Str var_8C
  loc_C21D85: LitStr "Municipalidad de Guaymallén"
  loc_C21D88: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_C21D8B: EqStr
  loc_C21D8D: BranchF loc_C21DD5
  loc_C21D90: FLdPr Me
  loc_C21D93: MemLdStr global_72
  loc_C21D96: LitStr vbNullString
  loc_C21D99: EqStr
  loc_C21D9B: BranchF loc_C21DD2
  loc_C21D9E: FLdPr Me
  loc_C21DA1: VCallAd Control_ID_FechaMsk
  loc_C21DA4: FStAdFunc var_9C
  loc_C21DA7: FLdPr var_9C
  loc_C21DAA: LateIdLdVar var_B0 DispID_11 -32767
  loc_C21DB1: CStrVarTmp
  loc_C21DB2: FStStrNoPop var_8C
  loc_C21DB5: ILdRf var_150
  loc_C21DB8: ImpAdLdI2 MemVar_C3D064
  loc_C21DBB: FLdPr Me
  loc_C21DBE: MemLdRfVar from_stack_1.global_56
  loc_C21DC1: NewIfNullPr clsordenpago
  loc_C21DC4: Call clsordenpago.ModificarFearOrpa(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C21DC9: FFree1Str var_8C
  loc_C21DCC: FFree1Ad var_9C
  loc_C21DCF: FFree1Var var_B0 = ""
  loc_C21DD2: Branch loc_C21E17
  loc_C21DD5: FLdPr Me
  loc_C21DD8: MemLdStr global_72
  loc_C21DDB: LitStr vbNullString
  loc_C21DDE: EqStr
  loc_C21DE0: BranchF loc_C21E17
  loc_C21DE3: FLdPr Me
  loc_C21DE6: VCallAd Control_ID_FechaMsk
  loc_C21DE9: FStAdFunc var_9C
  loc_C21DEC: FLdPr var_9C
  loc_C21DEF: LateIdLdVar var_B0 DispID_15 0
  loc_C21DF6: CStrVarTmp
  loc_C21DF7: FStStrNoPop var_8C
  loc_C21DFA: ILdRf var_150
  loc_C21DFD: ImpAdLdI2 MemVar_C3D064
  loc_C21E00: FLdPr Me
  loc_C21E03: MemLdRfVar from_stack_1.global_56
  loc_C21E06: NewIfNullPr clsordenpago
  loc_C21E09: Call clsordenpago.ModificarFearOrpa(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C21E0E: FFree1Str var_8C
  loc_C21E11: FFree1Ad var_9C
  loc_C21E14: FFree1Var var_B0 = ""
  loc_C21E17: Branch loc_C21E24
  loc_C21E1A: FLdUI1
  loc_C21E1E: LitI2_Byte 2
  loc_C21E20: EqI2
  loc_C21E21: BranchF loc_C21E24
  loc_C21E24: Call cmdCancelar_Click()
  loc_C21E29: Branch loc_C21F30
  loc_C21E2C: ILdRf var_90
  loc_C21E2F: LitStr "btnCancelar"
  loc_C21E32: EqStr
  loc_C21E34: BranchF loc_C21E3F
  loc_C21E37: Call cmdCancelar_Click()
  loc_C21E3C: Branch loc_C21F30
  loc_C21E3F: ILdRf var_90
  loc_C21E42: LitStr "btnPrimero"
  loc_C21E45: EqStr
  loc_C21E47: BranchF loc_C21E5B
  loc_C21E4A: FLdPr Me
  loc_C21E4D: MemLdRfVar from_stack_1.global_56
  loc_C21E50: NewIfNullPr clsordenpago
  loc_C21E53: Call clsordenpago.MoveFirst()
  loc_C21E58: Branch loc_C21F30
  loc_C21E5B: ILdRf var_90
  loc_C21E5E: LitStr "btnAnterior"
  loc_C21E61: EqStr
  loc_C21E63: BranchF loc_C21E77
  loc_C21E66: FLdPr Me
  loc_C21E69: MemLdRfVar from_stack_1.global_56
  loc_C21E6C: NewIfNullPr clsordenpago
  loc_C21E6F: Call clsordenpago.MovePrevious()
  loc_C21E74: Branch loc_C21F30
  loc_C21E77: ILdRf var_90
  loc_C21E7A: LitStr "btnSiguiente"
  loc_C21E7D: EqStr
  loc_C21E7F: BranchF loc_C21E93
  loc_C21E82: FLdPr Me
  loc_C21E85: MemLdRfVar from_stack_1.global_56
  loc_C21E88: NewIfNullPr clsordenpago
  loc_C21E8B: Call clsordenpago.MoveNext()
  loc_C21E90: Branch loc_C21F30
  loc_C21E93: ILdRf var_90
  loc_C21E96: LitStr "btnUltimo"
  loc_C21E99: EqStr
  loc_C21E9B: BranchF loc_C21EAF
  loc_C21E9E: FLdPr Me
  loc_C21EA1: MemLdRfVar from_stack_1.global_56
  loc_C21EA4: NewIfNullPr clsordenpago
  loc_C21EA7: Call clsordenpago.MoveLast()
  loc_C21EAC: Branch loc_C21F30
  loc_C21EAF: ILdRf var_90
  loc_C21EB2: LitStr "btnFiltrar"
  loc_C21EB5: EqStr
  loc_C21EB7: BranchF loc_C21EBD
  loc_C21EBA: Branch loc_C21F30
  loc_C21EBD: ILdRf var_90
  loc_C21EC0: LitStr "btnBuscar"
  loc_C21EC3: EqStr
  loc_C21EC5: BranchF loc_C21ECB
  loc_C21EC8: Branch loc_C21F30
  loc_C21ECB: ILdRf var_90
  loc_C21ECE: LitStr "btnImprimir"
  loc_C21ED1: EqStr
  loc_C21ED3: BranchF loc_C21ED9
  loc_C21ED6: Branch loc_C21F30
  loc_C21ED9: ILdRf var_90
  loc_C21EDC: LitStr "btnAyuda"
  loc_C21EDF: EqStr
  loc_C21EE1: BranchF loc_C21F10
  loc_C21EE4: LitVar_Missing var_164
  loc_C21EE7: LitVar_Missing var_D0
  loc_C21EEA: LitVar_Missing var_C0
  loc_C21EED: LitI4 0
  loc_C21EF2: LitVarStr var_E0, "Opcion no disponible en esta version."
  loc_C21EF7: FStVarCopyObj var_B0
  loc_C21EFA: FLdRfVar var_B0
  loc_C21EFD: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C21F02: FFreeVar var_B0 = "": var_C0 = "": var_D0 = ""
  loc_C21F0D: Branch loc_C21F30
  loc_C21F10: ILdRf var_90
  loc_C21F13: LitStr "btnSalir"
  loc_C21F16: EqStr
  loc_C21F18: BranchF loc_C21F30
  loc_C21F1B: ILdRf Me
  loc_C21F1E: FStAdNoPop
  loc_C21F22: ImpAdLdRf MemVar_C44F9C
  loc_C21F25: NewIfNullPr Me
  loc_C21F28: Me.Global.Unload from_stack_1
  loc_C21F2D: FFree1Ad var_9C
  loc_C21F30: ExitProcHresult
End Sub

Private Sub FechaMsk_UnknownEvent_0 'A0AB68
  'Data Table: 44AAFC
  loc_A0AA08: FLdPr Me
  loc_A0AA0B: MemLdUI1 global_68
  loc_A0AA0F: LitI2_Byte 1
  loc_A0AA11: EqI2
  loc_A0AA12: BranchF loc_A0AA92
  loc_A0AA15: FLdRfVar var_B0
  loc_A0AA18: FLdRfVar var_A0
  loc_A0AA1B: LitVarStr var_9C, "NumeOrpa"
  loc_A0AA20: PopAdLdVar
  loc_A0AA21: FLdRfVar var_8C
  loc_A0AA24: FLdRfVar var_88
  loc_A0AA27: FLdPr Me
  loc_A0AA2A: MemLdRfVar from_stack_1.global_56
  loc_A0AA2D: NewIfNullPr clsordenpago
  loc_A0AA30: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A0AA35: FLdPr var_88
  loc_A0AA38:  = Me.Fields
  loc_A0AA3D: FLdPr var_8C
  loc_A0AA40: from_stack_2 = Me.Item(from_stack_1)
  loc_A0AA45: FLdPr var_A0
  loc_A0AA48:  = Me.Value
  loc_A0AA4D: FLdRfVar var_B4
  loc_A0AA50: FLdRfVar var_B0
  loc_A0AA53: CI2Var
  loc_A0AA54: ImpAdLdI2 MemVar_C3D064
  loc_A0AA57: FLdPr Me
  loc_A0AA5A: MemLdRfVar from_stack_1.global_56
  loc_A0AA5D: NewIfNullPr clsordenpago
  loc_A0AA60: from_stack_3v = clsordenpago.UltimaFechaRetencion(from_stack_1v, from_stack_2v)
  loc_A0AA65: FLdZeroAd var_B4
  loc_A0AA68: CVarStr var_C4
  loc_A0AA6B: PopAdLdVar
  loc_A0AA6C: FLdPr Me
  loc_A0AA6F: VCallAd Control_ID_FechaMsk
  loc_A0AA72: FStAdFunc var_D8
  loc_A0AA75: FLdPr var_D8
  loc_A0AA78: LateIdSt
  loc_A0AA7D: FFreeAd var_88 = "": var_8C = "": var_A0 = ""
  loc_A0AA88: FFreeVar var_B0 = ""
  loc_A0AA8F: Branch loc_A0AB1D
  loc_A0AA92: FLdPr Me
  loc_A0AA95: MemLdUI1 global_68
  loc_A0AA99: LitI2_Byte 3
  loc_A0AA9B: EqI2
  loc_A0AA9C: BranchF loc_A0AB1D
  loc_A0AA9F: FLdRfVar var_B0
  loc_A0AAA2: FLdRfVar var_A0
  loc_A0AAA5: LitVarStr var_9C, "NumeOrpa"
  loc_A0AAAA: PopAdLdVar
  loc_A0AAAB: FLdRfVar var_8C
  loc_A0AAAE: FLdRfVar var_88
  loc_A0AAB1: FLdPr Me
  loc_A0AAB4: MemLdRfVar from_stack_1.global_56
  loc_A0AAB7: NewIfNullPr clsordenpago
  loc_A0AABA: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A0AABF: FLdPr var_88
  loc_A0AAC2:  = Me.Fields
  loc_A0AAC7: FLdPr var_8C
  loc_A0AACA: from_stack_2 = Me.Item(from_stack_1)
  loc_A0AACF: FLdPr var_A0
  loc_A0AAD2:  = Me.Value
  loc_A0AAD7: FLdRfVar var_B4
  loc_A0AADA: FLdRfVar var_B0
  loc_A0AADD: CI4Var
  loc_A0AADF: PopTmpLdAdStr var_DC
  loc_A0AAE2: ImpAdLdRf MemVar_C3D064
  loc_A0AAE5: FLdPr Me
  loc_A0AAE8: MemLdRfVar from_stack_1.global_56
  loc_A0AAEB: NewIfNullPr clsordenpago
  loc_A0AAEE: from_stack_3v = clsordenpago.UltimaFechaAnulacion(from_stack_1v, from_stack_2v)
  loc_A0AAF3: FLdZeroAd var_B4
  loc_A0AAF6: CVarStr var_C4
  loc_A0AAF9: PopAdLdVar
  loc_A0AAFA: FLdPr Me
  loc_A0AAFD: VCallAd Control_ID_FechaMsk
  loc_A0AB00: FStAdFunc var_D8
  loc_A0AB03: FLdPr var_D8
  loc_A0AB06: LateIdSt
  loc_A0AB0B: FFreeAd var_88 = "": var_8C = "": var_A0 = ""
  loc_A0AB16: FFreeVar var_B0 = ""
  loc_A0AB1D: FLdPr Me
  loc_A0AB20: VCallAd Control_ID_FechaMsk
  loc_A0AB23: FStAdFunc var_88
  loc_A0AB26: FLdPr var_88
  loc_A0AB29: LateIdLdVar var_B0 DispID_11 -32767
  loc_A0AB30: CStrVarTmp
  loc_A0AB31: CVarStr var_C4
  loc_A0AB34: PopAdLdVar
  loc_A0AB35: FLdPr Me
  loc_A0AB38: VCallAd Control_ID_FechaMsk
  loc_A0AB3B: FStAdFunc var_8C
  loc_A0AB3E: FLdPr var_8C
  loc_A0AB41: LateIdSt
  loc_A0AB46: FFreeAd var_88 = ""
  loc_A0AB4D: FFreeVar var_B0 = ""
  loc_A0AB54: FLdPr Me
  loc_A0AB57: VCallAd Control_ID_FechaMsk
  loc_A0AB5A: CVarAd
  loc_A0AB5E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_A0AB63: FFree1Var var_B0 = ""
  loc_A0AB66: ExitProcHresult
End Sub

Private Sub FechaMsk_UnknownEvent_8 'A4506C
  'Data Table: 44AAFC
  loc_A44E10: FLdRfVar var_8A
  loc_A44E13: FLdPr Me
  loc_A44E16: VCallAd Control_ID_cmdCancelar
  loc_A44E19: FStAdFunc var_88
  loc_A44E1C: FLdPr var_88
  loc_A44E1F:  = Me.Value
  loc_A44E24: FLdI2 var_8A
  loc_A44E27: NotI4
  loc_A44E28: FLdPr Me
  loc_A44E2B: VCallAd Control_ID_FechaMsk
  loc_A44E2E: FStAdFunc var_90
  loc_A44E31: FLdPr var_90
  loc_A44E34: LateIdLdVar var_A0 DispID_13 -32767
  loc_A44E3B: CBoolVar
  loc_A44E3D: AndI4
  loc_A44E3E: FFreeAd var_88 = ""
  loc_A44E45: FFree1Var var_A0 = ""
  loc_A44E48: BranchF loc_A45068
  loc_A44E4B: LitStr "Municipalidad de Guaymallén"
  loc_A44E4E: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_A44E51: EqStr
  loc_A44E53: BranchF loc_A44EFD
  loc_A44E56: FLdPr Me
  loc_A44E59: VCallAd Control_ID_FechaMsk
  loc_A44E5C: FStAdFunc var_88
  loc_A44E5F: FLdPr var_88
  loc_A44E62: LateIdLdVar var_A0 DispID_15 0
  loc_A44E69: PopAd
  loc_A44E6B: FLdRfVar var_CC
  loc_A44E6E: FLdRfVar var_B8
  loc_A44E71: LitVarStr var_B4, "FereOrpa"
  loc_A44E76: PopAdLdVar
  loc_A44E77: FLdRfVar var_A4
  loc_A44E7A: FLdRfVar var_90
  loc_A44E7D: FLdPr Me
  loc_A44E80: MemLdRfVar from_stack_1.global_56
  loc_A44E83: NewIfNullPr clsordenpago
  loc_A44E86: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A44E8B: FLdPr var_90
  loc_A44E8E:  = Me.Fields
  loc_A44E93: FLdPr var_A4
  loc_A44E96: from_stack_2 = Me.Item(from_stack_1)
  loc_A44E9B: FLdPr var_B8
  loc_A44E9E:  = Me.Value
  loc_A44EA3: FLdPr Me
  loc_A44EA6: VCallAd Control_ID_FechaMsk
  loc_A44EA9: FStAdFunc var_DC
  loc_A44EAC: LitI2_Byte 0
  loc_A44EAE: PopTmpLdAd2 var_8A
  loc_A44EB1: FLdZeroAd var_DC
  loc_A44EB4: FStAdFunc var_D4
  loc_A44EB7: FLdRfVar var_D4
  loc_A44EBA: FLdRfVar var_CC
  loc_A44EBD: CStrVarTmp
  loc_A44EBE: FStStrNoPop var_D0
  loc_A44EC1: LitI2_Byte &HFF
  loc_A44EC3: LitI2_Byte 0
  loc_A44EC5: FLdRfVar var_A0
  loc_A44EC8: CStrVarTmp
  loc_A44EC9: FStStrNoPop var_BC
  loc_A44ECC: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A44ED1: FStStrNoPop var_D8
  loc_A44ED4: FLdPr Me
  loc_A44ED7: MemStStrCopy
  loc_A44EDB: FFreeStr var_BC = "": var_D0 = ""
  loc_A44EE4: FFreeAd var_88 = "": var_90 = "": var_A4 = "": var_B8 = "": var_D4 = ""
  loc_A44EF3: FFreeVar var_A0 = ""
  loc_A44EFA: Branch loc_A4502C
  loc_A44EFD: FLdPr Me
  loc_A44F00: VCallAd Control_ID_FechaMsk
  loc_A44F03: FStAdFunc var_88
  loc_A44F06: FLdPr var_88
  loc_A44F09: LateIdLdVar var_A0 DispID_15 0
  loc_A44F10: PopAd
  loc_A44F12: FLdRfVar var_CC
  loc_A44F15: FLdRfVar var_B8
  loc_A44F18: LitVarStr var_B4, "FereOrpa"
  loc_A44F1D: PopAdLdVar
  loc_A44F1E: FLdRfVar var_A4
  loc_A44F21: FLdRfVar var_90
  loc_A44F24: FLdPr Me
  loc_A44F27: MemLdRfVar from_stack_1.global_56
  loc_A44F2A: NewIfNullPr clsordenpago
  loc_A44F2D: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A44F32: FLdPr var_90
  loc_A44F35:  = Me.Fields
  loc_A44F3A: FLdPr var_A4
  loc_A44F3D: from_stack_2 = Me.Item(from_stack_1)
  loc_A44F42: FLdPr var_B8
  loc_A44F45:  = Me.Value
  loc_A44F4A: FLdPr Me
  loc_A44F4D: VCallAd Control_ID_FechaMsk
  loc_A44F50: FStAdFunc var_DC
  loc_A44F53: LitI2_Byte &HFF
  loc_A44F55: PopTmpLdAd2 var_8A
  loc_A44F58: FLdZeroAd var_DC
  loc_A44F5B: FStAdFunc var_D4
  loc_A44F5E: FLdRfVar var_D4
  loc_A44F61: FLdRfVar var_CC
  loc_A44F64: CStrVarTmp
  loc_A44F65: FStStrNoPop var_D0
  loc_A44F68: LitI2_Byte &HFF
  loc_A44F6A: LitI2_Byte &HFF
  loc_A44F6C: FLdRfVar var_A0
  loc_A44F6F: CStrVarTmp
  loc_A44F70: FStStrNoPop var_BC
  loc_A44F73: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A44F78: FStStrNoPop var_D8
  loc_A44F7B: FLdPr Me
  loc_A44F7E: MemStStrCopy
  loc_A44F82: FFreeStr var_BC = "": var_D0 = ""
  loc_A44F8B: FFreeAd var_88 = "": var_90 = "": var_A4 = "": var_B8 = "": var_D4 = ""
  loc_A44F9A: FFreeVar var_A0 = ""
  loc_A44FA1: FLdPr Me
  loc_A44FA4: MemLdStr global_72
  loc_A44FA7: LitStr vbNullString
  loc_A44FAA: EqStr
  loc_A44FAC: BranchF loc_A4502C
  loc_A44FAF: FLdPr Me
  loc_A44FB2: VCallAd Control_ID_FechaMsk
  loc_A44FB5: FStAdFunc var_88
  loc_A44FB8: FLdPr var_88
  loc_A44FBB: LateIdLdVar var_A0 DispID_15 0
  loc_A44FC2: PopAd
  loc_A44FC4: FLdPr Me
  loc_A44FC7: VCallAd Control_ID_FechaMsk
  loc_A44FCA: FStAdFunc var_90
  loc_A44FCD: FLdPr var_90
  loc_A44FD0: LateIdLdVar var_CC DispID_11 -32767
  loc_A44FD7: PopAd
  loc_A44FD9: FLdPr Me
  loc_A44FDC: VCallAd Control_ID_FechaMsk
  loc_A44FDF: FStAdFunc var_B8
  loc_A44FE2: LitI2_Byte &HFF
  loc_A44FE4: PopTmpLdAd2 var_8A
  loc_A44FE7: FLdZeroAd var_B8
  loc_A44FEA: FStAdFunc var_A4
  loc_A44FED: FLdRfVar var_A4
  loc_A44FF0: FLdRfVar var_CC
  loc_A44FF3: CStrVarTmp
  loc_A44FF4: FStStrNoPop var_D0
  loc_A44FF7: LitI2_Byte &HFF
  loc_A44FF9: LitI2_Byte &HFF
  loc_A44FFB: FLdRfVar var_A0
  loc_A44FFE: CStrVarTmp
  loc_A44FFF: FStStrNoPop var_BC
  loc_A45002: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A45007: FStStrNoPop var_D8
  loc_A4500A: FLdPr Me
  loc_A4500D: MemStStrCopy
  loc_A45011: FFreeStr var_BC = "": var_D0 = ""
  loc_A4501A: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_A45025: FFreeVar var_A0 = ""
  loc_A4502C: FLdPr Me
  loc_A4502F: VCallAd Control_ID_FechaMsk
  loc_A45032: FStAdFunc var_B8
  loc_A45035: LitNothing
  loc_A45037: CastAd
  loc_A4503A: FStAdFunc var_A4
  loc_A4503D: FLdRfVar var_A4
  loc_A45040: FLdZeroAd var_B8
  loc_A45043: FStAdFuncNoPop
  loc_A45046: CastAd
  loc_A45049: FStAdFunc var_90
  loc_A4504C: FLdRfVar var_90
  loc_A4504F: FLdPr Me
  loc_A45052: MemLdRfVar from_stack_1.global_72
  loc_A45055: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A4505A: IStI2 Button
  loc_A4505D: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_A45068: ExitProcHresult
  loc_A4506B: SubCy
End Sub

Private Sub FechaMsk_KeyPress(KeyAscii As Integer) '9857E0
  'Data Table: 44AAFC
  loc_98579C: ILdI2 KeyAscii
  loc_98579F: CI4UI1
  loc_9857A0: LitI4 &H20
  loc_9857A5: EqI4
  loc_9857A6: BranchF loc_9857DC
  loc_9857A9: LitVar_Missing var_A4
  loc_9857AC: PopAdLdVar
  loc_9857AD: LitVarI4
  loc_9857B5: PopAdLdVar
  loc_9857B6: ImpAdLdRf MemVar_C3D9A8
  loc_9857B9: NewIfNullPr frmCalendario
  loc_9857BC: frmCalendario.Show from_stack_1, from_stack_2
  loc_9857C1: ImpAdLdRf MemVar_C3D038
  loc_9857C4: CDargRef
  loc_9857C8: FLdPr Me
  loc_9857CB: VCallAd Control_ID_FechaMsk
  loc_9857CE: FStAdFunc var_A8
  loc_9857D1: FLdPr var_A8
  loc_9857D4: LateIdSt
  loc_9857D9: FFree1Ad var_A8
  loc_9857DC: ExitProcHresult
  loc_9857DF: GtI4
End Sub

Private Sub chkSeleTodo_Click() 'A13AF4
  'Data Table: 44AAFC
  loc_A13970: LitI4 1
  loc_A13975: FLdPr Me
  loc_A13978: MemLdRfVar from_stack_1.global_76
  loc_A1397B: FLdPr Me
  loc_A1397E: VCallAd Control_ID_FlexCheque
  loc_A13981: FStAdFunc var_88
  loc_A13984: FLdPr var_88
  loc_A13987: LateIdLdVar var_98 DispID_4 0
  loc_A1398E: CI4Var
  loc_A13990: LitI4 1
  loc_A13995: SubI4
  loc_A13996: FFree1Ad var_88
  loc_A13999: FFree1Var var_98 = ""
  loc_A1399C: ForI4 var_A0
  loc_A139A2: FLdPr Me
  loc_A139A5: MemLdRfVar from_stack_1.global_76
  loc_A139A8: CDargRef
  loc_A139AC: FLdPr Me
  loc_A139AF: VCallAd Control_ID_FlexCheque
  loc_A139B2: FStAdFunc var_88
  loc_A139B5: FLdPr var_88
  loc_A139B8: LateIdSt
  loc_A139BD: FFree1Ad var_88
  loc_A139C0: LitI2_Byte 0
  loc_A139C2: FLdPr Me
  loc_A139C5: MemLdRfVar from_stack_1.global_80
  loc_A139C8: LitI2_Byte 8
  loc_A139CA: ForI2 var_B4
  loc_A139D0: FLdPr Me
  loc_A139D3: MemLdI2 global_80
  loc_A139D6: CI4UI1
  loc_A139D7: CVarI4
  loc_A139DB: PopAdLdVar
  loc_A139DC: FLdPr Me
  loc_A139DF: VCallAd Control_ID_FlexCheque
  loc_A139E2: FStAdFunc var_88
  loc_A139E5: FLdPr var_88
  loc_A139E8: LateIdSt
  loc_A139ED: FFree1Ad var_88
  loc_A139F0: FLdRfVar var_C6
  loc_A139F3: FLdPr Me
  loc_A139F6: VCallAd Control_ID_chkSeleTodo
  loc_A139F9: FStAdFunc var_88
  loc_A139FC: FLdPr var_88
  loc_A139FF:  = Me.Value
  loc_A13A04: FLdI2 var_C6
  loc_A13A07: LitI2_Byte 0
  loc_A13A09: EqI2
  loc_A13A0A: FFree1Ad var_88
  loc_A13A0D: BranchF loc_A13A77
  loc_A13A10: LitVarI4
  loc_A13A18: PopAdLdVar
  loc_A13A19: FLdPr Me
  loc_A13A1C: VCallAd Control_ID_FlexCheque
  loc_A13A1F: FStAdFunc var_88
  loc_A13A22: FLdPr var_88
  loc_A13A25: LateIdSt
  loc_A13A2A: FFree1Ad var_88
  loc_A13A2D: FLdPr Me
  loc_A13A30: VCallAd Control_ID_FlexCheque
  loc_A13A33: FStAdFunc var_88
  loc_A13A36: FLdPr var_88
  loc_A13A39: LateIdLdVar var_98 DispID_10 0
  loc_A13A40: CI4Var
  loc_A13A42: CVarI4
  loc_A13A46: PopAdLdVar
  loc_A13A47: LitVarI4
  loc_A13A4F: PopAdLdVar
  loc_A13A50: LitVarStr var_F8, "No"
  loc_A13A55: PopAdLdVar
  loc_A13A56: FLdPr Me
  loc_A13A59: VCallAd Control_ID_FlexCheque
  loc_A13A5C: FStAdFunc var_10C
  loc_A13A5F: FLdPr var_10C
  loc_A13A62: LateIdCallSt
  loc_A13A6A: FFreeAd var_88 = ""
  loc_A13A71: FFree1Var var_98 = ""
  loc_A13A74: Branch loc_A13ADB
  loc_A13A77: LitVarI4
  loc_A13A7F: PopAdLdVar
  loc_A13A80: FLdPr Me
  loc_A13A83: VCallAd Control_ID_FlexCheque
  loc_A13A86: FStAdFunc var_88
  loc_A13A89: FLdPr var_88
  loc_A13A8C: LateIdSt
  loc_A13A91: FFree1Ad var_88
  loc_A13A94: FLdPr Me
  loc_A13A97: VCallAd Control_ID_FlexCheque
  loc_A13A9A: FStAdFunc var_88
  loc_A13A9D: FLdPr var_88
  loc_A13AA0: LateIdLdVar var_98 DispID_10 0
  loc_A13AA7: CI4Var
  loc_A13AA9: CVarI4
  loc_A13AAD: PopAdLdVar
  loc_A13AAE: LitVarI4
  loc_A13AB6: PopAdLdVar
  loc_A13AB7: LitVarStr var_F8, "Si"
  loc_A13ABC: PopAdLdVar
  loc_A13ABD: FLdPr Me
  loc_A13AC0: VCallAd Control_ID_FlexCheque
  loc_A13AC3: FStAdFunc var_10C
  loc_A13AC6: FLdPr var_10C
  loc_A13AC9: LateIdCallSt
  loc_A13AD1: FFreeAd var_88 = ""
  loc_A13AD8: FFree1Var var_98 = ""
  loc_A13ADB: FLdPr Me
  loc_A13ADE: MemLdRfVar from_stack_1.global_80
  loc_A13AE1: NextI2 var_B4, loc_A139D0
  loc_A13AE6: FLdPr Me
  loc_A13AE9: MemLdRfVar from_stack_1.global_76
  loc_A13AEC: NextI4 var_A0, loc_A139A2
  loc_A13AF1: ExitProcHresult
End Sub

Private Function Proc_130_23_A5B000(arg_C) 'A5B000
  'Data Table: 44AAFC
  loc_A5ACF4: ILdI2 arg_C
  loc_A5ACF7: BranchF loc_A5AE48
  loc_A5ACFA: FLdPr Me
  loc_A5ACFD: VCallAd Control_ID_FlexCheque
  loc_A5AD00: FStAdFunc var_88
  loc_A5AD03: LitVarI4
  loc_A5AD0B: PopAdLdVar
  loc_A5AD0C: LitVarI4
  loc_A5AD14: PopAdLdVar
  loc_A5AD15: FLdPr var_88
  loc_A5AD18: LateIdCallSt
  loc_A5AD20: LitVarI4
  loc_A5AD28: PopAdLdVar
  loc_A5AD29: LitVarI4
  loc_A5AD31: PopAdLdVar
  loc_A5AD32: FLdPr var_88
  loc_A5AD35: LateIdCallSt
  loc_A5AD3D: LitVarI4
  loc_A5AD45: PopAdLdVar
  loc_A5AD46: LitVarI4
  loc_A5AD4E: PopAdLdVar
  loc_A5AD4F: FLdPr var_88
  loc_A5AD52: LateIdCallSt
  loc_A5AD5A: LitVarI4
  loc_A5AD62: PopAdLdVar
  loc_A5AD63: LitVarI4
  loc_A5AD6B: PopAdLdVar
  loc_A5AD6C: FLdPr var_88
  loc_A5AD6F: LateIdCallSt
  loc_A5AD77: LitVarI4
  loc_A5AD7F: PopAdLdVar
  loc_A5AD80: LitVarI4
  loc_A5AD88: PopAdLdVar
  loc_A5AD89: FLdPr var_88
  loc_A5AD8C: LateIdCallSt
  loc_A5AD94: LitVarI4
  loc_A5AD9C: PopAdLdVar
  loc_A5AD9D: LitVarI4
  loc_A5ADA5: PopAdLdVar
  loc_A5ADA6: FLdPr var_88
  loc_A5ADA9: LateIdCallSt
  loc_A5ADB1: LitVarI4
  loc_A5ADB9: PopAdLdVar
  loc_A5ADBA: LitVarI4
  loc_A5ADC2: PopAdLdVar
  loc_A5ADC3: FLdPr var_88
  loc_A5ADC6: LateIdCallSt
  loc_A5ADCE: LitVarI4
  loc_A5ADD6: PopAdLdVar
  loc_A5ADD7: LitVarI4
  loc_A5ADDF: PopAdLdVar
  loc_A5ADE0: FLdPr var_88
  loc_A5ADE3: LateIdCallSt
  loc_A5ADEB: LitVarI4
  loc_A5ADF3: PopAdLdVar
  loc_A5ADF4: LitVarI4
  loc_A5ADFC: PopAdLdVar
  loc_A5ADFD: FLdPr var_88
  loc_A5AE00: LateIdCallSt
  loc_A5AE08: LitVarI4
  loc_A5AE10: PopAdLdVar
  loc_A5AE11: LitVarI4
  loc_A5AE19: PopAdLdVar
  loc_A5AE1A: FLdPr var_88
  loc_A5AE1D: LateIdCallSt
  loc_A5AE25: LitVarI4
  loc_A5AE2D: PopAdLdVar
  loc_A5AE2E: LitVarI4
  loc_A5AE36: PopAdLdVar
  loc_A5AE37: FLdPr var_88
  loc_A5AE3A: LateIdCallSt
  loc_A5AE42: LitNothing
  loc_A5AE44: FStAd var_88 
  loc_A5AE48: FLdPr Me
  loc_A5AE4B: VCallAd Control_ID_FlexCheque
  loc_A5AE4E: FStAdFunc var_CC
  loc_A5AE51: FLdPr var_CC
  loc_A5AE54: LateIdCall
  loc_A5AE5C: LitVarI4
  loc_A5AE64: PopAdLdVar
  loc_A5AE65: FLdPr var_CC
  loc_A5AE68: LateIdSt
  loc_A5AE6D: LitVarI4
  loc_A5AE75: PopAdLdVar
  loc_A5AE76: LitVarI4
  loc_A5AE7E: PopAdLdVar
  loc_A5AE7F: LitVarStr var_DC, "CUIT-CUIL"
  loc_A5AE84: PopAdLdVar
  loc_A5AE85: FLdPr var_CC
  loc_A5AE88: LateIdCallSt
  loc_A5AE90: LitVarI4
  loc_A5AE98: PopAdLdVar
  loc_A5AE99: LitVarI4
  loc_A5AEA1: PopAdLdVar
  loc_A5AEA2: LitVarStr var_DC, "Proveedor"
  loc_A5AEA7: PopAdLdVar
  loc_A5AEA8: FLdPr var_CC
  loc_A5AEAB: LateIdCallSt
  loc_A5AEB3: LitVarI4
  loc_A5AEBB: PopAdLdVar
  loc_A5AEBC: LitVarI4
  loc_A5AEC4: PopAdLdVar
  loc_A5AEC5: LitVarStr var_DC, "Banco"
  loc_A5AECA: PopAdLdVar
  loc_A5AECB: FLdPr var_CC
  loc_A5AECE: LateIdCallSt
  loc_A5AED6: LitVarI4
  loc_A5AEDE: PopAdLdVar
  loc_A5AEDF: LitVarI4
  loc_A5AEE7: PopAdLdVar
  loc_A5AEE8: LitVarStr var_DC, "Detalle de Banco"
  loc_A5AEED: PopAdLdVar
  loc_A5AEEE: FLdPr var_CC
  loc_A5AEF1: LateIdCallSt
  loc_A5AEF9: LitVarI4
  loc_A5AF01: PopAdLdVar
  loc_A5AF02: LitVarI4
  loc_A5AF0A: PopAdLdVar
  loc_A5AF0B: LitVarStr var_DC, "Número"
  loc_A5AF10: PopAdLdVar
  loc_A5AF11: FLdPr var_CC
  loc_A5AF14: LateIdCallSt
  loc_A5AF1C: LitVarI4
  loc_A5AF24: PopAdLdVar
  loc_A5AF25: LitVarI4
  loc_A5AF2D: PopAdLdVar
  loc_A5AF2E: LitVarStr var_DC, "Importe"
  loc_A5AF33: PopAdLdVar
  loc_A5AF34: FLdPr var_CC
  loc_A5AF37: LateIdCallSt
  loc_A5AF3F: LitVarI4
  loc_A5AF47: PopAdLdVar
  loc_A5AF48: LitVarI4
  loc_A5AF50: PopAdLdVar
  loc_A5AF51: LitVarStr var_DC, "Sel"
  loc_A5AF56: PopAdLdVar
  loc_A5AF57: FLdPr var_CC
  loc_A5AF5A: LateIdCallSt
  loc_A5AF62: LitVarI4
  loc_A5AF6A: PopAdLdVar
  loc_A5AF6B: LitVarI4
  loc_A5AF73: PopAdLdVar
  loc_A5AF74: LitVarStr var_DC, "Ref.Interbank"
  loc_A5AF79: PopAdLdVar
  loc_A5AF7A: FLdPr var_CC
  loc_A5AF7D: LateIdCallSt
  loc_A5AF85: LitVarI4
  loc_A5AF8D: PopAdLdVar
  loc_A5AF8E: LitVarI4
  loc_A5AF96: PopAdLdVar
  loc_A5AF97: LitVarStr var_DC, "Forma Pago"
  loc_A5AF9C: PopAdLdVar
  loc_A5AF9D: FLdPr var_CC
  loc_A5AFA0: LateIdCallSt
  loc_A5AFA8: LitVarI4
  loc_A5AFB0: PopAdLdVar
  loc_A5AFB1: LitVarI4
  loc_A5AFB9: PopAdLdVar
  loc_A5AFBA: LitVarStr var_DC, "mail"
  loc_A5AFBF: PopAdLdVar
  loc_A5AFC0: FLdPr var_CC
  loc_A5AFC3: LateIdCallSt
  loc_A5AFCB: LitVarI4
  loc_A5AFD3: PopAdLdVar
  loc_A5AFD4: LitVarI4
  loc_A5AFDC: PopAdLdVar
  loc_A5AFDD: LitVarStr var_DC, "IdCheq"
  loc_A5AFE2: PopAdLdVar
  loc_A5AFE3: FLdPr var_CC
  loc_A5AFE6: LateIdCallSt
  loc_A5AFEE: FLdPr var_CC
  loc_A5AFF1: LateIdCall
  loc_A5AFF9: LitNothing
  loc_A5AFFB: FStAd var_CC 
  loc_A5AFFF: ExitProcHresult
End Function
