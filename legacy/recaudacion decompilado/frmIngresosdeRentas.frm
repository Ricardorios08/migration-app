VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form frmIngresosdeRentas
  Caption = "Actualizacion Cuenta Corriente"
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
  ClientWidth = 14544
  ClientHeight = 8292
  Begin VB.TextBox DesdeNumeTxt
    ForeColor = &HFF0000&
    Left = 6630
    Top = 5760
    Width = 855
    Height = 420
    TabIndex = 12
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
  Begin VB.TextBox HastaNumeTxt
    ForeColor = &HFF0000&
    Left = 6630
    Top = 6360
    Width = 855
    Height = 420
    TabIndex = 11
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
  Begin VB.CommandButton cmdImprimir
    Left = 5640
    Top = 7200
    Width = 615
    Height = 615
    TabIndex = 6
    Picture = "frmIngresosdeRentas.frx":0000
    Style = 1
  End
  Begin VB.CommandButton HabilitarCmd
    Caption = "Crear Registro"
    Left = 6000
    Top = 3480
    Width = 1455
    Height = 615
    TabIndex = 1
    Picture = "frmIngresosdeRentas.frx":066A
    Style = 1
  End
  Begin VB.CommandButton ConfirmarCmd
    Left = 6720
    Top = 7200
    Width = 1335
    Height = 615
    TabIndex = 7
    Picture = "frmIngresosdeRentas.frx":0B9C
    Style = 1
  End
  Begin VB.CommandButton DesdeFechaCmd
    Left = 8040
    Top = 4560
    Width = 375
    Height = 405
    TabIndex = 3
    Picture = "frmIngresosdeRentas.frx":0ECA
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton HastaFechaCmd
    Left = 8040
    Top = 5160
    Width = 375
    Height = 405
    TabIndex = 5
    Picture = "frmIngresosdeRentas.frx":140C
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton cmdSalir
    Left = 12720
    Top = 840
    Width = 975
    Height = 855
    TabIndex = 8
    Picture = "frmIngresosdeRentas.frx":194E
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox DesdeFechaMsk
    Left = 6600
    Top = 4560
    Width = 1335
    Height = 435
    TabIndex = 2
    OleObjectBlob = "frmIngresosdeRentas.frx":1BA0
  End
  Begin MSMask.MaskEdBox HastaFechaMsk
    Left = 6600
    Top = 5160
    Width = 1335
    Height = 435
    TabIndex = 4
    OleObjectBlob = "frmIngresosdeRentas.frx":1C50
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 5160
    Top = 600
    Width = 3000
    Height = 2715
    TabIndex = 0
    OleObjectBlob = "frmIngresosdeRentas.frx":1D00
  End
  Begin VB.Label Label1
    Caption = "Desde Numero de Grupo:"
    Left = 3840
    Top = 5760
    Width = 2730
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
  Begin VB.Label Label3
    Caption = "Hasta Numero de Grupo:"
    Left = 3900
    Top = 6360
    Width = 2670
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
  Begin VB.Label Label4
    Caption = "Desde Fecha:"
    Left = 5040
    Top = 4560
    Width = 1500
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
  Begin VB.Label Label2
    Caption = "Hasta Fecha:"
    Left = 5100
    Top = 5160
    Width = 1440
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
End

Attribute VB_Name = "frmIngresosdeRentas"


Private Sub DesdeFechaMsk_UnknownEvent_0 '9C6470
  'Data Table: 45BE68
  loc_9C645C: FLdPr Me
  loc_9C645F: VCallAd Control_ID_DesdeFechaMsk
  loc_9C6462: CVarAd
  loc_9C6466: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C646B: FFree1Var var_94 = ""
  loc_9C646E: ExitProcHresult
End Sub

Private Function DesdeFechaMsk_UnknownEvent_8(arg_C) 'A8EF24
  'Data Table: 45BE68
  loc_A8EE84: FLdPr Me
  loc_A8EE87: VCallAd Control_ID_DesdeFechaMsk
  loc_A8EE8A: FStAdFunc var_88
  loc_A8EE8D: FLdPr var_88
  loc_A8EE90: LateIdLdVar var_98 DispID_13 -32767
  loc_A8EE97: CBoolVar
  loc_A8EE99: LitI2_Byte &HFF
  loc_A8EE9B: EqI2
  loc_A8EE9C: FFree1Ad var_88
  loc_A8EE9F: FFree1Var var_98 = ""
  loc_A8EEA2: BranchF loc_A8EF22
  loc_A8EEA5: LitVarStr var_A8, vbNullString
  loc_A8EEAA: PopAdLdVar
  loc_A8EEAB: FLdPr Me
  loc_A8EEAE: VCallAd Control_ID_DesdeFechaMsk
  loc_A8EEB1: FStAdFunc var_88
  loc_A8EEB4: FLdPr var_88
  loc_A8EEB7: LateIdSt
  loc_A8EEBC: FFree1Ad var_88
  loc_A8EEBF: FLdPr Me
  loc_A8EEC2: VCallAd Control_ID_DesdeFechaMsk
  loc_A8EEC5: FStAdFunc var_88
  loc_A8EEC8: FLdPr var_88
  loc_A8EECB: LateIdLdVar var_98 DispID_22 0
  loc_A8EED2: CStrVarTmp
  loc_A8EED3: FStStrNoPop var_BC
  loc_A8EED6: ImpAdCallI2 Proc_18_7_A46DF4()
  loc_A8EEDB: FStStrNoPop var_C0
  loc_A8EEDE: FLdPr Me
  loc_A8EEE1: MemStStrCopy
  loc_A8EEE5: FFreeStr var_BC = ""
  loc_A8EEEC: FFree1Ad var_88
  loc_A8EEEF: FFree1Var var_98 = ""
  loc_A8EEF2: FLdPr Me
  loc_A8EEF5: MemLdStr global_72
  loc_A8EEF8: LitStr vbNullString
  loc_A8EEFB: NeStr
  loc_A8EEFD: BranchF loc_A8EF22
  loc_A8EF00: FLdPr Me
  loc_A8EF03: MemLdStr global_72
  loc_A8EF06: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8EF0B: FLdPr Me
  loc_A8EF0E: VCallAd Control_ID_DesdeFechaMsk
  loc_A8EF11: CVarAd
  loc_A8EF15: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A8EF1A: FFree1Var var_98 = ""
  loc_A8EF1D: LitI2_Byte &HFF
  loc_A8EF1F: IStI2 arg_C
  loc_A8EF22: ExitProcHresult
End Function

Private Sub HastaFechaMsk_UnknownEvent_0 '9C65D8
  'Data Table: 45BE68
  loc_9C65C4: FLdPr Me
  loc_9C65C7: VCallAd Control_ID_HastaFechaMsk
  loc_9C65CA: CVarAd
  loc_9C65CE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C65D3: FFree1Var var_94 = ""
  loc_9C65D6: ExitProcHresult
End Sub

