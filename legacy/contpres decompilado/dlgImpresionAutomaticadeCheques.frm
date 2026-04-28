VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgImpresionAutomaticadeCheques
  Caption = "Impresion Automatica de Cheques"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgImpresionAutomaticadeCheques.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9540
  ClientHeight = 3585
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
    Caption = "Orden de Pago"
    Left = 120
    Top = 0
    Width = 8535
    Height = 855
    TabIndex = 0
    Begin MSMask.MaskEdBox DesdeNumeOrpaMsk
      Left = 3120
      Top = 360
      Width = 1215
      Height = 375
      TabIndex = 2
      OleObjectBlob = "dlgImpresionAutomaticadeCheques.frx":08CA
    End
    Begin MSMask.MaskEdBox HastaNumeOrpaMsk
      Left = 6150
      Top = 360
      Width = 1095
      Height = 375
      TabIndex = 4
      OleObjectBlob = "dlgImpresionAutomaticadeCheques.frx":0936
    End
    Begin VB.Label Label2
      Caption = "Hasta:"
      Left = 5340
      Top = 360
      Width = 705
      Height = 300
      TabIndex = 3
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Desde:"
      Left = 2280
      Top = 360
      Width = 765
      Height = 300
      TabIndex = 1
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
  End
  Begin VB.TextBox UlchBancTxt
    Left = 3120
    Top = 3000
    Width = 1695
    Height = 375
    TabIndex = 7
    MaxLength = 8
  End
  Begin VB.CommandButton CancelButton
    Caption = "Cancelar"
    Left = 7320
    Top = 3000
    Width = 1335
    Height = 375
    TabIndex = 9
    Cancel = -1  'True
    Tag = "6"
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton OKButton
    Caption = "Aceptar"
    Left = 5640
    Top = 3000
    Width = 1335
    Height = 375
    TabIndex = 8
    Tag = "5"
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 960
    Width = 8535
    Height = 1815
    TabIndex = 5
    OleObjectBlob = "dlgImpresionAutomaticadeCheques.frx":09A2
  End
  Begin VB.Label Label1
    Caption = "Último Número de Cheque:"
    Left = 120
    Top = 3000
    Width = 2865
    Height = 300
    TabIndex = 6
    AutoSize = -1  'True
  End
End

Attribute VB_Name = "dlgImpresionAutomaticadeCheques"


Private Sub UlchBancTxt_GotFocus() '952E00
  'Data Table: 426C70
  loc_952DEC: FLdPr Me
  loc_952DEF: VCallAd Control_ID_UlchBancTxt
  loc_952DF2: CVarAd
  loc_952DF6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952DFB: FFree1Var var_94 = ""
  loc_952DFE: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) '9B9024
  'Data Table: 426C70
  loc_9B8F7C: FLdRfVar var_88
  loc_9B8F7F: FLdPr Me
  loc_9B8F82: MemLdRfVar from_stack_1.global_52
  loc_9B8F85: NewIfNullPr clsbanco
  loc_9B8F88: from_stack_1 = clsbanco.RecordCount
  loc_9B8F8D: ILdRf var_88
  loc_9B8F90: LitI4 0
  loc_9B8F95: GtI4
  loc_9B8F96: BranchF loc_9B900A
  loc_9B8F99: FLdRfVar var_B4
  loc_9B8F9C: FLdRfVar var_A4
  loc_9B8F9F: LitVarStr var_A0, "UlchBanc"
  loc_9B8FA4: PopAdLdVar
  loc_9B8FA5: FLdRfVar var_90
  loc_9B8FA8: FLdRfVar var_8C
  loc_9B8FAB: FLdPr Me
  loc_9B8FAE: MemLdRfVar from_stack_1.global_52
  loc_9B8FB1: NewIfNullPr clsbanco
  loc_9B8FB4: from_stack_1v = clsbanco.RsFrmGet()
  loc_9B8FB9: FLdPr var_8C
  loc_9B8FBC:  = Me.Fields
  loc_9B8FC1: FLdPr var_90
  loc_9B8FC4: from_stack_2 = Me.Item(from_stack_1)
  loc_9B8FC9: FLdPr var_A4
  loc_9B8FCC:  = Me.Value
  loc_9B8FD1: FLdRfVar var_B4
  loc_9B8FD4: LitVarI2 var_C4, 1
  loc_9B8FD9: AddVar var_D4
  loc_9B8FDD: CStrVarVal var_D8
  loc_9B8FE1: FLdPr Me
  loc_9B8FE4: VCallAd Control_ID_UlchBancTxt
  loc_9B8FE7: FStAdFunc var_DC
  loc_9B8FEA: FLdPr var_DC
  loc_9B8FED: Me.Text = from_stack_1
  loc_9B8FF2: FFree1Str var_D8
  loc_9B8FF5: FFreeAd var_8C = "": var_90 = "": var_A4 = ""
  loc_9B9000: FFreeVar var_B4 = ""
  loc_9B9007: Branch loc_9B9021
  loc_9B900A: LitStr "0"
  loc_9B900D: FLdPr Me
  loc_9B9010: VCallAd Control_ID_UlchBancTxt
  loc_9B9013: FStAdFunc var_8C
  loc_9B9016: FLdPr var_8C
  loc_9B9019: Me.Text = from_stack_1
  loc_9B901E: FFree1Ad var_8C
  loc_9B9021: ExitProcHresult
