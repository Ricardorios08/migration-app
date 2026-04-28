VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmEscaApreABM
  Caption = "Escala de Apremio"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmEscaApreABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 12564
  ClientHeight = 9060
  Begin VB.TextBox ImpoEsapTxt
    ForeColor = &HFF0000&
    Left = 1680
    Top = 5880
    Width = 1275
    Height = 360
    TabIndex = 9
    MaxLength = 10
    DataField = "ImpoEsap"
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
  Begin VB.Frame Frame1
    Left = 120
    Top = 3600
    Width = 8145
    Height = 3600
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
    Begin VB.OptionButton NotificacionOpt
      Caption = "Movilidad (Solo para la Instancia de Notificación) "
      Left = 1320
      Top = 360
      Width = 6735
      Height = 375
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
    End
    Begin VB.TextBox DesdEsapTxt
      ForeColor = &HFF0000&
      Left = 1320
      Top = 1320
      Width = 1275
      Height = 360
      TabIndex = 5
      MaxLength = 40
      DataField = "DesdEsap"
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
    Begin VB.TextBox HastEsapTxt
      ForeColor = &HFF0000&
      Left = 1320
      Top = 1800
      Width = 1275
      Height = 360
      TabIndex = 7
      MaxLength = 10
      DataField = "HastEsap"
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
    Begin VB.OptionButton TasadeJusticiaOpt
      Caption = "Tasa de Justicia"
      Left = 1320
      Top = 840
      Width = 3135
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
    Begin VB.Label Label5
      Caption = "Importe:"
      Left = 360
      Top = 2280
      Width = 885
      Height = 300
      TabIndex = 8
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
      Caption = "Desde:"
      Left = 480
      Top = 1320
      Width = 765
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
    Begin VB.Label Label1
      Caption = "Hasta:"
      Left = 540
      Top = 1800
      Width = 705
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
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 840
    Width = 8175
    Height = 2535
    TabIndex = 0
    OleObjectBlob = "frmEscaApreABM.frx":324A
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmEscaApreABM.frx":3562
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 12564
    Height = 636
    TabIndex = 10
    OleObjectBlob = "frmEscaApreABM.frx":B0E0
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 11
      TabStop = 0   'False
      Picture = "frmEscaApreABM.frx":B63C
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmEscaApreABM"


Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A6689C
  'Data Table: 4517D0
  loc_A66840: FLdRfVar var_B4
  loc_A66843: FLdRfVar var_B0
  loc_A66846: FLdI2 ColIndex
  loc_A66849: CVarI2 var_A8
  loc_A6684C: PopAdLdVar
  loc_A6684D: FLdPr Me
  loc_A66850: VCallAd Control_ID_dgdABMS
  loc_A66853: FStAdFunc var_88
  loc_A66856: FLdPr var_88
  loc_A66859: LateIdLdVar var_98 DispID_105 0
  loc_A66860: CastAdVar Me
  loc_A66864: FStAdFunc var_AC
  loc_A66867: FLdPr var_AC
  loc_A6686A: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A6686F: FLdPr var_B0
  loc_A66872:  = Me.DataField
  loc_A66877: FLdZeroAd var_B4
  loc_A6687A: PopTmpLdAdStr
  loc_A6687E: FLdPr Me
  loc_A66881: MemLdRfVar from_stack_1.global_52
  loc_A66884: NewIfNullPr clsescaapre
  loc_A66887: Call clsescaapre.Sort(from_stack_1v)
  loc_A6688C: FFree1Str var_B8
  loc_A6688F: FFreeAd var_88 = "": var_AC = ""
  loc_A66898: FFree1Var var_98 = ""
  loc_A6689B: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'AAA5DC
  'Data Table: 4517D0
  loc_AAA50C: FLdPr Me
  loc_AAA50F: MemLdI2 global_56
  loc_AAA512: LitI2_Byte 0
  loc_AAA514: EqI2
  loc_AAA515: FLdRfVar var_88
  loc_AAA518: FLdPr Me
  loc_AAA51B: MemLdRfVar from_stack_1.global_52
  loc_AAA51E: NewIfNullPr clsescaapre
  loc_AAA521: from_stack_1 = clsescaapre.RecordCount
  loc_AAA526: ILdRf var_88
  loc_AAA529: LitI4 0
  loc_AAA52E: GtI4
  loc_AAA52F: AndI4
  loc_AAA530: BranchF loc_AAA5D9
  loc_AAA533: FLdRfVar var_8A
  loc_AAA536: FLdPr Me
  loc_AAA539: MemLdRfVar from_stack_1.global_52
  loc_AAA53C: NewIfNullPr clsescaapre
  loc_AAA53F: from_stack_1 = clsescaapre.BOF
  loc_AAA544: FLdI2 var_8A
  loc_AAA547: BranchF loc_AAA558
  loc_AAA54A: FLdPr Me
  loc_AAA54D: MemLdRfVar from_stack_1.global_52
  loc_AAA550: NewIfNullPr clsescaapre
  loc_AAA553: Call clsescaapre.MoveFirst()
  loc_AAA558: FLdRfVar var_8A
  loc_AAA55B: FLdPr Me
  loc_AAA55E: MemLdRfVar from_stack_1.global_52
  loc_AAA561: NewIfNullPr clsescaapre
  loc_AAA564: from_stack_1 = clsescaapre.EOF
  loc_AAA569: FLdI2 var_8A
  loc_AAA56C: BranchF loc_AAA57D
  loc_AAA56F: FLdPr Me
  loc_AAA572: MemLdRfVar from_stack_1.global_52
  loc_AAA575: NewIfNullPr clsescaapre
  loc_AAA578: Call clsescaapre.MoveLast()
  loc_AAA57D: FLdRfVar var_90
  loc_AAA580: FLdPr Me
  loc_AAA583: MemLdRfVar from_stack_1.global_52
  loc_AAA586: NewIfNullPr clsescaapre
  loc_AAA589: from_stack_1 = clsescaapre.TipoEsap
  loc_AAA58E: FLdZeroAd var_90
  loc_AAA591: FStStr var_94
  loc_AAA594: ILdRf var_94
  loc_AAA597: LitStr "Tasa de Justicia"
  loc_AAA59A: EqStr
  loc_AAA59C: BranchF loc_AAA5B8
  loc_AAA59F: LitI2_Byte &HFF
  loc_AAA5A1: FLdPr Me
  loc_AAA5A4: VCallAd Control_ID_TasadeJusticiaOpt
  loc_AAA5A7: FStAdFunc var_98
  loc_AAA5AA: FLdPr var_98
  loc_AAA5AD: Me.Value = from_stack_1b
  loc_AAA5B2: FFree1Ad var_98
  loc_AAA5B5: Branch loc_AAA5D9
  loc_AAA5B8: ILdRf var_94
  loc_AAA5BB: LitStr "Notificacion"
  loc_AAA5BE: EqStr
  loc_AAA5C0: BranchF loc_AAA5D9
  loc_AAA5C3: LitI2_Byte &HFF
  loc_AAA5C5: FLdPr Me
  loc_AAA5C8: VCallAd Control_ID_NotificacionOpt
  loc_AAA5CB: FStAdFunc var_98
  loc_AAA5CE: FLdPr var_98
  loc_AAA5D1: Me.Value = from_stack_1b
  loc_AAA5D6: FFree1Ad var_98
  loc_AAA5D9: ExitProcHresult