Private Function HastaFechaMsk_UnknownEvent_8(arg_C) 'A8F2A4
  'Data Table: 45BE68
  loc_A8F204: FLdPr Me
  loc_A8F207: VCallAd Control_ID_HastaFechaMsk
  loc_A8F20A: FStAdFunc var_88
  loc_A8F20D: FLdPr var_88
  loc_A8F210: LateIdLdVar var_98 DispID_13 -32767
  loc_A8F217: CBoolVar
  loc_A8F219: LitI2_Byte &HFF
  loc_A8F21B: EqI2
  loc_A8F21C: FFree1Ad var_88
  loc_A8F21F: FFree1Var var_98 = ""
  loc_A8F222: BranchF loc_A8F2A2
  loc_A8F225: LitVarStr var_A8, vbNullString
  loc_A8F22A: PopAdLdVar
  loc_A8F22B: FLdPr Me
  loc_A8F22E: VCallAd Control_ID_HastaFechaMsk
  loc_A8F231: FStAdFunc var_88
  loc_A8F234: FLdPr var_88
  loc_A8F237: LateIdSt
  loc_A8F23C: FFree1Ad var_88
  loc_A8F23F: FLdPr Me
  loc_A8F242: VCallAd Control_ID_HastaFechaMsk
  loc_A8F245: FStAdFunc var_88
  loc_A8F248: FLdPr var_88
  loc_A8F24B: LateIdLdVar var_98 DispID_22 0
  loc_A8F252: CStrVarTmp
  loc_A8F253: FStStrNoPop var_BC
  loc_A8F256: ImpAdCallI2 Proc_18_7_A46DF4()
  loc_A8F25B: FStStrNoPop var_C0
  loc_A8F25E: FLdPr Me
  loc_A8F261: MemStStrCopy
  loc_A8F265: FFreeStr var_BC = ""
  loc_A8F26C: FFree1Ad var_88
  loc_A8F26F: FFree1Var var_98 = ""
  loc_A8F272: FLdPr Me
  loc_A8F275: MemLdStr global_72
  loc_A8F278: LitStr vbNullString
  loc_A8F27B: NeStr
  loc_A8F27D: BranchF loc_A8F2A2
  loc_A8F280: FLdPr Me
  loc_A8F283: MemLdStr global_72
  loc_A8F286: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8F28B: FLdPr Me
  loc_A8F28E: VCallAd Control_ID_HastaFechaMsk
  loc_A8F291: CVarAd
  loc_A8F295: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A8F29A: FFree1Var var_98 = ""
  loc_A8F29D: LitI2_Byte &HFF
  loc_A8F29F: IStI2 arg_C
  loc_A8F2A2: ExitProcHresult
End Function