End Sub

Private Sub HastaNumeOrpaMsk_UnknownEvent_0 '952E90
  'Data Table: 426C70
  loc_952E7C: FLdPr Me
  loc_952E7F: VCallAd Control_ID_HastaNumeOrpaMsk
  loc_952E82: CVarAd
  loc_952E86: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952E8B: FFree1Var var_94 = ""
  loc_952E8E: ExitProcHresult
End Sub

Private Sub HastaNumeOrpaMsk_UnknownEvent_8 '9A81D8
  'Data Table: 426C70
  loc_9A815C: FLdPr Me
  loc_9A815F: VCallAd Control_ID_HastaNumeOrpaMsk
  loc_9A8162: FStAdFunc var_88
  loc_9A8165: FLdPr var_88
  loc_9A8168: LateIdLdVar var_98 DispID_22 0
  loc_9A816F: PopAd
  loc_9A8171: LitI2_Byte 0
  loc_9A8173: LitI2_Byte 0
  loc_9A8175: FLdRfVar var_98
  loc_9A8178: CStrVarTmp
  loc_9A8179: FStStrNoPop var_9C
  loc_9A817C: LitStr "Número de Orden de Pago"
  loc_9A817F: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_9A8184: FStStrNoPop var_A0
  loc_9A8187: FLdPr Me
  loc_9A818A: MemStStrCopy
  loc_9A818E: FFreeStr var_9C = ""
  loc_9A8195: FFree1Ad var_88
  loc_9A8198: FFree1Var var_98 = ""
  loc_9A819B: FLdPr Me
  loc_9A819E: VCallAd Control_ID_HastaNumeOrpaMsk
  loc_9A81A1: FStAdFunc var_AC
  loc_9A81A4: LitNothing
  loc_9A81A6: CastAd
  loc_9A81A9: FStAdFunc var_A8
  loc_9A81AC: FLdRfVar var_A8
  loc_9A81AF: FLdZeroAd var_AC
  loc_9A81B2: FStAdFuncNoPop
  loc_9A81B5: CastAd
  loc_9A81B8: FStAdFunc var_A4
  loc_9A81BB: FLdRfVar var_A4
  loc_9A81BE: FLdPr Me
  loc_9A81C1: MemLdRfVar from_stack_1.global_56
  loc_9A81C4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9A81C9: IStI2 LastRow
  loc_9A81CC: FFreeAd var_88 = "": var_A4 = "": var_A8 = ""
  loc_9A81D7: ExitProcHresult
End Sub

