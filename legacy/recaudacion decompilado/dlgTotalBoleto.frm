VERSION 5.00
Begin VB.Form dlgTotalBoleto
  Caption = "Total del Boleto"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 6288
  ClientHeight = 6600
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin VB.CheckBox ChkSellado
    Caption = "Sellado"
    Left = 4080
    Top = 3480
    Width = 1215
    Height = 375
    TabIndex = 18
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
    Caption = "Impresión"
    Left = 120
    Top = 4440
    Width = 6015
    Height = 1215
    TabIndex = 17
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.ComboBox cboImpresoras
      Style = 2
      ForeColor = &HFF0000&
      Left = 240
      Top = 480
      Width = 5655
      Height = 420
      TabIndex = 0
      List = "dlgTotalBoleto.frx":0000
      ItemData = "dlgTotalBoleto.frx":0074
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
  Begin VB.TextBox SelladoTxt
    Left = 1920
    Top = 3360
    Width = 1815
    Height = 375
    TabIndex = 15
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
  Begin VB.TextBox InteresTxt
    Left = 1920
    Top = 2160
    Width = 1815
    Height = 375
    TabIndex = 6
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
  Begin VB.TextBox TotalTxt
    Left = 1920
    Top = 3960
    Width = 1815
    Height = 375
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
  Begin VB.TextBox DescuentoTxt
    Left = 1920
    Top = 2760
    Width = 1815
    Height = 375
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
  Begin VB.TextBox ApremioTxt
    Left = 1920
    Top = 1560
    Width = 1815
    Height = 375
    TabIndex = 5
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
  Begin VB.TextBox RecargoTxt
    Left = 1920
    Top = 960
    Width = 1815
    Height = 375
    TabIndex = 4
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
  Begin VB.TextBox CapitalTxt
    Left = 1920
    Top = 360
    Width = 1815
    Height = 375
    TabIndex = 3
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
  Begin VB.CommandButton CancelButton
    Caption = "Cancelar"
    Left = 2760
    Top = 5880
    Width = 1335
    Height = 495
    TabIndex = 2
    Cancel = -1  'True
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
  Begin VB.CommandButton OKButton
    Caption = "Aceptar"
    Left = 960
    Top = 5880
    Width = 1335
    Height = 495
    TabIndex = 1
    Default = -1  'True
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
  Begin VB.Label Label6
    Caption = "Sellado:"
    Left = 1030
    Top = 3360
    Width = 855
    Height = 300
    TabIndex = 16
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
  Begin VB.Label Label7
    Caption = "Interes:"
    Left = 1095
    Top = 2160
    Width = 810
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
  Begin VB.Label Label5
    Caption = "Total:"
    Left = 1320
    Top = 3960
    Width = 585
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
    Caption = "Descuento:"
    Left = 675
    Top = 2760
    Width = 1230
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
    Caption = "Apremio:"
    Left = 960
    Top = 1560
    Width = 945
    Height = 300
    TabIndex = 11
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
    Caption = "Recargo:"
    Left = 930
    Top = 960
    Width = 975
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
    Caption = "Capital:"
    Left = 1110
    Top = 360
    Width = 795
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

Attribute VB_Name = "dlgTotalBoleto"

Public boAceptar As Boolean
Public ImpSeleccionada As String


Private Sub OKButton_Click() 'A273A8
  'Data Table: 45E510
  loc_A27360: LitI2_Byte 0
  loc_A27362: ImpAdStI2 MemVar_D93078
  loc_A27365: LitI2_Byte &HFF
  loc_A27367: FLdPr Me
  loc_A2736A: MemStI2 boAceptar
  loc_A2736D: FLdRfVar var_8C
  loc_A27370: FLdPr Me
  loc_A27373: VCallAd Control_ID_cboImpresoras
  loc_A27376: FStAdFunc var_88
  loc_A27379: FLdPr var_88
  loc_A2737C:  = Me.Text
  loc_A27381: ILdRf var_8C
  loc_A27384: FLdPr Me
  loc_A27387: MemStStrCopy
  loc_A2738B: FFree1Str var_8C
  loc_A2738E: FFree1Ad var_88
  loc_A27391: ILdRf Me
  loc_A27394: FStAdNoPop
  loc_A27398: ImpAdLdRf MemVar_D9C5D8
  loc_A2739B: NewIfNullPr Global
  loc_A2739E: Global.Unload from_stack_1
  loc_A273A3: FFree1Ad var_88
  loc_A273A6: ExitProcHresult
