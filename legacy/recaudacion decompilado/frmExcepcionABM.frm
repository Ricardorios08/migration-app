VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Begin VB.Form frmExcepcionABM
  Caption = "Exención"
  WindowState = 2
  ScaleMode = 3
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmExcepcionABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 13380
  ClientHeight = 8784
  Begin VB.ComboBox FiltroCbo
    Style = 2
    Left = 120
    Top = 840
    Width = 4575
    Height = 420
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
  Begin VB.Frame Frame1
    Left = 120
    Top = 4320
    Width = 9000
    Height = 2760
    TabIndex = 6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox DetaExceTxt
      ForeColor = &HFF0000&
      Left = 1920
      Top = 840
      Width = 6615
      Height = 360
      TabIndex = 2
      MaxLength = 40
      DataField = "DetaExce"
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
    Begin VB.TextBox PorcExceTxt
      ForeColor = &HFF0000&
      Left = 1920
      Top = 1320
      Width = 1455
      Height = 360
      TabIndex = 3
      MaxLength = 10
      DataField = "PorcExce"
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
    Begin VB.TextBox CodiExceTxt
      ForeColor = &HFF0000&
      Left = 1920
      Top = 360
      Width = 735
      Height = 360
      TabIndex = 1
      MaxLength = 3
      DataField = "CodiExce"
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
    Begin VB.OptionButton TipoExcePorcentajeOpt
      Caption = "Porcentaje"
      Left = 1920
      Top = 1920
      Width = 1575
      Height = 255
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
    End
    Begin VB.OptionButton TipoExceImporteOpt
      Caption = "Importe"
      Left = 3600
      Top = 1920
      Width = 1215
      Height = 255
      TabIndex = 5
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
      Caption = "Tipo Excepción:"
      Left = 120
      Top = 1920
      Width = 1665
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
    Begin VB.Label Label4
      Caption = "Prcentaje:"
      Left = 720
      Top = 1320
      Width = 1065
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
    Begin VB.Label Label3
      Caption = "Detalle:"
      Left = 960
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
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label2
      Caption = "Código:"
      Left = 960
      Top = 405
      Width = 810
      Height = 300
      TabIndex = 7
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
    Top = 1440
    Width = 9240
    Height = 2715
    TabIndex = 0
    OleObjectBlob = "frmExcepcionABM.frx":324A
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmExcepcionABM.frx":354A
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 13380
    Height = 528
    TabIndex = 11
    OleObjectBlob = "frmExcepcionABM.frx":B0C8
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 12
      TabStop = 0   'False
      Picture = "frmExcepcionABM.frx":B624
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
    TabIndex = 14
    OleObjectBlob = "frmExcepcionABM.frx":BEEE
  End
End

Attribute VB_Name = "frmExcepcionABM"


Private Sub PorcExceTxt_GotFocus() '9C6D28
  'Data Table: 465D40
  loc_9C6D14: FLdPr Me
  loc_9C6D17: VCallAd Control_ID_PorcExceTxt
  loc_9C6D1A: CVarAd
  loc_9C6D1E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6D23: FFree1Var var_94 = ""
  loc_9C6D26: ExitProcHresult
End Sub

Private Sub PorcExceTxt_KeyPress(KeyAscii As Integer) 'A065A0
  'Data Table: 465D40
  loc_A0656C: LitStr "1234567890,."
  loc_A0656F: FStStrCopy var_88
  loc_A06572: FLdRfVar var_88
  loc_A06575: ILdRf KeyAscii
  loc_A06578: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A0657D: IStI2 KeyAscii
  loc_A06580: FFree1Str var_88
  loc_A06583: ILdI2 KeyAscii
  loc_A06586: LitStr "."
  loc_A06589: ImpAdCallI2 Asc()
  loc_A0658E: EqI2
  loc_A0658F: BranchF loc_A0659D
  loc_A06592: LitStr ","
  loc_A06595: ImpAdCallI2 Asc()
  loc_A0659A: IStI2 KeyAscii
  loc_A0659D: ExitProcHresult
End Sub

Private Sub PorcExceTxt_LostFocus() 'A75A18
  'Data Table: 465D40
  loc_A759B4: FLdRfVar var_8C
  loc_A759B7: FLdPr Me
  loc_A759BA: VCallAd Control_ID_PorcExceTxt
  loc_A759BD: FStAdFunc var_88
  loc_A759C0: FLdPr var_88
  loc_A759C3:  = Me.Text
  loc_A759C8: LitI4 1
  loc_A759CD: LitI4 1
  loc_A759D2: LitVarStr var_AC, "##0.00"
  loc_A759D7: FStVarCopyObj var_BC
  loc_A759DA: FLdRfVar var_BC
  loc_A759DD: FLdZeroAd var_8C
  loc_A759E0: CVarStr var_9C
  loc_A759E3: FLdRfVar var_CC
  loc_A759E6: ImpAdCallFPR4  = Format(, )
  loc_A759EB: FLdRfVar var_CC
  loc_A759EE: CStrVarVal var_D0
  loc_A759F2: FLdPr Me
  loc_A759F5: VCallAd Control_ID_PorcExceTxt
  loc_A759F8: FStAdFunc var_D4
  loc_A759FB: FLdPr var_D4
  loc_A759FE: Me.Text = from_stack_1
  loc_A75A03: FFree1Str var_D0
  loc_A75A06: FFreeAd var_88 = ""
  loc_A75A0D: FFreeVar var_9C = "": var_BC = ""
  loc_A75A16: ExitProcHresult
End Sub

