VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmCreditosaFavor
  Caption = "Consulta de Créditos a Favor"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HFF0000&
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 336
  ClientWidth = 15180
  ClientHeight = 10152
  Begin VB.TextBox txtTotaDere
    Left = 8520
    Top = 7200
    Width = 1815
    Height = 345
    TabIndex = 9
    Alignment = 1 'Right Justify
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox txtTotaReca
    Left = 8520
    Top = 7680
    Width = 1815
    Height = 345
    TabIndex = 8
    Alignment = 1 'Right Justify
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox txtTotal
    Left = 8520
    Top = 8160
    Width = 1815
    Height = 345
    TabIndex = 7
    Alignment = 1 'Right Justify
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.ComboBox OficinaCbo
    Style = 2
    ForeColor = &HFF0000&
    Left = 1080
    Top = 480
    Width = 2175
    Height = 420
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
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton BuscarCmd
    Left = 6360
    Top = 480
    Width = 450
    Height = 345
    TabIndex = 2
    Picture = "frmCreditosaFavor.frx":0000
    Style = 1
  End
  Begin VB.TextBox NumeCtaTxt
    ForeColor = &HFF0000&
    Left = 4320
    Top = 480
    Width = 1935
    Height = 345
    TabIndex = 1
    MaxLength = 11
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
  Begin VB.CommandButton SalirCmd
    Left = 14400
    Top = 840
    Width = 735
    Height = 615
    TabIndex = 4
    Picture = "frmCreditosaFavor.frx":00E2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSFlexGridLib.MSFlexGrid ctacteFlex
    Left = 120
    Top = 1560
    Width = 15015
    Height = 5535
    TabIndex = 3
    OleObjectBlob = "frmCreditosaFavor.frx":0334
    Appearance = 0 'Flat
  End
  Begin VB.Label DetaPersLbl
    ForeColor = &HFF0000&
    Left = 8760
    Top = 480
    Width = 5175
    Height = 315
    TabIndex = 15
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
  Begin VB.Label CucuPersLbl
    ForeColor = &HFF0000&
    Left = 6840
    Top = 480
    Width = 1695
    Height = 315
    TabIndex = 14
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
  Begin VB.Label DomiPersLbl
    ForeColor = &HFF0000&
    Left = 6840
    Top = 960
    Width = 6855
    Height = 315
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
  Begin VB.Label Label2
    Caption = "Total Créditos:"
    Left = 6600
    Top = 7200
    Width = 1770
    Height = 300
    TabIndex = 12
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label6
    Caption = "Total de créditos afectados en la cta cte:"
    Left = 3480
    Top = 7680
    Width = 4935
    Height = 300
    TabIndex = 11
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label8
    Caption = "Total:"
    Left = 7680
    Top = 8160
    Width = 690
    Height = 300
    TabIndex = 10
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label5
    Caption = "Oficina:"
    Left = 240
    Top = 480
    Width = 795
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
  Begin VB.Label Label3
    Caption = "Cuenta:"
    Left = 3360
    Top = 480
    Width = 840
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

Attribute VB_Name = "frmCreditosaFavor"


Private Sub SalirCmd_Click() '9CD788
  'Data Table: 45A558
  loc_9CD770: ILdRf Me
  loc_9CD773: FStAdNoPop
  loc_9CD777: ImpAdLdRf MemVar_D9C5D8
  loc_9CD77A: NewIfNullPr Global
  loc_9CD77D: Global.Unload from_stack_1
  loc_9CD782: FFree1Ad var_88
  loc_9CD785: ExitProcHresult
End Sub

