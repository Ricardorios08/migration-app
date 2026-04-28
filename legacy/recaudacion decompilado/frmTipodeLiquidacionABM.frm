VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmTipodeLiquidacionABM
  Caption = "Tipo de Liquidación"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmTipodeLiquidacionABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 12948
  ClientHeight = 9420
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.Frame Frame1
    Left = 120
    Top = 3480
    Width = 12360
    Height = 5760
    TabIndex = 13
    Begin VB.TextBox CogaTiliTxt
      ForeColor = &HFF0000&
      Left = 8280
      Top = 3120
      Width = 1215
      Height = 360
      TabIndex = 10
      MaxLength = 8
      DataField = "CogaTili"
    End
    Begin VB.TextBox LeyeTiliTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 4080
      Width = 9735
      Height = 975
      TabIndex = 12
      MultiLine = -1  'True
      ScrollBars = 2
      DataField = "LeyeTili"
    End
    Begin VB.TextBox DeanTiliTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 3600
      Width = 855
      Height = 360
      TabIndex = 9
      MaxLength = 8
      DataField = "DeanTili"
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.CommandButton CoreTiliCmd
      Left = 4080
      Top = 2640
      Width = 450
      Height = 360
      TabIndex = 7
      Picture = "frmTipodeLiquidacionABM.frx":324A
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton ConcTiliCmd
      Left = 4080
      Top = 2160
      Width = 450
      Height = 360
      TabIndex = 5
      Picture = "frmTipodeLiquidacionABM.frx":3344
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox GastTiliTxt
      ForeColor = &HFF0000&
      Left = 8280
      Top = 3600
      Width = 855
      Height = 360
      TabIndex = 11
      MaxLength = 8
      DataField = "GastTili"
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox DescTiliTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 3120
      Width = 855
      Height = 360
      TabIndex = 8
      MaxLength = 8
      DataField = "DescTili"
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.ComboBox OficinaCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2520
      Top = 600
      Width = 2295
      Height = 420
      TabIndex = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox DetaTiliTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 1680
      Width = 6495
      Height = 360
      TabIndex = 3
      MaxLength = 40
      DataField = "DetaTili"
    End
    Begin VB.TextBox CodiTiliTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 1200
      Width = 615
      Height = 360
      TabIndex = 2
      MaxLength = 2
      DataField = "CodiTili"
    End
    Begin MSMask.MaskEdBox ConcTiliMsk
      Left = 2520
      Top = 2160
      Width = 1455
      Height = 360
      TabIndex = 4
      OleObjectBlob = "frmTipodeLiquidacionABM.frx":343E
      DataField = "ConcTili"
    End
    Begin MSMask.MaskEdBox CoreTiliMsk
      Left = 2520
      Top = 2640
      Width = 1455
      Height = 360
      TabIndex = 6
      OleObjectBlob = "frmTipodeLiquidacionABM.frx":34DE
      DataField = "CoreTili"
    End
    Begin VB.Label Label13
      Caption = "Código de Gasto Administrativo:"
      Left = 4800
      Top = 3120
      Width = 3405
      Height = 300
      TabIndex = 25
      AutoSize = -1  'True
    End
    Begin VB.Label Label12
      Caption = "Leyenda:"
      Left = 1440
      Top = 4560
      Width = 975
      Height = 300
      TabIndex = 24
      AutoSize = -1  'True
    End
    Begin VB.Label Label11
      Caption = "Descuento Anual:"
      Left = 600
      Top = 3600
      Width = 1905
      Height = 300
      TabIndex = 23
      AutoSize = -1  'True
    End
    Begin VB.Label DetaCoreLbl
      Caption = "Label4"
      ForeColor = &HFF0000&
      Left = 4680
      Top = 2640
      Width = 6375
      Height = 360
      TabIndex = 22
      DataField = "DereConc"
    End
    Begin VB.Label DetaConcLbl
      Caption = "Label4"
      ForeColor = &HFF0000&
      Left = 4680
      Top = 2160
      Width = 6375
      Height = 360
      TabIndex = 21
      DataField = "DecoConc"
    End
    Begin VB.Label Label9
      Caption = "Descuento al día:"
      Left = 630
      Top = 3120
      Width = 1845
      Height = 300
      TabIndex = 20
      AutoSize = -1  'True
    End
    Begin VB.Label Label8
      Caption = "Importe del Gastos Administrativo:"
      Left = 4560
      Top = 3600
      Width = 3645
      Height = 300
      TabIndex = 19
      AutoSize = -1  'True
    End
    Begin VB.Label Label7
      Caption = "Oficina:"
      Left = 1680
      Top = 600
      Width = 795
      Height = 300
      TabIndex = 18
      AutoSize = -1  'True
    End
    Begin VB.Label Label4
      Caption = "Concepto de recargo:"
      Left = 180
      Top = 2640
      Width = 2295
      Height = 300
      TabIndex = 17
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Concepto:"
      Left = 1380
      Top = 2160
      Width = 1095
      Height = 300
      TabIndex = 16
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Detalle:"
      Left = 1665
      Top = 1680
      Width = 810
      Height = 300
      TabIndex = 15
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Código:"
      Left = 1665
      Top = 1200
      Width = 810
      Height = 300
      TabIndex = 14
      AutoSize = -1  'True
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 840
    Width = 12360
    Height = 2475
    TabIndex = 0
    OleObjectBlob = "frmTipodeLiquidacionABM.frx":357E
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmTipodeLiquidacionABM.frx":3B54
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 12948
    Height = 636
    TabIndex = 26
    OleObjectBlob = "frmTipodeLiquidacionABM.frx":B6D2
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 27
      TabStop = 0   'False
      Picture = "frmTipodeLiquidacionABM.frx":BC2E
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmTipodeLiquidacionABM"


Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A68BD8
  'Data Table: 4D609C
  loc_A68B7C: FLdRfVar var_B4
  loc_A68B7F: FLdRfVar var_B0
  loc_A68B82: FLdI2 ColIndex
  loc_A68B85: CVarI2 var_A8
  loc_A68B88: PopAdLdVar
  loc_A68B89: FLdPr Me
  loc_A68B8C: VCallAd Control_ID_dgdABMS
  loc_A68B8F: FStAdFunc var_88
  loc_A68B92: FLdPr var_88
  loc_A68B95: LateIdLdVar var_98 DispID_105 0
  loc_A68B9C: CastAdVar Me
  loc_A68BA0: FStAdFunc var_AC
  loc_A68BA3: FLdPr var_AC
  loc_A68BA6: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A68BAB: FLdPr var_B0
  loc_A68BAE:  = Me.DataField
  loc_A68BB3: FLdZeroAd var_B4
  loc_A68BB6: PopTmpLdAdStr
  loc_A68BBA: FLdPr Me
  loc_A68BBD: MemLdRfVar from_stack_1.global_52
  loc_A68BC0: NewIfNullPr clstipoliqu
  loc_A68BC3: Call clstipoliqu.Sort(from_stack_1v)
  loc_A68BC8: FFree1Str var_B8
  loc_A68BCB: FFreeAd var_88 = "": var_AC = ""
  loc_A68BD4: FFree1Var var_98 = ""
  loc_A68BD7: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'AC5784
  'Data Table: 4D609C
  loc_AC5670: FLdPr Me
  loc_AC5673: MemLdI2 global_56
  loc_AC5676: LitI2_Byte 0
  loc_AC5678: EqI2
  loc_AC5679: FLdRfVar var_88
  loc_AC567C: FLdPr Me
  loc_AC567F: MemLdRfVar from_stack_1.global_52
  loc_AC5682: NewIfNullPr clstipoliqu
  loc_AC5685: from_stack_1 = clstipoliqu.RecordCount
  loc_AC568A: ILdRf var_88
  loc_AC568D: LitI4 0
  loc_AC5692: GtI4
  loc_AC5693: AndI4
  loc_AC5694: BranchF loc_AC5783
  loc_AC5697: FLdRfVar var_8A
  loc_AC569A: FLdPr Me
  loc_AC569D: MemLdRfVar from_stack_1.global_52
  loc_AC56A0: NewIfNullPr clstipoliqu
  loc_AC56A3: from_stack_1 = clstipoliqu.BOF
  loc_AC56A8: FLdI2 var_8A
  loc_AC56AB: BranchF loc_AC56BC
  loc_AC56AE: FLdPr Me
  loc_AC56B1: MemLdRfVar from_stack_1.global_52
  loc_AC56B4: NewIfNullPr clstipoliqu
  loc_AC56B7: Call clstipoliqu.MoveFirst()
  loc_AC56BC: FLdRfVar var_8A
  loc_AC56BF: FLdPr Me
  loc_AC56C2: MemLdRfVar from_stack_1.global_52
  loc_AC56C5: NewIfNullPr clstipoliqu
  loc_AC56C8: from_stack_1 = clstipoliqu.EOF
  loc_AC56CD: FLdI2 var_8A
  loc_AC56D0: BranchF loc_AC56E1
  loc_AC56D3: FLdPr Me
  loc_AC56D6: MemLdRfVar from_stack_1.global_52
  loc_AC56D9: NewIfNullPr clstipoliqu
  loc_AC56DC: Call clstipoliqu.MoveLast()
  loc_AC56E1: FLdRfVar var_8A
  loc_AC56E4: FLdPr Me
  loc_AC56E7: MemLdRfVar from_stack_1.global_52
  loc_AC56EA: NewIfNullPr clstipoliqu
  loc_AC56ED: from_stack_1 = clstipoliqu.CodiOfic
  loc_AC56F2: FLdUI1
  loc_AC56F6: CI2UI1
  loc_AC56F8: LitI2_Byte 1
  loc_AC56FA: EqI2
  loc_AC56FB: BranchF loc_AC5718
  loc_AC56FE: LitStr "Inmueble"
  loc_AC5701: FLdPr Me
  loc_AC5704: VCallAd Control_ID_OficinaCbo
  loc_AC5707: FStAdFunc var_90
  loc_AC570A: FLdPr var_90
  loc_AC570D: Me.Text = from_stack_1
  loc_AC5712: FFree1Ad var_90
  loc_AC5715: Branch loc_AC5783
  loc_AC5718: FLdRfVar var_8A
  loc_AC571B: FLdPr Me
  loc_AC571E: MemLdRfVar from_stack_1.global_52
  loc_AC5721: NewIfNullPr clstipoliqu
  loc_AC5724: from_stack_1 = clstipoliqu.CodiOfic
  loc_AC5729: FLdUI1
  loc_AC572D: CI2UI1
  loc_AC572F: LitI2_Byte 2
  loc_AC5731: EqI2
  loc_AC5732: BranchF loc_AC574F
  loc_AC5735: LitStr "Comercio"
  loc_AC5738: FLdPr Me
  loc_AC573B: VCallAd Control_ID_OficinaCbo
  loc_AC573E: FStAdFunc var_90
  loc_AC5741: FLdPr var_90
  loc_AC5744: Me.Text = from_stack_1
  loc_AC5749: FFree1Ad var_90
  loc_AC574C: Branch loc_AC5783
  loc_AC574F: FLdRfVar var_8A
  loc_AC5752: FLdPr Me
  loc_AC5755: MemLdRfVar from_stack_1.global_52
  loc_AC5758: NewIfNullPr clstipoliqu
  loc_AC575B: from_stack_1 = clstipoliqu.CodiOfic
  loc_AC5760: FLdUI1
  loc_AC5764: CI2UI1
  loc_AC5766: LitI2_Byte 4
  loc_AC5768: EqI2
  loc_AC5769: BranchF loc_AC5783
  loc_AC576C: LitStr "Cementerio"
  loc_AC576F: FLdPr Me
  loc_AC5772: VCallAd Control_ID_OficinaCbo
  loc_AC5775: FStAdFunc var_90
  loc_AC5778: FLdPr var_90
  loc_AC577B: Me.Text = from_stack_1
  loc_AC5780: FFree1Ad var_90
  loc_AC5783: ExitProcHresult
End Sub

Private Sub DescTiliTxt_GotFocus() '9BDE90
  'Data Table: 4D609C
  loc_9BDE7C: FLdPr Me
  loc_9BDE7F: VCallAd Control_ID_DescTiliTxt
  loc_9BDE82: CVarAd
  loc_9BDE86: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BDE8B: FFree1Var var_94 = ""
  loc_9BDE8E: ExitProcHresult
End Sub

Private Sub DescTiliTxt_KeyPress(KeyAscii As Integer) 'A07920
  'Data Table: 4D609C
  loc_A078EC: LitStr "1234567890,."
  loc_A078EF: FStStrCopy var_88
  loc_A078F2: FLdRfVar var_88
  loc_A078F5: ILdRf KeyAscii
  loc_A078F8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A078FD: IStI2 KeyAscii
  loc_A07900: FFree1Str var_88
  loc_A07903: ILdI2 KeyAscii
  loc_A07906: LitStr "."
  loc_A07909: ImpAdCallI2 Asc()
  loc_A0790E: EqI2
  loc_A0790F: BranchF loc_A0791D
  loc_A07912: LitStr ","
  loc_A07915: ImpAdCallI2 Asc()
  loc_A0791A: IStI2 KeyAscii
  loc_A0791D: ExitProcHresult
  loc_A0791E: FLdPr arg_2400
End Sub