Private Sub PorcExceTxt_Validate(Cancel As Boolean) 'ADC4AC
  'Data Table: 465D40
  loc_ADC360: FLdRfVar var_8A
  loc_ADC363: FLdPr Me
  loc_ADC366: VCallAd Control_ID_cmdCancelar
  loc_ADC369: FStAdFunc var_88
  loc_ADC36C: FLdPr var_88
  loc_ADC36F:  = Me.Value
  loc_ADC374: FLdI2 var_8A
  loc_ADC377: NotI4
  loc_ADC378: FLdRfVar var_92
  loc_ADC37B: FLdPr Me
  loc_ADC37E: VCallAd Control_ID_PorcExceTxt
  loc_ADC381: FStAdFunc var_90
  loc_ADC384: FLdPr var_90
  loc_ADC387:  = Me.Enabled
  loc_ADC38C: FLdI2 var_92
  loc_ADC38F: AndI4
  loc_ADC390: FFreeAd var_88 = ""
  loc_ADC397: BranchF loc_ADC4A8
  loc_ADC39A: FLdRfVar var_98
  loc_ADC39D: FLdPr Me
  loc_ADC3A0: VCallAd Control_ID_PorcExceTxt
  loc_ADC3A3: FStAdFunc var_88
  loc_ADC3A6: FLdPr var_88
  loc_ADC3A9:  = Me.Text
  loc_ADC3AE: FLdZeroAd var_98
  loc_ADC3B1: CVarStr var_A8
  loc_ADC3B4: ImpAdCallI2 IsNumeric()
  loc_ADC3B9: NotI4
  loc_ADC3BA: FFree1Ad var_88
  loc_ADC3BD: FFree1Var var_A8 = ""
  loc_ADC3C0: BranchF loc_ADC3DA
  loc_ADC3C3: LitStr "0"
  loc_ADC3C6: FLdPr Me
  loc_ADC3C9: VCallAd Control_ID_PorcExceTxt
  loc_ADC3CC: FStAdFunc var_88
  loc_ADC3CF: FLdPr var_88
  loc_ADC3D2: Me.Text = from_stack_1
  loc_ADC3D7: FFree1Ad var_88
  loc_ADC3DA: FLdRfVar var_98
  loc_ADC3DD: FLdPr Me
  loc_ADC3E0: VCallAd Control_ID_PorcExceTxt
  loc_ADC3E3: FStAdFunc var_88
  loc_ADC3E6: FLdPr var_88
  loc_ADC3E9:  = Me.Text
  loc_ADC3EE: LitI2_Byte 0
  loc_ADC3F0: LitI2_Byte 0
  loc_ADC3F2: ILdRf var_98
  loc_ADC3F5: LitStr "ingrese descuento"
  loc_ADC3F8: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_ADC3FD: FStStrNoPop var_AC
  loc_ADC400: FLdPr Me
  loc_ADC403: MemStStrCopy
  loc_ADC407: FFreeStr var_98 = ""
  loc_ADC40E: FFree1Ad var_88
  loc_ADC411: FLdPr Me
  loc_ADC414: MemLdStr global_60
  loc_ADC417: LitStr vbNullString
  loc_ADC41A: NeStr
  loc_ADC41C: BranchF loc_ADC442
  loc_ADC41F: FLdPr Me
  loc_ADC422: MemLdStr global_60
  loc_ADC425: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADC42A: FLdPr Me
  loc_ADC42D: VCallAd Control_ID_PorcExceTxt
  loc_ADC430: CVarAd
  loc_ADC434: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ADC439: FFree1Var var_A8 = ""
  loc_ADC43C: LitI2_Byte &HFF
  loc_ADC43E: IStI2 Cancel
  loc_ADC441: ExitProcHresult
  loc_ADC442: FLdRfVar var_8A
  loc_ADC445: FLdPr Me
  loc_ADC448: VCallAd Control_ID_TipoExcePorcentajeOpt
  loc_ADC44B: FStAdFunc var_88
  loc_ADC44E: FLdPr var_88
  loc_ADC451:  = Me.Value
  loc_ADC456: FLdI2 var_8A
  loc_ADC459: LitI2_Byte &HFF
  loc_ADC45B: EqI2
  loc_ADC45C: FFree1Ad var_88
  loc_ADC45F: BranchF loc_ADC4A8
  loc_ADC462: FLdRfVar var_98
  loc_ADC465: FLdPr Me
  loc_ADC468: VCallAd Control_ID_PorcExceTxt
  loc_ADC46B: FStAdFunc var_88
  loc_ADC46E: FLdPr var_88
  loc_ADC471:  = Me.Text
  loc_ADC476: ILdRf var_98
  loc_ADC479: CR8Str
  loc_ADC47B: LitI2_Byte &H64
  loc_ADC47D: CR8I2
  loc_ADC47E: GtR4
  loc_ADC47F: FFree1Str var_98
  loc_ADC482: FFree1Ad var_88
  loc_ADC485: BranchF loc_ADC4A8
  loc_ADC488: LitStr "El porcentaje no puede ser mayor a 100"
  loc_ADC48B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADC490: FLdPr Me
  loc_ADC493: VCallAd Control_ID_PorcExceTxt
  loc_ADC496: CVarAd
  loc_ADC49A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ADC49F: FFree1Var var_A8 = ""
  loc_ADC4A2: LitI2_Byte &HFF
  loc_ADC4A4: IStI2 Cancel
  loc_ADC4A7: ExitProcHresult
  loc_ADC4A8: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'AA7D8C
  'Data Table: 465D40
  loc_AA7CBC: LitVarStr var_94, vbNullString
  loc_AA7CC1: PopAdLdVar
  loc_AA7CC2: FLdPr Me
  loc_AA7CC5: VCallAd Control_ID_FiltroMsk
  loc_AA7CC8: FStAdFunc var_A8
  loc_AA7CCB: FLdPr var_A8
  loc_AA7CCE: LateIdSt
  loc_AA7CD3: FFree1Ad var_A8
  loc_AA7CD6: LitVarStr var_94, vbNullString
  loc_AA7CDB: PopAdLdVar
  loc_AA7CDC: FLdPr Me
  loc_AA7CDF: VCallAd Control_ID_FiltroMsk
  loc_AA7CE2: FStAdFunc var_A8
  loc_AA7CE5: FLdPr var_A8
  loc_AA7CE8: LateIdSt
  loc_AA7CED: FFree1Ad var_A8
  loc_AA7CF0: FLdRfVar var_AA
  loc_AA7CF3: FLdPr Me
  loc_AA7CF6: VCallAd Control_ID_FiltroCbo
  loc_AA7CF9: FStAdFunc var_A8
  loc_AA7CFC: FLdPr var_A8
  loc_AA7CFF:  = Me.ListIndex
  loc_AA7D04: FLdI2 var_AA
  loc_AA7D07: FStI2 var_AC
  loc_AA7D0A: FFree1Ad var_A8
  loc_AA7D0D: FLdI2 var_AC
  loc_AA7D10: LitI2_Byte 0
  loc_AA7D12: EqI2
  loc_AA7D13: BranchF loc_AA7D4D
  loc_AA7D16: LitVarStr var_94, "#####"
  loc_AA7D1B: PopAdLdVar
  loc_AA7D1C: FLdPr Me
  loc_AA7D1F: VCallAd Control_ID_FiltroMsk
  loc_AA7D22: FStAdFunc var_A8
  loc_AA7D25: FLdPr var_A8
  loc_AA7D28: LateIdSt
  loc_AA7D2D: FFree1Ad var_A8
  loc_AA7D30: LitStr "CodiExce"
  loc_AA7D33: FStStrCopy var_B0
  loc_AA7D36: FLdRfVar var_B0
  loc_AA7D39: FLdPr Me
  loc_AA7D3C: MemLdRfVar from_stack_1.global_52
  loc_AA7D3F: NewIfNullPr clsexcepcion
  loc_AA7D42: Call clsexcepcion.Sort(from_stack_1v)
  loc_AA7D47: FFree1Str var_B0
  loc_AA7D4A: Branch loc_AA7D8A
  loc_AA7D4D: FLdI2 var_AC
  loc_AA7D50: LitI2_Byte 1
  loc_AA7D52: EqI2
  loc_AA7D53: BranchF loc_AA7D8A
  loc_AA7D56: LitVarStr var_94, vbNullString
  loc_AA7D5B: PopAdLdVar
  loc_AA7D5C: FLdPr Me
  loc_AA7D5F: VCallAd Control_ID_FiltroMsk
  loc_AA7D62: FStAdFunc var_A8
  loc_AA7D65: FLdPr var_A8
  loc_AA7D68: LateIdSt
  loc_AA7D6D: FFree1Ad var_A8
  loc_AA7D70: LitStr "DetaExce"
  loc_AA7D73: FStStrCopy var_B0
  loc_AA7D76: FLdRfVar var_B0
  loc_AA7D79: FLdPr Me
  loc_AA7D7C: MemLdRfVar from_stack_1.global_52
  loc_AA7D7F: NewIfNullPr clsexcepcion
  loc_AA7D82: Call clsexcepcion.Sort(from_stack_1v)
  loc_AA7D87: FFree1Str var_B0
  loc_AA7D8A: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B8FB1C
  'Data Table: 465D40
  loc_B8F5CC: ILdRf Button
  loc_B8F5CF: FStAd var_88 
  loc_B8F5D3: FLdRfVar var_8C
  loc_B8F5D6: FLdPr var_88
  loc_B8F5D9:  = Me.Key
  loc_B8F5DE: FLdZeroAd var_8C
  loc_B8F5E1: FStStr var_90
  loc_B8F5E4: ILdRf var_90
  loc_B8F5E7: LitStr "btnCrear"
  loc_B8F5EA: EqStr
  loc_B8F5EC: BranchF loc_B8F75B
  loc_B8F5EF: LitI2_Byte 1
  loc_B8F5F1: FLdPr Me
  loc_B8F5F4: MemStI2 global_56
  loc_B8F5F7: ILdRf Me
  loc_B8F5FA: CastAd
  loc_B8F5FD: FStAdFunc var_94
  loc_B8F600: FLdRfVar var_94
  loc_B8F603: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B8F608: FFree1Ad var_94
  loc_B8F60B: LitI4 0
  loc_B8F610: LitI4 0
  loc_B8F615: FLdRfVar var_98
  loc_B8F618: Redim
  loc_B8F622: FLdPr Me
  loc_B8F625: VCallAd Control_ID_dgdABMS
  loc_B8F628: CVarAd
  loc_B8F62C: ParmAry1St
  loc_B8F632: FLdRfVar var_98
  loc_B8F635: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B8F63A: FLdRfVar var_98
  loc_B8F63D: Erase
  loc_B8F63E: ILdRf Me
  loc_B8F641: CastAd
  loc_B8F644: FStAdFunc var_94
  loc_B8F647: FLdRfVar var_94
  loc_B8F64A: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B8F64F: FFree1Ad var_94
  loc_B8F652: ILdRf Me
  loc_B8F655: CastAd
  loc_B8F658: FStAdFunc var_94
  loc_B8F65B: FLdRfVar var_94
  loc_B8F65E: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B8F663: FFree1Ad var_94
  loc_B8F666: FLdRfVar var_AC
  loc_B8F669: FLdPr Me
  loc_B8F66C: MemLdRfVar from_stack_1.global_52
  loc_B8F66F: NewIfNullPr clsexcepcion
  loc_B8F672: from_stack_1v = clsexcepcion.NuevoRegistro()
  loc_B8F677: ILdRf var_AC
  loc_B8F67A: CStrI4
  loc_B8F67C: FStStrNoPop var_8C
  loc_B8F67F: FLdPr Me
  loc_B8F682: VCallAd Control_ID_CodiExceTxt
  loc_B8F685: FStAdFunc var_94
  loc_B8F688: FLdPr var_94
  loc_B8F68B: Me.Text = from_stack_1
  loc_B8F690: FFree1Str var_8C
  loc_B8F693: FFree1Ad var_94
  loc_B8F696: LitI4 1
  loc_B8F69B: LitI4 1
  loc_B8F6A0: LitVarStr var_CC, "0.00"
  loc_B8F6A5: FStVarCopyObj var_DC
  loc_B8F6A8: FLdRfVar var_DC
  loc_B8F6AB: LitVarStr var_BC, "0"
  loc_B8F6B0: FStVarCopyObj var_A8
  loc_B8F6B3: FLdRfVar var_A8
  loc_B8F6B6: FLdRfVar var_EC
  loc_B8F6B9: ImpAdCallFPR4  = Format(, )
  loc_B8F6BE: FLdRfVar var_EC
  loc_B8F6C1: CStrVarVal var_8C
  loc_B8F6C5: FLdPr Me
  loc_B8F6C8: VCallAd Control_ID_PorcExceTxt
  loc_B8F6CB: FStAdFunc var_94
  loc_B8F6CE: FLdPr var_94
  loc_B8F6D1: Me.Text = from_stack_1
  loc_B8F6D6: FFree1Str var_8C
  loc_B8F6D9: FFree1Ad var_94
  loc_B8F6DC: FFreeVar var_A8 = "": var_DC = ""
  loc_B8F6E5: LitI4 0
  loc_B8F6EA: LitI4 4
  loc_B8F6EF: FLdRfVar var_98
  loc_B8F6F2: Redim
  loc_B8F6FC: FLdPr Me
  loc_B8F6FF: VCallAd Control_ID_CodiExceTxt
  loc_B8F702: CVarAd
  loc_B8F706: ParmAry1St
  loc_B8F70C: FLdPr Me
  loc_B8F70F: VCallAd Control_ID_DetaExceTxt
  loc_B8F712: CVarAd
  loc_B8F716: ParmAry1St
  loc_B8F71C: FLdPr Me
  loc_B8F71F: VCallAd Control_ID_PorcExceTxt
  loc_B8F722: CVarAd
  loc_B8F726: ParmAry1St
  loc_B8F72C: FLdPr Me
  loc_B8F72F: VCallAd Control_ID_TipoExcePorcentajeOpt
  loc_B8F732: CVarAd
  loc_B8F736: ParmAry1St
  loc_B8F73C: FLdPr Me
  loc_B8F73F: VCallAd Control_ID_TipoExceImporteOpt
  loc_B8F742: CVarAd
  loc_B8F746: ParmAry1St
  loc_B8F74C: FLdRfVar var_98
  loc_B8F74F: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B8F754: FLdRfVar var_98
  loc_B8F757: Erase
  loc_B8F758: Branch loc_B8FB19
  loc_B8F75B: ILdRf var_90
  loc_B8F75E: LitStr "btnModificar"
  loc_B8F761: EqStr
  loc_B8F763: BranchF loc_B8F857
  loc_B8F766: FLdRfVar var_AC
  loc_B8F769: FLdPr Me
  loc_B8F76C: MemLdRfVar from_stack_1.global_52
  loc_B8F76F: NewIfNullPr clsexcepcion
  loc_B8F772: from_stack_1 = clsexcepcion.RecordCount
  loc_B8F777: ILdRf var_AC
  loc_B8F77A: LitI4 0
  loc_B8F77F: GtI4
  loc_B8F780: BranchF loc_B8F84C
  loc_B8F783: LitI2_Byte 2
  loc_B8F785: FLdPr Me
  loc_B8F788: MemStI2 global_56
  loc_B8F78B: ILdRf Me
  loc_B8F78E: CastAd
  loc_B8F791: FStAdFunc var_94
  loc_B8F794: FLdRfVar var_94
  loc_B8F797: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B8F79C: FFree1Ad var_94
  loc_B8F79F: LitI4 0
  loc_B8F7A4: LitI4 0
  loc_B8F7A9: FLdRfVar var_98
  loc_B8F7AC: Redim
  loc_B8F7B6: FLdPr Me
  loc_B8F7B9: VCallAd Control_ID_dgdABMS
  loc_B8F7BC: CVarAd
  loc_B8F7C0: ParmAry1St
  loc_B8F7C6: FLdRfVar var_98
  loc_B8F7C9: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B8F7CE: FLdRfVar var_98
  loc_B8F7D1: Erase
  loc_B8F7D2: ILdRf Me
  loc_B8F7D5: CastAd
  loc_B8F7D8: FStAdFunc var_94
  loc_B8F7DB: FLdRfVar var_94
  loc_B8F7DE: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B8F7E3: FFree1Ad var_94
  loc_B8F7E6: LitI4 0
  loc_B8F7EB: LitI4 3
  loc_B8F7F0: FLdRfVar var_98
  loc_B8F7F3: Redim
  loc_B8F7FD: FLdPr Me
  loc_B8F800: VCallAd Control_ID_DetaExceTxt
  loc_B8F803: CVarAd
  loc_B8F807: ParmAry1St
  loc_B8F80D: FLdPr Me
  loc_B8F810: VCallAd Control_ID_PorcExceTxt
  loc_B8F813: CVarAd
  loc_B8F817: ParmAry1St
  loc_B8F81D: FLdPr Me
  loc_B8F820: VCallAd Control_ID_TipoExcePorcentajeOpt
  loc_B8F823: CVarAd
  loc_B8F827: ParmAry1St
  loc_B8F82D: FLdPr Me
  loc_B8F830: VCallAd Control_ID_TipoExceImporteOpt
  loc_B8F833: CVarAd
  loc_B8F837: ParmAry1St
  loc_B8F83D: FLdRfVar var_98
  loc_B8F840: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B8F845: FLdRfVar var_98
  loc_B8F848: Erase
  loc_B8F849: Branch loc_B8F854
  loc_B8F84C: LitStr "No se puede modificar"
  loc_B8F84F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B8F854: Branch loc_B8FB19
  loc_B8F857: ILdRf var_90
  loc_B8F85A: LitStr "btnEliminar"
  loc_B8F85D: EqStr
  loc_B8F85F: BranchF loc_B8F865
  loc_B8F862: Branch loc_B8FB19
  loc_B8F865: ILdRf var_90
  loc_B8F868: LitStr "btnGuardar"
  loc_B8F86B: EqStr
  loc_B8F86D: BranchF loc_B8FA15
  loc_B8F870: LitI2_Byte 0
  loc_B8F872: PopTmpLdAd2 var_10E
  loc_B8F875: Call CodiExceTxt_Validate(from_stack_1v)
  loc_B8F87A: FLdPr Me
  loc_B8F87D: MemLdStr global_60
  loc_B8F880: LitStr vbNullString
  loc_B8F883: NeStr
  loc_B8F885: BranchF loc_B8F889
  loc_B8F888: ExitProcHresult
  loc_B8F889: LitI2_Byte 0
  loc_B8F88B: PopTmpLdAd2 var_10E
  loc_B8F88E: Call DetaExceTxt_Validate(from_stack_1v)
  loc_B8F893: FLdPr Me
  loc_B8F896: MemLdStr global_60
  loc_B8F899: LitStr vbNullString
  loc_B8F89C: NeStr
  loc_B8F89E: BranchF loc_B8F8A2
  loc_B8F8A1: ExitProcHresult
  loc_B8F8A2: LitI2_Byte 0
  loc_B8F8A4: PopTmpLdAd2 var_10E
  loc_B8F8A7: Call PorcExceTxt_Validate(from_stack_1v)
  loc_B8F8AC: FLdPr Me
  loc_B8F8AF: MemLdStr global_60
  loc_B8F8B2: LitStr vbNullString
  loc_B8F8B5: NeStr
  loc_B8F8B7: BranchF loc_B8F8BB
  loc_B8F8BA: ExitProcHresult
  loc_B8F8BB: FLdRfVar var_10E
  loc_B8F8BE: FLdPr Me
  loc_B8F8C1: VCallAd Control_ID_TipoExcePorcentajeOpt
  loc_B8F8C4: FStAdFunc var_94
  loc_B8F8C7: FLdPr var_94
  loc_B8F8CA:  = Me.Value
  loc_B8F8CF: FLdI2 var_10E
  loc_B8F8D2: LitI2_Byte &HFF
  loc_B8F8D4: EqI2
  loc_B8F8D5: FFree1Ad var_94
  loc_B8F8D8: BranchF loc_B8F8E5
  loc_B8F8DB: LitStr "Porcentaje"
  loc_B8F8DE: FLdPr Me
  loc_B8F8E1: MemStStrCopy
  loc_B8F8E5: FLdRfVar var_10E
  loc_B8F8E8: FLdPr Me
  loc_B8F8EB: VCallAd Control_ID_TipoExceImporteOpt
  loc_B8F8EE: FStAdFunc var_94
  loc_B8F8F1: FLdPr var_94
  loc_B8F8F4:  = Me.Value
  loc_B8F8F9: FLdI2 var_10E
  loc_B8F8FC: LitI2_Byte &HFF
  loc_B8F8FE: EqI2
  loc_B8F8FF: FFree1Ad var_94
  loc_B8F902: BranchF loc_B8F90F
  loc_B8F905: LitStr "Importe"
  loc_B8F908: FLdPr Me
  loc_B8F90B: MemStStrCopy
  loc_B8F90F: FLdPr Me
  loc_B8F912: MemLdI2 global_56
  loc_B8F915: FStI2 var_110
  loc_B8F918: FLdI2 var_110
  loc_B8F91B: LitI2_Byte 1
  loc_B8F91D: EqI2
  loc_B8F91E: BranchF loc_B8F994
  loc_B8F921: FLdRfVar var_8C
  loc_B8F924: FLdPr Me
  loc_B8F927: VCallAd Control_ID_CodiExceTxt
  loc_B8F92A: FStAdFunc var_94
  loc_B8F92D: FLdPr var_94
  loc_B8F930:  = Me.Text
  loc_B8F935: FLdRfVar var_118
  loc_B8F938: FLdPr Me
  loc_B8F93B: VCallAd Control_ID_DetaExceTxt
  loc_B8F93E: FStAdFunc var_114
  loc_B8F941: FLdPr var_114
  loc_B8F944:  = Me.Text
  loc_B8F949: FLdRfVar var_120
  loc_B8F94C: FLdPr Me
  loc_B8F94F: VCallAd Control_ID_PorcExceTxt
  loc_B8F952: FStAdFunc var_11C
  loc_B8F955: FLdPr var_11C
  loc_B8F958:  = Me.Text
  loc_B8F95D: FLdPr Me
  loc_B8F960: MemLdStr global_68
  loc_B8F963: ILdRf var_120
  loc_B8F966: CR8Str
  loc_B8F968: PopFPR8
  loc_B8F969: ILdRf var_118
  loc_B8F96C: ILdRf var_8C
  loc_B8F96F: CI2Str
  loc_B8F971: FLdPr Me
  loc_B8F974: MemLdRfVar from_stack_1.global_52
  loc_B8F977: NewIfNullPr clsexcepcion
  loc_B8F97A: Call clsexcepcion.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B8F97F: FFreeStr var_8C = "": var_118 = ""
  loc_B8F988: FFreeAd var_94 = "": var_114 = ""
  loc_B8F991: Branch loc_B8FA0D
  loc_B8F994: FLdI2 var_110
  loc_B8F997: LitI2_Byte 2
  loc_B8F999: EqI2
  loc_B8F99A: BranchF loc_B8FA0D
  loc_B8F99D: FLdRfVar var_8C
  loc_B8F9A0: FLdPr Me
  loc_B8F9A3: VCallAd Control_ID_CodiExceTxt
  loc_B8F9A6: FStAdFunc var_94
  loc_B8F9A9: FLdPr var_94
  loc_B8F9AC:  = Me.Text
  loc_B8F9B1: FLdRfVar var_118
  loc_B8F9B4: FLdPr Me
  loc_B8F9B7: VCallAd Control_ID_DetaExceTxt
  loc_B8F9BA: FStAdFunc var_114
  loc_B8F9BD: FLdPr var_114
  loc_B8F9C0:  = Me.Text
  loc_B8F9C5: FLdRfVar var_120
  loc_B8F9C8: FLdPr Me
  loc_B8F9CB: VCallAd Control_ID_PorcExceTxt
  loc_B8F9CE: FStAdFunc var_11C
  loc_B8F9D1: FLdPr var_11C
  loc_B8F9D4:  = Me.Text
  loc_B8F9D9: FLdPr Me
  loc_B8F9DC: MemLdStr global_68
  loc_B8F9DF: ILdRf var_120
  loc_B8F9E2: CR8Str
  loc_B8F9E4: PopFPR8
  loc_B8F9E5: ILdRf var_118
  loc_B8F9E8: ILdRf var_8C
  loc_B8F9EB: CI2Str
  loc_B8F9ED: FLdPr Me
  loc_B8F9F0: MemLdRfVar from_stack_1.global_52
  loc_B8F9F3: NewIfNullPr clsexcepcion
  loc_B8F9F6: Call clsexcepcion.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B8F9FB: FFreeStr var_8C = "": var_118 = ""
  loc_B8FA04: FFreeAd var_94 = "": var_114 = ""
  loc_B8FA0D: Call cmdCancelar_Click()
  loc_B8FA12: Branch loc_B8FB19
  loc_B8FA15: ILdRf var_90
  loc_B8FA18: LitStr "btnCancelar"
  loc_B8FA1B: EqStr
  loc_B8FA1D: BranchF loc_B8FA28
  loc_B8FA20: Call cmdCancelar_Click()
  loc_B8FA25: Branch loc_B8FB19
  loc_B8FA28: ILdRf var_90
  loc_B8FA2B: LitStr "btnPrimero"
  loc_B8FA2E: EqStr
  loc_B8FA30: BranchF loc_B8FA44
  loc_B8FA33: FLdPr Me
  loc_B8FA36: MemLdRfVar from_stack_1.global_52
  loc_B8FA39: NewIfNullPr clsexcepcion
  loc_B8FA3C: Call clsexcepcion.MoveFirst()
  loc_B8FA41: Branch loc_B8FB19
  loc_B8FA44: ILdRf var_90
  loc_B8FA47: LitStr "btnAnterior"
  loc_B8FA4A: EqStr
  loc_B8FA4C: BranchF loc_B8FA60
  loc_B8FA4F: FLdPr Me
  loc_B8FA52: MemLdRfVar from_stack_1.global_52
  loc_B8FA55: NewIfNullPr clsexcepcion
  loc_B8FA58: Call clsexcepcion.MovePrevious()
  loc_B8FA5D: Branch loc_B8FB19
  loc_B8FA60: ILdRf var_90
  loc_B8FA63: LitStr "btnSiguiente"
  loc_B8FA66: EqStr
  loc_B8FA68: BranchF loc_B8FA7C
  loc_B8FA6B: FLdPr Me
  loc_B8FA6E: MemLdRfVar from_stack_1.global_52
  loc_B8FA71: NewIfNullPr clsexcepcion
  loc_B8FA74: Call clsexcepcion.MoveNext()
  loc_B8FA79: Branch loc_B8FB19
  loc_B8FA7C: ILdRf var_90
  loc_B8FA7F: LitStr "btnUltimo"
  loc_B8FA82: EqStr
  loc_B8FA84: BranchF loc_B8FA98
  loc_B8FA87: FLdPr Me
  loc_B8FA8A: MemLdRfVar from_stack_1.global_52
  loc_B8FA8D: NewIfNullPr clsexcepcion
  loc_B8FA90: Call clsexcepcion.MoveLast()
  loc_B8FA95: Branch loc_B8FB19
  loc_B8FA98: ILdRf var_90
  loc_B8FA9B: LitStr "btnFiltrar"
  loc_B8FA9E: EqStr
  loc_B8FAA0: BranchF loc_B8FAA6
  loc_B8FAA3: Branch loc_B8FB19
  loc_B8FAA6: ILdRf var_90
  loc_B8FAA9: LitStr "btnBuscar"
  loc_B8FAAC: EqStr
  loc_B8FAAE: BranchF loc_B8FAB4
  loc_B8FAB1: Branch loc_B8FB19
  loc_B8FAB4: ILdRf var_90
  loc_B8FAB7: LitStr "btnImprimir"
  loc_B8FABA: EqStr
  loc_B8FABC: BranchF loc_B8FAC2
  loc_B8FABF: Branch loc_B8FB19
  loc_B8FAC2: ILdRf var_90
  loc_B8FAC5: LitStr "btnAyuda"
  loc_B8FAC8: EqStr
  loc_B8FACA: BranchF loc_B8FAF9
  loc_B8FACD: LitVar_Missing var_FC
  loc_B8FAD0: LitVar_Missing var_EC
  loc_B8FAD3: LitVar_Missing var_DC
  loc_B8FAD6: LitI4 0
  loc_B8FADB: LitVarStr var_BC, "Opcion no disponible en esta version."
  loc_B8FAE0: FStVarCopyObj var_A8
  loc_B8FAE3: FLdRfVar var_A8
  loc_B8FAE6: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B8FAEB: FFreeVar var_A8 = "": var_DC = "": var_EC = ""
  loc_B8FAF6: Branch loc_B8FB19
  loc_B8FAF9: ILdRf var_90
  loc_B8FAFC: LitStr "btnSalir"
  loc_B8FAFF: EqStr
  loc_B8FB01: BranchF loc_B8FB19
  loc_B8FB04: ILdRf Me
  loc_B8FB07: FStAdNoPop
  loc_B8FB0B: ImpAdLdRf MemVar_D9C5D8
  loc_B8FB0E: NewIfNullPr Global
  loc_B8FB11: Global.Unload from_stack_1
  loc_B8FB16: FFree1Ad var_94
  loc_B8FB19: ExitProcHresult