Private Sub BuscarCmd_Click() 'C25A84
  'Data Table: 45A558
  loc_C25078: Call Proc_22_10_B0D46C()
  loc_C2507D: FLdRfVar var_DA
  loc_C25080: FLdPr Me
  loc_C25083: VCallAd Control_ID_OficinaCbo
  loc_C25086: FStAdFunc var_D8
  loc_C25089: FLdPr var_D8
  loc_C2508C:  = Me.ListIndex
  loc_C25091: FLdI2 var_DA
  loc_C25094: FStI2 var_DC
  loc_C25097: FFree1Ad var_D8
  loc_C2509A: FLdI2 var_DC
  loc_C2509D: LitI2_Byte 0
  loc_C2509F: EqI2
  loc_C250A0: BranchF loc_C250AE
  loc_C250A3: LitI2_Byte 1
  loc_C250A5: CUI1I2
  loc_C250A7: ImpAdStUI1 MemVar_D93038
  loc_C250AB: Branch loc_C250E7
  loc_C250AE: FLdI2 var_DC
  loc_C250B1: LitI2_Byte 1
  loc_C250B3: EqI2
  loc_C250B4: BranchF loc_C250C2
  loc_C250B7: LitI2_Byte 2
  loc_C250B9: CUI1I2
  loc_C250BB: ImpAdStUI1 MemVar_D93038
  loc_C250BF: Branch loc_C250E7
  loc_C250C2: FLdI2 var_DC
  loc_C250C5: LitI2_Byte 2
  loc_C250C7: EqI2
  loc_C250C8: BranchF loc_C250D6
  loc_C250CB: LitI2_Byte 3
  loc_C250CD: CUI1I2
  loc_C250CF: ImpAdStUI1 MemVar_D93038
  loc_C250D3: Branch loc_C250E7
  loc_C250D6: FLdI2 var_DC
  loc_C250D9: LitI2_Byte 3
  loc_C250DB: EqI2
  loc_C250DC: BranchF loc_C250E7
  loc_C250DF: LitI2_Byte 4
  loc_C250E1: CUI1I2
  loc_C250E3: ImpAdStUI1 MemVar_D93038
  loc_C250E7: LitI2_Byte 0
  loc_C250E9: CR8I2
  loc_C250EA: FStFPR8 var_CC
  loc_C250ED: LitI2_Byte 0
  loc_C250EF: CR8I2
  loc_C250F0: FStFPR8 var_D4
  loc_C250F3: LitI4 1
  loc_C250F8: LitI4 1
  loc_C250FD: LitVarStr var_FC, "0.00"
  loc_C25102: FStVarCopyObj var_10C
  loc_C25105: FLdRfVar var_10C
  loc_C25108: FLdRfVar var_CC
  loc_C2510B: CVarRef
  loc_C25110: FLdRfVar var_11C
  loc_C25113: ImpAdCallFPR4  = Format(, )
  loc_C25118: FLdRfVar var_11C
  loc_C2511B: CStrVarVal var_120
  loc_C2511F: FLdPr Me
  loc_C25122: VCallAd Control_ID_txtTotaDere
  loc_C25125: FStAdFunc var_D8
  loc_C25128: FLdPr var_D8
  loc_C2512B: Me.Text = from_stack_1
  loc_C25130: FFree1Str var_120
  loc_C25133: FFree1Ad var_D8
  loc_C25136: FFreeVar var_10C = ""
  loc_C2513D: LitI4 1
  loc_C25142: LitI4 1
  loc_C25147: LitVarStr var_FC, "0.00"
  loc_C2514C: FStVarCopyObj var_10C
  loc_C2514F: FLdRfVar var_10C
  loc_C25152: FLdRfVar var_D4
  loc_C25155: CVarRef
  loc_C2515A: FLdRfVar var_11C
  loc_C2515D: ImpAdCallFPR4  = Format(, )
  loc_C25162: FLdRfVar var_11C
  loc_C25165: CStrVarVal var_120
  loc_C25169: FLdPr Me
  loc_C2516C: VCallAd Control_ID_txtTotaReca
  loc_C2516F: FStAdFunc var_D8
  loc_C25172: FLdPr var_D8
  loc_C25175: Me.Text = from_stack_1
  loc_C2517A: FFree1Str var_120
  loc_C2517D: FFree1Ad var_D8
  loc_C25180: FFreeVar var_10C = ""
  loc_C25187: LitI4 2
  loc_C2518C: FLdFPR8 var_CC
  loc_C2518F: FLdFPR8 var_D4
  loc_C25192: SubR4
  loc_C25193: CVarR8
  loc_C25197: FLdRfVar var_11C
  loc_C2519A: ImpAdCallFPR4  = Round(, )
  loc_C2519F: LitI4 1
  loc_C251A4: LitI4 1
  loc_C251A9: LitVarStr var_FC, "0.00"
  loc_C251AE: FStVarCopyObj var_130
  loc_C251B1: FLdRfVar var_130
  loc_C251B4: FLdRfVar var_11C
  loc_C251B7: FLdRfVar var_140
  loc_C251BA: ImpAdCallFPR4  = Format(, )
  loc_C251BF: FLdRfVar var_140
  loc_C251C2: CStrVarVal var_120
  loc_C251C6: FLdPr Me
  loc_C251C9: VCallAd Control_ID_txtTotal
  loc_C251CC: FStAdFunc var_D8
  loc_C251CF: FLdPr var_D8
  loc_C251D2: Me.Text = from_stack_1
  loc_C251D7: FFree1Str var_120
  loc_C251DA: FFree1Ad var_D8
  loc_C251DD: FFreeVar var_10C = "": var_11C = "": var_130 = ""
  loc_C251E8: LitI2_Byte 0
  loc_C251EA: CR8I2
  loc_C251EB: FStFPR8 var_C0
  loc_C251EE: LitStr "SELECT * FROM creditos LEFT JOIN tipomovi ON tipomovi.CodiTimo = creditos.CodiTimo"
  loc_C251F1: LitStr " WHERE CodiOfic = "
  loc_C251F4: ConcatStr
  loc_C251F5: FStStrNoPop var_120
  loc_C251F8: ImpAdLdUI1
  loc_C251FC: CStrI2
  loc_C251FE: FStStrNoPop var_144
  loc_C25201: ConcatStr
  loc_C25202: FStStrNoPop var_148
  loc_C25205: LitStr " AND CuenCtct = '"
  loc_C25208: ConcatStr
  loc_C25209: FStStrNoPop var_150
  loc_C2520C: FLdRfVar var_14C
  loc_C2520F: FLdPr Me
  loc_C25212: VCallAd Control_ID_NumeCtaTxt
  loc_C25215: FStAdFunc var_D8
  loc_C25218: FLdPr var_D8
  loc_C2521B:  = Me.Text
  loc_C25220: ILdRf var_14C
  loc_C25223: ConcatStr
  loc_C25224: FStStrNoPop var_154
  loc_C25227: LitStr "'"
  loc_C2522A: ConcatStr
  loc_C2522B: FStStrNoPop var_158
  loc_C2522E: LitStr " ORDER BY creditos.CodiOfic, creditos.CuenCtct, creditos.NumeCred"
  loc_C25231: ConcatStr
  loc_C25232: FStStrNoPop var_15C
  loc_C25235: FLdPr Me
  loc_C25238: MemLdRfVar from_stack_1.global_52
  loc_C2523B: NewIfNullPr clscreditos
  loc_C2523E: Call clscreditos.RedefineRS(from_stack_1v)
  loc_C25243: FFreeStr var_120 = "": var_144 = "": var_148 = "": var_150 = "": var_14C = "": var_154 = "": var_158 = ""
  loc_C25256: FFree1Ad var_D8
  loc_C25259: FLdRfVar var_160
  loc_C2525C: FLdPr Me
  loc_C2525F: MemLdRfVar from_stack_1.global_52
  loc_C25262: NewIfNullPr clscreditos
  loc_C25265: from_stack_1 = clscreditos.RecordCount
  loc_C2526A: ILdRf var_160
  loc_C2526D: LitI4 0
  loc_C25272: GtI4
  loc_C25273: BranchF loc_C25A80
  loc_C25276: FLdPr Me
  loc_C25279: MemLdRfVar from_stack_1.global_52
  loc_C2527C: NewIfNullPr clscreditos
  loc_C2527F: Call clscreditos.MoveFirst()
  loc_C25284: FLdRfVar var_DA
  loc_C25287: FLdPr Me
  loc_C2528A: MemLdRfVar from_stack_1.global_52
  loc_C2528D: NewIfNullPr clscreditos
  loc_C25290: from_stack_1 = clscreditos.EOF
  loc_C25295: FLdI2 var_DA
  loc_C25298: NotI4
  loc_C25299: BranchF loc_C2599D
  loc_C2529C: FLdRfVar var_168
  loc_C2529F: FLdPr Me
  loc_C252A2: MemLdRfVar from_stack_1.global_52
  loc_C252A5: NewIfNullPr clscreditos
  loc_C252A8: from_stack_1 = clscreditos.DebeCred
  loc_C252AD: LitI4 2
  loc_C252B2: FLdFPR8 var_CC
  loc_C252B5: FnCDblR8
  loc_C252B7: FLdFPR8 var_168
  loc_C252BA: FnCDblR8
  loc_C252BC: AddR8
  loc_C252BD: CVarR8
  loc_C252C1: FLdRfVar var_11C
  loc_C252C4: ImpAdCallFPR4  = Round(, )
  loc_C252C9: FLdRfVar var_11C
  loc_C252CC: CR4Var
  loc_C252CD: FStFPR8 var_CC
  loc_C252D0: FFreeVar var_10C = ""
  loc_C252D7: FLdRfVar var_168
  loc_C252DA: FLdPr Me
  loc_C252DD: MemLdRfVar from_stack_1.global_52
  loc_C252E0: NewIfNullPr clscreditos
  loc_C252E3: from_stack_1 = clscreditos.CredCred
  loc_C252E8: LitI4 2
  loc_C252ED: FLdFPR8 var_D4
  loc_C252F0: FnCDblR8
  loc_C252F2: FLdFPR8 var_168
  loc_C252F5: FnCDblR8
  loc_C252F7: AddR8
  loc_C252F8: CVarR8
  loc_C252FC: FLdRfVar var_11C
  loc_C252FF: ImpAdCallFPR4  = Round(, )
  loc_C25304: FLdRfVar var_11C
  loc_C25307: CR4Var
  loc_C25308: FStFPR8 var_D4
  loc_C2530B: FFreeVar var_10C = ""
  loc_C25312: FLdRfVar var_DA
  loc_C25315: FLdPr Me
  loc_C25318: MemLdRfVar from_stack_1.global_52
  loc_C2531B: NewIfNullPr clscreditos
  loc_C2531E: from_stack_1 = clscreditos.BimeCtct
  loc_C25323: LitI4 1
  loc_C25328: LitI4 1
  loc_C2532D: LitVarStr var_FC, "00"
  loc_C25332: FStVarCopyObj var_11C
  loc_C25335: FLdRfVar var_11C
  loc_C25338: FLdI2 var_DA
  loc_C2533B: CVarI2 var_10C
  loc_C2533E: FLdRfVar var_130
  loc_C25341: ImpAdCallFPR4  = Format(, )
  loc_C25346: FLdRfVar var_130
  loc_C25349: LitVarStr var_178, "/"
  loc_C2534E: ConcatVar var_140
  loc_C25352: FLdRfVar var_17A
  loc_C25355: FLdPr Me
  loc_C25358: MemLdRfVar from_stack_1.global_52
  loc_C2535B: NewIfNullPr clscreditos
  loc_C2535E: from_stack_1 = clscreditos.PeriCtct
  loc_C25363: FLdI2 var_17A
  loc_C25366: CVarI2 var_18C
  loc_C25369: ConcatVar var_19C
  loc_C2536D: CStrVarTmp
  loc_C2536E: FLdRfVar var_92
  loc_C25371: StFixedStrFree
  loc_C25375: FFreeVar var_10C = "": var_11C = "": var_130 = "": var_140 = ""
  loc_C25382: FLdRfVar var_160
  loc_C25385: FLdPr Me
  loc_C25388: MemLdRfVar from_stack_1.global_52
  loc_C2538B: NewIfNullPr clscreditos
  loc_C2538E: from_stack_1 = clscreditos.NumeBole
  loc_C25393: LitI4 1
  loc_C25398: LitI4 1
  loc_C2539D: LitVarStr var_FC, "#######0"
  loc_C253A2: FStVarCopyObj var_11C
  loc_C253A5: FLdRfVar var_11C
  loc_C253A8: ILdRf var_160
  loc_C253AB: CVarI4
  loc_C253AF: FLdRfVar var_130
  loc_C253B2: ImpAdCallFPR4  = Format(, )
  loc_C253B7: FLdRfVar var_130
  loc_C253BA: LitVarStr var_178, "-"
  loc_C253BF: ConcatVar var_140
  loc_C253C3: FLdRfVar var_DA
  loc_C253C6: FLdPr Me
  loc_C253C9: MemLdRfVar from_stack_1.global_52
  loc_C253CC: NewIfNullPr clscreditos
  loc_C253CF: from_stack_1 = clscreditos.PeriBole
  loc_C253D4: FLdI2 var_DA
  loc_C253D7: CVarI2 var_18C
  loc_C253DA: ConcatVar var_19C
  loc_C253DE: CStrVarTmp
  loc_C253DF: FLdRfVar var_AC
  loc_C253E2: StFixedStrFree
  loc_C253E6: FFreeVar var_10C = "": var_11C = "": var_130 = "": var_140 = ""
  loc_C253F3: FLdRfVar var_168
  loc_C253F6: FLdPr Me
  loc_C253F9: MemLdRfVar from_stack_1.global_52
  loc_C253FC: NewIfNullPr clscreditos
  loc_C253FF: from_stack_1 = clscreditos.DebeCred
  loc_C25404: FLdFPR8 var_168
  loc_C25407: FnCDblR8
  loc_C25409: LitI2_Byte 0
  loc_C2540B: CR8I2
  loc_C2540C: NeR8
  loc_C2540D: BranchF loc_C25458
  loc_C25410: FLdRfVar var_168
  loc_C25413: FLdPr Me
  loc_C25416: MemLdRfVar from_stack_1.global_52
  loc_C25419: NewIfNullPr clscreditos
  loc_C2541C: from_stack_1 = clscreditos.DebeCred
  loc_C25421: LitI4 1
  loc_C25426: LitI4 1
  loc_C2542B: LitVarStr var_FC, "0.00"
  loc_C25430: FStVarCopyObj var_11C
  loc_C25433: FLdRfVar var_11C
  loc_C25436: FLdFPR8 var_168
  loc_C25439: CVarR8
  loc_C2543D: FLdRfVar var_130
  loc_C25440: ImpAdCallFPR4  = Format(, )
  loc_C25445: FLdRfVar var_130
  loc_C25448: CStrVarTmp
  loc_C25449: FStStr var_B4
  loc_C2544C: FFreeVar var_10C = "": var_11C = ""
  loc_C25455: Branch loc_C2545E
  loc_C25458: LitStr vbNullString
  loc_C2545B: FStStrCopy var_B4
  loc_C2545E: FLdRfVar var_168
  loc_C25461: FLdPr Me
  loc_C25464: MemLdRfVar from_stack_1.global_52
  loc_C25467: NewIfNullPr clscreditos
  loc_C2546A: from_stack_1 = clscreditos.CredCred
  loc_C2546F: FLdFPR8 var_168
  loc_C25472: FnCDblR8
  loc_C25474: LitI2_Byte 0
  loc_C25476: CR8I2
  loc_C25477: NeR8
  loc_C25478: BranchF loc_C254C3
  loc_C2547B: FLdRfVar var_168
  loc_C2547E: FLdPr Me
  loc_C25481: MemLdRfVar from_stack_1.global_52
  loc_C25484: NewIfNullPr clscreditos
  loc_C25487: from_stack_1 = clscreditos.CredCred
  loc_C2548C: LitI4 1
  loc_C25491: LitI4 1
  loc_C25496: LitVarStr var_FC, "0.00"
  loc_C2549B: FStVarCopyObj var_11C
  loc_C2549E: FLdRfVar var_11C
  loc_C254A1: FLdFPR8 var_168
  loc_C254A4: CVarR8
  loc_C254A8: FLdRfVar var_130
  loc_C254AB: ImpAdCallFPR4  = Format(, )
  loc_C254B0: FLdRfVar var_130
  loc_C254B3: CStrVarTmp
  loc_C254B4: FStStr var_B8
  loc_C254B7: FFreeVar var_10C = "": var_11C = ""
  loc_C254C0: Branch loc_C254C9
  loc_C254C3: LitStr vbNullString
  loc_C254C6: FStStrCopy var_B8
  loc_C254C9: FLdRfVar var_168
  loc_C254CC: FLdPr Me
  loc_C254CF: MemLdRfVar from_stack_1.global_52
  loc_C254D2: NewIfNullPr clscreditos
  loc_C254D5: from_stack_1 = clscreditos.DebeCred
  loc_C254DA: FLdRfVar var_1A4
  loc_C254DD: FLdPr Me
  loc_C254E0: MemLdRfVar from_stack_1.global_52
  loc_C254E3: NewIfNullPr clscreditos
  loc_C254E6: from_stack_1 = clscreditos.CredCred
  loc_C254EB: FLdFPR8 var_C0
  loc_C254EE: FLdFPR8 var_168
  loc_C254F1: FnCDblR8
  loc_C254F3: AddR8
  loc_C254F4: FLdFPR8 var_1A4
  loc_C254F7: FnCDblR8
  loc_C254F9: SubR4
  loc_C254FA: FStFPR8 var_C0
  loc_C254FD: FLdRfVar var_DA
  loc_C25500: FLdPr Me
  loc_C25503: MemLdRfVar from_stack_1.global_52
  loc_C25506: NewIfNullPr clscreditos
  loc_C25509: from_stack_1 = clscreditos.CodiOfic
  loc_C2550E: FLdUI1
  loc_C25512: CVarUI1
  loc_C25516: LitI4 9
  loc_C2551B: FLdRfVar var_10C
  loc_C2551E: ImpAdCallFPR4  = Chr()
  loc_C25523: FLdRfVar var_10C
  loc_C25526: ConcatVar var_11C
  loc_C2552A: FLdRfVar var_120
  loc_C2552D: FLdPr Me
  loc_C25530: MemLdRfVar from_stack_1.global_52
  loc_C25533: NewIfNullPr clscreditos
  loc_C25536: from_stack_1 = clscreditos.CuenCtct
  loc_C2553B: FLdZeroAd var_120
  loc_C2553E: CVarStr var_130
  loc_C25541: ConcatVar var_140
  loc_C25545: LitI4 9
  loc_C2554A: FLdRfVar var_19C
  loc_C2554D: ImpAdCallFPR4  = Chr()
  loc_C25552: FLdRfVar var_19C
  loc_C25555: ConcatVar var_1B4
  loc_C25559: FLdRfVar var_92
  loc_C2555C: LdFixedStr
  loc_C2555F: CVarStr var_1C4
  loc_C25562: ConcatVar var_1D4
  loc_C25566: LitI4 9
  loc_C2556B: FLdRfVar var_1E4
  loc_C2556E: ImpAdCallFPR4  = Chr()
  loc_C25573: FLdRfVar var_1E4
  loc_C25576: ConcatVar var_1F4
  loc_C2557A: FLdRfVar var_AC
  loc_C2557D: LdFixedStr
  loc_C25580: CVarStr var_204
  loc_C25583: ConcatVar var_214
  loc_C25587: LitI4 9
  loc_C2558C: FLdRfVar var_224
  loc_C2558F: ImpAdCallFPR4  = Chr()
  loc_C25594: FLdRfVar var_224
  loc_C25597: ConcatVar var_234
  loc_C2559B: FLdRfVar var_144
  loc_C2559E: FLdPr Me
  loc_C255A1: MemLdRfVar from_stack_1.global_52
  loc_C255A4: NewIfNullPr clscreditos
  loc_C255A7: from_stack_1 = clscreditos.FealCtct
  loc_C255AC: FLdZeroAd var_144
  loc_C255AF: CVarStr var_244
  loc_C255B2: ConcatVar var_254
  loc_C255B6: LitI4 9
  loc_C255BB: FLdRfVar var_264
  loc_C255BE: ImpAdCallFPR4  = Chr()
  loc_C255C3: FLdRfVar var_264
  loc_C255C6: ConcatVar var_274
  loc_C255CA: FLdRfVar var_17A
  loc_C255CD: FLdPr Me
  loc_C255D0: MemLdRfVar from_stack_1.global_52
  loc_C255D3: NewIfNullPr clscreditos
  loc_C255D6: from_stack_1 = clscreditos.CodiTili
  loc_C255DB: FLdUI1
  loc_C255DF: CVarUI1
  loc_C255E3: ConcatVar var_284
  loc_C255E7: LitI4 9
  loc_C255EC: FLdRfVar var_294
  loc_C255EF: ImpAdCallFPR4  = Chr()
  loc_C255F4: FLdRfVar var_294
  loc_C255F7: ConcatVar var_2A4
  loc_C255FB: FLdRfVar var_2A6
  loc_C255FE: FLdPr Me
  loc_C25601: MemLdRfVar from_stack_1.global_52
  loc_C25604: NewIfNullPr clscreditos
  loc_C25607: from_stack_1 = clscreditos.NumeLiqu
  loc_C2560C: FLdI2 var_2A6
  loc_C2560F: CVarI2 var_178
  loc_C25612: ConcatVar var_2B8
  loc_C25616: LitI4 9
  loc_C2561B: FLdRfVar var_2C8
  loc_C2561E: ImpAdCallFPR4  = Chr()
  loc_C25623: FLdRfVar var_2C8
  loc_C25626: ConcatVar var_2D8
  loc_C2562A: FLdRfVar var_148
  loc_C2562D: FLdPr Me
  loc_C25630: MemLdRfVar from_stack_1.global_52
  loc_C25633: NewIfNullPr clscreditos
  loc_C25636: from_stack_1 = clscreditos.CodiConc
  loc_C2563B: FLdZeroAd var_148
  loc_C2563E: CVarStr var_2E8
  loc_C25641: ConcatVar var_2F8
  loc_C25645: LitI4 9
  loc_C2564A: FLdRfVar var_308
  loc_C2564D: ImpAdCallFPR4  = Chr()
  loc_C25652: FLdRfVar var_308
  loc_C25655: ConcatVar var_318
  loc_C25659: FLdRfVar var_14C
  loc_C2565C: FLdPr Me
  loc_C2565F: MemLdRfVar from_stack_1.global_52
  loc_C25662: NewIfNullPr clscreditos
  loc_C25665: from_stack_1 = clscreditos.ExpeCred
  loc_C2566A: FLdZeroAd var_14C
  loc_C2566D: CVarStr var_328
  loc_C25670: ConcatVar var_338
  loc_C25674: LitI4 9
  loc_C25679: FLdRfVar var_348
  loc_C2567C: ImpAdCallFPR4  = Chr()
  loc_C25681: FLdRfVar var_348
  loc_C25684: ConcatVar var_358
  loc_C25688: FLdRfVar var_150
  loc_C2568B: FLdPr Me
  loc_C2568E: MemLdRfVar from_stack_1.global_52
  loc_C25691: NewIfNullPr clscreditos
  loc_C25694: from_stack_1 = clscreditos.AbreTimo
  loc_C25699: FLdZeroAd var_150
  loc_C2569C: CVarStr var_368
  loc_C2569F: ConcatVar var_378
  loc_C256A3: LitI4 9
  loc_C256A8: FLdRfVar var_388
  loc_C256AB: ImpAdCallFPR4  = Chr()
  loc_C256B0: FLdRfVar var_388
  loc_C256B3: ConcatVar var_398
  loc_C256B7: ILdRf var_B4
  loc_C256BA: CVarStr var_18C
  loc_C256BD: ConcatVar var_3A8
  loc_C256C1: LitI4 9
  loc_C256C6: FLdRfVar var_3B8
  loc_C256C9: ImpAdCallFPR4  = Chr()
  loc_C256CE: FLdRfVar var_3B8
  loc_C256D1: ConcatVar var_3C8
  loc_C256D5: ILdRf var_B8
  loc_C256D8: CVarStr var_3D8
  loc_C256DB: ConcatVar var_3E8
  loc_C256DF: LitI4 9
  loc_C256E4: FLdRfVar var_3F8
  loc_C256E7: ImpAdCallFPR4  = Chr()
  loc_C256EC: FLdRfVar var_3F8
  loc_C256EF: ConcatVar var_408
  loc_C256F3: LitI4 1
  loc_C256F8: LitI4 1
  loc_C256FD: LitVarStr var_428, "0.00"
  loc_C25702: FStVarCopyObj var_438
  loc_C25705: FLdRfVar var_438
  loc_C25708: FLdRfVar var_C0
  loc_C2570B: CVarRef
  loc_C25710: FLdRfVar var_448
  loc_C25713: ImpAdCallFPR4  = Format(, )
  loc_C25718: FLdRfVar var_448
  loc_C2571B: ConcatVar var_458
  loc_C2571F: LitI4 9
  loc_C25724: FLdRfVar var_468
  loc_C25727: ImpAdCallFPR4  = Chr()
  loc_C2572C: FLdRfVar var_468
  loc_C2572F: ConcatVar var_478
  loc_C25733: FLdRfVar var_160
  loc_C25736: FLdPr Me
  loc_C25739: MemLdRfVar from_stack_1.global_52
  loc_C2573C: NewIfNullPr clscreditos
  loc_C2573F: from_stack_1 = clscreditos.NumeCtct
  loc_C25744: ILdRf var_160
  loc_C25747: CVarI4
  loc_C2574B: ConcatVar var_498
  loc_C2574F: LitI4 9
  loc_C25754: FLdRfVar var_4A8
  loc_C25757: ImpAdCallFPR4  = Chr()
  loc_C2575C: FLdRfVar var_4A8
  loc_C2575F: ConcatVar var_4B8
  loc_C25763: FLdRfVar var_4BA
  loc_C25766: FLdPr Me
  loc_C25769: MemLdRfVar from_stack_1.global_52
  loc_C2576C: NewIfNullPr clscreditos
  loc_C2576F: from_stack_1 = clscreditos.MoviCtct
  loc_C25774: FLdI2 var_4BA
  loc_C25777: CVarI2 var_4CC
  loc_C2577A: ConcatVar var_4DC
  loc_C2577E: CStrVarTmp
  loc_C2577F: FStStr var_B0
  loc_C25782: FFreeVar var_348 = "": var_358 = "": var_368 = "": var_378 = "": var_388 = "": var_398 = "": var_3A8 = "": var_3B8 = "": var_3C8 = "": var_3E8 = "": var_3F8 = "": var_438 = "": var_408 = "": var_448 = "": var_458 = "": var_468 = "": var_478 = "": var_498 = "": var_4A8 = "": var_4B8 = "": var_4DC = "": var_10C = "": var_11C = "": var_130 = "": var_140 = "": var_19C = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_214 = "": var_224 = "": var_234 = "": var_244 = "": var_254 = "": var_264 = "": var_274 = "": var_284 = "": var_294 = "": var_2A4 = "": var_2B8 = "": var_2C8 = "": var_2D8 = "": var_2E8 = "": var_2F8 = "": var_308 = "": var_318 = "": var_328 = ""
  loc_C257EB: FLdRfVar var_B0
  loc_C257EE: CDargRef
  loc_C257F2: FLdPr Me
  loc_C257F5: VCallAd Control_ID_ctacteFlex
  loc_C257F8: FStAdFunc var_D8
  loc_C257FB: FLdPr var_D8
  loc_C257FE: LateIdCall
  loc_C25806: FFree1Ad var_D8
  loc_C25809: FLdRfVar var_DA
  loc_C2580C: FLdPr Me
  loc_C2580F: MemLdRfVar from_stack_1.global_52
  loc_C25812: NewIfNullPr clscreditos
  loc_C25815: from_stack_1 = clscreditos.MoviCred
  loc_C2581A: FLdI2 var_DA
  loc_C2581D: LitI2_Byte 1
  loc_C2581F: EqI2
  loc_C25820: BranchF loc_C258D9
  loc_C25823: FLdPr Me
  loc_C25826: VCallAd Control_ID_ctacteFlex
  loc_C25829: FStAdFunc var_D8
  loc_C2582C: FLdPr var_D8
  loc_C2582F: LateIdLdVar var_10C DispID_4 0
  loc_C25836: CI4Var
  loc_C25838: LitI4 1
  loc_C2583D: SubI4
  loc_C2583E: CVarI4
  loc_C25842: PopAdLdVar
  loc_C25843: FLdPr Me
  loc_C25846: VCallAd Control_ID_ctacteFlex
  loc_C25849: FStAdFunc var_4E0
  loc_C2584C: FLdPr var_4E0
  loc_C2584F: LateIdSt
  loc_C25854: FFreeAd var_D8 = ""
  loc_C2585B: FFree1Var var_10C = ""
  loc_C2585E: LitI2_Byte 0
  loc_C25860: FLdPr Me
  loc_C25863: MemLdRfVar from_stack_1.global_62
  loc_C25866: FLdPr Me
  loc_C25869: VCallAd Control_ID_ctacteFlex
  loc_C2586C: FStAdFunc var_D8
  loc_C2586F: FLdPr var_D8
  loc_C25872: LateIdLdVar var_10C DispID_5 0
  loc_C25879: CI4Var
  loc_C2587B: LitI4 1
  loc_C25880: SubI4
  loc_C25881: CI2I4
  loc_C25882: FFree1Ad var_D8
  loc_C25885: FFree1Var var_10C = ""
  loc_C25888: ForI2 var_4E4
  loc_C2588E: FLdPr Me
  loc_C25891: MemLdI2 global_62
  loc_C25894: CI4UI1
  loc_C25895: CVarI4
  loc_C25899: PopAdLdVar
  loc_C2589A: FLdPr Me
  loc_C2589D: VCallAd Control_ID_ctacteFlex
  loc_C258A0: FStAdFunc var_D8
  loc_C258A3: FLdPr var_D8
  loc_C258A6: LateIdSt
  loc_C258AB: FFree1Ad var_D8
  loc_C258AE: LitVarI4
  loc_C258B6: PopAdLdVar
  loc_C258B7: FLdPr Me
  loc_C258BA: VCallAd Control_ID_ctacteFlex
  loc_C258BD: FStAdFunc var_D8
  loc_C258C0: FLdPr var_D8
  loc_C258C3: LateIdSt
  loc_C258C8: FFree1Ad var_D8
  loc_C258CB: FLdPr Me
  loc_C258CE: MemLdRfVar from_stack_1.global_62
  loc_C258D1: NextI2 var_4E4, loc_C2588E
  loc_C258D6: Branch loc_C2598C
  loc_C258D9: FLdPr Me
  loc_C258DC: VCallAd Control_ID_ctacteFlex
  loc_C258DF: FStAdFunc var_D8
  loc_C258E2: FLdPr var_D8
  loc_C258E5: LateIdLdVar var_10C DispID_4 0
  loc_C258EC: CI4Var
  loc_C258EE: LitI4 1
  loc_C258F3: SubI4
  loc_C258F4: CVarI4
  loc_C258F8: PopAdLdVar
  loc_C258F9: FLdPr Me
  loc_C258FC: VCallAd Control_ID_ctacteFlex
  loc_C258FF: FStAdFunc var_4E0
  loc_C25902: FLdPr var_4E0
  loc_C25905: LateIdSt
  loc_C2590A: FFreeAd var_D8 = ""
  loc_C25911: FFree1Var var_10C = ""
  loc_C25914: LitI2_Byte 0
  loc_C25916: FLdPr Me
  loc_C25919: MemLdRfVar from_stack_1.global_62
  loc_C2591C: FLdPr Me
  loc_C2591F: VCallAd Control_ID_ctacteFlex
  loc_C25922: FStAdFunc var_D8
  loc_C25925: FLdPr var_D8
  loc_C25928: LateIdLdVar var_10C DispID_5 0
  loc_C2592F: CI4Var
  loc_C25931: LitI4 1
  loc_C25936: SubI4
  loc_C25937: CI2I4
  loc_C25938: FFree1Ad var_D8
  loc_C2593B: FFree1Var var_10C = ""
  loc_C2593E: ForI2 var_4E8
  loc_C25944: FLdPr Me
  loc_C25947: MemLdI2 global_62
  loc_C2594A: CI4UI1
  loc_C2594B: CVarI4
  loc_C2594F: PopAdLdVar
  loc_C25950: FLdPr Me
  loc_C25953: VCallAd Control_ID_ctacteFlex
  loc_C25956: FStAdFunc var_D8
  loc_C25959: FLdPr var_D8
  loc_C2595C: LateIdSt
  loc_C25961: FFree1Ad var_D8
  loc_C25964: LitVarI4
  loc_C2596C: PopAdLdVar
  loc_C2596D: FLdPr Me
  loc_C25970: VCallAd Control_ID_ctacteFlex
  loc_C25973: FStAdFunc var_D8
  loc_C25976: FLdPr var_D8
  loc_C25979: LateIdSt
  loc_C2597E: FFree1Ad var_D8
  loc_C25981: FLdPr Me
  loc_C25984: MemLdRfVar from_stack_1.global_62
  loc_C25987: NextI2 var_4E8, loc_C25944
  loc_C2598C: FLdPr Me
  loc_C2598F: MemLdRfVar from_stack_1.global_52
  loc_C25992: NewIfNullPr clscreditos
  loc_C25995: Call clscreditos.MoveSiguiente()
  loc_C2599A: Branch loc_C25284
  loc_C2599D: LitI4 1
  loc_C259A2: LitI4 1
  loc_C259A7: LitVarStr var_FC, "###,###,##0.00"
  loc_C259AC: FStVarCopyObj var_10C
  loc_C259AF: FLdRfVar var_10C
  loc_C259B2: FLdRfVar var_CC
  loc_C259B5: CVarRef
  loc_C259BA: FLdRfVar var_11C
  loc_C259BD: ImpAdCallFPR4  = Format(, )
  loc_C259C2: FLdRfVar var_11C
  loc_C259C5: CStrVarVal var_120
  loc_C259C9: FLdPr Me
  loc_C259CC: VCallAd Control_ID_txtTotaDere
  loc_C259CF: FStAdFunc var_D8
  loc_C259D2: FLdPr var_D8
  loc_C259D5: Me.Text = from_stack_1
  loc_C259DA: FFree1Str var_120
  loc_C259DD: FFree1Ad var_D8
  loc_C259E0: FFreeVar var_10C = ""
  loc_C259E7: LitI4 1
  loc_C259EC: LitI4 1
  loc_C259F1: LitVarStr var_FC, "###,###,##0.00"
  loc_C259F6: FStVarCopyObj var_10C
  loc_C259F9: FLdRfVar var_10C
  loc_C259FC: FLdRfVar var_D4
  loc_C259FF: CVarRef
  loc_C25A04: FLdRfVar var_11C
  loc_C25A07: ImpAdCallFPR4  = Format(, )
  loc_C25A0C: FLdRfVar var_11C
  loc_C25A0F: CStrVarVal var_120
  loc_C25A13: FLdPr Me
  loc_C25A16: VCallAd Control_ID_txtTotaReca
  loc_C25A19: FStAdFunc var_D8
  loc_C25A1C: FLdPr var_D8
  loc_C25A1F: Me.Text = from_stack_1
  loc_C25A24: FFree1Str var_120
  loc_C25A27: FFree1Ad var_D8
  loc_C25A2A: FFreeVar var_10C = ""
  loc_C25A31: LitI4 1
  loc_C25A36: LitI4 1
  loc_C25A3B: LitVarStr var_FC, "###,###,##0.00"
  loc_C25A40: FStVarCopyObj var_11C
  loc_C25A43: FLdRfVar var_11C
  loc_C25A46: FLdFPR8 var_CC
  loc_C25A49: FLdFPR8 var_D4
  loc_C25A4C: SubR4
  loc_C25A4D: CVarR8
  loc_C25A51: FLdRfVar var_130
  loc_C25A54: ImpAdCallFPR4  = Format(, )
  loc_C25A59: FLdRfVar var_130
  loc_C25A5C: CStrVarVal var_120
  loc_C25A60: FLdPr Me
  loc_C25A63: VCallAd Control_ID_txtTotal
  loc_C25A66: FStAdFunc var_D8
  loc_C25A69: FLdPr var_D8
  loc_C25A6C: Me.Text = from_stack_1
  loc_C25A71: FFree1Str var_120
  loc_C25A74: FFree1Ad var_D8
  loc_C25A77: FFreeVar var_10C = "": var_11C = ""
  loc_C25A80: ExitProcHresult
  loc_C25A81: CStr2Ansi