Private Sub DescTiliTxt_LostFocus() 'A74C58
  'Data Table: 4D609C
  loc_A74BF4: FLdRfVar var_8C
  loc_A74BF7: FLdPr Me
  loc_A74BFA: VCallAd Control_ID_DescTiliTxt
  loc_A74BFD: FStAdFunc var_88
  loc_A74C00: FLdPr var_88
  loc_A74C03:  = Me.Text
  loc_A74C08: LitI4 1
  loc_A74C0D: LitI4 1
  loc_A74C12: LitVarStr var_AC, "##0.00"
  loc_A74C17: FStVarCopyObj var_BC
  loc_A74C1A: FLdRfVar var_BC
  loc_A74C1D: FLdZeroAd var_8C
  loc_A74C20: CVarStr var_9C
  loc_A74C23: FLdRfVar var_CC
  loc_A74C26: ImpAdCallFPR4  = Format(, )
  loc_A74C2B: FLdRfVar var_CC
  loc_A74C2E: CStrVarVal var_D0
  loc_A74C32: FLdPr Me
  loc_A74C35: VCallAd Control_ID_DescTiliTxt
  loc_A74C38: FStAdFunc var_D4
  loc_A74C3B: FLdPr var_D4
  loc_A74C3E: Me.Text = from_stack_1
  loc_A74C43: FFree1Str var_D0
  loc_A74C46: FFreeAd var_88 = ""
  loc_A74C4D: FFreeVar var_9C = "": var_BC = ""
  loc_A74C56: ExitProcHresult
End Sub

Private Sub DescTiliTxt_Validate(Cancel As Boolean) 'AB5784
  'Data Table: 4D609C
  loc_AB56A0: FLdRfVar var_8A
  loc_AB56A3: FLdPr Me
  loc_AB56A6: VCallAd Control_ID_cmdCancelar
  loc_AB56A9: FStAdFunc var_88
  loc_AB56AC: FLdPr var_88
  loc_AB56AF:  = Me.Value
  loc_AB56B4: FLdI2 var_8A
  loc_AB56B7: NotI4
  loc_AB56B8: FLdRfVar var_92
  loc_AB56BB: FLdPr Me
  loc_AB56BE: VCallAd Control_ID_DescTiliTxt
  loc_AB56C1: FStAdFunc var_90
  loc_AB56C4: FLdPr var_90
  loc_AB56C7:  = Me.Enabled
  loc_AB56CC: FLdI2 var_92
  loc_AB56CF: AndI4
  loc_AB56D0: FFreeAd var_88 = ""
  loc_AB56D7: BranchF loc_AB5782
  loc_AB56DA: FLdRfVar var_98
  loc_AB56DD: FLdPr Me
  loc_AB56E0: VCallAd Control_ID_DescTiliTxt
  loc_AB56E3: FStAdFunc var_88
  loc_AB56E6: FLdPr var_88
  loc_AB56E9:  = Me.Text
  loc_AB56EE: FLdZeroAd var_98
  loc_AB56F1: CVarStr var_A8
  loc_AB56F4: ImpAdCallI2 IsNumeric()
  loc_AB56F9: NotI4
  loc_AB56FA: FFree1Ad var_88
  loc_AB56FD: FFree1Var var_A8 = ""
  loc_AB5700: BranchF loc_AB571A
  loc_AB5703: LitStr "0"
  loc_AB5706: FLdPr Me
  loc_AB5709: VCallAd Control_ID_DescTiliTxt
  loc_AB570C: FStAdFunc var_88
  loc_AB570F: FLdPr var_88
  loc_AB5712: Me.Text = from_stack_1
  loc_AB5717: FFree1Ad var_88
  loc_AB571A: FLdRfVar var_98
  loc_AB571D: FLdPr Me
  loc_AB5720: VCallAd Control_ID_DescTiliTxt
  loc_AB5723: FStAdFunc var_88
  loc_AB5726: FLdPr var_88
  loc_AB5729:  = Me.Text
  loc_AB572E: LitI2_Byte &HFF
  loc_AB5730: LitI2_Byte 0
  loc_AB5732: ILdRf var_98
  loc_AB5735: LitStr "ingrese descuento"
  loc_AB5738: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AB573D: FStStrNoPop var_AC
  loc_AB5740: FLdPr Me
  loc_AB5743: MemStStrCopy
  loc_AB5747: FFreeStr var_98 = ""
  loc_AB574E: FFree1Ad var_88
  loc_AB5751: FLdPr Me
  loc_AB5754: MemLdStr global_60
  loc_AB5757: LitStr vbNullString
  loc_AB575A: NeStr
  loc_AB575C: BranchF loc_AB5782
  loc_AB575F: FLdPr Me
  loc_AB5762: MemLdStr global_60
  loc_AB5765: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB576A: FLdPr Me
  loc_AB576D: VCallAd Control_ID_DescTiliTxt
  loc_AB5770: CVarAd
  loc_AB5774: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB5779: FFree1Var var_A8 = ""
  loc_AB577C: LitI2_Byte &HFF
  loc_AB577E: IStI2 Cancel
  loc_AB5781: ExitProcHresult
  loc_AB5782: ExitProcHresult
  loc_AB5783: ExitProcR4
End Sub