Private Sub ConfirmarCmd_Click() 'BB5BC4
  'Data Table: 45BE68
  loc_BB558C: FLdRfVar var_90
  loc_BB558F: FLdPr Me
  loc_BB5592: VCallAd Control_ID_DesdeNumeTxt
  loc_BB5595: FStAdFunc var_8C
  loc_BB5598: FLdPr var_8C
  loc_BB559B:  = Me.Text
  loc_BB55A0: ILdRf var_90
  loc_BB55A3: CI2Str
  loc_BB55A5: LitI2_Byte 0
  loc_BB55A7: EqI2
  loc_BB55A8: FFree1Str var_90
  loc_BB55AB: FFree1Ad var_8C
  loc_BB55AE: BranchF loc_BB55B9
  loc_BB55B1: LitI2_Byte 1
  loc_BB55B3: FStI2 var_86
  loc_BB55B6: Branch loc_BB55DB
  loc_BB55B9: FLdRfVar var_90
  loc_BB55BC: FLdPr Me
  loc_BB55BF: VCallAd Control_ID_DesdeNumeTxt
  loc_BB55C2: FStAdFunc var_8C
  loc_BB55C5: FLdPr var_8C
  loc_BB55C8:  = Me.Text
  loc_BB55CD: ILdRf var_90
  loc_BB55D0: CI2Str
  loc_BB55D2: FStI2 var_86
  loc_BB55D5: FFree1Str var_90
  loc_BB55D8: FFree1Ad var_8C
  loc_BB55DB: FLdRfVar var_90
  loc_BB55DE: FLdPr Me
  loc_BB55E1: VCallAd Control_ID_HastaNumeTxt
  loc_BB55E4: FStAdFunc var_8C
  loc_BB55E7: FLdPr var_8C
  loc_BB55EA:  = Me.Text
  loc_BB55EF: ILdRf var_90
  loc_BB55F2: CI2Str
  loc_BB55F4: LitI2_Byte 0
  loc_BB55F6: EqI2
  loc_BB55F7: FFree1Str var_90
  loc_BB55FA: FFree1Ad var_8C
  loc_BB55FD: BranchF loc_BB5609
  loc_BB5600: LitI2 999
  loc_BB5603: FStI2 var_88
  loc_BB5606: Branch loc_BB562B
  loc_BB5609: FLdRfVar var_90
  loc_BB560C: FLdPr Me
  loc_BB560F: VCallAd Control_ID_HastaNumeTxt
  loc_BB5612: FStAdFunc var_8C
  loc_BB5615: FLdPr var_8C
  loc_BB5618:  = Me.Text
  loc_BB561D: ILdRf var_90
  loc_BB5620: CI2Str
  loc_BB5622: FStI2 var_88
  loc_BB5625: FFree1Str var_90
  loc_BB5628: FFree1Ad var_8C
  loc_BB562B: FLdPr Me
  loc_BB562E: VCallAd Control_ID_DesdeFechaMsk
  loc_BB5631: FStAdFunc var_8C
  loc_BB5634: FLdPr var_8C
  loc_BB5637: LateIdLdVar var_A0 DispID_15 0
  loc_BB563E: PopAd
  loc_BB5640: FLdPr Me
  loc_BB5643: VCallAd Control_ID_HastaFechaMsk
  loc_BB5646: FStAdFunc var_E0
  loc_BB5649: FLdPr var_E0
  loc_BB564C: LateIdLdVar var_F0 DispID_15 0
  loc_BB5653: PopAd
  loc_BB5655: LitStr "SELECT FechInre, NumeAcpa, ActuInre FROM ingrrent "
  loc_BB5658: LitStr " WHERE FechInre >= '"
  loc_BB565B: ConcatStr
  loc_BB565C: FStStrNoPop var_90
  loc_BB565F: LitI4 1
  loc_BB5664: LitI4 1
  loc_BB5669: LitVarStr var_C0, "yyyy-mm-dd"
  loc_BB566E: FStVarCopyObj var_D0
  loc_BB5671: FLdRfVar var_D0
  loc_BB5674: FLdRfVar var_A0
  loc_BB5677: CStrVarTmp
  loc_BB5678: CVarStr var_B0
  loc_BB567B: ImpAdCallI2 Format$(, )
  loc_BB5680: FStStrNoPop var_D4
  loc_BB5683: ConcatStr
  loc_BB5684: FStStrNoPop var_D8
  loc_BB5687: LitStr "'"
  loc_BB568A: ConcatStr
  loc_BB568B: FStStrNoPop var_DC
  loc_BB568E: LitStr " AND FechInre <= '"
  loc_BB5691: ConcatStr
  loc_BB5692: FStStrNoPop var_124
  loc_BB5695: LitI4 1
  loc_BB569A: LitI4 1
  loc_BB569F: LitVarStr var_110, "yyyy-mm-dd"
  loc_BB56A4: FStVarCopyObj var_120
  loc_BB56A7: FLdRfVar var_120
  loc_BB56AA: FLdRfVar var_F0
  loc_BB56AD: CStrVarTmp
  loc_BB56AE: CVarStr var_100
  loc_BB56B1: ImpAdCallI2 Format$(, )
  loc_BB56B6: FStStrNoPop var_128
  loc_BB56B9: ConcatStr
  loc_BB56BA: FStStrNoPop var_12C
  loc_BB56BD: LitStr "'"
  loc_BB56C0: ConcatStr
  loc_BB56C1: FStStrNoPop var_130
  loc_BB56C4: LitStr " AND NumeAcpa >= "
  loc_BB56C7: ConcatStr
  loc_BB56C8: FStStrNoPop var_134
  loc_BB56CB: FLdI2 var_86
  loc_BB56CE: CStrUI1
  loc_BB56D0: FStStrNoPop var_138
  loc_BB56D3: ConcatStr
  loc_BB56D4: FStStrNoPop var_13C
  loc_BB56D7: LitStr " AND NumeAcpa <= "
  loc_BB56DA: ConcatStr
  loc_BB56DB: FStStrNoPop var_140
  loc_BB56DE: FLdI2 var_88
  loc_BB56E1: CStrUI1
  loc_BB56E3: FStStrNoPop var_144
  loc_BB56E6: ConcatStr
  loc_BB56E7: FStStrNoPop var_148
  loc_BB56EA: LitStr " AND ActuInre = 'No'"
  loc_BB56ED: ConcatStr
  loc_BB56EE: FStStrNoPop var_14C
  loc_BB56F1: LitStr " ORDER BY FechInre, NumeAcpa, ActuInre"
  loc_BB56F4: ConcatStr
  loc_BB56F5: FStStrNoPop var_150
  loc_BB56F8: FLdPr Me
  loc_BB56FB: MemLdRfVar from_stack_1.global_52
  loc_BB56FE: NewIfNullPr clsingrrent
  loc_BB5701: Call clsingrrent.RedefineRS(from_stack_1v)
  loc_BB5706: FFreeStr var_90 = "": var_D4 = "": var_D8 = "": var_DC = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_BB5729: FFreeAd var_8C = ""
  loc_BB5730: FFreeVar var_A0 = "": var_B0 = "": var_D0 = "": var_F0 = "": var_100 = ""
  loc_BB573F: FLdRfVar var_154
  loc_BB5742: FLdPr Me
  loc_BB5745: MemLdRfVar from_stack_1.global_52
  loc_BB5748: NewIfNullPr clsingrrent
  loc_BB574B: from_stack_1 = clsingrrent.RecordCount
  loc_BB5750: ILdRf var_154
  loc_BB5753: LitI4 0
  loc_BB5758: GtI4
  loc_BB5759: BranchF loc_BB5AE4
  loc_BB575C: FLdPr Me
  loc_BB575F: MemLdRfVar from_stack_1.global_52
  loc_BB5762: NewIfNullPr clsingrrent
  loc_BB5765: Call clsingrrent.MoveFirst()
  loc_BB576A: FLdRfVar var_156
  loc_BB576D: FLdPr Me
  loc_BB5770: MemLdRfVar from_stack_1.global_52
  loc_BB5773: NewIfNullPr clsingrrent
  loc_BB5776: from_stack_1 = clsingrrent.EOF
  loc_BB577B: FLdI2 var_156
  loc_BB577E: NotI4
  loc_BB577F: BranchF loc_BB5AB9
  loc_BB5782: FLdPr Me
  loc_BB5785: VCallAd Control_ID_DesdeFechaMsk
  loc_BB5788: FStAdFunc var_8C
  loc_BB578B: FLdPr var_8C
  loc_BB578E: LateIdLdVar var_A0 DispID_15 0
  loc_BB5795: CStrVarTmp
  loc_BB5796: CVarStr var_B0
  loc_BB5799: FLdRfVar var_D0
  loc_BB579C: ImpAdCallFPR4  = Year()
  loc_BB57A1: FLdRfVar var_D0
  loc_BB57A4: CI2Var
  loc_BB57A5: ImpAdCallI2 Proc_18_131_AC0BF8()
  loc_BB57AA: FStStr var_D8
  loc_BB57AD: FLdRfVar var_90
  loc_BB57B0: FLdPr Me
  loc_BB57B3: MemLdRfVar from_stack_1.global_52
  loc_BB57B6: NewIfNullPr clsingrrent
  loc_BB57B9: from_stack_1 = clsingrrent.FechInre
  loc_BB57BE: ILdRf var_90
  loc_BB57C1: CDateStr
  loc_BB57C3: FLdZeroAd var_D8
  loc_BB57C6: FStStrNoPop var_D4
  loc_BB57C9: CDateStr
  loc_BB57CB: GeR8
  loc_BB57CC: FFreeStr var_90 = "": var_D4 = ""
  loc_BB57D5: FFree1Ad var_8C
  loc_BB57D8: FFreeVar var_A0 = "": var_B0 = ""
  loc_BB57E1: BranchF loc_BB5AA0
  loc_BB57E4: FLdRfVar var_90
  loc_BB57E7: FLdPr Me
  loc_BB57EA: MemLdRfVar from_stack_1.global_52
  loc_BB57ED: NewIfNullPr clsingrrent
  loc_BB57F0: from_stack_1 = clsingrrent.FechInre
  loc_BB57F5: LitStr "SELECT FechInre, CodiCuco, CodiConc, CodiEnre, SUM(TotaDeir) as TotaDeirFora FROM detainre "
  loc_BB57F8: LitStr " WHERE FechInre = '"
  loc_BB57FB: ConcatStr
  loc_BB57FC: FStStrNoPop var_D4
  loc_BB57FF: LitI4 1
  loc_BB5804: LitI4 1
  loc_BB5809: LitVarStr var_C0, "yyyy-mm-dd"
  loc_BB580E: FStVarCopyObj var_B0
  loc_BB5811: FLdRfVar var_B0
  loc_BB5814: FLdZeroAd var_90
  loc_BB5817: CVarStr var_A0
  loc_BB581A: ImpAdCallI2 Format$(, )
  loc_BB581F: FStStrNoPop var_D8
  loc_BB5822: ConcatStr
  loc_BB5823: FStStrNoPop var_DC
  loc_BB5826: LitStr "'"
  loc_BB5829: ConcatStr
  loc_BB582A: FStStrNoPop var_124
  loc_BB582D: LitStr " AND NumeAcpa = "
  loc_BB5830: ConcatStr
  loc_BB5831: FStStrNoPop var_128
  loc_BB5834: FLdRfVar var_156
  loc_BB5837: FLdPr Me
  loc_BB583A: MemLdRfVar from_stack_1.global_52
  loc_BB583D: NewIfNullPr clsingrrent
  loc_BB5840: from_stack_1 = clsingrrent.NumeAcpa
  loc_BB5845: FLdI2 var_156
  loc_BB5848: CStrUI1
  loc_BB584A: FStStrNoPop var_12C
  loc_BB584D: ConcatStr
  loc_BB584E: FStStrNoPop var_130
  loc_BB5851: LitStr " GROUP BY FechInre, CodiCuco, CodiConc, CodiEnre"
  loc_BB5854: ConcatStr
  loc_BB5855: FStStrNoPop var_134
  loc_BB5858: FLdPr Me
  loc_BB585B: MemLdRfVar from_stack_1.global_56
  loc_BB585E: NewIfNullPr clsdetainre
  loc_BB5861: Call clsdetainre.RedefineRS(from_stack_1v)
  loc_BB5866: FFreeStr var_D4 = "": var_D8 = "": var_DC = "": var_124 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_BB5879: FFreeVar var_A0 = ""
  loc_BB5880: FLdRfVar var_154
  loc_BB5883: FLdPr Me
  loc_BB5886: MemLdRfVar from_stack_1.global_56
  loc_BB5889: NewIfNullPr clsdetainre
  loc_BB588C: from_stack_1 = clsdetainre.RecordCount
  loc_BB5891: ILdRf var_154
  loc_BB5894: LitI4 0
  loc_BB5899: GtI4
  loc_BB589A: BranchF loc_BB5A64
  loc_BB589D: FLdPr Me
  loc_BB58A0: MemLdRfVar from_stack_1.global_56
  loc_BB58A3: NewIfNullPr clsdetainre
  loc_BB58A6: Call clsdetainre.MoveFirst()
  loc_BB58AB: FLdRfVar var_156
  loc_BB58AE: FLdPr Me
  loc_BB58B1: MemLdRfVar from_stack_1.global_56
  loc_BB58B4: NewIfNullPr clsdetainre
  loc_BB58B7: from_stack_1 = clsdetainre.EOF
  loc_BB58BC: FLdI2 var_156
  loc_BB58BF: NotI4
  loc_BB58C0: BranchF loc_BB5A64
  loc_BB58C3: FLdRfVar var_156
  loc_BB58C6: FLdRfVar var_90
  loc_BB58C9: FLdPr Me
  loc_BB58CC: MemLdRfVar from_stack_1.global_56
  loc_BB58CF: NewIfNullPr clsdetainre
  loc_BB58D2: from_stack_1 = clsdetainre.FechInre
  loc_BB58D7: ILdRf var_90
  loc_BB58DA: FLdPr Me
  loc_BB58DD: MemLdRfVar from_stack_1.global_64
  loc_BB58E0: NewIfNullPr clsingreso
  loc_BB58E3: from_stack_2v = clsingreso.UltimoRegistro(from_stack_1v)
  loc_BB58E8: FLdI2 var_156
  loc_BB58EB: FLdPr Me
  loc_BB58EE: MemStI2 global_68
  loc_BB58F1: FFree1Str var_90
  loc_BB58F4: FLdRfVar var_90
  loc_BB58F7: FLdPr Me
  loc_BB58FA: MemLdRfVar from_stack_1.global_56
  loc_BB58FD: NewIfNullPr clsdetainre
  loc_BB5900: from_stack_1 = clsdetainre.FechInre
  loc_BB5905: LitStr "SELECT FechIngr, NumeIngr, PeriInfo, CodiCuco, CodiConc, CodiEnre, ImpoIngr  FROM contpres.ingreso "
  loc_BB5908: LitStr " WHERE FechIngr = '"
  loc_BB590B: ConcatStr
  loc_BB590C: CVarStr var_F0
  loc_BB590F: LitI4 1
  loc_BB5914: LitI4 1
  loc_BB5919: LitVarStr var_C0, "yyyy-mm-dd"
  loc_BB591E: FStVarCopyObj var_B0
  loc_BB5921: FLdRfVar var_B0
  loc_BB5924: FLdZeroAd var_90
  loc_BB5927: CVarStr var_A0
  loc_BB592A: FLdRfVar var_D0
  loc_BB592D: ImpAdCallFPR4  = Format(, )
  loc_BB5932: FLdRfVar var_D0
  loc_BB5935: ConcatVar var_100
  loc_BB5939: LitVarStr var_110, "'"
  loc_BB593E: ConcatVar var_120
  loc_BB5942: LitVarStr var_168, " AND NumeIngr = "
  loc_BB5947: ConcatVar var_178
  loc_BB594B: FLdPr Me
  loc_BB594E: MemLdI2 global_68
  loc_BB5951: CVarI2 var_188
  loc_BB5954: ConcatVar var_198
  loc_BB5958: LitVarStr var_1A8, " ORDER BY FechIngr, NumeIngr"
  loc_BB595D: ConcatVar var_1B8
  loc_BB5961: CStrVarVal var_D4
  loc_BB5965: FLdPr Me
  loc_BB5968: MemLdRfVar from_stack_1.global_64
  loc_BB596B: NewIfNullPr clsingreso
  loc_BB596E: Call clsingreso.RedefineRS(from_stack_1v)
  loc_BB5973: FFree1Str var_D4
  loc_BB5976: FFreeVar var_A0 = "": var_B0 = "": var_F0 = "": var_D0 = "": var_100 = "": var_120 = "": var_178 = "": var_198 = ""
  loc_BB598B: FLdRfVar var_154
  loc_BB598E: FLdPr Me
  loc_BB5991: MemLdRfVar from_stack_1.global_64
  loc_BB5994: NewIfNullPr clsingreso
  loc_BB5997: from_stack_1 = clsingreso.RecordCount
  loc_BB599C: ILdRf var_154
  loc_BB599F: LitI4 0
  loc_BB59A4: EqI4
  loc_BB59A5: BranchF loc_BB5A53
  loc_BB59A8: FLdRfVar var_90
  loc_BB59AB: FLdPr Me
  loc_BB59AE: MemLdRfVar from_stack_1.global_56
  loc_BB59B1: NewIfNullPr clsdetainre
  loc_BB59B4: from_stack_1 = clsdetainre.FechInre
  loc_BB59B9: FLdRfVar var_D4
  loc_BB59BC: FLdPr Me
  loc_BB59BF: MemLdRfVar from_stack_1.global_56
  loc_BB59C2: NewIfNullPr clsdetainre
  loc_BB59C5: from_stack_1 = clsdetainre.FechInre
  loc_BB59CA: FLdZeroAd var_D4
  loc_BB59CD: CVarStr var_A0
  loc_BB59D0: FLdRfVar var_B0
  loc_BB59D3: ImpAdCallFPR4  = Year()
  loc_BB59D8: FLdRfVar var_D8
  loc_BB59DB: FLdPr Me
  loc_BB59DE: MemLdRfVar from_stack_1.global_56
  loc_BB59E1: NewIfNullPr clsdetainre
  loc_BB59E4: from_stack_1 = clsdetainre.CodiCuco
  loc_BB59E9: FLdRfVar var_DC
  loc_BB59EC: FLdPr Me
  loc_BB59EF: MemLdRfVar from_stack_1.global_56
  loc_BB59F2: NewIfNullPr clsdetainre
  loc_BB59F5: from_stack_1 = clsdetainre.CodiConc
  loc_BB59FA: FLdRfVar var_156
  loc_BB59FD: FLdPr Me
  loc_BB5A00: MemLdRfVar from_stack_1.global_56
  loc_BB5A03: NewIfNullPr clsdetainre
  loc_BB5A06: from_stack_1 = clsdetainre.CodiEnre
  loc_BB5A0B: FLdRfVar var_1C0
  loc_BB5A0E: FLdPr Me
  loc_BB5A11: MemLdRfVar from_stack_1.global_56
  loc_BB5A14: NewIfNullPr clsdetainre
  loc_BB5A17: from_stack_1 = clsdetainre.TotaDeirFora
  loc_BB5A1C: FLdR8 var_1C0
  loc_BB5A1F: FLdI2 var_156
  loc_BB5A22: ILdRf var_DC
  loc_BB5A25: ILdRf var_D8
  loc_BB5A28: FLdRfVar var_B0
  loc_BB5A2B: CI2Var
  loc_BB5A2C: FLdPr Me
  loc_BB5A2F: MemLdI2 global_68
  loc_BB5A32: ILdRf var_90
  loc_BB5A35: FLdPr Me
  loc_BB5A38: MemLdRfVar from_stack_1.global_64
  loc_BB5A3B: NewIfNullPr clsingreso
  loc_BB5A3E: Call clsingreso.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_BB5A43: FFreeStr var_90 = "": var_D8 = ""
  loc_BB5A4C: FFreeVar var_A0 = ""
  loc_BB5A53: FLdPr Me
  loc_BB5A56: MemLdRfVar from_stack_1.global_56
  loc_BB5A59: NewIfNullPr clsdetainre
  loc_BB5A5C: Call clsdetainre.MoveSiguiente()
  loc_BB5A61: Branch loc_BB58AB
  loc_BB5A64: FLdRfVar var_90
  loc_BB5A67: FLdPr Me
  loc_BB5A6A: MemLdRfVar from_stack_1.global_52
  loc_BB5A6D: NewIfNullPr clsingrrent
  loc_BB5A70: from_stack_1 = clsingrrent.FechInre
  loc_BB5A75: FLdRfVar var_156
  loc_BB5A78: FLdPr Me
  loc_BB5A7B: MemLdRfVar from_stack_1.global_52
  loc_BB5A7E: NewIfNullPr clsingrrent
  loc_BB5A81: from_stack_1 = clsingrrent.NumeAcpa
  loc_BB5A86: FLdI2 var_156
  loc_BB5A89: ILdRf var_90
  loc_BB5A8C: FLdPr Me
  loc_BB5A8F: MemLdRfVar from_stack_1.global_52
  loc_BB5A92: NewIfNullPr clsingrrent
  loc_BB5A95: Call clsingrrent.Actualiza(from_stack_1v, from_stack_2v)
  loc_BB5A9A: FFree1Str var_90
  loc_BB5A9D: Branch loc_BB5AA8
  loc_BB5AA0: LitStr "La Caja se encuentra cerrada, no se puede realizar los ingresos al sistema CONTABLE"
  loc_BB5AA3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BB5AA8: FLdPr Me
  loc_BB5AAB: MemLdRfVar from_stack_1.global_52
  loc_BB5AAE: NewIfNullPr clsingrrent
  loc_BB5AB1: Call clsingrrent.MoveSiguiente()
  loc_BB5AB6: Branch loc_BB576A
  loc_BB5AB9: LitStr "Proceso Terminado"
  loc_BB5ABC: FLdPr Me
  loc_BB5ABF: MemStStrCopy
  loc_BB5AC3: FLdPr Me
  loc_BB5AC6: MemLdStr global_72
  loc_BB5AC9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BB5ACE: LitStr "SELECT FechInre, ActuInre FROM ingrrent WHERE ActuInre = 'No' ORDER BY FechInre"
  loc_BB5AD1: FLdPr Me
  loc_BB5AD4: MemLdRfVar from_stack_1.global_60
  loc_BB5AD7: NewIfNullPr clsingrrent
  loc_BB5ADA: Call clsingrrent.RedefineRS(from_stack_1v)
  loc_BB5ADF: Call EnlazaTodo()
  loc_BB5AE4: LitI2_Byte 0
  loc_BB5AE6: FLdPr Me
  loc_BB5AE9: Me.MousePointer = from_stack_1
  loc_BB5AEE: LitI4 0
  loc_BB5AF3: LitI4 6
  loc_BB5AF8: FLdRfVar var_1C4
  loc_BB5AFB: Redim
  loc_BB5B05: FLdPr Me
  loc_BB5B08: VCallAd Control_ID_DesdeFechaMsk
  loc_BB5B0B: CVarAd
  loc_BB5B0F: ParmAry1St
  loc_BB5B15: FLdPr Me
  loc_BB5B18: VCallAd Control_ID_DesdeFechaCmd
  loc_BB5B1B: CVarAd
  loc_BB5B1F: ParmAry1St
  loc_BB5B25: FLdPr Me
  loc_BB5B28: VCallAd Control_ID_HastaFechaMsk
  loc_BB5B2B: CVarAd
  loc_BB5B2F: ParmAry1St
  loc_BB5B35: FLdPr Me
  loc_BB5B38: VCallAd Control_ID_HastaFechaCmd
  loc_BB5B3B: CVarAd
  loc_BB5B3F: ParmAry1St
  loc_BB5B45: FLdPr Me
  loc_BB5B48: VCallAd Control_ID_ConfirmarCmd
  loc_BB5B4B: CVarAd
  loc_BB5B4F: ParmAry1St
  loc_BB5B55: FLdPr Me
  loc_BB5B58: VCallAd Control_ID_DesdeNumeTxt
  loc_BB5B5B: CVarAd
  loc_BB5B5F: ParmAry1St
  loc_BB5B65: FLdPr Me
  loc_BB5B68: VCallAd Control_ID_HastaNumeTxt
  loc_BB5B6B: CVarAd
  loc_BB5B6F: ParmAry1St
  loc_BB5B75: FLdRfVar var_1C4
  loc_BB5B78: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BB5B7D: FLdRfVar var_1C4
  loc_BB5B80: Erase
  loc_BB5B81: LitI2_Byte 0
  loc_BB5B83: LitVarI2 var_A0, 0
  loc_BB5B88: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_BB5B8D: FFree1Var var_A0 = ""
  loc_BB5B90: LitI4 0
  loc_BB5B95: LitI4 0
  loc_BB5B9A: FLdRfVar var_1C4
  loc_BB5B9D: Redim
  loc_BB5BA7: FLdPr Me
  loc_BB5BAA: VCallAd Control_ID_HabilitarCmd
  loc_BB5BAD: CVarAd
  loc_BB5BB1: ParmAry1St
  loc_BB5BB7: FLdRfVar var_1C4
  loc_BB5BBA: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BB5BBF: FLdRfVar var_1C4
  loc_BB5BC2: Erase
  loc_BB5BC3: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9D907C
  'Data Table: 45BE68
  loc_9D9064: ILdRf Me
  loc_9D9067: FStAdNoPop
  loc_9D906B: ImpAdLdRf MemVar_D9C5D8
  loc_9D906E: NewIfNullPr Global
  loc_9D9071: Global.Unload from_stack_1
  loc_9D9076: FFree1Ad var_88
  loc_9D9079: ExitProcHresult
  loc_9D907A: MemLdRfVar from_stack_1.global_-4036
