VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Begin VB.Form frmTipoFapaABM
  Caption = "Tipo de Faclidad"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmTipoFapaABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 13560
  ClientHeight = 9636
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
    TabIndex = 39
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 3960
    Width = 12960
    Height = 5625
    TabIndex = 18
    Begin VB.CheckBox CbuTifaChk
      Left = 7065
      Top = 5160
      Width = 255
      Height = 345
      Enabled = 0   'False
      TabIndex = 41
      DataField = "CbuTifa"
    End
    Begin VB.TextBox DereTifaTxt
      ForeColor = &HFF0000&
      Left = 7080
      Top = 3600
      Width = 1335
      Height = 360
      TabIndex = 11
      MaxLength = 8
      DataField = "DereTifa"
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.ComboBox TipoTifaCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 9000
      Top = 1200
      Width = 2535
      Height = 420
      TabIndex = 5
    End
    Begin VB.TextBox AntiTifaTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 4680
      Width = 1335
      Height = 360
      TabIndex = 13
      MaxLength = 8
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox ImmiTifaTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 5160
      Width = 1335
      Height = 360
      TabIndex = 14
      MaxLength = 8
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox MomiTifaTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 3120
      Width = 1335
      Height = 360
      TabIndex = 9
      MaxLength = 8
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox InteTifaTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 2640
      Width = 1335
      Height = 360
      TabIndex = 8
      MaxLength = 8
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.ComboBox EmitTifaCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2520
      Top = 1200
      Width = 855
      Height = 420
      TabIndex = 3
    End
    Begin VB.TextBox CodiTifaTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 240
      Width = 735
      Height = 360
      TabIndex = 1
      MaxLength = 3
    End
    Begin VB.TextBox ResoTifaTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 2160
      Width = 3855
      Height = 360
      TabIndex = 7
      MaxLength = 15
    End
    Begin VB.TextBox DetaTifaTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 720
      Width = 7335
      Height = 360
      TabIndex = 2
      MaxLength = 40
    End
    Begin VB.TextBox ExpeTifaTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 1680
      Width = 3855
      Height = 360
      TabIndex = 6
      MaxLength = 15
    End
    Begin VB.ComboBox VecuTifaCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 7080
      Top = 4680
      Width = 2175
      Height = 420
      TabIndex = 15
    End
    Begin VB.Frame Frame2
      Caption = "Cantidad de Cuotas"
      Left = 9360
      Top = 2880
      Width = 3015
      Height = 1335
      TabIndex = 30
      Begin VB.TextBox CumaTifaTxt
        ForeColor = &HFF0000&
        Left = 1320
        Top = 840
        Width = 1095
        Height = 360
        TabIndex = 17
        MaxLength = 8
      End
      Begin VB.TextBox CumiTifaTxt
        ForeColor = &HFF0000&
        Left = 1320
        Top = 360
        Width = 1095
        Height = 360
        TabIndex = 16
        MaxLength = 8
      End
      Begin VB.Label Label16
        Caption = "Maxima :"
        Left = 240
        Top = 840
        Width = 930
        Height = 300
        TabIndex = 32
        AutoSize = -1  'True
      End
      Begin VB.Label Label15
        Caption = "Minima :"
        Left = 240
        Top = 360
        Width = 870
        Height = 300
        TabIndex = 31
        AutoSize = -1  'True
      End
    End
    Begin VB.ComboBox TianTifaCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2520
      Top = 4080
      Width = 1815
      Height = 420
      TabIndex = 12
    End
    Begin VB.TextBox DecaTifaTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 3600
      Width = 1335
      Height = 360
      TabIndex = 10
      MaxLength = 8
      DataField = "DecaTifa"
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.ComboBox MecaTifaCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 4440
      Top = 1200
      Width = 2175
      Height = 420
      TabIndex = 4
    End
    Begin VB.Label Label5
      Caption = "CBU:"
      Left = 6360
      Top = 5160
      Width = 570
      Height = 300
      TabIndex = 42
      AutoSize = -1  'True
    End
    Begin VB.Label Label20
      Caption = "Tipo de Facilidad :"
      Left = 6960
      Top = 1200
      Width = 1905
      Height = 300
      TabIndex = 36
      AutoSize = -1  'True
    End
    Begin VB.Label Label19
      Caption = "Anticipo :"
      Left = 1440
      Top = 4680
      Width = 975
      Height = 300
      TabIndex = 35
      AutoSize = -1  'True
    End
    Begin VB.Label Label18
      Caption = "Vencimiento Cuota :"
      Left = 4800
      Top = 4680
      Width = 2145
      Height = 300
      TabIndex = 34
      AutoSize = -1  'True
    End
    Begin VB.Label Label17
      Caption = "Importe Minimo :"
      Left = 660
      Top = 5160
      Width = 1755
      Height = 300
      TabIndex = 33
      AutoSize = -1  'True
    End
    Begin VB.Label Label14
      Caption = "Tipo de Anticipo :"
      Left = 600
      Top = 4080
      Width = 1815
      Height = 300
      TabIndex = 29
      AutoSize = -1  'True
    End
    Begin VB.Label Label13
      Caption = "Descuento de Capital:"
      Left = 60
      Top = 3600
      Width = 2355
      Height = 300
      TabIndex = 28
      AutoSize = -1  'True
    End
    Begin VB.Label Label12
      Caption = "Descuento de Recargo:"
      Left = 4440
      Top = 3600
      Width = 2535
      Height = 300
      TabIndex = 27
      AutoSize = -1  'True
    End
    Begin VB.Label Label11
      Caption = "Monto Minimo :"
      Left = 810
      Top = 3120
      Width = 1605
      Height = 300
      TabIndex = 26
      AutoSize = -1  'True
    End
    Begin VB.Label Label10
      Caption = "Interes :"
      Left = 1545
      Top = 2640
      Width = 870
      Height = 300
      TabIndex = 25
      AutoSize = -1  'True
    End
    Begin VB.Label Label9
      Caption = "Cálculo :"
      Left = 3480
      Top = 1200
      Width = 900
      Height = 300
      TabIndex = 24
      AutoSize = -1  'True
    End
    Begin VB.Label Label8
      Caption = "Expediente :"
      Left = 1095
      Top = 1680
      Width = 1320
      Height = 300
      TabIndex = 23
      AutoSize = -1  'True
    End
    Begin VB.Label Label4
      Caption = "Imprime Chequera :"
      Left = 330
      Top = 1200
      Width = 2085
      Height = 300
      TabIndex = 22
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Detalle Facilidad:"
      Left = 600
      Top = 720
      Width = 1815
      Height = 300
      TabIndex = 21
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Resolucion :"
      Left = 1110
      Top = 2160
      Width = 1305
      Height = 300
      TabIndex = 20
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Código Facilidad:"
      Left = 600
      Top = 240
      Width = 1815
      Height = 300
      TabIndex = 19
      AutoSize = -1  'True
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1380
    Width = 13080
    Height = 2475
    TabIndex = 0
    OleObjectBlob = "frmTipoFapaABM.frx":324A
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmTipoFapaABM.frx":3716
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 13560
    Height = 636
    TabIndex = 37
    OleObjectBlob = "frmTipoFapaABM.frx":B294
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 38
      TabStop = 0   'False
      Picture = "frmTipoFapaABM.frx":B7F0
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
    TabIndex = 40
    OleObjectBlob = "frmTipoFapaABM.frx":C0BA
  End
End

Attribute VB_Name = "frmTipoFapaABM"


Private Sub ImmiTifaTxt_GotFocus() '9BECA0
  'Data Table: 512094
  loc_9BEC8C: FLdPr Me
  loc_9BEC8F: VCallAd Control_ID_ImmiTifaTxt
  loc_9BEC92: CVarAd
  loc_9BEC96: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BEC9B: FFree1Var var_94 = ""
  loc_9BEC9E: ExitProcHresult
  loc_9BEC9F: FLdPrThis
End Sub

Private Sub ImmiTifaTxt_KeyPress(KeyAscii As Integer) 'A08348
  'Data Table: 512094
  loc_A08314: LitStr "0123456789.,"
  loc_A08317: FStStrCopy var_88
  loc_A0831A: FLdRfVar var_88
  loc_A0831D: ILdRf KeyAscii
  loc_A08320: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A08325: IStI2 KeyAscii
  loc_A08328: FFree1Str var_88
  loc_A0832B: ILdI2 KeyAscii
  loc_A0832E: LitStr "."
  loc_A08331: ImpAdCallI2 Asc()
  loc_A08336: EqI2
  loc_A08337: BranchF loc_A08345
  loc_A0833A: LitStr ","
  loc_A0833D: ImpAdCallI2 Asc()
  loc_A08342: IStI2 KeyAscii
  loc_A08345: ExitProcHresult
End Sub