Private Sub cmdCancelar_Click() 'A761B0
  'Data Table: 4D609C
  loc_A76144: LitI2_Byte 0
  loc_A76146: FLdPr Me
  loc_A76149: MemStI2 global_56
  loc_A7614C: LitI2_Byte 0
  loc_A7614E: ILdRf Me
  loc_A76151: CastAd
  loc_A76154: FStAdFunc var_88
  loc_A76157: FLdRfVar var_88
  loc_A7615A: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_A7615F: FFree1Ad var_88
  loc_A76162: LitI4 0
  loc_A76167: LitI4 0
  loc_A7616C: FLdRfVar var_8C
  loc_A7616F: Redim
  loc_A76179: FLdPr Me
  loc_A7617C: VCallAd Control_ID_dgdABMS
  loc_A7617F: CVarAd
  loc_A76183: ParmAry1St
  loc_A76189: FLdRfVar var_8C
  loc_A7618C: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A76191: FLdRfVar var_8C
  loc_A76194: Erase
  loc_A76195: Call EnlazaTodo()
  loc_A7619A: ILdRf Me
  loc_A7619D: CastAd
  loc_A761A0: FStAdFunc var_88
  loc_A761A3: FLdRfVar var_88
  loc_A761A6: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_A761AB: FFree1Ad var_88
  loc_A761AE: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BFF784
  'Data Table: 4D609C
  loc_BFEEEC: ILdRf Button
  loc_BFEEEF: FStAd var_88 
  loc_BFEEF3: FLdRfVar var_8C
  loc_BFEEF6: FLdPr var_88
  loc_BFEEF9:  = Me.Key
  loc_BFEEFE: FLdZeroAd var_8C
  loc_BFEF01: FStStr var_90
  loc_BFEF04: ILdRf var_90
  loc_BFEF07: LitStr "btnCrear"
  loc_BFEF0A: EqStr
  loc_BFEF0C: BranchF loc_BFF159
  loc_BFEF0F: LitI2_Byte 1
  loc_BFEF11: FLdPr Me
  loc_BFEF14: MemStI2 global_56
  loc_BFEF17: ILdRf Me
  loc_BFEF1A: CastAd
  loc_BFEF1D: FStAdFunc var_94
  loc_BFEF20: FLdRfVar var_94
  loc_BFEF23: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BFEF28: FFree1Ad var_94
  loc_BFEF2B: LitI4 0
  loc_BFEF30: LitI4 0
  loc_BFEF35: FLdRfVar var_98
  loc_BFEF38: Redim
  loc_BFEF42: FLdPr Me
  loc_BFEF45: VCallAd Control_ID_dgdABMS
  loc_BFEF48: CVarAd
  loc_BFEF4C: ParmAry1St
  loc_BFEF52: FLdRfVar var_98
  loc_BFEF55: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BFEF5A: FLdRfVar var_98
  loc_BFEF5D: Erase
  loc_BFEF5E: ILdRf Me
  loc_BFEF61: CastAd
  loc_BFEF64: FStAdFunc var_94
  loc_BFEF67: FLdRfVar var_94
  loc_BFEF6A: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BFEF6F: FFree1Ad var_94
  loc_BFEF72: ILdRf Me
  loc_BFEF75: CastAd
  loc_BFEF78: FStAdFunc var_94
  loc_BFEF7B: FLdRfVar var_94
  loc_BFEF7E: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_BFEF83: FFree1Ad var_94
  loc_BFEF86: LitI4 1
  loc_BFEF8B: LitI4 1
  loc_BFEF90: LitVarStr var_C8, "0.00"
  loc_BFEF95: FStVarCopyObj var_D8
  loc_BFEF98: FLdRfVar var_D8
  loc_BFEF9B: LitVarStr var_B8, "0"
  loc_BFEFA0: FStVarCopyObj var_A8
  loc_BFEFA3: FLdRfVar var_A8
  loc_BFEFA6: FLdRfVar var_E8
  loc_BFEFA9: ImpAdCallFPR4  = Format(, )
  loc_BFEFAE: FLdRfVar var_E8
  loc_BFEFB1: CStrVarVal var_8C
  loc_BFEFB5: FLdPr Me
  loc_BFEFB8: VCallAd Control_ID_DescTiliTxt
  loc_BFEFBB: FStAdFunc var_94
  loc_BFEFBE: FLdPr var_94
  loc_BFEFC1: Me.Text = from_stack_1
  loc_BFEFC6: FFree1Str var_8C
  loc_BFEFC9: FFree1Ad var_94
  loc_BFEFCC: FFreeVar var_A8 = "": var_D8 = ""
  loc_BFEFD5: LitI4 1
  loc_BFEFDA: LitI4 1
  loc_BFEFDF: LitVarStr var_C8, "0.00"
  loc_BFEFE4: FStVarCopyObj var_D8
  loc_BFEFE7: FLdRfVar var_D8
  loc_BFEFEA: LitVarStr var_B8, "0"
  loc_BFEFEF: FStVarCopyObj var_A8
  loc_BFEFF2: FLdRfVar var_A8
  loc_BFEFF5: FLdRfVar var_E8
  loc_BFEFF8: ImpAdCallFPR4  = Format(, )
  loc_BFEFFD: FLdRfVar var_E8
  loc_BFF000: CStrVarVal var_8C
  loc_BFF004: FLdPr Me
  loc_BFF007: VCallAd Control_ID_DeanTiliTxt
  loc_BFF00A: FStAdFunc var_94
  loc_BFF00D: FLdPr var_94
  loc_BFF010: Me.Text = from_stack_1
  loc_BFF015: FFree1Str var_8C
  loc_BFF018: FFree1Ad var_94
  loc_BFF01B: FFreeVar var_A8 = "": var_D8 = ""
  loc_BFF024: LitI4 1
  loc_BFF029: LitI4 1
  loc_BFF02E: LitVarStr var_C8, "0.00"
  loc_BFF033: FStVarCopyObj var_D8
  loc_BFF036: FLdRfVar var_D8
  loc_BFF039: LitVarStr var_B8, "0"
  loc_BFF03E: FStVarCopyObj var_A8
  loc_BFF041: FLdRfVar var_A8
  loc_BFF044: FLdRfVar var_E8
  loc_BFF047: ImpAdCallFPR4  = Format(, )
  loc_BFF04C: FLdRfVar var_E8
  loc_BFF04F: CStrVarVal var_8C
  loc_BFF053: FLdPr Me
  loc_BFF056: VCallAd Control_ID_GastTiliTxt
  loc_BFF059: FStAdFunc var_94
  loc_BFF05C: FLdPr var_94
  loc_BFF05F: Me.Text = from_stack_1
  loc_BFF064: FFree1Str var_8C
  loc_BFF067: FFree1Ad var_94
  loc_BFF06A: FFreeVar var_A8 = "": var_D8 = ""
  loc_BFF073: LitI4 0
  loc_BFF078: LitI4 &HB
  loc_BFF07D: FLdRfVar var_98
  loc_BFF080: Redim
  loc_BFF08A: FLdPr Me
  loc_BFF08D: VCallAd Control_ID_OficinaCbo
  loc_BFF090: CVarAd
  loc_BFF094: ParmAry1St
  loc_BFF09A: FLdPr Me
  loc_BFF09D: VCallAd Control_ID_CodiTiliTxt
  loc_BFF0A0: CVarAd
  loc_BFF0A4: ParmAry1St
  loc_BFF0AA: FLdPr Me
  loc_BFF0AD: VCallAd Control_ID_DetaTiliTxt
  loc_BFF0B0: CVarAd
  loc_BFF0B4: ParmAry1St
  loc_BFF0BA: FLdPr Me
  loc_BFF0BD: VCallAd Control_ID_ConcTiliMsk
  loc_BFF0C0: CVarAd
  loc_BFF0C4: ParmAry1St
  loc_BFF0CA: FLdPr Me
  loc_BFF0CD: VCallAd Control_ID_CoreTiliMsk
  loc_BFF0D0: CVarAd
  loc_BFF0D4: ParmAry1St
  loc_BFF0DA: FLdPr Me
  loc_BFF0DD: VCallAd Control_ID_CogaTiliTxt
  loc_BFF0E0: CVarAd
  loc_BFF0E4: ParmAry1St
  loc_BFF0EA: FLdPr Me
  loc_BFF0ED: VCallAd Control_ID_DescTiliTxt
  loc_BFF0F0: CVarAd
  loc_BFF0F4: ParmAry1St
  loc_BFF0FA: FLdPr Me
  loc_BFF0FD: VCallAd Control_ID_DeanTiliTxt
  loc_BFF100: CVarAd
  loc_BFF104: ParmAry1St
  loc_BFF10A: FLdPr Me
  loc_BFF10D: VCallAd Control_ID_GastTiliTxt
  loc_BFF110: CVarAd
  loc_BFF114: ParmAry1St
  loc_BFF11A: FLdPr Me
  loc_BFF11D: VCallAd Control_ID_ConcTiliCmd
  loc_BFF120: CVarAd
  loc_BFF124: ParmAry1St
  loc_BFF12A: FLdPr Me
  loc_BFF12D: VCallAd Control_ID_CoreTiliCmd
  loc_BFF130: CVarAd
  loc_BFF134: ParmAry1St
  loc_BFF13A: FLdPr Me
  loc_BFF13D: VCallAd Control_ID_LeyeTiliTxt
  loc_BFF140: CVarAd
  loc_BFF144: ParmAry1St
  loc_BFF14A: FLdRfVar var_98
  loc_BFF14D: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BFF152: FLdRfVar var_98
  loc_BFF155: Erase
  loc_BFF156: Branch loc_BFF780
  loc_BFF159: ILdRf var_90
  loc_BFF15C: LitStr "btnModificar"
  loc_BFF15F: EqStr
  loc_BFF161: BranchF loc_BFF2AA
  loc_BFF164: FLdRfVar var_17C
  loc_BFF167: FLdPr Me
  loc_BFF16A: MemLdRfVar from_stack_1.global_52
  loc_BFF16D: NewIfNullPr clstipoliqu
  loc_BFF170: from_stack_1 = clstipoliqu.RecordCount
  loc_BFF175: ILdRf var_17C
  loc_BFF178: LitI4 0
  loc_BFF17D: GtI4
  loc_BFF17E: BranchF loc_BFF2A7
  loc_BFF181: LitI2_Byte 2
  loc_BFF183: FLdPr Me
  loc_BFF186: MemStI2 global_56
  loc_BFF189: ILdRf Me
  loc_BFF18C: CastAd
  loc_BFF18F: FStAdFunc var_94
  loc_BFF192: FLdRfVar var_94
  loc_BFF195: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BFF19A: FFree1Ad var_94
  loc_BFF19D: LitI4 0
  loc_BFF1A2: LitI4 0
  loc_BFF1A7: FLdRfVar var_98
  loc_BFF1AA: Redim
  loc_BFF1B4: FLdPr Me
  loc_BFF1B7: VCallAd Control_ID_dgdABMS
  loc_BFF1BA: CVarAd
  loc_BFF1BE: ParmAry1St
  loc_BFF1C4: FLdRfVar var_98
  loc_BFF1C7: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BFF1CC: FLdRfVar var_98
  loc_BFF1CF: Erase
  loc_BFF1D0: ILdRf Me
  loc_BFF1D3: CastAd
  loc_BFF1D6: FStAdFunc var_94
  loc_BFF1D9: FLdRfVar var_94
  loc_BFF1DC: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BFF1E1: FFree1Ad var_94
  loc_BFF1E4: LitI4 0
  loc_BFF1E9: LitI4 9
  loc_BFF1EE: FLdRfVar var_98
  loc_BFF1F1: Redim
  loc_BFF1FB: FLdPr Me
  loc_BFF1FE: VCallAd Control_ID_DetaTiliTxt
  loc_BFF201: CVarAd
  loc_BFF205: ParmAry1St
  loc_BFF20B: FLdPr Me
  loc_BFF20E: VCallAd Control_ID_ConcTiliMsk
  loc_BFF211: CVarAd
  loc_BFF215: ParmAry1St
  loc_BFF21B: FLdPr Me
  loc_BFF21E: VCallAd Control_ID_CoreTiliMsk
  loc_BFF221: CVarAd
  loc_BFF225: ParmAry1St
  loc_BFF22B: FLdPr Me
  loc_BFF22E: VCallAd Control_ID_CogaTiliTxt
  loc_BFF231: CVarAd
  loc_BFF235: ParmAry1St
  loc_BFF23B: FLdPr Me
  loc_BFF23E: VCallAd Control_ID_DescTiliTxt
  loc_BFF241: CVarAd
  loc_BFF245: ParmAry1St
  loc_BFF24B: FLdPr Me
  loc_BFF24E: VCallAd Control_ID_DeanTiliTxt
  loc_BFF251: CVarAd
  loc_BFF255: ParmAry1St
  loc_BFF25B: FLdPr Me
  loc_BFF25E: VCallAd Control_ID_GastTiliTxt
  loc_BFF261: CVarAd
  loc_BFF265: ParmAry1St
  loc_BFF26B: FLdPr Me
  loc_BFF26E: VCallAd Control_ID_ConcTiliCmd
  loc_BFF271: CVarAd
  loc_BFF275: ParmAry1St
  loc_BFF27B: FLdPr Me
  loc_BFF27E: VCallAd Control_ID_CoreTiliCmd
  loc_BFF281: CVarAd
  loc_BFF285: ParmAry1St
  loc_BFF28B: FLdPr Me
  loc_BFF28E: VCallAd Control_ID_LeyeTiliTxt
  loc_BFF291: CVarAd
  loc_BFF295: ParmAry1St
  loc_BFF29B: FLdRfVar var_98
  loc_BFF29E: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BFF2A3: FLdRfVar var_98
  loc_BFF2A6: Erase
  loc_BFF2A7: Branch loc_BFF780
  loc_BFF2AA: ILdRf var_90
  loc_BFF2AD: LitStr "btnEliminar"
  loc_BFF2B0: EqStr
  loc_BFF2B2: BranchF loc_BFF307
  loc_BFF2B5: FLdRfVar var_17C
  loc_BFF2B8: FLdPr Me
  loc_BFF2BB: MemLdRfVar from_stack_1.global_52
  loc_BFF2BE: NewIfNullPr clstipoliqu
  loc_BFF2C1: from_stack_1 = clstipoliqu.RecordCount
  loc_BFF2C6: ILdRf var_17C
  loc_BFF2C9: LitI4 0
  loc_BFF2CE: GtI4
  loc_BFF2CF: BranchF loc_BFF304
  loc_BFF2D2: LitVar_Missing var_F8
  loc_BFF2D5: LitVar_Missing var_E8
  loc_BFF2D8: LitVar_Missing var_D8
  loc_BFF2DB: LitI4 4
  loc_BFF2E0: LitVarStr var_B8, "¿Desea eliminar el registro?"
  loc_BFF2E5: FStVarCopyObj var_A8
  loc_BFF2E8: FLdRfVar var_A8
  loc_BFF2EB: ImpAdCallI2 MsgBox(, , , , )
  loc_BFF2F0: LitI4 6
  loc_BFF2F5: EqI4
  loc_BFF2F6: FFreeVar var_A8 = "": var_D8 = "": var_E8 = ""
  loc_BFF301: BranchF loc_BFF304
  loc_BFF304: Branch loc_BFF780
  loc_BFF307: ILdRf var_90
  loc_BFF30A: LitStr "btnGuardar"
  loc_BFF30D: EqStr
  loc_BFF30F: BranchF loc_BFF67C
  loc_BFF312: LitStr vbNullString
  loc_BFF315: FLdPr Me
  loc_BFF318: MemStStrCopy
  loc_BFF31C: LitI2_Byte 0
  loc_BFF31E: PopTmpLdAd2 var_19E
  loc_BFF321: Call CodiTiliTxt_Validate(from_stack_1v)
  loc_BFF326: FLdPr Me
  loc_BFF329: MemLdStr global_60
  loc_BFF32C: LitStr vbNullString
  loc_BFF32F: NeStr
  loc_BFF331: BranchF loc_BFF335
  loc_BFF334: ExitProcHresult
  loc_BFF335: LitI2_Byte 0
  loc_BFF337: PopTmpLdAd2 var_19E
  loc_BFF33A: Call DetaTiliTxt_Validate(from_stack_1v)
  loc_BFF33F: FLdPr Me
  loc_BFF342: MemLdStr global_60
  loc_BFF345: LitStr vbNullString
  loc_BFF348: NeStr
  loc_BFF34A: BranchF loc_BFF34E
  loc_BFF34D: ExitProcHresult
  loc_BFF34E: LitI2_Byte 0
  loc_BFF350: PopTmpLdAd2 var_19E
  loc_BFF353: Call ConcTiliMsk_UnknownEvent_8()
  loc_BFF358: FLdPr Me
  loc_BFF35B: MemLdStr global_60
  loc_BFF35E: LitStr vbNullString
  loc_BFF361: NeStr
  loc_BFF363: BranchF loc_BFF367
  loc_BFF366: ExitProcHresult
  loc_BFF367: LitI2_Byte 0
  loc_BFF369: PopTmpLdAd2 var_19E
  loc_BFF36C: Call CoreTiliMsk_UnknownEvent_8()
  loc_BFF371: FLdPr Me
  loc_BFF374: MemLdStr global_60
  loc_BFF377: LitStr vbNullString
  loc_BFF37A: NeStr
  loc_BFF37C: BranchF loc_BFF380
  loc_BFF37F: ExitProcHresult
  loc_BFF380: LitI2_Byte 0
  loc_BFF382: PopTmpLdAd2 var_19E
  loc_BFF385: Call DescTiliTxt_Validate(from_stack_1v)
  loc_BFF38A: FLdPr Me
  loc_BFF38D: MemLdStr global_60
  loc_BFF390: LitStr vbNullString
  loc_BFF393: NeStr
  loc_BFF395: BranchF loc_BFF399
  loc_BFF398: ExitProcHresult
  loc_BFF399: LitI2_Byte 0
  loc_BFF39B: PopTmpLdAd2 var_19E
  loc_BFF39E: Call DeanTiliTxt_Validate(from_stack_1v)
  loc_BFF3A3: FLdPr Me
  loc_BFF3A6: MemLdStr global_60
  loc_BFF3A9: LitStr vbNullString
  loc_BFF3AC: NeStr
  loc_BFF3AE: BranchF loc_BFF3B2
  loc_BFF3B1: ExitProcHresult
  loc_BFF3B2: LitI2_Byte 0
  loc_BFF3B4: PopTmpLdAd2 var_19E
  loc_BFF3B7: Call CogaTiliTxt_Validate(from_stack_1v)
  loc_BFF3BC: FLdPr Me
  loc_BFF3BF: MemLdStr global_60
  loc_BFF3C2: LitStr vbNullString
  loc_BFF3C5: NeStr
  loc_BFF3C7: BranchF loc_BFF3CB
  loc_BFF3CA: ExitProcHresult
  loc_BFF3CB: LitI2_Byte 0
  loc_BFF3CD: PopTmpLdAd2 var_19E
  loc_BFF3D0: Call GastTiliTxt_Validate(from_stack_1v)
  loc_BFF3D5: FLdPr Me
  loc_BFF3D8: MemLdStr global_60
  loc_BFF3DB: LitStr vbNullString
  loc_BFF3DE: NeStr
  loc_BFF3E0: BranchF loc_BFF3E4
  loc_BFF3E3: ExitProcHresult
  loc_BFF3E4: FLdPr Me
  loc_BFF3E7: MemLdI2 global_56
  loc_BFF3EA: FStI2 var_1A0
  loc_BFF3ED: FLdI2 var_1A0
  loc_BFF3F0: LitI2_Byte 1
  loc_BFF3F2: EqI2
  loc_BFF3F3: BranchF loc_BFF52B
  loc_BFF3F6: FLdRfVar var_8C
  loc_BFF3F9: FLdPr Me
  loc_BFF3FC: VCallAd Control_ID_CodiTiliTxt
  loc_BFF3FF: FStAdFunc var_94
  loc_BFF402: FLdPr var_94
  loc_BFF405:  = Me.Text
  loc_BFF40A: FLdRfVar var_1A8
  loc_BFF40D: FLdPr Me
  loc_BFF410: VCallAd Control_ID_DetaTiliTxt
  loc_BFF413: FStAdFunc var_1A4
  loc_BFF416: FLdPr var_1A4
  loc_BFF419:  = Me.Text
  loc_BFF41E: FLdPr Me
  loc_BFF421: VCallAd Control_ID_ConcTiliMsk
  loc_BFF424: FStAdFunc var_1AC
  loc_BFF427: FLdPr var_1AC
  loc_BFF42A: LateIdLdVar var_A8 DispID_22 0
  loc_BFF431: PopAd
  loc_BFF433: FLdPr Me
  loc_BFF436: VCallAd Control_ID_CoreTiliMsk
  loc_BFF439: FStAdFunc var_1B0
  loc_BFF43C: FLdPr var_1B0
  loc_BFF43F: LateIdLdVar var_D8 DispID_22 0
  loc_BFF446: PopAd
  loc_BFF448: FLdRfVar var_1B8
  loc_BFF44B: FLdPr Me
  loc_BFF44E: VCallAd Control_ID_DescTiliTxt
  loc_BFF451: FStAdFunc var_1B4
  loc_BFF454: FLdPr var_1B4
  loc_BFF457:  = Me.Text
  loc_BFF45C: FLdRfVar var_1E0
  loc_BFF45F: FLdPr Me
  loc_BFF462: VCallAd Control_ID_DeanTiliTxt
  loc_BFF465: FStAdFunc var_1DC
  loc_BFF468: FLdPr var_1DC
  loc_BFF46B:  = Me.Text
  loc_BFF470: FLdRfVar var_1C0
  loc_BFF473: FLdPr Me
  loc_BFF476: VCallAd Control_ID_GastTiliTxt
  loc_BFF479: FStAdFunc var_1BC
  loc_BFF47C: FLdPr var_1BC
  loc_BFF47F:  = Me.Text
  loc_BFF484: FLdRfVar var_1C8
  loc_BFF487: FLdPr Me
  loc_BFF48A: VCallAd Control_ID_LeyeTiliTxt
  loc_BFF48D: FStAdFunc var_1C4
  loc_BFF490: FLdPr var_1C4
  loc_BFF493:  = Me.Text
  loc_BFF498: FLdRfVar var_1D0
  loc_BFF49B: FLdPr Me
  loc_BFF49E: VCallAd Control_ID_CogaTiliTxt
  loc_BFF4A1: FStAdFunc var_1CC
  loc_BFF4A4: FLdPr var_1CC
  loc_BFF4A7:  = Me.Text
  loc_BFF4AC: LitI4 0
  loc_BFF4B1: ILdRf var_1D0
  loc_BFF4B4: CR8Str
  loc_BFF4B6: PopFPR8
  loc_BFF4B7: ILdRf var_1C8
  loc_BFF4BA: ILdRf var_1C0
  loc_BFF4BD: CR8Str
  loc_BFF4BF: PopFPR8
  loc_BFF4C0: ILdRf var_1E0
  loc_BFF4C3: CR8Str
  loc_BFF4C5: PopFPR8
  loc_BFF4C6: ILdRf var_1B8
  loc_BFF4C9: CR8Str
  loc_BFF4CB: PopFPR8
  loc_BFF4CC: FLdRfVar var_D8
  loc_BFF4CF: CStrVarTmp
  loc_BFF4D0: FStStrNoPop var_1D8
  loc_BFF4D3: FLdRfVar var_A8
  loc_BFF4D6: CStrVarTmp
  loc_BFF4D7: FStStrNoPop var_1D4
  loc_BFF4DA: ILdRf var_1A8
  loc_BFF4DD: ILdRf var_8C
  loc_BFF4E0: CI2Str
  loc_BFF4E2: FLdPr Me
  loc_BFF4E5: MemLdUI1 global_64
  loc_BFF4E9: FLdPr Me
  loc_BFF4EC: MemLdRfVar from_stack_1.global_52
  loc_BFF4EF: NewIfNullPr clstipoliqu
  loc_BFF4F2: Call clstipoliqu.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v)
  loc_BFF4F7: FFreeStr var_8C = "": var_1A8 = "": var_1D4 = "": var_1D8 = "": var_1B8 = "": var_1E0 = "": var_1C0 = "": var_1C8 = ""
  loc_BFF50C: FFreeAd var_94 = "": var_1A4 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1BC = "": var_1C4 = "": var_1CC = ""
  loc_BFF521: FFreeVar var_A8 = ""
  loc_BFF528: Branch loc_BFF674
  loc_BFF52B: FLdI2 var_1A0
  loc_BFF52E: LitI2_Byte 2
  loc_BFF530: EqI2
  loc_BFF531: BranchF loc_BFF674
  loc_BFF534: FLdRfVar var_19E
  loc_BFF537: FLdPr Me
  loc_BFF53A: MemLdRfVar from_stack_1.global_52
  loc_BFF53D: NewIfNullPr clstipoliqu
  loc_BFF540: from_stack_1 = clstipoliqu.CodiOfic
  loc_BFF545: FLdRfVar var_8C
  loc_BFF548: FLdPr Me
  loc_BFF54B: VCallAd Control_ID_CodiTiliTxt
  loc_BFF54E: FStAdFunc var_94
  loc_BFF551: FLdPr var_94
  loc_BFF554:  = Me.Text
  loc_BFF559: FLdRfVar var_1A8
  loc_BFF55C: FLdPr Me
  loc_BFF55F: VCallAd Control_ID_DetaTiliTxt
  loc_BFF562: FStAdFunc var_1A4
  loc_BFF565: FLdPr var_1A4
  loc_BFF568:  = Me.Text
  loc_BFF56D: FLdPr Me
  loc_BFF570: VCallAd Control_ID_ConcTiliMsk
  loc_BFF573: FStAdFunc var_1AC
  loc_BFF576: FLdPr var_1AC
  loc_BFF579: LateIdLdVar var_A8 DispID_22 0
  loc_BFF580: PopAd
  loc_BFF582: FLdPr Me
  loc_BFF585: VCallAd Control_ID_CoreTiliMsk
  loc_BFF588: FStAdFunc var_1B0
  loc_BFF58B: FLdPr var_1B0
  loc_BFF58E: LateIdLdVar var_D8 DispID_22 0
  loc_BFF595: PopAd
  loc_BFF597: FLdRfVar var_1B8
  loc_BFF59A: FLdPr Me
  loc_BFF59D: VCallAd Control_ID_DescTiliTxt
  loc_BFF5A0: FStAdFunc var_1B4
  loc_BFF5A3: FLdPr var_1B4
  loc_BFF5A6:  = Me.Text
  loc_BFF5AB: FLdRfVar var_1C0
  loc_BFF5AE: FLdPr Me
  loc_BFF5B1: VCallAd Control_ID_DeanTiliTxt
  loc_BFF5B4: FStAdFunc var_1BC
  loc_BFF5B7: FLdPr var_1BC
  loc_BFF5BA:  = Me.Text
  loc_BFF5BF: FLdRfVar var_1C8
  loc_BFF5C2: FLdPr Me
  loc_BFF5C5: VCallAd Control_ID_GastTiliTxt
  loc_BFF5C8: FStAdFunc var_1C4
  loc_BFF5CB: FLdPr var_1C4
  loc_BFF5CE:  = Me.Text
  loc_BFF5D3: FLdRfVar var_1D0
  loc_BFF5D6: FLdPr Me
  loc_BFF5D9: VCallAd Control_ID_LeyeTiliTxt
  loc_BFF5DC: FStAdFunc var_1CC
  loc_BFF5DF: FLdPr var_1CC
  loc_BFF5E2:  = Me.Text
  loc_BFF5E7: FLdRfVar var_1D4
  loc_BFF5EA: FLdPr Me
  loc_BFF5ED: VCallAd Control_ID_CogaTiliTxt
  loc_BFF5F0: FStAdFunc var_1DC
  loc_BFF5F3: FLdPr var_1DC
  loc_BFF5F6:  = Me.Text
  loc_BFF5FB: LitI4 0
  loc_BFF600: ILdRf var_1D4
  loc_BFF603: CR8Str
  loc_BFF605: PopFPR8
  loc_BFF606: ILdRf var_1D0
  loc_BFF609: ILdRf var_1C8
  loc_BFF60C: CR8Str
  loc_BFF60E: PopFPR8
  loc_BFF60F: ILdRf var_1C0
  loc_BFF612: CR8Str
  loc_BFF614: PopFPR8
  loc_BFF615: ILdRf var_1B8
  loc_BFF618: CR8Str
  loc_BFF61A: PopFPR8
  loc_BFF61B: FLdRfVar var_D8
  loc_BFF61E: CStrVarTmp
  loc_BFF61F: FStStrNoPop var_1E0
  loc_BFF622: FLdRfVar var_A8
  loc_BFF625: CStrVarTmp
  loc_BFF626: FStStrNoPop var_1D8
  loc_BFF629: ILdRf var_1A8
  loc_BFF62C: ILdRf var_8C
  loc_BFF62F: CI2Str
  loc_BFF631: FLdUI1
  loc_BFF635: FLdPr Me
  loc_BFF638: MemLdRfVar from_stack_1.global_52
  loc_BFF63B: NewIfNullPr clstipoliqu
  loc_BFF63E: Call clstipoliqu.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v)
  loc_BFF643: FFreeStr var_8C = "": var_1A8 = "": var_1D8 = "": var_1E0 = "": var_1B8 = "": var_1C0 = "": var_1C8 = "": var_1D0 = ""
  loc_BFF658: FFreeAd var_94 = "": var_1A4 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1BC = "": var_1C4 = "": var_1CC = ""
  loc_BFF66D: FFreeVar var_A8 = ""
  loc_BFF674: Call cmdCancelar_Click()
  loc_BFF679: Branch loc_BFF780
  loc_BFF67C: ILdRf var_90
  loc_BFF67F: LitStr "btnCancelar"
  loc_BFF682: EqStr
  loc_BFF684: BranchF loc_BFF68F
  loc_BFF687: Call cmdCancelar_Click()
  loc_BFF68C: Branch loc_BFF780
  loc_BFF68F: ILdRf var_90
  loc_BFF692: LitStr "btnPrimero"
  loc_BFF695: EqStr
  loc_BFF697: BranchF loc_BFF6AB
  loc_BFF69A: FLdPr Me
  loc_BFF69D: MemLdRfVar from_stack_1.global_52
  loc_BFF6A0: NewIfNullPr clstipoliqu
  loc_BFF6A3: Call clstipoliqu.MoveFirst()
  loc_BFF6A8: Branch loc_BFF780
  loc_BFF6AB: ILdRf var_90
  loc_BFF6AE: LitStr "btnAnterior"
  loc_BFF6B1: EqStr
  loc_BFF6B3: BranchF loc_BFF6C7
  loc_BFF6B6: FLdPr Me
  loc_BFF6B9: MemLdRfVar from_stack_1.global_52
  loc_BFF6BC: NewIfNullPr clstipoliqu
  loc_BFF6BF: Call clstipoliqu.MovePrevious()
  loc_BFF6C4: Branch loc_BFF780
  loc_BFF6C7: ILdRf var_90
  loc_BFF6CA: LitStr "btnSiguiente"
  loc_BFF6CD: EqStr
  loc_BFF6CF: BranchF loc_BFF6E3
  loc_BFF6D2: FLdPr Me
  loc_BFF6D5: MemLdRfVar from_stack_1.global_52
  loc_BFF6D8: NewIfNullPr clstipoliqu
  loc_BFF6DB: Call clstipoliqu.MoveNext()
  loc_BFF6E0: Branch loc_BFF780
  loc_BFF6E3: ILdRf var_90
  loc_BFF6E6: LitStr "btnUltimo"
  loc_BFF6E9: EqStr
  loc_BFF6EB: BranchF loc_BFF6FF
  loc_BFF6EE: FLdPr Me
  loc_BFF6F1: MemLdRfVar from_stack_1.global_52
  loc_BFF6F4: NewIfNullPr clstipoliqu
  loc_BFF6F7: Call clstipoliqu.MoveLast()
  loc_BFF6FC: Branch loc_BFF780
  loc_BFF6FF: ILdRf var_90
  loc_BFF702: LitStr "btnFiltrar"
  loc_BFF705: EqStr
  loc_BFF707: BranchF loc_BFF70D
  loc_BFF70A: Branch loc_BFF780
  loc_BFF70D: ILdRf var_90
  loc_BFF710: LitStr "btnBuscar"
  loc_BFF713: EqStr
  loc_BFF715: BranchF loc_BFF71B
  loc_BFF718: Branch loc_BFF780
  loc_BFF71B: ILdRf var_90
  loc_BFF71E: LitStr "btnImprimir"
  loc_BFF721: EqStr
  loc_BFF723: BranchF loc_BFF729
  loc_BFF726: Branch loc_BFF780
  loc_BFF729: ILdRf var_90
  loc_BFF72C: LitStr "btnAyuda"
  loc_BFF72F: EqStr
  loc_BFF731: BranchF loc_BFF760
  loc_BFF734: LitVar_Missing var_F8
  loc_BFF737: LitVar_Missing var_E8
  loc_BFF73A: LitVar_Missing var_D8
  loc_BFF73D: LitI4 0
  loc_BFF742: LitVarStr var_B8, "Opcion no disponible en esta version."
  loc_BFF747: FStVarCopyObj var_A8
  loc_BFF74A: FLdRfVar var_A8
  loc_BFF74D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BFF752: FFreeVar var_A8 = "": var_D8 = "": var_E8 = ""
  loc_BFF75D: Branch loc_BFF780
  loc_BFF760: ILdRf var_90
  loc_BFF763: LitStr "btnSalir"
  loc_BFF766: EqStr
  loc_BFF768: BranchF loc_BFF780
  loc_BFF76B: ILdRf Me
  loc_BFF76E: FStAdNoPop
  loc_BFF772: ImpAdLdRf MemVar_D9C5D8
  loc_BFF775: NewIfNullPr Global
  loc_BFF778: Global.Unload from_stack_1
  loc_BFF77D: FFree1Ad var_94
  loc_BFF780: ExitProcHresult
  loc_BFF783: CStrVarTmp