End Sub

Private Sub ImpoEsapTxt_GotFocus() '9C5540
  'Data Table: 4517D0
  loc_9C552C: FLdPr Me
  loc_9C552F: VCallAd Control_ID_ImpoEsapTxt
  loc_9C5532: CVarAd
  loc_9C5536: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C553B: FFree1Var var_94 = ""
  loc_9C553E: ExitProcHresult
End Sub

Private Sub ImpoEsapTxt_KeyPress(KeyAscii As Integer) 'A06948
  'Data Table: 4517D0
  loc_A06914: LitStr "1234567890,."
  loc_A06917: FStStrCopy var_88
  loc_A0691A: FLdRfVar var_88
  loc_A0691D: ILdRf KeyAscii
  loc_A06920: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A06925: IStI2 KeyAscii
  loc_A06928: FFree1Str var_88
  loc_A0692B: ILdI2 KeyAscii
  loc_A0692E: LitStr "."
  loc_A06931: ImpAdCallI2 Asc()
  loc_A06936: EqI2
  loc_A06937: BranchF loc_A06945
  loc_A0693A: LitStr ","
  loc_A0693D: ImpAdCallI2 Asc()
  loc_A06942: IStI2 KeyAscii
  loc_A06945: ExitProcHresult
End Sub

Private Sub ImpoEsapTxt_LostFocus() 'A73708
  'Data Table: 4517D0
  loc_A736A4: FLdRfVar var_8C
  loc_A736A7: FLdPr Me
  loc_A736AA: VCallAd Control_ID_ImpoEsapTxt
  loc_A736AD: FStAdFunc var_88
  loc_A736B0: FLdPr var_88
  loc_A736B3:  = Me.Text
  loc_A736B8: LitI4 1
  loc_A736BD: LitI4 1
  loc_A736C2: LitVarStr var_AC, "0.00"
  loc_A736C7: FStVarCopyObj var_BC
  loc_A736CA: FLdRfVar var_BC
  loc_A736CD: FLdZeroAd var_8C
  loc_A736D0: CVarStr var_9C
  loc_A736D3: FLdRfVar var_CC
  loc_A736D6: ImpAdCallFPR4  = Format(, )
  loc_A736DB: FLdRfVar var_CC
  loc_A736DE: CStrVarVal var_D0
  loc_A736E2: FLdPr Me
  loc_A736E5: VCallAd Control_ID_ImpoEsapTxt
  loc_A736E8: FStAdFunc var_D4
  loc_A736EB: FLdPr var_D4
  loc_A736EE: Me.Text = from_stack_1
  loc_A736F3: FFree1Str var_D0
  loc_A736F6: FFreeAd var_88 = ""
  loc_A736FD: FFreeVar var_9C = "": var_BC = ""
  loc_A73706: ExitProcHresult
End Sub

Private Sub ImpoEsapTxt_Validate(Cancel As Boolean) 'A8C588
  'Data Table: 4517D0
  loc_A8C4EC: FLdRfVar var_8A
  loc_A8C4EF: FLdPr Me
  loc_A8C4F2: VCallAd Control_ID_cmdCancelar
  loc_A8C4F5: FStAdFunc var_88
  loc_A8C4F8: FLdPr var_88
  loc_A8C4FB:  = Me.Value
  loc_A8C500: FLdI2 var_8A
  loc_A8C503: NotI4
  loc_A8C504: FLdRfVar var_92
  loc_A8C507: FLdPr Me
  loc_A8C50A: VCallAd Control_ID_ImpoEsapTxt
  loc_A8C50D: FStAdFunc var_90
  loc_A8C510: FLdPr var_90
  loc_A8C513:  = Me.Enabled
  loc_A8C518: FLdI2 var_92
  loc_A8C51B: AndI4
  loc_A8C51C: FFreeAd var_88 = ""
  loc_A8C523: BranchF loc_A8C584
  loc_A8C526: FLdRfVar var_98
  loc_A8C529: FLdPr Me
  loc_A8C52C: VCallAd Control_ID_ImpoEsapTxt
  loc_A8C52F: FStAdFunc var_88
  loc_A8C532: FLdPr var_88
  loc_A8C535:  = Me.Text
  loc_A8C53A: LitI2_Byte &HFF
  loc_A8C53C: LitI2_Byte 0
  loc_A8C53E: ILdRf var_98
  loc_A8C541: LitStr "Importe"
  loc_A8C544: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A8C549: FStStrNoPop var_9C
  loc_A8C54C: FLdPr Me
  loc_A8C54F: MemStStrCopy
  loc_A8C553: FFreeStr var_98 = ""
  loc_A8C55A: FFree1Ad var_88
  loc_A8C55D: FLdPr Me
  loc_A8C560: VCallAd Control_ID_ImpoEsapTxt
  loc_A8C563: FStAdFuncNoPop
  loc_A8C566: CastAd
  loc_A8C569: FStAdFunc var_90
  loc_A8C56C: FLdRfVar var_90
  loc_A8C56F: FLdPr Me
  loc_A8C572: MemLdStr global_60
  loc_A8C575: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A8C57A: IStI2 Cancel
  loc_A8C57D: FFreeAd var_88 = ""
  loc_A8C584: ExitProcHresult
End Sub

