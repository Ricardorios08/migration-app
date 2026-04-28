VERSION 5.00
Begin VB.Form dlgCreaCotizacion
  Caption = "Crea Cotizacion desde la Nota de Pedido"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgCreaCotizacion.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 10320
  ClientHeight = 3825
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame1
    Left = 240
    Top = 0
    Width = 9615
    Height = 735
    TabIndex = 0
    Begin VB.Label CodiNopeLbl
      Left = 2520
      Top = 240
      Width = 1215
      Height = 375
      TabIndex = 2
    End
    Begin VB.Label Label5
      Caption = "Nota de Pedido:"
      Left = 480
      Top = 240
      Width = 1695
      Height = 375
      TabIndex = 1
    End
  End
  Begin VB.TextBox CucuPersTxt
    Left = 2640
    Top = 1080
    Width = 1815
    Height = 360
    TabIndex = 4
    MaxLength = 70
    DataField = "CucuPers"
  End
  Begin VB.TextBox ObseCotiTxt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 2520
    Width = 7215
    Height = 360
    TabIndex = 11
    Tag = "4"
    MaxLength = 200
  End
  Begin VB.TextBox PlenCotiTxt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 1560
    Width = 2175
    Height = 360
    TabIndex = 7
    Tag = "2"
    MaxLength = 20
  End
  Begin VB.TextBox MaofCotiTxt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 2040
    Width = 2175
    Height = 360
    TabIndex = 9
    Tag = "3"
    MaxLength = 20
  End
  Begin VB.CommandButton cmdCancelar
    Caption = "Cancelar"
    Left = 5160
    Top = 3120
    Width = 1335
    Height = 495
    TabIndex = 13
    Tag = "6"
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton OKButton
    Caption = "Aceptar"
    Left = 3600
    Top = 3120
    Width = 1335
    Height = 495
    TabIndex = 12
    Tag = "5"
  End
  Begin VB.Label Label2
    Caption = "Proveedor:"
    Left = 1455
    Top = 1080
    Width = 1140
    Height = 300
    TabIndex = 3
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
  Begin VB.Label Label3
    Caption = "Observaciones:"
    Left = 960
    Top = 2520
    Width = 1635
    Height = 300
    TabIndex = 10
    AutoSize = -1  'True
  End
  Begin VB.Label DetaProvLbl
    Left = 4560
    Top = 1080
    Width = 5295
    Height = 360
    TabIndex = 5
    BorderStyle = 1 'Fixed Single
  End
  Begin VB.Label Label1
    Caption = "Plazo de Entrega:"
    Left = 705
    Top = 1560
    Width = 1890
    Height = 300
    TabIndex = 6
    AutoSize = -1  'True
  End
  Begin VB.Label Label4
    Caption = "Mantenim. de la Oferta:"
    Left = 120
    Top = 2040
    Width = 2475
    Height = 300
    TabIndex = 8
    AutoSize = -1  'True
  End
End

Attribute VB_Name = "dlgCreaCotizacion"


Private Sub ObseCotiTxt_GotFocus() '953868
  'Data Table: 42FEB0
  loc_953854: FLdPr Me
  loc_953857: VCallAd Control_ID_ObseCotiTxt
  loc_95385A: CVarAd
  loc_95385E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_953863: FFree1Var var_94 = ""
  loc_953866: ExitProcHresult
End Sub

Private Sub ObseCotiTxt_Validate(Cancel As Boolean) '9CE728
  'Data Table: 42FEB0
  loc_9CE64C: FLdRfVar var_8A
  loc_9CE64F: FLdPr Me
  loc_9CE652: VCallAd Control_ID_cmdCancelar
  loc_9CE655: FStAdFunc var_88
  loc_9CE658: FLdPr var_88
  loc_9CE65B:  = Me.Value
  loc_9CE660: FLdI2 var_8A
  loc_9CE663: NotI4
  loc_9CE664: FLdRfVar var_92
  loc_9CE667: FLdPr Me
  loc_9CE66A: VCallAd Control_ID_ObseCotiTxt
  loc_9CE66D: FStAdFunc var_90
  loc_9CE670: FLdPr var_90
  loc_9CE673:  = Me.Enabled
  loc_9CE678: FLdI2 var_92
  loc_9CE67B: AndI4
  loc_9CE67C: FLdRfVar var_9C
  loc_9CE67F: FLdPr Me
  loc_9CE682: VCallAd Control_ID_ObseCotiTxt
  loc_9CE685: FStAdFunc var_98
  loc_9CE688: FLdPr var_98
  loc_9CE68B:  = Me.Text
  loc_9CE690: ILdRf var_9C
  loc_9CE693: LitStr vbNullString
  loc_9CE696: NeStr
  loc_9CE698: AndI4
  loc_9CE699: FFree1Str var_9C
  loc_9CE69C: FFreeAd var_88 = "": var_90 = ""
  loc_9CE6A5: BranchF loc_9CE726
  loc_9CE6A8: FLdRfVar var_9C
  loc_9CE6AB: FLdPr Me
  loc_9CE6AE: VCallAd Control_ID_ObseCotiTxt
  loc_9CE6B1: FStAdFunc var_88
  loc_9CE6B4: FLdPr var_88
  loc_9CE6B7:  = Me.Text
  loc_9CE6BC: LitI2_Byte 0
  loc_9CE6BE: PopTmpLdAd2 var_9E
  loc_9CE6C1: LitI2_Byte 0
  loc_9CE6C3: PopTmpLdAd2 var_92
  loc_9CE6C6: LitI2_Byte 0
  loc_9CE6C8: PopTmpLdAd2 var_8A
  loc_9CE6CB: ILdRf var_9C
  loc_9CE6CE: LitStr "Observaciones"
  loc_9CE6D1: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9CE6D6: FStStrNoPop var_A4
  loc_9CE6D9: FLdPr Me
  loc_9CE6DC: MemStStrCopy
  loc_9CE6E0: FFreeStr var_9C = ""
  loc_9CE6E7: FFree1Ad var_88
  loc_9CE6EA: FLdPr Me
  loc_9CE6ED: VCallAd Control_ID_ObseCotiTxt
  loc_9CE6F0: FStAdFunc var_A8
  loc_9CE6F3: LitNothing
  loc_9CE6F5: CastAd
  loc_9CE6F8: FStAdFunc var_98
  loc_9CE6FB: FLdRfVar var_98
  loc_9CE6FE: FLdZeroAd var_A8
  loc_9CE701: FStAdFuncNoPop
  loc_9CE704: CastAd
  loc_9CE707: FStAdFunc var_90
  loc_9CE70A: FLdRfVar var_90
  loc_9CE70D: FLdPr Me
  loc_9CE710: MemLdRfVar from_stack_1.global_60
  loc_9CE713: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CE718: IStI2 Cancel
  loc_9CE71B: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9CE726: ExitProcHresult
End Sub

Private Sub PlenCotiTxt_GotFocus() '9538B0
  'Data Table: 42FEB0
  loc_95389C: FLdPr Me
  loc_95389F: VCallAd Control_ID_PlenCotiTxt
  loc_9538A2: CVarAd
  loc_9538A6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9538AB: FFree1Var var_94 = ""
  loc_9538AE: ExitProcHresult
End Sub