End Sub

Private Sub LeyeTiliTxt_GotFocus() '9BE088
  'Data Table: 4D609C
  loc_9BE074: FLdPr Me
  loc_9BE077: VCallAd Control_ID_LeyeTiliTxt
  loc_9BE07A: CVarAd
  loc_9BE07E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE083: FFree1Var var_94 = ""
  loc_9BE086: ExitProcHresult
  loc_9BE087: ExitProcR4
End Sub

Private Sub CodiTiliTxt_GotFocus() '9C1640
  'Data Table: 4D609C
  loc_9C162C: FLdPr Me
  loc_9C162F: VCallAd Control_ID_CodiTiliTxt
  loc_9C1632: CVarAd
  loc_9C1636: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C163B: FFree1Var var_94 = ""
  loc_9C163E: ExitProcHresult
End Sub

Private Sub CodiTiliTxt_KeyPress(KeyAscii As Integer) '9D5FCC
  'Data Table: 4D609C
  loc_9D5FB4: LitStr "0123456789"
  loc_9D5FB7: FStStrCopy var_88
  loc_9D5FBA: FLdRfVar var_88
  loc_9D5FBD: ILdRf KeyAscii
  loc_9D5FC0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D5FC5: IStI2 KeyAscii
  loc_9D5FC8: FFree1Str var_88
  loc_9D5FCB: ExitProcHresult