Private Sub Form_Load() 'A896D8
  'Data Table: 4517D0
  loc_A89648: LitI2_Byte 0
  loc_A8964A: CR8I2
  loc_A8964B: PopFPR4
  loc_A8964C: FLdPr Me
  loc_A8964F: Me.Left = from_stack_1s
  loc_A89654: LitI2_Byte 0
  loc_A89656: CR8I2
  loc_A89657: PopFPR4
  loc_A89658: FLdPr Me
  loc_A8965B: Me.Top = from_stack_1s
  loc_A89660: LitStr "SELECT * FROM escaapre ORDER BY CodiPaap, CodiEsap"
  loc_A89663: FLdPr Me
  loc_A89666: MemLdRfVar from_stack_1.global_52
  loc_A89669: NewIfNullPr clsescaapre
  loc_A8966C: Call clsescaapre.RedefineRS(from_stack_1v)
  loc_A89671: LitI4 0
  loc_A89676: LitI4 1
  loc_A8967B: FLdRfVar var_88
  loc_A8967E: Redim
  loc_A89688: FLdPr Me
  loc_A8968B: MemLdRfVar from_stack_1.global_52
  loc_A8968E: NewIfNullAd
  loc_A89691: FStAd var_8C 
  loc_A89695: FLdRfVar var_8C
  loc_A89698: CVarRef
  loc_A8969D: ParmAry1St
  loc_A896A3: FLdPr Me
  loc_A896A6: VCallAd Control_ID_dgdABMS
  loc_A896A9: CVarAd
  loc_A896AD: ParmAry1St
  loc_A896B3: FLdRfVar var_88
  loc_A896B6: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A896BB: ILdRf var_8C
  loc_A896BE: CastAd
  loc_A896C1: FLdPr Me
  loc_A896C4: MemStAdFunc
  loc_A896C8: FLdRfVar var_88
  loc_A896CB: Erase
  loc_A896CC: FFree1Ad var_8C
  loc_A896CF: Call cmdCancelar_Click()
  loc_A896D4: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A647E0
  'Data Table: 4517D0
  loc_A64784: FLdRfVar var_C2
  loc_A64787: FLdRfVar var_C0
  loc_A6478A: LitVarI2 var_B8, 1
  loc_A6478F: FLdPr Me
  loc_A64792: VCallAd Control_ID_tlbABMS
  loc_A64795: FStAdFunc var_88
  loc_A64798: FLdPr var_88
  loc_A6479B: LateIdLdVar var_98 DispID_3 0
  loc_A647A2: CastAdVar Me
  loc_A647A6: FStAdFunc var_BC
  loc_A647A9: FLdPr var_BC
  loc_A647AC:  = Me.Buttons.ControlDefault
  loc_A647B1: FLdPr var_C0
  loc_A647B4:  = Me.Enabled
  loc_A647B9: FLdI2 var_C2
  loc_A647BC: FFreeAd var_88 = "": var_BC = ""
  loc_A647C5: FFreeVar var_98 = ""
  loc_A647CC: BranchF loc_A647DD
  loc_A647CF: FLdPr Me
  loc_A647D2: MemLdRfVar from_stack_1.global_52
  loc_A647D5: NewIfNullPr clsescaapre
  loc_A647D8: Call clsescaapre.Requery()
  loc_A647DD: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9C8ECC
  'Data Table: 4517D0
  loc_9C8EB4: ILdI2 KeyAscii
  loc_9C8EB7: LitI2_Byte &HD
  loc_9C8EB9: EqI2
  loc_9C8EBA: BranchF loc_9C8ECB
  loc_9C8EBD: LitVar_TRUE var_A4
  loc_9C8EC0: LitStr "{Tab}"
  loc_9C8EC3: ImpAdCallFPR4 SendKeys , 
  loc_9C8EC8: FFree1Var var_A4 = ""
  loc_9C8ECB: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9C8CB8
  'Data Table: 4517D0
  loc_9C8CA0: ILdI2 KeyCode
  loc_9C8CA3: ILdRf Me
  loc_9C8CA6: CastAd
  loc_9C8CA9: FStAdFunc var_88
  loc_9C8CAC: FLdRfVar var_88
  loc_9C8CAF: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9C8CB4: FFree1Ad var_88
  loc_9C8CB7: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'A93CC8
  'Data Table: 4517D0
  loc_A93C28: LitI2_Byte 0
  loc_A93C2A: FLdPr Me
  loc_A93C2D: MemStI2 global_56
  loc_A93C30: LitI2_Byte 0
  loc_A93C32: ILdRf Me
  loc_A93C35: CastAd
  loc_A93C38: FStAdFunc var_88
  loc_A93C3B: FLdRfVar var_88
  loc_A93C3E: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_A93C43: FFree1Ad var_88
  loc_A93C46: LitI4 0
  loc_A93C4B: LitI4 0
  loc_A93C50: FLdRfVar var_8C
  loc_A93C53: Redim
  loc_A93C5D: FLdPr Me
  loc_A93C60: VCallAd Control_ID_dgdABMS
  loc_A93C63: CVarAd
  loc_A93C67: ParmAry1St
  loc_A93C6D: FLdRfVar var_8C
  loc_A93C70: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A93C75: FLdRfVar var_8C
  loc_A93C78: Erase
  loc_A93C79: FLdPr Me
  loc_A93C7C: MemLdRfVar from_stack_1.global_52
  loc_A93C7F: NewIfNullAd
  loc_A93C82: FStAd var_A0 
  loc_A93C86: FLdRfVar var_A0
  loc_A93C89: CVarRef
  loc_A93C8E: ILdRf Me
  loc_A93C91: CastAd
  loc_A93C94: FStAdFunc var_88
  loc_A93C97: FLdRfVar var_88
  loc_A93C9A: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_A93C9F: ILdRf var_A0
  loc_A93CA2: CastAd
  loc_A93CA5: FLdPr Me
  loc_A93CA8: MemStAdFunc
  loc_A93CAC: FFreeAd var_88 = ""
  loc_A93CB3: ILdRf Me
  loc_A93CB6: CastAd
  loc_A93CB9: FStAdFunc var_88
  loc_A93CBC: FLdRfVar var_88
  loc_A93CBF: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_A93CC4: FFree1Ad var_88
  loc_A93CC7: ExitProcHresult
End Sub

Private Sub DesdEsapTxt_GotFocus() '9C5420
  'Data Table: 4517D0
  loc_9C540C: FLdPr Me
  loc_9C540F: VCallAd Control_ID_DesdEsapTxt
  loc_9C5412: CVarAd
  loc_9C5416: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C541B: FFree1Var var_94 = ""
  loc_9C541E: ExitProcHresult
End Sub

Private Sub DesdEsapTxt_KeyPress(KeyAscii As Integer) 'A076B0
  'Data Table: 4517D0
  loc_A0767C: LitStr "1234567890,."
  loc_A0767F: FStStrCopy var_88
  loc_A07682: FLdRfVar var_88
  loc_A07685: ILdRf KeyAscii
  loc_A07688: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A0768D: IStI2 KeyAscii
  loc_A07690: FFree1Str var_88
  loc_A07693: ILdI2 KeyAscii
  loc_A07696: LitStr "."
  loc_A07699: ImpAdCallI2 Asc()
  loc_A0769E: EqI2
  loc_A0769F: BranchF loc_A076AD
  loc_A076A2: LitStr ","
  loc_A076A5: ImpAdCallI2 Asc()
  loc_A076AA: IStI2 KeyAscii
  loc_A076AD: ExitProcHresult
End Sub