Private Sub Form_Load() 'A02DB8
  'Data Table: 426C70
  loc_A02C84: LitStr "SELECT *"
  loc_A02C87: LitStr " FROM banco"
  loc_A02C8A: ConcatStr
  loc_A02C8B: FStStrNoPop var_88
  loc_A02C8E: LitStr " WHERE PeriInfo = "
  loc_A02C91: ConcatStr
  loc_A02C92: FStStrNoPop var_8C
  loc_A02C95: ImpAdLdI2 MemVar_C3D064
  loc_A02C98: CStrUI1
  loc_A02C9A: FStStrNoPop var_90
  loc_A02C9D: ConcatStr
  loc_A02C9E: FStStrNoPop var_94
  loc_A02CA1: LitStr " AND EmauCheq = 1"
  loc_A02CA4: ConcatStr
  loc_A02CA5: FStStrNoPop var_98
  loc_A02CA8: LitStr " ORDER BY CodiBanc"
  loc_A02CAB: ConcatStr
  loc_A02CAC: FStStrNoPop var_9C
  loc_A02CAF: FLdPr Me
  loc_A02CB2: MemLdRfVar from_stack_1.global_52
  loc_A02CB5: NewIfNullPr clsbanco
  loc_A02CB8: Call clsbanco.RedefineRS(from_stack_1v)
  loc_A02CBD: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A02CCC: LitI4 0
  loc_A02CD1: LitI4 1
  loc_A02CD6: FLdRfVar var_A0
  loc_A02CD9: Redim
  loc_A02CE3: FLdPr Me
  loc_A02CE6: MemLdRfVar from_stack_1.global_52
  loc_A02CE9: NewIfNullAd
  loc_A02CEC: FStAd var_A4 
  loc_A02CF0: FLdRfVar var_A4
  loc_A02CF3: CVarRef
  loc_A02CF8: ParmAry1St
  loc_A02CFE: FLdPr Me
  loc_A02D01: VCallAd Control_ID_dgdABMS
  loc_A02D04: CVarAd
  loc_A02D08: ParmAry1St
  loc_A02D0E: FLdRfVar var_A0
  loc_A02D11: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A02D16: ILdRf var_A4
  loc_A02D19: CastAd
  loc_A02D1C: FLdPr Me
  loc_A02D1F: MemStAdFunc
  loc_A02D23: FLdRfVar var_A0
  loc_A02D26: Erase
  loc_A02D27: FFree1Ad var_A4
  loc_A02D2A: FLdRfVar var_C8
  loc_A02D2D: FLdPr Me
  loc_A02D30: MemLdRfVar from_stack_1.global_52
  loc_A02D33: NewIfNullPr clsbanco
  loc_A02D36: from_stack_1 = clsbanco.RecordCount
  loc_A02D3B: ILdRf var_C8
  loc_A02D3E: LitI4 0
  loc_A02D43: GtI4
  loc_A02D44: BranchF loc_A02DB5
  loc_A02D47: FLdRfVar var_C4
  loc_A02D4A: FLdRfVar var_D0
  loc_A02D4D: LitVarStr var_B4, "UlchBanc"
  loc_A02D52: PopAdLdVar
  loc_A02D53: FLdRfVar var_CC
  loc_A02D56: FLdRfVar var_A4
  loc_A02D59: FLdPr Me
  loc_A02D5C: MemLdRfVar from_stack_1.global_52
  loc_A02D5F: NewIfNullPr clsbanco
  loc_A02D62: from_stack_1v = clsbanco.RsFrmGet()
  loc_A02D67: FLdPr var_A4
  loc_A02D6A:  = Me.Fields
  loc_A02D6F: FLdPr var_CC
  loc_A02D72: from_stack_2 = Me.Item(from_stack_1)
  loc_A02D77: FLdPr var_D0
  loc_A02D7A:  = Me.Value
  loc_A02D7F: FLdRfVar var_C4
  loc_A02D82: LitVarI2 var_E0, 1
  loc_A02D87: AddVar var_F0
  loc_A02D8B: CStrVarVal var_88
  loc_A02D8F: FLdPr Me
  loc_A02D92: VCallAd Control_ID_UlchBancTxt
  loc_A02D95: FStAdFunc var_F4
  loc_A02D98: FLdPr var_F4
  loc_A02D9B: Me.Text = from_stack_1
  loc_A02DA0: FFree1Str var_88
  loc_A02DA3: FFreeAd var_A4 = "": var_CC = "": var_D0 = ""
  loc_A02DAE: FFreeVar var_C4 = ""
  loc_A02DB5: ExitProcHresult
  loc_A02DB6: FLdPr var_7F0
End Sub

Private Sub DesdeNumeOrpaMsk_UnknownEvent_0 '952ED8
  'Data Table: 426C70
  loc_952EC4: FLdPr Me
  loc_952EC7: VCallAd Control_ID_DesdeNumeOrpaMsk
  loc_952ECA: CVarAd
  loc_952ECE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952ED3: FFree1Var var_94 = ""
  loc_952ED6: ExitProcHresult
End Sub

Private Function DesdeNumeOrpaMsk_UnknownEvent_8(arg_C) '9A76E8
  'Data Table: 426C70
  loc_9A766C: FLdPr Me
  loc_9A766F: VCallAd Control_ID_DesdeNumeOrpaMsk
  loc_9A7672: FStAdFunc var_88
  loc_9A7675: FLdPr var_88
  loc_9A7678: LateIdLdVar var_98 DispID_22 0
  loc_9A767F: PopAd
  loc_9A7681: LitI2_Byte 0
  loc_9A7683: LitI2_Byte 0
  loc_9A7685: FLdRfVar var_98
  loc_9A7688: CStrVarTmp
  loc_9A7689: FStStrNoPop var_9C
  loc_9A768C: LitStr "Número de Orden de Pago"
  loc_9A768F: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_9A7694: FStStrNoPop var_A0
  loc_9A7697: FLdPr Me
  loc_9A769A: MemStStrCopy
  loc_9A769E: FFreeStr var_9C = ""
  loc_9A76A5: FFree1Ad var_88
  loc_9A76A8: FFree1Var var_98 = ""
  loc_9A76AB: FLdPr Me
  loc_9A76AE: VCallAd Control_ID_DesdeNumeOrpaMsk
  loc_9A76B1: FStAdFunc var_AC
  loc_9A76B4: LitNothing
  loc_9A76B6: CastAd
  loc_9A76B9: FStAdFunc var_A8
  loc_9A76BC: FLdRfVar var_A8
  loc_9A76BF: FLdZeroAd var_AC
  loc_9A76C2: FStAdFuncNoPop
  loc_9A76C5: CastAd
  loc_9A76C8: FStAdFunc var_A4
  loc_9A76CB: FLdRfVar var_A4
  loc_9A76CE: FLdPr Me
  loc_9A76D1: MemLdRfVar from_stack_1.global_56
  loc_9A76D4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9A76D9: IStI2 arg_C
  loc_9A76DC: FFreeAd var_88 = "": var_A4 = "": var_A8 = ""
  loc_9A76E7: ExitProcHresult
End Function