End Sub

Private Sub Form_Load() 'B6665C
  'Data Table: 45A558
  loc_B661F0: LitVar_Missing var_94
  loc_B661F3: PopAdLdVar
  loc_B661F4: LitStr "Inmueble"
  loc_B661F7: FLdPr Me
  loc_B661FA: VCallAd Control_ID_OficinaCbo
  loc_B661FD: FStAdFunc var_98
  loc_B66200: FLdPr var_98
  loc_B66203: Me.AddItem from_stack_1, from_stack_2
  loc_B66208: FFree1Ad var_98
  loc_B6620B: LitVar_Missing var_94
  loc_B6620E: PopAdLdVar
  loc_B6620F: LitStr "Comercio"
  loc_B66212: FLdPr Me
  loc_B66215: VCallAd Control_ID_OficinaCbo
  loc_B66218: FStAdFunc var_98
  loc_B6621B: FLdPr var_98
  loc_B6621E: Me.AddItem from_stack_1, from_stack_2
  loc_B66223: FFree1Ad var_98
  loc_B66226: LitVar_Missing var_94
  loc_B66229: PopAdLdVar
  loc_B6622A: LitStr "Deudores Varios"
  loc_B6622D: FLdPr Me
  loc_B66230: VCallAd Control_ID_OficinaCbo
  loc_B66233: FStAdFunc var_98
  loc_B66236: FLdPr var_98
  loc_B66239: Me.AddItem from_stack_1, from_stack_2
  loc_B6623E: FFree1Ad var_98
  loc_B66241: LitVar_Missing var_94
  loc_B66244: PopAdLdVar
  loc_B66245: LitStr "Cementerio"
  loc_B66248: FLdPr Me
  loc_B6624B: VCallAd Control_ID_OficinaCbo
  loc_B6624E: FStAdFunc var_98
  loc_B66251: FLdPr var_98
  loc_B66254: Me.AddItem from_stack_1, from_stack_2
  loc_B66259: FFree1Ad var_98
  loc_B6625C: LitI2_Byte 0
  loc_B6625E: FLdPr Me
  loc_B66261: VCallAd Control_ID_OficinaCbo
  loc_B66264: FStAdFunc var_98
  loc_B66267: FLdPr var_98
  loc_B6626A: Me.ListIndex = from_stack_1
  loc_B6626F: FFree1Ad var_98
  loc_B66272: LitStr "0"
  loc_B66275: FLdPr Me
  loc_B66278: VCallAd Control_ID_NumeCtaTxt
  loc_B6627B: FStAdFunc var_98
  loc_B6627E: FLdPr var_98
  loc_B66281: Me.Text = from_stack_1
  loc_B66286: FFree1Ad var_98
  loc_B66289: FLdPr Me
  loc_B6628C: VCallAd Control_ID_ctacteFlex
  loc_B6628F: FStAdFunc var_9C
  loc_B66292: LitVarI4
  loc_B6629A: PopAdLdVar
  loc_B6629B: LitVarI4
  loc_B662A3: PopAdLdVar
  loc_B662A4: FLdPr var_9C
  loc_B662A7: LateIdCallSt
  loc_B662AF: LitVarI4
  loc_B662B7: PopAdLdVar
  loc_B662B8: LitVarI4
  loc_B662C0: PopAdLdVar
  loc_B662C1: FLdPr var_9C
  loc_B662C4: LateIdCallSt
  loc_B662CC: LitVarI4
  loc_B662D4: PopAdLdVar
  loc_B662D5: LitVarI4
  loc_B662DD: PopAdLdVar
  loc_B662DE: FLdPr var_9C
  loc_B662E1: LateIdCallSt
  loc_B662E9: LitVarI4
  loc_B662F1: PopAdLdVar
  loc_B662F2: LitVarI4
  loc_B662FA: PopAdLdVar
  loc_B662FB: FLdPr var_9C
  loc_B662FE: LateIdCallSt
  loc_B66306: LitVarI4
  loc_B6630E: PopAdLdVar
  loc_B6630F: LitVarI4
  loc_B66317: PopAdLdVar
  loc_B66318: FLdPr var_9C
  loc_B6631B: LateIdCallSt
  loc_B66323: LitVarI4
  loc_B6632B: PopAdLdVar
  loc_B6632C: LitVarI4
  loc_B66334: PopAdLdVar
  loc_B66335: FLdPr var_9C
  loc_B66338: LateIdCallSt
  loc_B66340: LitVarI4
  loc_B66348: PopAdLdVar
  loc_B66349: LitVarI4
  loc_B66351: PopAdLdVar
  loc_B66352: FLdPr var_9C
  loc_B66355: LateIdCallSt
  loc_B6635D: LitVarI4
  loc_B66365: PopAdLdVar
  loc_B66366: LitVarI4
  loc_B6636E: PopAdLdVar
  loc_B6636F: FLdPr var_9C
  loc_B66372: LateIdCallSt
  loc_B6637A: LitVarI4
  loc_B66382: PopAdLdVar
  loc_B66383: LitVarI4
  loc_B6638B: PopAdLdVar
  loc_B6638C: FLdPr var_9C
  loc_B6638F: LateIdCallSt
  loc_B66397: LitVarI4
  loc_B6639F: PopAdLdVar
  loc_B663A0: LitVarI4
  loc_B663A8: PopAdLdVar
  loc_B663A9: FLdPr var_9C
  loc_B663AC: LateIdCallSt
  loc_B663B4: LitVarI4
  loc_B663BC: PopAdLdVar
  loc_B663BD: LitVarI4
  loc_B663C5: PopAdLdVar
  loc_B663C6: FLdPr var_9C
  loc_B663C9: LateIdCallSt
  loc_B663D1: LitVarI4
  loc_B663D9: PopAdLdVar
  loc_B663DA: LitVarI4
  loc_B663E2: PopAdLdVar
  loc_B663E3: FLdPr var_9C
  loc_B663E6: LateIdCallSt
  loc_B663EE: LitVarI4
  loc_B663F6: PopAdLdVar
  loc_B663F7: LitVarI4
  loc_B663FF: PopAdLdVar
  loc_B66400: FLdPr var_9C
  loc_B66403: LateIdCallSt
  loc_B6640B: LitVarI4
  loc_B66413: PopAdLdVar
  loc_B66414: LitVarI4
  loc_B6641C: PopAdLdVar
  loc_B6641D: FLdPr var_9C
  loc_B66420: LateIdCallSt
  loc_B66428: LitVarI4
  loc_B66430: PopAdLdVar
  loc_B66431: LitVarI4
  loc_B66439: PopAdLdVar
  loc_B6643A: FLdPr var_9C
  loc_B6643D: LateIdCallSt
  loc_B66445: LitVarI4
  loc_B6644D: PopAdLdVar
  loc_B6644E: LitVarI4
  loc_B66456: PopAdLdVar
  loc_B66457: LitVarStr var_DC, "Of"
  loc_B6645C: PopAdLdVar
  loc_B6645D: FLdPr var_9C
  loc_B66460: LateIdCallSt
  loc_B66468: LitVarI4
  loc_B66470: PopAdLdVar
  loc_B66471: LitVarI4
  loc_B66479: PopAdLdVar
  loc_B6647A: LitVarStr var_DC, "Cuenta"
  loc_B6647F: PopAdLdVar
  loc_B66480: FLdPr var_9C
  loc_B66483: LateIdCallSt
  loc_B6648B: LitVarI4
  loc_B66493: PopAdLdVar
  loc_B66494: LitVarI4
  loc_B6649C: PopAdLdVar
  loc_B6649D: LitVarStr var_DC, "Periodo"
  loc_B664A2: PopAdLdVar
  loc_B664A3: FLdPr var_9C
  loc_B664A6: LateIdCallSt
  loc_B664AE: LitVarI4
  loc_B664B6: PopAdLdVar
  loc_B664B7: LitVarI4
  loc_B664BF: PopAdLdVar
  loc_B664C0: LitVarStr var_DC, "Boleto"
  loc_B664C5: PopAdLdVar
  loc_B664C6: FLdPr var_9C
  loc_B664C9: LateIdCallSt
  loc_B664D1: LitVarI4
  loc_B664D9: PopAdLdVar
  loc_B664DA: LitVarI4
  loc_B664E2: PopAdLdVar
  loc_B664E3: LitVarStr var_DC, "Fecha Alta"
  loc_B664E8: PopAdLdVar
  loc_B664E9: FLdPr var_9C
  loc_B664EC: LateIdCallSt
  loc_B664F4: LitVarI4
  loc_B664FC: PopAdLdVar
  loc_B664FD: LitVarI4
  loc_B66505: PopAdLdVar
  loc_B66506: LitVarStr var_DC, "Liqu."
  loc_B6650B: PopAdLdVar
  loc_B6650C: FLdPr var_9C
  loc_B6650F: LateIdCallSt
  loc_B66517: LitVarI4
  loc_B6651F: PopAdLdVar
  loc_B66520: LitVarI4
  loc_B66528: PopAdLdVar
  loc_B66529: LitVarStr var_DC, "Nro Liqu."
  loc_B6652E: PopAdLdVar
  loc_B6652F: FLdPr var_9C
  loc_B66532: LateIdCallSt
  loc_B6653A: LitVarI4
  loc_B66542: PopAdLdVar
  loc_B66543: LitVarI4
  loc_B6654B: PopAdLdVar
  loc_B6654C: LitVarStr var_DC, "Concepto"
  loc_B66551: PopAdLdVar
  loc_B66552: FLdPr var_9C
  loc_B66555: LateIdCallSt
  loc_B6655D: LitVarI4
  loc_B66565: PopAdLdVar
  loc_B66566: LitVarI4
  loc_B6656E: PopAdLdVar
  loc_B6656F: LitVarStr var_DC, "Exp/Comp"
  loc_B66574: PopAdLdVar
  loc_B66575: FLdPr var_9C
  loc_B66578: LateIdCallSt
  loc_B66580: LitVarI4
  loc_B66588: PopAdLdVar
  loc_B66589: LitVarI4
  loc_B66591: PopAdLdVar
  loc_B66592: LitVarStr var_DC, "Tipo Movi."
  loc_B66597: PopAdLdVar
  loc_B66598: FLdPr var_9C
  loc_B6659B: LateIdCallSt
  loc_B665A3: LitVarI4
  loc_B665AB: PopAdLdVar
  loc_B665AC: LitVarI4
  loc_B665B4: PopAdLdVar
  loc_B665B5: LitVarStr var_DC, "Creditos"
  loc_B665BA: PopAdLdVar
  loc_B665BB: FLdPr var_9C
  loc_B665BE: LateIdCallSt
  loc_B665C6: LitVarI4
  loc_B665CE: PopAdLdVar
  loc_B665CF: LitVarI4
  loc_B665D7: PopAdLdVar
  loc_B665D8: LitVarStr var_DC, "Creditos"
  loc_B665DD: PopAdLdVar
  loc_B665DE: FLdPr var_9C
  loc_B665E1: LateIdCallSt
  loc_B665E9: LitVarI4
  loc_B665F1: PopAdLdVar
  loc_B665F2: LitVarI4
  loc_B665FA: PopAdLdVar
  loc_B665FB: LitVarStr var_DC, "Saldo"
  loc_B66600: PopAdLdVar
  loc_B66601: FLdPr var_9C
  loc_B66604: LateIdCallSt
  loc_B6660C: LitVarI4
  loc_B66614: PopAdLdVar
  loc_B66615: LitVarI4
  loc_B6661D: PopAdLdVar
  loc_B6661E: LitVarStr var_DC, "Numero"
  loc_B66623: PopAdLdVar
  loc_B66624: FLdPr var_9C
  loc_B66627: LateIdCallSt
  loc_B6662F: LitVarI4
  loc_B66637: PopAdLdVar
  loc_B66638: LitVarI4
  loc_B66640: PopAdLdVar
  loc_B66641: LitVarStr var_DC, "Mov"
  loc_B66646: PopAdLdVar
  loc_B66647: FLdPr var_9C
  loc_B6664A: LateIdCallSt
  loc_B66652: LitNothing
  loc_B66654: FStAd var_9C 
  loc_B66658: ExitProcHresult
  loc_B66659: StAryRecMove
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BA508
  'Data Table: 45A558
  loc_9BA4F4: ILdI2 KeyCode
  loc_9BA4F7: CI4UI1
  loc_9BA4F8: LitI4 &H78
  loc_9BA4FD: EqI4
  loc_9BA4FE: BranchF loc_9BA506
  loc_9BA501: Call SalirCmd_Click()
  loc_9BA506: ExitProcHresult