End Sub

Private Sub Form_Load() 'AE7EA0
  'Data Table: 45BE68
  loc_AE7D3C: LitI2_Byte 0
  loc_AE7D3E: CR8I2
  loc_AE7D3F: PopFPR4
  loc_AE7D40: FLdPr Me
  loc_AE7D43: Me.Left = from_stack_1s
  loc_AE7D48: LitI2_Byte 0
  loc_AE7D4A: CR8I2
  loc_AE7D4B: PopFPR4
  loc_AE7D4C: FLdPr Me
  loc_AE7D4F: Me.Top = from_stack_1s
  loc_AE7D54: LitStr "SELECT FechInre, ActuInre FROM ingrrent WHERE ActuInre = 'No' ORDER BY FechInre"
  loc_AE7D57: FLdPr Me
  loc_AE7D5A: MemLdRfVar from_stack_1.global_60
  loc_AE7D5D: NewIfNullPr clsingrrent
  loc_AE7D60: Call clsingrrent.RedefineRS(from_stack_1v)
  loc_AE7D65: LitVarStr var_94, "FechInre"
  loc_AE7D6A: PopAdLdVar
  loc_AE7D6B: FLdPr Me
  loc_AE7D6E: VCallAd Control_ID_DesdeFechaMsk
  loc_AE7D71: FStAdFunc var_A8
  loc_AE7D74: FLdPr var_A8
  loc_AE7D77: LateIdSt
  loc_AE7D7C: FFree1Ad var_A8
  loc_AE7D7F: LitVarStr var_94, "FechInre"
  loc_AE7D84: PopAdLdVar
  loc_AE7D85: FLdPr Me
  loc_AE7D88: VCallAd Control_ID_HastaFechaMsk
  loc_AE7D8B: FStAdFunc var_A8
  loc_AE7D8E: FLdPr var_A8
  loc_AE7D91: LateIdSt
  loc_AE7D96: FFree1Ad var_A8
  loc_AE7D99: LitI4 0
  loc_AE7D9E: LitI4 6
  loc_AE7DA3: FLdRfVar var_AC
  loc_AE7DA6: Redim
  loc_AE7DB0: FLdPr Me
  loc_AE7DB3: VCallAd Control_ID_DesdeFechaMsk
  loc_AE7DB6: CVarAd
  loc_AE7DBA: ParmAry1St
  loc_AE7DC0: FLdPr Me
  loc_AE7DC3: VCallAd Control_ID_DesdeFechaCmd
  loc_AE7DC6: CVarAd
  loc_AE7DCA: ParmAry1St
  loc_AE7DD0: FLdPr Me
  loc_AE7DD3: VCallAd Control_ID_HastaFechaMsk
  loc_AE7DD6: CVarAd
  loc_AE7DDA: ParmAry1St
  loc_AE7DE0: FLdPr Me
  loc_AE7DE3: VCallAd Control_ID_HastaFechaCmd
  loc_AE7DE6: CVarAd
  loc_AE7DEA: ParmAry1St
  loc_AE7DF0: FLdPr Me
  loc_AE7DF3: VCallAd Control_ID_ConfirmarCmd
  loc_AE7DF6: CVarAd
  loc_AE7DFA: ParmAry1St
  loc_AE7E00: FLdPr Me
  loc_AE7E03: VCallAd Control_ID_DesdeNumeTxt
  loc_AE7E06: CVarAd
  loc_AE7E0A: ParmAry1St
  loc_AE7E10: FLdPr Me
  loc_AE7E13: VCallAd Control_ID_HastaNumeTxt
  loc_AE7E16: CVarAd
  loc_AE7E1A: ParmAry1St
  loc_AE7E20: FLdRfVar var_AC
  loc_AE7E23: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_AE7E28: FLdRfVar var_AC
  loc_AE7E2B: Erase
  loc_AE7E2C: LitI4 0
  loc_AE7E31: LitI4 1
  loc_AE7E36: FLdRfVar var_AC
  loc_AE7E39: Redim
  loc_AE7E43: FLdPr Me
  loc_AE7E46: MemLdRfVar from_stack_1.global_60
  loc_AE7E49: NewIfNullAd
  loc_AE7E4C: FStAd var_A8 
  loc_AE7E50: FLdRfVar var_A8
  loc_AE7E53: CVarRef
  loc_AE7E58: ParmAry1St
  loc_AE7E5E: FLdPr Me
  loc_AE7E61: VCallAd Control_ID_dgdABMS
  loc_AE7E64: CVarAd
  loc_AE7E68: ParmAry1St
  loc_AE7E6E: FLdRfVar var_AC
  loc_AE7E71: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AE7E76: ILdRf var_A8
  loc_AE7E79: CastAd
  loc_AE7E7C: FLdPr Me
  loc_AE7E7F: MemStAdFunc
  loc_AE7E83: FLdRfVar var_AC
  loc_AE7E86: Erase
  loc_AE7E87: FFree1Ad var_A8
  loc_AE7E8A: Call EnlazaTodo()
  loc_AE7E8F: LitI2_Byte 0
  loc_AE7E91: LitVarI2 var_BC, 0
  loc_AE7E96: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_AE7E9B: FFree1Var var_BC = ""
  loc_AE7E9E: ExitProcHresult