Private Sub OKButton_Click() 'ABE0F4
  'Data Table: 426C70
  loc_ABDB48: FLdRfVar var_B0
  loc_ABDB4B: FLdRfVar var_A0
  loc_ABDB4E: LitVarStr var_9C, "ProcBanc"
  loc_ABDB53: PopAdLdVar
  loc_ABDB54: FLdRfVar var_8C
  loc_ABDB57: FLdRfVar var_88
  loc_ABDB5A: FLdPr Me
  loc_ABDB5D: MemLdRfVar from_stack_1.global_52
  loc_ABDB60: NewIfNullPr clsbanco
  loc_ABDB63: from_stack_1v = clsbanco.RsFrmGet()
  loc_ABDB68: FLdPr var_88
  loc_ABDB6B:  = Me.Fields
  loc_ABDB70: FLdPr var_8C
  loc_ABDB73: from_stack_2 = Me.Item(from_stack_1)
  loc_ABDB78: FLdPr var_A0
  loc_ABDB7B:  = Me.Value
  loc_ABDB80: FLdRfVar var_B0
  loc_ABDB83: FStVar var_C0
  loc_ABDB87: FFreeAd var_88 = "": var_8C = ""
  loc_ABDB90: FLdRfVar var_C0
  loc_ABDB93: LitVarStr var_9C, "NACION"
  loc_ABDB98: HardType
  loc_ABDB99: EqVarBool
  loc_ABDB9B: BranchF loc_ABDD96
  loc_ABDB9E: LitStr "Municipalidad de Guaymallén"
  loc_ABDBA1: LitStr "Municipalidad de San Carlos"
  loc_ABDBA4: EqStr
  loc_ABDBA6: BranchF loc_ABDCFC
  loc_ABDBA9: LitStr "HASAR cheque"
  loc_ABDBAC: LitStr "EPSON LX-350"
  loc_ABDBAF: EqStr
  loc_ABDBB1: BranchF loc_ABDC4E
  loc_ABDBB4: FLdRfVar var_E8
  loc_ABDBB7: FLdRfVar var_A0
  loc_ABDBBA: LitVarStr var_9C, "CodiBanc"
  loc_ABDBBF: PopAdLdVar
  loc_ABDBC0: FLdRfVar var_8C
  loc_ABDBC3: FLdRfVar var_88
  loc_ABDBC6: FLdPr Me
  loc_ABDBC9: MemLdRfVar from_stack_1.global_52
  loc_ABDBCC: NewIfNullPr clsbanco
  loc_ABDBCF: from_stack_1v = clsbanco.RsFrmGet()
  loc_ABDBD4: FLdPr var_88
  loc_ABDBD7:  = Me.Fields
  loc_ABDBDC: FLdPr var_8C
  loc_ABDBDF: from_stack_2 = Me.Item(from_stack_1)
  loc_ABDBE4: FLdPr var_A0
  loc_ABDBE7:  = Me.Value
  loc_ABDBEC: FLdPr Me
  loc_ABDBEF: VCallAd Control_ID_DesdeNumeOrpaMsk
  loc_ABDBF2: FStAdFunc var_C4
  loc_ABDBF5: FLdPr var_C4
  loc_ABDBF8: LateIdLdVar var_B0 DispID_22 0
  loc_ABDBFF: PopAd
  loc_ABDC01: FLdPr Me
  loc_ABDC04: VCallAd Control_ID_HastaNumeOrpaMsk
  loc_ABDC07: FStAdFunc var_C8
  loc_ABDC0A: FLdPr var_C8
  loc_ABDC0D: LateIdLdVar var_D8 DispID_22 0
  loc_ABDC14: CStrVarTmp
  loc_ABDC15: FStStrNoPop var_F0
  loc_ABDC18: CI4Str
  loc_ABDC19: FLdRfVar var_B0
  loc_ABDC1C: CStrVarTmp
  loc_ABDC1D: FStStrNoPop var_EC
  loc_ABDC20: CI4Str
  loc_ABDC21: ImpAdLdI2 MemVar_C3D064
  loc_ABDC24: FLdRfVar var_E8
  loc_ABDC27: CI4Var
  loc_ABDC29: ImpAdCallFPR4 Proc_260_1_AFCDAC(, , , )
  loc_ABDC2E: FFreeStr var_EC = ""
  loc_ABDC35: FFreeAd var_88 = "": var_8C = "": var_C4 = "": var_C8 = ""
  loc_ABDC42: FFreeVar var_B0 = "": var_D8 = ""
  loc_ABDC4B: Branch loc_ABDCF9
  loc_ABDC4E: LitStr "HASAR cheque"
  loc_ABDC51: LitStr "Brother HL1200"
  loc_ABDC54: EqStr
  loc_ABDC56: LitStr "HASAR cheque"
  loc_ABDC59: LitStr "PDFCreator"
  loc_ABDC5C: EqStr
  loc_ABDC5E: OrI4
  loc_ABDC5F: BranchF loc_ABDCF9
  loc_ABDC62: FLdRfVar var_E8
  loc_ABDC65: FLdRfVar var_A0
  loc_ABDC68: LitVarStr var_9C, "CodiBanc"
  loc_ABDC6D: PopAdLdVar
  loc_ABDC6E: FLdRfVar var_8C
  loc_ABDC71: FLdRfVar var_88
  loc_ABDC74: FLdPr Me
  loc_ABDC77: MemLdRfVar from_stack_1.global_52
  loc_ABDC7A: NewIfNullPr clsbanco
  loc_ABDC7D: from_stack_1v = clsbanco.RsFrmGet()
  loc_ABDC82: FLdPr var_88
  loc_ABDC85:  = Me.Fields
  loc_ABDC8A: FLdPr var_8C
  loc_ABDC8D: from_stack_2 = Me.Item(from_stack_1)
  loc_ABDC92: FLdPr var_A0
  loc_ABDC95:  = Me.Value
  loc_ABDC9A: FLdPr Me
  loc_ABDC9D: VCallAd Control_ID_DesdeNumeOrpaMsk
  loc_ABDCA0: FStAdFunc var_C4
  loc_ABDCA3: FLdPr var_C4
  loc_ABDCA6: LateIdLdVar var_B0 DispID_22 0
  loc_ABDCAD: PopAd
  loc_ABDCAF: FLdPr Me
  loc_ABDCB2: VCallAd Control_ID_HastaNumeOrpaMsk
  loc_ABDCB5: FStAdFunc var_C8
  loc_ABDCB8: FLdPr var_C8
  loc_ABDCBB: LateIdLdVar var_D8 DispID_22 0
  loc_ABDCC2: CStrVarTmp
  loc_ABDCC3: FStStrNoPop var_F0
  loc_ABDCC6: CI4Str
  loc_ABDCC7: FLdRfVar var_B0
  loc_ABDCCA: CStrVarTmp
  loc_ABDCCB: FStStrNoPop var_EC
  loc_ABDCCE: CI4Str
  loc_ABDCCF: ImpAdLdI2 MemVar_C3D064
  loc_ABDCD2: FLdRfVar var_E8
  loc_ABDCD5: CI4Var
  loc_ABDCD7: ImpAdCallFPR4 Proc_260_4_AFDD78(, , , )
  loc_ABDCDC: FFreeStr var_EC = ""
  loc_ABDCE3: FFreeAd var_88 = "": var_8C = "": var_C4 = "": var_C8 = ""
  loc_ABDCF0: FFreeVar var_B0 = "": var_D8 = ""
  loc_ABDCF9: Branch loc_ABDD93
  loc_ABDCFC: FLdRfVar var_E8
  loc_ABDCFF: FLdRfVar var_A0
  loc_ABDD02: LitVarStr var_9C, "CodiBanc"
  loc_ABDD07: PopAdLdVar
  loc_ABDD08: FLdRfVar var_8C
  loc_ABDD0B: FLdRfVar var_88
  loc_ABDD0E: FLdPr Me
  loc_ABDD11: MemLdRfVar from_stack_1.global_52
  loc_ABDD14: NewIfNullPr clsbanco
  loc_ABDD17: from_stack_1v = clsbanco.RsFrmGet()
  loc_ABDD1C: FLdPr var_88
  loc_ABDD1F:  = Me.Fields
  loc_ABDD24: FLdPr var_8C
  loc_ABDD27: from_stack_2 = Me.Item(from_stack_1)
  loc_ABDD2C: FLdPr var_A0
  loc_ABDD2F:  = Me.Value
  loc_ABDD34: FLdPr Me
  loc_ABDD37: VCallAd Control_ID_DesdeNumeOrpaMsk
  loc_ABDD3A: FStAdFunc var_C4
  loc_ABDD3D: FLdPr var_C4
  loc_ABDD40: LateIdLdVar var_B0 DispID_22 0
  loc_ABDD47: PopAd
  loc_ABDD49: FLdPr Me
  loc_ABDD4C: VCallAd Control_ID_HastaNumeOrpaMsk
  loc_ABDD4F: FStAdFunc var_C8
  loc_ABDD52: FLdPr var_C8
  loc_ABDD55: LateIdLdVar var_D8 DispID_22 0
  loc_ABDD5C: CStrVarTmp
  loc_ABDD5D: FStStrNoPop var_F0
  loc_ABDD60: CI4Str
  loc_ABDD61: FLdRfVar var_B0
  loc_ABDD64: CStrVarTmp
  loc_ABDD65: FStStrNoPop var_EC
  loc_ABDD68: CI4Str
  loc_ABDD69: ImpAdLdI2 MemVar_C3D064
  loc_ABDD6C: FLdRfVar var_E8
  loc_ABDD6F: CI4Var
  loc_ABDD71: ImpAdCallFPR4 Proc_260_1_AFCDAC(, , , )
  loc_ABDD76: FFreeStr var_EC = ""
  loc_ABDD7D: FFreeAd var_88 = "": var_8C = "": var_C4 = "": var_C8 = ""
  loc_ABDD8A: FFreeVar var_B0 = "": var_D8 = ""
  loc_ABDD93: Branch loc_ABE0DB
  loc_ABDD96: FLdRfVar var_C0
  loc_ABDD99: LitVarStr var_9C, "SUPERVIELLE"
  loc_ABDD9E: HardType
  loc_ABDD9F: EqVarBool
  loc_ABDDA1: BranchF loc_ABDE3E
  loc_ABDDA4: FLdRfVar var_E8
  loc_ABDDA7: FLdRfVar var_A0
  loc_ABDDAA: LitVarStr var_9C, "CodiBanc"
  loc_ABDDAF: PopAdLdVar
  loc_ABDDB0: FLdRfVar var_8C
  loc_ABDDB3: FLdRfVar var_88
  loc_ABDDB6: FLdPr Me
  loc_ABDDB9: MemLdRfVar from_stack_1.global_52
  loc_ABDDBC: NewIfNullPr clsbanco
  loc_ABDDBF: from_stack_1v = clsbanco.RsFrmGet()
  loc_ABDDC4: FLdPr var_88
  loc_ABDDC7:  = Me.Fields
  loc_ABDDCC: FLdPr var_8C
  loc_ABDDCF: from_stack_2 = Me.Item(from_stack_1)
  loc_ABDDD4: FLdPr var_A0
  loc_ABDDD7:  = Me.Value
  loc_ABDDDC: FLdPr Me
  loc_ABDDDF: VCallAd Control_ID_DesdeNumeOrpaMsk
  loc_ABDDE2: FStAdFunc var_C4
  loc_ABDDE5: FLdPr var_C4
  loc_ABDDE8: LateIdLdVar var_B0 DispID_22 0
  loc_ABDDEF: PopAd
  loc_ABDDF1: FLdPr Me
  loc_ABDDF4: VCallAd Control_ID_HastaNumeOrpaMsk
  loc_ABDDF7: FStAdFunc var_C8
  loc_ABDDFA: FLdPr var_C8
  loc_ABDDFD: LateIdLdVar var_D8 DispID_22 0
  loc_ABDE04: CStrVarTmp
  loc_ABDE05: FStStrNoPop var_F0
  loc_ABDE08: CI4Str
  loc_ABDE09: FLdRfVar var_B0
  loc_ABDE0C: CStrVarTmp
  loc_ABDE0D: FStStrNoPop var_EC
  loc_ABDE10: CI4Str
  loc_ABDE11: ImpAdLdI2 MemVar_C3D064
  loc_ABDE14: FLdRfVar var_E8
  loc_ABDE17: CI4Var
  loc_ABDE19: ImpAdCallFPR4 Proc_260_2_AEAAF8(, , , )
  loc_ABDE1E: FFreeStr var_EC = ""
  loc_ABDE25: FFreeAd var_88 = "": var_8C = "": var_C4 = "": var_C8 = ""
  loc_ABDE32: FFreeVar var_B0 = "": var_D8 = ""
  loc_ABDE3B: Branch loc_ABE0DB
  loc_ABDE3E: FLdRfVar var_C0
  loc_ABDE41: LitVarStr var_9C, "SantanderRio"
  loc_ABDE46: HardType
  loc_ABDE47: EqVarBool
  loc_ABDE49: BranchF loc_ABDEE6
  loc_ABDE4C: FLdRfVar var_E8
  loc_ABDE4F: FLdRfVar var_A0
  loc_ABDE52: LitVarStr var_9C, "CodiBanc"
  loc_ABDE57: PopAdLdVar
  loc_ABDE58: FLdRfVar var_8C
  loc_ABDE5B: FLdRfVar var_88
  loc_ABDE5E: FLdPr Me
  loc_ABDE61: MemLdRfVar from_stack_1.global_52
  loc_ABDE64: NewIfNullPr clsbanco
  loc_ABDE67: from_stack_1v = clsbanco.RsFrmGet()
  loc_ABDE6C: FLdPr var_88
  loc_ABDE6F:  = Me.Fields
  loc_ABDE74: FLdPr var_8C
  loc_ABDE77: from_stack_2 = Me.Item(from_stack_1)
  loc_ABDE7C: FLdPr var_A0
  loc_ABDE7F:  = Me.Value
  loc_ABDE84: FLdPr Me
  loc_ABDE87: VCallAd Control_ID_DesdeNumeOrpaMsk
  loc_ABDE8A: FStAdFunc var_C4
  loc_ABDE8D: FLdPr var_C4
  loc_ABDE90: LateIdLdVar var_B0 DispID_22 0
  loc_ABDE97: PopAd
  loc_ABDE99: FLdPr Me
  loc_ABDE9C: VCallAd Control_ID_HastaNumeOrpaMsk
  loc_ABDE9F: FStAdFunc var_C8
  loc_ABDEA2: FLdPr var_C8
  loc_ABDEA5: LateIdLdVar var_D8 DispID_22 0
  loc_ABDEAC: CStrVarTmp
  loc_ABDEAD: FStStrNoPop var_F0
  loc_ABDEB0: CI4Str
  loc_ABDEB1: FLdRfVar var_B0
  loc_ABDEB4: CStrVarTmp
  loc_ABDEB5: FStStrNoPop var_EC
  loc_ABDEB8: CI4Str
  loc_ABDEB9: ImpAdLdI2 MemVar_C3D064
  loc_ABDEBC: FLdRfVar var_E8
  loc_ABDEBF: CI4Var
  loc_ABDEC1: ImpAdCallFPR4 Proc_260_3_93F914(, , , )
  loc_ABDEC6: FFreeStr var_EC = ""
  loc_ABDECD: FFreeAd var_88 = "": var_8C = "": var_C4 = "": var_C8 = ""
  loc_ABDEDA: FFreeVar var_B0 = "": var_D8 = ""
  loc_ABDEE3: Branch loc_ABE0DB
  loc_ABDEE6: FLdRfVar var_C0
  loc_ABDEE9: LitVarStr var_9C, "CREDICOOP"
  loc_ABDEEE: HardType
  loc_ABDEEF: EqVarBool
  loc_ABDEF1: BranchF loc_ABDF8E
  loc_ABDEF4: FLdRfVar var_E8
  loc_ABDEF7: FLdRfVar var_A0
  loc_ABDEFA: LitVarStr var_9C, "CodiBanc"
  loc_ABDEFF: PopAdLdVar
  loc_ABDF00: FLdRfVar var_8C
  loc_ABDF03: FLdRfVar var_88
  loc_ABDF06: FLdPr Me
  loc_ABDF09: MemLdRfVar from_stack_1.global_52
  loc_ABDF0C: NewIfNullPr clsbanco
  loc_ABDF0F: from_stack_1v = clsbanco.RsFrmGet()
  loc_ABDF14: FLdPr var_88
  loc_ABDF17:  = Me.Fields
  loc_ABDF1C: FLdPr var_8C
  loc_ABDF1F: from_stack_2 = Me.Item(from_stack_1)
  loc_ABDF24: FLdPr var_A0
  loc_ABDF27:  = Me.Value
  loc_ABDF2C: FLdPr Me
  loc_ABDF2F: VCallAd Control_ID_DesdeNumeOrpaMsk
  loc_ABDF32: FStAdFunc var_C4
  loc_ABDF35: FLdPr var_C4
  loc_ABDF38: LateIdLdVar var_B0 DispID_22 0
  loc_ABDF3F: PopAd
  loc_ABDF41: FLdPr Me
  loc_ABDF44: VCallAd Control_ID_HastaNumeOrpaMsk
  loc_ABDF47: FStAdFunc var_C8
  loc_ABDF4A: FLdPr var_C8
  loc_ABDF4D: LateIdLdVar var_D8 DispID_22 0
  loc_ABDF54: CStrVarTmp
  loc_ABDF55: FStStrNoPop var_F0
  loc_ABDF58: CI4Str
  loc_ABDF59: FLdRfVar var_B0
  loc_ABDF5C: CStrVarTmp
  loc_ABDF5D: FStStrNoPop var_EC
  loc_ABDF60: CI4Str
  loc_ABDF61: ImpAdLdI2 MemVar_C3D064
  loc_ABDF64: FLdRfVar var_E8
  loc_ABDF67: CI4Var
  loc_ABDF69: ImpAdCallFPR4 Proc_260_4_AFDD78(, , , )
  loc_ABDF6E: FFreeStr var_EC = ""
  loc_ABDF75: FFreeAd var_88 = "": var_8C = "": var_C4 = "": var_C8 = ""
  loc_ABDF82: FFreeVar var_B0 = "": var_D8 = ""
  loc_ABDF8B: Branch loc_ABE0DB
  loc_ABDF8E: FLdRfVar var_C0
  loc_ABDF91: LitVarStr var_9C, "CREDICOOP_DIFERIDO"
  loc_ABDF96: HardType
  loc_ABDF97: EqVarBool
  loc_ABDF99: BranchF loc_ABE036
  loc_ABDF9C: FLdRfVar var_E8
  loc_ABDF9F: FLdRfVar var_A0
  loc_ABDFA2: LitVarStr var_9C, "CodiBanc"
  loc_ABDFA7: PopAdLdVar
  loc_ABDFA8: FLdRfVar var_8C
  loc_ABDFAB: FLdRfVar var_88
  loc_ABDFAE: FLdPr Me
  loc_ABDFB1: MemLdRfVar from_stack_1.global_52
  loc_ABDFB4: NewIfNullPr clsbanco
  loc_ABDFB7: from_stack_1v = clsbanco.RsFrmGet()
  loc_ABDFBC: FLdPr var_88
  loc_ABDFBF:  = Me.Fields
  loc_ABDFC4: FLdPr var_8C
  loc_ABDFC7: from_stack_2 = Me.Item(from_stack_1)
  loc_ABDFCC: FLdPr var_A0
  loc_ABDFCF:  = Me.Value
  loc_ABDFD4: FLdPr Me
  loc_ABDFD7: VCallAd Control_ID_DesdeNumeOrpaMsk
  loc_ABDFDA: FStAdFunc var_C4
  loc_ABDFDD: FLdPr var_C4
  loc_ABDFE0: LateIdLdVar var_B0 DispID_22 0
  loc_ABDFE7: PopAd
  loc_ABDFE9: FLdPr Me
  loc_ABDFEC: VCallAd Control_ID_HastaNumeOrpaMsk
  loc_ABDFEF: FStAdFunc var_C8
  loc_ABDFF2: FLdPr var_C8
  loc_ABDFF5: LateIdLdVar var_D8 DispID_22 0
  loc_ABDFFC: CStrVarTmp
  loc_ABDFFD: FStStrNoPop var_F0
  loc_ABE000: CI4Str
  loc_ABE001: FLdRfVar var_B0
  loc_ABE004: CStrVarTmp
  loc_ABE005: FStStrNoPop var_EC
  loc_ABE008: CI4Str
  loc_ABE009: ImpAdLdI2 MemVar_C3D064
  loc_ABE00C: FLdRfVar var_E8
  loc_ABE00F: CI4Var
  loc_ABE011: ImpAdCallFPR4 Proc_260_5_B2A2F0(, , , )
  loc_ABE016: FFreeStr var_EC = ""
  loc_ABE01D: FFreeAd var_88 = "": var_8C = "": var_C4 = "": var_C8 = ""
  loc_ABE02A: FFreeVar var_B0 = "": var_D8 = ""
  loc_ABE033: Branch loc_ABE0DB
  loc_ABE036: FLdRfVar var_C0
  loc_ABE039: LitVarStr var_9C, "HSBC"
  loc_ABE03E: HardType
  loc_ABE03F: EqVarBool
  loc_ABE041: BranchF loc_ABE0DB
  loc_ABE044: FLdRfVar var_E8
  loc_ABE047: FLdRfVar var_A0
  loc_ABE04A: LitVarStr var_9C, "CodiBanc"
  loc_ABE04F: PopAdLdVar
  loc_ABE050: FLdRfVar var_8C
  loc_ABE053: FLdRfVar var_88
  loc_ABE056: FLdPr Me
  loc_ABE059: MemLdRfVar from_stack_1.global_52
  loc_ABE05C: NewIfNullPr clsbanco
  loc_ABE05F: from_stack_1v = clsbanco.RsFrmGet()
  loc_ABE064: FLdPr var_88
  loc_ABE067:  = Me.Fields
  loc_ABE06C: FLdPr var_8C
  loc_ABE06F: from_stack_2 = Me.Item(from_stack_1)
  loc_ABE074: FLdPr var_A0
  loc_ABE077:  = Me.Value
  loc_ABE07C: FLdPr Me
  loc_ABE07F: VCallAd Control_ID_DesdeNumeOrpaMsk
  loc_ABE082: FStAdFunc var_C4
  loc_ABE085: FLdPr var_C4
  loc_ABE088: LateIdLdVar var_B0 DispID_22 0
  loc_ABE08F: PopAd
  loc_ABE091: FLdPr Me
  loc_ABE094: VCallAd Control_ID_HastaNumeOrpaMsk
  loc_ABE097: FStAdFunc var_C8
  loc_ABE09A: FLdPr var_C8
  loc_ABE09D: LateIdLdVar var_D8 DispID_22 0
  loc_ABE0A4: CStrVarTmp
  loc_ABE0A5: FStStrNoPop var_F0
  loc_ABE0A8: CI4Str
  loc_ABE0A9: FLdRfVar var_B0
  loc_ABE0AC: CStrVarTmp
  loc_ABE0AD: FStStrNoPop var_EC
  loc_ABE0B0: CI4Str
  loc_ABE0B1: ImpAdLdI2 MemVar_C3D064
  loc_ABE0B4: FLdRfVar var_E8
  loc_ABE0B7: CI4Var
  loc_ABE0B9: ImpAdCallFPR4 Proc_260_6_93F810(, , , )
  loc_ABE0BE: FFreeStr var_EC = ""
  loc_ABE0C5: FFreeAd var_88 = "": var_8C = "": var_C4 = "": var_C8 = ""
  loc_ABE0D2: FFreeVar var_B0 = "": var_D8 = ""
  loc_ABE0DB: ILdRf Me
  loc_ABE0DE: FStAdNoPop
  loc_ABE0E2: ImpAdLdRf MemVar_C44F9C
  loc_ABE0E5: NewIfNullPr Me
  loc_ABE0E8: Me.Global.Unload from_stack_1
  loc_ABE0ED: FFree1Ad var_88
  loc_ABE0F0: ExitProcHresult
  loc_ABE0F1: FLdPr var_AC
End Sub

Private Sub CancelButton_Click() '953C88
  'Data Table: 426C70
  loc_953C70: ILdRf Me
  loc_953C73: FStAdNoPop
  loc_953C77: ImpAdLdRf MemVar_C44F9C
  loc_953C7A: NewIfNullPr Me
  loc_953C7D: Me.Global.Unload from_stack_1
  loc_953C82: FFree1Ad var_88
  loc_953C85: ExitProcHresult
End Sub