Private Sub ImmiTifaTxt_Validate(Cancel As Boolean) 'AB61EC
  'Data Table: 512094
  loc_AB6108: FLdRfVar var_8A
  loc_AB610B: FLdPr Me
  loc_AB610E: VCallAd Control_ID_cmdCancelar
  loc_AB6111: FStAdFunc var_88
  loc_AB6114: FLdPr var_88
  loc_AB6117:  = Me.Value
  loc_AB611C: FLdI2 var_8A
  loc_AB611F: NotI4
  loc_AB6120: FLdRfVar var_92
  loc_AB6123: FLdPr Me
  loc_AB6126: VCallAd Control_ID_ImmiTifaTxt
  loc_AB6129: FStAdFunc var_90
  loc_AB612C: FLdPr var_90
  loc_AB612F:  = Me.Enabled
  loc_AB6134: FLdI2 var_92
  loc_AB6137: AndI4
  loc_AB6138: FFreeAd var_88 = ""
  loc_AB613F: BranchF loc_AB61E9
  loc_AB6142: FLdRfVar var_98
  loc_AB6145: FLdPr Me
  loc_AB6148: VCallAd Control_ID_ImmiTifaTxt
  loc_AB614B: FStAdFunc var_88
  loc_AB614E: FLdPr var_88
  loc_AB6151:  = Me.Text
  loc_AB6156: FLdZeroAd var_98
  loc_AB6159: CVarStr var_A8
  loc_AB615C: ImpAdCallI2 IsNumeric()
  loc_AB6161: NotI4
  loc_AB6162: FFree1Ad var_88
  loc_AB6165: FFree1Var var_A8 = ""
  loc_AB6168: BranchF loc_AB6182
  loc_AB616B: LitStr "0"
  loc_AB616E: FLdPr Me
  loc_AB6171: VCallAd Control_ID_ImmiTifaTxt
  loc_AB6174: FStAdFunc var_88
  loc_AB6177: FLdPr var_88
  loc_AB617A: Me.Text = from_stack_1
  loc_AB617F: FFree1Ad var_88
  loc_AB6182: FLdRfVar var_98
  loc_AB6185: FLdPr Me
  loc_AB6188: VCallAd Control_ID_ImmiTifaTxt
  loc_AB618B: FStAdFunc var_88
  loc_AB618E: FLdPr var_88
  loc_AB6191:  = Me.Text
  loc_AB6196: LitI2_Byte &HFF
  loc_AB6198: LitI2_Byte 0
  loc_AB619A: ILdRf var_98
  loc_AB619D: LitStr "ingrese importe"
  loc_AB61A0: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AB61A5: FStStrNoPop var_AC
  loc_AB61A8: FLdPr Me
  loc_AB61AB: MemStStrCopy
  loc_AB61AF: FFreeStr var_98 = ""
  loc_AB61B6: FFree1Ad var_88
  loc_AB61B9: FLdPr Me
  loc_AB61BC: MemLdStr global_60
  loc_AB61BF: LitStr vbNullString
  loc_AB61C2: NeStr
  loc_AB61C4: BranchF loc_AB61E9
  loc_AB61C7: FLdPr Me
  loc_AB61CA: MemLdStr global_60
  loc_AB61CD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB61D2: FLdPr Me
  loc_AB61D5: VCallAd Control_ID_ImmiTifaTxt
  loc_AB61D8: CVarAd
  loc_AB61DC: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB61E1: FFree1Var var_A8 = ""
  loc_AB61E4: LitI2_Byte &HFF
  loc_AB61E6: IStI2 Cancel
  loc_AB61E9: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9DB5E4
  'Data Table: 512094
  loc_9DB5CC: FLdPr Me
  loc_9DB5CF: VCallAd Control_ID_dgdABMS
  loc_9DB5D2: FStAdFunc var_88
  loc_9DB5D5: FLdRfVar var_88
  loc_9DB5D8: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9DB5DD: FFree1Ad var_88
  loc_9DB5E0: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9D4C80
  'Data Table: 512094
  loc_9D4C68: FLdPr Me
  loc_9D4C6B: VCallAd Control_ID_dgdABMS
  loc_9D4C6E: FStAdFunc var_88
  loc_9D4C71: FLdRfVar var_88
  loc_9D4C74: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9D4C79: FFree1Ad var_88
  loc_9D4C7C: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A672DC
  'Data Table: 512094
  loc_A67280: FLdRfVar var_B4
  loc_A67283: FLdRfVar var_B0
  loc_A67286: FLdI2 ColIndex
  loc_A67289: CVarI2 var_A8
  loc_A6728C: PopAdLdVar
  loc_A6728D: FLdPr Me
  loc_A67290: VCallAd Control_ID_dgdABMS
  loc_A67293: FStAdFunc var_88
  loc_A67296: FLdPr var_88
  loc_A67299: LateIdLdVar var_98 DispID_105 0
  loc_A672A0: CastAdVar Me
  loc_A672A4: FStAdFunc var_AC
  loc_A672A7: FLdPr var_AC
  loc_A672AA: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A672AF: FLdPr var_B0
  loc_A672B2:  = Me.DataField
  loc_A672B7: FLdZeroAd var_B4
  loc_A672BA: PopTmpLdAdStr
  loc_A672BE: FLdPr Me
  loc_A672C1: MemLdRfVar from_stack_1.global_52
  loc_A672C4: NewIfNullPr clstipofapa
  loc_A672C7: Call clstipofapa.Sort(from_stack_1v)
  loc_A672CC: FFree1Str var_B8
  loc_A672CF: FFreeAd var_88 = "": var_AC = ""
  loc_A672D8: FFree1Var var_98 = ""
  loc_A672DB: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'C4FB1C
  'Data Table: 512094
  loc_C4ED88: ILdRf Button
  loc_C4ED8B: FStAd var_88 
  loc_C4ED8F: FLdRfVar var_90
  loc_C4ED92: FLdPr var_88
  loc_C4ED95:  = Me.Key
  loc_C4ED9A: FLdZeroAd var_90
  loc_C4ED9D: FStStr var_94
  loc_C4EDA0: ILdRf var_94
  loc_C4EDA3: LitStr "btnCrear"
  loc_C4EDA6: EqStr
  loc_C4EDA8: BranchF loc_C4F1E8
  loc_C4EDAB: LitI2_Byte 1
  loc_C4EDAD: FLdPr Me
  loc_C4EDB0: MemStI2 global_56
  loc_C4EDB3: ILdRf Me
  loc_C4EDB6: CastAd
  loc_C4EDB9: FStAdFunc var_98
  loc_C4EDBC: FLdRfVar var_98
  loc_C4EDBF: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_C4EDC4: FFree1Ad var_98
  loc_C4EDC7: LitI4 0
  loc_C4EDCC: LitI4 0
  loc_C4EDD1: FLdRfVar var_9C
  loc_C4EDD4: Redim
  loc_C4EDDE: FLdPr Me
  loc_C4EDE1: VCallAd Control_ID_dgdABMS
  loc_C4EDE4: CVarAd
  loc_C4EDE8: ParmAry1St
  loc_C4EDEE: FLdRfVar var_9C
  loc_C4EDF1: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C4EDF6: FLdRfVar var_9C
  loc_C4EDF9: Erase
  loc_C4EDFA: ILdRf Me
  loc_C4EDFD: CastAd
  loc_C4EE00: FStAdFunc var_98
  loc_C4EE03: FLdRfVar var_98
  loc_C4EE06: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_C4EE0B: FFree1Ad var_98
  loc_C4EE0E: ILdRf Me
  loc_C4EE11: CastAd
  loc_C4EE14: FStAdFunc var_98
  loc_C4EE17: FLdRfVar var_98
  loc_C4EE1A: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_C4EE1F: FFree1Ad var_98
  loc_C4EE22: FLdRfVar var_B0
  loc_C4EE25: FLdPr Me
  loc_C4EE28: MemLdRfVar from_stack_1.global_52
  loc_C4EE2B: NewIfNullPr clstipofapa
  loc_C4EE2E: from_stack_1v = clstipofapa.NuevoRegistro()
  loc_C4EE33: ILdRf var_B0
  loc_C4EE36: CStrI4
  loc_C4EE38: FStStrNoPop var_90
  loc_C4EE3B: FLdPr Me
  loc_C4EE3E: VCallAd Control_ID_CodiTifaTxt
  loc_C4EE41: FStAdFunc var_98
  loc_C4EE44: FLdPr var_98
  loc_C4EE47: Me.Text = from_stack_1
  loc_C4EE4C: FFree1Str var_90
  loc_C4EE4F: FFree1Ad var_98
  loc_C4EE52: LitI4 1
  loc_C4EE57: LitI4 1
  loc_C4EE5C: LitVarStr var_D0, "0.00"
  loc_C4EE61: FStVarCopyObj var_E0
  loc_C4EE64: FLdRfVar var_E0
  loc_C4EE67: LitVarStr var_C0, "0"
  loc_C4EE6C: FStVarCopyObj var_AC
  loc_C4EE6F: FLdRfVar var_AC
  loc_C4EE72: FLdRfVar var_F0
  loc_C4EE75: ImpAdCallFPR4  = Format(, )
  loc_C4EE7A: FLdRfVar var_F0
  loc_C4EE7D: CStrVarVal var_90
  loc_C4EE81: FLdPr Me
  loc_C4EE84: VCallAd Control_ID_InteTifaTxt
  loc_C4EE87: FStAdFunc var_98
  loc_C4EE8A: FLdPr var_98
  loc_C4EE8D: Me.Text = from_stack_1
  loc_C4EE92: FFree1Str var_90
  loc_C4EE95: FFree1Ad var_98
  loc_C4EE98: FFreeVar var_AC = "": var_E0 = ""
  loc_C4EEA1: LitStr "1"
  loc_C4EEA4: FLdPr Me
  loc_C4EEA7: VCallAd Control_ID_CumiTifaTxt
  loc_C4EEAA: FStAdFunc var_98
  loc_C4EEAD: FLdPr var_98
  loc_C4EEB0: Me.Text = from_stack_1
  loc_C4EEB5: FFree1Ad var_98
  loc_C4EEB8: LitStr "1"
  loc_C4EEBB: FLdPr Me
  loc_C4EEBE: VCallAd Control_ID_CumaTifaTxt
  loc_C4EEC1: FStAdFunc var_98
  loc_C4EEC4: FLdPr var_98
  loc_C4EEC7: Me.Text = from_stack_1
  loc_C4EECC: FFree1Ad var_98
  loc_C4EECF: LitI4 1
  loc_C4EED4: LitI4 1
  loc_C4EED9: LitVarStr var_D0, "0.00"
  loc_C4EEDE: FStVarCopyObj var_E0
  loc_C4EEE1: FLdRfVar var_E0
  loc_C4EEE4: LitVarStr var_C0, "0"
  loc_C4EEE9: FStVarCopyObj var_AC
  loc_C4EEEC: FLdRfVar var_AC
  loc_C4EEEF: FLdRfVar var_F0
  loc_C4EEF2: ImpAdCallFPR4  = Format(, )
  loc_C4EEF7: FLdRfVar var_F0
  loc_C4EEFA: CStrVarVal var_90
  loc_C4EEFE: FLdPr Me
  loc_C4EF01: VCallAd Control_ID_DecaTifaTxt
  loc_C4EF04: FStAdFunc var_98
  loc_C4EF07: FLdPr var_98
  loc_C4EF0A: Me.Text = from_stack_1
  loc_C4EF0F: FFree1Str var_90
  loc_C4EF12: FFree1Ad var_98
  loc_C4EF15: FFreeVar var_AC = "": var_E0 = ""
  loc_C4EF1E: LitI4 1
  loc_C4EF23: LitI4 1
  loc_C4EF28: LitVarStr var_D0, "0.00"
  loc_C4EF2D: FStVarCopyObj var_E0
  loc_C4EF30: FLdRfVar var_E0
  loc_C4EF33: LitVarStr var_C0, "0"
  loc_C4EF38: FStVarCopyObj var_AC
  loc_C4EF3B: FLdRfVar var_AC
  loc_C4EF3E: FLdRfVar var_F0
  loc_C4EF41: ImpAdCallFPR4  = Format(, )
  loc_C4EF46: FLdRfVar var_F0
  loc_C4EF49: CStrVarVal var_90
  loc_C4EF4D: FLdPr Me
  loc_C4EF50: VCallAd Control_ID_DereTifaTxt
  loc_C4EF53: FStAdFunc var_98
  loc_C4EF56: FLdPr var_98
  loc_C4EF59: Me.Text = from_stack_1
  loc_C4EF5E: FFree1Str var_90
  loc_C4EF61: FFree1Ad var_98
  loc_C4EF64: FFreeVar var_AC = "": var_E0 = ""
  loc_C4EF6D: LitI4 1
  loc_C4EF72: LitI4 1
  loc_C4EF77: LitVarStr var_D0, "0.00"
  loc_C4EF7C: FStVarCopyObj var_E0
  loc_C4EF7F: FLdRfVar var_E0
  loc_C4EF82: LitVarStr var_C0, "0"
  loc_C4EF87: FStVarCopyObj var_AC
  loc_C4EF8A: FLdRfVar var_AC
  loc_C4EF8D: FLdRfVar var_F0
  loc_C4EF90: ImpAdCallFPR4  = Format(, )
  loc_C4EF95: FLdRfVar var_F0
  loc_C4EF98: CStrVarVal var_90
  loc_C4EF9C: FLdPr Me
  loc_C4EF9F: VCallAd Control_ID_ImmiTifaTxt
  loc_C4EFA2: FStAdFunc var_98
  loc_C4EFA5: FLdPr var_98
  loc_C4EFA8: Me.Text = from_stack_1
  loc_C4EFAD: FFree1Str var_90
  loc_C4EFB0: FFree1Ad var_98
  loc_C4EFB3: FFreeVar var_AC = "": var_E0 = ""
  loc_C4EFBC: LitI4 1
  loc_C4EFC1: LitI4 1
  loc_C4EFC6: LitVarStr var_D0, "0.00"
  loc_C4EFCB: FStVarCopyObj var_E0
  loc_C4EFCE: FLdRfVar var_E0
  loc_C4EFD1: LitVarStr var_C0, "0"
  loc_C4EFD6: FStVarCopyObj var_AC
  loc_C4EFD9: FLdRfVar var_AC
  loc_C4EFDC: FLdRfVar var_F0
  loc_C4EFDF: ImpAdCallFPR4  = Format(, )
  loc_C4EFE4: FLdRfVar var_F0
  loc_C4EFE7: CStrVarVal var_90
  loc_C4EFEB: FLdPr Me
  loc_C4EFEE: VCallAd Control_ID_MomiTifaTxt
  loc_C4EFF1: FStAdFunc var_98
  loc_C4EFF4: FLdPr var_98
  loc_C4EFF7: Me.Text = from_stack_1
  loc_C4EFFC: FFree1Str var_90
  loc_C4EFFF: FFree1Ad var_98
  loc_C4F002: FFreeVar var_AC = "": var_E0 = ""
  loc_C4F00B: LitI4 1
  loc_C4F010: LitI4 1
  loc_C4F015: LitVarStr var_D0, "0.00"
  loc_C4F01A: FStVarCopyObj var_E0
  loc_C4F01D: FLdRfVar var_E0
  loc_C4F020: LitVarStr var_C0, "0"
  loc_C4F025: FStVarCopyObj var_AC
  loc_C4F028: FLdRfVar var_AC
  loc_C4F02B: FLdRfVar var_F0
  loc_C4F02E: ImpAdCallFPR4  = Format(, )
  loc_C4F033: FLdRfVar var_F0
  loc_C4F036: CStrVarVal var_90
  loc_C4F03A: FLdPr Me
  loc_C4F03D: VCallAd Control_ID_AntiTifaTxt
  loc_C4F040: FStAdFunc var_98
  loc_C4F043: FLdPr var_98
  loc_C4F046: Me.Text = from_stack_1
  loc_C4F04B: FFree1Str var_90
  loc_C4F04E: FFree1Ad var_98
  loc_C4F051: FFreeVar var_AC = "": var_E0 = ""
  loc_C4F05A: LitI4 0
  loc_C4F05F: LitI4 &HD
  loc_C4F064: FLdRfVar var_9C
  loc_C4F067: Redim
  loc_C4F071: FLdPr Me
  loc_C4F074: VCallAd Control_ID_CodiTifaTxt
  loc_C4F077: CVarAd
  loc_C4F07B: ParmAry1St
  loc_C4F081: FLdPr Me
  loc_C4F084: VCallAd Control_ID_DetaTifaTxt
  loc_C4F087: CVarAd
  loc_C4F08B: ParmAry1St
  loc_C4F091: FLdPr Me
  loc_C4F094: VCallAd Control_ID_TipoTifaCbo
  loc_C4F097: CVarAd
  loc_C4F09B: ParmAry1St
  loc_C4F0A1: FLdPr Me
  loc_C4F0A4: VCallAd Control_ID_EmitTifaCbo
  loc_C4F0A7: CVarAd
  loc_C4F0AB: ParmAry1St
  loc_C4F0B1: FLdPr Me
  loc_C4F0B4: VCallAd Control_ID_ExpeTifaTxt
  loc_C4F0B7: CVarAd
  loc_C4F0BB: ParmAry1St
  loc_C4F0C1: FLdPr Me
  loc_C4F0C4: VCallAd Control_ID_ResoTifaTxt
  loc_C4F0C7: CVarAd
  loc_C4F0CB: ParmAry1St
  loc_C4F0D1: FLdPr Me
  loc_C4F0D4: VCallAd Control_ID_MecaTifaCbo
  loc_C4F0D7: CVarAd
  loc_C4F0DB: ParmAry1St
  loc_C4F0E1: FLdPr Me
  loc_C4F0E4: VCallAd Control_ID_InteTifaTxt
  loc_C4F0E7: CVarAd
  loc_C4F0EB: ParmAry1St
  loc_C4F0F1: FLdPr Me
  loc_C4F0F4: VCallAd Control_ID_MomiTifaTxt
  loc_C4F0F7: CVarAd
  loc_C4F0FB: ParmAry1St
  loc_C4F101: FLdPr Me
  loc_C4F104: VCallAd Control_ID_CumiTifaTxt
  loc_C4F107: CVarAd
  loc_C4F10B: ParmAry1St
  loc_C4F111: FLdPr Me
  loc_C4F114: VCallAd Control_ID_CumaTifaTxt
  loc_C4F117: CVarAd
  loc_C4F11B: ParmAry1St
  loc_C4F121: FLdPr Me
  loc_C4F124: VCallAd Control_ID_ImmiTifaTxt
  loc_C4F127: CVarAd
  loc_C4F12B: ParmAry1St
  loc_C4F131: FLdPr Me
  loc_C4F134: VCallAd Control_ID_VecuTifaCbo
  loc_C4F137: CVarAd
  loc_C4F13B: ParmAry1St
  loc_C4F141: FLdPr Me
  loc_C4F144: VCallAd Control_ID_CbuTifaChk
  loc_C4F147: CVarAd
  loc_C4F14B: ParmAry1St
  loc_C4F151: FLdRfVar var_9C
  loc_C4F154: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_C4F159: FLdRfVar var_9C
  loc_C4F15C: Erase
  loc_C4F15D: FLdRfVar var_90
  loc_C4F160: FLdPr Me
  loc_C4F163: VCallAd Control_ID_MecaTifaCbo
  loc_C4F166: FStAdFunc var_98
  loc_C4F169: FLdPr var_98
  loc_C4F16C:  = Me.Text
  loc_C4F171: ILdRf var_90
  loc_C4F174: LitStr "Especial"
  loc_C4F177: NeStr
  loc_C4F179: FFree1Str var_90
  loc_C4F17C: FFree1Ad var_98
  loc_C4F17F: BranchF loc_C4F1E5
  loc_C4F182: LitI4 0
  loc_C4F187: LitI4 3
  loc_C4F18C: FLdRfVar var_9C
  loc_C4F18F: Redim
  loc_C4F199: FLdPr Me
  loc_C4F19C: VCallAd Control_ID_TianTifaCbo
  loc_C4F19F: CVarAd
  loc_C4F1A3: ParmAry1St
  loc_C4F1A9: FLdPr Me
  loc_C4F1AC: VCallAd Control_ID_AntiTifaTxt
  loc_C4F1AF: CVarAd
  loc_C4F1B3: ParmAry1St
  loc_C4F1B9: FLdPr Me
  loc_C4F1BC: VCallAd Control_ID_DecaTifaTxt
  loc_C4F1BF: CVarAd
  loc_C4F1C3: ParmAry1St
  loc_C4F1C9: FLdPr Me
  loc_C4F1CC: VCallAd Control_ID_DereTifaTxt
  loc_C4F1CF: CVarAd
  loc_C4F1D3: ParmAry1St
  loc_C4F1D9: FLdRfVar var_9C
  loc_C4F1DC: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_C4F1E1: FLdRfVar var_9C
  loc_C4F1E4: Erase
  loc_C4F1E5: Branch loc_C4FB1B
  loc_C4F1E8: ILdRf var_94
  loc_C4F1EB: LitStr "btnModificar"
  loc_C4F1EE: EqStr
  loc_C4F1F0: BranchF loc_C4F451
  loc_C4F1F3: FLdRfVar var_B0
  loc_C4F1F6: FLdRfVar var_98
  loc_C4F1F9: FLdPr Me
  loc_C4F1FC: MemLdRfVar from_stack_1.global_52
  loc_C4F1FF: NewIfNullPr clstipofapa
  loc_C4F202: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C4F207: FLdPr var_98
  loc_C4F20A:  = Me.RecordCount
  loc_C4F20F: ILdRf var_B0
  loc_C4F212: LitI4 0
  loc_C4F217: GtI4
  loc_C4F218: FFree1Ad var_98
  loc_C4F21B: BranchF loc_C4F44E
  loc_C4F21E: FLdRfVar var_1A8
  loc_C4F221: LitVarStr var_C0, "BajaFeho"
  loc_C4F226: PopAdLdVar
  loc_C4F227: FLdRfVar var_1A4
  loc_C4F22A: FLdRfVar var_98
  loc_C4F22D: FLdPr Me
  loc_C4F230: MemLdRfVar from_stack_1.global_52
  loc_C4F233: NewIfNullPr clstipofapa
  loc_C4F236: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C4F23B: FLdPr var_98
  loc_C4F23E:  = Me.Fields
  loc_C4F243: FLdPr var_1A4
  loc_C4F246: from_stack_2 = Me.Item(from_stack_1)
  loc_C4F24B: FLdZeroAd var_1A8
  loc_C4F24E: CVarAd
  loc_C4F252: ImpAdCallI2 IsNull()
  loc_C4F257: FFreeAd var_98 = ""
  loc_C4F25E: FFree1Var var_AC = ""
  loc_C4F261: BranchF loc_C4F445
  loc_C4F264: LitI2_Byte 2
  loc_C4F266: FLdPr Me
  loc_C4F269: MemStI2 global_56
  loc_C4F26C: ILdRf Me
  loc_C4F26F: CastAd
  loc_C4F272: FStAdFunc var_98
  loc_C4F275: FLdRfVar var_98
  loc_C4F278: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_C4F27D: FFree1Ad var_98
  loc_C4F280: LitI4 0
  loc_C4F285: LitI4 0
  loc_C4F28A: FLdRfVar var_9C
  loc_C4F28D: Redim
  loc_C4F297: FLdPr Me
  loc_C4F29A: VCallAd Control_ID_dgdABMS
  loc_C4F29D: CVarAd
  loc_C4F2A1: ParmAry1St
  loc_C4F2A7: FLdRfVar var_9C
  loc_C4F2AA: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C4F2AF: FLdRfVar var_9C
  loc_C4F2B2: Erase
  loc_C4F2B3: ILdRf Me
  loc_C4F2B6: CastAd
  loc_C4F2B9: FStAdFunc var_98
  loc_C4F2BC: FLdRfVar var_98
  loc_C4F2BF: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_C4F2C4: FFree1Ad var_98
  loc_C4F2C7: LitI4 0
  loc_C4F2CC: LitI4 &HC
  loc_C4F2D1: FLdRfVar var_9C
  loc_C4F2D4: Redim
  loc_C4F2DE: FLdPr Me
  loc_C4F2E1: VCallAd Control_ID_DetaTifaTxt
  loc_C4F2E4: CVarAd
  loc_C4F2E8: ParmAry1St
  loc_C4F2EE: FLdPr Me
  loc_C4F2F1: VCallAd Control_ID_TipoTifaCbo
  loc_C4F2F4: CVarAd
  loc_C4F2F8: ParmAry1St
  loc_C4F2FE: FLdPr Me
  loc_C4F301: VCallAd Control_ID_EmitTifaCbo
  loc_C4F304: CVarAd
  loc_C4F308: ParmAry1St
  loc_C4F30E: FLdPr Me
  loc_C4F311: VCallAd Control_ID_ExpeTifaTxt
  loc_C4F314: CVarAd
  loc_C4F318: ParmAry1St
  loc_C4F31E: FLdPr Me
  loc_C4F321: VCallAd Control_ID_ResoTifaTxt
  loc_C4F324: CVarAd
  loc_C4F328: ParmAry1St
  loc_C4F32E: FLdPr Me
  loc_C4F331: VCallAd Control_ID_MecaTifaCbo
  loc_C4F334: CVarAd
  loc_C4F338: ParmAry1St
  loc_C4F33E: FLdPr Me
  loc_C4F341: VCallAd Control_ID_InteTifaTxt
  loc_C4F344: CVarAd
  loc_C4F348: ParmAry1St
  loc_C4F34E: FLdPr Me
  loc_C4F351: VCallAd Control_ID_MomiTifaTxt
  loc_C4F354: CVarAd
  loc_C4F358: ParmAry1St
  loc_C4F35E: FLdPr Me
  loc_C4F361: VCallAd Control_ID_CumiTifaTxt
  loc_C4F364: CVarAd
  loc_C4F368: ParmAry1St
  loc_C4F36E: FLdPr Me
  loc_C4F371: VCallAd Control_ID_CumaTifaTxt
  loc_C4F374: CVarAd
  loc_C4F378: ParmAry1St
  loc_C4F37E: FLdPr Me
  loc_C4F381: VCallAd Control_ID_ImmiTifaTxt
  loc_C4F384: CVarAd
  loc_C4F388: ParmAry1St
  loc_C4F38E: FLdPr Me
  loc_C4F391: VCallAd Control_ID_VecuTifaCbo
  loc_C4F394: CVarAd
  loc_C4F398: ParmAry1St
  loc_C4F39E: FLdPr Me
  loc_C4F3A1: VCallAd Control_ID_CbuTifaChk
  loc_C4F3A4: CVarAd
  loc_C4F3A8: ParmAry1St
  loc_C4F3AE: FLdRfVar var_9C
  loc_C4F3B1: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_C4F3B6: FLdRfVar var_9C
  loc_C4F3B9: Erase
  loc_C4F3BA: FLdRfVar var_90
  loc_C4F3BD: FLdPr Me
  loc_C4F3C0: VCallAd Control_ID_MecaTifaCbo
  loc_C4F3C3: FStAdFunc var_98
  loc_C4F3C6: FLdPr var_98
  loc_C4F3C9:  = Me.Text
  loc_C4F3CE: ILdRf var_90
  loc_C4F3D1: LitStr "Especial"
  loc_C4F3D4: NeStr
  loc_C4F3D6: FFree1Str var_90
  loc_C4F3D9: FFree1Ad var_98
  loc_C4F3DC: BranchF loc_C4F442
  loc_C4F3DF: LitI4 0
  loc_C4F3E4: LitI4 3
  loc_C4F3E9: FLdRfVar var_9C
  loc_C4F3EC: Redim
  loc_C4F3F6: FLdPr Me
  loc_C4F3F9: VCallAd Control_ID_TianTifaCbo
  loc_C4F3FC: CVarAd
  loc_C4F400: ParmAry1St
  loc_C4F406: FLdPr Me
  loc_C4F409: VCallAd Control_ID_AntiTifaTxt
  loc_C4F40C: CVarAd
  loc_C4F410: ParmAry1St
  loc_C4F416: FLdPr Me
  loc_C4F419: VCallAd Control_ID_DecaTifaTxt
  loc_C4F41C: CVarAd
  loc_C4F420: ParmAry1St
  loc_C4F426: FLdPr Me
  loc_C4F429: VCallAd Control_ID_DereTifaTxt
  loc_C4F42C: CVarAd
  loc_C4F430: ParmAry1St
  loc_C4F436: FLdRfVar var_9C
  loc_C4F439: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_C4F43E: FLdRfVar var_9C
  loc_C4F441: Erase
  loc_C4F442: Branch loc_C4F44E
  loc_C4F445: LitStr "No se puede modificar, el registro esta dado de baja"
  loc_C4F448: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C4F44D: ExitProcHresult
  loc_C4F44E: Branch loc_C4FB1B
  loc_C4F451: ILdRf var_94
  loc_C4F454: LitStr "btnEliminar"
  loc_C4F457: EqStr
  loc_C4F459: BranchF loc_C4F53B
  loc_C4F45C: FLdRfVar var_B0
  loc_C4F45F: FLdRfVar var_98
  loc_C4F462: FLdPr Me
  loc_C4F465: MemLdRfVar from_stack_1.global_52
  loc_C4F468: NewIfNullPr clstipofapa
  loc_C4F46B: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C4F470: FLdPr var_98
  loc_C4F473:  = Me.RecordCount
  loc_C4F478: ILdRf var_B0
  loc_C4F47B: LitI4 0
  loc_C4F480: GtI4
  loc_C4F481: FFree1Ad var_98
  loc_C4F484: BranchF loc_C4F538
  loc_C4F487: FLdRfVar var_1A8
  loc_C4F48A: LitVarStr var_C0, "BajaFeho"
  loc_C4F48F: PopAdLdVar
  loc_C4F490: FLdRfVar var_1A4
  loc_C4F493: FLdRfVar var_98
  loc_C4F496: FLdPr Me
  loc_C4F499: MemLdRfVar from_stack_1.global_52
  loc_C4F49C: NewIfNullPr clstipofapa
  loc_C4F49F: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C4F4A4: FLdPr var_98
  loc_C4F4A7:  = Me.Fields
  loc_C4F4AC: FLdPr var_1A4
  loc_C4F4AF: from_stack_2 = Me.Item(from_stack_1)
  loc_C4F4B4: FLdZeroAd var_1A8
  loc_C4F4B7: CVarAd
  loc_C4F4BB: ImpAdCallI2 IsNull()
  loc_C4F4C0: FFreeAd var_98 = ""
  loc_C4F4C7: FFree1Var var_AC = ""
  loc_C4F4CA: BranchF loc_C4F52F
  loc_C4F4CD: LitVar_Missing var_100
  loc_C4F4D0: LitVar_Missing var_F0
  loc_C4F4D3: LitVar_Missing var_E0
  loc_C4F4D6: LitI4 4
  loc_C4F4DB: LitVarStr var_C0, "¿Desea dar de baja al registro selecionado?"
  loc_C4F4E0: FStVarCopyObj var_AC
  loc_C4F4E3: FLdRfVar var_AC
  loc_C4F4E6: ImpAdCallI2 MsgBox(, , , , )
  loc_C4F4EB: LitI4 6
  loc_C4F4F0: EqI4
  loc_C4F4F1: FFreeVar var_AC = "": var_E0 = "": var_F0 = ""
  loc_C4F4FC: BranchF loc_C4F52C
  loc_C4F4FF: FLdRfVar var_90
  loc_C4F502: FLdPr Me
  loc_C4F505: VCallAd Control_ID_CodiTifaTxt
  loc_C4F508: FStAdFunc var_98
  loc_C4F50B: FLdPr var_98
  loc_C4F50E:  = Me.Text
  loc_C4F513: ILdRf var_90
  loc_C4F516: CI2Str
  loc_C4F518: FLdPr Me
  loc_C4F51B: MemLdRfVar from_stack_1.global_52
  loc_C4F51E: NewIfNullPr clstipofapa
  loc_C4F521: Call clstipofapa.Baja(from_stack_1v)
  loc_C4F526: FFree1Str var_90
  loc_C4F529: FFree1Ad var_98
  loc_C4F52C: Branch loc_C4F538
  loc_C4F52F: LitStr "No se puede dar de baja, el registro esta dado de baja"
  loc_C4F532: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C4F537: ExitProcHresult
  loc_C4F538: Branch loc_C4FB1B
  loc_C4F53B: ILdRf var_94
  loc_C4F53E: LitStr "btnGuardar"
  loc_C4F541: EqStr
  loc_C4F543: BranchF loc_C4FA17
  loc_C4F546: LitStr vbNullString
  loc_C4F549: FLdPr Me
  loc_C4F54C: MemStStrCopy
  loc_C4F550: LitI2_Byte 0
  loc_C4F552: PopTmpLdAd2 var_1CA
  loc_C4F555: Call CodiTifaTxt_Validate(from_stack_1v)
  loc_C4F55A: FLdPr Me
  loc_C4F55D: MemLdStr global_60
  loc_C4F560: LitStr vbNullString
  loc_C4F563: NeStr
  loc_C4F565: BranchF loc_C4F569
  loc_C4F568: ExitProcHresult
  loc_C4F569: LitI2_Byte 0
  loc_C4F56B: PopTmpLdAd2 var_1CA
  loc_C4F56E: Call CodiTifaTxt_Validate(from_stack_1v)
  loc_C4F573: FLdPr Me
  loc_C4F576: MemLdStr global_60
  loc_C4F579: LitStr vbNullString
  loc_C4F57C: NeStr
  loc_C4F57E: BranchF loc_C4F582
  loc_C4F581: ExitProcHresult
  loc_C4F582: LitI2_Byte 0
  loc_C4F584: PopTmpLdAd2 var_1CA
  loc_C4F587: Call DetaTifaTxt_Validate(from_stack_1v)
  loc_C4F58C: FLdPr Me
  loc_C4F58F: MemLdStr global_60
  loc_C4F592: LitStr vbNullString
  loc_C4F595: NeStr
  loc_C4F597: BranchF loc_C4F59B
  loc_C4F59A: ExitProcHresult
  loc_C4F59B: LitI2_Byte 0
  loc_C4F59D: PopTmpLdAd2 var_1CA
  loc_C4F5A0: Call DecaTifaTxt_Validate(from_stack_1v)
  loc_C4F5A5: FLdPr Me
  loc_C4F5A8: MemLdStr global_60
  loc_C4F5AB: LitStr vbNullString
  loc_C4F5AE: NeStr
  loc_C4F5B0: BranchF loc_C4F5B4
  loc_C4F5B3: ExitProcHresult
  loc_C4F5B4: LitI2_Byte 0
  loc_C4F5B6: PopTmpLdAd2 var_1CA
  loc_C4F5B9: Call DereTifaTxt_Validate(from_stack_1v)
  loc_C4F5BE: FLdPr Me
  loc_C4F5C1: MemLdStr global_60
  loc_C4F5C4: LitStr vbNullString
  loc_C4F5C7: NeStr
  loc_C4F5C9: BranchF loc_C4F5CD
  loc_C4F5CC: ExitProcHresult
  loc_C4F5CD: FLdPr Me
  loc_C4F5D0: MemLdI2 global_56
  loc_C4F5D3: FStI2 var_1CC
  loc_C4F5D6: FLdI2 var_1CC
  loc_C4F5D9: LitI2_Byte 1
  loc_C4F5DB: EqI2
  loc_C4F5DC: BranchF loc_C4F7F4
  loc_C4F5DF: FLdRfVar var_90
  loc_C4F5E2: FLdPr Me
  loc_C4F5E5: VCallAd Control_ID_CodiTifaTxt
  loc_C4F5E8: FStAdFunc var_98
  loc_C4F5EB: FLdPr var_98
  loc_C4F5EE:  = Me.Text
  loc_C4F5F3: FLdRfVar var_1D0
  loc_C4F5F6: FLdPr Me
  loc_C4F5F9: VCallAd Control_ID_DetaTifaTxt
  loc_C4F5FC: FStAdFunc var_1A4
  loc_C4F5FF: FLdPr var_1A4
  loc_C4F602:  = Me.Text
  loc_C4F607: FLdRfVar var_1D4
  loc_C4F60A: FLdPr Me
  loc_C4F60D: VCallAd Control_ID_TipoTifaCbo
  loc_C4F610: FStAdFunc var_1A8
  loc_C4F613: FLdPr var_1A8
  loc_C4F616:  = Me.Text
  loc_C4F61B: FLdRfVar var_1DC
  loc_C4F61E: FLdPr Me
  loc_C4F621: VCallAd Control_ID_EmitTifaCbo
  loc_C4F624: FStAdFunc var_1D8
  loc_C4F627: FLdPr var_1D8
  loc_C4F62A:  = Me.Text
  loc_C4F62F: FLdRfVar var_1E4
  loc_C4F632: FLdPr Me
  loc_C4F635: VCallAd Control_ID_ExpeTifaTxt
  loc_C4F638: FStAdFunc var_1E0
  loc_C4F63B: FLdPr var_1E0
  loc_C4F63E:  = Me.Text
  loc_C4F643: FLdRfVar var_1EC
  loc_C4F646: FLdPr Me
  loc_C4F649: VCallAd Control_ID_ResoTifaTxt
  loc_C4F64C: FStAdFunc var_1E8
  loc_C4F64F: FLdPr var_1E8
  loc_C4F652:  = Me.Text
  loc_C4F657: FLdRfVar var_1F4
  loc_C4F65A: FLdPr Me
  loc_C4F65D: VCallAd Control_ID_MecaTifaCbo
  loc_C4F660: FStAdFunc var_1F0
  loc_C4F663: FLdPr var_1F0
  loc_C4F666:  = Me.Text
  loc_C4F66B: FLdRfVar var_1FC
  loc_C4F66E: FLdPr Me
  loc_C4F671: VCallAd Control_ID_InteTifaTxt
  loc_C4F674: FStAdFunc var_1F8
  loc_C4F677: FLdPr var_1F8
  loc_C4F67A:  = Me.Text
  loc_C4F67F: FLdRfVar var_204
  loc_C4F682: FLdPr Me
  loc_C4F685: VCallAd Control_ID_MomiTifaTxt
  loc_C4F688: FStAdFunc var_200
  loc_C4F68B: FLdPr var_200
  loc_C4F68E:  = Me.Text
  loc_C4F693: FLdRfVar var_20C
  loc_C4F696: FLdPr Me
  loc_C4F699: VCallAd Control_ID_DecaTifaTxt
  loc_C4F69C: FStAdFunc var_208
  loc_C4F69F: FLdPr var_208
  loc_C4F6A2:  = Me.Text
  loc_C4F6A7: FLdRfVar var_214
  loc_C4F6AA: FLdPr Me
  loc_C4F6AD: VCallAd Control_ID_DereTifaTxt
  loc_C4F6B0: FStAdFunc var_210
  loc_C4F6B3: FLdPr var_210
  loc_C4F6B6:  = Me.Text
  loc_C4F6BB: FLdRfVar var_248
  loc_C4F6BE: FLdPr Me
  loc_C4F6C1: VCallAd Control_ID_TianTifaCbo
  loc_C4F6C4: FStAdFunc var_244
  loc_C4F6C7: FLdPr var_244
  loc_C4F6CA:  = Me.Text
  loc_C4F6CF: FLdRfVar var_21C
  loc_C4F6D2: FLdPr Me
  loc_C4F6D5: VCallAd Control_ID_AntiTifaTxt
  loc_C4F6D8: FStAdFunc var_218
  loc_C4F6DB: FLdPr var_218
  loc_C4F6DE:  = Me.Text
  loc_C4F6E3: FLdRfVar var_224
  loc_C4F6E6: FLdPr Me
  loc_C4F6E9: VCallAd Control_ID_CumiTifaTxt
  loc_C4F6EC: FStAdFunc var_220
  loc_C4F6EF: FLdPr var_220
  loc_C4F6F2:  = Me.Text
  loc_C4F6F7: FLdRfVar var_22C
  loc_C4F6FA: FLdPr Me
  loc_C4F6FD: VCallAd Control_ID_CumaTifaTxt
  loc_C4F700: FStAdFunc var_228
  loc_C4F703: FLdPr var_228
  loc_C4F706:  = Me.Text
  loc_C4F70B: FLdRfVar var_234
  loc_C4F70E: FLdPr Me
  loc_C4F711: VCallAd Control_ID_ImmiTifaTxt
  loc_C4F714: FStAdFunc var_230
  loc_C4F717: FLdPr var_230
  loc_C4F71A:  = Me.Text
  loc_C4F71F: FLdRfVar var_23C
  loc_C4F722: FLdPr Me
  loc_C4F725: VCallAd Control_ID_VecuTifaCbo
  loc_C4F728: FStAdFunc var_238
  loc_C4F72B: FLdPr var_238
  loc_C4F72E:  = Me.Text
  loc_C4F733: FLdRfVar var_1CA
  loc_C4F736: FLdPr Me
  loc_C4F739: VCallAd Control_ID_CbuTifaChk
  loc_C4F73C: FStAdFunc var_240
  loc_C4F73F: FLdPr var_240
  loc_C4F742:  = Me.Value
  loc_C4F747: FLdI2 var_1CA
  loc_C4F74A: CUI1I2
  loc_C4F74C: ILdRf var_23C
  loc_C4F74F: ILdRf var_234
  loc_C4F752: CR8Str
  loc_C4F754: PopFPR8
  loc_C4F755: ILdRf var_22C
  loc_C4F758: CI2Str
  loc_C4F75A: ILdRf var_224
  loc_C4F75D: CI2Str
  loc_C4F75F: ILdRf var_21C
  loc_C4F762: CR8Str
  loc_C4F764: PopFPR8
  loc_C4F765: ILdRf var_248
  loc_C4F768: ILdRf var_214
  loc_C4F76B: CR8Str
  loc_C4F76D: PopFPR8
  loc_C4F76E: ILdRf var_20C
  loc_C4F771: CR8Str
  loc_C4F773: PopFPR8
  loc_C4F774: ILdRf var_204
  loc_C4F777: CR8Str
  loc_C4F779: PopFPR8
  loc_C4F77A: ILdRf var_1FC
  loc_C4F77D: CR8Str
  loc_C4F77F: PopFPR8
  loc_C4F780: ILdRf var_1F4
  loc_C4F783: ILdRf var_1EC
  loc_C4F786: ILdRf var_1E4
  loc_C4F789: ILdRf var_1DC
  loc_C4F78C: ILdRf var_1D4
  loc_C4F78F: ILdRf var_1D0
  loc_C4F792: ILdRf var_90
  loc_C4F795: CI2Str
  loc_C4F797: FLdPr Me
  loc_C4F79A: MemLdRfVar from_stack_1.global_52
  loc_C4F79D: NewIfNullPr clstipofapa
  loc_C4F7A0: Call clstipofapa.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C4F7A5: FFreeStr var_90 = "": var_1D0 = "": var_1D4 = "": var_1DC = "": var_1E4 = "": var_1EC = "": var_1F4 = "": var_1FC = "": var_204 = "": var_20C = "": var_214 = "": var_248 = "": var_21C = "": var_224 = "": var_22C = "": var_234 = ""
  loc_C4F7CA: FFreeAd var_98 = "": var_1A4 = "": var_1A8 = "": var_1D8 = "": var_1E0 = "": var_1E8 = "": var_1F0 = "": var_1F8 = "": var_200 = "": var_208 = "": var_210 = "": var_218 = "": var_220 = "": var_228 = "": var_230 = "": var_238 = "": var_240 = ""
  loc_C4F7F1: Branch loc_C4FA0F
  loc_C4F7F4: FLdI2 var_1CC
  loc_C4F7F7: LitI2_Byte 2
  loc_C4F7F9: EqI2
  loc_C4F7FA: BranchF loc_C4FA0F
  loc_C4F7FD: FLdRfVar var_90
  loc_C4F800: FLdPr Me
  loc_C4F803: VCallAd Control_ID_CodiTifaTxt
  loc_C4F806: FStAdFunc var_98
  loc_C4F809: FLdPr var_98
  loc_C4F80C:  = Me.Text
  loc_C4F811: FLdRfVar var_1D0
  loc_C4F814: FLdPr Me
  loc_C4F817: VCallAd Control_ID_DetaTifaTxt
  loc_C4F81A: FStAdFunc var_1A4
  loc_C4F81D: FLdPr var_1A4
  loc_C4F820:  = Me.Text
  loc_C4F825: FLdRfVar var_1D4
  loc_C4F828: FLdPr Me
  loc_C4F82B: VCallAd Control_ID_TipoTifaCbo
  loc_C4F82E: FStAdFunc var_1A8
  loc_C4F831: FLdPr var_1A8
  loc_C4F834:  = Me.Text
  loc_C4F839: FLdRfVar var_22C
  loc_C4F83C: FLdPr Me
  loc_C4F83F: VCallAd Control_ID_EmitTifaCbo
  loc_C4F842: FStAdFunc var_230
  loc_C4F845: FLdPr var_230
  loc_C4F848:  = Me.Text
  loc_C4F84D: FLdRfVar var_1DC
  loc_C4F850: FLdPr Me
  loc_C4F853: VCallAd Control_ID_ExpeTifaTxt
  loc_C4F856: FStAdFunc var_1D8
  loc_C4F859: FLdPr var_1D8
  loc_C4F85C:  = Me.Text
  loc_C4F861: FLdRfVar var_1E4
  loc_C4F864: FLdPr Me
  loc_C4F867: VCallAd Control_ID_ResoTifaTxt
  loc_C4F86A: FStAdFunc var_1E0
  loc_C4F86D: FLdPr var_1E0
  loc_C4F870:  = Me.Text
  loc_C4F875: FLdRfVar var_234
  loc_C4F878: FLdPr Me
  loc_C4F87B: VCallAd Control_ID_MecaTifaCbo
  loc_C4F87E: FStAdFunc var_238
  loc_C4F881: FLdPr var_238
  loc_C4F884:  = Me.Text
  loc_C4F889: FLdRfVar var_1EC
  loc_C4F88C: FLdPr Me
  loc_C4F88F: VCallAd Control_ID_InteTifaTxt
  loc_C4F892: FStAdFunc var_1E8
  loc_C4F895: FLdPr var_1E8
  loc_C4F898:  = Me.Text
  loc_C4F89D: FLdRfVar var_1F4
  loc_C4F8A0: FLdPr Me
  loc_C4F8A3: VCallAd Control_ID_MomiTifaTxt
  loc_C4F8A6: FStAdFunc var_1F0
  loc_C4F8A9: FLdPr var_1F0
  loc_C4F8AC:  = Me.Text
  loc_C4F8B1: FLdRfVar var_1FC
  loc_C4F8B4: FLdPr Me
  loc_C4F8B7: VCallAd Control_ID_DecaTifaTxt
  loc_C4F8BA: FStAdFunc var_1F8
  loc_C4F8BD: FLdPr var_1F8
  loc_C4F8C0:  = Me.Text
  loc_C4F8C5: FLdRfVar var_204
  loc_C4F8C8: FLdPr Me
  loc_C4F8CB: VCallAd Control_ID_DereTifaTxt
  loc_C4F8CE: FStAdFunc var_200
  loc_C4F8D1: FLdPr var_200
  loc_C4F8D4:  = Me.Text
  loc_C4F8D9: FLdRfVar var_23C
  loc_C4F8DC: FLdPr Me
  loc_C4F8DF: VCallAd Control_ID_TianTifaCbo
  loc_C4F8E2: FStAdFunc var_240
  loc_C4F8E5: FLdPr var_240
  loc_C4F8E8:  = Me.Text
  loc_C4F8ED: FLdRfVar var_20C
  loc_C4F8F0: FLdPr Me
  loc_C4F8F3: VCallAd Control_ID_AntiTifaTxt
  loc_C4F8F6: FStAdFunc var_208
  loc_C4F8F9: FLdPr var_208
  loc_C4F8FC:  = Me.Text
  loc_C4F901: FLdRfVar var_214
  loc_C4F904: FLdPr Me
  loc_C4F907: VCallAd Control_ID_CumiTifaTxt
  loc_C4F90A: FStAdFunc var_210
  loc_C4F90D: FLdPr var_210
  loc_C4F910:  = Me.Text
  loc_C4F915: FLdRfVar var_21C
  loc_C4F918: FLdPr Me
  loc_C4F91B: VCallAd Control_ID_CumaTifaTxt
  loc_C4F91E: FStAdFunc var_218
  loc_C4F921: FLdPr var_218
  loc_C4F924:  = Me.Text
  loc_C4F929: FLdRfVar var_224
  loc_C4F92C: FLdPr Me
  loc_C4F92F: VCallAd Control_ID_ImmiTifaTxt
  loc_C4F932: FStAdFunc var_220
  loc_C4F935: FLdPr var_220
  loc_C4F938:  = Me.Text
  loc_C4F93D: FLdRfVar var_248
  loc_C4F940: FLdPr Me
  loc_C4F943: VCallAd Control_ID_VecuTifaCbo
  loc_C4F946: FStAdFunc var_244
  loc_C4F949: FLdPr var_244
  loc_C4F94C:  = Me.Text
  loc_C4F951: FLdRfVar var_1CA
  loc_C4F954: FLdPr Me
  loc_C4F957: VCallAd Control_ID_CbuTifaChk
  loc_C4F95A: FStAdFunc var_228
  loc_C4F95D: FLdPr var_228
  loc_C4F960:  = Me.Value
  loc_C4F965: FLdI2 var_1CA
  loc_C4F968: CUI1I2
  loc_C4F96A: ILdRf var_248
  loc_C4F96D: ILdRf var_224
  loc_C4F970: CR8Str
  loc_C4F972: PopFPR8
  loc_C4F973: ILdRf var_21C
  loc_C4F976: CI2Str
  loc_C4F978: ILdRf var_214
  loc_C4F97B: CI2Str
  loc_C4F97D: ILdRf var_20C
  loc_C4F980: CR8Str
  loc_C4F982: PopFPR8
  loc_C4F983: ILdRf var_23C
  loc_C4F986: ILdRf var_204
  loc_C4F989: CR8Str
  loc_C4F98B: PopFPR8
  loc_C4F98C: ILdRf var_1FC
  loc_C4F98F: CR8Str
  loc_C4F991: PopFPR8
  loc_C4F992: ILdRf var_1F4
  loc_C4F995: CR8Str
  loc_C4F997: PopFPR8
  loc_C4F998: ILdRf var_1EC
  loc_C4F99B: CR8Str
  loc_C4F99D: PopFPR8
  loc_C4F99E: ILdRf var_234
  loc_C4F9A1: ILdRf var_1E4
  loc_C4F9A4: ILdRf var_1DC
  loc_C4F9A7: ILdRf var_22C
  loc_C4F9AA: ILdRf var_1D4
  loc_C4F9AD: ILdRf var_1D0
  loc_C4F9B0: ILdRf var_90
  loc_C4F9B3: CI2Str
  loc_C4F9B5: FLdPr Me
  loc_C4F9B8: MemLdRfVar from_stack_1.global_52
  loc_C4F9BB: NewIfNullPr clstipofapa
  loc_C4F9BE: Call clstipofapa.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C4F9C3: FFreeStr var_90 = "": var_1D0 = "": var_1D4 = "": var_22C = "": var_1DC = "": var_1E4 = "": var_234 = "": var_1EC = "": var_1F4 = "": var_1FC = "": var_204 = "": var_23C = "": var_20C = "": var_214 = "": var_21C = "": var_224 = ""
  loc_C4F9E8: FFreeAd var_98 = "": var_1A4 = "": var_1A8 = "": var_1D8 = "": var_1E0 = "": var_1E8 = "": var_1F0 = "": var_1F8 = "": var_200 = "": var_208 = "": var_210 = "": var_218 = "": var_220 = "": var_228 = "": var_230 = "": var_238 = "": var_240 = ""
  loc_C4FA0F: Call cmdCancelar_Click()
  loc_C4FA14: Branch loc_C4FB1B
  loc_C4FA17: ILdRf var_94
  loc_C4FA1A: LitStr "btnCancelar"
  loc_C4FA1D: EqStr
  loc_C4FA1F: BranchF loc_C4FA2A
  loc_C4FA22: Call cmdCancelar_Click()
  loc_C4FA27: Branch loc_C4FB1B
  loc_C4FA2A: ILdRf var_94
  loc_C4FA2D: LitStr "btnPrimero"
  loc_C4FA30: EqStr
  loc_C4FA32: BranchF loc_C4FA46
  loc_C4FA35: FLdPr Me
  loc_C4FA38: MemLdRfVar from_stack_1.global_52
  loc_C4FA3B: NewIfNullPr clstipofapa
  loc_C4FA3E: Call clstipofapa.MoveFirst()
  loc_C4FA43: Branch loc_C4FB1B
  loc_C4FA46: ILdRf var_94
  loc_C4FA49: LitStr "btnAnterior"
  loc_C4FA4C: EqStr
  loc_C4FA4E: BranchF loc_C4FA62
  loc_C4FA51: FLdPr Me
  loc_C4FA54: MemLdRfVar from_stack_1.global_52
  loc_C4FA57: NewIfNullPr clstipofapa
  loc_C4FA5A: Call clstipofapa.MovePrevious()
  loc_C4FA5F: Branch loc_C4FB1B
  loc_C4FA62: ILdRf var_94
  loc_C4FA65: LitStr "btnSiguiente"
  loc_C4FA68: EqStr
  loc_C4FA6A: BranchF loc_C4FA7E
  loc_C4FA6D: FLdPr Me
  loc_C4FA70: MemLdRfVar from_stack_1.global_52
  loc_C4FA73: NewIfNullPr clstipofapa
  loc_C4FA76: Call clstipofapa.MoveNext()
  loc_C4FA7B: Branch loc_C4FB1B
  loc_C4FA7E: ILdRf var_94
  loc_C4FA81: LitStr "btnUltimo"
  loc_C4FA84: EqStr
  loc_C4FA86: BranchF loc_C4FA9A
  loc_C4FA89: FLdPr Me
  loc_C4FA8C: MemLdRfVar from_stack_1.global_52
  loc_C4FA8F: NewIfNullPr clstipofapa
  loc_C4FA92: Call clstipofapa.MoveLast()
  loc_C4FA97: Branch loc_C4FB1B
  loc_C4FA9A: ILdRf var_94
  loc_C4FA9D: LitStr "btnFiltrar"
  loc_C4FAA0: EqStr
  loc_C4FAA2: BranchF loc_C4FAA8
  loc_C4FAA5: Branch loc_C4FB1B
  loc_C4FAA8: ILdRf var_94
  loc_C4FAAB: LitStr "btnBuscar"
  loc_C4FAAE: EqStr
  loc_C4FAB0: BranchF loc_C4FAB6
  loc_C4FAB3: Branch loc_C4FB1B
  loc_C4FAB6: ILdRf var_94
  loc_C4FAB9: LitStr "btnImprimir"
  loc_C4FABC: EqStr
  loc_C4FABE: BranchF loc_C4FAC4
  loc_C4FAC1: Branch loc_C4FB1B
  loc_C4FAC4: ILdRf var_94
  loc_C4FAC7: LitStr "btnAyuda"
  loc_C4FACA: EqStr
  loc_C4FACC: BranchF loc_C4FAFB
  loc_C4FACF: LitVar_Missing var_100
  loc_C4FAD2: LitVar_Missing var_F0
  loc_C4FAD5: LitVar_Missing var_E0
  loc_C4FAD8: LitI4 0
  loc_C4FADD: LitVarStr var_C0, "Opcion no disponible en esta version."
  loc_C4FAE2: FStVarCopyObj var_AC
  loc_C4FAE5: FLdRfVar var_AC
  loc_C4FAE8: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C4FAED: FFreeVar var_AC = "": var_E0 = "": var_F0 = ""
  loc_C4FAF8: Branch loc_C4FB1B
  loc_C4FAFB: ILdRf var_94
  loc_C4FAFE: LitStr "btnSalir"
  loc_C4FB01: EqStr
  loc_C4FB03: BranchF loc_C4FB1B
  loc_C4FB06: ILdRf Me
  loc_C4FB09: FStAdNoPop
  loc_C4FB0D: ImpAdLdRf MemVar_D9C5D8
  loc_C4FB10: NewIfNullPr Global
  loc_C4FB13: Global.Unload from_stack_1
  loc_C4FB18: FFree1Ad var_98
  loc_C4FB1B: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '9BE3A0
  'Data Table: 512094
  loc_9BE38C: FLdPr Me
  loc_9BE38F: VCallAd Control_ID_FiltroMsk
  loc_9BE392: CVarAd
  loc_9BE396: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE39B: FFree1Var var_94 = ""
  loc_9BE39E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'B10120
  'Data Table: 512094
  loc_B0FEF0: ILdRf Me
  loc_B0FEF3: CastAd
  loc_B0FEF6: FStAdFunc var_88
  loc_B0FEF9: FLdRfVar var_88
  loc_B0FEFC: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B0FF01: FFree1Ad var_88
  loc_B0FF04: FLdPr Me
  loc_B0FF07: VCallAd Control_ID_FiltroMsk
  loc_B0FF0A: FStAdFunc var_88
  loc_B0FF0D: FLdPr var_88
  loc_B0FF10: LateIdLdVar var_98 DispID_20 0
  loc_B0FF17: CStrVarTmp
  loc_B0FF18: CVarStr var_A8
  loc_B0FF1B: FLdRfVar var_B8
  loc_B0FF1E: ImpAdCallFPR4  = Trim()
  loc_B0FF23: FLdRfVar var_B8
  loc_B0FF26: LitVarStr var_C8, vbNullString
  loc_B0FF2B: HardType
  loc_B0FF2C: NeVarBool
  loc_B0FF2E: FFree1Ad var_88
  loc_B0FF31: FFreeVar var_98 = "": var_A8 = ""
  loc_B0FF3A: BranchF loc_B1008E
  loc_B0FF3D: FLdRfVar var_DA
  loc_B0FF40: FLdPr Me
  loc_B0FF43: VCallAd Control_ID_FiltroCbo
  loc_B0FF46: FStAdFunc var_88
  loc_B0FF49: FLdPr var_88
  loc_B0FF4C:  = Me.ListIndex
  loc_B0FF51: FLdI2 var_DA
  loc_B0FF54: LitI2_Byte 0
  loc_B0FF56: EqI2
  loc_B0FF57: FFree1Ad var_88
  loc_B0FF5A: BranchF loc_B0FFE1
  loc_B0FF5D: LitStr "CodiTifa >= "
  loc_B0FF60: FLdPr Me
  loc_B0FF63: VCallAd Control_ID_FiltroMsk
  loc_B0FF66: FStAdFunc var_88
  loc_B0FF69: FLdPr var_88
  loc_B0FF6C: LateIdLdVar var_98 DispID_22 0
  loc_B0FF73: CStrVarTmp
  loc_B0FF74: FStStrNoPop var_E0
  loc_B0FF77: ConcatStr
  loc_B0FF78: PopTmpLdAdStr
  loc_B0FF7C: FLdPr Me
  loc_B0FF7F: MemLdRfVar from_stack_1.global_52
  loc_B0FF82: NewIfNullPr clstipofapa
  loc_B0FF85: Call clstipofapa.Filter(from_stack_1v)
  loc_B0FF8A: FFreeStr var_E0 = ""
  loc_B0FF91: FFree1Ad var_88
  loc_B0FF94: FFree1Var var_98 = ""
  loc_B0FF97: LitVarStr var_C8, "Numero de Cuenta que es mayor o igual a: "
  loc_B0FF9C: FLdPr Me
  loc_B0FF9F: VCallAd Control_ID_FiltroMsk
  loc_B0FFA2: FStAdFunc var_88
  loc_B0FFA5: FLdPr var_88
  loc_B0FFA8: LateIdLdVar var_98 DispID_22 0
  loc_B0FFAF: CStrVarTmp
  loc_B0FFB0: CVarStr var_A8
  loc_B0FFB3: FLdRfVar var_B8
  loc_B0FFB6: ImpAdCallFPR4  = Trim()
  loc_B0FFBB: FLdRfVar var_B8
  loc_B0FFBE: ConcatVar var_D8
  loc_B0FFC2: CStrVarTmp
  loc_B0FFC3: FStStrNoPop var_E0
  loc_B0FFC6: FLdPr Me
  loc_B0FFC9: MemStStrCopy
  loc_B0FFCD: FFree1Str var_E0
  loc_B0FFD0: FFree1Ad var_88
  loc_B0FFD3: FFreeVar var_98 = "": var_A8 = "": var_B8 = ""
  loc_B0FFDE: Branch loc_B1008B
  loc_B0FFE1: FLdRfVar var_DA
  loc_B0FFE4: FLdPr Me
  loc_B0FFE7: VCallAd Control_ID_FiltroCbo
  loc_B0FFEA: FStAdFunc var_88
  loc_B0FFED: FLdPr var_88
  loc_B0FFF0:  = Me.ListIndex
  loc_B0FFF5: FLdI2 var_DA
  loc_B0FFF8: LitI2_Byte 1
  loc_B0FFFA: EqI2
  loc_B0FFFB: FFree1Ad var_88
  loc_B0FFFE: BranchF loc_B1008B
  loc_B10001: LitStr "DetaTifa LIKE '" & Chr(37)
  loc_B10004: FLdPr Me
  loc_B10007: VCallAd Control_ID_FiltroMsk
  loc_B1000A: FStAdFunc var_88
  loc_B1000D: FLdPr var_88
  loc_B10010: LateIdLdVar var_98 DispID_22 0
  loc_B10017: CStrVarTmp
  loc_B10018: FStStrNoPop var_E0
  loc_B1001B: ConcatStr
  loc_B1001C: FStStrNoPop var_E4
  loc_B1001F: LitStr Chr(37) & "'"
  loc_B10022: ConcatStr
  loc_B10023: PopTmpLdAdStr
  loc_B10027: FLdPr Me
  loc_B1002A: MemLdRfVar from_stack_1.global_52
  loc_B1002D: NewIfNullPr clstipofapa
  loc_B10030: Call clstipofapa.Filter(from_stack_1v)
  loc_B10035: FFreeStr var_E0 = "": var_E4 = ""
  loc_B1003E: FFree1Ad var_88
  loc_B10041: FFree1Var var_98 = ""
  loc_B10044: LitVarStr var_C8, "Detalle de calle que contiene. "
  loc_B10049: FLdPr Me
  loc_B1004C: VCallAd Control_ID_FiltroMsk
  loc_B1004F: FStAdFunc var_88
  loc_B10052: FLdPr var_88
  loc_B10055: LateIdLdVar var_98 DispID_22 0
  loc_B1005C: CStrVarTmp
  loc_B1005D: CVarStr var_A8
  loc_B10060: FLdRfVar var_B8
  loc_B10063: ImpAdCallFPR4  = Trim()
  loc_B10068: FLdRfVar var_B8
  loc_B1006B: ConcatVar var_D8
  loc_B1006F: CStrVarTmp
  loc_B10070: FStStrNoPop var_E0
  loc_B10073: FLdPr Me
  loc_B10076: MemStStrCopy
  loc_B1007A: FFree1Str var_E0
  loc_B1007D: FFree1Ad var_88
  loc_B10080: FFreeVar var_98 = "": var_A8 = "": var_B8 = ""
  loc_B1008B: Branch loc_B100B2
  loc_B1008E: LitStr vbNullString
  loc_B10091: FStStrCopy var_E0
  loc_B10094: FLdRfVar var_E0
  loc_B10097: FLdPr Me
  loc_B1009A: MemLdRfVar from_stack_1.global_52
  loc_B1009D: NewIfNullPr clstipofapa
  loc_B100A0: Call clstipofapa.Filter(from_stack_1v)
  loc_B100A5: FFree1Str var_E0
  loc_B100A8: LitStr vbNullString
  loc_B100AB: FLdPr Me
  loc_B100AE: MemStStrCopy
  loc_B100B2: FLdRfVar var_EC
  loc_B100B5: FLdRfVar var_88
  loc_B100B8: FLdPr Me
  loc_B100BB: MemLdRfVar from_stack_1.global_52
  loc_B100BE: NewIfNullPr clstipofapa
  loc_B100C1: from_stack_1v = clstipofapa.RsFrmGet()
  loc_B100C6: FLdPr var_88
  loc_B100C9:  = Me.RecordCount
  loc_B100CE: ILdRf var_EC
  loc_B100D1: LitI4 0
  loc_B100D6: GtI4
  loc_B100D7: FFree1Ad var_88
  loc_B100DA: BranchF loc_B100E5
  loc_B100DD: Call EnlazaTodo()
  loc_B100E2: Branch loc_B100F9
  loc_B100E5: ILdRf Me
  loc_B100E8: CastAd
  loc_B100EB: FStAdFunc var_88
  loc_B100EE: FLdRfVar var_88
  loc_B100F1: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B100F6: FFree1Ad var_88
  loc_B100F9: FLdPr Me
  loc_B100FC: VCallAd Control_ID_dgdABMS
  loc_B100FF: FStAdFunc var_F0
  loc_B10102: FLdPr Me
  loc_B10105: MemLdStr global_64
  loc_B10108: FLdZeroAd var_F0
  loc_B1010B: FStAdFunc var_88
  loc_B1010E: FLdRfVar var_88
  loc_B10111: ImpAdCallFPR4 Proc_272_56_ACCA08(, )
  loc_B10116: FFreeAd var_88 = ""
  loc_B1011D: ExitProcHresult