End Sub

Private Sub cmdImprimir_Click() 'A95864
  'Data Table: 45BE68
  loc_A957BC: ImpAdLdRf MemVar_D93928
  loc_A957BF: NewIfNullAd
  loc_A957C2: CastAd
  loc_A957C5: FStAdFuncNoPop
  loc_A957C8: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A957CD: FFree1Ad var_88
  loc_A957D0: ImpAdLdRf MemVar_D93928
  loc_A957D3: NewIfNullAd
  loc_A957D6: FStAd var_8C 
  loc_A957DA: FLdPr Me
  loc_A957DD: VCallAd Control_ID_DesdeFechaMsk
  loc_A957E0: FStAdFunc var_88
  loc_A957E3: FLdPr var_88
  loc_A957E6: LateIdLdVar var_9C DispID_0 0
  loc_A957ED: CStrVarTmp
  loc_A957EE: CVarStr var_AC
  loc_A957F1: PopAdLdVar
  loc_A957F2: FLdPr var_8C
  loc_A957F5: VCallAd Control_ID_
  loc_A957F8: FStAdFunc var_C0
  loc_A957FB: FLdPr var_C0
  loc_A957FE: LateIdSt
  loc_A95803: FFreeAd var_88 = ""
  loc_A9580A: FFreeVar var_9C = ""
  loc_A95811: FLdPr Me
  loc_A95814: VCallAd Control_ID_HastaFechaMsk
  loc_A95817: FStAdFunc var_88
  loc_A9581A: FLdPr var_88
  loc_A9581D: LateIdLdVar var_9C DispID_0 0
  loc_A95824: CStrVarTmp
  loc_A95825: CVarStr var_AC
  loc_A95828: PopAdLdVar
  loc_A95829: FLdPr var_8C
  loc_A9582C: VCallAd Control_ID_
  loc_A9582F: FStAdFunc var_C0
  loc_A95832: FLdPr var_C0
  loc_A95835: LateIdSt
  loc_A9583A: FFreeAd var_88 = ""
  loc_A95841: FFreeVar var_9C = ""
  loc_A95848: LitVar_Missing var_D0
  loc_A9584B: PopAdLdVar
  loc_A9584C: LitVarI4
  loc_A95854: PopAdLdVar
  loc_A95855: FLdPr var_8C
  loc_A95858: Me.Show from_stack_1, from_stack_2
  loc_A9585D: LitNothing
  loc_A9585F: FStAd var_8C 
  loc_A95863: ExitProcHresult