End Sub

Private Sub CodiTiliTxt_Validate(Cancel As Boolean) 'AE6D4C
  'Data Table: 4D609C
  loc_AE6BD4: FLdRfVar var_8A
  loc_AE6BD7: FLdPr Me
  loc_AE6BDA: VCallAd Control_ID_cmdCancelar
  loc_AE6BDD: FStAdFunc var_88
  loc_AE6BE0: FLdPr var_88
  loc_AE6BE3:  = Me.Value
  loc_AE6BE8: FLdI2 var_8A
  loc_AE6BEB: NotI4
  loc_AE6BEC: FLdRfVar var_92
  loc_AE6BEF: FLdPr Me
  loc_AE6BF2: VCallAd Control_ID_CodiTiliTxt
  loc_AE6BF5: FStAdFunc var_90
  loc_AE6BF8: FLdPr var_90
  loc_AE6BFB:  = Me.Enabled
  loc_AE6C00: FLdI2 var_92
  loc_AE6C03: AndI4
  loc_AE6C04: FFreeAd var_88 = ""
  loc_AE6C0B: BranchF loc_AE6D4B
  loc_AE6C0E: FLdRfVar var_98
  loc_AE6C11: FLdPr Me
  loc_AE6C14: VCallAd Control_ID_CodiTiliTxt
  loc_AE6C17: FStAdFunc var_88
  loc_AE6C1A: FLdPr var_88
  loc_AE6C1D:  = Me.Text
  loc_AE6C22: LitI2_Byte 0
  loc_AE6C24: LitI2_Byte 0
  loc_AE6C26: ILdRf var_98
  loc_AE6C29: LitStr "Código"
  loc_AE6C2C: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AE6C31: FStStrNoPop var_9C
  loc_AE6C34: FLdPr Me
  loc_AE6C37: MemStStrCopy
  loc_AE6C3B: FFreeStr var_98 = ""
  loc_AE6C42: FFree1Ad var_88
  loc_AE6C45: FLdPr Me
  loc_AE6C48: MemLdStr global_60
  loc_AE6C4B: LitStr vbNullString
  loc_AE6C4E: NeStr
  loc_AE6C50: BranchF loc_AE6C76
  loc_AE6C53: FLdPr Me
  loc_AE6C56: MemLdStr global_60
  loc_AE6C59: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE6C5E: FLdPr Me
  loc_AE6C61: VCallAd Control_ID_CodiTiliTxt
  loc_AE6C64: CVarAd
  loc_AE6C68: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE6C6D: FFree1Var var_AC = ""
  loc_AE6C70: LitI2_Byte &HFF
  loc_AE6C72: IStI2 Cancel
  loc_AE6C75: ExitProcHresult
  loc_AE6C76: FLdRfVar var_8A
  loc_AE6C79: FLdPr Me
  loc_AE6C7C: VCallAd Control_ID_OficinaCbo
  loc_AE6C7F: FStAdFunc var_88
  loc_AE6C82: FLdPr var_88
  loc_AE6C85:  = Me.ListIndex
  loc_AE6C8A: FLdI2 var_8A
  loc_AE6C8D: FStI2 var_AE
  loc_AE6C90: FFree1Ad var_88
  loc_AE6C93: FLdI2 var_AE
  loc_AE6C96: LitI2_Byte 0
  loc_AE6C98: EqI2
  loc_AE6C99: BranchF loc_AE6CAA
  loc_AE6C9C: LitI2_Byte 1
  loc_AE6C9E: CUI1I2
  loc_AE6CA0: FLdPr Me
  loc_AE6CA3: MemStUI1
  loc_AE6CA7: Branch loc_AE6CD5
  loc_AE6CAA: FLdI2 var_AE
  loc_AE6CAD: LitI2_Byte 1
  loc_AE6CAF: EqI2
  loc_AE6CB0: BranchF loc_AE6CC1
  loc_AE6CB3: LitI2_Byte 2
  loc_AE6CB5: CUI1I2
  loc_AE6CB7: FLdPr Me
  loc_AE6CBA: MemStUI1
  loc_AE6CBE: Branch loc_AE6CD5
  loc_AE6CC1: FLdI2 var_AE
  loc_AE6CC4: LitI2_Byte 2
  loc_AE6CC6: EqI2
  loc_AE6CC7: BranchF loc_AE6CD5
  loc_AE6CCA: LitI2_Byte 4
  loc_AE6CCC: CUI1I2
  loc_AE6CCE: FLdPr Me
  loc_AE6CD1: MemStUI1
  loc_AE6CD5: FLdRfVar var_98
  loc_AE6CD8: FLdPr Me
  loc_AE6CDB: VCallAd Control_ID_CodiTiliTxt
  loc_AE6CDE: FStAdFunc var_88
  loc_AE6CE1: FLdPr var_88
  loc_AE6CE4:  = Me.Text
  loc_AE6CE9: FLdRfVar var_9C
  loc_AE6CEC: ILdRf var_98
  loc_AE6CEF: CUI1Str
  loc_AE6CF1: FLdPr Me
  loc_AE6CF4: MemLdUI1 global_64
  loc_AE6CF8: FLdPr Me
  loc_AE6CFB: MemLdRfVar from_stack_1.global_52
  loc_AE6CFE: NewIfNullPr clstipoliqu
  loc_AE6D01: from_stack_3v = clstipoliqu.ValidaClave(from_stack_1v, from_stack_2v)
  loc_AE6D06: ILdRf var_9C
  loc_AE6D09: FLdPr Me
  loc_AE6D0C: MemStStrCopy
  loc_AE6D10: FFreeStr var_98 = ""
  loc_AE6D17: FFree1Ad var_88
  loc_AE6D1A: FLdPr Me
  loc_AE6D1D: MemLdStr global_60
  loc_AE6D20: LitStr vbNullString
  loc_AE6D23: NeStr
  loc_AE6D25: BranchF loc_AE6D4B
  loc_AE6D28: FLdPr Me
  loc_AE6D2B: MemLdStr global_60
  loc_AE6D2E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE6D33: FLdPr Me
  loc_AE6D36: VCallAd Control_ID_CodiTiliTxt
  loc_AE6D39: CVarAd
  loc_AE6D3D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE6D42: FFree1Var var_AC = ""
  loc_AE6D45: LitI2_Byte &HFF
  loc_AE6D47: IStI2 Cancel
  loc_AE6D4A: ExitProcHresult
  loc_AE6D4B: ExitProcHresult
End Sub

Private Sub DetaTiliTxt_GotFocus() '9BE1A8
  'Data Table: 4D609C
  loc_9BE194: FLdPr Me
  loc_9BE197: VCallAd Control_ID_DetaTiliTxt
  loc_9BE19A: CVarAd
  loc_9BE19E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE1A3: FFree1Var var_94 = ""
  loc_9BE1A6: ExitProcHresult
End Sub

Private Sub DetaTiliTxt_Validate(Cancel As Boolean) 'A8FA84
  'Data Table: 4D609C
  loc_A8F9E4: FLdRfVar var_8A
  loc_A8F9E7: FLdPr Me
  loc_A8F9EA: VCallAd Control_ID_cmdCancelar
  loc_A8F9ED: FStAdFunc var_88
  loc_A8F9F0: FLdPr var_88
  loc_A8F9F3:  = Me.Value
  loc_A8F9F8: FLdI2 var_8A
  loc_A8F9FB: NotI4
  loc_A8F9FC: FLdRfVar var_92
  loc_A8F9FF: FLdPr Me
  loc_A8FA02: VCallAd Control_ID_DetaTiliTxt
  loc_A8FA05: FStAdFunc var_90
  loc_A8FA08: FLdPr var_90
  loc_A8FA0B:  = Me.Enabled
  loc_A8FA10: FLdI2 var_92
  loc_A8FA13: AndI4
  loc_A8FA14: FFreeAd var_88 = ""
  loc_A8FA1B: BranchF loc_A8FA81
  loc_A8FA1E: FLdRfVar var_98
  loc_A8FA21: FLdPr Me
  loc_A8FA24: VCallAd Control_ID_DetaTiliTxt
  loc_A8FA27: FStAdFunc var_88
  loc_A8FA2A: FLdPr var_88
  loc_A8FA2D:  = Me.Text
  loc_A8FA32: ILdRf var_98
  loc_A8FA35: LitStr "Detalle"
  loc_A8FA38: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A8FA3D: FStStrNoPop var_9C
  loc_A8FA40: FLdPr Me
  loc_A8FA43: MemStStrCopy
  loc_A8FA47: FFreeStr var_98 = ""
  loc_A8FA4E: FFree1Ad var_88
  loc_A8FA51: FLdPr Me
  loc_A8FA54: MemLdStr global_60
  loc_A8FA57: LitStr vbNullString
  loc_A8FA5A: NeStr
  loc_A8FA5C: BranchF loc_A8FA81
  loc_A8FA5F: FLdPr Me
  loc_A8FA62: MemLdStr global_60
  loc_A8FA65: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8FA6A: FLdPr Me
  loc_A8FA6D: VCallAd Control_ID_DetaTiliTxt
  loc_A8FA70: CVarAd
  loc_A8FA74: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A8FA79: FFree1Var var_AC = ""
  loc_A8FA7C: LitI2_Byte &HFF
  loc_A8FA7E: IStI2 Cancel
  loc_A8FA81: ExitProcHresult
  loc_A8FA82: Assert
End Sub

Private Sub ConcTiliCmd_Click() 'AAE63C
  'Data Table: 4D609C
  loc_AAE568: ImpAdLdI2 MemVar_D93034
  loc_AAE56B: ImpAdLdRf MemVar_D947E0
  loc_AAE56E: NewIfNullPr dlgBuscarConcepto
  loc_AAE571: Call dlgBuscarConcepto.iPeriInfoPut(from_stack_1v)
  loc_AAE576: LitVar_Missing var_A4
  loc_AAE579: PopAdLdVar
  loc_AAE57A: LitVarI4
  loc_AAE582: PopAdLdVar
  loc_AAE583: ImpAdLdRf MemVar_D947E0
  loc_AAE586: NewIfNullPr dlgBuscarConcepto
  loc_AAE589: dlgBuscarConcepto.Show from_stack_1, from_stack_2
  loc_AAE58E: FLdRfVar var_AC
  loc_AAE591: FLdRfVar var_A8
  loc_AAE594: ImpAdLdRf MemVar_D947E0
  loc_AAE597: NewIfNullPr dlgBuscarConcepto
  loc_AAE59A: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AAE59F: FLdPr var_A8
  loc_AAE5A2: from_stack_1 = clsconcepto.RecordCount
  loc_AAE5A7: ILdRf var_AC
  loc_AAE5AA: LitI4 0
  loc_AAE5AF: NeI4
  loc_AAE5B0: FFree1Ad var_A8
  loc_AAE5B3: BranchF loc_AAE628
  loc_AAE5B6: FLdRfVar var_B0
  loc_AAE5B9: FLdRfVar var_A8
  loc_AAE5BC: ImpAdLdRf MemVar_D947E0
  loc_AAE5BF: NewIfNullPr dlgBuscarConcepto
  loc_AAE5C2: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AAE5C7: FLdPr var_A8
  loc_AAE5CA: from_stack_1 = clsconcepto.CodiConc
  loc_AAE5CF: FLdZeroAd var_B0
  loc_AAE5D2: CVarStr var_C0
  loc_AAE5D5: PopAdLdVar
  loc_AAE5D6: FLdPr Me
  loc_AAE5D9: VCallAd Control_ID_ConcTiliMsk
  loc_AAE5DC: FStAdFunc var_C4
  loc_AAE5DF: FLdPr var_C4
  loc_AAE5E2: LateIdSt
  loc_AAE5E7: FFreeAd var_A8 = ""
  loc_AAE5EE: FFree1Var var_C0 = ""
  loc_AAE5F1: FLdRfVar var_B0
  loc_AAE5F4: FLdRfVar var_A8
  loc_AAE5F7: ImpAdLdRf MemVar_D947E0
  loc_AAE5FA: NewIfNullPr dlgBuscarConcepto
  loc_AAE5FD: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AAE602: FLdPr var_A8
  loc_AAE605: from_stack_1 = clsconcepto.DetaConc
  loc_AAE60A: ILdRf var_B0
  loc_AAE60D: FLdPr Me
  loc_AAE610: VCallAd Control_ID_DetaConcLbl
  loc_AAE613: FStAdFunc var_C4
  loc_AAE616: FLdPr var_C4
  loc_AAE619: Me.Caption = from_stack_1
  loc_AAE61E: FFree1Str var_B0
  loc_AAE621: FFreeAd var_A8 = ""
  loc_AAE628: FLdPr Me
  loc_AAE62B: VCallAd Control_ID_ConcTiliMsk
  loc_AAE62E: CVarAd
  loc_AAE632: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AAE637: FFree1Var var_C0 = ""
  loc_AAE63A: ExitProcHresult