End Sub

Private Sub CodiTifaTxt_GotFocus() '9BE4C0
  'Data Table: 512094
  loc_9BE4AC: FLdPr Me
  loc_9BE4AF: VCallAd Control_ID_CodiTifaTxt
  loc_9BE4B2: CVarAd
  loc_9BE4B6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE4BB: FFree1Var var_94 = ""
  loc_9BE4BE: ExitProcHresult
End Sub

Private Sub CodiTifaTxt_KeyPress(KeyAscii As Integer) '9D50A8
  'Data Table: 512094
  loc_9D5090: LitStr "0123456789"
  loc_9D5093: FStStrCopy var_88
  loc_9D5096: FLdRfVar var_88
  loc_9D5099: ILdRf KeyAscii
  loc_9D509C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D50A1: IStI2 KeyAscii
  loc_9D50A4: FFree1Str var_88
  loc_9D50A7: ExitProcHresult
End Sub

Private Sub CodiTifaTxt_Validate(Cancel As Boolean) 'ADE2A8
  'Data Table: 512094
  loc_ADE154: FLdRfVar var_8A
  loc_ADE157: FLdPr Me
  loc_ADE15A: VCallAd Control_ID_cmdCancelar
  loc_ADE15D: FStAdFunc var_88
  loc_ADE160: FLdPr var_88
  loc_ADE163:  = Me.Value
  loc_ADE168: FLdI2 var_8A
  loc_ADE16B: NotI4
  loc_ADE16C: FLdRfVar var_92
  loc_ADE16F: FLdPr Me
  loc_ADE172: VCallAd Control_ID_CodiTifaTxt
  loc_ADE175: FStAdFunc var_90
  loc_ADE178: FLdPr var_90
  loc_ADE17B:  = Me.Enabled
  loc_ADE180: FLdI2 var_92
  loc_ADE183: AndI4
  loc_ADE184: FFreeAd var_88 = ""
  loc_ADE18B: BranchF loc_ADE2A5
  loc_ADE18E: FLdRfVar var_98
  loc_ADE191: FLdPr Me
  loc_ADE194: VCallAd Control_ID_CodiTifaTxt
  loc_ADE197: FStAdFunc var_88
  loc_ADE19A: FLdPr var_88
  loc_ADE19D:  = Me.Text
  loc_ADE1A2: FLdZeroAd var_98
  loc_ADE1A5: CVarStr var_A8
  loc_ADE1A8: ImpAdCallI2 IsNumeric()
  loc_ADE1AD: NotI4
  loc_ADE1AE: FFree1Ad var_88
  loc_ADE1B1: FFree1Var var_A8 = ""
  loc_ADE1B4: BranchF loc_ADE1CE
  loc_ADE1B7: LitStr "0"
  loc_ADE1BA: FLdPr Me
  loc_ADE1BD: VCallAd Control_ID_CodiTifaTxt
  loc_ADE1C0: FStAdFunc var_88
  loc_ADE1C3: FLdPr var_88
  loc_ADE1C6: Me.Text = from_stack_1
  loc_ADE1CB: FFree1Ad var_88
  loc_ADE1CE: FLdRfVar var_98
  loc_ADE1D1: FLdPr Me
  loc_ADE1D4: VCallAd Control_ID_CodiTifaTxt
  loc_ADE1D7: FStAdFunc var_88
  loc_ADE1DA: FLdPr var_88
  loc_ADE1DD:  = Me.Text
  loc_ADE1E2: LitI2_Byte 0
  loc_ADE1E4: LitI2_Byte 0
  loc_ADE1E6: ILdRf var_98
  loc_ADE1E9: LitStr "codigo del tipo de la facilidad de pago"
  loc_ADE1EC: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_ADE1F1: FStStrNoPop var_AC
  loc_ADE1F4: FLdPr Me
  loc_ADE1F7: MemStStrCopy
  loc_ADE1FB: FFreeStr var_98 = ""
  loc_ADE202: FFree1Ad var_88
  loc_ADE205: FLdPr Me
  loc_ADE208: MemLdStr global_60
  loc_ADE20B: LitStr vbNullString
  loc_ADE20E: NeStr
  loc_ADE210: BranchF loc_ADE236
  loc_ADE213: FLdPr Me
  loc_ADE216: MemLdStr global_60
  loc_ADE219: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADE21E: FLdPr Me
  loc_ADE221: VCallAd Control_ID_CodiTifaTxt
  loc_ADE224: CVarAd
  loc_ADE228: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ADE22D: FFree1Var var_A8 = ""
  loc_ADE230: LitI2_Byte &HFF
  loc_ADE232: IStI2 Cancel
  loc_ADE235: ExitProcHresult
  loc_ADE236: FLdRfVar var_AC
  loc_ADE239: FLdRfVar var_98
  loc_ADE23C: FLdPr Me
  loc_ADE23F: VCallAd Control_ID_CodiTifaTxt
  loc_ADE242: FStAdFunc var_88
  loc_ADE245: FLdPr var_88
  loc_ADE248:  = Me.Text
  loc_ADE24D: ILdRf var_98
  loc_ADE250: CI2Str
  loc_ADE252: FLdPr Me
  loc_ADE255: MemLdRfVar from_stack_1.global_52
  loc_ADE258: NewIfNullPr clstipofapa
  loc_ADE25B: from_stack_2v = clstipofapa.ValidaClave(from_stack_1v)
  loc_ADE260: ILdRf var_AC
  loc_ADE263: FLdPr Me
  loc_ADE266: MemStStrCopy
  loc_ADE26A: FFreeStr var_98 = ""
  loc_ADE271: FFree1Ad var_88
  loc_ADE274: FLdPr Me
  loc_ADE277: MemLdStr global_60
  loc_ADE27A: LitStr vbNullString
  loc_ADE27D: NeStr
  loc_ADE27F: BranchF loc_ADE2A5
  loc_ADE282: FLdPr Me
  loc_ADE285: MemLdStr global_60
  loc_ADE288: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADE28D: FLdPr Me
  loc_ADE290: VCallAd Control_ID_CodiTifaTxt
  loc_ADE293: CVarAd
  loc_ADE297: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ADE29C: FFree1Var var_A8 = ""
  loc_ADE29F: LitI2_Byte &HFF
  loc_ADE2A1: IStI2 Cancel
  loc_ADE2A4: ExitProcHresult
  loc_ADE2A5: ExitProcHresult