End Sub

Private Sub HastaFechaCmd_Click() 'A4BF70
  'Data Table: 45BE68
  loc_A4BF1C: LitVar_Missing var_A4
  loc_A4BF1F: PopAdLdVar
  loc_A4BF20: LitVarI4
  loc_A4BF28: PopAdLdVar
  loc_A4BF29: ImpAdLdRf MemVar_D930A4
  loc_A4BF2C: NewIfNullPr frmCalendario
  loc_A4BF2F: frmCalendario.Show from_stack_1, from_stack_2
  loc_A4BF34: ImpAdLdI4 MemVar_D93028
  loc_A4BF37: LitStr vbNullString
  loc_A4BF3A: NeStr
  loc_A4BF3C: BranchF loc_A4BF5A
  loc_A4BF3F: ImpAdLdRf MemVar_D93028
  loc_A4BF42: CDargRef
  loc_A4BF46: FLdPr Me
  loc_A4BF49: VCallAd Control_ID_HastaFechaMsk
  loc_A4BF4C: FStAdFunc var_A8
  loc_A4BF4F: FLdPr var_A8
  loc_A4BF52: LateIdSt
  loc_A4BF57: FFree1Ad var_A8
  loc_A4BF5A: FLdPr Me
  loc_A4BF5D: VCallAd Control_ID_HastaFechaMsk
  loc_A4BF60: CVarAd
  loc_A4BF64: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A4BF69: FFree1Var var_B8 = ""
  loc_A4BF6C: ExitProcHresult