End Sub

Private Sub Form_Load() 'ADD5F4
  'Data Table: 465D40
  loc_ADD4A8: LitI2_Byte 0
  loc_ADD4AA: CR8I2
  loc_ADD4AB: PopFPR4
  loc_ADD4AC: FLdPr Me
  loc_ADD4AF: Me.Left = from_stack_1s
  loc_ADD4B4: LitI2_Byte 0
  loc_ADD4B6: CR8I2
  loc_ADD4B7: PopFPR4
  loc_ADD4B8: FLdPr Me
  loc_ADD4BB: Me.Top = from_stack_1s
  loc_ADD4C0: LitStr "SELECT * FROM excepcion ORDER BY CodiExce"
  loc_ADD4C3: FLdPr Me
  loc_ADD4C6: MemLdRfVar from_stack_1.global_52
  loc_ADD4C9: NewIfNullPr clsexcepcion
  loc_ADD4CC: Call clsexcepcion.RedefineRS(from_stack_1v)
  loc_ADD4D1: LitI4 0
  loc_ADD4D6: LitI4 1
  loc_ADD4DB: FLdRfVar var_88
  loc_ADD4DE: Redim
  loc_ADD4E8: FLdPr Me
  loc_ADD4EB: MemLdRfVar from_stack_1.global_52
  loc_ADD4EE: NewIfNullAd
  loc_ADD4F1: FStAd var_8C 
  loc_ADD4F5: FLdRfVar var_8C
  loc_ADD4F8: CVarRef
  loc_ADD4FD: ParmAry1St
  loc_ADD503: FLdPr Me
  loc_ADD506: VCallAd Control_ID_dgdABMS
  loc_ADD509: CVarAd
  loc_ADD50D: ParmAry1St
  loc_ADD513: FLdRfVar var_88
  loc_ADD516: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_ADD51B: ILdRf var_8C
  loc_ADD51E: CastAd
  loc_ADD521: FLdPr Me
  loc_ADD524: MemStAdFunc
  loc_ADD528: FLdRfVar var_88
  loc_ADD52B: Erase
  loc_ADD52C: FFree1Ad var_8C
  loc_ADD52F: Call EnlazaTodo()
  loc_ADD534: ILdRf Me
  loc_ADD537: CastAd
  loc_ADD53A: FStAdFunc var_8C
  loc_ADD53D: FLdRfVar var_8C
  loc_ADD540: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_ADD545: FFree1Ad var_8C
  loc_ADD548: LitI2_Byte 0
  loc_ADD54A: ILdRf Me
  loc_ADD54D: CastAd
  loc_ADD550: FStAdFunc var_8C
  loc_ADD553: FLdRfVar var_8C
  loc_ADD556: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_ADD55B: FFree1Ad var_8C
  loc_ADD55E: LitVarI2 var_9C, 0
  loc_ADD563: PopAdLdVar
  loc_ADD564: LitStr "Código"
  loc_ADD567: FLdPr Me
  loc_ADD56A: VCallAd Control_ID_FiltroCbo
  loc_ADD56D: FStAdFunc var_8C
  loc_ADD570: FLdPr var_8C
  loc_ADD573: Me.AddItem from_stack_1, from_stack_2
  loc_ADD578: FFree1Ad var_8C
  loc_ADD57B: LitVarI2 var_9C, 1
  loc_ADD580: PopAdLdVar
  loc_ADD581: LitStr "Detalle"
  loc_ADD584: FLdPr Me
  loc_ADD587: VCallAd Control_ID_FiltroCbo
  loc_ADD58A: FStAdFunc var_8C
  loc_ADD58D: FLdPr var_8C
  loc_ADD590: Me.AddItem from_stack_1, from_stack_2
  loc_ADD595: FFree1Ad var_8C
  loc_ADD598: LitI2_Byte 0
  loc_ADD59A: FLdPr Me
  loc_ADD59D: VCallAd Control_ID_FiltroCbo
  loc_ADD5A0: FStAdFunc var_8C
  loc_ADD5A3: FLdPr var_8C
  loc_ADD5A6: Me.ListIndex = from_stack_1
  loc_ADD5AB: FFree1Ad var_8C
  loc_ADD5AE: LitI4 0
  loc_ADD5B3: LitI4 1
  loc_ADD5B8: FLdRfVar var_88
  loc_ADD5BB: Redim
  loc_ADD5C5: FLdPr Me
  loc_ADD5C8: VCallAd Control_ID_FiltroCbo
  loc_ADD5CB: CVarAd
  loc_ADD5CF: ParmAry1St
  loc_ADD5D5: FLdPr Me
  loc_ADD5D8: VCallAd Control_ID_FiltroMsk
  loc_ADD5DB: CVarAd
  loc_ADD5DF: ParmAry1St
  loc_ADD5E5: FLdRfVar var_88
  loc_ADD5E8: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ADD5ED: FLdRfVar var_88
  loc_ADD5F0: Erase
  loc_ADD5F1: ExitProcHresult
  loc_ADD5F2: ExitProcR4
