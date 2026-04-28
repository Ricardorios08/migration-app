VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form frmOrdenpago
  Caption = "Orden de Pago"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmOrdenpago.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 16815
  ClientHeight = 10035
  Begin VB.Frame Frame1
    Caption = " Orden de Pago "
    Left = 120
    Top = 3720
    Width = 14295
    Height = 2535
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox DetaLiquTxt
      ForeColor = &HFF0000&
      Left = 1200
      Top = 960
      Width = 12855
      Height = 1275
      TabIndex = 11
      MultiLine = -1  'True
      ScrollBars = 2
      DataField = "DetaLiqu"
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
    Begin MSMask.MaskEdBox FechLiquMsk
      Left = 1200
      Top = 480
      Width = 1455
      Height = 360
      TabIndex = 9
      OleObjectBlob = "frmOrdenpago.frx":08CA
      DataField = "FechLiqu"
    End
    Begin VB.Label Label4
      Caption = "Detalle:"
      Left = 255
      Top = 960
      Width = 810
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
    Begin VB.Label Label3
      Caption = "Fecha :"
      Left = 240
      Top = 480
      Width = 795
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
  End
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
      OleObjectBlob = "frmOrdenpago.frx":097A
    End
  End
  Begin MSFlexGridLib.MSFlexGrid LiquidaNetoFlex
    Left = 120
    Top = 6840
    Width = 14295
    Height = 2655
    TabIndex = 12
    OleObjectBlob = "frmOrdenpago.frx":0A02
    Appearance = 0 'Flat
  End
  Begin MSComctlLib.ProgressBar ProgressBar
    Left = 120
    Top = 2400
    Width = 14295
    Height = 495
    Visible = 0   'False
    TabIndex = 6
    OleObjectBlob = "frmOrdenpago.frx":0AEE
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 14295
    Height = 1935
    TabIndex = 5
    OleObjectBlob = "frmOrdenpago.frx":0B56
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmOrdenpago.frx":0EEA
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 16815
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmOrdenpago.frx":8A68
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmOrdenpago.frx":8FC4
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin VB.Label lblTotalMP
    Left = 10440
    Top = 6360
    Width = 3375
    Height = 375
    TabIndex = 14
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
  End
  Begin VB.Label Label1
    Caption = "Total Mand. pagar:"
    Left = 8160
    Top = 6360
    Width = 2055
    Height = 375
    TabIndex = 13
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

Attribute VB_Name = "frmOrdenpago"


Private Sub Form_Load() 'A29C88
  'Data Table: 441C80
  loc_A29ACC: ImpAdLdI2 MemVar_C3D064
  loc_A29ACF: LitI2 2025
  loc_A29AD2: LeI2
  loc_A29AD3: BranchF loc_A29AF3
  loc_A29AD6: LitVarI4
  loc_A29ADE: PopAdLdVar
  loc_A29ADF: FLdPr Me
  loc_A29AE2: VCallAd Control_ID_dgdABMS
  loc_A29AE5: FStAdFunc var_A8
  loc_A29AE8: FLdPr var_A8
  loc_A29AEB: LateIdSt
  loc_A29AF0: FFree1Ad var_A8
  loc_A29AF3: LitI2_Byte 0
  loc_A29AF5: CR8I2
  loc_A29AF6: PopFPR4
  loc_A29AF7: FLdPr Me
  loc_A29AFA: Me.Left = from_stack_1s
  loc_A29AFF: LitI2_Byte 0
  loc_A29B01: CR8I2
  loc_A29B02: PopFPR4
  loc_A29B03: FLdPr Me
  loc_A29B06: Me.Top = from_stack_1s
  loc_A29B0B: FLdPr Me
  loc_A29B0E: VCallAd Control_ID_LiquidaNetoFlex
  loc_A29B11: FStAdFunc var_AC
  loc_A29B14: LitVarI4
  loc_A29B1C: PopAdLdVar
  loc_A29B1D: LitVarI4
  loc_A29B25: PopAdLdVar
  loc_A29B26: FLdPr var_AC
  loc_A29B29: LateIdCallSt
  loc_A29B31: LitVarI4
  loc_A29B39: PopAdLdVar
  loc_A29B3A: LitVarI4
  loc_A29B42: PopAdLdVar
  loc_A29B43: FLdPr var_AC
  loc_A29B46: LateIdCallSt
  loc_A29B4E: LitVarI4
  loc_A29B56: PopAdLdVar
  loc_A29B57: LitVarI4
  loc_A29B5F: PopAdLdVar
  loc_A29B60: FLdPr var_AC
  loc_A29B63: LateIdCallSt
  loc_A29B6B: LitVarI4
  loc_A29B73: PopAdLdVar
  loc_A29B74: LitVarI4
  loc_A29B7C: PopAdLdVar
  loc_A29B7D: FLdPr var_AC
  loc_A29B80: LateIdCallSt
  loc_A29B88: LitVarI4
  loc_A29B90: PopAdLdVar
  loc_A29B91: LitVarI4
  loc_A29B99: PopAdLdVar
  loc_A29B9A: FLdPr var_AC
  loc_A29B9D: LateIdCallSt
  loc_A29BA5: LitNothing
  loc_A29BA7: FStAd var_AC 
  loc_A29BAB: Call Proc_129_16_9C8730()
  loc_A29BB0: LitStr "SELECT l.*, IF(TipoLiqu=1,'Devengado','Debito') Tipo"
  loc_A29BB3: LitStr " FROM liquidacion l"
  loc_A29BB6: ConcatStr
  loc_A29BB7: FStStrNoPop var_D0
  loc_A29BBA: LitStr " WHERE PeriInfo = "
  loc_A29BBD: ConcatStr
  loc_A29BBE: FStStrNoPop var_D4
  loc_A29BC1: ImpAdLdI2 MemVar_C3D064
  loc_A29BC4: CStrUI1
  loc_A29BC6: FStStrNoPop var_D8
  loc_A29BC9: ConcatStr
  loc_A29BCA: FStStrNoPop var_DC
  loc_A29BCD: LitStr " AND FeanLiqu IS NULL AND NumeOrpa = 0"
  loc_A29BD0: ConcatStr
  loc_A29BD1: FStStrNoPop var_E0
  loc_A29BD4: FLdPr Me
  loc_A29BD7: MemLdRfVar from_stack_1.global_56
  loc_A29BDA: NewIfNullPr clsliquidacion
  loc_A29BDD: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A29BE2: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_A29BEF: LitVarI2 var_94, 0
  loc_A29BF4: PopAdLdVar
  loc_A29BF5: LitStr "Expediente de Pago"
  loc_A29BF8: FLdPr Me
  loc_A29BFB: VCallAd Control_ID_FiltroCbo
  loc_A29BFE: FStAdFunc var_A8
  loc_A29C01: FLdPr var_A8
  loc_A29C04: Me.AddItem from_stack_1, from_stack_2
  loc_A29C09: FFree1Ad var_A8
  loc_A29C0C: LitI2_Byte 0
  loc_A29C0E: FLdPr Me
  loc_A29C11: VCallAd Control_ID_FiltroCbo
  loc_A29C14: FStAdFunc var_A8
  loc_A29C17: FLdPr var_A8
  loc_A29C1A: Me.ListIndex = from_stack_1
  loc_A29C1F: FFree1Ad var_A8
  loc_A29C22: Call cmdCancelar_Click()
  loc_A29C27: LitI4 0
  loc_A29C2C: LitI4 1
  loc_A29C31: FLdRfVar var_E4
  loc_A29C34: Redim
  loc_A29C3E: FLdPr Me
  loc_A29C41: MemLdRfVar from_stack_1.global_56
  loc_A29C44: NewIfNullAd
  loc_A29C47: FStAd var_A8 
  loc_A29C4B: FLdRfVar var_A8
  loc_A29C4E: CVarRef
  loc_A29C53: ParmAry1St
  loc_A29C59: FLdPr Me
  loc_A29C5C: VCallAd Control_ID_dgdABMS
  loc_A29C5F: CVarAd
  loc_A29C63: ParmAry1St
  loc_A29C69: FLdRfVar var_E4
  loc_A29C6C: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A29C71: ILdRf var_A8
  loc_A29C74: CastAd
  loc_A29C77: FLdPr Me
  loc_A29C7A: MemStAdFunc
  loc_A29C7E: FLdRfVar var_E4
  loc_A29C81: Erase
  loc_A29C82: FFree1Ad var_A8
  loc_A29C85: ExitProcHresult
End Sub