Private Sub DesdEsapTxt_LostFocus() 'A755F8
  'Data Table: 4517D0
  loc_A75594: FLdRfVar var_8C
  loc_A75597: FLdPr Me
  loc_A7559A: VCallAd Control_ID_DesdEsapTxt
  loc_A7559D: FStAdFunc var_88
  loc_A755A0: FLdPr var_88
  loc_A755A3:  = Me.Text
  loc_A755A8: LitI4 1
  loc_A755AD: LitI4 1
  loc_A755B2: LitVarStr var_AC, "0.00"
  loc_A755B7: FStVarCopyObj var_BC
  loc_A755BA: FLdRfVar var_BC
  loc_A755BD: FLdZeroAd var_8C
  loc_A755C0: CVarStr var_9C
  loc_A755C3: FLdRfVar var_CC
  loc_A755C6: ImpAdCallFPR4  = Format(, )
  loc_A755CB: FLdRfVar var_CC
  loc_A755CE: CStrVarVal var_D0
  loc_A755D2: FLdPr Me
  loc_A755D5: VCallAd Control_ID_DesdEsapTxt
  loc_A755D8: FStAdFunc var_D4
  loc_A755DB: FLdPr var_D4
  loc_A755DE: Me.Text = from_stack_1
  loc_A755E3: FFree1Str var_D0
  loc_A755E6: FFreeAd var_88 = ""
  loc_A755ED: FFreeVar var_9C = "": var_BC = ""
  loc_A755F6: ExitProcHresult
End Sub

Private Sub DesdEsapTxt_Validate(Cancel As Boolean) 'A8C060
  'Data Table: 4517D0
  loc_A8BFC4: FLdRfVar var_8A
  loc_A8BFC7: FLdPr Me
  loc_A8BFCA: VCallAd Control_ID_cmdCancelar
  loc_A8BFCD: FStAdFunc var_88
  loc_A8BFD0: FLdPr var_88
  loc_A8BFD3:  = Me.Value
  loc_A8BFD8: FLdI2 var_8A
  loc_A8BFDB: NotI4
  loc_A8BFDC: FLdRfVar var_92
  loc_A8BFDF: FLdPr Me
  loc_A8BFE2: VCallAd Control_ID_DesdEsapTxt
  loc_A8BFE5: FStAdFunc var_90
  loc_A8BFE8: FLdPr var_90
  loc_A8BFEB:  = Me.Enabled
  loc_A8BFF0: FLdI2 var_92
  loc_A8BFF3: AndI4
  loc_A8BFF4: FFreeAd var_88 = ""
  loc_A8BFFB: BranchF loc_A8C05C
  loc_A8BFFE: FLdRfVar var_98
  loc_A8C001: FLdPr Me
  loc_A8C004: VCallAd Control_ID_DesdEsapTxt
  loc_A8C007: FStAdFunc var_88
  loc_A8C00A: FLdPr var_88
  loc_A8C00D:  = Me.Text
  loc_A8C012: LitI2_Byte &HFF
  loc_A8C014: LitI2_Byte 0
  loc_A8C016: ILdRf var_98
  loc_A8C019: LitStr "Desde.."
  loc_A8C01C: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A8C021: FStStrNoPop var_9C
  loc_A8C024: FLdPr Me
  loc_A8C027: MemStStrCopy
  loc_A8C02B: FFreeStr var_98 = ""
  loc_A8C032: FFree1Ad var_88
  loc_A8C035: FLdPr Me
  loc_A8C038: VCallAd Control_ID_DesdEsapTxt
  loc_A8C03B: FStAdFuncNoPop
  loc_A8C03E: CastAd
  loc_A8C041: FStAdFunc var_90
  loc_A8C044: FLdRfVar var_90
  loc_A8C047: FLdPr Me
  loc_A8C04A: MemLdStr global_60
  loc_A8C04D: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A8C052: IStI2 Cancel
  loc_A8C055: FFreeAd var_88 = ""
  loc_A8C05C: ExitProcHresult
End Sub

Private Sub HastEsapTxt_GotFocus() '9C54F8
  'Data Table: 4517D0
  loc_9C54E4: FLdPr Me
  loc_9C54E7: VCallAd Control_ID_HastEsapTxt
  loc_9C54EA: CVarAd
  loc_9C54EE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C54F3: FFree1Var var_94 = ""
  loc_9C54F6: ExitProcHresult
End Sub

Private Sub HastEsapTxt_KeyPress(KeyAscii As Integer) 'A07578
  'Data Table: 4517D0
  loc_A07544: LitStr "1234567890,."
  loc_A07547: FStStrCopy var_88
  loc_A0754A: FLdRfVar var_88
  loc_A0754D: ILdRf KeyAscii
  loc_A07550: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A07555: IStI2 KeyAscii
  loc_A07558: FFree1Str var_88
  loc_A0755B: ILdI2 KeyAscii
  loc_A0755E: LitStr "."
  loc_A07561: ImpAdCallI2 Asc()
  loc_A07566: EqI2
  loc_A07567: BranchF loc_A07575
  loc_A0756A: LitStr ","
  loc_A0756D: ImpAdCallI2 Asc()
  loc_A07572: IStI2 KeyAscii
  loc_A07575: ExitProcHresult
End Sub

Private Sub HastEsapTxt_LostFocus() 'A74208
  'Data Table: 4517D0
  loc_A741A4: FLdRfVar var_8C
  loc_A741A7: FLdPr Me
  loc_A741AA: VCallAd Control_ID_HastEsapTxt
  loc_A741AD: FStAdFunc var_88
  loc_A741B0: FLdPr var_88
  loc_A741B3:  = Me.Text
  loc_A741B8: LitI4 1
  loc_A741BD: LitI4 1
  loc_A741C2: LitVarStr var_AC, "0.00"
  loc_A741C7: FStVarCopyObj var_BC
  loc_A741CA: FLdRfVar var_BC
  loc_A741CD: FLdZeroAd var_8C
  loc_A741D0: CVarStr var_9C
  loc_A741D3: FLdRfVar var_CC
  loc_A741D6: ImpAdCallFPR4  = Format(, )
  loc_A741DB: FLdRfVar var_CC
  loc_A741DE: CStrVarVal var_D0
  loc_A741E2: FLdPr Me
  loc_A741E5: VCallAd Control_ID_HastEsapTxt
  loc_A741E8: FStAdFunc var_D4
  loc_A741EB: FLdPr var_D4
  loc_A741EE: Me.Text = from_stack_1
  loc_A741F3: FFree1Str var_D0
  loc_A741F6: FFreeAd var_88 = ""
  loc_A741FD: FFreeVar var_9C = "": var_BC = ""
  loc_A74206: ExitProcHresult
End Sub

