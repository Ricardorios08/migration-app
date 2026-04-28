VERSION 5.00
Begin VB.Form dlgSelRetencionesImfi
  Caption = "Seleccionar Retenciones de Importes Fijos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ClientLeft = 60
  ClientTop = 390
  ClientWidth = 10110
  ClientHeight = 5370
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 3 'Windows Default
  Begin VB.CommandButton CmdAceptar
    Caption = "Aceptar"
    Left = 840
    Top = 3960
    Width = 2415
    Height = 615
    TabIndex = 2
    Default = -1  'True
  End
  Begin VB.CheckBox MarcaTodosChk
    Caption = "Marca Todos"
    Left = 6360
    Top = 1440
    Width = 2055
    Height = 375
    TabIndex = 1
  End
  Begin VB.ListBox CodiReteList
    Left = 720
    Top = 1440
    Width = 5175
    Height = 2040
    TabIndex = 0
    Style = 1
  End
End

Attribute VB_Name = "dlgSelRetencionesImfi"

Public BuscarCLS As New Class


Private Sub cmdAceptar_Click() 'A08838
  'Data Table: 40A074
  loc_A086EC: FLdPr Me
  loc_A086EF: VCallAd Control_ID_CodiReteList
  loc_A086F2: FStAdFunc var_90
  loc_A086F5: LitI2_Byte 0
  loc_A086F7: FLdRfVar var_86
  loc_A086FA: FLdRfVar var_92
  loc_A086FD: FLdPr var_90
  loc_A08700:  = Me.ListCount
  loc_A08705: FLdI2 var_92
  loc_A08708: LitI2_Byte 1
  loc_A0870A: SubI2
  loc_A0870B: ForI2 var_96
  loc_A08711: FLdRfVar var_92
  loc_A08714: FLdI2 var_86
  loc_A08717: FLdPr var_90
  loc_A0871A:  = Me.Selected
  loc_A0871F: FLdI2 var_92
  loc_A08722: BranchF loc_A08774
  loc_A08725: ILdRf var_8C
  loc_A08728: LitStr vbNullString
  loc_A0872B: EqStr
  loc_A0872D: BranchF loc_A08749
  loc_A08730: FLdRfVar var_9C
  loc_A08733: FLdI2 var_86
  loc_A08736: FLdPr var_90
  loc_A08739:  = Me.ItemData
  loc_A0873E: ILdRf var_9C
  loc_A08741: CStrI4
  loc_A08743: FStStr var_8C
  loc_A08746: Branch loc_A08774
  loc_A08749: ILdRf var_8C
  loc_A0874C: LitStr ","
  loc_A0874F: ConcatStr
  loc_A08750: FStStrNoPop var_A0
  loc_A08753: FLdRfVar var_9C
  loc_A08756: FLdI2 var_86
  loc_A08759: FLdPr var_90
  loc_A0875C:  = Me.ItemData
  loc_A08761: ILdRf var_9C
  loc_A08764: CStrI4
  loc_A08766: FStStrNoPop var_A4
  loc_A08769: ConcatStr
  loc_A0876A: FStStr var_8C
  loc_A0876D: FFreeStr var_A0 = ""
  loc_A08774: FLdRfVar var_86
  loc_A08777: NextI2 var_96, loc_A08711
  loc_A0877C: LitNothing
  loc_A0877E: FStAd var_90 
  loc_A08782: ILdRf var_8C
  loc_A08785: LitStr vbNullString
  loc_A08788: NeStr
  loc_A0878A: BranchF loc_A087F3
  loc_A0878D: LitStr "SELECT dr.*, DetaRete, r.CodiCuco"
  loc_A08790: LitStr " FROM deretenciones dr"
  loc_A08793: ConcatStr
  loc_A08794: FStStrNoPop var_A0
  loc_A08797: LitStr " INNER JOIN retenciones r ON r.PeriInfo = dr.PeriInfo AND r.CodiRete = dr.CodiRete"
  loc_A0879A: ConcatStr
  loc_A0879B: FStStrNoPop var_A4
  loc_A0879E: LitStr " WHERE dr.PeriInfo = "
  loc_A087A1: ConcatStr
  loc_A087A2: FStStrNoPop var_A8
  loc_A087A5: ImpAdLdI2 MemVar_C3D064
  loc_A087A8: CStrUI1
  loc_A087AA: FStStrNoPop var_AC
  loc_A087AD: ConcatStr
  loc_A087AE: FStStrNoPop var_B0
  loc_A087B1: LitStr " AND ImfiDere = 1 AND dr.CodiRete IN ("
  loc_A087B4: ConcatStr
  loc_A087B5: FStStrNoPop var_B4
  loc_A087B8: ILdRf var_8C
  loc_A087BB: ConcatStr
  loc_A087BC: FStStrNoPop var_B8
  loc_A087BF: LitStr ")"
  loc_A087C2: ConcatStr
  loc_A087C3: FStStrNoPop var_BC
  loc_A087C6: LitStr " ORDER BY dr.CodiRete;"
  loc_A087C9: ConcatStr
  loc_A087CA: FStStrNoPop var_C0
  loc_A087CD: FLdPr Me
  loc_A087D0: MemLdRfVar from_stack_1.BuscarCLS
  loc_A087D3: NewIfNullPr clsbase
  loc_A087D6: Call clsbase.RedefineRS(from_stack_1v)
  loc_A087DB: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A087F0: Branch loc_A08822
  loc_A087F3: LitStr "SELECT dr.*, DetaRete, r.CodiCuco"
  loc_A087F6: LitStr " FROM deretenciones dr"
  loc_A087F9: ConcatStr
  loc_A087FA: FStStrNoPop var_A0
  loc_A087FD: LitStr " INNER JOIN retenciones r ON r.PeriInfo = dr.PeriInfo AND r.CodiRete = dr.CodiRete"
  loc_A08800: ConcatStr
  loc_A08801: FStStrNoPop var_A4
  loc_A08804: LitStr " WHERE dr.PeriInfo = 0;"
  loc_A08807: ConcatStr
  loc_A08808: FStStrNoPop var_A8
  loc_A0880B: FLdPr Me
  loc_A0880E: MemLdRfVar from_stack_1.BuscarCLS
  loc_A08811: NewIfNullPr clsbase
  loc_A08814: Call clsbase.RedefineRS(from_stack_1v)
  loc_A08819: FFreeStr var_A0 = "": var_A4 = ""
  loc_A08822: ILdRf Me
  loc_A08825: FStAdNoPop
  loc_A08829: ImpAdLdRf MemVar_C44F9C
  loc_A0882C: NewIfNullPr Me
  loc_A0882F: Me.Global.Unload from_stack_1
  loc_A08834: FFree1Ad var_C4
  loc_A08837: ExitProcHresult