End Sub

Private Sub DesdeFechaCmd_Click() 'A4BE58
  'Data Table: 45BE68
  loc_A4BE04: LitVar_Missing var_A4
  loc_A4BE07: PopAdLdVar
  loc_A4BE08: LitVarI4
  loc_A4BE10: PopAdLdVar
  loc_A4BE11: ImpAdLdRf MemVar_D930A4
  loc_A4BE14: NewIfNullPr frmCalendario
  loc_A4BE17: frmCalendario.Show from_stack_1, from_stack_2
  loc_A4BE1C: ImpAdLdI4 MemVar_D93028
  loc_A4BE1F: LitStr vbNullString
  loc_A4BE22: NeStr
  loc_A4BE24: BranchF loc_A4BE42
  loc_A4BE27: ImpAdLdRf MemVar_D93028
  loc_A4BE2A: CDargRef
  loc_A4BE2E: FLdPr Me
  loc_A4BE31: VCallAd Control_ID_DesdeFechaMsk
  loc_A4BE34: FStAdFunc var_A8
  loc_A4BE37: FLdPr var_A8
  loc_A4BE3A: LateIdSt
  loc_A4BE3F: FFree1Ad var_A8
  loc_A4BE42: FLdPr Me
  loc_A4BE45: VCallAd Control_ID_DesdeFechaMsk
  loc_A4BE48: CVarAd
  loc_A4BE4C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A4BE51: FFree1Var var_B8 = ""
  loc_A4BE54: ExitProcHresult
  loc_A4BE55: GtCyR8
End Sub

Private Sub HabilitarCmd_Click() 'AC87E0
  'Data Table: 45BE68
  loc_AC86E8: FLdRfVar var_88
  loc_AC86EB: FLdPr Me
  loc_AC86EE: MemLdRfVar from_stack_1.global_60
  loc_AC86F1: NewIfNullPr clsingrrent
  loc_AC86F4: from_stack_1 = clsingrrent.RecordCount
  loc_AC86F9: ILdRf var_88
  loc_AC86FC: LitI4 0
  loc_AC8701: GtI4
  loc_AC8702: BranchF loc_AC87DF
  loc_AC8705: ILdRf Me
  loc_AC8708: CastAd
  loc_AC870B: FStAdFunc var_8C
  loc_AC870E: FLdRfVar var_8C
  loc_AC8711: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_AC8716: FFree1Ad var_8C
  loc_AC8719: LitI4 0
  loc_AC871E: LitI4 6
  loc_AC8723: FLdRfVar var_90
  loc_AC8726: Redim
  loc_AC8730: FLdPr Me
  loc_AC8733: VCallAd Control_ID_DesdeFechaMsk
  loc_AC8736: CVarAd
  loc_AC873A: ParmAry1St
  loc_AC8740: FLdPr Me
  loc_AC8743: VCallAd Control_ID_DesdeFechaCmd
  loc_AC8746: CVarAd
  loc_AC874A: ParmAry1St
  loc_AC8750: FLdPr Me
  loc_AC8753: VCallAd Control_ID_HastaFechaMsk
  loc_AC8756: CVarAd
  loc_AC875A: ParmAry1St
  loc_AC8760: FLdPr Me
  loc_AC8763: VCallAd Control_ID_HastaFechaCmd
  loc_AC8766: CVarAd
  loc_AC876A: ParmAry1St
  loc_AC8770: FLdPr Me
  loc_AC8773: VCallAd Control_ID_ConfirmarCmd
  loc_AC8776: CVarAd
  loc_AC877A: ParmAry1St
  loc_AC8780: FLdPr Me
  loc_AC8783: VCallAd Control_ID_DesdeNumeTxt
  loc_AC8786: CVarAd
  loc_AC878A: ParmAry1St
  loc_AC8790: FLdPr Me
  loc_AC8793: VCallAd Control_ID_HastaNumeTxt
  loc_AC8796: CVarAd
  loc_AC879A: ParmAry1St
  loc_AC87A0: FLdRfVar var_90
  loc_AC87A3: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AC87A8: FLdRfVar var_90
  loc_AC87AB: Erase
  loc_AC87AC: LitI4 0
  loc_AC87B1: LitI4 0
  loc_AC87B6: FLdRfVar var_90
  loc_AC87B9: Redim
  loc_AC87C3: FLdPr Me
  loc_AC87C6: VCallAd Control_ID_HabilitarCmd
  loc_AC87C9: CVarAd
  loc_AC87CD: ParmAry1St
  loc_AC87D3: FLdRfVar var_90
  loc_AC87D6: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_AC87DB: FLdRfVar var_90
  loc_AC87DE: Erase
  loc_AC87DF: ExitProcHresult
End Sub

Private Sub DesdeNumeTxt_GotFocus() '9C7E98
  'Data Table: 45BE68
  loc_9C7E84: FLdPr Me
  loc_9C7E87: VCallAd Control_ID_DesdeNumeTxt
  loc_9C7E8A: CVarAd
  loc_9C7E8E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C7E93: FFree1Var var_94 = ""
  loc_9C7E96: ExitProcHresult
  loc_9C7E97: LitI2_Byte &HF0
End Sub

Private Sub DesdeNumeTxt_KeyPress(KeyAscii As Integer) '9D8F4C
  'Data Table: 45BE68
  loc_9D8F34: LitStr "0123456789"
  loc_9D8F37: FStStrCopy var_88
  loc_9D8F3A: FLdRfVar var_88
  loc_9D8F3D: ILdRf KeyAscii
  loc_9D8F40: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D8F45: IStI2 KeyAscii
  loc_9D8F48: FFree1Str var_88
  loc_9D8F4B: ExitProcHresult
End Sub