End Sub

Private Sub Form_Activate() 'A62120
  'Data Table: 465D40
  loc_A620C4: FLdRfVar var_C2
  loc_A620C7: FLdRfVar var_C0
  loc_A620CA: LitVarI2 var_B8, 1
  loc_A620CF: FLdPr Me
  loc_A620D2: VCallAd Control_ID_tlbABMS
  loc_A620D5: FStAdFunc var_88
  loc_A620D8: FLdPr var_88
  loc_A620DB: LateIdLdVar var_98 DispID_3 0
  loc_A620E2: CastAdVar Me
  loc_A620E6: FStAdFunc var_BC
  loc_A620E9: FLdPr var_BC
  loc_A620EC:  = Me.Buttons.ControlDefault
  loc_A620F1: FLdPr var_C0
  loc_A620F4:  = Me.Enabled
  loc_A620F9: FLdI2 var_C2
  loc_A620FC: FFreeAd var_88 = "": var_BC = ""
  loc_A62105: FFreeVar var_98 = ""
  loc_A6210C: BranchF loc_A6211D
  loc_A6210F: FLdPr Me
  loc_A62112: MemLdRfVar from_stack_1.global_52
  loc_A62115: NewIfNullPr clsexcepcion
  loc_A62118: Call clsexcepcion.Requery()
  loc_A6211D: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9C9178
  'Data Table: 465D40
  loc_9C9160: ILdI2 KeyCode
  loc_9C9163: ILdRf Me
  loc_9C9166: CastAd
  loc_9C9169: FStAdFunc var_88
  loc_9C916C: FLdRfVar var_88
  loc_9C916F: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9C9174: FFree1Ad var_88
  loc_9C9177: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'AA1B94
  'Data Table: 465D40
  loc_AA1AE4: LitI2_Byte 0
  loc_AA1AE6: FLdPr Me
  loc_AA1AE9: MemStI2 global_56
  loc_AA1AEC: LitI2_Byte 0
  loc_AA1AEE: ILdRf Me
  loc_AA1AF1: CastAd
  loc_AA1AF4: FStAdFunc var_88
  loc_AA1AF7: FLdRfVar var_88
  loc_AA1AFA: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AA1AFF: FFree1Ad var_88
  loc_AA1B02: LitI4 0
  loc_AA1B07: LitI4 0
  loc_AA1B0C: FLdRfVar var_8C
  loc_AA1B0F: Redim
  loc_AA1B19: FLdPr Me
  loc_AA1B1C: VCallAd Control_ID_dgdABMS
  loc_AA1B1F: CVarAd
  loc_AA1B23: ParmAry1St
  loc_AA1B29: FLdRfVar var_8C
  loc_AA1B2C: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AA1B31: FLdRfVar var_8C
  loc_AA1B34: Erase
  loc_AA1B35: Call EnlazaTodo()
  loc_AA1B3A: ILdRf Me
  loc_AA1B3D: CastAd
  loc_AA1B40: FStAdFunc var_88
  loc_AA1B43: FLdRfVar var_88
  loc_AA1B46: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AA1B4B: FFree1Ad var_88
  loc_AA1B4E: LitI4 0
  loc_AA1B53: LitI4 1
  loc_AA1B58: FLdRfVar var_8C
  loc_AA1B5B: Redim
  loc_AA1B65: FLdPr Me
  loc_AA1B68: VCallAd Control_ID_FiltroCbo
  loc_AA1B6B: CVarAd
  loc_AA1B6F: ParmAry1St
  loc_AA1B75: FLdPr Me
  loc_AA1B78: VCallAd Control_ID_FiltroMsk
  loc_AA1B7B: CVarAd
  loc_AA1B7F: ParmAry1St
  loc_AA1B85: FLdRfVar var_8C
  loc_AA1B88: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AA1B8D: FLdRfVar var_8C
  loc_AA1B90: Erase
  loc_AA1B91: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '9C6C08
  'Data Table: 465D40
  loc_9C6BF4: FLdPr Me
  loc_9C6BF7: VCallAd Control_ID_FiltroMsk
  loc_9C6BFA: CVarAd
  loc_9C6BFE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6C03: FFree1Var var_94 = ""
  loc_9C6C06: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'B0C314
  'Data Table: 465D40
  loc_B0C0F4: ILdRf Me
  loc_B0C0F7: CastAd
  loc_B0C0FA: FStAdFunc var_88
  loc_B0C0FD: FLdRfVar var_88
  loc_B0C100: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B0C105: FFree1Ad var_88
  loc_B0C108: FLdPr Me
  loc_B0C10B: VCallAd Control_ID_FiltroMsk
  loc_B0C10E: FStAdFunc var_88
  loc_B0C111: FLdPr var_88
  loc_B0C114: LateIdLdVar var_98 DispID_20 0
  loc_B0C11B: CStrVarTmp
  loc_B0C11C: CVarStr var_A8
  loc_B0C11F: FLdRfVar var_B8
  loc_B0C122: ImpAdCallFPR4  = Trim()
  loc_B0C127: FLdRfVar var_B8
  loc_B0C12A: LitVarStr var_C8, vbNullString
  loc_B0C12F: HardType
  loc_B0C130: NeVarBool
  loc_B0C132: FFree1Ad var_88
  loc_B0C135: FFreeVar var_98 = "": var_A8 = ""
  loc_B0C13E: BranchF loc_B0C292
  loc_B0C141: FLdRfVar var_DA
  loc_B0C144: FLdPr Me
  loc_B0C147: VCallAd Control_ID_FiltroCbo
  loc_B0C14A: FStAdFunc var_88
  loc_B0C14D: FLdPr var_88
  loc_B0C150:  = Me.ListIndex
  loc_B0C155: FLdI2 var_DA
  loc_B0C158: LitI2_Byte 0
  loc_B0C15A: EqI2
  loc_B0C15B: FFree1Ad var_88
  loc_B0C15E: BranchF loc_B0C1E5
  loc_B0C161: LitStr "CodiExce >= "
  loc_B0C164: FLdPr Me
  loc_B0C167: VCallAd Control_ID_FiltroMsk
  loc_B0C16A: FStAdFunc var_88
  loc_B0C16D: FLdPr var_88
  loc_B0C170: LateIdLdVar var_98 DispID_22 0
  loc_B0C177: CStrVarTmp
  loc_B0C178: FStStrNoPop var_E0
  loc_B0C17B: ConcatStr
  loc_B0C17C: PopTmpLdAdStr
  loc_B0C180: FLdPr Me
  loc_B0C183: MemLdRfVar from_stack_1.global_52
  loc_B0C186: NewIfNullPr clsexcepcion
  loc_B0C189: Call clsexcepcion.Filter(from_stack_1v)
  loc_B0C18E: FFreeStr var_E0 = ""
  loc_B0C195: FFree1Ad var_88
  loc_B0C198: FFree1Var var_98 = ""
  loc_B0C19B: LitVarStr var_C8, "Numero de Cuenta que es mayor o igual a: "
  loc_B0C1A0: FLdPr Me
  loc_B0C1A3: VCallAd Control_ID_FiltroMsk
  loc_B0C1A6: FStAdFunc var_88
  loc_B0C1A9: FLdPr var_88
  loc_B0C1AC: LateIdLdVar var_98 DispID_22 0
  loc_B0C1B3: CStrVarTmp
  loc_B0C1B4: CVarStr var_A8
  loc_B0C1B7: FLdRfVar var_B8
  loc_B0C1BA: ImpAdCallFPR4  = Trim()
  loc_B0C1BF: FLdRfVar var_B8
  loc_B0C1C2: ConcatVar var_D8
  loc_B0C1C6: CStrVarTmp
  loc_B0C1C7: FStStrNoPop var_E0
  loc_B0C1CA: FLdPr Me
  loc_B0C1CD: MemStStrCopy
  loc_B0C1D1: FFree1Str var_E0
  loc_B0C1D4: FFree1Ad var_88
  loc_B0C1D7: FFreeVar var_98 = "": var_A8 = "": var_B8 = ""
  loc_B0C1E2: Branch loc_B0C28F
  loc_B0C1E5: FLdRfVar var_DA
  loc_B0C1E8: FLdPr Me
  loc_B0C1EB: VCallAd Control_ID_FiltroCbo
  loc_B0C1EE: FStAdFunc var_88
  loc_B0C1F1: FLdPr var_88
  loc_B0C1F4:  = Me.ListIndex
  loc_B0C1F9: FLdI2 var_DA
  loc_B0C1FC: LitI2_Byte 1
  loc_B0C1FE: EqI2
  loc_B0C1FF: FFree1Ad var_88
  loc_B0C202: BranchF loc_B0C28F
  loc_B0C205: LitStr "DetaExce LIKE '" & Chr(37)
  loc_B0C208: FLdPr Me
  loc_B0C20B: VCallAd Control_ID_FiltroMsk
  loc_B0C20E: FStAdFunc var_88
  loc_B0C211: FLdPr var_88
  loc_B0C214: LateIdLdVar var_98 DispID_22 0
  loc_B0C21B: CStrVarTmp
  loc_B0C21C: FStStrNoPop var_E0
  loc_B0C21F: ConcatStr
  loc_B0C220: FStStrNoPop var_E4
  loc_B0C223: LitStr Chr(37) & "'"
  loc_B0C226: ConcatStr
  loc_B0C227: PopTmpLdAdStr
  loc_B0C22B: FLdPr Me
  loc_B0C22E: MemLdRfVar from_stack_1.global_52
  loc_B0C231: NewIfNullPr clsexcepcion
  loc_B0C234: Call clsexcepcion.Filter(from_stack_1v)
  loc_B0C239: FFreeStr var_E0 = "": var_E4 = ""
  loc_B0C242: FFree1Ad var_88
  loc_B0C245: FFree1Var var_98 = ""
  loc_B0C248: LitVarStr var_C8, "Detalle de calle que contiene. "
  loc_B0C24D: FLdPr Me
  loc_B0C250: VCallAd Control_ID_FiltroMsk
  loc_B0C253: FStAdFunc var_88
  loc_B0C256: FLdPr var_88
  loc_B0C259: LateIdLdVar var_98 DispID_22 0
  loc_B0C260: CStrVarTmp
  loc_B0C261: CVarStr var_A8
  loc_B0C264: FLdRfVar var_B8
  loc_B0C267: ImpAdCallFPR4  = Trim()
  loc_B0C26C: FLdRfVar var_B8
  loc_B0C26F: ConcatVar var_D8
  loc_B0C273: CStrVarTmp
  loc_B0C274: FStStrNoPop var_E0
  loc_B0C277: FLdPr Me
  loc_B0C27A: MemStStrCopy
  loc_B0C27E: FFree1Str var_E0
  loc_B0C281: FFree1Ad var_88
  loc_B0C284: FFreeVar var_98 = "": var_A8 = "": var_B8 = ""
  loc_B0C28F: Branch loc_B0C2B6
  loc_B0C292: LitStr vbNullString
  loc_B0C295: FStStrCopy var_E0
  loc_B0C298: FLdRfVar var_E0
  loc_B0C29B: FLdPr Me
  loc_B0C29E: MemLdRfVar from_stack_1.global_52
  loc_B0C2A1: NewIfNullPr clsexcepcion
  loc_B0C2A4: Call clsexcepcion.Filter(from_stack_1v)
  loc_B0C2A9: FFree1Str var_E0
  loc_B0C2AC: LitStr vbNullString
  loc_B0C2AF: FLdPr Me
  loc_B0C2B2: MemStStrCopy
  loc_B0C2B6: FLdRfVar var_EC
  loc_B0C2B9: FLdPr Me
  loc_B0C2BC: MemLdRfVar from_stack_1.global_52
  loc_B0C2BF: NewIfNullPr clsexcepcion
  loc_B0C2C2: from_stack_1 = clsexcepcion.RecordCount
  loc_B0C2C7: ILdRf var_EC
  loc_B0C2CA: LitI4 0
  loc_B0C2CF: GtI4
  loc_B0C2D0: BranchF loc_B0C2DB
  loc_B0C2D3: Call EnlazaTodo()
  loc_B0C2D8: Branch loc_B0C2EF
  loc_B0C2DB: ILdRf Me
  loc_B0C2DE: CastAd
  loc_B0C2E1: FStAdFunc var_88
  loc_B0C2E4: FLdRfVar var_88
  loc_B0C2E7: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B0C2EC: FFree1Ad var_88
  loc_B0C2EF: FLdPr Me
  loc_B0C2F2: VCallAd Control_ID_dgdABMS
  loc_B0C2F5: FStAdFunc var_F0
  loc_B0C2F8: FLdPr Me
  loc_B0C2FB: MemLdStr global_72
  loc_B0C2FE: FLdZeroAd var_F0
  loc_B0C301: FStAdFunc var_88
  loc_B0C304: FLdRfVar var_88
  loc_B0C307: ImpAdCallFPR4 Proc_272_56_ACCA08(, )
  loc_B0C30C: FFreeAd var_88 = ""
  loc_B0C313: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9C9340
  'Data Table: 465D40
  loc_9C9328: FLdPr Me
  loc_9C932B: VCallAd Control_ID_dgdABMS
  loc_9C932E: FStAdFunc var_88
  loc_9C9331: FLdRfVar var_88
  loc_9C9334: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9C9339: FFree1Ad var_88
  loc_9C933C: ExitProcHresult
  loc_9C933D: CI2R8
  loc_9C933E: OrI4
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9C96D0
  'Data Table: 465D40
  loc_9C96B8: FLdPr Me
  loc_9C96BB: VCallAd Control_ID_dgdABMS
  loc_9C96BE: FStAdFunc var_88
  loc_9C96C1: FLdRfVar var_88
  loc_9C96C4: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9C96C9: FFree1Ad var_88
  loc_9C96CC: ExitProcHresult
  loc_9C96CD: ModI2
  loc_9C96CE: Ary1StCy
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A66A88
  'Data Table: 465D40
  loc_A66A2C: FLdRfVar var_B4
  loc_A66A2F: FLdRfVar var_B0
  loc_A66A32: FLdI2 ColIndex
  loc_A66A35: CVarI2 var_A8
  loc_A66A38: PopAdLdVar
  loc_A66A39: FLdPr Me
  loc_A66A3C: VCallAd Control_ID_dgdABMS
  loc_A66A3F: FStAdFunc var_88
  loc_A66A42: FLdPr var_88
  loc_A66A45: LateIdLdVar var_98 DispID_105 0
  loc_A66A4C: CastAdVar Me
  loc_A66A50: FStAdFunc var_AC
  loc_A66A53: FLdPr var_AC
  loc_A66A56: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A66A5B: FLdPr var_B0
  loc_A66A5E:  = Me.DataField
  loc_A66A63: FLdZeroAd var_B4
  loc_A66A66: PopTmpLdAdStr
  loc_A66A6A: FLdPr Me
  loc_A66A6D: MemLdRfVar from_stack_1.global_52
  loc_A66A70: NewIfNullPr clsexcepcion
  loc_A66A73: Call clsexcepcion.Sort(from_stack_1v)
  loc_A66A78: FFree1Str var_B8
  loc_A66A7B: FFreeAd var_88 = "": var_AC = ""
  loc_A66A84: FFree1Var var_98 = ""
  loc_A66A87: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'AB0360
  'Data Table: 465D40
  loc_AB0284: FLdPr Me
  loc_AB0287: MemLdI2 global_56
  loc_AB028A: LitI2_Byte 0
  loc_AB028C: EqI2
  loc_AB028D: FLdRfVar var_88
  loc_AB0290: FLdPr Me
  loc_AB0293: MemLdRfVar from_stack_1.global_52
  loc_AB0296: NewIfNullPr clsexcepcion
  loc_AB0299: from_stack_1 = clsexcepcion.RecordCount
  loc_AB029E: ILdRf var_88
  loc_AB02A1: LitI4 0
  loc_AB02A6: GtI4
  loc_AB02A7: AndI4
  loc_AB02A8: BranchF loc_AB035F
  loc_AB02AB: FLdRfVar var_8A
  loc_AB02AE: FLdPr Me
  loc_AB02B1: MemLdRfVar from_stack_1.global_52
  loc_AB02B4: NewIfNullPr clsexcepcion
  loc_AB02B7: from_stack_1 = clsexcepcion.BOF
  loc_AB02BC: FLdI2 var_8A
  loc_AB02BF: BranchF loc_AB02D0
  loc_AB02C2: FLdPr Me
  loc_AB02C5: MemLdRfVar from_stack_1.global_52
  loc_AB02C8: NewIfNullPr clsexcepcion
  loc_AB02CB: Call clsexcepcion.MoveFirst()
  loc_AB02D0: FLdRfVar var_8A
  loc_AB02D3: FLdPr Me
  loc_AB02D6: MemLdRfVar from_stack_1.global_52
  loc_AB02D9: NewIfNullPr clsexcepcion
  loc_AB02DC: from_stack_1 = clsexcepcion.EOF
  loc_AB02E1: FLdI2 var_8A
  loc_AB02E4: BranchF loc_AB02F5
  loc_AB02E7: FLdPr Me
  loc_AB02EA: MemLdRfVar from_stack_1.global_52
  loc_AB02ED: NewIfNullPr clsexcepcion
  loc_AB02F0: Call clsexcepcion.MoveLast()
  loc_AB02F5: FLdRfVar var_90
  loc_AB02F8: FLdPr Me
  loc_AB02FB: MemLdRfVar from_stack_1.global_52
  loc_AB02FE: NewIfNullPr clsexcepcion
  loc_AB0301: from_stack_1 = clsexcepcion.TipoExce
  loc_AB0306: ILdRf var_90
  loc_AB0309: LitStr "Porcentaje"
  loc_AB030C: EqStr
  loc_AB030E: FFree1Str var_90
  loc_AB0311: BranchF loc_AB032A
  loc_AB0314: LitI2_Byte &HFF
  loc_AB0316: FLdPr Me
  loc_AB0319: VCallAd Control_ID_TipoExcePorcentajeOpt
  loc_AB031C: FStAdFunc var_94
  loc_AB031F: FLdPr var_94
  loc_AB0322: Me.Value = from_stack_1b
  loc_AB0327: FFree1Ad var_94
  loc_AB032A: FLdRfVar var_90
  loc_AB032D: FLdPr Me
  loc_AB0330: MemLdRfVar from_stack_1.global_52
  loc_AB0333: NewIfNullPr clsexcepcion
  loc_AB0336: from_stack_1 = clsexcepcion.TipoExce
  loc_AB033B: ILdRf var_90
  loc_AB033E: LitStr "Importe"
  loc_AB0341: EqStr
  loc_AB0343: FFree1Str var_90
  loc_AB0346: BranchF loc_AB035F
  loc_AB0349: LitI2_Byte &HFF
  loc_AB034B: FLdPr Me
  loc_AB034E: VCallAd Control_ID_TipoExceImporteOpt
  loc_AB0351: FStAdFunc var_94
  loc_AB0354: FLdPr var_94
  loc_AB0357: Me.Value = from_stack_1b
  loc_AB035C: FFree1Ad var_94
  loc_AB035F: ExitProcHresult