Private Sub PlenCotiTxt_Validate(Cancel As Boolean) '9D03AC
  'Data Table: 42FEB0
  loc_9D02D0: FLdRfVar var_8A
  loc_9D02D3: FLdPr Me
  loc_9D02D6: VCallAd Control_ID_cmdCancelar
  loc_9D02D9: FStAdFunc var_88
  loc_9D02DC: FLdPr var_88
  loc_9D02DF:  = Me.Value
  loc_9D02E4: FLdI2 var_8A
  loc_9D02E7: NotI4
  loc_9D02E8: FLdRfVar var_92
  loc_9D02EB: FLdPr Me
  loc_9D02EE: VCallAd Control_ID_PlenCotiTxt
  loc_9D02F1: FStAdFunc var_90
  loc_9D02F4: FLdPr var_90
  loc_9D02F7:  = Me.Enabled
  loc_9D02FC: FLdI2 var_92
  loc_9D02FF: AndI4
  loc_9D0300: FLdRfVar var_9C
  loc_9D0303: FLdPr Me
  loc_9D0306: VCallAd Control_ID_PlenCotiTxt
  loc_9D0309: FStAdFunc var_98
  loc_9D030C: FLdPr var_98
  loc_9D030F:  = Me.Text
  loc_9D0314: ILdRf var_9C
  loc_9D0317: LitStr vbNullString
  loc_9D031A: NeStr
  loc_9D031C: AndI4
  loc_9D031D: FFree1Str var_9C
  loc_9D0320: FFreeAd var_88 = "": var_90 = ""
  loc_9D0329: BranchF loc_9D03AA
  loc_9D032C: FLdRfVar var_9C
  loc_9D032F: FLdPr Me
  loc_9D0332: VCallAd Control_ID_PlenCotiTxt
  loc_9D0335: FStAdFunc var_88
  loc_9D0338: FLdPr var_88
  loc_9D033B:  = Me.Text
  loc_9D0340: LitI2_Byte 0
  loc_9D0342: PopTmpLdAd2 var_9E
  loc_9D0345: LitI2_Byte 0
  loc_9D0347: PopTmpLdAd2 var_92
  loc_9D034A: LitI2_Byte 0
  loc_9D034C: PopTmpLdAd2 var_8A
  loc_9D034F: ILdRf var_9C
  loc_9D0352: LitStr "Plazo de entrega"
  loc_9D0355: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9D035A: FStStrNoPop var_A4
  loc_9D035D: FLdPr Me
  loc_9D0360: MemStStrCopy
  loc_9D0364: FFreeStr var_9C = ""
  loc_9D036B: FFree1Ad var_88
  loc_9D036E: FLdPr Me
  loc_9D0371: VCallAd Control_ID_PlenCotiTxt
  loc_9D0374: FStAdFunc var_A8
  loc_9D0377: LitNothing
  loc_9D0379: CastAd
  loc_9D037C: FStAdFunc var_98
  loc_9D037F: FLdRfVar var_98
  loc_9D0382: FLdZeroAd var_A8
  loc_9D0385: FStAdFuncNoPop
  loc_9D0388: CastAd
  loc_9D038B: FStAdFunc var_90
  loc_9D038E: FLdRfVar var_90
  loc_9D0391: FLdPr Me
  loc_9D0394: MemLdRfVar from_stack_1.global_60
  loc_9D0397: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D039C: IStI2 Cancel
  loc_9D039F: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9D03AA: ExitProcHresult
End Sub