End Sub

Private Sub GastTiliTxt_GotFocus() '9BDFF8
  'Data Table: 4D609C
  loc_9BDFE4: FLdPr Me
  loc_9BDFE7: VCallAd Control_ID_GastTiliTxt
  loc_9BDFEA: CVarAd
  loc_9BDFEE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BDFF3: FFree1Var var_94 = ""
  loc_9BDFF6: ExitProcHresult
End Sub

Private Sub GastTiliTxt_KeyPress(KeyAscii As Integer) 'A06260
  'Data Table: 4D609C
  loc_A0622C: LitStr "1234567890,."
  loc_A0622F: FStStrCopy var_88
  loc_A06232: FLdRfVar var_88
  loc_A06235: ILdRf KeyAscii
  loc_A06238: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A0623D: IStI2 KeyAscii
  loc_A06240: FFree1Str var_88
  loc_A06243: ILdI2 KeyAscii
  loc_A06246: LitStr "."
  loc_A06249: ImpAdCallI2 Asc()
  loc_A0624E: EqI2
  loc_A0624F: BranchF loc_A0625D
  loc_A06252: LitStr ","
  loc_A06255: ImpAdCallI2 Asc()
  loc_A0625A: IStI2 KeyAscii
  loc_A0625D: ExitProcHresult
  loc_A0625E: ImpAdLdFPR4 MemVar_4DE750
End Sub

Private Sub GastTiliTxt_LostFocus() 'A748E8
  'Data Table: 4D609C
  loc_A74884: FLdRfVar var_8C
  loc_A74887: FLdPr Me
  loc_A7488A: VCallAd Control_ID_GastTiliTxt
  loc_A7488D: FStAdFunc var_88
  loc_A74890: FLdPr var_88
  loc_A74893:  = Me.Text
  loc_A74898: LitI4 1
  loc_A7489D: LitI4 1
  loc_A748A2: LitVarStr var_AC, "##0.00"
  loc_A748A7: FStVarCopyObj var_BC
  loc_A748AA: FLdRfVar var_BC
  loc_A748AD: FLdZeroAd var_8C
  loc_A748B0: CVarStr var_9C
  loc_A748B3: FLdRfVar var_CC
  loc_A748B6: ImpAdCallFPR4  = Format(, )
  loc_A748BB: FLdRfVar var_CC
  loc_A748BE: CStrVarVal var_D0
  loc_A748C2: FLdPr Me
  loc_A748C5: VCallAd Control_ID_GastTiliTxt
  loc_A748C8: FStAdFunc var_D4
  loc_A748CB: FLdPr var_D4
  loc_A748CE: Me.Text = from_stack_1
  loc_A748D3: FFree1Str var_D0
  loc_A748D6: FFreeAd var_88 = ""
  loc_A748DD: FFreeVar var_9C = "": var_BC = ""
  loc_A748E6: ExitProcHresult
End Sub

Private Sub GastTiliTxt_Validate(Cancel As Boolean) 'AB5094
  'Data Table: 4D609C
  loc_AB4FB0: FLdRfVar var_8A
  loc_AB4FB3: FLdPr Me
  loc_AB4FB6: VCallAd Control_ID_cmdCancelar
  loc_AB4FB9: FStAdFunc var_88
  loc_AB4FBC: FLdPr var_88
  loc_AB4FBF:  = Me.Value
  loc_AB4FC4: FLdI2 var_8A
  loc_AB4FC7: NotI4
  loc_AB4FC8: FLdRfVar var_92
  loc_AB4FCB: FLdPr Me
  loc_AB4FCE: VCallAd Control_ID_GastTiliTxt
  loc_AB4FD1: FStAdFunc var_90
  loc_AB4FD4: FLdPr var_90
  loc_AB4FD7:  = Me.Enabled
  loc_AB4FDC: FLdI2 var_92
  loc_AB4FDF: AndI4
  loc_AB4FE0: FFreeAd var_88 = ""
  loc_AB4FE7: BranchF loc_AB5092
  loc_AB4FEA: FLdRfVar var_98
  loc_AB4FED: FLdPr Me
  loc_AB4FF0: VCallAd Control_ID_GastTiliTxt
  loc_AB4FF3: FStAdFunc var_88
  loc_AB4FF6: FLdPr var_88
  loc_AB4FF9:  = Me.Text
  loc_AB4FFE: FLdZeroAd var_98
  loc_AB5001: CVarStr var_A8
  loc_AB5004: ImpAdCallI2 IsNumeric()
  loc_AB5009: NotI4
  loc_AB500A: FFree1Ad var_88
  loc_AB500D: FFree1Var var_A8 = ""
  loc_AB5010: BranchF loc_AB502A
  loc_AB5013: LitStr "0"
  loc_AB5016: FLdPr Me
  loc_AB5019: VCallAd Control_ID_GastTiliTxt
  loc_AB501C: FStAdFunc var_88
  loc_AB501F: FLdPr var_88
  loc_AB5022: Me.Text = from_stack_1
  loc_AB5027: FFree1Ad var_88
  loc_AB502A: FLdRfVar var_98
  loc_AB502D: FLdPr Me
  loc_AB5030: VCallAd Control_ID_GastTiliTxt
  loc_AB5033: FStAdFunc var_88
  loc_AB5036: FLdPr var_88
  loc_AB5039:  = Me.Text
  loc_AB503E: LitI2_Byte &HFF
  loc_AB5040: LitI2_Byte 0
  loc_AB5042: ILdRf var_98
  loc_AB5045: LitStr "ingrese gasto"
  loc_AB5048: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AB504D: FStStrNoPop var_AC
  loc_AB5050: FLdPr Me
  loc_AB5053: MemStStrCopy
  loc_AB5057: FFreeStr var_98 = ""
  loc_AB505E: FFree1Ad var_88
  loc_AB5061: FLdPr Me
  loc_AB5064: MemLdStr global_60
  loc_AB5067: LitStr vbNullString
  loc_AB506A: NeStr
  loc_AB506C: BranchF loc_AB5092
  loc_AB506F: FLdPr Me
  loc_AB5072: MemLdStr global_60
  loc_AB5075: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB507A: FLdPr Me
  loc_AB507D: VCallAd Control_ID_GastTiliTxt
  loc_AB5080: CVarAd
  loc_AB5084: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB5089: FFree1Var var_A8 = ""
  loc_AB508C: LitI2_Byte &HFF
  loc_AB508E: IStI2 Cancel
  loc_AB5091: ExitProcHresult
  loc_AB5092: ExitProcHresult
End Sub

Private Sub CoreTiliCmd_Click() 'AAEA8C
  'Data Table: 4D609C
  loc_AAE9B8: ImpAdLdI2 MemVar_D93034
  loc_AAE9BB: ImpAdLdRf MemVar_D947E0
  loc_AAE9BE: NewIfNullPr dlgBuscarConcepto
  loc_AAE9C1: Call dlgBuscarConcepto.iPeriInfoPut(from_stack_1v)
  loc_AAE9C6: LitVar_Missing var_A4
  loc_AAE9C9: PopAdLdVar
  loc_AAE9CA: LitVarI4
  loc_AAE9D2: PopAdLdVar
  loc_AAE9D3: ImpAdLdRf MemVar_D947E0
  loc_AAE9D6: NewIfNullPr dlgBuscarConcepto
  loc_AAE9D9: dlgBuscarConcepto.Show from_stack_1, from_stack_2
  loc_AAE9DE: FLdRfVar var_AC
  loc_AAE9E1: FLdRfVar var_A8
  loc_AAE9E4: ImpAdLdRf MemVar_D947E0
  loc_AAE9E7: NewIfNullPr dlgBuscarConcepto
  loc_AAE9EA: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AAE9EF: FLdPr var_A8
  loc_AAE9F2: from_stack_1 = clsconcepto.RecordCount
  loc_AAE9F7: ILdRf var_AC
  loc_AAE9FA: LitI4 0
  loc_AAE9FF: NeI4
  loc_AAEA00: FFree1Ad var_A8
  loc_AAEA03: BranchF loc_AAEA78
  loc_AAEA06: FLdRfVar var_B0
  loc_AAEA09: FLdRfVar var_A8
  loc_AAEA0C: ImpAdLdRf MemVar_D947E0
  loc_AAEA0F: NewIfNullPr dlgBuscarConcepto
  loc_AAEA12: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AAEA17: FLdPr var_A8
  loc_AAEA1A: from_stack_1 = clsconcepto.CodiConc
  loc_AAEA1F: FLdZeroAd var_B0
  loc_AAEA22: CVarStr var_C0
  loc_AAEA25: PopAdLdVar
  loc_AAEA26: FLdPr Me
  loc_AAEA29: VCallAd Control_ID_CoreTiliMsk
  loc_AAEA2C: FStAdFunc var_C4
  loc_AAEA2F: FLdPr var_C4
  loc_AAEA32: LateIdSt
  loc_AAEA37: FFreeAd var_A8 = ""
  loc_AAEA3E: FFree1Var var_C0 = ""
  loc_AAEA41: FLdRfVar var_B0
  loc_AAEA44: FLdRfVar var_A8
  loc_AAEA47: ImpAdLdRf MemVar_D947E0
  loc_AAEA4A: NewIfNullPr dlgBuscarConcepto
  loc_AAEA4D: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AAEA52: FLdPr var_A8
  loc_AAEA55: from_stack_1 = clsconcepto.DetaConc
  loc_AAEA5A: ILdRf var_B0
  loc_AAEA5D: FLdPr Me
  loc_AAEA60: VCallAd Control_ID_DetaCoreLbl
  loc_AAEA63: FStAdFunc var_C4
  loc_AAEA66: FLdPr var_C4
  loc_AAEA69: Me.Caption = from_stack_1
  loc_AAEA6E: FFree1Str var_B0
  loc_AAEA71: FFreeAd var_A8 = ""
  loc_AAEA78: FLdPr Me
  loc_AAEA7B: VCallAd Control_ID_CoreTiliMsk
  loc_AAEA7E: CVarAd
  loc_AAEA82: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AAEA87: FFree1Var var_C0 = ""
  loc_AAEA8A: ExitProcHresult
End Sub