End Sub

Private Sub CodiExceTxt_GotFocus() '9C6C50
  'Data Table: 465D40
  loc_9C6C3C: FLdPr Me
  loc_9C6C3F: VCallAd Control_ID_CodiExceTxt
  loc_9C6C42: CVarAd
  loc_9C6C46: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6C4B: FFree1Var var_94 = ""
  loc_9C6C4E: ExitProcHresult
End Sub

Private Sub CodiExceTxt_KeyPress(KeyAscii As Integer) '9C971C
  'Data Table: 465D40
  loc_9C9704: LitStr "0123456789"
  loc_9C9707: FStStrCopy var_88
  loc_9C970A: FLdRfVar var_88
  loc_9C970D: ILdRf KeyAscii
  loc_9C9710: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C9715: IStI2 KeyAscii
  loc_9C9718: FFree1Str var_88
  loc_9C971B: ExitProcHresult
End Sub

Private Sub CodiExceTxt_Validate(Cancel As Boolean) 'ABC654
  'Data Table: 465D40
  loc_ABC55C: FLdRfVar var_8A
  loc_ABC55F: FLdPr Me
  loc_ABC562: VCallAd Control_ID_CodiExceTxt
  loc_ABC565: FStAdFunc var_88
  loc_ABC568: FLdPr var_88
  loc_ABC56B:  = Me.Enabled
  loc_ABC570: FLdI2 var_8A
  loc_ABC573: LitI2_Byte &HFF
  loc_ABC575: EqI2
  loc_ABC576: FFree1Ad var_88
  loc_ABC579: BranchF loc_ABC653
  loc_ABC57C: FLdRfVar var_90
  loc_ABC57F: FLdPr Me
  loc_ABC582: VCallAd Control_ID_CodiExceTxt
  loc_ABC585: FStAdFunc var_88
  loc_ABC588: FLdPr var_88
  loc_ABC58B:  = Me.Text
  loc_ABC590: LitI2_Byte 0
  loc_ABC592: LitI2_Byte 0
  loc_ABC594: ILdRf var_90
  loc_ABC597: LitStr "codigo"
  loc_ABC59A: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_ABC59F: FStStrNoPop var_94
  loc_ABC5A2: FLdPr Me
  loc_ABC5A5: MemStStrCopy
  loc_ABC5A9: FFreeStr var_90 = ""
  loc_ABC5B0: FFree1Ad var_88
  loc_ABC5B3: FLdPr Me
  loc_ABC5B6: MemLdStr global_60
  loc_ABC5B9: LitStr vbNullString
  loc_ABC5BC: NeStr
  loc_ABC5BE: BranchF loc_ABC5E4
  loc_ABC5C1: FLdPr Me
  loc_ABC5C4: MemLdStr global_60
  loc_ABC5C7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABC5CC: FLdPr Me
  loc_ABC5CF: VCallAd Control_ID_CodiExceTxt
  loc_ABC5D2: CVarAd
  loc_ABC5D6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABC5DB: FFree1Var var_A4 = ""
  loc_ABC5DE: LitI2_Byte &HFF
  loc_ABC5E0: IStI2 Cancel
  loc_ABC5E3: ExitProcHresult
  loc_ABC5E4: FLdRfVar var_94
  loc_ABC5E7: FLdRfVar var_90
  loc_ABC5EA: FLdPr Me
  loc_ABC5ED: VCallAd Control_ID_CodiExceTxt
  loc_ABC5F0: FStAdFunc var_88
  loc_ABC5F3: FLdPr var_88
  loc_ABC5F6:  = Me.Text
  loc_ABC5FB: ILdRf var_90
  loc_ABC5FE: CI2Str
  loc_ABC600: FLdPr Me
  loc_ABC603: MemLdRfVar from_stack_1.global_52
  loc_ABC606: NewIfNullPr clsexcepcion
  loc_ABC609: from_stack_2v = clsexcepcion.ValidaClave(from_stack_1v)
  loc_ABC60E: ILdRf var_94
  loc_ABC611: FLdPr Me
  loc_ABC614: MemStStrCopy
  loc_ABC618: FFreeStr var_90 = ""
  loc_ABC61F: FFree1Ad var_88
  loc_ABC622: FLdPr Me
  loc_ABC625: MemLdStr global_60
  loc_ABC628: LitStr vbNullString
  loc_ABC62B: NeStr
  loc_ABC62D: BranchF loc_ABC653
  loc_ABC630: FLdPr Me
  loc_ABC633: MemLdStr global_60
  loc_ABC636: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABC63B: FLdPr Me
  loc_ABC63E: VCallAd Control_ID_CodiExceTxt
  loc_ABC641: CVarAd
  loc_ABC645: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABC64A: FFree1Var var_A4 = ""
  loc_ABC64D: LitI2_Byte &HFF
  loc_ABC64F: IStI2 Cancel
  loc_ABC652: ExitProcHresult
  loc_ABC653: ExitProcHresult