End Sub

Private Sub OficinaCbo_Click() 'B26A30
  'Data Table: 45A558
  loc_B26790: FLdRfVar var_8A
  loc_B26793: FLdPr Me
  loc_B26796: VCallAd Control_ID_OficinaCbo
  loc_B26799: FStAdFunc var_88
  loc_B2679C: FLdPr var_88
  loc_B2679F:  = Me.ListIndex
  loc_B267A4: FLdI2 var_8A
  loc_B267A7: FStI2 var_8C
  loc_B267AA: FFree1Ad var_88
  loc_B267AD: FLdI2 var_8C
  loc_B267B0: LitI2_Byte 0
  loc_B267B2: EqI2
  loc_B267B3: BranchF loc_B267C1
  loc_B267B6: LitI2_Byte 1
  loc_B267B8: CUI1I2
  loc_B267BA: ImpAdStUI1 MemVar_D93038
  loc_B267BE: Branch loc_B267FA
  loc_B267C1: FLdI2 var_8C
  loc_B267C4: LitI2_Byte 1
  loc_B267C6: EqI2
  loc_B267C7: BranchF loc_B267D5
  loc_B267CA: LitI2_Byte 2
  loc_B267CC: CUI1I2
  loc_B267CE: ImpAdStUI1 MemVar_D93038
  loc_B267D2: Branch loc_B267FA
  loc_B267D5: FLdI2 var_8C
  loc_B267D8: LitI2_Byte 2
  loc_B267DA: EqI2
  loc_B267DB: BranchF loc_B267E9
  loc_B267DE: LitI2_Byte 3
  loc_B267E0: CUI1I2
  loc_B267E2: ImpAdStUI1 MemVar_D93038
  loc_B267E6: Branch loc_B267FA
  loc_B267E9: FLdI2 var_8C
  loc_B267EC: LitI2_Byte 3
  loc_B267EE: EqI2
  loc_B267EF: BranchF loc_B267FA
  loc_B267F2: LitI2_Byte 4
  loc_B267F4: CUI1I2
  loc_B267F6: ImpAdStUI1 MemVar_D93038
  loc_B267FA: ImpAdLdUI1
  loc_B267FE: CI2UI1
  loc_B26800: LitI2_Byte 0
  loc_B26802: NeI2
  loc_B26803: FLdRfVar var_90
  loc_B26806: FLdPr Me
  loc_B26809: VCallAd Control_ID_NumeCtaTxt
  loc_B2680C: FStAdFunc var_88
  loc_B2680F: FLdPr var_88
  loc_B26812:  = Me.Text
  loc_B26817: ILdRf var_90
  loc_B2681A: LitStr vbNullString
  loc_B2681D: NeStr
  loc_B2681F: AndI4
  loc_B26820: FLdRfVar var_98
  loc_B26823: FLdPr Me
  loc_B26826: VCallAd Control_ID_NumeCtaTxt
  loc_B26829: FStAdFunc var_94
  loc_B2682C: FLdPr var_94
  loc_B2682F:  = Me.Text
  loc_B26834: ILdRf var_98
  loc_B26837: LitStr "0"
  loc_B2683A: NeStr
  loc_B2683C: AndI4
  loc_B2683D: FFreeStr var_90 = ""
  loc_B26844: FFreeAd var_88 = ""
  loc_B2684B: BranchF loc_B26A2F
  loc_B2684E: FLdRfVar var_90
  loc_B26851: FLdPr Me
  loc_B26854: VCallAd Control_ID_NumeCtaTxt
  loc_B26857: FStAdFunc var_88
  loc_B2685A: FLdPr var_88
  loc_B2685D:  = Me.Text
  loc_B26862: FLdPr Me
  loc_B26865: MemLdRfVar from_stack_1.global_56
  loc_B26868: NewIfNullRf
  loc_B2686C: LitStr "Titular"
  loc_B2686F: ILdRf var_90
  loc_B26872: ImpAdLdUI1
  loc_B26876: CStrI2
  loc_B26878: FStStrNoPop var_98
  loc_B2687B: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B26880: FFreeStr var_98 = ""
  loc_B26887: FFree1Ad var_88
  loc_B2688A: BranchF loc_B269AF
  loc_B2688D: FLdRfVar var_90
  loc_B26890: FLdPr Me
  loc_B26893: MemLdRfVar from_stack_1.global_56
  loc_B26896: NewIfNullPr tblPersona
  loc_B26899: from_stack_1v = tblPersona.CucuPersGet()
  loc_B2689E: ILdRf var_90
  loc_B268A1: FLdPr Me
  loc_B268A4: VCallAd Control_ID_CucuPersLbl
  loc_B268A7: FStAdFunc var_88
  loc_B268AA: FLdPr var_88
  loc_B268AD: Me.Caption = from_stack_1
  loc_B268B2: FFree1Str var_90
  loc_B268B5: FFree1Ad var_88
  loc_B268B8: FLdRfVar var_90
  loc_B268BB: FLdPr Me
  loc_B268BE: MemLdRfVar from_stack_1.global_56
  loc_B268C1: NewIfNullPr tblPersona
  loc_B268C4: from_stack_1v = tblPersona.DetaPersGet()
  loc_B268C9: ILdRf var_90
  loc_B268CC: FLdPr Me
  loc_B268CF: VCallAd Control_ID_DetaPersLbl
  loc_B268D2: FStAdFunc var_88
  loc_B268D5: FLdPr var_88
  loc_B268D8: Me.Caption = from_stack_1
  loc_B268DD: FFree1Str var_90
  loc_B268E0: FFree1Ad var_88
  loc_B268E3: FLdRfVar var_98
  loc_B268E6: FLdPr Me
  loc_B268E9: MemLdRfVar from_stack_1.global_56
  loc_B268EC: NewIfNullPr tblPersona
  loc_B268EF: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B268F4: FLdRfVar var_9C
  loc_B268F7: FLdPr Me
  loc_B268FA: MemLdRfVar from_stack_1.global_56
  loc_B268FD: NewIfNullPr tblPersona
  loc_B26900: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B26905: FLdRfVar var_90
  loc_B26908: FLdPr Me
  loc_B2690B: MemLdRfVar from_stack_1.global_56
  loc_B2690E: NewIfNullPr tblPersona
  loc_B26911: from_stack_1v = tblPersona.DetaCallGet()
  loc_B26916: ILdRf var_90
  loc_B26919: LitStr " "
  loc_B2691C: ConcatStr
  loc_B2691D: CVarStr var_FC
  loc_B26920: LitVarStr var_CC, vbNullString
  loc_B26925: FStVarCopyObj var_DC
  loc_B26928: FLdRfVar var_DC
  loc_B2692B: LitStr "Nro: "
  loc_B2692E: ILdRf var_9C
  loc_B26931: ConcatStr
  loc_B26932: CVarStr var_BC
  loc_B26935: ILdRf var_98
  loc_B26938: LitStr "0"
  loc_B2693B: NeStr
  loc_B2693D: CVarBoolI2 var_AC
  loc_B26941: FLdRfVar var_EC
  loc_B26944: ImpAdCallFPR4  = IIf(, , )
  loc_B26949: FLdRfVar var_EC
  loc_B2694C: ConcatVar var_10C
  loc_B26950: LitVarStr var_11C, " "
  loc_B26955: ConcatVar var_12C
  loc_B26959: FLdRfVar var_130
  loc_B2695C: FLdPr Me
  loc_B2695F: MemLdRfVar from_stack_1.global_56
  loc_B26962: NewIfNullPr tblPersona
  loc_B26965: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B2696A: FLdZeroAd var_130
  loc_B2696D: CVarStr var_140
  loc_B26970: ConcatVar var_150
  loc_B26974: CStrVarVal var_154
  loc_B26978: FLdPr Me
  loc_B2697B: VCallAd Control_ID_DomiPersLbl
  loc_B2697E: FStAdFunc var_88
  loc_B26981: FLdPr var_88
  loc_B26984: Me.Caption = from_stack_1
  loc_B26989: FFreeStr var_90 = "": var_98 = "": var_9C = ""
  loc_B26994: FFree1Ad var_88
  loc_B26997: FFreeVar var_AC = "": var_BC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_12C = "": var_140 = ""
  loc_B269AC: Branch loc_B26A2F
  loc_B269AF: FLdRfVar var_90
  loc_B269B2: FLdPr Me
  loc_B269B5: MemLdRfVar from_stack_1.global_56
  loc_B269B8: NewIfNullPr tblPersona
  loc_B269BB: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B269C0: ILdRf var_90
  loc_B269C3: FLdPr Me
  loc_B269C6: MemStStrCopy
  loc_B269CA: FFree1Str var_90
  loc_B269CD: FLdPr Me
  loc_B269D0: MemLdStr global_64
  loc_B269D3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B269D8: LitStr vbNullString
  loc_B269DB: FLdPr Me
  loc_B269DE: VCallAd Control_ID_CucuPersLbl
  loc_B269E1: FStAdFunc var_88
  loc_B269E4: FLdPr var_88
  loc_B269E7: Me.Caption = from_stack_1
  loc_B269EC: FFree1Ad var_88
  loc_B269EF: LitStr vbNullString
  loc_B269F2: FLdPr Me
  loc_B269F5: VCallAd Control_ID_DetaPersLbl
  loc_B269F8: FStAdFunc var_88
  loc_B269FB: FLdPr var_88
  loc_B269FE: Me.Caption = from_stack_1
  loc_B26A03: FFree1Ad var_88
  loc_B26A06: LitStr vbNullString
  loc_B26A09: FLdPr Me
  loc_B26A0C: VCallAd Control_ID_DomiPersLbl
  loc_B26A0F: FStAdFunc var_88
  loc_B26A12: FLdPr var_88
  loc_B26A15: Me.Caption = from_stack_1
  loc_B26A1A: FFree1Ad var_88
  loc_B26A1D: FLdPr Me
  loc_B26A20: VCallAd Control_ID_NumeCtaTxt
  loc_B26A23: CVarAd
  loc_B26A27: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B26A2C: FFree1Var var_BC = ""
  loc_B26A2F: ExitProcHresult
