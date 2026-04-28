VERSION 5.00
Begin VB.Form frmProcesodePrescripciondeDeuda
  Caption = "Prescripción de Deuda"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 336
  ClientWidth = 9060
  ClientHeight = 3672
  Begin VB.ComboBox OficinaCbo
    Style = 2
    ForeColor = &HFF0000&
    Left = 3120
    Top = 360
    Width = 2295
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
  Begin VB.CommandButton ImprimirCmd
    Left = 1680
    Top = 2640
    Width = 1455
    Height = 615
    TabIndex = 7
    Picture = "frmProcesodePrescripciondeDeuda.frx":0000
    Style = 1
  End
  Begin VB.TextBox CodiConcTxt
    ForeColor = &HFF0000&
    Left = 3120
    Top = 1560
    Width = 855
    Height = 420
    TabIndex = 2
    MaxLength = 4
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
  Begin VB.TextBox PeriodoTxt
    ForeColor = &HFF0000&
    Left = 3120
    Top = 960
    Width = 1215
    Height = 420
    TabIndex = 1
    MaxLength = 4
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
  Begin VB.CommandButton ConfirmarCmd
    Left = 4200
    Top = 2640
    Width = 1455
    Height = 615
    TabIndex = 3
    Picture = "frmProcesodePrescripciondeDeuda.frx":0102
    Style = 1
  End
  Begin VB.CommandButton cmdSalir
    Left = 7320
    Top = 360
    Width = 975
    Height = 855
    TabIndex = 4
    Picture = "frmProcesodePrescripciondeDeuda.frx":0430
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.Label Label5
    Caption = "Oficina:"
    Left = 2280
    Top = 360
    Width = 795
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
    Caption = "Concepto:"
    Left = 1920
    Top = 1560
    Width = 1095
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
  Begin VB.Label Label1
    Caption = "Periodo:"
    Left = 2160
    Top = 960
    Width = 870
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

Attribute VB_Name = "frmProcesodePrescripciondeDeuda"


Private Sub ImprimirCmd_Click() '9FE620
  'Data Table: 4243C0
  loc_9FE5F0: ImpAdLdRf MemVar_D93144
  loc_9FE5F3: NewIfNullAd
  loc_9FE5F6: CastAd
  loc_9FE5F9: FStAdFuncNoPop
  loc_9FE5FC: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_9FE601: FFree1Ad var_88
  loc_9FE604: LitVar_Missing var_A8
  loc_9FE607: PopAdLdVar
  loc_9FE608: LitVarI4
  loc_9FE610: PopAdLdVar
  loc_9FE611: ImpAdLdRf MemVar_D93144
  loc_9FE614: NewIfNullPr rptListadodePrescripciondeDeuda
  loc_9FE617: rptListadodePrescripciondeDeuda.Show from_stack_1, from_stack_2
  loc_9FE61C: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9D3130
  'Data Table: 4243C0
  loc_9D3118: ILdRf Me
  loc_9D311B: FStAdNoPop
  loc_9D311F: ImpAdLdRf MemVar_D9C5D8
  loc_9D3122: NewIfNullPr Global
  loc_9D3125: Global.Unload from_stack_1
  loc_9D312A: FFree1Ad var_88
  loc_9D312D: ExitProcHresult
End Sub