Private Sub Form_Activate() '996F3C
  'Data Table: 441C80
  loc_996EE0: FLdRfVar var_C2
  loc_996EE3: FLdRfVar var_C0
  loc_996EE6: LitVarI2 var_B8, 1
  loc_996EEB: FLdPr Me
  loc_996EEE: VCallAd Control_ID_tlbABMS
  loc_996EF1: FStAdFunc var_88
  loc_996EF4: FLdPr var_88
  loc_996EF7: LateIdLdVar var_98 DispID_3 0
  loc_996EFE: CastAdVar Me
  loc_996F02: FStAdFunc var_BC
  loc_996F05: FLdPr var_BC
  loc_996F08:  = Me.Buttons.ControlDefault
  loc_996F0D: FLdPr var_C0
  loc_996F10:  = Me.Enabled
  loc_996F15: FLdI2 var_C2
  loc_996F18: FFreeAd var_88 = "": var_BC = ""
  loc_996F21: FFreeVar var_98 = ""
  loc_996F28: BranchF loc_996F39
  loc_996F2B: FLdPr Me
  loc_996F2E: MemLdRfVar from_stack_1.global_56
  loc_996F31: NewIfNullPr clsliquidacion
  loc_996F34: Call clsliquidacion.Requery()
  loc_996F39: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9400CC
  'Data Table: 441C80
  loc_9400C8: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '958674
  'Data Table: 441C80
  loc_95865C: ILdI2 KeyCode
  loc_95865F: ILdRf Me
  loc_958662: CastAd
  loc_958665: FStAdFunc var_88
  loc_958668: FLdRfVar var_88
  loc_95866B: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_958670: FFree1Ad var_88
  loc_958673: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99A2D0
  'Data Table: 441C80
  loc_99A274: FLdRfVar var_B4
  loc_99A277: FLdRfVar var_B0
  loc_99A27A: FLdI2 ColIndex
  loc_99A27D: CVarI2 var_A8
  loc_99A280: PopAdLdVar
  loc_99A281: FLdPr Me
  loc_99A284: VCallAd Control_ID_dgdABMS
  loc_99A287: FStAdFunc var_88
  loc_99A28A: FLdPr var_88
  loc_99A28D: LateIdLdVar var_98 DispID_105 0
  loc_99A294: CastAdVar Me
  loc_99A298: FStAdFunc var_AC
  loc_99A29B: FLdPr var_AC
  loc_99A29E: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99A2A3: FLdPr var_B0
  loc_99A2A6:  = Me.DataField
  loc_99A2AB: FLdZeroAd var_B4
  loc_99A2AE: PopTmpLdAdStr
  loc_99A2B2: FLdPr Me
  loc_99A2B5: MemLdRfVar from_stack_1.global_56
  loc_99A2B8: NewIfNullPr clsliquidacion
  loc_99A2BB: Call clsliquidacion.Sort(from_stack_1v)
  loc_99A2C0: FFree1Str var_B8
  loc_99A2C3: FFreeAd var_88 = "": var_AC = ""
  loc_99A2CC: FFree1Var var_98 = ""
  loc_99A2CF: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'AB80EC
  'Data Table: 441C80
  loc_AB7BF0: LitStr vbNullString
  loc_AB7BF3: FLdPr Me
  loc_AB7BF6: VCallAd Control_ID_lblTotalMP
  loc_AB7BF9: FStAdFunc var_90
  loc_AB7BFC: FLdPr var_90
  loc_AB7BFF: Me.Caption = from_stack_1
  loc_AB7C04: FFree1Ad var_90
  loc_AB7C07: FLdRfVar var_94
  loc_AB7C0A: FLdPr Me
  loc_AB7C0D: MemLdRfVar from_stack_1.global_56
  loc_AB7C10: NewIfNullPr clsliquidacion
  loc_AB7C13: from_stack_1 = clsliquidacion.RecordCount
  loc_AB7C18: ILdRf var_94
  loc_AB7C1B: LitI4 0
  loc_AB7C20: GtI4
  loc_AB7C21: BranchF loc_AB80CF
  loc_AB7C24: FLdRfVar var_96
  loc_AB7C27: FLdPr Me
  loc_AB7C2A: MemLdRfVar from_stack_1.global_56
  loc_AB7C2D: NewIfNullPr clsliquidacion
  loc_AB7C30: from_stack_1 = clsliquidacion.EOF
  loc_AB7C35: FLdI2 var_96
  loc_AB7C38: BranchF loc_AB7C49
  loc_AB7C3B: FLdPr Me
  loc_AB7C3E: MemLdRfVar from_stack_1.global_56
  loc_AB7C41: NewIfNullPr clsliquidacion
  loc_AB7C44: Call clsliquidacion.MoveLast()
  loc_AB7C49: FLdRfVar var_96
  loc_AB7C4C: FLdPr Me
  loc_AB7C4F: MemLdRfVar from_stack_1.global_56
  loc_AB7C52: NewIfNullPr clsliquidacion
  loc_AB7C55: from_stack_1 = clsliquidacion.BOF
  loc_AB7C5A: FLdI2 var_96
  loc_AB7C5D: BranchF loc_AB7C6E
  loc_AB7C60: FLdPr Me
  loc_AB7C63: MemLdRfVar from_stack_1.global_56
  loc_AB7C66: NewIfNullPr clsliquidacion
  loc_AB7C69: Call clsliquidacion.MoveFirst()
  loc_AB7C6E: Call Proc_129_16_9C8730()
  loc_AB7C73: FLdRfVar var_94
  loc_AB7C76: FLdPr Me
  loc_AB7C79: MemLdRfVar from_stack_1.global_56
  loc_AB7C7C: NewIfNullPr clsliquidacion
  loc_AB7C7F: from_stack_1 = clsliquidacion.RecordCount
  loc_AB7C84: ILdRf var_94
  loc_AB7C87: LitI4 0
  loc_AB7C8C: GtI4
  loc_AB7C8D: BranchF loc_AB80CC
  loc_AB7C90: LitStr "SELECT lqn.*, DetaProv, DetaRete"
  loc_AB7C93: LitStr " FROM liquidaneto lqn"
  loc_AB7C96: ConcatStr
  loc_AB7C97: FStStrNoPop var_9C
  loc_AB7C9A: LitStr " INNER JOIN proveedor p ON p.CucuPers = lqn.CucuPers"
  loc_AB7C9D: ConcatStr
  loc_AB7C9E: FStStrNoPop var_A0
  loc_AB7CA1: LitStr " INNER JOIN retenciones r ON r.PeriInfo = lqn.PeriInfo AND r.CodiRete = lqn.CodiRete"
  loc_AB7CA4: ConcatStr
  loc_AB7CA5: FStStrNoPop var_A4
  loc_AB7CA8: LitStr " WHERE lqn.PeriInfo = "
  loc_AB7CAB: ConcatStr
  loc_AB7CAC: FStStrNoPop var_A8
  loc_AB7CAF: ImpAdLdI2 MemVar_C3D064
  loc_AB7CB2: CStrUI1
  loc_AB7CB4: FStStrNoPop var_AC
  loc_AB7CB7: ConcatStr
  loc_AB7CB8: FStStrNoPop var_B0
  loc_AB7CBB: LitStr " AND lqn.ExpeImpu = '"
  loc_AB7CBE: ConcatStr
  loc_AB7CBF: CVarStr var_E8
  loc_AB7CC2: FLdRfVar var_D8
  loc_AB7CC5: FLdRfVar var_C8
  loc_AB7CC8: LitVarStr var_C4, "ExpeImpu"
  loc_AB7CCD: PopAdLdVar
  loc_AB7CCE: FLdRfVar var_B4
  loc_AB7CD1: FLdRfVar var_90
  loc_AB7CD4: FLdPr Me
  loc_AB7CD7: MemLdRfVar from_stack_1.global_56
  loc_AB7CDA: NewIfNullPr clsliquidacion
  loc_AB7CDD: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AB7CE2: FLdPr var_90
  loc_AB7CE5:  = Me.Fields
  loc_AB7CEA: FLdPr var_B4
  loc_AB7CED: from_stack_2 = Me.Item(from_stack_1)
  loc_AB7CF2: FLdPr var_C8
  loc_AB7CF5:  = Me.Value
  loc_AB7CFA: FLdRfVar var_D8
  loc_AB7CFD: ConcatVar var_F8
  loc_AB7D01: LitVarStr var_108, "'"
  loc_AB7D06: ConcatVar var_118
  loc_AB7D0A: LitVarStr var_128, " AND lqn.NumeLiqu = "
  loc_AB7D0F: ConcatVar var_138
  loc_AB7D13: FLdRfVar var_164
  loc_AB7D16: FLdRfVar var_154
  loc_AB7D19: LitVarStr var_150, "NumeLiqu"
  loc_AB7D1E: PopAdLdVar
  loc_AB7D1F: FLdRfVar var_140
  loc_AB7D22: FLdRfVar var_13C
  loc_AB7D25: FLdPr Me
  loc_AB7D28: MemLdRfVar from_stack_1.global_56
  loc_AB7D2B: NewIfNullPr clsliquidacion
  loc_AB7D2E: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AB7D33: FLdPr var_13C
  loc_AB7D36:  = Me.Fields
  loc_AB7D3B: FLdPr var_140
  loc_AB7D3E: from_stack_2 = Me.Item(from_stack_1)
  loc_AB7D43: FLdPr var_154
  loc_AB7D46:  = Me.Value
  loc_AB7D4B: FLdRfVar var_164
  loc_AB7D4E: ConcatVar var_174
  loc_AB7D52: LitVarStr var_184, " ORDER BY DetaProv, lqn.CucuPers, lqn.CodiRete;"
  loc_AB7D57: ConcatVar var_194
  loc_AB7D5B: CStrVarVal var_198
  loc_AB7D5F: FLdPr Me
  loc_AB7D62: MemLdRfVar from_stack_1.global_60
  loc_AB7D65: NewIfNullPr clsliquidacion
  loc_AB7D68: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_AB7D6D: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_AB7D7E: FFreeAd var_90 = "": var_B4 = "": var_C8 = "": var_13C = "": var_140 = ""
  loc_AB7D8D: FFreeVar var_E8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_164 = "": var_174 = ""
  loc_AB7DA0: FLdRfVar var_94
  loc_AB7DA3: FLdPr Me
  loc_AB7DA6: MemLdRfVar from_stack_1.global_60
  loc_AB7DA9: NewIfNullPr clsliquidacion
  loc_AB7DAC: from_stack_1 = clsliquidacion.RecordCount
  loc_AB7DB1: ILdRf var_94
  loc_AB7DB4: LitI4 0
  loc_AB7DB9: GtI4
  loc_AB7DBA: BranchF loc_AB8082
  loc_AB7DBD: FLdPr Me
  loc_AB7DC0: MemLdRfVar from_stack_1.global_60
  loc_AB7DC3: NewIfNullPr clsliquidacion
  loc_AB7DC6: Call clsliquidacion.MoveFirst()
  loc_AB7DCB: FLdRfVar var_96
  loc_AB7DCE: FLdPr Me
  loc_AB7DD1: MemLdRfVar from_stack_1.global_60
  loc_AB7DD4: NewIfNullPr clsliquidacion
  loc_AB7DD7: from_stack_1 = clsliquidacion.EOF
  loc_AB7DDC: FLdI2 var_96
  loc_AB7DDF: NotI4
  loc_AB7DE0: BranchF loc_AB8082
  loc_AB7DE3: FLdRfVar var_1A4
  loc_AB7DE6: LitVarStr var_128, "ImpoLine"
  loc_AB7DEB: PopAdLdVar
  loc_AB7DEC: FLdRfVar var_1A0
  loc_AB7DEF: FLdRfVar var_19C
  loc_AB7DF2: FLdPr Me
  loc_AB7DF5: MemLdRfVar from_stack_1.global_60
  loc_AB7DF8: NewIfNullPr clsliquidacion
  loc_AB7DFB: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AB7E00: FLdPr var_19C
  loc_AB7E03:  = Me.Fields
  loc_AB7E08: FLdPr var_1A0
  loc_AB7E0B: from_stack_2 = Me.Item(from_stack_1)
  loc_AB7E10: FLdRfVar var_210
  loc_AB7E13: FLdRfVar var_200
  loc_AB7E16: LitVarStr var_184, "CodiRete"
  loc_AB7E1B: PopAdLdVar
  loc_AB7E1C: FLdRfVar var_1FC
  loc_AB7E1F: FLdRfVar var_1F8
  loc_AB7E22: FLdPr Me
  loc_AB7E25: MemLdRfVar from_stack_1.global_60
  loc_AB7E28: NewIfNullPr clsliquidacion
  loc_AB7E2B: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AB7E30: FLdPr var_1F8
  loc_AB7E33:  = Me.Fields
  loc_AB7E38: FLdPr var_1FC
  loc_AB7E3B: from_stack_2 = Me.Item(from_stack_1)
  loc_AB7E40: FLdPr var_200
  loc_AB7E43:  = Me.Value
  loc_AB7E48: FLdRfVar var_E8
  loc_AB7E4B: FLdRfVar var_C8
  loc_AB7E4E: LitVarStr var_C4, "CucuPers"
  loc_AB7E53: PopAdLdVar
  loc_AB7E54: FLdRfVar var_B4
  loc_AB7E57: FLdRfVar var_90
  loc_AB7E5A: FLdPr Me
  loc_AB7E5D: MemLdRfVar from_stack_1.global_60
  loc_AB7E60: NewIfNullPr clsliquidacion
  loc_AB7E63: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AB7E68: FLdPr var_90
  loc_AB7E6B:  = Me.Fields
  loc_AB7E70: FLdPr var_B4
  loc_AB7E73: from_stack_2 = Me.Item(from_stack_1)
  loc_AB7E78: FLdPr var_C8
  loc_AB7E7B:  = Me.Value
  loc_AB7E80: FLdRfVar var_E8
  loc_AB7E83: LitI4 9
  loc_AB7E88: FLdRfVar var_D8
  loc_AB7E8B: ImpAdCallFPR4  = Chr()
  loc_AB7E90: FLdRfVar var_D8
  loc_AB7E93: ConcatVar var_F8
  loc_AB7E97: FLdRfVar var_118
  loc_AB7E9A: FLdRfVar var_154
  loc_AB7E9D: LitVarStr var_108, "DetaProv"
  loc_AB7EA2: PopAdLdVar
  loc_AB7EA3: FLdRfVar var_140
  loc_AB7EA6: FLdRfVar var_13C
  loc_AB7EA9: FLdPr Me
  loc_AB7EAC: MemLdRfVar from_stack_1.global_60
  loc_AB7EAF: NewIfNullPr clsliquidacion
  loc_AB7EB2: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AB7EB7: FLdPr var_13C
  loc_AB7EBA:  = Me.Fields
  loc_AB7EBF: FLdPr var_140
  loc_AB7EC2: from_stack_2 = Me.Item(from_stack_1)
  loc_AB7EC7: FLdPr var_154
  loc_AB7ECA:  = Me.Value
  loc_AB7ECF: FLdRfVar var_118
  loc_AB7ED2: ConcatVar var_138
  loc_AB7ED6: LitI4 9
  loc_AB7EDB: FLdRfVar var_164
  loc_AB7EDE: ImpAdCallFPR4  = Chr()
  loc_AB7EE3: FLdRfVar var_164
  loc_AB7EE6: ConcatVar var_174
  loc_AB7EEA: LitI4 1
  loc_AB7EEF: LitI4 1
  loc_AB7EF4: LitVarStr var_150, "currency"
  loc_AB7EF9: FStVarCopyObj var_1B4
  loc_AB7EFC: FLdRfVar var_1B4
  loc_AB7EFF: FLdZeroAd var_1A4
  loc_AB7F02: CVarAd
  loc_AB7F06: ImpAdCallI2 Format$(, )
  loc_AB7F0B: CVarStr var_1C4
  loc_AB7F0E: ConcatVar var_1D4
  loc_AB7F12: LitI4 9
  loc_AB7F17: FLdRfVar var_1E4
  loc_AB7F1A: ImpAdCallFPR4  = Chr()
  loc_AB7F1F: FLdRfVar var_1E4
  loc_AB7F22: ConcatVar var_1F4
  loc_AB7F26: LitVarStr var_250, "Retención"
  loc_AB7F2B: FStVarCopyObj var_260
  loc_AB7F2E: FLdRfVar var_260
  loc_AB7F31: LitVarStr var_230, "Cheque"
  loc_AB7F36: FStVarCopyObj var_240
  loc_AB7F39: FLdRfVar var_240
  loc_AB7F3C: FLdRfVar var_210
  loc_AB7F3F: FnCIntVar
  loc_AB7F41: LitI2_Byte 0
  loc_AB7F43: EqI2
  loc_AB7F44: CVarBoolI2 var_220
  loc_AB7F48: FLdRfVar var_270
  loc_AB7F4B: ImpAdCallFPR4  = IIf(, , )
  loc_AB7F50: FLdRfVar var_270
  loc_AB7F53: ConcatVar var_280
  loc_AB7F57: LitI4 9
  loc_AB7F5C: FLdRfVar var_290
  loc_AB7F5F: ImpAdCallFPR4  = Chr()
  loc_AB7F64: FLdRfVar var_290
  loc_AB7F67: ConcatVar var_2A0
  loc_AB7F6B: FLdRfVar var_2CC
  loc_AB7F6E: FLdRfVar var_2BC
  loc_AB7F71: LitVarStr var_2B8, "DetaRete"
  loc_AB7F76: PopAdLdVar
  loc_AB7F77: FLdRfVar var_2A8
  loc_AB7F7A: FLdRfVar var_2A4
  loc_AB7F7D: FLdPr Me
  loc_AB7F80: MemLdRfVar from_stack_1.global_60
  loc_AB7F83: NewIfNullPr clsliquidacion
  loc_AB7F86: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AB7F8B: FLdPr var_2A4
  loc_AB7F8E:  = Me.Fields
  loc_AB7F93: FLdPr var_2A8
  loc_AB7F96: from_stack_2 = Me.Item(from_stack_1)
  loc_AB7F9B: FLdPr var_2BC
  loc_AB7F9E:  = Me.Value
  loc_AB7FA3: FLdRfVar var_2CC
  loc_AB7FA6: ConcatVar var_2DC
  loc_AB7FAA: CStrVarTmp
  loc_AB7FAB: CVarStr var_2EC
  loc_AB7FAE: PopAdLdVar
  loc_AB7FAF: FLdPr Me
  loc_AB7FB2: VCallAd Control_ID_LiquidaNetoFlex
  loc_AB7FB5: FStAdFunc var_300
  loc_AB7FB8: FLdPr var_300
  loc_AB7FBB: LateIdCall
  loc_AB7FC3: FFreeAd var_90 = "": var_B4 = "": var_C8 = "": var_13C = "": var_140 = "": var_154 = "": var_19C = "": var_1A0 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_2A4 = "": var_2A8 = "": var_2BC = ""
  loc_AB7FE4: FFreeVar var_E8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_164 = "": var_194 = "": var_1B4 = "": var_174 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_210 = "": var_220 = "": var_240 = "": var_260 = "": var_1F4 = "": var_270 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2CC = "": var_2DC = ""
  loc_AB8017: FLdFPR8 var_8C
  loc_AB801A: CVarR8
  loc_AB801E: FLdRfVar var_D8
  loc_AB8021: FLdRfVar var_C8
  loc_AB8024: LitVarStr var_C4, "ImpoLine"
  loc_AB8029: PopAdLdVar
  loc_AB802A: FLdRfVar var_B4
  loc_AB802D: FLdRfVar var_90
  loc_AB8030: FLdPr Me
  loc_AB8033: MemLdRfVar from_stack_1.global_60
  loc_AB8036: NewIfNullPr clsliquidacion
  loc_AB8039: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AB803E: FLdPr var_90
  loc_AB8041:  = Me.Fields
  loc_AB8046: FLdPr var_B4
  loc_AB8049: from_stack_2 = Me.Item(from_stack_1)
  loc_AB804E: FLdPr var_C8
  loc_AB8051:  = Me.Value
  loc_AB8056: FLdRfVar var_D8
  loc_AB8059: AddVar var_E8
  loc_AB805D: CR4Var
  loc_AB805E: FStFPR8 var_8C
  loc_AB8061: FFreeAd var_90 = "": var_B4 = ""
  loc_AB806A: FFreeVar var_D8 = ""
  loc_AB8071: FLdPr Me
  loc_AB8074: MemLdRfVar from_stack_1.global_60
  loc_AB8077: NewIfNullPr clsliquidacion
  loc_AB807A: Call clsliquidacion.MoveSiguiente()
  loc_AB807F: Branch loc_AB7DCB
  loc_AB8082: LitI4 1
  loc_AB8087: LitI4 1
  loc_AB808C: LitVarStr var_108, "###,###,##0.00"
  loc_AB8091: FStVarCopyObj var_D8
  loc_AB8094: FLdRfVar var_D8
  loc_AB8097: FLdRfVar var_8C
  loc_AB809A: CVarRef
  loc_AB809F: FLdRfVar var_E8
  loc_AB80A2: ImpAdCallFPR4  = Format(, )
  loc_AB80A7: FLdRfVar var_E8
  loc_AB80AA: CStrVarVal var_9C
  loc_AB80AE: FLdPr Me
  loc_AB80B1: VCallAd Control_ID_lblTotalMP
  loc_AB80B4: FStAdFunc var_90
  loc_AB80B7: FLdPr var_90
  loc_AB80BA: Me.Caption = from_stack_1
  loc_AB80BF: FFree1Str var_9C
  loc_AB80C2: FFree1Ad var_90
  loc_AB80C5: FFreeVar var_D8 = ""
  loc_AB80CC: Branch loc_AB80EB
  loc_AB80CF: Call Proc_129_16_9C8730()
  loc_AB80D4: LitStr vbNullString
  loc_AB80D7: FLdPr Me
  loc_AB80DA: VCallAd Control_ID_lblTotalMP
  loc_AB80DD: FStAdFunc var_90
  loc_AB80E0: FLdPr var_90
  loc_AB80E3: Me.Caption = from_stack_1
  loc_AB80E8: FFree1Ad var_90
  loc_AB80EB: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BDC08C
  'Data Table: 441C80
  loc_BDA964: ILdRf Button
  loc_BDA967: FStAd var_88 
  loc_BDA96B: FLdRfVar var_90
  loc_BDA96E: FLdPr var_88
  loc_BDA971:  = Me.Key
  loc_BDA976: FLdZeroAd var_90
  loc_BDA979: FStStr var_94
  loc_BDA97C: ILdRf var_94
  loc_BDA97F: LitStr "btnCrear"
  loc_BDA982: EqStr
  loc_BDA984: BranchF loc_BDAD63
  loc_BDA987: FLdRfVar var_9C
  loc_BDA98A: FLdRfVar var_98
  loc_BDA98D: FLdPr Me
  loc_BDA990: MemLdRfVar from_stack_1.global_56
  loc_BDA993: NewIfNullPr clsliquidacion
  loc_BDA996: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDA99B: FLdPr var_98
  loc_BDA99E:  = Me.RecordCount
  loc_BDA9A3: ILdRf var_9C
  loc_BDA9A6: LitI4 0
  loc_BDA9AB: GtI4
  loc_BDA9AC: FFree1Ad var_98
  loc_BDA9AF: BranchF loc_BDAD60
  loc_BDA9B2: FLdRfVar var_E0
  loc_BDA9B5: FLdRfVar var_B4
  loc_BDA9B8: LitVarStr var_B0, "ExpeImpu"
  loc_BDA9BD: PopAdLdVar
  loc_BDA9BE: FLdRfVar var_A0
  loc_BDA9C1: FLdRfVar var_98
  loc_BDA9C4: FLdPr Me
  loc_BDA9C7: MemLdRfVar from_stack_1.global_56
  loc_BDA9CA: NewIfNullPr clsliquidacion
  loc_BDA9CD: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDA9D2: FLdPr var_98
  loc_BDA9D5:  = Me.Fields
  loc_BDA9DA: FLdPr var_A0
  loc_BDA9DD: from_stack_2 = Me.Item(from_stack_1)
  loc_BDA9E2: FLdPr var_B4
  loc_BDA9E5:  = Me.Value
  loc_BDA9EA: FLdRfVar var_F0
  loc_BDA9ED: FLdRfVar var_D0
  loc_BDA9F0: LitVarStr var_CC, "NumeLiqu"
  loc_BDA9F5: PopAdLdVar
  loc_BDA9F6: FLdRfVar var_BC
  loc_BDA9F9: FLdRfVar var_B8
  loc_BDA9FC: FLdPr Me
  loc_BDA9FF: MemLdRfVar from_stack_1.global_56
  loc_BDAA02: NewIfNullPr clsliquidacion
  loc_BDAA05: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDAA0A: FLdPr var_B8
  loc_BDAA0D:  = Me.Fields
  loc_BDAA12: FLdPr var_BC
  loc_BDAA15: from_stack_2 = Me.Item(from_stack_1)
  loc_BDAA1A: FLdPr var_D0
  loc_BDAA1D:  = Me.Value
  loc_BDAA22: FLdPr Me
  loc_BDAA25: MemLdRfVar from_stack_1.global_84
  loc_BDAA28: NewIfNullRf
  loc_BDAA2C: FLdRfVar var_F0
  loc_BDAA2F: CStrVarTmp
  loc_BDAA30: FStStrNoPop var_F4
  loc_BDAA33: FLdRfVar var_E0
  loc_BDAA36: CStrVarTmp
  loc_BDAA37: FStStrNoPop var_90
  loc_BDAA3A: ImpAdCallI2 Proc_259_30_AE3D34(, , )
  loc_BDAA3F: FFreeStr var_90 = ""
  loc_BDAA46: FFreeAd var_98 = "": var_A0 = "": var_B8 = "": var_BC = "": var_B4 = ""
  loc_BDAA55: FFreeVar var_E0 = ""
  loc_BDAA5C: BranchF loc_BDAD3C
  loc_BDAA5F: FLdRfVar var_90
  loc_BDAA62: FLdPr Me
  loc_BDAA65: MemLdRfVar from_stack_1.global_84
  loc_BDAA68: NewIfNullPr tblliquidacion
  loc_BDAA6B: from_stack_1v = tblliquidacion.NumeOrpaGet()
  loc_BDAA70: ILdRf var_90
  loc_BDAA73: LitStr "0"
  loc_BDAA76: NeStr
  loc_BDAA78: FFree1Str var_90
  loc_BDAA7B: BranchF loc_BDAAAD
  loc_BDAA7E: LitI4 0
  loc_BDAA83: LitStr "La Liquidación se encuentra en la OP: "
  loc_BDAA86: FLdRfVar var_90
  loc_BDAA89: FLdPr Me
  loc_BDAA8C: MemLdRfVar from_stack_1.global_84
  loc_BDAA8F: NewIfNullPr tblliquidacion
  loc_BDAA92: from_stack_1v = tblliquidacion.NumeOrpaGet()
  loc_BDAA97: ILdRf var_90
  loc_BDAA9A: ConcatStr
  loc_BDAA9B: FStStrNoPop var_F4
  loc_BDAA9E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDAAA3: FFreeStr var_90 = ""
  loc_BDAAAA: Branch loc_BDAD39
  loc_BDAAAD: LitI2_Byte 1
  loc_BDAAAF: FLdPr Me
  loc_BDAAB2: MemStUI1
  loc_BDAAB6: ILdRf Me
  loc_BDAAB9: CastAd
  loc_BDAABC: FStAdFunc var_98
  loc_BDAABF: FLdRfVar var_98
  loc_BDAAC2: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BDAAC7: FFree1Ad var_98
  loc_BDAACA: LitI4 0
  loc_BDAACF: LitI4 0
  loc_BDAAD4: FLdRfVar var_F8
  loc_BDAAD7: Redim
  loc_BDAAE1: FLdPr Me
  loc_BDAAE4: VCallAd Control_ID_dgdABMS
  loc_BDAAE7: CVarAd
  loc_BDAAEB: ParmAry1St
  loc_BDAAF1: FLdRfVar var_F8
  loc_BDAAF4: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BDAAF9: FLdRfVar var_F8
  loc_BDAAFC: Erase
  loc_BDAAFD: ILdRf Me
  loc_BDAB00: CastAd
  loc_BDAB03: FStAdFunc var_98
  loc_BDAB06: FLdRfVar var_98
  loc_BDAB09: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_BDAB0E: FFree1Ad var_98
  loc_BDAB11: ILdRf Me
  loc_BDAB14: CastAd
  loc_BDAB17: FStAdFunc var_98
  loc_BDAB1A: FLdRfVar var_98
  loc_BDAB1D: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_BDAB22: FFree1Ad var_98
  loc_BDAB25: FLdRfVar var_E0
  loc_BDAB28: FLdRfVar var_B4
  loc_BDAB2B: LitVarStr var_B0, "ExpeImpu"
  loc_BDAB30: PopAdLdVar
  loc_BDAB31: FLdRfVar var_A0
  loc_BDAB34: FLdRfVar var_98
  loc_BDAB37: FLdPr Me
  loc_BDAB3A: MemLdRfVar from_stack_1.global_56
  loc_BDAB3D: NewIfNullPr clsliquidacion
  loc_BDAB40: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDAB45: FLdPr var_98
  loc_BDAB48:  = Me.Fields
  loc_BDAB4D: FLdPr var_A0
  loc_BDAB50: from_stack_2 = Me.Item(from_stack_1)
  loc_BDAB55: FLdPr var_B4
  loc_BDAB58:  = Me.Value
  loc_BDAB5D: FLdRfVar var_F0
  loc_BDAB60: FLdRfVar var_D0
  loc_BDAB63: LitVarStr var_CC, "NumeLiqu"
  loc_BDAB68: PopAdLdVar
  loc_BDAB69: FLdRfVar var_BC
  loc_BDAB6C: FLdRfVar var_B8
  loc_BDAB6F: FLdPr Me
  loc_BDAB72: MemLdRfVar from_stack_1.global_56
  loc_BDAB75: NewIfNullPr clsliquidacion
  loc_BDAB78: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDAB7D: FLdPr var_B8
  loc_BDAB80:  = Me.Fields
  loc_BDAB85: FLdPr var_BC
  loc_BDAB88: from_stack_2 = Me.Item(from_stack_1)
  loc_BDAB8D: FLdPr var_D0
  loc_BDAB90:  = Me.Value
  loc_BDAB95: FLdRfVar var_F4
  loc_BDAB98: FLdRfVar var_F0
  loc_BDAB9B: CI2Var
  loc_BDAB9C: FLdRfVar var_E0
  loc_BDAB9F: CStrVarTmp
  loc_BDABA0: FStStrNoPop var_90
  loc_BDABA3: ImpAdLdI2 MemVar_C3D064
  loc_BDABA6: FLdPr Me
  loc_BDABA9: MemLdRfVar from_stack_1.global_56
  loc_BDABAC: NewIfNullPr clsliquidacion
  loc_BDABAF: from_stack_4v = clsliquidacion.UltimaFechOrpa(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BDABB4: FLdZeroAd var_F4
  loc_BDABB7: CVarStr var_108
  loc_BDABBA: PopAdLdVar
  loc_BDABBB: FLdPr Me
  loc_BDABBE: VCallAd Control_ID_FechLiquMsk
  loc_BDABC1: FStAdFunc var_11C
  loc_BDABC4: FLdPr var_11C
  loc_BDABC7: LateIdSt
  loc_BDABCC: FFree1Str var_90
  loc_BDABCF: FFreeAd var_98 = "": var_A0 = "": var_B8 = "": var_BC = "": var_B4 = "": var_D0 = ""
  loc_BDABE0: FFreeVar var_E0 = "": var_F0 = ""
  loc_BDABE9: FLdPr Me
  loc_BDABEC: VCallAd Control_ID_FechLiquMsk
  loc_BDABEF: FStAdFunc var_98
  loc_BDABF2: FLdPr var_98
  loc_BDABF5: LateIdLdVar var_E0 DispID_11 -32767
  loc_BDABFC: CStrVarTmp
  loc_BDABFD: CVarStr var_F0
  loc_BDAC00: PopAdLdVar
  loc_BDAC01: FLdPr Me
  loc_BDAC04: VCallAd Control_ID_FechLiquMsk
  loc_BDAC07: FStAdFunc var_A0
  loc_BDAC0A: FLdPr var_A0
  loc_BDAC0D: LateIdSt
  loc_BDAC12: FFreeAd var_98 = ""
  loc_BDAC19: FFreeVar var_E0 = ""
  loc_BDAC20: ImpAdLdFPR8 MemVar_C3D04C
  loc_BDAC23: CStrDate
  loc_BDAC25: CVarStr var_E0
  loc_BDAC28: PopAdLdVar
  loc_BDAC29: FLdPr Me
  loc_BDAC2C: VCallAd Control_ID_FechLiquMsk
  loc_BDAC2F: FStAdFunc var_98
  loc_BDAC32: FLdPr var_98
  loc_BDAC35: LateIdSt
  loc_BDAC3A: FFree1Ad var_98
  loc_BDAC3D: FFree1Var var_E0 = ""
  loc_BDAC40: FLdRfVar var_E0
  loc_BDAC43: FLdRfVar var_B4
  loc_BDAC46: LitVarStr var_B0, "DetaLiqu"
  loc_BDAC4B: PopAdLdVar
  loc_BDAC4C: FLdRfVar var_A0
  loc_BDAC4F: FLdRfVar var_98
  loc_BDAC52: FLdPr Me
  loc_BDAC55: MemLdRfVar from_stack_1.global_56
  loc_BDAC58: NewIfNullPr clsliquidacion
  loc_BDAC5B: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDAC60: FLdPr var_98
  loc_BDAC63:  = Me.Fields
  loc_BDAC68: FLdPr var_A0
  loc_BDAC6B: from_stack_2 = Me.Item(from_stack_1)
  loc_BDAC70: FLdPr var_B4
  loc_BDAC73:  = Me.Value
  loc_BDAC78: FLdRfVar var_E0
  loc_BDAC7B: CStrVarTmp
  loc_BDAC7C: FStStrNoPop var_90
  loc_BDAC7F: FLdPr Me
  loc_BDAC82: VCallAd Control_ID_DetaLiquTxt
  loc_BDAC85: FStAdFunc var_B8
  loc_BDAC88: FLdPr var_B8
  loc_BDAC8B: Me.Text = from_stack_1
  loc_BDAC90: FFree1Str var_90
  loc_BDAC93: FFreeAd var_98 = "": var_A0 = "": var_B4 = ""
  loc_BDAC9E: FFree1Var var_E0 = ""
  loc_BDACA1: FLdRfVar var_11E
  loc_BDACA4: ImpAdLdI2 MemVar_C3D064
  loc_BDACA7: FLdPr Me
  loc_BDACAA: MemLdRfVar from_stack_1.global_56
  loc_BDACAD: NewIfNullPr clsliquidacion
  loc_BDACB0: from_stack_2v = clsliquidacion.UltimoMesOP(from_stack_1v)
  loc_BDACB5: FLdUI1
  loc_BDACB9: CVarUI1
  loc_BDACBD: HardType
  loc_BDACBE: ImpAdLdRf MemVar_C3D04C
  loc_BDACC1: CVarRef
  loc_BDACC6: FLdRfVar var_E0
  loc_BDACC9: ImpAdCallFPR4  = Month()
  loc_BDACCE: FLdRfVar var_E0
  loc_BDACD1: NeVarBool
  loc_BDACD3: FFree1Var var_E0 = ""
  loc_BDACD6: BranchF loc_BDACE6
  loc_BDACD9: LitI4 0
  loc_BDACDE: LitStr "Recuerde RESERVAR las órdenes de pago de fin de mes..."
  loc_BDACE1: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDACE6: LitI4 0
  loc_BDACEB: LitI4 2
  loc_BDACF0: FLdRfVar var_F8
  loc_BDACF3: Redim
  loc_BDACFD: FLdPr Me
  loc_BDAD00: VCallAd Control_ID_FechLiquMsk
  loc_BDAD03: CVarAd
  loc_BDAD07: ParmAry1St
  loc_BDAD0D: FLdPr Me
  loc_BDAD10: VCallAd Control_ID_DetaLiquTxt
  loc_BDAD13: CVarAd
  loc_BDAD17: ParmAry1St
  loc_BDAD1D: FLdPr Me
  loc_BDAD20: VCallAd Control_ID_LiquidaNetoFlex
  loc_BDAD23: CVarAd
  loc_BDAD27: ParmAry1St
  loc_BDAD2D: FLdRfVar var_F8
  loc_BDAD30: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BDAD35: FLdRfVar var_F8
  loc_BDAD38: Erase
  loc_BDAD39: Branch loc_BDAD5D
  loc_BDAD3C: LitI4 0
  loc_BDAD41: FLdRfVar var_90
  loc_BDAD44: FLdPr Me
  loc_BDAD47: MemLdRfVar from_stack_1.global_84
  loc_BDAD4A: NewIfNullPr tblliquidacion
  loc_BDAD4D: from_stack_1v = tblliquidacion.MsgErrorGet()
  loc_BDAD52: ILdRf var_90
  loc_BDAD55: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDAD5A: FFree1Str var_90
  loc_BDAD5D: Branch loc_BDAD60
  loc_BDAD60: Branch loc_BDC089
  loc_BDAD63: ILdRf var_94
  loc_BDAD66: LitStr "btnModificar"
  loc_BDAD69: EqStr
  loc_BDAD6B: BranchF loc_BDAE87
  loc_BDAD6E: FLdRfVar var_9C
  loc_BDAD71: FLdPr Me
  loc_BDAD74: MemLdRfVar from_stack_1.global_56
  loc_BDAD77: NewIfNullPr clsliquidacion
  loc_BDAD7A: from_stack_1 = clsliquidacion.RecordCount
  loc_BDAD7F: ILdRf var_9C
  loc_BDAD82: LitI4 0
  loc_BDAD87: EqI4
  loc_BDAD88: BranchF loc_BDAD8C
  loc_BDAD8B: ExitProcHresult
  loc_BDAD8C: LitI2_Byte 2
  loc_BDAD8E: FLdPr Me
  loc_BDAD91: MemStUI1
  loc_BDAD95: ILdRf Me
  loc_BDAD98: CastAd
  loc_BDAD9B: FStAdFunc var_98
  loc_BDAD9E: FLdRfVar var_98
  loc_BDADA1: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BDADA6: FFree1Ad var_98
  loc_BDADA9: LitI4 0
  loc_BDADAE: LitI4 0
  loc_BDADB3: FLdRfVar var_F8
  loc_BDADB6: Redim
  loc_BDADC0: FLdPr Me
  loc_BDADC3: VCallAd Control_ID_dgdABMS
  loc_BDADC6: CVarAd
  loc_BDADCA: ParmAry1St
  loc_BDADD0: FLdRfVar var_F8
  loc_BDADD3: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BDADD8: FLdRfVar var_F8
  loc_BDADDB: Erase
  loc_BDADDC: ILdRf Me
  loc_BDADDF: CastAd
  loc_BDADE2: FStAdFunc var_98
  loc_BDADE5: FLdRfVar var_98
  loc_BDADE8: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_BDADED: FFree1Ad var_98
  loc_BDADF0: FLdRfVar var_E0
  loc_BDADF3: FLdRfVar var_B4
  loc_BDADF6: LitVarStr var_B0, "DetaLiqu"
  loc_BDADFB: PopAdLdVar
  loc_BDADFC: FLdRfVar var_A0
  loc_BDADFF: FLdRfVar var_98
  loc_BDAE02: FLdPr Me
  loc_BDAE05: MemLdRfVar from_stack_1.global_56
  loc_BDAE08: NewIfNullPr clsliquidacion
  loc_BDAE0B: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDAE10: FLdPr var_98
  loc_BDAE13:  = Me.Fields
  loc_BDAE18: FLdPr var_A0
  loc_BDAE1B: from_stack_2 = Me.Item(from_stack_1)
  loc_BDAE20: FLdPr var_B4
  loc_BDAE23:  = Me.Value
  loc_BDAE28: FLdRfVar var_E0
  loc_BDAE2B: CStrVarTmp
  loc_BDAE2C: FStStrNoPop var_90
  loc_BDAE2F: FLdPr Me
  loc_BDAE32: VCallAd Control_ID_DetaLiquTxt
  loc_BDAE35: FStAdFunc var_B8
  loc_BDAE38: FLdPr var_B8
  loc_BDAE3B: Me.Text = from_stack_1
  loc_BDAE40: FFree1Str var_90
  loc_BDAE43: FFreeAd var_98 = "": var_A0 = "": var_B4 = ""
  loc_BDAE4E: FFree1Var var_E0 = ""
  loc_BDAE51: LitI4 0
  loc_BDAE56: LitI4 0
  loc_BDAE5B: FLdRfVar var_F8
  loc_BDAE5E: Redim
  loc_BDAE68: FLdPr Me
  loc_BDAE6B: VCallAd Control_ID_DetaLiquTxt
  loc_BDAE6E: CVarAd
  loc_BDAE72: ParmAry1St
  loc_BDAE78: FLdRfVar var_F8
  loc_BDAE7B: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BDAE80: FLdRfVar var_F8
  loc_BDAE83: Erase
  loc_BDAE84: Branch loc_BDC089
  loc_BDAE87: ILdRf var_94
  loc_BDAE8A: LitStr "btnEliminar"
  loc_BDAE8D: EqStr
  loc_BDAE8F: BranchF loc_BDB72A
  loc_BDAE92: FLdRfVar var_9C
  loc_BDAE95: FLdPr Me
  loc_BDAE98: MemLdRfVar from_stack_1.global_56
  loc_BDAE9B: NewIfNullPr clsliquidacion
  loc_BDAE9E: from_stack_1 = clsliquidacion.RecordCount
  loc_BDAEA3: ILdRf var_9C
  loc_BDAEA6: LitI4 0
  loc_BDAEAB: GtI4
  loc_BDAEAC: BranchF loc_BDB727
  loc_BDAEAF: FLdRfVar var_E0
  loc_BDAEB2: FLdRfVar var_B4
  loc_BDAEB5: LitVarStr var_B0, "ExpeImpu"
  loc_BDAEBA: PopAdLdVar
  loc_BDAEBB: FLdRfVar var_A0
  loc_BDAEBE: FLdRfVar var_98
  loc_BDAEC1: FLdPr Me
  loc_BDAEC4: MemLdRfVar from_stack_1.global_56
  loc_BDAEC7: NewIfNullPr clsliquidacion
  loc_BDAECA: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDAECF: FLdPr var_98
  loc_BDAED2:  = Me.Fields
  loc_BDAED7: FLdPr var_A0
  loc_BDAEDA: from_stack_2 = Me.Item(from_stack_1)
  loc_BDAEDF: FLdPr var_B4
  loc_BDAEE2:  = Me.Value
  loc_BDAEE7: FLdRfVar var_F0
  loc_BDAEEA: FLdRfVar var_D0
  loc_BDAEED: LitVarStr var_CC, "NumeLiqu"
  loc_BDAEF2: PopAdLdVar
  loc_BDAEF3: FLdRfVar var_BC
  loc_BDAEF6: FLdRfVar var_B8
  loc_BDAEF9: FLdPr Me
  loc_BDAEFC: MemLdRfVar from_stack_1.global_56
  loc_BDAEFF: NewIfNullPr clsliquidacion
  loc_BDAF02: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDAF07: FLdPr var_B8
  loc_BDAF0A:  = Me.Fields
  loc_BDAF0F: FLdPr var_BC
  loc_BDAF12: from_stack_2 = Me.Item(from_stack_1)
  loc_BDAF17: FLdPr var_D0
  loc_BDAF1A:  = Me.Value
  loc_BDAF1F: FLdRfVar var_11E
  loc_BDAF22: FLdRfVar var_F0
  loc_BDAF25: CI2Var
  loc_BDAF26: FLdRfVar var_E0
  loc_BDAF29: CStrVarTmp
  loc_BDAF2A: FStStrNoPop var_90
  loc_BDAF2D: FLdPr Me
  loc_BDAF30: MemLdRfVar from_stack_1.global_56
  loc_BDAF33: NewIfNullPr clsliquidacion
  loc_BDAF36: from_stack_3v = clsliquidacion.ValidaEliminar(from_stack_1v, from_stack_2v)
  loc_BDAF3B: FLdI2 var_11E
  loc_BDAF3E: FFree1Str var_90
  loc_BDAF41: FFreeAd var_98 = "": var_A0 = "": var_B8 = "": var_BC = "": var_B4 = ""
  loc_BDAF50: FFreeVar var_E0 = ""
  loc_BDAF57: BranchF loc_BDB212
  loc_BDAF5A: FLdRfVar var_E0
  loc_BDAF5D: FLdRfVar var_B4
  loc_BDAF60: LitVarStr var_B0, "ExpeImpu"
  loc_BDAF65: PopAdLdVar
  loc_BDAF66: FLdRfVar var_A0
  loc_BDAF69: FLdRfVar var_98
  loc_BDAF6C: FLdPr Me
  loc_BDAF6F: MemLdRfVar from_stack_1.global_56
  loc_BDAF72: NewIfNullPr clsliquidacion
  loc_BDAF75: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDAF7A: FLdPr var_98
  loc_BDAF7D:  = Me.Fields
  loc_BDAF82: FLdPr var_A0
  loc_BDAF85: from_stack_2 = Me.Item(from_stack_1)
  loc_BDAF8A: FLdPr var_B4
  loc_BDAF8D:  = Me.Value
  loc_BDAF92: FLdRfVar var_144
  loc_BDAF95: FLdRfVar var_D0
  loc_BDAF98: LitVarStr var_134, "NumeLiqu"
  loc_BDAF9D: PopAdLdVar
  loc_BDAF9E: FLdRfVar var_BC
  loc_BDAFA1: FLdRfVar var_B8
  loc_BDAFA4: FLdPr Me
  loc_BDAFA7: MemLdRfVar from_stack_1.global_56
  loc_BDAFAA: NewIfNullPr clsliquidacion
  loc_BDAFAD: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDAFB2: FLdPr var_B8
  loc_BDAFB5:  = Me.Fields
  loc_BDAFBA: FLdPr var_BC
  loc_BDAFBD: from_stack_2 = Me.Item(from_stack_1)
  loc_BDAFC2: FLdPr var_D0
  loc_BDAFC5:  = Me.Value
  loc_BDAFCA: LitI2_Byte 0
  loc_BDAFCC: PopTmpLdAd2 var_176
  loc_BDAFCF: LitI2_Byte &HFF
  loc_BDAFD1: PopTmpLdAd2 var_11E
  loc_BDAFD4: LitVarStr var_CC, "¿Desea ELIMINAR la Liquidación del Expediente "
  loc_BDAFD9: FLdRfVar var_E0
  loc_BDAFDC: ConcatVar var_F0
  loc_BDAFE0: LitVarStr var_118, " - Número: "
  loc_BDAFE5: ConcatVar var_108
  loc_BDAFE9: FLdRfVar var_144
  loc_BDAFEC: ConcatVar var_154
  loc_BDAFF0: LitVarStr var_164, " ?"
  loc_BDAFF5: ConcatVar var_174
  loc_BDAFF9: CStrVarVal var_90
  loc_BDAFFD: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BDB002: CI4UI1
  loc_BDB003: LitI4 6
  loc_BDB008: EqI4
  loc_BDB009: FFree1Str var_90
  loc_BDB00C: FFreeAd var_98 = "": var_A0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_BDB01B: FFreeVar var_E0 = "": var_F0 = "": var_108 = "": var_144 = "": var_154 = ""
  loc_BDB02A: BranchF loc_BDB20F
  loc_BDB02D: FLdRfVar var_E0
  loc_BDB030: FLdRfVar var_B4
  loc_BDB033: LitVarStr var_B0, "ExpeImpu"
  loc_BDB038: PopAdLdVar
  loc_BDB039: FLdRfVar var_A0
  loc_BDB03C: FLdRfVar var_98
  loc_BDB03F: FLdPr Me
  loc_BDB042: MemLdRfVar from_stack_1.global_56
  loc_BDB045: NewIfNullPr clsliquidacion
  loc_BDB048: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB04D: FLdPr var_98
  loc_BDB050:  = Me.Fields
  loc_BDB055: FLdPr var_A0
  loc_BDB058: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB05D: FLdPr var_B4
  loc_BDB060:  = Me.Value
  loc_BDB065: FLdRfVar var_E0
  loc_BDB068: LitVarStr var_CC, " - Liq.: "
  loc_BDB06D: ConcatVar var_F0
  loc_BDB071: FLdRfVar var_108
  loc_BDB074: FLdRfVar var_D0
  loc_BDB077: LitVarStr var_118, "NumeLiqu"
  loc_BDB07C: PopAdLdVar
  loc_BDB07D: FLdRfVar var_BC
  loc_BDB080: FLdRfVar var_B8
  loc_BDB083: FLdPr Me
  loc_BDB086: MemLdRfVar from_stack_1.global_56
  loc_BDB089: NewIfNullPr clsliquidacion
  loc_BDB08C: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB091: FLdPr var_B8
  loc_BDB094:  = Me.Fields
  loc_BDB099: FLdPr var_BC
  loc_BDB09C: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB0A1: FLdPr var_D0
  loc_BDB0A4:  = Me.Value
  loc_BDB0A9: FLdRfVar var_108
  loc_BDB0AC: ConcatVar var_144
  loc_BDB0B0: CStrVarTmp
  loc_BDB0B1: FStStr var_124
  loc_BDB0B4: FFreeAd var_98 = "": var_A0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_BDB0C3: FFreeVar var_E0 = "": var_F0 = "": var_108 = ""
  loc_BDB0CE: FLdRfVar var_E0
  loc_BDB0D1: FLdRfVar var_B4
  loc_BDB0D4: LitVarStr var_B0, "PeriInfo"
  loc_BDB0D9: PopAdLdVar
  loc_BDB0DA: FLdRfVar var_A0
  loc_BDB0DD: FLdRfVar var_98
  loc_BDB0E0: FLdPr Me
  loc_BDB0E3: MemLdRfVar from_stack_1.global_56
  loc_BDB0E6: NewIfNullPr clsliquidacion
  loc_BDB0E9: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB0EE: FLdPr var_98
  loc_BDB0F1:  = Me.Fields
  loc_BDB0F6: FLdPr var_A0
  loc_BDB0F9: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB0FE: FLdPr var_B4
  loc_BDB101:  = Me.Value
  loc_BDB106: FLdRfVar var_F0
  loc_BDB109: FLdRfVar var_D0
  loc_BDB10C: LitVarStr var_CC, "ExpeImpu"
  loc_BDB111: PopAdLdVar
  loc_BDB112: FLdRfVar var_BC
  loc_BDB115: FLdRfVar var_B8
  loc_BDB118: FLdPr Me
  loc_BDB11B: MemLdRfVar from_stack_1.global_56
  loc_BDB11E: NewIfNullPr clsliquidacion
  loc_BDB121: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB126: FLdPr var_B8
  loc_BDB129:  = Me.Fields
  loc_BDB12E: FLdPr var_BC
  loc_BDB131: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB136: FLdPr var_D0
  loc_BDB139:  = Me.Value
  loc_BDB13E: FLdRfVar var_108
  loc_BDB141: FLdRfVar var_180
  loc_BDB144: LitVarStr var_118, "NumeLiqu"
  loc_BDB149: PopAdLdVar
  loc_BDB14A: FLdRfVar var_17C
  loc_BDB14D: FLdRfVar var_11C
  loc_BDB150: FLdPr Me
  loc_BDB153: MemLdRfVar from_stack_1.global_56
  loc_BDB156: NewIfNullPr clsliquidacion
  loc_BDB159: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB15E: FLdPr var_11C
  loc_BDB161:  = Me.Fields
  loc_BDB166: FLdPr var_17C
  loc_BDB169: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB16E: FLdPr var_180
  loc_BDB171:  = Me.Value
  loc_BDB176: FLdRfVar var_144
  loc_BDB179: FLdRfVar var_18C
  loc_BDB17C: LitVarStr var_134, "TipoLiqu"
  loc_BDB181: PopAdLdVar
  loc_BDB182: FLdRfVar var_188
  loc_BDB185: FLdRfVar var_184
  loc_BDB188: FLdPr Me
  loc_BDB18B: MemLdRfVar from_stack_1.global_56
  loc_BDB18E: NewIfNullPr clsliquidacion
  loc_BDB191: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB196: FLdPr var_184
  loc_BDB199:  = Me.Fields
  loc_BDB19E: FLdPr var_188
  loc_BDB1A1: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB1A6: FLdPr var_18C
  loc_BDB1A9:  = Me.Value
  loc_BDB1AE: FLdRfVar var_144
  loc_BDB1B1: CI2Var
  loc_BDB1B2: FLdRfVar var_108
  loc_BDB1B5: CI2Var
  loc_BDB1B6: FLdRfVar var_F0
  loc_BDB1B9: CStrVarTmp
  loc_BDB1BA: FStStrNoPop var_90
  loc_BDB1BD: FLdRfVar var_E0
  loc_BDB1C0: CI2Var
  loc_BDB1C1: FLdPr Me
  loc_BDB1C4: MemLdRfVar from_stack_1.global_56
  loc_BDB1C7: NewIfNullPr clsliquidacion
  loc_BDB1CA: Call clsliquidacion.Eliminar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_BDB1CF: FFree1Str var_90
  loc_BDB1D2: FFreeAd var_98 = "": var_A0 = "": var_B8 = "": var_BC = "": var_11C = "": var_17C = "": var_184 = "": var_188 = "": var_B4 = "": var_D0 = "": var_180 = ""
  loc_BDB1ED: FFreeVar var_E0 = "": var_F0 = "": var_108 = ""
  loc_BDB1F8: LitI4 0
  loc_BDB1FD: LitStr "Se ELIMINO la Liquidación "
  loc_BDB200: ILdRf var_124
  loc_BDB203: ConcatStr
  loc_BDB204: FStStrNoPop var_90
  loc_BDB207: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDB20C: FFree1Str var_90
  loc_BDB20F: Branch loc_BDB70A
  loc_BDB212: FLdRfVar var_E0
  loc_BDB215: FLdRfVar var_B4
  loc_BDB218: LitVarStr var_B0, "ExpeImpu"
  loc_BDB21D: PopAdLdVar
  loc_BDB21E: FLdRfVar var_A0
  loc_BDB221: FLdRfVar var_98
  loc_BDB224: FLdPr Me
  loc_BDB227: MemLdRfVar from_stack_1.global_56
  loc_BDB22A: NewIfNullPr clsliquidacion
  loc_BDB22D: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB232: FLdPr var_98
  loc_BDB235:  = Me.Fields
  loc_BDB23A: FLdPr var_A0
  loc_BDB23D: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB242: FLdPr var_B4
  loc_BDB245:  = Me.Value
  loc_BDB24A: FLdRfVar var_F0
  loc_BDB24D: FLdRfVar var_D0
  loc_BDB250: LitVarStr var_CC, "NumeLiqu"
  loc_BDB255: PopAdLdVar
  loc_BDB256: FLdRfVar var_BC
  loc_BDB259: FLdRfVar var_B8
  loc_BDB25C: FLdPr Me
  loc_BDB25F: MemLdRfVar from_stack_1.global_56
  loc_BDB262: NewIfNullPr clsliquidacion
  loc_BDB265: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB26A: FLdPr var_B8
  loc_BDB26D:  = Me.Fields
  loc_BDB272: FLdPr var_BC
  loc_BDB275: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB27A: FLdPr var_D0
  loc_BDB27D:  = Me.Value
  loc_BDB282: FLdRfVar var_F4
  loc_BDB285: FLdRfVar var_F0
  loc_BDB288: CI2Var
  loc_BDB289: FLdRfVar var_E0
  loc_BDB28C: CStrVarTmp
  loc_BDB28D: FStStrNoPop var_90
  loc_BDB290: FLdPr Me
  loc_BDB293: MemLdRfVar from_stack_1.global_56
  loc_BDB296: NewIfNullPr clsliquidacion
  loc_BDB299: from_stack_3v = clsliquidacion.ValidaAnular(from_stack_1v, from_stack_2v)
  loc_BDB29E: FLdZeroAd var_F4
  loc_BDB2A1: FStStr var_190
  loc_BDB2A4: FFree1Str var_90
  loc_BDB2A7: FFreeAd var_98 = "": var_A0 = "": var_B8 = "": var_BC = "": var_B4 = ""
  loc_BDB2B6: FFreeVar var_E0 = ""
  loc_BDB2BD: ILdRf var_190
  loc_BDB2C0: LitStr vbNullString
  loc_BDB2C3: EqStr
  loc_BDB2C5: BranchF loc_BDB58D
  loc_BDB2C8: FLdRfVar var_E0
  loc_BDB2CB: FLdRfVar var_B4
  loc_BDB2CE: LitVarStr var_B0, "ExpeImpu"
  loc_BDB2D3: PopAdLdVar
  loc_BDB2D4: FLdRfVar var_A0
  loc_BDB2D7: FLdRfVar var_98
  loc_BDB2DA: FLdPr Me
  loc_BDB2DD: MemLdRfVar from_stack_1.global_56
  loc_BDB2E0: NewIfNullPr clsliquidacion
  loc_BDB2E3: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB2E8: FLdPr var_98
  loc_BDB2EB:  = Me.Fields
  loc_BDB2F0: FLdPr var_A0
  loc_BDB2F3: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB2F8: FLdPr var_B4
  loc_BDB2FB:  = Me.Value
  loc_BDB300: FLdRfVar var_144
  loc_BDB303: FLdRfVar var_D0
  loc_BDB306: LitVarStr var_134, "NumeLiqu"
  loc_BDB30B: PopAdLdVar
  loc_BDB30C: FLdRfVar var_BC
  loc_BDB30F: FLdRfVar var_B8
  loc_BDB312: FLdPr Me
  loc_BDB315: MemLdRfVar from_stack_1.global_56
  loc_BDB318: NewIfNullPr clsliquidacion
  loc_BDB31B: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB320: FLdPr var_B8
  loc_BDB323:  = Me.Fields
  loc_BDB328: FLdPr var_BC
  loc_BDB32B: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB330: FLdPr var_D0
  loc_BDB333:  = Me.Value
  loc_BDB338: LitI2_Byte 0
  loc_BDB33A: PopTmpLdAd2 var_176
  loc_BDB33D: LitI2_Byte &HFF
  loc_BDB33F: PopTmpLdAd2 var_11E
  loc_BDB342: LitVarStr var_CC, "¿Desea ANULAR la Liquidación del Expediente "
  loc_BDB347: FLdRfVar var_E0
  loc_BDB34A: ConcatVar var_F0
  loc_BDB34E: LitVarStr var_118, " - Número: "
  loc_BDB353: ConcatVar var_108
  loc_BDB357: FLdRfVar var_144
  loc_BDB35A: ConcatVar var_154
  loc_BDB35E: LitVarStr var_164, " ?"
  loc_BDB363: ConcatVar var_174
  loc_BDB367: CStrVarVal var_90
  loc_BDB36B: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BDB370: CI4UI1
  loc_BDB371: LitI4 6
  loc_BDB376: EqI4
  loc_BDB377: FFree1Str var_90
  loc_BDB37A: FFreeAd var_98 = "": var_A0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_BDB389: FFreeVar var_E0 = "": var_F0 = "": var_108 = "": var_144 = "": var_154 = ""
  loc_BDB398: BranchF loc_BDB58A
  loc_BDB39B: FLdRfVar var_E0
  loc_BDB39E: FLdRfVar var_B4
  loc_BDB3A1: LitVarStr var_B0, "ExpeImpu"
  loc_BDB3A6: PopAdLdVar
  loc_BDB3A7: FLdRfVar var_A0
  loc_BDB3AA: FLdRfVar var_98
  loc_BDB3AD: FLdPr Me
  loc_BDB3B0: MemLdRfVar from_stack_1.global_56
  loc_BDB3B3: NewIfNullPr clsliquidacion
  loc_BDB3B6: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB3BB: FLdPr var_98
  loc_BDB3BE:  = Me.Fields
  loc_BDB3C3: FLdPr var_A0
  loc_BDB3C6: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB3CB: FLdPr var_B4
  loc_BDB3CE:  = Me.Value
  loc_BDB3D3: FLdRfVar var_F0
  loc_BDB3D6: FLdRfVar var_D0
  loc_BDB3D9: LitVarStr var_CC, "NumeLiqu"
  loc_BDB3DE: PopAdLdVar
  loc_BDB3DF: FLdRfVar var_BC
  loc_BDB3E2: FLdRfVar var_B8
  loc_BDB3E5: FLdPr Me
  loc_BDB3E8: MemLdRfVar from_stack_1.global_56
  loc_BDB3EB: NewIfNullPr clsliquidacion
  loc_BDB3EE: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB3F3: FLdPr var_B8
  loc_BDB3F6:  = Me.Fields
  loc_BDB3FB: FLdPr var_BC
  loc_BDB3FE: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB403: FLdPr var_D0
  loc_BDB406:  = Me.Value
  loc_BDB40B: FLdRfVar var_108
  loc_BDB40E: FLdRfVar var_180
  loc_BDB411: LitVarStr var_118, "FechLiqu"
  loc_BDB416: PopAdLdVar
  loc_BDB417: FLdRfVar var_17C
  loc_BDB41A: FLdRfVar var_11C
  loc_BDB41D: FLdPr Me
  loc_BDB420: MemLdRfVar from_stack_1.global_56
  loc_BDB423: NewIfNullPr clsliquidacion
  loc_BDB426: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB42B: FLdPr var_11C
  loc_BDB42E:  = Me.Fields
  loc_BDB433: FLdPr var_17C
  loc_BDB436: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB43B: FLdPr var_180
  loc_BDB43E:  = Me.Value
  loc_BDB443: FLdRfVar var_144
  loc_BDB446: FLdRfVar var_18C
  loc_BDB449: LitVarStr var_134, "TipoLiqu"
  loc_BDB44E: PopAdLdVar
  loc_BDB44F: FLdRfVar var_188
  loc_BDB452: FLdRfVar var_184
  loc_BDB455: FLdPr Me
  loc_BDB458: MemLdRfVar from_stack_1.global_56
  loc_BDB45B: NewIfNullPr clsliquidacion
  loc_BDB45E: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB463: FLdPr var_184
  loc_BDB466:  = Me.Fields
  loc_BDB46B: FLdPr var_188
  loc_BDB46E: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB473: FLdPr var_18C
  loc_BDB476:  = Me.Value
  loc_BDB47B: FLdRfVar var_144
  loc_BDB47E: CStrVarTmp
  loc_BDB47F: FStStrNoPop var_194
  loc_BDB482: FLdRfVar var_108
  loc_BDB485: CStrVarTmp
  loc_BDB486: FStStrNoPop var_F4
  loc_BDB489: FLdRfVar var_F0
  loc_BDB48C: CI2Var
  loc_BDB48D: FLdRfVar var_E0
  loc_BDB490: CStrVarTmp
  loc_BDB491: FStStrNoPop var_90
  loc_BDB494: FLdPr Me
  loc_BDB497: MemLdRfVar from_stack_1.global_56
  loc_BDB49A: NewIfNullPr clsliquidacion
  loc_BDB49D: Call clsliquidacion.Anular(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_BDB4A2: FFreeStr var_90 = "": var_F4 = ""
  loc_BDB4AB: FFreeAd var_98 = "": var_A0 = "": var_B8 = "": var_BC = "": var_11C = "": var_17C = "": var_184 = "": var_188 = "": var_B4 = "": var_D0 = "": var_180 = ""
  loc_BDB4C6: FFreeVar var_E0 = "": var_F0 = "": var_108 = ""
  loc_BDB4D1: LitI4 0
  loc_BDB4D6: LitVarStr var_CC, "Se ANULO la Liquidación: "
  loc_BDB4DB: FLdRfVar var_E0
  loc_BDB4DE: FLdRfVar var_B4
  loc_BDB4E1: LitVarStr var_B0, "ExpeImpu"
  loc_BDB4E6: PopAdLdVar
  loc_BDB4E7: FLdRfVar var_A0
  loc_BDB4EA: FLdRfVar var_98
  loc_BDB4ED: FLdPr Me
  loc_BDB4F0: MemLdRfVar from_stack_1.global_56
  loc_BDB4F3: NewIfNullPr clsliquidacion
  loc_BDB4F6: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB4FB: FLdPr var_98
  loc_BDB4FE:  = Me.Fields
  loc_BDB503: FLdPr var_A0
  loc_BDB506: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB50B: FLdPr var_B4
  loc_BDB50E:  = Me.Value
  loc_BDB513: FLdRfVar var_E0
  loc_BDB516: ConcatVar var_F0
  loc_BDB51A: LitVarStr var_118, " - Número: "
  loc_BDB51F: ConcatVar var_108
  loc_BDB523: FLdRfVar var_144
  loc_BDB526: FLdRfVar var_D0
  loc_BDB529: LitVarStr var_134, "NumeLiqu"
  loc_BDB52E: PopAdLdVar
  loc_BDB52F: FLdRfVar var_BC
  loc_BDB532: FLdRfVar var_B8
  loc_BDB535: FLdPr Me
  loc_BDB538: MemLdRfVar from_stack_1.global_56
  loc_BDB53B: NewIfNullPr clsliquidacion
  loc_BDB53E: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB543: FLdPr var_B8
  loc_BDB546:  = Me.Fields
  loc_BDB54B: FLdPr var_BC
  loc_BDB54E: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB553: FLdPr var_D0
  loc_BDB556:  = Me.Value
  loc_BDB55B: FLdRfVar var_144
  loc_BDB55E: ConcatVar var_154
  loc_BDB562: CStrVarVal var_90
  loc_BDB566: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDB56B: FFree1Str var_90
  loc_BDB56E: FFreeAd var_98 = "": var_A0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_BDB57D: FFreeVar var_E0 = "": var_F0 = "": var_108 = "": var_144 = ""
  loc_BDB58A: Branch loc_BDB70A
  loc_BDB58D: FLdRfVar var_E0
  loc_BDB590: FLdRfVar var_B4
  loc_BDB593: LitVarStr var_B0, "ExpeImpu"
  loc_BDB598: PopAdLdVar
  loc_BDB599: FLdRfVar var_A0
  loc_BDB59C: FLdRfVar var_98
  loc_BDB59F: FLdPr Me
  loc_BDB5A2: MemLdRfVar from_stack_1.global_56
  loc_BDB5A5: NewIfNullPr clsliquidacion
  loc_BDB5A8: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB5AD: FLdPr var_98
  loc_BDB5B0:  = Me.Fields
  loc_BDB5B5: FLdPr var_A0
  loc_BDB5B8: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB5BD: FLdPr var_B4
  loc_BDB5C0:  = Me.Value
  loc_BDB5C5: FLdRfVar var_144
  loc_BDB5C8: FLdRfVar var_D0
  loc_BDB5CB: LitVarStr var_134, "NumeLiqu"
  loc_BDB5D0: PopAdLdVar
  loc_BDB5D1: FLdRfVar var_BC
  loc_BDB5D4: FLdRfVar var_B8
  loc_BDB5D7: FLdPr Me
  loc_BDB5DA: MemLdRfVar from_stack_1.global_56
  loc_BDB5DD: NewIfNullPr clsliquidacion
  loc_BDB5E0: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB5E5: FLdPr var_B8
  loc_BDB5E8:  = Me.Fields
  loc_BDB5ED: FLdPr var_BC
  loc_BDB5F0: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB5F5: FLdPr var_D0
  loc_BDB5F8:  = Me.Value
  loc_BDB5FD: FLdRfVar var_1C4
  loc_BDB600: FLdRfVar var_180
  loc_BDB603: LitVarStr var_1A4, "ExpeImpu"
  loc_BDB608: PopAdLdVar
  loc_BDB609: FLdRfVar var_17C
  loc_BDB60C: FLdRfVar var_11C
  loc_BDB60F: FLdPr Me
  loc_BDB612: MemLdRfVar from_stack_1.global_56
  loc_BDB615: NewIfNullPr clsliquidacion
  loc_BDB618: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB61D: FLdPr var_11C
  loc_BDB620:  = Me.Fields
  loc_BDB625: FLdPr var_17C
  loc_BDB628: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB62D: FLdPr var_180
  loc_BDB630:  = Me.Value
  loc_BDB635: FLdRfVar var_1D4
  loc_BDB638: FLdRfVar var_18C
  loc_BDB63B: LitVarStr var_1B4, "NumeLiqu"
  loc_BDB640: PopAdLdVar
  loc_BDB641: FLdRfVar var_188
  loc_BDB644: FLdRfVar var_184
  loc_BDB647: FLdPr Me
  loc_BDB64A: MemLdRfVar from_stack_1.global_56
  loc_BDB64D: NewIfNullPr clsliquidacion
  loc_BDB650: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB655: FLdPr var_184
  loc_BDB658:  = Me.Fields
  loc_BDB65D: FLdPr var_188
  loc_BDB660: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB665: FLdPr var_18C
  loc_BDB668:  = Me.Value
  loc_BDB66D: FLdRfVar var_F4
  loc_BDB670: FLdRfVar var_1D4
  loc_BDB673: CI2Var
  loc_BDB674: FLdRfVar var_1C4
  loc_BDB677: CStrVarTmp
  loc_BDB678: FStStrNoPop var_90
  loc_BDB67B: FLdPr Me
  loc_BDB67E: MemLdRfVar from_stack_1.global_56
  loc_BDB681: NewIfNullPr clsliquidacion
  loc_BDB684: from_stack_3v = clsliquidacion.ValidaAnular(from_stack_1v, from_stack_2v)
  loc_BDB689: LitI4 0
  loc_BDB68E: LitVarStr var_CC, "La Liquidación: "
  loc_BDB693: FLdRfVar var_E0
  loc_BDB696: ConcatVar var_F0
  loc_BDB69A: LitVarStr var_118, " - Número: "
  loc_BDB69F: ConcatVar var_108
  loc_BDB6A3: FLdRfVar var_144
  loc_BDB6A6: ConcatVar var_154
  loc_BDB6AA: LitVarStr var_164, " se encuentra en OP válida "
  loc_BDB6AF: ConcatVar var_174
  loc_BDB6B3: FLdZeroAd var_F4
  loc_BDB6B6: CVarStr var_1E4
  loc_BDB6B9: ConcatVar var_1F4
  loc_BDB6BD: LitVarStr var_204, " . Verfique..."
  loc_BDB6C2: ConcatVar var_214
  loc_BDB6C6: CStrVarVal var_194
  loc_BDB6CA: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDB6CF: FFreeStr var_90 = ""
  loc_BDB6D6: FFreeAd var_98 = "": var_A0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_D0 = "": var_11C = "": var_17C = "": var_184 = "": var_188 = "": var_180 = ""
  loc_BDB6F1: FFreeVar var_E0 = "": var_F0 = "": var_108 = "": var_144 = "": var_154 = "": var_1C4 = "": var_1D4 = "": var_174 = "": var_1E4 = "": var_1F4 = ""
  loc_BDB70A: FLdPr Me
  loc_BDB70D: MemLdRfVar from_stack_1.global_56
  loc_BDB710: NewIfNullPr clsliquidacion
  loc_BDB713: Call clsliquidacion.Requery()
  loc_BDB718: LitI2_Byte 0
  loc_BDB71A: LitVarI2 var_E0, 0
  loc_BDB71F: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_BDB724: FFree1Var var_E0 = ""
  loc_BDB727: Branch loc_BDC089
  loc_BDB72A: ILdRf var_94
  loc_BDB72D: LitStr "btnGuardar"
  loc_BDB730: EqStr
  loc_BDB732: BranchF loc_BDBF6D
  loc_BDB735: LitStr vbNullString
  loc_BDB738: FLdPr Me
  loc_BDB73B: MemStStrCopy
  loc_BDB73F: LitI2_Byte 0
  loc_BDB741: PopTmpLdAd2 var_11E
  loc_BDB744: Call FechLiquMsk_UnknownEvent_8()
  loc_BDB749: FLdPr Me
  loc_BDB74C: MemLdStr global_72
  loc_BDB74F: LitStr vbNullString
  loc_BDB752: NeStr
  loc_BDB754: BranchF loc_BDB758
  loc_BDB757: ExitProcHresult
  loc_BDB758: FLdPr Me
  loc_BDB75B: MemLdUI1 global_68
  loc_BDB75F: FStUI1 var_21C
  loc_BDB763: FLdUI1
  loc_BDB767: LitI2_Byte 1
  loc_BDB769: EqI2
  loc_BDB76A: BranchF loc_BDBD80
  loc_BDB76D: FLdPr Me
  loc_BDB770: VCallAd Control_ID_LiquidaNetoFlex
  loc_BDB773: FStAdFunc var_98
  loc_BDB776: FLdPr var_98
  loc_BDB779: LateIdLdVar var_E0 DispID_4 0
  loc_BDB780: CI4Var
  loc_BDB782: LitI4 1
  loc_BDB787: EqI4
  loc_BDB788: FFree1Ad var_98
  loc_BDB78B: FFree1Var var_E0 = ""
  loc_BDB78E: BranchF loc_BDB7AC
  loc_BDB791: LitStr "No existe ningun cheque para crear"
  loc_BDB794: FLdPr Me
  loc_BDB797: MemStStrCopy
  loc_BDB79B: LitI4 0
  loc_BDB7A0: FLdPr Me
  loc_BDB7A3: MemLdStr global_72
  loc_BDB7A6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDB7AB: ExitProcHresult
  loc_BDB7AC: LitVar_TRUE var_B0
  loc_BDB7AF: PopAdLdVar
  loc_BDB7B0: FLdPr Me
  loc_BDB7B3: VCallAd Control_ID_ProgressBar
  loc_BDB7B6: FStAdFunc var_98
  loc_BDB7B9: FLdPr var_98
  loc_BDB7BC: LateIdSt
  loc_BDB7C1: FFree1Ad var_98
  loc_BDB7C4: FLdRfVar var_1D4
  loc_BDB7C7: FLdRfVar var_B4
  loc_BDB7CA: LitVarStr var_B0, "ExpeImpu"
  loc_BDB7CF: PopAdLdVar
  loc_BDB7D0: FLdRfVar var_A0
  loc_BDB7D3: FLdRfVar var_98
  loc_BDB7D6: FLdPr Me
  loc_BDB7D9: MemLdRfVar from_stack_1.global_56
  loc_BDB7DC: NewIfNullPr clsliquidacion
  loc_BDB7DF: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB7E4: FLdPr var_98
  loc_BDB7E7:  = Me.Fields
  loc_BDB7EC: FLdPr var_A0
  loc_BDB7EF: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB7F4: FLdPr var_B4
  loc_BDB7F7:  = Me.Value
  loc_BDB7FC: FLdRfVar var_1E4
  loc_BDB7FF: FLdRfVar var_D0
  loc_BDB802: LitVarStr var_CC, "NumeLiqu"
  loc_BDB807: PopAdLdVar
  loc_BDB808: FLdRfVar var_BC
  loc_BDB80B: FLdRfVar var_B8
  loc_BDB80E: FLdPr Me
  loc_BDB811: MemLdRfVar from_stack_1.global_56
  loc_BDB814: NewIfNullPr clsliquidacion
  loc_BDB817: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB81C: FLdPr var_B8
  loc_BDB81F:  = Me.Fields
  loc_BDB824: FLdPr var_BC
  loc_BDB827: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB82C: FLdPr var_D0
  loc_BDB82F:  = Me.Value
  loc_BDB834: FLdPr Me
  loc_BDB837: VCallAd Control_ID_FechLiquMsk
  loc_BDB83A: FStAdFunc var_11C
  loc_BDB83D: FLdPr var_11C
  loc_BDB840: LateIdLdVar var_E0 DispID_15 0
  loc_BDB847: PopAd
  loc_BDB849: FLdRfVar var_90
  loc_BDB84C: FLdPr Me
  loc_BDB84F: VCallAd Control_ID_DetaLiquTxt
  loc_BDB852: FStAdFunc var_17C
  loc_BDB855: FLdPr var_17C
  loc_BDB858:  = Me.Text
  loc_BDB85D: FLdRfVar var_F0
  loc_BDB860: FLdRfVar var_188
  loc_BDB863: LitVarStr var_118, "TipoLiqu"
  loc_BDB868: PopAdLdVar
  loc_BDB869: FLdRfVar var_184
  loc_BDB86C: FLdRfVar var_180
  loc_BDB86F: FLdPr Me
  loc_BDB872: MemLdRfVar from_stack_1.global_56
  loc_BDB875: NewIfNullPr clsliquidacion
  loc_BDB878: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDB87D: FLdPr var_180
  loc_BDB880:  = Me.Fields
  loc_BDB885: FLdPr var_184
  loc_BDB888: from_stack_2 = Me.Item(from_stack_1)
  loc_BDB88D: FLdPr var_188
  loc_BDB890:  = Me.Value
  loc_BDB895: LitVarStr var_1A4, "Debito"
  loc_BDB89A: FStVarCopyObj var_174
  loc_BDB89D: FLdRfVar var_174
  loc_BDB8A0: LitVarStr var_164, "Devengado"
  loc_BDB8A5: FStVarCopyObj var_154
  loc_BDB8A8: FLdRfVar var_154
  loc_BDB8AB: FLdRfVar var_F0
  loc_BDB8AE: LitVarI2 var_134, 1
  loc_BDB8B3: HardType
  loc_BDB8B4: EqVar var_108
  loc_BDB8B8: FStVar var_144
  loc_BDB8BC: FLdRfVar var_144
  loc_BDB8BF: FLdRfVar var_1C4
  loc_BDB8C2: ImpAdCallFPR4  = IIf(, , )
  loc_BDB8C7: FLdPr Me
  loc_BDB8CA: VCallAd Control_ID_LiquidaNetoFlex
  loc_BDB8CD: FStAdFunc var_22C
  loc_BDB8D0: FLdRfVar var_228
  loc_BDB8D3: LitI4 0
  loc_BDB8D8: PopTmpLdAdStr var_9C
  loc_BDB8DB: FLdZeroAd var_22C
  loc_BDB8DE: FStAdFunc var_18C
  loc_BDB8E1: FLdRfVar var_18C
  loc_BDB8E4: FLdRfVar var_1C4
  loc_BDB8E7: CStrVarVal var_224
  loc_BDB8EB: ILdRf var_90
  loc_BDB8EE: FLdRfVar var_E0
  loc_BDB8F1: CStrVarTmp
  loc_BDB8F2: FStStrNoPop var_220
  loc_BDB8F5: FLdRfVar var_1E4
  loc_BDB8F8: CStrVarTmp
  loc_BDB8F9: FStStrNoPop var_194
  loc_BDB8FC: FLdRfVar var_1D4
  loc_BDB8FF: CStrVarTmp
  loc_BDB900: FStStrNoPop var_F4
  loc_BDB903: FLdPr Me
  loc_BDB906: MemLdRfVar from_stack_1.global_52
  loc_BDB909: NewIfNullPr clsordenpago
  loc_BDB90C: from_stack_8v = clsordenpago.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_BDB911: ILdRf var_228
  loc_BDB914: FStR4 var_8C
  loc_BDB917: FFreeStr var_F4 = "": var_194 = "": var_220 = "": var_90 = ""
  loc_BDB924: FFreeAd var_98 = "": var_A0 = "": var_B8 = "": var_BC = "": var_11C = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_B4 = "": var_D0 = "": var_18C = ""
  loc_BDB941: FFreeVar var_E0 = "": var_F0 = "": var_144 = "": var_154 = "": var_174 = "": var_1D4 = "": var_1E4 = ""
  loc_BDB954: ILdRf var_8C
  loc_BDB957: LitI4 0
  loc_BDB95C: EqI4
  loc_BDB95D: BranchF loc_BDB96E
  loc_BDB960: LitI4 0
  loc_BDB965: LitStr "Consulte con el Administrador."
  loc_BDB968: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDB96D: ExitProcHresult
  loc_BDB96E: LitI2_Byte 1
  loc_BDB970: FLdPr Me
  loc_BDB973: MemLdRfVar from_stack_1.global_76
  loc_BDB976: FLdPr Me
  loc_BDB979: VCallAd Control_ID_LiquidaNetoFlex
  loc_BDB97C: FStAdFunc var_98
  loc_BDB97F: FLdPr var_98
  loc_BDB982: LateIdLdVar var_E0 DispID_4 0
  loc_BDB989: CI4Var
  loc_BDB98B: LitI4 1
  loc_BDB990: SubI4
  loc_BDB991: CI2I4
  loc_BDB992: FFree1Ad var_98
  loc_BDB995: FFree1Var var_E0 = ""
  loc_BDB998: ForI2 var_230
  loc_BDB99E: FLdPr Me
  loc_BDB9A1: MemLdI2 global_76
  loc_BDB9A4: CI4UI1
  loc_BDB9A5: CVarI4
  loc_BDB9A9: PopAdLdVar
  loc_BDB9AA: LitVarI4
  loc_BDB9B2: PopAdLdVar
  loc_BDB9B3: FLdPr Me
  loc_BDB9B6: VCallAd Control_ID_LiquidaNetoFlex
  loc_BDB9B9: FStAdFunc var_98
  loc_BDB9BC: FLdPr var_98
  loc_BDB9BF: LateIdCallLdVar
  loc_BDB9C9: CStrVarTmp
  loc_BDB9CA: FStStrNoPop var_90
  loc_BDB9CD: LitStr "Cheque"
  loc_BDB9D0: EqStr
  loc_BDB9D2: LitStr "Municipalidad de Guaymallén"
  loc_BDB9D5: LitStr "Municipalidad de Maipú"
  loc_BDB9D8: EqStr
  loc_BDB9DA: FLdPr Me
  loc_BDB9DD: MemLdI2 global_76
  loc_BDB9E0: CI4UI1
  loc_BDB9E1: CVarI4
  loc_BDB9E5: PopAdLdVar
  loc_BDB9E6: LitVarI4
  loc_BDB9EE: PopAdLdVar
  loc_BDB9EF: FLdPr Me
  loc_BDB9F2: VCallAd Control_ID_LiquidaNetoFlex
  loc_BDB9F5: FStAdFunc var_A0
  loc_BDB9F8: FLdPr var_A0
  loc_BDB9FB: LateIdCallLdVar
  loc_BDBA05: CStrVarTmp
  loc_BDBA06: FStStrNoPop var_F4
  loc_BDBA09: LitStr "ACREEDORES POR CHEQUE DIFERIDO"
  loc_BDBA0C: EqStr
  loc_BDBA0E: AndI4
  loc_BDBA0F: OrI4
  loc_BDBA10: FFreeStr var_90 = ""
  loc_BDBA17: FFreeAd var_98 = ""
  loc_BDBA1E: FFreeVar var_E0 = ""
  loc_BDBA25: BranchF loc_BDBA30
  loc_BDBA28: LitI2_Byte &HFF
  loc_BDBA2A: FStI2 var_21A
  loc_BDBA2D: Branch loc_BDBA3B
  loc_BDBA30: FLdPr Me
  loc_BDBA33: MemLdRfVar from_stack_1.global_76
  loc_BDBA36: NextI2 var_230, loc_BDB99E
  loc_BDBA3B: FLdI2 var_21A
  loc_BDBA3E: NotI4
  loc_BDBA3F: BranchF loc_BDBD61
  loc_BDBA42: FLdRfVar var_F0
  loc_BDBA45: FLdRfVar var_B4
  loc_BDBA48: LitVarStr var_B0, "PeriInfo"
  loc_BDBA4D: PopAdLdVar
  loc_BDBA4E: FLdRfVar var_A0
  loc_BDBA51: FLdRfVar var_98
  loc_BDBA54: FLdPr Me
  loc_BDBA57: MemLdRfVar from_stack_1.global_56
  loc_BDBA5A: NewIfNullPr clsliquidacion
  loc_BDBA5D: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDBA62: FLdPr var_98
  loc_BDBA65:  = Me.Fields
  loc_BDBA6A: FLdPr var_A0
  loc_BDBA6D: from_stack_2 = Me.Item(from_stack_1)
  loc_BDBA72: FLdPr var_B4
  loc_BDBA75:  = Me.Value
  loc_BDBA7A: FLdPr Me
  loc_BDBA7D: VCallAd Control_ID_FechLiquMsk
  loc_BDBA80: FStAdFunc var_B8
  loc_BDBA83: FLdPr var_B8
  loc_BDBA86: LateIdLdVar var_E0 DispID_15 0
  loc_BDBA8D: CStrVarTmp
  loc_BDBA8E: FStStrNoPop var_90
  loc_BDBA91: ILdRf var_8C
  loc_BDBA94: FLdRfVar var_F0
  loc_BDBA97: CI2Var
  loc_BDBA98: FLdPr Me
  loc_BDBA9B: MemLdRfVar from_stack_1.global_52
  loc_BDBA9E: NewIfNullPr clsordenpago
  loc_BDBAA1: Call clsordenpago.ActualizaFereOrpaFearOrpa(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BDBAA6: FFree1Str var_90
  loc_BDBAA9: FFreeAd var_98 = "": var_A0 = "": var_B8 = ""
  loc_BDBAB4: FFreeVar var_E0 = ""
  loc_BDBABB: FLdRfVar var_F0
  loc_BDBABE: FLdRfVar var_B4
  loc_BDBAC1: LitVarStr var_B0, "ExpeImpu"
  loc_BDBAC6: PopAdLdVar
  loc_BDBAC7: FLdRfVar var_A0
  loc_BDBACA: FLdRfVar var_98
  loc_BDBACD: FLdPr Me
  loc_BDBAD0: MemLdRfVar from_stack_1.global_56
  loc_BDBAD3: NewIfNullPr clsliquidacion
  loc_BDBAD6: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDBADB: FLdPr var_98
  loc_BDBADE:  = Me.Fields
  loc_BDBAE3: FLdPr var_A0
  loc_BDBAE6: from_stack_2 = Me.Item(from_stack_1)
  loc_BDBAEB: FLdPr var_B4
  loc_BDBAEE:  = Me.Value
  loc_BDBAF3: FLdRfVar var_108
  loc_BDBAF6: FLdRfVar var_D0
  loc_BDBAF9: LitVarStr var_CC, "NumeLiqu"
  loc_BDBAFE: PopAdLdVar
  loc_BDBAFF: FLdRfVar var_BC
  loc_BDBB02: FLdRfVar var_B8
  loc_BDBB05: FLdPr Me
  loc_BDBB08: MemLdRfVar from_stack_1.global_56
  loc_BDBB0B: NewIfNullPr clsliquidacion
  loc_BDBB0E: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDBB13: FLdPr var_B8
  loc_BDBB16:  = Me.Fields
  loc_BDBB1B: FLdPr var_BC
  loc_BDBB1E: from_stack_2 = Me.Item(from_stack_1)
  loc_BDBB23: FLdPr var_D0
  loc_BDBB26:  = Me.Value
  loc_BDBB2B: FLdPr Me
  loc_BDBB2E: VCallAd Control_ID_FechLiquMsk
  loc_BDBB31: FStAdFunc var_11C
  loc_BDBB34: FLdPr var_11C
  loc_BDBB37: LateIdLdVar var_E0 DispID_15 0
  loc_BDBB3E: CStrVarTmp
  loc_BDBB3F: FStStrNoPop var_F4
  loc_BDBB42: FLdRfVar var_108
  loc_BDBB45: CI2Var
  loc_BDBB46: FLdRfVar var_F0
  loc_BDBB49: CStrVarTmp
  loc_BDBB4A: FStStrNoPop var_90
  loc_BDBB4D: ImpAdLdI2 MemVar_C3D064
  loc_BDBB50: FLdPr Me
  loc_BDBB53: MemLdRfVar from_stack_1.global_52
  loc_BDBB56: NewIfNullPr clsordenpago
  loc_BDBB59: Call clsordenpago.ActualizaLNFechCaja(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_BDBB5E: FFreeStr var_90 = ""
  loc_BDBB65: FFreeAd var_98 = "": var_A0 = "": var_B8 = "": var_BC = "": var_11C = "": var_B4 = ""
  loc_BDBB76: FFreeVar var_E0 = "": var_F0 = ""
  loc_BDBB7F: LitStr "SELECT *"
  loc_BDBB82: LitStr " FROM imputacion i"
  loc_BDBB85: ConcatStr
  loc_BDBB86: FStStrNoPop var_90
  loc_BDBB89: LitStr " WHERE PeriInfo = "
  loc_BDBB8C: ConcatStr
  loc_BDBB8D: CVarStr var_F0
  loc_BDBB90: FLdRfVar var_E0
  loc_BDBB93: FLdRfVar var_B4
  loc_BDBB96: LitVarStr var_B0, "PeriInfo"
  loc_BDBB9B: PopAdLdVar
  loc_BDBB9C: FLdRfVar var_A0
  loc_BDBB9F: FLdRfVar var_98
  loc_BDBBA2: FLdPr Me
  loc_BDBBA5: MemLdRfVar from_stack_1.global_56
  loc_BDBBA8: NewIfNullPr clsliquidacion
  loc_BDBBAB: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDBBB0: FLdPr var_98
  loc_BDBBB3:  = Me.Fields
  loc_BDBBB8: FLdPr var_A0
  loc_BDBBBB: from_stack_2 = Me.Item(from_stack_1)
  loc_BDBBC0: FLdPr var_B4
  loc_BDBBC3:  = Me.Value
  loc_BDBBC8: FLdRfVar var_E0
  loc_BDBBCB: ConcatVar var_108
  loc_BDBBCF: LitVarStr var_CC, " AND NumeOrpa = "
  loc_BDBBD4: ConcatVar var_144
  loc_BDBBD8: ILdRf var_8C
  loc_BDBBDB: CVarI4
  loc_BDBBDF: ConcatVar var_154
  loc_BDBBE3: LitVarStr var_134, " AND MapaImpu != 0;"
  loc_BDBBE8: ConcatVar var_174
  loc_BDBBEC: CStrVarVal var_F4
  loc_BDBBF0: FLdPr Me
  loc_BDBBF3: MemLdRfVar from_stack_1.global_64
  loc_BDBBF6: NewIfNullPr clsimputacion
  loc_BDBBF9: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_BDBBFE: FFreeStr var_90 = ""
  loc_BDBC05: FFreeAd var_98 = "": var_A0 = ""
  loc_BDBC0E: FFreeVar var_F0 = "": var_E0 = "": var_108 = "": var_144 = "": var_154 = ""
  loc_BDBC1D: FLdRfVar var_9C
  loc_BDBC20: FLdPr Me
  loc_BDBC23: MemLdRfVar from_stack_1.global_64
  loc_BDBC26: NewIfNullPr clsimputacion
  loc_BDBC29: from_stack_1 = clsimputacion.RecordCount
  loc_BDBC2E: ILdRf var_9C
  loc_BDBC31: LitI4 0
  loc_BDBC36: GtI4
  loc_BDBC37: BranchF loc_BDBD61
  loc_BDBC3A: FLdPr Me
  loc_BDBC3D: MemLdRfVar from_stack_1.global_64
  loc_BDBC40: NewIfNullPr clsimputacion
  loc_BDBC43: Call clsimputacion.MoveFirst()
  loc_BDBC48: FLdRfVar var_11E
  loc_BDBC4B: FLdPr Me
  loc_BDBC4E: MemLdRfVar from_stack_1.global_64
  loc_BDBC51: NewIfNullPr clsimputacion
  loc_BDBC54: from_stack_1 = clsimputacion.EOF
  loc_BDBC59: FLdI2 var_11E
  loc_BDBC5C: NotI4
  loc_BDBC5D: BranchF loc_BDBD61
  loc_BDBC60: FLdRfVar var_F0
  loc_BDBC63: FLdRfVar var_B4
  loc_BDBC66: LitVarStr var_B0, "IdImpu"
  loc_BDBC6B: PopAdLdVar
  loc_BDBC6C: FLdRfVar var_A0
  loc_BDBC6F: FLdRfVar var_98
  loc_BDBC72: FLdPr Me
  loc_BDBC75: MemLdRfVar from_stack_1.global_64
  loc_BDBC78: NewIfNullPr clsimputacion
  loc_BDBC7B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BDBC80: FLdPr var_98
  loc_BDBC83:  = Me.Fields
  loc_BDBC88: FLdPr var_A0
  loc_BDBC8B: from_stack_2 = Me.Item(from_stack_1)
  loc_BDBC90: FLdPr var_B4
  loc_BDBC93:  = Me.Value
  loc_BDBC98: FLdPr Me
  loc_BDBC9B: VCallAd Control_ID_FechLiquMsk
  loc_BDBC9E: FStAdFunc var_B8
  loc_BDBCA1: FLdPr var_B8
  loc_BDBCA4: LateIdLdVar var_E0 DispID_15 0
  loc_BDBCAB: PopAd
  loc_BDBCAD: FLdRfVar var_9C
  loc_BDBCB0: LitI2_Byte 0
  loc_BDBCB2: LitI2_Byte 0
  loc_BDBCB4: LitI4 0
  loc_BDBCB9: LitStr vbNullString
  loc_BDBCBC: FLdRfVar var_E0
  loc_BDBCBF: CStrVarTmp
  loc_BDBCC0: FStStrNoPop var_90
  loc_BDBCC3: FLdRfVar var_F0
  loc_BDBCC6: CI4Var
  loc_BDBCC8: FLdPr Me
  loc_BDBCCB: MemLdRfVar from_stack_1.global_64
  loc_BDBCCE: NewIfNullPr clsimputacion
  loc_BDBCD1: from_stack_7v = clsimputacion.AddNewPagado(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_BDBCD6: ILdRf var_9C
  loc_BDBCD9: FStR4 var_218
  loc_BDBCDC: FFree1Str var_90
  loc_BDBCDF: FFreeAd var_98 = "": var_A0 = "": var_B8 = ""
  loc_BDBCEA: FFreeVar var_E0 = ""
  loc_BDBCF1: ILdRf var_218
  loc_BDBCF4: LitI4 0
  loc_BDBCF9: EqI4
  loc_BDBCFA: BranchF loc_BDBD0A
  loc_BDBCFD: LitI4 0
  loc_BDBD02: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_BDBD05: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDBD0A: FLdRfVar var_228
  loc_BDBD0D: FLdPr Me
  loc_BDBD10: MemLdRfVar from_stack_1.global_64
  loc_BDBD13: NewIfNullPr clsimputacion
  loc_BDBD16: from_stack_1 = clsimputacion.RecordCount
  loc_BDBD1B: FLdRfVar var_9C
  loc_BDBD1E: FLdPr Me
  loc_BDBD21: MemLdRfVar from_stack_1.global_64
  loc_BDBD24: NewIfNullPr clsimputacion
  loc_BDBD27: from_stack_1 = clsimputacion.AbsolutePosition
  loc_BDBD2C: ILdRf var_9C
  loc_BDBD2F: CR8I4
  loc_BDBD30: ILdRf var_228
  loc_BDBD33: CR8I4
  loc_BDBD34: DivR8
  loc_BDBD35: LitI2_Byte &H64
  loc_BDBD37: CR8I2
  loc_BDBD38: MulR8
  loc_BDBD39: CVarR4
  loc_BDBD3D: PopAdLdVar
  loc_BDBD3E: FLdPrThis
  loc_BDBD3F: VCallAd Control_ID_ProgressBar
  loc_BDBD42: FStAdFunc var_98
  loc_BDBD45: FLdPr var_98
  loc_BDBD48: LateIdSt
  loc_BDBD4D: FFree1Ad var_98
  loc_BDBD50: FLdPr Me
  loc_BDBD53: MemLdRfVar from_stack_1.global_64
  loc_BDBD56: NewIfNullPr clsimputacion
  loc_BDBD59: Call clsimputacion.MoveSiguiente()
  loc_BDBD5E: Branch loc_BDBC48
  loc_BDBD61: ILdRf var_8C
  loc_BDBD64: LitI4 0
  loc_BDBD69: EqI4
  loc_BDBD6A: BranchF loc_BDBD7D
  loc_BDBD6D: LitI4 0
  loc_BDBD72: LitStr "Informe al Administrador el Expediente..."
  loc_BDBD75: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDBD7A: Branch loc_BDBD7D
  loc_BDBD7D: Branch loc_BDBE49
  loc_BDBD80: FLdUI1
  loc_BDBD84: LitI2_Byte 2
  loc_BDBD86: EqI2
  loc_BDBD87: BranchF loc_BDBE49
  loc_BDBD8A: FLdRfVar var_E0
  loc_BDBD8D: FLdRfVar var_B4
  loc_BDBD90: LitVarStr var_B0, "ExpeImpu"
  loc_BDBD95: PopAdLdVar
  loc_BDBD96: FLdRfVar var_A0
  loc_BDBD99: FLdRfVar var_98
  loc_BDBD9C: FLdPr Me
  loc_BDBD9F: MemLdRfVar from_stack_1.global_56
  loc_BDBDA2: NewIfNullPr clsliquidacion
  loc_BDBDA5: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDBDAA: FLdPr var_98
  loc_BDBDAD:  = Me.Fields
  loc_BDBDB2: FLdPr var_A0
  loc_BDBDB5: from_stack_2 = Me.Item(from_stack_1)
  loc_BDBDBA: FLdPr var_B4
  loc_BDBDBD:  = Me.Value
  loc_BDBDC2: FLdRfVar var_F0
  loc_BDBDC5: FLdRfVar var_D0
  loc_BDBDC8: LitVarStr var_CC, "NumeLiqu"
  loc_BDBDCD: PopAdLdVar
  loc_BDBDCE: FLdRfVar var_BC
  loc_BDBDD1: FLdRfVar var_B8
  loc_BDBDD4: FLdPr Me
  loc_BDBDD7: MemLdRfVar from_stack_1.global_56
  loc_BDBDDA: NewIfNullPr clsliquidacion
  loc_BDBDDD: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BDBDE2: FLdPr var_B8
  loc_BDBDE5:  = Me.Fields
  loc_BDBDEA: FLdPr var_BC
  loc_BDBDED: from_stack_2 = Me.Item(from_stack_1)
  loc_BDBDF2: FLdPr var_D0
  loc_BDBDF5:  = Me.Value
  loc_BDBDFA: FLdRfVar var_F4
  loc_BDBDFD: FLdPr Me
  loc_BDBE00: VCallAd Control_ID_DetaLiquTxt
  loc_BDBE03: FStAdFunc var_11C
  loc_BDBE06: FLdPr var_11C
  loc_BDBE09:  = Me.Text
  loc_BDBE0E: ILdRf var_F4
  loc_BDBE11: FLdRfVar var_F0
  loc_BDBE14: CI2Var
  loc_BDBE15: FLdRfVar var_E0
  loc_BDBE18: CStrVarTmp
  loc_BDBE19: FStStrNoPop var_90
  loc_BDBE1C: FLdPr Me
  loc_BDBE1F: MemLdRfVar from_stack_1.global_56
  loc_BDBE22: NewIfNullPr clsliquidacion
  loc_BDBE25: Call clsliquidacion.ModificarDetaLiqu(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BDBE2A: FFreeStr var_90 = ""
  loc_BDBE31: FFreeAd var_98 = "": var_A0 = "": var_B8 = "": var_BC = "": var_B4 = "": var_D0 = ""
  loc_BDBE42: FFreeVar var_E0 = ""
  loc_BDBE49: Call cmdCancelar_Click()
  loc_BDBE4E: LitI4 0
  loc_BDBE53: LitStr "Se Generó la Orden de Pago número: "
  loc_BDBE56: ILdRf var_8C
  loc_BDBE59: CStrI4
  loc_BDBE5B: FStStrNoPop var_90
  loc_BDBE5E: ConcatStr
  loc_BDBE5F: FStStrNoPop var_F4
  loc_BDBE62: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDBE67: FFreeStr var_90 = ""
  loc_BDBE6E: FLdI2 var_21A
  loc_BDBE71: NotI4
  loc_BDBE72: BranchF loc_BDBE9E
  loc_BDBE75: LitI4 0
  loc_BDBE7A: LitStr "La Orden de Pago: "
  loc_BDBE7D: ILdRf var_8C
  loc_BDBE80: CStrI4
  loc_BDBE82: FStStrNoPop var_90
  loc_BDBE85: ConcatStr
  loc_BDBE86: FStStrNoPop var_F4
  loc_BDBE89: LitStr " ya fue Remitida y Pagada. Verifique..."
  loc_BDBE8C: ConcatStr
  loc_BDBE8D: FStStrNoPop var_194
  loc_BDBE90: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDBE95: FFreeStr var_90 = "": var_F4 = ""
  loc_BDBE9E: LitVar_FALSE
  loc_BDBEA2: PopAdLdVar
  loc_BDBEA3: FLdPr Me
  loc_BDBEA6: VCallAd Control_ID_ProgressBar
  loc_BDBEA9: FStAdFunc var_98
  loc_BDBEAC: FLdPr var_98
  loc_BDBEAF: LateIdSt
  loc_BDBEB4: FFree1Ad var_98
  loc_BDBEB7: LitStr "Municipalidad de Guaymallén"
  loc_BDBEBA: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_BDBEBD: NeStr
  loc_BDBEBF: BranchF loc_BDBF6A
  loc_BDBEC2: LitI2_Byte &HFF
  loc_BDBEC4: PopTmpLdAd2 var_176
  loc_BDBEC7: LitI2_Byte 0
  loc_BDBEC9: PopTmpLdAd2 var_11E
  loc_BDBECC: LitStr "¿Imprime la Orden de Pago número: "
  loc_BDBECF: ILdRf var_8C
  loc_BDBED2: CStrI4
  loc_BDBED4: FStStrNoPop var_90
  loc_BDBED7: ConcatStr
  loc_BDBED8: FStStrNoPop var_F4
  loc_BDBEDB: LitStr " ?"
  loc_BDBEDE: ConcatStr
  loc_BDBEDF: FStStrNoPop var_194
  loc_BDBEE2: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BDBEE7: CI4UI1
  loc_BDBEE8: LitI4 6
  loc_BDBEED: EqI4
  loc_BDBEEE: FFreeStr var_90 = "": var_F4 = ""
  loc_BDBEF7: BranchF loc_BDBF6A
  loc_BDBEFA: ImpAdLdRf MemVar_C3DAD4
  loc_BDBEFD: NewIfNullAd
  loc_BDBF00: CastAd
  loc_BDBF03: FStAdFuncNoPop
  loc_BDBF06: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_BDBF0B: FFree1Ad var_98
  loc_BDBF0E: ImpAdLdI2 MemVar_C3D064
  loc_BDBF11: CStrUI1
  loc_BDBF13: FStStrNoPop var_90
  loc_BDBF16: ImpAdLdRf MemVar_C3DAD4
  loc_BDBF19: NewIfNullPr rptOrdenPago
  loc_BDBF1C: VCallAd Control_ID_cboPeriodo
  loc_BDBF1F: FStAdFunc var_98
  loc_BDBF22: FLdPr var_98
  loc_BDBF25: rptOrdenPago.ComboBox.Text = from_stack_1
  loc_BDBF2A: FFree1Str var_90
  loc_BDBF2D: FFree1Ad var_98
  loc_BDBF30: ILdRf var_8C
  loc_BDBF33: CStrI4
  loc_BDBF35: FStStrNoPop var_90
  loc_BDBF38: ImpAdLdRf MemVar_C3DAD4
  loc_BDBF3B: NewIfNullPr rptOrdenPago
  loc_BDBF3E: VCallAd Control_ID_NumeOrpaTxt
  loc_BDBF41: FStAdFunc var_98
  loc_BDBF44: FLdPr var_98
  loc_BDBF47: rptOrdenPago.TextBox.Text = from_stack_1
  loc_BDBF4C: FFree1Str var_90
  loc_BDBF4F: FFree1Ad var_98
  loc_BDBF52: LitVar_Missing var_CC
  loc_BDBF55: PopAdLdVar
  loc_BDBF56: LitVarI4
  loc_BDBF5E: PopAdLdVar
  loc_BDBF5F: ImpAdLdRf MemVar_C3DAD4
  loc_BDBF62: NewIfNullPr rptOrdenPago
  loc_BDBF65: rptOrdenPago.Show from_stack_1, from_stack_2
  loc_BDBF6A: Branch loc_BDC089
  loc_BDBF6D: ILdRf var_94
  loc_BDBF70: LitStr "btnCancelar"
  loc_BDBF73: EqStr
  loc_BDBF75: BranchF loc_BDBF80
  loc_BDBF78: Call cmdCancelar_Click()
  loc_BDBF7D: Branch loc_BDC089
  loc_BDBF80: ILdRf var_94
  loc_BDBF83: LitStr "btnPrimero"
  loc_BDBF86: EqStr
  loc_BDBF88: BranchF loc_BDBF9C
  loc_BDBF8B: FLdPr Me
  loc_BDBF8E: MemLdRfVar from_stack_1.global_56
  loc_BDBF91: NewIfNullPr clsliquidacion
  loc_BDBF94: Call clsliquidacion.MoveFirst()
  loc_BDBF99: Branch loc_BDC089
  loc_BDBF9C: ILdRf var_94
  loc_BDBF9F: LitStr "btnAnterior"
  loc_BDBFA2: EqStr
  loc_BDBFA4: BranchF loc_BDBFB8
  loc_BDBFA7: FLdPr Me
  loc_BDBFAA: MemLdRfVar from_stack_1.global_56
  loc_BDBFAD: NewIfNullPr clsliquidacion
  loc_BDBFB0: Call clsliquidacion.MovePrevious()
  loc_BDBFB5: Branch loc_BDC089
  loc_BDBFB8: ILdRf var_94
  loc_BDBFBB: LitStr "btnSiguiente"
  loc_BDBFBE: EqStr
  loc_BDBFC0: BranchF loc_BDBFD4
  loc_BDBFC3: FLdPr Me
  loc_BDBFC6: MemLdRfVar from_stack_1.global_56
  loc_BDBFC9: NewIfNullPr clsliquidacion
  loc_BDBFCC: Call clsliquidacion.MoveNext()
  loc_BDBFD1: Branch loc_BDC089
  loc_BDBFD4: ILdRf var_94
  loc_BDBFD7: LitStr "btnUltimo"
  loc_BDBFDA: EqStr
  loc_BDBFDC: BranchF loc_BDBFF0
  loc_BDBFDF: FLdPr Me
  loc_BDBFE2: MemLdRfVar from_stack_1.global_56
  loc_BDBFE5: NewIfNullPr clsliquidacion
  loc_BDBFE8: Call clsliquidacion.MoveLast()
  loc_BDBFED: Branch loc_BDC089
  loc_BDBFF0: ILdRf var_94
  loc_BDBFF3: LitStr "btnFiltrar"
  loc_BDBFF6: EqStr
  loc_BDBFF8: BranchF loc_BDBFFE
  loc_BDBFFB: Branch loc_BDC089
  loc_BDBFFE: ILdRf var_94
  loc_BDC001: LitStr "btnBuscar"
  loc_BDC004: EqStr
  loc_BDC006: BranchF loc_BDC00C
  loc_BDC009: Branch loc_BDC089
  loc_BDC00C: ILdRf var_94
  loc_BDC00F: LitStr "btnImprimir"
  loc_BDC012: EqStr
  loc_BDC014: BranchF loc_BDC032
  loc_BDC017: LitVar_Missing var_CC
  loc_BDC01A: PopAdLdVar
  loc_BDC01B: LitVarI4
  loc_BDC023: PopAdLdVar
  loc_BDC024: ImpAdLdRf MemVar_C3DAD4
  loc_BDC027: NewIfNullPr rptOrdenPago
  loc_BDC02A: rptOrdenPago.Show from_stack_1, from_stack_2
  loc_BDC02F: Branch loc_BDC089
  loc_BDC032: ILdRf var_94
  loc_BDC035: LitStr "btnAyuda"
  loc_BDC038: EqStr
  loc_BDC03A: BranchF loc_BDC069
  loc_BDC03D: LitVar_Missing var_144
  loc_BDC040: LitVar_Missing var_108
  loc_BDC043: LitVar_Missing var_F0
  loc_BDC046: LitI4 0
  loc_BDC04B: LitVarStr var_B0, "Opcion no disponible en esta version."
  loc_BDC050: FStVarCopyObj var_E0
  loc_BDC053: FLdRfVar var_E0
  loc_BDC056: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BDC05B: FFreeVar var_E0 = "": var_F0 = "": var_108 = ""
  loc_BDC066: Branch loc_BDC089
  loc_BDC069: ILdRf var_94
  loc_BDC06C: LitStr "btnSalir"
  loc_BDC06F: EqStr
  loc_BDC071: BranchF loc_BDC089
  loc_BDC074: ILdRf Me
  loc_BDC077: FStAdNoPop
  loc_BDC07B: ImpAdLdRf MemVar_C44F9C
  loc_BDC07E: NewIfNullPr Me
  loc_BDC081: Me.Global.Unload from_stack_1
  loc_BDC086: FFree1Ad var_98
  loc_BDC089: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '9EEEC4
  'Data Table: 441C80
  loc_9EED9C: LitI2_Byte 0
  loc_9EED9E: CUI1I2
  loc_9EEDA0: FLdPr Me
  loc_9EEDA3: MemStUI1
  loc_9EEDA7: ILdRf Me
  loc_9EEDAA: CastAd
  loc_9EEDAD: FStAdFunc var_88
  loc_9EEDB0: FLdRfVar var_88
  loc_9EEDB3: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9EEDB8: FFree1Ad var_88
  loc_9EEDBB: LitI4 0
  loc_9EEDC0: LitI4 0
  loc_9EEDC5: FLdRfVar var_8C
  loc_9EEDC8: Redim
  loc_9EEDD2: FLdPr Me
  loc_9EEDD5: VCallAd Control_ID_dgdABMS
  loc_9EEDD8: CVarAd
  loc_9EEDDC: ParmAry1St
  loc_9EEDE2: FLdRfVar var_8C
  loc_9EEDE5: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9EEDEA: FLdRfVar var_8C
  loc_9EEDED: Erase
  loc_9EEDEE: FLdPr Me
  loc_9EEDF1: MemLdRfVar from_stack_1.global_56
  loc_9EEDF4: NewIfNullAd
  loc_9EEDF7: FStAd var_A0 
  loc_9EEDFB: FLdRfVar var_A0
  loc_9EEDFE: CVarRef
  loc_9EEE03: ILdRf Me
  loc_9EEE06: CastAd
  loc_9EEE09: FStAdFunc var_88
  loc_9EEE0C: FLdRfVar var_88
  loc_9EEE0F: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9EEE14: ILdRf var_A0
  loc_9EEE17: CastAd
  loc_9EEE1A: FLdPr Me
  loc_9EEE1D: MemStAdFunc
  loc_9EEE21: FFreeAd var_88 = ""
  loc_9EEE28: ILdRf Me
  loc_9EEE2B: CastAd
  loc_9EEE2E: FStAdFunc var_88
  loc_9EEE31: FLdRfVar var_88
  loc_9EEE34: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9EEE39: FFree1Ad var_88
  loc_9EEE3C: FLdPr Me
  loc_9EEE3F: MemLdRfVar from_stack_1.global_56
  loc_9EEE42: NewIfNullPr clsliquidacion
  loc_9EEE45: Call clsliquidacion.Requery()
  loc_9EEE4A: Call Proc_129_16_9C8730()
  loc_9EEE4F: LitI2_Byte 0
  loc_9EEE51: LitVarI2 var_9C, 0
  loc_9EEE56: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_9EEE5B: FFree1Var var_9C = ""
  loc_9EEE5E: LitI4 0
  loc_9EEE63: LitI4 0
  loc_9EEE68: FLdRfVar var_8C
  loc_9EEE6B: Redim
  loc_9EEE75: FLdPr Me
  loc_9EEE78: VCallAd Control_ID_LiquidaNetoFlex
  loc_9EEE7B: CVarAd
  loc_9EEE7F: ParmAry1St
  loc_9EEE85: FLdRfVar var_8C
  loc_9EEE88: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_9EEE8D: FLdRfVar var_8C
  loc_9EEE90: Erase
  loc_9EEE91: FLdPr Me
  loc_9EEE94: VCallAd Control_ID_dgdABMS
  loc_9EEE97: FStAdFunc var_A0
  loc_9EEE9A: LitStr "Liquidacion/es pendiente/s de Orden de Pago"
  loc_9EEE9D: FStStrCopy var_B4
  loc_9EEEA0: FLdRfVar var_B4
  loc_9EEEA3: FLdPr Me
  loc_9EEEA6: MemLdStr global_80
  loc_9EEEA9: FLdZeroAd var_A0
  loc_9EEEAC: FStAdFunc var_88
  loc_9EEEAF: FLdRfVar var_88
  loc_9EEEB2: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_9EEEB7: FFree1Str var_B4
  loc_9EEEBA: FFreeAd var_88 = ""
  loc_9EEEC1: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94B048
  'Data Table: 441C80
  loc_94B034: FLdPr Me
  loc_94B037: VCallAd Control_ID_FiltroMsk
  loc_94B03A: CVarAd
  loc_94B03E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B043: FFree1Var var_94 = ""
  loc_94B046: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A3894C
  'Data Table: 441C80
  loc_A38738: ILdRf Me
  loc_A3873B: CastAd
  loc_A3873E: FStAdFunc var_88
  loc_A38741: FLdRfVar var_88
  loc_A38744: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A38749: FFree1Ad var_88
  loc_A3874C: FLdPr Me
  loc_A3874F: VCallAd Control_ID_FiltroMsk
  loc_A38752: FStAdFunc var_88
  loc_A38755: FLdPr var_88
  loc_A38758: LateIdLdVar var_98 DispID_22 0
  loc_A3875F: CStrVarTmp
  loc_A38760: FStStrNoPop var_9C
  loc_A38763: ImpAdCallI2 Trim$()
  loc_A38768: FStStrNoPop var_A0
  loc_A3876B: LitStr vbNullString
  loc_A3876E: NeStr
  loc_A38770: FFreeStr var_9C = ""
  loc_A38777: FFree1Ad var_88
  loc_A3877A: FFree1Var var_98 = ""
  loc_A3877D: BranchF loc_A38818
  loc_A38780: FLdRfVar var_A2
  loc_A38783: FLdPr Me
  loc_A38786: VCallAd Control_ID_FiltroCbo
  loc_A38789: FStAdFunc var_88
  loc_A3878C: FLdPr var_88
  loc_A3878F:  = Me.ListIndex
  loc_A38794: FLdI2 var_A2
  loc_A38797: LitI2_Byte 0
  loc_A38799: EqI2
  loc_A3879A: FFree1Ad var_88
  loc_A3879D: BranchF loc_A38815
  loc_A387A0: LitStr "ExpeImpu LIKE '"
  loc_A387A3: FLdPr Me
  loc_A387A6: VCallAd Control_ID_FiltroMsk
  loc_A387A9: FStAdFunc var_88
  loc_A387AC: FLdPr var_88
  loc_A387AF: LateIdLdVar var_98 DispID_22 0
  loc_A387B6: CStrVarTmp
  loc_A387B7: FStStrNoPop var_9C
  loc_A387BA: ConcatStr
  loc_A387BB: FStStrNoPop var_A0
  loc_A387BE: LitStr Chr(37) & "'"
  loc_A387C1: ConcatStr
  loc_A387C2: PopTmpLdAdStr
  loc_A387C6: FLdPr Me
  loc_A387C9: MemLdRfVar from_stack_1.global_56
  loc_A387CC: NewIfNullPr clsliquidacion
  loc_A387CF: Call clsliquidacion.Filter(from_stack_1v)
  loc_A387D4: FFreeStr var_9C = "": var_A0 = ""
  loc_A387DD: FFree1Ad var_88
  loc_A387E0: FFree1Var var_98 = ""
  loc_A387E3: LitStr "código que comience con: "
  loc_A387E6: FLdPr Me
  loc_A387E9: VCallAd Control_ID_FiltroMsk
  loc_A387EC: FStAdFunc var_88
  loc_A387EF: FLdPr var_88
  loc_A387F2: LateIdLdVar var_98 DispID_22 0
  loc_A387F9: CStrVarTmp
  loc_A387FA: FStStrNoPop var_9C
  loc_A387FD: ConcatStr
  loc_A387FE: FStStrNoPop var_A0
  loc_A38801: FLdPr Me
  loc_A38804: MemStStrCopy
  loc_A38808: FFreeStr var_9C = ""
  loc_A3880F: FFree1Ad var_88
  loc_A38812: FFree1Var var_98 = ""
  loc_A38815: Branch loc_A3883C
  loc_A38818: LitStr vbNullString
  loc_A3881B: FStStrCopy var_9C
  loc_A3881E: FLdRfVar var_9C
  loc_A38821: FLdPr Me
  loc_A38824: MemLdRfVar from_stack_1.global_56
  loc_A38827: NewIfNullPr clsliquidacion
  loc_A3882A: Call clsliquidacion.Filter(from_stack_1v)
  loc_A3882F: FFree1Str var_9C
  loc_A38832: LitStr vbNullString
  loc_A38835: FLdPr Me
  loc_A38838: MemStStrCopy
  loc_A3883C: FLdRfVar var_AC
  loc_A3883F: FLdPr Me
  loc_A38842: MemLdRfVar from_stack_1.global_56
  loc_A38845: NewIfNullPr clsliquidacion
  loc_A38848: from_stack_1 = clsliquidacion.RecordCount
  loc_A3884D: ILdRf var_AC
  loc_A38850: LitI4 0
  loc_A38855: GtI4
  loc_A38856: BranchF loc_A38903
  loc_A38859: FLdPr Me
  loc_A3885C: MemLdRfVar from_stack_1.global_56
  loc_A3885F: NewIfNullAd
  loc_A38862: FStAd var_B0 
  loc_A38866: FLdRfVar var_B0
  loc_A38869: CVarRef
  loc_A3886E: ILdRf Me
  loc_A38871: CastAd
  loc_A38874: FStAdFunc var_88
  loc_A38877: FLdRfVar var_88
  loc_A3887A: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A3887F: ILdRf var_B0
  loc_A38882: CastAd
  loc_A38885: FLdPr Me
  loc_A38888: MemStAdFunc
  loc_A3888C: FFreeAd var_88 = ""
  loc_A38893: LitI4 0
  loc_A38898: LitI4 1
  loc_A3889D: FLdRfVar var_C4
  loc_A388A0: Redim
  loc_A388AA: FLdPr Me
  loc_A388AD: MemLdRfVar from_stack_1.global_56
  loc_A388B0: NewIfNullAd
  loc_A388B3: FStAd var_88 
  loc_A388B7: FLdRfVar var_88
  loc_A388BA: CVarRef
  loc_A388BF: ParmAry1St
  loc_A388C5: FLdPr Me
  loc_A388C8: VCallAd Control_ID_dgdABMS
  loc_A388CB: CVarAd
  loc_A388CF: ParmAry1St
  loc_A388D5: FLdRfVar var_C4
  loc_A388D8: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A388DD: ILdRf var_88
  loc_A388E0: CastAd
  loc_A388E3: FLdPr Me
  loc_A388E6: MemStAdFunc
  loc_A388EA: FLdRfVar var_C4
  loc_A388ED: Erase
  loc_A388EE: FFree1Ad var_88
  loc_A388F1: LitI2_Byte 0
  loc_A388F3: LitVarI2 var_98, 0
  loc_A388F8: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A388FD: FFree1Var var_98 = ""
  loc_A38900: Branch loc_A38917
  loc_A38903: ILdRf Me
  loc_A38906: CastAd
  loc_A38909: FStAdFunc var_88
  loc_A3890C: FLdRfVar var_88
  loc_A3890F: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A38914: FFree1Ad var_88
  loc_A38917: FLdPr Me
  loc_A3891A: VCallAd Control_ID_dgdABMS
  loc_A3891D: FStAdFunc var_B0
  loc_A38920: LitI4 0
  loc_A38925: FStStrCopy var_9C
  loc_A38928: FLdRfVar var_9C
  loc_A3892B: FLdPr Me
  loc_A3892E: MemLdStr global_80
  loc_A38931: FLdZeroAd var_B0
  loc_A38934: FStAdFunc var_88
  loc_A38937: FLdRfVar var_88
  loc_A3893A: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A3893F: FFree1Str var_9C
  loc_A38942: FFreeAd var_88 = ""
  loc_A38949: ExitProcHresult
  loc_A3894A: FLdPr Me04
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '997444
  'Data Table: 441C80
  loc_9973E0: ILdI2 KeyAscii
  loc_9973E3: LitI2_Byte &H27
  loc_9973E5: EqI2
  loc_9973E6: BranchF loc_9973EE
  loc_9973E9: LitI2_Byte 0
  loc_9973EB: IStI2 KeyAscii
  loc_9973EE: FLdRfVar var_88
  loc_9973F1: FLdPr Me
  loc_9973F4: MemLdRfVar from_stack_1.global_56
  loc_9973F7: NewIfNullPr clsliquidacion
  loc_9973FA: from_stack_1 = clsliquidacion.RecordCount
  loc_9973FF: ILdRf var_88
  loc_997402: LitI4 0
  loc_997407: EqI4
  loc_997408: ILdI2 KeyAscii
  loc_99740B: CI4UI1
  loc_99740C: LitI4 8
  loc_997411: NeI4
  loc_997412: AndI4
  loc_997413: FLdPr Me
  loc_997416: VCallAd Control_ID_FiltroMsk
  loc_997419: FStAdFunc var_8C
  loc_99741C: FLdPr var_8C
  loc_99741F: LateIdLdVar var_9C DispID_16 0
  loc_997426: CStrVarTmp
  loc_997427: FStStrNoPop var_A0
  loc_99742A: LitStr vbNullString
  loc_99742D: EqStr
  loc_99742F: AndI4
  loc_997430: FFree1Str var_A0
  loc_997433: FFree1Ad var_8C
  loc_997436: FFree1Var var_9C = ""
  loc_997439: BranchF loc_997441
  loc_99743C: LitI2_Byte 0
  loc_99743E: IStI2 KeyAscii
  loc_997441: ExitProcHresult
End Sub

Private Sub FechLiquMsk_UnknownEvent_0 '94AE08
  'Data Table: 441C80
  loc_94ADF4: FLdPr Me
  loc_94ADF7: VCallAd Control_ID_FechLiquMsk
  loc_94ADFA: CVarAd
  loc_94ADFE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94AE03: FFree1Var var_94 = ""
  loc_94AE06: ExitProcHresult
End Sub

Private Sub FechLiquMsk_UnknownEvent_8 '9DEE34
  'Data Table: 441C80
  loc_9DED3C: FLdRfVar var_8A
  loc_9DED3F: FLdPr Me
  loc_9DED42: VCallAd Control_ID_cmdCancelar
  loc_9DED45: FStAdFunc var_88
  loc_9DED48: FLdPr var_88
  loc_9DED4B:  = Me.Value
  loc_9DED50: FLdI2 var_8A
  loc_9DED53: NotI4
  loc_9DED54: FLdPr Me
  loc_9DED57: VCallAd Control_ID_FechLiquMsk
  loc_9DED5A: FStAdFunc var_90
  loc_9DED5D: FLdPr var_90
  loc_9DED60: LateIdLdVar var_A0 DispID_13 -32767
  loc_9DED67: CBoolVar
  loc_9DED69: AndI4
  loc_9DED6A: FFreeAd var_88 = ""
  loc_9DED71: FFree1Var var_A0 = ""
  loc_9DED74: BranchF loc_9DEE30
  loc_9DED77: FLdPr Me
  loc_9DED7A: VCallAd Control_ID_FechLiquMsk
  loc_9DED7D: FStAdFunc var_88
  loc_9DED80: FLdPr var_88
  loc_9DED83: LateIdLdVar var_A0 DispID_15 0
  loc_9DED8A: PopAd
  loc_9DED8C: FLdPr Me
  loc_9DED8F: VCallAd Control_ID_FechLiquMsk
  loc_9DED92: FStAdFunc var_90
  loc_9DED95: FLdPr var_90
  loc_9DED98: LateIdLdVar var_B0 DispID_11 -32767
  loc_9DED9F: PopAd
  loc_9DEDA1: FLdPr Me
  loc_9DEDA4: VCallAd Control_ID_FechLiquMsk
  loc_9DEDA7: FStAdFunc var_C4
  loc_9DEDAA: LitI2_Byte &HFF
  loc_9DEDAC: PopTmpLdAd2 var_8A
  loc_9DEDAF: FLdZeroAd var_C4
  loc_9DEDB2: FStAdFunc var_BC
  loc_9DEDB5: FLdRfVar var_BC
  loc_9DEDB8: FLdRfVar var_B0
  loc_9DEDBB: CStrVarTmp
  loc_9DEDBC: FStStrNoPop var_B8
  loc_9DEDBF: LitI2_Byte &HFF
  loc_9DEDC1: LitI2_Byte &HFF
  loc_9DEDC3: FLdRfVar var_A0
  loc_9DEDC6: CStrVarTmp
  loc_9DEDC7: FStStrNoPop var_B4
  loc_9DEDCA: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9DEDCF: FStStrNoPop var_C0
  loc_9DEDD2: FLdPr Me
  loc_9DEDD5: MemStStrCopy
  loc_9DEDD9: FFreeStr var_B4 = "": var_B8 = ""
  loc_9DEDE2: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DEDED: FFreeVar var_A0 = ""
  loc_9DEDF4: FLdPr Me
  loc_9DEDF7: VCallAd Control_ID_FechLiquMsk
  loc_9DEDFA: FStAdFunc var_C4
  loc_9DEDFD: LitNothing
  loc_9DEDFF: CastAd
  loc_9DEE02: FStAdFunc var_BC
  loc_9DEE05: FLdRfVar var_BC
  loc_9DEE08: FLdZeroAd var_C4
  loc_9DEE0B: FStAdFuncNoPop
  loc_9DEE0E: CastAd
  loc_9DEE11: FStAdFunc var_90
  loc_9DEE14: FLdRfVar var_90
  loc_9DEE17: FLdPr Me
  loc_9DEE1A: MemLdRfVar from_stack_1.global_72
  loc_9DEE1D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DEE22: IStI2 KeyAscii
  loc_9DEE25: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DEE30: ExitProcHresult
  loc_9DEE31: CStrVarTmp
End Sub

Private Sub FechLiquMsk_KeyPress(KeyAscii As Integer) '98A010
  'Data Table: 441C80
  loc_989FCC: ILdI2 KeyAscii
  loc_989FCF: CI4UI1
  loc_989FD0: LitI4 &H20
  loc_989FD5: EqI4
  loc_989FD6: BranchF loc_98A00C
  loc_989FD9: LitVar_Missing var_A4
  loc_989FDC: PopAdLdVar
  loc_989FDD: LitVarI4
  loc_989FE5: PopAdLdVar
  loc_989FE6: ImpAdLdRf MemVar_C3D9A8
  loc_989FE9: NewIfNullPr frmCalendario
  loc_989FEC: frmCalendario.Show from_stack_1, from_stack_2
  loc_989FF1: ImpAdLdRf MemVar_C3D038
  loc_989FF4: CDargRef
  loc_989FF8: FLdPr Me
  loc_989FFB: VCallAd Control_ID_FechLiquMsk
  loc_989FFE: FStAdFunc var_A8
  loc_98A001: FLdPr var_A8
  loc_98A004: LateIdSt
  loc_98A009: FFree1Ad var_A8
  loc_98A00C: ExitProcHresult
End Sub

Private Sub DetaLiquTxt_GotFocus() '94AA60
  'Data Table: 441C80
  loc_94AA4C: FLdPrThis
  loc_94AA4D: VCallAd Control_ID_DetaLiquTxt
  loc_94AA50: CVarAd
  loc_94AA54: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94AA59: FFree1Var var_94 = ""
  loc_94AA5C: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '9A2630
  'Data Table: 441C80
  loc_9A25B8: LitVarStr var_94, vbNullString
  loc_9A25BD: PopAdLdVar
  loc_9A25BE: FLdPr Me
  loc_9A25C1: VCallAd Control_ID_FiltroMsk
  loc_9A25C4: FStAdFunc var_A8
  loc_9A25C7: FLdPr var_A8
  loc_9A25CA: LateIdSt
  loc_9A25CF: FFree1Ad var_A8
  loc_9A25D2: FLdRfVar var_AA
  loc_9A25D5: FLdPr Me
  loc_9A25D8: VCallAd Control_ID_FiltroCbo
  loc_9A25DB: FStAdFunc var_A8
  loc_9A25DE: FLdPr var_A8
  loc_9A25E1:  = Me.ListIndex
  loc_9A25E6: FLdI2 var_AA
  loc_9A25E9: FStI2 var_AC
  loc_9A25EC: FFree1Ad var_A8
  loc_9A25EF: FLdI2 var_AC
  loc_9A25F2: LitI2_Byte 0
  loc_9A25F4: EqI2
  loc_9A25F5: BranchF loc_9A262C
  loc_9A25F8: LitVarStr var_94, vbNullString
  loc_9A25FD: PopAdLdVar
  loc_9A25FE: FLdPr Me
  loc_9A2601: VCallAd Control_ID_FiltroMsk
  loc_9A2604: FStAdFunc var_A8
  loc_9A2607: FLdPr var_A8
  loc_9A260A: LateIdSt
  loc_9A260F: FFree1Ad var_A8
  loc_9A2612: LitStr "ExpeImpu"
  loc_9A2615: FStStrCopy var_B0
  loc_9A2618: FLdRfVar var_B0
  loc_9A261B: FLdPr Me
  loc_9A261E: MemLdRfVar from_stack_1.global_56
  loc_9A2621: NewIfNullPr clsliquidacion
  loc_9A2624: Call clsliquidacion.Sort(from_stack_1v)
  loc_9A2629: FFree1Str var_B0
  loc_9A262C: ExitProcHresult
  loc_9A262D: ConcatStr
  loc_9A262E: FStStrNoPop Me1C
End Sub

Private Function Proc_129_16_9C8730() '9C8730
  'Data Table: 441C80
  loc_9C8648: FLdPr Me
  loc_9C864B: VCallAd Control_ID_LiquidaNetoFlex
  loc_9C864E: FStAdFunc var_88
  loc_9C8651: FLdPr var_88
  loc_9C8654: LateIdCall
  loc_9C865C: LitVarI4
  loc_9C8664: PopAdLdVar
  loc_9C8665: FLdPr var_88
  loc_9C8668: LateIdSt
  loc_9C866D: LitVarI4
  loc_9C8675: PopAdLdVar
  loc_9C8676: LitVarI4
  loc_9C867E: PopAdLdVar
  loc_9C867F: LitVarStr var_D8, "Cuit-Cuil"
  loc_9C8684: PopAdLdVar
  loc_9C8685: FLdPr var_88
  loc_9C8688: LateIdCallSt
  loc_9C8690: LitVarI4
  loc_9C8698: PopAdLdVar
  loc_9C8699: LitVarI4
  loc_9C86A1: PopAdLdVar
  loc_9C86A2: LitVarStr var_D8, "Proveedor"
  loc_9C86A7: PopAdLdVar
  loc_9C86A8: FLdPr var_88
  loc_9C86AB: LateIdCallSt
  loc_9C86B3: LitVarI4
  loc_9C86BB: PopAdLdVar
  loc_9C86BC: LitVarI4
  loc_9C86C4: PopAdLdVar
  loc_9C86C5: LitVarStr var_D8, "Importe"
  loc_9C86CA: PopAdLdVar
  loc_9C86CB: FLdPr var_88
  loc_9C86CE: LateIdCallSt
  loc_9C86D6: LitVarI4
  loc_9C86DE: PopAdLdVar
  loc_9C86DF: LitVarI4
  loc_9C86E7: PopAdLdVar
  loc_9C86E8: LitVarStr var_D8, "Cheque/Retencion"
  loc_9C86ED: PopAdLdVar
  loc_9C86EE: FLdPr var_88
  loc_9C86F1: LateIdCallSt
  loc_9C86F9: LitVarI4
  loc_9C8701: PopAdLdVar
  loc_9C8702: LitVarI4
  loc_9C870A: PopAdLdVar
  loc_9C870B: LitVarStr var_D8, "Detalle"
  loc_9C8710: PopAdLdVar
  loc_9C8711: FLdPr var_88
  loc_9C8714: LateIdCallSt
  loc_9C871C: FLdPr var_88
  loc_9C871F: LateIdCall
  loc_9C8727: LitNothing
  loc_9C8729: FStAd var_88 
  loc_9C872D: ExitProcHresult
  loc_9C872E: LitVar_Missing Me00
End Function