End Sub

Private Sub DetaExceTxt_GotFocus() '9C6CE0
  'Data Table: 465D40
  loc_9C6CCC: FLdPr Me
  loc_9C6CCF: VCallAd Control_ID_DetaExceTxt
  loc_9C6CD2: CVarAd
  loc_9C6CD6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6CDB: FFree1Var var_94 = ""
  loc_9C6CDE: ExitProcHresult
End Sub

Private Sub DetaExceTxt_Validate(Cancel As Boolean) 'A919B0
  'Data Table: 465D40
  loc_A91910: FLdRfVar var_8A
  loc_A91913: FLdPr Me
  loc_A91916: VCallAd Control_ID_cmdCancelar
  loc_A91919: FStAdFunc var_88
  loc_A9191C: FLdPr var_88
  loc_A9191F:  = Me.Value
  loc_A91924: FLdI2 var_8A
  loc_A91927: NotI4
  loc_A91928: FLdRfVar var_92
  loc_A9192B: FLdPr Me
  loc_A9192E: VCallAd Control_ID_DetaExceTxt
  loc_A91931: FStAdFunc var_90
  loc_A91934: FLdPr var_90
  loc_A91937:  = Me.Enabled
  loc_A9193C: FLdI2 var_92
  loc_A9193F: AndI4
  loc_A91940: FFreeAd var_88 = ""
  loc_A91947: BranchF loc_A919AD
  loc_A9194A: FLdRfVar var_98
  loc_A9194D: FLdPr Me
  loc_A91950: VCallAd Control_ID_DetaExceTxt
  loc_A91953: FStAdFunc var_88
  loc_A91956: FLdPr var_88
  loc_A91959:  = Me.Text
  loc_A9195E: ILdRf var_98
  loc_A91961: LitStr "la excepcion"
  loc_A91964: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A91969: FStStrNoPop var_9C
  loc_A9196C: FLdPr Me
  loc_A9196F: MemStStrCopy
  loc_A91973: FFreeStr var_98 = ""
  loc_A9197A: FFree1Ad var_88
  loc_A9197D: FLdPr Me
  loc_A91980: MemLdStr global_60
  loc_A91983: LitStr vbNullString
  loc_A91986: NeStr
  loc_A91988: BranchF loc_A919AD
  loc_A9198B: FLdPr Me
  loc_A9198E: MemLdStr global_60
  loc_A91991: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A91996: FLdPr Me
  loc_A91999: VCallAd Control_ID_DetaExceTxt
  loc_A9199C: CVarAd
  loc_A919A0: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A919A5: FFree1Var var_AC = ""
  loc_A919A8: LitI2_Byte &HFF
  loc_A919AA: IStI2 Cancel
  loc_A919AD: ExitProcHresult