End Sub

Private Sub OficinaCbo_GotFocus() '9B01FC
  'Data Table: 45A558
  loc_9B01F4: Call Proc_22_10_B0D46C()
  loc_9B01F9: ExitProcHresult
  loc_9B01FA: FLdRfVar var_1FA8
End Sub

Private Sub NumeCtaTxt_GotFocus() '9C938C
  'Data Table: 45A558
  loc_9C9374: Call Proc_22_10_B0D46C()
  loc_9C9379: FLdPrThis
  loc_9C937A: VCallAd Control_ID_NumeCtaTxt
  loc_9C937D: CVarAd
  loc_9C9381: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C9386: FFree1Var var_94 = ""
  loc_9C9389: ExitProcHresult
  loc_9C938A: Ary1LdFPR8
End Sub

Private Sub NumeCtaTxt_KeyPress(KeyAscii As Integer) 'B210B4
  'Data Table: 45A558
  loc_B20E14: LitStr "1234567890 "
  loc_B20E17: FStStrCopy var_88
  loc_B20E1A: FLdRfVar var_88
  loc_B20E1D: ILdRf KeyAscii
  loc_B20E20: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_B20E25: IStI2 KeyAscii
  loc_B20E28: FFree1Str var_88
  loc_B20E2B: ILdI2 KeyAscii
  loc_B20E2E: LitI2_Byte &H20
  loc_B20E30: EqI2
  loc_B20E31: BranchF loc_B210B1
  loc_B20E34: LitI2_Byte 0
  loc_B20E36: IStI2 KeyAscii
  loc_B20E39: FLdRfVar var_8E
  loc_B20E3C: FLdPr Me
  loc_B20E3F: VCallAd Control_ID_OficinaCbo
  loc_B20E42: FStAdFunc var_8C
  loc_B20E45: FLdPr var_8C
  loc_B20E48:  = Me.ListIndex
  loc_B20E4D: FLdI2 var_8E
  loc_B20E50: FStI2 var_90
  loc_B20E53: FFree1Ad var_8C
  loc_B20E56: FLdI2 var_90
  loc_B20E59: LitI2_Byte 0
  loc_B20E5B: EqI2
  loc_B20E5C: BranchF loc_B20E6A
  loc_B20E5F: LitI2_Byte 1
  loc_B20E61: CUI1I2
  loc_B20E63: ImpAdStUI1 MemVar_D93038
  loc_B20E67: Branch loc_B20EA3
  loc_B20E6A: FLdI2 var_90
  loc_B20E6D: LitI2_Byte 1
  loc_B20E6F: EqI2
  loc_B20E70: BranchF loc_B20E7E
  loc_B20E73: LitI2_Byte 2
  loc_B20E75: CUI1I2
  loc_B20E77: ImpAdStUI1 MemVar_D93038
  loc_B20E7B: Branch loc_B20EA3
  loc_B20E7E: FLdI2 var_90
  loc_B20E81: LitI2_Byte 2
  loc_B20E83: EqI2
  loc_B20E84: BranchF loc_B20E92
  loc_B20E87: LitI2_Byte 3
  loc_B20E89: CUI1I2
  loc_B20E8B: ImpAdStUI1 MemVar_D93038
  loc_B20E8F: Branch loc_B20EA3
  loc_B20E92: FLdI2 var_90
  loc_B20E95: LitI2_Byte 3
  loc_B20E97: EqI2
  loc_B20E98: BranchF loc_B20EA3
  loc_B20E9B: LitI2_Byte 4
  loc_B20E9D: CUI1I2
  loc_B20E9F: ImpAdStUI1 MemVar_D93038
  loc_B20EA3: LitVar_Missing var_B0
  loc_B20EA6: PopAdLdVar
  loc_B20EA7: LitVarI4
  loc_B20EAF: PopAdLdVar
  loc_B20EB0: ImpAdLdRf MemVar_D94034
  loc_B20EB3: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B20EB6: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_B20EBB: FLdRfVar var_B4
  loc_B20EBE: FLdRfVar var_8C
  loc_B20EC1: ImpAdLdRf MemVar_D94034
  loc_B20EC4: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B20EC7: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B20ECC: FLdPr var_8C
  loc_B20ECF: from_stack_1 = clsbase.RecordCount
  loc_B20ED4: ILdRf var_B4
  loc_B20ED7: LitI4 0
  loc_B20EDC: GtI4
  loc_B20EDD: FFree1Ad var_8C
  loc_B20EE0: BranchF loc_B210B1
  loc_B20EE3: FLdRfVar var_D0
  loc_B20EE6: FLdRfVar var_C0
  loc_B20EE9: LitVarStr var_A0, "CodiOfic"
  loc_B20EEE: PopAdLdVar
  loc_B20EEF: FLdRfVar var_BC
  loc_B20EF2: FLdRfVar var_B8
  loc_B20EF5: FLdRfVar var_8C
  loc_B20EF8: ImpAdLdRf MemVar_D94034
  loc_B20EFB: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B20EFE: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B20F03: FLdPr var_8C
  loc_B20F06: from_stack_1v = clsbase.RsFrmGet()
  loc_B20F0B: FLdPr var_B8
  loc_B20F0E:  = Me.Fields
  loc_B20F13: FLdPr var_BC
  loc_B20F16: from_stack_2 = Me.Item(from_stack_1)
  loc_B20F1B: FLdPr var_C0
  loc_B20F1E:  = Me.Value
  loc_B20F23: FLdRfVar var_D0
  loc_B20F26: FStVar var_E0
  loc_B20F2A: FFreeAd var_8C = "": var_B8 = "": var_BC = ""
  loc_B20F35: FLdRfVar var_E0
  loc_B20F38: LitVarI2 var_A0, 1
  loc_B20F3D: HardType
  loc_B20F3E: EqVarBool
  loc_B20F40: BranchF loc_B20F7A
  loc_B20F43: FLdRfVar var_88
  loc_B20F46: LitI2_Byte 0
  loc_B20F48: FLdPr Me
  loc_B20F4B: VCallAd Control_ID_OficinaCbo
  loc_B20F4E: FStAdFunc var_8C
  loc_B20F51: FLdPr var_8C
  loc_B20F54: from_stack_2 = Me.List(from_stack_1)
  loc_B20F59: ILdRf var_88
  loc_B20F5C: FLdPr Me
  loc_B20F5F: VCallAd Control_ID_OficinaCbo
  loc_B20F62: FStAdFunc var_B8
  loc_B20F65: FLdPr var_B8
  loc_B20F68: Me.Text = from_stack_1
  loc_B20F6D: FFree1Str var_88
  loc_B20F70: FFreeAd var_8C = ""
  loc_B20F77: Branch loc_B21046
  loc_B20F7A: FLdRfVar var_E0
  loc_B20F7D: LitVarI2 var_A0, 2
  loc_B20F82: HardType
  loc_B20F83: EqVarBool
  loc_B20F85: BranchF loc_B20FBF
  loc_B20F88: FLdRfVar var_88
  loc_B20F8B: LitI2_Byte 1
  loc_B20F8D: FLdPr Me
  loc_B20F90: VCallAd Control_ID_OficinaCbo
  loc_B20F93: FStAdFunc var_8C
  loc_B20F96: FLdPr var_8C
  loc_B20F99: from_stack_2 = Me.List(from_stack_1)
  loc_B20F9E: ILdRf var_88
  loc_B20FA1: FLdPr Me
  loc_B20FA4: VCallAd Control_ID_OficinaCbo
  loc_B20FA7: FStAdFunc var_B8
  loc_B20FAA: FLdPr var_B8
  loc_B20FAD: Me.Text = from_stack_1
  loc_B20FB2: FFree1Str var_88
  loc_B20FB5: FFreeAd var_8C = ""
  loc_B20FBC: Branch loc_B21046
  loc_B20FBF: FLdRfVar var_E0
  loc_B20FC2: LitVarI2 var_A0, 3
  loc_B20FC7: HardType
  loc_B20FC8: EqVarBool
  loc_B20FCA: BranchF loc_B21004
  loc_B20FCD: FLdRfVar var_88
  loc_B20FD0: LitI2_Byte 2
  loc_B20FD2: FLdPr Me
  loc_B20FD5: VCallAd Control_ID_OficinaCbo
  loc_B20FD8: FStAdFunc var_8C
  loc_B20FDB: FLdPr var_8C
  loc_B20FDE: from_stack_2 = Me.List(from_stack_1)
  loc_B20FE3: ILdRf var_88
  loc_B20FE6: FLdPr Me
  loc_B20FE9: VCallAd Control_ID_OficinaCbo
  loc_B20FEC: FStAdFunc var_B8
  loc_B20FEF: FLdPr var_B8
  loc_B20FF2: Me.Text = from_stack_1
  loc_B20FF7: FFree1Str var_88
  loc_B20FFA: FFreeAd var_8C = ""
  loc_B21001: Branch loc_B21046
  loc_B21004: FLdRfVar var_E0
  loc_B21007: LitVarI2 var_A0, 4
  loc_B2100C: HardType
  loc_B2100D: EqVarBool
  loc_B2100F: BranchF loc_B21046
  loc_B21012: FLdRfVar var_88
  loc_B21015: LitI2_Byte 3
  loc_B21017: FLdPr Me
  loc_B2101A: VCallAd Control_ID_OficinaCbo
  loc_B2101D: FStAdFunc var_8C
  loc_B21020: FLdPr var_8C
  loc_B21023: from_stack_2 = Me.List(from_stack_1)
  loc_B21028: ILdRf var_88
  loc_B2102B: FLdPr Me
  loc_B2102E: VCallAd Control_ID_OficinaCbo
  loc_B21031: FStAdFunc var_B8
  loc_B21034: FLdPr var_B8
  loc_B21037: Me.Text = from_stack_1
  loc_B2103C: FFree1Str var_88
  loc_B2103F: FFreeAd var_8C = ""
  loc_B21046: FLdRfVar var_D0
  loc_B21049: FLdRfVar var_C0
  loc_B2104C: LitVarStr var_A0, "CuenCtct"
  loc_B21051: PopAdLdVar
  loc_B21052: FLdRfVar var_BC
  loc_B21055: FLdRfVar var_B8
  loc_B21058: FLdRfVar var_8C
  loc_B2105B: ImpAdLdRf MemVar_D94034
  loc_B2105E: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B21061: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B21066: FLdPr var_8C
  loc_B21069: from_stack_1v = clsbase.RsFrmGet()
  loc_B2106E: FLdPr var_B8
  loc_B21071:  = Me.Fields
  loc_B21076: FLdPr var_BC
  loc_B21079: from_stack_2 = Me.Item(from_stack_1)
  loc_B2107E: FLdPr var_C0
  loc_B21081:  = Me.Value
  loc_B21086: FLdRfVar var_D0
  loc_B21089: CStrVarTmp
  loc_B2108A: FStStrNoPop var_88
  loc_B2108D: FLdPr Me
  loc_B21090: VCallAd Control_ID_NumeCtaTxt
  loc_B21093: FStAdFunc var_E4
  loc_B21096: FLdPr var_E4
  loc_B21099: Me.Text = from_stack_1
  loc_B2109E: FFree1Str var_88
  loc_B210A1: FFreeAd var_8C = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_B210AE: FFree1Var var_D0 = ""
  loc_B210B1: ExitProcHresult
  loc_B210B2: MemLdStr global_-8108