Private Sub Form_Load() 'AA52A8
  'Data Table: 4243C0
  loc_AA51E8: LitI2_Byte 0
  loc_AA51EA: CR8I2
  loc_AA51EB: PopFPR4
  loc_AA51EC: FLdPr Me
  loc_AA51EF: Me.Left = from_stack_1s
  loc_AA51F4: LitI2_Byte 0
  loc_AA51F6: CR8I2
  loc_AA51F7: PopFPR4
  loc_AA51F8: FLdPr Me
  loc_AA51FB: Me.Top = from_stack_1s
  loc_AA5200: LitVar_Missing var_94
  loc_AA5203: PopAdLdVar
  loc_AA5204: LitStr "Inmueble"
  loc_AA5207: FLdPr Me
  loc_AA520A: VCallAd Control_ID_OficinaCbo
  loc_AA520D: FStAdFunc var_98
  loc_AA5210: FLdPr var_98
  loc_AA5213: Me.AddItem from_stack_1, from_stack_2
  loc_AA5218: FFree1Ad var_98
  loc_AA521B: LitVar_Missing var_94
  loc_AA521E: PopAdLdVar
  loc_AA521F: LitStr "Comercio"
  loc_AA5222: FLdPr Me
  loc_AA5225: VCallAd Control_ID_OficinaCbo
  loc_AA5228: FStAdFunc var_98
  loc_AA522B: FLdPr var_98
  loc_AA522E: Me.AddItem from_stack_1, from_stack_2
  loc_AA5233: FFree1Ad var_98
  loc_AA5236: LitI2_Byte 0
  loc_AA5238: FLdPr Me
  loc_AA523B: VCallAd Control_ID_OficinaCbo
  loc_AA523E: FStAdFunc var_98
  loc_AA5241: FLdPr var_98
  loc_AA5244: Me.ListIndex = from_stack_1
  loc_AA5249: FFree1Ad var_98
  loc_AA524C: LitI2_Byte 0
  loc_AA524E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AA5253: CVarDate var_A8
  loc_AA5257: FLdRfVar var_B8
  loc_AA525A: ImpAdCallFPR4  = Year()
  loc_AA525F: FLdRfVar var_B8
  loc_AA5262: LitVarI2 var_C8, 6
  loc_AA5267: SubVar var_D8
  loc_AA526B: CStrVarVal var_DC
  loc_AA526F: FLdPr Me
  loc_AA5272: VCallAd Control_ID_PeriodoTxt
  loc_AA5275: FStAdFunc var_98
  loc_AA5278: FLdPr var_98
  loc_AA527B: Me.Text = from_stack_1
  loc_AA5280: FFree1Str var_DC
  loc_AA5283: FFree1Ad var_98
  loc_AA5286: FFreeVar var_A8 = ""
  loc_AA528D: LitStr vbNullString
  loc_AA5290: FLdPr Me
  loc_AA5293: VCallAd Control_ID_CodiConcTxt
  loc_AA5296: FStAdFunc var_98
  loc_AA5299: FLdPr var_98
  loc_AA529C: Me.Text = from_stack_1
  loc_AA52A1: FFree1Ad var_98
  loc_AA52A4: ExitProcHresult
End Sub

Private Sub CodiConcTxt_GotFocus() '9C15F8
  'Data Table: 4243C0
  loc_9C15E4: FLdPr Me
  loc_9C15E7: VCallAd Control_ID_CodiConcTxt
  loc_9C15EA: CVarAd
  loc_9C15EE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C15F3: FFree1Var var_94 = ""
  loc_9C15F6: ExitProcHresult
End Sub

Private Sub PeriodoTxt_GotFocus() '9C15B0
  'Data Table: 4243C0
  loc_9C159C: FLdPr Me
  loc_9C159F: VCallAd Control_ID_PeriodoTxt
  loc_9C15A2: CVarAd
  loc_9C15A6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C15AB: FFree1Var var_94 = ""
  loc_9C15AE: ExitProcHresult
  loc_9C15AF: ExitProcR4
End Sub

