VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmRecursosEspeciales
  Caption = "Recursos Especiales"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmRecursosEspeciales.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 14460
  ClientHeight = 9300
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
      OleObjectBlob = "frmRecursosEspeciales.frx":08CA
    End
  End
  Begin VB.Frame fraABMS
    Caption = "Recursos Especiales "
    Left = 120
    Top = 6360
    Width = 13455
    Height = 1575
    TabIndex = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 3960
      Top = 840
      Width = 1575
      Height = 360
      TabIndex = 9
      OleObjectBlob = "frmRecursosEspeciales.frx":0952
      DataField = "CodiPart"
    End
    Begin MSMask.MaskEdBox CodiCucoMsk
      Left = 3960
      Top = 360
      Width = 1935
      Height = 360
      TabIndex = 6
      OleObjectBlob = "frmRecursosEspeciales.frx":09DA
      DataField = "CodiCuco"
    End
    Begin VB.Label DetaCucoLbl
      Left = 6000
      Top = 360
      Width = 6255
      Height = 360
      TabIndex = 7
      BorderStyle = 1 'Fixed Single
      DataField = "DetaCuco"
    End
    Begin VB.Label DetaPartLbl
      Left = 5640
      Top = 840
      Width = 6255
      Height = 360
      TabIndex = 10
      BorderStyle = 1 'Fixed Single
      DataField = "DetaPart"
    End
    Begin VB.Label Label7
      Caption = "Cuenta Contable:"
      Index = 2
      Left = 1950
      Top = 360
      Width = 1860
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
    Begin VB.Label Label1
      Caption = "Partida:"
      Index = 7
      Left = 2880
      Top = 840
      Width = 810
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
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 13455
    Height = 4455
    TabIndex = 3
    OleObjectBlob = "frmRecursosEspeciales.frx":0A62
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmRecursosEspeciales.frx":0DA2
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 14460
    Height = 660
    TabIndex = 11
    OleObjectBlob = "frmRecursosEspeciales.frx":8920
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 12
      TabStop = 0   'False
      Picture = "frmRecursosEspeciales.frx":8E7C
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmRecursosEspeciales"


Private Sub dgdABMS_UnknownEvent_0 '9617A0
  'Data Table: 4365AC
  loc_961788: FLdPr Me
  loc_96178B: VCallAd Control_ID_dgdABMS
  loc_96178E: FStAdFunc var_88
  loc_961791: FLdRfVar var_88
  loc_961794: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_961799: FFree1Ad var_88
  loc_96179C: ExitProcHresult
  loc_96179D: ThisVCall unk_4365CB
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9612E0
  'Data Table: 4365AC
  loc_9612C8: FLdPr Me
  loc_9612CB: VCallAd Control_ID_dgdABMS
  loc_9612CE: FStAdFunc var_88
  loc_9612D1: FLdRfVar var_88
  loc_9612D4: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_9612D9: FFree1Ad var_88
  loc_9612DC: ExitProcHresult
  loc_9612DD: LeR8
  loc_9612DE: CRec2Uni arg_3400
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99ADB4
  'Data Table: 4365AC
  loc_99AD58: FLdRfVar var_B4
  loc_99AD5B: FLdRfVar var_B0
  loc_99AD5E: FLdI2 ColIndex
  loc_99AD61: CVarI2 var_A8
  loc_99AD64: PopAdLdVar
  loc_99AD65: FLdPr Me
  loc_99AD68: VCallAd Control_ID_dgdABMS
  loc_99AD6B: FStAdFunc var_88
  loc_99AD6E: FLdPr var_88
  loc_99AD71: LateIdLdVar var_98 DispID_105 0
  loc_99AD78: CastAdVar Me
  loc_99AD7C: FStAdFunc var_AC
  loc_99AD7F: FLdPr var_AC
  loc_99AD82: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99AD87: FLdPr var_B0
  loc_99AD8A:  = Me.DataField
  loc_99AD8F: FLdZeroAd var_B4
  loc_99AD92: PopTmpLdAdStr
  loc_99AD96: FLdPr Me
  loc_99AD99: MemLdRfVar from_stack_1.global_52
  loc_99AD9C: NewIfNullPr clsrecuespe
  loc_99AD9F: Call clsrecuespe.Sort(from_stack_1v)
  loc_99ADA4: FFree1Str var_B8
  loc_99ADA7: FFreeAd var_88 = "": var_AC = ""
  loc_99ADB0: FFree1Var var_98 = ""
  loc_99ADB3: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '94C830
  'Data Table: 4365AC
  loc_94C81C: FLdPr Me
  loc_94C81F: VCallAd Control_ID_CodiPartMsk
  loc_94C822: CVarAd
  loc_94C826: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C82B: FFree1Var var_94 = ""
  loc_94C82E: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 '9E8A24
  'Data Table: 4365AC
  loc_9E890C: FLdRfVar var_8A
  loc_9E890F: FLdPr Me
  loc_9E8912: VCallAd Control_ID_cmdCancelar
  loc_9E8915: FStAdFunc var_88
  loc_9E8918: FLdPr var_88
  loc_9E891B:  = Me.Value
  loc_9E8920: FLdI2 var_8A
  loc_9E8923: NotI4
  loc_9E8924: FLdPr Me
  loc_9E8927: VCallAd Control_ID_CodiPartMsk
  loc_9E892A: FStAdFunc var_90
  loc_9E892D: FLdPr var_90
  loc_9E8930: LateIdLdVar var_A0 DispID_13 -32767
  loc_9E8937: CBoolVar
  loc_9E8939: AndI4
  loc_9E893A: FFreeAd var_88 = ""
  loc_9E8941: FFree1Var var_A0 = ""
  loc_9E8944: BranchF loc_9E8A21
  loc_9E8947: FLdPr Me
  loc_9E894A: VCallAd Control_ID_CodiPartMsk
  loc_9E894D: FStAdFunc var_88
  loc_9E8950: FLdRfVar var_88
  loc_9E8953: ImpAdCallFPR4 Proc_261_65_9A9668()
  loc_9E8958: FFree1Ad var_88
  loc_9E895B: FLdPr Me
  loc_9E895E: VCallAd Control_ID_CodiPartMsk
  loc_9E8961: FStAdFunc var_88
  loc_9E8964: FLdPr var_88
  loc_9E8967: LateIdLdVar var_A0 DispID_22 0
  loc_9E896E: PopAd
  loc_9E8970: FLdRfVar var_A4
  loc_9E8973: FLdPr Me
  loc_9E8976:  = Me.Name
  loc_9E897B: FLdPr Me
  loc_9E897E: MemLdRfVar from_stack_1.global_68
  loc_9E8981: NewIfNullRf
  loc_9E8985: ILdRf var_A4
  loc_9E8988: LitI2_Byte 0
  loc_9E898A: FLdRfVar var_A0
  loc_9E898D: CStrVarTmp
  loc_9E898E: FStStrNoPop var_A8
  loc_9E8991: ImpAdLdI2 MemVar_C3D064
  loc_9E8994: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_9E8999: FStStrNoPop var_AC
  loc_9E899C: FLdPr Me
  loc_9E899F: MemStStrCopy
  loc_9E89A3: FFreeStr var_A8 = "": var_A4 = ""
  loc_9E89AC: FFree1Ad var_88
  loc_9E89AF: FFree1Var var_A0 = ""
  loc_9E89B2: FLdPr Me
  loc_9E89B5: VCallAd Control_ID_CodiPartMsk
  loc_9E89B8: FStAdFunc var_B4
  loc_9E89BB: FLdPr Me
  loc_9E89BE: VCallAd Control_ID_DetaPartLbl
  loc_9E89C1: FStAdFunc var_B0
  loc_9E89C4: FLdRfVar var_B0
  loc_9E89C7: FLdZeroAd var_B4
  loc_9E89CA: FStAdFuncNoPop
  loc_9E89CD: CastAd
  loc_9E89D0: FStAdFunc var_90
  loc_9E89D3: FLdRfVar var_90
  loc_9E89D6: FLdPr Me
  loc_9E89D9: MemLdRfVar from_stack_1.global_60
  loc_9E89DC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E89E1: IStI2 ColIndex
  loc_9E89E4: FFreeAd var_88 = "": var_90 = "": var_B0 = ""
  loc_9E89EF: ILdI2 ColIndex
  loc_9E89F2: NotI4
  loc_9E89F3: BranchF loc_9E8A21
  loc_9E89F6: FLdRfVar var_A4
  loc_9E89F9: FLdPr Me
  loc_9E89FC: MemLdRfVar from_stack_1.global_68
  loc_9E89FF: NewIfNullPr tblpartida
  loc_9E8A02: from_stack_1v = tblpartida.DetaPartGet()
  loc_9E8A07: ILdRf var_A4
  loc_9E8A0A: FLdPr Me
  loc_9E8A0D: VCallAd Control_ID_DetaPartLbl
  loc_9E8A10: FStAdFunc var_88
  loc_9E8A13: FLdPr var_88
  loc_9E8A16: Me.Caption = from_stack_1
  loc_9E8A1B: FFree1Str var_A4
  loc_9E8A1E: FFree1Ad var_88
  loc_9E8A21: ExitProcHresult