End Sub

Private Sub NumeCtaTxt_LostFocus() 'A5E79C
  'Data Table: 45A558
  loc_A5E73C: FLdRfVar var_8A
  loc_A5E73F: FLdPr Me
  loc_A5E742: VCallAd Control_ID_NumeCtaTxt
  loc_A5E745: FStAdFunc var_88
  loc_A5E748: FLdPr var_88
  loc_A5E74B:  = Me.Enabled
  loc_A5E750: FLdI2 var_8A
  loc_A5E753: FFree1Ad var_88
  loc_A5E756: BranchF loc_A5E799
  loc_A5E759: FLdRfVar var_90
  loc_A5E75C: FLdPr Me
  loc_A5E75F: VCallAd Control_ID_NumeCtaTxt
  loc_A5E762: FStAdFunc var_88
  loc_A5E765: FLdPr var_88
  loc_A5E768:  = Me.Text
  loc_A5E76D: FLdZeroAd var_90
  loc_A5E770: CVarStr var_A0
  loc_A5E773: ImpAdCallI2 IsNumeric()
  loc_A5E778: NotI4
  loc_A5E779: FFree1Ad var_88
  loc_A5E77C: FFree1Var var_A0 = ""
  loc_A5E77F: BranchF loc_A5E799
  loc_A5E782: LitStr "0"
  loc_A5E785: FLdPr Me
  loc_A5E788: VCallAd Control_ID_NumeCtaTxt
  loc_A5E78B: FStAdFunc var_88
  loc_A5E78E: FLdPr var_88
  loc_A5E791: Me.Text = from_stack_1
  loc_A5E796: FFree1Ad var_88
  loc_A5E799: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'B1CBA8
  'Data Table: 45A558
  loc_B1C938: FLdRfVar var_8A
  loc_B1C93B: FLdPr Me
  loc_B1C93E: VCallAd Control_ID_NumeCtaTxt
  loc_B1C941: FStAdFunc var_88
  loc_B1C944: FLdPr var_88
  loc_B1C947:  = Me.Enabled
  loc_B1C94C: FLdI2 var_8A
  loc_B1C94F: FFree1Ad var_88
  loc_B1C952: BranchF loc_B1CBA6
  loc_B1C955: FLdRfVar var_8A
  loc_B1C958: FLdPr Me
  loc_B1C95B: VCallAd Control_ID_OficinaCbo
  loc_B1C95E: FStAdFunc var_88
  loc_B1C961: FLdPr var_88
  loc_B1C964:  = Me.ListIndex
  loc_B1C969: FLdI2 var_8A
  loc_B1C96C: FStI2 var_8C
  loc_B1C96F: FFree1Ad var_88
  loc_B1C972: FLdI2 var_8C
  loc_B1C975: LitI2_Byte 0
  loc_B1C977: EqI2
  loc_B1C978: BranchF loc_B1C986
  loc_B1C97B: LitI2_Byte 1
  loc_B1C97D: CUI1I2
  loc_B1C97F: ImpAdStUI1 MemVar_D93038
  loc_B1C983: Branch loc_B1C9BF
  loc_B1C986: FLdI2 var_8C
  loc_B1C989: LitI2_Byte 1
  loc_B1C98B: EqI2
  loc_B1C98C: BranchF loc_B1C99A
  loc_B1C98F: LitI2_Byte 2
  loc_B1C991: CUI1I2
  loc_B1C993: ImpAdStUI1 MemVar_D93038
  loc_B1C997: Branch loc_B1C9BF
  loc_B1C99A: FLdI2 var_8C
  loc_B1C99D: LitI2_Byte 2
  loc_B1C99F: EqI2
  loc_B1C9A0: BranchF loc_B1C9AE
  loc_B1C9A3: LitI2_Byte 3
  loc_B1C9A5: CUI1I2
  loc_B1C9A7: ImpAdStUI1 MemVar_D93038
  loc_B1C9AB: Branch loc_B1C9BF
  loc_B1C9AE: FLdI2 var_8C
  loc_B1C9B1: LitI2_Byte 3
  loc_B1C9B3: EqI2
  loc_B1C9B4: BranchF loc_B1C9BF
  loc_B1C9B7: LitI2_Byte 4
  loc_B1C9B9: CUI1I2
  loc_B1C9BB: ImpAdStUI1 MemVar_D93038
  loc_B1C9BF: FLdRfVar var_90
  loc_B1C9C2: FLdPr Me
  loc_B1C9C5: VCallAd Control_ID_NumeCtaTxt
  loc_B1C9C8: FStAdFunc var_88
  loc_B1C9CB: FLdPr var_88
  loc_B1C9CE:  = Me.Text
  loc_B1C9D3: FLdPr Me
  loc_B1C9D6: MemLdRfVar from_stack_1.global_56
  loc_B1C9D9: NewIfNullRf
  loc_B1C9DD: LitStr "Titular"
  loc_B1C9E0: ILdRf var_90
  loc_B1C9E3: ImpAdLdUI1
  loc_B1C9E7: CStrI2
  loc_B1C9E9: FStStrNoPop var_94
  loc_B1C9EC: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B1C9F1: FFreeStr var_94 = ""
  loc_B1C9F8: FFree1Ad var_88
  loc_B1C9FB: BranchF loc_B1CB20
  loc_B1C9FE: FLdRfVar var_90
  loc_B1CA01: FLdPr Me
  loc_B1CA04: MemLdRfVar from_stack_1.global_56
  loc_B1CA07: NewIfNullPr tblPersona
  loc_B1CA0A: from_stack_1v = tblPersona.CucuPersGet()
  loc_B1CA0F: ILdRf var_90
  loc_B1CA12: FLdPr Me
  loc_B1CA15: VCallAd Control_ID_CucuPersLbl
  loc_B1CA18: FStAdFunc var_88
  loc_B1CA1B: FLdPr var_88
  loc_B1CA1E: Me.Caption = from_stack_1
  loc_B1CA23: FFree1Str var_90
  loc_B1CA26: FFree1Ad var_88
  loc_B1CA29: FLdRfVar var_90
  loc_B1CA2C: FLdPr Me
  loc_B1CA2F: MemLdRfVar from_stack_1.global_56
  loc_B1CA32: NewIfNullPr tblPersona
  loc_B1CA35: from_stack_1v = tblPersona.DetaPersGet()
  loc_B1CA3A: ILdRf var_90
  loc_B1CA3D: FLdPr Me
  loc_B1CA40: VCallAd Control_ID_DetaPersLbl
  loc_B1CA43: FStAdFunc var_88
  loc_B1CA46: FLdPr var_88
  loc_B1CA49: Me.Caption = from_stack_1
  loc_B1CA4E: FFree1Str var_90
  loc_B1CA51: FFree1Ad var_88
  loc_B1CA54: FLdRfVar var_94
  loc_B1CA57: FLdPr Me
  loc_B1CA5A: MemLdRfVar from_stack_1.global_56
  loc_B1CA5D: NewIfNullPr tblPersona
  loc_B1CA60: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B1CA65: FLdRfVar var_98
  loc_B1CA68: FLdPr Me
  loc_B1CA6B: MemLdRfVar from_stack_1.global_56
  loc_B1CA6E: NewIfNullPr tblPersona
  loc_B1CA71: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B1CA76: FLdRfVar var_90
  loc_B1CA79: FLdPr Me
  loc_B1CA7C: MemLdRfVar from_stack_1.global_56
  loc_B1CA7F: NewIfNullPr tblPersona
  loc_B1CA82: from_stack_1v = tblPersona.DetaCallGet()
  loc_B1CA87: ILdRf var_90
  loc_B1CA8A: LitStr " "
  loc_B1CA8D: ConcatStr
  loc_B1CA8E: CVarStr var_F8
  loc_B1CA91: LitVarStr var_C8, vbNullString
  loc_B1CA96: FStVarCopyObj var_D8
  loc_B1CA99: FLdRfVar var_D8
  loc_B1CA9C: LitStr "Nro: "
  loc_B1CA9F: ILdRf var_98
  loc_B1CAA2: ConcatStr
  loc_B1CAA3: CVarStr var_B8
  loc_B1CAA6: ILdRf var_94
  loc_B1CAA9: LitStr "0"
  loc_B1CAAC: NeStr
  loc_B1CAAE: CVarBoolI2 var_A8
  loc_B1CAB2: FLdRfVar var_E8
  loc_B1CAB5: ImpAdCallFPR4  = IIf(, , )
  loc_B1CABA: FLdRfVar var_E8
  loc_B1CABD: ConcatVar var_108
  loc_B1CAC1: LitVarStr var_118, " "
  loc_B1CAC6: ConcatVar var_128
  loc_B1CACA: FLdRfVar var_12C
  loc_B1CACD: FLdPr Me
  loc_B1CAD0: MemLdRfVar from_stack_1.global_56
  loc_B1CAD3: NewIfNullPr tblPersona
  loc_B1CAD6: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B1CADB: FLdZeroAd var_12C
  loc_B1CADE: CVarStr var_13C
  loc_B1CAE1: ConcatVar var_14C
  loc_B1CAE5: CStrVarVal var_150
  loc_B1CAE9: FLdPr Me
  loc_B1CAEC: VCallAd Control_ID_DomiPersLbl
  loc_B1CAEF: FStAdFunc var_88
  loc_B1CAF2: FLdPr var_88
  loc_B1CAF5: Me.Caption = from_stack_1
  loc_B1CAFA: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_B1CB05: FFree1Ad var_88
  loc_B1CB08: FFreeVar var_A8 = "": var_B8 = "": var_D8 = "": var_F8 = "": var_E8 = "": var_108 = "": var_128 = "": var_13C = ""
  loc_B1CB1D: Branch loc_B1CBA6
  loc_B1CB20: FLdRfVar var_90
  loc_B1CB23: FLdPr Me
  loc_B1CB26: MemLdRfVar from_stack_1.global_56
  loc_B1CB29: NewIfNullPr tblPersona
  loc_B1CB2C: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B1CB31: ILdRf var_90
  loc_B1CB34: FLdPr Me
  loc_B1CB37: MemStStrCopy
  loc_B1CB3B: FFree1Str var_90
  loc_B1CB3E: FLdPr Me
  loc_B1CB41: MemLdStr global_64
  loc_B1CB44: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B1CB49: LitStr vbNullString
  loc_B1CB4C: FLdPr Me
  loc_B1CB4F: VCallAd Control_ID_CucuPersLbl
  loc_B1CB52: FStAdFunc var_88
  loc_B1CB55: FLdPr var_88
  loc_B1CB58: Me.Caption = from_stack_1
  loc_B1CB5D: FFree1Ad var_88
  loc_B1CB60: LitStr vbNullString
  loc_B1CB63: FLdPr Me
  loc_B1CB66: VCallAd Control_ID_DetaPersLbl
  loc_B1CB69: FStAdFunc var_88
  loc_B1CB6C: FLdPr var_88
  loc_B1CB6F: Me.Caption = from_stack_1
  loc_B1CB74: FFree1Ad var_88
  loc_B1CB77: LitStr vbNullString
  loc_B1CB7A: FLdPr Me
  loc_B1CB7D: VCallAd Control_ID_DomiPersLbl
  loc_B1CB80: FStAdFunc var_88
  loc_B1CB83: FLdPr var_88
  loc_B1CB86: Me.Caption = from_stack_1
  loc_B1CB8B: FFree1Ad var_88
  loc_B1CB8E: FLdPr Me
  loc_B1CB91: VCallAd Control_ID_NumeCtaTxt
  loc_B1CB94: CVarAd
  loc_B1CB98: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B1CB9D: FFree1Var var_B8 = ""
  loc_B1CBA0: LitI2_Byte &HFF
  loc_B1CBA2: IStI2 Cancel
  loc_B1CBA5: ExitProcHresult
  loc_B1CBA6: ExitProcHresult