Private Sub DesdeNumeTxt_LostFocus() 'A25A4C
  'Data Table: 45BE68
  loc_A25A08: FLdRfVar var_8C
  loc_A25A0B: FLdPr Me
  loc_A25A0E: VCallAd Control_ID_DesdeNumeTxt
  loc_A25A11: FStAdFunc var_88
  loc_A25A14: FLdPr var_88
  loc_A25A17:  = Me.Text
  loc_A25A1C: ILdRf var_8C
  loc_A25A1F: LitStr vbNullString
  loc_A25A22: EqStr
  loc_A25A24: FFree1Str var_8C
  loc_A25A27: FFree1Ad var_88
  loc_A25A2A: BranchF loc_A25A4B
  loc_A25A2D: LitI2_Byte 0
  loc_A25A2F: CStrUI1
  loc_A25A31: FStStrNoPop var_8C
  loc_A25A34: FLdPr Me
  loc_A25A37: VCallAd Control_ID_DesdeNumeTxt
  loc_A25A3A: FStAdFunc var_88
  loc_A25A3D: FLdPr var_88
  loc_A25A40: Me.Text = from_stack_1
  loc_A25A45: FFree1Str var_8C
  loc_A25A48: FFree1Ad var_88
  loc_A25A4B: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'A858E0
  'Data Table: 45BE68
  loc_A85850: FLdRfVar var_88
  loc_A85853: FLdPr Me
  loc_A85856: MemLdRfVar from_stack_1.global_60
  loc_A85859: NewIfNullPr clsingrrent
  loc_A8585C: from_stack_1 = clsingrrent.RecordCount
  loc_A85861: ILdRf var_88
  loc_A85864: LitI4 0
  loc_A85869: GtI4
  loc_A8586A: BranchF loc_A858DF
  loc_A8586D: FLdRfVar var_8C
  loc_A85870: FLdPr Me
  loc_A85873: MemLdRfVar from_stack_1.global_60
  loc_A85876: NewIfNullPr clsingrrent
  loc_A85879: from_stack_1 = clsingrrent.FechInre
  loc_A8587E: ILdRf var_8C
  loc_A85881: ImpAdCallI2 Proc_270_118_AAD1F8()
  loc_A85886: CStrUI1
  loc_A85888: FStStrNoPop var_90
  loc_A8588B: FLdPr Me
  loc_A8588E: VCallAd Control_ID_DesdeNumeTxt
  loc_A85891: FStAdFunc var_94
  loc_A85894: FLdPr var_94
  loc_A85897: Me.Text = from_stack_1
  loc_A8589C: FFreeStr var_8C = ""
  loc_A858A3: FFree1Ad var_94
  loc_A858A6: FLdRfVar var_8C
  loc_A858A9: FLdPr Me
  loc_A858AC: MemLdRfVar from_stack_1.global_60
  loc_A858AF: NewIfNullPr clsingrrent
  loc_A858B2: from_stack_1 = clsingrrent.FechInre
  loc_A858B7: ILdRf var_8C
  loc_A858BA: ImpAdCallI2 Proc_270_119_AAD638()
  loc_A858BF: CStrUI1
  loc_A858C1: FStStrNoPop var_90
  loc_A858C4: FLdPr Me
  loc_A858C7: VCallAd Control_ID_HastaNumeTxt
  loc_A858CA: FStAdFunc var_94
  loc_A858CD: FLdPr var_94
  loc_A858D0: Me.Text = from_stack_1
  loc_A858D5: FFreeStr var_8C = ""
  loc_A858DC: FFree1Ad var_94
  loc_A858DF: ExitProcHresult
End Sub

Private Sub HastaNumeTxt_GotFocus() '9C6428
  'Data Table: 45BE68
  loc_9C6414: FLdPr Me
  loc_9C6417: VCallAd Control_ID_HastaNumeTxt
  loc_9C641A: CVarAd
  loc_9C641E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C6423: FFree1Var var_94 = ""
  loc_9C6426: ExitProcHresult
End Sub

Private Sub HastaNumeTxt_KeyPress(KeyAscii As Integer) '9D9030
  'Data Table: 45BE68
  loc_9D9018: LitStr "0123456789"
  loc_9D901B: FStStrCopy var_88
  loc_9D901E: FLdRfVar var_88
  loc_9D9021: ILdRf KeyAscii
  loc_9D9024: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D9029: IStI2 KeyAscii
  loc_9D902C: FFree1Str var_88
  loc_9D902F: ExitProcHresult
End Sub

Private Sub HastaNumeTxt_LostFocus() 'A25EA8
  'Data Table: 45BE68
  loc_A25E64: FLdRfVar var_8C
  loc_A25E67: FLdPr Me
  loc_A25E6A: VCallAd Control_ID_HastaNumeTxt
  loc_A25E6D: FStAdFunc var_88
  loc_A25E70: FLdPr var_88
  loc_A25E73:  = Me.Text
  loc_A25E78: ILdRf var_8C
  loc_A25E7B: LitStr vbNullString
  loc_A25E7E: EqStr
  loc_A25E80: FFree1Str var_8C
  loc_A25E83: FFree1Ad var_88
  loc_A25E86: BranchF loc_A25EA7
  loc_A25E89: LitI2_Byte 0
  loc_A25E8B: CStrUI1
  loc_A25E8D: FStStrNoPop var_8C
  loc_A25E90: FLdPr Me
  loc_A25E93: VCallAd Control_ID_HastaNumeTxt
  loc_A25E96: FStAdFunc var_88
  loc_A25E99: FLdPr var_88
  loc_A25E9C: Me.Text = from_stack_1
  loc_A25EA1: FFree1Str var_8C
  loc_A25EA4: FFree1Ad var_88
  loc_A25EA7: ExitProcHresult
End Sub

Public Sub EnlazaTodo() 'A7AB10
  'Data Table: 45BE68
  loc_A7AAA0: LitI4 0
  loc_A7AAA5: LitI4 2
  loc_A7AAAA: FLdRfVar var_88
  loc_A7AAAD: Redim
  loc_A7AAB7: FLdPr Me
  loc_A7AABA: MemLdRfVar from_stack_1.global_60
  loc_A7AABD: NewIfNullAd
  loc_A7AAC0: FStAd var_8C 
  loc_A7AAC4: FLdRfVar var_8C
  loc_A7AAC7: CVarRef
  loc_A7AACC: ParmAry1St
  loc_A7AAD2: FLdPr Me
  loc_A7AAD5: VCallAd Control_ID_DesdeFechaMsk
  loc_A7AAD8: CVarAd
  loc_A7AADC: ParmAry1St
  loc_A7AAE2: FLdPr Me
  loc_A7AAE5: VCallAd Control_ID_HastaFechaMsk
  loc_A7AAE8: CVarAd
  loc_A7AAEC: ParmAry1St
  loc_A7AAF2: FLdRfVar var_88
  loc_A7AAF5: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A7AAFA: ILdRf var_8C
  loc_A7AAFD: CastAd
  loc_A7AB00: FLdPr Me
  loc_A7AB03: MemStAdFunc
  loc_A7AB07: FLdRfVar var_88
  loc_A7AB0A: Erase
  loc_A7AB0B: FFree1Ad var_8C
  loc_A7AB0E: ExitProcHresult
End Sub