Private Sub HastEsapTxt_Validate(Cancel As Boolean) 'ADE760
  'Data Table: 4517D0
  loc_ADE61C: FLdRfVar var_8A
  loc_ADE61F: FLdPr Me
  loc_ADE622: VCallAd Control_ID_cmdCancelar
  loc_ADE625: FStAdFunc var_88
  loc_ADE628: FLdPr var_88
  loc_ADE62B:  = Me.Value
  loc_ADE630: FLdI2 var_8A
  loc_ADE633: NotI4
  loc_ADE634: FLdRfVar var_92
  loc_ADE637: FLdPr Me
  loc_ADE63A: VCallAd Control_ID_HastEsapTxt
  loc_ADE63D: FStAdFunc var_90
  loc_ADE640: FLdPr var_90
  loc_ADE643:  = Me.Enabled
  loc_ADE648: FLdI2 var_92
  loc_ADE64B: AndI4
  loc_ADE64C: FFreeAd var_88 = ""
  loc_ADE653: BranchF loc_ADE75D
  loc_ADE656: FLdRfVar var_98
  loc_ADE659: FLdPr Me
  loc_ADE65C: VCallAd Control_ID_HastEsapTxt
  loc_ADE65F: FStAdFunc var_88
  loc_ADE662: FLdPr var_88
  loc_ADE665:  = Me.Text
  loc_ADE66A: LitI2_Byte &HFF
  loc_ADE66C: LitI2_Byte 0
  loc_ADE66E: ILdRf var_98
  loc_ADE671: LitStr "Hasta"
  loc_ADE674: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_ADE679: FStStrNoPop var_9C
  loc_ADE67C: FLdPr Me
  loc_ADE67F: MemStStrCopy
  loc_ADE683: FFreeStr var_98 = ""
  loc_ADE68A: FFree1Ad var_88
  loc_ADE68D: FLdPr Me
  loc_ADE690: VCallAd Control_ID_HastEsapTxt
  loc_ADE693: FStAdFuncNoPop
  loc_ADE696: CastAd
  loc_ADE699: FStAdFunc var_90
  loc_ADE69C: FLdRfVar var_90
  loc_ADE69F: FLdPr Me
  loc_ADE6A2: MemLdStr global_60
  loc_ADE6A5: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_ADE6AA: IStI2 Cancel
  loc_ADE6AD: FFreeAd var_88 = ""
  loc_ADE6B4: FLdRfVar var_98
  loc_ADE6B7: FLdPr Me
  loc_ADE6BA: VCallAd Control_ID_HastEsapTxt
  loc_ADE6BD: FStAdFunc var_88
  loc_ADE6C0: FLdPr var_88
  loc_ADE6C3:  = Me.Text
  loc_ADE6C8: FLdRfVar var_9C
  loc_ADE6CB: FLdPr Me
  loc_ADE6CE: VCallAd Control_ID_DesdEsapTxt
  loc_ADE6D1: FStAdFunc var_90
  loc_ADE6D4: FLdPr var_90
  loc_ADE6D7:  = Me.Text
  loc_ADE6DC: LitI4 2
  loc_ADE6E1: ILdRf var_98
  loc_ADE6E4: CR8Str
  loc_ADE6E6: CVarR8
  loc_ADE6EA: FLdRfVar var_CC
  loc_ADE6ED: ImpAdCallFPR4  = Round(, )
  loc_ADE6F2: FLdRfVar var_CC
  loc_ADE6F5: LitI4 2
  loc_ADE6FA: ILdRf var_9C
  loc_ADE6FD: CR8Str
  loc_ADE6FF: CVarR8
  loc_ADE703: FLdRfVar var_FC
  loc_ADE706: ImpAdCallFPR4  = Round(, )
  loc_ADE70B: FLdRfVar var_FC
  loc_ADE70E: LeVarBool
  loc_ADE710: FFreeStr var_98 = ""
  loc_ADE717: FFreeAd var_88 = ""
  loc_ADE71E: FFreeVar var_BC = "": var_EC = "": var_CC = ""
  loc_ADE729: BranchF loc_ADE75D
  loc_ADE72C: LitStr "El Campo Hasta debe ser Mayor que el Campo Desde. Reintente..."
  loc_ADE72F: FLdPr Me
  loc_ADE732: MemStStrCopy
  loc_ADE736: FLdPr Me
  loc_ADE739: VCallAd Control_ID_HastEsapTxt
  loc_ADE73C: FStAdFuncNoPop
  loc_ADE73F: CastAd
  loc_ADE742: FStAdFunc var_90
  loc_ADE745: FLdRfVar var_90
  loc_ADE748: FLdPr Me
  loc_ADE74B: MemLdStr global_60
  loc_ADE74E: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_ADE753: IStI2 Cancel
  loc_ADE756: FFreeAd var_88 = ""
  loc_ADE75D: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BA6508
  'Data Table: 4517D0
  loc_BA5F0C: ILdRf Button
  loc_BA5F0F: FStAd var_88 
  loc_BA5F13: FLdRfVar var_8C
  loc_BA5F16: FLdPr var_88
  loc_BA5F19:  = Me.Key
  loc_BA5F1E: FLdZeroAd var_8C
  loc_BA5F21: FStStr var_90
  loc_BA5F24: ILdRf var_90
  loc_BA5F27: LitStr "btnCrear"
  loc_BA5F2A: EqStr
  loc_BA5F2C: BranchF loc_BA6084
  loc_BA5F2F: LitI2_Byte 1
  loc_BA5F31: FLdPr Me
  loc_BA5F34: MemStI2 global_56
  loc_BA5F37: ILdRf Me
  loc_BA5F3A: CastAd
  loc_BA5F3D: FStAdFunc var_94
  loc_BA5F40: FLdRfVar var_94
  loc_BA5F43: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BA5F48: FFree1Ad var_94
  loc_BA5F4B: LitI4 0
  loc_BA5F50: LitI4 0
  loc_BA5F55: FLdRfVar var_98
  loc_BA5F58: Redim
  loc_BA5F62: FLdPr Me
  loc_BA5F65: VCallAd Control_ID_dgdABMS
  loc_BA5F68: CVarAd
  loc_BA5F6C: ParmAry1St
  loc_BA5F72: FLdRfVar var_98
  loc_BA5F75: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BA5F7A: FLdRfVar var_98
  loc_BA5F7D: Erase
  loc_BA5F7E: ILdRf Me
  loc_BA5F81: CastAd
  loc_BA5F84: FStAdFunc var_94
  loc_BA5F87: FLdRfVar var_94
  loc_BA5F8A: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BA5F8F: FFree1Ad var_94
  loc_BA5F92: ILdRf Me
  loc_BA5F95: CastAd
  loc_BA5F98: FStAdFunc var_94
  loc_BA5F9B: FLdRfVar var_94
  loc_BA5F9E: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_BA5FA3: FFree1Ad var_94
  loc_BA5FA6: LitI4 0
  loc_BA5FAB: LitI4 3
  loc_BA5FB0: FLdRfVar var_98
  loc_BA5FB3: Redim
  loc_BA5FBD: FLdPr Me
  loc_BA5FC0: VCallAd Control_ID_DesdEsapTxt
  loc_BA5FC3: CVarAd
  loc_BA5FC7: ParmAry1St
  loc_BA5FCD: FLdPr Me
  loc_BA5FD0: VCallAd Control_ID_TasadeJusticiaOpt
  loc_BA5FD3: CVarAd
  loc_BA5FD7: ParmAry1St
  loc_BA5FDD: FLdPr Me
  loc_BA5FE0: VCallAd Control_ID_HastEsapTxt
  loc_BA5FE3: CVarAd
  loc_BA5FE7: ParmAry1St
  loc_BA5FED: FLdPr Me
  loc_BA5FF0: VCallAd Control_ID_ImpoEsapTxt
  loc_BA5FF3: CVarAd
  loc_BA5FF7: ParmAry1St
  loc_BA5FFD: FLdRfVar var_98
  loc_BA6000: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BA6005: FLdRfVar var_98
  loc_BA6008: Erase
  loc_BA6009: LitI4 0
  loc_BA600E: LitI4 0
  loc_BA6013: FLdRfVar var_98
  loc_BA6016: Redim
  loc_BA6020: FLdPr Me
  loc_BA6023: VCallAd Control_ID_NotificacionOpt
  loc_BA6026: CVarAd
  loc_BA602A: ParmAry1St
  loc_BA6030: FLdRfVar var_98
  loc_BA6033: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BA6038: FLdRfVar var_98
  loc_BA603B: Erase
  loc_BA603C: LitStr "0.00"
  loc_BA603F: FLdPr Me
  loc_BA6042: VCallAd Control_ID_DesdEsapTxt
  loc_BA6045: FStAdFunc var_94
  loc_BA6048: FLdPr var_94
  loc_BA604B: Me.Text = from_stack_1
  loc_BA6050: FFree1Ad var_94
  loc_BA6053: LitStr "0.00"
  loc_BA6056: FLdPr Me
  loc_BA6059: VCallAd Control_ID_HastEsapTxt
  loc_BA605C: FStAdFunc var_94
  loc_BA605F: FLdPr var_94
  loc_BA6062: Me.Text = from_stack_1
  loc_BA6067: FFree1Ad var_94
  loc_BA606A: LitStr "0.00"
  loc_BA606D: FLdPr Me
  loc_BA6070: VCallAd Control_ID_ImpoEsapTxt
  loc_BA6073: FStAdFunc var_94
  loc_BA6076: FLdPr var_94
  loc_BA6079: Me.Text = from_stack_1
  loc_BA607E: FFree1Ad var_94
  loc_BA6081: Branch loc_BA6507
  loc_BA6084: ILdRf var_90
  loc_BA6087: LitStr "btnModificar"
  loc_BA608A: EqStr
  loc_BA608C: BranchF loc_BA6177
  loc_BA608F: FLdRfVar var_DC
  loc_BA6092: FLdPr Me
  loc_BA6095: MemLdRfVar from_stack_1.global_52
  loc_BA6098: NewIfNullPr clsescaapre
  loc_BA609B: from_stack_1 = clsescaapre.RecordCount
  loc_BA60A0: ILdRf var_DC
  loc_BA60A3: LitI4 0
  loc_BA60A8: GtI4
  loc_BA60A9: BranchF loc_BA6174
  loc_BA60AC: LitI2_Byte 2
  loc_BA60AE: FLdPr Me
  loc_BA60B1: MemStI2 global_56
  loc_BA60B4: ILdRf Me
  loc_BA60B7: CastAd
  loc_BA60BA: FStAdFunc var_94
  loc_BA60BD: FLdRfVar var_94
  loc_BA60C0: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BA60C5: FFree1Ad var_94
  loc_BA60C8: LitI4 0
  loc_BA60CD: LitI4 0
  loc_BA60D2: FLdRfVar var_98
  loc_BA60D5: Redim
  loc_BA60DF: FLdPr Me
  loc_BA60E2: VCallAd Control_ID_dgdABMS
  loc_BA60E5: CVarAd
  loc_BA60E9: ParmAry1St
  loc_BA60EF: FLdRfVar var_98
  loc_BA60F2: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BA60F7: FLdRfVar var_98
  loc_BA60FA: Erase
  loc_BA60FB: ILdRf Me
  loc_BA60FE: CastAd
  loc_BA6101: FStAdFunc var_94
  loc_BA6104: FLdRfVar var_94
  loc_BA6107: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BA610C: FFree1Ad var_94
  loc_BA610F: LitI4 0
  loc_BA6114: LitI4 2
  loc_BA6119: FLdRfVar var_98
  loc_BA611C: Redim
  loc_BA6126: FLdPr Me
  loc_BA6129: VCallAd Control_ID_DesdEsapTxt
  loc_BA612C: CVarAd
  loc_BA6130: ParmAry1St
  loc_BA6136: FLdPr Me
  loc_BA6139: VCallAd Control_ID_HastEsapTxt
  loc_BA613C: CVarAd
  loc_BA6140: ParmAry1St
  loc_BA6146: FLdPr Me
  loc_BA6149: VCallAd Control_ID_ImpoEsapTxt
  loc_BA614C: CVarAd
  loc_BA6150: ParmAry1St
  loc_BA6156: FLdRfVar var_98
  loc_BA6159: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BA615E: FLdRfVar var_98
  loc_BA6161: Erase
  loc_BA6162: FLdPr Me
  loc_BA6165: VCallAd Control_ID_DesdEsapTxt
  loc_BA6168: CVarAd
  loc_BA616C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BA6171: FFree1Var var_A8 = ""
  loc_BA6174: Branch loc_BA6507
  loc_BA6177: ILdRf var_90
  loc_BA617A: LitStr "btnEliminar"
  loc_BA617D: EqStr
  loc_BA617F: BranchF loc_BA620B
  loc_BA6182: FLdRfVar var_DC
  loc_BA6185: FLdPr Me
  loc_BA6188: MemLdRfVar from_stack_1.global_52
  loc_BA618B: NewIfNullPr clsescaapre
  loc_BA618E: from_stack_1 = clsescaapre.RecordCount
  loc_BA6193: ILdRf var_DC
  loc_BA6196: LitI4 0
  loc_BA619B: GtI4
  loc_BA619C: BranchF loc_BA6208
  loc_BA619F: LitI2_Byte 0
  loc_BA61A1: PopTmpLdAd2 var_E0
  loc_BA61A4: LitI2_Byte &HFF
  loc_BA61A6: PopTmpLdAd2 var_DE
  loc_BA61A9: LitStr "¿Desea eliminar el registro?"
  loc_BA61AC: ImpAdCallI2 Proc_272_31_AB42E0(, , )
  loc_BA61B1: CI4UI1
  loc_BA61B2: LitI4 6
  loc_BA61B7: EqI4
  loc_BA61B8: BranchF loc_BA6208
  loc_BA61BB: FLdRfVar var_DE
  loc_BA61BE: FLdPr Me
  loc_BA61C1: MemLdRfVar from_stack_1.global_52
  loc_BA61C4: NewIfNullPr clsescaapre
  loc_BA61C7: from_stack_1 = clsescaapre.CodiPaap
  loc_BA61CC: FLdRfVar var_8C
  loc_BA61CF: FLdPr Me
  loc_BA61D2: MemLdRfVar from_stack_1.global_52
  loc_BA61D5: NewIfNullPr clsescaapre
  loc_BA61D8: from_stack_1 = clsescaapre.TipoEsap
  loc_BA61DD: FLdRfVar var_E0
  loc_BA61E0: FLdPr Me
  loc_BA61E3: MemLdRfVar from_stack_1.global_52
  loc_BA61E6: NewIfNullPr clsescaapre
  loc_BA61E9: from_stack_1 = clsescaapre.CodiEsap
  loc_BA61EE: FLdI2 var_E0
  loc_BA61F1: ILdRf var_8C
  loc_BA61F4: FLdI2 var_DE
  loc_BA61F7: FLdPr Me
  loc_BA61FA: MemLdRfVar from_stack_1.global_52
  loc_BA61FD: NewIfNullPr clsescaapre
  loc_BA6200: Call clsescaapre.Eliminar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BA6205: FFree1Str var_8C
  loc_BA6208: Branch loc_BA6507
  loc_BA620B: ILdRf var_90
  loc_BA620E: LitStr "btnGuardar"
  loc_BA6211: EqStr
  loc_BA6213: BranchF loc_BA6403
  loc_BA6216: LitStr vbNullString
  loc_BA6219: FLdPr Me
  loc_BA621C: MemStStrCopy
  loc_BA6220: LitI2_Byte 0
  loc_BA6222: PopTmpLdAd2 var_DE
  loc_BA6225: Call DesdEsapTxt_Validate(from_stack_1v)
  loc_BA622A: FLdPr Me
  loc_BA622D: MemLdStr global_60
  loc_BA6230: LitStr vbNullString
  loc_BA6233: NeStr
  loc_BA6235: BranchF loc_BA6239
  loc_BA6238: ExitProcHresult
  loc_BA6239: LitI2_Byte 0
  loc_BA623B: PopTmpLdAd2 var_DE
  loc_BA623E: Call HastEsapTxt_Validate(from_stack_1v)
  loc_BA6243: FLdPr Me
  loc_BA6246: MemLdStr global_60
  loc_BA6249: LitStr vbNullString
  loc_BA624C: NeStr
  loc_BA624E: BranchF loc_BA6252
  loc_BA6251: ExitProcHresult
  loc_BA6252: LitI2_Byte 0
  loc_BA6254: PopTmpLdAd2 var_DE
  loc_BA6257: Call ImpoEsapTxt_Validate(from_stack_1v)
  loc_BA625C: FLdPr Me
  loc_BA625F: MemLdStr global_60
  loc_BA6262: LitStr vbNullString
  loc_BA6265: NeStr
  loc_BA6267: BranchF loc_BA626B
  loc_BA626A: ExitProcHresult
  loc_BA626B: FLdPr Me
  loc_BA626E: MemLdI2 global_56
  loc_BA6271: FStI2 var_E2
  loc_BA6274: FLdI2 var_E2
  loc_BA6277: LitI2_Byte 1
  loc_BA6279: EqI2
  loc_BA627A: BranchF loc_BA6344
  loc_BA627D: FLdRfVar var_DE
  loc_BA6280: FLdPr Me
  loc_BA6283: VCallAd Control_ID_TasadeJusticiaOpt
  loc_BA6286: FStAdFunc var_94
  loc_BA6289: FLdPr var_94
  loc_BA628C:  = Me.Value
  loc_BA6291: LitVarStr var_114, "Notificacion"
  loc_BA6296: FStVarCopyObj var_B8
  loc_BA6299: FLdRfVar var_B8
  loc_BA629C: LitVarStr var_104, "Tasa de Justicia"
  loc_BA62A1: FStVarCopyObj var_A8
  loc_BA62A4: FLdRfVar var_A8
  loc_BA62A7: FLdI2 var_DE
  loc_BA62AA: LitI2_Byte &HFF
  loc_BA62AC: EqI2
  loc_BA62AD: CVarBoolI2 var_F4
  loc_BA62B1: FLdRfVar var_C8
  loc_BA62B4: ImpAdCallFPR4  = IIf(, , )
  loc_BA62B9: FLdRfVar var_8C
  loc_BA62BC: FLdPr Me
  loc_BA62BF: VCallAd Control_ID_DesdEsapTxt
  loc_BA62C2: FStAdFunc var_118
  loc_BA62C5: FLdPr var_118
  loc_BA62C8:  = Me.Text
  loc_BA62CD: FLdRfVar var_120
  loc_BA62D0: FLdPr Me
  loc_BA62D3: VCallAd Control_ID_HastEsapTxt
  loc_BA62D6: FStAdFunc var_11C
  loc_BA62D9: FLdPr var_11C
  loc_BA62DC:  = Me.Text
  loc_BA62E1: FLdRfVar var_128
  loc_BA62E4: FLdPr Me
  loc_BA62E7: VCallAd Control_ID_ImpoEsapTxt
  loc_BA62EA: FStAdFunc var_124
  loc_BA62ED: FLdPr var_124
  loc_BA62F0:  = Me.Text
  loc_BA62F5: LitI2_Byte &HFF
  loc_BA62F7: ILdRf var_128
  loc_BA62FA: CR8Str
  loc_BA62FC: PopFPR8
  loc_BA62FD: ILdRf var_120
  loc_BA6300: CR8Str
  loc_BA6302: PopFPR8
  loc_BA6303: ILdRf var_8C
  loc_BA6306: CR8Str
  loc_BA6308: PopFPR8
  loc_BA6309: FLdRfVar var_C8
  loc_BA630C: CStrVarVal var_12C
  loc_BA6310: LitI2_Byte 1
  loc_BA6312: FLdPr Me
  loc_BA6315: MemLdRfVar from_stack_1.global_52
  loc_BA6318: NewIfNullPr clsescaapre
  loc_BA631B: Call clsescaapre.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_BA6320: FFreeStr var_12C = "": var_8C = "": var_120 = ""
  loc_BA632B: FFreeAd var_94 = "": var_118 = "": var_11C = ""
  loc_BA6336: FFreeVar var_F4 = "": var_A8 = "": var_B8 = ""
  loc_BA6341: Branch loc_BA63FB
  loc_BA6344: FLdI2 var_E2
  loc_BA6347: LitI2_Byte 2
  loc_BA6349: EqI2
  loc_BA634A: BranchF loc_BA63FB
  loc_BA634D: FLdRfVar var_DE
  loc_BA6350: FLdPr Me
  loc_BA6353: MemLdRfVar from_stack_1.global_52
  loc_BA6356: NewIfNullPr clsescaapre
  loc_BA6359: from_stack_1 = clsescaapre.CodiPaap
  loc_BA635E: FLdRfVar var_E0
  loc_BA6361: FLdPr Me
  loc_BA6364: MemLdRfVar from_stack_1.global_52
  loc_BA6367: NewIfNullPr clsescaapre
  loc_BA636A: from_stack_1 = clsescaapre.CodiEsap
  loc_BA636F: FLdRfVar var_8C
  loc_BA6372: FLdPr Me
  loc_BA6375: MemLdRfVar from_stack_1.global_52
  loc_BA6378: NewIfNullPr clsescaapre
  loc_BA637B: from_stack_1 = clsescaapre.TipoEsap
  loc_BA6380: FLdRfVar var_120
  loc_BA6383: FLdPr Me
  loc_BA6386: VCallAd Control_ID_DesdEsapTxt
  loc_BA6389: FStAdFunc var_94
  loc_BA638C: FLdPr var_94
  loc_BA638F:  = Me.Text
  loc_BA6394: FLdRfVar var_128
  loc_BA6397: FLdPr Me
  loc_BA639A: VCallAd Control_ID_HastEsapTxt
  loc_BA639D: FStAdFunc var_118
  loc_BA63A0: FLdPr var_118
  loc_BA63A3:  = Me.Text
  loc_BA63A8: FLdRfVar var_12C
  loc_BA63AB: FLdPr Me
  loc_BA63AE: VCallAd Control_ID_ImpoEsapTxt
  loc_BA63B1: FStAdFunc var_11C
  loc_BA63B4: FLdPr var_11C
  loc_BA63B7:  = Me.Text
  loc_BA63BC: LitI2_Byte &HFF
  loc_BA63BE: ILdRf var_12C
  loc_BA63C1: CR8Str
  loc_BA63C3: PopFPR8
  loc_BA63C4: ILdRf var_128
  loc_BA63C7: CR8Str
  loc_BA63C9: PopFPR8
  loc_BA63CA: ILdRf var_120
  loc_BA63CD: CR8Str
  loc_BA63CF: PopFPR8
  loc_BA63D0: ILdRf var_8C
  loc_BA63D3: FLdI2 var_E0
  loc_BA63D6: FLdI2 var_DE
  loc_BA63D9: FLdPr Me
  loc_BA63DC: MemLdRfVar from_stack_1.global_52
  loc_BA63DF: NewIfNullPr clsescaapre
  loc_BA63E2: Call clsescaapre.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_BA63E7: FFreeStr var_8C = "": var_120 = "": var_128 = ""
  loc_BA63F2: FFreeAd var_94 = "": var_118 = ""
  loc_BA63FB: Call cmdCancelar_Click()
  loc_BA6400: Branch loc_BA6507
  loc_BA6403: ILdRf var_90
  loc_BA6406: LitStr "btnCancelar"
  loc_BA6409: EqStr
  loc_BA640B: BranchF loc_BA6416
  loc_BA640E: Call cmdCancelar_Click()
  loc_BA6413: Branch loc_BA6507
  loc_BA6416: ILdRf var_90
  loc_BA6419: LitStr "btnPrimero"
  loc_BA641C: EqStr
  loc_BA641E: BranchF loc_BA6432
  loc_BA6421: FLdPr Me
  loc_BA6424: MemLdRfVar from_stack_1.global_52
  loc_BA6427: NewIfNullPr clsescaapre
  loc_BA642A: Call clsescaapre.MoveFirst()
  loc_BA642F: Branch loc_BA6507
  loc_BA6432: ILdRf var_90
  loc_BA6435: LitStr "btnAnterior"
  loc_BA6438: EqStr
  loc_BA643A: BranchF loc_BA644E
  loc_BA643D: FLdPr Me
  loc_BA6440: MemLdRfVar from_stack_1.global_52
  loc_BA6443: NewIfNullPr clsescaapre
  loc_BA6446: Call clsescaapre.MovePrevious()
  loc_BA644B: Branch loc_BA6507
  loc_BA644E: ILdRf var_90
  loc_BA6451: LitStr "btnSiguiente"
  loc_BA6454: EqStr
  loc_BA6456: BranchF loc_BA646A
  loc_BA6459: FLdPr Me
  loc_BA645C: MemLdRfVar from_stack_1.global_52
  loc_BA645F: NewIfNullPr clsescaapre
  loc_BA6462: Call clsescaapre.MoveNext()
  loc_BA6467: Branch loc_BA6507
  loc_BA646A: ILdRf var_90
  loc_BA646D: LitStr "btnUltimo"
  loc_BA6470: EqStr
  loc_BA6472: BranchF loc_BA6486
  loc_BA6475: FLdPr Me
  loc_BA6478: MemLdRfVar from_stack_1.global_52
  loc_BA647B: NewIfNullPr clsescaapre
  loc_BA647E: Call clsescaapre.MoveLast()
  loc_BA6483: Branch loc_BA6507
  loc_BA6486: ILdRf var_90
  loc_BA6489: LitStr "btnFiltrar"
  loc_BA648C: EqStr
  loc_BA648E: BranchF loc_BA6494
  loc_BA6491: Branch loc_BA6507
  loc_BA6494: ILdRf var_90
  loc_BA6497: LitStr "btnBuscar"
  loc_BA649A: EqStr
  loc_BA649C: BranchF loc_BA64A2
  loc_BA649F: Branch loc_BA6507
  loc_BA64A2: ILdRf var_90
  loc_BA64A5: LitStr "btnImprimir"
  loc_BA64A8: EqStr
  loc_BA64AA: BranchF loc_BA64B0
  loc_BA64AD: Branch loc_BA6507
  loc_BA64B0: ILdRf var_90
  loc_BA64B3: LitStr "btnAyuda"
  loc_BA64B6: EqStr
  loc_BA64B8: BranchF loc_BA64E7
  loc_BA64BB: LitVar_Missing var_D8
  loc_BA64BE: LitVar_Missing var_C8
  loc_BA64C1: LitVar_Missing var_B8
  loc_BA64C4: LitI4 0
  loc_BA64C9: LitVarStr var_F4, "Opcion no disponible en esta version."
  loc_BA64CE: FStVarCopyObj var_A8
  loc_BA64D1: FLdRfVar var_A8
  loc_BA64D4: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BA64D9: FFreeVar var_A8 = "": var_B8 = "": var_C8 = ""
  loc_BA64E4: Branch loc_BA6507
  loc_BA64E7: ILdRf var_90
  loc_BA64EA: LitStr "btnSalir"
  loc_BA64ED: EqStr
  loc_BA64EF: BranchF loc_BA6507
  loc_BA64F2: ILdRf Me
  loc_BA64F5: FStAdNoPop
  loc_BA64F9: ImpAdLdRf MemVar_D9C5D8
  loc_BA64FC: NewIfNullPr Global
  loc_BA64FF: Global.Unload from_stack_1
  loc_BA6504: FFree1Ad var_94
  loc_BA6507: ExitProcHresult
End Sub