End Sub

Private Sub CumaTifaTxt_GotFocus() '9BE508
  'Data Table: 512094
  loc_9BE4F4: FLdPr Me
  loc_9BE4F7: VCallAd Control_ID_CumaTifaTxt
  loc_9BE4FA: CVarAd
  loc_9BE4FE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE503: FFree1Var var_94 = ""
  loc_9BE506: ExitProcHresult
End Sub

Private Sub CumaTifaTxt_KeyPress(KeyAscii As Integer) '9D5140
  'Data Table: 512094
  loc_9D5128: LitStr "0123456789.,"
  loc_9D512B: FStStrCopy var_88
  loc_9D512E: FLdRfVar var_88
  loc_9D5131: ILdRf KeyAscii
  loc_9D5134: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D5139: IStI2 KeyAscii
  loc_9D513C: FFree1Str var_88
  loc_9D513F: ExitProcHresult
End Sub

Private Sub CumaTifaTxt_Validate(Cancel As Boolean) 'ADB9C8
  'Data Table: 512094
  loc_ADB880: FLdRfVar var_8A
  loc_ADB883: FLdPr Me
  loc_ADB886: VCallAd Control_ID_cmdCancelar
  loc_ADB889: FStAdFunc var_88
  loc_ADB88C: FLdPr var_88
  loc_ADB88F:  = Me.Value
  loc_ADB894: FLdI2 var_8A
  loc_ADB897: NotI4
  loc_ADB898: FLdRfVar var_92
  loc_ADB89B: FLdPr Me
  loc_ADB89E: VCallAd Control_ID_CumaTifaTxt
  loc_ADB8A1: FStAdFunc var_90
  loc_ADB8A4: FLdPr var_90
  loc_ADB8A7:  = Me.Enabled
  loc_ADB8AC: FLdI2 var_92
  loc_ADB8AF: AndI4
  loc_ADB8B0: FFreeAd var_88 = ""
  loc_ADB8B7: BranchF loc_ADB9C6
  loc_ADB8BA: FLdRfVar var_98
  loc_ADB8BD: FLdPr Me
  loc_ADB8C0: VCallAd Control_ID_CumaTifaTxt
  loc_ADB8C3: FStAdFunc var_88
  loc_ADB8C6: FLdPr var_88
  loc_ADB8C9:  = Me.Text
  loc_ADB8CE: FLdZeroAd var_98
  loc_ADB8D1: CVarStr var_A8
  loc_ADB8D4: ImpAdCallI2 IsNumeric()
  loc_ADB8D9: NotI4
  loc_ADB8DA: FFree1Ad var_88
  loc_ADB8DD: FFree1Var var_A8 = ""
  loc_ADB8E0: BranchF loc_ADB8FA
  loc_ADB8E3: LitStr "1"
  loc_ADB8E6: FLdPr Me
  loc_ADB8E9: VCallAd Control_ID_CumaTifaTxt
  loc_ADB8EC: FStAdFunc var_88
  loc_ADB8EF: FLdPr var_88
  loc_ADB8F2: Me.Text = from_stack_1
  loc_ADB8F7: FFree1Ad var_88
  loc_ADB8FA: FLdRfVar var_98
  loc_ADB8FD: FLdPr Me
  loc_ADB900: VCallAd Control_ID_CumaTifaTxt
  loc_ADB903: FStAdFunc var_88
  loc_ADB906: FLdPr var_88
  loc_ADB909:  = Me.Text
  loc_ADB90E: ILdRf var_98
  loc_ADB911: CI2Str
  loc_ADB913: FLdRfVar var_AC
  loc_ADB916: FLdPr Me
  loc_ADB919: VCallAd Control_ID_CumiTifaTxt
  loc_ADB91C: FStAdFunc var_90
  loc_ADB91F: FLdPr var_90
  loc_ADB922:  = Me.Text
  loc_ADB927: ILdRf var_AC
  loc_ADB92A: CI2Str
  loc_ADB92C: LtI2
  loc_ADB92D: FFreeStr var_98 = ""
  loc_ADB934: FFreeAd var_88 = ""
  loc_ADB93B: BranchF loc_ADB95E
  loc_ADB93E: LitStr "El valor de la cuota maxima debe ser mayor o igual a la cantidad minima"
  loc_ADB941: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADB946: FLdPr Me
  loc_ADB949: VCallAd Control_ID_CumaTifaTxt
  loc_ADB94C: CVarAd
  loc_ADB950: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ADB955: FFree1Var var_A8 = ""
  loc_ADB958: LitI2_Byte &HFF
  loc_ADB95A: IStI2 Cancel
  loc_ADB95D: ExitProcHresult
  loc_ADB95E: FLdRfVar var_98
  loc_ADB961: FLdPr Me
  loc_ADB964: VCallAd Control_ID_CumiTifaTxt
  loc_ADB967: FStAdFunc var_88
  loc_ADB96A: FLdPr var_88
  loc_ADB96D:  = Me.Text
  loc_ADB972: LitI2_Byte 0
  loc_ADB974: LitI2_Byte 0
  loc_ADB976: ILdRf var_98
  loc_ADB979: LitStr "cuotas minima"
  loc_ADB97C: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_ADB981: FStStrNoPop var_AC
  loc_ADB984: FLdPr Me
  loc_ADB987: MemStStrCopy
  loc_ADB98B: FFreeStr var_98 = ""
  loc_ADB992: FFree1Ad var_88
  loc_ADB995: FLdPr Me
  loc_ADB998: MemLdStr global_60
  loc_ADB99B: LitStr vbNullString
  loc_ADB99E: NeStr
  loc_ADB9A0: BranchF loc_ADB9C6
  loc_ADB9A3: FLdPr Me
  loc_ADB9A6: MemLdStr global_60
  loc_ADB9A9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADB9AE: FLdPr Me
  loc_ADB9B1: VCallAd Control_ID_CumiTifaTxt
  loc_ADB9B4: CVarAd
  loc_ADB9B8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ADB9BD: FFree1Var var_A8 = ""
  loc_ADB9C0: LitI2_Byte &HFF
  loc_ADB9C2: IStI2 Cancel
  loc_ADB9C5: ExitProcHresult
  loc_ADB9C6: ExitProcHresult
  loc_ADB9C7: UMiI4