Private Sub Form_Load() 'AE7794
  'Data Table: 4D609C
  loc_AE763C: LitI2_Byte 0
  loc_AE763E: CR8I2
  loc_AE763F: PopFPR4
  loc_AE7640: FLdPr Me
  loc_AE7643: Me.Left = from_stack_1s
  loc_AE7648: LitI2_Byte 0
  loc_AE764A: CR8I2
  loc_AE764B: PopFPR4
  loc_AE764C: FLdPr Me
  loc_AE764F: Me.Top = from_stack_1s
  loc_AE7654: LitStr "SELECT CodiOfic, CodiTili, DetaTili, tipoliqu.PeriInfo, ConcTili, CogaTili, CoreTili, DescTili, DeanTili, GastTili, concconc.DetaConc as DecoConc, concreca.DetaConc as DereConc, tipoliqu.LeyeTili FROM tipoliqu "
  loc_AE7657: LitStr " LEFT JOIN concepto as concconc ON concconc.PeriInfo = "
  loc_AE765A: ConcatStr
  loc_AE765B: FStStrNoPop var_88
  loc_AE765E: ImpAdLdI2 MemVar_D93034
  loc_AE7661: CStrUI1
  loc_AE7663: FStStrNoPop var_8C
  loc_AE7666: ConcatStr
  loc_AE7667: FStStrNoPop var_90
  loc_AE766A: LitStr " AND concconc.CodiConc = tipoliqu.ConcTili"
  loc_AE766D: ConcatStr
  loc_AE766E: FStStrNoPop var_94
  loc_AE7671: LitStr " LEFT JOIN concepto as concreca ON concreca.PeriInfo = "
  loc_AE7674: ConcatStr
  loc_AE7675: FStStrNoPop var_98
  loc_AE7678: ImpAdLdI2 MemVar_D93034
  loc_AE767B: CStrUI1
  loc_AE767D: FStStrNoPop var_9C
  loc_AE7680: ConcatStr
  loc_AE7681: FStStrNoPop var_A0
  loc_AE7684: LitStr " AND  concreca.CodiConc = tipoliqu.CoreTili "
  loc_AE7687: ConcatStr
  loc_AE7688: FStStrNoPop var_A4
  loc_AE768B: LitStr " ORDER BY tipoliqu.CodiOfic, tipoliqu.CodiTili "
  loc_AE768E: ConcatStr
  loc_AE768F: FStStrNoPop var_A8
  loc_AE7692: FLdPr Me
  loc_AE7695: MemLdRfVar from_stack_1.global_52
  loc_AE7698: NewIfNullPr clstipoliqu
  loc_AE769B: Call clstipoliqu.RedefineRS(from_stack_1v)
  loc_AE76A0: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_AE76B5: LitVar_Missing var_B8
  loc_AE76B8: PopAdLdVar
  loc_AE76B9: LitStr "Inmueble"
  loc_AE76BC: FLdPr Me
  loc_AE76BF: VCallAd Control_ID_OficinaCbo
  loc_AE76C2: FStAdFunc var_BC
  loc_AE76C5: FLdPr var_BC
  loc_AE76C8: Me.AddItem from_stack_1, from_stack_2
  loc_AE76CD: FFree1Ad var_BC
  loc_AE76D0: LitVar_Missing var_B8
  loc_AE76D3: PopAdLdVar
  loc_AE76D4: LitStr "Comercio"
  loc_AE76D7: FLdPr Me
  loc_AE76DA: VCallAd Control_ID_OficinaCbo
  loc_AE76DD: FStAdFunc var_BC
  loc_AE76E0: FLdPr var_BC
  loc_AE76E3: Me.AddItem from_stack_1, from_stack_2
  loc_AE76E8: FFree1Ad var_BC
  loc_AE76EB: LitVar_Missing var_B8
  loc_AE76EE: PopAdLdVar
  loc_AE76EF: LitStr "Cementerio"
  loc_AE76F2: FLdPr Me
  loc_AE76F5: VCallAd Control_ID_OficinaCbo
  loc_AE76F8: FStAdFunc var_BC
  loc_AE76FB: FLdPr var_BC
  loc_AE76FE: Me.AddItem from_stack_1, from_stack_2
  loc_AE7703: FFree1Ad var_BC
  loc_AE7706: LitI4 0
  loc_AE770B: LitI4 1
  loc_AE7710: FLdRfVar var_C0
  loc_AE7713: Redim
  loc_AE771D: FLdPr Me
  loc_AE7720: MemLdRfVar from_stack_1.global_52
  loc_AE7723: NewIfNullAd
  loc_AE7726: FStAd var_BC 
  loc_AE772A: FLdRfVar var_BC
  loc_AE772D: CVarRef
  loc_AE7732: ParmAry1St
  loc_AE7738: FLdPr Me
  loc_AE773B: VCallAd Control_ID_dgdABMS
  loc_AE773E: CVarAd
  loc_AE7742: ParmAry1St
  loc_AE7748: FLdRfVar var_C0
  loc_AE774B: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AE7750: ILdRf var_BC
  loc_AE7753: CastAd
  loc_AE7756: FLdPr Me
  loc_AE7759: MemStAdFunc
  loc_AE775D: FLdRfVar var_C0
  loc_AE7760: Erase
  loc_AE7761: FFree1Ad var_BC
  loc_AE7764: Call EnlazaTodo()
  loc_AE7769: ILdRf Me
  loc_AE776C: CastAd
  loc_AE776F: FStAdFunc var_BC
  loc_AE7772: FLdRfVar var_BC
  loc_AE7775: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AE777A: FFree1Ad var_BC
  loc_AE777D: LitI2_Byte 0
  loc_AE777F: ILdRf Me
  loc_AE7782: CastAd
  loc_AE7785: FStAdFunc var_BC
  loc_AE7788: FLdRfVar var_BC
  loc_AE778B: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AE7790: FFree1Ad var_BC
  loc_AE7793: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A658C0
  'Data Table: 4D609C
  loc_A65864: FLdRfVar var_C2
  loc_A65867: FLdRfVar var_C0
  loc_A6586A: LitVarI2 var_B8, 1
  loc_A6586F: FLdPr Me
  loc_A65872: VCallAd Control_ID_tlbABMS
  loc_A65875: FStAdFunc var_88
  loc_A65878: FLdPr var_88
  loc_A6587B: LateIdLdVar var_98 DispID_3 0
  loc_A65882: CastAdVar Me
  loc_A65886: FStAdFunc var_BC
  loc_A65889: FLdPr var_BC
  loc_A6588C:  = Me.Buttons.ControlDefault
  loc_A65891: FLdPr var_C0
  loc_A65894:  = Me.Enabled
  loc_A65899: FLdI2 var_C2
  loc_A6589C: FFreeAd var_88 = "": var_BC = ""
  loc_A658A5: FFreeVar var_98 = ""
  loc_A658AC: BranchF loc_A658BD
  loc_A658AF: FLdPr Me
  loc_A658B2: MemLdRfVar from_stack_1.global_52
  loc_A658B5: NewIfNullPr clstipoliqu
  loc_A658B8: Call clstipoliqu.Requery()
  loc_A658BD: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9D5354
  'Data Table: 4D609C
  loc_9D533C: ILdI2 KeyCode
  loc_9D533F: ILdRf Me
  loc_9D5342: CastAd
  loc_9D5345: FStAdFunc var_88
  loc_9D5348: FLdRfVar var_88
  loc_9D534B: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9D5350: FFree1Ad var_88
  loc_9D5353: ExitProcHresult
End Sub

Private Sub CogaTiliTxt_GotFocus() '9BDBC0
  'Data Table: 4D609C
  loc_9BDBAC: FLdPr Me
  loc_9BDBAF: VCallAd Control_ID_CogaTiliTxt
  loc_9BDBB2: CVarAd
  loc_9BDBB6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BDBBB: FFree1Var var_94 = ""
  loc_9BDBBE: ExitProcHresult
End Sub

Private Sub CogaTiliTxt_Validate(Cancel As Boolean) 'AB8D08
  'Data Table: 4D609C
  loc_AB8C20: FLdRfVar var_8A
  loc_AB8C23: FLdPr Me
  loc_AB8C26: VCallAd Control_ID_cmdCancelar
  loc_AB8C29: FStAdFunc var_88
  loc_AB8C2C: FLdPr var_88
  loc_AB8C2F:  = Me.Value
  loc_AB8C34: FLdI2 var_8A
  loc_AB8C37: NotI4
  loc_AB8C38: FLdRfVar var_92
  loc_AB8C3B: FLdPr Me
  loc_AB8C3E: VCallAd Control_ID_CogaTiliTxt
  loc_AB8C41: FStAdFunc var_90
  loc_AB8C44: FLdPr var_90
  loc_AB8C47:  = Me.Enabled
  loc_AB8C4C: FLdI2 var_92
  loc_AB8C4F: AndI4
  loc_AB8C50: FFreeAd var_88 = ""
  loc_AB8C57: BranchF loc_AB8D04
  loc_AB8C5A: FLdRfVar var_8A
  loc_AB8C5D: FLdPr Me
  loc_AB8C60: MemLdRfVar from_stack_1.global_52
  loc_AB8C63: NewIfNullPr clstipoliqu
  loc_AB8C66: from_stack_1 = clstipoliqu.CodiOfic
  loc_AB8C6B: FLdUI1
  loc_AB8C6F: CVarUI1
  loc_AB8C73: FLdPr Me
  loc_AB8C76: MemLdRfVar from_stack_1.global_64
  loc_AB8C79: CVarRef
  loc_AB8C7E: FLdPr Me
  loc_AB8C81: MemLdI2 global_56
  loc_AB8C84: LitI2_Byte 1
  loc_AB8C86: EqI2
  loc_AB8C87: CVarBoolI2 var_A4
  loc_AB8C8B: FLdRfVar var_E4
  loc_AB8C8E: ImpAdCallFPR4  = IIf(, , )
  loc_AB8C93: FLdRfVar var_E8
  loc_AB8C96: FLdPr Me
  loc_AB8C99: VCallAd Control_ID_CogaTiliTxt
  loc_AB8C9C: FStAdFunc var_88
  loc_AB8C9F: FLdPr var_88
  loc_AB8CA2:  = Me.Text
  loc_AB8CA7: ILdRf var_E8
  loc_AB8CAA: FLdRfVar var_E4
  loc_AB8CAD: CUI1Var
  loc_AB8CAF: ImpAdCallI2  = Proc_18_72_AD4BCC()
  loc_AB8CB4: FStStrNoPop var_EC
  loc_AB8CB7: FLdPr Me
  loc_AB8CBA: MemStStrCopy
  loc_AB8CBE: FFreeStr var_E8 = ""
  loc_AB8CC5: FFree1Ad var_88
  loc_AB8CC8: FFreeVar var_A4 = "": var_D4 = ""
  loc_AB8CD1: FLdPr Me
  loc_AB8CD4: MemLdStr global_60
  loc_AB8CD7: LitStr vbNullString
  loc_AB8CDA: NeStr
  loc_AB8CDC: BranchF loc_AB8D04
  loc_AB8CDF: FLdPr Me
  loc_AB8CE2: MemLdStr global_60
  loc_AB8CE5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB8CEA: FLdPr Me
  loc_AB8CED: VCallAd Control_ID_CogaTiliTxt
  loc_AB8CF0: CVarAd
  loc_AB8CF4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB8CF9: FFree1Var var_D4 = ""
  loc_AB8CFC: LitI2_Byte &HFF
  loc_AB8CFE: IStI2 Cancel
  loc_AB8D01: Branch loc_AB8D04
  loc_AB8D04: ExitProcHresult
End Sub

Private Sub CoreTiliMsk_UnknownEvent_0 '9BDDB8
  'Data Table: 4D609C
  loc_9BDDA4: FLdPr Me
  loc_9BDDA7: VCallAd Control_ID_CoreTiliMsk
  loc_9BDDAA: CVarAd
  loc_9BDDAE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BDDB3: FFree1Var var_94 = ""
  loc_9BDDB6: ExitProcHresult
End Sub

Private Sub CoreTiliMsk_UnknownEvent_8 'AC3F5C
  'Data Table: 4D609C
  loc_AC3E5C: FLdRfVar var_8A
  loc_AC3E5F: FLdPr Me
  loc_AC3E62: VCallAd Control_ID_cmdCancelar
  loc_AC3E65: FStAdFunc var_88
  loc_AC3E68: FLdPr var_88
  loc_AC3E6B:  = Me.Value
  loc_AC3E70: FLdI2 var_8A
  loc_AC3E73: NotI4
  loc_AC3E74: FLdPr Me
  loc_AC3E77: VCallAd Control_ID_CoreTiliMsk
  loc_AC3E7A: FStAdFunc var_90
  loc_AC3E7D: FLdPr var_90
  loc_AC3E80: LateIdLdVar var_A0 DispID_13 -32767
  loc_AC3E87: CBoolVar
  loc_AC3E89: AndI4
  loc_AC3E8A: FFreeAd var_88 = ""
  loc_AC3E91: FFree1Var var_A0 = ""
  loc_AC3E94: BranchF loc_AC3F5B
  loc_AC3E97: FLdPr Me
  loc_AC3E9A: VCallAd Control_ID_CoreTiliMsk
  loc_AC3E9D: FStAdFunc var_88
  loc_AC3EA0: FLdPr var_88
  loc_AC3EA3: LateIdLdVar var_A0 DispID_22 0
  loc_AC3EAA: PopAd
  loc_AC3EAC: LitI2_Byte 0
  loc_AC3EAE: LitI2_Byte 0
  loc_AC3EB0: LitI2_Byte &HFF
  loc_AC3EB2: LitI2_Byte 0
  loc_AC3EB4: LitI2_Byte &HFF
  loc_AC3EB6: LitI2_Byte 0
  loc_AC3EB8: LitI2_Byte 0
  loc_AC3EBA: LitI2_Byte 0
  loc_AC3EBC: LitI2_Byte &HFF
  loc_AC3EBE: FLdRfVar var_A0
  loc_AC3EC1: CStrVarTmp
  loc_AC3EC2: FStStrNoPop var_A4
  loc_AC3EC5: ImpAdLdI2 MemVar_D93034
  loc_AC3EC8: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_AC3ECD: FStStrNoPop var_A8
  loc_AC3ED0: FLdPr Me
  loc_AC3ED3: MemStStrCopy
  loc_AC3ED7: FFreeStr var_A4 = ""
  loc_AC3EDE: FFree1Ad var_88
  loc_AC3EE1: FFree1Var var_A0 = ""
  loc_AC3EE4: FLdPr Me
  loc_AC3EE7: MemLdStr global_60
  loc_AC3EEA: LitStr vbNullString
  loc_AC3EED: NeStr
  loc_AC3EEF: BranchF loc_AC3F17
  loc_AC3EF2: FLdPr Me
  loc_AC3EF5: MemLdStr global_60
  loc_AC3EF8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC3EFD: FLdPr Me
  loc_AC3F00: VCallAd Control_ID_CoreTiliMsk
  loc_AC3F03: CVarAd
  loc_AC3F07: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC3F0C: FFree1Var var_A0 = ""
  loc_AC3F0F: LitI2_Byte &HFF
  loc_AC3F11: IStI2 Cancel
  loc_AC3F14: Branch loc_AC3F5B
  loc_AC3F17: FLdPr Me
  loc_AC3F1A: VCallAd Control_ID_CoreTiliMsk
  loc_AC3F1D: FStAdFunc var_88
  loc_AC3F20: FLdPr var_88
  loc_AC3F23: LateIdLdVar var_A0 DispID_22 0
  loc_AC3F2A: CStrVarTmp
  loc_AC3F2B: FStStrNoPop var_A4
  loc_AC3F2E: ImpAdLdI2 MemVar_D93034
  loc_AC3F31: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_AC3F36: FStStrNoPop var_A8
  loc_AC3F39: FLdPr Me
  loc_AC3F3C: VCallAd Control_ID_DetaCoreLbl
  loc_AC3F3F: FStAdFunc var_90
  loc_AC3F42: FLdPr var_90
  loc_AC3F45: Me.Caption = from_stack_1
  loc_AC3F4A: FFreeStr var_A4 = ""
  loc_AC3F51: FFreeAd var_88 = ""
  loc_AC3F58: FFree1Var var_A0 = ""
  loc_AC3F5B: ExitProcHresult