End Sub

Private Function Proc_22_10_B0D46C() 'B0D46C
  'Data Table: 45A558
  loc_B0D228: FLdPr Me
  loc_B0D22B: VCallAd Control_ID_ctacteFlex
  loc_B0D22E: FStAdFunc var_88
  loc_B0D231: FLdPr var_88
  loc_B0D234: LateIdCall
  loc_B0D23C: LitVarI4
  loc_B0D244: PopAdLdVar
  loc_B0D245: FLdPr var_88
  loc_B0D248: LateIdSt
  loc_B0D24D: LitVarI4
  loc_B0D255: PopAdLdVar
  loc_B0D256: LitVarI4
  loc_B0D25E: PopAdLdVar
  loc_B0D25F: LitVarStr var_D8, "Of"
  loc_B0D264: PopAdLdVar
  loc_B0D265: FLdPr var_88
  loc_B0D268: LateIdCallSt
  loc_B0D270: LitVarI4
  loc_B0D278: PopAdLdVar
  loc_B0D279: LitVarI4
  loc_B0D281: PopAdLdVar
  loc_B0D282: LitVarStr var_D8, "Cuenta"
  loc_B0D287: PopAdLdVar
  loc_B0D288: FLdPr var_88
  loc_B0D28B: LateIdCallSt
  loc_B0D293: LitVarI4
  loc_B0D29B: PopAdLdVar
  loc_B0D29C: LitVarI4
  loc_B0D2A4: PopAdLdVar
  loc_B0D2A5: LitVarStr var_D8, "Periodo"
  loc_B0D2AA: PopAdLdVar
  loc_B0D2AB: FLdPr var_88
  loc_B0D2AE: LateIdCallSt
  loc_B0D2B6: LitVarI4
  loc_B0D2BE: PopAdLdVar
  loc_B0D2BF: LitVarI4
  loc_B0D2C7: PopAdLdVar
  loc_B0D2C8: LitVarStr var_D8, "Boleto"
  loc_B0D2CD: PopAdLdVar
  loc_B0D2CE: FLdPr var_88
  loc_B0D2D1: LateIdCallSt
  loc_B0D2D9: LitVarI4
  loc_B0D2E1: PopAdLdVar
  loc_B0D2E2: LitVarI4
  loc_B0D2EA: PopAdLdVar
  loc_B0D2EB: LitVarStr var_D8, "Fecha Alta"
  loc_B0D2F0: PopAdLdVar
  loc_B0D2F1: FLdPr var_88
  loc_B0D2F4: LateIdCallSt
  loc_B0D2FC: LitVarI4
  loc_B0D304: PopAdLdVar
  loc_B0D305: LitVarI4
  loc_B0D30D: PopAdLdVar
  loc_B0D30E: LitVarStr var_D8, "Liqu."
  loc_B0D313: PopAdLdVar
  loc_B0D314: FLdPr var_88
  loc_B0D317: LateIdCallSt
  loc_B0D31F: LitVarI4
  loc_B0D327: PopAdLdVar
  loc_B0D328: LitVarI4
  loc_B0D330: PopAdLdVar
  loc_B0D331: LitVarStr var_D8, "Nro Liqu."
  loc_B0D336: PopAdLdVar
  loc_B0D337: FLdPr var_88
  loc_B0D33A: LateIdCallSt
  loc_B0D342: LitVarI4
  loc_B0D34A: PopAdLdVar
  loc_B0D34B: LitVarI4
  loc_B0D353: PopAdLdVar
  loc_B0D354: LitVarStr var_D8, "Concepto"
  loc_B0D359: PopAdLdVar
  loc_B0D35A: FLdPr var_88
  loc_B0D35D: LateIdCallSt
  loc_B0D365: LitVarI4
  loc_B0D36D: PopAdLdVar
  loc_B0D36E: LitVarI4
  loc_B0D376: PopAdLdVar
  loc_B0D377: LitVarStr var_D8, "Exp/Comp"
  loc_B0D37C: PopAdLdVar
  loc_B0D37D: FLdPr var_88
  loc_B0D380: LateIdCallSt
  loc_B0D388: LitVarI4
  loc_B0D390: PopAdLdVar
  loc_B0D391: LitVarI4
  loc_B0D399: PopAdLdVar
  loc_B0D39A: LitVarStr var_D8, "Tipo Movi."
  loc_B0D39F: PopAdLdVar
  loc_B0D3A0: FLdPr var_88
  loc_B0D3A3: LateIdCallSt
  loc_B0D3AB: LitVarI4
  loc_B0D3B3: PopAdLdVar
  loc_B0D3B4: LitVarI4
  loc_B0D3BC: PopAdLdVar
  loc_B0D3BD: LitVarStr var_D8, "Creditos"
  loc_B0D3C2: PopAdLdVar
  loc_B0D3C3: FLdPr var_88
  loc_B0D3C6: LateIdCallSt
  loc_B0D3CE: LitVarI4
  loc_B0D3D6: PopAdLdVar
  loc_B0D3D7: LitVarI4
  loc_B0D3DF: PopAdLdVar
  loc_B0D3E0: LitVarStr var_D8, "Creditos"
  loc_B0D3E5: PopAdLdVar
  loc_B0D3E6: FLdPr var_88
  loc_B0D3E9: LateIdCallSt
  loc_B0D3F1: LitVarI4
  loc_B0D3F9: PopAdLdVar
  loc_B0D3FA: LitVarI4
  loc_B0D402: PopAdLdVar
  loc_B0D403: LitVarStr var_D8, "Saldo"
  loc_B0D408: PopAdLdVar
  loc_B0D409: FLdPr var_88
  loc_B0D40C: LateIdCallSt
  loc_B0D414: LitVarI4
  loc_B0D41C: PopAdLdVar
  loc_B0D41D: LitVarI4
  loc_B0D425: PopAdLdVar
  loc_B0D426: LitVarStr var_D8, "Numero"
  loc_B0D42B: PopAdLdVar
  loc_B0D42C: FLdPr var_88
  loc_B0D42F: LateIdCallSt
  loc_B0D437: LitVarI4
  loc_B0D43F: PopAdLdVar
  loc_B0D440: LitVarI4
  loc_B0D448: PopAdLdVar
  loc_B0D449: LitVarStr var_D8, "Mov"
  loc_B0D44E: PopAdLdVar
  loc_B0D44F: FLdPr var_88
  loc_B0D452: LateIdCallSt
  loc_B0D45A: FLdPr var_88
  loc_B0D45D: LateIdCall
  loc_B0D465: LitNothing
  loc_B0D467: FStAd var_88 
  loc_B0D46B: ExitProcHresult
End Function