End Sub

Private Sub Form_Load() 'A58F10
  'Data Table: 40A074
  loc_A58C80: LitStr "SELECT dr.*, DetaRete, r.CodiCuco"
  loc_A58C83: LitStr " FROM deretenciones dr"
  loc_A58C86: ConcatStr
  loc_A58C87: FStStrNoPop var_88
  loc_A58C8A: LitStr " INNER JOIN retenciones r ON r.PeriInfo = dr.PeriInfo AND r.CodiRete = dr.CodiRete"
  loc_A58C8D: ConcatStr
  loc_A58C8E: FStStrNoPop var_8C
  loc_A58C91: LitStr " WHERE dr.PeriInfo = "
  loc_A58C94: ConcatStr
  loc_A58C95: FStStrNoPop var_90
  loc_A58C98: ImpAdLdI2 MemVar_C3D064
  loc_A58C9B: CStrUI1
  loc_A58C9D: FStStrNoPop var_94
  loc_A58CA0: ConcatStr
  loc_A58CA1: FStStrNoPop var_98
  loc_A58CA4: LitStr " AND ImfiDere = 1"
  loc_A58CA7: ConcatStr
  loc_A58CA8: FStStrNoPop var_9C
  loc_A58CAB: LitStr " ORDER BY dr.CodiRete;"
  loc_A58CAE: ConcatStr
  loc_A58CAF: FStStrNoPop var_A0
  loc_A58CB2: FLdPr Me
  loc_A58CB5: MemLdRfVar from_stack_1.BuscarCLS
  loc_A58CB8: NewIfNullPr clsbase
  loc_A58CBB: Call clsbase.RedefineRS(from_stack_1v)
  loc_A58CC0: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A58CD1: FLdRfVar var_A4
  loc_A58CD4: FLdPr Me
  loc_A58CD7: MemLdRfVar from_stack_1.BuscarCLS
  loc_A58CDA: NewIfNullPr clsbase
  loc_A58CDD: from_stack_1 = clsbase.RecordCount
  loc_A58CE2: ILdRf var_A4
  loc_A58CE5: LitI4 0
  loc_A58CEA: GtI4
  loc_A58CEB: BranchF loc_A58F0E
  loc_A58CEE: FLdPr Me
  loc_A58CF1: VCallAd Control_ID_CodiReteList
  loc_A58CF4: FStAdFunc var_A8
  loc_A58CF7: FLdPr var_A8
  loc_A58CFA: Me.Clear
  loc_A58CFF: FLdRfVar var_AA
  loc_A58D02: FLdPr Me
  loc_A58D05: MemLdRfVar from_stack_1.BuscarCLS
  loc_A58D08: NewIfNullPr clsbase
  loc_A58D0B: from_stack_1 = clsbase.EOF
  loc_A58D10: FLdI2 var_AA
  loc_A58D13: NotI4
  loc_A58D14: BranchF loc_A58EDF
  loc_A58D17: LitVar_Missing var_1FC
  loc_A58D1A: PopAdLdVar
  loc_A58D1B: FLdRfVar var_D8
  loc_A58D1E: FLdRfVar var_C8
  loc_A58D21: LitVarStr var_C4, "CodiRete"
  loc_A58D26: PopAdLdVar
  loc_A58D27: FLdRfVar var_B4
  loc_A58D2A: FLdRfVar var_B0
  loc_A58D2D: FLdPr Me
  loc_A58D30: MemLdRfVar from_stack_1.BuscarCLS
  loc_A58D33: NewIfNullPr clsbase
  loc_A58D36: from_stack_1v = clsbase.RsFrmGet()
  loc_A58D3B: FLdPr var_B0
  loc_A58D3E:  = Me.Fields
  loc_A58D43: FLdPr var_B4
  loc_A58D46: from_stack_2 = Me.Item(from_stack_1)
  loc_A58D4B: FLdPr var_C8
  loc_A58D4E:  = Me.Value
  loc_A58D53: FLdRfVar var_D8
  loc_A58D56: LitVarStr var_E8, " - "
  loc_A58D5B: ConcatVar var_F8
  loc_A58D5F: FLdRfVar var_124
  loc_A58D62: FLdRfVar var_114
  loc_A58D65: LitVarStr var_110, "DetaRete"
  loc_A58D6A: PopAdLdVar
  loc_A58D6B: FLdRfVar var_100
  loc_A58D6E: FLdRfVar var_FC
  loc_A58D71: FLdPr Me
  loc_A58D74: MemLdRfVar from_stack_1.BuscarCLS
  loc_A58D77: NewIfNullPr clsbase
  loc_A58D7A: from_stack_1v = clsbase.RsFrmGet()
  loc_A58D7F: FLdPr var_FC
  loc_A58D82:  = Me.Fields
  loc_A58D87: FLdPr var_100
  loc_A58D8A: from_stack_2 = Me.Item(from_stack_1)
  loc_A58D8F: FLdPr var_114
  loc_A58D92:  = Me.Value
  loc_A58D97: FLdRfVar var_124
  loc_A58D9A: ConcatVar var_134
  loc_A58D9E: LitVarStr var_144, " - "
  loc_A58DA3: ConcatVar var_154
  loc_A58DA7: FLdRfVar var_180
  loc_A58DAA: FLdRfVar var_170
  loc_A58DAD: LitVarStr var_16C, "CodiDere"
  loc_A58DB2: PopAdLdVar
  loc_A58DB3: FLdRfVar var_15C
  loc_A58DB6: FLdRfVar var_158
  loc_A58DB9: FLdPr Me
  loc_A58DBC: MemLdRfVar from_stack_1.BuscarCLS
  loc_A58DBF: NewIfNullPr clsbase
  loc_A58DC2: from_stack_1v = clsbase.RsFrmGet()
  loc_A58DC7: FLdPr var_158
  loc_A58DCA:  = Me.Fields
  loc_A58DCF: FLdPr var_15C
  loc_A58DD2: from_stack_2 = Me.Item(from_stack_1)
  loc_A58DD7: FLdPr var_170
  loc_A58DDA:  = Me.Value
  loc_A58DDF: FLdRfVar var_180
  loc_A58DE2: ConcatVar var_190
  loc_A58DE6: LitVarStr var_1A0, " - "
  loc_A58DEB: ConcatVar var_1B0
  loc_A58DEF: FLdRfVar var_1DC
  loc_A58DF2: FLdRfVar var_1CC
  loc_A58DF5: LitVarStr var_1C8, "DetaDere"
  loc_A58DFA: PopAdLdVar
  loc_A58DFB: FLdRfVar var_1B8
  loc_A58DFE: FLdRfVar var_1B4
  loc_A58E01: FLdPr Me
  loc_A58E04: MemLdRfVar from_stack_1.BuscarCLS
  loc_A58E07: NewIfNullPr clsbase
  loc_A58E0A: from_stack_1v = clsbase.RsFrmGet()
  loc_A58E0F: FLdPr var_1B4
  loc_A58E12:  = Me.Fields
  loc_A58E17: FLdPr var_1B8
  loc_A58E1A: from_stack_2 = Me.Item(from_stack_1)
  loc_A58E1F: FLdPr var_1CC
  loc_A58E22:  = Me.Value
  loc_A58E27: FLdRfVar var_1DC
  loc_A58E2A: ConcatVar var_1EC
  loc_A58E2E: CStrVarVal var_88
  loc_A58E32: FLdPr var_A8
  loc_A58E35: Me.AddItem from_stack_1, from_stack_2
  loc_A58E3A: FFree1Str var_88
  loc_A58E3D: FFreeAd var_B0 = "": var_B4 = "": var_C8 = "": var_FC = "": var_100 = "": var_114 = "": var_158 = "": var_15C = "": var_170 = "": var_1B4 = "": var_1B8 = ""
  loc_A58E58: FFreeVar var_D8 = "": var_F8 = "": var_124 = "": var_134 = "": var_154 = "": var_180 = "": var_190 = "": var_1B0 = "": var_1DC = ""
  loc_A58E6F: FLdRfVar var_D8
  loc_A58E72: FLdRfVar var_C8
  loc_A58E75: LitVarStr var_C4, "CodiRete"
  loc_A58E7A: PopAdLdVar
  loc_A58E7B: FLdRfVar var_B4
  loc_A58E7E: FLdRfVar var_B0
  loc_A58E81: FLdPr Me
  loc_A58E84: MemLdRfVar from_stack_1.BuscarCLS
  loc_A58E87: NewIfNullPr clsbase
  loc_A58E8A: from_stack_1v = clsbase.RsFrmGet()
  loc_A58E8F: FLdPr var_B0
  loc_A58E92:  = Me.Fields
  loc_A58E97: FLdPr var_B4
  loc_A58E9A: from_stack_2 = Me.Item(from_stack_1)
  loc_A58E9F: FLdPr var_C8
  loc_A58EA2:  = Me.Value
  loc_A58EA7: FLdRfVar var_D8
  loc_A58EAA: CI4Var
  loc_A58EAC: FLdRfVar var_AA
  loc_A58EAF: FLdPr var_A8
  loc_A58EB2:  = Me.NewIndex
  loc_A58EB7: FLdI2 var_AA
  loc_A58EBA: FLdPr var_A8
  loc_A58EBD: Me.ItemData = from_stack_1
  loc_A58EC2: FFreeAd var_B0 = "": var_B4 = ""
  loc_A58ECB: FFree1Var var_D8 = ""
  loc_A58ECE: FLdPr Me
  loc_A58ED1: MemLdRfVar from_stack_1.BuscarCLS
  loc_A58ED4: NewIfNullPr clsbase
  loc_A58ED7: Call clsbase.MoveSiguiente()
  loc_A58EDC: Branch loc_A58CFF
  loc_A58EDF: LitI2_Byte 0
  loc_A58EE1: FLdPr var_A8
  loc_A58EE4: Me.ListIndex = from_stack_1
  loc_A58EE9: LitI4 0
  loc_A58EEE: CI2I4
  loc_A58EEF: FLdPr Me
  loc_A58EF2: VCallAd Control_ID_MarcaTodosChk
  loc_A58EF5: FStAdFunc var_B0
  loc_A58EF8: FLdPr var_B0
  loc_A58EFB: Me.Value = from_stack_1
  loc_A58F00: FFree1Ad var_B0
  loc_A58F03: Call MarcaTodosChk_Click()
  loc_A58F08: LitNothing
  loc_A58F0A: FStAd var_A8 
  loc_A58F0E: ExitProcHresult