End Sub

Private Sub ConcTiliMsk_UnknownEvent_0 '9BE0D0
  'Data Table: 4D609C
  loc_9BE0BC: FLdPr Me
  loc_9BE0BF: VCallAd Control_ID_ConcTiliMsk
  loc_9BE0C2: CVarAd
  loc_9BE0C6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE0CB: FFree1Var var_94 = ""
  loc_9BE0CE: ExitProcHresult
End Sub

Private Sub ConcTiliMsk_UnknownEvent_8 'AC3CD4
  'Data Table: 4D609C
  loc_AC3BD4: FLdRfVar var_8A
  loc_AC3BD7: FLdPr Me
  loc_AC3BDA: VCallAd Control_ID_cmdCancelar
  loc_AC3BDD: FStAdFunc var_88
  loc_AC3BE0: FLdPr var_88
  loc_AC3BE3:  = Me.Value
  loc_AC3BE8: FLdI2 var_8A
  loc_AC3BEB: NotI4
  loc_AC3BEC: FLdPr Me
  loc_AC3BEF: VCallAd Control_ID_ConcTiliMsk
  loc_AC3BF2: FStAdFunc var_90
  loc_AC3BF5: FLdPr var_90
  loc_AC3BF8: LateIdLdVar var_A0 DispID_13 -32767
  loc_AC3BFF: CBoolVar
  loc_AC3C01: AndI4
  loc_AC3C02: FFreeAd var_88 = ""
  loc_AC3C09: FFree1Var var_A0 = ""
  loc_AC3C0C: BranchF loc_AC3CD3
  loc_AC3C0F: FLdPr Me
  loc_AC3C12: VCallAd Control_ID_ConcTiliMsk
  loc_AC3C15: FStAdFunc var_88
  loc_AC3C18: FLdPr var_88
  loc_AC3C1B: LateIdLdVar var_A0 DispID_22 0
  loc_AC3C22: PopAd
  loc_AC3C24: LitI2_Byte 0
  loc_AC3C26: LitI2_Byte 0
  loc_AC3C28: LitI2_Byte &HFF
  loc_AC3C2A: LitI2_Byte &HFF
  loc_AC3C2C: LitI2_Byte &HFF
  loc_AC3C2E: LitI2_Byte 0
  loc_AC3C30: LitI2_Byte 0
  loc_AC3C32: LitI2_Byte 0
  loc_AC3C34: LitI2_Byte &HFF
  loc_AC3C36: FLdRfVar var_A0
  loc_AC3C39: CStrVarTmp
  loc_AC3C3A: FStStrNoPop var_A4
  loc_AC3C3D: ImpAdLdI2 MemVar_D93034
  loc_AC3C40: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_AC3C45: FStStrNoPop var_A8
  loc_AC3C48: FLdPr Me
  loc_AC3C4B: MemStStrCopy
  loc_AC3C4F: FFreeStr var_A4 = ""
  loc_AC3C56: FFree1Ad var_88
  loc_AC3C59: FFree1Var var_A0 = ""
  loc_AC3C5C: FLdPr Me
  loc_AC3C5F: MemLdStr global_60
  loc_AC3C62: LitStr vbNullString
  loc_AC3C65: NeStr
  loc_AC3C67: BranchF loc_AC3C8F
  loc_AC3C6A: FLdPr Me
  loc_AC3C6D: MemLdStr global_60
  loc_AC3C70: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC3C75: FLdPr Me
  loc_AC3C78: VCallAd Control_ID_ConcTiliMsk
  loc_AC3C7B: CVarAd
  loc_AC3C7F: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC3C84: FFree1Var var_A0 = ""
  loc_AC3C87: LitI2_Byte &HFF
  loc_AC3C89: IStI2 Cancel
  loc_AC3C8C: Branch loc_AC3CD3
  loc_AC3C8F: FLdPr Me
  loc_AC3C92: VCallAd Control_ID_ConcTiliMsk
  loc_AC3C95: FStAdFunc var_88
  loc_AC3C98: FLdPr var_88
  loc_AC3C9B: LateIdLdVar var_A0 DispID_22 0
  loc_AC3CA2: CStrVarTmp
  loc_AC3CA3: FStStrNoPop var_A4
  loc_AC3CA6: ImpAdLdI2 MemVar_D93034
  loc_AC3CA9: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_AC3CAE: FStStrNoPop var_A8
  loc_AC3CB1: FLdPr Me
  loc_AC3CB4: VCallAd Control_ID_DetaConcLbl
  loc_AC3CB7: FStAdFunc var_90
  loc_AC3CBA: FLdPr var_90
  loc_AC3CBD: Me.Caption = from_stack_1
  loc_AC3CC2: FFreeStr var_A4 = ""
  loc_AC3CC9: FFreeAd var_88 = ""
  loc_AC3CD0: FFree1Var var_A0 = ""
  loc_AC3CD3: ExitProcHresult
End Sub

Private Sub DeanTiliTxt_GotFocus() '9BDE48
  'Data Table: 4D609C
  loc_9BDE34: FLdPr Me
  loc_9BDE37: VCallAd Control_ID_DeanTiliTxt
  loc_9BDE3A: CVarAd
  loc_9BDE3E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BDE43: FFree1Var var_94 = ""
  loc_9BDE46: ExitProcHresult
End Sub

Private Sub DeanTiliTxt_KeyPress(KeyAscii As Integer) 'A068E0
  'Data Table: 4D609C
  loc_A068AC: LitStr "1234567890,."
  loc_A068AF: FStStrCopy var_88
  loc_A068B2: FLdRfVar var_88
  loc_A068B5: ILdRf KeyAscii
  loc_A068B8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A068BD: IStI2 KeyAscii
  loc_A068C0: FFree1Str var_88
  loc_A068C3: ILdI2 KeyAscii
  loc_A068C6: LitStr "."
  loc_A068C9: ImpAdCallI2 Asc()
  loc_A068CE: EqI2
  loc_A068CF: BranchF loc_A068DD
  loc_A068D2: LitStr ","
  loc_A068D5: ImpAdCallI2 Asc()
  loc_A068DA: IStI2 KeyAscii
  loc_A068DD: ExitProcHresult
  loc_A068DE: CStrVarTmp
End Sub

Private Sub DeanTiliTxt_Validate(Cancel As Boolean) 'AB668C
  'Data Table: 4D609C
  loc_AB65A8: FLdRfVar var_8A
  loc_AB65AB: FLdPr Me
  loc_AB65AE: VCallAd Control_ID_cmdCancelar
  loc_AB65B1: FStAdFunc var_88
  loc_AB65B4: FLdPr var_88
  loc_AB65B7:  = Me.Value
  loc_AB65BC: FLdI2 var_8A
  loc_AB65BF: NotI4
  loc_AB65C0: FLdRfVar var_92
  loc_AB65C3: FLdPr Me
  loc_AB65C6: VCallAd Control_ID_DeanTiliTxt
  loc_AB65C9: FStAdFunc var_90
  loc_AB65CC: FLdPr var_90
  loc_AB65CF:  = Me.Enabled
  loc_AB65D4: FLdI2 var_92
  loc_AB65D7: AndI4
  loc_AB65D8: FFreeAd var_88 = ""
  loc_AB65DF: BranchF loc_AB668A
  loc_AB65E2: FLdRfVar var_98
  loc_AB65E5: FLdPr Me
  loc_AB65E8: VCallAd Control_ID_DeanTiliTxt
  loc_AB65EB: FStAdFunc var_88
  loc_AB65EE: FLdPr var_88
  loc_AB65F1:  = Me.Text
  loc_AB65F6: FLdZeroAd var_98
  loc_AB65F9: CVarStr var_A8
  loc_AB65FC: ImpAdCallI2 IsNumeric()
  loc_AB6601: NotI4
  loc_AB6602: FFree1Ad var_88
  loc_AB6605: FFree1Var var_A8 = ""
  loc_AB6608: BranchF loc_AB6622
  loc_AB660B: LitStr "0"
  loc_AB660E: FLdPr Me
  loc_AB6611: VCallAd Control_ID_DeanTiliTxt
  loc_AB6614: FStAdFunc var_88
  loc_AB6617: FLdPr var_88
  loc_AB661A: Me.Text = from_stack_1
  loc_AB661F: FFree1Ad var_88
  loc_AB6622: FLdRfVar var_98
  loc_AB6625: FLdPr Me
  loc_AB6628: VCallAd Control_ID_DeanTiliTxt
  loc_AB662B: FStAdFunc var_88
  loc_AB662E: FLdPr var_88
  loc_AB6631:  = Me.Text
  loc_AB6636: LitI2_Byte &HFF
  loc_AB6638: LitI2_Byte 0
  loc_AB663A: ILdRf var_98
  loc_AB663D: LitStr "ingrese descuento anual"
  loc_AB6640: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AB6645: FStStrNoPop var_AC
  loc_AB6648: FLdPr Me
  loc_AB664B: MemStStrCopy
  loc_AB664F: FFreeStr var_98 = ""
  loc_AB6656: FFree1Ad var_88
  loc_AB6659: FLdPr Me
  loc_AB665C: MemLdStr global_60
  loc_AB665F: LitStr vbNullString
  loc_AB6662: NeStr
  loc_AB6664: BranchF loc_AB668A
  loc_AB6667: FLdPr Me
  loc_AB666A: MemLdStr global_60
  loc_AB666D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB6672: FLdPr Me
  loc_AB6675: VCallAd Control_ID_DeanTiliTxt
  loc_AB6678: CVarAd
  loc_AB667C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB6681: FFree1Var var_A8 = ""
  loc_AB6684: LitI2_Byte &HFF
  loc_AB6686: IStI2 Cancel
  loc_AB6689: ExitProcHresult
  loc_AB668A: ExitProcHresult
End Sub

Public Sub EnlazaTodo() 'ACF144
  'Data Table: 4D609C
  loc_ACF044: LitI4 0
  loc_ACF049: LitI4 &HB
  loc_ACF04E: FLdRfVar var_88
  loc_ACF051: Redim
  loc_ACF05B: FLdPr Me
  loc_ACF05E: MemLdRfVar from_stack_1.global_52
  loc_ACF061: NewIfNullAd
  loc_ACF064: FStAd var_8C 
  loc_ACF068: FLdRfVar var_8C
  loc_ACF06B: CVarRef
  loc_ACF070: ParmAry1St
  loc_ACF076: FLdPr Me
  loc_ACF079: VCallAd Control_ID_CodiTiliTxt
  loc_ACF07C: CVarAd
  loc_ACF080: ParmAry1St
  loc_ACF086: FLdPr Me
  loc_ACF089: VCallAd Control_ID_DetaTiliTxt
  loc_ACF08C: CVarAd
  loc_ACF090: ParmAry1St
  loc_ACF096: FLdPr Me
  loc_ACF099: VCallAd Control_ID_ConcTiliMsk
  loc_ACF09C: CVarAd
  loc_ACF0A0: ParmAry1St
  loc_ACF0A6: FLdPr Me
  loc_ACF0A9: VCallAd Control_ID_DetaConcLbl
  loc_ACF0AC: CVarAd
  loc_ACF0B0: ParmAry1St
  loc_ACF0B6: FLdPr Me
  loc_ACF0B9: VCallAd Control_ID_CoreTiliMsk
  loc_ACF0BC: CVarAd
  loc_ACF0C0: ParmAry1St
  loc_ACF0C6: FLdPr Me
  loc_ACF0C9: VCallAd Control_ID_CogaTiliTxt
  loc_ACF0CC: CVarAd
  loc_ACF0D0: ParmAry1St
  loc_ACF0D6: FLdPr Me
  loc_ACF0D9: VCallAd Control_ID_DetaCoreLbl
  loc_ACF0DC: CVarAd
  loc_ACF0E0: ParmAry1St
  loc_ACF0E6: FLdPr Me
  loc_ACF0E9: VCallAd Control_ID_DescTiliTxt
  loc_ACF0EC: CVarAd
  loc_ACF0F0: ParmAry1St
  loc_ACF0F6: FLdPr Me
  loc_ACF0F9: VCallAd Control_ID_DeanTiliTxt
  loc_ACF0FC: CVarAd
  loc_ACF100: ParmAry1St
  loc_ACF106: FLdPr Me
  loc_ACF109: VCallAd Control_ID_GastTiliTxt
  loc_ACF10C: CVarAd
  loc_ACF110: ParmAry1St
  loc_ACF116: FLdPr Me
  loc_ACF119: VCallAd Control_ID_LeyeTiliTxt
  loc_ACF11C: CVarAd
  loc_ACF120: ParmAry1St
  loc_ACF126: FLdRfVar var_88
  loc_ACF129: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_ACF12E: ILdRf var_8C
  loc_ACF131: CastAd
  loc_ACF134: FLdPr Me
  loc_ACF137: MemStAdFunc
  loc_ACF13B: FLdRfVar var_88
  loc_ACF13E: Erase
  loc_ACF13F: FFree1Ad var_8C
  loc_ACF142: ExitProcHresult
End Sub