End Sub

Private Sub CumiTifaTxt_GotFocus() '9BE550
  'Data Table: 512094
  loc_9BE53C: FLdPr Me
  loc_9BE53F: VCallAd Control_ID_CumiTifaTxt
  loc_9BE542: CVarAd
  loc_9BE546: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE54B: FFree1Var var_94 = ""
  loc_9BE54E: ExitProcHresult
End Sub

Private Sub CumiTifaTxt_KeyPress(KeyAscii As Integer) '9D505C
  'Data Table: 512094
  loc_9D5044: LitStr "0123456789.,"
  loc_9D5047: FStStrCopy var_88
  loc_9D504A: FLdRfVar var_88
  loc_9D504D: ILdRf KeyAscii
  loc_9D5050: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D5055: IStI2 KeyAscii
  loc_9D5058: FFree1Str var_88
  loc_9D505B: ExitProcHresult
End Sub

Private Sub CumiTifaTxt_Validate(Cancel As Boolean) 'AB5C24
  'Data Table: 512094
  loc_AB5B40: FLdRfVar var_8A
  loc_AB5B43: FLdPr Me
  loc_AB5B46: VCallAd Control_ID_cmdCancelar
  loc_AB5B49: FStAdFunc var_88
  loc_AB5B4C: FLdPr var_88
  loc_AB5B4F:  = Me.Value
  loc_AB5B54: FLdI2 var_8A
  loc_AB5B57: NotI4
  loc_AB5B58: FLdRfVar var_92
  loc_AB5B5B: FLdPr Me
  loc_AB5B5E: VCallAd Control_ID_CumiTifaTxt
  loc_AB5B61: FStAdFunc var_90
  loc_AB5B64: FLdPr var_90
  loc_AB5B67:  = Me.Enabled
  loc_AB5B6C: FLdI2 var_92
  loc_AB5B6F: AndI4
  loc_AB5B70: FFreeAd var_88 = ""
  loc_AB5B77: BranchF loc_AB5C21
  loc_AB5B7A: FLdRfVar var_98
  loc_AB5B7D: FLdPr Me
  loc_AB5B80: VCallAd Control_ID_CumiTifaTxt
  loc_AB5B83: FStAdFunc var_88
  loc_AB5B86: FLdPr var_88
  loc_AB5B89:  = Me.Text
  loc_AB5B8E: FLdZeroAd var_98
  loc_AB5B91: CVarStr var_A8
  loc_AB5B94: ImpAdCallI2 IsNumeric()
  loc_AB5B99: NotI4
  loc_AB5B9A: FFree1Ad var_88
  loc_AB5B9D: FFree1Var var_A8 = ""
  loc_AB5BA0: BranchF loc_AB5BBA
  loc_AB5BA3: LitStr "1"
  loc_AB5BA6: FLdPr Me
  loc_AB5BA9: VCallAd Control_ID_CumiTifaTxt
  loc_AB5BAC: FStAdFunc var_88
  loc_AB5BAF: FLdPr var_88
  loc_AB5BB2: Me.Text = from_stack_1
  loc_AB5BB7: FFree1Ad var_88
  loc_AB5BBA: FLdRfVar var_98
  loc_AB5BBD: FLdPr Me
  loc_AB5BC0: VCallAd Control_ID_CumiTifaTxt
  loc_AB5BC3: FStAdFunc var_88
  loc_AB5BC6: FLdPr var_88
  loc_AB5BC9:  = Me.Text
  loc_AB5BCE: LitI2_Byte 0
  loc_AB5BD0: LitI2_Byte 0
  loc_AB5BD2: ILdRf var_98
  loc_AB5BD5: LitStr "cuotas minima"
  loc_AB5BD8: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AB5BDD: FStStrNoPop var_AC
  loc_AB5BE0: FLdPr Me
  loc_AB5BE3: MemStStrCopy
  loc_AB5BE7: FFreeStr var_98 = ""
  loc_AB5BEE: FFree1Ad var_88
  loc_AB5BF1: FLdPr Me
  loc_AB5BF4: MemLdStr global_60
  loc_AB5BF7: LitStr vbNullString
  loc_AB5BFA: NeStr
  loc_AB5BFC: BranchF loc_AB5C21
  loc_AB5BFF: FLdPr Me
  loc_AB5C02: MemLdStr global_60
  loc_AB5C05: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB5C0A: FLdPr Me
  loc_AB5C0D: VCallAd Control_ID_CumiTifaTxt
  loc_AB5C10: CVarAd
  loc_AB5C14: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB5C19: FFree1Var var_A8 = ""
  loc_AB5C1C: LitI2_Byte &HFF
  loc_AB5C1E: IStI2 Cancel
  loc_AB5C21: ExitProcHresult
  loc_AB5C22: AddCy
End Sub

Private Sub DecaTifaTxt_GotFocus() '9BE790
  'Data Table: 512094
  loc_9BE77C: FLdPr Me
  loc_9BE77F: VCallAd Control_ID_DecaTifaTxt
  loc_9BE782: CVarAd
  loc_9BE786: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE78B: FFree1Var var_94 = ""
  loc_9BE78E: ExitProcHresult
End Sub

Private Sub DecaTifaTxt_KeyPress(KeyAscii As Integer) 'A079F0
  'Data Table: 512094
  loc_A079BC: LitStr "1234567890,."
  loc_A079BF: FStStrCopy var_88
  loc_A079C2: FLdRfVar var_88
  loc_A079C5: ILdRf KeyAscii
  loc_A079C8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A079CD: IStI2 KeyAscii
  loc_A079D0: FFree1Str var_88
  loc_A079D3: ILdI2 KeyAscii
  loc_A079D6: LitStr "."
  loc_A079D9: ImpAdCallI2 Asc()
  loc_A079DE: EqI2
  loc_A079DF: BranchF loc_A079ED
  loc_A079E2: LitStr ","
  loc_A079E5: ImpAdCallI2 Asc()
  loc_A079EA: IStI2 KeyAscii
  loc_A079ED: ExitProcHresult
  loc_A079EE: UMiI4
End Sub

Private Sub DecaTifaTxt_LostFocus() 'A74E68
  'Data Table: 512094
  loc_A74E04: FLdRfVar var_8C
  loc_A74E07: FLdPr Me
  loc_A74E0A: VCallAd Control_ID_DecaTifaTxt
  loc_A74E0D: FStAdFunc var_88
  loc_A74E10: FLdPr var_88
  loc_A74E13:  = Me.Text
  loc_A74E18: LitI4 1
  loc_A74E1D: LitI4 1
  loc_A74E22: LitVarStr var_AC, "##0.00"
  loc_A74E27: FStVarCopyObj var_BC
  loc_A74E2A: FLdRfVar var_BC
  loc_A74E2D: FLdZeroAd var_8C
  loc_A74E30: CVarStr var_9C
  loc_A74E33: FLdRfVar var_CC
  loc_A74E36: ImpAdCallFPR4  = Format(, )
  loc_A74E3B: FLdRfVar var_CC
  loc_A74E3E: CStrVarVal var_D0
  loc_A74E42: FLdPr Me
  loc_A74E45: VCallAd Control_ID_DecaTifaTxt
  loc_A74E48: FStAdFunc var_D4
  loc_A74E4B: FLdPr var_D4
  loc_A74E4E: Me.Text = from_stack_1
  loc_A74E53: FFree1Str var_D0
  loc_A74E56: FFreeAd var_88 = ""
  loc_A74E5D: FFreeVar var_9C = "": var_BC = ""
  loc_A74E66: ExitProcHresult
End Sub

Private Sub DecaTifaTxt_Validate(Cancel As Boolean) 'AD31B0
  'Data Table: 512094
  loc_AD3084: FLdRfVar var_8A
  loc_AD3087: FLdPr Me
  loc_AD308A: VCallAd Control_ID_cmdCancelar
  loc_AD308D: FStAdFunc var_88
  loc_AD3090: FLdPr var_88
  loc_AD3093:  = Me.Value
  loc_AD3098: FLdI2 var_8A
  loc_AD309B: NotI4
  loc_AD309C: FLdRfVar var_92
  loc_AD309F: FLdPr Me
  loc_AD30A2: VCallAd Control_ID_DecaTifaTxt
  loc_AD30A5: FStAdFunc var_90
  loc_AD30A8: FLdPr var_90
  loc_AD30AB:  = Me.Enabled
  loc_AD30B0: FLdI2 var_92
  loc_AD30B3: AndI4
  loc_AD30B4: FFreeAd var_88 = ""
  loc_AD30BB: BranchF loc_AD31AC
  loc_AD30BE: FLdRfVar var_98
  loc_AD30C1: FLdPr Me
  loc_AD30C4: VCallAd Control_ID_DecaTifaTxt
  loc_AD30C7: FStAdFunc var_88
  loc_AD30CA: FLdPr var_88
  loc_AD30CD:  = Me.Text
  loc_AD30D2: FLdZeroAd var_98
  loc_AD30D5: CVarStr var_A8
  loc_AD30D8: ImpAdCallI2 IsNumeric()
  loc_AD30DD: NotI4
  loc_AD30DE: FFree1Ad var_88
  loc_AD30E1: FFree1Var var_A8 = ""
  loc_AD30E4: BranchF loc_AD30FE
  loc_AD30E7: LitStr "0"
  loc_AD30EA: FLdPr Me
  loc_AD30ED: VCallAd Control_ID_DecaTifaTxt
  loc_AD30F0: FStAdFunc var_88
  loc_AD30F3: FLdPr var_88
  loc_AD30F6: Me.Text = from_stack_1
  loc_AD30FB: FFree1Ad var_88
  loc_AD30FE: FLdRfVar var_98
  loc_AD3101: FLdPr Me
  loc_AD3104: VCallAd Control_ID_DecaTifaTxt
  loc_AD3107: FStAdFunc var_88
  loc_AD310A: FLdPr var_88
  loc_AD310D:  = Me.Text
  loc_AD3112: LitI2_Byte &HFF
  loc_AD3114: LitI2_Byte 0
  loc_AD3116: ILdRf var_98
  loc_AD3119: LitStr "ingrese descuento"
  loc_AD311C: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AD3121: FStStrNoPop var_AC
  loc_AD3124: FLdPr Me
  loc_AD3127: MemStStrCopy
  loc_AD312B: FFreeStr var_98 = ""
  loc_AD3132: FFree1Ad var_88
  loc_AD3135: FLdPr Me
  loc_AD3138: MemLdStr global_60
  loc_AD313B: LitStr vbNullString
  loc_AD313E: NeStr
  loc_AD3140: BranchF loc_AD3166
  loc_AD3143: FLdPr Me
  loc_AD3146: MemLdStr global_60
  loc_AD3149: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD314E: FLdPr Me
  loc_AD3151: VCallAd Control_ID_DecaTifaTxt
  loc_AD3154: CVarAd
  loc_AD3158: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD315D: FFree1Var var_A8 = ""
  loc_AD3160: LitI2_Byte &HFF
  loc_AD3162: IStI2 Cancel
  loc_AD3165: ExitProcHresult
  loc_AD3166: FLdRfVar var_98
  loc_AD3169: FLdPr Me
  loc_AD316C: VCallAd Control_ID_DecaTifaTxt
  loc_AD316F: FStAdFunc var_88
  loc_AD3172: FLdPr var_88
  loc_AD3175:  = Me.Text
  loc_AD317A: ILdRf var_98
  loc_AD317D: CR8Str
  loc_AD317F: LitI2_Byte &H64
  loc_AD3181: CR8I2
  loc_AD3182: GtR4
  loc_AD3183: FFree1Str var_98
  loc_AD3186: FFree1Ad var_88
  loc_AD3189: BranchF loc_AD31AC
  loc_AD318C: LitStr "El porcentaje no puede ser mayor a 100"
  loc_AD318F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD3194: FLdPr Me
  loc_AD3197: VCallAd Control_ID_DecaTifaTxt
  loc_AD319A: CVarAd
  loc_AD319E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD31A3: FFree1Var var_A8 = ""
  loc_AD31A6: LitI2_Byte &HFF
  loc_AD31A8: IStI2 Cancel
  loc_AD31AB: ExitProcHresult
  loc_AD31AC: ExitProcHresult
  loc_AD31AD: VCallAd Control_ID_
End Sub