Private Sub CucuPersTxt_GotFocus() '953550
  'Data Table: 42FEB0
  loc_95353C: FLdPr Me
  loc_95353F: VCallAd Control_ID_CucuPersTxt
  loc_953542: CVarAd
  loc_953546: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95354B: FFree1Var var_94 = ""
  loc_95354E: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyUp(KeyCode As Integer, Shift As Integer) 'A0B8D0
  'Data Table: 42FEB0
  loc_A0B76C: ILdI2 Shift
  loc_A0B76F: CI4UI1
  loc_A0B770: LitI4 2
  loc_A0B775: EqI4
  loc_A0B776: ILdI2 KeyCode
  loc_A0B779: CI4UI1
  loc_A0B77A: LitI4 &H42
  loc_A0B77F: EqI4
  loc_A0B780: AndI4
  loc_A0B781: BranchF loc_A0B8CC
  loc_A0B784: LitI2_Byte 0
  loc_A0B786: ImpAdLdRf MemVar_C3D74C
  loc_A0B789: NewIfNullPr bscProveedor
  loc_A0B78C: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_A0B791: LitNothing
  loc_A0B793: CastAd
  loc_A0B796: FStAdFuncNoPop
  loc_A0B799: FLdRfVar var_88
  loc_A0B79C: ImpAdLdRf MemVar_C3D74C
  loc_A0B79F: NewIfNullPr bscProveedor
  loc_A0B7A2: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0B7A7: FLdPr var_88
  loc_A0B7AA: Call clsbase.RsFrmSet(from_stack_1v)
  loc_A0B7AF: FFreeAd var_8C = ""
  loc_A0B7B6: LitVar_Missing var_AC
  loc_A0B7B9: PopAdLdVar
  loc_A0B7BA: LitVarI4
  loc_A0B7C2: PopAdLdVar
  loc_A0B7C3: ImpAdLdRf MemVar_C3D74C
  loc_A0B7C6: NewIfNullPr bscProveedor
  loc_A0B7C9: bscProveedor.Show from_stack_1, from_stack_2
  loc_A0B7CE: FLdRfVar var_B0
  loc_A0B7D1: FLdRfVar var_88
  loc_A0B7D4: ImpAdLdRf MemVar_C3D74C
  loc_A0B7D7: NewIfNullPr bscProveedor
  loc_A0B7DA: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0B7DF: FLdPr var_88
  loc_A0B7E2: from_stack_1 = clsbase.RecordCount
  loc_A0B7E7: ILdRf var_B0
  loc_A0B7EA: LitI4 0
  loc_A0B7EF: GtI4
  loc_A0B7F0: FFree1Ad var_88
  loc_A0B7F3: BranchF loc_A0B8CC
  loc_A0B7F6: FLdRfVar var_C8
  loc_A0B7F9: FLdRfVar var_B8
  loc_A0B7FC: LitVarStr var_9C, "CucuPers"
  loc_A0B801: PopAdLdVar
  loc_A0B802: FLdRfVar var_B4
  loc_A0B805: FLdRfVar var_8C
  loc_A0B808: FLdRfVar var_88
  loc_A0B80B: ImpAdLdRf MemVar_C3D74C
  loc_A0B80E: NewIfNullPr bscProveedor
  loc_A0B811: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0B816: FLdPr var_88
  loc_A0B819: from_stack_1v = clsbase.RsFrmGet()
  loc_A0B81E: FLdPr var_8C
  loc_A0B821:  = Me.Fields
  loc_A0B826: FLdPr var_B4
  loc_A0B829: from_stack_2 = Me.Item(from_stack_1)
  loc_A0B82E: FLdPr var_B8
  loc_A0B831:  = Me.Value
  loc_A0B836: FLdRfVar var_C8
  loc_A0B839: CStrVarTmp
  loc_A0B83A: FStStrNoPop var_CC
  loc_A0B83D: FLdPr Me
  loc_A0B840: VCallAd Control_ID_CucuPersTxt
  loc_A0B843: FStAdFunc var_D0
  loc_A0B846: FLdPr var_D0
  loc_A0B849: Me.Text = from_stack_1
  loc_A0B84E: FFree1Str var_CC
  loc_A0B851: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0B85E: FFree1Var var_C8 = ""
  loc_A0B861: FLdRfVar var_C8
  loc_A0B864: FLdRfVar var_B8
  loc_A0B867: LitVarStr var_9C, "DetaProv"
  loc_A0B86C: PopAdLdVar
  loc_A0B86D: FLdRfVar var_B4
  loc_A0B870: FLdRfVar var_8C
  loc_A0B873: FLdRfVar var_88
  loc_A0B876: ImpAdLdRf MemVar_C3D74C
  loc_A0B879: NewIfNullPr bscProveedor
  loc_A0B87C: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0B881: FLdPr var_88
  loc_A0B884: from_stack_1v = clsbase.RsFrmGet()
  loc_A0B889: FLdPr var_8C
  loc_A0B88C:  = Me.Fields
  loc_A0B891: FLdPr var_B4
  loc_A0B894: from_stack_2 = Me.Item(from_stack_1)
  loc_A0B899: FLdPr var_B8
  loc_A0B89C:  = Me.Value
  loc_A0B8A1: FLdRfVar var_C8
  loc_A0B8A4: CStrVarTmp
  loc_A0B8A5: FStStrNoPop var_CC
  loc_A0B8A8: FLdPr Me
  loc_A0B8AB: VCallAd Control_ID_DetaProvLbl
  loc_A0B8AE: FStAdFunc var_D0
  loc_A0B8B1: FLdPr var_D0
  loc_A0B8B4: Me.Caption = from_stack_1
  loc_A0B8B9: FFree1Str var_CC
  loc_A0B8BC: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0B8C9: FFree1Var var_C8 = ""
  loc_A0B8CC: ExitProcHresult
  loc_A0B8CD: FnLBound
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) 'B3FA6C
  'Data Table: 42FEB0
  loc_B3F01C: FLdRfVar var_8A
  loc_B3F01F: FLdPr Me
  loc_B3F022: VCallAd Control_ID_cmdCancelar
  loc_B3F025: FStAdFunc var_88
  loc_B3F028: FLdPr var_88
  loc_B3F02B:  = Me.Value
  loc_B3F030: FLdI2 var_8A
  loc_B3F033: NotI4
  loc_B3F034: FLdRfVar var_92
  loc_B3F037: FLdPr Me
  loc_B3F03A: VCallAd Control_ID_CucuPersTxt
  loc_B3F03D: FStAdFunc var_90
  loc_B3F040: FLdPr var_90
  loc_B3F043:  = Me.Enabled
  loc_B3F048: FLdI2 var_92
  loc_B3F04B: AndI4
  loc_B3F04C: FFreeAd var_88 = ""
  loc_B3F053: BranchF loc_B3FA6B
  loc_B3F056: FLdRfVar var_98
  loc_B3F059: FLdPr Me
  loc_B3F05C: VCallAd Control_ID_CucuPersTxt
  loc_B3F05F: FStAdFunc var_88
  loc_B3F062: FLdPr var_88
  loc_B3F065:  = Me.Text
  loc_B3F06A: ILdRf var_98
  loc_B3F06D: ImpAdCallI2 Trim$()
  loc_B3F072: FStStrNoPop var_9C
  loc_B3F075: LitStr vbNullString
  loc_B3F078: NeStr
  loc_B3F07A: FFreeStr var_98 = ""
  loc_B3F081: FFree1Ad var_88
  loc_B3F084: BranchF loc_B3F8A7
  loc_B3F087: FLdPr Me
  loc_B3F08A: VCallAd Control_ID_CucuPersTxt
  loc_B3F08D: FStAdFunc var_88
  loc_B3F090: FLdRfVar var_88
  loc_B3F093: ImpAdCallI2 Proc_266_39_9F3844()
  loc_B3F098: FFree1Ad var_88
  loc_B3F09B: BranchF loc_B3F493
  loc_B3F09E: LitStr " AND proveedor.CucuPers LIKE '" & Chr(37)
  loc_B3F0A1: FLdRfVar var_98
  loc_B3F0A4: FLdPr Me
  loc_B3F0A7: VCallAd Control_ID_CucuPersTxt
  loc_B3F0AA: FStAdFunc var_88
  loc_B3F0AD: FLdPr var_88
  loc_B3F0B0:  = Me.Text
  loc_B3F0B5: ILdRf var_98
  loc_B3F0B8: ConcatStr
  loc_B3F0B9: FStStrNoPop var_9C
  loc_B3F0BC: LitStr Chr(37) & "'"
  loc_B3F0BF: ConcatStr
  loc_B3F0C0: FStStrNoPop var_A0
  loc_B3F0C3: ImpAdLdRf MemVar_C3D74C
  loc_B3F0C6: NewIfNullPr bscProveedor
  loc_B3F0C9: Call bscProveedor.Constructor(from_stack_1v)
  loc_B3F0CE: FFreeStr var_98 = "": var_9C = ""
  loc_B3F0D7: FFree1Ad var_88
  loc_B3F0DA: FLdRfVar var_A4
  loc_B3F0DD: FLdRfVar var_90
  loc_B3F0E0: FLdRfVar var_88
  loc_B3F0E3: ImpAdLdRf MemVar_C3D74C
  loc_B3F0E6: NewIfNullPr bscProveedor
  loc_B3F0E9: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3F0EE: FLdPr var_88
  loc_B3F0F1: from_stack_1v = clsbase.RsFrmGet()
  loc_B3F0F6: FLdPr var_90
  loc_B3F0F9:  = Me.RecordCount
  loc_B3F0FE: ILdRf var_A4
  loc_B3F101: LitI4 1
  loc_B3F106: EqI4
  loc_B3F107: FFreeAd var_88 = ""
  loc_B3F10E: BranchF loc_B3F231
  loc_B3F111: FLdRfVar var_CC
  loc_B3F114: FLdRfVar var_BC
  loc_B3F117: LitVarStr var_B8, "CucuPers"
  loc_B3F11C: PopAdLdVar
  loc_B3F11D: FLdRfVar var_A8
  loc_B3F120: FLdRfVar var_90
  loc_B3F123: FLdRfVar var_88
  loc_B3F126: ImpAdLdRf MemVar_C3D74C
  loc_B3F129: NewIfNullPr bscProveedor
  loc_B3F12C: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3F131: FLdPr var_88
  loc_B3F134: from_stack_1v = clsbase.RsFrmGet()
  loc_B3F139: FLdPr var_90
  loc_B3F13C:  = Me.Fields
  loc_B3F141: FLdPr var_A8
  loc_B3F144: from_stack_2 = Me.Item(from_stack_1)
  loc_B3F149: FLdPr var_BC
  loc_B3F14C:  = Me.Value
  loc_B3F151: FLdRfVar var_CC
  loc_B3F154: CStrVarTmp
  loc_B3F155: FStStrNoPop var_98
  loc_B3F158: FLdPr Me
  loc_B3F15B: VCallAd Control_ID_CucuPersTxt
  loc_B3F15E: FStAdFunc var_D0
  loc_B3F161: FLdPr var_D0
  loc_B3F164: Me.Text = from_stack_1
  loc_B3F169: FFree1Str var_98
  loc_B3F16C: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B3F179: FFree1Var var_CC = ""
  loc_B3F17C: FLdRfVar var_CC
  loc_B3F17F: FLdRfVar var_BC
  loc_B3F182: LitVarStr var_B8, "DetaProv"
  loc_B3F187: PopAdLdVar
  loc_B3F188: FLdRfVar var_A8
  loc_B3F18B: FLdRfVar var_90
  loc_B3F18E: FLdRfVar var_88
  loc_B3F191: ImpAdLdRf MemVar_C3D74C
  loc_B3F194: NewIfNullPr bscProveedor
  loc_B3F197: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3F19C: FLdPr var_88
  loc_B3F19F: from_stack_1v = clsbase.RsFrmGet()
  loc_B3F1A4: FLdPr var_90
  loc_B3F1A7:  = Me.Fields
  loc_B3F1AC: FLdPr var_A8
  loc_B3F1AF: from_stack_2 = Me.Item(from_stack_1)
  loc_B3F1B4: FLdPr var_BC
  loc_B3F1B7:  = Me.Value
  loc_B3F1BC: FLdRfVar var_CC
  loc_B3F1BF: CStrVarTmp
  loc_B3F1C0: FStStrNoPop var_98
  loc_B3F1C3: FLdPr Me
  loc_B3F1C6: VCallAd Control_ID_DetaProvLbl
  loc_B3F1C9: FStAdFunc var_D0
  loc_B3F1CC: FLdPr var_D0
  loc_B3F1CF: Me.Caption = from_stack_1
  loc_B3F1D4: FFree1Str var_98
  loc_B3F1D7: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B3F1E4: FFree1Var var_CC = ""
  loc_B3F1E7: LitStr vbNullString
  loc_B3F1EA: FLdPr Me
  loc_B3F1ED: MemStStrCopy
  loc_B3F1F1: FLdPr Me
  loc_B3F1F4: VCallAd Control_ID_CucuPersTxt
  loc_B3F1F7: FStAdFunc var_BC
  loc_B3F1FA: FLdPr Me
  loc_B3F1FD: VCallAd Control_ID_DetaProvLbl
  loc_B3F200: FStAdFunc var_A8
  loc_B3F203: FLdRfVar var_A8
  loc_B3F206: FLdZeroAd var_BC
  loc_B3F209: FStAdFuncNoPop
  loc_B3F20C: CastAd
  loc_B3F20F: FStAdFunc var_90
  loc_B3F212: FLdRfVar var_90
  loc_B3F215: FLdPr Me
  loc_B3F218: MemLdRfVar from_stack_1.global_60
  loc_B3F21B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B3F220: IStI2 Cancel
  loc_B3F223: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3F22E: Branch loc_B3F490
  loc_B3F231: FLdRfVar var_A4
  loc_B3F234: FLdRfVar var_90
  loc_B3F237: FLdRfVar var_88
  loc_B3F23A: ImpAdLdRf MemVar_C3D74C
  loc_B3F23D: NewIfNullPr bscProveedor
  loc_B3F240: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3F245: FLdPr var_88
  loc_B3F248: from_stack_1v = clsbase.RsFrmGet()
  loc_B3F24D: FLdPr var_90
  loc_B3F250:  = Me.RecordCount
  loc_B3F255: ILdRf var_A4
  loc_B3F258: LitI4 1
  loc_B3F25D: GtI4
  loc_B3F25E: FFreeAd var_88 = ""
  loc_B3F265: BranchF loc_B3F412
  loc_B3F268: LitVar_Missing var_E0
  loc_B3F26B: PopAdLdVar
  loc_B3F26C: LitVarI4
  loc_B3F274: PopAdLdVar
  loc_B3F275: ImpAdLdRf MemVar_C3D74C
  loc_B3F278: NewIfNullPr bscProveedor
  loc_B3F27B: bscProveedor.Show from_stack_1, from_stack_2
  loc_B3F280: FLdRfVar var_A4
  loc_B3F283: FLdRfVar var_88
  loc_B3F286: ImpAdLdRf MemVar_C3D74C
  loc_B3F289: NewIfNullPr bscProveedor
  loc_B3F28C: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3F291: FLdPr var_88
  loc_B3F294: from_stack_1 = clsbase.RecordCount
  loc_B3F299: ILdRf var_A4
  loc_B3F29C: LitI4 0
  loc_B3F2A1: GtI4
  loc_B3F2A2: FFree1Ad var_88
  loc_B3F2A5: BranchF loc_B3F3C8
  loc_B3F2A8: FLdRfVar var_CC
  loc_B3F2AB: FLdRfVar var_BC
  loc_B3F2AE: LitVarStr var_B8, "CucuPers"
  loc_B3F2B3: PopAdLdVar
  loc_B3F2B4: FLdRfVar var_A8
  loc_B3F2B7: FLdRfVar var_90
  loc_B3F2BA: FLdRfVar var_88
  loc_B3F2BD: ImpAdLdRf MemVar_C3D74C
  loc_B3F2C0: NewIfNullPr bscProveedor
  loc_B3F2C3: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3F2C8: FLdPr var_88
  loc_B3F2CB: from_stack_1v = clsbase.RsFrmGet()
  loc_B3F2D0: FLdPr var_90
  loc_B3F2D3:  = Me.Fields
  loc_B3F2D8: FLdPr var_A8
  loc_B3F2DB: from_stack_2 = Me.Item(from_stack_1)
  loc_B3F2E0: FLdPr var_BC
  loc_B3F2E3:  = Me.Value
  loc_B3F2E8: FLdRfVar var_CC
  loc_B3F2EB: CStrVarTmp
  loc_B3F2EC: FStStrNoPop var_98
  loc_B3F2EF: FLdPr Me
  loc_B3F2F2: VCallAd Control_ID_CucuPersTxt
  loc_B3F2F5: FStAdFunc var_D0
  loc_B3F2F8: FLdPr var_D0
  loc_B3F2FB: Me.Text = from_stack_1
  loc_B3F300: FFree1Str var_98
  loc_B3F303: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B3F310: FFree1Var var_CC = ""
  loc_B3F313: FLdRfVar var_CC
  loc_B3F316: FLdRfVar var_BC
  loc_B3F319: LitVarStr var_B8, "DetaProv"
  loc_B3F31E: PopAdLdVar
  loc_B3F31F: FLdRfVar var_A8
  loc_B3F322: FLdRfVar var_90
  loc_B3F325: FLdRfVar var_88
  loc_B3F328: ImpAdLdRf MemVar_C3D74C
  loc_B3F32B: NewIfNullPr bscProveedor
  loc_B3F32E: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3F333: FLdPr var_88
  loc_B3F336: from_stack_1v = clsbase.RsFrmGet()
  loc_B3F33B: FLdPr var_90
  loc_B3F33E:  = Me.Fields
  loc_B3F343: FLdPr var_A8
  loc_B3F346: from_stack_2 = Me.Item(from_stack_1)
  loc_B3F34B: FLdPr var_BC
  loc_B3F34E:  = Me.Value
  loc_B3F353: FLdRfVar var_CC
  loc_B3F356: CStrVarTmp
  loc_B3F357: FStStrNoPop var_98
  loc_B3F35A: FLdPr Me
  loc_B3F35D: VCallAd Control_ID_DetaProvLbl
  loc_B3F360: FStAdFunc var_D0
  loc_B3F363: FLdPr var_D0
  loc_B3F366: Me.Caption = from_stack_1
  loc_B3F36B: FFree1Str var_98
  loc_B3F36E: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B3F37B: FFree1Var var_CC = ""
  loc_B3F37E: LitStr vbNullString
  loc_B3F381: FLdPr Me
  loc_B3F384: MemStStrCopy
  loc_B3F388: FLdPr Me
  loc_B3F38B: VCallAd Control_ID_CucuPersTxt
  loc_B3F38E: FStAdFunc var_BC
  loc_B3F391: FLdPr Me
  loc_B3F394: VCallAd Control_ID_DetaProvLbl
  loc_B3F397: FStAdFunc var_A8
  loc_B3F39A: FLdRfVar var_A8
  loc_B3F39D: FLdZeroAd var_BC
  loc_B3F3A0: FStAdFuncNoPop
  loc_B3F3A3: CastAd
  loc_B3F3A6: FStAdFunc var_90
  loc_B3F3A9: FLdRfVar var_90
  loc_B3F3AC: FLdPr Me
  loc_B3F3AF: MemLdRfVar from_stack_1.global_60
  loc_B3F3B2: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B3F3B7: IStI2 Cancel
  loc_B3F3BA: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3F3C5: Branch loc_B3F40F
  loc_B3F3C8: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B3F3CB: FLdPr Me
  loc_B3F3CE: MemStStrCopy
  loc_B3F3D2: FLdPr Me
  loc_B3F3D5: VCallAd Control_ID_CucuPersTxt
  loc_B3F3D8: FStAdFunc var_BC
  loc_B3F3DB: FLdPr Me
  loc_B3F3DE: VCallAd Control_ID_DetaProvLbl
  loc_B3F3E1: FStAdFunc var_A8
  loc_B3F3E4: FLdRfVar var_A8
  loc_B3F3E7: FLdZeroAd var_BC
  loc_B3F3EA: FStAdFuncNoPop
  loc_B3F3ED: CastAd
  loc_B3F3F0: FStAdFunc var_90
  loc_B3F3F3: FLdRfVar var_90
  loc_B3F3F6: FLdPr Me
  loc_B3F3F9: MemLdRfVar from_stack_1.global_60
  loc_B3F3FC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B3F401: IStI2 Cancel
  loc_B3F404: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3F40F: Branch loc_B3F490
  loc_B3F412: FLdRfVar var_A4
  loc_B3F415: FLdRfVar var_90
  loc_B3F418: FLdRfVar var_88
  loc_B3F41B: ImpAdLdRf MemVar_C3D74C
  loc_B3F41E: NewIfNullPr bscProveedor
  loc_B3F421: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3F426: FLdPr var_88
  loc_B3F429: from_stack_1v = clsbase.RsFrmGet()
  loc_B3F42E: FLdPr var_90
  loc_B3F431:  = Me.RecordCount
  loc_B3F436: ILdRf var_A4
  loc_B3F439: LitI4 1
  loc_B3F43E: LtI4
  loc_B3F43F: FFreeAd var_88 = ""
  loc_B3F446: BranchF loc_B3F490
  loc_B3F449: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B3F44C: FLdPr Me
  loc_B3F44F: MemStStrCopy
  loc_B3F453: FLdPr Me
  loc_B3F456: VCallAd Control_ID_CucuPersTxt
  loc_B3F459: FStAdFunc var_BC
  loc_B3F45C: FLdPr Me
  loc_B3F45F: VCallAd Control_ID_DetaProvLbl
  loc_B3F462: FStAdFunc var_A8
  loc_B3F465: FLdRfVar var_A8
  loc_B3F468: FLdZeroAd var_BC
  loc_B3F46B: FStAdFuncNoPop
  loc_B3F46E: CastAd
  loc_B3F471: FStAdFunc var_90
  loc_B3F474: FLdRfVar var_90
  loc_B3F477: FLdPr Me
  loc_B3F47A: MemLdRfVar from_stack_1.global_60
  loc_B3F47D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B3F482: IStI2 Cancel
  loc_B3F485: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3F490: Branch loc_B3F8A4
  loc_B3F493: FLdRfVar var_98
  loc_B3F496: FLdPr Me
  loc_B3F499: VCallAd Control_ID_CucuPersTxt
  loc_B3F49C: FStAdFunc var_88
  loc_B3F49F: FLdPr var_88
  loc_B3F4A2:  = Me.Text
  loc_B3F4A7: LitStr " AND DetaProv LIKE '" & Chr(37)
  loc_B3F4AA: LitI4 0
  loc_B3F4AF: LitI4 -1
  loc_B3F4B4: LitI4 1
  loc_B3F4B9: LitStr Chr(37)
  loc_B3F4BC: LitStr " "
  loc_B3F4BF: ILdRf var_98
  loc_B3F4C2: ImpAdCallI2 Replace(, , , , , )
  loc_B3F4C7: FStStrNoPop var_9C
  loc_B3F4CA: ConcatStr
  loc_B3F4CB: FStStrNoPop var_A0
  loc_B3F4CE: LitStr Chr(37) & "'"
  loc_B3F4D1: ConcatStr
  loc_B3F4D2: FStStrNoPop var_E4
  loc_B3F4D5: ImpAdLdRf MemVar_C3D74C
  loc_B3F4D8: NewIfNullPr bscProveedor
  loc_B3F4DB: Call bscProveedor.Constructor(from_stack_1v)
  loc_B3F4E0: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_B3F4EB: FFree1Ad var_88
  loc_B3F4EE: FLdRfVar var_A4
  loc_B3F4F1: FLdRfVar var_90
  loc_B3F4F4: FLdRfVar var_88
  loc_B3F4F7: ImpAdLdRf MemVar_C3D74C
  loc_B3F4FA: NewIfNullPr bscProveedor
  loc_B3F4FD: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3F502: FLdPr var_88
  loc_B3F505: from_stack_1v = clsbase.RsFrmGet()
  loc_B3F50A: FLdPr var_90
  loc_B3F50D:  = Me.RecordCount
  loc_B3F512: ILdRf var_A4
  loc_B3F515: LitI4 1
  loc_B3F51A: EqI4
  loc_B3F51B: FFreeAd var_88 = ""
  loc_B3F522: BranchF loc_B3F645
  loc_B3F525: FLdRfVar var_CC
  loc_B3F528: FLdRfVar var_BC
  loc_B3F52B: LitVarStr var_B8, "CucuPers"
  loc_B3F530: PopAdLdVar
  loc_B3F531: FLdRfVar var_A8
  loc_B3F534: FLdRfVar var_90
  loc_B3F537: FLdRfVar var_88
  loc_B3F53A: ImpAdLdRf MemVar_C3D74C
  loc_B3F53D: NewIfNullPr bscProveedor
  loc_B3F540: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3F545: FLdPr var_88
  loc_B3F548: from_stack_1v = clsbase.RsFrmGet()
  loc_B3F54D: FLdPr var_90
  loc_B3F550:  = Me.Fields
  loc_B3F555: FLdPr var_A8
  loc_B3F558: from_stack_2 = Me.Item(from_stack_1)
  loc_B3F55D: FLdPr var_BC
  loc_B3F560:  = Me.Value
  loc_B3F565: FLdRfVar var_CC
  loc_B3F568: CStrVarTmp
  loc_B3F569: FStStrNoPop var_98
  loc_B3F56C: FLdPr Me
  loc_B3F56F: VCallAd Control_ID_CucuPersTxt
  loc_B3F572: FStAdFunc var_D0
  loc_B3F575: FLdPr var_D0
  loc_B3F578: Me.Text = from_stack_1
  loc_B3F57D: FFree1Str var_98
  loc_B3F580: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B3F58D: FFree1Var var_CC = ""
  loc_B3F590: FLdRfVar var_CC
  loc_B3F593: FLdRfVar var_BC
  loc_B3F596: LitVarStr var_B8, "DetaProv"
  loc_B3F59B: PopAdLdVar
  loc_B3F59C: FLdRfVar var_A8
  loc_B3F59F: FLdRfVar var_90
  loc_B3F5A2: FLdRfVar var_88
  loc_B3F5A5: ImpAdLdRf MemVar_C3D74C
  loc_B3F5A8: NewIfNullPr bscProveedor
  loc_B3F5AB: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3F5B0: FLdPr var_88
  loc_B3F5B3: from_stack_1v = clsbase.RsFrmGet()
  loc_B3F5B8: FLdPr var_90
  loc_B3F5BB:  = Me.Fields
  loc_B3F5C0: FLdPr var_A8
  loc_B3F5C3: from_stack_2 = Me.Item(from_stack_1)
  loc_B3F5C8: FLdPr var_BC
  loc_B3F5CB:  = Me.Value
  loc_B3F5D0: FLdRfVar var_CC
  loc_B3F5D3: CStrVarTmp
  loc_B3F5D4: FStStrNoPop var_98
  loc_B3F5D7: FLdPr Me
  loc_B3F5DA: VCallAd Control_ID_DetaProvLbl
  loc_B3F5DD: FStAdFunc var_D0
  loc_B3F5E0: FLdPr var_D0
  loc_B3F5E3: Me.Caption = from_stack_1
  loc_B3F5E8: FFree1Str var_98
  loc_B3F5EB: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B3F5F8: FFree1Var var_CC = ""
  loc_B3F5FB: LitStr vbNullString
  loc_B3F5FE: FLdPr Me
  loc_B3F601: MemStStrCopy
  loc_B3F605: FLdPr Me
  loc_B3F608: VCallAd Control_ID_CucuPersTxt
  loc_B3F60B: FStAdFunc var_BC
  loc_B3F60E: FLdPr Me
  loc_B3F611: VCallAd Control_ID_DetaProvLbl
  loc_B3F614: FStAdFunc var_A8
  loc_B3F617: FLdRfVar var_A8
  loc_B3F61A: FLdZeroAd var_BC
  loc_B3F61D: FStAdFuncNoPop
  loc_B3F620: CastAd
  loc_B3F623: FStAdFunc var_90
  loc_B3F626: FLdRfVar var_90
  loc_B3F629: FLdPr Me
  loc_B3F62C: MemLdRfVar from_stack_1.global_60
  loc_B3F62F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B3F634: IStI2 Cancel
  loc_B3F637: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3F642: Branch loc_B3F8A4
  loc_B3F645: FLdRfVar var_A4
  loc_B3F648: FLdRfVar var_90
  loc_B3F64B: FLdRfVar var_88
  loc_B3F64E: ImpAdLdRf MemVar_C3D74C
  loc_B3F651: NewIfNullPr bscProveedor
  loc_B3F654: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3F659: FLdPr var_88
  loc_B3F65C: from_stack_1v = clsbase.RsFrmGet()
  loc_B3F661: FLdPr var_90
  loc_B3F664:  = Me.RecordCount
  loc_B3F669: ILdRf var_A4
  loc_B3F66C: LitI4 1
  loc_B3F671: GtI4
  loc_B3F672: FFreeAd var_88 = ""
  loc_B3F679: BranchF loc_B3F826
  loc_B3F67C: LitVar_Missing var_E0
  loc_B3F67F: PopAdLdVar
  loc_B3F680: LitVarI4
  loc_B3F688: PopAdLdVar
  loc_B3F689: ImpAdLdRf MemVar_C3D74C
  loc_B3F68C: NewIfNullPr bscProveedor
  loc_B3F68F: bscProveedor.Show from_stack_1, from_stack_2
  loc_B3F694: FLdRfVar var_A4
  loc_B3F697: FLdRfVar var_88
  loc_B3F69A: ImpAdLdRf MemVar_C3D74C
  loc_B3F69D: NewIfNullPr bscProveedor
  loc_B3F6A0: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3F6A5: FLdPr var_88
  loc_B3F6A8: from_stack_1 = clsbase.RecordCount
  loc_B3F6AD: ILdRf var_A4
  loc_B3F6B0: LitI4 0
  loc_B3F6B5: GtI4
  loc_B3F6B6: FFree1Ad var_88
  loc_B3F6B9: BranchF loc_B3F7DC
  loc_B3F6BC: FLdRfVar var_CC
  loc_B3F6BF: FLdRfVar var_BC
  loc_B3F6C2: LitVarStr var_B8, "CucuPers"
  loc_B3F6C7: PopAdLdVar
  loc_B3F6C8: FLdRfVar var_A8
  loc_B3F6CB: FLdRfVar var_90
  loc_B3F6CE: FLdRfVar var_88
  loc_B3F6D1: ImpAdLdRf MemVar_C3D74C
  loc_B3F6D4: NewIfNullPr bscProveedor
  loc_B3F6D7: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3F6DC: FLdPr var_88
  loc_B3F6DF: from_stack_1v = clsbase.RsFrmGet()
  loc_B3F6E4: FLdPr var_90
  loc_B3F6E7:  = Me.Fields
  loc_B3F6EC: FLdPr var_A8
  loc_B3F6EF: from_stack_2 = Me.Item(from_stack_1)
  loc_B3F6F4: FLdPr var_BC
  loc_B3F6F7:  = Me.Value
  loc_B3F6FC: FLdRfVar var_CC
  loc_B3F6FF: CStrVarTmp
  loc_B3F700: FStStrNoPop var_98
  loc_B3F703: FLdPr Me
  loc_B3F706: VCallAd Control_ID_CucuPersTxt
  loc_B3F709: FStAdFunc var_D0
  loc_B3F70C: FLdPr var_D0
  loc_B3F70F: Me.Text = from_stack_1
  loc_B3F714: FFree1Str var_98
  loc_B3F717: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B3F724: FFree1Var var_CC = ""
  loc_B3F727: FLdRfVar var_CC
  loc_B3F72A: FLdRfVar var_BC
  loc_B3F72D: LitVarStr var_B8, "DetaProv"
  loc_B3F732: PopAdLdVar
  loc_B3F733: FLdRfVar var_A8
  loc_B3F736: FLdRfVar var_90
  loc_B3F739: FLdRfVar var_88
  loc_B3F73C: ImpAdLdRf MemVar_C3D74C
  loc_B3F73F: NewIfNullPr bscProveedor
  loc_B3F742: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3F747: FLdPr var_88
  loc_B3F74A: from_stack_1v = clsbase.RsFrmGet()
  loc_B3F74F: FLdPr var_90
  loc_B3F752:  = Me.Fields
  loc_B3F757: FLdPr var_A8
  loc_B3F75A: from_stack_2 = Me.Item(from_stack_1)
  loc_B3F75F: FLdPr var_BC
  loc_B3F762:  = Me.Value
  loc_B3F767: FLdRfVar var_CC
  loc_B3F76A: CStrVarTmp
  loc_B3F76B: FStStrNoPop var_98
  loc_B3F76E: FLdPr Me
  loc_B3F771: VCallAd Control_ID_DetaProvLbl
  loc_B3F774: FStAdFunc var_D0
  loc_B3F777: FLdPr var_D0
  loc_B3F77A: Me.Caption = from_stack_1
  loc_B3F77F: FFree1Str var_98
  loc_B3F782: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B3F78F: FFree1Var var_CC = ""
  loc_B3F792: LitStr vbNullString
  loc_B3F795: FLdPr Me
  loc_B3F798: MemStStrCopy
  loc_B3F79C: FLdPr Me
  loc_B3F79F: VCallAd Control_ID_CucuPersTxt
  loc_B3F7A2: FStAdFunc var_BC
  loc_B3F7A5: FLdPr Me
  loc_B3F7A8: VCallAd Control_ID_DetaProvLbl
  loc_B3F7AB: FStAdFunc var_A8
  loc_B3F7AE: FLdRfVar var_A8
  loc_B3F7B1: FLdZeroAd var_BC
  loc_B3F7B4: FStAdFuncNoPop
  loc_B3F7B7: CastAd
  loc_B3F7BA: FStAdFunc var_90
  loc_B3F7BD: FLdRfVar var_90
  loc_B3F7C0: FLdPr Me
  loc_B3F7C3: MemLdRfVar from_stack_1.global_60
  loc_B3F7C6: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B3F7CB: IStI2 Cancel
  loc_B3F7CE: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3F7D9: Branch loc_B3F823
  loc_B3F7DC: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B3F7DF: FLdPr Me
  loc_B3F7E2: MemStStrCopy
  loc_B3F7E6: FLdPr Me
  loc_B3F7E9: VCallAd Control_ID_CucuPersTxt
  loc_B3F7EC: FStAdFunc var_BC
  loc_B3F7EF: FLdPr Me
  loc_B3F7F2: VCallAd Control_ID_DetaProvLbl
  loc_B3F7F5: FStAdFunc var_A8
  loc_B3F7F8: FLdRfVar var_A8
  loc_B3F7FB: FLdZeroAd var_BC
  loc_B3F7FE: FStAdFuncNoPop
  loc_B3F801: CastAd
  loc_B3F804: FStAdFunc var_90
  loc_B3F807: FLdRfVar var_90
  loc_B3F80A: FLdPr Me
  loc_B3F80D: MemLdRfVar from_stack_1.global_60
  loc_B3F810: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B3F815: IStI2 Cancel
  loc_B3F818: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3F823: Branch loc_B3F8A4
  loc_B3F826: FLdRfVar var_A4
  loc_B3F829: FLdRfVar var_90
  loc_B3F82C: FLdRfVar var_88
  loc_B3F82F: ImpAdLdRf MemVar_C3D74C
  loc_B3F832: NewIfNullPr bscProveedor
  loc_B3F835: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3F83A: FLdPr var_88
  loc_B3F83D: from_stack_1v = clsbase.RsFrmGet()
  loc_B3F842: FLdPr var_90
  loc_B3F845:  = Me.RecordCount
  loc_B3F84A: ILdRf var_A4
  loc_B3F84D: LitI4 1
  loc_B3F852: LtI4
  loc_B3F853: FFreeAd var_88 = ""
  loc_B3F85A: BranchF loc_B3F8A4
  loc_B3F85D: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B3F860: FLdPr Me
  loc_B3F863: MemStStrCopy
  loc_B3F867: FLdPr Me
  loc_B3F86A: VCallAd Control_ID_CucuPersTxt
  loc_B3F86D: FStAdFunc var_BC
  loc_B3F870: FLdPr Me
  loc_B3F873: VCallAd Control_ID_DetaProvLbl
  loc_B3F876: FStAdFunc var_A8
  loc_B3F879: FLdRfVar var_A8
  loc_B3F87C: FLdZeroAd var_BC
  loc_B3F87F: FStAdFuncNoPop
  loc_B3F882: CastAd
  loc_B3F885: FStAdFunc var_90
  loc_B3F888: FLdRfVar var_90
  loc_B3F88B: FLdPr Me
  loc_B3F88E: MemLdRfVar from_stack_1.global_60
  loc_B3F891: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B3F896: IStI2 Cancel
  loc_B3F899: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3F8A4: Branch loc_B3FA6B
  loc_B3F8A7: LitI2_Byte 0
  loc_B3F8A9: ImpAdLdRf MemVar_C3D74C
  loc_B3F8AC: NewIfNullPr bscProveedor
  loc_B3F8AF: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_B3F8B4: LitNothing
  loc_B3F8B6: CastAd
  loc_B3F8B9: FStAdFuncNoPop
  loc_B3F8BC: FLdRfVar var_88
  loc_B3F8BF: ImpAdLdRf MemVar_C3D74C
  loc_B3F8C2: NewIfNullPr bscProveedor
  loc_B3F8C5: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3F8CA: FLdPr var_88
  loc_B3F8CD: Call clsbase.RsFrmSet(from_stack_1v)
  loc_B3F8D2: FFreeAd var_90 = ""
  loc_B3F8D9: LitVar_Missing var_E0
  loc_B3F8DC: PopAdLdVar
  loc_B3F8DD: LitVarI4
  loc_B3F8E5: PopAdLdVar
  loc_B3F8E6: ImpAdLdRf MemVar_C3D74C
  loc_B3F8E9: NewIfNullPr bscProveedor
  loc_B3F8EC: bscProveedor.Show from_stack_1, from_stack_2
  loc_B3F8F1: FLdRfVar var_A4
  loc_B3F8F4: FLdRfVar var_88
  loc_B3F8F7: ImpAdLdRf MemVar_C3D74C
  loc_B3F8FA: NewIfNullPr bscProveedor
  loc_B3F8FD: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3F902: FLdPr var_88
  loc_B3F905: from_stack_1 = clsbase.RecordCount
  loc_B3F90A: ILdRf var_A4
  loc_B3F90D: LitI4 0
  loc_B3F912: GtI4
  loc_B3F913: FFree1Ad var_88
  loc_B3F916: BranchF loc_B3FA24
  loc_B3F919: FLdRfVar var_CC
  loc_B3F91C: FLdRfVar var_BC
  loc_B3F91F: LitVarStr var_B8, "CucuPers"
  loc_B3F924: PopAdLdVar
  loc_B3F925: FLdRfVar var_A8
  loc_B3F928: FLdRfVar var_90
  loc_B3F92B: FLdRfVar var_88
  loc_B3F92E: ImpAdLdRf MemVar_C3D74C
  loc_B3F931: NewIfNullPr bscProveedor
  loc_B3F934: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3F939: FLdPr var_88
  loc_B3F93C: from_stack_1v = clsbase.RsFrmGet()
  loc_B3F941: FLdPr var_90
  loc_B3F944:  = Me.Fields
  loc_B3F949: FLdPr var_A8
  loc_B3F94C: from_stack_2 = Me.Item(from_stack_1)
  loc_B3F951: FLdPr var_BC
  loc_B3F954:  = Me.Value
  loc_B3F959: FLdPr Me
  loc_B3F95C: MemLdRfVar from_stack_1.global_56
  loc_B3F95F: NewIfNullRf
  loc_B3F963: FLdRfVar var_CC
  loc_B3F966: CStrVarTmp
  loc_B3F967: FStStrNoPop var_98
  loc_B3F96A: ImpAdCallI2 Proc_266_17_9A241C(, )
  loc_B3F96F: FStStrNoPop var_9C
  loc_B3F972: FLdPr Me
  loc_B3F975: MemStStrCopy
  loc_B3F979: FFreeStr var_98 = ""
  loc_B3F980: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3F98B: FFree1Var var_CC = ""
  loc_B3F98E: FLdRfVar var_98
  loc_B3F991: FLdPr Me
  loc_B3F994: MemLdRfVar from_stack_1.global_56
  loc_B3F997: NewIfNullPr tblproveedor
  loc_B3F99A: from_stack_1v = tblproveedor.CucuPersGet()
  loc_B3F99F: ILdRf var_98
  loc_B3F9A2: FLdPr Me
  loc_B3F9A5: VCallAd Control_ID_CucuPersTxt
  loc_B3F9A8: FStAdFunc var_88
  loc_B3F9AB: FLdPr var_88
  loc_B3F9AE: Me.Text = from_stack_1
  loc_B3F9B3: FFree1Str var_98
  loc_B3F9B6: FFree1Ad var_88
  loc_B3F9B9: FLdRfVar var_98
  loc_B3F9BC: FLdPr Me
  loc_B3F9BF: MemLdRfVar from_stack_1.global_56
  loc_B3F9C2: NewIfNullPr tblproveedor
  loc_B3F9C5: from_stack_1v = tblproveedor.DetaProvGet()
  loc_B3F9CA: ILdRf var_98
  loc_B3F9CD: FLdPr Me
  loc_B3F9D0: VCallAd Control_ID_DetaProvLbl
  loc_B3F9D3: FStAdFunc var_88
  loc_B3F9D6: FLdPr var_88
  loc_B3F9D9: Me.Caption = from_stack_1
  loc_B3F9DE: FFree1Str var_98
  loc_B3F9E1: FFree1Ad var_88
  loc_B3F9E4: FLdPr Me
  loc_B3F9E7: VCallAd Control_ID_CucuPersTxt
  loc_B3F9EA: FStAdFunc var_BC
  loc_B3F9ED: FLdPr Me
  loc_B3F9F0: VCallAd Control_ID_DetaProvLbl
  loc_B3F9F3: FStAdFunc var_A8
  loc_B3F9F6: FLdRfVar var_A8
  loc_B3F9F9: FLdZeroAd var_BC
  loc_B3F9FC: FStAdFuncNoPop
  loc_B3F9FF: CastAd
  loc_B3FA02: FStAdFunc var_90
  loc_B3FA05: FLdRfVar var_90
  loc_B3FA08: FLdPr Me
  loc_B3FA0B: MemLdRfVar from_stack_1.global_60
  loc_B3FA0E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B3FA13: IStI2 Cancel
  loc_B3FA16: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3FA21: Branch loc_B3FA6B
  loc_B3FA24: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B3FA27: FLdPr Me
  loc_B3FA2A: MemStStrCopy
  loc_B3FA2E: FLdPr Me
  loc_B3FA31: VCallAd Control_ID_CucuPersTxt
  loc_B3FA34: FStAdFunc var_BC
  loc_B3FA37: FLdPr Me
  loc_B3FA3A: VCallAd Control_ID_DetaProvLbl
  loc_B3FA3D: FStAdFunc var_A8
  loc_B3FA40: FLdRfVar var_A8
  loc_B3FA43: FLdZeroAd var_BC
  loc_B3FA46: FStAdFuncNoPop
  loc_B3FA49: CastAd
  loc_B3FA4C: FStAdFunc var_90
  loc_B3FA4F: FLdRfVar var_90
  loc_B3FA52: FLdPr Me
  loc_B3FA55: MemLdRfVar from_stack_1.global_60
  loc_B3FA58: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B3FA5D: IStI2 Cancel
  loc_B3FA60: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3FA6B: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9C574C
  'Data Table: 42FEB0
  loc_9C5694: FLdRfVar var_8C
  loc_9C5697: FLdPr Me
  loc_9C569A: VCallAd Control_ID_CodiNopeLbl
  loc_9C569D: FStAdFunc var_88
  loc_9C56A0: FLdPr var_88
  loc_9C56A3:  = Me.Caption
  loc_9C56A8: FLdRfVar var_94
  loc_9C56AB: FLdPr Me
  loc_9C56AE: VCallAd Control_ID_CucuPersTxt
  loc_9C56B1: FStAdFunc var_90
  loc_9C56B4: FLdPr var_90
  loc_9C56B7:  = Me.Text
  loc_9C56BC: FLdRfVar var_9C
  loc_9C56BF: FLdPr Me
  loc_9C56C2: VCallAd Control_ID_PlenCotiTxt
  loc_9C56C5: FStAdFunc var_98
  loc_9C56C8: FLdPr var_98
  loc_9C56CB:  = Me.Text
  loc_9C56D0: FLdRfVar var_A4
  loc_9C56D3: FLdPr Me
  loc_9C56D6: VCallAd Control_ID_MaofCotiTxt
  loc_9C56D9: FStAdFunc var_A0
  loc_9C56DC: FLdPr var_A0
  loc_9C56DF:  = Me.Text
  loc_9C56E4: FLdRfVar var_AC
  loc_9C56E7: FLdPr Me
  loc_9C56EA: VCallAd Control_ID_ObseCotiTxt
  loc_9C56ED: FStAdFunc var_A8
  loc_9C56F0: FLdPr var_A8
  loc_9C56F3:  = Me.Text
  loc_9C56F8: ILdRf var_AC
  loc_9C56FB: ILdRf var_A4
  loc_9C56FE: ILdRf var_9C
  loc_9C5701: ILdRf var_94
  loc_9C5704: ILdRf var_8C
  loc_9C5707: CI4Str
  loc_9C5708: ImpAdLdI2 MemVar_C3D064
  loc_9C570B: FLdPr Me
  loc_9C570E: MemLdRfVar from_stack_1.global_52
  loc_9C5711: NewIfNullPr clscotizacion
  loc_9C5714: Call clscotizacion.CreaCotizacionAutomatica(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_9C5719: FFreeStr var_8C = "": var_94 = "": var_9C = "": var_A4 = ""
  loc_9C5726: FFreeAd var_88 = "": var_90 = "": var_98 = "": var_A0 = ""
  loc_9C5733: ILdRf Me
  loc_9C5736: FStAdNoPop
  loc_9C573A: ImpAdLdRf MemVar_C44F9C
  loc_9C573D: NewIfNullPr Me
  loc_9C5740: Me.Global.Unload from_stack_1
  loc_9C5745: FFree1Ad var_88
  loc_9C5748: ExitProcHresult
  loc_9C574B: CI2I4
End Sub

Private Sub cmdCancelar_Click() '953F34
  'Data Table: 42FEB0
  loc_953F1C: ILdRf Me
  loc_953F1F: FStAdNoPop
  loc_953F23: ImpAdLdRf MemVar_C44F9C
  loc_953F26: NewIfNullPr Me
  loc_953F29: Me.Global.Unload from_stack_1
  loc_953F2E: FFree1Ad var_88
  loc_953F31: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '94999C
  'Data Table: 42FEB0
  loc_949988: ILdI2 KeyAscii
  loc_94998B: CI4UI1
  loc_94998C: LitI4 &HD
  loc_949991: EqI4
  loc_949992: BranchF loc_94999A
  loc_949995: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_94999A: ExitProcHresult
End Sub

Private Sub MaofCotiTxt_GotFocus() '9536B8
  'Data Table: 42FEB0
  loc_9536A4: FLdPr Me
  loc_9536A7: VCallAd Control_ID_MaofCotiTxt
  loc_9536AA: CVarAd
  loc_9536AE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9536B3: FFree1Var var_94 = ""
  loc_9536B6: ExitProcHresult
End Sub

Private Sub MaofCotiTxt_Validate(Cancel As Boolean) '9CE604
  'Data Table: 42FEB0
  loc_9CE528: FLdRfVar var_8A
  loc_9CE52B: FLdPr Me
  loc_9CE52E: VCallAd Control_ID_cmdCancelar
  loc_9CE531: FStAdFunc var_88
  loc_9CE534: FLdPr var_88
  loc_9CE537:  = Me.Value
  loc_9CE53C: FLdI2 var_8A
  loc_9CE53F: NotI4
  loc_9CE540: FLdRfVar var_92
  loc_9CE543: FLdPr Me
  loc_9CE546: VCallAd Control_ID_MaofCotiTxt
  loc_9CE549: FStAdFunc var_90
  loc_9CE54C: FLdPr var_90
  loc_9CE54F:  = Me.Enabled
  loc_9CE554: FLdI2 var_92
  loc_9CE557: AndI4
  loc_9CE558: FLdRfVar var_9C
  loc_9CE55B: FLdPr Me
  loc_9CE55E: VCallAd Control_ID_MaofCotiTxt
  loc_9CE561: FStAdFunc var_98
  loc_9CE564: FLdPr var_98
  loc_9CE567:  = Me.Text
  loc_9CE56C: ILdRf var_9C
  loc_9CE56F: LitStr vbNullString
  loc_9CE572: NeStr
  loc_9CE574: AndI4
  loc_9CE575: FFree1Str var_9C
  loc_9CE578: FFreeAd var_88 = "": var_90 = ""
  loc_9CE581: BranchF loc_9CE602
  loc_9CE584: FLdRfVar var_9C
  loc_9CE587: FLdPr Me
  loc_9CE58A: VCallAd Control_ID_MaofCotiTxt
  loc_9CE58D: FStAdFunc var_88
  loc_9CE590: FLdPr var_88
  loc_9CE593:  = Me.Text
  loc_9CE598: LitI2_Byte 0
  loc_9CE59A: PopTmpLdAd2 var_9E
  loc_9CE59D: LitI2_Byte 0
  loc_9CE59F: PopTmpLdAd2 var_92
  loc_9CE5A2: LitI2_Byte 0
  loc_9CE5A4: PopTmpLdAd2 var_8A
  loc_9CE5A7: ILdRf var_9C
  loc_9CE5AA: LitStr "Mantenimiento de la oferta"
  loc_9CE5AD: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9CE5B2: FStStrNoPop var_A4
  loc_9CE5B5: FLdPr Me
  loc_9CE5B8: MemStStrCopy
  loc_9CE5BC: FFreeStr var_9C = ""
  loc_9CE5C3: FFree1Ad var_88
  loc_9CE5C6: FLdPr Me
  loc_9CE5C9: VCallAd Control_ID_MaofCotiTxt
  loc_9CE5CC: FStAdFunc var_A8
  loc_9CE5CF: LitNothing
  loc_9CE5D1: CastAd
  loc_9CE5D4: FStAdFunc var_98
  loc_9CE5D7: FLdRfVar var_98
  loc_9CE5DA: FLdZeroAd var_A8
  loc_9CE5DD: FStAdFuncNoPop
  loc_9CE5E0: CastAd
  loc_9CE5E3: FStAdFunc var_90
  loc_9CE5E6: FLdRfVar var_90
  loc_9CE5E9: FLdPr Me
  loc_9CE5EC: MemLdRfVar from_stack_1.global_60
  loc_9CE5EF: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CE5F4: IStI2 Cancel
  loc_9CE5F7: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9CE602: ExitProcHresult
End Sub
