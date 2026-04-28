VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmRecepciondeOrdendeCompraABM
  Caption = "Recepción de Facturas "
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmRecepciondeOrdendeCompraABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 15795
  ClientHeight = 10035
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
    Width = 10695
    Height = 855
    TabIndex = 2
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 4
      OleObjectBlob = "frmRecepciondeOrdendeCompraABM.frx":08CA
    End
  End
  Begin VB.Frame Frame1
    Caption = " Recepción de Facturas "
    Left = 120
    Top = 3960
    Width = 15015
    Height = 1455
    TabIndex = 6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox ExpeImpuGDETxt
      Left = 9720
      Top = 840
      Width = 4815
      Height = 420
      TabIndex = 21
    End
    Begin MSMask.MaskEdBox mskRecibir
      Left = 13800
      Top = 360
      Width = 735
      Height = 375
      TabIndex = 14
      OleObjectBlob = "frmRecepciondeOrdendeCompraABM.frx":0952
    End
    Begin VB.CommandButton cmdRecibir
      Caption = "Recibir % parcial"
      Left = 11520
      Top = 360
      Width = 2175
      Height = 375
      TabIndex = 13
    End
    Begin VB.ComboBox TifaReceCbo
      Left = 5880
      Top = 840
      Width = 975
      Height = 360
      TabIndex = 18
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataField = "TifaRece"
    End
    Begin VB.TextBox ExpeImpuTxt
      Left = 2400
      Top = 840
      Width = 2175
      Height = 360
      TabIndex = 16
      MaxLength = 15
      DataField = "ExpeImpu"
    End
    Begin MSMask.MaskEdBox FechReceMsk
      Left = 2400
      Top = 360
      Width = 1335
      Height = 345
      TabIndex = 8
      OleObjectBlob = "frmRecepciondeOrdendeCompraABM.frx":09B6
    End
    Begin MSMask.MaskEdBox NufaReceMsk
      Left = 7800
      Top = 840
      Width = 1695
      Height = 345
      TabIndex = 20
      OleObjectBlob = "frmRecepciondeOrdendeCompraABM.frx":0A66
    End
    Begin MSMask.MaskEdBox SufaReceMsk
      Left = 6960
      Top = 840
      Width = 735
      Height = 345
      TabIndex = 19
      OleObjectBlob = "frmRecepciondeOrdendeCompraABM.frx":0AEE
    End
    Begin MSMask.MaskEdBox FefaReceMsk
      Left = 6120
      Top = 360
      Width = 1335
      Height = 345
      TabIndex = 10
      OleObjectBlob = "frmRecepciondeOrdendeCompraABM.frx":0B76
    End
    Begin MSMask.MaskEdBox FepaReceMsk
      Left = 9720
      Top = 360
      Width = 1335
      Height = 345
      TabIndex = 12
      OleObjectBlob = "frmRecepciondeOrdendeCompraABM.frx":0C26
    End
    Begin VB.Label Label5
      Caption = "Expediente de Pago:"
      Left = 120
      Top = 870
      Width = 2205
      Height = 300
      TabIndex = 15
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Fecha de pago:"
      Left = 7920
      Top = 360
      Width = 1665
      Height = 300
      TabIndex = 11
      Alignment = 1 'Right Justify
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
    Begin VB.Label Label2
      Caption = "Fecha de Factura:"
      Left = 4095
      Top = 360
      Width = 1950
      Height = 300
      TabIndex = 9
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
    Begin VB.Label Label4
      Caption = "Factura:"
      Left = 4920
      Top = 840
      Width = 885
      Height = 300
      TabIndex = 17
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Fecha de recepción:"
      Left = 120
      Top = 360
      Width = 2160
      Height = 300
      TabIndex = 7
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
    Width = 15015
    Height = 2175
    TabIndex = 5
    OleObjectBlob = "frmRecepciondeOrdendeCompraABM.frx":0CD6
  End
  Begin MSFlexGridLib.MSFlexGrid FlexItemNota
    Left = 120
    Top = 5520
    Width = 15135
    Height = 3135
    TabIndex = 22
    OleObjectBlob = "frmRecepciondeOrdendeCompraABM.frx":1386
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmRecepciondeOrdendeCompraABM.frx":1472
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15795
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmRecepciondeOrdendeCompraABM.frx":8FF0
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmRecepciondeOrdendeCompraABM.frx":954C
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin VB.Label DetaPartLbl
    Left = 120
    Top = 9480
    Width = 10695
    Height = 375
    TabIndex = 26
    BorderStyle = 1 'Fixed Single
  End
  Begin VB.Label TotaReceLbl
    Left = 12840
    Top = 8760
    Width = 2295
    Height = 480
    TabIndex = 25
    BorderStyle = 1 'Fixed Single
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13,5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label CaraItcoLbl
    Left = 120
    Top = 8760
    Width = 10695
    Height = 600
    TabIndex = 23
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label12
    Caption = "Total Recepción:"
    Left = 11040
    Top = 8880
    Width = 1785
    Height = 300
    TabIndex = 24
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
  End
End

Attribute VB_Name = "frmRecepciondeOrdendeCompraABM"


Private Sub ExpeImpuTxt_GotFocus() 'A2C0C4
  'Data Table: 4BFDF0
  loc_A2BF00: FLdRfVar var_D4
  loc_A2BF03: FLdRfVar var_A0
  loc_A2BF06: LitVarStr var_9C, "CucuPers"
  loc_A2BF0B: PopAdLdVar
  loc_A2BF0C: FLdRfVar var_8C
  loc_A2BF0F: FLdRfVar var_88
  loc_A2BF12: FLdPr Me
  loc_A2BF15: MemLdRfVar from_stack_1.global_52
  loc_A2BF18: NewIfNullPr clsordencompra
  loc_A2BF1B: from_stack_1v = clsordencompra.RsFrmGet()
  loc_A2BF20: FLdPr var_88
  loc_A2BF23:  = Me.Fields
  loc_A2BF28: FLdPr var_8C
  loc_A2BF2B: from_stack_2 = Me.Item(from_stack_1)
  loc_A2BF30: FLdPr var_A0
  loc_A2BF33:  = Me.Value
  loc_A2BF38: FLdRfVar var_E8
  loc_A2BF3B: FLdRfVar var_BC
  loc_A2BF3E: LitVarStr var_B8, "ExpeImpu"
  loc_A2BF43: PopAdLdVar
  loc_A2BF44: FLdRfVar var_A8
  loc_A2BF47: FLdRfVar var_A4
  loc_A2BF4A: FLdPr Me
  loc_A2BF4D: MemLdRfVar from_stack_1.global_52
  loc_A2BF50: NewIfNullPr clsordencompra
  loc_A2BF53: from_stack_1v = clsordencompra.RsFrmGet()
  loc_A2BF58: FLdPr var_A4
  loc_A2BF5B:  = Me.Fields
  loc_A2BF60: FLdPr var_A8
  loc_A2BF63: from_stack_2 = Me.Item(from_stack_1)
  loc_A2BF68: FLdPr var_BC
  loc_A2BF6B:  = Me.Value
  loc_A2BF70: FLdRfVar var_C4
  loc_A2BF73: FLdPr Me
  loc_A2BF76: VCallAd Control_ID_ExpeImpuTxt
  loc_A2BF79: FStAdFunc var_C0
  loc_A2BF7C: FLdPr var_C0
  loc_A2BF7F:  = Me.Text
  loc_A2BF84: ILdRf var_C4
  loc_A2BF87: FLdRfVar var_E8
  loc_A2BF8A: CStrVarTmp
  loc_A2BF8B: FStStrNoPop var_EC
  loc_A2BF8E: FLdRfVar var_D4
  loc_A2BF91: CStrVarTmp
  loc_A2BF92: FStStrNoPop var_D8
  loc_A2BF95: ImpAdCallI2 Proc_283_1_9C9B04(, , )
  loc_A2BF9A: FStStrNoPop var_F0
  loc_A2BF9D: FLdPr Me
  loc_A2BFA0: VCallAd Control_ID_ExpeImpuTxt
  loc_A2BFA3: FStAdFunc var_F4
  loc_A2BFA6: FLdPr var_F4
  loc_A2BFA9: Me.Text = from_stack_1
  loc_A2BFAE: FFreeStr var_D8 = "": var_EC = "": var_C4 = ""
  loc_A2BFB9: FFreeAd var_88 = "": var_8C = "": var_A4 = "": var_A8 = "": var_C0 = "": var_A0 = "": var_BC = ""
  loc_A2BFCC: FFreeVar var_D4 = ""
  loc_A2BFD3: LitStr "Municipalidad de Guaymallén"
  loc_A2BFD6: LitStr "Municipalidad de General Alvear"
  loc_A2BFD9: EqStr
  loc_A2BFDB: BranchF loc_A2C0B1
  loc_A2BFDE: FLdRfVar var_D4
  loc_A2BFE1: FLdRfVar var_A0
  loc_A2BFE4: LitVarStr var_9C, "CucuPers"
  loc_A2BFE9: PopAdLdVar
  loc_A2BFEA: FLdRfVar var_8C
  loc_A2BFED: FLdRfVar var_88
  loc_A2BFF0: FLdPr Me
  loc_A2BFF3: MemLdRfVar from_stack_1.global_52
  loc_A2BFF6: NewIfNullPr clsordencompra
  loc_A2BFF9: from_stack_1v = clsordencompra.RsFrmGet()
  loc_A2BFFE: FLdPr var_88
  loc_A2C001:  = Me.Fields
  loc_A2C006: FLdPr var_8C
  loc_A2C009: from_stack_2 = Me.Item(from_stack_1)
  loc_A2C00E: FLdPr var_A0
  loc_A2C011:  = Me.Value
  loc_A2C016: FLdRfVar var_E8
  loc_A2C019: FLdRfVar var_BC
  loc_A2C01C: LitVarStr var_B8, "ExpeImpu"
  loc_A2C021: PopAdLdVar
  loc_A2C022: FLdRfVar var_A8
  loc_A2C025: FLdRfVar var_A4
  loc_A2C028: FLdPr Me
  loc_A2C02B: MemLdRfVar from_stack_1.global_52
  loc_A2C02E: NewIfNullPr clsordencompra
  loc_A2C031: from_stack_1v = clsordencompra.RsFrmGet()
  loc_A2C036: FLdPr var_A4
  loc_A2C039:  = Me.Fields
  loc_A2C03E: FLdPr var_A8
  loc_A2C041: from_stack_2 = Me.Item(from_stack_1)
  loc_A2C046: FLdPr var_BC
  loc_A2C049:  = Me.Value
  loc_A2C04E: FLdRfVar var_C4
  loc_A2C051: FLdPr Me
  loc_A2C054: VCallAd Control_ID_ExpeImpuTxt
  loc_A2C057: FStAdFunc var_C0
  loc_A2C05A: FLdPr var_C0
  loc_A2C05D:  = Me.Text
  loc_A2C062: ILdRf var_C4
  loc_A2C065: FLdRfVar var_E8
  loc_A2C068: CStrVarTmp
  loc_A2C069: FStStrNoPop var_EC
  loc_A2C06C: FLdRfVar var_D4
  loc_A2C06F: CStrVarTmp
  loc_A2C070: FStStrNoPop var_D8
  loc_A2C073: ImpAdCallI2 Proc_283_1_9C9B04(, , )
  loc_A2C078: FStStrNoPop var_F0
  loc_A2C07B: FLdPr Me
  loc_A2C07E: VCallAd Control_ID_ExpeImpuTxt
  loc_A2C081: FStAdFunc var_F4
  loc_A2C084: FLdPr var_F4
  loc_A2C087: Me.Text = from_stack_1
  loc_A2C08C: FFreeStr var_D8 = "": var_EC = "": var_C4 = ""
  loc_A2C097: FFreeAd var_88 = "": var_8C = "": var_A4 = "": var_A8 = "": var_C0 = "": var_A0 = "": var_BC = ""
  loc_A2C0AA: FFreeVar var_D4 = ""
  loc_A2C0B1: FLdPr Me
  loc_A2C0B4: VCallAd Control_ID_ExpeImpuTxt
  loc_A2C0B7: CVarAd
  loc_A2C0BB: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_A2C0C0: FFree1Var var_D4 = ""
  loc_A2C0C3: ExitProcHresult
End Sub

Private Sub ExpeImpuTxt_Validate(Cancel As Boolean) '9D358C
  'Data Table: 4BFDF0
  loc_9D34A8: Call ExpeImpuTxt_GotFocus()
  loc_9D34AD: FLdRfVar var_8A
  loc_9D34B0: FLdPr Me
  loc_9D34B3: VCallAd Control_ID_cmdCancelar
  loc_9D34B6: FStAdFunc var_88
  loc_9D34B9: FLdPr var_88
  loc_9D34BC:  = Me.Value
  loc_9D34C1: FLdI2 var_8A
  loc_9D34C4: NotI4
  loc_9D34C5: FLdRfVar var_92
  loc_9D34C8: FLdPr Me
  loc_9D34CB: VCallAd Control_ID_ExpeImpuTxt
  loc_9D34CE: FStAdFunc var_90
  loc_9D34D1: FLdPr var_90
  loc_9D34D4:  = Me.Enabled
  loc_9D34D9: FLdI2 var_92
  loc_9D34DC: AndI4
  loc_9D34DD: FFreeAd var_88 = ""
  loc_9D34E4: BranchF loc_9D3588
  loc_9D34E7: FLdRfVar var_98
  loc_9D34EA: FLdPr Me
  loc_9D34ED: VCallAd Control_ID_ExpeImpuTxt
  loc_9D34F0: FStAdFunc var_88
  loc_9D34F3: FLdPr var_88
  loc_9D34F6:  = Me.Text
  loc_9D34FB: LitI2_Byte 0
  loc_9D34FD: PopTmpLdAd2 var_9A
  loc_9D3500: LitI2_Byte 0
  loc_9D3502: PopTmpLdAd2 var_92
  loc_9D3505: LitI2_Byte 0
  loc_9D3507: PopTmpLdAd2 var_8A
  loc_9D350A: ILdRf var_98
  loc_9D350D: LitStr "Expediente de Pago"
  loc_9D3510: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9D3515: FStStrNoPop var_A0
  loc_9D3518: FLdPr Me
  loc_9D351B: MemStStrCopy
  loc_9D351F: FFreeStr var_98 = ""
  loc_9D3526: FFree1Ad var_88
  loc_9D3529: LitStr "Municipalidad de Guaymallén"
  loc_9D352C: LitStr "Municipalidad de General Alvear"
  loc_9D352F: EqStr
  loc_9D3531: BranchF loc_9D354C
  loc_9D3534: FLdPr Me
  loc_9D3537: MemLdStr global_80
  loc_9D353A: LitStr "Ingrese un valor Válido para Expediente de Pago . Verifique..."
  loc_9D353D: EqStr
  loc_9D353F: BranchF loc_9D354C
  loc_9D3542: LitStr vbNullString
  loc_9D3545: FLdPr Me
  loc_9D3548: MemStStrCopy
  loc_9D354C: FLdPr Me
  loc_9D354F: VCallAd Control_ID_ExpeImpuTxt
  loc_9D3552: FStAdFunc var_A8
  loc_9D3555: LitNothing
  loc_9D3557: CastAd
  loc_9D355A: FStAdFunc var_A4
  loc_9D355D: FLdRfVar var_A4
  loc_9D3560: FLdZeroAd var_A8
  loc_9D3563: FStAdFuncNoPop
  loc_9D3566: CastAd
  loc_9D3569: FStAdFunc var_90
  loc_9D356C: FLdRfVar var_90
  loc_9D356F: FLdPr Me
  loc_9D3572: MemLdRfVar from_stack_1.global_80
  loc_9D3575: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D357A: IStI2 Cancel
  loc_9D357D: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9D3588: ExitProcHresult
  loc_9D3589: FLdRfVar var_A0
End Sub

Private Sub dgdABMS_UnknownEvent_0 '965300
  'Data Table: 4BFDF0
  loc_9652E8: FLdPr Me
  loc_9652EB: VCallAd Control_ID_dgdABMS
  loc_9652EE: FStAdFunc var_88
  loc_9652F1: FLdRfVar var_88
  loc_9652F4: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_9652F9: FFree1Ad var_88
  loc_9652FC: ExitProcHresult
  loc_9652FD: FLdPr Me
End Sub

Private Sub dgdABMS_UnknownEvent_1 '965B50
  'Data Table: 4BFDF0
  loc_965B38: FLdPr Me
  loc_965B3B: VCallAd Control_ID_dgdABMS
  loc_965B3E: FStAdFunc var_88
  loc_965B41: FLdRfVar var_88
  loc_965B44: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_965B49: FFree1Ad var_88
  loc_965B4C: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99BFA4
  'Data Table: 4BFDF0
  loc_99BF48: FLdRfVar var_B4
  loc_99BF4B: FLdRfVar var_B0
  loc_99BF4E: FLdI2 ColIndex
  loc_99BF51: CVarI2 var_A8
  loc_99BF54: PopAdLdVar
  loc_99BF55: FLdPr Me
  loc_99BF58: VCallAd Control_ID_dgdABMS
  loc_99BF5B: FStAdFunc var_88
  loc_99BF5E: FLdPr var_88
  loc_99BF61: LateIdLdVar var_98 DispID_105 0
  loc_99BF68: CastAdVar Me
  loc_99BF6C: FStAdFunc var_AC
  loc_99BF6F: FLdPr var_AC
  loc_99BF72: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99BF77: FLdPr var_B0
  loc_99BF7A:  = Me.DataField
  loc_99BF7F: FLdZeroAd var_B4
  loc_99BF82: PopTmpLdAdStr
  loc_99BF86: FLdPr Me
  loc_99BF89: MemLdRfVar from_stack_1.global_52
  loc_99BF8C: NewIfNullPr clsordencompra
  loc_99BF8F: Call clsordencompra.Sort(from_stack_1v)
  loc_99BF94: FFree1Str var_B8
  loc_99BF97: FFreeAd var_88 = "": var_AC = ""
  loc_99BFA0: FFree1Var var_98 = ""
  loc_99BFA3: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'B60E0C
  'Data Table: 4BFDF0
  loc_B60494: FLdPr Me
  loc_B60497: MemLdUI1 global_76
  loc_B6049B: CI2UI1
  loc_B6049D: LitI2_Byte 0
  loc_B6049F: EqI2
  loc_B604A0: FLdRfVar var_88
  loc_B604A3: FLdPr Me
  loc_B604A6: MemLdRfVar from_stack_1.global_52
  loc_B604A9: NewIfNullPr clsordencompra
  loc_B604AC: from_stack_1 = clsordencompra.RecordCount
  loc_B604B1: ILdRf var_88
  loc_B604B4: LitI4 0
  loc_B604B9: GtI4
  loc_B604BA: AndI4
  loc_B604BB: FLdRfVar var_8C
  loc_B604BE: FLdPr Me
  loc_B604C1: MemLdRfVar from_stack_1.global_52
  loc_B604C4: NewIfNullPr clsordencompra
  loc_B604C7: from_stack_1 = clsordencompra.AbsolutePosition
  loc_B604CC: ILdRf var_8C
  loc_B604CF: LitI4 -3
  loc_B604D4: NeI4
  loc_B604D5: AndI4
  loc_B604D6: BranchF loc_B60D6C
  loc_B604D9: Call Proc_138_43_A35EB8()
  loc_B604DE: LitStr "SELECT itc.*, DetaInsu"
  loc_B604E1: LitStr ", fnSaldItco(itc.PeriInfo, itc.CodiOrco, itc.CodiItco, itc.AlteItco) SaldoItem"
  loc_B604E4: ConcatStr
  loc_B604E5: FStStrNoPop var_90
  loc_B604E8: LitStr ", fnSaldItcoImpo(itc.PeriInfo, itc.CodiOrco, itc.CodiItco, itc.AlteItco) SaldoItemImpo"
  loc_B604EB: ConcatStr
  loc_B604EC: FStStrNoPop var_94
  loc_B604EF: LitStr " FROM itemcompra itc"
  loc_B604F2: ConcatStr
  loc_B604F3: FStStrNoPop var_98
  loc_B604F6: LitStr " INNER JOIN infogov.insumo i ON i.CodiInsu = itc.CodiInsu "
  loc_B604F9: ConcatStr
  loc_B604FA: FStStrNoPop var_9C
  loc_B604FD: LitStr " WHERE itc.PeriInfo = "
  loc_B60500: ConcatStr
  loc_B60501: CVarStr var_D8
  loc_B60504: FLdRfVar var_C8
  loc_B60507: FLdRfVar var_B8
  loc_B6050A: LitVarStr var_B4, "PeriInfo"
  loc_B6050F: PopAdLdVar
  loc_B60510: FLdRfVar var_A4
  loc_B60513: FLdRfVar var_A0
  loc_B60516: FLdPr Me
  loc_B60519: MemLdRfVar from_stack_1.global_52
  loc_B6051C: NewIfNullPr clsordencompra
  loc_B6051F: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B60524: FLdPr var_A0
  loc_B60527:  = Me.Fields
  loc_B6052C: FLdPr var_A4
  loc_B6052F: from_stack_2 = Me.Item(from_stack_1)
  loc_B60534: FLdPr var_B8
  loc_B60537:  = Me.Value
  loc_B6053C: FLdRfVar var_C8
  loc_B6053F: ConcatVar var_E8
  loc_B60543: LitVarStr var_F8, " AND CodiOrco = "
  loc_B60548: ConcatVar var_108
  loc_B6054C: FLdRfVar var_134
  loc_B6054F: FLdRfVar var_124
  loc_B60552: LitVarStr var_120, "CodiOrco"
  loc_B60557: PopAdLdVar
  loc_B60558: FLdRfVar var_110
  loc_B6055B: FLdRfVar var_10C
  loc_B6055E: FLdPr Me
  loc_B60561: MemLdRfVar from_stack_1.global_52
  loc_B60564: NewIfNullPr clsordencompra
  loc_B60567: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B6056C: FLdPr var_10C
  loc_B6056F:  = Me.Fields
  loc_B60574: FLdPr var_110
  loc_B60577: from_stack_2 = Me.Item(from_stack_1)
  loc_B6057C: FLdPr var_124
  loc_B6057F:  = Me.Value
  loc_B60584: FLdRfVar var_134
  loc_B60587: ConcatVar var_144
  loc_B6058B: LitVarStr var_154, " AND IdImpu > 0 "
  loc_B60590: ConcatVar var_164
  loc_B60594: LitVarStr var_174, " HAVING SaldoItemImpo > 0"
  loc_B60599: ConcatVar var_184
  loc_B6059D: LitVarStr var_194, " ORDER BY PeriInfo, CodiOrco, CodiItco, AlteItco;"
  loc_B605A2: ConcatVar var_1A4
  loc_B605A6: CStrVarVal var_1A8
  loc_B605AA: FLdPr Me
  loc_B605AD: MemLdRfVar from_stack_1.global_56
  loc_B605B0: NewIfNullPr clsordencompra
  loc_B605B3: Call clsordencompra.RedefineRS(from_stack_1v)
  loc_B605B8: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_B605C5: FFreeAd var_A0 = "": var_A4 = "": var_B8 = "": var_10C = "": var_110 = ""
  loc_B605D4: FFreeVar var_D8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_134 = "": var_144 = "": var_164 = "": var_184 = ""
  loc_B605E9: FLdRfVar var_88
  loc_B605EC: FLdPr Me
  loc_B605EF: MemLdRfVar from_stack_1.global_56
  loc_B605F2: NewIfNullPr clsordencompra
  loc_B605F5: from_stack_1 = clsordencompra.RecordCount
  loc_B605FA: ILdRf var_88
  loc_B605FD: LitI4 0
  loc_B60602: GtI4
  loc_B60603: BranchF loc_B60D69
  loc_B60606: FLdPr Me
  loc_B60609: MemLdRfVar from_stack_1.global_56
  loc_B6060C: NewIfNullPr clsordencompra
  loc_B6060F: Call clsordencompra.MoveFirst()
  loc_B60614: LitI2_Byte 0
  loc_B60616: CR8I2
  loc_B60617: FLdPr Me
  loc_B6061A: MemStFPR8 global_84
  loc_B6061D: FLdRfVar var_1AA
  loc_B60620: FLdPr Me
  loc_B60623: MemLdRfVar from_stack_1.global_56
  loc_B60626: NewIfNullPr clsordencompra
  loc_B60629: from_stack_1 = clsordencompra.EOF
  loc_B6062E: FLdI2 var_1AA
  loc_B60631: NotI4
  loc_B60632: BranchF loc_B60D69
  loc_B60635: FLdRfVar var_C8
  loc_B60638: FLdRfVar var_B8
  loc_B6063B: LitVarStr var_B4, "SaldoItemImpo"
  loc_B60640: PopAdLdVar
  loc_B60641: FLdRfVar var_A4
  loc_B60644: FLdRfVar var_A0
  loc_B60647: FLdPr Me
  loc_B6064A: MemLdRfVar from_stack_1.global_56
  loc_B6064D: NewIfNullPr clsordencompra
  loc_B60650: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B60655: FLdPr var_A0
  loc_B60658:  = Me.Fields
  loc_B6065D: FLdPr var_A4
  loc_B60660: from_stack_2 = Me.Item(from_stack_1)
  loc_B60665: FLdPr var_B8
  loc_B60668:  = Me.Value
  loc_B6066D: LitI4 3
  loc_B60672: FLdRfVar var_C8
  loc_B60675: FnCDblVar
  loc_B60677: CVarR8
  loc_B6067B: FLdRfVar var_E8
  loc_B6067E: ImpAdCallFPR4  = Round(, )
  loc_B60683: LitI4 1
  loc_B60688: LitI4 1
  loc_B6068D: LitVarStr var_120, "###,###,##0.00"
  loc_B60692: FStVarCopyObj var_108
  loc_B60695: FLdRfVar var_108
  loc_B60698: FLdRfVar var_E8
  loc_B6069B: ImpAdCallI2 Format$(, )
  loc_B606A0: FStStrNoPop var_90
  loc_B606A3: CR8Str
  loc_B606A5: FLdPr Me
  loc_B606A8: MemStFPR8 global_64
  loc_B606AB: FFree1Str var_90
  loc_B606AE: FFreeAd var_A0 = "": var_A4 = ""
  loc_B606B7: FFreeVar var_C8 = "": var_D8 = "": var_E8 = ""
  loc_B606C2: LitI4 3
  loc_B606C7: FLdPr Me
  loc_B606CA: MemLdFPR8 global_84
  loc_B606CD: FLdPr Me
  loc_B606D0: MemLdFPR8 global_64
  loc_B606D3: AddR8
  loc_B606D4: CVarR8
  loc_B606D8: FLdRfVar var_D8
  loc_B606DB: ImpAdCallFPR4  = Round(, )
  loc_B606E0: FLdRfVar var_D8
  loc_B606E3: CR4Var
  loc_B606E4: FLdPr Me
  loc_B606E7: MemStFPR8 global_84
  loc_B606EA: FFreeVar var_C8 = ""
  loc_B606F1: FLdRfVar var_27C
  loc_B606F4: LitVarStr var_194, "SaldoItem"
  loc_B606F9: PopAdLdVar
  loc_B606FA: FLdRfVar var_278
  loc_B606FD: FLdRfVar var_274
  loc_B60700: FLdPr Me
  loc_B60703: MemLdRfVar from_stack_1.global_56
  loc_B60706: NewIfNullPr clsordencompra
  loc_B60709: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B6070E: FLdPr var_274
  loc_B60711:  = Me.Fields
  loc_B60716: FLdPr var_278
  loc_B60719: from_stack_2 = Me.Item(from_stack_1)
  loc_B6071E: FLdRfVar var_318
  loc_B60721: FLdRfVar var_308
  loc_B60724: LitVarStr var_304, "ReimpTico"
  loc_B60729: PopAdLdVar
  loc_B6072A: FLdRfVar var_2F4
  loc_B6072D: FLdRfVar var_2F0
  loc_B60730: FLdPr Me
  loc_B60733: MemLdRfVar from_stack_1.global_52
  loc_B60736: NewIfNullPr clsordencompra
  loc_B60739: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B6073E: FLdPr var_2F0
  loc_B60741:  = Me.Fields
  loc_B60746: FLdPr var_2F4
  loc_B60749: from_stack_2 = Me.Item(from_stack_1)
  loc_B6074E: FLdPr var_308
  loc_B60751:  = Me.Value
  loc_B60756: FLdRfVar var_354
  loc_B60759: LitVarStr var_350, "ImunItco"
  loc_B6075E: PopAdLdVar
  loc_B6075F: FLdRfVar var_340
  loc_B60762: FLdRfVar var_33C
  loc_B60765: FLdPr Me
  loc_B60768: MemLdRfVar from_stack_1.global_56
  loc_B6076B: NewIfNullPr clsordencompra
  loc_B6076E: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B60773: FLdPr var_33C
  loc_B60776:  = Me.Fields
  loc_B6077B: FLdPr var_340
  loc_B6077E: from_stack_2 = Me.Item(from_stack_1)
  loc_B60783: FLdRfVar var_D8
  loc_B60786: FLdRfVar var_B8
  loc_B60789: LitVarStr var_B4, "CodiItco"
  loc_B6078E: PopAdLdVar
  loc_B6078F: FLdRfVar var_A4
  loc_B60792: FLdRfVar var_A0
  loc_B60795: FLdPr Me
  loc_B60798: MemLdRfVar from_stack_1.global_56
  loc_B6079B: NewIfNullPr clsordencompra
  loc_B6079E: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B607A3: FLdPr var_A0
  loc_B607A6:  = Me.Fields
  loc_B607AB: FLdPr var_A4
  loc_B607AE: from_stack_2 = Me.Item(from_stack_1)
  loc_B607B3: FLdPr var_B8
  loc_B607B6:  = Me.Value
  loc_B607BB: FLdRfVar var_D8
  loc_B607BE: LitI4 9
  loc_B607C3: FLdRfVar var_C8
  loc_B607C6: ImpAdCallFPR4  = Chr()
  loc_B607CB: FLdRfVar var_C8
  loc_B607CE: ConcatVar var_E8
  loc_B607D2: FLdRfVar var_108
  loc_B607D5: FLdRfVar var_124
  loc_B607D8: LitVarStr var_F8, "AlteItco"
  loc_B607DD: PopAdLdVar
  loc_B607DE: FLdRfVar var_110
  loc_B607E1: FLdRfVar var_10C
  loc_B607E4: FLdPr Me
  loc_B607E7: MemLdRfVar from_stack_1.global_56
  loc_B607EA: NewIfNullPr clsordencompra
  loc_B607ED: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B607F2: FLdPr var_10C
  loc_B607F5:  = Me.Fields
  loc_B607FA: FLdPr var_110
  loc_B607FD: from_stack_2 = Me.Item(from_stack_1)
  loc_B60802: FLdPr var_124
  loc_B60805:  = Me.Value
  loc_B6080A: FLdRfVar var_108
  loc_B6080D: ConcatVar var_134
  loc_B60811: LitI4 9
  loc_B60816: FLdRfVar var_144
  loc_B60819: ImpAdCallFPR4  = Chr()
  loc_B6081E: FLdRfVar var_144
  loc_B60821: ConcatVar var_164
  loc_B60825: FLdRfVar var_184
  loc_B60828: FLdRfVar var_1B8
  loc_B6082B: LitVarStr var_120, "CodiInsu"
  loc_B60830: PopAdLdVar
  loc_B60831: FLdRfVar var_1B4
  loc_B60834: FLdRfVar var_1B0
  loc_B60837: FLdPr Me
  loc_B6083A: MemLdRfVar from_stack_1.global_56
  loc_B6083D: NewIfNullPr clsordencompra
  loc_B60840: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B60845: FLdPr var_1B0
  loc_B60848:  = Me.Fields
  loc_B6084D: FLdPr var_1B4
  loc_B60850: from_stack_2 = Me.Item(from_stack_1)
  loc_B60855: FLdPr var_1B8
  loc_B60858:  = Me.Value
  loc_B6085D: FLdRfVar var_184
  loc_B60860: ConcatVar var_1A4
  loc_B60864: LitI4 9
  loc_B60869: FLdRfVar var_1C8
  loc_B6086C: ImpAdCallFPR4  = Chr()
  loc_B60871: FLdRfVar var_1C8
  loc_B60874: ConcatVar var_1D8
  loc_B60878: FLdRfVar var_1F4
  loc_B6087B: FLdRfVar var_1E4
  loc_B6087E: LitVarStr var_154, "DetaInsu"
  loc_B60883: PopAdLdVar
  loc_B60884: FLdRfVar var_1E0
  loc_B60887: FLdRfVar var_1DC
  loc_B6088A: FLdPr Me
  loc_B6088D: MemLdRfVar from_stack_1.global_56
  loc_B60890: NewIfNullPr clsordencompra
  loc_B60893: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B60898: FLdPr var_1DC
  loc_B6089B:  = Me.Fields
  loc_B608A0: FLdPr var_1E0
  loc_B608A3: from_stack_2 = Me.Item(from_stack_1)
  loc_B608A8: FLdPr var_1E4
  loc_B608AB:  = Me.Value
  loc_B608B0: FLdRfVar var_1F4
  loc_B608B3: ConcatVar var_204
  loc_B608B7: LitI4 9
  loc_B608BC: FLdRfVar var_214
  loc_B608BF: ImpAdCallFPR4  = Chr()
  loc_B608C4: FLdRfVar var_214
  loc_B608C7: ConcatVar var_224
  loc_B608CB: FLdRfVar var_240
  loc_B608CE: FLdRfVar var_230
  loc_B608D1: LitVarStr var_174, "DetaItco"
  loc_B608D6: PopAdLdVar
  loc_B608D7: FLdRfVar var_22C
  loc_B608DA: FLdRfVar var_228
  loc_B608DD: FLdPr Me
  loc_B608E0: MemLdRfVar from_stack_1.global_56
  loc_B608E3: NewIfNullPr clsordencompra
  loc_B608E6: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B608EB: FLdPr var_228
  loc_B608EE:  = Me.Fields
  loc_B608F3: FLdPr var_22C
  loc_B608F6: from_stack_2 = Me.Item(from_stack_1)
  loc_B608FB: FLdPr var_230
  loc_B608FE:  = Me.Value
  loc_B60903: FLdRfVar var_240
  loc_B60906: ConcatVar var_250
  loc_B6090A: LitI4 9
  loc_B6090F: FLdRfVar var_260
  loc_B60912: ImpAdCallFPR4  = Chr()
  loc_B60917: FLdRfVar var_260
  loc_B6091A: ConcatVar var_270
  loc_B6091E: LitI4 1
  loc_B60923: LitI4 1
  loc_B60928: LitVarStr var_29C, "0.000"
  loc_B6092D: FStVarCopyObj var_2AC
  loc_B60930: FLdRfVar var_2AC
  loc_B60933: FLdZeroAd var_27C
  loc_B60936: CVarAd
  loc_B6093A: FLdRfVar var_2BC
  loc_B6093D: ImpAdCallFPR4  = Format(, )
  loc_B60942: FLdRfVar var_2BC
  loc_B60945: ConcatVar var_2CC
  loc_B60949: LitI4 9
  loc_B6094E: FLdRfVar var_2DC
  loc_B60951: ImpAdCallFPR4  = Chr()
  loc_B60956: FLdRfVar var_2DC
  loc_B60959: ConcatVar var_2EC
  loc_B6095D: LitI4 1
  loc_B60962: LitI4 1
  loc_B60967: LitVarStr var_374, "0.00"
  loc_B6096C: FStVarCopyObj var_384
  loc_B6096F: FLdRfVar var_384
  loc_B60972: FLdZeroAd var_354
  loc_B60975: CVarAd
  loc_B60979: FLdRfVar var_394
  loc_B6097C: ImpAdCallFPR4  = Format(, )
  loc_B60981: FLdRfVar var_394
  loc_B60984: FLdPr Me
  loc_B60987: MemLdRfVar from_stack_1.global_64
  loc_B6098A: CVarRef
  loc_B6098F: FLdRfVar var_318
  loc_B60992: LitVarI2 var_328, 1
  loc_B60997: HardType
  loc_B60998: EqVar var_338
  loc_B6099C: FStVar var_3A4
  loc_B609A0: FLdRfVar var_3A4
  loc_B609A3: FLdRfVar var_3C4
  loc_B609A6: ImpAdCallFPR4  = IIf(, , )
  loc_B609AB: FLdRfVar var_3C4
  loc_B609AE: ConcatVar var_3D4
  loc_B609B2: LitI4 9
  loc_B609B7: FLdRfVar var_3E4
  loc_B609BA: ImpAdCallFPR4  = Chr()
  loc_B609BF: FLdRfVar var_3E4
  loc_B609C2: ConcatVar var_3F4
  loc_B609C6: LitI4 1
  loc_B609CB: LitI4 1
  loc_B609D0: LitVarStr var_414, "0.00"
  loc_B609D5: FStVarCopyObj var_424
  loc_B609D8: FLdRfVar var_424
  loc_B609DB: FLdPr Me
  loc_B609DE: MemLdRfVar from_stack_1.global_64
  loc_B609E1: CVarRef
  loc_B609E6: FLdRfVar var_434
  loc_B609E9: ImpAdCallFPR4  = Format(, )
  loc_B609EE: FLdRfVar var_434
  loc_B609F1: ConcatVar var_444
  loc_B609F5: LitI4 9
  loc_B609FA: FLdRfVar var_454
  loc_B609FD: ImpAdCallFPR4  = Chr()
  loc_B60A02: FLdRfVar var_454
  loc_B60A05: ConcatVar var_464
  loc_B60A09: FLdRfVar var_490
  loc_B60A0C: FLdRfVar var_480
  loc_B60A0F: LitVarStr var_47C, "CodiPart"
  loc_B60A14: PopAdLdVar
  loc_B60A15: FLdRfVar var_46C
  loc_B60A18: FLdRfVar var_468
  loc_B60A1B: FLdPr Me
  loc_B60A1E: MemLdRfVar from_stack_1.global_56
  loc_B60A21: NewIfNullPr clsordencompra
  loc_B60A24: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B60A29: FLdPr var_468
  loc_B60A2C:  = Me.Fields
  loc_B60A31: FLdPr var_46C
  loc_B60A34: from_stack_2 = Me.Item(from_stack_1)
  loc_B60A39: FLdPr var_480
  loc_B60A3C:  = Me.Value
  loc_B60A41: FLdRfVar var_490
  loc_B60A44: ConcatVar var_4A0
  loc_B60A48: LitI4 9
  loc_B60A4D: FLdRfVar var_4B0
  loc_B60A50: ImpAdCallFPR4  = Chr()
  loc_B60A55: FLdRfVar var_4B0
  loc_B60A58: ConcatVar var_4C0
  loc_B60A5C: FLdRfVar var_4EC
  loc_B60A5F: FLdRfVar var_4DC
  loc_B60A62: LitVarStr var_4D8, "CodiOrga"
  loc_B60A67: PopAdLdVar
  loc_B60A68: FLdRfVar var_4C8
  loc_B60A6B: FLdRfVar var_4C4
  loc_B60A6E: FLdPr Me
  loc_B60A71: MemLdRfVar from_stack_1.global_56
  loc_B60A74: NewIfNullPr clsordencompra
  loc_B60A77: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B60A7C: FLdPr var_4C4
  loc_B60A7F:  = Me.Fields
  loc_B60A84: FLdPr var_4C8
  loc_B60A87: from_stack_2 = Me.Item(from_stack_1)
  loc_B60A8C: FLdPr var_4DC
  loc_B60A8F:  = Me.Value
  loc_B60A94: FLdRfVar var_4EC
  loc_B60A97: ConcatVar var_4FC
  loc_B60A9B: LitI4 9
  loc_B60AA0: FLdRfVar var_50C
  loc_B60AA3: ImpAdCallFPR4  = Chr()
  loc_B60AA8: FLdRfVar var_50C
  loc_B60AAB: ConcatVar var_51C
  loc_B60AAF: FLdRfVar var_548
  loc_B60AB2: FLdRfVar var_538
  loc_B60AB5: LitVarStr var_534, "CodiUnga"
  loc_B60ABA: PopAdLdVar
  loc_B60ABB: FLdRfVar var_524
  loc_B60ABE: FLdRfVar var_520
  loc_B60AC1: FLdPr Me
  loc_B60AC4: MemLdRfVar from_stack_1.global_56
  loc_B60AC7: NewIfNullPr clsordencompra
  loc_B60ACA: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B60ACF: FLdPr var_520
  loc_B60AD2:  = Me.Fields
  loc_B60AD7: FLdPr var_524
  loc_B60ADA: from_stack_2 = Me.Item(from_stack_1)
  loc_B60ADF: FLdPr var_538
  loc_B60AE2:  = Me.Value
  loc_B60AE7: FLdRfVar var_548
  loc_B60AEA: ConcatVar var_558
  loc_B60AEE: LitI4 9
  loc_B60AF3: FLdRfVar var_568
  loc_B60AF6: ImpAdCallFPR4  = Chr()
  loc_B60AFB: FLdRfVar var_568
  loc_B60AFE: ConcatVar var_578
  loc_B60B02: FLdRfVar var_5A4
  loc_B60B05: FLdRfVar var_594
  loc_B60B08: LitVarStr var_590, "CodiFifu"
  loc_B60B0D: PopAdLdVar
  loc_B60B0E: FLdRfVar var_580
  loc_B60B11: FLdRfVar var_57C
  loc_B60B14: FLdPr Me
  loc_B60B17: MemLdRfVar from_stack_1.global_56
  loc_B60B1A: NewIfNullPr clsordencompra
  loc_B60B1D: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B60B22: FLdPr var_57C
  loc_B60B25:  = Me.Fields
  loc_B60B2A: FLdPr var_580
  loc_B60B2D: from_stack_2 = Me.Item(from_stack_1)
  loc_B60B32: FLdPr var_594
  loc_B60B35:  = Me.Value
  loc_B60B3A: FLdRfVar var_5A4
  loc_B60B3D: ConcatVar var_5B4
  loc_B60B41: LitI4 9
  loc_B60B46: FLdRfVar var_5C4
  loc_B60B49: ImpAdCallFPR4  = Chr()
  loc_B60B4E: FLdRfVar var_5C4
  loc_B60B51: ConcatVar var_5D4
  loc_B60B55: FLdRfVar var_600
  loc_B60B58: FLdRfVar var_5F0
  loc_B60B5B: LitVarStr var_5EC, "CaraItco"
  loc_B60B60: PopAdLdVar
  loc_B60B61: FLdRfVar var_5DC
  loc_B60B64: FLdRfVar var_5D8
  loc_B60B67: FLdPr Me
  loc_B60B6A: MemLdRfVar from_stack_1.global_56
  loc_B60B6D: NewIfNullPr clsordencompra
  loc_B60B70: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B60B75: FLdPr var_5D8
  loc_B60B78:  = Me.Fields
  loc_B60B7D: FLdPr var_5DC
  loc_B60B80: from_stack_2 = Me.Item(from_stack_1)
  loc_B60B85: FLdPr var_5F0
  loc_B60B88:  = Me.Value
  loc_B60B8D: FLdRfVar var_600
  loc_B60B90: ConcatVar var_610
  loc_B60B94: LitI4 9
  loc_B60B99: FLdRfVar var_620
  loc_B60B9C: ImpAdCallFPR4  = Chr()
  loc_B60BA1: FLdRfVar var_620
  loc_B60BA4: ConcatVar var_630
  loc_B60BA8: FLdRfVar var_65C
  loc_B60BAB: FLdRfVar var_64C
  loc_B60BAE: LitVarStr var_648, "SaldoItem"
  loc_B60BB3: PopAdLdVar
  loc_B60BB4: FLdRfVar var_638
  loc_B60BB7: FLdRfVar var_634
  loc_B60BBA: FLdPr Me
  loc_B60BBD: MemLdRfVar from_stack_1.global_56
  loc_B60BC0: NewIfNullPr clsordencompra
  loc_B60BC3: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B60BC8: FLdPr var_634
  loc_B60BCB:  = Me.Fields
  loc_B60BD0: FLdPr var_638
  loc_B60BD3: from_stack_2 = Me.Item(from_stack_1)
  loc_B60BD8: FLdPr var_64C
  loc_B60BDB:  = Me.Value
  loc_B60BE0: FLdRfVar var_65C
  loc_B60BE3: ConcatVar var_66C
  loc_B60BE7: LitI4 9
  loc_B60BEC: FLdRfVar var_67C
  loc_B60BEF: ImpAdCallFPR4  = Chr()
  loc_B60BF4: FLdRfVar var_67C
  loc_B60BF7: ConcatVar var_68C
  loc_B60BFB: FLdRfVar var_6B8
  loc_B60BFE: FLdRfVar var_6A8
  loc_B60C01: LitVarStr var_6A4, "SaldoItemImpo"
  loc_B60C06: PopAdLdVar
  loc_B60C07: FLdRfVar var_694
  loc_B60C0A: FLdRfVar var_690
  loc_B60C0D: FLdPr Me
  loc_B60C10: MemLdRfVar from_stack_1.global_56
  loc_B60C13: NewIfNullPr clsordencompra
  loc_B60C16: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B60C1B: FLdPr var_690
  loc_B60C1E:  = Me.Fields
  loc_B60C23: FLdPr var_694
  loc_B60C26: from_stack_2 = Me.Item(from_stack_1)
  loc_B60C2B: FLdPr var_6A8
  loc_B60C2E:  = Me.Value
  loc_B60C33: FLdRfVar var_6B8
  loc_B60C36: ConcatVar var_6C8
  loc_B60C3A: LitI4 9
  loc_B60C3F: FLdRfVar var_6D8
  loc_B60C42: ImpAdCallFPR4  = Chr()
  loc_B60C47: FLdRfVar var_6D8
  loc_B60C4A: ConcatVar var_6E8
  loc_B60C4E: LitVarStr var_6F8, "0"
  loc_B60C53: ConcatVar var_708
  loc_B60C57: CStrVarTmp
  loc_B60C58: CVarStr var_718
  loc_B60C5B: PopAdLdVar
  loc_B60C5C: FLdPr Me
  loc_B60C5F: VCallAd Control_ID_FlexItemNota
  loc_B60C62: FStAdFunc var_72C
  loc_B60C65: FLdPr var_72C
  loc_B60C68: LateIdCall
  loc_B60C70: FFreeAd var_538 = "": var_57C = "": var_580 = "": var_594 = "": var_5D8 = "": var_5DC = "": var_5F0 = "": var_634 = "": var_638 = "": var_64C = "": var_690 = "": var_694 = "": var_6A8 = "": var_72C = "": var_A0 = "": var_A4 = "": var_B8 = "": var_10C = "": var_110 = "": var_124 = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_228 = "": var_22C = "": var_230 = "": var_274 = "": var_278 = "": var_2F0 = "": var_2F4 = "": var_308 = "": var_33C = "": var_340 = "": var_468 = "": var_46C = "": var_480 = "": var_4C4 = "": var_4C8 = "": var_4DC = "": var_520 = ""
  loc_B60CCB: FFreeVar var_66C = "": var_67C = "": var_68C = "": var_6B8 = "": var_6C8 = "": var_6D8 = "": var_6E8 = "": var_708 = "": var_718 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_424 = "": var_3F4 = "": var_434 = "": var_444 = "": var_454 = "": var_464 = "": var_490 = "": var_4A0 = "": var_4B0 = "": var_4C0 = "": var_4EC = "": var_4FC = "": var_50C = "": var_51C = "": var_548 = "": var_558 = "": var_568 = "": var_578 = "": var_5A4 = "": var_5B4 = "": var_5C4 = "": var_5D4 = "": var_600 = "": var_610 = "": var_620 = "": var_630 = "": var_65C = "": var_D8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_134 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C8 = "": var_1D8 = "": var_1F4 = "": var_204 = "": var_214 = "": var_224 = "": var_240 = "": var_250 = "": var_260 = "": var_28C = "": var_2AC = "": var_270 = "": var_2BC = "": var_2CC = "": var_2DC = "": var_318 = "": var_364 = "": var_384 = "": var_3A4 = "": var_394 = ""
  loc_B60D58: FLdPr Me
  loc_B60D5B: MemLdRfVar from_stack_1.global_56
  loc_B60D5E: NewIfNullPr clsordencompra
  loc_B60D61: Call clsordencompra.MoveSiguiente()
  loc_B60D66: Branch loc_B6061D
  loc_B60D69: Branch loc_B60D9B
  loc_B60D6C: FLdPr Me
  loc_B60D6F: MemLdUI1 global_76
  loc_B60D73: CI2UI1
  loc_B60D75: LitI2_Byte 0
  loc_B60D77: EqI2
  loc_B60D78: FLdRfVar var_88
  loc_B60D7B: FLdPr Me
  loc_B60D7E: MemLdRfVar from_stack_1.global_52
  loc_B60D81: NewIfNullPr clsordencompra
  loc_B60D84: from_stack_1 = clsordencompra.RecordCount
  loc_B60D89: ILdRf var_88
  loc_B60D8C: LitI4 0
  loc_B60D91: LeI4
  loc_B60D92: AndI4
  loc_B60D93: BranchF loc_B60D9B
  loc_B60D96: Call Proc_138_43_A35EB8()
  loc_B60D9B: LitI4 1
  loc_B60DA0: LitI4 1
  loc_B60DA5: LitVarStr var_F8, "currency"
  loc_B60DAA: FStVarCopyObj var_C8
  loc_B60DAD: FLdRfVar var_C8
  loc_B60DB0: FLdPr Me
  loc_B60DB3: MemLdRfVar from_stack_1.global_84
  loc_B60DB6: CVarRef
  loc_B60DBB: ImpAdCallI2 Format$(, )
  loc_B60DC0: FStStrNoPop var_90
  loc_B60DC3: FLdPr Me
  loc_B60DC6: VCallAd Control_ID_TotaReceLbl
  loc_B60DC9: FStAdFunc var_A0
  loc_B60DCC: FLdPr var_A0
  loc_B60DCF: Me.Caption = from_stack_1
  loc_B60DD4: FFree1Str var_90
  loc_B60DD7: FFree1Ad var_A0
  loc_B60DDA: FFree1Var var_C8 = ""
  loc_B60DDD: LitStr vbNullString
  loc_B60DE0: FLdPr Me
  loc_B60DE3: VCallAd Control_ID_CaraItcoLbl
  loc_B60DE6: FStAdFunc var_A0
  loc_B60DE9: FLdPr var_A0
  loc_B60DEC: Me.Caption = from_stack_1
  loc_B60DF1: FFree1Ad var_A0
  loc_B60DF4: LitStr vbNullString
  loc_B60DF7: FLdPr Me
  loc_B60DFA: VCallAd Control_ID_DetaPartLbl
  loc_B60DFD: FStAdFunc var_A0
  loc_B60E00: FLdPr var_A0
  loc_B60E03: Me.Caption = from_stack_1
  loc_B60E08: FFree1Ad var_A0
  loc_B60E0B: ExitProcHresult
End Sub

Private Sub Form_Load() 'ACC450
  'Data Table: 4BFDF0
  loc_ACBE44: ImpAdLdI2 MemVar_C3D064
  loc_ACBE47: LitI2 2025
  loc_ACBE4A: LeI2
  loc_ACBE4B: BranchF loc_ACBE6B
  loc_ACBE4E: LitVarI4
  loc_ACBE56: PopAdLdVar
  loc_ACBE57: FLdPr Me
  loc_ACBE5A: VCallAd Control_ID_dgdABMS
  loc_ACBE5D: FStAdFunc var_A8
  loc_ACBE60: FLdPr var_A8
  loc_ACBE63: LateIdSt
  loc_ACBE68: FFree1Ad var_A8
  loc_ACBE6B: LitStr "Municipalidad de Guaymallén"
  loc_ACBE6E: LitStr "Municipalidad de Maipú"
  loc_ACBE71: EqStr
  loc_ACBE73: BranchF loc_ACBE8F
  loc_ACBE76: LitI2_Byte &HFF
  loc_ACBE78: FLdPr Me
  loc_ACBE7B: VCallAd Control_ID_ExpeImpuGDETxt
  loc_ACBE7E: FStAdFunc var_A8
  loc_ACBE81: FLdPr var_A8
  loc_ACBE84: Me.Visible = from_stack_1b
  loc_ACBE89: FFree1Ad var_A8
  loc_ACBE8C: Branch loc_ACBEA5
  loc_ACBE8F: LitI2_Byte 0
  loc_ACBE91: FLdPr Me
  loc_ACBE94: VCallAd Control_ID_ExpeImpuGDETxt
  loc_ACBE97: FStAdFunc var_A8
  loc_ACBE9A: FLdPr var_A8
  loc_ACBE9D: Me.Visible = from_stack_1b
  loc_ACBEA2: FFree1Ad var_A8
  loc_ACBEA5: ILdRf Me
  loc_ACBEA8: CastAd
  loc_ACBEAB: FStAdFunc var_A8
  loc_ACBEAE: FLdRfVar var_A8
  loc_ACBEB1: ImpAdCallFPR4 Proc_261_41_999BCC()
  loc_ACBEB6: FFree1Ad var_A8
  loc_ACBEB9: ILdRf Me
  loc_ACBEBC: CastAd
  loc_ACBEBF: FStAdFunc var_A8
  loc_ACBEC2: FLdRfVar var_A8
  loc_ACBEC5: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_ACBECA: FFree1Ad var_A8
  loc_ACBECD: LitI2_Byte 0
  loc_ACBECF: CR8I2
  loc_ACBED0: PopFPR4
  loc_ACBED1: FLdPr Me
  loc_ACBED4: Me.Left = from_stack_1s
  loc_ACBED9: LitI2_Byte 0
  loc_ACBEDB: CR8I2
  loc_ACBEDC: PopFPR4
  loc_ACBEDD: FLdPr Me
  loc_ACBEE0: Me.Top = from_stack_1s
  loc_ACBEE5: LitStr vbNullString
  loc_ACBEE8: FLdPr Me
  loc_ACBEEB: MemStStrCopy
  loc_ACBEEF: LitStr "SELECT FactProv TifaRece, oc.*, DetaProv, DetaOrga, DetaTico, ReimpTico"
  loc_ACBEF2: LitStr " FROM ordencompra oc"
  loc_ACBEF5: ConcatStr
  loc_ACBEF6: FStStrNoPop var_AC
  loc_ACBEF9: LitStr " INNER JOIN itemcompra itc ON itc.PeriInfo = oc.PeriInfo AND itc.CodiOrco = oc.CodiOrco"
  loc_ACBEFC: ConcatStr
  loc_ACBEFD: FStStrNoPop var_B0
  loc_ACBF00: LitStr " INNER JOIN tipocompra tc ON tc.CodiTico = oc.CodiTico"
  loc_ACBF03: ConcatStr
  loc_ACBF04: FStStrNoPop var_B4
  loc_ACBF07: LitStr " INNER JOIN proveedor p ON p.CucuPers = oc.CucuPers"
  loc_ACBF0A: ConcatStr
  loc_ACBF0B: FStStrNoPop var_B8
  loc_ACBF0E: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = oc.PeriInfo AND o.CodiOrga = oc.CodiOrga"
  loc_ACBF11: ConcatStr
  loc_ACBF12: FStStrNoPop var_BC
  loc_ACBF15: LitStr " WHERE oc.PeriInfo = "
  loc_ACBF18: ConcatStr
  loc_ACBF19: FStStrNoPop var_C0
  loc_ACBF1C: ImpAdLdI2 MemVar_C3D064
  loc_ACBF1F: CStrUI1
  loc_ACBF21: FStStrNoPop var_C4
  loc_ACBF24: ConcatStr
  loc_ACBF25: FStStrNoPop var_C8
  loc_ACBF28: LitStr " AND fnSaldItcoImpo(itc.PeriInfo, itc.CodiOrco, itc.CodiItco, itc.AlteItco) > 0"
  loc_ACBF2B: ConcatStr
  loc_ACBF2C: FStStrNoPop var_CC
  loc_ACBF2F: LitStr " AND itc.IdImpu <> 0"
  loc_ACBF32: ConcatStr
  loc_ACBF33: FStStrNoPop var_D0
  loc_ACBF36: LitStr " GROUP BY oc.PeriInfo, oc.CodiOrco"
  loc_ACBF39: ConcatStr
  loc_ACBF3A: FStStrNoPop var_D4
  loc_ACBF3D: LitStr " ORDER BY oc.PeriInfo, oc.CodiOrco;"
  loc_ACBF40: ConcatStr
  loc_ACBF41: FStStrNoPop var_D8
  loc_ACBF44: FLdPr Me
  loc_ACBF47: MemLdRfVar from_stack_1.global_52
  loc_ACBF4A: NewIfNullPr clsordencompra
  loc_ACBF4D: Call clsordencompra.RedefineRS(from_stack_1v)
  loc_ACBF52: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_ACBF6D: FLdPr Me
  loc_ACBF70: VCallAd Control_ID_FlexItemNota
  loc_ACBF73: FStAdFunc var_DC
  loc_ACBF76: LitVarI4
  loc_ACBF7E: PopAdLdVar
  loc_ACBF7F: LitVarI4
  loc_ACBF87: PopAdLdVar
  loc_ACBF88: FLdPr var_DC
  loc_ACBF8B: LateIdCallSt
  loc_ACBF93: LitVarI4
  loc_ACBF9B: PopAdLdVar
  loc_ACBF9C: LitVarI4
  loc_ACBFA4: PopAdLdVar
  loc_ACBFA5: FLdPr var_DC
  loc_ACBFA8: LateIdCallSt
  loc_ACBFB0: LitVarI4
  loc_ACBFB8: PopAdLdVar
  loc_ACBFB9: LitVarI4
  loc_ACBFC1: PopAdLdVar
  loc_ACBFC2: FLdPr var_DC
  loc_ACBFC5: LateIdCallSt
  loc_ACBFCD: LitVarI4
  loc_ACBFD5: PopAdLdVar
  loc_ACBFD6: LitVarI4
  loc_ACBFDE: PopAdLdVar
  loc_ACBFDF: FLdPr var_DC
  loc_ACBFE2: LateIdCallSt
  loc_ACBFEA: LitVarI4
  loc_ACBFF2: PopAdLdVar
  loc_ACBFF3: LitVarI4
  loc_ACBFFB: PopAdLdVar
  loc_ACBFFC: FLdPr var_DC
  loc_ACBFFF: LateIdCallSt
  loc_ACC007: LitVarI4
  loc_ACC00F: PopAdLdVar
  loc_ACC010: LitVarI4
  loc_ACC018: PopAdLdVar
  loc_ACC019: FLdPr var_DC
  loc_ACC01C: LateIdCallSt
  loc_ACC024: LitVarI4
  loc_ACC02C: PopAdLdVar
  loc_ACC02D: LitVarI4
  loc_ACC035: PopAdLdVar
  loc_ACC036: FLdPr var_DC
  loc_ACC039: LateIdCallSt
  loc_ACC041: LitVarI4
  loc_ACC049: PopAdLdVar
  loc_ACC04A: LitVarI4
  loc_ACC052: PopAdLdVar
  loc_ACC053: FLdPr var_DC
  loc_ACC056: LateIdCallSt
  loc_ACC05E: LitVarI4
  loc_ACC066: PopAdLdVar
  loc_ACC067: LitVarI4
  loc_ACC06F: PopAdLdVar
  loc_ACC070: FLdPr var_DC
  loc_ACC073: LateIdCallSt
  loc_ACC07B: LitVarI4
  loc_ACC083: PopAdLdVar
  loc_ACC084: LitVarI4
  loc_ACC08C: PopAdLdVar
  loc_ACC08D: FLdPr var_DC
  loc_ACC090: LateIdCallSt
  loc_ACC098: LitVarI4
  loc_ACC0A0: PopAdLdVar
  loc_ACC0A1: LitVarI4
  loc_ACC0A9: PopAdLdVar
  loc_ACC0AA: FLdPr var_DC
  loc_ACC0AD: LateIdCallSt
  loc_ACC0B5: LitVarI4
  loc_ACC0BD: PopAdLdVar
  loc_ACC0BE: LitVarI4
  loc_ACC0C6: PopAdLdVar
  loc_ACC0C7: FLdPr var_DC
  loc_ACC0CA: LateIdCallSt
  loc_ACC0D2: LitVarI4
  loc_ACC0DA: PopAdLdVar
  loc_ACC0DB: LitVarI4
  loc_ACC0E3: PopAdLdVar
  loc_ACC0E4: FLdPr var_DC
  loc_ACC0E7: LateIdCallSt
  loc_ACC0EF: LitVarI4
  loc_ACC0F7: PopAdLdVar
  loc_ACC0F8: LitVarI4
  loc_ACC100: PopAdLdVar
  loc_ACC101: FLdPr var_DC
  loc_ACC104: LateIdCallSt
  loc_ACC10C: LitVarI4
  loc_ACC114: PopAdLdVar
  loc_ACC115: LitVarI4
  loc_ACC11D: PopAdLdVar
  loc_ACC11E: FLdPr var_DC
  loc_ACC121: LateIdCallSt
  loc_ACC129: LitVarI4
  loc_ACC131: PopAdLdVar
  loc_ACC132: LitVarI4
  loc_ACC13A: PopAdLdVar
  loc_ACC13B: FLdPr var_DC
  loc_ACC13E: LateIdCallSt
  loc_ACC146: LitVarI4
  loc_ACC14E: PopAdLdVar
  loc_ACC14F: LitVarI4
  loc_ACC157: PopAdLdVar
  loc_ACC158: LitVarStr var_10C, "Item"
  loc_ACC15D: PopAdLdVar
  loc_ACC15E: FLdPr var_DC
  loc_ACC161: LateIdCallSt
  loc_ACC169: LitVarI4
  loc_ACC171: PopAdLdVar
  loc_ACC172: LitVarI4
  loc_ACC17A: PopAdLdVar
  loc_ACC17B: LitVarStr var_10C, "Alt."
  loc_ACC180: PopAdLdVar
  loc_ACC181: FLdPr var_DC
  loc_ACC184: LateIdCallSt
  loc_ACC18C: LitVarI4
  loc_ACC194: PopAdLdVar
  loc_ACC195: LitVarI4
  loc_ACC19D: PopAdLdVar
  loc_ACC19E: LitVarStr var_10C, "Código"
  loc_ACC1A3: PopAdLdVar
  loc_ACC1A4: FLdPr var_DC
  loc_ACC1A7: LateIdCallSt
  loc_ACC1AF: LitVarI4
  loc_ACC1B7: PopAdLdVar
  loc_ACC1B8: LitVarI4
  loc_ACC1C0: PopAdLdVar
  loc_ACC1C1: LitVarStr var_10C, "Detalle del Insumo"
  loc_ACC1C6: PopAdLdVar
  loc_ACC1C7: FLdPr var_DC
  loc_ACC1CA: LateIdCallSt
  loc_ACC1D2: LitVarI4
  loc_ACC1DA: PopAdLdVar
  loc_ACC1DB: LitVarI4
  loc_ACC1E3: PopAdLdVar
  loc_ACC1E4: LitVarStr var_10C, "Detalle AMPLIADO del Insumo"
  loc_ACC1E9: PopAdLdVar
  loc_ACC1EA: FLdPr var_DC
  loc_ACC1ED: LateIdCallSt
  loc_ACC1F5: LitVarI4
  loc_ACC1FD: PopAdLdVar
  loc_ACC1FE: LitVarI4
  loc_ACC206: PopAdLdVar
  loc_ACC207: LitVarStr var_10C, "Cantidad"
  loc_ACC20C: PopAdLdVar
  loc_ACC20D: FLdPr var_DC
  loc_ACC210: LateIdCallSt
  loc_ACC218: LitVarI4
  loc_ACC220: PopAdLdVar
  loc_ACC221: LitVarI4
  loc_ACC229: PopAdLdVar
  loc_ACC22A: LitVarStr var_10C, "Pr. Unitario"
  loc_ACC22F: PopAdLdVar
  loc_ACC230: FLdPr var_DC
  loc_ACC233: LateIdCallSt
  loc_ACC23B: LitVarI4
  loc_ACC243: PopAdLdVar
  loc_ACC244: LitVarI4
  loc_ACC24C: PopAdLdVar
  loc_ACC24D: LitVarStr var_10C, "Total"
  loc_ACC252: PopAdLdVar
  loc_ACC253: FLdPr var_DC
  loc_ACC256: LateIdCallSt
  loc_ACC25E: LitVarI4
  loc_ACC266: PopAdLdVar
  loc_ACC267: LitVarI4
  loc_ACC26F: PopAdLdVar
  loc_ACC270: LitVarStr var_10C, "Partida"
  loc_ACC275: PopAdLdVar
  loc_ACC276: FLdPr var_DC
  loc_ACC279: LateIdCallSt
  loc_ACC281: LitVarI4
  loc_ACC289: PopAdLdVar
  loc_ACC28A: LitVarI4
  loc_ACC292: PopAdLdVar
  loc_ACC293: LitVarStr var_10C, "Organig."
  loc_ACC298: PopAdLdVar
  loc_ACC299: FLdPr var_DC
  loc_ACC29C: LateIdCallSt
  loc_ACC2A4: LitVarI4
  loc_ACC2AC: PopAdLdVar
  loc_ACC2AD: LitVarI4
  loc_ACC2B5: PopAdLdVar
  loc_ACC2B6: LitVarStr var_10C, "Un.G."
  loc_ACC2BB: PopAdLdVar
  loc_ACC2BC: FLdPr var_DC
  loc_ACC2BF: LateIdCallSt
  loc_ACC2C7: LitVarI4
  loc_ACC2CF: PopAdLdVar
  loc_ACC2D0: LitVarI4
  loc_ACC2D8: PopAdLdVar
  loc_ACC2D9: LitVarStr var_10C, "Fin. y Fun."
  loc_ACC2DE: PopAdLdVar
  loc_ACC2DF: FLdPr var_DC
  loc_ACC2E2: LateIdCallSt
  loc_ACC2EA: LitVarI4
  loc_ACC2F2: PopAdLdVar
  loc_ACC2F3: LitVarI4
  loc_ACC2FB: PopAdLdVar
  loc_ACC2FC: LitVarStr var_10C, "Carac."
  loc_ACC301: PopAdLdVar
  loc_ACC302: FLdPr var_DC
  loc_ACC305: LateIdCallSt
  loc_ACC30D: LitVarI4
  loc_ACC315: PopAdLdVar
  loc_ACC316: LitVarI4
  loc_ACC31E: PopAdLdVar
  loc_ACC31F: LitVarStr var_10C, "saldo en cantidad"
  loc_ACC324: PopAdLdVar
  loc_ACC325: FLdPr var_DC
  loc_ACC328: LateIdCallSt
  loc_ACC330: LitVarI4
  loc_ACC338: PopAdLdVar
  loc_ACC339: LitVarI4
  loc_ACC341: PopAdLdVar
  loc_ACC342: LitVarStr var_10C, "saldo en importe"
  loc_ACC347: PopAdLdVar
  loc_ACC348: FLdPr var_DC
  loc_ACC34B: LateIdCallSt
  loc_ACC353: LitVarI4
  loc_ACC35B: PopAdLdVar
  loc_ACC35C: LitVarI4
  loc_ACC364: PopAdLdVar
  loc_ACC365: LitVarStr var_10C, "Ajuste"
  loc_ACC36A: PopAdLdVar
  loc_ACC36B: FLdPr var_DC
  loc_ACC36E: LateIdCallSt
  loc_ACC376: LitNothing
  loc_ACC378: FStAd var_DC 
  loc_ACC37C: FLdPr Me
  loc_ACC37F: VCallAd Control_ID_TifaReceCbo
  loc_ACC382: FStAdFunc var_120
  loc_ACC385: LitI2_Byte 0
  loc_ACC387: FLdZeroAd var_120
  loc_ACC38A: FStAdFunc var_A8
  loc_ACC38D: FLdRfVar var_A8
  loc_ACC390: ImpAdCallFPR4 Proc_261_56_9A8F4C(, )
  loc_ACC395: FFreeAd var_A8 = ""
  loc_ACC39C: LitVarI2 var_94, 0
  loc_ACC3A1: PopAdLdVar
  loc_ACC3A2: LitStr "Orden de Compra"
  loc_ACC3A5: FLdPr Me
  loc_ACC3A8: VCallAd Control_ID_FiltroCbo
  loc_ACC3AB: FStAdFunc var_A8
  loc_ACC3AE: FLdPr var_A8
  loc_ACC3B1: Me.AddItem from_stack_1, from_stack_2
  loc_ACC3B6: FFree1Ad var_A8
  loc_ACC3B9: LitVarI2 var_94, 1
  loc_ACC3BE: PopAdLdVar
  loc_ACC3BF: LitStr "Expediente"
  loc_ACC3C2: FLdPr Me
  loc_ACC3C5: VCallAd Control_ID_FiltroCbo
  loc_ACC3C8: FStAdFunc var_A8
  loc_ACC3CB: FLdPr var_A8
  loc_ACC3CE: Me.AddItem from_stack_1, from_stack_2
  loc_ACC3D3: FFree1Ad var_A8
  loc_ACC3D6: LitI2_Byte 0
  loc_ACC3D8: FLdPr Me
  loc_ACC3DB: VCallAd Control_ID_FiltroCbo
  loc_ACC3DE: FStAdFunc var_A8
  loc_ACC3E1: FLdPr var_A8
  loc_ACC3E4: Me.ListIndex = from_stack_1
  loc_ACC3E9: FFree1Ad var_A8
  loc_ACC3EC: Call cmdCancelar_Click()
  loc_ACC3F1: LitI4 0
  loc_ACC3F6: LitI4 1
  loc_ACC3FB: FLdRfVar var_124
  loc_ACC3FE: Redim
  loc_ACC408: FLdPr Me
  loc_ACC40B: MemLdRfVar from_stack_1.global_52
  loc_ACC40E: NewIfNullAd
  loc_ACC411: FStAd var_A8 
  loc_ACC415: FLdRfVar var_A8
  loc_ACC418: CVarRef
  loc_ACC41D: ParmAry1St
  loc_ACC423: FLdPr Me
  loc_ACC426: VCallAd Control_ID_dgdABMS
  loc_ACC429: CVarAd
  loc_ACC42D: ParmAry1St
  loc_ACC433: FLdRfVar var_124
  loc_ACC436: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_ACC43B: ILdRf var_A8
  loc_ACC43E: CastAd
  loc_ACC441: FLdPr Me
  loc_ACC444: MemStAdFunc
  loc_ACC448: FLdRfVar var_124
  loc_ACC44B: Erase
  loc_ACC44C: FFree1Ad var_A8
  loc_ACC44F: ExitProcHresult
End Sub

Private Sub Form_Activate() '9A7308
  'Data Table: 4BFDF0
  loc_9A7284: FLdRfVar var_C2
  loc_9A7287: FLdRfVar var_C0
  loc_9A728A: LitVarI2 var_B8, 1
  loc_9A728F: FLdPr Me
  loc_9A7292: VCallAd Control_ID_tlbABMS
  loc_9A7295: FStAdFunc var_88
  loc_9A7298: FLdPr var_88
  loc_9A729B: LateIdLdVar var_98 DispID_3 0
  loc_9A72A2: CastAdVar Me
  loc_9A72A6: FStAdFunc var_BC
  loc_9A72A9: FLdPr var_BC
  loc_9A72AC:  = Me.Buttons.ControlDefault
  loc_9A72B1: FLdPr var_C0
  loc_9A72B4:  = Me.Enabled
  loc_9A72B9: FLdI2 var_C2
  loc_9A72BC: FFreeAd var_88 = "": var_BC = ""
  loc_9A72C5: FFreeVar var_98 = ""
  loc_9A72CC: BranchF loc_9A72DD
  loc_9A72CF: FLdPr Me
  loc_9A72D2: MemLdRfVar from_stack_1.global_52
  loc_9A72D5: NewIfNullPr clsordencompra
  loc_9A72D8: Call clsordencompra.Requery()
  loc_9A72DD: ImpAdLdI2 MemVar_C3D064
  loc_9A72E0: LitI2 2025
  loc_9A72E3: LeI2
  loc_9A72E4: BranchF loc_9A7304
  loc_9A72E7: LitVarI4
  loc_9A72EF: PopAdLdVar
  loc_9A72F0: FLdPr Me
  loc_9A72F3: VCallAd Control_ID_dgdABMS
  loc_9A72F6: FStAdFunc var_88
  loc_9A72F9: FLdPr var_88
  loc_9A72FC: LateIdSt
  loc_9A7301: FFree1Ad var_88
  loc_9A7304: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '948A34
  'Data Table: 4BFDF0
  loc_948A20: ILdI2 KeyAscii
  loc_948A23: CI4UI1
  loc_948A24: LitI4 &HD
  loc_948A29: EqI4
  loc_948A2A: BranchF loc_948A32
  loc_948A2D: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_948A32: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '966140
  'Data Table: 4BFDF0
  loc_966128: ILdI2 KeyCode
  loc_96612B: ILdRf Me
  loc_96612E: CastAd
  loc_966131: FStAdFunc var_88
  loc_966134: FLdRfVar var_88
  loc_966137: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_96613C: FFree1Ad var_88
  loc_96613F: ExitProcHresult
End Sub

Private Sub FepaReceMsk_UnknownEvent_0 '94D2E0
  'Data Table: 4BFDF0
  loc_94D2CC: FLdPr Me
  loc_94D2CF: VCallAd Control_ID_FepaReceMsk
  loc_94D2D2: CVarAd
  loc_94D2D6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D2DB: FFree1Var var_94 = ""
  loc_94D2DE: ExitProcHresult
End Sub

Private Sub FepaReceMsk_UnknownEvent_8 '9DE520
  'Data Table: 4BFDF0
  loc_9DE428: FLdRfVar var_8A
  loc_9DE42B: FLdPr Me
  loc_9DE42E: VCallAd Control_ID_cmdCancelar
  loc_9DE431: FStAdFunc var_88
  loc_9DE434: FLdPr var_88
  loc_9DE437:  = Me.Value
  loc_9DE43C: FLdI2 var_8A
  loc_9DE43F: NotI4
  loc_9DE440: FLdPr Me
  loc_9DE443: VCallAd Control_ID_FepaReceMsk
  loc_9DE446: FStAdFunc var_90
  loc_9DE449: FLdPr var_90
  loc_9DE44C: LateIdLdVar var_A0 DispID_13 -32767
  loc_9DE453: CBoolVar
  loc_9DE455: AndI4
  loc_9DE456: FFreeAd var_88 = ""
  loc_9DE45D: FFree1Var var_A0 = ""
  loc_9DE460: BranchF loc_9DE51C
  loc_9DE463: FLdPr Me
  loc_9DE466: VCallAd Control_ID_FepaReceMsk
  loc_9DE469: FStAdFunc var_88
  loc_9DE46C: FLdPr var_88
  loc_9DE46F: LateIdLdVar var_A0 DispID_15 0
  loc_9DE476: PopAd
  loc_9DE478: FLdPr Me
  loc_9DE47B: VCallAd Control_ID_FechReceMsk
  loc_9DE47E: FStAdFunc var_90
  loc_9DE481: FLdPr var_90
  loc_9DE484: LateIdLdVar var_B0 DispID_15 0
  loc_9DE48B: PopAd
  loc_9DE48D: FLdPr Me
  loc_9DE490: VCallAd Control_ID_FepaReceMsk
  loc_9DE493: FStAdFunc var_C4
  loc_9DE496: LitI2_Byte 0
  loc_9DE498: PopTmpLdAd2 var_8A
  loc_9DE49B: FLdZeroAd var_C4
  loc_9DE49E: FStAdFunc var_BC
  loc_9DE4A1: FLdRfVar var_BC
  loc_9DE4A4: FLdRfVar var_B0
  loc_9DE4A7: CStrVarTmp
  loc_9DE4A8: FStStrNoPop var_B8
  loc_9DE4AB: LitI2_Byte 0
  loc_9DE4AD: LitI2_Byte 0
  loc_9DE4AF: FLdRfVar var_A0
  loc_9DE4B2: CStrVarTmp
  loc_9DE4B3: FStStrNoPop var_B4
  loc_9DE4B6: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9DE4BB: FStStrNoPop var_C0
  loc_9DE4BE: FLdPr Me
  loc_9DE4C1: MemStStrCopy
  loc_9DE4C5: FFreeStr var_B4 = "": var_B8 = ""
  loc_9DE4CE: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DE4D9: FFreeVar var_A0 = ""
  loc_9DE4E0: FLdPr Me
  loc_9DE4E3: VCallAd Control_ID_FepaReceMsk
  loc_9DE4E6: FStAdFunc var_C4
  loc_9DE4E9: LitNothing
  loc_9DE4EB: CastAd
  loc_9DE4EE: FStAdFunc var_BC
  loc_9DE4F1: FLdRfVar var_BC
  loc_9DE4F4: FLdZeroAd var_C4
  loc_9DE4F7: FStAdFuncNoPop
  loc_9DE4FA: CastAd
  loc_9DE4FD: FStAdFunc var_90
  loc_9DE500: FLdRfVar var_90
  loc_9DE503: FLdPr Me
  loc_9DE506: MemLdRfVar from_stack_1.global_80
  loc_9DE509: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DE50E: IStI2 KeyCode
  loc_9DE511: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DE51C: ExitProcHresult
End Sub

Private Sub FepaReceMsk_KeyPress(KeyAscii As Integer) '98AF10
  'Data Table: 4BFDF0
  loc_98AECC: ILdI2 KeyAscii
  loc_98AECF: CI4UI1
  loc_98AED0: LitI4 &H20
  loc_98AED5: EqI4
  loc_98AED6: BranchF loc_98AF0C
  loc_98AED9: LitVar_Missing var_A4
  loc_98AEDC: PopAdLdVar
  loc_98AEDD: LitVarI4
  loc_98AEE5: PopAdLdVar
  loc_98AEE6: ImpAdLdRf MemVar_C3D9A8
  loc_98AEE9: NewIfNullPr frmCalendario
  loc_98AEEC: frmCalendario.Show from_stack_1, from_stack_2
  loc_98AEF1: ImpAdLdRf MemVar_C3D038
  loc_98AEF4: CDargRef
  loc_98AEF8: FLdPr Me
  loc_98AEFB: VCallAd Control_ID_FepaReceMsk
  loc_98AEFE: FStAdFunc var_A8
  loc_98AF01: FLdPr var_A8
  loc_98AF04: LateIdSt
  loc_98AF09: FFree1Ad var_A8
  loc_98AF0C: ExitProcHresult
  loc_98AF0D: CI4UI1
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94A1F0
  'Data Table: 4BFDF0
  loc_94A1DC: FLdPr Me
  loc_94A1DF: VCallAd Control_ID_FiltroMsk
  loc_94A1E2: CVarAd
  loc_94A1E6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A1EB: FFree1Var var_94 = ""
  loc_94A1EE: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A50D08
  'Data Table: 4BFDF0
  loc_A50A64: ILdRf Me
  loc_A50A67: CastAd
  loc_A50A6A: FStAdFunc var_88
  loc_A50A6D: FLdRfVar var_88
  loc_A50A70: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A50A75: FFree1Ad var_88
  loc_A50A78: FLdPr Me
  loc_A50A7B: VCallAd Control_ID_FiltroMsk
  loc_A50A7E: FStAdFunc var_88
  loc_A50A81: FLdPr var_88
  loc_A50A84: LateIdLdVar var_98 DispID_22 0
  loc_A50A8B: CStrVarTmp
  loc_A50A8C: FStStrNoPop var_9C
  loc_A50A8F: ImpAdCallI2 Trim$()
  loc_A50A94: FStStrNoPop var_A0
  loc_A50A97: LitStr vbNullString
  loc_A50A9A: NeStr
  loc_A50A9C: FFreeStr var_9C = ""
  loc_A50AA3: FFree1Ad var_88
  loc_A50AA6: FFree1Var var_98 = ""
  loc_A50AA9: BranchF loc_A50BD3
  loc_A50AAC: FLdRfVar var_A2
  loc_A50AAF: FLdPr Me
  loc_A50AB2: VCallAd Control_ID_FiltroCbo
  loc_A50AB5: FStAdFunc var_88
  loc_A50AB8: FLdPr var_88
  loc_A50ABB:  = Me.ListIndex
  loc_A50AC0: FLdI2 var_A2
  loc_A50AC3: LitI2_Byte 0
  loc_A50AC5: EqI2
  loc_A50AC6: FFree1Ad var_88
  loc_A50AC9: BranchF loc_A50B3B
  loc_A50ACC: LitStr "CodiOrco = "
  loc_A50ACF: FLdPr Me
  loc_A50AD2: VCallAd Control_ID_FiltroMsk
  loc_A50AD5: FStAdFunc var_88
  loc_A50AD8: FLdPr var_88
  loc_A50ADB: LateIdLdVar var_98 DispID_22 0
  loc_A50AE2: CStrVarTmp
  loc_A50AE3: FStStrNoPop var_9C
  loc_A50AE6: ConcatStr
  loc_A50AE7: PopTmpLdAdStr
  loc_A50AEB: FLdPr Me
  loc_A50AEE: MemLdRfVar from_stack_1.global_52
  loc_A50AF1: NewIfNullPr clsordencompra
  loc_A50AF4: Call clsordencompra.Filter(from_stack_1v)
  loc_A50AF9: FFreeStr var_9C = ""
  loc_A50B00: FFree1Ad var_88
  loc_A50B03: FFree1Var var_98 = ""
  loc_A50B06: LitStr "número de la Orden de Compra sea igual a:"
  loc_A50B09: FLdPr Me
  loc_A50B0C: VCallAd Control_ID_FiltroMsk
  loc_A50B0F: FStAdFunc var_88
  loc_A50B12: FLdPr var_88
  loc_A50B15: LateIdLdVar var_98 DispID_22 0
  loc_A50B1C: CStrVarTmp
  loc_A50B1D: FStStrNoPop var_9C
  loc_A50B20: ConcatStr
  loc_A50B21: FStStrNoPop var_A0
  loc_A50B24: FLdPr Me
  loc_A50B27: MemStStrCopy
  loc_A50B2B: FFreeStr var_9C = ""
  loc_A50B32: FFree1Ad var_88
  loc_A50B35: FFree1Var var_98 = ""
  loc_A50B38: Branch loc_A50BD0
  loc_A50B3B: FLdRfVar var_A2
  loc_A50B3E: FLdPr Me
  loc_A50B41: VCallAd Control_ID_FiltroCbo
  loc_A50B44: FStAdFunc var_88
  loc_A50B47: FLdPr var_88
  loc_A50B4A:  = Me.ListIndex
  loc_A50B4F: FLdI2 var_A2
  loc_A50B52: LitI2_Byte 1
  loc_A50B54: EqI2
  loc_A50B55: FFree1Ad var_88
  loc_A50B58: BranchF loc_A50BD0
  loc_A50B5B: LitStr "ExpeImpu LIKE '"
  loc_A50B5E: FLdPr Me
  loc_A50B61: VCallAd Control_ID_FiltroMsk
  loc_A50B64: FStAdFunc var_88
  loc_A50B67: FLdPr var_88
  loc_A50B6A: LateIdLdVar var_98 DispID_22 0
  loc_A50B71: CStrVarTmp
  loc_A50B72: FStStrNoPop var_9C
  loc_A50B75: ConcatStr
  loc_A50B76: FStStrNoPop var_A0
  loc_A50B79: LitStr Chr(37) & "'"
  loc_A50B7C: ConcatStr
  loc_A50B7D: PopTmpLdAdStr
  loc_A50B81: FLdPr Me
  loc_A50B84: MemLdRfVar from_stack_1.global_52
  loc_A50B87: NewIfNullPr clsordencompra
  loc_A50B8A: Call clsordencompra.Filter(from_stack_1v)
  loc_A50B8F: FFreeStr var_9C = "": var_A0 = ""
  loc_A50B98: FFree1Ad var_88
  loc_A50B9B: FFree1Var var_98 = ""
  loc_A50B9E: LitStr "Expediente comienza con: "
  loc_A50BA1: FLdPr Me
  loc_A50BA4: VCallAd Control_ID_FiltroMsk
  loc_A50BA7: FStAdFunc var_88
  loc_A50BAA: FLdPr var_88
  loc_A50BAD: LateIdLdVar var_98 DispID_22 0
  loc_A50BB4: CStrVarTmp
  loc_A50BB5: FStStrNoPop var_9C
  loc_A50BB8: ConcatStr
  loc_A50BB9: FStStrNoPop var_A0
  loc_A50BBC: FLdPr Me
  loc_A50BBF: MemStStrCopy
  loc_A50BC3: FFreeStr var_9C = ""
  loc_A50BCA: FFree1Ad var_88
  loc_A50BCD: FFree1Var var_98 = ""
  loc_A50BD0: Branch loc_A50BF7
  loc_A50BD3: LitStr vbNullString
  loc_A50BD6: FStStrCopy var_9C
  loc_A50BD9: FLdRfVar var_9C
  loc_A50BDC: FLdPr Me
  loc_A50BDF: MemLdRfVar from_stack_1.global_52
  loc_A50BE2: NewIfNullPr clsordencompra
  loc_A50BE5: Call clsordencompra.Filter(from_stack_1v)
  loc_A50BEA: FFree1Str var_9C
  loc_A50BED: LitStr vbNullString
  loc_A50BF0: FLdPr Me
  loc_A50BF3: MemStStrCopy
  loc_A50BF7: FLdRfVar var_AC
  loc_A50BFA: FLdPr Me
  loc_A50BFD: MemLdRfVar from_stack_1.global_52
  loc_A50C00: NewIfNullPr clsordencompra
  loc_A50C03: from_stack_1 = clsordencompra.RecordCount
  loc_A50C08: ILdRf var_AC
  loc_A50C0B: LitI4 0
  loc_A50C10: GtI4
  loc_A50C11: BranchF loc_A50CBE
  loc_A50C14: FLdPr Me
  loc_A50C17: MemLdRfVar from_stack_1.global_52
  loc_A50C1A: NewIfNullAd
  loc_A50C1D: FStAd var_B0 
  loc_A50C21: FLdRfVar var_B0
  loc_A50C24: CVarRef
  loc_A50C29: ILdRf Me
  loc_A50C2C: CastAd
  loc_A50C2F: FStAdFunc var_88
  loc_A50C32: FLdRfVar var_88
  loc_A50C35: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A50C3A: ILdRf var_B0
  loc_A50C3D: CastAd
  loc_A50C40: FLdPr Me
  loc_A50C43: MemStAdFunc
  loc_A50C47: FFreeAd var_88 = ""
  loc_A50C4E: LitI4 0
  loc_A50C53: LitI4 1
  loc_A50C58: FLdRfVar var_C4
  loc_A50C5B: Redim
  loc_A50C65: FLdPr Me
  loc_A50C68: MemLdRfVar from_stack_1.global_52
  loc_A50C6B: NewIfNullAd
  loc_A50C6E: FStAd var_88 
  loc_A50C72: FLdRfVar var_88
  loc_A50C75: CVarRef
  loc_A50C7A: ParmAry1St
  loc_A50C80: FLdPr Me
  loc_A50C83: VCallAd Control_ID_dgdABMS
  loc_A50C86: CVarAd
  loc_A50C8A: ParmAry1St
  loc_A50C90: FLdRfVar var_C4
  loc_A50C93: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A50C98: ILdRf var_88
  loc_A50C9B: CastAd
  loc_A50C9E: FLdPr Me
  loc_A50CA1: MemStAdFunc
  loc_A50CA5: FLdRfVar var_C4
  loc_A50CA8: Erase
  loc_A50CA9: FFree1Ad var_88
  loc_A50CAC: LitI2_Byte 0
  loc_A50CAE: LitVarI2 var_98, 0
  loc_A50CB3: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A50CB8: FFree1Var var_98 = ""
  loc_A50CBB: Branch loc_A50CD2
  loc_A50CBE: ILdRf Me
  loc_A50CC1: CastAd
  loc_A50CC4: FStAdFunc var_88
  loc_A50CC7: FLdRfVar var_88
  loc_A50CCA: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A50CCF: FFree1Ad var_88
  loc_A50CD2: FLdPr Me
  loc_A50CD5: VCallAd Control_ID_dgdABMS
  loc_A50CD8: FStAdFunc var_B0
  loc_A50CDB: LitI4 0
  loc_A50CE0: FStStrCopy var_9C
  loc_A50CE3: FLdRfVar var_9C
  loc_A50CE6: FLdPr Me
  loc_A50CE9: MemLdStr global_92
  loc_A50CEC: FLdZeroAd var_B0
  loc_A50CEF: FStAdFunc var_88
  loc_A50CF2: FLdRfVar var_88
  loc_A50CF5: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A50CFA: FFree1Str var_9C
  loc_A50CFD: FFreeAd var_88 = ""
  loc_A50D04: ExitProcHresult
  loc_A50D05: MemLdStr global_20
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '997804
  'Data Table: 4BFDF0
  loc_9977A0: ILdI2 KeyAscii
  loc_9977A3: LitI2_Byte &H27
  loc_9977A5: EqI2
  loc_9977A6: BranchF loc_9977AE
  loc_9977A9: LitI2_Byte 0
  loc_9977AB: IStI2 KeyAscii
  loc_9977AE: FLdRfVar var_88
  loc_9977B1: FLdPr Me
  loc_9977B4: MemLdRfVar from_stack_1.global_52
  loc_9977B7: NewIfNullPr clsordencompra
  loc_9977BA: from_stack_1 = clsordencompra.RecordCount
  loc_9977BF: ILdRf var_88
  loc_9977C2: LitI4 0
  loc_9977C7: EqI4
  loc_9977C8: ILdI2 KeyAscii
  loc_9977CB: CI4UI1
  loc_9977CC: LitI4 8
  loc_9977D1: NeI4
  loc_9977D2: AndI4
  loc_9977D3: FLdPr Me
  loc_9977D6: VCallAd Control_ID_FiltroMsk
  loc_9977D9: FStAdFunc var_8C
  loc_9977DC: FLdPr var_8C
  loc_9977DF: LateIdLdVar var_9C DispID_16 0
  loc_9977E6: CStrVarTmp
  loc_9977E7: FStStrNoPop var_A0
  loc_9977EA: LitStr vbNullString
  loc_9977ED: EqStr
  loc_9977EF: AndI4
  loc_9977F0: FFree1Str var_A0
  loc_9977F3: FFree1Ad var_8C
  loc_9977F6: FFree1Var var_9C = ""
  loc_9977F9: BranchF loc_997801
  loc_9977FC: LitI2_Byte 0
  loc_9977FE: IStI2 KeyAscii
  loc_997801: ExitProcHresult
End Sub

Private Sub TifaReceCbo_GotFocus() '9A9F64
  'Data Table: 4BFDF0
  loc_9A9ED8: FLdRfVar var_B0
  loc_9A9EDB: FLdRfVar var_A0
  loc_9A9EDE: LitVarStr var_9C, "CucuPers"
  loc_9A9EE3: PopAdLdVar
  loc_9A9EE4: FLdRfVar var_8C
  loc_9A9EE7: FLdRfVar var_88
  loc_9A9EEA: FLdPr Me
  loc_9A9EED: MemLdRfVar from_stack_1.global_52
  loc_9A9EF0: NewIfNullPr clsordencompra
  loc_9A9EF3: from_stack_1v = clsordencompra.RsFrmGet()
  loc_9A9EF8: FLdPr var_88
  loc_9A9EFB:  = Me.Fields
  loc_9A9F00: FLdPr var_8C
  loc_9A9F03: from_stack_2 = Me.Item(from_stack_1)
  loc_9A9F08: FLdPr var_A0
  loc_9A9F0B:  = Me.Value
  loc_9A9F10: FLdPr Me
  loc_9A9F13: MemLdRfVar from_stack_1.global_108
  loc_9A9F16: NewIfNullRf
  loc_9A9F1A: FLdRfVar var_B0
  loc_9A9F1D: CStrVarTmp
  loc_9A9F1E: FStStrNoPop var_B4
  loc_9A9F21: ImpAdCallFPR4 Proc_259_26_B6A94C(, )
  loc_9A9F26: FFree1Str var_B4
  loc_9A9F29: FFreeAd var_88 = "": var_8C = ""
  loc_9A9F32: FFree1Var var_B0 = ""
  loc_9A9F35: FLdRfVar var_B4
  loc_9A9F38: FLdPr Me
  loc_9A9F3B: MemLdRfVar from_stack_1.global_108
  loc_9A9F3E: NewIfNullPr tblproveedor
  loc_9A9F41: from_stack_1v = tblproveedor.FactProvGet()
  loc_9A9F46: ILdRf var_B4
  loc_9A9F49: FLdPr Me
  loc_9A9F4C: VCallAd Control_ID_TifaReceCbo
  loc_9A9F4F: FStAdFunc var_88
  loc_9A9F52: FLdPr var_88
  loc_9A9F55: Me.Text = from_stack_1
  loc_9A9F5A: FFree1Str var_B4
  loc_9A9F5D: FFree1Ad var_88
  loc_9A9F60: ExitProcHresult
End Sub

Private Sub TifaReceCbo_KeyPress(KeyAscii As Integer) '962464
  'Data Table: 4BFDF0
  loc_96244C: LitStr "fsrm"
  loc_96244F: FStStrCopy var_88
  loc_962452: FLdRfVar var_88
  loc_962455: ILdRf KeyAscii
  loc_962458: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_96245D: IStI2 KeyAscii
  loc_962460: FFree1Str var_88
  loc_962463: ExitProcHresult
End Sub

Private Sub TifaReceCbo_Validate(Cancel As Boolean) '9F533C
  'Data Table: 4BFDF0
  loc_9F5218: FLdRfVar var_8A
  loc_9F521B: FLdPr Me
  loc_9F521E: VCallAd Control_ID_cmdCancelar
  loc_9F5221: FStAdFunc var_88
  loc_9F5224: FLdPr var_88
  loc_9F5227:  = Me.Value
  loc_9F522C: FLdI2 var_8A
  loc_9F522F: NotI4
  loc_9F5230: FLdRfVar var_92
  loc_9F5233: FLdPr Me
  loc_9F5236: VCallAd Control_ID_TifaReceCbo
  loc_9F5239: FStAdFunc var_90
  loc_9F523C: FLdPr var_90
  loc_9F523F:  = Me.Enabled
  loc_9F5244: FLdI2 var_92
  loc_9F5247: AndI4
  loc_9F5248: FFreeAd var_88 = ""
  loc_9F524F: BranchF loc_9F5338
  loc_9F5252: FLdRfVar var_98
  loc_9F5255: FLdPr Me
  loc_9F5258: VCallAd Control_ID_TifaReceCbo
  loc_9F525B: FStAdFunc var_88
  loc_9F525E: FLdPr var_88
  loc_9F5261:  = Me.Text
  loc_9F5266: FLdRfVar var_D4
  loc_9F5269: FLdRfVar var_B0
  loc_9F526C: LitVarStr var_AC, "CucuPers"
  loc_9F5271: PopAdLdVar
  loc_9F5272: FLdRfVar var_9C
  loc_9F5275: FLdRfVar var_90
  loc_9F5278: FLdPr Me
  loc_9F527B: MemLdRfVar from_stack_1.global_52
  loc_9F527E: NewIfNullPr clsordencompra
  loc_9F5281: from_stack_1v = clsordencompra.RsFrmGet()
  loc_9F5286: FLdPr var_90
  loc_9F5289:  = Me.Fields
  loc_9F528E: FLdPr var_9C
  loc_9F5291: from_stack_2 = Me.Item(from_stack_1)
  loc_9F5296: FLdPr var_B0
  loc_9F5299:  = Me.Value
  loc_9F529E: FLdPr Me
  loc_9F52A1: VCallAd Control_ID_FechReceMsk
  loc_9F52A4: FStAdFunc var_B4
  loc_9F52A7: FLdPr var_B4
  loc_9F52AA: LateIdLdVar var_C4 DispID_15 0
  loc_9F52B1: PopAd
  loc_9F52B3: FLdPr Me
  loc_9F52B6: MemLdRfVar from_stack_1.global_108
  loc_9F52B9: NewIfNullRf
  loc_9F52BD: FLdRfVar var_C4
  loc_9F52C0: CStrVarTmp
  loc_9F52C1: FStStrNoPop var_DC
  loc_9F52C4: FLdRfVar var_D4
  loc_9F52C7: CStrVarTmp
  loc_9F52C8: FStStrNoPop var_D8
  loc_9F52CB: ILdRf var_98
  loc_9F52CE: ImpAdCallI2 Proc_266_23_A2F578(, , , )
  loc_9F52D3: FStStrNoPop var_E0
  loc_9F52D6: FLdPr Me
  loc_9F52D9: MemStStrCopy
  loc_9F52DD: FFreeStr var_98 = "": var_D8 = "": var_DC = ""
  loc_9F52E8: FFreeAd var_88 = "": var_90 = "": var_9C = "": var_B4 = ""
  loc_9F52F5: FFreeVar var_C4 = ""
  loc_9F52FC: FLdPr Me
  loc_9F52FF: VCallAd Control_ID_TifaReceCbo
  loc_9F5302: FStAdFunc var_B0
  loc_9F5305: LitNothing
  loc_9F5307: CastAd
  loc_9F530A: FStAdFunc var_9C
  loc_9F530D: FLdRfVar var_9C
  loc_9F5310: FLdZeroAd var_B0
  loc_9F5313: FStAdFuncNoPop
  loc_9F5316: CastAd
  loc_9F5319: FStAdFunc var_90
  loc_9F531C: FLdRfVar var_90
  loc_9F531F: FLdPr Me
  loc_9F5322: MemLdRfVar from_stack_1.global_80
  loc_9F5325: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9F532A: IStI2 Cancel
  loc_9F532D: FFreeAd var_88 = "": var_90 = "": var_9C = ""
  loc_9F5338: ExitProcHresult
  loc_9F533B: ExitProcR4
End Sub

Private Sub FlexItemNota_UnknownEvent_8 'B53790
  'Data Table: 4BFDF0
  loc_B52CF4: FLdPr Me
  loc_B52CF7: VCallAd Control_ID_FlexItemNota
  loc_B52CFA: FStAdFunc var_88
  loc_B52CFD: FLdPr var_88
  loc_B52D00: LateIdLdVar var_98 DispID_13 -32767
  loc_B52D07: CBoolVar
  loc_B52D09: FFree1Ad var_88
  loc_B52D0C: FFree1Var var_98 = ""
  loc_B52D0F: BranchF loc_B53789
  loc_B52D12: FLdPr Me
  loc_B52D15: VCallAd Control_ID_FlexItemNota
  loc_B52D18: FStAdFunc var_88
  loc_B52D1B: FLdPr var_88
  loc_B52D1E: LateIdLdVar var_98 DispID_10 0
  loc_B52D25: CI4Var
  loc_B52D27: LitI4 0
  loc_B52D2C: GtI4
  loc_B52D2D: FFree1Ad var_88
  loc_B52D30: FFree1Var var_98 = ""
  loc_B52D33: BranchF loc_B53789
  loc_B52D36: FLdPr Me
  loc_B52D39: VCallAd Control_ID_FlexItemNota
  loc_B52D3C: FStAdFunc var_88
  loc_B52D3F: FLdPr var_88
  loc_B52D42: LateIdLdVar var_98 DispID_10 0
  loc_B52D49: CI4Var
  loc_B52D4B: CVarI4
  loc_B52D4F: PopAdLdVar
  loc_B52D50: LitVarI4
  loc_B52D58: PopAdLdVar
  loc_B52D59: FLdPr Me
  loc_B52D5C: VCallAd Control_ID_FlexItemNota
  loc_B52D5F: FStAdFunc var_DC
  loc_B52D62: FLdPr var_DC
  loc_B52D65: LateIdCallLdVar
  loc_B52D6F: PopAd
  loc_B52D71: LitStr "0"
  loc_B52D74: LitI2_Byte &HFF
  loc_B52D76: LitI2_Byte 0
  loc_B52D78: LitI2_Byte 0
  loc_B52D7A: FLdRfVar var_EC
  loc_B52D7D: CStrVarTmp
  loc_B52D7E: FStStrNoPop var_F0
  loc_B52D81: LitStr "cantidad"
  loc_B52D84: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B52D89: FStStrNoPop var_F4
  loc_B52D8C: FLdPr Me
  loc_B52D8F: MemStStrCopy
  loc_B52D93: FFreeStr var_F0 = ""
  loc_B52D9A: FFreeAd var_88 = ""
  loc_B52DA1: FFreeVar var_98 = ""
  loc_B52DA8: FLdPr Me
  loc_B52DAB: MemLdStr global_80
  loc_B52DAE: LitStr vbNullString
  loc_B52DB1: NeStr
  loc_B52DB3: BranchF loc_B52DE3
  loc_B52DB6: LitI4 0
  loc_B52DBB: FLdPr Me
  loc_B52DBE: MemLdStr global_80
  loc_B52DC1: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B52DC6: FLdPr Me
  loc_B52DC9: VCallAd Control_ID_FlexItemNota
  loc_B52DCC: FStAdFunc var_88
  loc_B52DCF: FLdPr var_88
  loc_B52DD2: LateIdCall
  loc_B52DDA: FFree1Ad var_88
  loc_B52DDD: LitI2_Byte &HFF
  loc_B52DDF: IStI2 Cancel
  loc_B52DE2: ExitProcHresult
  loc_B52DE3: FLdPr Me
  loc_B52DE6: VCallAd Control_ID_FlexItemNota
  loc_B52DE9: FStAdFunc var_88
  loc_B52DEC: FLdPr var_88
  loc_B52DEF: LateIdLdVar var_98 DispID_10 0
  loc_B52DF6: CI4Var
  loc_B52DF8: CVarI4
  loc_B52DFC: PopAdLdVar
  loc_B52DFD: LitVarI4
  loc_B52E05: PopAdLdVar
  loc_B52E06: FLdPr Me
  loc_B52E09: VCallAd Control_ID_FlexItemNota
  loc_B52E0C: FStAdFunc var_DC
  loc_B52E0F: FLdPr var_DC
  loc_B52E12: LateIdCallLdVar
  loc_B52E1C: PopAd
  loc_B52E1E: LitStr "0"
  loc_B52E21: LitI2_Byte &HFF
  loc_B52E23: LitI2_Byte 0
  loc_B52E25: LitI2_Byte 0
  loc_B52E27: FLdRfVar var_EC
  loc_B52E2A: CStrVarTmp
  loc_B52E2B: FStStrNoPop var_F0
  loc_B52E2E: LitStr "importe"
  loc_B52E31: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B52E36: FStStrNoPop var_F4
  loc_B52E39: FLdPr Me
  loc_B52E3C: MemStStrCopy
  loc_B52E40: FFreeStr var_F0 = ""
  loc_B52E47: FFreeAd var_88 = ""
  loc_B52E4E: FFreeVar var_98 = ""
  loc_B52E55: FLdPr Me
  loc_B52E58: MemLdStr global_80
  loc_B52E5B: LitStr vbNullString
  loc_B52E5E: NeStr
  loc_B52E60: BranchF loc_B52E90
  loc_B52E63: LitI4 0
  loc_B52E68: FLdPr Me
  loc_B52E6B: MemLdStr global_80
  loc_B52E6E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B52E73: FLdPr Me
  loc_B52E76: VCallAd Control_ID_FlexItemNota
  loc_B52E79: FStAdFunc var_88
  loc_B52E7C: FLdPr var_88
  loc_B52E7F: LateIdCall
  loc_B52E87: FFree1Ad var_88
  loc_B52E8A: LitI2_Byte &HFF
  loc_B52E8C: IStI2 Cancel
  loc_B52E8F: ExitProcHresult
  loc_B52E90: FLdRfVar var_98
  loc_B52E93: FLdRfVar var_F8
  loc_B52E96: LitVarStr var_A8, "ReimpTico"
  loc_B52E9B: PopAdLdVar
  loc_B52E9C: FLdRfVar var_DC
  loc_B52E9F: FLdRfVar var_88
  loc_B52EA2: FLdPr Me
  loc_B52EA5: MemLdRfVar from_stack_1.global_52
  loc_B52EA8: NewIfNullPr clsordencompra
  loc_B52EAB: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B52EB0: FLdPr var_88
  loc_B52EB3:  = Me.Fields
  loc_B52EB8: FLdPr var_DC
  loc_B52EBB: from_stack_2 = Me.Item(from_stack_1)
  loc_B52EC0: FLdPr var_F8
  loc_B52EC3:  = Me.Value
  loc_B52EC8: FLdRfVar var_98
  loc_B52ECB: LitVarStr var_B8, "0"
  loc_B52ED0: HardType
  loc_B52ED1: EqVarBool
  loc_B52ED3: FFreeAd var_88 = "": var_DC = ""
  loc_B52EDC: FFree1Var var_98 = ""
  loc_B52EDF: BranchF loc_B53026
  loc_B52EE2: FLdPr Me
  loc_B52EE5: VCallAd Control_ID_FlexItemNota
  loc_B52EE8: FStAdFunc var_F8
  loc_B52EEB: FLdPr var_F8
  loc_B52EEE: LateIdLdVar var_108 DispID_10 0
  loc_B52EF5: CI4Var
  loc_B52EF7: CVarI4
  loc_B52EFB: PopAdLdVar
  loc_B52EFC: LitVarI4
  loc_B52F04: PopAdLdVar
  loc_B52F05: FLdPr Me
  loc_B52F08: VCallAd Control_ID_FlexItemNota
  loc_B52F0B: FStAdFunc var_14C
  loc_B52F0E: FLdPr var_14C
  loc_B52F11: LateIdCallLdVar
  loc_B52F1B: PopAd
  loc_B52F1D: FLdPr Me
  loc_B52F20: VCallAd Control_ID_FlexItemNota
  loc_B52F23: FStAdFunc var_88
  loc_B52F26: FLdPr var_88
  loc_B52F29: LateIdLdVar var_98 DispID_10 0
  loc_B52F30: CI4Var
  loc_B52F32: CVarI4
  loc_B52F36: PopAdLdVar
  loc_B52F37: LitVarI4
  loc_B52F3F: PopAdLdVar
  loc_B52F40: FLdPr Me
  loc_B52F43: VCallAd Control_ID_FlexItemNota
  loc_B52F46: FStAdFunc var_DC
  loc_B52F49: FLdPr var_DC
  loc_B52F4C: LateIdCallLdVar
  loc_B52F56: CStrVarTmp
  loc_B52F57: FStStrNoPop var_F0
  loc_B52F5A: CR8Str
  loc_B52F5C: FLdRfVar var_15C
  loc_B52F5F: CStrVarTmp
  loc_B52F60: FStStrNoPop var_F4
  loc_B52F63: CR8Str
  loc_B52F65: GtR4
  loc_B52F66: FFreeStr var_F0 = ""
  loc_B52F6D: FFreeAd var_88 = "": var_DC = "": var_F8 = ""
  loc_B52F78: FFreeVar var_98 = "": var_EC = "": var_108 = ""
  loc_B52F83: BranchF loc_B53023
  loc_B52F86: LitStr "La cantidad ingresada del insumo seleccionado es mayor al saldo de la orden de compra. Verifique..."
  loc_B52F89: FLdPr Me
  loc_B52F8C: MemStStrCopy
  loc_B52F90: LitI4 0
  loc_B52F95: FLdPr Me
  loc_B52F98: MemLdStr global_80
  loc_B52F9B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B52FA0: FLdPr Me
  loc_B52FA3: VCallAd Control_ID_FlexItemNota
  loc_B52FA6: FStAdFunc var_88
  loc_B52FA9: FLdPr var_88
  loc_B52FAC: LateIdLdVar var_98 DispID_0 0
  loc_B52FB3: PopAd
  loc_B52FB5: LitI4 1
  loc_B52FBA: LitI4 1
  loc_B52FBF: LitVarStr var_A8, "0.000"
  loc_B52FC4: FStVarCopyObj var_108
  loc_B52FC7: FLdRfVar var_108
  loc_B52FCA: FLdRfVar var_98
  loc_B52FCD: CStrVarTmp
  loc_B52FCE: CVarStr var_EC
  loc_B52FD1: FLdRfVar var_15C
  loc_B52FD4: ImpAdCallFPR4  = Format(, )
  loc_B52FD9: FLdRfVar var_15C
  loc_B52FDC: CStrVarTmp
  loc_B52FDD: CVarStr var_16C
  loc_B52FE0: PopAdLdVar
  loc_B52FE1: FLdPr Me
  loc_B52FE4: VCallAd Control_ID_FlexItemNota
  loc_B52FE7: FStAdFunc var_DC
  loc_B52FEA: FLdPr var_DC
  loc_B52FED: LateIdSt
  loc_B52FF2: FFreeAd var_88 = ""
  loc_B52FF9: FFreeVar var_98 = "": var_EC = "": var_108 = "": var_15C = ""
  loc_B53006: FLdPr Me
  loc_B53009: VCallAd Control_ID_FlexItemNota
  loc_B5300C: FStAdFunc var_88
  loc_B5300F: FLdPr var_88
  loc_B53012: LateIdCall
  loc_B5301A: FFree1Ad var_88
  loc_B5301D: LitI2_Byte &HFF
  loc_B5301F: IStI2 Cancel
  loc_B53022: ExitProcHresult
  loc_B53023: Branch loc_B53167
  loc_B53026: FLdPr Me
  loc_B53029: VCallAd Control_ID_FlexItemNota
  loc_B5302C: FStAdFunc var_F8
  loc_B5302F: FLdPr var_F8
  loc_B53032: LateIdLdVar var_108 DispID_10 0
  loc_B53039: CI4Var
  loc_B5303B: CVarI4
  loc_B5303F: PopAdLdVar
  loc_B53040: LitVarI4
  loc_B53048: PopAdLdVar
  loc_B53049: FLdPr Me
  loc_B5304C: VCallAd Control_ID_FlexItemNota
  loc_B5304F: FStAdFunc var_14C
  loc_B53052: FLdPr var_14C
  loc_B53055: LateIdCallLdVar
  loc_B5305F: PopAd
  loc_B53061: FLdPr Me
  loc_B53064: VCallAd Control_ID_FlexItemNota
  loc_B53067: FStAdFunc var_88
  loc_B5306A: FLdPr var_88
  loc_B5306D: LateIdLdVar var_98 DispID_10 0
  loc_B53074: CI4Var
  loc_B53076: CVarI4
  loc_B5307A: PopAdLdVar
  loc_B5307B: LitVarI4
  loc_B53083: PopAdLdVar
  loc_B53084: FLdPr Me
  loc_B53087: VCallAd Control_ID_FlexItemNota
  loc_B5308A: FStAdFunc var_DC
  loc_B5308D: FLdPr var_DC
  loc_B53090: LateIdCallLdVar
  loc_B5309A: CStrVarTmp
  loc_B5309B: FStStrNoPop var_F0
  loc_B5309E: CR8Str
  loc_B530A0: FLdRfVar var_15C
  loc_B530A3: CStrVarTmp
  loc_B530A4: FStStrNoPop var_F4
  loc_B530A7: CR8Str
  loc_B530A9: GtR4
  loc_B530AA: FFreeStr var_F0 = ""
  loc_B530B1: FFreeAd var_88 = "": var_DC = "": var_F8 = ""
  loc_B530BC: FFreeVar var_98 = "": var_EC = "": var_108 = ""
  loc_B530C7: BranchF loc_B53167
  loc_B530CA: LitStr "El Importe ingresado del insumo seleccionado es mayor al saldo de la orden de compra. Verifique..."
  loc_B530CD: FLdPr Me
  loc_B530D0: MemStStrCopy
  loc_B530D4: LitI4 0
  loc_B530D9: FLdPr Me
  loc_B530DC: MemLdStr global_80
  loc_B530DF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B530E4: FLdPr Me
  loc_B530E7: VCallAd Control_ID_FlexItemNota
  loc_B530EA: FStAdFunc var_88
  loc_B530ED: FLdPr var_88
  loc_B530F0: LateIdLdVar var_98 DispID_0 0
  loc_B530F7: PopAd
  loc_B530F9: LitI4 1
  loc_B530FE: LitI4 1
  loc_B53103: LitVarStr var_A8, "0.000"
  loc_B53108: FStVarCopyObj var_108
  loc_B5310B: FLdRfVar var_108
  loc_B5310E: FLdRfVar var_98
  loc_B53111: CStrVarTmp
  loc_B53112: CVarStr var_EC
  loc_B53115: FLdRfVar var_15C
  loc_B53118: ImpAdCallFPR4  = Format(, )
  loc_B5311D: FLdRfVar var_15C
  loc_B53120: CStrVarTmp
  loc_B53121: CVarStr var_16C
  loc_B53124: PopAdLdVar
  loc_B53125: FLdPr Me
  loc_B53128: VCallAd Control_ID_FlexItemNota
  loc_B5312B: FStAdFunc var_DC
  loc_B5312E: FLdPr var_DC
  loc_B53131: LateIdSt
  loc_B53136: FFreeAd var_88 = ""
  loc_B5313D: FFreeVar var_98 = "": var_EC = "": var_108 = "": var_15C = ""
  loc_B5314A: FLdPr Me
  loc_B5314D: VCallAd Control_ID_FlexItemNota
  loc_B53150: FStAdFunc var_88
  loc_B53153: FLdPr var_88
  loc_B53156: LateIdCall
  loc_B5315E: FFree1Ad var_88
  loc_B53161: LitI2_Byte &HFF
  loc_B53163: IStI2 Cancel
  loc_B53166: ExitProcHresult
  loc_B53167: FLdPr Me
  loc_B5316A: VCallAd Control_ID_FlexItemNota
  loc_B5316D: FStAdFunc var_88
  loc_B53170: FLdPr var_88
  loc_B53173: LateIdLdVar var_98 DispID_10 0
  loc_B5317A: CI4Var
  loc_B5317C: CVarI4
  loc_B53180: PopAdLdVar
  loc_B53181: LitVarI4
  loc_B53189: PopAdLdVar
  loc_B5318A: FLdPr Me
  loc_B5318D: VCallAd Control_ID_FlexItemNota
  loc_B53190: FStAdFunc var_DC
  loc_B53193: FLdPr var_DC
  loc_B53196: LateIdCallLdVar
  loc_B531A0: CStrVarTmp
  loc_B531A1: CVarStr var_108
  loc_B531A4: ImpAdCallI2 IsNumeric()
  loc_B531A9: FLdPr Me
  loc_B531AC: VCallAd Control_ID_FlexItemNota
  loc_B531AF: FStAdFunc var_F8
  loc_B531B2: FLdPr var_F8
  loc_B531B5: LateIdLdVar var_15C DispID_10 0
  loc_B531BC: CI4Var
  loc_B531BE: CVarI4
  loc_B531C2: PopAdLdVar
  loc_B531C3: LitVarI4
  loc_B531CB: PopAdLdVar
  loc_B531CC: FLdPr Me
  loc_B531CF: VCallAd Control_ID_FlexItemNota
  loc_B531D2: FStAdFunc var_14C
  loc_B531D5: FLdPr var_14C
  loc_B531D8: LateIdCallLdVar
  loc_B531E2: CStrVarTmp
  loc_B531E3: CVarStr var_17C
  loc_B531E6: ImpAdCallI2 IsNumeric()
  loc_B531EB: AndI4
  loc_B531EC: FFreeAd var_88 = "": var_DC = "": var_F8 = ""
  loc_B531F7: FFreeVar var_98 = "": var_EC = "": var_108 = "": var_15C = "": var_16C = ""
  loc_B53206: BranchF loc_B53353
  loc_B53209: FLdPr Me
  loc_B5320C: VCallAd Control_ID_FlexItemNota
  loc_B5320F: FStAdFunc var_88
  loc_B53212: FLdPr var_88
  loc_B53215: LateIdLdVar var_98 DispID_10 0
  loc_B5321C: CI4Var
  loc_B5321E: CVarI4
  loc_B53222: PopAdLdVar
  loc_B53223: LitVarI4
  loc_B5322B: PopAdLdVar
  loc_B5322C: FLdPr Me
  loc_B5322F: VCallAd Control_ID_FlexItemNota
  loc_B53232: FStAdFunc var_DC
  loc_B53235: FLdPr var_DC
  loc_B53238: LateIdCallLdVar
  loc_B53242: PopAd
  loc_B53244: LitI4 3
  loc_B53249: FLdRfVar var_EC
  loc_B5324C: CStrVarTmp
  loc_B5324D: FStStrNoPop var_F0
  loc_B53250: CR8Str
  loc_B53252: CVarR8
  loc_B53256: FLdRfVar var_15C
  loc_B53259: ImpAdCallFPR4  = Round(, )
  loc_B5325E: FLdPr Me
  loc_B53261: VCallAd Control_ID_FlexItemNota
  loc_B53264: FStAdFunc var_F8
  loc_B53267: FLdPr var_F8
  loc_B5326A: LateIdLdVar var_16C DispID_10 0
  loc_B53271: CI4Var
  loc_B53273: CVarI4
  loc_B53277: PopAdLdVar
  loc_B53278: LitVarI4
  loc_B53280: PopAdLdVar
  loc_B53281: FLdPr Me
  loc_B53284: VCallAd Control_ID_FlexItemNota
  loc_B53287: FStAdFunc var_14C
  loc_B5328A: FLdPr var_14C
  loc_B5328D: LateIdCallLdVar
  loc_B53297: PopAd
  loc_B53299: LitI4 3
  loc_B5329E: FLdRfVar var_17C
  loc_B532A1: CStrVarTmp
  loc_B532A2: FStStrNoPop var_F4
  loc_B532A5: CR8Str
  loc_B532A7: CVarR8
  loc_B532AB: FLdRfVar var_1BC
  loc_B532AE: ImpAdCallFPR4  = Round(, )
  loc_B532B3: FLdPr Me
  loc_B532B6: VCallAd Control_ID_FlexItemNota
  loc_B532B9: FStAdFunc var_210
  loc_B532BC: FLdPr var_210
  loc_B532BF: LateIdLdVar var_220 DispID_10 0
  loc_B532C6: CI4Var
  loc_B532C8: CVarI4
  loc_B532CC: PopAdLdVar
  loc_B532CD: LitVarI4
  loc_B532D5: PopAdLdVar
  loc_B532D6: LitI4 1
  loc_B532DB: LitI4 1
  loc_B532E0: LitVarStr var_1EC, "###,###,##0.00"
  loc_B532E5: FStVarCopyObj var_1FC
  loc_B532E8: FLdRfVar var_1FC
  loc_B532EB: FLdRfVar var_15C
  loc_B532EE: FLdRfVar var_1BC
  loc_B532F1: MulVar var_1CC
  loc_B532F5: FStVar var_1DC
  loc_B532F9: FLdRfVar var_1DC
  loc_B532FC: FLdRfVar var_20C
  loc_B532FF: ImpAdCallFPR4  = Format(, )
  loc_B53304: FLdRfVar var_20C
  loc_B53307: CStrVarTmp
  loc_B53308: CVarStr var_270
  loc_B5330B: PopAdLdVar
  loc_B5330C: FLdPr Me
  loc_B5330F: VCallAd Control_ID_FlexItemNota
  loc_B53312: FStAdFunc var_284
  loc_B53315: FLdPr var_284
  loc_B53318: LateIdCallSt
  loc_B53320: FFreeStr var_F0 = ""
  loc_B53327: FFreeAd var_88 = "": var_DC = "": var_F8 = "": var_14C = "": var_210 = ""
  loc_B53336: FFreeVar var_98 = "": var_EC = "": var_108 = "": var_16C = "": var_17C = "": var_1AC = "": var_15C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_220 = "": var_20C = ""
  loc_B53353: FLdPr Me
  loc_B53356: VCallAd Control_ID_FlexItemNota
  loc_B53359: FStAdFunc var_88
  loc_B5335C: FLdPr var_88
  loc_B5335F: LateIdLdVar var_98 DispID_10 0
  loc_B53366: CI4Var
  loc_B53368: CVarI4
  loc_B5336C: PopAdLdVar
  loc_B5336D: LitVarI4
  loc_B53375: PopAdLdVar
  loc_B53376: FLdPr Me
  loc_B53379: VCallAd Control_ID_FlexItemNota
  loc_B5337C: FStAdFunc var_DC
  loc_B5337F: FLdPr var_DC
  loc_B53382: LateIdCallLdVar
  loc_B5338C: CStrVarTmp
  loc_B5338D: FStStrNoPop var_F0
  loc_B53390: LitStr vbNullString
  loc_B53393: NeStr
  loc_B53395: FFree1Str var_F0
  loc_B53398: FFreeAd var_88 = ""
  loc_B5339F: FFreeVar var_98 = ""
  loc_B533A6: BranchF loc_B53463
  loc_B533A9: FLdPr Me
  loc_B533AC: VCallAd Control_ID_FlexItemNota
  loc_B533AF: FStAdFunc var_88
  loc_B533B2: FLdPr var_88
  loc_B533B5: LateIdLdVar var_98 DispID_10 0
  loc_B533BC: CI4Var
  loc_B533BE: CVarI4
  loc_B533C2: PopAdLdVar
  loc_B533C3: LitVarI4
  loc_B533CB: PopAdLdVar
  loc_B533CC: FLdPr Me
  loc_B533CF: VCallAd Control_ID_FlexItemNota
  loc_B533D2: FStAdFunc var_DC
  loc_B533D5: FLdPr var_DC
  loc_B533D8: LateIdCallLdVar
  loc_B533E2: PopAd
  loc_B533E4: FLdPr Me
  loc_B533E7: VCallAd Control_ID_FlexItemNota
  loc_B533EA: FStAdFunc var_F8
  loc_B533ED: FLdPr var_F8
  loc_B533F0: LateIdLdVar var_17C DispID_10 0
  loc_B533F7: CI4Var
  loc_B533F9: CVarI4
  loc_B533FD: PopAdLdVar
  loc_B533FE: LitVarI4
  loc_B53406: PopAdLdVar
  loc_B53407: LitI4 1
  loc_B5340C: LitI4 1
  loc_B53411: LitVarStr var_118, "0.00"
  loc_B53416: FStVarCopyObj var_15C
  loc_B53419: FLdRfVar var_15C
  loc_B5341C: FLdRfVar var_EC
  loc_B5341F: CStrVarTmp
  loc_B53420: CVarStr var_108
  loc_B53423: FLdRfVar var_16C
  loc_B53426: ImpAdCallFPR4  = Format(, )
  loc_B5342B: FLdRfVar var_16C
  loc_B5342E: CStrVarTmp
  loc_B5342F: CVarStr var_1AC
  loc_B53432: PopAdLdVar
  loc_B53433: FLdPr Me
  loc_B53436: VCallAd Control_ID_FlexItemNota
  loc_B53439: FStAdFunc var_14C
  loc_B5343C: FLdPr var_14C
  loc_B5343F: LateIdCallSt
  loc_B53447: FFreeAd var_88 = "": var_DC = "": var_F8 = ""
  loc_B53452: FFreeVar var_98 = "": var_EC = "": var_108 = "": var_15C = "": var_17C = "": var_16C = ""
  loc_B53463: FLdPr Me
  loc_B53466: VCallAd Control_ID_FlexItemNota
  loc_B53469: FStAdFunc var_88
  loc_B5346C: FLdPr var_88
  loc_B5346F: LateIdLdVar var_98 DispID_10 0
  loc_B53476: CI4Var
  loc_B53478: CVarI4
  loc_B5347C: PopAdLdVar
  loc_B5347D: LitVarI4
  loc_B53485: PopAdLdVar
  loc_B53486: FLdPr Me
  loc_B53489: VCallAd Control_ID_FlexItemNota
  loc_B5348C: FStAdFunc var_DC
  loc_B5348F: FLdPr var_DC
  loc_B53492: LateIdCallLdVar
  loc_B5349C: CStrVarTmp
  loc_B5349D: FStStrNoPop var_F0
  loc_B534A0: LitStr vbNullString
  loc_B534A3: NeStr
  loc_B534A5: FLdPr Me
  loc_B534A8: VCallAd Control_ID_FlexItemNota
  loc_B534AB: FStAdFunc var_F8
  loc_B534AE: FLdPr var_F8
  loc_B534B1: LateIdLdVar var_108 DispID_10 0
  loc_B534B8: CI4Var
  loc_B534BA: CVarI4
  loc_B534BE: PopAdLdVar
  loc_B534BF: LitVarI4
  loc_B534C7: PopAdLdVar
  loc_B534C8: FLdPr Me
  loc_B534CB: VCallAd Control_ID_FlexItemNota
  loc_B534CE: FStAdFunc var_14C
  loc_B534D1: FLdPr var_14C
  loc_B534D4: LateIdCallLdVar
  loc_B534DE: CStrVarTmp
  loc_B534DF: FStStrNoPop var_F4
  loc_B534E2: LitStr "0"
  loc_B534E5: NeStr
  loc_B534E7: OrI4
  loc_B534E8: FFreeStr var_F0 = ""
  loc_B534EF: FFreeAd var_88 = "": var_DC = "": var_F8 = ""
  loc_B534FA: FFreeVar var_98 = "": var_EC = "": var_108 = ""
  loc_B53505: BranchF loc_B53789
  loc_B53508: FLdPr Me
  loc_B5350B: VCallAd Control_ID_FlexItemNota
  loc_B5350E: FStAdFunc var_88
  loc_B53511: FLdPr var_88
  loc_B53514: LateIdLdVar var_98 DispID_11 0
  loc_B5351B: CI4Var
  loc_B5351D: LitI4 &HF
  loc_B53522: EqI4
  loc_B53523: FFree1Ad var_88
  loc_B53526: FFree1Var var_98 = ""
  loc_B53529: BranchF loc_B53789
  loc_B5352C: FLdPr Me
  loc_B5352F: VCallAd Control_ID_FlexItemNota
  loc_B53532: FStAdFunc var_88
  loc_B53535: FLdPr var_88
  loc_B53538: LateIdLdVar var_98 DispID_10 0
  loc_B5353F: CI4Var
  loc_B53541: CVarI4
  loc_B53545: PopAdLdVar
  loc_B53546: LitVarI4
  loc_B5354E: PopAdLdVar
  loc_B5354F: FLdPr Me
  loc_B53552: VCallAd Control_ID_FlexItemNota
  loc_B53555: FStAdFunc var_DC
  loc_B53558: FLdPr var_DC
  loc_B5355B: LateIdCallLdVar
  loc_B53565: PopAd
  loc_B53567: FLdPr Me
  loc_B5356A: VCallAd Control_ID_FlexItemNota
  loc_B5356D: FStAdFunc var_F8
  loc_B53570: FLdPr var_F8
  loc_B53573: LateIdLdVar var_108 DispID_10 0
  loc_B5357A: CI4Var
  loc_B5357C: CVarI4
  loc_B53580: PopAdLdVar
  loc_B53581: LitVarI4
  loc_B53589: PopAdLdVar
  loc_B5358A: FLdPr Me
  loc_B5358D: VCallAd Control_ID_FlexItemNota
  loc_B53590: FStAdFunc var_14C
  loc_B53593: FLdPr var_14C
  loc_B53596: LateIdCallLdVar
  loc_B535A0: PopAd
  loc_B535A2: LitVarI2 var_17C, 10
  loc_B535A7: LitVarI4
  loc_B535AF: FLdRfVar var_15C
  loc_B535B2: CStrVarTmp
  loc_B535B3: FStStrNoPop var_F0
  loc_B535B6: CR8Str
  loc_B535B8: LitI2_Byte 0
  loc_B535BA: CR8I2
  loc_B535BB: LtR8
  loc_B535BC: CVarBoolI2 var_18C
  loc_B535C0: FLdRfVar var_1AC
  loc_B535C3: ImpAdCallFPR4  = IIf(, , )
  loc_B535C8: FLdRfVar var_1AC
  loc_B535CB: CStrVarVal var_288
  loc_B535CF: LitI2_Byte &HFF
  loc_B535D1: LitI2_Byte &HFF
  loc_B535D3: LitI2_Byte &HFF
  loc_B535D5: FLdRfVar var_EC
  loc_B535D8: CStrVarTmp
  loc_B535D9: FStStrNoPop var_F4
  loc_B535DC: LitStr "saldo"
  loc_B535DF: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B535E4: FStStrNoPop var_28C
  loc_B535E7: FLdPr Me
  loc_B535EA: MemStStrCopy
  loc_B535EE: FFreeStr var_F0 = "": var_F4 = "": var_288 = ""
  loc_B535F9: FFreeAd var_88 = "": var_DC = "": var_F8 = ""
  loc_B53604: FFreeVar var_98 = "": var_EC = "": var_108 = "": var_15C = "": var_18C = "": var_16C = "": var_17C = ""
  loc_B53617: FLdPr Me
  loc_B5361A: MemLdStr global_80
  loc_B5361D: LitStr vbNullString
  loc_B53620: NeStr
  loc_B53622: BranchF loc_B53694
  loc_B53625: LitI4 0
  loc_B5362A: FLdPr Me
  loc_B5362D: MemLdStr global_80
  loc_B53630: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B53635: FLdPr Me
  loc_B53638: VCallAd Control_ID_FlexItemNota
  loc_B5363B: FStAdFunc var_88
  loc_B5363E: FLdPr var_88
  loc_B53641: LateIdLdVar var_98 DispID_10 0
  loc_B53648: CI4Var
  loc_B5364A: CVarI4
  loc_B5364E: PopAdLdVar
  loc_B5364F: LitVarI4
  loc_B53657: PopAdLdVar
  loc_B53658: LitVarStr var_118, "0"
  loc_B5365D: PopAdLdVar
  loc_B5365E: FLdPr Me
  loc_B53661: VCallAd Control_ID_FlexItemNota
  loc_B53664: FStAdFunc var_DC
  loc_B53667: FLdPr var_DC
  loc_B5366A: LateIdCallSt
  loc_B53672: FFreeAd var_88 = ""
  loc_B53679: FFree1Var var_98 = ""
  loc_B5367C: FLdPr Me
  loc_B5367F: VCallAd Control_ID_FlexItemNota
  loc_B53682: FStAdFunc var_88
  loc_B53685: FLdPr var_88
  loc_B53688: LateIdCall
  loc_B53690: FFree1Ad var_88
  loc_B53693: ExitProcHresult
  loc_B53694: FLdPr Me
  loc_B53697: VCallAd Control_ID_FlexItemNota
  loc_B5369A: FStAdFunc var_88
  loc_B5369D: FLdPr var_88
  loc_B536A0: LateIdLdVar var_98 DispID_0 0
  loc_B536A7: PopAd
  loc_B536A9: LitI4 1
  loc_B536AE: LitI4 1
  loc_B536B3: LitVarStr var_A8, "0.000"
  loc_B536B8: FStVarCopyObj var_108
  loc_B536BB: FLdRfVar var_108
  loc_B536BE: FLdRfVar var_98
  loc_B536C1: CStrVarTmp
  loc_B536C2: CVarStr var_EC
  loc_B536C5: FLdRfVar var_15C
  loc_B536C8: ImpAdCallFPR4  = Format(, )
  loc_B536CD: FLdRfVar var_15C
  loc_B536D0: CStrVarTmp
  loc_B536D1: CVarStr var_16C
  loc_B536D4: PopAdLdVar
  loc_B536D5: FLdPr Me
  loc_B536D8: VCallAd Control_ID_FlexItemNota
  loc_B536DB: FStAdFunc var_DC
  loc_B536DE: FLdPr var_DC
  loc_B536E1: LateIdSt
  loc_B536E6: FFreeAd var_88 = ""
  loc_B536ED: FFreeVar var_98 = "": var_EC = "": var_108 = "": var_15C = ""
  loc_B536FA: FLdPr Me
  loc_B536FD: VCallAd Control_ID_FlexItemNota
  loc_B53700: FStAdFunc var_DC
  loc_B53703: FLdPr var_DC
  loc_B53706: LateIdLdVar var_98 DispID_10 0
  loc_B5370D: CI4Var
  loc_B5370F: CVarI4
  loc_B53713: PopAdLdVar
  loc_B53714: LitVarI4
  loc_B5371C: PopAdLdVar
  loc_B5371D: FLdPr Me
  loc_B53720: VCallAd Control_ID_FlexItemNota
  loc_B53723: FStAdFunc var_F8
  loc_B53726: FLdPr var_F8
  loc_B53729: LateIdCallLdVar
  loc_B53733: PopAd
  loc_B53735: FLdRfVar var_F0
  loc_B53738: FLdPr Me
  loc_B5373B: VCallAd Control_ID_TotaReceLbl
  loc_B5373E: FStAdFunc var_88
  loc_B53741: FLdPr var_88
  loc_B53744:  = Me.Caption
  loc_B53749: ILdRf var_F0
  loc_B5374C: CR8Str
  loc_B5374E: FLdRfVar var_EC
  loc_B53751: CStrVarTmp
  loc_B53752: FStStrNoPop var_F4
  loc_B53755: CR8Str
  loc_B53757: AddR8
  loc_B53758: CStrR8
  loc_B5375A: FStStrNoPop var_288
  loc_B5375D: FLdPr Me
  loc_B53760: VCallAd Control_ID_TotaReceLbl
  loc_B53763: FStAdFunc var_14C
  loc_B53766: FLdPr var_14C
  loc_B53769: Me.Caption = from_stack_1
  loc_B5376E: FFreeStr var_F0 = "": var_F4 = ""
  loc_B53777: FFreeAd var_88 = "": var_DC = "": var_F8 = ""
  loc_B53782: FFreeVar var_98 = ""
  loc_B53789: Call Proc_138_45_A397C8()
  loc_B5378E: ExitProcHresult
End Sub

Private Sub FlexItemNota_Click() '940A58
  'Data Table: 4BFDF0
  loc_940A50: Call Proc_138_44_9EADC0()
  loc_940A55: ExitProcHresult
End Sub

Private Sub FlexItemNota_KeyDown(KeyCode As Integer, Shift As Integer) '9AFA44
  'Data Table: 4BFDF0
  loc_9AF99C: FLdPr Me
  loc_9AF99F: MemLdUI1 global_76
  loc_9AF9A3: CI2UI1
  loc_9AF9A5: LitI2_Byte 0
  loc_9AF9A7: NeI2
  loc_9AF9A8: BranchF loc_9AFA17
  loc_9AF9AB: FLdPr Me
  loc_9AF9AE: VCallAd Control_ID_FlexItemNota
  loc_9AF9B1: FStAdFunc var_88
  loc_9AF9B4: FLdPr var_88
  loc_9AF9B7: LateIdLdVar var_98 DispID_10 0
  loc_9AF9BE: CI4Var
  loc_9AF9C0: LitI4 0
  loc_9AF9C5: NeI4
  loc_9AF9C6: FFree1Ad var_88
  loc_9AF9C9: FFree1Var var_98 = ""
  loc_9AF9CC: BranchF loc_9AFA17
  loc_9AF9CF: ILdI2 KeyCode
  loc_9AF9D2: CI4UI1
  loc_9AF9D3: LitI4 &H2E
  loc_9AF9D8: EqI4
  loc_9AF9D9: BranchF loc_9AFA17
  loc_9AF9DC: OnErrorGoto loc_9AFA17
  loc_9AF9DF: FLdPr Me
  loc_9AF9E2: VCallAd Control_ID_FlexItemNota
  loc_9AF9E5: FStAdFunc var_88
  loc_9AF9E8: FLdPr var_88
  loc_9AF9EB: LateIdLdVar var_98 DispID_10 0
  loc_9AF9F2: CI4Var
  loc_9AF9F4: CVarI4
  loc_9AF9F8: PopAdLdVar
  loc_9AF9F9: FLdPr Me
  loc_9AF9FC: VCallAd Control_ID_FlexItemNota
  loc_9AF9FF: FStAdFunc var_BC
  loc_9AFA02: FLdPr var_BC
  loc_9AFA05: LateIdCall
  loc_9AFA0D: FFreeAd var_88 = ""
  loc_9AFA14: FFree1Var var_98 = ""
  loc_9AFA17: FLdRfVar var_C0
  loc_9AFA1A: ImpAdCallI2 Err 'rtcErrObj
  loc_9AFA1F: FStAdFunc var_88
  loc_9AFA22: FLdPr var_88
  loc_9AFA25:  = Err.Number
  loc_9AFA2A: ILdRf var_C0
  loc_9AFA2D: LitI4 &H753F
  loc_9AFA32: EqI4
  loc_9AFA33: FFree1Ad var_88
  loc_9AFA36: BranchF loc_9AFA3E
  loc_9AFA39: Call Proc_138_43_A35EB8()
  loc_9AFA3E: Call Proc_138_45_A397C8()
  loc_9AFA43: ExitProcHresult
End Sub

Private Sub FlexItemNota_KeyPress(KeyAscii As Integer) 'AE8D60
  'Data Table: 4BFDF0
  loc_AE8664: FLdPr Me
  loc_AE8667: MemLdUI1 global_76
  loc_AE866B: CI2UI1
  loc_AE866D: LitI2_Byte 0
  loc_AE866F: NeI2
  loc_AE8670: BranchF loc_AE8D5E
  loc_AE8673: ILdI2 KeyAscii
  loc_AE8676: LitI2_Byte 8
  loc_AE8678: EqI2
  loc_AE8679: BranchF loc_AE8A05
  loc_AE867C: FLdPr Me
  loc_AE867F: VCallAd Control_ID_FlexItemNota
  loc_AE8682: FStAdFunc var_88
  loc_AE8685: FLdPr var_88
  loc_AE8688: LateIdLdVar var_98 DispID_11 0
  loc_AE868F: CI4Var
  loc_AE8691: FStR4 var_9C
  loc_AE8694: FFree1Ad var_88
  loc_AE8697: FFree1Var var_98 = ""
  loc_AE869A: ILdRf var_9C
  loc_AE869D: LitI4 5
  loc_AE86A2: EqI4
  loc_AE86A3: BranchF loc_AE87B9
  loc_AE86A6: FLdRfVar var_98
  loc_AE86A9: FLdRfVar var_B4
  loc_AE86AC: LitVarStr var_B0, "ReimpTico"
  loc_AE86B1: PopAdLdVar
  loc_AE86B2: FLdRfVar var_A0
  loc_AE86B5: FLdRfVar var_88
  loc_AE86B8: FLdPr Me
  loc_AE86BB: MemLdRfVar from_stack_1.global_52
  loc_AE86BE: NewIfNullPr clsordencompra
  loc_AE86C1: from_stack_1v = clsordencompra.RsFrmGet()
  loc_AE86C6: FLdPr var_88
  loc_AE86C9:  = Me.Fields
  loc_AE86CE: FLdPr var_A0
  loc_AE86D1: from_stack_2 = Me.Item(from_stack_1)
  loc_AE86D6: FLdPr var_B4
  loc_AE86D9:  = Me.Value
  loc_AE86DE: FLdRfVar var_98
  loc_AE86E1: LitVarStr var_C4, "0"
  loc_AE86E6: HardType
  loc_AE86E7: EqVarBool
  loc_AE86E9: FFreeAd var_88 = "": var_A0 = ""
  loc_AE86F2: FFree1Var var_98 = ""
  loc_AE86F5: BranchF loc_AE87B6
  loc_AE86F8: FLdPr Me
  loc_AE86FB: VCallAd Control_ID_FlexItemNota
  loc_AE86FE: FStAdFunc var_88
  loc_AE8701: FLdPr var_88
  loc_AE8704: LateIdLdVar var_98 DispID_0 0
  loc_AE870B: CStrVarTmp
  loc_AE870C: FStStrNoPop var_D8
  loc_AE870F: LitStr vbNullString
  loc_AE8712: NeStr
  loc_AE8714: FLdPr Me
  loc_AE8717: VCallAd Control_ID_FlexItemNota
  loc_AE871A: FStAdFunc var_A0
  loc_AE871D: FLdPr var_A0
  loc_AE8720: LateIdLdVar var_D4 DispID_0 0
  loc_AE8727: CStrVarTmp
  loc_AE8728: FStStrNoPop var_DC
  loc_AE872B: LitStr " "
  loc_AE872E: NeStr
  loc_AE8730: AndI4
  loc_AE8731: FFreeStr var_D8 = ""
  loc_AE8738: FFreeAd var_88 = ""
  loc_AE873F: FFreeVar var_98 = ""
  loc_AE8746: BranchF loc_AE87B6
  loc_AE8749: FLdPr Me
  loc_AE874C: VCallAd Control_ID_FlexItemNota
  loc_AE874F: FStAdFunc var_88
  loc_AE8752: FLdPr var_88
  loc_AE8755: LateIdLdVar var_98 DispID_0 0
  loc_AE875C: PopAd
  loc_AE875E: FLdPr Me
  loc_AE8761: VCallAd Control_ID_FlexItemNota
  loc_AE8764: FStAdFunc var_A0
  loc_AE8767: FLdPr var_A0
  loc_AE876A: LateIdLdVar var_D4 DispID_0 0
  loc_AE8771: CStrVarTmp
  loc_AE8772: FStStrNoPop var_D8
  loc_AE8775: FnLenStr
  loc_AE8776: LitI4 1
  loc_AE877B: SubI4
  loc_AE877C: FLdRfVar var_98
  loc_AE877F: CStrVarTmp
  loc_AE8780: FStStrNoPop var_DC
  loc_AE8783: ImpAdCallI2 Left$(, )
  loc_AE8788: CVarStr var_EC
  loc_AE878B: PopAdLdVar
  loc_AE878C: FLdPr Me
  loc_AE878F: VCallAd Control_ID_FlexItemNota
  loc_AE8792: FStAdFunc var_B4
  loc_AE8795: FLdPr var_B4
  loc_AE8798: LateIdSt
  loc_AE879D: FFreeStr var_D8 = ""
  loc_AE87A4: FFreeAd var_88 = "": var_A0 = ""
  loc_AE87AD: FFreeVar var_98 = "": var_D4 = ""
  loc_AE87B6: Branch loc_AE8A02
  loc_AE87B9: ILdRf var_9C
  loc_AE87BC: LitI4 6
  loc_AE87C1: EqI4
  loc_AE87C2: BranchF loc_AE8938
  loc_AE87C5: FLdRfVar var_98
  loc_AE87C8: FLdRfVar var_B4
  loc_AE87CB: LitVarStr var_B0, "ReimpTico"
  loc_AE87D0: PopAdLdVar
  loc_AE87D1: FLdRfVar var_A0
  loc_AE87D4: FLdRfVar var_88
  loc_AE87D7: FLdPr Me
  loc_AE87DA: MemLdRfVar from_stack_1.global_52
  loc_AE87DD: NewIfNullPr clsordencompra
  loc_AE87E0: from_stack_1v = clsordencompra.RsFrmGet()
  loc_AE87E5: FLdPr var_88
  loc_AE87E8:  = Me.Fields
  loc_AE87ED: FLdPr var_A0
  loc_AE87F0: from_stack_2 = Me.Item(from_stack_1)
  loc_AE87F5: FLdPr var_B4
  loc_AE87F8:  = Me.Value
  loc_AE87FD: FLdRfVar var_98
  loc_AE8800: LitVarStr var_C4, "1"
  loc_AE8805: HardType
  loc_AE8806: EqVar var_D4
  loc_AE880A: FLdPr Me
  loc_AE880D: VCallAd Control_ID_FlexItemNota
  loc_AE8810: FStAdFunc var_F0
  loc_AE8813: FLdPr var_F0
  loc_AE8816: LateIdLdVar var_EC DispID_10 0
  loc_AE881D: CI4Var
  loc_AE881F: CVarI4
  loc_AE8823: PopAdLdVar
  loc_AE8824: LitVarI4
  loc_AE882C: PopAdLdVar
  loc_AE882D: FLdPr Me
  loc_AE8830: VCallAd Control_ID_FlexItemNota
  loc_AE8833: FStAdFunc var_134
  loc_AE8836: FLdPr var_134
  loc_AE8839: LateIdCallLdVar
  loc_AE8843: CStrVarTmp
  loc_AE8844: FStStrNoPop var_D8
  loc_AE8847: CR8Str
  loc_AE8849: LitStr "1"
  loc_AE884C: CR8Str
  loc_AE884E: EqR4
  loc_AE884F: CVarBoolI2 var_154
  loc_AE8853: AndVar var_164
  loc_AE8857: CBoolVarNull
  loc_AE8859: FFree1Str var_D8
  loc_AE885C: FFreeAd var_88 = "": var_A0 = "": var_B4 = "": var_F0 = ""
  loc_AE8869: FFreeVar var_98 = "": var_EC = "": var_144 = ""
  loc_AE8874: BranchF loc_AE8935
  loc_AE8877: FLdPr Me
  loc_AE887A: VCallAd Control_ID_FlexItemNota
  loc_AE887D: FStAdFunc var_88
  loc_AE8880: FLdPr var_88
  loc_AE8883: LateIdLdVar var_98 DispID_0 0
  loc_AE888A: CStrVarTmp
  loc_AE888B: FStStrNoPop var_D8
  loc_AE888E: LitStr vbNullString
  loc_AE8891: NeStr
  loc_AE8893: FLdPr Me
  loc_AE8896: VCallAd Control_ID_FlexItemNota
  loc_AE8899: FStAdFunc var_A0
  loc_AE889C: FLdPr var_A0
  loc_AE889F: LateIdLdVar var_D4 DispID_0 0
  loc_AE88A6: CStrVarTmp
  loc_AE88A7: FStStrNoPop var_DC
  loc_AE88AA: LitStr " "
  loc_AE88AD: NeStr
  loc_AE88AF: AndI4
  loc_AE88B0: FFreeStr var_D8 = ""
  loc_AE88B7: FFreeAd var_88 = ""
  loc_AE88BE: FFreeVar var_98 = ""
  loc_AE88C5: BranchF loc_AE8935
  loc_AE88C8: FLdPr Me
  loc_AE88CB: VCallAd Control_ID_FlexItemNota
  loc_AE88CE: FStAdFunc var_88
  loc_AE88D1: FLdPr var_88
  loc_AE88D4: LateIdLdVar var_98 DispID_0 0
  loc_AE88DB: PopAd
  loc_AE88DD: FLdPr Me
  loc_AE88E0: VCallAd Control_ID_FlexItemNota
  loc_AE88E3: FStAdFunc var_A0
  loc_AE88E6: FLdPr var_A0
  loc_AE88E9: LateIdLdVar var_D4 DispID_0 0
  loc_AE88F0: CStrVarTmp
  loc_AE88F1: FStStrNoPop var_D8
  loc_AE88F4: FnLenStr
  loc_AE88F5: LitI4 1
  loc_AE88FA: SubI4
  loc_AE88FB: FLdRfVar var_98
  loc_AE88FE: CStrVarTmp
  loc_AE88FF: FStStrNoPop var_DC
  loc_AE8902: ImpAdCallI2 Left$(, )
  loc_AE8907: CVarStr var_EC
  loc_AE890A: PopAdLdVar
  loc_AE890B: FLdPr Me
  loc_AE890E: VCallAd Control_ID_FlexItemNota
  loc_AE8911: FStAdFunc var_B4
  loc_AE8914: FLdPr var_B4
  loc_AE8917: LateIdSt
  loc_AE891C: FFreeStr var_D8 = ""
  loc_AE8923: FFreeAd var_88 = "": var_A0 = ""
  loc_AE892C: FFreeVar var_98 = "": var_D4 = ""
  loc_AE8935: Branch loc_AE8A02
  loc_AE8938: ILdRf var_9C
  loc_AE893B: LitI4 &HF
  loc_AE8940: EqI4
  loc_AE8941: BranchF loc_AE8A02
  loc_AE8944: FLdPr Me
  loc_AE8947: VCallAd Control_ID_FlexItemNota
  loc_AE894A: FStAdFunc var_88
  loc_AE894D: FLdPr var_88
  loc_AE8950: LateIdLdVar var_98 DispID_0 0
  loc_AE8957: CStrVarTmp
  loc_AE8958: FStStrNoPop var_D8
  loc_AE895B: LitStr vbNullString
  loc_AE895E: NeStr
  loc_AE8960: FLdPr Me
  loc_AE8963: VCallAd Control_ID_FlexItemNota
  loc_AE8966: FStAdFunc var_A0
  loc_AE8969: FLdPr var_A0
  loc_AE896C: LateIdLdVar var_D4 DispID_0 0
  loc_AE8973: CStrVarTmp
  loc_AE8974: FStStrNoPop var_DC
  loc_AE8977: LitStr " "
  loc_AE897A: NeStr
  loc_AE897C: AndI4
  loc_AE897D: FFreeStr var_D8 = ""
  loc_AE8984: FFreeAd var_88 = ""
  loc_AE898B: FFreeVar var_98 = ""
  loc_AE8992: BranchF loc_AE8A02
  loc_AE8995: FLdPr Me
  loc_AE8998: VCallAd Control_ID_FlexItemNota
  loc_AE899B: FStAdFunc var_88
  loc_AE899E: FLdPr var_88
  loc_AE89A1: LateIdLdVar var_98 DispID_0 0
  loc_AE89A8: PopAd
  loc_AE89AA: FLdPr Me
  loc_AE89AD: VCallAd Control_ID_FlexItemNota
  loc_AE89B0: FStAdFunc var_A0
  loc_AE89B3: FLdPr var_A0
  loc_AE89B6: LateIdLdVar var_D4 DispID_0 0
  loc_AE89BD: CStrVarTmp
  loc_AE89BE: FStStrNoPop var_D8
  loc_AE89C1: FnLenStr
  loc_AE89C2: LitI4 1
  loc_AE89C7: SubI4
  loc_AE89C8: FLdRfVar var_98
  loc_AE89CB: CStrVarTmp
  loc_AE89CC: FStStrNoPop var_DC
  loc_AE89CF: ImpAdCallI2 Left$(, )
  loc_AE89D4: CVarStr var_EC
  loc_AE89D7: PopAdLdVar
  loc_AE89D8: FLdPr Me
  loc_AE89DB: VCallAd Control_ID_FlexItemNota
  loc_AE89DE: FStAdFunc var_B4
  loc_AE89E1: FLdPr var_B4
  loc_AE89E4: LateIdSt
  loc_AE89E9: FFreeStr var_D8 = ""
  loc_AE89F0: FFreeAd var_88 = "": var_A0 = ""
  loc_AE89F9: FFreeVar var_98 = "": var_D4 = ""
  loc_AE8A02: Branch loc_AE8D5E
  loc_AE8A05: FLdPr Me
  loc_AE8A08: VCallAd Control_ID_FlexItemNota
  loc_AE8A0B: FStAdFunc var_88
  loc_AE8A0E: FLdPr var_88
  loc_AE8A11: LateIdLdVar var_98 DispID_11 0
  loc_AE8A18: CI4Var
  loc_AE8A1A: FStR4 var_168
  loc_AE8A1D: FFree1Ad var_88
  loc_AE8A20: FFree1Var var_98 = ""
  loc_AE8A23: ILdRf var_168
  loc_AE8A26: LitI4 5
  loc_AE8A2B: EqI4
  loc_AE8A2C: BranchF loc_AE8B33
  loc_AE8A2F: FLdRfVar var_98
  loc_AE8A32: FLdRfVar var_B4
  loc_AE8A35: LitVarStr var_B0, "ReimpTico"
  loc_AE8A3A: PopAdLdVar
  loc_AE8A3B: FLdRfVar var_A0
  loc_AE8A3E: FLdRfVar var_88
  loc_AE8A41: FLdPr Me
  loc_AE8A44: MemLdRfVar from_stack_1.global_52
  loc_AE8A47: NewIfNullPr clsordencompra
  loc_AE8A4A: from_stack_1v = clsordencompra.RsFrmGet()
  loc_AE8A4F: FLdPr var_88
  loc_AE8A52:  = Me.Fields
  loc_AE8A57: FLdPr var_A0
  loc_AE8A5A: from_stack_2 = Me.Item(from_stack_1)
  loc_AE8A5F: FLdPr var_B4
  loc_AE8A62:  = Me.Value
  loc_AE8A67: FLdRfVar var_98
  loc_AE8A6A: LitVarStr var_C4, "0"
  loc_AE8A6F: HardType
  loc_AE8A70: EqVarBool
  loc_AE8A72: FFreeAd var_88 = "": var_A0 = ""
  loc_AE8A7B: FFree1Var var_98 = ""
  loc_AE8A7E: BranchF loc_AE8B30
  loc_AE8A81: ILdI2 KeyAscii
  loc_AE8A84: LitStr "."
  loc_AE8A87: ImpAdCallI2 Asc()
  loc_AE8A8C: EqI2
  loc_AE8A8D: BranchF loc_AE8A9B
  loc_AE8A90: LitStr ","
  loc_AE8A93: ImpAdCallI2 Asc()
  loc_AE8A98: IStI2 KeyAscii
  loc_AE8A9B: LitStr "1234567890,"
  loc_AE8A9E: FStStrCopy var_D8
  loc_AE8AA1: FLdRfVar var_D8
  loc_AE8AA4: ILdRf KeyAscii
  loc_AE8AA7: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_AE8AAC: IStI2 KeyAscii
  loc_AE8AAF: FFree1Str var_D8
  loc_AE8AB2: FLdPr Me
  loc_AE8AB5: VCallAd Control_ID_FlexItemNota
  loc_AE8AB8: FStAdFunc var_88
  loc_AE8ABB: FLdPr var_88
  loc_AE8ABE: LateIdLdVar var_98 DispID_0 0
  loc_AE8AC5: CStrVarTmp
  loc_AE8AC6: FStStrNoPop var_D8
  loc_AE8AC9: FnLenStr
  loc_AE8ACA: LitI4 &HC
  loc_AE8ACF: LeI4
  loc_AE8AD0: FFree1Str var_D8
  loc_AE8AD3: FFree1Ad var_88
  loc_AE8AD6: FFree1Var var_98 = ""
  loc_AE8AD9: BranchF loc_AE8B30
  loc_AE8ADC: FLdPr Me
  loc_AE8ADF: VCallAd Control_ID_FlexItemNota
  loc_AE8AE2: FStAdFunc var_88
  loc_AE8AE5: FLdPr var_88
  loc_AE8AE8: LateIdLdVar var_98 DispID_0 0
  loc_AE8AEF: CStrVarTmp
  loc_AE8AF0: CVarStr var_EC
  loc_AE8AF3: ILdI2 KeyAscii
  loc_AE8AF6: CI4UI1
  loc_AE8AF7: FLdRfVar var_D4
  loc_AE8AFA: ImpAdCallFPR4  = Chr()
  loc_AE8AFF: FLdRfVar var_D4
  loc_AE8B02: AddVar var_144
  loc_AE8B06: CStrVarTmp
  loc_AE8B07: CVarStr var_164
  loc_AE8B0A: PopAdLdVar
  loc_AE8B0B: FLdPr Me
  loc_AE8B0E: VCallAd Control_ID_FlexItemNota
  loc_AE8B11: FStAdFunc var_A0
  loc_AE8B14: FLdPr var_A0
  loc_AE8B17: LateIdSt
  loc_AE8B1C: FFreeAd var_88 = ""
  loc_AE8B23: FFreeVar var_98 = "": var_EC = "": var_D4 = "": var_144 = ""
  loc_AE8B30: Branch loc_AE8D5E
  loc_AE8B33: ILdRf var_168
  loc_AE8B36: LitI4 6
  loc_AE8B3B: EqI4
  loc_AE8B3C: BranchF loc_AE8CA3
  loc_AE8B3F: FLdRfVar var_98
  loc_AE8B42: FLdRfVar var_B4
  loc_AE8B45: LitVarStr var_B0, "ReimpTico"
  loc_AE8B4A: PopAdLdVar
  loc_AE8B4B: FLdRfVar var_A0
  loc_AE8B4E: FLdRfVar var_88
  loc_AE8B51: FLdPr Me
  loc_AE8B54: MemLdRfVar from_stack_1.global_52
  loc_AE8B57: NewIfNullPr clsordencompra
  loc_AE8B5A: from_stack_1v = clsordencompra.RsFrmGet()
  loc_AE8B5F: FLdPr var_88
  loc_AE8B62:  = Me.Fields
  loc_AE8B67: FLdPr var_A0
  loc_AE8B6A: from_stack_2 = Me.Item(from_stack_1)
  loc_AE8B6F: FLdPr var_B4
  loc_AE8B72:  = Me.Value
  loc_AE8B77: FLdRfVar var_98
  loc_AE8B7A: LitVarStr var_C4, "1"
  loc_AE8B7F: HardType
  loc_AE8B80: EqVar var_D4
  loc_AE8B84: FLdPr Me
  loc_AE8B87: VCallAd Control_ID_FlexItemNota
  loc_AE8B8A: FStAdFunc var_F0
  loc_AE8B8D: FLdPr var_F0
  loc_AE8B90: LateIdLdVar var_EC DispID_10 0
  loc_AE8B97: CI4Var
  loc_AE8B99: CVarI4
  loc_AE8B9D: PopAdLdVar
  loc_AE8B9E: LitVarI4
  loc_AE8BA6: PopAdLdVar
  loc_AE8BA7: FLdPr Me
  loc_AE8BAA: VCallAd Control_ID_FlexItemNota
  loc_AE8BAD: FStAdFunc var_134
  loc_AE8BB0: FLdPr var_134
  loc_AE8BB3: LateIdCallLdVar
  loc_AE8BBD: CStrVarTmp
  loc_AE8BBE: FStStrNoPop var_D8
  loc_AE8BC1: CR8Str
  loc_AE8BC3: LitStr "1"
  loc_AE8BC6: CR8Str
  loc_AE8BC8: EqR4
  loc_AE8BC9: CVarBoolI2 var_154
  loc_AE8BCD: AndVar var_164
  loc_AE8BD1: CBoolVarNull
  loc_AE8BD3: FFree1Str var_D8
  loc_AE8BD6: FFreeAd var_88 = "": var_A0 = "": var_B4 = "": var_F0 = ""
  loc_AE8BE3: FFreeVar var_98 = "": var_EC = "": var_144 = ""
  loc_AE8BEE: BranchF loc_AE8CA0
  loc_AE8BF1: ILdI2 KeyAscii
  loc_AE8BF4: LitStr "."
  loc_AE8BF7: ImpAdCallI2 Asc()
  loc_AE8BFC: EqI2
  loc_AE8BFD: BranchF loc_AE8C0B
  loc_AE8C00: LitStr ","
  loc_AE8C03: ImpAdCallI2 Asc()
  loc_AE8C08: IStI2 KeyAscii
  loc_AE8C0B: LitStr "1234567890,"
  loc_AE8C0E: FStStrCopy var_D8
  loc_AE8C11: FLdRfVar var_D8
  loc_AE8C14: ILdRf KeyAscii
  loc_AE8C17: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_AE8C1C: IStI2 KeyAscii
  loc_AE8C1F: FFree1Str var_D8
  loc_AE8C22: FLdPr Me
  loc_AE8C25: VCallAd Control_ID_FlexItemNota
  loc_AE8C28: FStAdFunc var_88
  loc_AE8C2B: FLdPr var_88
  loc_AE8C2E: LateIdLdVar var_98 DispID_0 0
  loc_AE8C35: CStrVarTmp
  loc_AE8C36: FStStrNoPop var_D8
  loc_AE8C39: FnLenStr
  loc_AE8C3A: LitI4 &HC
  loc_AE8C3F: LeI4
  loc_AE8C40: FFree1Str var_D8
  loc_AE8C43: FFree1Ad var_88
  loc_AE8C46: FFree1Var var_98 = ""
  loc_AE8C49: BranchF loc_AE8CA0
  loc_AE8C4C: FLdPr Me
  loc_AE8C4F: VCallAd Control_ID_FlexItemNota
  loc_AE8C52: FStAdFunc var_88
  loc_AE8C55: FLdPr var_88
  loc_AE8C58: LateIdLdVar var_98 DispID_0 0
  loc_AE8C5F: CStrVarTmp
  loc_AE8C60: CVarStr var_EC
  loc_AE8C63: ILdI2 KeyAscii
  loc_AE8C66: CI4UI1
  loc_AE8C67: FLdRfVar var_D4
  loc_AE8C6A: ImpAdCallFPR4  = Chr()
  loc_AE8C6F: FLdRfVar var_D4
  loc_AE8C72: AddVar var_144
  loc_AE8C76: CStrVarTmp
  loc_AE8C77: CVarStr var_164
  loc_AE8C7A: PopAdLdVar
  loc_AE8C7B: FLdPr Me
  loc_AE8C7E: VCallAd Control_ID_FlexItemNota
  loc_AE8C81: FStAdFunc var_A0
  loc_AE8C84: FLdPr var_A0
  loc_AE8C87: LateIdSt
  loc_AE8C8C: FFreeAd var_88 = ""
  loc_AE8C93: FFreeVar var_98 = "": var_EC = "": var_D4 = "": var_144 = ""
  loc_AE8CA0: Branch loc_AE8D5E
  loc_AE8CA3: ILdRf var_168
  loc_AE8CA6: LitI4 &HF
  loc_AE8CAB: EqI4
  loc_AE8CAC: BranchF loc_AE8D5E
  loc_AE8CAF: ILdI2 KeyAscii
  loc_AE8CB2: LitStr "."
  loc_AE8CB5: ImpAdCallI2 Asc()
  loc_AE8CBA: EqI2
  loc_AE8CBB: BranchF loc_AE8CC9
  loc_AE8CBE: LitStr ","
  loc_AE8CC1: ImpAdCallI2 Asc()
  loc_AE8CC6: IStI2 KeyAscii
  loc_AE8CC9: LitStr "-1234567890,"
  loc_AE8CCC: FStStrCopy var_D8
  loc_AE8CCF: FLdRfVar var_D8
  loc_AE8CD2: ILdRf KeyAscii
  loc_AE8CD5: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_AE8CDA: IStI2 KeyAscii
  loc_AE8CDD: FFree1Str var_D8
  loc_AE8CE0: FLdPr Me
  loc_AE8CE3: VCallAd Control_ID_FlexItemNota
  loc_AE8CE6: FStAdFunc var_88
  loc_AE8CE9: FLdPr var_88
  loc_AE8CEC: LateIdLdVar var_98 DispID_0 0
  loc_AE8CF3: CStrVarTmp
  loc_AE8CF4: FStStrNoPop var_D8
  loc_AE8CF7: FnLenStr
  loc_AE8CF8: LitI4 &HA
  loc_AE8CFD: LeI4
  loc_AE8CFE: FFree1Str var_D8
  loc_AE8D01: FFree1Ad var_88
  loc_AE8D04: FFree1Var var_98 = ""
  loc_AE8D07: BranchF loc_AE8D5E
  loc_AE8D0A: FLdPr Me
  loc_AE8D0D: VCallAd Control_ID_FlexItemNota
  loc_AE8D10: FStAdFunc var_88
  loc_AE8D13: FLdPr var_88
  loc_AE8D16: LateIdLdVar var_98 DispID_0 0
  loc_AE8D1D: CStrVarTmp
  loc_AE8D1E: CVarStr var_EC
  loc_AE8D21: ILdI2 KeyAscii
  loc_AE8D24: CI4UI1
  loc_AE8D25: FLdRfVar var_D4
  loc_AE8D28: ImpAdCallFPR4  = Chr()
  loc_AE8D2D: FLdRfVar var_D4
  loc_AE8D30: AddVar var_144
  loc_AE8D34: CStrVarTmp
  loc_AE8D35: CVarStr var_164
  loc_AE8D38: PopAdLdVar
  loc_AE8D39: FLdPr Me
  loc_AE8D3C: VCallAd Control_ID_FlexItemNota
  loc_AE8D3F: FStAdFunc var_A0
  loc_AE8D42: FLdPr var_A0
  loc_AE8D45: LateIdSt
  loc_AE8D4A: FFreeAd var_88 = ""
  loc_AE8D51: FFreeVar var_98 = "": var_EC = "": var_D4 = "": var_144 = ""
  loc_AE8D5E: ExitProcHresult
End Sub

Private Sub FlexItemNota_RowColChange() 'A422BC
  'Data Table: 4BFDF0
  loc_A4207C: FLdPr Me
  loc_A4207F: VCallAd Control_ID_FlexItemNota
  loc_A42082: FStAdFunc var_88
  loc_A42085: FLdPr var_88
  loc_A42088: LateIdLdVar var_98 DispID_10 0
  loc_A4208F: CI4Var
  loc_A42091: CVarI4
  loc_A42095: PopAdLdVar
  loc_A42096: LitVarI4
  loc_A4209E: PopAdLdVar
  loc_A4209F: FLdPr Me
  loc_A420A2: VCallAd Control_ID_FlexItemNota
  loc_A420A5: FStAdFunc var_DC
  loc_A420A8: FLdPr var_DC
  loc_A420AB: LateIdCallLdVar
  loc_A420B5: CStrVarTmp
  loc_A420B6: FStStrNoPop var_F0
  loc_A420B9: FLdPr Me
  loc_A420BC: VCallAd Control_ID_CaraItcoLbl
  loc_A420BF: FStAdFunc var_F4
  loc_A420C2: FLdPr var_F4
  loc_A420C5: Me.Caption = from_stack_1
  loc_A420CA: FFree1Str var_F0
  loc_A420CD: FFreeAd var_88 = "": var_DC = ""
  loc_A420D6: FFreeVar var_98 = ""
  loc_A420DD: FLdPr Me
  loc_A420E0: VCallAd Control_ID_FlexItemNota
  loc_A420E3: FStAdFunc var_88
  loc_A420E6: FLdPr var_88
  loc_A420E9: LateIdLdVar var_98 DispID_10 0
  loc_A420F0: CI4Var
  loc_A420F2: CVarI4
  loc_A420F6: PopAdLdVar
  loc_A420F7: LitVarI4
  loc_A420FF: PopAdLdVar
  loc_A42100: FLdPr Me
  loc_A42103: VCallAd Control_ID_FlexItemNota
  loc_A42106: FStAdFunc var_DC
  loc_A42109: FLdPr var_DC
  loc_A4210C: LateIdCallLdVar
  loc_A42116: PopAd
  loc_A42118: FLdPr Me
  loc_A4211B: MemLdRfVar from_stack_1.global_96
  loc_A4211E: NewIfNullRf
  loc_A42122: FLdRfVar var_EC
  loc_A42125: CStrVarTmp
  loc_A42126: FStStrNoPop var_F0
  loc_A42129: ImpAdLdI2 MemVar_C3D064
  loc_A4212C: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_A42131: FFree1Str var_F0
  loc_A42134: FFreeAd var_88 = ""
  loc_A4213B: FFreeVar var_98 = ""
  loc_A42142: FLdPr Me
  loc_A42145: VCallAd Control_ID_FlexItemNota
  loc_A42148: FStAdFunc var_88
  loc_A4214B: FLdPr var_88
  loc_A4214E: LateIdLdVar var_98 DispID_10 0
  loc_A42155: CI4Var
  loc_A42157: CVarI4
  loc_A4215B: PopAdLdVar
  loc_A4215C: LitVarI4
  loc_A42164: PopAdLdVar
  loc_A42165: FLdPr Me
  loc_A42168: VCallAd Control_ID_FlexItemNota
  loc_A4216B: FStAdFunc var_DC
  loc_A4216E: FLdPr var_DC
  loc_A42171: LateIdCallLdVar
  loc_A4217B: PopAd
  loc_A4217D: FLdPr Me
  loc_A42180: MemLdRfVar from_stack_1.global_100
  loc_A42183: NewIfNullRf
  loc_A42187: FLdRfVar var_EC
  loc_A4218A: CStrVarTmp
  loc_A4218B: FStStrNoPop var_F0
  loc_A4218E: ImpAdLdI2 MemVar_C3D064
  loc_A42191: ImpAdCallFPR4 Proc_259_20_B23018(, , )
  loc_A42196: FFree1Str var_F0
  loc_A42199: FFreeAd var_88 = ""
  loc_A421A0: FFreeVar var_98 = ""
  loc_A421A7: FLdPr Me
  loc_A421AA: VCallAd Control_ID_FlexItemNota
  loc_A421AD: FStAdFunc var_88
  loc_A421B0: FLdPr var_88
  loc_A421B3: LateIdLdVar var_98 DispID_10 0
  loc_A421BA: CI4Var
  loc_A421BC: CVarI4
  loc_A421C0: PopAdLdVar
  loc_A421C1: LitVarI4
  loc_A421C9: PopAdLdVar
  loc_A421CA: FLdPr Me
  loc_A421CD: VCallAd Control_ID_FlexItemNota
  loc_A421D0: FStAdFunc var_DC
  loc_A421D3: FLdPr var_DC
  loc_A421D6: LateIdCallLdVar
  loc_A421E0: PopAd
  loc_A421E2: FLdPr Me
  loc_A421E5: MemLdRfVar from_stack_1.global_104
  loc_A421E8: NewIfNullRf
  loc_A421EC: FLdRfVar var_EC
  loc_A421EF: CStrVarTmp
  loc_A421F0: FStStrNoPop var_F0
  loc_A421F3: ImpAdLdI2 MemVar_C3D064
  loc_A421F6: ImpAdCallFPR4 Proc_259_12_AE1238(, , )
  loc_A421FB: FFree1Str var_F0
  loc_A421FE: FFreeAd var_88 = ""
  loc_A42205: FFreeVar var_98 = ""
  loc_A4220C: FLdRfVar var_F0
  loc_A4220F: FLdPr Me
  loc_A42212: MemLdRfVar from_stack_1.global_96
  loc_A42215: NewIfNullPr tblpartida
  loc_A42218: from_stack_1v = tblpartida.DetaPartGet()
  loc_A4221D: ILdRf var_F0
  loc_A42220: FLdPr Me
  loc_A42223: VCallAd Control_ID_DetaPartLbl
  loc_A42226: FStAdFunc var_88
  loc_A42229: FLdPr var_88
  loc_A4222C: Me.Caption = from_stack_1
  loc_A42231: FFree1Str var_F0
  loc_A42234: FFree1Ad var_88
  loc_A42237: LitStr "Partida: "
  loc_A4223A: FLdRfVar var_F0
  loc_A4223D: FLdPr Me
  loc_A42240: MemLdRfVar from_stack_1.global_96
  loc_A42243: NewIfNullPr tblpartida
  loc_A42246: from_stack_1v = tblpartida.DetaPartGet()
  loc_A4224B: ILdRf var_F0
  loc_A4224E: ConcatStr
  loc_A4224F: FStStrNoPop var_F8
  loc_A42252: LitStr " - Organigrama: "
  loc_A42255: ConcatStr
  loc_A42256: FStStrNoPop var_100
  loc_A42259: FLdRfVar var_FC
  loc_A4225C: FLdPr Me
  loc_A4225F: MemLdRfVar from_stack_1.global_100
  loc_A42262: NewIfNullPr tblorganigrama
  loc_A42265: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_A4226A: ILdRf var_FC
  loc_A4226D: ConcatStr
  loc_A4226E: FStStrNoPop var_104
  loc_A42271: LitStr " - Finalidad: "
  loc_A42274: ConcatStr
  loc_A42275: FStStrNoPop var_10C
  loc_A42278: FLdRfVar var_108
  loc_A4227B: FLdPr Me
  loc_A4227E: MemLdRfVar from_stack_1.global_104
  loc_A42281: NewIfNullPr tblfinalidad
  loc_A42284: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_A42289: ILdRf var_108
  loc_A4228C: ConcatStr
  loc_A4228D: CVarStr var_98
  loc_A42290: PopAdLdVar
  loc_A42291: FLdPr Me
  loc_A42294: VCallAd Control_ID_FlexItemNota
  loc_A42297: FStAdFunc var_88
  loc_A4229A: FLdPr var_88
  loc_A4229D: LateIdSt
  loc_A422A2: FFreeStr var_F0 = "": var_F8 = "": var_100 = "": var_FC = "": var_104 = "": var_10C = ""
  loc_A422B3: FFree1Ad var_88
  loc_A422B6: FFree1Var var_98 = ""
  loc_A422B9: ExitProcHresult
End Sub

Private Sub FlexItemNota_LeaveCell() 'B5161C
  'Data Table: 4BFDF0
  loc_B50B88: FLdPr Me
  loc_B50B8B: VCallAd Control_ID_FlexItemNota
  loc_B50B8E: FStAdFunc var_88
  loc_B50B91: FLdPr var_88
  loc_B50B94: LateIdLdVar var_98 DispID_10 0
  loc_B50B9B: CI4Var
  loc_B50B9D: LitI4 0
  loc_B50BA2: GtI4
  loc_B50BA3: FFree1Ad var_88
  loc_B50BA6: FFree1Var var_98 = ""
  loc_B50BA9: BranchF loc_B51614
  loc_B50BAC: FLdPr Me
  loc_B50BAF: VCallAd Control_ID_FlexItemNota
  loc_B50BB2: FStAdFunc var_88
  loc_B50BB5: FLdPr var_88
  loc_B50BB8: LateIdLdVar var_98 DispID_10 0
  loc_B50BBF: CI4Var
  loc_B50BC1: CVarI4
  loc_B50BC5: PopAdLdVar
  loc_B50BC6: LitVarI4
  loc_B50BCE: PopAdLdVar
  loc_B50BCF: FLdPr Me
  loc_B50BD2: VCallAd Control_ID_FlexItemNota
  loc_B50BD5: FStAdFunc var_DC
  loc_B50BD8: FLdPr var_DC
  loc_B50BDB: LateIdCallLdVar
  loc_B50BE5: CStrVarTmp
  loc_B50BE6: FStStrNoPop var_F0
  loc_B50BE9: LitStr vbNullString
  loc_B50BEC: NeStr
  loc_B50BEE: FLdPr Me
  loc_B50BF1: VCallAd Control_ID_FlexItemNota
  loc_B50BF4: FStAdFunc var_F4
  loc_B50BF7: FLdPr var_F4
  loc_B50BFA: LateIdLdVar var_104 DispID_10 0
  loc_B50C01: CI4Var
  loc_B50C03: CVarI4
  loc_B50C07: PopAdLdVar
  loc_B50C08: LitVarI4
  loc_B50C10: PopAdLdVar
  loc_B50C11: FLdPr Me
  loc_B50C14: VCallAd Control_ID_FlexItemNota
  loc_B50C17: FStAdFunc var_148
  loc_B50C1A: FLdPr var_148
  loc_B50C1D: LateIdCallLdVar
  loc_B50C27: CStrVarTmp
  loc_B50C28: FStStrNoPop var_15C
  loc_B50C2B: LitStr vbNullString
  loc_B50C2E: NeStr
  loc_B50C30: OrI4
  loc_B50C31: FFreeStr var_F0 = ""
  loc_B50C38: FFreeAd var_88 = "": var_DC = "": var_F4 = ""
  loc_B50C43: FFreeVar var_98 = "": var_EC = "": var_104 = ""
  loc_B50C4E: BranchF loc_B512EE
  loc_B50C51: FLdPr Me
  loc_B50C54: VCallAd Control_ID_FlexItemNota
  loc_B50C57: FStAdFunc var_88
  loc_B50C5A: FLdPr var_88
  loc_B50C5D: LateIdLdVar var_98 DispID_11 0
  loc_B50C64: CI4Var
  loc_B50C66: LitI4 5
  loc_B50C6B: EqI4
  loc_B50C6C: FLdPr Me
  loc_B50C6F: VCallAd Control_ID_FlexItemNota
  loc_B50C72: FStAdFunc var_DC
  loc_B50C75: FLdPr var_DC
  loc_B50C78: LateIdLdVar var_EC DispID_11 0
  loc_B50C7F: CI4Var
  loc_B50C81: LitI4 6
  loc_B50C86: EqI4
  loc_B50C87: OrI4
  loc_B50C88: FFreeAd var_88 = ""
  loc_B50C8F: FFreeVar var_98 = ""
  loc_B50C96: BranchF loc_B512EE
  loc_B50C99: FLdPr Me
  loc_B50C9C: VCallAd Control_ID_FlexItemNota
  loc_B50C9F: FStAdFunc var_88
  loc_B50CA2: FLdPr var_88
  loc_B50CA5: LateIdLdVar var_98 DispID_10 0
  loc_B50CAC: CI4Var
  loc_B50CAE: CVarI4
  loc_B50CB2: PopAdLdVar
  loc_B50CB3: LitVarI4
  loc_B50CBB: PopAdLdVar
  loc_B50CBC: FLdPr Me
  loc_B50CBF: VCallAd Control_ID_FlexItemNota
  loc_B50CC2: FStAdFunc var_DC
  loc_B50CC5: FLdPr var_DC
  loc_B50CC8: LateIdCallLdVar
  loc_B50CD2: PopAd
  loc_B50CD4: LitStr "0"
  loc_B50CD7: LitI2_Byte &HFF
  loc_B50CD9: LitI2_Byte 0
  loc_B50CDB: LitI2_Byte 0
  loc_B50CDD: FLdRfVar var_EC
  loc_B50CE0: CStrVarTmp
  loc_B50CE1: FStStrNoPop var_F0
  loc_B50CE4: LitStr "cantidad"
  loc_B50CE7: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B50CEC: FStStrNoPop var_15C
  loc_B50CEF: FLdPr Me
  loc_B50CF2: MemStStrCopy
  loc_B50CF6: FFreeStr var_F0 = ""
  loc_B50CFD: FFreeAd var_88 = ""
  loc_B50D04: FFreeVar var_98 = ""
  loc_B50D0B: FLdPr Me
  loc_B50D0E: MemLdStr global_80
  loc_B50D11: LitStr vbNullString
  loc_B50D14: NeStr
  loc_B50D16: BranchF loc_B50D41
  loc_B50D19: LitI4 0
  loc_B50D1E: FLdPr Me
  loc_B50D21: MemLdStr global_80
  loc_B50D24: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B50D29: FLdPr Me
  loc_B50D2C: VCallAd Control_ID_FlexItemNota
  loc_B50D2F: FStAdFunc var_88
  loc_B50D32: FLdPr var_88
  loc_B50D35: LateIdCall
  loc_B50D3D: FFree1Ad var_88
  loc_B50D40: ExitProcHresult
  loc_B50D41: FLdPr Me
  loc_B50D44: VCallAd Control_ID_FlexItemNota
  loc_B50D47: FStAdFunc var_88
  loc_B50D4A: FLdPr var_88
  loc_B50D4D: LateIdLdVar var_98 DispID_10 0
  loc_B50D54: CI4Var
  loc_B50D56: CVarI4
  loc_B50D5A: PopAdLdVar
  loc_B50D5B: LitVarI4
  loc_B50D63: PopAdLdVar
  loc_B50D64: FLdPr Me
  loc_B50D67: VCallAd Control_ID_FlexItemNota
  loc_B50D6A: FStAdFunc var_DC
  loc_B50D6D: FLdPr var_DC
  loc_B50D70: LateIdCallLdVar
  loc_B50D7A: PopAd
  loc_B50D7C: LitStr "0"
  loc_B50D7F: LitI2_Byte &HFF
  loc_B50D81: LitI2_Byte 0
  loc_B50D83: LitI2_Byte 0
  loc_B50D85: FLdRfVar var_EC
  loc_B50D88: CStrVarTmp
  loc_B50D89: FStStrNoPop var_F0
  loc_B50D8C: LitStr "importe"
  loc_B50D8F: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B50D94: FStStrNoPop var_15C
  loc_B50D97: FLdPr Me
  loc_B50D9A: MemStStrCopy
  loc_B50D9E: FFreeStr var_F0 = ""
  loc_B50DA5: FFreeAd var_88 = ""
  loc_B50DAC: FFreeVar var_98 = ""
  loc_B50DB3: FLdPr Me
  loc_B50DB6: MemLdStr global_80
  loc_B50DB9: LitStr vbNullString
  loc_B50DBC: NeStr
  loc_B50DBE: BranchF loc_B50DE9
  loc_B50DC1: LitI4 0
  loc_B50DC6: FLdPr Me
  loc_B50DC9: MemLdStr global_80
  loc_B50DCC: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B50DD1: FLdPr Me
  loc_B50DD4: VCallAd Control_ID_FlexItemNota
  loc_B50DD7: FStAdFunc var_88
  loc_B50DDA: FLdPr var_88
  loc_B50DDD: LateIdCall
  loc_B50DE5: FFree1Ad var_88
  loc_B50DE8: ExitProcHresult
  loc_B50DE9: FLdRfVar var_98
  loc_B50DEC: FLdRfVar var_F4
  loc_B50DEF: LitVarStr var_A8, "ReimpTico"
  loc_B50DF4: PopAdLdVar
  loc_B50DF5: FLdRfVar var_DC
  loc_B50DF8: FLdRfVar var_88
  loc_B50DFB: FLdPr Me
  loc_B50DFE: MemLdRfVar from_stack_1.global_52
  loc_B50E01: NewIfNullPr clsordencompra
  loc_B50E04: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B50E09: FLdPr var_88
  loc_B50E0C:  = Me.Fields
  loc_B50E11: FLdPr var_DC
  loc_B50E14: from_stack_2 = Me.Item(from_stack_1)
  loc_B50E19: FLdPr var_F4
  loc_B50E1C:  = Me.Value
  loc_B50E21: FLdRfVar var_98
  loc_B50E24: LitVarStr var_B8, "0"
  loc_B50E29: HardType
  loc_B50E2A: EqVarBool
  loc_B50E2C: FFreeAd var_88 = "": var_DC = ""
  loc_B50E35: FFree1Var var_98 = ""
  loc_B50E38: BranchF loc_B50F6D
  loc_B50E3B: FLdPr Me
  loc_B50E3E: VCallAd Control_ID_FlexItemNota
  loc_B50E41: FStAdFunc var_F4
  loc_B50E44: FLdPr var_F4
  loc_B50E47: LateIdLdVar var_104 DispID_10 0
  loc_B50E4E: CI4Var
  loc_B50E50: CVarI4
  loc_B50E54: PopAdLdVar
  loc_B50E55: LitVarI4
  loc_B50E5D: PopAdLdVar
  loc_B50E5E: FLdPr Me
  loc_B50E61: VCallAd Control_ID_FlexItemNota
  loc_B50E64: FStAdFunc var_148
  loc_B50E67: FLdPr var_148
  loc_B50E6A: LateIdCallLdVar
  loc_B50E74: PopAd
  loc_B50E76: FLdPr Me
  loc_B50E79: VCallAd Control_ID_FlexItemNota
  loc_B50E7C: FStAdFunc var_88
  loc_B50E7F: FLdPr var_88
  loc_B50E82: LateIdLdVar var_98 DispID_10 0
  loc_B50E89: CI4Var
  loc_B50E8B: CVarI4
  loc_B50E8F: PopAdLdVar
  loc_B50E90: LitVarI4
  loc_B50E98: PopAdLdVar
  loc_B50E99: FLdPr Me
  loc_B50E9C: VCallAd Control_ID_FlexItemNota
  loc_B50E9F: FStAdFunc var_DC
  loc_B50EA2: FLdPr var_DC
  loc_B50EA5: LateIdCallLdVar
  loc_B50EAF: CStrVarTmp
  loc_B50EB0: FStStrNoPop var_F0
  loc_B50EB3: CR8Str
  loc_B50EB5: FLdRfVar var_158
  loc_B50EB8: CStrVarTmp
  loc_B50EB9: FStStrNoPop var_15C
  loc_B50EBC: CR8Str
  loc_B50EBE: GtR4
  loc_B50EBF: FFreeStr var_F0 = ""
  loc_B50EC6: FFreeAd var_88 = "": var_DC = "": var_F4 = ""
  loc_B50ED1: FFreeVar var_98 = "": var_EC = "": var_104 = ""
  loc_B50EDC: BranchF loc_B50F6A
  loc_B50EDF: LitI4 0
  loc_B50EE4: LitStr "La cantidad ingresada del insumo seleccionado es mayor al saldo de la orden de compra. Verifique..."
  loc_B50EE7: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B50EEC: FLdPr Me
  loc_B50EEF: VCallAd Control_ID_FlexItemNota
  loc_B50EF2: FStAdFunc var_88
  loc_B50EF5: FLdPr var_88
  loc_B50EF8: LateIdLdVar var_98 DispID_0 0
  loc_B50EFF: PopAd
  loc_B50F01: LitI4 1
  loc_B50F06: LitI4 1
  loc_B50F0B: LitVarStr var_A8, "0.000"
  loc_B50F10: FStVarCopyObj var_104
  loc_B50F13: FLdRfVar var_104
  loc_B50F16: FLdRfVar var_98
  loc_B50F19: CStrVarTmp
  loc_B50F1A: CVarStr var_EC
  loc_B50F1D: FLdRfVar var_158
  loc_B50F20: ImpAdCallFPR4  = Format(, )
  loc_B50F25: FLdRfVar var_158
  loc_B50F28: CStrVarTmp
  loc_B50F29: CVarStr var_16C
  loc_B50F2C: PopAdLdVar
  loc_B50F2D: FLdPr Me
  loc_B50F30: VCallAd Control_ID_FlexItemNota
  loc_B50F33: FStAdFunc var_DC
  loc_B50F36: FLdPr var_DC
  loc_B50F39: LateIdSt
  loc_B50F3E: FFreeAd var_88 = ""
  loc_B50F45: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_158 = ""
  loc_B50F52: FLdPr Me
  loc_B50F55: VCallAd Control_ID_FlexItemNota
  loc_B50F58: FStAdFunc var_88
  loc_B50F5B: FLdPr var_88
  loc_B50F5E: LateIdCall
  loc_B50F66: FFree1Ad var_88
  loc_B50F69: ExitProcHresult
  loc_B50F6A: Branch loc_B5109C
  loc_B50F6D: FLdPr Me
  loc_B50F70: VCallAd Control_ID_FlexItemNota
  loc_B50F73: FStAdFunc var_F4
  loc_B50F76: FLdPr var_F4
  loc_B50F79: LateIdLdVar var_104 DispID_10 0
  loc_B50F80: CI4Var
  loc_B50F82: CVarI4
  loc_B50F86: PopAdLdVar
  loc_B50F87: LitVarI4
  loc_B50F8F: PopAdLdVar
  loc_B50F90: FLdPr Me
  loc_B50F93: VCallAd Control_ID_FlexItemNota
  loc_B50F96: FStAdFunc var_148
  loc_B50F99: FLdPr var_148
  loc_B50F9C: LateIdCallLdVar
  loc_B50FA6: PopAd
  loc_B50FA8: FLdPr Me
  loc_B50FAB: VCallAd Control_ID_FlexItemNota
  loc_B50FAE: FStAdFunc var_88
  loc_B50FB1: FLdPr var_88
  loc_B50FB4: LateIdLdVar var_98 DispID_10 0
  loc_B50FBB: CI4Var
  loc_B50FBD: CVarI4
  loc_B50FC1: PopAdLdVar
  loc_B50FC2: LitVarI4
  loc_B50FCA: PopAdLdVar
  loc_B50FCB: FLdPr Me
  loc_B50FCE: VCallAd Control_ID_FlexItemNota
  loc_B50FD1: FStAdFunc var_DC
  loc_B50FD4: FLdPr var_DC
  loc_B50FD7: LateIdCallLdVar
  loc_B50FE1: CStrVarTmp
  loc_B50FE2: FStStrNoPop var_F0
  loc_B50FE5: CR8Str
  loc_B50FE7: FLdRfVar var_158
  loc_B50FEA: CStrVarTmp
  loc_B50FEB: FStStrNoPop var_15C
  loc_B50FEE: CR8Str
  loc_B50FF0: GtR4
  loc_B50FF1: FFreeStr var_F0 = ""
  loc_B50FF8: FFreeAd var_88 = "": var_DC = "": var_F4 = ""
  loc_B51003: FFreeVar var_98 = "": var_EC = "": var_104 = ""
  loc_B5100E: BranchF loc_B5109C
  loc_B51011: LitI4 0
  loc_B51016: LitStr "El Importe ingresado del insumo seleccionado es mayor al saldo de la orden de compra. Verifique..."
  loc_B51019: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B5101E: FLdPr Me
  loc_B51021: VCallAd Control_ID_FlexItemNota
  loc_B51024: FStAdFunc var_88
  loc_B51027: FLdPr var_88
  loc_B5102A: LateIdLdVar var_98 DispID_0 0
  loc_B51031: PopAd
  loc_B51033: LitI4 1
  loc_B51038: LitI4 1
  loc_B5103D: LitVarStr var_A8, "0.000"
  loc_B51042: FStVarCopyObj var_104
  loc_B51045: FLdRfVar var_104
  loc_B51048: FLdRfVar var_98
  loc_B5104B: CStrVarTmp
  loc_B5104C: CVarStr var_EC
  loc_B5104F: FLdRfVar var_158
  loc_B51052: ImpAdCallFPR4  = Format(, )
  loc_B51057: FLdRfVar var_158
  loc_B5105A: CStrVarTmp
  loc_B5105B: CVarStr var_16C
  loc_B5105E: PopAdLdVar
  loc_B5105F: FLdPr Me
  loc_B51062: VCallAd Control_ID_FlexItemNota
  loc_B51065: FStAdFunc var_DC
  loc_B51068: FLdPr var_DC
  loc_B5106B: LateIdSt
  loc_B51070: FFreeAd var_88 = ""
  loc_B51077: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_158 = ""
  loc_B51084: FLdPr Me
  loc_B51087: VCallAd Control_ID_FlexItemNota
  loc_B5108A: FStAdFunc var_88
  loc_B5108D: FLdPr var_88
  loc_B51090: LateIdCall
  loc_B51098: FFree1Ad var_88
  loc_B5109B: ExitProcHresult
  loc_B5109C: FLdPr Me
  loc_B5109F: VCallAd Control_ID_FlexItemNota
  loc_B510A2: FStAdFunc var_88
  loc_B510A5: FLdPr var_88
  loc_B510A8: LateIdLdVar var_98 DispID_0 0
  loc_B510AF: PopAd
  loc_B510B1: LitI4 1
  loc_B510B6: LitI4 1
  loc_B510BB: LitVarStr var_A8, "0.000"
  loc_B510C0: FStVarCopyObj var_104
  loc_B510C3: FLdRfVar var_104
  loc_B510C6: FLdRfVar var_98
  loc_B510C9: CStrVarTmp
  loc_B510CA: CVarStr var_EC
  loc_B510CD: FLdRfVar var_158
  loc_B510D0: ImpAdCallFPR4  = Format(, )
  loc_B510D5: FLdRfVar var_158
  loc_B510D8: CStrVarTmp
  loc_B510D9: CVarStr var_16C
  loc_B510DC: PopAdLdVar
  loc_B510DD: FLdPr Me
  loc_B510E0: VCallAd Control_ID_FlexItemNota
  loc_B510E3: FStAdFunc var_DC
  loc_B510E6: FLdPr var_DC
  loc_B510E9: LateIdSt
  loc_B510EE: FFreeAd var_88 = ""
  loc_B510F5: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_158 = ""
  loc_B51102: FLdPr Me
  loc_B51105: VCallAd Control_ID_FlexItemNota
  loc_B51108: FStAdFunc var_88
  loc_B5110B: FLdPr var_88
  loc_B5110E: LateIdLdVar var_98 DispID_10 0
  loc_B51115: CI4Var
  loc_B51117: CVarI4
  loc_B5111B: PopAdLdVar
  loc_B5111C: LitVarI4
  loc_B51124: PopAdLdVar
  loc_B51125: FLdPr Me
  loc_B51128: VCallAd Control_ID_FlexItemNota
  loc_B5112B: FStAdFunc var_DC
  loc_B5112E: FLdPr var_DC
  loc_B51131: LateIdCallLdVar
  loc_B5113B: CStrVarTmp
  loc_B5113C: CVarStr var_104
  loc_B5113F: ImpAdCallI2 IsNumeric()
  loc_B51144: FLdPr Me
  loc_B51147: VCallAd Control_ID_FlexItemNota
  loc_B5114A: FStAdFunc var_F4
  loc_B5114D: FLdPr var_F4
  loc_B51150: LateIdLdVar var_158 DispID_10 0
  loc_B51157: CI4Var
  loc_B51159: CVarI4
  loc_B5115D: PopAdLdVar
  loc_B5115E: LitVarI4
  loc_B51166: PopAdLdVar
  loc_B51167: FLdPr Me
  loc_B5116A: VCallAd Control_ID_FlexItemNota
  loc_B5116D: FStAdFunc var_148
  loc_B51170: FLdPr var_148
  loc_B51173: LateIdCallLdVar
  loc_B5117D: CStrVarTmp
  loc_B5117E: CVarStr var_17C
  loc_B51181: ImpAdCallI2 IsNumeric()
  loc_B51186: AndI4
  loc_B51187: FFreeAd var_88 = "": var_DC = "": var_F4 = ""
  loc_B51192: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_158 = "": var_16C = ""
  loc_B511A1: BranchF loc_B512EE
  loc_B511A4: FLdPr Me
  loc_B511A7: VCallAd Control_ID_FlexItemNota
  loc_B511AA: FStAdFunc var_88
  loc_B511AD: FLdPr var_88
  loc_B511B0: LateIdLdVar var_98 DispID_10 0
  loc_B511B7: CI4Var
  loc_B511B9: CVarI4
  loc_B511BD: PopAdLdVar
  loc_B511BE: LitVarI4
  loc_B511C6: PopAdLdVar
  loc_B511C7: FLdPr Me
  loc_B511CA: VCallAd Control_ID_FlexItemNota
  loc_B511CD: FStAdFunc var_DC
  loc_B511D0: FLdPr var_DC
  loc_B511D3: LateIdCallLdVar
  loc_B511DD: PopAd
  loc_B511DF: LitI4 3
  loc_B511E4: FLdRfVar var_EC
  loc_B511E7: CStrVarTmp
  loc_B511E8: FStStrNoPop var_F0
  loc_B511EB: CR8Str
  loc_B511ED: CVarR8
  loc_B511F1: FLdRfVar var_158
  loc_B511F4: ImpAdCallFPR4  = Round(, )
  loc_B511F9: FLdPr Me
  loc_B511FC: VCallAd Control_ID_FlexItemNota
  loc_B511FF: FStAdFunc var_F4
  loc_B51202: FLdPr var_F4
  loc_B51205: LateIdLdVar var_16C DispID_10 0
  loc_B5120C: CI4Var
  loc_B5120E: CVarI4
  loc_B51212: PopAdLdVar
  loc_B51213: LitVarI4
  loc_B5121B: PopAdLdVar
  loc_B5121C: FLdPr Me
  loc_B5121F: VCallAd Control_ID_FlexItemNota
  loc_B51222: FStAdFunc var_148
  loc_B51225: FLdPr var_148
  loc_B51228: LateIdCallLdVar
  loc_B51232: PopAd
  loc_B51234: LitI4 3
  loc_B51239: FLdRfVar var_17C
  loc_B5123C: CStrVarTmp
  loc_B5123D: FStStrNoPop var_15C
  loc_B51240: CR8Str
  loc_B51242: CVarR8
  loc_B51246: FLdRfVar var_1BC
  loc_B51249: ImpAdCallFPR4  = Round(, )
  loc_B5124E: FLdPr Me
  loc_B51251: VCallAd Control_ID_FlexItemNota
  loc_B51254: FStAdFunc var_210
  loc_B51257: FLdPr var_210
  loc_B5125A: LateIdLdVar var_220 DispID_10 0
  loc_B51261: CI4Var
  loc_B51263: CVarI4
  loc_B51267: PopAdLdVar
  loc_B51268: LitVarI4
  loc_B51270: PopAdLdVar
  loc_B51271: LitI4 1
  loc_B51276: LitI4 1
  loc_B5127B: LitVarStr var_1EC, "###,###,##0.00"
  loc_B51280: FStVarCopyObj var_1FC
  loc_B51283: FLdRfVar var_1FC
  loc_B51286: FLdRfVar var_158
  loc_B51289: FLdRfVar var_1BC
  loc_B5128C: MulVar var_1CC
  loc_B51290: FStVar var_1DC
  loc_B51294: FLdRfVar var_1DC
  loc_B51297: FLdRfVar var_20C
  loc_B5129A: ImpAdCallFPR4  = Format(, )
  loc_B5129F: FLdRfVar var_20C
  loc_B512A2: CStrVarTmp
  loc_B512A3: CVarStr var_270
  loc_B512A6: PopAdLdVar
  loc_B512A7: FLdPr Me
  loc_B512AA: VCallAd Control_ID_FlexItemNota
  loc_B512AD: FStAdFunc var_284
  loc_B512B0: FLdPr var_284
  loc_B512B3: LateIdCallSt
  loc_B512BB: FFreeStr var_F0 = ""
  loc_B512C2: FFreeAd var_88 = "": var_DC = "": var_F4 = "": var_148 = "": var_210 = ""
  loc_B512D1: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_16C = "": var_17C = "": var_1AC = "": var_158 = "": var_1BC = "": var_1DC = "": var_1FC = "": var_220 = "": var_20C = ""
  loc_B512EE: FLdPr Me
  loc_B512F1: VCallAd Control_ID_FlexItemNota
  loc_B512F4: FStAdFunc var_88
  loc_B512F7: FLdPr var_88
  loc_B512FA: LateIdLdVar var_98 DispID_10 0
  loc_B51301: CI4Var
  loc_B51303: CVarI4
  loc_B51307: PopAdLdVar
  loc_B51308: LitVarI4
  loc_B51310: PopAdLdVar
  loc_B51311: FLdPr Me
  loc_B51314: VCallAd Control_ID_FlexItemNota
  loc_B51317: FStAdFunc var_DC
  loc_B5131A: FLdPr var_DC
  loc_B5131D: LateIdCallLdVar
  loc_B51327: CStrVarTmp
  loc_B51328: FStStrNoPop var_F0
  loc_B5132B: LitStr vbNullString
  loc_B5132E: NeStr
  loc_B51330: FLdPr Me
  loc_B51333: VCallAd Control_ID_FlexItemNota
  loc_B51336: FStAdFunc var_F4
  loc_B51339: FLdPr var_F4
  loc_B5133C: LateIdLdVar var_104 DispID_10 0
  loc_B51343: CI4Var
  loc_B51345: CVarI4
  loc_B51349: PopAdLdVar
  loc_B5134A: LitVarI4
  loc_B51352: PopAdLdVar
  loc_B51353: FLdPr Me
  loc_B51356: VCallAd Control_ID_FlexItemNota
  loc_B51359: FStAdFunc var_148
  loc_B5135C: FLdPr var_148
  loc_B5135F: LateIdCallLdVar
  loc_B51369: CStrVarTmp
  loc_B5136A: FStStrNoPop var_15C
  loc_B5136D: LitStr "0"
  loc_B51370: NeStr
  loc_B51372: OrI4
  loc_B51373: FFreeStr var_F0 = ""
  loc_B5137A: FFreeAd var_88 = "": var_DC = "": var_F4 = ""
  loc_B51385: FFreeVar var_98 = "": var_EC = "": var_104 = ""
  loc_B51390: BranchF loc_B51614
  loc_B51393: FLdPr Me
  loc_B51396: VCallAd Control_ID_FlexItemNota
  loc_B51399: FStAdFunc var_88
  loc_B5139C: FLdPr var_88
  loc_B5139F: LateIdLdVar var_98 DispID_11 0
  loc_B513A6: CI4Var
  loc_B513A8: LitI4 &HF
  loc_B513AD: EqI4
  loc_B513AE: FFree1Ad var_88
  loc_B513B1: FFree1Var var_98 = ""
  loc_B513B4: BranchF loc_B51614
  loc_B513B7: FLdPr Me
  loc_B513BA: VCallAd Control_ID_FlexItemNota
  loc_B513BD: FStAdFunc var_88
  loc_B513C0: FLdPr var_88
  loc_B513C3: LateIdLdVar var_98 DispID_10 0
  loc_B513CA: CI4Var
  loc_B513CC: CVarI4
  loc_B513D0: PopAdLdVar
  loc_B513D1: LitVarI4
  loc_B513D9: PopAdLdVar
  loc_B513DA: FLdPr Me
  loc_B513DD: VCallAd Control_ID_FlexItemNota
  loc_B513E0: FStAdFunc var_DC
  loc_B513E3: FLdPr var_DC
  loc_B513E6: LateIdCallLdVar
  loc_B513F0: PopAd
  loc_B513F2: FLdPr Me
  loc_B513F5: VCallAd Control_ID_FlexItemNota
  loc_B513F8: FStAdFunc var_F4
  loc_B513FB: FLdPr var_F4
  loc_B513FE: LateIdLdVar var_104 DispID_10 0
  loc_B51405: CI4Var
  loc_B51407: CVarI4
  loc_B5140B: PopAdLdVar
  loc_B5140C: LitVarI4
  loc_B51414: PopAdLdVar
  loc_B51415: FLdPr Me
  loc_B51418: VCallAd Control_ID_FlexItemNota
  loc_B5141B: FStAdFunc var_148
  loc_B5141E: FLdPr var_148
  loc_B51421: LateIdCallLdVar
  loc_B5142B: PopAd
  loc_B5142D: LitVarI2 var_17C, 10
  loc_B51432: LitVarI4
  loc_B5143A: FLdRfVar var_158
  loc_B5143D: CStrVarTmp
  loc_B5143E: FStStrNoPop var_F0
  loc_B51441: CR8Str
  loc_B51443: LitI2_Byte 0
  loc_B51445: CR8I2
  loc_B51446: LtR8
  loc_B51447: CVarBoolI2 var_18C
  loc_B5144B: FLdRfVar var_1AC
  loc_B5144E: ImpAdCallFPR4  = IIf(, , )
  loc_B51453: FLdRfVar var_1AC
  loc_B51456: CStrVarVal var_288
  loc_B5145A: LitI2_Byte &HFF
  loc_B5145C: LitI2_Byte &HFF
  loc_B5145E: LitI2_Byte &HFF
  loc_B51460: FLdRfVar var_EC
  loc_B51463: CStrVarTmp
  loc_B51464: FStStrNoPop var_15C
  loc_B51467: LitStr "saldo"
  loc_B5146A: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B5146F: FStStrNoPop var_28C
  loc_B51472: FLdPr Me
  loc_B51475: MemStStrCopy
  loc_B51479: FFreeStr var_F0 = "": var_15C = "": var_288 = ""
  loc_B51484: FFreeAd var_88 = "": var_DC = "": var_F4 = ""
  loc_B5148F: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_158 = "": var_18C = "": var_16C = "": var_17C = ""
  loc_B514A2: FLdPr Me
  loc_B514A5: MemLdStr global_80
  loc_B514A8: LitStr vbNullString
  loc_B514AB: NeStr
  loc_B514AD: BranchF loc_B5151F
  loc_B514B0: LitI4 0
  loc_B514B5: FLdPr Me
  loc_B514B8: MemLdStr global_80
  loc_B514BB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B514C0: FLdPr Me
  loc_B514C3: VCallAd Control_ID_FlexItemNota
  loc_B514C6: FStAdFunc var_88
  loc_B514C9: FLdPr var_88
  loc_B514CC: LateIdLdVar var_98 DispID_10 0
  loc_B514D3: CI4Var
  loc_B514D5: CVarI4
  loc_B514D9: PopAdLdVar
  loc_B514DA: LitVarI4
  loc_B514E2: PopAdLdVar
  loc_B514E3: LitVarStr var_114, "0"
  loc_B514E8: PopAdLdVar
  loc_B514E9: FLdPr Me
  loc_B514EC: VCallAd Control_ID_FlexItemNota
  loc_B514EF: FStAdFunc var_DC
  loc_B514F2: FLdPr var_DC
  loc_B514F5: LateIdCallSt
  loc_B514FD: FFreeAd var_88 = ""
  loc_B51504: FFree1Var var_98 = ""
  loc_B51507: FLdPr Me
  loc_B5150A: VCallAd Control_ID_FlexItemNota
  loc_B5150D: FStAdFunc var_88
  loc_B51510: FLdPr var_88
  loc_B51513: LateIdCall
  loc_B5151B: FFree1Ad var_88
  loc_B5151E: ExitProcHresult
  loc_B5151F: FLdPr Me
  loc_B51522: VCallAd Control_ID_FlexItemNota
  loc_B51525: FStAdFunc var_88
  loc_B51528: FLdPr var_88
  loc_B5152B: LateIdLdVar var_98 DispID_0 0
  loc_B51532: PopAd
  loc_B51534: LitI4 1
  loc_B51539: LitI4 1
  loc_B5153E: LitVarStr var_A8, "0.000"
  loc_B51543: FStVarCopyObj var_104
  loc_B51546: FLdRfVar var_104
  loc_B51549: FLdRfVar var_98
  loc_B5154C: CStrVarTmp
  loc_B5154D: CVarStr var_EC
  loc_B51550: FLdRfVar var_158
  loc_B51553: ImpAdCallFPR4  = Format(, )
  loc_B51558: FLdRfVar var_158
  loc_B5155B: CStrVarTmp
  loc_B5155C: CVarStr var_16C
  loc_B5155F: PopAdLdVar
  loc_B51560: FLdPr Me
  loc_B51563: VCallAd Control_ID_FlexItemNota
  loc_B51566: FStAdFunc var_DC
  loc_B51569: FLdPr var_DC
  loc_B5156C: LateIdSt
  loc_B51571: FFreeAd var_88 = ""
  loc_B51578: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_158 = ""
  loc_B51585: FLdPr Me
  loc_B51588: VCallAd Control_ID_FlexItemNota
  loc_B5158B: FStAdFunc var_DC
  loc_B5158E: FLdPr var_DC
  loc_B51591: LateIdLdVar var_98 DispID_10 0
  loc_B51598: CI4Var
  loc_B5159A: CVarI4
  loc_B5159E: PopAdLdVar
  loc_B5159F: LitVarI4
  loc_B515A7: PopAdLdVar
  loc_B515A8: FLdPr Me
  loc_B515AB: VCallAd Control_ID_FlexItemNota
  loc_B515AE: FStAdFunc var_F4
  loc_B515B1: FLdPr var_F4
  loc_B515B4: LateIdCallLdVar
  loc_B515BE: PopAd
  loc_B515C0: FLdRfVar var_F0
  loc_B515C3: FLdPr Me
  loc_B515C6: VCallAd Control_ID_TotaReceLbl
  loc_B515C9: FStAdFunc var_88
  loc_B515CC: FLdPr var_88
  loc_B515CF:  = Me.Caption
  loc_B515D4: ILdRf var_F0
  loc_B515D7: CR8Str
  loc_B515D9: FLdRfVar var_EC
  loc_B515DC: CStrVarTmp
  loc_B515DD: FStStrNoPop var_15C
  loc_B515E0: CR8Str
  loc_B515E2: AddR8
  loc_B515E3: CStrR8
  loc_B515E5: FStStrNoPop var_288
  loc_B515E8: FLdPr Me
  loc_B515EB: VCallAd Control_ID_TotaReceLbl
  loc_B515EE: FStAdFunc var_148
  loc_B515F1: FLdPr var_148
  loc_B515F4: Me.Caption = from_stack_1
  loc_B515F9: FFreeStr var_F0 = "": var_15C = ""
  loc_B51602: FFreeAd var_88 = "": var_DC = "": var_F4 = ""
  loc_B5160D: FFreeVar var_98 = ""
  loc_B51614: Call Proc_138_45_A397C8()
  loc_B51619: ExitProcHresult
  loc_B5161A: SubCy
End Sub

Private Sub NufaReceMsk_UnknownEvent_0 '94D010
  'Data Table: 4BFDF0
  loc_94CFFC: FLdPr Me
  loc_94CFFF: VCallAd Control_ID_NufaReceMsk
  loc_94D002: CVarAd
  loc_94D006: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D00B: FFree1Var var_94 = ""
  loc_94D00E: ExitProcHresult
End Sub

Private Sub NufaReceMsk_UnknownEvent_1 '9A3A58
  'Data Table: 4BFDF0
  loc_9A39F0: FLdPr Me
  loc_9A39F3: VCallAd Control_ID_NufaReceMsk
  loc_9A39F6: FStAdFunc var_88
  loc_9A39F9: FLdPr var_88
  loc_9A39FC: LateIdLdVar var_98 DispID_22 0
  loc_9A3A03: PopAd
  loc_9A3A05: LitI4 1
  loc_9A3A0A: LitI4 1
  loc_9A3A0F: LitVarStr var_B8, "00000000"
  loc_9A3A14: FStVarCopyObj var_C8
  loc_9A3A17: FLdRfVar var_C8
  loc_9A3A1A: FLdRfVar var_98
  loc_9A3A1D: CStrVarTmp
  loc_9A3A1E: CVarStr var_A8
  loc_9A3A21: FLdRfVar var_D8
  loc_9A3A24: ImpAdCallFPR4  = Format(, )
  loc_9A3A29: FLdRfVar var_D8
  loc_9A3A2C: CStrVarTmp
  loc_9A3A2D: CVarStr var_E8
  loc_9A3A30: PopAdLdVar
  loc_9A3A31: FLdPr Me
  loc_9A3A34: VCallAd Control_ID_NufaReceMsk
  loc_9A3A37: FStAdFunc var_FC
  loc_9A3A3A: FLdPr var_FC
  loc_9A3A3D: LateIdSt
  loc_9A3A42: FFreeAd var_88 = ""
  loc_9A3A49: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = ""
  loc_9A3A56: ExitProcHresult
End Sub

Private Function NufaReceMsk_UnknownEvent_8(arg_C) 'A42520
  'Data Table: 4BFDF0
  loc_A4231C: FLdRfVar var_8A
  loc_A4231F: FLdPr Me
  loc_A42322: VCallAd Control_ID_cmdCancelar
  loc_A42325: FStAdFunc var_88
  loc_A42328: FLdPr var_88
  loc_A4232B:  = Me.Value
  loc_A42330: FLdI2 var_8A
  loc_A42333: NotI4
  loc_A42334: FLdPr Me
  loc_A42337: VCallAd Control_ID_NufaReceMsk
  loc_A4233A: FStAdFunc var_90
  loc_A4233D: FLdPr var_90
  loc_A42340: LateIdLdVar var_A0 DispID_13 -32767
  loc_A42347: CBoolVar
  loc_A42349: AndI4
  loc_A4234A: FFreeAd var_88 = ""
  loc_A42351: FFree1Var var_A0 = ""
  loc_A42354: BranchF loc_A4251C
  loc_A42357: FLdRfVar var_A4
  loc_A4235A: FLdPr Me
  loc_A4235D: VCallAd Control_ID_ExpeImpuTxt
  loc_A42360: FStAdFunc var_88
  loc_A42363: FLdPr var_88
  loc_A42366:  = Me.Text
  loc_A4236B: FLdRfVar var_174
  loc_A4236E: FLdRfVar var_BC
  loc_A42371: LitVarStr var_B8, "CucuPers"
  loc_A42376: PopAdLdVar
  loc_A42377: FLdRfVar var_A8
  loc_A4237A: FLdRfVar var_90
  loc_A4237D: FLdPr Me
  loc_A42380: MemLdRfVar from_stack_1.global_52
  loc_A42383: NewIfNullPr clsordencompra
  loc_A42386: from_stack_1v = clsordencompra.RsFrmGet()
  loc_A4238B: FLdPr var_90
  loc_A4238E:  = Me.Fields
  loc_A42393: FLdPr var_A8
  loc_A42396: from_stack_2 = Me.Item(from_stack_1)
  loc_A4239B: FLdPr var_BC
  loc_A4239E:  = Me.Value
  loc_A423A3: FLdRfVar var_C4
  loc_A423A6: FLdPr Me
  loc_A423A9: VCallAd Control_ID_TifaReceCbo
  loc_A423AC: FStAdFunc var_C0
  loc_A423AF: FLdPr var_C0
  loc_A423B2:  = Me.Text
  loc_A423B7: FLdPr Me
  loc_A423BA: VCallAd Control_ID_SufaReceMsk
  loc_A423BD: FStAdFunc var_C8
  loc_A423C0: FLdPr var_C8
  loc_A423C3: LateIdLdVar var_A0 DispID_22 0
  loc_A423CA: PopAd
  loc_A423CC: LitI4 1
  loc_A423D1: LitI4 1
  loc_A423D6: LitVarStr var_E8, "0000"
  loc_A423DB: FStVarCopyObj var_F8
  loc_A423DE: FLdRfVar var_F8
  loc_A423E1: FLdRfVar var_A0
  loc_A423E4: CStrVarTmp
  loc_A423E5: CVarStr var_D8
  loc_A423E8: ImpAdCallI2 Format$(, )
  loc_A423ED: FStStr var_194
  loc_A423F0: FLdPr Me
  loc_A423F3: VCallAd Control_ID_NufaReceMsk
  loc_A423F6: FStAdFunc var_100
  loc_A423F9: FLdPr var_100
  loc_A423FC: LateIdLdVar var_110 DispID_22 0
  loc_A42403: PopAd
  loc_A42405: LitI4 1
  loc_A4240A: LitI4 1
  loc_A4240F: LitVarStr var_130, "00000000"
  loc_A42414: FStVarCopyObj var_140
  loc_A42417: FLdRfVar var_140
  loc_A4241A: FLdRfVar var_110
  loc_A4241D: CStrVarTmp
  loc_A4241E: CVarStr var_120
  loc_A42421: ImpAdCallI2 Format$(, )
  loc_A42426: FStStr var_198
  loc_A42429: FLdRfVar var_18C
  loc_A4242C: FLdRfVar var_164
  loc_A4242F: LitVarStr var_160, "CodiOrco"
  loc_A42434: PopAdLdVar
  loc_A42435: FLdRfVar var_150
  loc_A42438: FLdRfVar var_14C
  loc_A4243B: FLdPr Me
  loc_A4243E: MemLdRfVar from_stack_1.global_52
  loc_A42441: NewIfNullPr clsordencompra
  loc_A42444: from_stack_1v = clsordencompra.RsFrmGet()
  loc_A42449: FLdPr var_14C
  loc_A4244C:  = Me.Fields
  loc_A42451: FLdPr var_150
  loc_A42454: from_stack_2 = Me.Item(from_stack_1)
  loc_A42459: FLdPr var_164
  loc_A4245C:  = Me.Value
  loc_A42461: LitI2_Byte 0
  loc_A42463: FLdRfVar var_18C
  loc_A42466: CI2Var
  loc_A42467: ILdRf var_C4
  loc_A4246A: FLdZeroAd var_194
  loc_A4246D: FStStrNoPop var_FC
  loc_A42470: ConcatStr
  loc_A42471: FStStrNoPop var_144
  loc_A42474: FLdZeroAd var_198
  loc_A42477: FStStrNoPop var_148
  loc_A4247A: ConcatStr
  loc_A4247B: FStStrNoPop var_17C
  loc_A4247E: FLdRfVar var_174
  loc_A42481: CStrVarTmp
  loc_A42482: FStStrNoPop var_178
  loc_A42485: ILdRf var_A4
  loc_A42488: LitI4 0
  loc_A4248D: ImpAdLdI2 MemVar_C3D064
  loc_A42490: ImpAdCallI2 Proc_266_24_AF5868(, , , , , , )
  loc_A42495: FStStrNoPop var_190
  loc_A42498: FLdPr Me
  loc_A4249B: MemStStrCopy
  loc_A4249F: FFreeStr var_C4 = "": var_FC = "": var_144 = "": var_148 = "": var_A4 = "": var_178 = "": var_17C = "": var_190 = "": var_194 = ""
  loc_A424B6: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_C0 = "": var_C8 = "": var_100 = "": var_14C = "": var_150 = "": var_BC = ""
  loc_A424CD: FFreeVar var_A0 = "": var_D8 = "": var_F8 = "": var_110 = "": var_120 = "": var_140 = "": var_174 = ""
  loc_A424E0: FLdPr Me
  loc_A424E3: VCallAd Control_ID_NufaReceMsk
  loc_A424E6: FStAdFunc var_BC
  loc_A424E9: LitNothing
  loc_A424EB: CastAd
  loc_A424EE: FStAdFunc var_A8
  loc_A424F1: FLdRfVar var_A8
  loc_A424F4: FLdZeroAd var_BC
  loc_A424F7: FStAdFuncNoPop
  loc_A424FA: CastAd
  loc_A424FD: FStAdFunc var_90
  loc_A42500: FLdRfVar var_90
  loc_A42503: FLdPr Me
  loc_A42506: MemLdRfVar from_stack_1.global_80
  loc_A42509: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A4250E: IStI2 arg_C
  loc_A42511: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_A4251C: ExitProcHresult
  loc_A4251D: FFreeStr var_FFFFFF88 = ""
End Function

Private Sub NufaReceMsk_KeyPress(KeyAscii As Integer) '965858
  'Data Table: 4BFDF0
  loc_965840: LitStr "0123456789"
  loc_965843: FStStrCopy var_88
  loc_965846: FLdRfVar var_88
  loc_965849: ILdRf KeyAscii
  loc_96584C: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_965851: IStI2 KeyAscii
  loc_965854: FFree1Str var_88
  loc_965857: ExitProcHresult
End Sub

Private Sub SufaReceMsk_UnknownEvent_0 '94CB00
  'Data Table: 4BFDF0
  loc_94CAEC: FLdPr Me
  loc_94CAEF: VCallAd Control_ID_SufaReceMsk
  loc_94CAF2: CVarAd
  loc_94CAF6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94CAFB: FFree1Var var_94 = ""
  loc_94CAFE: ExitProcHresult
End Sub

Private Sub SufaReceMsk_UnknownEvent_1 '9A383C
  'Data Table: 4BFDF0
  loc_9A37D4: FLdPr Me
  loc_9A37D7: VCallAd Control_ID_SufaReceMsk
  loc_9A37DA: FStAdFunc var_88
  loc_9A37DD: FLdPr var_88
  loc_9A37E0: LateIdLdVar var_98 DispID_22 0
  loc_9A37E7: PopAd
  loc_9A37E9: LitI4 1
  loc_9A37EE: LitI4 1
  loc_9A37F3: LitVarStr var_B8, "0000"
  loc_9A37F8: FStVarCopyObj var_C8
  loc_9A37FB: FLdRfVar var_C8
  loc_9A37FE: FLdRfVar var_98
  loc_9A3801: CStrVarTmp
  loc_9A3802: CVarStr var_A8
  loc_9A3805: FLdRfVar var_D8
  loc_9A3808: ImpAdCallFPR4  = Format(, )
  loc_9A380D: FLdRfVar var_D8
  loc_9A3810: CStrVarTmp
  loc_9A3811: CVarStr var_E8
  loc_9A3814: PopAdLdVar
  loc_9A3815: FLdPr Me
  loc_9A3818: VCallAd Control_ID_SufaReceMsk
  loc_9A381B: FStAdFunc var_FC
  loc_9A381E: FLdPr var_FC
  loc_9A3821: LateIdSt
  loc_9A3826: FFreeAd var_88 = ""
  loc_9A382D: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = ""
  loc_9A383A: ExitProcHresult
End Sub

Private Sub SufaReceMsk_UnknownEvent_8 '9CBAA4
  'Data Table: 4BFDF0
  loc_9CB9D4: FLdRfVar var_8A
  loc_9CB9D7: FLdPr Me
  loc_9CB9DA: VCallAd Control_ID_cmdCancelar
  loc_9CB9DD: FStAdFunc var_88
  loc_9CB9E0: FLdPr var_88
  loc_9CB9E3:  = Me.Value
  loc_9CB9E8: FLdI2 var_8A
  loc_9CB9EB: NotI4
  loc_9CB9EC: FLdPr Me
  loc_9CB9EF: VCallAd Control_ID_SufaReceMsk
  loc_9CB9F2: FStAdFunc var_90
  loc_9CB9F5: FLdPr var_90
  loc_9CB9F8: LateIdLdVar var_A0 DispID_13 -32767
  loc_9CB9FF: CBoolVar
  loc_9CBA01: AndI4
  loc_9CBA02: FFreeAd var_88 = ""
  loc_9CBA09: FFree1Var var_A0 = ""
  loc_9CBA0C: BranchF loc_9CBAA0
  loc_9CBA0F: FLdPr Me
  loc_9CBA12: VCallAd Control_ID_SufaReceMsk
  loc_9CBA15: FStAdFunc var_88
  loc_9CBA18: FLdPr var_88
  loc_9CBA1B: LateIdLdVar var_A0 DispID_22 0
  loc_9CBA22: PopAd
  loc_9CBA24: FLdRfVar var_A4
  loc_9CBA27: FLdPr Me
  loc_9CBA2A: VCallAd Control_ID_TifaReceCbo
  loc_9CBA2D: FStAdFunc var_90
  loc_9CBA30: FLdPr var_90
  loc_9CBA33:  = Me.Text
  loc_9CBA38: ILdRf var_A4
  loc_9CBA3B: FLdRfVar var_A0
  loc_9CBA3E: CStrVarTmp
  loc_9CBA3F: FStStrNoPop var_A8
  loc_9CBA42: ImpAdCallI2 Proc_266_22_990D68(, )
  loc_9CBA47: FStStrNoPop var_AC
  loc_9CBA4A: FLdPr Me
  loc_9CBA4D: MemStStrCopy
  loc_9CBA51: FFreeStr var_A8 = "": var_A4 = ""
  loc_9CBA5A: FFreeAd var_88 = ""
  loc_9CBA61: FFree1Var var_A0 = ""
  loc_9CBA64: FLdPr Me
  loc_9CBA67: VCallAd Control_ID_SufaReceMsk
  loc_9CBA6A: FStAdFunc var_B4
  loc_9CBA6D: LitNothing
  loc_9CBA6F: CastAd
  loc_9CBA72: FStAdFunc var_B0
  loc_9CBA75: FLdRfVar var_B0
  loc_9CBA78: FLdZeroAd var_B4
  loc_9CBA7B: FStAdFuncNoPop
  loc_9CBA7E: CastAd
  loc_9CBA81: FStAdFunc var_90
  loc_9CBA84: FLdRfVar var_90
  loc_9CBA87: FLdPr Me
  loc_9CBA8A: MemLdRfVar from_stack_1.global_80
  loc_9CBA8D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CBA92: IStI2 KeyAscii
  loc_9CBA95: FFreeAd var_88 = "": var_90 = "": var_B0 = ""
  loc_9CBAA0: ExitProcHresult
End Sub

Private Sub SufaReceMsk_KeyPress(KeyAscii As Integer) '962A08
  'Data Table: 4BFDF0
  loc_9629F0: LitStr "0123456789"
  loc_9629F3: FStStrCopy var_88
  loc_9629F6: FLdRfVar var_88
  loc_9629F9: ILdRf KeyAscii
  loc_9629FC: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_962A01: IStI2 KeyAscii
  loc_962A04: FFree1Str var_88
  loc_962A07: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '9B86B4
  'Data Table: 4BFDF0
  loc_9B85FC: LitVarStr var_94, vbNullString
  loc_9B8601: PopAdLdVar
  loc_9B8602: FLdPr Me
  loc_9B8605: VCallAd Control_ID_FiltroMsk
  loc_9B8608: FStAdFunc var_A8
  loc_9B860B: FLdPr var_A8
  loc_9B860E: LateIdSt
  loc_9B8613: FFree1Ad var_A8
  loc_9B8616: FLdRfVar var_AA
  loc_9B8619: FLdPr Me
  loc_9B861C: VCallAd Control_ID_FiltroCbo
  loc_9B861F: FStAdFunc var_A8
  loc_9B8622: FLdPr var_A8
  loc_9B8625:  = Me.ListIndex
  loc_9B862A: FLdI2 var_AA
  loc_9B862D: FStI2 var_AC
  loc_9B8630: FFree1Ad var_A8
  loc_9B8633: FLdI2 var_AC
  loc_9B8636: LitI2_Byte 0
  loc_9B8638: EqI2
  loc_9B8639: BranchF loc_9B8673
  loc_9B863C: LitVarStr var_94, "########"
  loc_9B8641: PopAdLdVar
  loc_9B8642: FLdPr Me
  loc_9B8645: VCallAd Control_ID_FiltroMsk
  loc_9B8648: FStAdFunc var_A8
  loc_9B864B: FLdPr var_A8
  loc_9B864E: LateIdSt
  loc_9B8653: FFree1Ad var_A8
  loc_9B8656: LitStr "CodiOrco"
  loc_9B8659: FStStrCopy var_B0
  loc_9B865C: FLdRfVar var_B0
  loc_9B865F: FLdPr Me
  loc_9B8662: MemLdRfVar from_stack_1.global_52
  loc_9B8665: NewIfNullPr clsordencompra
  loc_9B8668: Call clsordencompra.Sort(from_stack_1v)
  loc_9B866D: FFree1Str var_B0
  loc_9B8670: Branch loc_9B86B0
  loc_9B8673: FLdI2 var_AC
  loc_9B8676: LitI2_Byte 1
  loc_9B8678: EqI2
  loc_9B8679: BranchF loc_9B86B0
  loc_9B867C: LitVarStr var_94, vbNullString
  loc_9B8681: PopAdLdVar
  loc_9B8682: FLdPr Me
  loc_9B8685: VCallAd Control_ID_FiltroMsk
  loc_9B8688: FStAdFunc var_A8
  loc_9B868B: FLdPr var_A8
  loc_9B868E: LateIdSt
  loc_9B8693: FFree1Ad var_A8
  loc_9B8696: LitStr "ExpeImpu"
  loc_9B8699: FStStrCopy var_B0
  loc_9B869C: FLdRfVar var_B0
  loc_9B869F: FLdPr Me
  loc_9B86A2: MemLdRfVar from_stack_1.global_52
  loc_9B86A5: NewIfNullPr clsordencompra
  loc_9B86A8: Call clsordencompra.Sort(from_stack_1v)
  loc_9B86AD: FFree1Str var_B0
  loc_9B86B0: ExitProcHresult
  loc_9B86B1: FLdPr arg_600
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BAD848
  'Data Table: 4BFDF0
  loc_BAC8E8: ILdRf Button
  loc_BAC8EB: FStAd var_88 
  loc_BAC8EF: FLdRfVar var_90
  loc_BAC8F2: FLdPr var_88
  loc_BAC8F5:  = Me.Key
  loc_BAC8FA: FLdZeroAd var_90
  loc_BAC8FD: FStStr var_94
  loc_BAC900: ILdRf var_94
  loc_BAC903: LitStr "btnCrear"
  loc_BAC906: EqStr
  loc_BAC908: BranchF loc_BACD75
  loc_BAC90B: FLdRfVar var_98
  loc_BAC90E: FLdPr Me
  loc_BAC911: MemLdRfVar from_stack_1.global_52
  loc_BAC914: NewIfNullPr clsordencompra
  loc_BAC917: from_stack_1 = clsordencompra.RecordCount
  loc_BAC91C: ILdRf var_98
  loc_BAC91F: LitI4 0
  loc_BAC924: GtI4
  loc_BAC925: BranchF loc_BACD72
  loc_BAC928: LitI2_Byte 1
  loc_BAC92A: FLdPr Me
  loc_BAC92D: MemStUI1
  loc_BAC931: ILdRf Me
  loc_BAC934: CastAd
  loc_BAC937: FStAdFunc var_9C
  loc_BAC93A: FLdRfVar var_9C
  loc_BAC93D: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BAC942: FFree1Ad var_9C
  loc_BAC945: LitI4 0
  loc_BAC94A: LitI4 0
  loc_BAC94F: FLdRfVar var_A0
  loc_BAC952: Redim
  loc_BAC95C: FLdPr Me
  loc_BAC95F: VCallAd Control_ID_dgdABMS
  loc_BAC962: CVarAd
  loc_BAC966: ParmAry1St
  loc_BAC96C: FLdRfVar var_A0
  loc_BAC96F: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BAC974: FLdRfVar var_A0
  loc_BAC977: Erase
  loc_BAC978: ILdRf Me
  loc_BAC97B: CastAd
  loc_BAC97E: FStAdFunc var_9C
  loc_BAC981: FLdRfVar var_9C
  loc_BAC984: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_BAC989: FFree1Ad var_9C
  loc_BAC98C: ILdRf Me
  loc_BAC98F: CastAd
  loc_BAC992: FStAdFunc var_9C
  loc_BAC995: FLdRfVar var_9C
  loc_BAC998: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_BAC99D: FFree1Ad var_9C
  loc_BAC9A0: ImpAdLdFPR8 MemVar_C3D04C
  loc_BAC9A3: CStrDate
  loc_BAC9A5: CVarStr var_B0
  loc_BAC9A8: PopAdLdVar
  loc_BAC9A9: FLdPr Me
  loc_BAC9AC: VCallAd Control_ID_FechReceMsk
  loc_BAC9AF: FStAdFunc var_9C
  loc_BAC9B2: FLdPr var_9C
  loc_BAC9B5: LateIdSt
  loc_BAC9BA: FFree1Ad var_9C
  loc_BAC9BD: FFree1Var var_B0 = ""
  loc_BAC9C0: FLdRfVar var_90
  loc_BAC9C3: ImpAdLdI2 MemVar_C3D064
  loc_BAC9C6: FLdPr Me
  loc_BAC9C9: MemLdRfVar from_stack_1.global_52
  loc_BAC9CC: NewIfNullPr clsordencompra
  loc_BAC9CF: from_stack_2v = clsordencompra.UltimaFechImpu(from_stack_1v)
  loc_BAC9D4: FLdZeroAd var_90
  loc_BAC9D7: CVarStr var_B0
  loc_BAC9DA: PopAdLdVar
  loc_BAC9DB: FLdPr Me
  loc_BAC9DE: VCallAd Control_ID_FechReceMsk
  loc_BAC9E1: FStAdFunc var_9C
  loc_BAC9E4: FLdPr var_9C
  loc_BAC9E7: LateIdSt
  loc_BAC9EC: FFree1Ad var_9C
  loc_BAC9EF: FFree1Var var_B0 = ""
  loc_BAC9F2: FLdPr Me
  loc_BAC9F5: VCallAd Control_ID_FechReceMsk
  loc_BAC9F8: FStAdFunc var_9C
  loc_BAC9FB: FLdPr var_9C
  loc_BAC9FE: LateIdLdVar var_B0 DispID_11 -32767
  loc_BACA05: CStrVarTmp
  loc_BACA06: CVarStr var_D0
  loc_BACA09: PopAdLdVar
  loc_BACA0A: FLdPr Me
  loc_BACA0D: VCallAd Control_ID_FechReceMsk
  loc_BACA10: FStAdFunc var_D4
  loc_BACA13: FLdPr var_D4
  loc_BACA16: LateIdSt
  loc_BACA1B: FFreeAd var_9C = ""
  loc_BACA22: FFreeVar var_B0 = ""
  loc_BACA29: FLdPr Me
  loc_BACA2C: VCallAd Control_ID_FechReceMsk
  loc_BACA2F: FStAdFunc var_9C
  loc_BACA32: FLdPr var_9C
  loc_BACA35: LateIdLdVar var_B0 DispID_15 0
  loc_BACA3C: CStrVarTmp
  loc_BACA3D: FStStrNoPop var_90
  loc_BACA40: CDateStr
  loc_BACA42: CVarDate var_C0
  loc_BACA46: FLdRfVar var_D0
  loc_BACA49: LitI4 0
  loc_BACA4E: LitI4 0
  loc_BACA53: FLdPr Me
  loc_BACA56: MemLdRfVar from_stack_1.global_52
  loc_BACA59: NewIfNullPr clsordencompra
  loc_BACA5C: from_stack_3v = clsordencompra.BuscaDepaTico(from_stack_1v, from_stack_2v)
  loc_BACA61: FLdRfVar var_D0
  loc_BACA64: AddVar var_E4
  loc_BACA68: CStrVarTmp
  loc_BACA69: CVarStr var_F4
  loc_BACA6C: PopAdLdVar
  loc_BACA6D: FLdPr Me
  loc_BACA70: VCallAd Control_ID_FepaReceMsk
  loc_BACA73: FStAdFunc var_D4
  loc_BACA76: FLdPr var_D4
  loc_BACA79: LateIdSt
  loc_BACA7E: FFree1Str var_90
  loc_BACA81: FFreeAd var_9C = ""
  loc_BACA88: FFreeVar var_B0 = "": var_D0 = "": var_E4 = ""
  loc_BACA93: FLdPr Me
  loc_BACA96: VCallAd Control_ID_FechReceMsk
  loc_BACA99: FStAdFunc var_9C
  loc_BACA9C: FLdPr var_9C
  loc_BACA9F: LateIdLdVar var_B0 DispID_15 0
  loc_BACAA6: CStrVarTmp
  loc_BACAA7: CVarStr var_D0
  loc_BACAAA: PopAdLdVar
  loc_BACAAB: FLdPr Me
  loc_BACAAE: VCallAd Control_ID_FefaReceMsk
  loc_BACAB1: FStAdFunc var_D4
  loc_BACAB4: FLdPr var_D4
  loc_BACAB7: LateIdSt
  loc_BACABC: FFreeAd var_9C = ""
  loc_BACAC3: FFreeVar var_B0 = ""
  loc_BACACA: FLdRfVar var_B0
  loc_BACACD: FLdRfVar var_108
  loc_BACAD0: LitVarStr var_C0, "TifaRece"
  loc_BACAD5: PopAdLdVar
  loc_BACAD6: FLdRfVar var_D4
  loc_BACAD9: FLdRfVar var_9C
  loc_BACADC: FLdPr Me
  loc_BACADF: MemLdRfVar from_stack_1.global_52
  loc_BACAE2: NewIfNullPr clsordencompra
  loc_BACAE5: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BACAEA: FLdPr var_9C
  loc_BACAED:  = Me.Fields
  loc_BACAF2: FLdPr var_D4
  loc_BACAF5: from_stack_2 = Me.Item(from_stack_1)
  loc_BACAFA: FLdPr var_108
  loc_BACAFD:  = Me.Value
  loc_BACB02: FLdRfVar var_B0
  loc_BACB05: CStrVarTmp
  loc_BACB06: FStStrNoPop var_90
  loc_BACB09: FLdPr Me
  loc_BACB0C: VCallAd Control_ID_TifaReceCbo
  loc_BACB0F: FStAdFunc var_10C
  loc_BACB12: FLdPr var_10C
  loc_BACB15: Me.Text = from_stack_1
  loc_BACB1A: FFree1Str var_90
  loc_BACB1D: FFreeAd var_9C = "": var_D4 = "": var_108 = ""
  loc_BACB28: FFree1Var var_B0 = ""
  loc_BACB2B: LitVarStr var_C0, "0000"
  loc_BACB30: PopAdLdVar
  loc_BACB31: FLdPr Me
  loc_BACB34: VCallAd Control_ID_SufaReceMsk
  loc_BACB37: FStAdFunc var_9C
  loc_BACB3A: FLdPr var_9C
  loc_BACB3D: LateIdSt
  loc_BACB42: FFree1Ad var_9C
  loc_BACB45: LitVarStr var_C0, "00000000"
  loc_BACB4A: PopAdLdVar
  loc_BACB4B: FLdPr Me
  loc_BACB4E: VCallAd Control_ID_NufaReceMsk
  loc_BACB51: FStAdFunc var_9C
  loc_BACB54: FLdPr var_9C
  loc_BACB57: LateIdSt
  loc_BACB5C: FFree1Ad var_9C
  loc_BACB5F: LitStr "Municipalidad de Guaymallén"
  loc_BACB62: LitStr "Municipalidad de General Alvear"
  loc_BACB65: EqStr
  loc_BACB67: BranchF loc_BACB6D
  loc_BACB6A: Branch loc_BACBF3
  loc_BACB6D: FLdRfVar var_90
  loc_BACB70: FLdPr Me
  loc_BACB73: VCallAd Control_ID_ExpeImpuTxt
  loc_BACB76: FStAdFunc var_9C
  loc_BACB79: FLdPr var_9C
  loc_BACB7C:  = Me.Text
  loc_BACB81: ILdRf var_90
  loc_BACB84: LitStr vbNullString
  loc_BACB87: EqStr
  loc_BACB89: FFree1Str var_90
  loc_BACB8C: FFree1Ad var_9C
  loc_BACB8F: BranchF loc_BACBF3
  loc_BACB92: FLdRfVar var_B0
  loc_BACB95: FLdRfVar var_108
  loc_BACB98: LitVarStr var_C0, "ExpeImpu"
  loc_BACB9D: PopAdLdVar
  loc_BACB9E: FLdRfVar var_D4
  loc_BACBA1: FLdRfVar var_9C
  loc_BACBA4: FLdPr Me
  loc_BACBA7: MemLdRfVar from_stack_1.global_52
  loc_BACBAA: NewIfNullPr clsordencompra
  loc_BACBAD: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BACBB2: FLdPr var_9C
  loc_BACBB5:  = Me.Fields
  loc_BACBBA: FLdPr var_D4
  loc_BACBBD: from_stack_2 = Me.Item(from_stack_1)
  loc_BACBC2: FLdPr var_108
  loc_BACBC5:  = Me.Value
  loc_BACBCA: FLdRfVar var_B0
  loc_BACBCD: CStrVarTmp
  loc_BACBCE: FStStrNoPop var_90
  loc_BACBD1: FLdPr Me
  loc_BACBD4: VCallAd Control_ID_ExpeImpuTxt
  loc_BACBD7: FStAdFunc var_10C
  loc_BACBDA: FLdPr var_10C
  loc_BACBDD: Me.Text = from_stack_1
  loc_BACBE2: FFree1Str var_90
  loc_BACBE5: FFreeAd var_9C = "": var_D4 = "": var_108 = ""
  loc_BACBF0: FFree1Var var_B0 = ""
  loc_BACBF3: LitI4 1
  loc_BACBF8: LitI4 1
  loc_BACBFD: LitVarStr var_104, "currency"
  loc_BACC02: FStVarCopyObj var_D0
  loc_BACC05: FLdRfVar var_D0
  loc_BACC08: LitVarI2 var_B0, 0
  loc_BACC0D: ImpAdCallI2 Format$(, )
  loc_BACC12: FStStrNoPop var_90
  loc_BACC15: FLdPr Me
  loc_BACC18: VCallAd Control_ID_TotaReceLbl
  loc_BACC1B: FStAdFunc var_9C
  loc_BACC1E: FLdPr var_9C
  loc_BACC21: Me.Caption = from_stack_1
  loc_BACC26: FFree1Str var_90
  loc_BACC29: FFree1Ad var_9C
  loc_BACC2C: FFreeVar var_B0 = ""
  loc_BACC33: LitI4 0
  loc_BACC38: LitI4 0
  loc_BACC3D: FLdRfVar var_A0
  loc_BACC40: Redim
  loc_BACC4A: FLdPr Me
  loc_BACC4D: VCallAd Control_ID_FlexItemNota
  loc_BACC50: CVarAd
  loc_BACC54: ParmAry1St
  loc_BACC5A: FLdRfVar var_A0
  loc_BACC5D: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BACC62: FLdRfVar var_A0
  loc_BACC65: Erase
  loc_BACC66: ILdRf Me
  loc_BACC69: CastAd
  loc_BACC6C: FStAdFunc var_9C
  loc_BACC6F: FLdRfVar var_9C
  loc_BACC72: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_BACC77: FFree1Ad var_9C
  loc_BACC7A: FLdRfVar var_10E
  loc_BACC7D: FLdPr Me
  loc_BACC80: VCallAd Control_ID_ExpeImpuGDETxt
  loc_BACC83: FStAdFunc var_9C
  loc_BACC86: FLdPr var_9C
  loc_BACC89:  = Me.Visible
  loc_BACC8E: FLdI2 var_10E
  loc_BACC91: FLdPr Me
  loc_BACC94: VCallAd Control_ID_ExpeImpuGDETxt
  loc_BACC97: FStAdFunc var_D4
  loc_BACC9A: FLdPr var_D4
  loc_BACC9D: Me.Enabled = from_stack_1b
  loc_BACCA2: FFreeAd var_9C = ""
  loc_BACCA9: FLdRfVar var_B0
  loc_BACCAC: FLdRfVar var_108
  loc_BACCAF: LitVarStr var_C0, "ReimpTico"
  loc_BACCB4: PopAdLdVar
  loc_BACCB5: FLdRfVar var_D4
  loc_BACCB8: FLdRfVar var_9C
  loc_BACCBB: FLdPr Me
  loc_BACCBE: MemLdRfVar from_stack_1.global_52
  loc_BACCC1: NewIfNullPr clsordencompra
  loc_BACCC4: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BACCC9: FLdPr var_9C
  loc_BACCCC:  = Me.Fields
  loc_BACCD1: FLdPr var_D4
  loc_BACCD4: from_stack_2 = Me.Item(from_stack_1)
  loc_BACCD9: FLdPr var_108
  loc_BACCDC:  = Me.Value
  loc_BACCE1: FLdRfVar var_B0
  loc_BACCE4: LitVarI2 var_104, 1
  loc_BACCE9: HardType
  loc_BACCEA: EqVarBool
  loc_BACCEC: FFreeAd var_9C = "": var_D4 = ""
  loc_BACCF5: FFree1Var var_B0 = ""
  loc_BACCF8: BranchF loc_BACD2C
  loc_BACCFB: LitI2_Byte &HFF
  loc_BACCFD: FLdPr Me
  loc_BACD00: VCallAd Control_ID_cmdRecibir
  loc_BACD03: FStAdFunc var_9C
  loc_BACD06: FLdPr var_9C
  loc_BACD09: Me.Enabled = from_stack_1b
  loc_BACD0E: FFree1Ad var_9C
  loc_BACD11: LitVar_TRUE var_C0
  loc_BACD14: PopAdLdVar
  loc_BACD15: FLdPr Me
  loc_BACD18: VCallAd Control_ID_mskRecibir
  loc_BACD1B: FStAdFunc var_9C
  loc_BACD1E: FLdPr var_9C
  loc_BACD21: LateIdSt
  loc_BACD26: FFree1Ad var_9C
  loc_BACD29: Branch loc_BACD5B
  loc_BACD2C: LitI2_Byte 0
  loc_BACD2E: FLdPr Me
  loc_BACD31: VCallAd Control_ID_cmdRecibir
  loc_BACD34: FStAdFunc var_9C
  loc_BACD37: FLdPr var_9C
  loc_BACD3A: Me.Enabled = from_stack_1b
  loc_BACD3F: FFree1Ad var_9C
  loc_BACD42: LitVar_FALSE
  loc_BACD46: PopAdLdVar
  loc_BACD47: FLdPr Me
  loc_BACD4A: VCallAd Control_ID_mskRecibir
  loc_BACD4D: FStAdFunc var_9C
  loc_BACD50: FLdPr var_9C
  loc_BACD53: LateIdSt
  loc_BACD58: FFree1Ad var_9C
  loc_BACD5B: FLdPr Me
  loc_BACD5E: VCallAd Control_ID_FechReceMsk
  loc_BACD61: FStAdFunc var_9C
  loc_BACD64: FLdPr var_9C
  loc_BACD67: LateIdCall
  loc_BACD6F: FFree1Ad var_9C
  loc_BACD72: Branch loc_BAD844
  loc_BACD75: ILdRf var_94
  loc_BACD78: LitStr "btnModificar"
  loc_BACD7B: EqStr
  loc_BACD7D: BranchF loc_BACD83
  loc_BACD80: Branch loc_BAD844
  loc_BACD83: ILdRf var_94
  loc_BACD86: LitStr "btnEliminar"
  loc_BACD89: EqStr
  loc_BACD8B: BranchF loc_BACD91
  loc_BACD8E: Branch loc_BAD844
  loc_BACD91: ILdRf var_94
  loc_BACD94: LitStr "btnGuardar"
  loc_BACD97: EqStr
  loc_BACD99: BranchF loc_BAD365
  loc_BACD9C: LitStr vbNullString
  loc_BACD9F: FLdPr Me
  loc_BACDA2: MemStStrCopy
  loc_BACDA6: LitI2_Byte 0
  loc_BACDA8: PopTmpLdAd2 var_10E
  loc_BACDAB: Call FechReceMsk_UnknownEvent_8()
  loc_BACDB0: FLdPr Me
  loc_BACDB3: MemLdStr global_80
  loc_BACDB6: LitStr vbNullString
  loc_BACDB9: NeStr
  loc_BACDBB: BranchF loc_BACDBF
  loc_BACDBE: ExitProcHresult
  loc_BACDBF: LitI2_Byte 0
  loc_BACDC1: PopTmpLdAd2 var_10E
  loc_BACDC4: Call FefaReceMsk_UnknownEvent_8()
  loc_BACDC9: FLdPr Me
  loc_BACDCC: MemLdStr global_80
  loc_BACDCF: LitStr vbNullString
  loc_BACDD2: NeStr
  loc_BACDD4: BranchF loc_BACDD8
  loc_BACDD7: ExitProcHresult
  loc_BACDD8: LitI2_Byte 0
  loc_BACDDA: PopTmpLdAd2 var_10E
  loc_BACDDD: Call FepaReceMsk_UnknownEvent_8()
  loc_BACDE2: FLdPr Me
  loc_BACDE5: MemLdStr global_80
  loc_BACDE8: LitStr vbNullString
  loc_BACDEB: NeStr
  loc_BACDED: BranchF loc_BACDF1
  loc_BACDF0: ExitProcHresult
  loc_BACDF1: LitI2_Byte 0
  loc_BACDF3: PopTmpLdAd2 var_10E
  loc_BACDF6: Call SufaReceMsk_UnknownEvent_8()
  loc_BACDFB: FLdPr Me
  loc_BACDFE: MemLdStr global_80
  loc_BACE01: LitStr vbNullString
  loc_BACE04: NeStr
  loc_BACE06: BranchF loc_BACE0A
  loc_BACE09: ExitProcHresult
  loc_BACE0A: LitI2_Byte 0
  loc_BACE0C: PopTmpLdAd2 var_10E
  loc_BACE0F: from_stack_2v = NufaReceMsk_UnknownEvent_8(from_stack_1v)
  loc_BACE14: FLdPr Me
  loc_BACE17: MemLdStr global_80
  loc_BACE1A: LitStr vbNullString
  loc_BACE1D: NeStr
  loc_BACE1F: BranchF loc_BACE23
  loc_BACE22: ExitProcHresult
  loc_BACE23: LitI2_Byte 0
  loc_BACE25: PopTmpLdAd2 var_10E
  loc_BACE28: Call ExpeImpuTxt_Validate(from_stack_1v)
  loc_BACE2D: FLdPr Me
  loc_BACE30: MemLdStr global_80
  loc_BACE33: LitStr vbNullString
  loc_BACE36: NeStr
  loc_BACE38: BranchF loc_BACE3C
  loc_BACE3B: ExitProcHresult
  loc_BACE3C: LitI2_Byte 0
  loc_BACE3E: PopTmpLdAd2 var_10E
  loc_BACE41: Call ExpeImpuGDETxt_Validate(from_stack_1v)
  loc_BACE46: FLdPr Me
  loc_BACE49: MemLdStr global_80
  loc_BACE4C: LitStr vbNullString
  loc_BACE4F: NeStr
  loc_BACE51: BranchF loc_BACE55
  loc_BACE54: ExitProcHresult
  loc_BACE55: LitI2_Byte 0
  loc_BACE57: PopTmpLdAd2 var_10E
  loc_BACE5A: Call FlexItemNota_UnknownEvent_8()
  loc_BACE5F: FLdPr Me
  loc_BACE62: MemLdStr global_80
  loc_BACE65: LitStr vbNullString
  loc_BACE68: NeStr
  loc_BACE6A: BranchF loc_BACE6E
  loc_BACE6D: ExitProcHresult
  loc_BACE6E: FLdPr Me
  loc_BACE71: MemLdUI1 global_76
  loc_BACE75: FStUI1 var_110
  loc_BACE79: FLdUI1
  loc_BACE7D: LitI2_Byte 1
  loc_BACE7F: EqI2
  loc_BACE80: BranchF loc_BAD353
  loc_BACE83: FLdPr Me
  loc_BACE86: VCallAd Control_ID_FlexItemNota
  loc_BACE89: FStAdFunc var_9C
  loc_BACE8C: FLdPr var_9C
  loc_BACE8F: LateIdLdVar var_B0 DispID_4 0
  loc_BACE96: CI4Var
  loc_BACE98: LitI4 1
  loc_BACE9D: EqI4
  loc_BACE9E: FFree1Ad var_9C
  loc_BACEA1: FFree1Var var_B0 = ""
  loc_BACEA4: BranchF loc_BACEB5
  loc_BACEA7: LitI4 0
  loc_BACEAC: LitStr "No existe ningún item para hacer la recepción. Verifique..."
  loc_BACEAF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BACEB4: ExitProcHresult
  loc_BACEB5: FLdPr Me
  loc_BACEB8: VCallAd Control_ID_FechReceMsk
  loc_BACEBB: FStAdFunc var_9C
  loc_BACEBE: FLdPr var_9C
  loc_BACEC1: LateIdLdVar var_B0 DispID_15 0
  loc_BACEC8: PopAd
  loc_BACECA: FLdPr Me
  loc_BACECD: VCallAd Control_ID_FepaReceMsk
  loc_BACED0: FStAdFunc var_D4
  loc_BACED3: FLdPr var_D4
  loc_BACED6: LateIdLdVar var_D0 DispID_15 0
  loc_BACEDD: PopAd
  loc_BACEDF: FLdPr Me
  loc_BACEE2: VCallAd Control_ID_FefaReceMsk
  loc_BACEE5: FStAdFunc var_108
  loc_BACEE8: FLdPr var_108
  loc_BACEEB: LateIdLdVar var_E4 DispID_15 0
  loc_BACEF2: PopAd
  loc_BACEF4: FLdRfVar var_90
  loc_BACEF7: FLdPr Me
  loc_BACEFA: VCallAd Control_ID_TifaReceCbo
  loc_BACEFD: FStAdFunc var_10C
  loc_BACF00: FLdPr var_10C
  loc_BACF03:  = Me.Text
  loc_BACF08: FLdPr Me
  loc_BACF0B: VCallAd Control_ID_SufaReceMsk
  loc_BACF0E: FStAdFunc var_114
  loc_BACF11: FLdPr var_114
  loc_BACF14: LateIdLdVar var_F4 DispID_22 0
  loc_BACF1B: PopAd
  loc_BACF1D: LitI4 1
  loc_BACF22: LitI4 1
  loc_BACF27: LitVarStr var_C0, "0000"
  loc_BACF2C: FStVarCopyObj var_134
  loc_BACF2F: FLdRfVar var_134
  loc_BACF32: FLdRfVar var_F4
  loc_BACF35: CStrVarTmp
  loc_BACF36: CVarStr var_124
  loc_BACF39: ImpAdCallI2 Format$(, )
  loc_BACF3E: FStStr var_1C0
  loc_BACF41: FLdPr Me
  loc_BACF44: VCallAd Control_ID_NufaReceMsk
  loc_BACF47: FStAdFunc var_13C
  loc_BACF4A: FLdPr var_13C
  loc_BACF4D: LateIdLdVar var_14C DispID_22 0
  loc_BACF54: PopAd
  loc_BACF56: LitI4 1
  loc_BACF5B: LitI4 1
  loc_BACF60: LitVarStr var_104, "00000000"
  loc_BACF65: FStVarCopyObj var_16C
  loc_BACF68: FLdRfVar var_16C
  loc_BACF6B: FLdRfVar var_14C
  loc_BACF6E: CStrVarTmp
  loc_BACF6F: CVarStr var_15C
  loc_BACF72: ImpAdCallI2 Format$(, )
  loc_BACF77: FStStr var_1C4
  loc_BACF7A: FLdRfVar var_17C
  loc_BACF7D: FLdPr Me
  loc_BACF80: VCallAd Control_ID_ExpeImpuTxt
  loc_BACF83: FStAdFunc var_178
  loc_BACF86: FLdPr var_178
  loc_BACF89:  = Me.Text
  loc_BACF8E: FLdRfVar var_184
  loc_BACF91: FLdPr Me
  loc_BACF94: VCallAd Control_ID_ExpeImpuGDETxt
  loc_BACF97: FStAdFunc var_180
  loc_BACF9A: FLdPr var_180
  loc_BACF9D:  = Me.Text
  loc_BACFA2: FLdPr Me
  loc_BACFA5: VCallAd Control_ID_FlexItemNota
  loc_BACFA8: FStAdFunc var_1C8
  loc_BACFAB: FLdRfVar var_10E
  loc_BACFAE: LitI2_Byte 0
  loc_BACFB0: FLdZeroAd var_1C8
  loc_BACFB3: FStAdFunc var_1BC
  loc_BACFB6: FLdRfVar var_1BC
  loc_BACFB9: ILdRf var_184
  loc_BACFBC: ILdRf var_17C
  loc_BACFBF: ILdRf var_90
  loc_BACFC2: FLdZeroAd var_1C0
  loc_BACFC5: FStStrNoPop var_138
  loc_BACFC8: ConcatStr
  loc_BACFC9: FStStrNoPop var_170
  loc_BACFCC: FLdZeroAd var_1C4
  loc_BACFCF: FStStrNoPop var_174
  loc_BACFD2: ConcatStr
  loc_BACFD3: FStStrNoPop var_1B8
  loc_BACFD6: FLdRfVar var_E4
  loc_BACFD9: CStrVarTmp
  loc_BACFDA: CVarStr var_1B4
  loc_BACFDD: PopAdLdVar
  loc_BACFDE: FLdRfVar var_D0
  loc_BACFE1: CStrVarTmp
  loc_BACFE2: CVarStr var_1A4
  loc_BACFE5: PopAdLdVar
  loc_BACFE6: FLdRfVar var_B0
  loc_BACFE9: CStrVarTmp
  loc_BACFEA: CVarStr var_194
  loc_BACFED: PopAdLdVar
  loc_BACFEE: FLdPr Me
  loc_BACFF1: MemLdRfVar from_stack_1.global_52
  loc_BACFF4: NewIfNullPr clsordencompra
  loc_BACFF7: from_stack_9v = clsordencompra.AgregarRecepcion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_BACFFC: FLdI2 var_10E
  loc_BACFFF: CI4UI1
  loc_BAD000: FStR4 var_8C
  loc_BAD003: FFreeStr var_90 = "": var_138 = "": var_170 = "": var_174 = "": var_1B8 = "": var_17C = "": var_184 = "": var_1C0 = ""
  loc_BAD018: FFreeAd var_9C = "": var_D4 = "": var_108 = "": var_10C = "": var_114 = "": var_13C = "": var_178 = "": var_180 = "": var_1BC = ""
  loc_BAD02F: FFreeVar var_B0 = "": var_D0 = "": var_E4 = "": var_F4 = "": var_124 = "": var_134 = "": var_14C = "": var_15C = "": var_16C = "": var_194 = "": var_1A4 = ""
  loc_BAD04A: ILdRf var_8C
  loc_BAD04D: LitI4 0
  loc_BAD052: LeI4
  loc_BAD053: BranchF loc_BAD066
  loc_BAD056: LitI4 0
  loc_BAD05B: LitStr "La Recepción no ha sido grabada. Verifique..."
  loc_BAD05E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BAD063: Branch loc_BAD350
  loc_BAD066: LitStr "Municipalidad de Guaymallén"
  loc_BAD069: LitStr "Municipalidad de General Alvear"
  loc_BAD06C: NeStr
  loc_BAD06E: BranchF loc_BAD217
  loc_BAD071: LitI2_Byte &HFF
  loc_BAD073: PopTmpLdAd2 var_1CA
  loc_BAD076: LitI2_Byte 0
  loc_BAD078: PopTmpLdAd2 var_10E
  loc_BAD07B: LitStr "¿Desea imprimir la Constancia de Recepción?"
  loc_BAD07E: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BAD083: CI4UI1
  loc_BAD084: LitI4 6
  loc_BAD089: EqI4
  loc_BAD08A: BranchF loc_BAD217
  loc_BAD08D: ImpAdLdRf MemVar_C3DC00
  loc_BAD090: NewIfNullAd
  loc_BAD093: FStAd var_1D0 
  loc_BAD097: FLdRfVar var_B0
  loc_BAD09A: FLdRfVar var_108
  loc_BAD09D: LitVarStr var_C0, "CodiOrco"
  loc_BAD0A2: PopAdLdVar
  loc_BAD0A3: FLdRfVar var_D4
  loc_BAD0A6: FLdRfVar var_9C
  loc_BAD0A9: FLdPr Me
  loc_BAD0AC: MemLdRfVar from_stack_1.global_52
  loc_BAD0AF: NewIfNullPr clsordencompra
  loc_BAD0B2: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BAD0B7: FLdPr var_9C
  loc_BAD0BA:  = Me.Fields
  loc_BAD0BF: FLdPr var_D4
  loc_BAD0C2: from_stack_2 = Me.Item(from_stack_1)
  loc_BAD0C7: FLdPr var_108
  loc_BAD0CA:  = Me.Value
  loc_BAD0CF: FLdRfVar var_B0
  loc_BAD0D2: CStrVarTmp
  loc_BAD0D3: CVarStr var_D0
  loc_BAD0D6: PopAdLdVar
  loc_BAD0D7: FLdPr var_1D0
  loc_BAD0DA: VCallAd Control_ID_CaraItcoLbl
  loc_BAD0DD: FStAdFunc var_10C
  loc_BAD0E0: FLdPr var_10C
  loc_BAD0E3: LateIdSt
  loc_BAD0E8: FFreeAd var_9C = "": var_D4 = "": var_108 = ""
  loc_BAD0F3: FFreeVar var_B0 = ""
  loc_BAD0FA: FLdRfVar var_B0
  loc_BAD0FD: FLdRfVar var_108
  loc_BAD100: LitVarStr var_C0, "PeriInfo"
  loc_BAD105: PopAdLdVar
  loc_BAD106: FLdRfVar var_D4
  loc_BAD109: FLdRfVar var_9C
  loc_BAD10C: FLdPr Me
  loc_BAD10F: MemLdRfVar from_stack_1.global_52
  loc_BAD112: NewIfNullPr clsordencompra
  loc_BAD115: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BAD11A: FLdPr var_9C
  loc_BAD11D:  = Me.Fields
  loc_BAD122: FLdPr var_D4
  loc_BAD125: from_stack_2 = Me.Item(from_stack_1)
  loc_BAD12A: FLdPr var_108
  loc_BAD12D:  = Me.Value
  loc_BAD132: FLdRfVar var_D0
  loc_BAD135: FLdRfVar var_13C
  loc_BAD138: LitVarStr var_104, "CodiOrco"
  loc_BAD13D: PopAdLdVar
  loc_BAD13E: FLdRfVar var_114
  loc_BAD141: FLdRfVar var_10C
  loc_BAD144: FLdPr Me
  loc_BAD147: MemLdRfVar from_stack_1.global_52
  loc_BAD14A: NewIfNullPr clsordencompra
  loc_BAD14D: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BAD152: FLdPr var_10C
  loc_BAD155:  = Me.Fields
  loc_BAD15A: FLdPr var_114
  loc_BAD15D: from_stack_2 = Me.Item(from_stack_1)
  loc_BAD162: FLdPr var_13C
  loc_BAD165:  = Me.Value
  loc_BAD16A: FLdRfVar var_E4
  loc_BAD16D: FLdRfVar var_D0
  loc_BAD170: CStrVarTmp
  loc_BAD171: FStStrNoPop var_138
  loc_BAD174: FLdRfVar var_B0
  loc_BAD177: CStrVarTmp
  loc_BAD178: FStStrNoPop var_90
  loc_BAD17B: FLdPr Me
  loc_BAD17E: MemLdRfVar from_stack_1.global_60
  loc_BAD181: NewIfNullPr clsrecepcion
  loc_BAD184: from_stack_3v = clsrecepcion.BuscaUltimaRece(from_stack_1v, from_stack_2v)
  loc_BAD189: FLdRfVar var_E4
  loc_BAD18C: CStrVarTmp
  loc_BAD18D: CVarStr var_F4
  loc_BAD190: PopAdLdVar
  loc_BAD191: FLdPr var_1D0
  loc_BAD194: VCallAd Control_ID_Label12
  loc_BAD197: FStAdFunc var_178
  loc_BAD19A: FLdPr var_178
  loc_BAD19D: LateIdSt
  loc_BAD1A2: FFreeStr var_90 = ""
  loc_BAD1A9: FFreeAd var_9C = "": var_D4 = "": var_10C = "": var_114 = "": var_108 = "": var_13C = ""
  loc_BAD1BA: FFreeVar var_B0 = "": var_D0 = "": var_E4 = ""
  loc_BAD1C5: FLdPr var_1D0
  loc_BAD1C8: VCallAd Control_ID_Label12
  loc_BAD1CB: FStAdFunc var_9C
  loc_BAD1CE: FLdPr var_9C
  loc_BAD1D1: LateIdLdVar var_B0 DispID_22 0
  loc_BAD1D8: CStrVarTmp
  loc_BAD1D9: CVarStr var_D0
  loc_BAD1DC: PopAdLdVar
  loc_BAD1DD: FLdPr var_1D0
  loc_BAD1E0: VCallAd Control_ID_FiltroMsk
  loc_BAD1E3: FStAdFunc var_D4
  loc_BAD1E6: FLdPr var_D4
  loc_BAD1E9: LateIdSt
  loc_BAD1EE: FFreeAd var_9C = ""
  loc_BAD1F5: FFreeVar var_B0 = ""
  loc_BAD1FC: LitVar_Missing var_104
  loc_BAD1FF: PopAdLdVar
  loc_BAD200: LitVarI4
  loc_BAD208: PopAdLdVar
  loc_BAD209: FLdPr var_1D0
  loc_BAD20C: Me.Show from_stack_1, from_stack_2
  loc_BAD211: LitNothing
  loc_BAD213: FStAd var_1D0 
  loc_BAD217: LitI2_Byte &HFF
  loc_BAD219: PopTmpLdAd2 var_1CA
  loc_BAD21C: LitI2_Byte 0
  loc_BAD21E: PopTmpLdAd2 var_10E
  loc_BAD221: LitStr "¿Desea imprimir la Recepción?"
  loc_BAD224: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BAD229: CI4UI1
  loc_BAD22A: LitI4 6
  loc_BAD22F: EqI4
  loc_BAD230: BranchF loc_BAD350
  loc_BAD233: ImpAdLdRf MemVar_C3DBEC
  loc_BAD236: NewIfNullAd
  loc_BAD239: FStAd var_1E4 
  loc_BAD23D: FLdRfVar var_B0
  loc_BAD240: FLdRfVar var_108
  loc_BAD243: LitVarStr var_C0, "CodiOrco"
  loc_BAD248: PopAdLdVar
  loc_BAD249: FLdRfVar var_D4
  loc_BAD24C: FLdRfVar var_9C
  loc_BAD24F: FLdPr Me
  loc_BAD252: MemLdRfVar from_stack_1.global_52
  loc_BAD255: NewIfNullPr clsordencompra
  loc_BAD258: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BAD25D: FLdPr var_9C
  loc_BAD260:  = Me.Fields
  loc_BAD265: FLdPr var_D4
  loc_BAD268: from_stack_2 = Me.Item(from_stack_1)
  loc_BAD26D: FLdPr var_108
  loc_BAD270:  = Me.Value
  loc_BAD275: FLdRfVar var_B0
  loc_BAD278: CStrVarTmp
  loc_BAD279: CVarStr var_D0
  loc_BAD27C: PopAdLdVar
  loc_BAD27D: FLdPr var_1E4
  loc_BAD280: VCallAd Control_ID_
  loc_BAD283: FStAdFunc var_10C
  loc_BAD286: FLdPr var_10C
  loc_BAD289: LateIdSt
  loc_BAD28E: FFreeAd var_9C = "": var_D4 = "": var_108 = ""
  loc_BAD299: FFreeVar var_B0 = ""
  loc_BAD2A0: FLdRfVar var_90
  loc_BAD2A3: FLdPr Me
  loc_BAD2A6: VCallAd Control_ID_ExpeImpuTxt
  loc_BAD2A9: FStAdFunc var_9C
  loc_BAD2AC: FLdPr var_9C
  loc_BAD2AF:  = Me.Text
  loc_BAD2B4: ILdRf var_90
  loc_BAD2B7: FLdPr var_1E4
  loc_BAD2BA: VCallAd Control_ID_TotaReceLbl
  loc_BAD2BD: FStAdFunc var_D4
  loc_BAD2C0: FLdPr var_D4
  loc_BAD2C3: Me.Text = from_stack_1
  loc_BAD2C8: FFree1Str var_90
  loc_BAD2CB: FFreeAd var_9C = ""
  loc_BAD2D2: FLdRfVar var_B0
  loc_BAD2D5: FLdRfVar var_108
  loc_BAD2D8: LitVarStr var_C0, "CucuPers"
  loc_BAD2DD: PopAdLdVar
  loc_BAD2DE: FLdRfVar var_D4
  loc_BAD2E1: FLdRfVar var_9C
  loc_BAD2E4: FLdPr Me
  loc_BAD2E7: MemLdRfVar from_stack_1.global_52
  loc_BAD2EA: NewIfNullPr clsordencompra
  loc_BAD2ED: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BAD2F2: FLdPr var_9C
  loc_BAD2F5:  = Me.Fields
  loc_BAD2FA: FLdPr var_D4
  loc_BAD2FD: from_stack_2 = Me.Item(from_stack_1)
  loc_BAD302: FLdPr var_108
  loc_BAD305:  = Me.Value
  loc_BAD30A: FLdRfVar var_B0
  loc_BAD30D: CStrVarTmp
  loc_BAD30E: CVarStr var_D0
  loc_BAD311: PopAdLdVar
  loc_BAD312: FLdPr var_1E4
  loc_BAD315: VCallAd Control_ID_
  loc_BAD318: FStAdFunc var_10C
  loc_BAD31B: FLdPr var_10C
  loc_BAD31E: LateIdSt
  loc_BAD323: FFreeAd var_9C = "": var_D4 = "": var_108 = ""
  loc_BAD32E: FFreeVar var_B0 = ""
  loc_BAD335: LitVar_Missing var_104
  loc_BAD338: PopAdLdVar
  loc_BAD339: LitVarI4
  loc_BAD341: PopAdLdVar
  loc_BAD342: FLdPr var_1E4
  loc_BAD345: Me.Show from_stack_1, from_stack_2
  loc_BAD34A: LitNothing
  loc_BAD34C: FStAd var_1E4 
  loc_BAD350: Branch loc_BAD35D
  loc_BAD353: FLdUI1
  loc_BAD357: LitI2_Byte 2
  loc_BAD359: EqI2
  loc_BAD35A: BranchF loc_BAD35D
  loc_BAD35D: Call cmdCancelar_Click()
  loc_BAD362: Branch loc_BAD844
  loc_BAD365: ILdRf var_94
  loc_BAD368: LitStr "btnCancelar"
  loc_BAD36B: EqStr
  loc_BAD36D: BranchF loc_BAD378
  loc_BAD370: Call cmdCancelar_Click()
  loc_BAD375: Branch loc_BAD844
  loc_BAD378: ILdRf var_94
  loc_BAD37B: LitStr "btnPrimero"
  loc_BAD37E: EqStr
  loc_BAD380: BranchF loc_BAD394
  loc_BAD383: FLdPr Me
  loc_BAD386: MemLdRfVar from_stack_1.global_52
  loc_BAD389: NewIfNullPr clsordencompra
  loc_BAD38C: Call clsordencompra.MoveFirst()
  loc_BAD391: Branch loc_BAD844
  loc_BAD394: ILdRf var_94
  loc_BAD397: LitStr "btnAnterior"
  loc_BAD39A: EqStr
  loc_BAD39C: BranchF loc_BAD3B0
  loc_BAD39F: FLdPr Me
  loc_BAD3A2: MemLdRfVar from_stack_1.global_52
  loc_BAD3A5: NewIfNullPr clsordencompra
  loc_BAD3A8: Call clsordencompra.MovePrevious()
  loc_BAD3AD: Branch loc_BAD844
  loc_BAD3B0: ILdRf var_94
  loc_BAD3B3: LitStr "btnSiguiente"
  loc_BAD3B6: EqStr
  loc_BAD3B8: BranchF loc_BAD3CC
  loc_BAD3BB: FLdPr Me
  loc_BAD3BE: MemLdRfVar from_stack_1.global_52
  loc_BAD3C1: NewIfNullPr clsordencompra
  loc_BAD3C4: Call clsordencompra.MoveNext()
  loc_BAD3C9: Branch loc_BAD844
  loc_BAD3CC: ILdRf var_94
  loc_BAD3CF: LitStr "btnUltimo"
  loc_BAD3D2: EqStr
  loc_BAD3D4: BranchF loc_BAD41A
  loc_BAD3D7: FLdPr Me
  loc_BAD3DA: MemLdRfVar from_stack_1.global_52
  loc_BAD3DD: NewIfNullPr clsordencompra
  loc_BAD3E0: Call clsordencompra.MoveLast()
  loc_BAD3E5: LitVarI2 var_C0, 0
  loc_BAD3EA: PopAdLdVar
  loc_BAD3EB: FLdPr Me
  loc_BAD3EE: VCallAd Control_ID_dgdABMS
  loc_BAD3F1: FStAdFunc var_9C
  loc_BAD3F4: FLdPr var_9C
  loc_BAD3F7: LateIdSt
  loc_BAD3FC: FFree1Ad var_9C
  loc_BAD3FF: LitVar_TRUE var_C0
  loc_BAD402: PopAdLdVar
  loc_BAD403: FLdPr Me
  loc_BAD406: VCallAd Control_ID_dgdABMS
  loc_BAD409: FStAdFunc var_9C
  loc_BAD40C: FLdPr var_9C
  loc_BAD40F: LateIdSt
  loc_BAD414: FFree1Ad var_9C
  loc_BAD417: Branch loc_BAD844
  loc_BAD41A: ILdRf var_94
  loc_BAD41D: LitStr "btnFiltrar"
  loc_BAD420: EqStr
  loc_BAD422: BranchF loc_BAD428
  loc_BAD425: Branch loc_BAD844
  loc_BAD428: ILdRf var_94
  loc_BAD42B: LitStr "btnBuscar"
  loc_BAD42E: EqStr
  loc_BAD430: BranchF loc_BAD436
  loc_BAD433: Branch loc_BAD844
  loc_BAD436: ILdRf var_94
  loc_BAD439: LitStr "btnImprimir"
  loc_BAD43C: EqStr
  loc_BAD43E: BranchF loc_BAD7ED
  loc_BAD441: FLdRfVar var_98
  loc_BAD444: FLdPr Me
  loc_BAD447: MemLdRfVar from_stack_1.global_52
  loc_BAD44A: NewIfNullPr clsordencompra
  loc_BAD44D: from_stack_1 = clsordencompra.RecordCount
  loc_BAD452: ILdRf var_98
  loc_BAD455: LitI4 0
  loc_BAD45A: GtI4
  loc_BAD45B: BranchF loc_BAD7BE
  loc_BAD45E: LitI2_Byte &HFF
  loc_BAD460: PopTmpLdAd2 var_1CA
  loc_BAD463: LitI2_Byte 0
  loc_BAD465: PopTmpLdAd2 var_10E
  loc_BAD468: LitStr "¿Desea imprimir la Constancia de Recepción?"
  loc_BAD46B: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BAD470: CI4UI1
  loc_BAD471: LitI4 6
  loc_BAD476: EqI4
  loc_BAD477: BranchF loc_BAD604
  loc_BAD47A: ImpAdLdRf MemVar_C3DC00
  loc_BAD47D: NewIfNullAd
  loc_BAD480: FStAd var_1E8 
  loc_BAD484: FLdRfVar var_B0
  loc_BAD487: FLdRfVar var_108
  loc_BAD48A: LitVarStr var_C0, "CodiOrco"
  loc_BAD48F: PopAdLdVar
  loc_BAD490: FLdRfVar var_D4
  loc_BAD493: FLdRfVar var_9C
  loc_BAD496: FLdPr Me
  loc_BAD499: MemLdRfVar from_stack_1.global_52
  loc_BAD49C: NewIfNullPr clsordencompra
  loc_BAD49F: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BAD4A4: FLdPr var_9C
  loc_BAD4A7:  = Me.Fields
  loc_BAD4AC: FLdPr var_D4
  loc_BAD4AF: from_stack_2 = Me.Item(from_stack_1)
  loc_BAD4B4: FLdPr var_108
  loc_BAD4B7:  = Me.Value
  loc_BAD4BC: FLdRfVar var_B0
  loc_BAD4BF: CStrVarTmp
  loc_BAD4C0: CVarStr var_D0
  loc_BAD4C3: PopAdLdVar
  loc_BAD4C4: FLdPr var_1E8
  loc_BAD4C7: VCallAd Control_ID_CaraItcoLbl
  loc_BAD4CA: FStAdFunc var_10C
  loc_BAD4CD: FLdPr var_10C
  loc_BAD4D0: LateIdSt
  loc_BAD4D5: FFreeAd var_9C = "": var_D4 = "": var_108 = ""
  loc_BAD4E0: FFreeVar var_B0 = ""
  loc_BAD4E7: FLdRfVar var_B0
  loc_BAD4EA: FLdRfVar var_108
  loc_BAD4ED: LitVarStr var_C0, "PeriInfo"
  loc_BAD4F2: PopAdLdVar
  loc_BAD4F3: FLdRfVar var_D4
  loc_BAD4F6: FLdRfVar var_9C
  loc_BAD4F9: FLdPr Me
  loc_BAD4FC: MemLdRfVar from_stack_1.global_52
  loc_BAD4FF: NewIfNullPr clsordencompra
  loc_BAD502: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BAD507: FLdPr var_9C
  loc_BAD50A:  = Me.Fields
  loc_BAD50F: FLdPr var_D4
  loc_BAD512: from_stack_2 = Me.Item(from_stack_1)
  loc_BAD517: FLdPr var_108
  loc_BAD51A:  = Me.Value
  loc_BAD51F: FLdRfVar var_D0
  loc_BAD522: FLdRfVar var_13C
  loc_BAD525: LitVarStr var_104, "CodiOrco"
  loc_BAD52A: PopAdLdVar
  loc_BAD52B: FLdRfVar var_114
  loc_BAD52E: FLdRfVar var_10C
  loc_BAD531: FLdPr Me
  loc_BAD534: MemLdRfVar from_stack_1.global_52
  loc_BAD537: NewIfNullPr clsordencompra
  loc_BAD53A: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BAD53F: FLdPr var_10C
  loc_BAD542:  = Me.Fields
  loc_BAD547: FLdPr var_114
  loc_BAD54A: from_stack_2 = Me.Item(from_stack_1)
  loc_BAD54F: FLdPr var_13C
  loc_BAD552:  = Me.Value
  loc_BAD557: FLdRfVar var_E4
  loc_BAD55A: FLdRfVar var_D0
  loc_BAD55D: CStrVarTmp
  loc_BAD55E: FStStrNoPop var_138
  loc_BAD561: FLdRfVar var_B0
  loc_BAD564: CStrVarTmp
  loc_BAD565: FStStrNoPop var_90
  loc_BAD568: FLdPr Me
  loc_BAD56B: MemLdRfVar from_stack_1.global_60
  loc_BAD56E: NewIfNullPr clsrecepcion
  loc_BAD571: from_stack_3v = clsrecepcion.BuscaUltimaRece(from_stack_1v, from_stack_2v)
  loc_BAD576: FLdRfVar var_E4
  loc_BAD579: CStrVarTmp
  loc_BAD57A: CVarStr var_F4
  loc_BAD57D: PopAdLdVar
  loc_BAD57E: FLdPr var_1E8
  loc_BAD581: VCallAd Control_ID_Label12
  loc_BAD584: FStAdFunc var_178
  loc_BAD587: FLdPr var_178
  loc_BAD58A: LateIdSt
  loc_BAD58F: FFreeStr var_90 = ""
  loc_BAD596: FFreeAd var_9C = "": var_D4 = "": var_10C = "": var_114 = "": var_108 = "": var_13C = ""
  loc_BAD5A7: FFreeVar var_B0 = "": var_D0 = "": var_E4 = ""
  loc_BAD5B2: FLdPr var_1E8
  loc_BAD5B5: VCallAd Control_ID_Label12
  loc_BAD5B8: FStAdFunc var_9C
  loc_BAD5BB: FLdPr var_9C
  loc_BAD5BE: LateIdLdVar var_B0 DispID_22 0
  loc_BAD5C5: CStrVarTmp
  loc_BAD5C6: CVarStr var_D0
  loc_BAD5C9: PopAdLdVar
  loc_BAD5CA: FLdPr var_1E8
  loc_BAD5CD: VCallAd Control_ID_FiltroMsk
  loc_BAD5D0: FStAdFunc var_D4
  loc_BAD5D3: FLdPr var_D4
  loc_BAD5D6: LateIdSt
  loc_BAD5DB: FFreeAd var_9C = ""
  loc_BAD5E2: FFreeVar var_B0 = ""
  loc_BAD5E9: LitVar_Missing var_104
  loc_BAD5EC: PopAdLdVar
  loc_BAD5ED: LitVarI4
  loc_BAD5F5: PopAdLdVar
  loc_BAD5F6: FLdPr var_1E8
  loc_BAD5F9: Me.Show from_stack_1, from_stack_2
  loc_BAD5FE: LitNothing
  loc_BAD600: FStAd var_1E8 
  loc_BAD604: LitI2_Byte &HFF
  loc_BAD606: PopTmpLdAd2 var_1CA
  loc_BAD609: LitI2_Byte 0
  loc_BAD60B: PopTmpLdAd2 var_10E
  loc_BAD60E: LitStr "¿Desea imprimir la Recepción?"
  loc_BAD611: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BAD616: CI4UI1
  loc_BAD617: LitI4 6
  loc_BAD61C: EqI4
  loc_BAD61D: BranchF loc_BAD7BB
  loc_BAD620: ImpAdLdRf MemVar_C3DBEC
  loc_BAD623: NewIfNullAd
  loc_BAD626: FStAd var_1EC 
  loc_BAD62A: FLdRfVar var_B0
  loc_BAD62D: FLdRfVar var_108
  loc_BAD630: LitVarStr var_C0, "CodiOrco"
  loc_BAD635: PopAdLdVar
  loc_BAD636: FLdRfVar var_D4
  loc_BAD639: FLdRfVar var_9C
  loc_BAD63C: FLdPr Me
  loc_BAD63F: MemLdRfVar from_stack_1.global_52
  loc_BAD642: NewIfNullPr clsordencompra
  loc_BAD645: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BAD64A: FLdPr var_9C
  loc_BAD64D:  = Me.Fields
  loc_BAD652: FLdPr var_D4
  loc_BAD655: from_stack_2 = Me.Item(from_stack_1)
  loc_BAD65A: FLdPr var_108
  loc_BAD65D:  = Me.Value
  loc_BAD662: FLdRfVar var_B0
  loc_BAD665: CStrVarTmp
  loc_BAD666: CVarStr var_D0
  loc_BAD669: PopAdLdVar
  loc_BAD66A: FLdPr var_1EC
  loc_BAD66D: VCallAd Control_ID_
  loc_BAD670: FStAdFunc var_10C
  loc_BAD673: FLdPr var_10C
  loc_BAD676: LateIdSt
  loc_BAD67B: FFreeAd var_9C = "": var_D4 = "": var_108 = ""
  loc_BAD686: FFreeVar var_B0 = ""
  loc_BAD68D: LitVarStr var_1E0, vbNullString
  loc_BAD692: FStVarCopyObj var_B0
  loc_BAD695: FLdRfVar var_B0
  loc_BAD698: FLdRfVar var_8C
  loc_BAD69B: CVarRef
  loc_BAD6A0: ILdRf var_8C
  loc_BAD6A3: LitI4 0
  loc_BAD6A8: NeI4
  loc_BAD6A9: CVarBoolI2 var_C0
  loc_BAD6AD: FLdRfVar var_D0
  loc_BAD6B0: ImpAdCallFPR4  = IIf(, , )
  loc_BAD6B5: FLdRfVar var_D0
  loc_BAD6B8: CStrVarVal var_90
  loc_BAD6BC: FLdPr var_1EC
  loc_BAD6BF: VCallAd Control_ID_Label5
  loc_BAD6C2: FStAdFunc var_9C
  loc_BAD6C5: FLdPr var_9C
  loc_BAD6C8: Me.Text = from_stack_1
  loc_BAD6CD: FFree1Str var_90
  loc_BAD6D0: FFree1Ad var_9C
  loc_BAD6D3: FFreeVar var_C0 = "": var_B0 = ""
  loc_BAD6DC: FLdRfVar var_B0
  loc_BAD6DF: FLdRfVar var_108
  loc_BAD6E2: LitVarStr var_C0, "ExpeImpu"
  loc_BAD6E7: PopAdLdVar
  loc_BAD6E8: FLdRfVar var_D4
  loc_BAD6EB: FLdRfVar var_9C
  loc_BAD6EE: FLdPr Me
  loc_BAD6F1: MemLdRfVar from_stack_1.global_52
  loc_BAD6F4: NewIfNullPr clsordencompra
  loc_BAD6F7: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BAD6FC: FLdPr var_9C
  loc_BAD6FF:  = Me.Fields
  loc_BAD704: FLdPr var_D4
  loc_BAD707: from_stack_2 = Me.Item(from_stack_1)
  loc_BAD70C: FLdPr var_108
  loc_BAD70F:  = Me.Value
  loc_BAD714: FLdRfVar var_B0
  loc_BAD717: CStrVarTmp
  loc_BAD718: FStStrNoPop var_90
  loc_BAD71B: FLdPr var_1EC
  loc_BAD71E: VCallAd Control_ID_TotaReceLbl
  loc_BAD721: FStAdFunc var_10C
  loc_BAD724: FLdPr var_10C
  loc_BAD727: Me.Text = from_stack_1
  loc_BAD72C: FFree1Str var_90
  loc_BAD72F: FFreeAd var_9C = "": var_D4 = "": var_108 = ""
  loc_BAD73A: FFree1Var var_B0 = ""
  loc_BAD73D: FLdRfVar var_B0
  loc_BAD740: FLdRfVar var_108
  loc_BAD743: LitVarStr var_C0, "CucuPers"
  loc_BAD748: PopAdLdVar
  loc_BAD749: FLdRfVar var_D4
  loc_BAD74C: FLdRfVar var_9C
  loc_BAD74F: FLdPr Me
  loc_BAD752: MemLdRfVar from_stack_1.global_52
  loc_BAD755: NewIfNullPr clsordencompra
  loc_BAD758: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BAD75D: FLdPr var_9C
  loc_BAD760:  = Me.Fields
  loc_BAD765: FLdPr var_D4
  loc_BAD768: from_stack_2 = Me.Item(from_stack_1)
  loc_BAD76D: FLdPr var_108
  loc_BAD770:  = Me.Value
  loc_BAD775: FLdRfVar var_B0
  loc_BAD778: CStrVarTmp
  loc_BAD779: CVarStr var_D0
  loc_BAD77C: PopAdLdVar
  loc_BAD77D: FLdPr var_1EC
  loc_BAD780: VCallAd Control_ID_
  loc_BAD783: FStAdFunc var_10C
  loc_BAD786: FLdPr var_10C
  loc_BAD789: LateIdSt
  loc_BAD78E: FFreeAd var_9C = "": var_D4 = "": var_108 = ""
  loc_BAD799: FFreeVar var_B0 = ""
  loc_BAD7A0: LitVar_Missing var_104
  loc_BAD7A3: PopAdLdVar
  loc_BAD7A4: LitVarI4
  loc_BAD7AC: PopAdLdVar
  loc_BAD7AD: FLdPr var_1EC
  loc_BAD7B0: Me.Show from_stack_1, from_stack_2
  loc_BAD7B5: LitNothing
  loc_BAD7B7: FStAd var_1EC 
  loc_BAD7BB: Branch loc_BAD7EA
  loc_BAD7BE: ImpAdLdRf MemVar_C3DBEC
  loc_BAD7C1: NewIfNullAd
  loc_BAD7C4: CastAd
  loc_BAD7C7: FStAdFuncNoPop
  loc_BAD7CA: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_BAD7CF: FFree1Ad var_9C
  loc_BAD7D2: LitVar_Missing var_104
  loc_BAD7D5: PopAdLdVar
  loc_BAD7D6: LitVarI4
  loc_BAD7DE: PopAdLdVar
  loc_BAD7DF: ImpAdLdRf MemVar_C3DBEC
  loc_BAD7E2: NewIfNullPr rptListadodeRecepciondeOrdendeCompra
  loc_BAD7E5: rptListadodeRecepciondeOrdendeCompra.Show from_stack_1, from_stack_2
  loc_BAD7EA: Branch loc_BAD844
  loc_BAD7ED: ILdRf var_94
  loc_BAD7F0: LitStr "btnAyuda"
  loc_BAD7F3: EqStr
  loc_BAD7F5: BranchF loc_BAD824
  loc_BAD7F8: LitVar_Missing var_F4
  loc_BAD7FB: LitVar_Missing var_E4
  loc_BAD7FE: LitVar_Missing var_D0
  loc_BAD801: LitI4 0
  loc_BAD806: LitVarStr var_C0, "Opción no disponible en esta versión."
  loc_BAD80B: FStVarCopyObj var_B0
  loc_BAD80E: FLdRfVar var_B0
  loc_BAD811: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BAD816: FFreeVar var_B0 = "": var_D0 = "": var_E4 = ""
  loc_BAD821: Branch loc_BAD844
  loc_BAD824: ILdRf var_94
  loc_BAD827: LitStr "btnSalir"
  loc_BAD82A: EqStr
  loc_BAD82C: BranchF loc_BAD844
  loc_BAD82F: ILdRf Me
  loc_BAD832: FStAdNoPop
  loc_BAD836: ImpAdLdRf MemVar_C44F9C
  loc_BAD839: NewIfNullPr Me
  loc_BAD83C: Me.Global.Unload from_stack_1
  loc_BAD841: FFree1Ad var_9C
  loc_BAD844: ExitProcHresult
  loc_BAD847: PopAdLdVar
End Sub

Private Sub cmdCancelar_Click() '9F3564
  'Data Table: 4BFDF0
  loc_9F3434: LitI2_Byte 0
  loc_9F3436: CUI1I2
  loc_9F3438: FLdPr Me
  loc_9F343B: MemStUI1
  loc_9F343F: ILdRf Me
  loc_9F3442: CastAd
  loc_9F3445: FStAdFunc var_88
  loc_9F3448: FLdRfVar var_88
  loc_9F344B: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9F3450: FFree1Ad var_88
  loc_9F3453: LitI4 0
  loc_9F3458: LitI4 0
  loc_9F345D: FLdRfVar var_8C
  loc_9F3460: Redim
  loc_9F346A: FLdPr Me
  loc_9F346D: VCallAd Control_ID_dgdABMS
  loc_9F3470: CVarAd
  loc_9F3474: ParmAry1St
  loc_9F347A: FLdRfVar var_8C
  loc_9F347D: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9F3482: FLdRfVar var_8C
  loc_9F3485: Erase
  loc_9F3486: FLdPr Me
  loc_9F3489: MemLdRfVar from_stack_1.global_52
  loc_9F348C: NewIfNullAd
  loc_9F348F: FStAd var_A0 
  loc_9F3493: FLdRfVar var_A0
  loc_9F3496: CVarRef
  loc_9F349B: ILdRf Me
  loc_9F349E: CastAd
  loc_9F34A1: FStAdFunc var_88
  loc_9F34A4: FLdRfVar var_88
  loc_9F34A7: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9F34AC: ILdRf var_A0
  loc_9F34AF: CastAd
  loc_9F34B2: FLdPr Me
  loc_9F34B5: MemStAdFunc
  loc_9F34B9: FFreeAd var_88 = ""
  loc_9F34C0: ILdRf Me
  loc_9F34C3: CastAd
  loc_9F34C6: FStAdFunc var_88
  loc_9F34C9: FLdRfVar var_88
  loc_9F34CC: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9F34D1: FFree1Ad var_88
  loc_9F34D4: LitI4 0
  loc_9F34D9: LitI4 0
  loc_9F34DE: FLdRfVar var_8C
  loc_9F34E1: Redim
  loc_9F34EB: FLdPr Me
  loc_9F34EE: VCallAd Control_ID_FlexItemNota
  loc_9F34F1: CVarAd
  loc_9F34F5: ParmAry1St
  loc_9F34FB: FLdRfVar var_8C
  loc_9F34FE: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_9F3503: FLdRfVar var_8C
  loc_9F3506: Erase
  loc_9F3507: LitI4 0
  loc_9F350C: LitI4 0
  loc_9F3511: FLdPr Me
  loc_9F3514: MemLdRfVar from_stack_1.global_52
  loc_9F3517: NewIfNullPr clsordencompra
  loc_9F351A: Call clsordencompra.Encontrar(from_stack_1v, from_stack_2v)
  loc_9F351F: FLdPr Me
  loc_9F3522: VCallAd Control_ID_dgdABMS
  loc_9F3525: FStAdFunc var_A0
  loc_9F3528: LitI4 0
  loc_9F352D: FStStrCopy var_B4
  loc_9F3530: FLdRfVar var_B4
  loc_9F3533: FLdPr Me
  loc_9F3536: MemLdStr global_92
  loc_9F3539: FLdZeroAd var_A0
  loc_9F353C: FStAdFunc var_88
  loc_9F353F: FLdRfVar var_88
  loc_9F3542: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_9F3547: FFree1Str var_B4
  loc_9F354A: FFreeAd var_88 = ""
  loc_9F3551: LitI2_Byte 0
  loc_9F3553: LitVarI2 var_9C, 0
  loc_9F3558: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_9F355D: FFree1Var var_9C = ""
  loc_9F3560: ExitProcHresult
  loc_9F3561: ThisVCallHidden
End Sub

Private Sub ExpeImpuGDETxt_Validate(Cancel As Boolean) '9CC85C
  'Data Table: 4BFDF0
  loc_9CC780: FLdRfVar var_8A
  loc_9CC783: FLdPr Me
  loc_9CC786: VCallAd Control_ID_cmdCancelar
  loc_9CC789: FStAdFunc var_88
  loc_9CC78C: FLdPr var_88
  loc_9CC78F:  = Me.Value
  loc_9CC794: FLdI2 var_8A
  loc_9CC797: NotI4
  loc_9CC798: FLdRfVar var_92
  loc_9CC79B: FLdPr Me
  loc_9CC79E: VCallAd Control_ID_ExpeImpuGDETxt
  loc_9CC7A1: FStAdFunc var_90
  loc_9CC7A4: FLdPr var_90
  loc_9CC7A7:  = Me.Enabled
  loc_9CC7AC: FLdI2 var_92
  loc_9CC7AF: AndI4
  loc_9CC7B0: FLdRfVar var_9C
  loc_9CC7B3: FLdPr Me
  loc_9CC7B6: VCallAd Control_ID_ExpeImpuGDETxt
  loc_9CC7B9: FStAdFunc var_98
  loc_9CC7BC: FLdPr var_98
  loc_9CC7BF:  = Me.Text
  loc_9CC7C4: ILdRf var_9C
  loc_9CC7C7: LitStr vbNullString
  loc_9CC7CA: NeStr
  loc_9CC7CC: AndI4
  loc_9CC7CD: FFree1Str var_9C
  loc_9CC7D0: FFreeAd var_88 = "": var_90 = ""
  loc_9CC7D9: BranchF loc_9CC85A
  loc_9CC7DC: FLdRfVar var_9C
  loc_9CC7DF: FLdPr Me
  loc_9CC7E2: VCallAd Control_ID_ExpeImpuGDETxt
  loc_9CC7E5: FStAdFunc var_88
  loc_9CC7E8: FLdPr var_88
  loc_9CC7EB:  = Me.Text
  loc_9CC7F0: LitI2_Byte 0
  loc_9CC7F2: PopTmpLdAd2 var_9E
  loc_9CC7F5: LitI2_Byte 0
  loc_9CC7F7: PopTmpLdAd2 var_92
  loc_9CC7FA: LitI2_Byte 0
  loc_9CC7FC: PopTmpLdAd2 var_8A
  loc_9CC7FF: ILdRf var_9C
  loc_9CC802: LitStr "Expediente GDE"
  loc_9CC805: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9CC80A: FStStrNoPop var_A4
  loc_9CC80D: FLdPr Me
  loc_9CC810: MemStStrCopy
  loc_9CC814: FFreeStr var_9C = ""
  loc_9CC81B: FFree1Ad var_88
  loc_9CC81E: FLdPr Me
  loc_9CC821: VCallAd Control_ID_ExpeImpuGDETxt
  loc_9CC824: FStAdFunc var_A8
  loc_9CC827: LitNothing
  loc_9CC829: CastAd
  loc_9CC82C: FStAdFunc var_98
  loc_9CC82F: FLdRfVar var_98
  loc_9CC832: FLdZeroAd var_A8
  loc_9CC835: FStAdFuncNoPop
  loc_9CC838: CastAd
  loc_9CC83B: FStAdFunc var_90
  loc_9CC83E: FLdRfVar var_90
  loc_9CC841: FLdPr Me
  loc_9CC844: MemLdRfVar from_stack_1.global_80
  loc_9CC847: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CC84C: IStI2 Cancel
  loc_9CC84F: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9CC85A: ExitProcHresult
End Sub

Private Sub FechReceMsk_UnknownEvent_0 '94CF80
  'Data Table: 4BFDF0
  loc_94CF6C: FLdPr Me
  loc_94CF6F: VCallAd Control_ID_FechReceMsk
  loc_94CF72: CVarAd
  loc_94CF76: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94CF7B: FFree1Var var_94 = ""
  loc_94CF7E: ExitProcHresult
End Sub

Private Sub FechReceMsk_UnknownEvent_8 '9DEA50
  'Data Table: 4BFDF0
  loc_9DE958: FLdRfVar var_8A
  loc_9DE95B: FLdPr Me
  loc_9DE95E: VCallAd Control_ID_cmdCancelar
  loc_9DE961: FStAdFunc var_88
  loc_9DE964: FLdPr var_88
  loc_9DE967:  = Me.Value
  loc_9DE96C: FLdI2 var_8A
  loc_9DE96F: NotI4
  loc_9DE970: FLdPr Me
  loc_9DE973: VCallAd Control_ID_FechReceMsk
  loc_9DE976: FStAdFunc var_90
  loc_9DE979: FLdPr var_90
  loc_9DE97C: LateIdLdVar var_A0 DispID_13 -32767
  loc_9DE983: CBoolVar
  loc_9DE985: AndI4
  loc_9DE986: FFreeAd var_88 = ""
  loc_9DE98D: FFree1Var var_A0 = ""
  loc_9DE990: BranchF loc_9DEA4C
  loc_9DE993: FLdPr Me
  loc_9DE996: VCallAd Control_ID_FechReceMsk
  loc_9DE999: FStAdFunc var_88
  loc_9DE99C: FLdPr var_88
  loc_9DE99F: LateIdLdVar var_A0 DispID_15 0
  loc_9DE9A6: PopAd
  loc_9DE9A8: FLdPr Me
  loc_9DE9AB: VCallAd Control_ID_FechReceMsk
  loc_9DE9AE: FStAdFunc var_90
  loc_9DE9B1: FLdPr var_90
  loc_9DE9B4: LateIdLdVar var_B0 DispID_11 -32767
  loc_9DE9BB: PopAd
  loc_9DE9BD: FLdPr Me
  loc_9DE9C0: VCallAd Control_ID_FechReceMsk
  loc_9DE9C3: FStAdFunc var_C4
  loc_9DE9C6: LitI2_Byte &HFF
  loc_9DE9C8: PopTmpLdAd2 var_8A
  loc_9DE9CB: FLdZeroAd var_C4
  loc_9DE9CE: FStAdFunc var_BC
  loc_9DE9D1: FLdRfVar var_BC
  loc_9DE9D4: FLdRfVar var_B0
  loc_9DE9D7: CStrVarTmp
  loc_9DE9D8: FStStrNoPop var_B8
  loc_9DE9DB: LitI2_Byte &HFF
  loc_9DE9DD: LitI2_Byte 0
  loc_9DE9DF: FLdRfVar var_A0
  loc_9DE9E2: CStrVarTmp
  loc_9DE9E3: FStStrNoPop var_B4
  loc_9DE9E6: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9DE9EB: FStStrNoPop var_C0
  loc_9DE9EE: FLdPr Me
  loc_9DE9F1: MemStStrCopy
  loc_9DE9F5: FFreeStr var_B4 = "": var_B8 = ""
  loc_9DE9FE: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DEA09: FFreeVar var_A0 = ""
  loc_9DEA10: FLdPr Me
  loc_9DEA13: VCallAd Control_ID_FechReceMsk
  loc_9DEA16: FStAdFunc var_C4
  loc_9DEA19: LitNothing
  loc_9DEA1B: CastAd
  loc_9DEA1E: FStAdFunc var_BC
  loc_9DEA21: FLdRfVar var_BC
  loc_9DEA24: FLdZeroAd var_C4
  loc_9DEA27: FStAdFuncNoPop
  loc_9DEA2A: CastAd
  loc_9DEA2D: FStAdFunc var_90
  loc_9DEA30: FLdRfVar var_90
  loc_9DEA33: FLdPr Me
  loc_9DEA36: MemLdRfVar from_stack_1.global_80
  loc_9DEA39: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DEA3E: IStI2 Cancel
  loc_9DEA41: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DEA4C: ExitProcHresult
  loc_9DEA4D: CRec2Uni FechReceMsk_UnknownEvent_81FF
End Sub

Private Sub FechReceMsk_KeyPress(KeyAscii As Integer) '98AC40
  'Data Table: 4BFDF0
  loc_98ABFC: ILdI2 KeyAscii
  loc_98ABFF: CI4UI1
  loc_98AC00: LitI4 &H20
  loc_98AC05: EqI4
  loc_98AC06: BranchF loc_98AC3C
  loc_98AC09: LitVar_Missing var_A4
  loc_98AC0C: PopAdLdVar
  loc_98AC0D: LitVarI4
  loc_98AC15: PopAdLdVar
  loc_98AC16: ImpAdLdRf MemVar_C3D9A8
  loc_98AC19: NewIfNullPr frmCalendario
  loc_98AC1C: frmCalendario.Show from_stack_1, from_stack_2
  loc_98AC21: ImpAdLdRf MemVar_C3D038
  loc_98AC24: CDargRef
  loc_98AC28: FLdPr Me
  loc_98AC2B: VCallAd Control_ID_FechReceMsk
  loc_98AC2E: FStAdFunc var_A8
  loc_98AC31: FLdPr var_A8
  loc_98AC34: LateIdSt
  loc_98AC39: FFree1Ad var_A8
  loc_98AC3C: ExitProcHresult
  loc_98AC3D: ImpAdStCy MemVar_519398
End Sub

Private Sub FefaReceMsk_UnknownEvent_0 '94D0A0
  'Data Table: 4BFDF0
  loc_94D08C: FLdPr Me
  loc_94D08F: VCallAd Control_ID_FefaReceMsk
  loc_94D092: CVarAd
  loc_94D096: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D09B: FFree1Var var_94 = ""
  loc_94D09E: ExitProcHresult
End Sub

Private Sub FefaReceMsk_UnknownEvent_8 '9F0C10
  'Data Table: 4BFDF0
  loc_9F0AF4: FLdRfVar var_8A
  loc_9F0AF7: FLdPr Me
  loc_9F0AFA: VCallAd Control_ID_cmdCancelar
  loc_9F0AFD: FStAdFunc var_88
  loc_9F0B00: FLdPr var_88
  loc_9F0B03:  = Me.Value
  loc_9F0B08: FLdI2 var_8A
  loc_9F0B0B: NotI4
  loc_9F0B0C: FLdPr Me
  loc_9F0B0F: VCallAd Control_ID_FefaReceMsk
  loc_9F0B12: FStAdFunc var_90
  loc_9F0B15: FLdPr var_90
  loc_9F0B18: LateIdLdVar var_A0 DispID_13 -32767
  loc_9F0B1F: CBoolVar
  loc_9F0B21: AndI4
  loc_9F0B22: FFreeAd var_88 = ""
  loc_9F0B29: FFree1Var var_A0 = ""
  loc_9F0B2C: BranchF loc_9F0C0F
  loc_9F0B2F: FLdPr Me
  loc_9F0B32: VCallAd Control_ID_FefaReceMsk
  loc_9F0B35: FStAdFunc var_88
  loc_9F0B38: FLdPr var_88
  loc_9F0B3B: LateIdLdVar var_A0 DispID_15 0
  loc_9F0B42: PopAd
  loc_9F0B44: FLdRfVar var_CC
  loc_9F0B47: FLdRfVar var_B8
  loc_9F0B4A: LitVarStr var_B4, "FechOrco"
  loc_9F0B4F: PopAdLdVar
  loc_9F0B50: FLdRfVar var_A4
  loc_9F0B53: FLdRfVar var_90
  loc_9F0B56: FLdPr Me
  loc_9F0B59: MemLdRfVar from_stack_1.global_52
  loc_9F0B5C: NewIfNullPr clsordencompra
  loc_9F0B5F: from_stack_1v = clsordencompra.RsFrmGet()
  loc_9F0B64: FLdPr var_90
  loc_9F0B67:  = Me.Fields
  loc_9F0B6C: FLdPr var_A4
  loc_9F0B6F: from_stack_2 = Me.Item(from_stack_1)
  loc_9F0B74: FLdPr var_B8
  loc_9F0B77:  = Me.Value
  loc_9F0B7C: FLdPr Me
  loc_9F0B7F: VCallAd Control_ID_FefaReceMsk
  loc_9F0B82: FStAdFunc var_DC
  loc_9F0B85: LitI2_Byte &HFF
  loc_9F0B87: PopTmpLdAd2 var_8A
  loc_9F0B8A: FLdZeroAd var_DC
  loc_9F0B8D: FStAdFunc var_D4
  loc_9F0B90: FLdRfVar var_D4
  loc_9F0B93: FLdRfVar var_CC
  loc_9F0B96: CStrVarTmp
  loc_9F0B97: FStStrNoPop var_D0
  loc_9F0B9A: LitI2_Byte 0
  loc_9F0B9C: LitI2_Byte 0
  loc_9F0B9E: FLdRfVar var_A0
  loc_9F0BA1: CStrVarTmp
  loc_9F0BA2: FStStrNoPop var_BC
  loc_9F0BA5: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9F0BAA: FStStrNoPop var_D8
  loc_9F0BAD: FLdPr Me
  loc_9F0BB0: MemStStrCopy
  loc_9F0BB4: FFreeStr var_BC = "": var_D0 = ""
  loc_9F0BBD: FFreeAd var_88 = "": var_90 = "": var_A4 = "": var_B8 = "": var_D4 = ""
  loc_9F0BCC: FFreeVar var_A0 = ""
  loc_9F0BD3: FLdPr Me
  loc_9F0BD6: VCallAd Control_ID_FefaReceMsk
  loc_9F0BD9: FStAdFunc var_B8
  loc_9F0BDC: LitNothing
  loc_9F0BDE: CastAd
  loc_9F0BE1: FStAdFunc var_A4
  loc_9F0BE4: FLdRfVar var_A4
  loc_9F0BE7: FLdZeroAd var_B8
  loc_9F0BEA: FStAdFuncNoPop
  loc_9F0BED: CastAd
  loc_9F0BF0: FStAdFunc var_90
  loc_9F0BF3: FLdRfVar var_90
  loc_9F0BF6: FLdPr Me
  loc_9F0BF9: MemLdRfVar from_stack_1.global_80
  loc_9F0BFC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9F0C01: IStI2 KeyAscii
  loc_9F0C04: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9F0C0F: ExitProcHresult
End Sub

Private Sub FefaReceMsk_KeyPress(KeyAscii As Integer) '98AE20
  'Data Table: 4BFDF0
  loc_98ADDC: ILdI2 KeyAscii
  loc_98ADDF: CI4UI1
  loc_98ADE0: LitI4 &H20
  loc_98ADE5: EqI4
  loc_98ADE6: BranchF loc_98AE1C
  loc_98ADE9: LitVar_Missing var_A4
  loc_98ADEC: PopAdLdVar
  loc_98ADED: LitVarI4
  loc_98ADF5: PopAdLdVar
  loc_98ADF6: ImpAdLdRf MemVar_C3D9A8
  loc_98ADF9: NewIfNullPr frmCalendario
  loc_98ADFC: frmCalendario.Show from_stack_1, from_stack_2
  loc_98AE01: ImpAdLdRf MemVar_C3D038
  loc_98AE04: CDargRef
  loc_98AE08: FLdPr Me
  loc_98AE0B: VCallAd Control_ID_FefaReceMsk
  loc_98AE0E: FStAdFunc var_A8
  loc_98AE11: FLdPr var_A8
  loc_98AE14: LateIdSt
  loc_98AE19: FFree1Ad var_A8
  loc_98AE1C: ExitProcHresult
  loc_98AE1D: CI4UI1
  loc_98AE1E: FLdPr arg_7808
End Sub

Private Function Proc_138_43_A35EB8() 'A35EB8
  'Data Table: 4BFDF0
  loc_A35C94: FLdPr Me
  loc_A35C97: VCallAd Control_ID_FlexItemNota
  loc_A35C9A: FStAdFunc var_88
  loc_A35C9D: FLdPr var_88
  loc_A35CA0: LateIdCall
  loc_A35CA8: LitVarI4
  loc_A35CB0: PopAdLdVar
  loc_A35CB1: FLdPr var_88
  loc_A35CB4: LateIdSt
  loc_A35CB9: LitVarI4
  loc_A35CC1: PopAdLdVar
  loc_A35CC2: LitVarI4
  loc_A35CCA: PopAdLdVar
  loc_A35CCB: LitVarStr var_D8, "Item"
  loc_A35CD0: PopAdLdVar
  loc_A35CD1: FLdPr var_88
  loc_A35CD4: LateIdCallSt
  loc_A35CDC: LitVarI4
  loc_A35CE4: PopAdLdVar
  loc_A35CE5: LitVarI4
  loc_A35CED: PopAdLdVar
  loc_A35CEE: LitVarStr var_D8, "Alt."
  loc_A35CF3: PopAdLdVar
  loc_A35CF4: FLdPr var_88
  loc_A35CF7: LateIdCallSt
  loc_A35CFF: LitVarI4
  loc_A35D07: PopAdLdVar
  loc_A35D08: LitVarI4
  loc_A35D10: PopAdLdVar
  loc_A35D11: LitVarStr var_D8, "Código"
  loc_A35D16: PopAdLdVar
  loc_A35D17: FLdPr var_88
  loc_A35D1A: LateIdCallSt
  loc_A35D22: LitVarI4
  loc_A35D2A: PopAdLdVar
  loc_A35D2B: LitVarI4
  loc_A35D33: PopAdLdVar
  loc_A35D34: LitVarStr var_D8, "Detalle del Insumo"
  loc_A35D39: PopAdLdVar
  loc_A35D3A: FLdPr var_88
  loc_A35D3D: LateIdCallSt
  loc_A35D45: LitVarI4
  loc_A35D4D: PopAdLdVar
  loc_A35D4E: LitVarI4
  loc_A35D56: PopAdLdVar
  loc_A35D57: LitVarStr var_D8, "Detalle AMPLIADO del Insumo"
  loc_A35D5C: PopAdLdVar
  loc_A35D5D: FLdPr var_88
  loc_A35D60: LateIdCallSt
  loc_A35D68: LitVarI4
  loc_A35D70: PopAdLdVar
  loc_A35D71: LitVarI4
  loc_A35D79: PopAdLdVar
  loc_A35D7A: LitVarStr var_D8, "Cantidad"
  loc_A35D7F: PopAdLdVar
  loc_A35D80: FLdPr var_88
  loc_A35D83: LateIdCallSt
  loc_A35D8B: LitVarI4
  loc_A35D93: PopAdLdVar
  loc_A35D94: LitVarI4
  loc_A35D9C: PopAdLdVar
  loc_A35D9D: LitVarStr var_D8, "Pr. Unitario"
  loc_A35DA2: PopAdLdVar
  loc_A35DA3: FLdPr var_88
  loc_A35DA6: LateIdCallSt
  loc_A35DAE: LitVarI4
  loc_A35DB6: PopAdLdVar
  loc_A35DB7: LitVarI4
  loc_A35DBF: PopAdLdVar
  loc_A35DC0: LitVarStr var_D8, "Total"
  loc_A35DC5: PopAdLdVar
  loc_A35DC6: FLdPr var_88
  loc_A35DC9: LateIdCallSt
  loc_A35DD1: LitVarI4
  loc_A35DD9: PopAdLdVar
  loc_A35DDA: LitVarI4
  loc_A35DE2: PopAdLdVar
  loc_A35DE3: LitVarStr var_D8, "Partida"
  loc_A35DE8: PopAdLdVar
  loc_A35DE9: FLdPr var_88
  loc_A35DEC: LateIdCallSt
  loc_A35DF4: LitVarI4
  loc_A35DFC: PopAdLdVar
  loc_A35DFD: LitVarI4
  loc_A35E05: PopAdLdVar
  loc_A35E06: LitVarStr var_D8, "Organig."
  loc_A35E0B: PopAdLdVar
  loc_A35E0C: FLdPr var_88
  loc_A35E0F: LateIdCallSt
  loc_A35E17: LitVarI4
  loc_A35E1F: PopAdLdVar
  loc_A35E20: LitVarI4
  loc_A35E28: PopAdLdVar
  loc_A35E29: LitVarStr var_D8, "Un.Gasto"
  loc_A35E2E: PopAdLdVar
  loc_A35E2F: FLdPr var_88
  loc_A35E32: LateIdCallSt
  loc_A35E3A: LitVarI4
  loc_A35E42: PopAdLdVar
  loc_A35E43: LitVarI4
  loc_A35E4B: PopAdLdVar
  loc_A35E4C: LitVarStr var_D8, "Fin. y Fun."
  loc_A35E51: PopAdLdVar
  loc_A35E52: FLdPr var_88
  loc_A35E55: LateIdCallSt
  loc_A35E5D: LitVarI4
  loc_A35E65: PopAdLdVar
  loc_A35E66: LitVarI4
  loc_A35E6E: PopAdLdVar
  loc_A35E6F: LitVarStr var_D8, "Carac."
  loc_A35E74: PopAdLdVar
  loc_A35E75: FLdPr var_88
  loc_A35E78: LateIdCallSt
  loc_A35E80: LitVarI4
  loc_A35E88: PopAdLdVar
  loc_A35E89: LitVarI4
  loc_A35E91: PopAdLdVar
  loc_A35E92: LitVarStr var_D8, "Ajuste"
  loc_A35E97: PopAdLdVar
  loc_A35E98: FLdPr var_88
  loc_A35E9B: LateIdCallSt
  loc_A35EA3: FLdPr var_88
  loc_A35EA6: LateIdCall
  loc_A35EAE: LitNothing
  loc_A35EB0: FStAd var_88 
  loc_A35EB4: ExitProcHresult
End Function

Private Function Proc_138_44_9EADC0() '9EADC0
  'Data Table: 4BFDF0
  loc_9EAC88: FLdPr Me
  loc_9EAC8B: VCallAd Control_ID_FlexItemNota
  loc_9EAC8E: FStAdFunc var_88
  loc_9EAC91: FLdPr var_88
  loc_9EAC94: LateIdLdVar var_98 DispID_38 0
  loc_9EAC9B: CI4Var
  loc_9EAC9D: LitI4 &HFFFF80
  loc_9EACA2: EqI4
  loc_9EACA3: FFree1Ad var_88
  loc_9EACA6: FFree1Var var_98 = ""
  loc_9EACA9: BranchF loc_9EAD27
  loc_9EACAC: LitI2_Byte 0
  loc_9EACAE: FLdPr Me
  loc_9EACB1: MemLdRfVar from_stack_1.global_74
  loc_9EACB4: FLdPr Me
  loc_9EACB7: VCallAd Control_ID_FlexItemNota
  loc_9EACBA: FStAdFunc var_88
  loc_9EACBD: FLdPr var_88
  loc_9EACC0: LateIdLdVar var_98 DispID_5 0
  loc_9EACC7: CI4Var
  loc_9EACC9: LitI4 1
  loc_9EACCE: SubI4
  loc_9EACCF: CI2I4
  loc_9EACD0: FFree1Ad var_88
  loc_9EACD3: FFree1Var var_98 = ""
  loc_9EACD6: ForI2 var_9C
  loc_9EACDC: FLdPr Me
  loc_9EACDF: MemLdI2 global_74
  loc_9EACE2: CI4UI1
  loc_9EACE3: CVarI4
  loc_9EACE7: PopAdLdVar
  loc_9EACE8: FLdPr Me
  loc_9EACEB: VCallAd Control_ID_FlexItemNota
  loc_9EACEE: FStAdFunc var_88
  loc_9EACF1: FLdPr var_88
  loc_9EACF4: LateIdSt
  loc_9EACF9: FFree1Ad var_88
  loc_9EACFC: LitVarI4
  loc_9EAD04: PopAdLdVar
  loc_9EAD05: FLdPr Me
  loc_9EAD08: VCallAd Control_ID_FlexItemNota
  loc_9EAD0B: FStAdFunc var_88
  loc_9EAD0E: FLdPr var_88
  loc_9EAD11: LateIdSt
  loc_9EAD16: FFree1Ad var_88
  loc_9EAD19: FLdPr Me
  loc_9EAD1C: MemLdRfVar from_stack_1.global_74
  loc_9EAD1F: NextI2 var_9C, loc_9EACDC
  loc_9EAD24: Branch loc_9EAD9F
  loc_9EAD27: LitI2_Byte 0
  loc_9EAD29: FLdPr Me
  loc_9EAD2C: MemLdRfVar from_stack_1.global_74
  loc_9EAD2F: FLdPr Me
  loc_9EAD32: VCallAd Control_ID_FlexItemNota
  loc_9EAD35: FStAdFunc var_88
  loc_9EAD38: FLdPr var_88
  loc_9EAD3B: LateIdLdVar var_98 DispID_5 0
  loc_9EAD42: CI4Var
  loc_9EAD44: LitI4 1
  loc_9EAD49: SubI4
  loc_9EAD4A: CI2I4
  loc_9EAD4B: FFree1Ad var_88
  loc_9EAD4E: FFree1Var var_98 = ""
  loc_9EAD51: ForI2 var_C0
  loc_9EAD57: FLdPr Me
  loc_9EAD5A: MemLdI2 global_74
  loc_9EAD5D: CI4UI1
  loc_9EAD5E: CVarI4
  loc_9EAD62: PopAdLdVar
  loc_9EAD63: FLdPr Me
  loc_9EAD66: VCallAd Control_ID_FlexItemNota
  loc_9EAD69: FStAdFunc var_88
  loc_9EAD6C: FLdPr var_88
  loc_9EAD6F: LateIdSt
  loc_9EAD74: FFree1Ad var_88
  loc_9EAD77: LitVarI4
  loc_9EAD7F: PopAdLdVar
  loc_9EAD80: FLdPr Me
  loc_9EAD83: VCallAd Control_ID_FlexItemNota
  loc_9EAD86: FStAdFunc var_88
  loc_9EAD89: FLdPr var_88
  loc_9EAD8C: LateIdSt
  loc_9EAD91: FFree1Ad var_88
  loc_9EAD94: FLdPr Me
  loc_9EAD97: MemLdRfVar from_stack_1.global_74
  loc_9EAD9A: NextI2 var_C0, loc_9EAD57
  loc_9EAD9F: LitVarI4
  loc_9EADA7: PopAdLdVar
  loc_9EADA8: FLdPr Me
  loc_9EADAB: VCallAd Control_ID_FlexItemNota
  loc_9EADAE: FStAdFunc var_88
  loc_9EADB1: FLdPr var_88
  loc_9EADB4: LateIdSt
  loc_9EADB9: FFree1Ad var_88
  loc_9EADBC: ExitProcHresult
  loc_9EADBD: MemLdI2 global_108
End Function

Private Function Proc_138_45_A397C8() 'A397C8
  'Data Table: 4BFDF0
  loc_A395AC: LitI2_Byte 0
  loc_A395AE: CR8I2
  loc_A395AF: FLdPr Me
  loc_A395B2: MemStFPR8 global_84
  loc_A395B5: LitI2_Byte 1
  loc_A395B7: FLdPr Me
  loc_A395BA: MemLdRfVar from_stack_1.global_72
  loc_A395BD: FLdPr Me
  loc_A395C0: VCallAd Control_ID_FlexItemNota
  loc_A395C3: FStAdFunc var_88
  loc_A395C6: FLdPr var_88
  loc_A395C9: LateIdLdVar var_98 DispID_4 0
  loc_A395D0: CI4Var
  loc_A395D2: LitI4 1
  loc_A395D7: SubI4
  loc_A395D8: CI2I4
  loc_A395D9: FFree1Ad var_88
  loc_A395DC: FFree1Var var_98 = ""
  loc_A395DF: ForI2 var_9C
  loc_A395E5: FLdPr Me
  loc_A395E8: MemLdI2 global_72
  loc_A395EB: CI4UI1
  loc_A395EC: CVarI4
  loc_A395F0: PopAdLdVar
  loc_A395F1: LitVarI4
  loc_A395F9: PopAdLdVar
  loc_A395FA: FLdPr Me
  loc_A395FD: VCallAd Control_ID_FlexItemNota
  loc_A39600: FStAdFunc var_88
  loc_A39603: FLdPr var_88
  loc_A39606: LateIdCallLdVar
  loc_A39610: CStrVarTmp
  loc_A39611: CVarStr var_EC
  loc_A39614: ImpAdCallI2 IsNumeric()
  loc_A39619: FFree1Ad var_88
  loc_A3961C: FFreeVar var_98 = ""
  loc_A39623: BranchF loc_A39779
  loc_A39626: FLdPr Me
  loc_A39629: MemLdI2 global_72
  loc_A3962C: CI4UI1
  loc_A3962D: CVarI4
  loc_A39631: PopAdLdVar
  loc_A39632: LitVarI4
  loc_A3963A: PopAdLdVar
  loc_A3963B: FLdPr Me
  loc_A3963E: VCallAd Control_ID_FlexItemNota
  loc_A39641: FStAdFunc var_88
  loc_A39644: FLdPr var_88
  loc_A39647: LateIdCallLdVar
  loc_A39651: CStrVarTmp
  loc_A39652: CVarStr var_EC
  loc_A39655: ImpAdCallI2 IsNumeric()
  loc_A3965A: FFree1Ad var_88
  loc_A3965D: FFreeVar var_98 = ""
  loc_A39664: BranchF loc_A39712
  loc_A39667: FLdPr Me
  loc_A3966A: MemLdI2 global_72
  loc_A3966D: CI4UI1
  loc_A3966E: CVarI4
  loc_A39672: PopAdLdVar
  loc_A39673: LitVarI4
  loc_A3967B: PopAdLdVar
  loc_A3967C: FLdPr Me
  loc_A3967F: VCallAd Control_ID_FlexItemNota
  loc_A39682: FStAdFunc var_88
  loc_A39685: FLdPr var_88
  loc_A39688: LateIdCallLdVar
  loc_A39692: PopAd
  loc_A39694: FLdPr Me
  loc_A39697: MemLdI2 global_72
  loc_A3969A: CI4UI1
  loc_A3969B: CVarI4
  loc_A3969F: PopAdLdVar
  loc_A396A0: LitVarI4
  loc_A396A8: PopAdLdVar
  loc_A396A9: FLdPr Me
  loc_A396AC: VCallAd Control_ID_FlexItemNota
  loc_A396AF: FStAdFunc var_134
  loc_A396B2: FLdPr var_134
  loc_A396B5: LateIdCallLdVar
  loc_A396BF: PopAd
  loc_A396C1: LitI4 3
  loc_A396C6: FLdPr Me
  loc_A396C9: MemLdFPR8 global_84
  loc_A396CC: FLdRfVar var_98
  loc_A396CF: CStrVarTmp
  loc_A396D0: FStStrNoPop var_F0
  loc_A396D3: CR8Str
  loc_A396D5: AddR8
  loc_A396D6: FLdRfVar var_EC
  loc_A396D9: CStrVarTmp
  loc_A396DA: FStStrNoPop var_138
  loc_A396DD: CR8Str
  loc_A396DF: AddR8
  loc_A396E0: CVarR8
  loc_A396E4: FLdRfVar var_168
  loc_A396E7: ImpAdCallFPR4  = Round(, )
  loc_A396EC: FLdRfVar var_168
  loc_A396EF: CR4Var
  loc_A396F0: FLdPr Me
  loc_A396F3: MemStFPR8 global_84
  loc_A396F6: FFreeStr var_F0 = ""
  loc_A396FD: FFreeAd var_88 = ""
  loc_A39704: FFreeVar var_98 = "": var_EC = "": var_158 = ""
  loc_A3970F: Branch loc_A39779
  loc_A39712: FLdPr Me
  loc_A39715: MemLdI2 global_72
  loc_A39718: CI4UI1
  loc_A39719: CVarI4
  loc_A3971D: PopAdLdVar
  loc_A3971E: LitVarI4
  loc_A39726: PopAdLdVar
  loc_A39727: FLdPr Me
  loc_A3972A: VCallAd Control_ID_FlexItemNota
  loc_A3972D: FStAdFunc var_88
  loc_A39730: FLdPr var_88
  loc_A39733: LateIdCallLdVar
  loc_A3973D: PopAd
  loc_A3973F: LitI4 3
  loc_A39744: FLdPr Me
  loc_A39747: MemLdFPR8 global_84
  loc_A3974A: FLdRfVar var_98
  loc_A3974D: CStrVarTmp
  loc_A3974E: FStStrNoPop var_F0
  loc_A39751: CR8Str
  loc_A39753: AddR8
  loc_A39754: CVarR8
  loc_A39758: FLdRfVar var_158
  loc_A3975B: ImpAdCallFPR4  = Round(, )
  loc_A39760: FLdRfVar var_158
  loc_A39763: CR4Var
  loc_A39764: FLdPr Me
  loc_A39767: MemStFPR8 global_84
  loc_A3976A: FFree1Str var_F0
  loc_A3976D: FFree1Ad var_88
  loc_A39770: FFreeVar var_98 = "": var_EC = ""
  loc_A39779: FLdPr Me
  loc_A3977C: MemLdRfVar from_stack_1.global_72
  loc_A3977F: NextI2 var_9C, loc_A395E5
  loc_A39784: LitI4 1
  loc_A39789: LitI4 1
  loc_A3978E: LitVarStr var_BC, "0.00"
  loc_A39793: FStVarCopyObj var_98
  loc_A39796: FLdRfVar var_98
  loc_A39799: FLdPr Me
  loc_A3979C: MemLdRfVar from_stack_1.global_84
  loc_A3979F: CVarRef
  loc_A397A4: ImpAdCallI2 Format$(, )
  loc_A397A9: FStStrNoPop var_F0
  loc_A397AC: FLdPr Me
  loc_A397AF: VCallAd Control_ID_TotaReceLbl
  loc_A397B2: FStAdFunc var_88
  loc_A397B5: FLdPr var_88
  loc_A397B8: Me.Caption = from_stack_1
  loc_A397BD: FFree1Str var_F0
  loc_A397C0: FFree1Ad var_88
  loc_A397C3: FFree1Var var_98 = ""
  loc_A397C6: ExitProcHresult
  loc_A397C7: CI4Str
End Function