Private Sub Form_Load() 'B70F0C
  'Data Table: 512094
  loc_B70A58: LitI2_Byte 0
  loc_B70A5A: CR8I2
  loc_B70A5B: PopFPR4
  loc_B70A5C: FLdPr Me
  loc_B70A5F: Me.Left = from_stack_1s
  loc_B70A64: LitI2_Byte 0
  loc_B70A66: CR8I2
  loc_B70A67: PopFPR4
  loc_B70A68: FLdPr Me
  loc_B70A6B: Me.Top = from_stack_1s
  loc_B70A70: LitStr "SELECT CodiTifa, DetaTifa, TipoTifa, FealTifa, EmitTifa, ExpeTifa, ResoTifa, MecaTifa, InteTifa, MomiTifa, DecaTifa, DereTifa, TianTifa, AntiTifa, CumiTifa, CumaTifa, ImmiTifa, VecuTifa, CbuTifa, BajaUsua, BajaFeho FROM tipofapa "
  loc_B70A73: FLdPr Me
  loc_B70A76: MemLdRfVar from_stack_1.global_52
  loc_B70A79: NewIfNullPr clstipofapa
  loc_B70A7C: Call clstipofapa.RedefineRS(from_stack_1v)
  loc_B70A81: LitStr "CodiTifa"
  loc_B70A84: FLdPr Me
  loc_B70A87: VCallAd Control_ID_CodiTifaTxt
  loc_B70A8A: FStAdFunc var_88
  loc_B70A8D: FLdPr var_88
  loc_B70A90: Me.DataField = from_stack_1
  loc_B70A95: FFree1Ad var_88
  loc_B70A98: LitStr "DetaTifa"
  loc_B70A9B: FLdPr Me
  loc_B70A9E: VCallAd Control_ID_DetaTifaTxt
  loc_B70AA1: FStAdFunc var_88
  loc_B70AA4: FLdPr var_88
  loc_B70AA7: Me.DataField = from_stack_1
  loc_B70AAC: FFree1Ad var_88
  loc_B70AAF: LitStr "TipoTifa"
  loc_B70AB2: FLdPr Me
  loc_B70AB5: VCallAd Control_ID_TipoTifaCbo
  loc_B70AB8: FStAdFunc var_88
  loc_B70ABB: FLdPr var_88
  loc_B70ABE: Me.DataField = from_stack_1
  loc_B70AC3: FFree1Ad var_88
  loc_B70AC6: LitStr "EmitTifa"
  loc_B70AC9: FLdPr Me
  loc_B70ACC: VCallAd Control_ID_EmitTifaCbo
  loc_B70ACF: FStAdFunc var_88
  loc_B70AD2: FLdPr var_88
  loc_B70AD5: Me.DataField = from_stack_1
  loc_B70ADA: FFree1Ad var_88
  loc_B70ADD: LitStr "ExpeTifa"
  loc_B70AE0: FLdPr Me
  loc_B70AE3: VCallAd Control_ID_ExpeTifaTxt
  loc_B70AE6: FStAdFunc var_88
  loc_B70AE9: FLdPr var_88
  loc_B70AEC: Me.DataField = from_stack_1
  loc_B70AF1: FFree1Ad var_88
  loc_B70AF4: LitStr "ResoTifa"
  loc_B70AF7: FLdPr Me
  loc_B70AFA: VCallAd Control_ID_ResoTifaTxt
  loc_B70AFD: FStAdFunc var_88
  loc_B70B00: FLdPr var_88
  loc_B70B03: Me.DataField = from_stack_1
  loc_B70B08: FFree1Ad var_88
  loc_B70B0B: LitStr "MecaTifa"
  loc_B70B0E: FLdPr Me
  loc_B70B11: VCallAd Control_ID_MecaTifaCbo
  loc_B70B14: FStAdFunc var_88
  loc_B70B17: FLdPr var_88
  loc_B70B1A: Me.DataField = from_stack_1
  loc_B70B1F: FFree1Ad var_88
  loc_B70B22: LitStr "InteTifa"
  loc_B70B25: FLdPr Me
  loc_B70B28: VCallAd Control_ID_InteTifaTxt
  loc_B70B2B: FStAdFunc var_88
  loc_B70B2E: FLdPr var_88
  loc_B70B31: Me.DataField = from_stack_1
  loc_B70B36: FFree1Ad var_88
  loc_B70B39: LitStr "MomiTifa"
  loc_B70B3C: FLdPr Me
  loc_B70B3F: VCallAd Control_ID_MomiTifaTxt
  loc_B70B42: FStAdFunc var_88
  loc_B70B45: FLdPr var_88
  loc_B70B48: Me.DataField = from_stack_1
  loc_B70B4D: FFree1Ad var_88
  loc_B70B50: LitStr "TianTifa"
  loc_B70B53: FLdPr Me
  loc_B70B56: VCallAd Control_ID_TianTifaCbo
  loc_B70B59: FStAdFunc var_88
  loc_B70B5C: FLdPr var_88
  loc_B70B5F: Me.DataField = from_stack_1
  loc_B70B64: FFree1Ad var_88
  loc_B70B67: LitStr "AntiTifa"
  loc_B70B6A: FLdPr Me
  loc_B70B6D: VCallAd Control_ID_AntiTifaTxt
  loc_B70B70: FStAdFunc var_88
  loc_B70B73: FLdPr var_88
  loc_B70B76: Me.DataField = from_stack_1
  loc_B70B7B: FFree1Ad var_88
  loc_B70B7E: LitStr "CumiTifa"
  loc_B70B81: FLdPr Me
  loc_B70B84: VCallAd Control_ID_CumiTifaTxt
  loc_B70B87: FStAdFunc var_88
  loc_B70B8A: FLdPr var_88
  loc_B70B8D: Me.DataField = from_stack_1
  loc_B70B92: FFree1Ad var_88
  loc_B70B95: LitStr "CumaTifa"
  loc_B70B98: FLdPr Me
  loc_B70B9B: VCallAd Control_ID_CumaTifaTxt
  loc_B70B9E: FStAdFunc var_88
  loc_B70BA1: FLdPr var_88
  loc_B70BA4: Me.DataField = from_stack_1
  loc_B70BA9: FFree1Ad var_88
  loc_B70BAC: LitStr "ImmiTifa"
  loc_B70BAF: FLdPr Me
  loc_B70BB2: VCallAd Control_ID_ImmiTifaTxt
  loc_B70BB5: FStAdFunc var_88
  loc_B70BB8: FLdPr var_88
  loc_B70BBB: Me.DataField = from_stack_1
  loc_B70BC0: FFree1Ad var_88
  loc_B70BC3: LitStr "VecuTifa"
  loc_B70BC6: FLdPr Me
  loc_B70BC9: VCallAd Control_ID_VecuTifaCbo
  loc_B70BCC: FStAdFunc var_88
  loc_B70BCF: FLdPr var_88
  loc_B70BD2: Me.DataField = from_stack_1
  loc_B70BD7: FFree1Ad var_88
  loc_B70BDA: LitI4 0
  loc_B70BDF: LitI4 1
  loc_B70BE4: FLdRfVar var_8C
  loc_B70BE7: Redim
  loc_B70BF1: FLdPr Me
  loc_B70BF4: MemLdRfVar from_stack_1.global_52
  loc_B70BF7: NewIfNullAd
  loc_B70BFA: FStAd var_88 
  loc_B70BFE: FLdRfVar var_88
  loc_B70C01: CVarRef
  loc_B70C06: ParmAry1St
  loc_B70C0C: FLdPr Me
  loc_B70C0F: VCallAd Control_ID_dgdABMS
  loc_B70C12: CVarAd
  loc_B70C16: ParmAry1St
  loc_B70C1C: FLdRfVar var_8C
  loc_B70C1F: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B70C24: ILdRf var_88
  loc_B70C27: CastAd
  loc_B70C2A: FLdPr Me
  loc_B70C2D: MemStAdFunc
  loc_B70C31: FLdRfVar var_8C
  loc_B70C34: Erase
  loc_B70C35: FFree1Ad var_88
  loc_B70C38: Call EnlazaTodo()
  loc_B70C3D: ILdRf Me
  loc_B70C40: CastAd
  loc_B70C43: FStAdFunc var_88
  loc_B70C46: FLdRfVar var_88
  loc_B70C49: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_B70C4E: FFree1Ad var_88
  loc_B70C51: LitI2_Byte 0
  loc_B70C53: ILdRf Me
  loc_B70C56: CastAd
  loc_B70C59: FStAdFunc var_88
  loc_B70C5C: FLdRfVar var_88
  loc_B70C5F: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_B70C64: FFree1Ad var_88
  loc_B70C67: LitVar_Missing var_9C
  loc_B70C6A: PopAdLdVar
  loc_B70C6B: LitStr "Si"
  loc_B70C6E: FLdPr Me
  loc_B70C71: VCallAd Control_ID_EmitTifaCbo
  loc_B70C74: FStAdFunc var_88
  loc_B70C77: FLdPr var_88
  loc_B70C7A: Me.AddItem from_stack_1, from_stack_2
  loc_B70C7F: FFree1Ad var_88
  loc_B70C82: LitVar_Missing var_9C
  loc_B70C85: PopAdLdVar
  loc_B70C86: LitStr "No"
  loc_B70C89: FLdPr Me
  loc_B70C8C: VCallAd Control_ID_EmitTifaCbo
  loc_B70C8F: FStAdFunc var_88
  loc_B70C92: FLdPr var_88
  loc_B70C95: Me.AddItem from_stack_1, from_stack_2
  loc_B70C9A: FFree1Ad var_88
  loc_B70C9D: LitStr "Municipalidad de Guaymallén"
  loc_B70CA0: LitStr "Municipalidad de Lavalle"
  loc_B70CA3: EqStr
  loc_B70CA5: BranchF loc_B70D17
  loc_B70CA8: LitVar_Missing var_9C
  loc_B70CAB: PopAdLdVar
  loc_B70CAC: LitStr "Directo"
  loc_B70CAF: FLdPr Me
  loc_B70CB2: VCallAd Control_ID_MecaTifaCbo
  loc_B70CB5: FStAdFunc var_88
  loc_B70CB8: FLdPr var_88
  loc_B70CBB: Me.AddItem from_stack_1, from_stack_2
  loc_B70CC0: FFree1Ad var_88
  loc_B70CC3: LitVar_Missing var_9C
  loc_B70CC6: PopAdLdVar
  loc_B70CC7: LitStr "Frances"
  loc_B70CCA: FLdPr Me
  loc_B70CCD: VCallAd Control_ID_MecaTifaCbo
  loc_B70CD0: FStAdFunc var_88
  loc_B70CD3: FLdPr var_88
  loc_B70CD6: Me.AddItem from_stack_1, from_stack_2
  loc_B70CDB: FFree1Ad var_88
  loc_B70CDE: LitVar_Missing var_9C
  loc_B70CE1: PopAdLdVar
  loc_B70CE2: LitStr "Especial"
  loc_B70CE5: FLdPr Me
  loc_B70CE8: VCallAd Control_ID_MecaTifaCbo
  loc_B70CEB: FStAdFunc var_88
  loc_B70CEE: FLdPr var_88
  loc_B70CF1: Me.AddItem from_stack_1, from_stack_2
  loc_B70CF6: FFree1Ad var_88
  loc_B70CF9: LitVar_Missing var_9C
  loc_B70CFC: PopAdLdVar
  loc_B70CFD: LitStr "Directo Por Año"
  loc_B70D00: FLdPr Me
  loc_B70D03: VCallAd Control_ID_MecaTifaCbo
  loc_B70D06: FStAdFunc var_88
  loc_B70D09: FLdPr var_88
  loc_B70D0C: Me.AddItem from_stack_1, from_stack_2
  loc_B70D11: FFree1Ad var_88
  loc_B70D14: Branch loc_B70D68
  loc_B70D17: LitVar_Missing var_9C
  loc_B70D1A: PopAdLdVar
  loc_B70D1B: LitStr "Directo"
  loc_B70D1E: FLdPr Me
  loc_B70D21: VCallAd Control_ID_MecaTifaCbo
  loc_B70D24: FStAdFunc var_88
  loc_B70D27: FLdPr var_88
  loc_B70D2A: Me.AddItem from_stack_1, from_stack_2
  loc_B70D2F: FFree1Ad var_88
  loc_B70D32: LitVar_Missing var_9C
  loc_B70D35: PopAdLdVar
  loc_B70D36: LitStr "Frances"
  loc_B70D39: FLdPr Me
  loc_B70D3C: VCallAd Control_ID_MecaTifaCbo
  loc_B70D3F: FStAdFunc var_88
  loc_B70D42: FLdPr var_88
  loc_B70D45: Me.AddItem from_stack_1, from_stack_2
  loc_B70D4A: FFree1Ad var_88
  loc_B70D4D: LitVar_Missing var_9C
  loc_B70D50: PopAdLdVar
  loc_B70D51: LitStr "Especial"
  loc_B70D54: FLdPr Me
  loc_B70D57: VCallAd Control_ID_MecaTifaCbo
  loc_B70D5A: FStAdFunc var_88
  loc_B70D5D: FLdPr var_88
  loc_B70D60: Me.AddItem from_stack_1, from_stack_2
  loc_B70D65: FFree1Ad var_88
  loc_B70D68: LitVar_Missing var_9C
  loc_B70D6B: PopAdLdVar
  loc_B70D6C: LitStr "Importe"
  loc_B70D6F: FLdPr Me
  loc_B70D72: VCallAd Control_ID_TianTifaCbo
  loc_B70D75: FStAdFunc var_88
  loc_B70D78: FLdPr var_88
  loc_B70D7B: Me.AddItem from_stack_1, from_stack_2
  loc_B70D80: FFree1Ad var_88
  loc_B70D83: LitVar_Missing var_9C
  loc_B70D86: PopAdLdVar
  loc_B70D87: LitStr "Porcentaje"
  loc_B70D8A: FLdPr Me
  loc_B70D8D: VCallAd Control_ID_TianTifaCbo
  loc_B70D90: FStAdFunc var_88
  loc_B70D93: FLdPr var_88
  loc_B70D96: Me.AddItem from_stack_1, from_stack_2
  loc_B70D9B: FFree1Ad var_88
  loc_B70D9E: LitVar_Missing var_9C
  loc_B70DA1: PopAdLdVar
  loc_B70DA2: LitStr "Mensual"
  loc_B70DA5: FLdPr Me
  loc_B70DA8: VCallAd Control_ID_VecuTifaCbo
  loc_B70DAB: FStAdFunc var_88
  loc_B70DAE: FLdPr var_88
  loc_B70DB1: Me.AddItem from_stack_1, from_stack_2
  loc_B70DB6: FFree1Ad var_88
  loc_B70DB9: LitVar_Missing var_9C
  loc_B70DBC: PopAdLdVar
  loc_B70DBD: LitStr "Bimestral"
  loc_B70DC0: FLdPr Me
  loc_B70DC3: VCallAd Control_ID_VecuTifaCbo
  loc_B70DC6: FStAdFunc var_88
  loc_B70DC9: FLdPr var_88
  loc_B70DCC: Me.AddItem from_stack_1, from_stack_2
  loc_B70DD1: FFree1Ad var_88
  loc_B70DD4: LitVar_Missing var_9C
  loc_B70DD7: PopAdLdVar
  loc_B70DD8: LitStr "Trimestral"
  loc_B70DDB: FLdPr Me
  loc_B70DDE: VCallAd Control_ID_VecuTifaCbo
  loc_B70DE1: FStAdFunc var_88
  loc_B70DE4: FLdPr var_88
  loc_B70DE7: Me.AddItem from_stack_1, from_stack_2
  loc_B70DEC: FFree1Ad var_88
  loc_B70DEF: LitVar_Missing var_9C
  loc_B70DF2: PopAdLdVar
  loc_B70DF3: LitStr "Cuatrimestral"
  loc_B70DF6: FLdPr Me
  loc_B70DF9: VCallAd Control_ID_VecuTifaCbo
  loc_B70DFC: FStAdFunc var_88
  loc_B70DFF: FLdPr var_88
  loc_B70E02: Me.AddItem from_stack_1, from_stack_2
  loc_B70E07: FFree1Ad var_88
  loc_B70E0A: LitVar_Missing var_9C
  loc_B70E0D: PopAdLdVar
  loc_B70E0E: LitStr "Semestral"
  loc_B70E11: FLdPr Me
  loc_B70E14: VCallAd Control_ID_VecuTifaCbo
  loc_B70E17: FStAdFunc var_88
  loc_B70E1A: FLdPr var_88
  loc_B70E1D: Me.AddItem from_stack_1, from_stack_2
  loc_B70E22: FFree1Ad var_88
  loc_B70E25: LitVar_Missing var_9C
  loc_B70E28: PopAdLdVar
  loc_B70E29: LitStr "Anual"
  loc_B70E2C: FLdPr Me
  loc_B70E2F: VCallAd Control_ID_VecuTifaCbo
  loc_B70E32: FStAdFunc var_88
  loc_B70E35: FLdPr var_88
  loc_B70E38: Me.AddItem from_stack_1, from_stack_2
  loc_B70E3D: FFree1Ad var_88
  loc_B70E40: LitVar_Missing var_9C
  loc_B70E43: PopAdLdVar
  loc_B70E44: LitStr "Plan de Pago"
  loc_B70E47: FLdPr Me
  loc_B70E4A: VCallAd Control_ID_TipoTifaCbo
  loc_B70E4D: FStAdFunc var_88
  loc_B70E50: FLdPr var_88
  loc_B70E53: Me.AddItem from_stack_1, from_stack_2
  loc_B70E58: FFree1Ad var_88
  loc_B70E5B: LitVar_Missing var_9C
  loc_B70E5E: PopAdLdVar
  loc_B70E5F: LitStr "Obra Reembolsable"
  loc_B70E62: FLdPr Me
  loc_B70E65: VCallAd Control_ID_TipoTifaCbo
  loc_B70E68: FStAdFunc var_88
  loc_B70E6B: FLdPr var_88
  loc_B70E6E: Me.AddItem from_stack_1, from_stack_2
  loc_B70E73: FFree1Ad var_88
  loc_B70E76: LitVarI2 var_9C, 0
  loc_B70E7B: PopAdLdVar
  loc_B70E7C: LitStr "Código"
  loc_B70E7F: FLdPr Me
  loc_B70E82: VCallAd Control_ID_FiltroCbo
  loc_B70E85: FStAdFunc var_88
  loc_B70E88: FLdPr var_88
  loc_B70E8B: Me.AddItem from_stack_1, from_stack_2
  loc_B70E90: FFree1Ad var_88
  loc_B70E93: LitVarI2 var_9C, 1
  loc_B70E98: PopAdLdVar
  loc_B70E99: LitStr "Detalle"
  loc_B70E9C: FLdPr Me
  loc_B70E9F: VCallAd Control_ID_FiltroCbo
  loc_B70EA2: FStAdFunc var_88
  loc_B70EA5: FLdPr var_88
  loc_B70EA8: Me.AddItem from_stack_1, from_stack_2
  loc_B70EAD: FFree1Ad var_88
  loc_B70EB0: LitI2_Byte 0
  loc_B70EB2: FLdPr Me
  loc_B70EB5: VCallAd Control_ID_FiltroCbo
  loc_B70EB8: FStAdFunc var_88
  loc_B70EBB: FLdPr var_88
  loc_B70EBE: Me.ListIndex = from_stack_1
  loc_B70EC3: FFree1Ad var_88
  loc_B70EC6: LitI4 0
  loc_B70ECB: LitI4 1
  loc_B70ED0: FLdRfVar var_8C
  loc_B70ED3: Redim
  loc_B70EDD: FLdPr Me
  loc_B70EE0: VCallAd Control_ID_FiltroCbo
  loc_B70EE3: CVarAd
  loc_B70EE7: ParmAry1St
  loc_B70EED: FLdPr Me
  loc_B70EF0: VCallAd Control_ID_FiltroMsk
  loc_B70EF3: CVarAd
  loc_B70EF7: ParmAry1St
  loc_B70EFD: FLdRfVar var_8C
  loc_B70F00: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B70F05: FLdRfVar var_8C
  loc_B70F08: Erase
  loc_B70F09: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A62E40
  'Data Table: 512094
  loc_A62DE4: FLdRfVar var_C2
  loc_A62DE7: FLdRfVar var_C0
  loc_A62DEA: LitVarI2 var_B8, 1
  loc_A62DEF: FLdPr Me
  loc_A62DF2: VCallAd Control_ID_tlbABMS
  loc_A62DF5: FStAdFunc var_88
  loc_A62DF8: FLdPr var_88
  loc_A62DFB: LateIdLdVar var_98 DispID_3 0
  loc_A62E02: CastAdVar Me
  loc_A62E06: FStAdFunc var_BC
  loc_A62E09: FLdPr var_BC
  loc_A62E0C:  = Me.Buttons.ControlDefault
  loc_A62E11: FLdPr var_C0
  loc_A62E14:  = Me.Enabled
  loc_A62E19: FLdI2 var_C2
  loc_A62E1C: FFreeAd var_88 = "": var_BC = ""
  loc_A62E25: FFreeVar var_98 = ""
  loc_A62E2C: BranchF loc_A62E3D
  loc_A62E2F: FLdPr Me
  loc_A62E32: MemLdRfVar from_stack_1.global_52
  loc_A62E35: NewIfNullPr clstipofapa
  loc_A62E38: Call clstipofapa.Requery()
  loc_A62E3D: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9DB54C
  'Data Table: 512094
  loc_9DB534: ILdI2 KeyCode
  loc_9DB537: ILdRf Me
  loc_9DB53A: CastAd
  loc_9DB53D: FStAdFunc var_88
  loc_9DB540: FLdRfVar var_88
  loc_9DB543: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9DB548: FFree1Ad var_88
  loc_9DB54B: ExitProcHresult
End Sub

Private Sub AntiTifaTxt_GotFocus() '9BE7D8
  'Data Table: 512094
  loc_9BE7C4: FLdPr Me
  loc_9BE7C7: VCallAd Control_ID_AntiTifaTxt
  loc_9BE7CA: CVarAd
  loc_9BE7CE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE7D3: FFree1Var var_94 = ""
  loc_9BE7D6: ExitProcHresult
  loc_9BE7D7: CI2I4
End Sub

Private Sub AntiTifaTxt_KeyPress(KeyAscii As Integer) 'A06BB8
  'Data Table: 512094
  loc_A06B84: LitStr "1234567890,."
  loc_A06B87: FStStrCopy var_88
  loc_A06B8A: FLdRfVar var_88
  loc_A06B8D: ILdRf KeyAscii
  loc_A06B90: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A06B95: IStI2 KeyAscii
  loc_A06B98: FFree1Str var_88
  loc_A06B9B: ILdI2 KeyAscii
  loc_A06B9E: LitStr "."
  loc_A06BA1: ImpAdCallI2 Asc()
  loc_A06BA6: EqI2
  loc_A06BA7: BranchF loc_A06BB5
  loc_A06BAA: LitStr ","
  loc_A06BAD: ImpAdCallI2 Asc()
  loc_A06BB2: IStI2 KeyAscii
  loc_A06BB5: ExitProcHresult
  loc_A06BB6: DOC
End Sub

Private Sub AntiTifaTxt_LostFocus() 'A74788
  'Data Table: 512094
  loc_A74724: FLdRfVar var_8C
  loc_A74727: FLdPr Me
  loc_A7472A: VCallAd Control_ID_AntiTifaTxt
  loc_A7472D: FStAdFunc var_88
  loc_A74730: FLdPr var_88
  loc_A74733:  = Me.Text
  loc_A74738: LitI4 1
  loc_A7473D: LitI4 1
  loc_A74742: LitVarStr var_AC, "##0.00"
  loc_A74747: FStVarCopyObj var_BC
  loc_A7474A: FLdRfVar var_BC
  loc_A7474D: FLdZeroAd var_8C
  loc_A74750: CVarStr var_9C
  loc_A74753: FLdRfVar var_CC
  loc_A74756: ImpAdCallFPR4  = Format(, )
  loc_A7475B: FLdRfVar var_CC
  loc_A7475E: CStrVarVal var_D0
  loc_A74762: FLdPr Me
  loc_A74765: VCallAd Control_ID_AntiTifaTxt
  loc_A74768: FStAdFunc var_D4
  loc_A7476B: FLdPr var_D4
  loc_A7476E: Me.Text = from_stack_1
  loc_A74773: FFree1Str var_D0
  loc_A74776: FFreeAd var_88 = ""
  loc_A7477D: FFreeVar var_9C = "": var_BC = ""
  loc_A74786: ExitProcHresult
End Sub

Private Sub AntiTifaTxt_Validate(Cancel As Boolean) 'B05F34
  'Data Table: 512094
  loc_B05D30: FLdRfVar var_8A
  loc_B05D33: FLdPr Me
  loc_B05D36: VCallAd Control_ID_cmdCancelar
  loc_B05D39: FStAdFunc var_88
  loc_B05D3C: FLdPr var_88
  loc_B05D3F:  = Me.Value
  loc_B05D44: FLdI2 var_8A
  loc_B05D47: NotI4
  loc_B05D48: FLdRfVar var_92
  loc_B05D4B: FLdPr Me
  loc_B05D4E: VCallAd Control_ID_AntiTifaTxt
  loc_B05D51: FStAdFunc var_90
  loc_B05D54: FLdPr var_90
  loc_B05D57:  = Me.Enabled
  loc_B05D5C: FLdI2 var_92
  loc_B05D5F: AndI4
  loc_B05D60: FFreeAd var_88 = ""
  loc_B05D67: BranchF loc_B05F31
  loc_B05D6A: FLdRfVar var_98
  loc_B05D6D: FLdPr Me
  loc_B05D70: VCallAd Control_ID_AntiTifaTxt
  loc_B05D73: FStAdFunc var_88
  loc_B05D76: FLdPr var_88
  loc_B05D79:  = Me.Text
  loc_B05D7E: FLdZeroAd var_98
  loc_B05D81: CVarStr var_A8
  loc_B05D84: ImpAdCallI2 IsNumeric()
  loc_B05D89: NotI4
  loc_B05D8A: FFree1Ad var_88
  loc_B05D8D: FFree1Var var_A8 = ""
  loc_B05D90: BranchF loc_B05DAA
  loc_B05D93: LitStr "0"
  loc_B05D96: FLdPr Me
  loc_B05D99: VCallAd Control_ID_AntiTifaTxt
  loc_B05D9C: FStAdFunc var_88
  loc_B05D9F: FLdPr var_88
  loc_B05DA2: Me.Text = from_stack_1
  loc_B05DA7: FFree1Ad var_88
  loc_B05DAA: FLdRfVar var_98
  loc_B05DAD: FLdPr Me
  loc_B05DB0: VCallAd Control_ID_AntiTifaTxt
  loc_B05DB3: FStAdFunc var_88
  loc_B05DB6: FLdPr var_88
  loc_B05DB9:  = Me.Text
  loc_B05DBE: LitI2_Byte &HFF
  loc_B05DC0: LitI2_Byte &HFF
  loc_B05DC2: ILdRf var_98
  loc_B05DC5: LitStr "el anticipo"
  loc_B05DC8: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_B05DCD: FStStrNoPop var_AC
  loc_B05DD0: FLdPr Me
  loc_B05DD3: MemStStrCopy
  loc_B05DD7: FFreeStr var_98 = ""
  loc_B05DDE: FFree1Ad var_88
  loc_B05DE1: FLdPr Me
  loc_B05DE4: MemLdStr global_60
  loc_B05DE7: LitStr vbNullString
  loc_B05DEA: NeStr
  loc_B05DEC: BranchF loc_B05E12
  loc_B05DEF: FLdPr Me
  loc_B05DF2: MemLdStr global_60
  loc_B05DF5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B05DFA: FLdPr Me
  loc_B05DFD: VCallAd Control_ID_AntiTifaTxt
  loc_B05E00: CVarAd
  loc_B05E04: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B05E09: FFree1Var var_A8 = ""
  loc_B05E0C: LitI2_Byte &HFF
  loc_B05E0E: IStI2 Cancel
  loc_B05E11: ExitProcHresult
  loc_B05E12: FLdRfVar var_98
  loc_B05E15: FLdPr Me
  loc_B05E18: VCallAd Control_ID_AntiTifaTxt
  loc_B05E1B: FStAdFunc var_88
  loc_B05E1E: FLdPr var_88
  loc_B05E21:  = Me.Text
  loc_B05E26: ILdRf var_98
  loc_B05E29: CR8Str
  loc_B05E2B: LitI2_Byte 0
  loc_B05E2D: CR8I2
  loc_B05E2E: NeR8
  loc_B05E2F: FLdRfVar var_AC
  loc_B05E32: FLdPr Me
  loc_B05E35: VCallAd Control_ID_MecaTifaCbo
  loc_B05E38: FStAdFunc var_90
  loc_B05E3B: FLdPr var_90
  loc_B05E3E:  = Me.Text
  loc_B05E43: ILdRf var_AC
  loc_B05E46: LitStr "Especial"
  loc_B05E49: EqStr
  loc_B05E4B: AndI4
  loc_B05E4C: FFreeStr var_98 = ""
  loc_B05E53: FFreeAd var_88 = ""
  loc_B05E5A: BranchF loc_B05EC6
  loc_B05E5D: LitStr "Las facilidades ESPECIAL, no pueden tener anticipo"
  loc_B05E60: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B05E65: LitI4 1
  loc_B05E6A: LitI4 1
  loc_B05E6F: LitVarStr var_CC, "0.00"
  loc_B05E74: FStVarCopyObj var_DC
  loc_B05E77: FLdRfVar var_DC
  loc_B05E7A: LitVarI2 var_A8, 0
  loc_B05E7F: FLdRfVar var_EC
  loc_B05E82: ImpAdCallFPR4  = Format(, )
  loc_B05E87: FLdRfVar var_EC
  loc_B05E8A: CStrVarVal var_98
  loc_B05E8E: FLdPr Me
  loc_B05E91: VCallAd Control_ID_AntiTifaTxt
  loc_B05E94: FStAdFunc var_88
  loc_B05E97: FLdPr var_88
  loc_B05E9A: Me.Text = from_stack_1
  loc_B05E9F: FFree1Str var_98
  loc_B05EA2: FFree1Ad var_88
  loc_B05EA5: FFreeVar var_A8 = "": var_DC = ""
  loc_B05EAE: FLdPr Me
  loc_B05EB1: VCallAd Control_ID_AntiTifaTxt
  loc_B05EB4: CVarAd
  loc_B05EB8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B05EBD: FFree1Var var_A8 = ""
  loc_B05EC0: LitI2_Byte &HFF
  loc_B05EC2: IStI2 Cancel
  loc_B05EC5: ExitProcHresult
  loc_B05EC6: FLdRfVar var_98
  loc_B05EC9: FLdPr Me
  loc_B05ECC: VCallAd Control_ID_TianTifaCbo
  loc_B05ECF: FStAdFunc var_88
  loc_B05ED2: FLdPr var_88
  loc_B05ED5:  = Me.Text
  loc_B05EDA: ILdRf var_98
  loc_B05EDD: LitStr "Porcentaje"
  loc_B05EE0: EqStr
  loc_B05EE2: FFree1Str var_98
  loc_B05EE5: FFree1Ad var_88
  loc_B05EE8: BranchF loc_B05F31
  loc_B05EEB: FLdRfVar var_98
  loc_B05EEE: FLdPr Me
  loc_B05EF1: VCallAd Control_ID_AntiTifaTxt
  loc_B05EF4: FStAdFunc var_88
  loc_B05EF7: FLdPr var_88
  loc_B05EFA:  = Me.Text
  loc_B05EFF: ILdRf var_98
  loc_B05F02: CR8Str
  loc_B05F04: LitI2_Byte &H64
  loc_B05F06: CR8I2
  loc_B05F07: GtR4
  loc_B05F08: FFree1Str var_98
  loc_B05F0B: FFree1Ad var_88
  loc_B05F0E: BranchF loc_B05F31
  loc_B05F11: LitStr "El porcentaje no puede ser mayor a 100"
  loc_B05F14: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B05F19: FLdPr Me
  loc_B05F1C: VCallAd Control_ID_AntiTifaTxt
  loc_B05F1F: CVarAd
  loc_B05F23: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B05F28: FFree1Var var_A8 = ""
  loc_B05F2B: LitI2_Byte &HFF
  loc_B05F2D: IStI2 Cancel
  loc_B05F30: ExitProcHresult
  loc_B05F31: ExitProcHresult
