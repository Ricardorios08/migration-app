VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmArchivodeOrdendePago
  Caption = "Archivo de Orden de Pago"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmArchivodeOrdendePago.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 15375
  ClientHeight = 9135
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
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
      Width = 5775
      Height = 420
      TabIndex = 2
      OleObjectBlob = "frmArchivodeOrdendePago.frx":08CA
    End
  End
  Begin VB.Frame Frame1
    Caption = " Archivo de Orden de Pago "
    Left = 120
    Top = 5280
    Width = 12735
    Height = 3255
    TabIndex = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdGenerarCargo
      Caption = "Generar Cargo"
      Left = 4440
      Top = 2400
      Width = 2775
      Height = 375
      TabIndex = 16
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
    Begin VB.TextBox DiasTxt
      Left = 3120
      Top = 2400
      Width = 975
      Height = 360
      TabIndex = 15
      MaxLength = 8
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
    Begin VB.TextBox FojaOrpaTxt
      Left = 3120
      Top = 1920
      Width = 1215
      Height = 360
      TabIndex = 13
      MaxLength = 8
      DataField = "FojaOrpa"
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
    Begin VB.TextBox ArchOrpaTxt
      Left = 3120
      Top = 1440
      Width = 1215
      Height = 360
      TabIndex = 11
      MaxLength = 8
      DataField = "ArchOrpa"
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
    Begin MSMask.MaskEdBox FearOrpaMsk
      Left = 3105
      Top = 960
      Width = 1335
      Height = 360
      TabIndex = 9
      OleObjectBlob = "frmArchivodeOrdendePago.frx":0952
      DataField = "FearOrpa"
    End
    Begin VB.Label Label5
      Caption = "Días para la rendición:"
      Left = 675
      Top = 2400
      Width = 2340
      Height = 300
      TabIndex = 14
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
    Begin VB.Label DetaOrpaLbl
      Left = 4200
      Top = 480
      Width = 8295
      Height = 360
      TabIndex = 7
      BorderStyle = 1 'Fixed Single
      DataField = "DetaOrpa"
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
    Begin VB.Label NumeOrpaLbl
      Left = 3120
      Top = 480
      Width = 975
      Height = 360
      TabIndex = 6
      BorderStyle = 1 'Fixed Single
      DataField = "NumeOrpa"
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
      Caption = "Fecha de Archivo:"
      Left = 1080
      Top = 990
      Width = 1905
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
    Begin VB.Label Label4
      Caption = "Número de Fojas:"
      Left = 1140
      Top = 1920
      Width = 1875
      Height = 300
      TabIndex = 12
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
      Caption = "Archivo de Caja:"
      Left = 1305
      Top = 1440
      Width = 1710
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
    Begin VB.Label Label1
      Caption = "Número de Orden de Pago:"
      Left = 120
      Top = 480
      Width = 2895
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
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 12735
    Height = 3495
    TabIndex = 3
    OleObjectBlob = "frmArchivodeOrdendePago.frx":0A02
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmArchivodeOrdendePago.frx":0F04
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15375
    Height = 660
    TabIndex = 17
    OleObjectBlob = "frmArchivodeOrdendePago.frx":8A82
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 18
      TabStop = 0   'False
      Picture = "frmArchivodeOrdendePago.frx":8FDE
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmArchivodeOrdendePago"


Private Sub FiltroCbo_Click() '9EC350
  'Data Table: 45E504
  loc_9EC218: LitVarStr var_94, vbNullString
  loc_9EC21D: PopAdLdVar
  loc_9EC21E: FLdPr Me
  loc_9EC221: VCallAd Control_ID_FiltroMsk
  loc_9EC224: FStAdFunc var_A8
  loc_9EC227: FLdPr var_A8
  loc_9EC22A: LateIdSt
  loc_9EC22F: FFree1Ad var_A8
  loc_9EC232: FLdRfVar var_AA
  loc_9EC235: FLdPr Me
  loc_9EC238: VCallAd Control_ID_FiltroCbo
  loc_9EC23B: FStAdFunc var_A8
  loc_9EC23E: FLdPr var_A8
  loc_9EC241:  = Me.ListIndex
  loc_9EC246: FLdI2 var_AA
  loc_9EC249: FStI2 var_AC
  loc_9EC24C: FFree1Ad var_A8
  loc_9EC24F: FLdI2 var_AC
  loc_9EC252: LitI2_Byte 0
  loc_9EC254: EqI2
  loc_9EC255: BranchF loc_9EC28F
  loc_9EC258: LitVarStr var_94, "######"
  loc_9EC25D: PopAdLdVar
  loc_9EC25E: FLdPr Me
  loc_9EC261: VCallAd Control_ID_FiltroMsk
  loc_9EC264: FStAdFunc var_A8
  loc_9EC267: FLdPr var_A8
  loc_9EC26A: LateIdSt
  loc_9EC26F: FFree1Ad var_A8
  loc_9EC272: LitStr "NumeOrpa"
  loc_9EC275: FStStrCopy var_B0
  loc_9EC278: FLdRfVar var_B0
  loc_9EC27B: FLdPr Me
  loc_9EC27E: MemLdRfVar from_stack_1.global_52
  loc_9EC281: NewIfNullPr clsordenpago
  loc_9EC284: Call clsordenpago.Sort(from_stack_1v)
  loc_9EC289: FFree1Str var_B0
  loc_9EC28C: Branch loc_9EC34C
  loc_9EC28F: FLdI2 var_AC
  loc_9EC292: LitI2_Byte 1
  loc_9EC294: EqI2
  loc_9EC295: BranchF loc_9EC2CF
  loc_9EC298: LitVarStr var_94, vbNullString
  loc_9EC29D: PopAdLdVar
  loc_9EC29E: FLdPr Me
  loc_9EC2A1: VCallAd Control_ID_FiltroMsk
  loc_9EC2A4: FStAdFunc var_A8
  loc_9EC2A7: FLdPr var_A8
  loc_9EC2AA: LateIdSt
  loc_9EC2AF: FFree1Ad var_A8
  loc_9EC2B2: LitStr "ExpeImpu"
  loc_9EC2B5: FStStrCopy var_B0
  loc_9EC2B8: FLdRfVar var_B0
  loc_9EC2BB: FLdPr Me
  loc_9EC2BE: MemLdRfVar from_stack_1.global_52
  loc_9EC2C1: NewIfNullPr clsordenpago
  loc_9EC2C4: Call clsordenpago.Sort(from_stack_1v)
  loc_9EC2C9: FFree1Str var_B0
  loc_9EC2CC: Branch loc_9EC34C
  loc_9EC2CF: FLdI2 var_AC
  loc_9EC2D2: LitI2_Byte 2
  loc_9EC2D4: EqI2
  loc_9EC2D5: BranchF loc_9EC30F
  loc_9EC2D8: LitVarStr var_94, vbNullString
  loc_9EC2DD: PopAdLdVar
  loc_9EC2DE: FLdPr Me
  loc_9EC2E1: VCallAd Control_ID_FiltroMsk
  loc_9EC2E4: FStAdFunc var_A8
  loc_9EC2E7: FLdPr var_A8
  loc_9EC2EA: LateIdSt
  loc_9EC2EF: FFree1Ad var_A8
  loc_9EC2F2: LitStr "DetaOrpa"
  loc_9EC2F5: FStStrCopy var_B0
  loc_9EC2F8: FLdRfVar var_B0
  loc_9EC2FB: FLdPr Me
  loc_9EC2FE: MemLdRfVar from_stack_1.global_52
  loc_9EC301: NewIfNullPr clsordenpago
  loc_9EC304: Call clsordenpago.Sort(from_stack_1v)
  loc_9EC309: FFree1Str var_B0
  loc_9EC30C: Branch loc_9EC34C
  loc_9EC30F: FLdI2 var_AC
  loc_9EC312: LitI2_Byte 3
  loc_9EC314: EqI2
  loc_9EC315: BranchF loc_9EC34C
  loc_9EC318: LitVarStr var_94, vbNullString
  loc_9EC31D: PopAdLdVar
  loc_9EC31E: FLdPr Me
  loc_9EC321: VCallAd Control_ID_FiltroMsk
  loc_9EC324: FStAdFunc var_A8
  loc_9EC327: FLdPr var_A8
  loc_9EC32A: LateIdSt
  loc_9EC32F: FFree1Ad var_A8
  loc_9EC332: LitStr "ArchOrpa"
  loc_9EC335: FStStrCopy var_B0
  loc_9EC338: FLdRfVar var_B0
  loc_9EC33B: FLdPr Me
  loc_9EC33E: MemLdRfVar from_stack_1.global_52
  loc_9EC341: NewIfNullPr clsordenpago
  loc_9EC344: Call clsordenpago.Sort(from_stack_1v)
  loc_9EC349: FFree1Str var_B0
  loc_9EC34C: ExitProcHresult
End Sub

Private Sub Form_Load() 'A0E150
  'Data Table: 45E504
  loc_A0DFF8: LitI2_Byte 0
  loc_A0DFFA: CR8I2
  loc_A0DFFB: PopFPR4
  loc_A0DFFC: FLdPr Me
  loc_A0DFFF: Me.Left = from_stack_1s
  loc_A0E004: LitI2_Byte 0
  loc_A0E006: CR8I2
  loc_A0E007: PopFPR4
  loc_A0E008: FLdPr Me
  loc_A0E00B: Me.Top = from_stack_1s
  loc_A0E010: LitStr vbNullString
  loc_A0E013: FLdPr Me
  loc_A0E016: MemStStrCopy
  loc_A0E01A: LitStr "SELECT *"
  loc_A0E01D: LitStr " FROM ordenpago"
  loc_A0E020: ConcatStr
  loc_A0E021: FStStrNoPop var_88
  loc_A0E024: LitStr " WHERE PeriInfo = "
  loc_A0E027: ConcatStr
  loc_A0E028: FStStrNoPop var_8C
  loc_A0E02B: ImpAdLdI2 MemVar_C3D064
  loc_A0E02E: CStrUI1
  loc_A0E030: FStStrNoPop var_90
  loc_A0E033: ConcatStr
  loc_A0E034: FStStrNoPop var_94
  loc_A0E037: LitStr " AND FearOrpa IS NOT NULL"
  loc_A0E03A: ConcatStr
  loc_A0E03B: FStStrNoPop var_98
  loc_A0E03E: LitStr " ORDER BY NumeOrpa;"
  loc_A0E041: ConcatStr
  loc_A0E042: FStStrNoPop var_9C
  loc_A0E045: FLdPr Me
  loc_A0E048: MemLdRfVar from_stack_1.global_52
  loc_A0E04B: NewIfNullPr clsordenpago
  loc_A0E04E: Call clsordenpago.RedefineRS(from_stack_1v)
  loc_A0E053: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A0E062: LitVarI2 var_AC, 0
  loc_A0E067: PopAdLdVar
  loc_A0E068: LitStr "Orden de Pago"
  loc_A0E06B: FLdPr Me
  loc_A0E06E: VCallAd Control_ID_FiltroCbo
  loc_A0E071: FStAdFunc var_B0
  loc_A0E074: FLdPr var_B0
  loc_A0E077: Me.AddItem from_stack_1, from_stack_2
  loc_A0E07C: FFree1Ad var_B0
  loc_A0E07F: LitVarI2 var_AC, 1
  loc_A0E084: PopAdLdVar
  loc_A0E085: LitStr "Expediente"
  loc_A0E088: FLdPr Me
  loc_A0E08B: VCallAd Control_ID_FiltroCbo
  loc_A0E08E: FStAdFunc var_B0
  loc_A0E091: FLdPr var_B0
  loc_A0E094: Me.AddItem from_stack_1, from_stack_2
  loc_A0E099: FFree1Ad var_B0
  loc_A0E09C: LitVarI2 var_AC, 2
  loc_A0E0A1: PopAdLdVar
  loc_A0E0A2: LitStr "Detalle"
  loc_A0E0A5: FLdPr Me
  loc_A0E0A8: VCallAd Control_ID_FiltroCbo
  loc_A0E0AB: FStAdFunc var_B0
  loc_A0E0AE: FLdPr var_B0
  loc_A0E0B1: Me.AddItem from_stack_1, from_stack_2
  loc_A0E0B6: FFree1Ad var_B0
  loc_A0E0B9: LitVarI2 var_AC, 3
  loc_A0E0BE: PopAdLdVar
  loc_A0E0BF: LitStr "Caja de Archivo"
  loc_A0E0C2: FLdPr Me
  loc_A0E0C5: VCallAd Control_ID_FiltroCbo
  loc_A0E0C8: FStAdFunc var_B0
  loc_A0E0CB: FLdPr var_B0
  loc_A0E0CE: Me.AddItem from_stack_1, from_stack_2
  loc_A0E0D3: FFree1Ad var_B0
  loc_A0E0D6: LitI2_Byte 0
  loc_A0E0D8: FLdPr Me
  loc_A0E0DB: VCallAd Control_ID_FiltroCbo
  loc_A0E0DE: FStAdFunc var_B0
  loc_A0E0E1: FLdPr var_B0
  loc_A0E0E4: Me.ListIndex = from_stack_1
  loc_A0E0E9: FFree1Ad var_B0
  loc_A0E0EC: Call cmdCancelar_Click()
  loc_A0E0F1: LitI4 0
  loc_A0E0F6: LitI4 1
  loc_A0E0FB: FLdRfVar var_B4
  loc_A0E0FE: Redim
  loc_A0E108: FLdPr Me
  loc_A0E10B: MemLdRfVar from_stack_1.global_52
  loc_A0E10E: NewIfNullAd
  loc_A0E111: FStAd var_B0 
  loc_A0E115: FLdRfVar var_B0
  loc_A0E118: CVarRef
  loc_A0E11D: ParmAry1St
  loc_A0E123: FLdPr Me
  loc_A0E126: VCallAd Control_ID_dgdABMS
  loc_A0E129: CVarAd
  loc_A0E12D: ParmAry1St
  loc_A0E133: FLdRfVar var_B4
  loc_A0E136: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A0E13B: ILdRf var_B0
  loc_A0E13E: CastAd
  loc_A0E141: FLdPr Me
  loc_A0E144: MemStAdFunc
  loc_A0E148: FLdRfVar var_B4
  loc_A0E14B: Erase
  loc_A0E14C: FFree1Ad var_B0
  loc_A0E14F: ExitProcHresult
End Sub

Private Sub Form_Activate() '9980BC
  'Data Table: 45E504
  loc_998060: FLdRfVar var_C2
  loc_998063: FLdRfVar var_C0
  loc_998066: LitVarI2 var_B8, 1
  loc_99806B: FLdPr Me
  loc_99806E: VCallAd Control_ID_tlbABMS
  loc_998071: FStAdFunc var_88
  loc_998074: FLdPr var_88
  loc_998077: LateIdLdVar var_98 DispID_3 0
  loc_99807E: CastAdVar Me
  loc_998082: FStAdFunc var_BC
  loc_998085: FLdPr var_BC
  loc_998088:  = Me.Buttons.ControlDefault
  loc_99808D: FLdPr var_C0
  loc_998090:  = Me.Enabled
  loc_998095: FLdI2 var_C2
  loc_998098: FFreeAd var_88 = "": var_BC = ""
  loc_9980A1: FFreeVar var_98 = ""
  loc_9980A8: BranchF loc_9980B9
  loc_9980AB: FLdPr Me
  loc_9980AE: MemLdRfVar from_stack_1.global_52
  loc_9980B1: NewIfNullPr clsordenpago
  loc_9980B4: Call clsordenpago.Requery()
  loc_9980B9: ExitProcHresult
  loc_9980BA: CBoolVarNull
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '957AE0
  'Data Table: 45E504
  loc_957AC8: ILdI2 KeyCode
  loc_957ACB: ILdRf Me
  loc_957ACE: CastAd
  loc_957AD1: FStAdFunc var_88
  loc_957AD4: FLdRfVar var_88
  loc_957AD7: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_957ADC: FFree1Ad var_88
  loc_957ADF: ExitProcHresult
End Sub