End Sub

Private Sub MarcaTodosChk_Click() '9AA6D8
  'Data Table: 40A074
  loc_9AA63C: FLdPr Me
  loc_9AA63F: MemLdI2 global_58
  loc_9AA642: BranchF loc_9AA646
  loc_9AA645: ExitProcHresult
  loc_9AA646: FLdRfVar var_92
  loc_9AA649: FLdPr Me
  loc_9AA64C: VCallAd Control_ID_MarcaTodosChk
  loc_9AA64F: FStAdFunc var_90
  loc_9AA652: FLdPr var_90
  loc_9AA655:  = Me.Value
  loc_9AA65A: FLdI2 var_92
  loc_9AA65D: CI4UI1
  loc_9AA65E: LitI4 1
  loc_9AA663: EqI4
  loc_9AA664: FStI2 var_8A
  loc_9AA667: FFree1Ad var_90
  loc_9AA66A: FLdPr Me
  loc_9AA66D: VCallAd Control_ID_CodiReteList
  loc_9AA670: FStAdFunc var_98
  loc_9AA673: FLdRfVar var_92
  loc_9AA676: FLdPr var_98
  loc_9AA679:  = Me.ListIndex
  loc_9AA67E: FLdI2 var_92
  loc_9AA681: FStI2 var_88
  loc_9AA684: LitI2_Byte &HFF
  loc_9AA686: FLdPr Me
  loc_9AA689: MemStI2 global_56
  loc_9AA68C: LitI2_Byte 0
  loc_9AA68E: FLdRfVar var_86
  loc_9AA691: FLdRfVar var_92
  loc_9AA694: FLdPr var_98
  loc_9AA697:  = Me.ListCount
  loc_9AA69C: FLdI2 var_92
  loc_9AA69F: LitI2_Byte 1
  loc_9AA6A1: SubI2
  loc_9AA6A2: ForI2 var_9C
  loc_9AA6A8: FLdI2 var_8A
  loc_9AA6AB: FLdI2 var_86
  loc_9AA6AE: FLdPr var_98
  loc_9AA6B1: Me.Selected = from_stack_1
  loc_9AA6B6: FLdRfVar var_86
  loc_9AA6B9: NextI2 var_9C, loc_9AA6A8
  loc_9AA6BE: LitI2_Byte 0
  loc_9AA6C0: FLdPr Me
  loc_9AA6C3: MemStI2 global_56
  loc_9AA6C6: FLdI2 var_88
  loc_9AA6C9: FLdPr var_98
  loc_9AA6CC: Me.ListIndex = from_stack_1
  loc_9AA6D1: LitNothing
  loc_9AA6D3: FStAd var_98 
  loc_9AA6D7: ExitProcHresult