End Sub

Private Sub MecaTifaCbo_Click() 'B04834
  'Data Table: 512094
  loc_B04640: LitStr "Municipalidad de Guaymallén"
  loc_B04643: LitStr "Municipalidad de Tunuyán"
  loc_B04646: NeStr
  loc_B04648: BranchF loc_B04831
  loc_B0464B: FLdRfVar var_8A
  loc_B0464E: FLdPr Me
  loc_B04651: VCallAd Control_ID_MecaTifaCbo
  loc_B04654: FStAdFunc var_88
  loc_B04657: FLdPr var_88
  loc_B0465A:  = Me.Enabled
  loc_B0465F: FLdI2 var_8A
  loc_B04662: FFree1Ad var_88
  loc_B04665: BranchF loc_B04831
  loc_B04668: FLdRfVar var_90
  loc_B0466B: FLdPr Me
  loc_B0466E: VCallAd Control_ID_MecaTifaCbo
  loc_B04671: FStAdFunc var_88
  loc_B04674: FLdPr var_88
  loc_B04677:  = Me.Text
  loc_B0467C: ILdRf var_90
  loc_B0467F: LitStr "Especial"
  loc_B04682: EqStr
  loc_B04684: FFree1Str var_90
  loc_B04687: FFree1Ad var_88
  loc_B0468A: BranchF loc_B047CE
  loc_B0468D: LitI4 1
  loc_B04692: LitI4 1
  loc_B04697: LitVarStr var_C0, "0.00"
  loc_B0469C: FStVarCopyObj var_D0
  loc_B0469F: FLdRfVar var_D0
  loc_B046A2: LitVarI2 var_B0, 0
  loc_B046A7: FLdRfVar var_E0
  loc_B046AA: ImpAdCallFPR4  = Format(, )
  loc_B046AF: FLdRfVar var_E0
  loc_B046B2: CStrVarVal var_90
  loc_B046B6: FLdPr Me
  loc_B046B9: VCallAd Control_ID_AntiTifaTxt
  loc_B046BC: FStAdFunc var_88
  loc_B046BF: FLdPr var_88
  loc_B046C2: Me.Text = from_stack_1
  loc_B046C7: FFree1Str var_90
  loc_B046CA: FFree1Ad var_88
  loc_B046CD: FFreeVar var_B0 = "": var_D0 = ""
  loc_B046D6: LitI4 1
  loc_B046DB: LitI4 1
  loc_B046E0: LitVarStr var_C0, "0.00"
  loc_B046E5: FStVarCopyObj var_D0
  loc_B046E8: FLdRfVar var_D0
  loc_B046EB: LitVarI2 var_B0, 0
  loc_B046F0: FLdRfVar var_E0
  loc_B046F3: ImpAdCallFPR4  = Format(, )
  loc_B046F8: FLdRfVar var_E0
  loc_B046FB: CStrVarVal var_90
  loc_B046FF: FLdPr Me
  loc_B04702: VCallAd Control_ID_DecaTifaTxt
  loc_B04705: FStAdFunc var_88
  loc_B04708: FLdPr var_88
  loc_B0470B: Me.Text = from_stack_1
  loc_B04710: FFree1Str var_90
  loc_B04713: FFree1Ad var_88
  loc_B04716: FFreeVar var_B0 = "": var_D0 = ""
  loc_B0471F: LitI4 1
  loc_B04724: LitI4 1
  loc_B04729: LitVarStr var_C0, "0.00"
  loc_B0472E: FStVarCopyObj var_D0
  loc_B04731: FLdRfVar var_D0
  loc_B04734: LitVarI2 var_B0, 0
  loc_B04739: FLdRfVar var_E0
  loc_B0473C: ImpAdCallFPR4  = Format(, )
  loc_B04741: FLdRfVar var_E0
  loc_B04744: CStrVarVal var_90
  loc_B04748: FLdPr Me
  loc_B0474B: VCallAd Control_ID_DereTifaTxt
  loc_B0474E: FStAdFunc var_88
  loc_B04751: FLdPr var_88
  loc_B04754: Me.Text = from_stack_1
  loc_B04759: FFree1Str var_90
  loc_B0475C: FFree1Ad var_88
  loc_B0475F: FFreeVar var_B0 = "": var_D0 = ""
  loc_B04768: LitI4 0
  loc_B0476D: LitI4 3
  loc_B04772: FLdRfVar var_E4
  loc_B04775: Redim
  loc_B0477F: FLdPr Me
  loc_B04782: VCallAd Control_ID_TianTifaCbo
  loc_B04785: CVarAd
  loc_B04789: ParmAry1St
  loc_B0478F: FLdPr Me
  loc_B04792: VCallAd Control_ID_AntiTifaTxt
  loc_B04795: CVarAd
  loc_B04799: ParmAry1St
  loc_B0479F: FLdPr Me
  loc_B047A2: VCallAd Control_ID_DecaTifaTxt
  loc_B047A5: CVarAd
  loc_B047A9: ParmAry1St
  loc_B047AF: FLdPr Me
  loc_B047B2: VCallAd Control_ID_DereTifaTxt
  loc_B047B5: CVarAd
  loc_B047B9: ParmAry1St
  loc_B047BF: FLdRfVar var_E4
  loc_B047C2: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B047C7: FLdRfVar var_E4
  loc_B047CA: Erase
  loc_B047CB: Branch loc_B04831
  loc_B047CE: LitI4 0
  loc_B047D3: LitI4 3
  loc_B047D8: FLdRfVar var_E4
  loc_B047DB: Redim
  loc_B047E5: FLdPr Me
  loc_B047E8: VCallAd Control_ID_TianTifaCbo
  loc_B047EB: CVarAd
  loc_B047EF: ParmAry1St
  loc_B047F5: FLdPr Me
  loc_B047F8: VCallAd Control_ID_AntiTifaTxt
  loc_B047FB: CVarAd
  loc_B047FF: ParmAry1St
  loc_B04805: FLdPr Me
  loc_B04808: VCallAd Control_ID_DecaTifaTxt
  loc_B0480B: CVarAd
  loc_B0480F: ParmAry1St
  loc_B04815: FLdPr Me
  loc_B04818: VCallAd Control_ID_DereTifaTxt
  loc_B0481B: CVarAd
  loc_B0481F: ParmAry1St
  loc_B04825: FLdRfVar var_E4
  loc_B04828: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B0482D: FLdRfVar var_E4
  loc_B04830: Erase
  loc_B04831: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'AA8BFC
  'Data Table: 512094
  loc_AA8B2C: LitVarStr var_94, vbNullString
  loc_AA8B31: PopAdLdVar
  loc_AA8B32: FLdPr Me
  loc_AA8B35: VCallAd Control_ID_FiltroMsk
  loc_AA8B38: FStAdFunc var_A8
  loc_AA8B3B: FLdPr var_A8
  loc_AA8B3E: LateIdSt
  loc_AA8B43: FFree1Ad var_A8
  loc_AA8B46: LitVarStr var_94, vbNullString
  loc_AA8B4B: PopAdLdVar
  loc_AA8B4C: FLdPr Me
  loc_AA8B4F: VCallAd Control_ID_FiltroMsk
  loc_AA8B52: FStAdFunc var_A8
  loc_AA8B55: FLdPr var_A8
  loc_AA8B58: LateIdSt
  loc_AA8B5D: FFree1Ad var_A8
  loc_AA8B60: FLdRfVar var_AA
  loc_AA8B63: FLdPr Me
  loc_AA8B66: VCallAd Control_ID_FiltroCbo
  loc_AA8B69: FStAdFunc var_A8
  loc_AA8B6C: FLdPr var_A8
  loc_AA8B6F:  = Me.ListIndex
  loc_AA8B74: FLdI2 var_AA
  loc_AA8B77: FStI2 var_AC
  loc_AA8B7A: FFree1Ad var_A8
  loc_AA8B7D: FLdI2 var_AC
  loc_AA8B80: LitI2_Byte 0
  loc_AA8B82: EqI2
  loc_AA8B83: BranchF loc_AA8BBD
  loc_AA8B86: LitVarStr var_94, "####"
  loc_AA8B8B: PopAdLdVar
  loc_AA8B8C: FLdPr Me
  loc_AA8B8F: VCallAd Control_ID_FiltroMsk
  loc_AA8B92: FStAdFunc var_A8
  loc_AA8B95: FLdPr var_A8
  loc_AA8B98: LateIdSt
  loc_AA8B9D: FFree1Ad var_A8
  loc_AA8BA0: LitStr "CodiTifa"
  loc_AA8BA3: FStStrCopy var_B0
  loc_AA8BA6: FLdRfVar var_B0
  loc_AA8BA9: FLdPr Me
  loc_AA8BAC: MemLdRfVar from_stack_1.global_52
  loc_AA8BAF: NewIfNullPr clstipofapa
  loc_AA8BB2: Call clstipofapa.Sort(from_stack_1v)
  loc_AA8BB7: FFree1Str var_B0
  loc_AA8BBA: Branch loc_AA8BFA
  loc_AA8BBD: FLdI2 var_AC
  loc_AA8BC0: LitI2_Byte 1
  loc_AA8BC2: EqI2
  loc_AA8BC3: BranchF loc_AA8BFA
  loc_AA8BC6: LitVarStr var_94, vbNullString
  loc_AA8BCB: PopAdLdVar
  loc_AA8BCC: FLdPr Me
  loc_AA8BCF: VCallAd Control_ID_FiltroMsk
  loc_AA8BD2: FStAdFunc var_A8
  loc_AA8BD5: FLdPr var_A8
  loc_AA8BD8: LateIdSt
  loc_AA8BDD: FFree1Ad var_A8
  loc_AA8BE0: LitStr "DetaTifa"
  loc_AA8BE3: FStStrCopy var_B0
  loc_AA8BE6: FLdRfVar var_B0
  loc_AA8BE9: FLdPr Me
  loc_AA8BEC: MemLdRfVar from_stack_1.global_52
  loc_AA8BEF: NewIfNullPr clstipofapa
  loc_AA8BF2: Call clstipofapa.Sort(from_stack_1v)
  loc_AA8BF7: FFree1Str var_B0
  loc_AA8BFA: ExitProcHresult
End Sub

Private Sub DereTifaTxt_GotFocus() '9BEA60
  'Data Table: 512094
  loc_9BEA4C: FLdPr Me
  loc_9BEA4F: VCallAd Control_ID_DereTifaTxt
  loc_9BEA52: CVarAd
  loc_9BEA56: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BEA5B: FFree1Var var_94 = ""
  loc_9BEA5E: ExitProcHresult
End Sub

Private Sub DereTifaTxt_KeyPress(KeyAscii As Integer) 'A07B28
  'Data Table: 512094
  loc_A07AF4: LitStr "1234567890,."
  loc_A07AF7: FStStrCopy var_88
  loc_A07AFA: FLdRfVar var_88
  loc_A07AFD: ILdRf KeyAscii
  loc_A07B00: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A07B05: IStI2 KeyAscii
  loc_A07B08: FFree1Str var_88
  loc_A07B0B: ILdI2 KeyAscii
  loc_A07B0E: LitStr "."
  loc_A07B11: ImpAdCallI2 Asc()
  loc_A07B16: EqI2
  loc_A07B17: BranchF loc_A07B25
  loc_A07B1A: LitStr ","
  loc_A07B1D: ImpAdCallI2 Asc()
  loc_A07B22: IStI2 KeyAscii
  loc_A07B25: ExitProcHresult
  loc_A07B26: AryLdPr
End Sub

Private Sub DereTifaTxt_LostFocus() 'A758B8
  'Data Table: 512094
  loc_A75854: FLdRfVar var_8C
  loc_A75857: FLdPr Me
  loc_A7585A: VCallAd Control_ID_DereTifaTxt
  loc_A7585D: FStAdFunc var_88
  loc_A75860: FLdPr var_88
  loc_A75863:  = Me.Text
  loc_A75868: LitI4 1
  loc_A7586D: LitI4 1
  loc_A75872: LitVarStr var_AC, "0.00"
  loc_A75877: FStVarCopyObj var_BC
  loc_A7587A: FLdRfVar var_BC
  loc_A7587D: FLdZeroAd var_8C
  loc_A75880: CVarStr var_9C
  loc_A75883: FLdRfVar var_CC
  loc_A75886: ImpAdCallFPR4  = Format(, )
  loc_A7588B: FLdRfVar var_CC
  loc_A7588E: CStrVarVal var_D0
  loc_A75892: FLdPr Me
  loc_A75895: VCallAd Control_ID_DereTifaTxt
  loc_A75898: FStAdFunc var_D4
  loc_A7589B: FLdPr var_D4
  loc_A7589E: Me.Text = from_stack_1
  loc_A758A3: FFree1Str var_D0
  loc_A758A6: FFreeAd var_88 = ""
  loc_A758AD: FFreeVar var_9C = "": var_BC = ""
  loc_A758B6: ExitProcHresult
End Sub

Private Sub DereTifaTxt_Validate(Cancel As Boolean) 'AD24C0
  'Data Table: 512094
  loc_AD2394: FLdRfVar var_8A
  loc_AD2397: FLdPr Me
  loc_AD239A: VCallAd Control_ID_cmdCancelar
  loc_AD239D: FStAdFunc var_88
  loc_AD23A0: FLdPr var_88
  loc_AD23A3:  = Me.Value
  loc_AD23A8: FLdI2 var_8A
  loc_AD23AB: NotI4
  loc_AD23AC: FLdRfVar var_92
  loc_AD23AF: FLdPr Me
  loc_AD23B2: VCallAd Control_ID_DereTifaTxt
  loc_AD23B5: FStAdFunc var_90
  loc_AD23B8: FLdPr var_90
  loc_AD23BB:  = Me.Enabled
  loc_AD23C0: FLdI2 var_92
  loc_AD23C3: AndI4
  loc_AD23C4: FFreeAd var_88 = ""
  loc_AD23CB: BranchF loc_AD24BC
  loc_AD23CE: FLdRfVar var_98
  loc_AD23D1: FLdPr Me
  loc_AD23D4: VCallAd Control_ID_DereTifaTxt
  loc_AD23D7: FStAdFunc var_88
  loc_AD23DA: FLdPr var_88
  loc_AD23DD:  = Me.Text
  loc_AD23E2: FLdZeroAd var_98
  loc_AD23E5: CVarStr var_A8
  loc_AD23E8: ImpAdCallI2 IsNumeric()
  loc_AD23ED: NotI4
  loc_AD23EE: FFree1Ad var_88
  loc_AD23F1: FFree1Var var_A8 = ""
  loc_AD23F4: BranchF loc_AD240E
  loc_AD23F7: LitStr "0"
  loc_AD23FA: FLdPr Me
  loc_AD23FD: VCallAd Control_ID_DereTifaTxt
  loc_AD2400: FStAdFunc var_88
  loc_AD2403: FLdPr var_88
  loc_AD2406: Me.Text = from_stack_1
  loc_AD240B: FFree1Ad var_88
  loc_AD240E: FLdRfVar var_98
  loc_AD2411: FLdPr Me
  loc_AD2414: VCallAd Control_ID_DereTifaTxt
  loc_AD2417: FStAdFunc var_88
  loc_AD241A: FLdPr var_88
  loc_AD241D:  = Me.Text
  loc_AD2422: LitI2_Byte &HFF
  loc_AD2424: LitI2_Byte 0
  loc_AD2426: ILdRf var_98
  loc_AD2429: LitStr "ingrese descuento de recargo"
  loc_AD242C: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AD2431: FStStrNoPop var_AC
  loc_AD2434: FLdPr Me
  loc_AD2437: MemStStrCopy
  loc_AD243B: FFreeStr var_98 = ""
  loc_AD2442: FFree1Ad var_88
  loc_AD2445: FLdPr Me
  loc_AD2448: MemLdStr global_60
  loc_AD244B: LitStr vbNullString
  loc_AD244E: NeStr
  loc_AD2450: BranchF loc_AD2476
  loc_AD2453: FLdPr Me
  loc_AD2456: MemLdStr global_60
  loc_AD2459: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD245E: FLdPr Me
  loc_AD2461: VCallAd Control_ID_DereTifaTxt
  loc_AD2464: CVarAd
  loc_AD2468: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD246D: FFree1Var var_A8 = ""
  loc_AD2470: LitI2_Byte &HFF
  loc_AD2472: IStI2 Cancel
  loc_AD2475: ExitProcHresult
  loc_AD2476: FLdRfVar var_98
  loc_AD2479: FLdPr Me
  loc_AD247C: VCallAd Control_ID_DereTifaTxt
  loc_AD247F: FStAdFunc var_88
  loc_AD2482: FLdPr var_88
  loc_AD2485:  = Me.Text
  loc_AD248A: ILdRf var_98
  loc_AD248D: CR8Str
  loc_AD248F: LitI2_Byte &H64
  loc_AD2491: CR8I2
  loc_AD2492: GtR4
  loc_AD2493: FFree1Str var_98
  loc_AD2496: FFree1Ad var_88
  loc_AD2499: BranchF loc_AD24BC
  loc_AD249C: LitStr "El porcentaje no puede ser mayor a 100"
  loc_AD249F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD24A4: FLdPr Me
  loc_AD24A7: VCallAd Control_ID_DereTifaTxt
  loc_AD24AA: CVarAd
  loc_AD24AE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD24B3: FFree1Var var_A8 = ""
  loc_AD24B6: LitI2_Byte &HFF
  loc_AD24B8: IStI2 Cancel
  loc_AD24BB: ExitProcHresult
  loc_AD24BC: ExitProcHresult
  loc_AD24BD: LitI2_Byte &HFC
End Sub

Private Sub cmdCancelar_Click() 'A74160
  'Data Table: 512094
  loc_A740F4: LitI2_Byte 0
  loc_A740F6: FLdPr Me
  loc_A740F9: MemStI2 global_56
  loc_A740FC: LitI2_Byte 0
  loc_A740FE: ILdRf Me
  loc_A74101: CastAd
  loc_A74104: FStAdFunc var_88
  loc_A74107: FLdRfVar var_88
  loc_A7410A: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_A7410F: FFree1Ad var_88
  loc_A74112: LitI4 0
  loc_A74117: LitI4 0
  loc_A7411C: FLdRfVar var_8C
  loc_A7411F: Redim
  loc_A74129: FLdPr Me
  loc_A7412C: VCallAd Control_ID_dgdABMS
  loc_A7412F: CVarAd
  loc_A74133: ParmAry1St
  loc_A74139: FLdRfVar var_8C
  loc_A7413C: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A74141: FLdRfVar var_8C
  loc_A74144: Erase
  loc_A74145: Call EnlazaTodo()
  loc_A7414A: ILdRf Me
  loc_A7414D: CastAd
  loc_A74150: FStAdFunc var_88
  loc_A74153: FLdRfVar var_88
  loc_A74156: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_A7415B: FFree1Ad var_88
  loc_A7415E: ExitProcHresult
End Sub

Private Sub ExpeTifaTxt_GotFocus() '9BEAF0
  'Data Table: 512094
  loc_9BEADC: FLdPr Me
  loc_9BEADF: VCallAd Control_ID_ExpeTifaTxt
  loc_9BEAE2: CVarAd
  loc_9BEAE6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BEAEB: FFree1Var var_94 = ""
  loc_9BEAEE: ExitProcHresult
End Sub