Private Sub FojaOrpaTxt_GotFocus() '9516F0
  'Data Table: 45E504
  loc_9516DC: FLdPr Me
  loc_9516DF: VCallAd Control_ID_FojaOrpaTxt
  loc_9516E2: CVarAd
  loc_9516E6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9516EB: FFree1Var var_94 = ""
  loc_9516EE: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99A74C
  'Data Table: 45E504
  loc_99A6F0: FLdRfVar var_B4
  loc_99A6F3: FLdRfVar var_B0
  loc_99A6F6: FLdI2 ColIndex
  loc_99A6F9: CVarI2 var_A8
  loc_99A6FC: PopAdLdVar
  loc_99A6FD: FLdPr Me
  loc_99A700: VCallAd Control_ID_dgdABMS
  loc_99A703: FStAdFunc var_88
  loc_99A706: FLdPr var_88
  loc_99A709: LateIdLdVar var_98 DispID_105 0
  loc_99A710: CastAdVar Me
  loc_99A714: FStAdFunc var_AC
  loc_99A717: FLdPr var_AC
  loc_99A71A: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99A71F: FLdPr var_B0
  loc_99A722:  = Me.DataField
  loc_99A727: FLdZeroAd var_B4
  loc_99A72A: PopTmpLdAdStr
  loc_99A72E: FLdPr Me
  loc_99A731: MemLdRfVar from_stack_1.global_52
  loc_99A734: NewIfNullPr clsordenpago
  loc_99A737: Call clsordenpago.Sort(from_stack_1v)
  loc_99A73C: FFree1Str var_B8
  loc_99A73F: FFreeAd var_88 = "": var_AC = ""
  loc_99A748: FFree1Var var_98 = ""
  loc_99A74B: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BA194C
  'Data Table: 45E504
  loc_BA0A38: ILdRf Button
  loc_BA0A3B: FStAd var_88 
  loc_BA0A3F: FLdRfVar var_90
  loc_BA0A42: FLdPr var_88
  loc_BA0A45:  = Me.Key
  loc_BA0A4A: FLdZeroAd var_90
  loc_BA0A4D: FStStr var_94
  loc_BA0A50: ILdRf var_94
  loc_BA0A53: LitStr "btnCrear"
  loc_BA0A56: EqStr
  loc_BA0A58: BranchF loc_BA0BFE
  loc_BA0A5B: FLdRfVar var_98
  loc_BA0A5E: FLdPr Me
  loc_BA0A61: MemLdRfVar from_stack_1.global_52
  loc_BA0A64: NewIfNullPr clsordenpago
  loc_BA0A67: from_stack_1 = clsordenpago.RecordCount
  loc_BA0A6C: ILdRf var_98
  loc_BA0A6F: LitI4 0
  loc_BA0A74: GtI4
  loc_BA0A75: BranchF loc_BA0BFB
  loc_BA0A78: LitI2_Byte 1
  loc_BA0A7A: FLdPr Me
  loc_BA0A7D: MemStUI1
  loc_BA0A81: ILdRf Me
  loc_BA0A84: CastAd
  loc_BA0A87: FStAdFunc var_9C
  loc_BA0A8A: FLdRfVar var_9C
  loc_BA0A8D: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BA0A92: FFree1Ad var_9C
  loc_BA0A95: LitI4 0
  loc_BA0A9A: LitI4 0
  loc_BA0A9F: FLdRfVar var_A0
  loc_BA0AA2: Redim
  loc_BA0AAC: FLdPr Me
  loc_BA0AAF: VCallAd Control_ID_dgdABMS
  loc_BA0AB2: CVarAd
  loc_BA0AB6: ParmAry1St
  loc_BA0ABC: FLdRfVar var_A0
  loc_BA0ABF: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BA0AC4: FLdRfVar var_A0
  loc_BA0AC7: Erase
  loc_BA0AC8: ILdRf Me
  loc_BA0ACB: CastAd
  loc_BA0ACE: FStAdFunc var_9C
  loc_BA0AD1: FLdRfVar var_9C
  loc_BA0AD4: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_BA0AD9: FFree1Ad var_9C
  loc_BA0ADC: LitI4 0
  loc_BA0AE1: LitI4 2
  loc_BA0AE6: FLdRfVar var_A0
  loc_BA0AE9: Redim
  loc_BA0AF3: FLdPr Me
  loc_BA0AF6: VCallAd Control_ID_FearOrpaMsk
  loc_BA0AF9: CVarAd
  loc_BA0AFD: ParmAry1St
  loc_BA0B03: FLdPr Me
  loc_BA0B06: VCallAd Control_ID_ArchOrpaTxt
  loc_BA0B09: CVarAd
  loc_BA0B0D: ParmAry1St
  loc_BA0B13: FLdPr Me
  loc_BA0B16: VCallAd Control_ID_FojaOrpaTxt
  loc_BA0B19: CVarAd
  loc_BA0B1D: ParmAry1St
  loc_BA0B23: FLdRfVar var_A0
  loc_BA0B26: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BA0B2B: FLdRfVar var_A0
  loc_BA0B2E: Erase
  loc_BA0B2F: LitI2_Byte &HFF
  loc_BA0B31: BranchF loc_BA0BFB
  loc_BA0B34: FLdRfVar var_B0
  loc_BA0B37: FLdRfVar var_E8
  loc_BA0B3A: LitVarStr var_E4, "NumeOrpa"
  loc_BA0B3F: PopAdLdVar
  loc_BA0B40: FLdRfVar var_D4
  loc_BA0B43: FLdRfVar var_9C
  loc_BA0B46: FLdPr Me
  loc_BA0B49: MemLdRfVar from_stack_1.global_52
  loc_BA0B4C: NewIfNullPr clsordenpago
  loc_BA0B4F: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA0B54: FLdPr var_9C
  loc_BA0B57:  = Me.Fields
  loc_BA0B5C: FLdPr var_D4
  loc_BA0B5F: from_stack_2 = Me.Item(from_stack_1)
  loc_BA0B64: FLdPr var_E8
  loc_BA0B67:  = Me.Value
  loc_BA0B6C: FLdRfVar var_EA
  loc_BA0B6F: FLdRfVar var_B0
  loc_BA0B72: CI4Var
  loc_BA0B74: ImpAdLdI2 MemVar_C3D064
  loc_BA0B77: FLdPr Me
  loc_BA0B7A: MemLdRfVar from_stack_1.global_52
  loc_BA0B7D: NewIfNullPr clsordenpago
  loc_BA0B80: from_stack_3v = clsordenpago.TieneCargos(from_stack_1v, from_stack_2v)
  loc_BA0B85: FLdI2 var_EA
  loc_BA0B88: FFreeAd var_9C = "": var_D4 = ""
  loc_BA0B91: FFree1Var var_B0 = ""
  loc_BA0B94: BranchF loc_BA0B9A
  loc_BA0B97: Branch loc_BA0BFB
  loc_BA0B9A: LitI2_Byte &HFF
  loc_BA0B9C: FLdPr Me
  loc_BA0B9F: VCallAd Control_ID_DiasTxt
  loc_BA0BA2: FStAdFunc var_9C
  loc_BA0BA5: FLdPr var_9C
  loc_BA0BA8: Me.Enabled = from_stack_1b
  loc_BA0BAD: FFree1Ad var_9C
  loc_BA0BB0: FLdRfVar var_EA
  loc_BA0BB3: LitI2_Byte 1
  loc_BA0BB5: ImpAdLdI2 MemVar_C3D064
  loc_BA0BB8: FLdPr Me
  loc_BA0BBB: MemLdRfVar from_stack_1.global_52
  loc_BA0BBE: NewIfNullPr clsordenpago
  loc_BA0BC1: from_stack_3v = clsordenpago.BuscaDiasRendicionCargo(from_stack_1v, from_stack_2v)
  loc_BA0BC6: FLdI2 var_EA
  loc_BA0BC9: CStrUI1
  loc_BA0BCB: FStStrNoPop var_90
  loc_BA0BCE: FLdPr Me
  loc_BA0BD1: VCallAd Control_ID_DiasTxt
  loc_BA0BD4: FStAdFunc var_9C
  loc_BA0BD7: FLdPr var_9C
  loc_BA0BDA: Me.Text = from_stack_1
  loc_BA0BDF: FFree1Str var_90
  loc_BA0BE2: FFree1Ad var_9C
  loc_BA0BE5: LitI2_Byte &HFF
  loc_BA0BE7: FLdPr Me
  loc_BA0BEA: VCallAd Control_ID_cmdGenerarCargo
  loc_BA0BED: FStAdFunc var_9C
  loc_BA0BF0: FLdPr var_9C
  loc_BA0BF3: Me.Enabled = from_stack_1b
  loc_BA0BF8: FFree1Ad var_9C
  loc_BA0BFB: Branch loc_BA1949
  loc_BA0BFE: ILdRf var_94
  loc_BA0C01: LitStr "btnModificar"
  loc_BA0C04: EqStr
  loc_BA0C06: BranchF loc_BA0C0C
  loc_BA0C09: Branch loc_BA1949
  loc_BA0C0C: ILdRf var_94
  loc_BA0C0F: LitStr "btnEliminar"
  loc_BA0C12: EqStr
  loc_BA0C14: BranchF loc_BA15D3
  loc_BA0C17: FLdRfVar var_98
  loc_BA0C1A: FLdPr Me
  loc_BA0C1D: MemLdRfVar from_stack_1.global_52
  loc_BA0C20: NewIfNullPr clsordenpago
  loc_BA0C23: from_stack_1 = clsordenpago.RecordCount
  loc_BA0C28: ILdRf var_98
  loc_BA0C2B: LitI4 0
  loc_BA0C30: GtI4
  loc_BA0C31: BranchF loc_BA15D0
  loc_BA0C34: LitI2_Byte 3
  loc_BA0C36: FLdPr Me
  loc_BA0C39: MemStUI1
  loc_BA0C3D: LitStr vbNullString
  loc_BA0C40: FLdPr Me
  loc_BA0C43: MemStStrCopy
  loc_BA0C47: LitI2_Byte 0
  loc_BA0C49: PopTmpLdAd2 var_EA
  loc_BA0C4C: Call FearOrpaMsk_UnknownEvent_8()
  loc_BA0C51: FLdPr Me
  loc_BA0C54: MemLdStr global_60
  loc_BA0C57: LitStr vbNullString
  loc_BA0C5A: NeStr
  loc_BA0C5C: BranchF loc_BA0C60
  loc_BA0C5F: ExitProcHresult
  loc_BA0C60: FLdPr Me
  loc_BA0C63: VCallAd Control_ID_FearOrpaMsk
  loc_BA0C66: FStAdFunc var_F0
  loc_BA0C69: LitNothing
  loc_BA0C6B: CastAd
  loc_BA0C6E: FStAdFunc var_E8
  loc_BA0C71: FLdRfVar var_E8
  loc_BA0C74: FLdZeroAd var_F0
  loc_BA0C77: FStAdFuncNoPop
  loc_BA0C7A: CastAd
  loc_BA0C7D: FStAdFunc var_D4
  loc_BA0C80: FLdRfVar var_D4
  loc_BA0C83: FLdPr Me
  loc_BA0C86: MemLdRfVar from_stack_1.global_60
  loc_BA0C89: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BA0C8E: FStI2 var_8A
  loc_BA0C91: FFreeAd var_9C = "": var_D4 = "": var_E8 = ""
  loc_BA0C9C: FLdI2 var_8A
  loc_BA0C9F: NotI4
  loc_BA0CA0: BranchF loc_BA15D0
  loc_BA0CA3: FLdRfVar var_B0
  loc_BA0CA6: FLdRfVar var_E8
  loc_BA0CA9: LitVarStr var_E4, "TipoOrpa"
  loc_BA0CAE: PopAdLdVar
  loc_BA0CAF: FLdRfVar var_D4
  loc_BA0CB2: FLdRfVar var_9C
  loc_BA0CB5: FLdPr Me
  loc_BA0CB8: MemLdRfVar from_stack_1.global_52
  loc_BA0CBB: NewIfNullPr clsordenpago
  loc_BA0CBE: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA0CC3: FLdPr var_9C
  loc_BA0CC6:  = Me.Fields
  loc_BA0CCB: FLdPr var_D4
  loc_BA0CCE: from_stack_2 = Me.Item(from_stack_1)
  loc_BA0CD3: FLdPr var_E8
  loc_BA0CD6:  = Me.Value
  loc_BA0CDB: FLdRfVar var_B0
  loc_BA0CDE: LitVarStr var_100, "Devengado"
  loc_BA0CE3: HardType
  loc_BA0CE4: EqVarBool
  loc_BA0CE6: FFreeAd var_9C = "": var_D4 = ""
  loc_BA0CEF: FFree1Var var_B0 = ""
  loc_BA0CF2: BranchF loc_BA0DE7
  loc_BA0CF5: FLdRfVar var_B0
  loc_BA0CF8: FLdRfVar var_E8
  loc_BA0CFB: LitVarStr var_E4, "PeriInfo"
  loc_BA0D00: PopAdLdVar
  loc_BA0D01: FLdRfVar var_D4
  loc_BA0D04: FLdRfVar var_9C
  loc_BA0D07: FLdPr Me
  loc_BA0D0A: MemLdRfVar from_stack_1.global_52
  loc_BA0D0D: NewIfNullPr clsordenpago
  loc_BA0D10: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA0D15: FLdPr var_9C
  loc_BA0D18:  = Me.Fields
  loc_BA0D1D: FLdPr var_D4
  loc_BA0D20: from_stack_2 = Me.Item(from_stack_1)
  loc_BA0D25: FLdPr var_E8
  loc_BA0D28:  = Me.Value
  loc_BA0D2D: FLdRfVar var_C0
  loc_BA0D30: FLdRfVar var_108
  loc_BA0D33: LitVarStr var_100, "NumeOrpa"
  loc_BA0D38: PopAdLdVar
  loc_BA0D39: FLdRfVar var_104
  loc_BA0D3C: FLdRfVar var_F0
  loc_BA0D3F: FLdPr Me
  loc_BA0D42: MemLdRfVar from_stack_1.global_52
  loc_BA0D45: NewIfNullPr clsordenpago
  loc_BA0D48: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA0D4D: FLdPr var_F0
  loc_BA0D50:  = Me.Fields
  loc_BA0D55: FLdPr var_104
  loc_BA0D58: from_stack_2 = Me.Item(from_stack_1)
  loc_BA0D5D: FLdPr var_108
  loc_BA0D60:  = Me.Value
  loc_BA0D65: FLdRfVar var_EA
  loc_BA0D68: FLdRfVar var_C0
  loc_BA0D6B: CI4Var
  loc_BA0D6D: FLdRfVar var_B0
  loc_BA0D70: CI2Var
  loc_BA0D71: FLdPr Me
  loc_BA0D74: MemLdRfVar from_stack_1.global_52
  loc_BA0D77: NewIfNullPr clsordenpago
  loc_BA0D7A: from_stack_3v = clsordenpago.TieneAjusImpu(from_stack_1v, from_stack_2v)
  loc_BA0D7F: FLdI2 var_EA
  loc_BA0D82: FFreeAd var_9C = "": var_D4 = "": var_F0 = "": var_104 = "": var_E8 = ""
  loc_BA0D91: FFreeVar var_B0 = ""
  loc_BA0D98: BranchF loc_BA0DE7
  loc_BA0D9B: LitStr "La OP tiene AJUSTE de Imputaciones, no puede sacar el Pagado. Verifique..."
  loc_BA0D9E: FLdPr Me
  loc_BA0DA1: MemStStrCopy
  loc_BA0DA5: FLdPr Me
  loc_BA0DA8: VCallAd Control_ID_FearOrpaMsk
  loc_BA0DAB: FStAdFunc var_F0
  loc_BA0DAE: LitNothing
  loc_BA0DB0: CastAd
  loc_BA0DB3: FStAdFunc var_E8
  loc_BA0DB6: FLdRfVar var_E8
  loc_BA0DB9: FLdZeroAd var_F0
  loc_BA0DBC: FStAdFuncNoPop
  loc_BA0DBF: CastAd
  loc_BA0DC2: FStAdFunc var_D4
  loc_BA0DC5: FLdRfVar var_D4
  loc_BA0DC8: FLdPr Me
  loc_BA0DCB: MemLdRfVar from_stack_1.global_60
  loc_BA0DCE: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BA0DD3: FStI2 var_8A
  loc_BA0DD6: FFreeAd var_9C = "": var_D4 = "": var_E8 = ""
  loc_BA0DE1: Call cmdCancelar_Click()
  loc_BA0DE6: ExitProcHresult
  loc_BA0DE7: FLdRfVar var_E8
  loc_BA0DEA: LitVarStr var_E4, "PeriInfo"
  loc_BA0DEF: PopAdLdVar
  loc_BA0DF0: FLdRfVar var_D4
  loc_BA0DF3: FLdRfVar var_9C
  loc_BA0DF6: FLdPr Me
  loc_BA0DF9: MemLdRfVar from_stack_1.global_52
  loc_BA0DFC: NewIfNullPr clsordenpago
  loc_BA0DFF: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA0E04: FLdPr var_9C
  loc_BA0E07:  = Me.Fields
  loc_BA0E0C: FLdPr var_D4
  loc_BA0E0F: from_stack_2 = Me.Item(from_stack_1)
  loc_BA0E14: FLdRfVar var_C0
  loc_BA0E17: FLdRfVar var_108
  loc_BA0E1A: LitVarStr var_100, "NumeOrpa"
  loc_BA0E1F: PopAdLdVar
  loc_BA0E20: FLdRfVar var_104
  loc_BA0E23: FLdRfVar var_F0
  loc_BA0E26: FLdPr Me
  loc_BA0E29: MemLdRfVar from_stack_1.global_52
  loc_BA0E2C: NewIfNullPr clsordenpago
  loc_BA0E2F: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA0E34: FLdPr var_F0
  loc_BA0E37:  = Me.Fields
  loc_BA0E3C: FLdPr var_104
  loc_BA0E3F: from_stack_2 = Me.Item(from_stack_1)
  loc_BA0E44: FLdPr var_108
  loc_BA0E47:  = Me.Value
  loc_BA0E4C: FLdRfVar var_EA
  loc_BA0E4F: FLdRfVar var_C0
  loc_BA0E52: CI4Var
  loc_BA0E54: FLdZeroAd var_E8
  loc_BA0E57: CVarAd
  loc_BA0E5B: PopAdLdVar
  loc_BA0E5C: FLdPr Me
  loc_BA0E5F: MemLdRfVar from_stack_1.global_52
  loc_BA0E62: NewIfNullPr clsordenpago
  loc_BA0E65: from_stack_3v = clsordenpago.SoloRetenciones(from_stack_1v, from_stack_2v)
  loc_BA0E6A: FLdI2 var_EA
  loc_BA0E6D: FFreeAd var_9C = "": var_D4 = "": var_F0 = "": var_104 = ""
  loc_BA0E7A: FFreeVar var_B0 = ""
  loc_BA0E81: BranchF loc_BA0FA6
  loc_BA0E84: FLdRfVar var_B0
  loc_BA0E87: FLdRfVar var_E8
  loc_BA0E8A: LitVarStr var_E4, "NumeOrpa"
  loc_BA0E8F: PopAdLdVar
  loc_BA0E90: FLdRfVar var_D4
  loc_BA0E93: FLdRfVar var_9C
  loc_BA0E96: FLdPr Me
  loc_BA0E99: MemLdRfVar from_stack_1.global_52
  loc_BA0E9C: NewIfNullPr clsordenpago
  loc_BA0E9F: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA0EA4: FLdPr var_9C
  loc_BA0EA7:  = Me.Fields
  loc_BA0EAC: FLdPr var_D4
  loc_BA0EAF: from_stack_2 = Me.Item(from_stack_1)
  loc_BA0EB4: FLdPr var_E8
  loc_BA0EB7:  = Me.Value
  loc_BA0EBC: LitI2_Byte 0
  loc_BA0EBE: PopTmpLdAd2 var_11E
  loc_BA0EC1: LitI2_Byte &HFF
  loc_BA0EC3: PopTmpLdAd2 var_EA
  loc_BA0EC6: LitStr "Orden de pago SIN cheques..."
  loc_BA0EC9: LitStr vbCrLf
  loc_BA0ECC: ConcatStr
  loc_BA0ECD: FStStrNoPop var_90
  loc_BA0ED0: LitStr "¿Está seguro de ANULAR la OP Y la Liquidación del Gasto de OP: "
  loc_BA0ED3: ConcatStr
  loc_BA0ED4: CVarStr var_C0
  loc_BA0ED7: FLdRfVar var_B0
  loc_BA0EDA: ConcatVar var_D0
  loc_BA0EDE: LitVarStr var_100, "?"
  loc_BA0EE3: ConcatVar var_118
  loc_BA0EE7: CStrVarVal var_11C
  loc_BA0EEB: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BA0EF0: CI4UI1
  loc_BA0EF1: LitI4 6
  loc_BA0EF6: EqI4
  loc_BA0EF7: FFreeStr var_90 = ""
  loc_BA0EFE: FFreeAd var_9C = "": var_D4 = ""
  loc_BA0F07: FFreeVar var_C0 = "": var_B0 = "": var_D0 = ""
  loc_BA0F12: BranchF loc_BA0FA3
  loc_BA0F15: ILdRf Me
  loc_BA0F18: CastAd
  loc_BA0F1B: FStAdFunc var_9C
  loc_BA0F1E: FLdRfVar var_9C
  loc_BA0F21: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BA0F26: FFree1Ad var_9C
  loc_BA0F29: LitI4 0
  loc_BA0F2E: LitI4 0
  loc_BA0F33: FLdRfVar var_A0
  loc_BA0F36: Redim
  loc_BA0F40: FLdPr Me
  loc_BA0F43: VCallAd Control_ID_dgdABMS
  loc_BA0F46: CVarAd
  loc_BA0F4A: ParmAry1St
  loc_BA0F50: FLdRfVar var_A0
  loc_BA0F53: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BA0F58: FLdRfVar var_A0
  loc_BA0F5B: Erase
  loc_BA0F5C: ILdRf Me
  loc_BA0F5F: CastAd
  loc_BA0F62: FStAdFunc var_9C
  loc_BA0F65: FLdRfVar var_9C
  loc_BA0F68: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_BA0F6D: FFree1Ad var_9C
  loc_BA0F70: LitI4 0
  loc_BA0F75: LitI4 0
  loc_BA0F7A: FLdRfVar var_A0
  loc_BA0F7D: Redim
  loc_BA0F87: FLdPr Me
  loc_BA0F8A: VCallAd Control_ID_FearOrpaMsk
  loc_BA0F8D: CVarAd
  loc_BA0F91: ParmAry1St
  loc_BA0F97: FLdRfVar var_A0
  loc_BA0F9A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BA0F9F: FLdRfVar var_A0
  loc_BA0FA2: Erase
  loc_BA0FA3: Branch loc_BA15D0
  loc_BA0FA6: FLdRfVar var_B0
  loc_BA0FA9: FLdRfVar var_E8
  loc_BA0FAC: LitVarStr var_E4, "PeriInfo"
  loc_BA0FB1: PopAdLdVar
  loc_BA0FB2: FLdRfVar var_D4
  loc_BA0FB5: FLdRfVar var_9C
  loc_BA0FB8: FLdPr Me
  loc_BA0FBB: MemLdRfVar from_stack_1.global_52
  loc_BA0FBE: NewIfNullPr clsordenpago
  loc_BA0FC1: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA0FC6: FLdPr var_9C
  loc_BA0FC9:  = Me.Fields
  loc_BA0FCE: FLdPr var_D4
  loc_BA0FD1: from_stack_2 = Me.Item(from_stack_1)
  loc_BA0FD6: FLdPr var_E8
  loc_BA0FD9:  = Me.Value
  loc_BA0FDE: FLdRfVar var_C0
  loc_BA0FE1: FLdRfVar var_108
  loc_BA0FE4: LitVarStr var_100, "NumeOrpa"
  loc_BA0FE9: PopAdLdVar
  loc_BA0FEA: FLdRfVar var_104
  loc_BA0FED: FLdRfVar var_F0
  loc_BA0FF0: FLdPr Me
  loc_BA0FF3: MemLdRfVar from_stack_1.global_52
  loc_BA0FF6: NewIfNullPr clsordenpago
  loc_BA0FF9: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA0FFE: FLdPr var_F0
  loc_BA1001:  = Me.Fields
  loc_BA1006: FLdPr var_104
  loc_BA1009: from_stack_2 = Me.Item(from_stack_1)
  loc_BA100E: FLdPr var_108
  loc_BA1011:  = Me.Value
  loc_BA1016: FLdRfVar var_EA
  loc_BA1019: LitStr vbNullString
  loc_BA101C: FStStrCopy var_90
  loc_BA101F: FLdRfVar var_90
  loc_BA1022: FLdRfVar var_C0
  loc_BA1025: CI4Var
  loc_BA1027: FLdRfVar var_B0
  loc_BA102A: CI2Var
  loc_BA102B: FLdPr Me
  loc_BA102E: MemLdRfVar from_stack_1.global_52
  loc_BA1031: NewIfNullPr clsordenpago
  loc_BA1034: from_stack_4v = clsordenpago.TieneRetenciones(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BA1039: FLdI2 var_EA
  loc_BA103C: FFree1Str var_90
  loc_BA103F: FFreeAd var_9C = "": var_D4 = "": var_F0 = "": var_104 = "": var_E8 = ""
  loc_BA104E: FFreeVar var_B0 = ""
  loc_BA1055: BranchF loc_BA12B6
  loc_BA1058: FLdRfVar var_B0
  loc_BA105B: FLdRfVar var_E8
  loc_BA105E: LitVarStr var_E4, "FearOrpa"
  loc_BA1063: PopAdLdVar
  loc_BA1064: FLdRfVar var_D4
  loc_BA1067: FLdRfVar var_9C
  loc_BA106A: FLdPr Me
  loc_BA106D: MemLdRfVar from_stack_1.global_52
  loc_BA1070: NewIfNullPr clsordenpago
  loc_BA1073: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA1078: FLdPr var_9C
  loc_BA107B:  = Me.Fields
  loc_BA1080: FLdPr var_D4
  loc_BA1083: from_stack_2 = Me.Item(from_stack_1)
  loc_BA1088: FLdPr var_E8
  loc_BA108B:  = Me.Value
  loc_BA1090: ImpAdCallFPR4 Proc_261_34_995F34()
  loc_BA1095: FLdRfVar var_B0
  loc_BA1098: FnCDateVar
  loc_BA109A: SubR4
  loc_BA109B: CR8R8
  loc_BA109C: LitI2_Byte 5
  loc_BA109E: CR8I2
  loc_BA109F: LeR8
  loc_BA10A0: FFreeAd var_9C = "": var_D4 = ""
  loc_BA10A9: FFree1Var var_B0 = ""
  loc_BA10AC: BranchF loc_BA10BF
  loc_BA10AF: LitI4 0
  loc_BA10B4: LitStr "Advertencia: la OP tiene Retenciones/Pagado de menos de 5 días de antigüedad. Continuar..."
  loc_BA10B7: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA10BC: Branch loc_BA12B6
  loc_BA10BF: ImpAdCallFPR4 Proc_261_34_995F34()
  loc_BA10C4: CVarDate var_B0
  loc_BA10C8: FLdRfVar var_C0
  loc_BA10CB: ImpAdCallFPR4  = Year()
  loc_BA10D0: FLdRfVar var_C0
  loc_BA10D3: FLdRfVar var_E8
  loc_BA10D6: LitVarStr var_100, "FearOrpa"
  loc_BA10DB: PopAdLdVar
  loc_BA10DC: FLdRfVar var_D4
  loc_BA10DF: FLdRfVar var_9C
  loc_BA10E2: FLdPr Me
  loc_BA10E5: MemLdRfVar from_stack_1.global_52
  loc_BA10E8: NewIfNullPr clsordenpago
  loc_BA10EB: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA10F0: FLdPr var_9C
  loc_BA10F3:  = Me.Fields
  loc_BA10F8: FLdPr var_D4
  loc_BA10FB: from_stack_2 = Me.Item(from_stack_1)
  loc_BA1100: FLdZeroAd var_E8
  loc_BA1103: CVarAd
  loc_BA1107: FLdRfVar var_118
  loc_BA110A: ImpAdCallFPR4  = Year()
  loc_BA110F: FLdRfVar var_118
  loc_BA1112: EqVar var_130
  loc_BA1116: ImpAdCallFPR4 Proc_261_34_995F34()
  loc_BA111B: CVarDate var_150
  loc_BA111F: FLdRfVar var_160
  loc_BA1122: ImpAdCallFPR4  = Month()
  loc_BA1127: FLdRfVar var_160
  loc_BA112A: FLdRfVar var_108
  loc_BA112D: LitVarStr var_170, "FearOrpa"
  loc_BA1132: PopAdLdVar
  loc_BA1133: FLdRfVar var_104
  loc_BA1136: FLdRfVar var_F0
  loc_BA1139: FLdPr Me
  loc_BA113C: MemLdRfVar from_stack_1.global_52
  loc_BA113F: NewIfNullPr clsordenpago
  loc_BA1142: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA1147: FLdPr var_F0
  loc_BA114A:  = Me.Fields
  loc_BA114F: FLdPr var_104
  loc_BA1152: from_stack_2 = Me.Item(from_stack_1)
  loc_BA1157: FLdZeroAd var_108
  loc_BA115A: CVarAd
  loc_BA115E: FLdRfVar var_190
  loc_BA1161: ImpAdCallFPR4  = Month()
  loc_BA1166: FLdRfVar var_190
  loc_BA1169: EqVar var_1A0
  loc_BA116D: AndVar var_1B0
  loc_BA1171: CBoolVarNull
  loc_BA1173: FFreeAd var_9C = "": var_D4 = "": var_F0 = ""
  loc_BA117E: FFreeVar var_B0 = "": var_D0 = "": var_C0 = "": var_118 = "": var_150 = "": var_180 = "": var_160 = ""
  loc_BA1191: BranchF loc_BA11A4
  loc_BA1194: LitI4 0
  loc_BA1199: LitStr "Advertencia: la OP tiene PAGADO en el MES en curso. Verifique..."
  loc_BA119C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA11A1: Branch loc_BA12B6
  loc_BA11A4: FLdRfVar var_B0
  loc_BA11A7: FLdRfVar var_E8
  loc_BA11AA: LitVarStr var_E4, "FearOrpa"
  loc_BA11AF: PopAdLdVar
  loc_BA11B0: FLdRfVar var_D4
  loc_BA11B3: FLdRfVar var_9C
  loc_BA11B6: FLdPr Me
  loc_BA11B9: MemLdRfVar from_stack_1.global_52
  loc_BA11BC: NewIfNullPr clsordenpago
  loc_BA11BF: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA11C4: FLdPr var_9C
  loc_BA11C7:  = Me.Fields
  loc_BA11CC: FLdPr var_D4
  loc_BA11CF: from_stack_2 = Me.Item(from_stack_1)
  loc_BA11D4: FLdPr var_E8
  loc_BA11D7:  = Me.Value
  loc_BA11DC: FLdRfVar var_B0
  loc_BA11DF: FnCDateVar
  loc_BA11E1: CVarDate var_100
  loc_BA11E5: HardType
  loc_BA11E6: LitI2_Byte &H1E
  loc_BA11E8: LitI2_Byte &HC
  loc_BA11EA: ImpAdLdI2 MemVar_C3D064
  loc_BA11ED: FLdRfVar var_C0
  loc_BA11F0: ImpAdCallFPR4  = DateSerial(, , )
  loc_BA11F5: FLdRfVar var_C0
  loc_BA11F8: EqVar var_D0
  loc_BA11FC: FLdRfVar var_118
  loc_BA11FF: FLdRfVar var_108
  loc_BA1202: LitVarStr var_140, "FearOrpa"
  loc_BA1207: PopAdLdVar
  loc_BA1208: FLdRfVar var_104
  loc_BA120B: FLdRfVar var_F0
  loc_BA120E: FLdPr Me
  loc_BA1211: MemLdRfVar from_stack_1.global_52
  loc_BA1214: NewIfNullPr clsordenpago
  loc_BA1217: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA121C: FLdPr var_F0
  loc_BA121F:  = Me.Fields
  loc_BA1224: FLdPr var_104
  loc_BA1227: from_stack_2 = Me.Item(from_stack_1)
  loc_BA122C: FLdPr var_108
  loc_BA122F:  = Me.Value
  loc_BA1234: FLdRfVar var_118
  loc_BA1237: FnCDateVar
  loc_BA1239: CVarDate var_170
  loc_BA123D: HardType
  loc_BA123E: LitI2_Byte &H1F
  loc_BA1240: LitI2_Byte &HC
  loc_BA1242: ImpAdLdI2 MemVar_C3D064
  loc_BA1245: FLdRfVar var_130
  loc_BA1248: ImpAdCallFPR4  = DateSerial(, , )
  loc_BA124D: FLdRfVar var_130
  loc_BA1250: EqVar var_150
  loc_BA1254: OrVar var_160
  loc_BA1258: CBoolVarNull
  loc_BA125A: FFreeAd var_9C = "": var_D4 = "": var_E8 = "": var_F0 = "": var_104 = ""
  loc_BA1269: FFreeVar var_B0 = "": var_C0 = "": var_118 = ""
  loc_BA1274: BranchF loc_BA1287
  loc_BA1277: LitI4 0
  loc_BA127C: LitStr "Advertencia: la OP tiene Retenciones/Pagado de más de 5 días de antigüedad. Continuar..."
  loc_BA127F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA1284: Branch loc_BA12B6
  loc_BA1287: LitStr "La OP tiene Retenciones, no puede sacar el Pagado. Verifique..."
  loc_BA128A: FLdPr Me
  loc_BA128D: MemStStrCopy
  loc_BA1291: LitI4 0
  loc_BA1296: FLdPr Me
  loc_BA1299: MemLdStr global_60
  loc_BA129C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA12A1: ImpAdLdI4 MemVar_C3D03C
  loc_BA12A4: LitStr "root"
  loc_BA12A7: EqStr
  loc_BA12A9: BranchF loc_BA12B6
  loc_BA12AC: LitStr vbNullString
  loc_BA12AF: FLdPr Me
  loc_BA12B2: MemStStrCopy
  loc_BA12B6: FLdRfVar var_B0
  loc_BA12B9: FLdRfVar var_E8
  loc_BA12BC: LitVarStr var_E4, "NumeOrpa"
  loc_BA12C1: PopAdLdVar
  loc_BA12C2: FLdRfVar var_D4
  loc_BA12C5: FLdRfVar var_9C
  loc_BA12C8: FLdPr Me
  loc_BA12CB: MemLdRfVar from_stack_1.global_52
  loc_BA12CE: NewIfNullPr clsordenpago
  loc_BA12D1: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA12D6: FLdPr var_9C
  loc_BA12D9:  = Me.Fields
  loc_BA12DE: FLdPr var_D4
  loc_BA12E1: from_stack_2 = Me.Item(from_stack_1)
  loc_BA12E6: FLdPr var_E8
  loc_BA12E9:  = Me.Value
  loc_BA12EE: FLdRfVar var_EA
  loc_BA12F1: FLdRfVar var_B0
  loc_BA12F4: CI4Var
  loc_BA12F6: ImpAdLdI2 MemVar_C3D064
  loc_BA12F9: FLdPr Me
  loc_BA12FC: MemLdRfVar from_stack_1.global_52
  loc_BA12FF: NewIfNullPr clsordenpago
  loc_BA1302: from_stack_3v = clsordenpago.TieneChequeConciliado(from_stack_1v, from_stack_2v)
  loc_BA1307: FLdI2 var_EA
  loc_BA130A: FFreeAd var_9C = "": var_D4 = ""
  loc_BA1313: FFree1Var var_B0 = ""
  loc_BA1316: BranchF loc_BA1333
  loc_BA1319: LitStr "La OP tiene Cheque/s conciliado/s, no puede sacar el Pagado. Verifique..."
  loc_BA131C: FLdPr Me
  loc_BA131F: MemStStrCopy
  loc_BA1323: LitI4 0
  loc_BA1328: FLdPr Me
  loc_BA132B: MemLdStr global_60
  loc_BA132E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA1333: LitI2_Byte &HFF
  loc_BA1335: BranchF loc_BA13E1
  loc_BA1338: FLdRfVar var_B0
  loc_BA133B: FLdRfVar var_E8
  loc_BA133E: LitVarStr var_E4, "NumeOrpa"
  loc_BA1343: PopAdLdVar
  loc_BA1344: FLdRfVar var_D4
  loc_BA1347: FLdRfVar var_9C
  loc_BA134A: FLdPr Me
  loc_BA134D: MemLdRfVar from_stack_1.global_52
  loc_BA1350: NewIfNullPr clsordenpago
  loc_BA1353: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA1358: FLdPr var_9C
  loc_BA135B:  = Me.Fields
  loc_BA1360: FLdPr var_D4
  loc_BA1363: from_stack_2 = Me.Item(from_stack_1)
  loc_BA1368: FLdPr var_E8
  loc_BA136B:  = Me.Value
  loc_BA1370: FLdRfVar var_EA
  loc_BA1373: FLdRfVar var_B0
  loc_BA1376: CI4Var
  loc_BA1378: ImpAdLdI2 MemVar_C3D064
  loc_BA137B: FLdPr Me
  loc_BA137E: MemLdRfVar from_stack_1.global_52
  loc_BA1381: NewIfNullPr clsordenpago
  loc_BA1384: from_stack_3v = clsordenpago.TieneDescargos(from_stack_1v, from_stack_2v)
  loc_BA1389: FLdI2 var_EA
  loc_BA138C: FFreeAd var_9C = "": var_D4 = ""
  loc_BA1395: FFree1Var var_B0 = ""
  loc_BA1398: BranchF loc_BA13E1
  loc_BA139B: LitStr "La OP tiene Descargos, no se puede sacar el Pagado. Verifique..."
  loc_BA139E: FLdPr Me
  loc_BA13A1: MemStStrCopy
  loc_BA13A5: FLdPr Me
  loc_BA13A8: VCallAd Control_ID_FearOrpaMsk
  loc_BA13AB: FStAdFunc var_F0
  loc_BA13AE: LitNothing
  loc_BA13B0: CastAd
  loc_BA13B3: FStAdFunc var_E8
  loc_BA13B6: FLdRfVar var_E8
  loc_BA13B9: FLdZeroAd var_F0
  loc_BA13BC: FStAdFuncNoPop
  loc_BA13BF: CastAd
  loc_BA13C2: FStAdFunc var_D4
  loc_BA13C5: FLdRfVar var_D4
  loc_BA13C8: FLdPr Me
  loc_BA13CB: MemLdRfVar from_stack_1.global_60
  loc_BA13CE: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BA13D3: FStI2 var_8A
  loc_BA13D6: FFreeAd var_9C = "": var_D4 = "": var_E8 = ""
  loc_BA13E1: FLdPr Me
  loc_BA13E4: MemLdStr global_60
  loc_BA13E7: LitStr vbNullString
  loc_BA13EA: EqStr
  loc_BA13EC: BranchF loc_BA15D0
  loc_BA13EF: FLdRfVar var_B0
  loc_BA13F2: FLdRfVar var_E8
  loc_BA13F5: LitVarStr var_E4, "NumeOrpa"
  loc_BA13FA: PopAdLdVar
  loc_BA13FB: FLdRfVar var_D4
  loc_BA13FE: FLdRfVar var_9C
  loc_BA1401: FLdPr Me
  loc_BA1404: MemLdRfVar from_stack_1.global_52
  loc_BA1407: NewIfNullPr clsordenpago
  loc_BA140A: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA140F: FLdPr var_9C
  loc_BA1412:  = Me.Fields
  loc_BA1417: FLdPr var_D4
  loc_BA141A: from_stack_2 = Me.Item(from_stack_1)
  loc_BA141F: FLdPr var_E8
  loc_BA1422:  = Me.Value
  loc_BA1427: LitI2_Byte 0
  loc_BA1429: PopTmpLdAd2 var_11E
  loc_BA142C: LitI2_Byte &HFF
  loc_BA142E: PopTmpLdAd2 var_EA
  loc_BA1431: LitVarStr var_100, "¿Está seguro de sacar el pagado a la orden de pago: "
  loc_BA1436: FLdRfVar var_B0
  loc_BA1439: ConcatVar var_C0
  loc_BA143D: LitVarStr var_140, "?"
  loc_BA1442: ConcatVar var_D0
  loc_BA1446: CStrVarVal var_90
  loc_BA144A: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BA144F: CI4UI1
  loc_BA1450: LitI4 6
  loc_BA1455: EqI4
  loc_BA1456: FFree1Str var_90
  loc_BA1459: FFreeAd var_9C = "": var_D4 = ""
  loc_BA1462: FFreeVar var_B0 = "": var_C0 = ""
  loc_BA146B: BranchF loc_BA15D0
  loc_BA146E: FLdRfVar var_B0
  loc_BA1471: FLdRfVar var_E8
  loc_BA1474: LitVarStr var_E4, "PeriInfo"
  loc_BA1479: PopAdLdVar
  loc_BA147A: FLdRfVar var_D4
  loc_BA147D: FLdRfVar var_9C
  loc_BA1480: FLdPr Me
  loc_BA1483: MemLdRfVar from_stack_1.global_52
  loc_BA1486: NewIfNullPr clsordenpago
  loc_BA1489: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA148E: FLdPr var_9C
  loc_BA1491:  = Me.Fields
  loc_BA1496: FLdPr var_D4
  loc_BA1499: from_stack_2 = Me.Item(from_stack_1)
  loc_BA149E: FLdPr var_E8
  loc_BA14A1:  = Me.Value
  loc_BA14A6: FLdRfVar var_C0
  loc_BA14A9: FLdRfVar var_108
  loc_BA14AC: LitVarStr var_100, "NumeOrpa"
  loc_BA14B1: PopAdLdVar
  loc_BA14B2: FLdRfVar var_104
  loc_BA14B5: FLdRfVar var_F0
  loc_BA14B8: FLdPr Me
  loc_BA14BB: MemLdRfVar from_stack_1.global_52
  loc_BA14BE: NewIfNullPr clsordenpago
  loc_BA14C1: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA14C6: FLdPr var_F0
  loc_BA14C9:  = Me.Fields
  loc_BA14CE: FLdPr var_104
  loc_BA14D1: from_stack_2 = Me.Item(from_stack_1)
  loc_BA14D6: FLdPr var_108
  loc_BA14D9:  = Me.Value
  loc_BA14DE: FLdRfVar var_D0
  loc_BA14E1: FLdRfVar var_1BC
  loc_BA14E4: LitVarStr var_140, "TipoOrpa"
  loc_BA14E9: PopAdLdVar
  loc_BA14EA: FLdRfVar var_1B8
  loc_BA14ED: FLdRfVar var_1B4
  loc_BA14F0: FLdPr Me
  loc_BA14F3: MemLdRfVar from_stack_1.global_52
  loc_BA14F6: NewIfNullPr clsordenpago
  loc_BA14F9: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA14FE: FLdPr var_1B4
  loc_BA1501:  = Me.Fields
  loc_BA1506: FLdPr var_1B8
  loc_BA1509: from_stack_2 = Me.Item(from_stack_1)
  loc_BA150E: FLdPr var_1BC
  loc_BA1511:  = Me.Value
  loc_BA1516: FLdRfVar var_11C
  loc_BA1519: FLdRfVar var_D0
  loc_BA151C: CStrVarTmp
  loc_BA151D: FStStrNoPop var_90
  loc_BA1520: FLdRfVar var_C0
  loc_BA1523: CI4Var
  loc_BA1525: FLdRfVar var_B0
  loc_BA1528: CI2Var
  loc_BA1529: FLdPr Me
  loc_BA152C: MemLdRfVar from_stack_1.global_52
  loc_BA152F: NewIfNullPr clsordenpago
  loc_BA1532: from_stack_4v = clsordenpago.AnularPagado(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BA1537: ILdRf var_11C
  loc_BA153A: FLdPr Me
  loc_BA153D: MemStStrCopy
  loc_BA1541: FFreeStr var_90 = ""
  loc_BA1548: FFreeAd var_9C = "": var_D4 = "": var_F0 = "": var_104 = "": var_1B4 = "": var_1B8 = "": var_E8 = "": var_108 = ""
  loc_BA155D: FFreeVar var_B0 = "": var_C0 = ""
  loc_BA1566: LitI4 0
  loc_BA156B: LitVarStr var_100, "Se anuló el pagado de la Orden de Pago número: "
  loc_BA1570: FLdRfVar var_B0
  loc_BA1573: FLdRfVar var_E8
  loc_BA1576: LitVarStr var_E4, "NumeOrpa"
  loc_BA157B: PopAdLdVar
  loc_BA157C: FLdRfVar var_D4
  loc_BA157F: FLdRfVar var_9C
  loc_BA1582: FLdPr Me
  loc_BA1585: MemLdRfVar from_stack_1.global_52
  loc_BA1588: NewIfNullPr clsordenpago
  loc_BA158B: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA1590: FLdPr var_9C
  loc_BA1593:  = Me.Fields
  loc_BA1598: FLdPr var_D4
  loc_BA159B: from_stack_2 = Me.Item(from_stack_1)
  loc_BA15A0: FLdPr var_E8
  loc_BA15A3:  = Me.Value
  loc_BA15A8: FLdRfVar var_B0
  loc_BA15AB: ConcatVar var_C0
  loc_BA15AF: CStrVarVal var_90
  loc_BA15B3: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA15B8: FFree1Str var_90
  loc_BA15BB: FFreeAd var_9C = "": var_D4 = ""
  loc_BA15C4: FFreeVar var_B0 = ""
  loc_BA15CB: Call cmdCancelar_Click()
  loc_BA15D0: Branch loc_BA1949
  loc_BA15D3: ILdRf var_94
  loc_BA15D6: LitStr "btnGuardar"
  loc_BA15D9: EqStr
  loc_BA15DB: BranchF loc_BA1845
  loc_BA15DE: LitStr vbNullString
  loc_BA15E1: FLdPr Me
  loc_BA15E4: MemStStrCopy
  loc_BA15E8: LitI2_Byte 0
  loc_BA15EA: PopTmpLdAd2 var_EA
  loc_BA15ED: Call ArchOrpaTxt_Validate(from_stack_1v)
  loc_BA15F2: FLdPr Me
  loc_BA15F5: MemLdStr global_60
  loc_BA15F8: LitStr vbNullString
  loc_BA15FB: NeStr
  loc_BA15FD: BranchF loc_BA1601
  loc_BA1600: ExitProcHresult
  loc_BA1601: LitI2_Byte 0
  loc_BA1603: PopTmpLdAd2 var_EA
  loc_BA1606: Call FearOrpaMsk_UnknownEvent_8()
  loc_BA160B: FLdPr Me
  loc_BA160E: MemLdStr global_60
  loc_BA1611: LitStr vbNullString
  loc_BA1614: NeStr
  loc_BA1616: BranchF loc_BA161A
  loc_BA1619: ExitProcHresult
  loc_BA161A: FLdPr Me
  loc_BA161D: MemLdUI1 global_56
  loc_BA1621: FStUI1 var_1BE
  loc_BA1625: FLdUI1
  loc_BA1629: LitI2_Byte 1
  loc_BA162B: EqI2
  loc_BA162C: BranchF loc_BA169F
  loc_BA162F: FLdPr Me
  loc_BA1632: VCallAd Control_ID_FearOrpaMsk
  loc_BA1635: FStAdFunc var_9C
  loc_BA1638: FLdPr var_9C
  loc_BA163B: LateIdLdVar var_B0 DispID_15 0
  loc_BA1642: PopAd
  loc_BA1644: FLdRfVar var_90
  loc_BA1647: FLdPr Me
  loc_BA164A: VCallAd Control_ID_ArchOrpaTxt
  loc_BA164D: FStAdFunc var_D4
  loc_BA1650: FLdPr var_D4
  loc_BA1653:  = Me.Text
  loc_BA1658: FLdRfVar var_11C
  loc_BA165B: FLdPr Me
  loc_BA165E: VCallAd Control_ID_FojaOrpaTxt
  loc_BA1661: FStAdFunc var_E8
  loc_BA1664: FLdPr var_E8
  loc_BA1667:  = Me.Text
  loc_BA166C: ILdRf var_11C
  loc_BA166F: ILdRf var_90
  loc_BA1672: FLdRfVar var_B0
  loc_BA1675: CStrVarTmp
  loc_BA1676: FStStrNoPop var_1C4
  loc_BA1679: FLdPr Me
  loc_BA167C: MemLdRfVar from_stack_1.global_52
  loc_BA167F: NewIfNullPr clsordenpago
  loc_BA1682: Call clsordenpago.ActualizaFearArchFojaOrpa(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BA1687: FFreeStr var_1C4 = "": var_90 = ""
  loc_BA1690: FFreeAd var_9C = "": var_D4 = ""
  loc_BA1699: FFree1Var var_B0 = ""
  loc_BA169C: Branch loc_BA183D
  loc_BA169F: FLdUI1
  loc_BA16A3: LitI2_Byte 2
  loc_BA16A5: EqI2
  loc_BA16A6: BranchF loc_BA16AC
  loc_BA16A9: Branch loc_BA183D
  loc_BA16AC: FLdUI1
  loc_BA16B0: LitI2_Byte 3
  loc_BA16B2: EqI2
  loc_BA16B3: BranchF loc_BA183D
  loc_BA16B6: FLdRfVar var_C0
  loc_BA16B9: FLdRfVar var_E8
  loc_BA16BC: LitVarStr var_E4, "PeriInfo"
  loc_BA16C1: PopAdLdVar
  loc_BA16C2: FLdRfVar var_D4
  loc_BA16C5: FLdRfVar var_9C
  loc_BA16C8: FLdPr Me
  loc_BA16CB: MemLdRfVar from_stack_1.global_52
  loc_BA16CE: NewIfNullPr clsordenpago
  loc_BA16D1: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA16D6: FLdPr var_9C
  loc_BA16D9:  = Me.Fields
  loc_BA16DE: FLdPr var_D4
  loc_BA16E1: from_stack_2 = Me.Item(from_stack_1)
  loc_BA16E6: FLdPr var_E8
  loc_BA16E9:  = Me.Value
  loc_BA16EE: FLdRfVar var_D0
  loc_BA16F1: FLdRfVar var_108
  loc_BA16F4: LitVarStr var_100, "NumeOrpa"
  loc_BA16F9: PopAdLdVar
  loc_BA16FA: FLdRfVar var_104
  loc_BA16FD: FLdRfVar var_F0
  loc_BA1700: FLdPr Me
  loc_BA1703: MemLdRfVar from_stack_1.global_52
  loc_BA1706: NewIfNullPr clsordenpago
  loc_BA1709: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA170E: FLdPr var_F0
  loc_BA1711:  = Me.Fields
  loc_BA1716: FLdPr var_104
  loc_BA1719: from_stack_2 = Me.Item(from_stack_1)
  loc_BA171E: FLdPr var_108
  loc_BA1721:  = Me.Value
  loc_BA1726: FLdRfVar var_118
  loc_BA1729: FLdRfVar var_1BC
  loc_BA172C: LitVarStr var_140, "TipoOrpa"
  loc_BA1731: PopAdLdVar
  loc_BA1732: FLdRfVar var_1B8
  loc_BA1735: FLdRfVar var_1B4
  loc_BA1738: FLdPr Me
  loc_BA173B: MemLdRfVar from_stack_1.global_52
  loc_BA173E: NewIfNullPr clsordenpago
  loc_BA1741: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA1746: FLdPr var_1B4
  loc_BA1749:  = Me.Fields
  loc_BA174E: FLdPr var_1B8
  loc_BA1751: from_stack_2 = Me.Item(from_stack_1)
  loc_BA1756: FLdPr var_1BC
  loc_BA1759:  = Me.Value
  loc_BA175E: FLdPr Me
  loc_BA1761: VCallAd Control_ID_FearOrpaMsk
  loc_BA1764: FStAdFunc var_1C8
  loc_BA1767: FLdPr var_1C8
  loc_BA176A: LateIdLdVar var_B0 DispID_15 0
  loc_BA1771: PopAd
  loc_BA1773: FLdRfVar var_1C4
  loc_BA1776: FLdRfVar var_B0
  loc_BA1779: CStrVarTmp
  loc_BA177A: FStStrNoPop var_11C
  loc_BA177D: CDateStr
  loc_BA177F: PopFPR8
  loc_BA1780: FLdRfVar var_118
  loc_BA1783: CStrVarTmp
  loc_BA1784: FStStrNoPop var_90
  loc_BA1787: FLdRfVar var_D0
  loc_BA178A: CI4Var
  loc_BA178C: FLdRfVar var_C0
  loc_BA178F: CI2Var
  loc_BA1790: FLdPr Me
  loc_BA1793: MemLdRfVar from_stack_1.global_52
  loc_BA1796: NewIfNullPr clsordenpago
  loc_BA1799: from_stack_5v = clsordenpago.AnularOPyLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_BA179E: ILdRf var_1C4
  loc_BA17A1: FLdPr Me
  loc_BA17A4: MemStStrCopy
  loc_BA17A8: FFreeStr var_90 = "": var_11C = ""
  loc_BA17B1: FFreeAd var_9C = "": var_D4 = "": var_F0 = "": var_104 = "": var_1B4 = "": var_1B8 = "": var_1C8 = "": var_E8 = "": var_108 = ""
  loc_BA17C8: FFreeVar var_B0 = "": var_C0 = "": var_D0 = ""
  loc_BA17D3: LitI4 0
  loc_BA17D8: LitVarStr var_100, "Se anuló el pagado de la Orden de Pago número: "
  loc_BA17DD: FLdRfVar var_B0
  loc_BA17E0: FLdRfVar var_E8
  loc_BA17E3: LitVarStr var_E4, "NumeOrpa"
  loc_BA17E8: PopAdLdVar
  loc_BA17E9: FLdRfVar var_D4
  loc_BA17EC: FLdRfVar var_9C
  loc_BA17EF: FLdPr Me
  loc_BA17F2: MemLdRfVar from_stack_1.global_52
  loc_BA17F5: NewIfNullPr clsordenpago
  loc_BA17F8: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BA17FD: FLdPr var_9C
  loc_BA1800:  = Me.Fields
  loc_BA1805: FLdPr var_D4
  loc_BA1808: from_stack_2 = Me.Item(from_stack_1)
  loc_BA180D: FLdPr var_E8
  loc_BA1810:  = Me.Value
  loc_BA1815: FLdRfVar var_B0
  loc_BA1818: ConcatVar var_C0
  loc_BA181C: CStrVarVal var_90
  loc_BA1820: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA1825: FFree1Str var_90
  loc_BA1828: FFreeAd var_9C = "": var_D4 = ""
  loc_BA1831: FFreeVar var_B0 = ""
  loc_BA1838: Call cmdCancelar_Click()
  loc_BA183D: Call cmdCancelar_Click()
  loc_BA1842: Branch loc_BA1949
  loc_BA1845: ILdRf var_94
  loc_BA1848: LitStr "btnCancelar"
  loc_BA184B: EqStr
  loc_BA184D: BranchF loc_BA1858
  loc_BA1850: Call cmdCancelar_Click()
  loc_BA1855: Branch loc_BA1949
  loc_BA1858: ILdRf var_94
  loc_BA185B: LitStr "btnPrimero"
  loc_BA185E: EqStr
  loc_BA1860: BranchF loc_BA1874
  loc_BA1863: FLdPr Me
  loc_BA1866: MemLdRfVar from_stack_1.global_52
  loc_BA1869: NewIfNullPr clsordenpago
  loc_BA186C: Call clsordenpago.MoveFirst()
  loc_BA1871: Branch loc_BA1949
  loc_BA1874: ILdRf var_94
  loc_BA1877: LitStr "btnAnterior"
  loc_BA187A: EqStr
  loc_BA187C: BranchF loc_BA1890
  loc_BA187F: FLdPr Me
  loc_BA1882: MemLdRfVar from_stack_1.global_52
  loc_BA1885: NewIfNullPr clsordenpago
  loc_BA1888: Call clsordenpago.MovePrevious()
  loc_BA188D: Branch loc_BA1949
  loc_BA1890: ILdRf var_94
  loc_BA1893: LitStr "btnSiguiente"
  loc_BA1896: EqStr
  loc_BA1898: BranchF loc_BA18AC
  loc_BA189B: FLdPr Me
  loc_BA189E: MemLdRfVar from_stack_1.global_52
  loc_BA18A1: NewIfNullPr clsordenpago
  loc_BA18A4: Call clsordenpago.MoveNext()
  loc_BA18A9: Branch loc_BA1949
  loc_BA18AC: ILdRf var_94
  loc_BA18AF: LitStr "btnUltimo"
  loc_BA18B2: EqStr
  loc_BA18B4: BranchF loc_BA18C8
  loc_BA18B7: FLdPr Me
  loc_BA18BA: MemLdRfVar from_stack_1.global_52
  loc_BA18BD: NewIfNullPr clsordenpago
  loc_BA18C0: Call clsordenpago.MoveLast()
  loc_BA18C5: Branch loc_BA1949
  loc_BA18C8: ILdRf var_94
  loc_BA18CB: LitStr "btnFiltrar"
  loc_BA18CE: EqStr
  loc_BA18D0: BranchF loc_BA18D6
  loc_BA18D3: Branch loc_BA1949
  loc_BA18D6: ILdRf var_94
  loc_BA18D9: LitStr "btnBuscar"
  loc_BA18DC: EqStr
  loc_BA18DE: BranchF loc_BA18E4
  loc_BA18E1: Branch loc_BA1949
  loc_BA18E4: ILdRf var_94
  loc_BA18E7: LitStr "btnImprimir"
  loc_BA18EA: EqStr
  loc_BA18EC: BranchF loc_BA18F2
  loc_BA18EF: Branch loc_BA1949
  loc_BA18F2: ILdRf var_94
  loc_BA18F5: LitStr "btnAyuda"
  loc_BA18F8: EqStr
  loc_BA18FA: BranchF loc_BA1929
  loc_BA18FD: LitVar_Missing var_118
  loc_BA1900: LitVar_Missing var_D0
  loc_BA1903: LitVar_Missing var_C0
  loc_BA1906: LitI4 0
  loc_BA190B: LitVarStr var_E4, "Opcion no disponible en esta version."
  loc_BA1910: FStVarCopyObj var_B0
  loc_BA1913: FLdRfVar var_B0
  loc_BA1916: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BA191B: FFreeVar var_B0 = "": var_C0 = "": var_D0 = ""
  loc_BA1926: Branch loc_BA1949
  loc_BA1929: ILdRf var_94
  loc_BA192C: LitStr "btnSalir"
  loc_BA192F: EqStr
  loc_BA1931: BranchF loc_BA1949
  loc_BA1934: ILdRf Me
  loc_BA1937: FStAdNoPop
  loc_BA193B: ImpAdLdRf MemVar_C44F9C
  loc_BA193E: NewIfNullPr Me
  loc_BA1941: Me.Global.Unload from_stack_1
  loc_BA1946: FFree1Ad var_9C
  loc_BA1949: ExitProcHresult
  loc_BA194A: FFreeAd  = ""
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '951780
  'Data Table: 45E504
  loc_95176C: FLdPr Me
  loc_95176F: VCallAd Control_ID_FiltroMsk
  loc_951772: CVarAd
  loc_951776: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95177B: FFree1Var var_94 = ""
  loc_95177E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A75258
  'Data Table: 45E504
  loc_A74E94: ILdRf Me
  loc_A74E97: CastAd
  loc_A74E9A: FStAdFunc var_88
  loc_A74E9D: FLdRfVar var_88
  loc_A74EA0: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A74EA5: FFree1Ad var_88
  loc_A74EA8: FLdPr Me
  loc_A74EAB: VCallAd Control_ID_FiltroMsk
  loc_A74EAE: FStAdFunc var_88
  loc_A74EB1: FLdPr var_88
  loc_A74EB4: LateIdLdVar var_98 DispID_22 0
  loc_A74EBB: CStrVarTmp
  loc_A74EBC: FStStrNoPop var_9C
  loc_A74EBF: ImpAdCallI2 Trim$()
  loc_A74EC4: FStStrNoPop var_A0
  loc_A74EC7: LitStr vbNullString
  loc_A74ECA: NeStr
  loc_A74ECC: FFreeStr var_9C = ""
  loc_A74ED3: FFree1Ad var_88
  loc_A74ED6: FFree1Var var_98 = ""
  loc_A74ED9: BranchF loc_A75133
  loc_A74EDC: FLdRfVar var_A2
  loc_A74EDF: FLdPr Me
  loc_A74EE2: VCallAd Control_ID_FiltroCbo
  loc_A74EE5: FStAdFunc var_88
  loc_A74EE8: FLdPr var_88
  loc_A74EEB:  = Me.ListIndex
  loc_A74EF0: FLdI2 var_A2
  loc_A74EF3: LitI2_Byte 0
  loc_A74EF5: EqI2
  loc_A74EF6: FFree1Ad var_88
  loc_A74EF9: BranchF loc_A74F6B
  loc_A74EFC: LitStr "NumeOrpa = "
  loc_A74EFF: FLdPr Me
  loc_A74F02: VCallAd Control_ID_FiltroMsk
  loc_A74F05: FStAdFunc var_88
  loc_A74F08: FLdPr var_88
  loc_A74F0B: LateIdLdVar var_98 DispID_22 0
  loc_A74F12: CStrVarTmp
  loc_A74F13: FStStrNoPop var_9C
  loc_A74F16: ConcatStr
  loc_A74F17: PopTmpLdAdStr
  loc_A74F1B: FLdPr Me
  loc_A74F1E: MemLdRfVar from_stack_1.global_52
  loc_A74F21: NewIfNullPr clsordenpago
  loc_A74F24: Call clsordenpago.Filter(from_stack_1v)
  loc_A74F29: FFreeStr var_9C = ""
  loc_A74F30: FFree1Ad var_88
  loc_A74F33: FFree1Var var_98 = ""
  loc_A74F36: LitStr "orden de pago es igual a "
  loc_A74F39: FLdPr Me
  loc_A74F3C: VCallAd Control_ID_FiltroMsk
  loc_A74F3F: FStAdFunc var_88
  loc_A74F42: FLdPr var_88
  loc_A74F45: LateIdLdVar var_98 DispID_22 0
  loc_A74F4C: CStrVarTmp
  loc_A74F4D: FStStrNoPop var_9C
  loc_A74F50: ConcatStr
  loc_A74F51: FStStrNoPop var_A0
  loc_A74F54: FLdPr Me
  loc_A74F57: MemStStrCopy
  loc_A74F5B: FFreeStr var_9C = ""
  loc_A74F62: FFree1Ad var_88
  loc_A74F65: FFree1Var var_98 = ""
  loc_A74F68: Branch loc_A75130
  loc_A74F6B: FLdRfVar var_A2
  loc_A74F6E: FLdPr Me
  loc_A74F71: VCallAd Control_ID_FiltroCbo
  loc_A74F74: FStAdFunc var_88
  loc_A74F77: FLdPr var_88
  loc_A74F7A:  = Me.ListIndex
  loc_A74F7F: FLdI2 var_A2
  loc_A74F82: LitI2_Byte 1
  loc_A74F84: EqI2
  loc_A74F85: FFree1Ad var_88
  loc_A74F88: BranchF loc_A75003
  loc_A74F8B: LitStr "ExpeImpu LIKE '"
  loc_A74F8E: FLdPr Me
  loc_A74F91: VCallAd Control_ID_FiltroMsk
  loc_A74F94: FStAdFunc var_88
  loc_A74F97: FLdPr var_88
  loc_A74F9A: LateIdLdVar var_98 DispID_22 0
  loc_A74FA1: CStrVarTmp
  loc_A74FA2: FStStrNoPop var_9C
  loc_A74FA5: ConcatStr
  loc_A74FA6: FStStrNoPop var_A0
  loc_A74FA9: LitStr Chr(37) & "'"
  loc_A74FAC: ConcatStr
  loc_A74FAD: PopTmpLdAdStr
  loc_A74FB1: FLdPr Me
  loc_A74FB4: MemLdRfVar from_stack_1.global_52
  loc_A74FB7: NewIfNullPr clsordenpago
  loc_A74FBA: Call clsordenpago.Filter(from_stack_1v)
  loc_A74FBF: FFreeStr var_9C = "": var_A0 = ""
  loc_A74FC8: FFree1Ad var_88
  loc_A74FCB: FFree1Var var_98 = ""
  loc_A74FCE: LitStr "expediente que comience con "
  loc_A74FD1: FLdPr Me
  loc_A74FD4: VCallAd Control_ID_FiltroMsk
  loc_A74FD7: FStAdFunc var_88
  loc_A74FDA: FLdPr var_88
  loc_A74FDD: LateIdLdVar var_98 DispID_22 0
  loc_A74FE4: CStrVarTmp
  loc_A74FE5: FStStrNoPop var_9C
  loc_A74FE8: ConcatStr
  loc_A74FE9: FStStrNoPop var_A0
  loc_A74FEC: FLdPr Me
  loc_A74FEF: MemStStrCopy
  loc_A74FF3: FFreeStr var_9C = ""
  loc_A74FFA: FFree1Ad var_88
  loc_A74FFD: FFree1Var var_98 = ""
  loc_A75000: Branch loc_A75130
  loc_A75003: FLdRfVar var_A2
  loc_A75006: FLdPr Me
  loc_A75009: VCallAd Control_ID_FiltroCbo
  loc_A7500C: FStAdFunc var_88
  loc_A7500F: FLdPr var_88
  loc_A75012:  = Me.ListIndex
  loc_A75017: FLdI2 var_A2
  loc_A7501A: LitI2_Byte 2
  loc_A7501C: EqI2
  loc_A7501D: FFree1Ad var_88
  loc_A75020: BranchF loc_A7509B
  loc_A75023: LitStr "DetaOrpa LIKE '" & Chr(37)
  loc_A75026: FLdPr Me
  loc_A75029: VCallAd Control_ID_FiltroMsk
  loc_A7502C: FStAdFunc var_88
  loc_A7502F: FLdPr var_88
  loc_A75032: LateIdLdVar var_98 DispID_22 0
  loc_A75039: CStrVarTmp
  loc_A7503A: FStStrNoPop var_9C
  loc_A7503D: ConcatStr
  loc_A7503E: FStStrNoPop var_A0
  loc_A75041: LitStr Chr(37) & "'"
  loc_A75044: ConcatStr
  loc_A75045: PopTmpLdAdStr
  loc_A75049: FLdPr Me
  loc_A7504C: MemLdRfVar from_stack_1.global_52
  loc_A7504F: NewIfNullPr clsordenpago
  loc_A75052: Call clsordenpago.Filter(from_stack_1v)
  loc_A75057: FFreeStr var_9C = "": var_A0 = ""
  loc_A75060: FFree1Ad var_88
  loc_A75063: FFree1Var var_98 = ""
  loc_A75066: LitStr "detalle de orden de pago que contenga: "
  loc_A75069: FLdPr Me
  loc_A7506C: VCallAd Control_ID_FiltroMsk
  loc_A7506F: FStAdFunc var_88
  loc_A75072: FLdPr var_88
  loc_A75075: LateIdLdVar var_98 DispID_22 0
  loc_A7507C: CStrVarTmp
  loc_A7507D: FStStrNoPop var_9C
  loc_A75080: ConcatStr
  loc_A75081: FStStrNoPop var_A0
  loc_A75084: FLdPr Me
  loc_A75087: MemStStrCopy
  loc_A7508B: FFreeStr var_9C = ""
  loc_A75092: FFree1Ad var_88
  loc_A75095: FFree1Var var_98 = ""
  loc_A75098: Branch loc_A75130
  loc_A7509B: FLdRfVar var_A2
  loc_A7509E: FLdPr Me
  loc_A750A1: VCallAd Control_ID_FiltroCbo
  loc_A750A4: FStAdFunc var_88
  loc_A750A7: FLdPr var_88
  loc_A750AA:  = Me.ListIndex
  loc_A750AF: FLdI2 var_A2
  loc_A750B2: LitI2_Byte 3
  loc_A750B4: EqI2
  loc_A750B5: FFree1Ad var_88
  loc_A750B8: BranchF loc_A75130
  loc_A750BB: LitStr "ArchOrpa LIKE '"
  loc_A750BE: FLdPr Me
  loc_A750C1: VCallAd Control_ID_FiltroMsk
  loc_A750C4: FStAdFunc var_88
  loc_A750C7: FLdPr var_88
  loc_A750CA: LateIdLdVar var_98 DispID_22 0
  loc_A750D1: CStrVarTmp
  loc_A750D2: FStStrNoPop var_9C
  loc_A750D5: ConcatStr
  loc_A750D6: FStStrNoPop var_A0
  loc_A750D9: LitStr Chr(37) & "'"
  loc_A750DC: ConcatStr
  loc_A750DD: PopTmpLdAdStr
  loc_A750E1: FLdPr Me
  loc_A750E4: MemLdRfVar from_stack_1.global_52
  loc_A750E7: NewIfNullPr clsordenpago
  loc_A750EA: Call clsordenpago.Filter(from_stack_1v)
  loc_A750EF: FFreeStr var_9C = "": var_A0 = ""
  loc_A750F8: FFree1Ad var_88
  loc_A750FB: FFree1Var var_98 = ""
  loc_A750FE: LitStr "Caja de archivo que comience con "
  loc_A75101: FLdPr Me
  loc_A75104: VCallAd Control_ID_FiltroMsk
  loc_A75107: FStAdFunc var_88
  loc_A7510A: FLdPr var_88
  loc_A7510D: LateIdLdVar var_98 DispID_22 0
  loc_A75114: CStrVarTmp
  loc_A75115: FStStrNoPop var_9C
  loc_A75118: ConcatStr
  loc_A75119: FStStrNoPop var_A0
  loc_A7511C: FLdPr Me
  loc_A7511F: MemStStrCopy
  loc_A75123: FFreeStr var_9C = ""
  loc_A7512A: FFree1Ad var_88
  loc_A7512D: FFree1Var var_98 = ""
  loc_A75130: Branch loc_A75157
  loc_A75133: LitStr vbNullString
  loc_A75136: FStStrCopy var_9C
  loc_A75139: FLdRfVar var_9C
  loc_A7513C: FLdPr Me
  loc_A7513F: MemLdRfVar from_stack_1.global_52
  loc_A75142: NewIfNullPr clsordenpago
  loc_A75145: Call clsordenpago.Filter(from_stack_1v)
  loc_A7514A: FFree1Str var_9C
  loc_A7514D: LitStr vbNullString
  loc_A75150: FLdPr Me
  loc_A75153: MemStStrCopy
  loc_A75157: FLdRfVar var_AC
  loc_A7515A: FLdPr Me
  loc_A7515D: MemLdRfVar from_stack_1.global_52
  loc_A75160: NewIfNullPr clsordenpago
  loc_A75163: from_stack_1 = clsordenpago.RecordCount
  loc_A75168: ILdRf var_AC
  loc_A7516B: LitI4 0
  loc_A75170: GtI4
  loc_A75171: BranchF loc_A7520F
  loc_A75174: FLdPr Me
  loc_A75177: MemLdRfVar from_stack_1.global_52
  loc_A7517A: NewIfNullAd
  loc_A7517D: FStAd var_B0 
  loc_A75181: FLdRfVar var_B0
  loc_A75184: CVarRef
  loc_A75189: ILdRf Me
  loc_A7518C: CastAd
  loc_A7518F: FStAdFunc var_88
  loc_A75192: FLdRfVar var_88
  loc_A75195: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A7519A: ILdRf var_B0
  loc_A7519D: CastAd
  loc_A751A0: FLdPr Me
  loc_A751A3: MemStAdFunc
  loc_A751A7: FFreeAd var_88 = ""
  loc_A751AE: LitI4 0
  loc_A751B3: LitI4 1
  loc_A751B8: FLdRfVar var_C4
  loc_A751BB: Redim
  loc_A751C5: FLdPr Me
  loc_A751C8: MemLdRfVar from_stack_1.global_52
  loc_A751CB: NewIfNullAd
  loc_A751CE: FStAd var_88 
  loc_A751D2: FLdRfVar var_88
  loc_A751D5: CVarRef
  loc_A751DA: ParmAry1St
  loc_A751E0: FLdPr Me
  loc_A751E3: VCallAd Control_ID_dgdABMS
  loc_A751E6: CVarAd
  loc_A751EA: ParmAry1St
  loc_A751F0: FLdRfVar var_C4
  loc_A751F3: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A751F8: ILdRf var_88
  loc_A751FB: CastAd
  loc_A751FE: FLdPr Me
  loc_A75201: MemStAdFunc
  loc_A75205: FLdRfVar var_C4
  loc_A75208: Erase
  loc_A75209: FFree1Ad var_88
  loc_A7520C: Branch loc_A75223
  loc_A7520F: ILdRf Me
  loc_A75212: CastAd
  loc_A75215: FStAdFunc var_88
  loc_A75218: FLdRfVar var_88
  loc_A7521B: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A75220: FFree1Ad var_88
  loc_A75223: FLdPr Me
  loc_A75226: VCallAd Control_ID_dgdABMS
  loc_A75229: FStAdFunc var_B0
  loc_A7522C: LitI4 0
  loc_A75231: FStStrCopy var_9C
  loc_A75234: FLdRfVar var_9C
  loc_A75237: FLdPr Me
  loc_A7523A: MemLdStr global_64
  loc_A7523D: FLdZeroAd var_B0
  loc_A75240: FStAdFunc var_88
  loc_A75243: FLdRfVar var_88
  loc_A75246: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A7524B: FFree1Str var_9C
  loc_A7524E: FFreeAd var_88 = ""
  loc_A75255: ExitProcHresult
  loc_A75256: LitNothing
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '98F2B0
  'Data Table: 45E504
  loc_98F268: ILdI2 KeyAscii
  loc_98F26B: LitI2_Byte &H27
  loc_98F26D: EqI2
  loc_98F26E: BranchF loc_98F276
  loc_98F271: LitI2_Byte 0
  loc_98F273: IStI2 KeyAscii
  loc_98F276: FLdRfVar var_8A
  loc_98F279: FLdPr Me
  loc_98F27C: VCallAd Control_ID_FiltroCbo
  loc_98F27F: FStAdFunc var_88
  loc_98F282: FLdPr var_88
  loc_98F285:  = Me.ListIndex
  loc_98F28A: FLdI2 var_8A
  loc_98F28D: LitI2_Byte 0
  loc_98F28F: EqI2
  loc_98F290: FFree1Ad var_88
  loc_98F293: BranchF loc_98F2AD
  loc_98F296: LitStr "0123456789"
  loc_98F299: FStStrCopy var_90
  loc_98F29C: FLdRfVar var_90
  loc_98F29F: ILdRf KeyAscii
  loc_98F2A2: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_98F2A7: IStI2 KeyAscii
  loc_98F2AA: FFree1Str var_90
  loc_98F2AD: ExitProcHresult
  loc_98F2AE: CI4Str
End Sub

Private Sub cmdCancelar_Click() 'A209A0
  'Data Table: 45E504
  loc_A20810: LitI2_Byte 0
  loc_A20812: CUI1I2
  loc_A20814: FLdPr Me
  loc_A20817: MemStUI1
  loc_A2081B: ILdRf Me
  loc_A2081E: CastAd
  loc_A20821: FStAdFunc var_88
  loc_A20824: FLdRfVar var_88
  loc_A20827: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_A2082C: FFree1Ad var_88
  loc_A2082F: LitI4 0
  loc_A20834: LitI4 0
  loc_A20839: FLdRfVar var_8C
  loc_A2083C: Redim
  loc_A20846: FLdPr Me
  loc_A20849: VCallAd Control_ID_dgdABMS
  loc_A2084C: CVarAd
  loc_A20850: ParmAry1St
  loc_A20856: FLdRfVar var_8C
  loc_A20859: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A2085E: FLdRfVar var_8C
  loc_A20861: Erase
  loc_A20862: FLdPr Me
  loc_A20865: MemLdRfVar from_stack_1.global_52
  loc_A20868: NewIfNullAd
  loc_A2086B: FStAd var_A0 
  loc_A2086F: FLdRfVar var_A0
  loc_A20872: CVarRef
  loc_A20877: ILdRf Me
  loc_A2087A: CastAd
  loc_A2087D: FStAdFunc var_88
  loc_A20880: FLdRfVar var_88
  loc_A20883: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A20888: ILdRf var_A0
  loc_A2088B: CastAd
  loc_A2088E: FLdPr Me
  loc_A20891: MemStAdFunc
  loc_A20895: FFreeAd var_88 = ""
  loc_A2089C: ILdRf Me
  loc_A2089F: CastAd
  loc_A208A2: FStAdFunc var_88
  loc_A208A5: FLdRfVar var_88
  loc_A208A8: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A208AD: FFree1Ad var_88
  loc_A208B0: FLdRfVar var_B4
  loc_A208B3: FLdPr Me
  loc_A208B6: MemLdRfVar from_stack_1.global_52
  loc_A208B9: NewIfNullPr clsordenpago
  loc_A208BC: from_stack_1 = clsordenpago.RecordCount
  loc_A208C1: ILdRf var_B4
  loc_A208C4: LitI4 0
  loc_A208C9: GtI4
  loc_A208CA: BranchF loc_A2096A
  loc_A208CD: FLdRfVar var_9C
  loc_A208D0: FLdRfVar var_B8
  loc_A208D3: LitVarStr var_B0, "PeriInfo"
  loc_A208D8: PopAdLdVar
  loc_A208D9: FLdRfVar var_A0
  loc_A208DC: FLdRfVar var_88
  loc_A208DF: FLdPr Me
  loc_A208E2: MemLdRfVar from_stack_1.global_52
  loc_A208E5: NewIfNullPr clsordenpago
  loc_A208E8: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A208ED: FLdPr var_88
  loc_A208F0:  = Me.Fields
  loc_A208F5: FLdPr var_A0
  loc_A208F8: from_stack_2 = Me.Item(from_stack_1)
  loc_A208FD: FLdPr var_B8
  loc_A20900:  = Me.Value
  loc_A20905: FLdRfVar var_E4
  loc_A20908: FLdRfVar var_D4
  loc_A2090B: LitVarStr var_D0, "NumeOrpa"
  loc_A20910: PopAdLdVar
  loc_A20911: FLdRfVar var_C0
  loc_A20914: FLdRfVar var_BC
  loc_A20917: FLdPr Me
  loc_A2091A: MemLdRfVar from_stack_1.global_52
  loc_A2091D: NewIfNullPr clsordenpago
  loc_A20920: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A20925: FLdPr var_BC
  loc_A20928:  = Me.Fields
  loc_A2092D: FLdPr var_C0
  loc_A20930: from_stack_2 = Me.Item(from_stack_1)
  loc_A20935: FLdPr var_D4
  loc_A20938:  = Me.Value
  loc_A2093D: FLdRfVar var_E4
  loc_A20940: CI4Var
  loc_A20942: FLdRfVar var_9C
  loc_A20945: CI2Var
  loc_A20946: FLdPr Me
  loc_A20949: MemLdRfVar from_stack_1.global_52
  loc_A2094C: NewIfNullPr clsordenpago
  loc_A2094F: Call clsordenpago.Encontrar(from_stack_1v, from_stack_2v)
  loc_A20954: FFreeAd var_88 = "": var_A0 = "": var_BC = "": var_C0 = "": var_B8 = ""
  loc_A20963: FFreeVar var_9C = ""
  loc_A2096A: FLdPr Me
  loc_A2096D: VCallAd Control_ID_dgdABMS
  loc_A20970: FStAdFunc var_A0
  loc_A20973: LitI4 0
  loc_A20978: FStStrCopy var_E8
  loc_A2097B: FLdRfVar var_E8
  loc_A2097E: FLdPr Me
  loc_A20981: MemLdStr global_64
  loc_A20984: FLdZeroAd var_A0
  loc_A20987: FStAdFunc var_88
  loc_A2098A: FLdRfVar var_88
  loc_A2098D: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A20992: FFree1Str var_E8
  loc_A20995: FFreeAd var_88 = ""
  loc_A2099C: ExitProcHresult
End Sub

Private Sub ArchOrpaTxt_GotFocus() '9517C8
  'Data Table: 45E504
  loc_9517B4: FLdPr Me
  loc_9517B7: VCallAd Control_ID_ArchOrpaTxt
  loc_9517BA: CVarAd
  loc_9517BE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9517C3: FFree1Var var_94 = ""
  loc_9517C6: ExitProcHresult
End Sub

Private Sub ArchOrpaTxt_Validate(Cancel As Boolean) '98492C
  'Data Table: 45E504
  loc_9848F0: FLdRfVar var_8A
  loc_9848F3: FLdPr Me
  loc_9848F6: VCallAd Control_ID_cmdCancelar
  loc_9848F9: FStAdFunc var_88
  loc_9848FC: FLdPr var_88
  loc_9848FF:  = Me.Value
  loc_984904: FLdI2 var_8A
  loc_984907: NotI4
  loc_984908: FLdRfVar var_92
  loc_98490B: FLdPr Me
  loc_98490E: VCallAd Control_ID_ArchOrpaTxt
  loc_984911: FStAdFunc var_90
  loc_984914: FLdPr var_90
  loc_984917:  = Me.Enabled
  loc_98491C: FLdI2 var_92
  loc_98491F: AndI4
  loc_984920: FFreeAd var_88 = ""
  loc_984927: BranchF loc_98492A
  loc_98492A: ExitProcHresult
End Sub

Private Sub FearOrpaMsk_UnknownEvent_0 '99F41C
  'Data Table: 45E504
  loc_99F3B0: FLdPr Me
  loc_99F3B3: VCallAd Control_ID_FearOrpaMsk
  loc_99F3B6: FStAdFunc var_88
  loc_99F3B9: FLdPr var_88
  loc_99F3BC: LateIdLdVar var_98 DispID_20 0
  loc_99F3C3: CStrVarTmp
  loc_99F3C4: FStStrNoPop var_9C
  loc_99F3C7: LitStr vbNullString
  loc_99F3CA: EqStr
  loc_99F3CC: FFree1Str var_9C
  loc_99F3CF: FFree1Ad var_88
  loc_99F3D2: FFree1Var var_98 = ""
  loc_99F3D5: BranchF loc_99F407
  loc_99F3D8: FLdRfVar var_9C
  loc_99F3DB: FLdPr Me
  loc_99F3DE: MemLdRfVar from_stack_1.global_52
  loc_99F3E1: NewIfNullPr clsordenpago
  loc_99F3E4: from_stack_1v = clsordenpago.UltimaFepaCheq()
  loc_99F3E9: FLdZeroAd var_9C
  loc_99F3EC: CVarStr var_98
  loc_99F3EF: PopAdLdVar
  loc_99F3F0: FLdPr Me
  loc_99F3F3: VCallAd Control_ID_FearOrpaMsk
  loc_99F3F6: FStAdFunc var_88
  loc_99F3F9: FLdPr var_88
  loc_99F3FC: LateIdSt
  loc_99F401: FFree1Ad var_88
  loc_99F404: FFree1Var var_98 = ""
  loc_99F407: FLdPr Me
  loc_99F40A: VCallAd Control_ID_FearOrpaMsk
  loc_99F40D: CVarAd
  loc_99F411: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_99F416: FFree1Var var_98 = ""
  loc_99F419: ExitProcHresult
  loc_99F41A: VCallFPR8 unk_457105
End Sub

Private Sub FearOrpaMsk_UnknownEvent_8 'A57F5C
  'Data Table: 45E504
  loc_A57C80: FLdRfVar var_8A
  loc_A57C83: FLdPr Me
  loc_A57C86: VCallAd Control_ID_cmdCancelar
  loc_A57C89: FStAdFunc var_88
  loc_A57C8C: FLdPr var_88
  loc_A57C8F:  = Me.Value
  loc_A57C94: FLdI2 var_8A
  loc_A57C97: NotI4
  loc_A57C98: FLdPr Me
  loc_A57C9B: VCallAd Control_ID_FearOrpaMsk
  loc_A57C9E: FStAdFunc var_90
  loc_A57CA1: FLdPr var_90
  loc_A57CA4: LateIdLdVar var_A0 DispID_13 -32767
  loc_A57CAB: CBoolVar
  loc_A57CAD: AndI4
  loc_A57CAE: FLdPr Me
  loc_A57CB1: MemLdUI1 global_56
  loc_A57CB5: LitI2_Byte 1
  loc_A57CB7: EqI2
  loc_A57CB8: AndI4
  loc_A57CB9: FFreeAd var_88 = ""
  loc_A57CC0: FFree1Var var_A0 = ""
  loc_A57CC3: BranchF loc_A57D74
  loc_A57CC6: FLdPr Me
  loc_A57CC9: VCallAd Control_ID_FearOrpaMsk
  loc_A57CCC: FStAdFunc var_88
  loc_A57CCF: FLdPr var_88
  loc_A57CD2: LateIdLdVar var_A0 DispID_15 0
  loc_A57CD9: PopAd
  loc_A57CDB: FLdRfVar var_A4
  loc_A57CDE: FLdPr Me
  loc_A57CE1: MemLdRfVar from_stack_1.global_52
  loc_A57CE4: NewIfNullPr clsordenpago
  loc_A57CE7: from_stack_1v = clsordenpago.UltimaFepaCheq()
  loc_A57CEC: FLdPr Me
  loc_A57CEF: VCallAd Control_ID_FearOrpaMsk
  loc_A57CF2: FStAdFunc var_B0
  loc_A57CF5: LitI2_Byte &HFF
  loc_A57CF7: PopTmpLdAd2 var_8A
  loc_A57CFA: FLdZeroAd var_B0
  loc_A57CFD: FStAdFunc var_90
  loc_A57D00: FLdRfVar var_90
  loc_A57D03: ILdRf var_A4
  loc_A57D06: LitI2_Byte 0
  loc_A57D08: LitI2_Byte 0
  loc_A57D0A: FLdRfVar var_A0
  loc_A57D0D: CStrVarTmp
  loc_A57D0E: FStStrNoPop var_A8
  loc_A57D11: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A57D16: FStStrNoPop var_AC
  loc_A57D19: FLdPr Me
  loc_A57D1C: MemStStrCopy
  loc_A57D20: FFreeStr var_A8 = "": var_A4 = ""
  loc_A57D29: FFreeAd var_88 = "": var_90 = ""
  loc_A57D32: FFree1Var var_A0 = ""
  loc_A57D35: FLdPr Me
  loc_A57D38: VCallAd Control_ID_FearOrpaMsk
  loc_A57D3B: FStAdFunc var_B4
  loc_A57D3E: LitNothing
  loc_A57D40: CastAd
  loc_A57D43: FStAdFunc var_B0
  loc_A57D46: FLdRfVar var_B0
  loc_A57D49: FLdZeroAd var_B4
  loc_A57D4C: FStAdFuncNoPop
  loc_A57D4F: CastAd
  loc_A57D52: FStAdFunc var_90
  loc_A57D55: FLdRfVar var_90
  loc_A57D58: FLdPr Me
  loc_A57D5B: MemLdRfVar from_stack_1.global_60
  loc_A57D5E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A57D63: IStI2 Cancel
  loc_A57D66: FFreeAd var_88 = "": var_90 = "": var_B0 = ""
  loc_A57D71: Branch loc_A57F58
  loc_A57D74: FLdRfVar var_8A
  loc_A57D77: FLdPr Me
  loc_A57D7A: VCallAd Control_ID_cmdCancelar
  loc_A57D7D: FStAdFunc var_88
  loc_A57D80: FLdPr var_88
  loc_A57D83:  = Me.Value
  loc_A57D88: FLdI2 var_8A
  loc_A57D8B: NotI4
  loc_A57D8C: FLdPr Me
  loc_A57D8F: VCallAd Control_ID_FearOrpaMsk
  loc_A57D92: FStAdFunc var_90
  loc_A57D95: FLdPr var_90
  loc_A57D98: LateIdLdVar var_A0 DispID_13 -32767
  loc_A57D9F: CBoolVar
  loc_A57DA1: AndI4
  loc_A57DA2: FLdPr Me
  loc_A57DA5: MemLdUI1 global_56
  loc_A57DA9: LitI2_Byte 3
  loc_A57DAB: EqI2
  loc_A57DAC: AndI4
  loc_A57DAD: FFreeAd var_88 = ""
  loc_A57DB4: FFree1Var var_A0 = ""
  loc_A57DB7: BranchF loc_A57E76
  loc_A57DBA: FLdPr Me
  loc_A57DBD: VCallAd Control_ID_FearOrpaMsk
  loc_A57DC0: FStAdFunc var_88
  loc_A57DC3: FLdPr var_88
  loc_A57DC6: LateIdLdVar var_A0 DispID_15 0
  loc_A57DCD: PopAd
  loc_A57DCF: FLdPr Me
  loc_A57DD2: VCallAd Control_ID_FearOrpaMsk
  loc_A57DD5: FStAdFunc var_90
  loc_A57DD8: FLdPr var_90
  loc_A57DDB: LateIdLdVar var_C4 DispID_11 -32767
  loc_A57DE2: PopAd
  loc_A57DE4: FLdPr Me
  loc_A57DE7: VCallAd Control_ID_FearOrpaMsk
  loc_A57DEA: FStAdFunc var_B4
  loc_A57DED: LitI2_Byte &HFF
  loc_A57DEF: PopTmpLdAd2 var_8A
  loc_A57DF2: FLdZeroAd var_B4
  loc_A57DF5: FStAdFunc var_B0
  loc_A57DF8: FLdRfVar var_B0
  loc_A57DFB: FLdRfVar var_C4
  loc_A57DFE: CStrVarTmp
  loc_A57DFF: FStStrNoPop var_A8
  loc_A57E02: LitI2_Byte &HFF
  loc_A57E04: LitI2_Byte &HFF
  loc_A57E06: FLdRfVar var_A0
  loc_A57E09: CStrVarTmp
  loc_A57E0A: FStStrNoPop var_A4
  loc_A57E0D: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A57E12: FStStrNoPop var_AC
  loc_A57E15: FLdPr Me
  loc_A57E18: MemStStrCopy
  loc_A57E1C: FFreeStr var_A4 = "": var_A8 = ""
  loc_A57E25: FFreeAd var_88 = "": var_90 = "": var_B0 = ""
  loc_A57E30: FFreeVar var_A0 = ""
  loc_A57E37: FLdPr Me
  loc_A57E3A: VCallAd Control_ID_FearOrpaMsk
  loc_A57E3D: FStAdFunc var_B4
  loc_A57E40: LitNothing
  loc_A57E42: CastAd
  loc_A57E45: FStAdFunc var_B0
  loc_A57E48: FLdRfVar var_B0
  loc_A57E4B: FLdZeroAd var_B4
  loc_A57E4E: FStAdFuncNoPop
  loc_A57E51: CastAd
  loc_A57E54: FStAdFunc var_90
  loc_A57E57: FLdRfVar var_90
  loc_A57E5A: FLdPr Me
  loc_A57E5D: MemLdRfVar from_stack_1.global_60
  loc_A57E60: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A57E65: IStI2 Cancel
  loc_A57E68: FFreeAd var_88 = "": var_90 = "": var_B0 = ""
  loc_A57E73: Branch loc_A57F58
  loc_A57E76: FLdRfVar var_8A
  loc_A57E79: FLdPr Me
  loc_A57E7C: VCallAd Control_ID_cmdCancelar
  loc_A57E7F: FStAdFunc var_88
  loc_A57E82: FLdPr var_88
  loc_A57E85:  = Me.Value
  loc_A57E8A: FLdI2 var_8A
  loc_A57E8D: NotI4
  loc_A57E8E: FLdPr Me
  loc_A57E91: MemLdUI1 global_56
  loc_A57E95: LitI2_Byte 3
  loc_A57E97: EqI2
  loc_A57E98: AndI4
  loc_A57E99: FFree1Ad var_88
  loc_A57E9C: BranchF loc_A57F58
  loc_A57E9F: FLdPr Me
  loc_A57EA2: VCallAd Control_ID_FearOrpaMsk
  loc_A57EA5: FStAdFunc var_88
  loc_A57EA8: FLdPr var_88
  loc_A57EAB: LateIdLdVar var_A0 DispID_15 0
  loc_A57EB2: PopAd
  loc_A57EB4: FLdPr Me
  loc_A57EB7: VCallAd Control_ID_FearOrpaMsk
  loc_A57EBA: FStAdFunc var_90
  loc_A57EBD: FLdPr var_90
  loc_A57EC0: LateIdLdVar var_C4 DispID_11 -32767
  loc_A57EC7: PopAd
  loc_A57EC9: FLdPr Me
  loc_A57ECC: VCallAd Control_ID_FearOrpaMsk
  loc_A57ECF: FStAdFunc var_B4
  loc_A57ED2: LitI2_Byte &HFF
  loc_A57ED4: PopTmpLdAd2 var_8A
  loc_A57ED7: FLdZeroAd var_B4
  loc_A57EDA: FStAdFunc var_B0
  loc_A57EDD: FLdRfVar var_B0
  loc_A57EE0: FLdRfVar var_C4
  loc_A57EE3: CStrVarTmp
  loc_A57EE4: FStStrNoPop var_A8
  loc_A57EE7: LitI2_Byte &HFF
  loc_A57EE9: LitI2_Byte &HFF
  loc_A57EEB: FLdRfVar var_A0
  loc_A57EEE: CStrVarTmp
  loc_A57EEF: FStStrNoPop var_A4
  loc_A57EF2: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A57EF7: FStStrNoPop var_AC
  loc_A57EFA: FLdPr Me
  loc_A57EFD: MemStStrCopy
  loc_A57F01: FFreeStr var_A4 = "": var_A8 = ""
  loc_A57F0A: FFreeAd var_88 = "": var_90 = "": var_B0 = ""
  loc_A57F15: FFreeVar var_A0 = ""
  loc_A57F1C: FLdPr Me
  loc_A57F1F: VCallAd Control_ID_FearOrpaMsk
  loc_A57F22: FStAdFunc var_B4
  loc_A57F25: LitNothing
  loc_A57F27: CastAd
  loc_A57F2A: FStAdFunc var_B0
  loc_A57F2D: FLdRfVar var_B0
  loc_A57F30: FLdZeroAd var_B4
  loc_A57F33: FStAdFuncNoPop
  loc_A57F36: CastAd
  loc_A57F39: FStAdFunc var_90
  loc_A57F3C: FLdRfVar var_90
  loc_A57F3F: FLdPr Me
  loc_A57F42: MemLdRfVar from_stack_1.global_60
  loc_A57F45: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A57F4A: IStI2 Cancel
  loc_A57F4D: FFreeAd var_88 = "": var_90 = "": var_B0 = ""
  loc_A57F58: ExitProcHresult
End Sub

Private Sub FearOrpaMsk_KeyPress(KeyAscii As Integer) '9856F0
  'Data Table: 45E504
  loc_9856AC: ILdI2 KeyAscii
  loc_9856AF: CI4UI1
  loc_9856B0: LitI4 &H20
  loc_9856B5: EqI4
  loc_9856B6: BranchF loc_9856EC
  loc_9856B9: LitVar_Missing var_A4
  loc_9856BC: PopAdLdVar
  loc_9856BD: LitVarI4
  loc_9856C5: PopAdLdVar
  loc_9856C6: ImpAdLdRf MemVar_C3D9A8
  loc_9856C9: NewIfNullPr frmCalendario
  loc_9856CC: frmCalendario.Show from_stack_1, from_stack_2
  loc_9856D1: ImpAdLdRf MemVar_C3D038
  loc_9856D4: CDargRef
  loc_9856D8: FLdPr Me
  loc_9856DB: VCallAd Control_ID_FearOrpaMsk
  loc_9856DE: FStAdFunc var_A8
  loc_9856E1: FLdPr var_A8
  loc_9856E4: LateIdSt
  loc_9856E9: FFree1Ad var_A8
  loc_9856EC: ExitProcHresult
End Sub

Private Sub DiasTxt_Validate(Cancel As Boolean) '9AC0D8
  'Data Table: 45E504
  loc_9AC044: FLdRfVar var_8A
  loc_9AC047: FLdPr Me
  loc_9AC04A: VCallAd Control_ID_DiasTxt
  loc_9AC04D: FStAdFunc var_88
  loc_9AC050: FLdPr var_88
  loc_9AC053:  = Me.Enabled
  loc_9AC058: FLdI2 var_8A
  loc_9AC05B: LitI2_Byte &HFF
  loc_9AC05D: EqI2
  loc_9AC05E: FFree1Ad var_88
  loc_9AC061: BranchF loc_9AC0D7
  loc_9AC064: FLdRfVar var_90
  loc_9AC067: FLdPr Me
  loc_9AC06A: VCallAd Control_ID_DiasTxt
  loc_9AC06D: FStAdFunc var_88
  loc_9AC070: FLdPr var_88
  loc_9AC073:  = Me.Text
  loc_9AC078: LitI2_Byte 0
  loc_9AC07A: LitI2_Byte 0
  loc_9AC07C: ILdRf var_90
  loc_9AC07F: LitStr "días"
  loc_9AC082: ImpAdCallI2 Proc_266_29_9CEBC0(, , , )
  loc_9AC087: FStStrNoPop var_94
  loc_9AC08A: FLdPr Me
  loc_9AC08D: MemStStrCopy
  loc_9AC091: FFreeStr var_90 = ""
  loc_9AC098: FFree1Ad var_88
  loc_9AC09B: FLdPr Me
  loc_9AC09E: VCallAd Control_ID_cmdGenerarCargo
  loc_9AC0A1: FStAdFunc var_A0
  loc_9AC0A4: LitNothing
  loc_9AC0A6: CastAd
  loc_9AC0A9: FStAdFunc var_9C
  loc_9AC0AC: FLdRfVar var_9C
  loc_9AC0AF: FLdZeroAd var_A0
  loc_9AC0B2: FStAdFuncNoPop
  loc_9AC0B5: CastAd
  loc_9AC0B8: FStAdFunc var_98
  loc_9AC0BB: FLdRfVar var_98
  loc_9AC0BE: FLdPr Me
  loc_9AC0C1: MemLdRfVar from_stack_1.global_60
  loc_9AC0C4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9AC0C9: IStI2 Cancel
  loc_9AC0CC: FFreeAd var_88 = "": var_98 = "": var_9C = ""
  loc_9AC0D7: ExitProcHresult
End Sub

Private Sub cmdGenerarCargo_Click() 'A6300C
  'Data Table: 45E504
  loc_A62CE0: LitStr vbNullString
  loc_A62CE3: FLdPr Me
  loc_A62CE6: MemStStrCopy
  loc_A62CEA: FLdRfVar var_8C
  loc_A62CED: FLdPr Me
  loc_A62CF0: MemLdRfVar from_stack_1.global_52
  loc_A62CF3: NewIfNullPr clsordenpago
  loc_A62CF6: from_stack_1 = clsordenpago.RecordCount
  loc_A62CFB: ILdRf var_8C
  loc_A62CFE: LitI4 0
  loc_A62D03: GtI4
  loc_A62D04: BranchF loc_A63009
  loc_A62D07: FLdRfVar var_B8
  loc_A62D0A: FLdRfVar var_A8
  loc_A62D0D: LitVarStr var_A4, "TipoOrpa"
  loc_A62D12: PopAdLdVar
  loc_A62D13: FLdRfVar var_94
  loc_A62D16: FLdRfVar var_90
  loc_A62D19: FLdPr Me
  loc_A62D1C: MemLdRfVar from_stack_1.global_52
  loc_A62D1F: NewIfNullPr clsordenpago
  loc_A62D22: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A62D27: FLdPr var_90
  loc_A62D2A:  = Me.Fields
  loc_A62D2F: FLdPr var_94
  loc_A62D32: from_stack_2 = Me.Item(from_stack_1)
  loc_A62D37: FLdPr var_A8
  loc_A62D3A:  = Me.Value
  loc_A62D3F: FLdRfVar var_B8
  loc_A62D42: LitVarStr var_C8, "Devengado"
  loc_A62D47: HardType
  loc_A62D48: EqVarBool
  loc_A62D4A: FFreeAd var_90 = "": var_94 = ""
  loc_A62D53: FFree1Var var_B8 = ""
  loc_A62D56: BranchF loc_A62EAC
  loc_A62D59: FLdPr Me
  loc_A62D5C: VCallAd Control_ID_FearOrpaMsk
  loc_A62D5F: FStAdFunc var_90
  loc_A62D62: FLdPr var_90
  loc_A62D65: LateIdLdVar var_B8 DispID_15 0
  loc_A62D6C: PopAd
  loc_A62D6E: FLdRfVar var_DC
  loc_A62D71: FLdPr Me
  loc_A62D74: MemLdRfVar from_stack_1.global_52
  loc_A62D77: NewIfNullPr clsordenpago
  loc_A62D7A: from_stack_1v = clsordenpago.UltimaFepaCheq()
  loc_A62D7F: FLdPr Me
  loc_A62D82: VCallAd Control_ID_FearOrpaMsk
  loc_A62D85: FStAdFunc var_A8
  loc_A62D88: LitI2_Byte &HFF
  loc_A62D8A: PopTmpLdAd2 var_E2
  loc_A62D8D: FLdZeroAd var_A8
  loc_A62D90: FStAdFunc var_94
  loc_A62D93: FLdRfVar var_94
  loc_A62D96: ILdRf var_DC
  loc_A62D99: LitI2_Byte &HFF
  loc_A62D9B: LitI2_Byte &HFF
  loc_A62D9D: FLdRfVar var_B8
  loc_A62DA0: CStrVarTmp
  loc_A62DA1: FStStrNoPop var_E0
  loc_A62DA4: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A62DA9: FStStrNoPop var_E8
  loc_A62DAC: FLdPr Me
  loc_A62DAF: MemStStrCopy
  loc_A62DB3: FFreeStr var_E0 = "": var_DC = ""
  loc_A62DBC: FFreeAd var_90 = "": var_94 = ""
  loc_A62DC5: FFree1Var var_B8 = ""
  loc_A62DC8: FLdPr Me
  loc_A62DCB: VCallAd Control_ID_FearOrpaMsk
  loc_A62DCE: FStAdFunc var_EC
  loc_A62DD1: LitNothing
  loc_A62DD3: CastAd
  loc_A62DD6: FStAdFunc var_A8
  loc_A62DD9: FLdRfVar var_A8
  loc_A62DDC: FLdZeroAd var_EC
  loc_A62DDF: FStAdFuncNoPop
  loc_A62DE2: CastAd
  loc_A62DE5: FStAdFunc var_94
  loc_A62DE8: FLdRfVar var_94
  loc_A62DEB: FLdPr Me
  loc_A62DEE: MemLdRfVar from_stack_1.global_60
  loc_A62DF1: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A62DF6: FStI2 var_86
  loc_A62DF9: FFreeAd var_90 = "": var_94 = "": var_A8 = ""
  loc_A62E04: FLdPr Me
  loc_A62E07: MemLdStr global_60
  loc_A62E0A: LitStr vbNullString
  loc_A62E0D: NeStr
  loc_A62E0F: BranchF loc_A62E13
  loc_A62E12: ExitProcHresult
  loc_A62E13: LitI2_Byte 0
  loc_A62E15: PopTmpLdAd2 var_E2
  loc_A62E18: Call DiasTxt_Validate(from_stack_1v)
  loc_A62E1D: FLdPr Me
  loc_A62E20: MemLdStr global_60
  loc_A62E23: LitStr vbNullString
  loc_A62E26: NeStr
  loc_A62E28: BranchF loc_A62E2C
  loc_A62E2B: ExitProcHresult
  loc_A62E2C: FLdRfVar var_B8
  loc_A62E2F: FLdRfVar var_A8
  loc_A62E32: LitVarStr var_A4, "NumeOrpa"
  loc_A62E37: PopAdLdVar
  loc_A62E38: FLdRfVar var_94
  loc_A62E3B: FLdRfVar var_90
  loc_A62E3E: FLdPr Me
  loc_A62E41: MemLdRfVar from_stack_1.global_52
  loc_A62E44: NewIfNullPr clsordenpago
  loc_A62E47: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A62E4C: FLdPr var_90
  loc_A62E4F:  = Me.Fields
  loc_A62E54: FLdPr var_94
  loc_A62E57: from_stack_2 = Me.Item(from_stack_1)
  loc_A62E5C: FLdPr var_A8
  loc_A62E5F:  = Me.Value
  loc_A62E64: FLdRfVar var_DC
  loc_A62E67: FLdPr Me
  loc_A62E6A: VCallAd Control_ID_DiasTxt
  loc_A62E6D: FStAdFunc var_EC
  loc_A62E70: FLdPr var_EC
  loc_A62E73:  = Me.Text
  loc_A62E78: ILdRf var_DC
  loc_A62E7B: CUI1Str
  loc_A62E7D: FLdRfVar var_B8
  loc_A62E80: CI4Var
  loc_A62E82: ImpAdLdI2 MemVar_C3D064
  loc_A62E85: FLdPr Me
  loc_A62E88: MemLdRfVar from_stack_1.global_52
  loc_A62E8B: NewIfNullPr clsordenpago
  loc_A62E8E: Call clsordenpago.InsertCargo_frmArchivo(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A62E93: FFree1Str var_DC
  loc_A62E96: FFreeAd var_90 = "": var_94 = "": var_EC = ""
  loc_A62EA1: FFree1Var var_B8 = ""
  loc_A62EA4: Call cmdCancelar_Click()
  loc_A62EA9: Branch loc_A63009
  loc_A62EAC: LitI4 0
  loc_A62EB1: LitStr "Advertencia: La OP no es Presupuestaria. Verifique..."
  loc_A62EB4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A62EB9: FLdPr Me
  loc_A62EBC: VCallAd Control_ID_FearOrpaMsk
  loc_A62EBF: FStAdFunc var_90
  loc_A62EC2: FLdPr var_90
  loc_A62EC5: LateIdLdVar var_B8 DispID_15 0
  loc_A62ECC: PopAd
  loc_A62ECE: FLdRfVar var_DC
  loc_A62ED1: FLdPr Me
  loc_A62ED4: MemLdRfVar from_stack_1.global_52
  loc_A62ED7: NewIfNullPr clsordenpago
  loc_A62EDA: from_stack_1v = clsordenpago.UltimaFepaCheq()
  loc_A62EDF: FLdPr Me
  loc_A62EE2: VCallAd Control_ID_FearOrpaMsk
  loc_A62EE5: FStAdFunc var_A8
  loc_A62EE8: LitI2_Byte &HFF
  loc_A62EEA: PopTmpLdAd2 var_E2
  loc_A62EED: FLdZeroAd var_A8
  loc_A62EF0: FStAdFunc var_94
  loc_A62EF3: FLdRfVar var_94
  loc_A62EF6: ILdRf var_DC
  loc_A62EF9: LitI2_Byte &HFF
  loc_A62EFB: LitI2_Byte &HFF
  loc_A62EFD: FLdRfVar var_B8
  loc_A62F00: CStrVarTmp
  loc_A62F01: FStStrNoPop var_E0
  loc_A62F04: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A62F09: FStStrNoPop var_E8
  loc_A62F0C: FLdPr Me
  loc_A62F0F: MemStStrCopy
  loc_A62F13: FFreeStr var_E0 = "": var_DC = ""
  loc_A62F1C: FFreeAd var_90 = "": var_94 = ""
  loc_A62F25: FFree1Var var_B8 = ""
  loc_A62F28: FLdPr Me
  loc_A62F2B: VCallAd Control_ID_FearOrpaMsk
  loc_A62F2E: FStAdFunc var_EC
  loc_A62F31: LitNothing
  loc_A62F33: CastAd
  loc_A62F36: FStAdFunc var_A8
  loc_A62F39: FLdRfVar var_A8
  loc_A62F3C: FLdZeroAd var_EC
  loc_A62F3F: FStAdFuncNoPop
  loc_A62F42: CastAd
  loc_A62F45: FStAdFunc var_94
  loc_A62F48: FLdRfVar var_94
  loc_A62F4B: FLdPr Me
  loc_A62F4E: MemLdRfVar from_stack_1.global_60
  loc_A62F51: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A62F56: FStI2 var_86
  loc_A62F59: FFreeAd var_90 = "": var_94 = "": var_A8 = ""
  loc_A62F64: FLdPr Me
  loc_A62F67: MemLdStr global_60
  loc_A62F6A: LitStr vbNullString
  loc_A62F6D: NeStr
  loc_A62F6F: BranchF loc_A62F73
  loc_A62F72: ExitProcHresult
  loc_A62F73: LitI2_Byte 0
  loc_A62F75: PopTmpLdAd2 var_E2
  loc_A62F78: Call DiasTxt_Validate(from_stack_1v)
  loc_A62F7D: FLdPr Me
  loc_A62F80: MemLdStr global_60
  loc_A62F83: LitStr vbNullString
  loc_A62F86: NeStr
  loc_A62F88: BranchF loc_A62F8C
  loc_A62F8B: ExitProcHresult
  loc_A62F8C: FLdRfVar var_B8
  loc_A62F8F: FLdRfVar var_A8
  loc_A62F92: LitVarStr var_A4, "NumeOrpa"
  loc_A62F97: PopAdLdVar
  loc_A62F98: FLdRfVar var_94
  loc_A62F9B: FLdRfVar var_90
  loc_A62F9E: FLdPr Me
  loc_A62FA1: MemLdRfVar from_stack_1.global_52
  loc_A62FA4: NewIfNullPr clsordenpago
  loc_A62FA7: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A62FAC: FLdPr var_90
  loc_A62FAF:  = Me.Fields
  loc_A62FB4: FLdPr var_94
  loc_A62FB7: from_stack_2 = Me.Item(from_stack_1)
  loc_A62FBC: FLdPr var_A8
  loc_A62FBF:  = Me.Value
  loc_A62FC4: FLdRfVar var_DC
  loc_A62FC7: FLdPr Me
  loc_A62FCA: VCallAd Control_ID_DiasTxt
  loc_A62FCD: FStAdFunc var_EC
  loc_A62FD0: FLdPr var_EC
  loc_A62FD3:  = Me.Text
  loc_A62FD8: ILdRf var_DC
  loc_A62FDB: CUI1Str
  loc_A62FDD: FLdRfVar var_B8
  loc_A62FE0: CI4Var
  loc_A62FE2: ImpAdLdI2 MemVar_C3D064
  loc_A62FE5: FLdPr Me
  loc_A62FE8: MemLdRfVar from_stack_1.global_52
  loc_A62FEB: NewIfNullPr clsordenpago
  loc_A62FEE: Call clsordenpago.InsertCargo_frmArchivo(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A62FF3: FFree1Str var_DC
  loc_A62FF6: FFreeAd var_90 = "": var_94 = "": var_EC = ""
  loc_A63001: FFree1Var var_B8 = ""
  loc_A63004: Call cmdCancelar_Click()
  loc_A63009: ExitProcHresult
End Sub