End Sub

Public Sub EnlazaTodo() 'A844E4
  'Data Table: 465D40
  loc_A84464: LitI4 0
  loc_A84469: LitI4 3
  loc_A8446E: FLdRfVar var_88
  loc_A84471: Redim
  loc_A8447B: FLdPr Me
  loc_A8447E: MemLdRfVar from_stack_1.global_52
  loc_A84481: NewIfNullAd
  loc_A84484: FStAd var_8C 
  loc_A84488: FLdRfVar var_8C
  loc_A8448B: CVarRef
  loc_A84490: ParmAry1St
  loc_A84496: FLdPr Me
  loc_A84499: VCallAd Control_ID_CodiExceTxt
  loc_A8449C: CVarAd
  loc_A844A0: ParmAry1St
  loc_A844A6: FLdPr Me
  loc_A844A9: VCallAd Control_ID_DetaExceTxt
  loc_A844AC: CVarAd
  loc_A844B0: ParmAry1St
  loc_A844B6: FLdPr Me
  loc_A844B9: VCallAd Control_ID_PorcExceTxt
  loc_A844BC: CVarAd
  loc_A844C0: ParmAry1St
  loc_A844C6: FLdRfVar var_88
  loc_A844C9: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A844CE: ILdRf var_8C
  loc_A844D1: CastAd
  loc_A844D4: FLdPr Me
  loc_A844D7: MemStAdFunc
  loc_A844DB: FLdRfVar var_88
  loc_A844DE: Erase
  loc_A844DF: FFree1Ad var_8C
  loc_A844E2: ExitProcHresult
End Sub