End Sub

Private Sub CancelButton_Click() '9E69EC
  'Data Table: 45E510
  loc_9E69CC: LitI2_Byte 0
  loc_9E69CE: FLdPr Me
  loc_9E69D1: MemStI2 boAceptar
  loc_9E69D4: ILdRf Me
  loc_9E69D7: FStAdNoPop
  loc_9E69DB: ImpAdLdRf MemVar_D9C5D8
  loc_9E69DE: NewIfNullPr Global
  loc_9E69E1: Global.Unload from_stack_1
  loc_9E69E6: FFree1Ad var_88
  loc_9E69E9: ExitProcHresult
End Sub

Private Sub Form_Load() 'B4B75C
  'Data Table: 45E510
  loc_B4B3CC: ImpAdLdFPR8 MemVar_D93068
  loc_B4B3CF: LitI2_Byte 0
  loc_B4B3D1: CR8I2
  loc_B4B3D2: GtR4
  loc_B4B3D3: BranchF loc_B4B46D
  loc_B4B3D6: LitI2_Byte 1
  loc_B4B3D8: FLdPr Me
  loc_B4B3DB: VCallAd Control_ID_ChkSellado
  loc_B4B3DE: FStAdFunc var_88
  loc_B4B3E1: FLdPr var_88
  loc_B4B3E4: Me.Value = from_stack_1
  loc_B4B3E9: FFree1Ad var_88
  loc_B4B3EC: LitI2_Byte 0
  loc_B4B3EE: FLdPr Me
  loc_B4B3F1: VCallAd Control_ID_ChkSellado
  loc_B4B3F4: FStAdFunc var_88
  loc_B4B3F7: FLdPr var_88
  loc_B4B3FA: Me.Enabled = from_stack_1b
  loc_B4B3FF: FFree1Ad var_88
  loc_B4B402: FLdPr Me
  loc_B4B405: MemLdRfVar from_stack_1.global_92
  loc_B4B408: NewIfNullRf
  loc_B4B40C: ImpAdLdI4 MemVar_D9302C
  loc_B4B40F: ImpAdCallI2  = Proc_270_3_C29F5C()
  loc_B4B414: BranchF loc_B4B43A
  loc_B4B417: FLdRfVar var_8C
  loc_B4B41A: FLdPr Me
  loc_B4B41D: MemLdRfVar from_stack_1.global_92
  loc_B4B420: NewIfNullPr tblusuario
  loc_B4B423: from_stack_1v = tblusuario.SellUsuaGet()
  loc_B4B428: ILdRf var_8C
  loc_B4B42B: CUI1Str
  loc_B4B42D: FLdPr Me
  loc_B4B430: MemStUI1
  loc_B4B434: FFree1Str var_8C
  loc_B4B437: Branch loc_B4B445
  loc_B4B43A: LitI2_Byte 0
  loc_B4B43C: CUI1I2
  loc_B4B43E: FLdPr Me
  loc_B4B441: MemStUI1
  loc_B4B445: FLdPr Me
  loc_B4B448: MemLdUI1 global_84
  loc_B4B44C: CI2UI1
  loc_B4B44E: LitI2_Byte 1
  loc_B4B450: EqI2
  loc_B4B451: BranchF loc_B4B46A
  loc_B4B454: LitI2_Byte &HFF
  loc_B4B456: FLdPr Me
  loc_B4B459: VCallAd Control_ID_ChkSellado
  loc_B4B45C: FStAdFunc var_88
  loc_B4B45F: FLdPr var_88
  loc_B4B462: Me.Enabled = from_stack_1b
  loc_B4B467: FFree1Ad var_88
  loc_B4B46A: Branch loc_B4B499
  loc_B4B46D: LitI2_Byte 0
  loc_B4B46F: FLdPr Me
  loc_B4B472: VCallAd Control_ID_ChkSellado
  loc_B4B475: FStAdFunc var_88
  loc_B4B478: FLdPr var_88
  loc_B4B47B: Me.Value = from_stack_1
  loc_B4B480: FFree1Ad var_88
  loc_B4B483: LitI2_Byte 0
  loc_B4B485: FLdPr Me
  loc_B4B488: VCallAd Control_ID_ChkSellado
  loc_B4B48B: FStAdFunc var_88
  loc_B4B48E: FLdPr var_88
  loc_B4B491: Me.Enabled = from_stack_1b
  loc_B4B496: FFree1Ad var_88
  loc_B4B499: LitI4 1
  loc_B4B49E: LitI4 1
  loc_B4B4A3: LitVarStr var_AC, "##,###,##0.00"
  loc_B4B4A8: FStVarCopyObj var_BC
  loc_B4B4AB: FLdRfVar var_BC
  loc_B4B4AE: ImpAdLdRf MemVar_D93040
  loc_B4B4B1: CVarRef
  loc_B4B4B6: FLdRfVar var_CC
  loc_B4B4B9: ImpAdCallFPR4  = Format(, )
  loc_B4B4BE: FLdRfVar var_CC
  loc_B4B4C1: CStrVarVal var_8C
  loc_B4B4C5: FLdPr Me
  loc_B4B4C8: VCallAd Control_ID_CapitalTxt
  loc_B4B4CB: FStAdFunc var_88
  loc_B4B4CE: FLdPr var_88
  loc_B4B4D1: Me.Text = from_stack_1
  loc_B4B4D6: FFree1Str var_8C
  loc_B4B4D9: FFree1Ad var_88
  loc_B4B4DC: FFreeVar var_BC = ""
  loc_B4B4E3: LitI4 1
  loc_B4B4E8: LitI4 1
  loc_B4B4ED: LitVarStr var_AC, "##,###,##0.00"
  loc_B4B4F2: FStVarCopyObj var_BC
  loc_B4B4F5: FLdRfVar var_BC
  loc_B4B4F8: ImpAdLdRf MemVar_D93058
  loc_B4B4FB: CVarRef
  loc_B4B500: FLdRfVar var_CC
  loc_B4B503: ImpAdCallFPR4  = Format(, )
  loc_B4B508: FLdRfVar var_CC
  loc_B4B50B: CStrVarVal var_8C
  loc_B4B50F: FLdPr Me
  loc_B4B512: VCallAd Control_ID_RecargoTxt
  loc_B4B515: FStAdFunc var_88
  loc_B4B518: FLdPr var_88
  loc_B4B51B: Me.Text = from_stack_1
  loc_B4B520: FFree1Str var_8C
  loc_B4B523: FFree1Ad var_88
  loc_B4B526: FFreeVar var_BC = ""
  loc_B4B52D: LitI4 1
  loc_B4B532: LitI4 1
  loc_B4B537: LitVarStr var_AC, "##,###,##0.00"
  loc_B4B53C: FStVarCopyObj var_BC
  loc_B4B53F: FLdRfVar var_BC
  loc_B4B542: ImpAdLdRf MemVar_D93050
  loc_B4B545: CVarRef
  loc_B4B54A: FLdRfVar var_CC
  loc_B4B54D: ImpAdCallFPR4  = Format(, )
  loc_B4B552: FLdRfVar var_CC
  loc_B4B555: CStrVarVal var_8C
  loc_B4B559: FLdPr Me
  loc_B4B55C: VCallAd Control_ID_ApremioTxt
  loc_B4B55F: FStAdFunc var_88
  loc_B4B562: FLdPr var_88
  loc_B4B565: Me.Text = from_stack_1
  loc_B4B56A: FFree1Str var_8C
  loc_B4B56D: FFree1Ad var_88
  loc_B4B570: FFreeVar var_BC = ""
  loc_B4B577: LitI4 1
  loc_B4B57C: LitI4 1
  loc_B4B581: LitVarStr var_AC, "##,###,##0.00"
  loc_B4B586: FStVarCopyObj var_BC
  loc_B4B589: FLdRfVar var_BC
  loc_B4B58C: ImpAdLdRf MemVar_D93060
  loc_B4B58F: CVarRef
  loc_B4B594: FLdRfVar var_CC
  loc_B4B597: ImpAdCallFPR4  = Format(, )
  loc_B4B59C: FLdRfVar var_CC
  loc_B4B59F: CStrVarVal var_8C
  loc_B4B5A3: FLdPr Me
  loc_B4B5A6: VCallAd Control_ID_InteresTxt
  loc_B4B5A9: FStAdFunc var_88
  loc_B4B5AC: FLdPr var_88
  loc_B4B5AF: Me.Text = from_stack_1
  loc_B4B5B4: FFree1Str var_8C
  loc_B4B5B7: FFree1Ad var_88
  loc_B4B5BA: FFreeVar var_BC = ""
  loc_B4B5C1: LitI4 1
  loc_B4B5C6: LitI4 1
  loc_B4B5CB: LitVarStr var_AC, "##,###,##0.00"
  loc_B4B5D0: FStVarCopyObj var_BC
  loc_B4B5D3: FLdRfVar var_BC
  loc_B4B5D6: ImpAdLdRf MemVar_D93048
  loc_B4B5D9: CVarRef
  loc_B4B5DE: FLdRfVar var_CC
  loc_B4B5E1: ImpAdCallFPR4  = Format(, )
  loc_B4B5E6: FLdRfVar var_CC
  loc_B4B5E9: CStrVarVal var_8C
  loc_B4B5ED: FLdPr Me
  loc_B4B5F0: VCallAd Control_ID_DescuentoTxt
  loc_B4B5F3: FStAdFunc var_88
  loc_B4B5F6: FLdPr var_88
  loc_B4B5F9: Me.Text = from_stack_1
  loc_B4B5FE: FFree1Str var_8C
  loc_B4B601: FFree1Ad var_88
  loc_B4B604: FFreeVar var_BC = ""
  loc_B4B60B: LitI4 1
  loc_B4B610: LitI4 1
  loc_B4B615: LitVarStr var_AC, "##,###,##0.00"
  loc_B4B61A: FStVarCopyObj var_BC
  loc_B4B61D: FLdRfVar var_BC
  loc_B4B620: ImpAdLdRf MemVar_D93068
  loc_B4B623: CVarRef
  loc_B4B628: FLdRfVar var_CC
  loc_B4B62B: ImpAdCallFPR4  = Format(, )
  loc_B4B630: FLdRfVar var_CC
  loc_B4B633: CStrVarVal var_8C
  loc_B4B637: FLdPr Me
  loc_B4B63A: VCallAd Control_ID_SelladoTxt
  loc_B4B63D: FStAdFunc var_88
  loc_B4B640: FLdPr var_88
  loc_B4B643: Me.Text = from_stack_1
  loc_B4B648: FFree1Str var_8C
  loc_B4B64B: FFree1Ad var_88
  loc_B4B64E: FFreeVar var_BC = ""
  loc_B4B655: LitI4 1
  loc_B4B65A: LitI4 1
  loc_B4B65F: LitVarStr var_AC, "##,###,##0.00"
  loc_B4B664: FStVarCopyObj var_BC
  loc_B4B667: FLdRfVar var_BC
  loc_B4B66A: ImpAdLdRf MemVar_D93070
  loc_B4B66D: CVarRef
  loc_B4B672: FLdRfVar var_CC
  loc_B4B675: ImpAdCallFPR4  = Format(, )
  loc_B4B67A: FLdRfVar var_CC
  loc_B4B67D: CStrVarVal var_8C
  loc_B4B681: FLdPr Me
  loc_B4B684: VCallAd Control_ID_TotalTxt
  loc_B4B687: FStAdFunc var_88
  loc_B4B68A: FLdPr var_88
  loc_B4B68D: Me.Text = from_stack_1
  loc_B4B692: FFree1Str var_8C
  loc_B4B695: FFree1Ad var_88
  loc_B4B698: FFreeVar var_BC = ""
  loc_B4B69F: FLdPr Me
  loc_B4B6A2: VCallAd Control_ID_cboImpresoras
  loc_B4B6A5: FStAdFunc var_88
  loc_B4B6A8: FLdPr var_88
  loc_B4B6AB: Me.Clear
  loc_B4B6B0: FFree1Ad var_88
  loc_B4B6B3: FLdRfVar var_88
  loc_B4B6B6: ImpAdLdRf MemVar_D9C5D8
  loc_B4B6B9: NewIfNullPr Global
  loc_B4B6BC:  = Global.Printers
  loc_B4B6C1: FLdZeroAd var_88
  loc_B4B6C4: FStAdFuncNoPop
  loc_B4B6C7: FLdRfVar var_D0
  loc_B4B6CA: ForEachCollObj
  loc_B4B6D2: LitVar_Missing var_9C
  loc_B4B6D5: PopAdLdVar
  loc_B4B6D6: FLdPr var_D0
  loc_B4B6D9: LateIdLdVar var_BC DispID_28 1
  loc_B4B6E0: CStrVarTmp
  loc_B4B6E1: FStStrNoPop var_8C
  loc_B4B6E4: FLdPr Me
  loc_B4B6E7: VCallAd Control_ID_cboImpresoras
  loc_B4B6EA: FStAdFunc var_88
  loc_B4B6ED: FLdPr var_88
  loc_B4B6F0: Me.AddItem from_stack_1, from_stack_2
  loc_B4B6F5: FFree1Str var_8C
  loc_B4B6F8: FFree1Ad var_88
  loc_B4B6FB: FFree1Var var_BC = ""
  loc_B4B6FE: FLdPr var_D0
  loc_B4B701: LateIdLdVar var_BC DispID_28 1
  loc_B4B708: CStrVarTmp
  loc_B4B709: FStStrNoPop var_8C
  loc_B4B70C: ImpAdLdI4 MemVar_D93CA4
  loc_B4B70F: EqStr
  loc_B4B711: FFree1Str var_8C
  loc_B4B714: FFree1Var var_BC = ""
  loc_B4B717: BranchF loc_B4B737
  loc_B4B71A: FLdRfVar var_DE
  loc_B4B71D: FLdPr Me
  loc_B4B720: VCallAd Control_ID_cboImpresoras
  loc_B4B723: FStAdFunc var_88
  loc_B4B726: FLdPr var_88
  loc_B4B729:  = Me.NewIndex
  loc_B4B72E: FLdI2 var_DE
  loc_B4B731: FStI2 var_D2
  loc_B4B734: FFree1Ad var_88
  loc_B4B737: FLdRfVar var_D0
  loc_B4B73A: NextEachCollObj
  loc_B4B742: FLdI2 var_D2
  loc_B4B745: FLdPr Me
  loc_B4B748: VCallAd Control_ID_cboImpresoras
  loc_B4B74B: FStAdFunc var_88
  loc_B4B74E: FLdPr var_88
  loc_B4B751: Me.ListIndex = from_stack_1
  loc_B4B756: FFree1Ad var_88
  loc_B4B759: ExitProcHresult
  loc_B4B75A: ImpAdLdFPR4 MemVar_3000A