Private Sub DetaTifaTxt_GotFocus() '9BEAA8
  'Data Table: 512094
  loc_9BEA94: FLdPr Me
  loc_9BEA97: VCallAd Control_ID_DetaTifaTxt
  loc_9BEA9A: CVarAd
  loc_9BEA9E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BEAA3: FFree1Var var_94 = ""
  loc_9BEAA6: ExitProcHresult
End Sub

Private Sub DetaTifaTxt_Validate(Cancel As Boolean) 'A90C54
  'Data Table: 512094
  loc_A90BB4: FLdRfVar var_8A
  loc_A90BB7: FLdPr Me
  loc_A90BBA: VCallAd Control_ID_cmdCancelar
  loc_A90BBD: FStAdFunc var_88
  loc_A90BC0: FLdPr var_88
  loc_A90BC3:  = Me.Value
  loc_A90BC8: FLdI2 var_8A
  loc_A90BCB: NotI4
  loc_A90BCC: FLdRfVar var_92
  loc_A90BCF: FLdPr Me
  loc_A90BD2: VCallAd Control_ID_DetaTifaTxt
  loc_A90BD5: FStAdFunc var_90
  loc_A90BD8: FLdPr var_90
  loc_A90BDB:  = Me.Enabled
  loc_A90BE0: FLdI2 var_92
  loc_A90BE3: AndI4
  loc_A90BE4: FFreeAd var_88 = ""
  loc_A90BEB: BranchF loc_A90C51
  loc_A90BEE: FLdRfVar var_98
  loc_A90BF1: FLdPr Me
  loc_A90BF4: VCallAd Control_ID_DetaTifaTxt
  loc_A90BF7: FStAdFunc var_88
  loc_A90BFA: FLdPr var_88
  loc_A90BFD:  = Me.Text
  loc_A90C02: ILdRf var_98
  loc_A90C05: LitStr "Facilidad"
  loc_A90C08: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A90C0D: FStStrNoPop var_9C
  loc_A90C10: FLdPr Me
  loc_A90C13: MemStStrCopy
  loc_A90C17: FFreeStr var_98 = ""
  loc_A90C1E: FFree1Ad var_88
  loc_A90C21: FLdPr Me
  loc_A90C24: MemLdStr global_60
  loc_A90C27: LitStr vbNullString
  loc_A90C2A: NeStr
  loc_A90C2C: BranchF loc_A90C51
  loc_A90C2F: FLdPr Me
  loc_A90C32: MemLdStr global_60
  loc_A90C35: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A90C3A: FLdPr Me
  loc_A90C3D: VCallAd Control_ID_DetaTifaTxt
  loc_A90C40: CVarAd
  loc_A90C44: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A90C49: FFree1Var var_AC = ""
  loc_A90C4C: LitI2_Byte &HFF
  loc_A90C4E: IStI2 Cancel
  loc_A90C51: ExitProcHresult
End Sub

Private Sub ResoTifaTxt_GotFocus() '9BF000
  'Data Table: 512094
  loc_9BEFEC: FLdPr Me
  loc_9BEFEF: VCallAd Control_ID_ResoTifaTxt
  loc_9BEFF2: CVarAd
  loc_9BEFF6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BEFFB: FFree1Var var_94 = ""
  loc_9BEFFE: ExitProcHresult
End Sub

Private Sub MomiTifaTxt_GotFocus() '9BEEE0
  'Data Table: 512094
  loc_9BEECC: FLdPr Me
  loc_9BEECF: VCallAd Control_ID_MomiTifaTxt
  loc_9BEED2: CVarAd
  loc_9BEED6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BEEDB: FFree1Var var_94 = ""
  loc_9BEEDE: ExitProcHresult
End Sub

Private Sub MomiTifaTxt_KeyPress(KeyAscii As Integer) 'A06CF0
  'Data Table: 512094
  loc_A06CBC: LitStr "0123456789.,"
  loc_A06CBF: FStStrCopy var_88
  loc_A06CC2: FLdRfVar var_88
  loc_A06CC5: ILdRf KeyAscii
  loc_A06CC8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A06CCD: IStI2 KeyAscii
  loc_A06CD0: FFree1Str var_88
  loc_A06CD3: ILdI2 KeyAscii
  loc_A06CD6: LitStr "."
  loc_A06CD9: ImpAdCallI2 Asc()
  loc_A06CDE: EqI2
  loc_A06CDF: BranchF loc_A06CED
  loc_A06CE2: LitStr ","
  loc_A06CE5: ImpAdCallI2 Asc()
  loc_A06CEA: IStI2 KeyAscii
  loc_A06CED: ExitProcHresult
End Sub

Private Sub MomiTifaTxt_LostFocus() 'A76678
  'Data Table: 512094
  loc_A76614: FLdRfVar var_8C
  loc_A76617: FLdPr Me
  loc_A7661A: VCallAd Control_ID_MomiTifaTxt
  loc_A7661D: FStAdFunc var_88
  loc_A76620: FLdPr var_88
  loc_A76623:  = Me.Text
  loc_A76628: LitI4 1
  loc_A7662D: LitI4 1
  loc_A76632: LitVarStr var_AC, "##0.00"
  loc_A76637: FStVarCopyObj var_BC
  loc_A7663A: FLdRfVar var_BC
  loc_A7663D: FLdZeroAd var_8C
  loc_A76640: CVarStr var_9C
  loc_A76643: FLdRfVar var_CC
  loc_A76646: ImpAdCallFPR4  = Format(, )
  loc_A7664B: FLdRfVar var_CC
  loc_A7664E: CStrVarVal var_D0
  loc_A76652: FLdPr Me
  loc_A76655: VCallAd Control_ID_MomiTifaTxt
  loc_A76658: FStAdFunc var_D4
  loc_A7665B: FLdPr var_D4
  loc_A7665E: Me.Text = from_stack_1
  loc_A76663: FFree1Str var_D0
  loc_A76666: FFreeAd var_88 = ""
  loc_A7666D: FFreeVar var_9C = "": var_BC = ""
  loc_A76676: ExitProcHresult
End Sub

Private Sub MomiTifaTxt_Validate(Cancel As Boolean) 'AB67B4
  'Data Table: 512094
  loc_AB66D0: FLdRfVar var_8A
  loc_AB66D3: FLdPr Me
  loc_AB66D6: VCallAd Control_ID_cmdCancelar
  loc_AB66D9: FStAdFunc var_88
  loc_AB66DC: FLdPr var_88
  loc_AB66DF:  = Me.Value
  loc_AB66E4: FLdI2 var_8A
  loc_AB66E7: NotI4
  loc_AB66E8: FLdRfVar var_92
  loc_AB66EB: FLdPr Me
  loc_AB66EE: VCallAd Control_ID_MomiTifaTxt
  loc_AB66F1: FStAdFunc var_90
  loc_AB66F4: FLdPr var_90
  loc_AB66F7:  = Me.Enabled
  loc_AB66FC: FLdI2 var_92
  loc_AB66FF: AndI4
  loc_AB6700: FFreeAd var_88 = ""
  loc_AB6707: BranchF loc_AB67B1
  loc_AB670A: FLdRfVar var_98
  loc_AB670D: FLdPr Me
  loc_AB6710: VCallAd Control_ID_MomiTifaTxt
  loc_AB6713: FStAdFunc var_88
  loc_AB6716: FLdPr var_88
  loc_AB6719:  = Me.Text
  loc_AB671E: FLdZeroAd var_98
  loc_AB6721: CVarStr var_A8
  loc_AB6724: ImpAdCallI2 IsNumeric()
  loc_AB6729: NotI4
  loc_AB672A: FFree1Ad var_88
  loc_AB672D: FFree1Var var_A8 = ""
  loc_AB6730: BranchF loc_AB674A
  loc_AB6733: LitStr "0"
  loc_AB6736: FLdPr Me
  loc_AB6739: VCallAd Control_ID_MomiTifaTxt
  loc_AB673C: FStAdFunc var_88
  loc_AB673F: FLdPr var_88
  loc_AB6742: Me.Text = from_stack_1
  loc_AB6747: FFree1Ad var_88
  loc_AB674A: FLdRfVar var_98
  loc_AB674D: FLdPr Me
  loc_AB6750: VCallAd Control_ID_MomiTifaTxt
  loc_AB6753: FStAdFunc var_88
  loc_AB6756: FLdPr var_88
  loc_AB6759:  = Me.Text
  loc_AB675E: LitI2_Byte &HFF
  loc_AB6760: LitI2_Byte 0
  loc_AB6762: ILdRf var_98
  loc_AB6765: LitStr "ingrese importe"
  loc_AB6768: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AB676D: FStStrNoPop var_AC
  loc_AB6770: FLdPr Me
  loc_AB6773: MemStStrCopy
  loc_AB6777: FFreeStr var_98 = ""
  loc_AB677E: FFree1Ad var_88
  loc_AB6781: FLdPr Me
  loc_AB6784: MemLdStr global_60
  loc_AB6787: LitStr vbNullString
  loc_AB678A: NeStr
  loc_AB678C: BranchF loc_AB67B1
  loc_AB678F: FLdPr Me
  loc_AB6792: MemLdStr global_60
  loc_AB6795: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB679A: FLdPr Me
  loc_AB679D: VCallAd Control_ID_MomiTifaTxt
  loc_AB67A0: CVarAd
  loc_AB67A4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB67A9: FFree1Var var_A8 = ""
  loc_AB67AC: LitI2_Byte &HFF
  loc_AB67AE: IStI2 Cancel
  loc_AB67B1: ExitProcHresult
End Sub

Private Sub InteTifaTxt_GotFocus() '9BEE98
  'Data Table: 512094
  loc_9BEE84: FLdPr Me
  loc_9BEE87: VCallAd Control_ID_InteTifaTxt
  loc_9BEE8A: CVarAd
  loc_9BEE8E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BEE93: FFree1Var var_94 = ""
  loc_9BEE96: ExitProcHresult
End Sub

Private Sub InteTifaTxt_KeyPress(KeyAscii As Integer) 'A07CC8
  'Data Table: 512094
  loc_A07C94: LitStr "1234567890,."
  loc_A07C97: FStStrCopy var_88
  loc_A07C9A: FLdRfVar var_88
  loc_A07C9D: ILdRf KeyAscii
  loc_A07CA0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A07CA5: IStI2 KeyAscii
  loc_A07CA8: FFree1Str var_88
  loc_A07CAB: ILdI2 KeyAscii
  loc_A07CAE: LitStr "."
  loc_A07CB1: ImpAdCallI2 Asc()
  loc_A07CB6: EqI2
  loc_A07CB7: BranchF loc_A07CC5
  loc_A07CBA: LitStr ","
  loc_A07CBD: ImpAdCallI2 Asc()
  loc_A07CC2: IStI2 KeyAscii
  loc_A07CC5: ExitProcHresult
  loc_A07CC6: GtI4
End Sub

Private Sub InteTifaTxt_LostFocus() 'A76308
  'Data Table: 512094
  loc_A762A4: FLdRfVar var_8C
  loc_A762A7: FLdPr Me
  loc_A762AA: VCallAd Control_ID_InteTifaTxt
  loc_A762AD: FStAdFunc var_88
  loc_A762B0: FLdPr var_88
  loc_A762B3:  = Me.Text
  loc_A762B8: LitI4 1
  loc_A762BD: LitI4 1
  loc_A762C2: LitVarStr var_AC, "##0.0000"
  loc_A762C7: FStVarCopyObj var_BC
  loc_A762CA: FLdRfVar var_BC
  loc_A762CD: FLdZeroAd var_8C
  loc_A762D0: CVarStr var_9C
  loc_A762D3: FLdRfVar var_CC
  loc_A762D6: ImpAdCallFPR4  = Format(, )
  loc_A762DB: FLdRfVar var_CC
  loc_A762DE: CStrVarVal var_D0
  loc_A762E2: FLdPr Me
  loc_A762E5: VCallAd Control_ID_InteTifaTxt
  loc_A762E8: FStAdFunc var_D4
  loc_A762EB: FLdPr var_D4
  loc_A762EE: Me.Text = from_stack_1
  loc_A762F3: FFree1Str var_D0
  loc_A762F6: FFreeAd var_88 = ""
  loc_A762FD: FFreeVar var_9C = "": var_BC = ""
  loc_A76306: ExitProcHresult
End Sub

Private Sub InteTifaTxt_Validate(Cancel As Boolean) 'AD3770
  'Data Table: 512094
  loc_AD3644: FLdRfVar var_8A
  loc_AD3647: FLdPr Me
  loc_AD364A: VCallAd Control_ID_cmdCancelar
  loc_AD364D: FStAdFunc var_88
  loc_AD3650: FLdPr var_88
  loc_AD3653:  = Me.Value
  loc_AD3658: FLdI2 var_8A
  loc_AD365B: NotI4
  loc_AD365C: FLdRfVar var_92
  loc_AD365F: FLdPr Me
  loc_AD3662: VCallAd Control_ID_InteTifaTxt
  loc_AD3665: FStAdFunc var_90
  loc_AD3668: FLdPr var_90
  loc_AD366B:  = Me.Enabled
  loc_AD3670: FLdI2 var_92
  loc_AD3673: AndI4
  loc_AD3674: FFreeAd var_88 = ""
  loc_AD367B: BranchF loc_AD376C
  loc_AD367E: FLdRfVar var_98
  loc_AD3681: FLdPr Me
  loc_AD3684: VCallAd Control_ID_InteTifaTxt
  loc_AD3687: FStAdFunc var_88
  loc_AD368A: FLdPr var_88
  loc_AD368D:  = Me.Text
  loc_AD3692: FLdZeroAd var_98
  loc_AD3695: CVarStr var_A8
  loc_AD3698: ImpAdCallI2 IsNumeric()
  loc_AD369D: NotI4
  loc_AD369E: FFree1Ad var_88
  loc_AD36A1: FFree1Var var_A8 = ""
  loc_AD36A4: BranchF loc_AD36BE
  loc_AD36A7: LitStr "0"
  loc_AD36AA: FLdPr Me
  loc_AD36AD: VCallAd Control_ID_InteTifaTxt
  loc_AD36B0: FStAdFunc var_88
  loc_AD36B3: FLdPr var_88
  loc_AD36B6: Me.Text = from_stack_1
  loc_AD36BB: FFree1Ad var_88
  loc_AD36BE: FLdRfVar var_98
  loc_AD36C1: FLdPr Me
  loc_AD36C4: VCallAd Control_ID_InteTifaTxt
  loc_AD36C7: FStAdFunc var_88
  loc_AD36CA: FLdPr var_88
  loc_AD36CD:  = Me.Text
  loc_AD36D2: LitI2_Byte &HFF
  loc_AD36D4: LitI2_Byte 0
  loc_AD36D6: ILdRf var_98
  loc_AD36D9: LitStr "ingrese el interes"
  loc_AD36DC: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AD36E1: FStStrNoPop var_AC
  loc_AD36E4: FLdPr Me
  loc_AD36E7: MemStStrCopy
  loc_AD36EB: FFreeStr var_98 = ""
  loc_AD36F2: FFree1Ad var_88
  loc_AD36F5: FLdPr Me
  loc_AD36F8: MemLdStr global_60
  loc_AD36FB: LitStr vbNullString
  loc_AD36FE: NeStr
  loc_AD3700: BranchF loc_AD3726
  loc_AD3703: FLdPr Me
  loc_AD3706: MemLdStr global_60
  loc_AD3709: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD370E: FLdPr Me
  loc_AD3711: VCallAd Control_ID_InteTifaTxt
  loc_AD3714: CVarAd
  loc_AD3718: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD371D: FFree1Var var_A8 = ""
  loc_AD3720: LitI2_Byte &HFF
  loc_AD3722: IStI2 Cancel
  loc_AD3725: ExitProcHresult
  loc_AD3726: FLdRfVar var_98
  loc_AD3729: FLdPr Me
  loc_AD372C: VCallAd Control_ID_InteTifaTxt
  loc_AD372F: FStAdFunc var_88
  loc_AD3732: FLdPr var_88
  loc_AD3735:  = Me.Text
  loc_AD373A: ILdRf var_98
  loc_AD373D: CR8Str
  loc_AD373F: LitI2_Byte &H64
  loc_AD3741: CR8I2
  loc_AD3742: GtR4
  loc_AD3743: FFree1Str var_98
  loc_AD3746: FFree1Ad var_88
  loc_AD3749: BranchF loc_AD376C
  loc_AD374C: LitStr "El porcentaje no puede ser mayor a 100"
  loc_AD374F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD3754: FLdPr Me
  loc_AD3757: VCallAd Control_ID_InteTifaTxt
  loc_AD375A: CVarAd
  loc_AD375E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD3763: FFree1Var var_A8 = ""
  loc_AD3766: LitI2_Byte &HFF
  loc_AD3768: IStI2 Cancel
  loc_AD376B: ExitProcHresult
  loc_AD376C: ExitProcHresult
  loc_AD376D: FLdPr arg_0
End Sub

Public Sub EnlazaTodo() 'AF3E48
  'Data Table: 512094
  loc_AF3CD8: LitI4 0
  loc_AF3CDD: LitI4 &H12
  loc_AF3CE2: FLdRfVar var_88
  loc_AF3CE5: Redim
  loc_AF3CEF: FLdPr Me
  loc_AF3CF2: MemLdRfVar from_stack_1.global_52
  loc_AF3CF5: NewIfNullAd
  loc_AF3CF8: FStAd var_8C 
  loc_AF3CFC: FLdRfVar var_8C
  loc_AF3CFF: CVarRef
  loc_AF3D04: ParmAry1St
  loc_AF3D0A: FLdPr Me
  loc_AF3D0D: VCallAd Control_ID_CodiTifaTxt
  loc_AF3D10: CVarAd
  loc_AF3D14: ParmAry1St
  loc_AF3D1A: FLdPr Me
  loc_AF3D1D: VCallAd Control_ID_DetaTifaTxt
  loc_AF3D20: CVarAd
  loc_AF3D24: ParmAry1St
  loc_AF3D2A: FLdPr Me
  loc_AF3D2D: VCallAd Control_ID_TipoTifaCbo
  loc_AF3D30: CVarAd
  loc_AF3D34: ParmAry1St
  loc_AF3D3A: FLdPr Me
  loc_AF3D3D: VCallAd Control_ID_EmitTifaCbo
  loc_AF3D40: CVarAd
  loc_AF3D44: ParmAry1St
  loc_AF3D4A: FLdPr Me
  loc_AF3D4D: VCallAd Control_ID_ExpeTifaTxt
  loc_AF3D50: CVarAd
  loc_AF3D54: ParmAry1St
  loc_AF3D5A: FLdPr Me
  loc_AF3D5D: VCallAd Control_ID_ResoTifaTxt
  loc_AF3D60: CVarAd
  loc_AF3D64: ParmAry1St
  loc_AF3D6A: FLdPr Me
  loc_AF3D6D: VCallAd Control_ID_MecaTifaCbo
  loc_AF3D70: CVarAd
  loc_AF3D74: ParmAry1St
  loc_AF3D7A: FLdPr Me
  loc_AF3D7D: VCallAd Control_ID_InteTifaTxt
  loc_AF3D80: CVarAd
  loc_AF3D84: ParmAry1St
  loc_AF3D8A: FLdPr Me
  loc_AF3D8D: VCallAd Control_ID_MomiTifaTxt
  loc_AF3D90: CVarAd
  loc_AF3D94: ParmAry1St
  loc_AF3D9A: FLdPr Me
  loc_AF3D9D: VCallAd Control_ID_DecaTifaTxt
  loc_AF3DA0: CVarAd
  loc_AF3DA4: ParmAry1St
  loc_AF3DAA: FLdPr Me
  loc_AF3DAD: VCallAd Control_ID_DereTifaTxt
  loc_AF3DB0: CVarAd
  loc_AF3DB4: ParmAry1St
  loc_AF3DBA: FLdPr Me
  loc_AF3DBD: VCallAd Control_ID_TianTifaCbo
  loc_AF3DC0: CVarAd
  loc_AF3DC4: ParmAry1St
  loc_AF3DCA: FLdPr Me
  loc_AF3DCD: VCallAd Control_ID_AntiTifaTxt
  loc_AF3DD0: CVarAd
  loc_AF3DD4: ParmAry1St
  loc_AF3DDA: FLdPr Me
  loc_AF3DDD: VCallAd Control_ID_CumiTifaTxt
  loc_AF3DE0: CVarAd
  loc_AF3DE4: ParmAry1St
  loc_AF3DEA: FLdPr Me
  loc_AF3DED: VCallAd Control_ID_CumaTifaTxt
  loc_AF3DF0: CVarAd
  loc_AF3DF4: ParmAry1St
  loc_AF3DFA: FLdPr Me
  loc_AF3DFD: VCallAd Control_ID_ImmiTifaTxt
  loc_AF3E00: CVarAd
  loc_AF3E04: ParmAry1St
  loc_AF3E0A: FLdPr Me
  loc_AF3E0D: VCallAd Control_ID_VecuTifaCbo
  loc_AF3E10: CVarAd
  loc_AF3E14: ParmAry1St
  loc_AF3E1A: FLdPr Me
  loc_AF3E1D: VCallAd Control_ID_CbuTifaChk
  loc_AF3E20: CVarAd
  loc_AF3E24: ParmAry1St
  loc_AF3E2A: FLdRfVar var_88
  loc_AF3E2D: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AF3E32: ILdRf var_8C
  loc_AF3E35: CastAd
  loc_AF3E38: FLdPr Me
  loc_AF3E3B: MemStAdFunc
  loc_AF3E3F: FLdRfVar var_88
  loc_AF3E42: Erase
  loc_AF3E43: FFree1Ad var_8C
  loc_AF3E46: ExitProcHresult
End Sub