End Sub

Private Sub CodiReteList_ItemCheck(Item As Integer) '9C3680
  'Data Table: 40A074
  loc_9C35A8: FLdPr Me
  loc_9C35AB: MemLdI2 global_56
  loc_9C35AE: BranchF loc_9C35B2
  loc_9C35B1: ExitProcHresult
  loc_9C35B2: LitI2_Byte &HFF
  loc_9C35B4: FLdPr Me
  loc_9C35B7: MemStI2 global_58
  loc_9C35BA: FLdRfVar var_8A
  loc_9C35BD: FLdPr Me
  loc_9C35C0: VCallAd Control_ID_CodiReteList
  loc_9C35C3: FStAdFunc var_88
  loc_9C35C6: FLdPr var_88
  loc_9C35C9:  = Me.SelCount
  loc_9C35CE: FLdI2 var_8A
  loc_9C35D1: FStI2 var_8C
  loc_9C35D4: FFree1Ad var_88
  loc_9C35D7: FLdI2 var_8C
  loc_9C35DA: LitI2_Byte 0
  loc_9C35DC: EqI2
  loc_9C35DD: BranchF loc_9C35FD
  loc_9C35E0: LitI4 0
  loc_9C35E5: CI2I4
  loc_9C35E6: FLdPr Me
  loc_9C35E9: VCallAd Control_ID_MarcaTodosChk
  loc_9C35EC: FStAdFunc var_88
  loc_9C35EF: FLdPr var_88
  loc_9C35F2: Me.Value = from_stack_1
  loc_9C35F7: FFree1Ad var_88
  loc_9C35FA: Branch loc_9C3676
  loc_9C35FD: FLdI2 var_8C
  loc_9C3600: FLdRfVar var_8A
  loc_9C3603: FLdPr Me
  loc_9C3606: VCallAd Control_ID_CodiReteList
  loc_9C3609: FStAdFunc var_88
  loc_9C360C: FLdPr var_88
  loc_9C360F:  = Me.ListCount
  loc_9C3614: FLdI2 var_8A
  loc_9C3617: LtI2
  loc_9C3618: FFree1Ad var_88
  loc_9C361B: BranchF loc_9C363B
  loc_9C361E: LitI4 2
  loc_9C3623: CI2I4
  loc_9C3624: FLdPr Me
  loc_9C3627: VCallAd Control_ID_MarcaTodosChk
  loc_9C362A: FStAdFunc var_88
  loc_9C362D: FLdPr var_88
  loc_9C3630: Me.Value = from_stack_1
  loc_9C3635: FFree1Ad var_88
  loc_9C3638: Branch loc_9C3676
  loc_9C363B: FLdI2 var_8C
  loc_9C363E: FLdRfVar var_8A
  loc_9C3641: FLdPr Me
  loc_9C3644: VCallAd Control_ID_CodiReteList
  loc_9C3647: FStAdFunc var_88
  loc_9C364A: FLdPr var_88
  loc_9C364D:  = Me.ListCount
  loc_9C3652: FLdI2 var_8A
  loc_9C3655: EqI2
  loc_9C3656: FFree1Ad var_88
  loc_9C3659: BranchF loc_9C3676
  loc_9C365C: LitI4 1
  loc_9C3661: CI2I4
  loc_9C3662: FLdPr Me
  loc_9C3665: VCallAd Control_ID_MarcaTodosChk
  loc_9C3668: FStAdFunc var_88
  loc_9C366B: FLdPr var_88
  loc_9C366E: Me.Value = from_stack_1
  loc_9C3673: FFree1Ad var_88
  loc_9C3676: LitI2_Byte 0
  loc_9C3678: FLdPr Me
  loc_9C367B: MemStI2 global_58
  loc_9C367E: ExitProcHresult
End Sub

Public Function global_4235380Get() '40A374
  global_4235380Get = global_4235380
End Function

Public Sub global_4235380Put(Value) '40A38E
  global_4235380 = Value
End Sub

Public Sub global_4235380Set(Value) '40A3A8
  global_4235380 = Value
End Sub