End Sub

Private Sub ChkSellado_Click() 'AC29EC
  'Data Table: 45E510
  loc_AC28EC: FLdRfVar var_8A
  loc_AC28EF: FLdPr Me
  loc_AC28F2: VCallAd Control_ID_ChkSellado
  loc_AC28F5: FStAdFunc var_88
  loc_AC28F8: FLdPr var_88
  loc_AC28FB:  = Me.Value
  loc_AC2900: FLdI2 var_8A
  loc_AC2903: LitI2_Byte 0
  loc_AC2905: EqI2
  loc_AC2906: FFree1Ad var_88
  loc_AC2909: BranchF loc_AC2915
  loc_AC290C: LitI2_Byte 0
  loc_AC290E: CR8I2
  loc_AC290F: ImpAdStFPR8 MemVar_D93068
  loc_AC2912: Branch loc_AC293B
  loc_AC2915: LitI4 2
  loc_AC291A: LitI2_Byte 2
  loc_AC291C: CR8I2
  loc_AC291D: ImpAdLdFPR8 MemVar_D9307C
  loc_AC2920: MulR8
  loc_AC2921: CVarR8
  loc_AC2925: FLdRfVar var_BC
  loc_AC2928: ImpAdCallFPR4  = Round(, )
  loc_AC292D: FLdRfVar var_BC
  loc_AC2930: CR4Var
  loc_AC2931: ImpAdStFPR8 MemVar_D93068
  loc_AC2934: FFreeVar var_AC = ""
  loc_AC293B: LitI4 1
  loc_AC2940: LitI4 1
  loc_AC2945: LitVarStr var_CC, "##,###,##0.00"
  loc_AC294A: FStVarCopyObj var_AC
  loc_AC294D: FLdRfVar var_AC
  loc_AC2950: ImpAdLdRf MemVar_D93068
  loc_AC2953: CVarRef
  loc_AC2958: FLdRfVar var_BC
  loc_AC295B: ImpAdCallFPR4  = Format(, )
  loc_AC2960: FLdRfVar var_BC
  loc_AC2963: CStrVarVal var_D0
  loc_AC2967: FLdPr Me
  loc_AC296A: VCallAd Control_ID_SelladoTxt
  loc_AC296D: FStAdFunc var_88
  loc_AC2970: FLdPr var_88
  loc_AC2973: Me.Text = from_stack_1
  loc_AC2978: FFree1Str var_D0
  loc_AC297B: FFree1Ad var_88
  loc_AC297E: FFreeVar var_AC = ""
  loc_AC2985: ImpAdLdFPR8 MemVar_D93040
  loc_AC2988: ImpAdLdFPR8 MemVar_D93058
  loc_AC298B: AddR8
  loc_AC298C: ImpAdLdFPR8 MemVar_D93050
  loc_AC298F: AddR8
  loc_AC2990: ImpAdLdFPR8 MemVar_D93060
  loc_AC2993: AddR8
  loc_AC2994: ImpAdLdFPR8 MemVar_D93048
  loc_AC2997: SubR4
  loc_AC2998: ImpAdLdFPR8 MemVar_D93068
  loc_AC299B: AddR8
  loc_AC299C: ImpAdStFPR8 MemVar_D93070
  loc_AC299F: LitI4 1
  loc_AC29A4: LitI4 1
  loc_AC29A9: LitVarStr var_CC, "##,###,##0.00"
  loc_AC29AE: FStVarCopyObj var_AC
  loc_AC29B1: FLdRfVar var_AC
  loc_AC29B4: ImpAdLdRf MemVar_D93070
  loc_AC29B7: CVarRef
  loc_AC29BC: FLdRfVar var_BC
  loc_AC29BF: ImpAdCallFPR4  = Format(, )
  loc_AC29C4: FLdRfVar var_BC
  loc_AC29C7: CStrVarVal var_D0
  loc_AC29CB: FLdPr Me
  loc_AC29CE: VCallAd Control_ID_TotalTxt
  loc_AC29D1: FStAdFunc var_88
  loc_AC29D4: FLdPr var_88
  loc_AC29D7: Me.Text = from_stack_1
  loc_AC29DC: FFree1Str var_D0
  loc_AC29DF: FFree1Ad var_88
  loc_AC29E2: FFreeVar var_AC = ""
  loc_AC29E9: ExitProcHresult
End Sub

Public Function boAceptarGet() '45F114
  boAceptarGet = boAceptar
End Function

Public Sub boAceptarPut(Value) '45F123
  boAceptar = Value
End Sub

Public Function ImpSeleccionadaGet() '45F132
  ImpSeleccionadaGet = ImpSeleccionada
End Function

Public Sub ImpSeleccionadaPut(Value) '45F141
  ImpSeleccionada = Value
End Sub

Private Function Proc_274_8_9B195C() '9B195C
  'Data Table: 45E510
  loc_9B1950: LitI2_Byte 0
  loc_9B1952: CR8I2
  loc_9B1953: FLdPr Me
  loc_9B1956: MemStFPR8 global_68
  loc_9B1959: ExitProcHresult
  loc_9B195A: FStStrNoPop var_6800
End Function