End Sub

Private Sub CodiPartMsk_KeyPress(KeyAscii As Integer) '9F8E54
  'Data Table: 4365AC
  loc_9F8D18: ILdI2 KeyAscii
  loc_9F8D1B: CI4UI1
  loc_9F8D1C: LitI4 &H20
  loc_9F8D21: EqI4
  loc_9F8D22: BranchF loc_9F8E53
  loc_9F8D25: LitNothing
  loc_9F8D27: CastAd
  loc_9F8D2A: FStAdFuncNoPop
  loc_9F8D2D: ImpAdLdRf MemVar_C3D724
  loc_9F8D30: NewIfNullPr bscPartida
  loc_9F8D33: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_9F8D38: FFree1Ad var_88
  loc_9F8D3B: LitVar_Missing var_A8
  loc_9F8D3E: PopAdLdVar
  loc_9F8D3F: LitVarI4
  loc_9F8D47: PopAdLdVar
  loc_9F8D48: ImpAdLdRf MemVar_C3D724
  loc_9F8D4B: NewIfNullPr bscPartida
  loc_9F8D4E: bscPartida.Show from_stack_1, from_stack_2
  loc_9F8D53: FLdRfVar var_AC
  loc_9F8D56: FLdRfVar var_88
  loc_9F8D59: ImpAdLdRf MemVar_C3D724
  loc_9F8D5C: NewIfNullPr bscPartida
  loc_9F8D5F: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F8D64: FLdPr var_88
  loc_9F8D67: from_stack_1 = clsbase.RecordCount
  loc_9F8D6C: ILdRf var_AC
  loc_9F8D6F: LitI4 0
  loc_9F8D74: GtI4
  loc_9F8D75: FFree1Ad var_88
  loc_9F8D78: BranchF loc_9F8E53
  loc_9F8D7B: FLdRfVar var_C8
  loc_9F8D7E: FLdRfVar var_B8
  loc_9F8D81: LitVarStr var_98, "CodiPart"
  loc_9F8D86: PopAdLdVar
  loc_9F8D87: FLdRfVar var_B4
  loc_9F8D8A: FLdRfVar var_B0
  loc_9F8D8D: FLdRfVar var_88
  loc_9F8D90: ImpAdLdRf MemVar_C3D724
  loc_9F8D93: NewIfNullPr bscPartida
  loc_9F8D96: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F8D9B: FLdPr var_88
  loc_9F8D9E: from_stack_1v = clsbase.RsFrmGet()
  loc_9F8DA3: FLdPr var_B0
  loc_9F8DA6:  = Me.Fields
  loc_9F8DAB: FLdPr var_B4
  loc_9F8DAE: from_stack_2 = Me.Item(from_stack_1)
  loc_9F8DB3: FLdPr var_B8
  loc_9F8DB6:  = Me.Value
  loc_9F8DBB: FLdRfVar var_C8
  loc_9F8DBE: CStrVarTmp
  loc_9F8DBF: CVarStr var_D8
  loc_9F8DC2: PopAdLdVar
  loc_9F8DC3: FLdPr Me
  loc_9F8DC6: VCallAd Control_ID_CodiPartMsk
  loc_9F8DC9: FStAdFunc var_DC
  loc_9F8DCC: FLdPr var_DC
  loc_9F8DCF: LateIdSt
  loc_9F8DD4: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F8DE1: FFreeVar var_C8 = ""
  loc_9F8DE8: FLdRfVar var_C8
  loc_9F8DEB: FLdRfVar var_B8
  loc_9F8DEE: LitVarStr var_98, "DetaPart"
  loc_9F8DF3: PopAdLdVar
  loc_9F8DF4: FLdRfVar var_B4
  loc_9F8DF7: FLdRfVar var_B0
  loc_9F8DFA: FLdRfVar var_88
  loc_9F8DFD: ImpAdLdRf MemVar_C3D724
  loc_9F8E00: NewIfNullPr bscPartida
  loc_9F8E03: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F8E08: FLdPr var_88
  loc_9F8E0B: from_stack_1v = clsbase.RsFrmGet()
  loc_9F8E10: FLdPr var_B0
  loc_9F8E13:  = Me.Fields
  loc_9F8E18: FLdPr var_B4
  loc_9F8E1B: from_stack_2 = Me.Item(from_stack_1)
  loc_9F8E20: FLdPr var_B8
  loc_9F8E23:  = Me.Value
  loc_9F8E28: FLdRfVar var_C8
  loc_9F8E2B: CStrVarTmp
  loc_9F8E2C: FStStrNoPop var_E0
  loc_9F8E2F: FLdPr Me
  loc_9F8E32: VCallAd Control_ID_DetaPartLbl
  loc_9F8E35: FStAdFunc var_DC
  loc_9F8E38: FLdPr var_DC
  loc_9F8E3B: Me.Caption = from_stack_1
  loc_9F8E40: FFree1Str var_E0
  loc_9F8E43: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F8E50: FFree1Var var_C8 = ""
  loc_9F8E53: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'A670AC
  'Data Table: 4365AC
  loc_A66D6C: ILdRf Button
  loc_A66D6F: FStAd var_88 
  loc_A66D73: FLdRfVar var_8C
  loc_A66D76: FLdPr var_88
  loc_A66D79:  = Me.Key
  loc_A66D7E: FLdZeroAd var_8C
  loc_A66D81: FStStr var_90
  loc_A66D84: ILdRf var_90
  loc_A66D87: LitStr "btnCrear"
  loc_A66D8A: EqStr
  loc_A66D8C: BranchF loc_A66E30
  loc_A66D8F: LitI2_Byte 1
  loc_A66D91: FLdPr Me
  loc_A66D94: MemStUI1
  loc_A66D98: ILdRf Me
  loc_A66D9B: CastAd
  loc_A66D9E: FStAdFunc var_94
  loc_A66DA1: FLdRfVar var_94
  loc_A66DA4: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_A66DA9: FFree1Ad var_94
  loc_A66DAC: LitI4 0
  loc_A66DB1: LitI4 0
  loc_A66DB6: FLdRfVar var_98
  loc_A66DB9: Redim
  loc_A66DC3: FLdPr Me
  loc_A66DC6: VCallAd Control_ID_dgdABMS
  loc_A66DC9: CVarAd
  loc_A66DCD: ParmAry1St
  loc_A66DD3: FLdRfVar var_98
  loc_A66DD6: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A66DDB: FLdRfVar var_98
  loc_A66DDE: Erase
  loc_A66DDF: ILdRf Me
  loc_A66DE2: CastAd
  loc_A66DE5: FStAdFunc var_94
  loc_A66DE8: FLdRfVar var_94
  loc_A66DEB: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A66DF0: FFree1Ad var_94
  loc_A66DF3: ILdRf Me
  loc_A66DF6: CastAd
  loc_A66DF9: FStAdFunc var_94
  loc_A66DFC: FLdRfVar var_94
  loc_A66DFF: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A66E04: FFree1Ad var_94
  loc_A66E07: ILdRf Me
  loc_A66E0A: CastAd
  loc_A66E0D: FStAdFunc var_94
  loc_A66E10: FLdRfVar var_94
  loc_A66E13: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_A66E18: FFree1Ad var_94
  loc_A66E1B: FLdPr Me
  loc_A66E1E: VCallAd Control_ID_CodiCucoMsk
  loc_A66E21: CVarAd
  loc_A66E25: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_A66E2A: FFree1Var var_A8 = ""
  loc_A66E2D: Branch loc_A670AA
  loc_A66E30: ILdRf var_90
  loc_A66E33: LitStr "btnModificar"
  loc_A66E36: EqStr
  loc_A66E38: BranchF loc_A66E5B
  loc_A66E3B: FLdRfVar var_AC
  loc_A66E3E: FLdPr Me
  loc_A66E41: MemLdRfVar from_stack_1.global_52
  loc_A66E44: NewIfNullPr clsrecuespe
  loc_A66E47: from_stack_1 = clsrecuespe.RecordCount
  loc_A66E4C: ILdRf var_AC
  loc_A66E4F: LitI4 0
  loc_A66E54: GtI4
  loc_A66E55: BranchF loc_A66E58
  loc_A66E58: Branch loc_A670AA
  loc_A66E5B: ILdRf var_90
  loc_A66E5E: LitStr "btnEliminar"
  loc_A66E61: EqStr
  loc_A66E63: BranchF loc_A66EB0
  loc_A66E66: FLdRfVar var_AC
  loc_A66E69: FLdPr Me
  loc_A66E6C: MemLdRfVar from_stack_1.global_52
  loc_A66E6F: NewIfNullPr clsrecuespe
  loc_A66E72: from_stack_1 = clsrecuespe.RecordCount
  loc_A66E77: ILdRf var_AC
  loc_A66E7A: LitI4 0
  loc_A66E7F: GtI4
  loc_A66E80: BranchF loc_A66EAD
  loc_A66E83: LitI2_Byte 0
  loc_A66E85: PopTmpLdAd2 var_B0
  loc_A66E88: LitI2_Byte &HFF
  loc_A66E8A: PopTmpLdAd2 var_AE
  loc_A66E8D: LitStr "¿Desea ELIMINAR la relación Cuenta Contable - Partida?"
  loc_A66E90: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_A66E95: CI4UI1
  loc_A66E96: LitI4 6
  loc_A66E9B: EqI4
  loc_A66E9C: BranchF loc_A66EAD
  loc_A66E9F: FLdPr Me
  loc_A66EA2: MemLdRfVar from_stack_1.global_52
  loc_A66EA5: NewIfNullPr clsrecuespe
  loc_A66EA8: Call clsrecuespe.Eliminar()
  loc_A66EAD: Branch loc_A670AA
  loc_A66EB0: ILdRf var_90
  loc_A66EB3: LitStr "btnGuardar"
  loc_A66EB6: EqStr
  loc_A66EB8: BranchF loc_A66F7A
  loc_A66EBB: LitStr vbNullString
  loc_A66EBE: FLdPr Me
  loc_A66EC1: MemStStrCopy
  loc_A66EC5: LitI2_Byte 0
  loc_A66EC7: PopTmpLdAd2 var_AE
  loc_A66ECA: Call CodiCucoMsk_UnknownEvent_8()
  loc_A66ECF: FLdPr Me
  loc_A66ED2: MemLdStr global_60
  loc_A66ED5: LitStr vbNullString
  loc_A66ED8: NeStr
  loc_A66EDA: BranchF loc_A66EDE
  loc_A66EDD: ExitProcHresult
  loc_A66EDE: LitI2_Byte 0
  loc_A66EE0: PopTmpLdAd2 var_AE
  loc_A66EE3: Call CodiPartMsk_UnknownEvent_8()
  loc_A66EE8: FLdPr Me
  loc_A66EEB: MemLdStr global_60
  loc_A66EEE: LitStr vbNullString
  loc_A66EF1: NeStr
  loc_A66EF3: BranchF loc_A66EF7
  loc_A66EF6: ExitProcHresult
  loc_A66EF7: FLdPr Me
  loc_A66EFA: MemLdUI1 global_56
  loc_A66EFE: FStUI1 var_B2
  loc_A66F02: FLdUI1
  loc_A66F06: LitI2_Byte 2
  loc_A66F08: EqI2
  loc_A66F09: BranchF loc_A66F0F
  loc_A66F0C: Branch loc_A66F72
  loc_A66F0F: FLdUI1
  loc_A66F13: LitI2_Byte 1
  loc_A66F15: EqI2
  loc_A66F16: BranchF loc_A66F72
  loc_A66F19: FLdPr Me
  loc_A66F1C: VCallAd Control_ID_CodiCucoMsk
  loc_A66F1F: FStAdFunc var_94
  loc_A66F22: FLdPr var_94
  loc_A66F25: LateIdLdVar var_A8 DispID_22 0
  loc_A66F2C: PopAd
  loc_A66F2E: FLdPr Me
  loc_A66F31: VCallAd Control_ID_CodiPartMsk
  loc_A66F34: FStAdFunc var_B8
  loc_A66F37: FLdPr var_B8
  loc_A66F3A: LateIdLdVar var_C8 DispID_22 0
  loc_A66F41: CStrVarTmp
  loc_A66F42: FStStrNoPop var_CC
  loc_A66F45: FLdRfVar var_A8
  loc_A66F48: CStrVarTmp
  loc_A66F49: FStStrNoPop var_8C
  loc_A66F4C: ImpAdLdI2 MemVar_C3D064
  loc_A66F4F: FLdPr Me
  loc_A66F52: MemLdRfVar from_stack_1.global_52
  loc_A66F55: NewIfNullPr clsrecuespe
  loc_A66F58: Call clsrecuespe.AddNew(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A66F5D: FFreeStr var_8C = ""
  loc_A66F64: FFreeAd var_94 = ""
  loc_A66F6B: FFreeVar var_A8 = ""
  loc_A66F72: Call cmdCancelar_Click()
  loc_A66F77: Branch loc_A670AA
  loc_A66F7A: ILdRf var_90
  loc_A66F7D: LitStr "btnCancelar"
  loc_A66F80: EqStr
  loc_A66F82: BranchF loc_A66F8D
  loc_A66F85: Call cmdCancelar_Click()
  loc_A66F8A: Branch loc_A670AA
  loc_A66F8D: ILdRf var_90
  loc_A66F90: LitStr "btnPrimero"
  loc_A66F93: EqStr
  loc_A66F95: BranchF loc_A66FA9
  loc_A66F98: FLdPr Me
  loc_A66F9B: MemLdRfVar from_stack_1.global_52
  loc_A66F9E: NewIfNullPr clsrecuespe
  loc_A66FA1: Call clsrecuespe.MoveFirst()
  loc_A66FA6: Branch loc_A670AA
  loc_A66FA9: ILdRf var_90
  loc_A66FAC: LitStr "btnAnterior"
  loc_A66FAF: EqStr
  loc_A66FB1: BranchF loc_A66FC5
  loc_A66FB4: FLdPr Me
  loc_A66FB7: MemLdRfVar from_stack_1.global_52
  loc_A66FBA: NewIfNullPr clsrecuespe
  loc_A66FBD: Call clsrecuespe.MovePrevious()
  loc_A66FC2: Branch loc_A670AA
  loc_A66FC5: ILdRf var_90
  loc_A66FC8: LitStr "btnSiguiente"
  loc_A66FCB: EqStr
  loc_A66FCD: BranchF loc_A66FE1
  loc_A66FD0: FLdPr Me
  loc_A66FD3: MemLdRfVar from_stack_1.global_52
  loc_A66FD6: NewIfNullPr clsrecuespe
  loc_A66FD9: Call clsrecuespe.MoveNext()
  loc_A66FDE: Branch loc_A670AA
  loc_A66FE1: ILdRf var_90
  loc_A66FE4: LitStr "btnUltimo"
  loc_A66FE7: EqStr
  loc_A66FE9: BranchF loc_A66FFD
  loc_A66FEC: FLdPr Me
  loc_A66FEF: MemLdRfVar from_stack_1.global_52
  loc_A66FF2: NewIfNullPr clsrecuespe
  loc_A66FF5: Call clsrecuespe.MoveLast()
  loc_A66FFA: Branch loc_A670AA
  loc_A66FFD: ILdRf var_90
  loc_A67000: LitStr "btnFiltrar"
  loc_A67003: EqStr
  loc_A67005: BranchF loc_A6700B
  loc_A67008: Branch loc_A670AA
  loc_A6700B: ILdRf var_90
  loc_A6700E: LitStr "btnBuscar"
  loc_A67011: EqStr
  loc_A67013: BranchF loc_A67019
  loc_A67016: Branch loc_A670AA
  loc_A67019: ILdRf var_90
  loc_A6701C: LitStr "btnImprimir"
  loc_A6701F: EqStr
  loc_A67021: BranchF loc_A67053
  loc_A67024: ImpAdLdRf MemVar_C3DDF4
  loc_A67027: NewIfNullAd
  loc_A6702A: CastAd
  loc_A6702D: FStAdFuncNoPop
  loc_A67030: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_A67035: FFree1Ad var_94
  loc_A67038: LitVar_Missing var_EC
  loc_A6703B: PopAdLdVar
  loc_A6703C: LitVarI4
  loc_A67044: PopAdLdVar
  loc_A67045: ImpAdLdRf MemVar_C3DDF4
  loc_A67048: NewIfNullPr rptRecursosEspeciales
  loc_A6704B: rptRecursosEspeciales.Show from_stack_1, from_stack_2
  loc_A67050: Branch loc_A670AA
  loc_A67053: ILdRf var_90
  loc_A67056: LitStr "btnAyuda"
  loc_A67059: EqStr
  loc_A6705B: BranchF loc_A6708A
  loc_A6705E: LitVar_Missing var_12C
  loc_A67061: LitVar_Missing var_10C
  loc_A67064: LitVar_Missing var_C8
  loc_A67067: LitI4 0
  loc_A6706C: LitVarStr var_DC, "Opcion no disponible en esta version."
  loc_A67071: FStVarCopyObj var_A8
  loc_A67074: FLdRfVar var_A8
  loc_A67077: ImpAdCallFPR4 MsgBox(, , , , )
  loc_A6707C: FFreeVar var_A8 = "": var_C8 = "": var_10C = ""
  loc_A67087: Branch loc_A670AA
  loc_A6708A: ILdRf var_90
  loc_A6708D: LitStr "btnSalir"
  loc_A67090: EqStr
  loc_A67092: BranchF loc_A670AA
  loc_A67095: ILdRf Me
  loc_A67098: FStAdNoPop
  loc_A6709C: ImpAdLdRf MemVar_C44F9C
  loc_A6709F: NewIfNullPr Me
  loc_A670A2: Me.Global.Unload from_stack_1
  loc_A670A7: FFree1Ad var_94
  loc_A670AA: ExitProcHresult
End Sub

Private Sub Form_Load(arg_34) 'A262A4
  'Data Table: 4365AC
  loc_A260F8: LitVarStr var_94, "#.#.#.#.##.##"
  loc_A260FD: PopAdLdVar
  loc_A260FE: FLdPr Me
  loc_A26101: VCallAd Control_ID_CodiPartMsk
  loc_A26104: FStAdFunc var_A8
  loc_A26107: FLdPr var_A8
  loc_A2610A: LateIdSt
  loc_A2610F: FFree1Ad var_A8
  loc_A26112: LitVarStr var_94, "#.#.##.##.##.##"
  loc_A26117: PopAdLdVar
  loc_A26118: FLdPr Me
  loc_A2611B: VCallAd Control_ID_CodiCucoMsk
  loc_A2611E: FStAdFunc var_A8
  loc_A26121: FLdPr var_A8
  loc_A26124: LateIdSt
  loc_A26129: FFree1Ad var_A8
  loc_A2612C: ILdRf Me
  loc_A2612F: CastAd
  loc_A26132: FStAdFunc var_A8
  loc_A26135: FLdRfVar var_A8
  loc_A26138: ImpAdCallFPR4 Proc_261_41_999BCC()
  loc_A2613D: FFree1Ad var_A8
  loc_A26140: ILdRf Me
  loc_A26143: CastAd
  loc_A26146: FStAdFunc var_A8
  loc_A26149: FLdRfVar var_A8
  loc_A2614C: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A26151: FFree1Ad var_A8
  loc_A26154: LitI2_Byte 0
  loc_A26156: CR8I2
  loc_A26157: PopFPR4
  loc_A26158: FLdPr Me
  loc_A2615B: Me.Left = from_stack_1s
  loc_A26160: LitI2_Byte 0
  loc_A26162: CR8I2
  loc_A26163: PopFPR4
  loc_A26164: FLdPr Me
  loc_A26167: Me.Top = from_stack_1s
  loc_A2616C: LitStr "SELECT recuespe.PeriInfo, recuespe.CodiCuco, infogov.cuentacontable.DetaCuco, recuespe.CodiPart, partida.DetaPart FROM recuespe "
  loc_A2616F: LitStr " LEFT JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = recuespe.PeriInfo AND infogov.cuentacontable.CodiCuco = recuespe.CodiCuco "
  loc_A26172: ConcatStr
  loc_A26173: FStStrNoPop var_AC
  loc_A26176: LitStr " LEFT JOIN partida ON partida.PeriInfo = recuespe.PeriInfo AND partida.CodiPart = recuespe.CodiPart "
  loc_A26179: ConcatStr
  loc_A2617A: FStStrNoPop var_B0
  loc_A2617D: LitStr " WHERE recuespe.PeriInfo = "
  loc_A26180: ConcatStr
  loc_A26181: FStStrNoPop var_B4
  loc_A26184: ImpAdLdI2 MemVar_C3D064
  loc_A26187: CStrUI1
  loc_A26189: FStStrNoPop var_B8
  loc_A2618C: ConcatStr
  loc_A2618D: FStStrNoPop var_BC
  loc_A26190: LitStr " ORDER BY recuespe.PeriInfo, recuespe.CodiCuco, recuespe.CodiPart"
  loc_A26193: ConcatStr
  loc_A26194: FStStrNoPop var_C0
  loc_A26197: FLdPr Me
  loc_A2619A: MemLdRfVar from_stack_1.global_52
  loc_A2619D: NewIfNullPr clsrecuespe
  loc_A261A0: Call clsrecuespe.RedefineRS(from_stack_1v)
  loc_A261A5: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A261B4: LitVarI2 var_94, 0
  loc_A261B9: PopAdLdVar
  loc_A261BA: LitStr "Cuenta Contable (Codigo)"
  loc_A261BD: FLdPr Me
  loc_A261C0: VCallAd Control_ID_FiltroCbo
  loc_A261C3: FStAdFunc var_A8
  loc_A261C6: FLdPr var_A8
  loc_A261C9: Me.AddItem from_stack_1, from_stack_2
  loc_A261CE: FFree1Ad var_A8
  loc_A261D1: LitVarI2 var_94, 1
  loc_A261D6: PopAdLdVar
  loc_A261D7: LitStr "Cuenta Contable (Detalle)"
  loc_A261DA: FLdPr Me
  loc_A261DD: VCallAd Control_ID_FiltroCbo
  loc_A261E0: FStAdFunc var_A8
  loc_A261E3: FLdPr var_A8
  loc_A261E6: Me.AddItem from_stack_1, from_stack_2
  loc_A261EB: FFree1Ad var_A8
  loc_A261EE: LitVarI2 var_94, 2
  loc_A261F3: PopAdLdVar
  loc_A261F4: LitStr "Partida (Codigo)"
  loc_A261F7: FLdPr Me
  loc_A261FA: VCallAd Control_ID_FiltroCbo
  loc_A261FD: FStAdFunc var_A8
  loc_A26200: FLdPr var_A8
  loc_A26203: Me.AddItem from_stack_1, from_stack_2
  loc_A26208: FFree1Ad var_A8
  loc_A2620B: LitVarI2 var_94, 3
  loc_A26210: PopAdLdVar
  loc_A26211: LitStr "Partida (Detalle)"
  loc_A26214: FLdPr Me
  loc_A26217: VCallAd Control_ID_FiltroCbo
  loc_A2621A: FStAdFunc var_A8
  loc_A2621D: FLdPr var_A8
  loc_A26220: Me.AddItem from_stack_1, from_stack_2
  loc_A26225: FFree1Ad var_A8
  loc_A26228: LitI2_Byte 0
  loc_A2622A: FLdPr Me
  loc_A2622D: VCallAd Control_ID_FiltroCbo
  loc_A26230: FStAdFunc var_A8
  loc_A26233: FLdPr var_A8
  loc_A26236: Me.ListIndex = from_stack_1
  loc_A2623B: FFree1Ad var_A8
  loc_A2623E: Call cmdCancelar_Click()
  loc_A26243: LitI4 0
  loc_A26248: LitI4 1
  loc_A2624D: FLdRfVar var_C4
  loc_A26250: Redim
  loc_A2625A: FLdPr Me
  loc_A2625D: MemLdRfVar from_stack_1.global_52
  loc_A26260: NewIfNullAd
  loc_A26263: FStAd var_A8 
  loc_A26267: FLdRfVar var_A8
  loc_A2626A: CVarRef
  loc_A2626F: ParmAry1St
  loc_A26275: FLdPr Me
  loc_A26278: VCallAd Control_ID_dgdABMS
  loc_A2627B: CVarAd
  loc_A2627F: ParmAry1St
  loc_A26285: FLdRfVar var_C4
  loc_A26288: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A2628D: ILdRf var_A8
  loc_A26290: CastAd
  loc_A26293: FLdPr Me
  loc_A26296: MemStAdFunc
  loc_A2629A: FLdRfVar var_C4
  loc_A2629D: Erase
  loc_A2629E: FFree1Ad var_A8
  loc_A262A1: ExitProcHresult
  loc_A262A2: LitVar_TRUE arg_34FC
End Sub

Private Sub Form_Activate() '9A075C
  'Data Table: 4365AC
  loc_9A06F4: FLdRfVar var_C2
  loc_9A06F7: FLdRfVar var_C0
  loc_9A06FA: LitVarI2 var_B8, 1
  loc_9A06FF: FLdPr Me
  loc_9A0702: VCallAd Control_ID_tlbABMS
  loc_9A0705: FStAdFunc var_88
  loc_9A0708: FLdPr var_88
  loc_9A070B: LateIdLdVar var_98 DispID_3 0
  loc_9A0712: CastAdVar Me
  loc_9A0716: FStAdFunc var_BC
  loc_9A0719: FLdPr var_BC
  loc_9A071C:  = Me.Buttons.ControlDefault
  loc_9A0721: FLdPr var_C0
  loc_9A0724:  = Me.Enabled
  loc_9A0729: FLdI2 var_C2
  loc_9A072C: FFreeAd var_88 = "": var_BC = ""
  loc_9A0735: FFreeVar var_98 = ""
  loc_9A073C: BranchF loc_9A0759
  loc_9A073F: LitI4 0
  loc_9A0744: LitI4 0
  loc_9A0749: LitI2_Byte 0
  loc_9A074B: FLdPr Me
  loc_9A074E: MemLdRfVar from_stack_1.global_52
  loc_9A0751: NewIfNullPr clsrecuespe
  loc_9A0754: Call clsrecuespe.Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_9A0759: ExitProcHresult
  loc_9A075A: ImpAdLdI2 MemVar_0
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9484E4
  'Data Table: 4365AC
  loc_9484D0: ILdI2 KeyAscii
  loc_9484D3: CI4UI1
  loc_9484D4: LitI4 &HD
  loc_9484D9: EqI4
  loc_9484DA: BranchF loc_9484E2
  loc_9484DD: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9484E2: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '961118
  'Data Table: 4365AC
  loc_961100: ILdI2 KeyCode
  loc_961103: ILdRf Me
  loc_961106: CastAd
  loc_961109: FStAdFunc var_88
  loc_96110C: FLdRfVar var_88
  loc_96110F: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_961114: FFree1Ad var_88
  loc_961117: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94C248
  'Data Table: 4365AC
  loc_94C234: FLdPr Me
  loc_94C237: VCallAd Control_ID_FiltroMsk
  loc_94C23A: CVarAd
  loc_94C23E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C243: FFree1Var var_94 = ""
  loc_94C246: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A7733C
  'Data Table: 4365AC
  loc_A76F70: ILdRf Me
  loc_A76F73: CastAd
  loc_A76F76: FStAdFunc var_88
  loc_A76F79: FLdRfVar var_88
  loc_A76F7C: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A76F81: FFree1Ad var_88
  loc_A76F84: FLdPr Me
  loc_A76F87: VCallAd Control_ID_FiltroMsk
  loc_A76F8A: FStAdFunc var_88
  loc_A76F8D: FLdPr var_88
  loc_A76F90: LateIdLdVar var_98 DispID_22 0
  loc_A76F97: CStrVarTmp
  loc_A76F98: FStStrNoPop var_9C
  loc_A76F9B: ImpAdCallI2 Trim$()
  loc_A76FA0: FStStrNoPop var_A0
  loc_A76FA3: LitStr vbNullString
  loc_A76FA6: NeStr
  loc_A76FA8: FFreeStr var_9C = ""
  loc_A76FAF: FFree1Ad var_88
  loc_A76FB2: FFree1Var var_98 = ""
  loc_A76FB5: BranchF loc_A77218
  loc_A76FB8: FLdRfVar var_A2
  loc_A76FBB: FLdPr Me
  loc_A76FBE: VCallAd Control_ID_FiltroCbo
  loc_A76FC1: FStAdFunc var_88
  loc_A76FC4: FLdPr var_88
  loc_A76FC7:  = Me.ListIndex
  loc_A76FCC: FLdI2 var_A2
  loc_A76FCF: LitI2_Byte 0
  loc_A76FD1: EqI2
  loc_A76FD2: FFree1Ad var_88
  loc_A76FD5: BranchF loc_A77050
  loc_A76FD8: LitStr "CodiCuco LIKE '"
  loc_A76FDB: FLdPr Me
  loc_A76FDE: VCallAd Control_ID_FiltroMsk
  loc_A76FE1: FStAdFunc var_88
  loc_A76FE4: FLdPr var_88
  loc_A76FE7: LateIdLdVar var_98 DispID_22 0
  loc_A76FEE: CStrVarTmp
  loc_A76FEF: FStStrNoPop var_9C
  loc_A76FF2: ConcatStr
  loc_A76FF3: FStStrNoPop var_A0
  loc_A76FF6: LitStr Chr(37) & "'"
  loc_A76FF9: ConcatStr
  loc_A76FFA: PopTmpLdAdStr
  loc_A76FFE: FLdPr Me
  loc_A77001: MemLdRfVar from_stack_1.global_52
  loc_A77004: NewIfNullPr clsrecuespe
  loc_A77007: Call clsrecuespe.Filter(from_stack_1v)
  loc_A7700C: FFreeStr var_9C = "": var_A0 = ""
  loc_A77015: FFree1Ad var_88
  loc_A77018: FFree1Var var_98 = ""
  loc_A7701B: LitStr "Código de Cuenta Contable que comience con: "
  loc_A7701E: FLdPr Me
  loc_A77021: VCallAd Control_ID_FiltroMsk
  loc_A77024: FStAdFunc var_88
  loc_A77027: FLdPr var_88
  loc_A7702A: LateIdLdVar var_98 DispID_22 0
  loc_A77031: CStrVarTmp
  loc_A77032: FStStrNoPop var_9C
  loc_A77035: ConcatStr
  loc_A77036: FStStrNoPop var_A0
  loc_A77039: FLdPr Me
  loc_A7703C: MemStStrCopy
  loc_A77040: FFreeStr var_9C = ""
  loc_A77047: FFree1Ad var_88
  loc_A7704A: FFree1Var var_98 = ""
  loc_A7704D: Branch loc_A77215
  loc_A77050: FLdRfVar var_A2
  loc_A77053: FLdPr Me
  loc_A77056: VCallAd Control_ID_FiltroCbo
  loc_A77059: FStAdFunc var_88
  loc_A7705C: FLdPr var_88
  loc_A7705F:  = Me.ListIndex
  loc_A77064: FLdI2 var_A2
  loc_A77067: LitI2_Byte 1
  loc_A77069: EqI2
  loc_A7706A: FFree1Ad var_88
  loc_A7706D: BranchF loc_A770E8
  loc_A77070: LitStr "DetaCuco LIKE '" & Chr(37)
  loc_A77073: FLdPr Me
  loc_A77076: VCallAd Control_ID_FiltroMsk
  loc_A77079: FStAdFunc var_88
  loc_A7707C: FLdPr var_88
  loc_A7707F: LateIdLdVar var_98 DispID_22 0
  loc_A77086: CStrVarTmp
  loc_A77087: FStStrNoPop var_9C
  loc_A7708A: ConcatStr
  loc_A7708B: FStStrNoPop var_A0
  loc_A7708E: LitStr Chr(37) & "'"
  loc_A77091: ConcatStr
  loc_A77092: PopTmpLdAdStr
  loc_A77096: FLdPr Me
  loc_A77099: MemLdRfVar from_stack_1.global_52
  loc_A7709C: NewIfNullPr clsrecuespe
  loc_A7709F: Call clsrecuespe.Filter(from_stack_1v)
  loc_A770A4: FFreeStr var_9C = "": var_A0 = ""
  loc_A770AD: FFree1Ad var_88
  loc_A770B0: FFree1Var var_98 = ""
  loc_A770B3: LitStr "Detalle de Cuenta Contable que contenga: "
  loc_A770B6: FLdPr Me
  loc_A770B9: VCallAd Control_ID_FiltroMsk
  loc_A770BC: FStAdFunc var_88
  loc_A770BF: FLdPr var_88
  loc_A770C2: LateIdLdVar var_98 DispID_22 0
  loc_A770C9: CStrVarTmp
  loc_A770CA: FStStrNoPop var_9C
  loc_A770CD: ConcatStr
  loc_A770CE: FStStrNoPop var_A0
  loc_A770D1: FLdPr Me
  loc_A770D4: MemStStrCopy
  loc_A770D8: FFreeStr var_9C = ""
  loc_A770DF: FFree1Ad var_88
  loc_A770E2: FFree1Var var_98 = ""
  loc_A770E5: Branch loc_A77215
  loc_A770E8: FLdRfVar var_A2
  loc_A770EB: FLdPr Me
  loc_A770EE: VCallAd Control_ID_FiltroCbo
  loc_A770F1: FStAdFunc var_88
  loc_A770F4: FLdPr var_88
  loc_A770F7:  = Me.ListIndex
  loc_A770FC: FLdI2 var_A2
  loc_A770FF: LitI2_Byte 2
  loc_A77101: EqI2
  loc_A77102: FFree1Ad var_88
  loc_A77105: BranchF loc_A77180
  loc_A77108: LitStr "CodiPart LIKE '"
  loc_A7710B: FLdPr Me
  loc_A7710E: VCallAd Control_ID_FiltroMsk
  loc_A77111: FStAdFunc var_88
  loc_A77114: FLdPr var_88
  loc_A77117: LateIdLdVar var_98 DispID_22 0
  loc_A7711E: CStrVarTmp
  loc_A7711F: FStStrNoPop var_9C
  loc_A77122: ConcatStr
  loc_A77123: FStStrNoPop var_A0
  loc_A77126: LitStr Chr(37) & "'"
  loc_A77129: ConcatStr
  loc_A7712A: PopTmpLdAdStr
  loc_A7712E: FLdPr Me
  loc_A77131: MemLdRfVar from_stack_1.global_52
  loc_A77134: NewIfNullPr clsrecuespe
  loc_A77137: Call clsrecuespe.Filter(from_stack_1v)
  loc_A7713C: FFreeStr var_9C = "": var_A0 = ""
  loc_A77145: FFree1Ad var_88
  loc_A77148: FFree1Var var_98 = ""
  loc_A7714B: LitStr "Código de Partida que comience con: "
  loc_A7714E: FLdPr Me
  loc_A77151: VCallAd Control_ID_FiltroMsk
  loc_A77154: FStAdFunc var_88
  loc_A77157: FLdPr var_88
  loc_A7715A: LateIdLdVar var_98 DispID_22 0
  loc_A77161: CStrVarTmp
  loc_A77162: FStStrNoPop var_9C
  loc_A77165: ConcatStr
  loc_A77166: FStStrNoPop var_A0
  loc_A77169: FLdPr Me
  loc_A7716C: MemStStrCopy
  loc_A77170: FFreeStr var_9C = ""
  loc_A77177: FFree1Ad var_88
  loc_A7717A: FFree1Var var_98 = ""
  loc_A7717D: Branch loc_A77215
  loc_A77180: FLdRfVar var_A2
  loc_A77183: FLdPr Me
  loc_A77186: VCallAd Control_ID_FiltroCbo
  loc_A77189: FStAdFunc var_88
  loc_A7718C: FLdPr var_88
  loc_A7718F:  = Me.ListIndex
  loc_A77194: FLdI2 var_A2
  loc_A77197: LitI2_Byte 3
  loc_A77199: EqI2
  loc_A7719A: FFree1Ad var_88
  loc_A7719D: BranchF loc_A77215
  loc_A771A0: LitStr "DetaPart LIKE '" & Chr(37)
  loc_A771A3: FLdPr Me
  loc_A771A6: VCallAd Control_ID_FiltroMsk
  loc_A771A9: FStAdFunc var_88
  loc_A771AC: FLdPr var_88
  loc_A771AF: LateIdLdVar var_98 DispID_22 0
  loc_A771B6: CStrVarTmp
  loc_A771B7: FStStrNoPop var_9C
  loc_A771BA: ConcatStr
  loc_A771BB: FStStrNoPop var_A0
  loc_A771BE: LitStr Chr(37) & "'"
  loc_A771C1: ConcatStr
  loc_A771C2: PopTmpLdAdStr
  loc_A771C6: FLdPr Me
  loc_A771C9: MemLdRfVar from_stack_1.global_52
  loc_A771CC: NewIfNullPr clsrecuespe
  loc_A771CF: Call clsrecuespe.Filter(from_stack_1v)
  loc_A771D4: FFreeStr var_9C = "": var_A0 = ""
  loc_A771DD: FFree1Ad var_88
  loc_A771E0: FFree1Var var_98 = ""
  loc_A771E3: LitStr "Detalle de Partida que contenga: "
  loc_A771E6: FLdPr Me
  loc_A771E9: VCallAd Control_ID_FiltroMsk
  loc_A771EC: FStAdFunc var_88
  loc_A771EF: FLdPr var_88
  loc_A771F2: LateIdLdVar var_98 DispID_22 0
  loc_A771F9: CStrVarTmp
  loc_A771FA: FStStrNoPop var_9C
  loc_A771FD: ConcatStr
  loc_A771FE: FStStrNoPop var_A0
  loc_A77201: FLdPr Me
  loc_A77204: MemStStrCopy
  loc_A77208: FFreeStr var_9C = ""
  loc_A7720F: FFree1Ad var_88
  loc_A77212: FFree1Var var_98 = ""
  loc_A77215: Branch loc_A7723C
  loc_A77218: LitStr vbNullString
  loc_A7721B: FStStrCopy var_9C
  loc_A7721E: FLdRfVar var_9C
  loc_A77221: FLdPr Me
  loc_A77224: MemLdRfVar from_stack_1.global_52
  loc_A77227: NewIfNullPr clsrecuespe
  loc_A7722A: Call clsrecuespe.Filter(from_stack_1v)
  loc_A7722F: FFree1Str var_9C
  loc_A77232: LitStr vbNullString
  loc_A77235: FLdPr Me
  loc_A77238: MemStStrCopy
  loc_A7723C: FLdRfVar var_AC
  loc_A7723F: FLdPr Me
  loc_A77242: MemLdRfVar from_stack_1.global_52
  loc_A77245: NewIfNullPr clsrecuespe
  loc_A77248: from_stack_1 = clsrecuespe.RecordCount
  loc_A7724D: ILdRf var_AC
  loc_A77250: LitI4 0
  loc_A77255: GtI4
  loc_A77256: BranchF loc_A772F4
  loc_A77259: FLdPr Me
  loc_A7725C: MemLdRfVar from_stack_1.global_52
  loc_A7725F: NewIfNullAd
  loc_A77262: FStAd var_B0 
  loc_A77266: FLdRfVar var_B0
  loc_A77269: CVarRef
  loc_A7726E: ILdRf Me
  loc_A77271: CastAd
  loc_A77274: FStAdFunc var_88
  loc_A77277: FLdRfVar var_88
  loc_A7727A: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A7727F: ILdRf var_B0
  loc_A77282: CastAd
  loc_A77285: FLdPr Me
  loc_A77288: MemStAdFunc
  loc_A7728C: FFreeAd var_88 = ""
  loc_A77293: LitI4 0
  loc_A77298: LitI4 1
  loc_A7729D: FLdRfVar var_C4
  loc_A772A0: Redim
  loc_A772AA: FLdPr Me
  loc_A772AD: MemLdRfVar from_stack_1.global_52
  loc_A772B0: NewIfNullAd
  loc_A772B3: FStAd var_88 
  loc_A772B7: FLdRfVar var_88
  loc_A772BA: CVarRef
  loc_A772BF: ParmAry1St
  loc_A772C5: FLdPr Me
  loc_A772C8: VCallAd Control_ID_dgdABMS
  loc_A772CB: CVarAd
  loc_A772CF: ParmAry1St
  loc_A772D5: FLdRfVar var_C4
  loc_A772D8: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A772DD: ILdRf var_88
  loc_A772E0: CastAd
  loc_A772E3: FLdPr Me
  loc_A772E6: MemStAdFunc
  loc_A772EA: FLdRfVar var_C4
  loc_A772ED: Erase
  loc_A772EE: FFree1Ad var_88
  loc_A772F1: Branch loc_A77308
  loc_A772F4: ILdRf Me
  loc_A772F7: CastAd
  loc_A772FA: FStAdFunc var_88
  loc_A772FD: FLdRfVar var_88
  loc_A77300: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A77305: FFree1Ad var_88
  loc_A77308: FLdPr Me
  loc_A7730B: VCallAd Control_ID_dgdABMS
  loc_A7730E: FStAdFunc var_B0
  loc_A77311: LitI4 0
  loc_A77316: FStStrCopy var_9C
  loc_A77319: FLdRfVar var_9C
  loc_A7731C: FLdPr Me
  loc_A7731F: MemLdStr global_64
  loc_A77322: FLdZeroAd var_B0
  loc_A77325: FStAdFunc var_88
  loc_A77328: FLdRfVar var_88
  loc_A7732B: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A77330: FFree1Str var_9C
  loc_A77333: FFreeAd var_88 = ""
  loc_A7733A: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '997A84
  'Data Table: 4365AC
  loc_997A20: ILdI2 KeyAscii
  loc_997A23: LitI2_Byte &H27
  loc_997A25: EqI2
  loc_997A26: BranchF loc_997A2E
  loc_997A29: LitI2_Byte 0
  loc_997A2B: IStI2 KeyAscii
  loc_997A2E: FLdRfVar var_88
  loc_997A31: FLdPr Me
  loc_997A34: MemLdRfVar from_stack_1.global_52
  loc_997A37: NewIfNullPr clsrecuespe
  loc_997A3A: from_stack_1 = clsrecuespe.RecordCount
  loc_997A3F: ILdRf var_88
  loc_997A42: LitI4 0
  loc_997A47: EqI4
  loc_997A48: ILdI2 KeyAscii
  loc_997A4B: CI4UI1
  loc_997A4C: LitI4 8
  loc_997A51: NeI4
  loc_997A52: AndI4
  loc_997A53: FLdPr Me
  loc_997A56: VCallAd Control_ID_FiltroMsk
  loc_997A59: FStAdFunc var_8C
  loc_997A5C: FLdPr var_8C
  loc_997A5F: LateIdLdVar var_9C DispID_16 0
  loc_997A66: CStrVarTmp
  loc_997A67: FStStrNoPop var_A0
  loc_997A6A: LitStr vbNullString
  loc_997A6D: EqStr
  loc_997A6F: AndI4
  loc_997A70: FFree1Str var_A0
  loc_997A73: FFree1Ad var_8C
  loc_997A76: FFree1Var var_9C = ""
  loc_997A79: BranchF loc_997A81
  loc_997A7C: LitI2_Byte 0
  loc_997A7E: IStI2 KeyAscii
  loc_997A81: ExitProcHresult
  loc_997A82: Ary1LdFPR8
End Sub

Private Sub cmdCancelar_Click() '9B57D4
  'Data Table: 4365AC
  loc_9B5730: LitI2_Byte 0
  loc_9B5732: CUI1I2
  loc_9B5734: FLdPr Me
  loc_9B5737: MemStUI1
  loc_9B573B: ILdRf Me
  loc_9B573E: CastAd
  loc_9B5741: FStAdFunc var_88
  loc_9B5744: FLdRfVar var_88
  loc_9B5747: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9B574C: FFree1Ad var_88
  loc_9B574F: LitI4 0
  loc_9B5754: LitI4 0
  loc_9B5759: FLdRfVar var_8C
  loc_9B575C: Redim
  loc_9B5766: FLdPr Me
  loc_9B5769: VCallAd Control_ID_dgdABMS
  loc_9B576C: CVarAd
  loc_9B5770: ParmAry1St
  loc_9B5776: FLdRfVar var_8C
  loc_9B5779: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9B577E: FLdRfVar var_8C
  loc_9B5781: Erase
  loc_9B5782: FLdPr Me
  loc_9B5785: MemLdRfVar from_stack_1.global_52
  loc_9B5788: NewIfNullAd
  loc_9B578B: FStAd var_A0 
  loc_9B578F: FLdRfVar var_A0
  loc_9B5792: CVarRef
  loc_9B5797: ILdRf Me
  loc_9B579A: CastAd
  loc_9B579D: FStAdFunc var_88
  loc_9B57A0: FLdRfVar var_88
  loc_9B57A3: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9B57A8: ILdRf var_A0
  loc_9B57AB: CastAd
  loc_9B57AE: FLdPr Me
  loc_9B57B1: MemStAdFunc
  loc_9B57B5: FFreeAd var_88 = ""
  loc_9B57BC: ILdRf Me
  loc_9B57BF: CastAd
  loc_9B57C2: FStAdFunc var_88
  loc_9B57C5: FLdRfVar var_88
  loc_9B57C8: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9B57CD: FFree1Ad var_88
  loc_9B57D0: ExitProcHresult
  loc_9B57D1: CI4Str
End Sub

Private Sub FiltroCbo_Click() '9EB0A0
  'Data Table: 4365AC
  loc_9EAF68: LitVarStr var_94, vbNullString
  loc_9EAF6D: PopAdLdVar
  loc_9EAF6E: FLdPr Me
  loc_9EAF71: VCallAd Control_ID_FiltroMsk
  loc_9EAF74: FStAdFunc var_A8
  loc_9EAF77: FLdPr var_A8
  loc_9EAF7A: LateIdSt
  loc_9EAF7F: FFree1Ad var_A8
  loc_9EAF82: FLdRfVar var_AA
  loc_9EAF85: FLdPr Me
  loc_9EAF88: VCallAd Control_ID_FiltroCbo
  loc_9EAF8B: FStAdFunc var_A8
  loc_9EAF8E: FLdPr var_A8
  loc_9EAF91:  = Me.ListIndex
  loc_9EAF96: FLdI2 var_AA
  loc_9EAF99: FStI2 var_AC
  loc_9EAF9C: FFree1Ad var_A8
  loc_9EAF9F: FLdI2 var_AC
  loc_9EAFA2: LitI2_Byte 0
  loc_9EAFA4: EqI2
  loc_9EAFA5: BranchF loc_9EAFDF
  loc_9EAFA8: LitVarStr var_94, "##########"
  loc_9EAFAD: PopAdLdVar
  loc_9EAFAE: FLdPr Me
  loc_9EAFB1: VCallAd Control_ID_FiltroMsk
  loc_9EAFB4: FStAdFunc var_A8
  loc_9EAFB7: FLdPr var_A8
  loc_9EAFBA: LateIdSt
  loc_9EAFBF: FFree1Ad var_A8
  loc_9EAFC2: LitStr "CodiCuco"
  loc_9EAFC5: FStStrCopy var_B0
  loc_9EAFC8: FLdRfVar var_B0
  loc_9EAFCB: FLdPr Me
  loc_9EAFCE: MemLdRfVar from_stack_1.global_52
  loc_9EAFD1: NewIfNullPr clsrecuespe
  loc_9EAFD4: Call clsrecuespe.Sort(from_stack_1v)
  loc_9EAFD9: FFree1Str var_B0
  loc_9EAFDC: Branch loc_9EB09C
  loc_9EAFDF: FLdI2 var_AC
  loc_9EAFE2: LitI2_Byte 1
  loc_9EAFE4: EqI2
  loc_9EAFE5: BranchF loc_9EB01F
  loc_9EAFE8: LitVarStr var_94, vbNullString
  loc_9EAFED: PopAdLdVar
  loc_9EAFEE: FLdPr Me
  loc_9EAFF1: VCallAd Control_ID_FiltroMsk
  loc_9EAFF4: FStAdFunc var_A8
  loc_9EAFF7: FLdPr var_A8
  loc_9EAFFA: LateIdSt
  loc_9EAFFF: FFree1Ad var_A8
  loc_9EB002: LitStr "DetaCuco"
  loc_9EB005: FStStrCopy var_B0
  loc_9EB008: FLdRfVar var_B0
  loc_9EB00B: FLdPr Me
  loc_9EB00E: MemLdRfVar from_stack_1.global_52
  loc_9EB011: NewIfNullPr clsrecuespe
  loc_9EB014: Call clsrecuespe.Sort(from_stack_1v)
  loc_9EB019: FFree1Str var_B0
  loc_9EB01C: Branch loc_9EB09C
  loc_9EB01F: FLdI2 var_AC
  loc_9EB022: LitI2_Byte 2
  loc_9EB024: EqI2
  loc_9EB025: BranchF loc_9EB05F
  loc_9EB028: LitVarStr var_94, "########"
  loc_9EB02D: PopAdLdVar
  loc_9EB02E: FLdPr Me
  loc_9EB031: VCallAd Control_ID_FiltroMsk
  loc_9EB034: FStAdFunc var_A8
  loc_9EB037: FLdPr var_A8
  loc_9EB03A: LateIdSt
  loc_9EB03F: FFree1Ad var_A8
  loc_9EB042: LitStr "CodiPart"
  loc_9EB045: FStStrCopy var_B0
  loc_9EB048: FLdRfVar var_B0
  loc_9EB04B: FLdPr Me
  loc_9EB04E: MemLdRfVar from_stack_1.global_52
  loc_9EB051: NewIfNullPr clsrecuespe
  loc_9EB054: Call clsrecuespe.Sort(from_stack_1v)
  loc_9EB059: FFree1Str var_B0
  loc_9EB05C: Branch loc_9EB09C
  loc_9EB05F: FLdI2 var_AC
  loc_9EB062: LitI2_Byte 3
  loc_9EB064: EqI2
  loc_9EB065: BranchF loc_9EB09C
  loc_9EB068: LitVarStr var_94, vbNullString
  loc_9EB06D: PopAdLdVar
  loc_9EB06E: FLdPr Me
  loc_9EB071: VCallAd Control_ID_FiltroMsk
  loc_9EB074: FStAdFunc var_A8
  loc_9EB077: FLdPr var_A8
  loc_9EB07A: LateIdSt
  loc_9EB07F: FFree1Ad var_A8
  loc_9EB082: LitStr "DetaPart"
  loc_9EB085: FStStrCopy var_B0
  loc_9EB088: FLdRfVar var_B0
  loc_9EB08B: FLdPr Me
  loc_9EB08E: MemLdRfVar from_stack_1.global_52
  loc_9EB091: NewIfNullPr clsrecuespe
  loc_9EB094: Call clsrecuespe.Sort(from_stack_1v)
  loc_9EB099: FFree1Str var_B0
  loc_9EB09C: ExitProcHresult
  loc_9EB09D: ImpAdLdFPR8 MemVar_5A3F5C
End Sub

Private Sub CodiCucoMsk_UnknownEvent_0 '94C8C0
  'Data Table: 4365AC
  loc_94C8AC: FLdPr Me
  loc_94C8AF: VCallAd Control_ID_CodiCucoMsk
  loc_94C8B2: CVarAd
  loc_94C8B6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C8BB: FFree1Var var_94 = ""
  loc_94C8BE: ExitProcHresult
  loc_94C8BF: CDateR8
End Sub

Private Function CodiCucoMsk_UnknownEvent_8(arg_C) 'A00090
  'Data Table: 4365AC
  loc_9FFF50: FLdRfVar var_8A
  loc_9FFF53: FLdPr Me
  loc_9FFF56: VCallAd Control_ID_cmdCancelar
  loc_9FFF59: FStAdFunc var_88
  loc_9FFF5C: FLdPr var_88
  loc_9FFF5F:  = Me.Value
  loc_9FFF64: FLdI2 var_8A
  loc_9FFF67: NotI4
  loc_9FFF68: FLdPr Me
  loc_9FFF6B: VCallAd Control_ID_CodiCucoMsk
  loc_9FFF6E: FStAdFunc var_90
  loc_9FFF71: FLdPr var_90
  loc_9FFF74: LateIdLdVar var_A0 DispID_13 -32767
  loc_9FFF7B: CBoolVar
  loc_9FFF7D: AndI4
  loc_9FFF7E: FFreeAd var_88 = ""
  loc_9FFF85: FFree1Var var_A0 = ""
  loc_9FFF88: BranchF loc_A0008F
  loc_9FFF8B: FLdPr Me
  loc_9FFF8E: VCallAd Control_ID_CodiCucoMsk
  loc_9FFF91: FStAdFunc var_88
  loc_9FFF94: FLdPr var_88
  loc_9FFF97: LateIdLdVar var_A0 DispID_22 0
  loc_9FFF9E: PopAd
  loc_9FFFA0: LitI4 0
  loc_9FFFA5: LitI4 2
  loc_9FFFAA: FLdRfVar var_A8
  loc_9FFFAD: Redim
  loc_9FFFB7: LitVarStr var_B8, "5"
  loc_9FFFBC: LitI4 0
  loc_9FFFC1: ILdRf var_A8
  loc_9FFFC4: Ary1StVarCopy
  loc_9FFFC6: LitVarStr var_C8, "7"
  loc_9FFFCB: LitI4 1
  loc_9FFFD0: ILdRf var_A8
  loc_9FFFD3: Ary1StVarCopy
  loc_9FFFD5: LitVarStr var_D8, "2113"
  loc_9FFFDA: LitI4 2
  loc_9FFFDF: ILdRf var_A8
  loc_9FFFE2: Ary1StVarCopy
  loc_9FFFE4: FLdRfVar var_A8
  loc_9FFFE7: FLdPr Me
  loc_9FFFEA: MemLdRfVar from_stack_1.global_72
  loc_9FFFED: NewIfNullRf
  loc_9FFFF1: ImpAdLdI2 MemVar_C3D064
  loc_9FFFF4: LitI2_Byte 0
  loc_9FFFF6: FLdRfVar var_A0
  loc_9FFFF9: CStrVarTmp
  loc_9FFFFA: FStStrNoPop var_A4
  loc_9FFFFD: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_A00002: FStStr var_DC
  loc_A00005: FLdRfVar var_A8
  loc_A00008: Erase
  loc_A00009: ILdRf var_DC
  loc_A0000C: FLdPr Me
  loc_A0000F: MemStStrCopy
  loc_A00013: FFreeStr var_A4 = ""
  loc_A0001A: FFree1Ad var_88
  loc_A0001D: FFree1Var var_A0 = ""
  loc_A00020: FLdPr Me
  loc_A00023: VCallAd Control_ID_CodiCucoMsk
  loc_A00026: FStAdFunc var_E4
  loc_A00029: FLdPr Me
  loc_A0002C: VCallAd Control_ID_DetaCucoLbl
  loc_A0002F: FStAdFunc var_E0
  loc_A00032: FLdRfVar var_E0
  loc_A00035: FLdZeroAd var_E4
  loc_A00038: FStAdFuncNoPop
  loc_A0003B: CastAd
  loc_A0003E: FStAdFunc var_90
  loc_A00041: FLdRfVar var_90
  loc_A00044: FLdPr Me
  loc_A00047: MemLdRfVar from_stack_1.global_60
  loc_A0004A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A0004F: IStI2 arg_C
  loc_A00052: FFreeAd var_88 = "": var_90 = "": var_E0 = ""
  loc_A0005D: ILdI2 arg_C
  loc_A00060: NotI4
  loc_A00061: BranchF loc_A0008F
  loc_A00064: FLdRfVar var_A4
  loc_A00067: FLdPr Me
  loc_A0006A: MemLdRfVar from_stack_1.global_72
  loc_A0006D: NewIfNullPr tblcuentacontable
  loc_A00070: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_A00075: ILdRf var_A4
  loc_A00078: FLdPr Me
  loc_A0007B: VCallAd Control_ID_DetaCucoLbl
  loc_A0007E: FStAdFunc var_88
  loc_A00081: FLdPr var_88
  loc_A00084: Me.Caption = from_stack_1
  loc_A00089: FFree1Str var_A4
  loc_A0008C: FFree1Ad var_88
  loc_A0008F: ExitProcHresult
End Function

Private Sub CodiCucoMsk_KeyPress(KeyAscii As Integer) '9EF49C
  'Data Table: 4365AC
  loc_9EF374: ILdI2 KeyAscii
  loc_9EF377: CI4UI1
  loc_9EF378: LitI4 &H20
  loc_9EF37D: EqI4
  loc_9EF37E: BranchF loc_9EF499
  loc_9EF381: LitVar_Missing var_A4
  loc_9EF384: PopAdLdVar
  loc_9EF385: LitVarI4
  loc_9EF38D: PopAdLdVar
  loc_9EF38E: ImpAdLdRf MemVar_C3D6C0
  loc_9EF391: NewIfNullPr bscCuentaContable
  loc_9EF394: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_9EF399: FLdRfVar var_AC
  loc_9EF39C: FLdRfVar var_A8
  loc_9EF39F: ImpAdLdRf MemVar_C3D6C0
  loc_9EF3A2: NewIfNullPr bscCuentaContable
  loc_9EF3A5: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9EF3AA: FLdPr var_A8
  loc_9EF3AD: from_stack_1 = clsbase.RecordCount
  loc_9EF3B2: ILdRf var_AC
  loc_9EF3B5: LitI4 0
  loc_9EF3BA: GtI4
  loc_9EF3BB: FFree1Ad var_A8
  loc_9EF3BE: BranchF loc_9EF499
  loc_9EF3C1: FLdRfVar var_C8
  loc_9EF3C4: FLdRfVar var_B8
  loc_9EF3C7: LitVarStr var_94, "CodiCuco"
  loc_9EF3CC: PopAdLdVar
  loc_9EF3CD: FLdRfVar var_B4
  loc_9EF3D0: FLdRfVar var_B0
  loc_9EF3D3: FLdRfVar var_A8
  loc_9EF3D6: ImpAdLdRf MemVar_C3D6C0
  loc_9EF3D9: NewIfNullPr bscCuentaContable
  loc_9EF3DC: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9EF3E1: FLdPr var_A8
  loc_9EF3E4: from_stack_1v = clsbase.RsFrmGet()
  loc_9EF3E9: FLdPr var_B0
  loc_9EF3EC:  = Me.Fields
  loc_9EF3F1: FLdPr var_B4
  loc_9EF3F4: from_stack_2 = Me.Item(from_stack_1)
  loc_9EF3F9: FLdPr var_B8
  loc_9EF3FC:  = Me.Value
  loc_9EF401: FLdRfVar var_C8
  loc_9EF404: CStrVarTmp
  loc_9EF405: CVarStr var_D8
  loc_9EF408: PopAdLdVar
  loc_9EF409: FLdPr Me
  loc_9EF40C: VCallAd Control_ID_CodiCucoMsk
  loc_9EF40F: FStAdFunc var_DC
  loc_9EF412: FLdPr var_DC
  loc_9EF415: LateIdSt
  loc_9EF41A: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9EF427: FFreeVar var_C8 = ""
  loc_9EF42E: FLdRfVar var_C8
  loc_9EF431: FLdRfVar var_B8
  loc_9EF434: LitVarStr var_94, "DetaCuco"
  loc_9EF439: PopAdLdVar
  loc_9EF43A: FLdRfVar var_B4
  loc_9EF43D: FLdRfVar var_B0
  loc_9EF440: FLdRfVar var_A8
  loc_9EF443: ImpAdLdRf MemVar_C3D6C0
  loc_9EF446: NewIfNullPr bscCuentaContable
  loc_9EF449: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9EF44E: FLdPr var_A8
  loc_9EF451: from_stack_1v = clsbase.RsFrmGet()
  loc_9EF456: FLdPr var_B0
  loc_9EF459:  = Me.Fields
  loc_9EF45E: FLdPr var_B4
  loc_9EF461: from_stack_2 = Me.Item(from_stack_1)
  loc_9EF466: FLdPr var_B8
  loc_9EF469:  = Me.Value
  loc_9EF46E: FLdRfVar var_C8
  loc_9EF471: CStrVarTmp
  loc_9EF472: FStStrNoPop var_E0
  loc_9EF475: FLdPr Me
  loc_9EF478: VCallAd Control_ID_DetaCucoLbl
  loc_9EF47B: FStAdFunc var_DC
  loc_9EF47E: FLdPr var_DC
  loc_9EF481: Me.Caption = from_stack_1
  loc_9EF486: FFree1Str var_E0
  loc_9EF489: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9EF496: FFree1Var var_C8 = ""
  loc_9EF499: ExitProcHresult
  loc_9EF49A: CI4Str
End Sub