Private Sub PeriodoTxt_KeyPress(KeyAscii As Integer) '9D304C
  'Data Table: 4243C0
  loc_9D3034: LitStr "0123456789"
  loc_9D3037: FStStrCopy var_88
  loc_9D303A: FLdRfVar var_88
  loc_9D303D: ILdRf KeyAscii
  loc_9D3040: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D3045: IStI2 KeyAscii
  loc_9D3048: FFree1Str var_88
  loc_9D304B: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click() 'B9D494
  'Data Table: 4243C0
  loc_B9CF24: LitI2_Byte &HB
  loc_B9CF26: FLdPr Me
  loc_B9CF29: Me.MousePointer = from_stack_1
  loc_B9CF2E: LitI4 0
  loc_B9CF33: LitI4 5
  loc_B9CF38: FLdRfVar var_8C
  loc_B9CF3B: Redim
  loc_B9CF45: FLdPr Me
  loc_B9CF48: VCallAd Control_ID_OficinaCbo
  loc_B9CF4B: CVarAd
  loc_B9CF4F: ParmAry1St
  loc_B9CF55: FLdPr Me
  loc_B9CF58: VCallAd Control_ID_PeriodoTxt
  loc_B9CF5B: CVarAd
  loc_B9CF5F: ParmAry1St
  loc_B9CF65: FLdPr Me
  loc_B9CF68: VCallAd Control_ID_CodiConcTxt
  loc_B9CF6B: CVarAd
  loc_B9CF6F: ParmAry1St
  loc_B9CF75: FLdPr Me
  loc_B9CF78: VCallAd Control_ID_ConfirmarCmd
  loc_B9CF7B: CVarAd
  loc_B9CF7F: ParmAry1St
  loc_B9CF85: FLdPr Me
  loc_B9CF88: VCallAd Control_ID_ImprimirCmd
  loc_B9CF8B: CVarAd
  loc_B9CF8F: ParmAry1St
  loc_B9CF95: FLdPr Me
  loc_B9CF98: VCallAd Control_ID_cmdSalir
  loc_B9CF9B: CVarAd
  loc_B9CF9F: ParmAry1St
  loc_B9CFA5: FLdRfVar var_8C
  loc_B9CFA8: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B9CFAD: FLdRfVar var_8C
  loc_B9CFB0: Erase
  loc_B9CFB1: FLdRfVar var_F2
  loc_B9CFB4: FLdPr Me
  loc_B9CFB7: VCallAd Control_ID_OficinaCbo
  loc_B9CFBA: FStAdFunc var_F0
  loc_B9CFBD: FLdPr var_F0
  loc_B9CFC0:  = Me.ListIndex
  loc_B9CFC5: FLdI2 var_F2
  loc_B9CFC8: FStI2 var_F4
  loc_B9CFCB: FFree1Ad var_F0
  loc_B9CFCE: FLdI2 var_F4
  loc_B9CFD1: LitI2_Byte 0
  loc_B9CFD3: EqI2
  loc_B9CFD4: BranchF loc_B9CFE2
  loc_B9CFD7: LitI2_Byte 1
  loc_B9CFD9: CUI1I2
  loc_B9CFDB: FStUI1 var_86
  loc_B9CFDF: Branch loc_B9CFF3
  loc_B9CFE2: FLdI2 var_F4
  loc_B9CFE5: LitI2_Byte 1
  loc_B9CFE7: EqI2
  loc_B9CFE8: BranchF loc_B9CFF3
  loc_B9CFEB: LitI2_Byte 2
  loc_B9CFED: CUI1I2
  loc_B9CFEF: FStUI1 var_86
  loc_B9CFF3: LitStr "SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct FROM ctacte "
  loc_B9CFF6: LitStr " WHERE CodiOfic = "
  loc_B9CFF9: ConcatStr
  loc_B9CFFA: FStStrNoPop var_F8
  loc_B9CFFD: FLdUI1
  loc_B9D001: CStrI2
  loc_B9D003: FStStrNoPop var_FC
  loc_B9D006: ConcatStr
  loc_B9D007: FStStrNoPop var_100
  loc_B9D00A: LitStr " AND PeriCtct = "
  loc_B9D00D: ConcatStr
  loc_B9D00E: FStStrNoPop var_108
  loc_B9D011: FLdRfVar var_104
  loc_B9D014: FLdPr Me
  loc_B9D017: VCallAd Control_ID_PeriodoTxt
  loc_B9D01A: FStAdFunc var_F0
  loc_B9D01D: FLdPr var_F0
  loc_B9D020:  = Me.Text
  loc_B9D025: ILdRf var_104
  loc_B9D028: ConcatStr
  loc_B9D029: FStStrNoPop var_10C
  loc_B9D02C: LitStr " AND (CodiConc = '"
  loc_B9D02F: ConcatStr
  loc_B9D030: FStStrNoPop var_118
  loc_B9D033: FLdRfVar var_114
  loc_B9D036: FLdPr Me
  loc_B9D039: VCallAd Control_ID_CodiConcTxt
  loc_B9D03C: FStAdFunc var_110
  loc_B9D03F: FLdPr var_110
  loc_B9D042:  = Me.Text
  loc_B9D047: ILdRf var_114
  loc_B9D04A: ConcatStr
  loc_B9D04B: FStStrNoPop var_11C
  loc_B9D04E: LitStr "'"
  loc_B9D051: ConcatStr
  loc_B9D052: FStStrNoPop var_120
  loc_B9D055: LitStr " OR  CodiConc = '750')"
  loc_B9D058: ConcatStr
  loc_B9D059: FStStrNoPop var_124
  loc_B9D05C: LitStr " AND CodiFapa = 0 "
  loc_B9D05F: ConcatStr
  loc_B9D060: FStStrNoPop var_128
  loc_B9D063: LitStr " AND NumeApre = 0 "
  loc_B9D066: ConcatStr
  loc_B9D067: FStStrNoPop var_12C
  loc_B9D06A: LitStr " AND MoviCtct = 1 ORDER BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_B9D06D: ConcatStr
  loc_B9D06E: FStStrNoPop var_130
  loc_B9D071: FLdPr Me
  loc_B9D074: MemLdRfVar from_stack_1.global_52
  loc_B9D077: NewIfNullPr clsctacte
  loc_B9D07A: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B9D07F: FFreeStr var_F8 = "": var_FC = "": var_100 = "": var_108 = "": var_104 = "": var_10C = "": var_118 = "": var_114 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_B9D09E: FFreeAd var_F0 = ""
  loc_B9D0A5: FLdRfVar var_134
  loc_B9D0A8: FLdPr Me
  loc_B9D0AB: MemLdRfVar from_stack_1.global_52
  loc_B9D0AE: NewIfNullPr clsctacte
  loc_B9D0B1: from_stack_1 = clsctacte.RecordCount
  loc_B9D0B6: ILdRf var_134
  loc_B9D0B9: LitI4 0
  loc_B9D0BE: GtI4
  loc_B9D0BF: BranchF loc_B9D3EF
  loc_B9D0C2: FLdPr Me
  loc_B9D0C5: MemLdRfVar from_stack_1.global_52
  loc_B9D0C8: NewIfNullPr clsctacte
  loc_B9D0CB: Call clsctacte.MoveFirst()
  loc_B9D0D0: FLdRfVar var_F2
  loc_B9D0D3: FLdPr Me
  loc_B9D0D6: MemLdRfVar from_stack_1.global_52
  loc_B9D0D9: NewIfNullPr clsctacte
  loc_B9D0DC: from_stack_1 = clsctacte.EOF
  loc_B9D0E1: FLdI2 var_F2
  loc_B9D0E4: NotI4
  loc_B9D0E5: BranchF loc_B9D3EF
  loc_B9D0E8: LitStr "SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, TipoCtct, PeriInfo, CodiConc, sum(DebeCtct) - sum(CredCtct) as SaldCtct FROM ctacte "
  loc_B9D0EB: LitStr " WHERE CodiOfic = "
  loc_B9D0EE: ConcatStr
  loc_B9D0EF: FStStrNoPop var_F8
  loc_B9D0F2: FLdRfVar var_F2
  loc_B9D0F5: FLdPr Me
  loc_B9D0F8: MemLdRfVar from_stack_1.global_52
  loc_B9D0FB: NewIfNullPr clsctacte
  loc_B9D0FE: from_stack_1 = clsctacte.CodiOfic
  loc_B9D103: FLdI2 var_F2
  loc_B9D106: CStrUI1
  loc_B9D108: FStStrNoPop var_FC
  loc_B9D10B: ConcatStr
  loc_B9D10C: FStStrNoPop var_100
  loc_B9D10F: LitStr " AND CuenCtct = '"
  loc_B9D112: ConcatStr
  loc_B9D113: FStStrNoPop var_108
  loc_B9D116: FLdRfVar var_104
  loc_B9D119: FLdPr Me
  loc_B9D11C: MemLdRfVar from_stack_1.global_52
  loc_B9D11F: NewIfNullPr clsctacte
  loc_B9D122: from_stack_1 = clsctacte.CuenCtct
  loc_B9D127: ILdRf var_104
  loc_B9D12A: ConcatStr
  loc_B9D12B: FStStrNoPop var_10C
  loc_B9D12E: LitStr "'"
  loc_B9D131: ConcatStr
  loc_B9D132: FStStrNoPop var_114
  loc_B9D135: LitStr " AND PeriCtct = "
  loc_B9D138: ConcatStr
  loc_B9D139: FStStrNoPop var_118
  loc_B9D13C: FLdRfVar var_136
  loc_B9D13F: FLdPr Me
  loc_B9D142: MemLdRfVar from_stack_1.global_52
  loc_B9D145: NewIfNullPr clsctacte
  loc_B9D148: from_stack_1 = clsctacte.PeriCtct
  loc_B9D14D: FLdI2 var_136
  loc_B9D150: CStrUI1
  loc_B9D152: FStStrNoPop var_11C
  loc_B9D155: ConcatStr
  loc_B9D156: FStStrNoPop var_120
  loc_B9D159: LitStr " AND NumeCtct = "
  loc_B9D15C: ConcatStr
  loc_B9D15D: FStStrNoPop var_124
  loc_B9D160: FLdRfVar var_134
  loc_B9D163: FLdPr Me
  loc_B9D166: MemLdRfVar from_stack_1.global_52
  loc_B9D169: NewIfNullPr clsctacte
  loc_B9D16C: from_stack_1 = clsctacte.NumeCtct
  loc_B9D171: ILdRf var_134
  loc_B9D174: CStrI4
  loc_B9D176: FStStrNoPop var_128
  loc_B9D179: ConcatStr
  loc_B9D17A: FStStrNoPop var_12C
  loc_B9D17D: LitStr " AND BimeCtct = "
  loc_B9D180: ConcatStr
  loc_B9D181: FStStrNoPop var_130
  loc_B9D184: FLdRfVar var_138
  loc_B9D187: FLdPr Me
  loc_B9D18A: MemLdRfVar from_stack_1.global_52
  loc_B9D18D: NewIfNullPr clsctacte
  loc_B9D190: from_stack_1 = clsctacte.BimeCtct
  loc_B9D195: FLdI2 var_138
  loc_B9D198: CStrUI1
  loc_B9D19A: FStStrNoPop var_13C
  loc_B9D19D: ConcatStr
  loc_B9D19E: FStStrNoPop var_140
  loc_B9D1A1: LitStr " GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct"
  loc_B9D1A4: ConcatStr
  loc_B9D1A5: FStStrNoPop var_144
  loc_B9D1A8: FLdPr Me
  loc_B9D1AB: MemLdRfVar from_stack_1.global_56
  loc_B9D1AE: NewIfNullPr clsctacte
  loc_B9D1B1: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B9D1B6: FFreeStr var_F8 = "": var_FC = "": var_100 = "": var_108 = "": var_104 = "": var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_13C = "": var_140 = ""
  loc_B9D1DB: FLdRfVar var_134
  loc_B9D1DE: FLdPr Me
  loc_B9D1E1: MemLdRfVar from_stack_1.global_56
  loc_B9D1E4: NewIfNullPr clsctacte
  loc_B9D1E7: from_stack_1 = clsctacte.RecordCount
  loc_B9D1EC: ILdRf var_134
  loc_B9D1EF: LitI4 0
  loc_B9D1F4: GtI4
  loc_B9D1F5: BranchF loc_B9D3DE
  loc_B9D1F8: FLdPr Me
  loc_B9D1FB: MemLdRfVar from_stack_1.global_56
  loc_B9D1FE: NewIfNullPr clsctacte
  loc_B9D201: Call clsctacte.MoveFirst()
  loc_B9D206: FLdRfVar var_14C
  loc_B9D209: FLdPr Me
  loc_B9D20C: MemLdRfVar from_stack_1.global_56
  loc_B9D20F: NewIfNullPr clsctacte
  loc_B9D212: from_stack_1 = clsctacte.SaldCtct
  loc_B9D217: FLdFPR8 var_14C
  loc_B9D21A: LitI2_Byte 0
  loc_B9D21C: CR8I2
  loc_B9D21D: GtR4
  loc_B9D21E: BranchF loc_B9D3DE
  loc_B9D221: FLdRfVar var_F2
  loc_B9D224: FLdPr Me
  loc_B9D227: MemLdRfVar from_stack_1.global_56
  loc_B9D22A: NewIfNullPr clsctacte
  loc_B9D22D: from_stack_1 = clsctacte.CodiOfic
  loc_B9D232: FLdRfVar var_F8
  loc_B9D235: FLdPr Me
  loc_B9D238: MemLdRfVar from_stack_1.global_56
  loc_B9D23B: NewIfNullPr clsctacte
  loc_B9D23E: from_stack_1 = clsctacte.CuenCtct
  loc_B9D243: FLdRfVar var_136
  loc_B9D246: FLdPr Me
  loc_B9D249: MemLdRfVar from_stack_1.global_56
  loc_B9D24C: NewIfNullPr clsctacte
  loc_B9D24F: from_stack_1 = clsctacte.PeriCtct
  loc_B9D254: FLdRfVar var_138
  loc_B9D257: FLdPr Me
  loc_B9D25A: MemLdRfVar from_stack_1.global_56
  loc_B9D25D: NewIfNullPr clsctacte
  loc_B9D260: from_stack_1 = clsctacte.BimeCtct
  loc_B9D265: FLdRfVar var_134
  loc_B9D268: FLdPr Me
  loc_B9D26B: MemLdRfVar from_stack_1.global_56
  loc_B9D26E: NewIfNullPr clsctacte
  loc_B9D271: from_stack_1 = clsctacte.NumeCtct
  loc_B9D276: FLdRfVar var_14E
  loc_B9D279: ILdRf var_134
  loc_B9D27C: FLdI2 var_138
  loc_B9D27F: FLdI2 var_136
  loc_B9D282: ILdRf var_F8
  loc_B9D285: FLdI2 var_F2
  loc_B9D288: FLdPr Me
  loc_B9D28B: MemLdRfVar from_stack_1.global_52
  loc_B9D28E: NewIfNullPr clsctacte
  loc_B9D291: from_stack_6v = clsctacte.BuscaMoviCtct(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_B9D296: FLdI2 var_14E
  loc_B9D299: FLdPr Me
  loc_B9D29C: MemStI2 global_68
  loc_B9D29F: FFree1Str var_F8
  loc_B9D2A2: FLdPr Me
  loc_B9D2A5: MemLdI2 global_68
  loc_B9D2A8: LitI2_Byte 1
  loc_B9D2AA: AddI2
  loc_B9D2AB: FLdPr Me
  loc_B9D2AE: MemStI2 global_68
  loc_B9D2B1: FLdRfVar var_F2
  loc_B9D2B4: FLdPr Me
  loc_B9D2B7: MemLdRfVar from_stack_1.global_56
  loc_B9D2BA: NewIfNullPr clsctacte
  loc_B9D2BD: from_stack_1 = clsctacte.CodiOfic
  loc_B9D2C2: FLdRfVar var_F8
  loc_B9D2C5: FLdPr Me
  loc_B9D2C8: MemLdRfVar from_stack_1.global_56
  loc_B9D2CB: NewIfNullPr clsctacte
  loc_B9D2CE: from_stack_1 = clsctacte.CuenCtct
  loc_B9D2D3: FLdRfVar var_136
  loc_B9D2D6: FLdPr Me
  loc_B9D2D9: MemLdRfVar from_stack_1.global_56
  loc_B9D2DC: NewIfNullPr clsctacte
  loc_B9D2DF: from_stack_1 = clsctacte.PeriCtct
  loc_B9D2E4: FLdRfVar var_138
  loc_B9D2E7: FLdPr Me
  loc_B9D2EA: MemLdRfVar from_stack_1.global_56
  loc_B9D2ED: NewIfNullPr clsctacte
  loc_B9D2F0: from_stack_1 = clsctacte.BimeCtct
  loc_B9D2F5: FLdRfVar var_134
  loc_B9D2F8: FLdPr Me
  loc_B9D2FB: MemLdRfVar from_stack_1.global_56
  loc_B9D2FE: NewIfNullPr clsctacte
  loc_B9D301: from_stack_1 = clsctacte.NumeCtct
  loc_B9D306: FLdRfVar var_FC
  loc_B9D309: FLdPr Me
  loc_B9D30C: MemLdRfVar from_stack_1.global_56
  loc_B9D30F: NewIfNullPr clsctacte
  loc_B9D312: from_stack_1 = clsctacte.TipoCtct
  loc_B9D317: LitI2_Byte 0
  loc_B9D319: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B9D31E: FStFPR8 var_178
  loc_B9D321: LitI2_Byte 0
  loc_B9D323: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B9D328: FStFPR8 var_180
  loc_B9D32B: FLdRfVar var_14E
  loc_B9D32E: FLdPr Me
  loc_B9D331: MemLdRfVar from_stack_1.global_56
  loc_B9D334: NewIfNullPr clsctacte
  loc_B9D337: from_stack_1 = clsctacte.PeriInfo
  loc_B9D33C: FLdRfVar var_100
  loc_B9D33F: FLdPr Me
  loc_B9D342: MemLdRfVar from_stack_1.global_56
  loc_B9D345: NewIfNullPr clsctacte
  loc_B9D348: from_stack_1 = clsctacte.CodiConc
  loc_B9D34D: FLdRfVar var_14C
  loc_B9D350: FLdPr Me
  loc_B9D353: MemLdRfVar from_stack_1.global_56
  loc_B9D356: NewIfNullPr clsctacte
  loc_B9D359: from_stack_1 = clsctacte.SaldCtct
  loc_B9D35E: FLdR8 var_14C
  loc_B9D361: LitI2_Byte 0
  loc_B9D363: CR8I2
  loc_B9D364: PopFPR8
  loc_B9D365: LitStr vbNullString
  loc_B9D368: LitI4 0
  loc_B9D36D: LitI2_Byte 0
  loc_B9D36F: LitStr vbNullString
  loc_B9D372: LitStr vbNullString
  loc_B9D375: LitI2_Byte &HC
  loc_B9D377: CUI1I2
  loc_B9D379: LitI4 0
  loc_B9D37E: LitI2_Byte 0
  loc_B9D380: LitI4 0
  loc_B9D385: ILdRf var_100
  loc_B9D388: FLdI2 var_14E
  loc_B9D38B: LitI2_Byte 0
  loc_B9D38D: LitStr vbNullString
  loc_B9D390: FLdFPR8 var_180
  loc_B9D393: CVarDate var_170
  loc_B9D397: PopAdLdVar
  loc_B9D398: FLdFPR8 var_178
  loc_B9D39B: CVarDate var_160
  loc_B9D39F: PopAdLdVar
  loc_B9D3A0: ILdRf var_FC
  loc_B9D3A3: LitI4 0
  loc_B9D3A8: LitI2_Byte 0
  loc_B9D3AA: LitI2_Byte 0
  loc_B9D3AC: LitI2_Byte 0
  loc_B9D3AE: CUI1I2
  loc_B9D3B0: FLdPr Me
  loc_B9D3B3: MemLdI2 global_68
  loc_B9D3B6: ILdRf var_134
  loc_B9D3B9: FLdI2 var_138
  loc_B9D3BC: FLdI2 var_136
  loc_B9D3BF: ILdRf var_F8
  loc_B9D3C2: FLdI2 var_F2
  loc_B9D3C5: CUI1I2
  loc_B9D3C7: FLdPr Me
  loc_B9D3CA: MemLdRfVar from_stack_1.global_52
  loc_B9D3CD: NewIfNullPr clsctacte
  loc_B9D3D0: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_B9D3D5: FFreeStr var_F8 = "": var_FC = ""
  loc_B9D3DE: FLdPr Me
  loc_B9D3E1: MemLdRfVar from_stack_1.global_52
  loc_B9D3E4: NewIfNullPr clsctacte
  loc_B9D3E7: Call clsctacte.MoveSiguiente()
  loc_B9D3EC: Branch loc_B9D0D0
  loc_B9D3EF: LitI2_Byte 0
  loc_B9D3F1: FLdPr Me
  loc_B9D3F4: Me.MousePointer = from_stack_1
  loc_B9D3F9: LitStr "Proceso Terminado"
  loc_B9D3FC: FLdPr Me
  loc_B9D3FF: MemStStrCopy
  loc_B9D403: FLdPr Me
  loc_B9D406: MemLdStr global_64
  loc_B9D409: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B9D40E: LitI4 0
  loc_B9D413: LitI4 5
  loc_B9D418: FLdRfVar var_8C
  loc_B9D41B: Redim
  loc_B9D425: FLdPr Me
  loc_B9D428: VCallAd Control_ID_OficinaCbo
  loc_B9D42B: CVarAd
  loc_B9D42F: ParmAry1St
  loc_B9D435: FLdPr Me
  loc_B9D438: VCallAd Control_ID_PeriodoTxt
  loc_B9D43B: CVarAd
  loc_B9D43F: ParmAry1St
  loc_B9D445: FLdPr Me
  loc_B9D448: VCallAd Control_ID_CodiConcTxt
  loc_B9D44B: CVarAd
  loc_B9D44F: ParmAry1St
  loc_B9D455: FLdPr Me
  loc_B9D458: VCallAd Control_ID_ConfirmarCmd
  loc_B9D45B: CVarAd
  loc_B9D45F: ParmAry1St
  loc_B9D465: FLdPr Me
  loc_B9D468: VCallAd Control_ID_ImprimirCmd
  loc_B9D46B: CVarAd
  loc_B9D46F: ParmAry1St
  loc_B9D475: FLdPr Me
  loc_B9D478: VCallAd Control_ID_cmdSalir
  loc_B9D47B: CVarAd
  loc_B9D47F: ParmAry1St
  loc_B9D485: FLdRfVar var_8C
  loc_B9D488: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B9D48D: FLdRfVar var_8C
  loc_B9D490: Erase
  loc_B9D491: ExitProcHresult
  loc_B9D492: FStFPR8 ConfirmarCmd_Click800
End Sub
