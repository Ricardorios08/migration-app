VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResumendeImputacionesporInsumo
  Caption = "Resumen de Imputaciones por Insumo"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResumendeImputacionesporInsumo.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 3375
  ClientTop = 1185
  ClientWidth = 9225
  ClientHeight = 5760
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5505
    Width = 9225
    Height = 255
    TabIndex = 27
    OleObjectBlob = "rptResumendeImputacionesporInsumo.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7800
    Top = 4560
    Width = 735
    Height = 615
    TabIndex = 24
    Cancel = -1  'True
    Picture = "rptResumendeImputacionesporInsumo.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResumendeImputacionesporInsumo.frx":0B9C
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 4320
    Width = 1815
    Height = 1095
    TabIndex = 25
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 21
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 4320
    Width = 3015
    Height = 1095
    TabIndex = 22
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 20
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 19
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9015
    Height = 4215
    TabIndex = 0
    Begin VB.CommandButton CodiUngaCmd
      Left = 2400
      Top = 3120
      Width = 375
      Height = 375
      Enabled = 0   'False
      TabIndex = 16
      Picture = "rptResumendeImputacionesporInsumo.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdCodiPart
      Left = 2985
      Top = 2160
      Width = 375
      Height = 375
      TabIndex = 12
      Picture = "rptResumendeImputacionesporInsumo.frx":0CFA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdCodiOrga
      Left = 2745
      Top = 2640
      Width = 375
      Height = 375
      TabIndex = 14
      Picture = "rptResumendeImputacionesporInsumo.frx":0DF4
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdCodiFifu
      Left = 3105
      Top = 3600
      Width = 375
      Height = 375
      TabIndex = 18
      Picture = "rptResumendeImputacionesporInsumo.frx":0EEE
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdCodiInsu
      Left = 3120
      Top = 1680
      Width = 375
      Height = 375
      TabIndex = 10
      Picture = "rptResumendeImputacionesporInsumo.frx":0FE8
      Style = 1
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1680
      Top = 240
      Width = 1095
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdCalHasta
      Left = 2880
      Top = 1200
      Width = 375
      Height = 375
      TabIndex = 8
      Picture = "rptResumendeImputacionesporInsumo.frx":10E2
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2880
      Top = 720
      Width = 375
      Height = 375
      TabIndex = 5
      Picture = "rptResumendeImputacionesporInsumo.frx":1624
      Style = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7440
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 23
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1680
      Top = 720
      Width = 1095
      Height = 285
      TabIndex = 4
      OleObjectBlob = "rptResumendeImputacionesporInsumo.frx":1B66
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1680
      Top = 1200
      Width = 1095
      Height = 285
      TabIndex = 7
      OleObjectBlob = "rptResumendeImputacionesporInsumo.frx":1BEE
    End
    Begin MSMask.MaskEdBox CodiInsuMsk
      Left = 1680
      Top = 1680
      Width = 1335
      Height = 285
      TabIndex = 9
      OleObjectBlob = "rptResumendeImputacionesporInsumo.frx":1C76
    End
    Begin MSMask.MaskEdBox CodiFifuMsk
      Left = 1665
      Top = 3600
      Width = 1335
      Height = 315
      TabIndex = 17
      OleObjectBlob = "rptResumendeImputacionesporInsumo.frx":1CE6
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 1665
      Top = 2640
      Width = 975
      Height = 315
      TabIndex = 13
      OleObjectBlob = "rptResumendeImputacionesporInsumo.frx":1D46
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 1665
      Top = 2160
      Width = 1215
      Height = 285
      TabIndex = 11
      OleObjectBlob = "rptResumendeImputacionesporInsumo.frx":1DA6
    End
    Begin MSMask.MaskEdBox CodiUngaMsk
      Left = 1665
      Top = 3120
      Width = 600
      Height = 315
      TabIndex = 15
      OleObjectBlob = "rptResumendeImputacionesporInsumo.frx":1E2E
      DataField = "CodiUnga"
    End
    Begin VB.Label DetaUngaLbl
      Left = 2865
      Top = 3120
      Width = 6015
      Height = 375
      TabIndex = 37
      BorderStyle = 1 'Fixed Single
      DataField = "DetaUnga"
    End
    Begin VB.Label Label16
      Caption = "Unidad de Gasto:"
      Left = 285
      Top = 3120
      Width = 1245
      Height = 195
      TabIndex = 36
    End
    Begin VB.Label Label5
      Caption = "Partida:"
      Left = 960
      Top = 2160
      Width = 540
      Height = 195
      TabIndex = 35
    End
    Begin VB.Label Label4
      Caption = "Organigrama:"
      Left = 585
      Top = 2640
      Width = 945
      Height = 195
      TabIndex = 34
    End
    Begin VB.Label Label17
      Caption = "Finalidad-Función:"
      Left = 240
      Top = 3600
      Width = 1290
      Height = 195
      TabIndex = 33
    End
    Begin VB.Label CodiPartLbl
      Left = 3465
      Top = 2160
      Width = 5415
      Height = 375
      TabIndex = 32
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label CodiOrgaLbl
      Left = 3225
      Top = 2640
      Width = 5655
      Height = 375
      TabIndex = 31
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label CodiFifuLbl
      Left = 3585
      Top = 3600
      Width = 5295
      Height = 375
      TabIndex = 30
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label6
      Caption = "Insumo:"
      Left = 960
      Top = 1680
      Width = 615
      Height = 315
      TabIndex = 29
    End
    Begin VB.Label CodiInsuLbl
      Left = 3600
      Top = 1680
      Width = 2895
      Height = 375
      TabIndex = 28
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 960
      Top = 240
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Hasta:"
      Left = 1080
      Top = 1200
      Width = 465
      Height = 195
      TabIndex = 6
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Desde:"
      Left = 1035
      Top = 720
      Width = 510
      Height = 195
      TabIndex = 3
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7920
    Top = 4920
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 26
    OleObjectBlob = "rptResumendeImputacionesporInsumo.frx":1EBE
  End
End

Attribute VB_Name = "rptResumendeImputacionesporInsumo"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_00606360
  bStruc(4) As Byte ' String fields: 1
End Type

Private Type UDT_2_00606AF4
  bStruc(44) As Byte ' String fields: 5
End Type

Private Type UDT_3_00606B68
  bStruc(44) As Byte ' String fields: 5
End Type

Private Type UDT_4_00606BDC
  bStruc(48) As Byte ' String fields: 5
End Type

Private Type UDT_5_00606C50
  bStruc(48) As Byte ' String fields: 5
End Type


Private Sub cmdCodiPart_Click() '9F6CC8
  'Data Table: 4D5204
  loc_9F6B98: LitNothing
  loc_9F6B9A: CastAd
  loc_9F6B9D: FStAdFuncNoPop
  loc_9F6BA0: ImpAdLdRf MemVar_C3D724
  loc_9F6BA3: NewIfNullPr bscPartida
  loc_9F6BA6: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_9F6BAB: FFree1Ad var_88
  loc_9F6BAE: LitVar_Missing var_A8
  loc_9F6BB1: PopAdLdVar
  loc_9F6BB2: LitVarI4
  loc_9F6BBA: PopAdLdVar
  loc_9F6BBB: ImpAdLdRf MemVar_C3D724
  loc_9F6BBE: NewIfNullPr bscPartida
  loc_9F6BC1: bscPartida.Show from_stack_1, from_stack_2
  loc_9F6BC6: FLdRfVar var_AC
  loc_9F6BC9: FLdRfVar var_88
  loc_9F6BCC: ImpAdLdRf MemVar_C3D724
  loc_9F6BCF: NewIfNullPr bscPartida
  loc_9F6BD2: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F6BD7: FLdPr var_88
  loc_9F6BDA: from_stack_1 = clsbase.RecordCount
  loc_9F6BDF: ILdRf var_AC
  loc_9F6BE2: LitI4 0
  loc_9F6BE7: GtI4
  loc_9F6BE8: FFree1Ad var_88
  loc_9F6BEB: BranchF loc_9F6CC6
  loc_9F6BEE: FLdRfVar var_C8
  loc_9F6BF1: FLdRfVar var_B8
  loc_9F6BF4: LitVarStr var_98, "CodiPart"
  loc_9F6BF9: PopAdLdVar
  loc_9F6BFA: FLdRfVar var_B4
  loc_9F6BFD: FLdRfVar var_B0
  loc_9F6C00: FLdRfVar var_88
  loc_9F6C03: ImpAdLdRf MemVar_C3D724
  loc_9F6C06: NewIfNullPr bscPartida
  loc_9F6C09: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F6C0E: FLdPr var_88
  loc_9F6C11: from_stack_1v = clsbase.RsFrmGet()
  loc_9F6C16: FLdPr var_B0
  loc_9F6C19:  = Me.Fields
  loc_9F6C1E: FLdPr var_B4
  loc_9F6C21: from_stack_2 = Me.Item(from_stack_1)
  loc_9F6C26: FLdPr var_B8
  loc_9F6C29:  = Me.Value
  loc_9F6C2E: FLdRfVar var_C8
  loc_9F6C31: CStrVarTmp
  loc_9F6C32: CVarStr var_D8
  loc_9F6C35: PopAdLdVar
  loc_9F6C36: FLdPr Me
  loc_9F6C39: VCallAd Control_ID_CodiPartMsk
  loc_9F6C3C: FStAdFunc var_DC
  loc_9F6C3F: FLdPr var_DC
  loc_9F6C42: LateIdSt
  loc_9F6C47: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F6C54: FFreeVar var_C8 = ""
  loc_9F6C5B: FLdRfVar var_C8
  loc_9F6C5E: FLdRfVar var_B8
  loc_9F6C61: LitVarStr var_98, "DetaPart"
  loc_9F6C66: PopAdLdVar
  loc_9F6C67: FLdRfVar var_B4
  loc_9F6C6A: FLdRfVar var_B0
  loc_9F6C6D: FLdRfVar var_88
  loc_9F6C70: ImpAdLdRf MemVar_C3D724
  loc_9F6C73: NewIfNullPr bscPartida
  loc_9F6C76: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F6C7B: FLdPr var_88
  loc_9F6C7E: from_stack_1v = clsbase.RsFrmGet()
  loc_9F6C83: FLdPr var_B0
  loc_9F6C86:  = Me.Fields
  loc_9F6C8B: FLdPr var_B4
  loc_9F6C8E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F6C93: FLdPr var_B8
  loc_9F6C96:  = Me.Value
  loc_9F6C9B: FLdRfVar var_C8
  loc_9F6C9E: CStrVarTmp
  loc_9F6C9F: FStStrNoPop var_E0
  loc_9F6CA2: FLdPr Me
  loc_9F6CA5: VCallAd Control_ID_CodiPartLbl
  loc_9F6CA8: FStAdFunc var_DC
  loc_9F6CAB: FLdPr var_DC
  loc_9F6CAE: Me.Caption = from_stack_1
  loc_9F6CB3: FFree1Str var_E0
  loc_9F6CB6: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F6CC3: FFree1Var var_C8 = ""
  loc_9F6CC6: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97EFA0
  'Data Table: 4D5204
  loc_97EF6C: LitVar_Missing var_A4
  loc_97EF6F: PopAdLdVar
  loc_97EF70: LitVarI4
  loc_97EF78: PopAdLdVar
  loc_97EF79: ImpAdLdRf MemVar_C3D9A8
  loc_97EF7C: NewIfNullPr frmCalendario
  loc_97EF7F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97EF84: ImpAdLdRf MemVar_C3D038
  loc_97EF87: CDargRef
  loc_97EF8B: FLdPr Me
  loc_97EF8E: VCallAd Control_ID_mskDesde
  loc_97EF91: FStAdFunc var_A8
  loc_97EF94: FLdPr var_A8
  loc_97EF97: LateIdSt
  loc_97EF9C: FFree1Ad var_A8
  loc_97EF9F: ExitProcHresult
End Sub

Private Sub cmdCalHasta_Click() '97E850
  'Data Table: 4D5204
  loc_97E81C: LitVar_Missing var_A4
  loc_97E81F: PopAdLdVar
  loc_97E820: LitVarI4
  loc_97E828: PopAdLdVar
  loc_97E829: ImpAdLdRf MemVar_C3D9A8
  loc_97E82C: NewIfNullPr frmCalendario
  loc_97E82F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97E834: ImpAdLdRf MemVar_C3D038
  loc_97E837: CDargRef
  loc_97E83B: FLdPr Me
  loc_97E83E: VCallAd Control_ID_mskHasta
  loc_97E841: FStAdFunc var_A8
  loc_97E844: FLdPr var_A8
  loc_97E847: LateIdSt
  loc_97E84C: FFree1Ad var_A8
  loc_97E84F: ExitProcHresult
End Sub

Private Sub CodiUngaCmd_Click() '9F9F58
  'Data Table: 4D5204
  loc_9F9E1C: LitI2_Byte &HFF
  loc_9F9E1E: ImpAdLdRf MemVar_C3D7D8
  loc_9F9E21: NewIfNullPr bscUnidadGasto
  loc_9F9E24: Call bscUnidadGasto.MuestroAnuladosPut(from_stack_1v)
  loc_9F9E29: LitNothing
  loc_9F9E2B: CastAd
  loc_9F9E2E: FStAdFuncNoPop
  loc_9F9E31: ImpAdLdRf MemVar_C3D7D8
  loc_9F9E34: NewIfNullPr bscUnidadGasto
  loc_9F9E37: Call bscUnidadGasto.global_4338300Set(from_stack_1v)
  loc_9F9E3C: FFree1Ad var_88
  loc_9F9E3F: LitVar_Missing var_A8
  loc_9F9E42: PopAdLdVar
  loc_9F9E43: LitVarI4
  loc_9F9E4B: PopAdLdVar
  loc_9F9E4C: ImpAdLdRf MemVar_C3D7D8
  loc_9F9E4F: NewIfNullPr bscUnidadGasto
  loc_9F9E52: bscUnidadGasto.Show from_stack_1, from_stack_2
  loc_9F9E57: FLdRfVar var_AC
  loc_9F9E5A: FLdRfVar var_88
  loc_9F9E5D: ImpAdLdRf MemVar_C3D7D8
  loc_9F9E60: NewIfNullPr bscUnidadGasto
  loc_9F9E63: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_9F9E68: FLdPr var_88
  loc_9F9E6B: from_stack_1 = clsbase.RecordCount
  loc_9F9E70: ILdRf var_AC
  loc_9F9E73: LitI4 0
  loc_9F9E78: GtI4
  loc_9F9E79: FFree1Ad var_88
  loc_9F9E7C: BranchF loc_9F9F57
  loc_9F9E7F: FLdRfVar var_C8
  loc_9F9E82: FLdRfVar var_B8
  loc_9F9E85: LitVarStr var_98, "CodiUnga"
  loc_9F9E8A: PopAdLdVar
  loc_9F9E8B: FLdRfVar var_B4
  loc_9F9E8E: FLdRfVar var_B0
  loc_9F9E91: FLdRfVar var_88
  loc_9F9E94: ImpAdLdRf MemVar_C3D7D8
  loc_9F9E97: NewIfNullPr bscUnidadGasto
  loc_9F9E9A: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_9F9E9F: FLdPr var_88
  loc_9F9EA2: from_stack_1v = clsbase.RsFrmGet()
  loc_9F9EA7: FLdPr var_B0
  loc_9F9EAA:  = Me.Fields
  loc_9F9EAF: FLdPr var_B4
  loc_9F9EB2: from_stack_2 = Me.Item(from_stack_1)
  loc_9F9EB7: FLdPr var_B8
  loc_9F9EBA:  = Me.Value
  loc_9F9EBF: FLdRfVar var_C8
  loc_9F9EC2: CStrVarTmp
  loc_9F9EC3: CVarStr var_D8
  loc_9F9EC6: PopAdLdVar
  loc_9F9EC7: FLdPr Me
  loc_9F9ECA: VCallAd Control_ID_CodiUngaMsk
  loc_9F9ECD: FStAdFunc var_DC
  loc_9F9ED0: FLdPr var_DC
  loc_9F9ED3: LateIdSt
  loc_9F9ED8: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F9EE5: FFreeVar var_C8 = ""
  loc_9F9EEC: FLdRfVar var_C8
  loc_9F9EEF: FLdRfVar var_B8
  loc_9F9EF2: LitVarStr var_98, "DetaUnga"
  loc_9F9EF7: PopAdLdVar
  loc_9F9EF8: FLdRfVar var_B4
  loc_9F9EFB: FLdRfVar var_B0
  loc_9F9EFE: FLdRfVar var_88
  loc_9F9F01: ImpAdLdRf MemVar_C3D7D8
  loc_9F9F04: NewIfNullPr bscUnidadGasto
  loc_9F9F07: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_9F9F0C: FLdPr var_88
  loc_9F9F0F: from_stack_1v = clsbase.RsFrmGet()
  loc_9F9F14: FLdPr var_B0
  loc_9F9F17:  = Me.Fields
  loc_9F9F1C: FLdPr var_B4
  loc_9F9F1F: from_stack_2 = Me.Item(from_stack_1)
  loc_9F9F24: FLdPr var_B8
  loc_9F9F27:  = Me.Value
  loc_9F9F2C: FLdRfVar var_C8
  loc_9F9F2F: CStrVarTmp
  loc_9F9F30: FStStrNoPop var_E0
  loc_9F9F33: FLdPr Me
  loc_9F9F36: VCallAd Control_ID_DetaUngaLbl
  loc_9F9F39: FStAdFunc var_DC
  loc_9F9F3C: FLdPr var_DC
  loc_9F9F3F: Me.Caption = from_stack_1
  loc_9F9F44: FFree1Str var_E0
  loc_9F9F47: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F9F54: FFree1Var var_C8 = ""
  loc_9F9F57: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '961A4C
  'Data Table: 4D5204
  loc_961A34: LitI2_Byte 0
  loc_961A36: ILdRf Me
  loc_961A39: CastAd
  loc_961A3C: FStAdFunc var_88
  loc_961A3F: FLdRfVar var_88
  loc_961A42: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_961A47: FFree1Ad var_88
  loc_961A4A: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98BE04
  'Data Table: 4D5204
  loc_98BDCC: FLdPr Me
  loc_98BDCF: VCallAd Control_ID_statusBar
  loc_98BDD2: FStAdFunc var_88
  loc_98BDD5: FLdPr var_88
  loc_98BDD8: LateIdLdVar var_98 DispID_1 0
  loc_98BDDF: CStrVarTmp
  loc_98BDE0: CVarStr var_A8
  loc_98BDE3: PopAdLdVar
  loc_98BDE4: FLdPr Me
  loc_98BDE7: VCallAd Control_ID_statusBar
  loc_98BDEA: FStAdFunc var_BC
  loc_98BDED: FLdPr var_BC
  loc_98BDF0: LateIdSt
  loc_98BDF5: FFreeAd var_88 = ""
  loc_98BDFC: FFreeVar var_98 = ""
  loc_98BE03: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '94E720
  'Data Table: 4D5204
  loc_94E70C: FLdPr Me
  loc_94E70F: VCallAd Control_ID_CodiPartMsk
  loc_94E712: CVarAd
  loc_94E716: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E71B: FFree1Var var_94 = ""
  loc_94E71E: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'A0E4B8
  'Data Table: 4D5204
  loc_A0E360: LitStr "SELECT DetaPart FROM partida WHERE PeriInfo = "
  loc_A0E363: FLdRfVar var_8C
  loc_A0E366: FLdPr Me
  loc_A0E369: VCallAd Control_ID_cboPeriodo
  loc_A0E36C: FStAdFunc var_88
  loc_A0E36F: FLdPr var_88
  loc_A0E372:  = Me.Text
  loc_A0E377: ILdRf var_8C
  loc_A0E37A: ConcatStr
  loc_A0E37B: FStStrNoPop var_90
  loc_A0E37E: LitStr " AND CodiPart LIKE '"
  loc_A0E381: ConcatStr
  loc_A0E382: FStStrNoPop var_A8
  loc_A0E385: FLdPr Me
  loc_A0E388: VCallAd Control_ID_CodiPartMsk
  loc_A0E38B: FStAdFunc var_94
  loc_A0E38E: FLdPr var_94
  loc_A0E391: LateIdLdVar var_A4 DispID_22 0
  loc_A0E398: CStrVarTmp
  loc_A0E399: FStStrNoPop var_AC
  loc_A0E39C: ConcatStr
  loc_A0E39D: FStStrNoPop var_B0
  loc_A0E3A0: LitStr Chr(37) & "'"
  loc_A0E3A3: ConcatStr
  loc_A0E3A4: FStStrNoPop var_B4
  loc_A0E3A7: FLdPr Me
  loc_A0E3AA: MemLdRfVar from_stack_1.global_84
  loc_A0E3AD: NewIfNullPr clspartida
  loc_A0E3B0: Call clspartida.RedefineRS(from_stack_1v)
  loc_A0E3B5: FFreeStr var_8C = "": var_90 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A0E3C4: FFreeAd var_88 = ""
  loc_A0E3CB: FFree1Var var_A4 = ""
  loc_A0E3CE: FLdRfVar var_B8
  loc_A0E3D1: FLdPr Me
  loc_A0E3D4: MemLdRfVar from_stack_1.global_84
  loc_A0E3D7: NewIfNullPr clspartida
  loc_A0E3DA: from_stack_1 = clspartida.RecordCount
  loc_A0E3DF: ILdRf var_B8
  loc_A0E3E2: FStR4 var_BC
  loc_A0E3E5: ILdRf var_BC
  loc_A0E3E8: LitI4 0
  loc_A0E3ED: EqI4
  loc_A0E3EE: BranchF loc_A0E40B
  loc_A0E3F1: LitStr "0 registros encontrados"
  loc_A0E3F4: FLdPr Me
  loc_A0E3F7: VCallAd Control_ID_CodiPartLbl
  loc_A0E3FA: FStAdFunc var_88
  loc_A0E3FD: FLdPr var_88
  loc_A0E400: Me.Caption = from_stack_1
  loc_A0E405: FFree1Ad var_88
  loc_A0E408: Branch loc_A0E4B6
  loc_A0E40B: ILdRf var_BC
  loc_A0E40E: LitI4 1
  loc_A0E413: EqI4
  loc_A0E414: BranchF loc_A0E47B
  loc_A0E417: FLdRfVar var_A4
  loc_A0E41A: FLdRfVar var_D0
  loc_A0E41D: LitVarStr var_CC, "DetaPart"
  loc_A0E422: PopAdLdVar
  loc_A0E423: FLdRfVar var_94
  loc_A0E426: FLdRfVar var_88
  loc_A0E429: FLdPr Me
  loc_A0E42C: MemLdRfVar from_stack_1.global_84
  loc_A0E42F: NewIfNullPr clspartida
  loc_A0E432: from_stack_1v = clspartida.RsFrmGet()
  loc_A0E437: FLdPr var_88
  loc_A0E43A:  = Me.Fields
  loc_A0E43F: FLdPr var_94
  loc_A0E442: from_stack_2 = Me.Item(from_stack_1)
  loc_A0E447: FLdPr var_D0
  loc_A0E44A:  = Me.Value
  loc_A0E44F: FLdRfVar var_A4
  loc_A0E452: CStrVarTmp
  loc_A0E453: FStStrNoPop var_8C
  loc_A0E456: FLdPr Me
  loc_A0E459: VCallAd Control_ID_CodiPartLbl
  loc_A0E45C: FStAdFunc var_D4
  loc_A0E45F: FLdPr var_D4
  loc_A0E462: Me.Caption = from_stack_1
  loc_A0E467: FFree1Str var_8C
  loc_A0E46A: FFreeAd var_88 = "": var_94 = "": var_D0 = ""
  loc_A0E475: FFree1Var var_A4 = ""
  loc_A0E478: Branch loc_A0E4B6
  loc_A0E47B: FLdRfVar var_B8
  loc_A0E47E: FLdPr Me
  loc_A0E481: MemLdRfVar from_stack_1.global_84
  loc_A0E484: NewIfNullPr clspartida
  loc_A0E487: from_stack_1 = clspartida.RecordCount
  loc_A0E48C: ILdRf var_B8
  loc_A0E48F: CStrI4
  loc_A0E491: FStStrNoPop var_8C
  loc_A0E494: LitStr " partidas encontradas"
  loc_A0E497: ConcatStr
  loc_A0E498: FStStrNoPop var_90
  loc_A0E49B: FLdPr Me
  loc_A0E49E: VCallAd Control_ID_CodiPartLbl
  loc_A0E4A1: FStAdFunc var_88
  loc_A0E4A4: FLdPr var_88
  loc_A0E4A7: Me.Caption = from_stack_1
  loc_A0E4AC: FFreeStr var_8C = ""
  loc_A0E4B3: FFree1Ad var_88
  loc_A0E4B6: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '94E7B0
  'Data Table: 4D5204
  loc_94E79C: FLdPr Me
  loc_94E79F: VCallAd Control_ID_CodiOrgaMsk
  loc_94E7A2: CVarAd
  loc_94E7A6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E7AB: FFree1Var var_94 = ""
  loc_94E7AE: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'A53744
  'Data Table: 4D5204
  loc_A534A0: LitStr "SELECT DetaOrga FROM infogov.organigrama WHERE PeriInfo = "
  loc_A534A3: FLdRfVar var_8C
  loc_A534A6: FLdPr Me
  loc_A534A9: VCallAd Control_ID_cboPeriodo
  loc_A534AC: FStAdFunc var_88
  loc_A534AF: FLdPr var_88
  loc_A534B2:  = Me.Text
  loc_A534B7: ILdRf var_8C
  loc_A534BA: ConcatStr
  loc_A534BB: FStStrNoPop var_90
  loc_A534BE: LitStr " AND CodiOrga LIKE '"
  loc_A534C1: ConcatStr
  loc_A534C2: FStStrNoPop var_A8
  loc_A534C5: FLdPr Me
  loc_A534C8: VCallAd Control_ID_CodiOrgaMsk
  loc_A534CB: FStAdFunc var_94
  loc_A534CE: FLdPr var_94
  loc_A534D1: LateIdLdVar var_A4 DispID_22 0
  loc_A534D8: CStrVarTmp
  loc_A534D9: FStStrNoPop var_AC
  loc_A534DC: ConcatStr
  loc_A534DD: FStStrNoPop var_B0
  loc_A534E0: LitStr Chr(37) & "'"
  loc_A534E3: ConcatStr
  loc_A534E4: FStStrNoPop var_B4
  loc_A534E7: FLdPr Me
  loc_A534EA: MemLdRfVar from_stack_1.global_88
  loc_A534ED: NewIfNullPr clsorganigrama
  loc_A534F0: Call clsorganigrama.RedefineRS(from_stack_1v)
  loc_A534F5: FFreeStr var_8C = "": var_90 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A53504: FFreeAd var_88 = ""
  loc_A5350B: FFree1Var var_A4 = ""
  loc_A5350E: FLdRfVar var_B8
  loc_A53511: FLdPr Me
  loc_A53514: MemLdRfVar from_stack_1.global_88
  loc_A53517: NewIfNullPr clsorganigrama
  loc_A5351A: from_stack_1 = clsorganigrama.RecordCount
  loc_A5351F: ILdRf var_B8
  loc_A53522: FStR4 var_BC
  loc_A53525: ILdRf var_BC
  loc_A53528: LitI4 0
  loc_A5352D: EqI4
  loc_A5352E: BranchF loc_A535C1
  loc_A53531: LitStr "0 registros encontrados"
  loc_A53534: FLdPr Me
  loc_A53537: VCallAd Control_ID_CodiOrgaLbl
  loc_A5353A: FStAdFunc var_88
  loc_A5353D: FLdPr var_88
  loc_A53540: Me.Caption = from_stack_1
  loc_A53545: FFree1Ad var_88
  loc_A53548: LitI4 0
  loc_A5354D: LitI4 1
  loc_A53552: FLdRfVar var_C0
  loc_A53555: Redim
  loc_A5355F: FLdPr Me
  loc_A53562: VCallAd Control_ID_CodiUngaMsk
  loc_A53565: CVarAd
  loc_A53569: ParmAry1St
  loc_A5356F: FLdPr Me
  loc_A53572: VCallAd Control_ID_CodiUngaCmd
  loc_A53575: CVarAd
  loc_A53579: ParmAry1St
  loc_A5357F: FLdRfVar var_C0
  loc_A53582: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A53587: FLdRfVar var_C0
  loc_A5358A: Erase
  loc_A5358B: LitI4 0
  loc_A53590: LitI4 0
  loc_A53595: FLdRfVar var_C0
  loc_A53598: Redim
  loc_A535A2: FLdPr Me
  loc_A535A5: VCallAd Control_ID_CodiUngaMsk
  loc_A535A8: CVarAd
  loc_A535AC: ParmAry1St
  loc_A535B2: FLdRfVar var_C0
  loc_A535B5: ImpAdCallFPR4 Proc_261_4_9A47F0()
  loc_A535BA: FLdRfVar var_C0
  loc_A535BD: Erase
  loc_A535BE: Branch loc_A53743
  loc_A535C1: ILdRf var_BC
  loc_A535C4: LitI4 1
  loc_A535C9: EqI4
  loc_A535CA: BranchF loc_A53692
  loc_A535CD: FLdRfVar var_A4
  loc_A535D0: FLdRfVar var_E4
  loc_A535D3: LitVarStr var_E0, "DetaOrga"
  loc_A535D8: PopAdLdVar
  loc_A535D9: FLdRfVar var_94
  loc_A535DC: FLdRfVar var_88
  loc_A535DF: FLdPr Me
  loc_A535E2: MemLdRfVar from_stack_1.global_88
  loc_A535E5: NewIfNullPr clsorganigrama
  loc_A535E8: from_stack_1v = clsorganigrama.RsFrmGet()
  loc_A535ED: FLdPr var_88
  loc_A535F0:  = Me.Fields
  loc_A535F5: FLdPr var_94
  loc_A535F8: from_stack_2 = Me.Item(from_stack_1)
  loc_A535FD: FLdPr var_E4
  loc_A53600:  = Me.Value
  loc_A53605: FLdRfVar var_A4
  loc_A53608: CStrVarTmp
  loc_A53609: FStStrNoPop var_8C
  loc_A5360C: FLdPr Me
  loc_A5360F: VCallAd Control_ID_CodiOrgaLbl
  loc_A53612: FStAdFunc var_E8
  loc_A53615: FLdPr var_E8
  loc_A53618: Me.Caption = from_stack_1
  loc_A5361D: FFree1Str var_8C
  loc_A53620: FFreeAd var_88 = "": var_94 = "": var_E4 = ""
  loc_A5362B: FFree1Var var_A4 = ""
  loc_A5362E: FLdPr Me
  loc_A53631: VCallAd Control_ID_CodiOrgaMsk
  loc_A53634: FStAdFunc var_88
  loc_A53637: FLdPr var_88
  loc_A5363A: LateIdLdVar var_A4 DispID_13 -32767
  loc_A53641: CBoolVar
  loc_A53643: FFree1Ad var_88
  loc_A53646: FFree1Var var_A4 = ""
  loc_A53649: BranchF loc_A5368F
  loc_A5364C: LitI4 0
  loc_A53651: LitI4 1
  loc_A53656: FLdRfVar var_C0
  loc_A53659: Redim
  loc_A53663: FLdPr Me
  loc_A53666: VCallAd Control_ID_CodiUngaMsk
  loc_A53669: CVarAd
  loc_A5366D: ParmAry1St
  loc_A53673: FLdPr Me
  loc_A53676: VCallAd Control_ID_CodiUngaCmd
  loc_A53679: CVarAd
  loc_A5367D: ParmAry1St
  loc_A53683: FLdRfVar var_C0
  loc_A53686: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A5368B: FLdRfVar var_C0
  loc_A5368E: Erase
  loc_A5368F: Branch loc_A53743
  loc_A53692: FLdRfVar var_B8
  loc_A53695: FLdPr Me
  loc_A53698: MemLdRfVar from_stack_1.global_88
  loc_A5369B: NewIfNullPr clsorganigrama
  loc_A5369E: from_stack_1 = clsorganigrama.RecordCount
  loc_A536A3: ILdRf var_B8
  loc_A536A6: CStrI4
  loc_A536A8: FStStrNoPop var_8C
  loc_A536AB: LitStr " organigramas encontrados"
  loc_A536AE: ConcatStr
  loc_A536AF: FStStrNoPop var_90
  loc_A536B2: FLdPr Me
  loc_A536B5: VCallAd Control_ID_CodiOrgaLbl
  loc_A536B8: FStAdFunc var_88
  loc_A536BB: FLdPr var_88
  loc_A536BE: Me.Caption = from_stack_1
  loc_A536C3: FFreeStr var_8C = ""
  loc_A536CA: FFree1Ad var_88
  loc_A536CD: LitI4 0
  loc_A536D2: LitI4 1
  loc_A536D7: FLdRfVar var_C0
  loc_A536DA: Redim
  loc_A536E4: FLdPr Me
  loc_A536E7: VCallAd Control_ID_CodiUngaMsk
  loc_A536EA: CVarAd
  loc_A536EE: ParmAry1St
  loc_A536F4: FLdPr Me
  loc_A536F7: VCallAd Control_ID_CodiUngaCmd
  loc_A536FA: CVarAd
  loc_A536FE: ParmAry1St
  loc_A53704: FLdRfVar var_C0
  loc_A53707: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A5370C: FLdRfVar var_C0
  loc_A5370F: Erase
  loc_A53710: LitI4 0
  loc_A53715: LitI4 0
  loc_A5371A: FLdRfVar var_C0
  loc_A5371D: Redim
  loc_A53727: FLdPr Me
  loc_A5372A: VCallAd Control_ID_CodiUngaMsk
  loc_A5372D: CVarAd
  loc_A53731: ParmAry1St
  loc_A53737: FLdRfVar var_C0
  loc_A5373A: ImpAdCallFPR4 Proc_261_4_9A47F0()
  loc_A5373F: FLdRfVar var_C0
  loc_A53742: Erase
  loc_A53743: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '961B7C
  'Data Table: 4D5204
  loc_961B64: ILdRf Me
  loc_961B67: CastAd
  loc_961B6A: FStAdFunc var_88
  loc_961B6D: FLdRfVar var_88
  loc_961B70: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_961B75: FFree1Ad var_88
  loc_961B78: ExitProcHresult
End Sub

Private Sub Form_Load() '9F5F50
  'Data Table: 4D5204
  loc_9F5E18: LitVarStr var_94, "######"
  loc_9F5E1D: PopAdLdVar
  loc_9F5E1E: FLdPr Me
  loc_9F5E21: VCallAd Control_ID_CodiOrgaMsk
  loc_9F5E24: FStAdFunc var_A8
  loc_9F5E27: FLdPr var_A8
  loc_9F5E2A: LateIdSt
  loc_9F5E2F: FFree1Ad var_A8
  loc_9F5E32: LitVarStr var_94, "#.#.#.#.##.##"
  loc_9F5E37: PopAdLdVar
  loc_9F5E38: FLdPr Me
  loc_9F5E3B: VCallAd Control_ID_CodiPartMsk
  loc_9F5E3E: FStAdFunc var_A8
  loc_9F5E41: FLdPr var_A8
  loc_9F5E44: LateIdSt
  loc_9F5E49: FFree1Ad var_A8
  loc_9F5E4C: LitVarStr var_94, "##.##.##"
  loc_9F5E51: PopAdLdVar
  loc_9F5E52: FLdPr Me
  loc_9F5E55: VCallAd Control_ID_CodiFifuMsk
  loc_9F5E58: FStAdFunc var_A8
  loc_9F5E5B: FLdPr var_A8
  loc_9F5E5E: LateIdSt
  loc_9F5E63: FFree1Ad var_A8
  loc_9F5E66: LitI2_Byte &HFF
  loc_9F5E68: ImpAdStI2 MemVar_C3D840
  loc_9F5E6B: ILdRf Me
  loc_9F5E6E: CastAd
  loc_9F5E71: FStAdFunc var_A8
  loc_9F5E74: FLdRfVar var_A8
  loc_9F5E77: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9F5E7C: FFree1Ad var_A8
  loc_9F5E7F: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9F5E82: FLdPr Me
  loc_9F5E85: MemLdRfVar from_stack_1.global_72
  loc_9F5E88: NewIfNullPr clsperiodo
  loc_9F5E8B: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9F5E90: FLdRfVar var_AC
  loc_9F5E93: FLdPr Me
  loc_9F5E96: MemLdRfVar from_stack_1.global_72
  loc_9F5E99: NewIfNullPr clsperiodo
  loc_9F5E9C: from_stack_1 = clsperiodo.RecordCount
  loc_9F5EA1: ILdRf var_AC
  loc_9F5EA4: LitI4 0
  loc_9F5EA9: GtI4
  loc_9F5EAA: BranchF loc_9F5F49
  loc_9F5EAD: FLdPr Me
  loc_9F5EB0: MemLdRfVar from_stack_1.global_72
  loc_9F5EB3: NewIfNullPr clsperiodo
  loc_9F5EB6: Call clsperiodo.MoveFirst()
  loc_9F5EBB: FLdRfVar var_AE
  loc_9F5EBE: FLdPr Me
  loc_9F5EC1: MemLdRfVar from_stack_1.global_72
  loc_9F5EC4: NewIfNullPr clsperiodo
  loc_9F5EC7: from_stack_1 = clsperiodo.EOF
  loc_9F5ECC: FLdI2 var_AE
  loc_9F5ECF: NotI4
  loc_9F5ED0: BranchF loc_9F5F49
  loc_9F5ED3: LitVar_Missing var_A4
  loc_9F5ED6: PopAdLdVar
  loc_9F5ED7: FLdRfVar var_C8
  loc_9F5EDA: FLdRfVar var_B8
  loc_9F5EDD: LitVarStr var_94, "PeriInfo"
  loc_9F5EE2: PopAdLdVar
  loc_9F5EE3: FLdRfVar var_B4
  loc_9F5EE6: FLdRfVar var_A8
  loc_9F5EE9: FLdPr Me
  loc_9F5EEC: MemLdRfVar from_stack_1.global_72
  loc_9F5EEF: NewIfNullPr clsperiodo
  loc_9F5EF2: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9F5EF7: FLdPr var_A8
  loc_9F5EFA:  = Me.Fields
  loc_9F5EFF: FLdPr var_B4
  loc_9F5F02: from_stack_2 = Me.Item(from_stack_1)
  loc_9F5F07: FLdPr var_B8
  loc_9F5F0A:  = Me.Value
  loc_9F5F0F: FLdRfVar var_C8
  loc_9F5F12: CStrVarTmp
  loc_9F5F13: FStStrNoPop var_CC
  loc_9F5F16: FLdPr Me
  loc_9F5F19: VCallAd Control_ID_cboPeriodo
  loc_9F5F1C: FStAdFunc var_D0
  loc_9F5F1F: FLdPr var_D0
  loc_9F5F22: Me.AddItem from_stack_1, from_stack_2
  loc_9F5F27: FFree1Str var_CC
  loc_9F5F2A: FFreeAd var_A8 = "": var_B4 = "": var_B8 = ""
  loc_9F5F35: FFree1Var var_C8 = ""
  loc_9F5F38: FLdPr Me
  loc_9F5F3B: MemLdRfVar from_stack_1.global_72
  loc_9F5F3E: NewIfNullPr clsperiodo
  loc_9F5F41: Call clsperiodo.MoveSiguiente()
  loc_9F5F46: Branch loc_9F5EBB
  loc_9F5F49: Call cmdNueva_Click()
  loc_9F5F4E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9617EC
  'Data Table: 4D5204
  loc_9617D4: FLdPr Me
  loc_9617D7: VCallAd Control_ID_wbbReporte
  loc_9617DA: FStAdFunc var_88
  loc_9617DD: FLdRfVar var_88
  loc_9617E0: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9617E5: FFree1Ad var_88
  loc_9617E8: ExitProcHresult
End Sub

Private Sub cmdCodiFifu_Click() '9F6B48
  'Data Table: 4D5204
  loc_9F6A18: LitNothing
  loc_9F6A1A: CastAd
  loc_9F6A1D: FStAdFuncNoPop
  loc_9F6A20: ImpAdLdRf MemVar_C3D6E8
  loc_9F6A23: NewIfNullPr bscFinalidad
  loc_9F6A26: Call bscFinalidad.global_4320824Set(from_stack_1v)
  loc_9F6A2B: FFree1Ad var_88
  loc_9F6A2E: LitVar_Missing var_A8
  loc_9F6A31: PopAdLdVar
  loc_9F6A32: LitVarI4
  loc_9F6A3A: PopAdLdVar
  loc_9F6A3B: ImpAdLdRf MemVar_C3D6E8
  loc_9F6A3E: NewIfNullPr bscFinalidad
  loc_9F6A41: bscFinalidad.Show from_stack_1, from_stack_2
  loc_9F6A46: FLdRfVar var_AC
  loc_9F6A49: FLdRfVar var_88
  loc_9F6A4C: ImpAdLdRf MemVar_C3D6E8
  loc_9F6A4F: NewIfNullPr bscFinalidad
  loc_9F6A52: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_9F6A57: FLdPr var_88
  loc_9F6A5A: from_stack_1 = clsbase.RecordCount
  loc_9F6A5F: ILdRf var_AC
  loc_9F6A62: LitI4 0
  loc_9F6A67: GtI4
  loc_9F6A68: FFree1Ad var_88
  loc_9F6A6B: BranchF loc_9F6B46
  loc_9F6A6E: FLdRfVar var_C8
  loc_9F6A71: FLdRfVar var_B8
  loc_9F6A74: LitVarStr var_98, "CodiFifu"
  loc_9F6A79: PopAdLdVar
  loc_9F6A7A: FLdRfVar var_B4
  loc_9F6A7D: FLdRfVar var_B0
  loc_9F6A80: FLdRfVar var_88
  loc_9F6A83: ImpAdLdRf MemVar_C3D6E8
  loc_9F6A86: NewIfNullPr bscFinalidad
  loc_9F6A89: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_9F6A8E: FLdPr var_88
  loc_9F6A91: from_stack_1v = clsbase.RsFrmGet()
  loc_9F6A96: FLdPr var_B0
  loc_9F6A99:  = Me.Fields
  loc_9F6A9E: FLdPr var_B4
  loc_9F6AA1: from_stack_2 = Me.Item(from_stack_1)
  loc_9F6AA6: FLdPr var_B8
  loc_9F6AA9:  = Me.Value
  loc_9F6AAE: FLdRfVar var_C8
  loc_9F6AB1: CStrVarTmp
  loc_9F6AB2: CVarStr var_D8
  loc_9F6AB5: PopAdLdVar
  loc_9F6AB6: FLdPr Me
  loc_9F6AB9: VCallAd Control_ID_CodiFifuMsk
  loc_9F6ABC: FStAdFunc var_DC
  loc_9F6ABF: FLdPr var_DC
  loc_9F6AC2: LateIdSt
  loc_9F6AC7: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F6AD4: FFreeVar var_C8 = ""
  loc_9F6ADB: FLdRfVar var_C8
  loc_9F6ADE: FLdRfVar var_B8
  loc_9F6AE1: LitVarStr var_98, "DetaFifu"
  loc_9F6AE6: PopAdLdVar
  loc_9F6AE7: FLdRfVar var_B4
  loc_9F6AEA: FLdRfVar var_B0
  loc_9F6AED: FLdRfVar var_88
  loc_9F6AF0: ImpAdLdRf MemVar_C3D6E8
  loc_9F6AF3: NewIfNullPr bscFinalidad
  loc_9F6AF6: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_9F6AFB: FLdPr var_88
  loc_9F6AFE: from_stack_1v = clsbase.RsFrmGet()
  loc_9F6B03: FLdPr var_B0
  loc_9F6B06:  = Me.Fields
  loc_9F6B0B: FLdPr var_B4
  loc_9F6B0E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F6B13: FLdPr var_B8
  loc_9F6B16:  = Me.Value
  loc_9F6B1B: FLdRfVar var_C8
  loc_9F6B1E: CStrVarTmp
  loc_9F6B1F: FStStrNoPop var_E0
  loc_9F6B22: FLdPr Me
  loc_9F6B25: VCallAd Control_ID_CodiFifuLbl
  loc_9F6B28: FStAdFunc var_DC
  loc_9F6B2B: FLdPr var_DC
  loc_9F6B2E: Me.Caption = from_stack_1
  loc_9F6B33: FFree1Str var_E0
  loc_9F6B36: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F6B43: FFree1Var var_C8 = ""
  loc_9F6B46: ExitProcHresult
End Sub

Private Sub CodiInsuMsk_UnknownEvent_0 '94E6D8
  'Data Table: 4D5204
  loc_94E6C4: FLdPr Me
  loc_94E6C7: VCallAd Control_ID_CodiInsuMsk
  loc_94E6CA: CVarAd
  loc_94E6CE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E6D3: FFree1Var var_94 = ""
  loc_94E6D6: ExitProcHresult
End Sub

Private Sub CodiInsuMsk_UnknownEvent_8 '9F2F70
  'Data Table: 4D5204
  loc_9F2E44: LitStr "SELECT DetaInsu FROM infogov.insumo WHERE CodiInsu = '"
  loc_9F2E47: FLdPr Me
  loc_9F2E4A: VCallAd Control_ID_CodiInsuMsk
  loc_9F2E4D: FStAdFunc var_88
  loc_9F2E50: FLdPr var_88
  loc_9F2E53: LateIdLdVar var_98 DispID_22 0
  loc_9F2E5A: CStrVarTmp
  loc_9F2E5B: FStStrNoPop var_9C
  loc_9F2E5E: ConcatStr
  loc_9F2E5F: FStStrNoPop var_A0
  loc_9F2E62: LitStr "'"
  loc_9F2E65: ConcatStr
  loc_9F2E66: FStStrNoPop var_A4
  loc_9F2E69: FLdPr Me
  loc_9F2E6C: MemLdRfVar from_stack_1.global_80
  loc_9F2E6F: NewIfNullPr clsinsumo
  loc_9F2E72: Call clsinsumo.RedefineRS(from_stack_1v)
  loc_9F2E77: FFreeStr var_9C = "": var_A0 = ""
  loc_9F2E80: FFree1Ad var_88
  loc_9F2E83: FFree1Var var_98 = ""
  loc_9F2E86: FLdRfVar var_A8
  loc_9F2E89: FLdPr Me
  loc_9F2E8C: MemLdRfVar from_stack_1.global_80
  loc_9F2E8F: NewIfNullPr clsinsumo
  loc_9F2E92: from_stack_1 = clsinsumo.RecordCount
  loc_9F2E97: ILdRf var_A8
  loc_9F2E9A: FStR4 var_AC
  loc_9F2E9D: ILdRf var_AC
  loc_9F2EA0: LitI4 0
  loc_9F2EA5: EqI4
  loc_9F2EA6: BranchF loc_9F2EC3
  loc_9F2EA9: LitStr "0 registros encontrados"
  loc_9F2EAC: FLdPr Me
  loc_9F2EAF: VCallAd Control_ID_CodiInsuLbl
  loc_9F2EB2: FStAdFunc var_88
  loc_9F2EB5: FLdPr var_88
  loc_9F2EB8: Me.Caption = from_stack_1
  loc_9F2EBD: FFree1Ad var_88
  loc_9F2EC0: Branch loc_9F2F6E
  loc_9F2EC3: ILdRf var_AC
  loc_9F2EC6: LitI4 1
  loc_9F2ECB: EqI4
  loc_9F2ECC: BranchF loc_9F2F33
  loc_9F2ECF: FLdRfVar var_98
  loc_9F2ED2: FLdRfVar var_C4
  loc_9F2ED5: LitVarStr var_C0, "DetaInsu"
  loc_9F2EDA: PopAdLdVar
  loc_9F2EDB: FLdRfVar var_B0
  loc_9F2EDE: FLdRfVar var_88
  loc_9F2EE1: FLdPr Me
  loc_9F2EE4: MemLdRfVar from_stack_1.global_80
  loc_9F2EE7: NewIfNullPr clsinsumo
  loc_9F2EEA: from_stack_1v = clsinsumo.RsFrmGet()
  loc_9F2EEF: FLdPr var_88
  loc_9F2EF2:  = Me.Fields
  loc_9F2EF7: FLdPr var_B0
  loc_9F2EFA: from_stack_2 = Me.Item(from_stack_1)
  loc_9F2EFF: FLdPr var_C4
  loc_9F2F02:  = Me.Value
  loc_9F2F07: FLdRfVar var_98
  loc_9F2F0A: CStrVarTmp
  loc_9F2F0B: FStStrNoPop var_9C
  loc_9F2F0E: FLdPr Me
  loc_9F2F11: VCallAd Control_ID_CodiInsuLbl
  loc_9F2F14: FStAdFunc var_C8
  loc_9F2F17: FLdPr var_C8
  loc_9F2F1A: Me.Caption = from_stack_1
  loc_9F2F1F: FFree1Str var_9C
  loc_9F2F22: FFreeAd var_88 = "": var_B0 = "": var_C4 = ""
  loc_9F2F2D: FFree1Var var_98 = ""
  loc_9F2F30: Branch loc_9F2F6E
  loc_9F2F33: FLdRfVar var_A8
  loc_9F2F36: FLdPr Me
  loc_9F2F39: MemLdRfVar from_stack_1.global_80
  loc_9F2F3C: NewIfNullPr clsinsumo
  loc_9F2F3F: from_stack_1 = clsinsumo.RecordCount
  loc_9F2F44: ILdRf var_A8
  loc_9F2F47: CStrI4
  loc_9F2F49: FStStrNoPop var_9C
  loc_9F2F4C: LitStr " insumos encontrados"
  loc_9F2F4F: ConcatStr
  loc_9F2F50: FStStrNoPop var_A0
  loc_9F2F53: FLdPr Me
  loc_9F2F56: VCallAd Control_ID_CodiInsuLbl
  loc_9F2F59: FStAdFunc var_88
  loc_9F2F5C: FLdPr var_88
  loc_9F2F5F: Me.Caption = from_stack_1
  loc_9F2F64: FFreeStr var_9C = ""
  loc_9F2F6B: FFree1Ad var_88
  loc_9F2F6E: ExitProcHresult
End Sub

Private Sub cmdCodiInsu_Click() '9F9928
  'Data Table: 4D5204
  loc_9F97EC: LitI2_Byte &HFF
  loc_9F97EE: ImpAdLdRf MemVar_C3D6FC
  loc_9F97F1: NewIfNullPr bscInsumo
  loc_9F97F4: Call bscInsumo.MuestroAnuladosPut(from_stack_1v)
  loc_9F97F9: LitNothing
  loc_9F97FB: CastAd
  loc_9F97FE: FStAdFuncNoPop
  loc_9F9801: ImpAdLdRf MemVar_C3D6FC
  loc_9F9804: NewIfNullPr bscInsumo
  loc_9F9807: Call bscInsumo.global_4304576Set(from_stack_1v)
  loc_9F980C: FFree1Ad var_88
  loc_9F980F: LitVar_Missing var_A8
  loc_9F9812: PopAdLdVar
  loc_9F9813: LitVarI4
  loc_9F981B: PopAdLdVar
  loc_9F981C: ImpAdLdRf MemVar_C3D6FC
  loc_9F981F: NewIfNullPr bscInsumo
  loc_9F9822: bscInsumo.Show from_stack_1, from_stack_2
  loc_9F9827: FLdRfVar var_AC
  loc_9F982A: FLdRfVar var_88
  loc_9F982D: ImpAdLdRf MemVar_C3D6FC
  loc_9F9830: NewIfNullPr bscInsumo
  loc_9F9833: from_stack_1v = bscInsumo.global_4304576Get()
  loc_9F9838: FLdPr var_88
  loc_9F983B: from_stack_1 = clsbase.RecordCount
  loc_9F9840: ILdRf var_AC
  loc_9F9843: LitI4 0
  loc_9F9848: GtI4
  loc_9F9849: FFree1Ad var_88
  loc_9F984C: BranchF loc_9F9927
  loc_9F984F: FLdRfVar var_C8
  loc_9F9852: FLdRfVar var_B8
  loc_9F9855: LitVarStr var_98, "CodiInsu"
  loc_9F985A: PopAdLdVar
  loc_9F985B: FLdRfVar var_B4
  loc_9F985E: FLdRfVar var_B0
  loc_9F9861: FLdRfVar var_88
  loc_9F9864: ImpAdLdRf MemVar_C3D6FC
  loc_9F9867: NewIfNullPr bscInsumo
  loc_9F986A: from_stack_1v = bscInsumo.global_4304576Get()
  loc_9F986F: FLdPr var_88
  loc_9F9872: from_stack_1v = clsbase.RsFrmGet()
  loc_9F9877: FLdPr var_B0
  loc_9F987A:  = Me.Fields
  loc_9F987F: FLdPr var_B4
  loc_9F9882: from_stack_2 = Me.Item(from_stack_1)
  loc_9F9887: FLdPr var_B8
  loc_9F988A:  = Me.Value
  loc_9F988F: FLdRfVar var_C8
  loc_9F9892: CStrVarTmp
  loc_9F9893: CVarStr var_D8
  loc_9F9896: PopAdLdVar
  loc_9F9897: FLdPr Me
  loc_9F989A: VCallAd Control_ID_CodiInsuMsk
  loc_9F989D: FStAdFunc var_DC
  loc_9F98A0: FLdPr var_DC
  loc_9F98A3: LateIdSt
  loc_9F98A8: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F98B5: FFreeVar var_C8 = ""
  loc_9F98BC: FLdRfVar var_C8
  loc_9F98BF: FLdRfVar var_B8
  loc_9F98C2: LitVarStr var_98, "DetaInsu"
  loc_9F98C7: PopAdLdVar
  loc_9F98C8: FLdRfVar var_B4
  loc_9F98CB: FLdRfVar var_B0
  loc_9F98CE: FLdRfVar var_88
  loc_9F98D1: ImpAdLdRf MemVar_C3D6FC
  loc_9F98D4: NewIfNullPr bscInsumo
  loc_9F98D7: from_stack_1v = bscInsumo.global_4304576Get()
  loc_9F98DC: FLdPr var_88
  loc_9F98DF: from_stack_1v = clsbase.RsFrmGet()
  loc_9F98E4: FLdPr var_B0
  loc_9F98E7:  = Me.Fields
  loc_9F98EC: FLdPr var_B4
  loc_9F98EF: from_stack_2 = Me.Item(from_stack_1)
  loc_9F98F4: FLdPr var_B8
  loc_9F98F7:  = Me.Value
  loc_9F98FC: FLdRfVar var_C8
  loc_9F98FF: CStrVarTmp
  loc_9F9900: FStStrNoPop var_E0
  loc_9F9903: FLdPr Me
  loc_9F9906: VCallAd Control_ID_CodiInsuLbl
  loc_9F9909: FStAdFunc var_DC
  loc_9F990C: FLdPr var_DC
  loc_9F990F: Me.Caption = from_stack_1
  loc_9F9914: FFree1Str var_E0
  loc_9F9917: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F9924: FFree1Var var_C8 = ""
  loc_9F9927: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9ED624
  'Data Table: 4D5204
  loc_9ED4E8: LitI2_Byte 0
  loc_9ED4EA: FLdPr Me
  loc_9ED4ED: MemStI2 bGenerado
  loc_9ED4F0: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9ED4F5: ImpAdLdI2 MemVar_C3D064
  loc_9ED4F8: CStrUI1
  loc_9ED4FA: FStStrNoPop var_88
  loc_9ED4FD: FLdPr Me
  loc_9ED500: VCallAd Control_ID_cboPeriodo
  loc_9ED503: FStAdFunc var_8C
  loc_9ED506: FLdPr var_8C
  loc_9ED509: Me.Text = from_stack_1
  loc_9ED50E: FFree1Str var_88
  loc_9ED511: FFree1Ad var_8C
  loc_9ED514: LitVarStr var_9C, vbNullString
  loc_9ED519: PopAdLdVar
  loc_9ED51A: FLdPr Me
  loc_9ED51D: VCallAd Control_ID_CodiInsuMsk
  loc_9ED520: FStAdFunc var_8C
  loc_9ED523: FLdPr var_8C
  loc_9ED526: LateIdSt
  loc_9ED52B: FFree1Ad var_8C
  loc_9ED52E: LitVarStr var_9C, vbNullString
  loc_9ED533: PopAdLdVar
  loc_9ED534: FLdPr Me
  loc_9ED537: VCallAd Control_ID_CodiPartMsk
  loc_9ED53A: FStAdFunc var_8C
  loc_9ED53D: FLdPr var_8C
  loc_9ED540: LateIdSt
  loc_9ED545: FFree1Ad var_8C
  loc_9ED548: LitVarStr var_9C, vbNullString
  loc_9ED54D: PopAdLdVar
  loc_9ED54E: FLdPr Me
  loc_9ED551: VCallAd Control_ID_CodiOrgaMsk
  loc_9ED554: FStAdFunc var_8C
  loc_9ED557: FLdPr var_8C
  loc_9ED55A: LateIdSt
  loc_9ED55F: FFree1Ad var_8C
  loc_9ED562: LitVarStr var_9C, vbNullString
  loc_9ED567: PopAdLdVar
  loc_9ED568: FLdPr Me
  loc_9ED56B: VCallAd Control_ID_CodiUngaMsk
  loc_9ED56E: FStAdFunc var_8C
  loc_9ED571: FLdPr var_8C
  loc_9ED574: LateIdSt
  loc_9ED579: FFree1Ad var_8C
  loc_9ED57C: LitVarStr var_9C, vbNullString
  loc_9ED581: PopAdLdVar
  loc_9ED582: FLdPr Me
  loc_9ED585: VCallAd Control_ID_CodiFifuMsk
  loc_9ED588: FStAdFunc var_8C
  loc_9ED58B: FLdPr var_8C
  loc_9ED58E: LateIdSt
  loc_9ED593: FFree1Ad var_8C
  loc_9ED596: LitStr vbNullString
  loc_9ED599: FLdPr Me
  loc_9ED59C: VCallAd Control_ID_CodiInsuLbl
  loc_9ED59F: FStAdFunc var_8C
  loc_9ED5A2: FLdPr var_8C
  loc_9ED5A5: Me.Caption = from_stack_1
  loc_9ED5AA: FFree1Ad var_8C
  loc_9ED5AD: LitStr vbNullString
  loc_9ED5B0: FLdPr Me
  loc_9ED5B3: VCallAd Control_ID_CodiPartLbl
  loc_9ED5B6: FStAdFunc var_8C
  loc_9ED5B9: FLdPr var_8C
  loc_9ED5BC: Me.Caption = from_stack_1
  loc_9ED5C1: FFree1Ad var_8C
  loc_9ED5C4: LitStr vbNullString
  loc_9ED5C7: FLdPr Me
  loc_9ED5CA: VCallAd Control_ID_CodiOrgaLbl
  loc_9ED5CD: FStAdFunc var_8C
  loc_9ED5D0: FLdPr var_8C
  loc_9ED5D3: Me.Caption = from_stack_1
  loc_9ED5D8: FFree1Ad var_8C
  loc_9ED5DB: LitStr vbNullString
  loc_9ED5DE: FLdPr Me
  loc_9ED5E1: VCallAd Control_ID_DetaUngaLbl
  loc_9ED5E4: FStAdFunc var_8C
  loc_9ED5E7: FLdPr var_8C
  loc_9ED5EA: Me.Caption = from_stack_1
  loc_9ED5EF: FFree1Ad var_8C
  loc_9ED5F2: LitStr vbNullString
  loc_9ED5F5: FLdPr Me
  loc_9ED5F8: VCallAd Control_ID_CodiFifuLbl
  loc_9ED5FB: FStAdFunc var_8C
  loc_9ED5FE: FLdPr var_8C
  loc_9ED601: Me.Caption = from_stack_1
  loc_9ED606: FFree1Ad var_8C
  loc_9ED609: Call HabilitarCriterio()
  loc_9ED60E: ILdRf Me
  loc_9ED611: CastAd
  loc_9ED614: FStAdFunc var_8C
  loc_9ED617: FLdRfVar var_8C
  loc_9ED61A: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9ED61F: FFree1Ad var_8C
  loc_9ED622: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '978160
  'Data Table: 4D5204
  loc_978130: LitVarStr var_94, "Cerrando..."
  loc_978135: PopAdLdVar
  loc_978136: FLdPr Me
  loc_978139: VCallAd Control_ID_statusBar
  loc_97813C: FStAdFunc var_A8
  loc_97813F: FLdPr var_A8
  loc_978142: LateIdSt
  loc_978147: FFree1Ad var_A8
  loc_97814A: ILdRf Me
  loc_97814D: FStAdNoPop
  loc_978151: ImpAdLdRf MemVar_C44F9C
  loc_978154: NewIfNullPr Me
  loc_978157: Me.Global.Unload from_stack_1
  loc_97815C: FFree1Ad var_A8
  loc_97815F: ExitProcHresult
End Sub

Private Sub cmdCodiOrga_Click() '9FFA38
  'Data Table: 4D5204
  loc_9FF8F0: LitI2_Byte &HFF
  loc_9FF8F2: ImpAdLdRf MemVar_C3D710
  loc_9FF8F5: NewIfNullPr bscOrganigrama
  loc_9FF8F8: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_9FF8FD: LitNothing
  loc_9FF8FF: CastAd
  loc_9FF902: FStAdFuncNoPop
  loc_9FF905: ImpAdLdRf MemVar_C3D710
  loc_9FF908: NewIfNullPr bscOrganigrama
  loc_9FF90B: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_9FF910: FFree1Ad var_88
  loc_9FF913: LitVar_Missing var_A8
  loc_9FF916: PopAdLdVar
  loc_9FF917: LitVarI4
  loc_9FF91F: PopAdLdVar
  loc_9FF920: ImpAdLdRf MemVar_C3D710
  loc_9FF923: NewIfNullPr bscOrganigrama
  loc_9FF926: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_9FF92B: FLdRfVar var_AC
  loc_9FF92E: FLdRfVar var_88
  loc_9FF931: ImpAdLdRf MemVar_C3D710
  loc_9FF934: NewIfNullPr bscOrganigrama
  loc_9FF937: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FF93C: FLdPr var_88
  loc_9FF93F: from_stack_1 = clsbase.RecordCount
  loc_9FF944: ILdRf var_AC
  loc_9FF947: LitI4 0
  loc_9FF94C: GtI4
  loc_9FF94D: FFree1Ad var_88
  loc_9FF950: BranchF loc_9FFA2B
  loc_9FF953: FLdRfVar var_C8
  loc_9FF956: FLdRfVar var_B8
  loc_9FF959: LitVarStr var_98, "CodiOrga"
  loc_9FF95E: PopAdLdVar
  loc_9FF95F: FLdRfVar var_B4
  loc_9FF962: FLdRfVar var_B0
  loc_9FF965: FLdRfVar var_88
  loc_9FF968: ImpAdLdRf MemVar_C3D710
  loc_9FF96B: NewIfNullPr bscOrganigrama
  loc_9FF96E: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FF973: FLdPr var_88
  loc_9FF976: from_stack_1v = clsbase.RsFrmGet()
  loc_9FF97B: FLdPr var_B0
  loc_9FF97E:  = Me.Fields
  loc_9FF983: FLdPr var_B4
  loc_9FF986: from_stack_2 = Me.Item(from_stack_1)
  loc_9FF98B: FLdPr var_B8
  loc_9FF98E:  = Me.Value
  loc_9FF993: FLdRfVar var_C8
  loc_9FF996: CStrVarTmp
  loc_9FF997: CVarStr var_D8
  loc_9FF99A: PopAdLdVar
  loc_9FF99B: FLdPr Me
  loc_9FF99E: VCallAd Control_ID_CodiOrgaMsk
  loc_9FF9A1: FStAdFunc var_DC
  loc_9FF9A4: FLdPr var_DC
  loc_9FF9A7: LateIdSt
  loc_9FF9AC: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FF9B9: FFreeVar var_C8 = ""
  loc_9FF9C0: FLdRfVar var_C8
  loc_9FF9C3: FLdRfVar var_B8
  loc_9FF9C6: LitVarStr var_98, "DetaOrga"
  loc_9FF9CB: PopAdLdVar
  loc_9FF9CC: FLdRfVar var_B4
  loc_9FF9CF: FLdRfVar var_B0
  loc_9FF9D2: FLdRfVar var_88
  loc_9FF9D5: ImpAdLdRf MemVar_C3D710
  loc_9FF9D8: NewIfNullPr bscOrganigrama
  loc_9FF9DB: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FF9E0: FLdPr var_88
  loc_9FF9E3: from_stack_1v = clsbase.RsFrmGet()
  loc_9FF9E8: FLdPr var_B0
  loc_9FF9EB:  = Me.Fields
  loc_9FF9F0: FLdPr var_B4
  loc_9FF9F3: from_stack_2 = Me.Item(from_stack_1)
  loc_9FF9F8: FLdPr var_B8
  loc_9FF9FB:  = Me.Value
  loc_9FFA00: FLdRfVar var_C8
  loc_9FFA03: CStrVarTmp
  loc_9FFA04: FStStrNoPop var_E0
  loc_9FFA07: FLdPr Me
  loc_9FFA0A: VCallAd Control_ID_CodiOrgaLbl
  loc_9FFA0D: FStAdFunc var_DC
  loc_9FFA10: FLdPr var_DC
  loc_9FFA13: Me.Caption = from_stack_1
  loc_9FFA18: FFree1Str var_E0
  loc_9FFA1B: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FFA28: FFree1Var var_C8 = ""
  loc_9FFA2B: LitI2_Byte 0
  loc_9FFA2D: PopTmpLdAd2 var_E2
  loc_9FFA30: Call CodiOrgaMsk_UnknownEvent_8()
  loc_9FFA35: ExitProcHresult
  loc_9FFA36: CCyR4
End Sub

Private Sub CodiFifuMsk_UnknownEvent_0 '951A98
  'Data Table: 4D5204
  loc_951A84: FLdPr Me
  loc_951A87: VCallAd Control_ID_CodiFifuMsk
  loc_951A8A: CVarAd
  loc_951A8E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951A93: FFree1Var var_94 = ""
  loc_951A96: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_UnknownEvent_8 'A0EEF0
  'Data Table: 4D5204
  loc_A0ED98: LitStr "SELECT DetaFifu FROM finalidad WHERE PeriInfo = "
  loc_A0ED9B: FLdRfVar var_8C
  loc_A0ED9E: FLdPr Me
  loc_A0EDA1: VCallAd Control_ID_cboPeriodo
  loc_A0EDA4: FStAdFunc var_88
  loc_A0EDA7: FLdPr var_88
  loc_A0EDAA:  = Me.Text
  loc_A0EDAF: ILdRf var_8C
  loc_A0EDB2: ConcatStr
  loc_A0EDB3: FStStrNoPop var_90
  loc_A0EDB6: LitStr " AND CodiFifu LIKE '"
  loc_A0EDB9: ConcatStr
  loc_A0EDBA: FStStrNoPop var_A8
  loc_A0EDBD: FLdPr Me
  loc_A0EDC0: VCallAd Control_ID_CodiFifuMsk
  loc_A0EDC3: FStAdFunc var_94
  loc_A0EDC6: FLdPr var_94
  loc_A0EDC9: LateIdLdVar var_A4 DispID_22 0
  loc_A0EDD0: CStrVarTmp
  loc_A0EDD1: FStStrNoPop var_AC
  loc_A0EDD4: ConcatStr
  loc_A0EDD5: FStStrNoPop var_B0
  loc_A0EDD8: LitStr Chr(37) & "'"
  loc_A0EDDB: ConcatStr
  loc_A0EDDC: FStStrNoPop var_B4
  loc_A0EDDF: FLdPr Me
  loc_A0EDE2: MemLdRfVar from_stack_1.global_92
  loc_A0EDE5: NewIfNullPr clsfinalidad
  loc_A0EDE8: Call clsfinalidad.RedefineRS(from_stack_1v)
  loc_A0EDED: FFreeStr var_8C = "": var_90 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A0EDFC: FFreeAd var_88 = ""
  loc_A0EE03: FFree1Var var_A4 = ""
  loc_A0EE06: FLdRfVar var_B8
  loc_A0EE09: FLdPr Me
  loc_A0EE0C: MemLdRfVar from_stack_1.global_92
  loc_A0EE0F: NewIfNullPr clsfinalidad
  loc_A0EE12: from_stack_1 = clsfinalidad.RecordCount
  loc_A0EE17: ILdRf var_B8
  loc_A0EE1A: FStR4 var_BC
  loc_A0EE1D: ILdRf var_BC
  loc_A0EE20: LitI4 0
  loc_A0EE25: EqI4
  loc_A0EE26: BranchF loc_A0EE43
  loc_A0EE29: LitStr "0 registros encontrados"
  loc_A0EE2C: FLdPr Me
  loc_A0EE2F: VCallAd Control_ID_CodiFifuLbl
  loc_A0EE32: FStAdFunc var_88
  loc_A0EE35: FLdPr var_88
  loc_A0EE38: Me.Caption = from_stack_1
  loc_A0EE3D: FFree1Ad var_88
  loc_A0EE40: Branch loc_A0EEEE
  loc_A0EE43: ILdRf var_BC
  loc_A0EE46: LitI4 1
  loc_A0EE4B: EqI4
  loc_A0EE4C: BranchF loc_A0EEB3
  loc_A0EE4F: FLdRfVar var_A4
  loc_A0EE52: FLdRfVar var_D0
  loc_A0EE55: LitVarStr var_CC, "DetaFifu"
  loc_A0EE5A: PopAdLdVar
  loc_A0EE5B: FLdRfVar var_94
  loc_A0EE5E: FLdRfVar var_88
  loc_A0EE61: FLdPr Me
  loc_A0EE64: MemLdRfVar from_stack_1.global_92
  loc_A0EE67: NewIfNullPr clsfinalidad
  loc_A0EE6A: from_stack_1v = clsfinalidad.RsFrmGet()
  loc_A0EE6F: FLdPr var_88
  loc_A0EE72:  = Me.Fields
  loc_A0EE77: FLdPr var_94
  loc_A0EE7A: from_stack_2 = Me.Item(from_stack_1)
  loc_A0EE7F: FLdPr var_D0
  loc_A0EE82:  = Me.Value
  loc_A0EE87: FLdRfVar var_A4
  loc_A0EE8A: CStrVarTmp
  loc_A0EE8B: FStStrNoPop var_8C
  loc_A0EE8E: FLdPr Me
  loc_A0EE91: VCallAd Control_ID_CodiFifuLbl
  loc_A0EE94: FStAdFunc var_D4
  loc_A0EE97: FLdPr var_D4
  loc_A0EE9A: Me.Caption = from_stack_1
  loc_A0EE9F: FFree1Str var_8C
  loc_A0EEA2: FFreeAd var_88 = "": var_94 = "": var_D0 = ""
  loc_A0EEAD: FFree1Var var_A4 = ""
  loc_A0EEB0: Branch loc_A0EEEE
  loc_A0EEB3: FLdRfVar var_B8
  loc_A0EEB6: FLdPr Me
  loc_A0EEB9: MemLdRfVar from_stack_1.global_92
  loc_A0EEBC: NewIfNullPr clsfinalidad
  loc_A0EEBF: from_stack_1 = clsfinalidad.RecordCount
  loc_A0EEC4: ILdRf var_B8
  loc_A0EEC7: CStrI4
  loc_A0EEC9: FStStrNoPop var_8C
  loc_A0EECC: LitStr " finalidades encontradas"
  loc_A0EECF: ConcatStr
  loc_A0EED0: FStStrNoPop var_90
  loc_A0EED3: FLdPr Me
  loc_A0EED6: VCallAd Control_ID_CodiFifuLbl
  loc_A0EED9: FStAdFunc var_88
  loc_A0EEDC: FLdPr var_88
  loc_A0EEDF: Me.Caption = from_stack_1
  loc_A0EEE4: FFreeStr var_8C = ""
  loc_A0EEEB: FFree1Ad var_88
  loc_A0EEEE: ExitProcHresult
End Sub

Private Sub CodiUngaMsk_UnknownEvent_0 '94E7F8
  'Data Table: 4D5204
  loc_94E7E4: FLdPr Me
  loc_94E7E7: VCallAd Control_ID_CodiUngaMsk
  loc_94E7EA: CVarAd
  loc_94E7EE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E7F3: FFree1Var var_94 = ""
  loc_94E7F6: ExitProcHresult
End Sub

Private Sub CodiUngaMsk_UnknownEvent_8 '97FDD0
  'Data Table: 4D5204
  loc_97FDA4: FLdRfVar var_8C
  loc_97FDA7: FLdRfVar var_88
  loc_97FDAA: NewIfNullPr tblunidadgasto
  loc_97FDAD: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_97FDB2: ILdRf var_8C
  loc_97FDB5: FLdPr Me
  loc_97FDB8: VCallAd Control_ID_DetaUngaLbl
  loc_97FDBB: FStAdFunc var_90
  loc_97FDBE: FLdPr var_90
  loc_97FDC1: Me.Caption = from_stack_1
  loc_97FDC6: FFree1Str var_8C
  loc_97FDC9: FFree1Ad var_90
  loc_97FDCC: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '9D23FC
  'Data Table: 4D5204
  loc_9D2314: FLdRfVar var_8C
  loc_9D2317: FLdPr Me
  loc_9D231A: VCallAd Control_ID_cboPeriodo
  loc_9D231D: FStAdFunc var_88
  loc_9D2320: FLdPr var_88
  loc_9D2323:  = Me.Text
  loc_9D2328: LitI2_Byte 1
  loc_9D232A: LitI2_Byte 1
  loc_9D232C: ILdRf var_8C
  loc_9D232F: CI2Str
  loc_9D2331: FLdRfVar var_9C
  loc_9D2334: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D2339: FLdRfVar var_9C
  loc_9D233C: CStrVarTmp
  loc_9D233D: CVarStr var_AC
  loc_9D2340: PopAdLdVar
  loc_9D2341: FLdPr Me
  loc_9D2344: VCallAd Control_ID_mskDesde
  loc_9D2347: FStAdFunc var_C0
  loc_9D234A: FLdPr var_C0
  loc_9D234D: LateIdSt
  loc_9D2352: FFree1Str var_8C
  loc_9D2355: FFreeAd var_88 = ""
  loc_9D235C: FFreeVar var_9C = ""
  loc_9D2363: FLdRfVar var_8C
  loc_9D2366: FLdPr Me
  loc_9D2369: VCallAd Control_ID_cboPeriodo
  loc_9D236C: FStAdFunc var_88
  loc_9D236F: FLdPr var_88
  loc_9D2372:  = Me.Text
  loc_9D2377: ILdRf var_8C
  loc_9D237A: CI2Str
  loc_9D237C: ImpAdLdI2 MemVar_C3D064
  loc_9D237F: LtI2
  loc_9D2380: FFree1Str var_8C
  loc_9D2383: FFree1Ad var_88
  loc_9D2386: BranchF loc_9D23DB
  loc_9D2389: FLdRfVar var_8C
  loc_9D238C: FLdPr Me
  loc_9D238F: VCallAd Control_ID_cboPeriodo
  loc_9D2392: FStAdFunc var_88
  loc_9D2395: FLdPr var_88
  loc_9D2398:  = Me.Text
  loc_9D239D: LitI2_Byte &H1F
  loc_9D239F: LitI2_Byte &HC
  loc_9D23A1: ILdRf var_8C
  loc_9D23A4: CI2Str
  loc_9D23A6: FLdRfVar var_9C
  loc_9D23A9: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D23AE: FLdRfVar var_9C
  loc_9D23B1: CStrVarTmp
  loc_9D23B2: CVarStr var_AC
  loc_9D23B5: PopAdLdVar
  loc_9D23B6: FLdPr Me
  loc_9D23B9: VCallAd Control_ID_mskHasta
  loc_9D23BC: FStAdFunc var_C0
  loc_9D23BF: FLdPr var_C0
  loc_9D23C2: LateIdSt
  loc_9D23C7: FFree1Str var_8C
  loc_9D23CA: FFreeAd var_88 = ""
  loc_9D23D1: FFreeVar var_9C = ""
  loc_9D23D8: Branch loc_9D23FB
  loc_9D23DB: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D23DE: CStrDate
  loc_9D23E0: CVarStr var_9C
  loc_9D23E3: PopAdLdVar
  loc_9D23E4: FLdPr Me
  loc_9D23E7: VCallAd Control_ID_mskHasta
  loc_9D23EA: FStAdFunc var_88
  loc_9D23ED: FLdPr var_88
  loc_9D23F0: LateIdSt
  loc_9D23F5: FFree1Ad var_88
  loc_9D23F8: FFree1Var var_9C = ""
  loc_9D23FB: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '94E5B8
  'Data Table: 4D5204
  loc_94E5A4: FLdPr Me
  loc_94E5A7: VCallAd Control_ID_mskDesde
  loc_94E5AA: CVarAd
  loc_94E5AE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E5B3: FFree1Var var_94 = ""
  loc_94E5B6: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9CDCD4
  'Data Table: 4D5204
  loc_9CDC08: FLdPr Me
  loc_9CDC0B: VCallAd Control_ID_mskDesde
  loc_9CDC0E: FStAdFunc var_88
  loc_9CDC11: FLdPr var_88
  loc_9CDC14: LateIdLdVar var_98 DispID_15 0
  loc_9CDC1B: PopAd
  loc_9CDC1D: FLdRfVar var_A0
  loc_9CDC20: FLdPr Me
  loc_9CDC23: VCallAd Control_ID_cboPeriodo
  loc_9CDC26: FStAdFunc var_9C
  loc_9CDC29: FLdPr var_9C
  loc_9CDC2C:  = Me.Text
  loc_9CDC31: LitI2_Byte 1
  loc_9CDC33: LitI2_Byte 1
  loc_9CDC35: ILdRf var_A0
  loc_9CDC38: CI2Str
  loc_9CDC3A: FLdRfVar var_B0
  loc_9CDC3D: ImpAdCallFPR4  = DateSerial(, , )
  loc_9CDC42: FLdPr Me
  loc_9CDC45: VCallAd Control_ID_mskDesde
  loc_9CDC48: FStAdFunc var_C8
  loc_9CDC4B: LitI2_Byte &HFF
  loc_9CDC4D: PopTmpLdAd2 var_BE
  loc_9CDC50: FLdZeroAd var_C8
  loc_9CDC53: FStAdFunc var_BC
  loc_9CDC56: FLdRfVar var_BC
  loc_9CDC59: FLdRfVar var_B0
  loc_9CDC5C: CStrVarVal var_B8
  loc_9CDC60: LitI2_Byte 0
  loc_9CDC62: LitI2_Byte 0
  loc_9CDC64: FLdRfVar var_98
  loc_9CDC67: CStrVarTmp
  loc_9CDC68: FStStrNoPop var_B4
  loc_9CDC6B: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9CDC70: FStStrNoPop var_C4
  loc_9CDC73: FLdPr Me
  loc_9CDC76: MemStStrCopy
  loc_9CDC7A: FFreeStr var_A0 = "": var_B4 = "": var_B8 = ""
  loc_9CDC85: FFreeAd var_88 = "": var_9C = "": var_BC = ""
  loc_9CDC90: FFreeVar var_98 = ""
  loc_9CDC97: FLdPr Me
  loc_9CDC9A: VCallAd Control_ID_mskDesde
  loc_9CDC9D: FStAdFunc var_C8
  loc_9CDCA0: LitNothing
  loc_9CDCA2: CastAd
  loc_9CDCA5: FStAdFunc var_BC
  loc_9CDCA8: FLdRfVar var_BC
  loc_9CDCAB: FLdZeroAd var_C8
  loc_9CDCAE: FStAdFuncNoPop
  loc_9CDCB1: CastAd
  loc_9CDCB4: FStAdFunc var_9C
  loc_9CDCB7: FLdRfVar var_9C
  loc_9CDCBA: FLdPr Me
  loc_9CDCBD: MemLdRfVar from_stack_1.global_124
  loc_9CDCC0: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CDCC5: IStI2 arg_C
  loc_9CDCC8: FFreeAd var_88 = "": var_9C = "": var_BC = ""
  loc_9CDCD3: ExitProcHresult
End Function

Private Sub mskHasta_UnknownEvent_0 '94E648
  'Data Table: 4D5204
  loc_94E634: FLdPr Me
  loc_94E637: VCallAd Control_ID_mskHasta
  loc_94E63A: CVarAd
  loc_94E63E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E643: FFree1Var var_94 = ""
  loc_94E646: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9C4540
  'Data Table: 4D5204
  loc_9C4484: FLdPr Me
  loc_9C4487: VCallAd Control_ID_mskHasta
  loc_9C448A: FStAdFunc var_88
  loc_9C448D: FLdPr var_88
  loc_9C4490: LateIdLdVar var_98 DispID_15 0
  loc_9C4497: PopAd
  loc_9C4499: FLdPr Me
  loc_9C449C: VCallAd Control_ID_mskDesde
  loc_9C449F: FStAdFunc var_9C
  loc_9C44A2: FLdPr var_9C
  loc_9C44A5: LateIdLdVar var_AC DispID_15 0
  loc_9C44AC: PopAd
  loc_9C44AE: FLdPr Me
  loc_9C44B1: VCallAd Control_ID_mskHasta
  loc_9C44B4: FStAdFunc var_C4
  loc_9C44B7: LitI2_Byte &HFF
  loc_9C44B9: PopTmpLdAd2 var_BA
  loc_9C44BC: FLdZeroAd var_C4
  loc_9C44BF: FStAdFunc var_B8
  loc_9C44C2: FLdRfVar var_B8
  loc_9C44C5: FLdRfVar var_AC
  loc_9C44C8: CStrVarTmp
  loc_9C44C9: FStStrNoPop var_B4
  loc_9C44CC: LitI2_Byte 0
  loc_9C44CE: LitI2_Byte 0
  loc_9C44D0: FLdRfVar var_98
  loc_9C44D3: CStrVarTmp
  loc_9C44D4: FStStrNoPop var_B0
  loc_9C44D7: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C44DC: FStStrNoPop var_C0
  loc_9C44DF: FLdPr Me
  loc_9C44E2: MemStStrCopy
  loc_9C44E6: FFreeStr var_B0 = "": var_B4 = ""
  loc_9C44EF: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_9C44FA: FFreeVar var_98 = ""
  loc_9C4501: FLdPr Me
  loc_9C4504: VCallAd Control_ID_mskHasta
  loc_9C4507: FStAdFunc var_C4
  loc_9C450A: LitNothing
  loc_9C450C: CastAd
  loc_9C450F: FStAdFunc var_B8
  loc_9C4512: FLdRfVar var_B8
  loc_9C4515: FLdZeroAd var_C4
  loc_9C4518: FStAdFuncNoPop
  loc_9C451B: CastAd
  loc_9C451E: FStAdFunc var_9C
  loc_9C4521: FLdRfVar var_9C
  loc_9C4524: FLdPr Me
  loc_9C4527: MemLdRfVar from_stack_1.global_124
  loc_9C452A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C452F: IStI2 arg_C
  loc_9C4532: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_9C453D: ExitProcHresult
End Function

Private Sub cmdPredeterminada_Click() '961AE4
  'Data Table: 4D5204
  loc_961ACC: ILdRf Me
  loc_961ACF: CastAd
  loc_961AD2: FStAdFunc var_88
  loc_961AD5: FLdRfVar var_88
  loc_961AD8: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_961ADD: FFree1Ad var_88
  loc_961AE0: ExitProcHresult
End Sub

Public Function htmFileGet() '4D6BC4
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4D6BD3
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4D6BE2
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4D6BF1
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4D6C00
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9E6E28
  'Data Table: 4D5204
  loc_9E6D34: LitI4 0
  loc_9E6D39: LitI4 &HC
  loc_9E6D3E: FLdRfVar var_88
  loc_9E6D41: Redim
  loc_9E6D4B: FLdPr Me
  loc_9E6D4E: VCallAd Control_ID_cboPeriodo
  loc_9E6D51: CVarAd
  loc_9E6D55: ParmAry1St
  loc_9E6D5B: FLdPr Me
  loc_9E6D5E: VCallAd Control_ID_mskDesde
  loc_9E6D61: CVarAd
  loc_9E6D65: ParmAry1St
  loc_9E6D6B: FLdPr Me
  loc_9E6D6E: VCallAd Control_ID_cmdCalDesde
  loc_9E6D71: CVarAd
  loc_9E6D75: ParmAry1St
  loc_9E6D7B: FLdPr Me
  loc_9E6D7E: VCallAd Control_ID_mskHasta
  loc_9E6D81: CVarAd
  loc_9E6D85: ParmAry1St
  loc_9E6D8B: FLdPr Me
  loc_9E6D8E: VCallAd Control_ID_cmdCalHasta
  loc_9E6D91: CVarAd
  loc_9E6D95: ParmAry1St
  loc_9E6D9B: FLdPr Me
  loc_9E6D9E: VCallAd Control_ID_CodiInsuMsk
  loc_9E6DA1: CVarAd
  loc_9E6DA5: ParmAry1St
  loc_9E6DAB: FLdPr Me
  loc_9E6DAE: VCallAd Control_ID_cmdCodiInsu
  loc_9E6DB1: CVarAd
  loc_9E6DB5: ParmAry1St
  loc_9E6DBB: FLdPr Me
  loc_9E6DBE: VCallAd Control_ID_CodiPartMsk
  loc_9E6DC1: CVarAd
  loc_9E6DC5: ParmAry1St
  loc_9E6DCB: FLdPr Me
  loc_9E6DCE: VCallAd Control_ID_cmdCodiPart
  loc_9E6DD1: CVarAd
  loc_9E6DD5: ParmAry1St
  loc_9E6DDB: FLdPr Me
  loc_9E6DDE: VCallAd Control_ID_CodiOrgaMsk
  loc_9E6DE1: CVarAd
  loc_9E6DE5: ParmAry1St
  loc_9E6DEB: FLdPr Me
  loc_9E6DEE: VCallAd Control_ID_cmdCodiOrga
  loc_9E6DF1: CVarAd
  loc_9E6DF5: ParmAry1St
  loc_9E6DFB: FLdPr Me
  loc_9E6DFE: VCallAd Control_ID_CodiFifuMsk
  loc_9E6E01: CVarAd
  loc_9E6E05: ParmAry1St
  loc_9E6E0B: FLdPr Me
  loc_9E6E0E: VCallAd Control_ID_cmdCodiFifu
  loc_9E6E11: CVarAd
  loc_9E6E15: ParmAry1St
  loc_9E6E1B: FLdRfVar var_88
  loc_9E6E1E: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9E6E23: FLdRfVar var_88
  loc_9E6E26: Erase
  loc_9E6E27: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B99D54
  'Data Table: 4D5204
  loc_B98EF8: OnErrorGoto loc_B99CF0
  loc_B98EFB: FLdPr Me
  loc_B98EFE: MemLdI2 bGenerado
  loc_B98F01: BranchF loc_B98F05
  loc_B98F04: ExitProcHresult
  loc_B98F05: LitVarStr var_AC, "Generando reporte..."
  loc_B98F0A: PopAdLdVar
  loc_B98F0B: FLdPr Me
  loc_B98F0E: VCallAd Control_ID_statusBar
  loc_B98F11: FStAdFunc var_C0
  loc_B98F14: FLdPr var_C0
  loc_B98F17: LateIdSt
  loc_B98F1C: FFree1Ad var_C0
  loc_B98F1F: LitI4 &HB
  loc_B98F24: CI2I4
  loc_B98F25: FLdPr Me
  loc_B98F28: Me.MousePointer = from_stack_1
  loc_B98F2D: LitI2_Byte 0
  loc_B98F2F: PopTmpLdAd2 var_C2
  loc_B98F32: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B98F37: FLdPr Me
  loc_B98F3A: MemLdStr global_124
  loc_B98F3D: LitStr vbNullString
  loc_B98F40: NeStr
  loc_B98F42: BranchF loc_B98F48
  loc_B98F45: Branch loc_B99CC7
  loc_B98F48: LitI2_Byte 0
  loc_B98F4A: PopTmpLdAd2 var_C2
  loc_B98F4D: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B98F52: FLdPr Me
  loc_B98F55: MemLdStr global_124
  loc_B98F58: LitStr vbNullString
  loc_B98F5B: NeStr
  loc_B98F5D: BranchF loc_B98F63
  loc_B98F60: Branch loc_B99CC7
  loc_B98F63: LitI2_Byte 0
  loc_B98F65: PopTmpLdAd2 var_C2
  loc_B98F68: Call CodiInsuMsk_UnknownEvent_8()
  loc_B98F6D: LitI2_Byte 0
  loc_B98F6F: PopTmpLdAd2 var_C2
  loc_B98F72: Call CodiPartMsk_UnknownEvent_8()
  loc_B98F77: LitI2_Byte 0
  loc_B98F79: PopTmpLdAd2 var_C2
  loc_B98F7C: Call CodiOrgaMsk_UnknownEvent_8()
  loc_B98F81: LitI2_Byte 0
  loc_B98F83: PopTmpLdAd2 var_C2
  loc_B98F86: Call CodiFifuMsk_UnknownEvent_8()
  loc_B98F8B: FLdPr Me
  loc_B98F8E: VCallAd Control_ID_CodiInsuMsk
  loc_B98F91: FStAdFunc var_C0
  loc_B98F94: FLdPr var_C0
  loc_B98F97: LateIdLdVar var_D4 DispID_20 0
  loc_B98F9E: PopAd
  loc_B98FA0: FLdPr Me
  loc_B98FA3: VCallAd Control_ID_CodiInsuMsk
  loc_B98FA6: FStAdFunc var_DC
  loc_B98FA9: FLdPr var_DC
  loc_B98FAC: LateIdLdVar var_EC DispID_20 0
  loc_B98FB3: PopAd
  loc_B98FB5: LitVarStr var_BC, vbNullString
  loc_B98FBA: FStVarCopyObj var_110
  loc_B98FBD: FLdRfVar var_110
  loc_B98FC0: LitStr " AND imputacion.CodiInsu = "
  loc_B98FC3: FLdRfVar var_EC
  loc_B98FC6: CStrVarTmp
  loc_B98FC7: FStStrNoPop var_F0
  loc_B98FCA: ConcatStr
  loc_B98FCB: CVarStr var_100
  loc_B98FCE: FLdRfVar var_D4
  loc_B98FD1: CStrVarTmp
  loc_B98FD2: FStStrNoPop var_D8
  loc_B98FD5: LitStr vbNullString
  loc_B98FD8: NeStr
  loc_B98FDA: CVarBoolI2 var_AC
  loc_B98FDE: FLdRfVar var_120
  loc_B98FE1: ImpAdCallFPR4  = IIf(, , )
  loc_B98FE6: FLdRfVar var_120
  loc_B98FE9: CStrVarTmp
  loc_B98FEA: FStStr var_88
  loc_B98FED: FFreeStr var_D8 = ""
  loc_B98FF4: FFreeAd var_C0 = ""
  loc_B98FFB: FFreeVar var_D4 = "": var_EC = "": var_AC = "": var_100 = "": var_110 = ""
  loc_B9900A: FLdPr Me
  loc_B9900D: VCallAd Control_ID_CodiPartMsk
  loc_B99010: FStAdFunc var_C0
  loc_B99013: FLdPr var_C0
  loc_B99016: LateIdLdVar var_D4 DispID_22 0
  loc_B9901D: PopAd
  loc_B9901F: FLdPr Me
  loc_B99022: VCallAd Control_ID_CodiPartMsk
  loc_B99025: FStAdFunc var_DC
  loc_B99028: FLdPr var_DC
  loc_B9902B: LateIdLdVar var_EC DispID_22 0
  loc_B99032: PopAd
  loc_B99034: LitVarStr var_BC, vbNullString
  loc_B99039: FStVarCopyObj var_110
  loc_B9903C: FLdRfVar var_110
  loc_B9903F: LitStr " AND imputacion.CodiPart LIKE '"
  loc_B99042: FLdRfVar var_EC
  loc_B99045: CStrVarTmp
  loc_B99046: FStStrNoPop var_F0
  loc_B99049: ConcatStr
  loc_B9904A: FStStrNoPop var_124
  loc_B9904D: LitStr Chr(37) & "'"
  loc_B99050: ConcatStr
  loc_B99051: CVarStr var_100
  loc_B99054: FLdRfVar var_D4
  loc_B99057: CStrVarTmp
  loc_B99058: FStStrNoPop var_D8
  loc_B9905B: LitStr vbNullString
  loc_B9905E: NeStr
  loc_B99060: CVarBoolI2 var_AC
  loc_B99064: FLdRfVar var_120
  loc_B99067: ImpAdCallFPR4  = IIf(, , )
  loc_B9906C: FLdRfVar var_120
  loc_B9906F: CStrVarTmp
  loc_B99070: FStStr var_8C
  loc_B99073: FFreeStr var_D8 = "": var_F0 = ""
  loc_B9907C: FFreeAd var_C0 = ""
  loc_B99083: FFreeVar var_D4 = "": var_EC = "": var_AC = "": var_100 = "": var_110 = ""
  loc_B99092: FLdPr Me
  loc_B99095: VCallAd Control_ID_CodiOrgaMsk
  loc_B99098: FStAdFunc var_C0
  loc_B9909B: FLdPr var_C0
  loc_B9909E: LateIdLdVar var_D4 DispID_22 0
  loc_B990A5: PopAd
  loc_B990A7: FLdPr Me
  loc_B990AA: VCallAd Control_ID_CodiOrgaMsk
  loc_B990AD: FStAdFunc var_DC
  loc_B990B0: FLdPr var_DC
  loc_B990B3: LateIdLdVar var_EC DispID_22 0
  loc_B990BA: PopAd
  loc_B990BC: LitVarStr var_BC, vbNullString
  loc_B990C1: FStVarCopyObj var_110
  loc_B990C4: FLdRfVar var_110
  loc_B990C7: LitStr " AND imputacion.CodiOrga LIKE '"
  loc_B990CA: FLdRfVar var_EC
  loc_B990CD: CStrVarTmp
  loc_B990CE: FStStrNoPop var_F0
  loc_B990D1: ConcatStr
  loc_B990D2: FStStrNoPop var_124
  loc_B990D5: LitStr Chr(37) & "'"
  loc_B990D8: ConcatStr
  loc_B990D9: CVarStr var_100
  loc_B990DC: FLdRfVar var_D4
  loc_B990DF: CStrVarTmp
  loc_B990E0: FStStrNoPop var_D8
  loc_B990E3: LitStr vbNullString
  loc_B990E6: NeStr
  loc_B990E8: CVarBoolI2 var_AC
  loc_B990EC: FLdRfVar var_120
  loc_B990EF: ImpAdCallFPR4  = IIf(, , )
  loc_B990F4: FLdRfVar var_120
  loc_B990F7: CStrVarTmp
  loc_B990F8: FStStr var_90
  loc_B990FB: FFreeStr var_D8 = "": var_F0 = ""
  loc_B99104: FFreeAd var_C0 = ""
  loc_B9910B: FFreeVar var_D4 = "": var_EC = "": var_AC = "": var_100 = "": var_110 = ""
  loc_B9911A: FLdPr Me
  loc_B9911D: VCallAd Control_ID_CodiUngaMsk
  loc_B99120: FStAdFunc var_C0
  loc_B99123: FLdPr var_C0
  loc_B99126: LateIdLdVar var_D4 DispID_22 0
  loc_B9912D: PopAd
  loc_B9912F: FLdPr Me
  loc_B99132: VCallAd Control_ID_CodiUngaMsk
  loc_B99135: FStAdFunc var_DC
  loc_B99138: FLdPr var_DC
  loc_B9913B: LateIdLdVar var_EC DispID_22 0
  loc_B99142: PopAd
  loc_B99144: LitVarStr var_BC, vbNullString
  loc_B99149: FStVarCopyObj var_110
  loc_B9914C: FLdRfVar var_110
  loc_B9914F: LitStr " AND imputacion.CodiUnga = '"
  loc_B99152: FLdRfVar var_EC
  loc_B99155: CStrVarTmp
  loc_B99156: FStStrNoPop var_F0
  loc_B99159: ConcatStr
  loc_B9915A: FStStrNoPop var_124
  loc_B9915D: LitStr "'"
  loc_B99160: ConcatStr
  loc_B99161: CVarStr var_100
  loc_B99164: FLdRfVar var_D4
  loc_B99167: CStrVarTmp
  loc_B99168: FStStrNoPop var_D8
  loc_B9916B: LitStr vbNullString
  loc_B9916E: NeStr
  loc_B99170: CVarBoolI2 var_AC
  loc_B99174: FLdRfVar var_120
  loc_B99177: ImpAdCallFPR4  = IIf(, , )
  loc_B9917C: FLdRfVar var_120
  loc_B9917F: CStrVarTmp
  loc_B99180: FStStr var_94
  loc_B99183: FFreeStr var_D8 = "": var_F0 = ""
  loc_B9918C: FFreeAd var_C0 = ""
  loc_B99193: FFreeVar var_D4 = "": var_EC = "": var_AC = "": var_100 = "": var_110 = ""
  loc_B991A2: FLdPr Me
  loc_B991A5: VCallAd Control_ID_CodiFifuMsk
  loc_B991A8: FStAdFunc var_C0
  loc_B991AB: FLdPr var_C0
  loc_B991AE: LateIdLdVar var_D4 DispID_22 0
  loc_B991B5: PopAd
  loc_B991B7: FLdPr Me
  loc_B991BA: VCallAd Control_ID_CodiFifuMsk
  loc_B991BD: FStAdFunc var_DC
  loc_B991C0: FLdPr var_DC
  loc_B991C3: LateIdLdVar var_EC DispID_22 0
  loc_B991CA: PopAd
  loc_B991CC: LitVarStr var_BC, vbNullString
  loc_B991D1: FStVarCopyObj var_110
  loc_B991D4: FLdRfVar var_110
  loc_B991D7: LitStr " AND imputacion.CodiFifu LIKE '"
  loc_B991DA: FLdRfVar var_EC
  loc_B991DD: CStrVarTmp
  loc_B991DE: FStStrNoPop var_F0
  loc_B991E1: ConcatStr
  loc_B991E2: FStStrNoPop var_124
  loc_B991E5: LitStr Chr(37) & "'"
  loc_B991E8: ConcatStr
  loc_B991E9: CVarStr var_100
  loc_B991EC: FLdRfVar var_D4
  loc_B991EF: CStrVarTmp
  loc_B991F0: FStStrNoPop var_D8
  loc_B991F3: LitStr vbNullString
  loc_B991F6: NeStr
  loc_B991F8: CVarBoolI2 var_AC
  loc_B991FC: FLdRfVar var_120
  loc_B991FF: ImpAdCallFPR4  = IIf(, , )
  loc_B99204: FLdRfVar var_120
  loc_B99207: CStrVarTmp
  loc_B99208: FStStr var_98
  loc_B9920B: FFreeStr var_D8 = "": var_F0 = ""
  loc_B99214: FFreeAd var_C0 = ""
  loc_B9921B: FFreeVar var_D4 = "": var_EC = "": var_AC = "": var_100 = "": var_110 = ""
  loc_B9922A: FLdPr Me
  loc_B9922D: VCallAd Control_ID_mskDesde
  loc_B99230: FStAdFunc var_DC
  loc_B99233: FLdPr var_DC
  loc_B99236: LateIdLdVar var_D4 DispID_15 0
  loc_B9923D: PopAd
  loc_B9923F: FLdPr Me
  loc_B99242: VCallAd Control_ID_mskHasta
  loc_B99245: FStAdFunc var_15C
  loc_B99248: FLdPr var_15C
  loc_B9924B: LateIdLdVar var_16C DispID_15 0
  loc_B99252: PopAd
  loc_B99254: LitStr "SELECT imputacion.*, DetaInsu, DetaPart, DetaOrga, DetaFifu"
  loc_B99257: LitStr " FROM imputacion"
  loc_B9925A: ConcatStr
  loc_B9925B: FStStrNoPop var_D8
  loc_B9925E: LitStr " LEFT JOIN infogov.insumo ON insumo.CodiInsu = imputacion.CodiInsu"
  loc_B99261: ConcatStr
  loc_B99262: FStStrNoPop var_F0
  loc_B99265: LitStr " LEFT JOIN partida ON partida.PeriInfo = imputacion.PeriInfo AND partida.CodiPart = imputacion.CodiPart"
  loc_B99268: ConcatStr
  loc_B99269: FStStrNoPop var_124
  loc_B9926C: LitStr " LEFT JOIN infogov.organigrama ON organigrama.PeriInfo = imputacion.PeriInfo AND organigrama.CodiOrga = imputacion.CodiOrga"
  loc_B9926F: ConcatStr
  loc_B99270: FStStrNoPop var_128
  loc_B99273: LitStr " LEFT JOIN finalidad ON finalidad.PeriInfo = imputacion.PeriInfo AND finalidad.CodiFifu = imputacion.CodiFifu"
  loc_B99276: ConcatStr
  loc_B99277: FStStrNoPop var_12C
  loc_B9927A: LitStr " WHERE imputacion.PeriInfo = "
  loc_B9927D: ConcatStr
  loc_B9927E: FStStrNoPop var_134
  loc_B99281: FLdRfVar var_130
  loc_B99284: FLdPr Me
  loc_B99287: VCallAd Control_ID_cboPeriodo
  loc_B9928A: FStAdFunc var_C0
  loc_B9928D: FLdPr var_C0
  loc_B99290:  = Me.Text
  loc_B99295: ILdRf var_130
  loc_B99298: ConcatStr
  loc_B99299: FStStrNoPop var_138
  loc_B9929C: LitStr " AND FechImpu BETWEEN '"
  loc_B9929F: ConcatStr
  loc_B992A0: CVarStr var_120
  loc_B992A3: LitI4 1
  loc_B992A8: LitI4 1
  loc_B992AD: LitVarStr var_AC, "yyyy-mm-dd"
  loc_B992B2: FStVarCopyObj var_100
  loc_B992B5: FLdRfVar var_100
  loc_B992B8: FLdRfVar var_D4
  loc_B992BB: CStrVarTmp
  loc_B992BC: CVarStr var_EC
  loc_B992BF: FLdRfVar var_110
  loc_B992C2: ImpAdCallFPR4  = Format(, )
  loc_B992C7: FLdRfVar var_110
  loc_B992CA: ConcatVar var_148
  loc_B992CE: LitVarStr var_BC, "' AND '"
  loc_B992D3: ConcatVar var_158
  loc_B992D7: LitI4 1
  loc_B992DC: LitI4 1
  loc_B992E1: LitVarStr var_18C, "yyyy-mm-dd"
  loc_B992E6: FStVarCopyObj var_19C
  loc_B992E9: FLdRfVar var_19C
  loc_B992EC: FLdRfVar var_16C
  loc_B992EF: CStrVarTmp
  loc_B992F0: CVarStr var_17C
  loc_B992F3: FLdRfVar var_1AC
  loc_B992F6: ImpAdCallFPR4  = Format(, )
  loc_B992FB: FLdRfVar var_1AC
  loc_B992FE: ConcatVar var_1BC
  loc_B99302: LitVarStr var_1CC, "'"
  loc_B99307: ConcatVar var_1DC
  loc_B9930B: ILdRf var_88
  loc_B9930E: CVarStr var_1EC
  loc_B99311: ConcatVar var_1FC
  loc_B99315: ILdRf var_8C
  loc_B99318: CVarStr var_20C
  loc_B9931B: ConcatVar var_21C
  loc_B9931F: ILdRf var_90
  loc_B99322: CVarStr var_22C
  loc_B99325: ConcatVar var_23C
  loc_B99329: ILdRf var_94
  loc_B9932C: CVarStr var_24C
  loc_B9932F: ConcatVar var_25C
  loc_B99333: ILdRf var_98
  loc_B99336: CVarStr var_26C
  loc_B99339: ConcatVar var_27C
  loc_B9933D: LitVarStr var_28C, " ORDER BY CodiInsu, CodiPart, CodiOrga, CodiFifu"
  loc_B99342: ConcatVar var_29C
  loc_B99346: CStrVarVal var_2A0
  loc_B9934A: FLdPr Me
  loc_B9934D: MemLdRfVar from_stack_1.global_76
  loc_B99350: NewIfNullPr clsimputacion
  loc_B99353: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_B99358: FFreeStr var_D8 = "": var_F0 = "": var_124 = "": var_128 = "": var_12C = "": var_134 = "": var_130 = "": var_138 = ""
  loc_B9936D: FFreeAd var_C0 = "": var_DC = ""
  loc_B99376: FFreeVar var_D4 = "": var_EC = "": var_100 = "": var_120 = "": var_110 = "": var_148 = "": var_16C = "": var_17C = "": var_19C = "": var_158 = "": var_1AC = "": var_1BC = "": var_1DC = "": var_1FC = "": var_21C = "": var_23C = "": var_25C = "": var_27C = ""
  loc_B9939F: FLdRfVar var_2A4
  loc_B993A2: FLdPr Me
  loc_B993A5: MemLdRfVar from_stack_1.global_76
  loc_B993A8: NewIfNullPr clsimputacion
  loc_B993AB: from_stack_1 = clsimputacion.RecordCount
  loc_B993B0: ILdRf var_2A4
  loc_B993B3: LitI4 0
  loc_B993B8: EqI4
  loc_B993B9: BranchF loc_B993CC
  loc_B993BC: LitI4 0
  loc_B993C1: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B993C4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B993C9: Branch loc_B99CC7
  loc_B993CC: LitI4 0
  loc_B993D1: LitI4 1
  loc_B993D6: FLdPr Me
  loc_B993D9: MemLdRfVar from_stack_1.global_100
  loc_B993DC: Redim
  loc_B993E6: LitI4 0
  loc_B993EB: LitI4 5
  loc_B993F0: FLdPr Me
  loc_B993F3: MemLdRfVar from_stack_1.global_120
  loc_B993F6: Redim
  loc_B99400: LitI2_Byte 0
  loc_B99402: FLdPr Me
  loc_B99405: MemStI2 global_104
  loc_B99408: LitI2_Byte 0
  loc_B9940A: FLdPr Me
  loc_B9940D: MemStI2 global_106
  loc_B99410: LitI2_Byte 0
  loc_B99412: FLdPr Me
  loc_B99415: MemStI2 global_108
  loc_B99418: LitI2_Byte 0
  loc_B9941A: FLdPr Me
  loc_B9941D: MemStI2 global_110
  loc_B99420: FLdPr Me
  loc_B99423: MemLdRfVar from_stack_1.global_76
  loc_B99426: NewIfNullAd
  loc_B99429: FStAd var_2A8 
  loc_B9942D: FLdPr var_2A8
  loc_B99430: Call clsimputacion.MoveFirst()
  loc_B99435: LitI4 0
  loc_B9943A: Call Proc_229_38_BA68A0()
  loc_B9943F: Call Proc_229_39_B50B18()
  loc_B99444: FLdRfVar var_2A4
  loc_B99447: FLdPr var_2A8
  loc_B9944A: from_stack_1 = clsimputacion.RecordCount
  loc_B9944F: ILdRf var_2A4
  loc_B99452: LitI4 1
  loc_B99457: GtI4
  loc_B99458: BranchF loc_B996BF
  loc_B9945B: LitI4 2
  loc_B99460: FLdRfVar var_9C
  loc_B99463: FLdRfVar var_2A4
  loc_B99466: FLdPr var_2A8
  loc_B99469: from_stack_1 = clsimputacion.RecordCount
  loc_B9946E: ILdRf var_2A4
  loc_B99471: ForI4 var_2B0
  loc_B99477: FLdPr var_2A8
  loc_B9947A: Call clsimputacion.MoveSiguiente()
  loc_B9947F: FLdRfVar var_D4
  loc_B99482: FLdRfVar var_15C
  loc_B99485: LitVarStr var_AC, "CodiInsu"
  loc_B9948A: PopAdLdVar
  loc_B9948B: FLdRfVar var_DC
  loc_B9948E: FLdRfVar var_C0
  loc_B99491: FLdPr var_2A8
  loc_B99494: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B99499: FLdPr var_C0
  loc_B9949C:  = Me.Fields
  loc_B994A1: FLdPr var_DC
  loc_B994A4: from_stack_2 = Me.Item(from_stack_1)
  loc_B994A9: FLdPr var_15C
  loc_B994AC:  = Me.Value
  loc_B994B1: FLdRfVar var_D4
  loc_B994B4: FnCStrVar
  loc_B994B6: FStStrNoPop var_124
  loc_B994B9: FLdPr Me
  loc_B994BC: MemLdI2 global_104
  loc_B994BF: CI4UI1
  loc_B994C0: FLdPr Me
  loc_B994C3: MemLdStr global_100
  loc_B994C6: Ary1LdPr
  loc_B994C7: MemLdRfVar from_stack_1.global_0
  loc_B994CA: LdFixedStr
  loc_B994CD: FStStrNoPop var_D8
  loc_B994D0: ImpAdCallI2 Trim$()
  loc_B994D5: FStStr var_F0
  loc_B994D8: ILdRf var_D8
  loc_B994DB: FLdPr Me
  loc_B994DE: MemLdI2 global_104
  loc_B994E1: CI4UI1
  loc_B994E2: FLdPr Me
  loc_B994E5: MemLdStr global_100
  loc_B994E8: Ary1LdPr
  loc_B994E9: MemLdRfVar from_stack_1.global_0
  loc_B994EC: StFixedStr
  loc_B994EF: ILdRf var_F0
  loc_B994F2: EqStr
  loc_B994F4: FFreeStr var_D8 = "": var_124 = ""
  loc_B994FD: FFreeAd var_C0 = "": var_DC = ""
  loc_B99506: FFree1Var var_D4 = ""
  loc_B99509: BranchF loc_B996A8
  loc_B9950C: FLdRfVar var_D4
  loc_B9950F: FLdRfVar var_15C
  loc_B99512: LitVarStr var_AC, "CodiPart"
  loc_B99517: PopAdLdVar
  loc_B99518: FLdRfVar var_DC
  loc_B9951B: FLdRfVar var_C0
  loc_B9951E: FLdPr var_2A8
  loc_B99521: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B99526: FLdPr var_C0
  loc_B99529:  = Me.Fields
  loc_B9952E: FLdPr var_DC
  loc_B99531: from_stack_2 = Me.Item(from_stack_1)
  loc_B99536: FLdPr var_15C
  loc_B99539:  = Me.Value
  loc_B9953E: FLdRfVar var_D4
  loc_B99541: FLdPr Me
  loc_B99544: MemLdI2 global_106
  loc_B99547: CI4UI1
  loc_B99548: FLdPr Me
  loc_B9954B: MemLdI2 global_104
  loc_B9954E: CI4UI1
  loc_B9954F: FLdPr Me
  loc_B99552: MemLdStr global_100
  loc_B99555: Ary1LdPr
  loc_B99556: MemLdStr global_24
  loc_B99559: Ary1LdPr
  loc_B9955A: MemLdRfVar from_stack_1.global_0
  loc_B9955D: LdFixedStr
  loc_B99560: CVarStr var_EC
  loc_B99563: HardType
  loc_B99564: EqVarBool
  loc_B99566: FFreeAd var_C0 = "": var_DC = ""
  loc_B9956F: FFreeVar var_D4 = ""
  loc_B99576: BranchF loc_B9969B
  loc_B99579: FLdRfVar var_D4
  loc_B9957C: FLdRfVar var_15C
  loc_B9957F: LitVarStr var_AC, "CodiOrga"
  loc_B99584: PopAdLdVar
  loc_B99585: FLdRfVar var_DC
  loc_B99588: FLdRfVar var_C0
  loc_B9958B: FLdPr var_2A8
  loc_B9958E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B99593: FLdPr var_C0
  loc_B99596:  = Me.Fields
  loc_B9959B: FLdPr var_DC
  loc_B9959E: from_stack_2 = Me.Item(from_stack_1)
  loc_B995A3: FLdPr var_15C
  loc_B995A6:  = Me.Value
  loc_B995AB: FLdRfVar var_D4
  loc_B995AE: FLdPr Me
  loc_B995B1: MemLdI2 global_108
  loc_B995B4: CI4UI1
  loc_B995B5: FLdPr Me
  loc_B995B8: MemLdI2 global_106
  loc_B995BB: CI4UI1
  loc_B995BC: FLdPr Me
  loc_B995BF: MemLdI2 global_104
  loc_B995C2: CI4UI1
  loc_B995C3: FLdPr Me
  loc_B995C6: MemLdStr global_100
  loc_B995C9: Ary1LdPr
  loc_B995CA: MemLdStr global_24
  loc_B995CD: Ary1LdPr
  loc_B995CE: MemLdStr global_24
  loc_B995D1: Ary1LdPr
  loc_B995D2: MemLdRfVar from_stack_1.global_0
  loc_B995D5: LdFixedStr
  loc_B995D8: CVarStr var_EC
  loc_B995DB: HardType
  loc_B995DC: EqVarBool
  loc_B995DE: FFreeAd var_C0 = "": var_DC = ""
  loc_B995E7: FFreeVar var_D4 = ""
  loc_B995EE: BranchF loc_B9968E
  loc_B995F1: FLdRfVar var_D4
  loc_B995F4: FLdRfVar var_15C
  loc_B995F7: LitVarStr var_AC, "CodiFifu"
  loc_B995FC: PopAdLdVar
  loc_B995FD: FLdRfVar var_DC
  loc_B99600: FLdRfVar var_C0
  loc_B99603: FLdPr var_2A8
  loc_B99606: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B9960B: FLdPr var_C0
  loc_B9960E:  = Me.Fields
  loc_B99613: FLdPr var_DC
  loc_B99616: from_stack_2 = Me.Item(from_stack_1)
  loc_B9961B: FLdPr var_15C
  loc_B9961E:  = Me.Value
  loc_B99623: FLdRfVar var_D4
  loc_B99626: FLdPr Me
  loc_B99629: MemLdI2 global_110
  loc_B9962C: CI4UI1
  loc_B9962D: FLdPr Me
  loc_B99630: MemLdI2 global_108
  loc_B99633: CI4UI1
  loc_B99634: FLdPr Me
  loc_B99637: MemLdI2 global_106
  loc_B9963A: CI4UI1
  loc_B9963B: FLdPr Me
  loc_B9963E: MemLdI2 global_104
  loc_B99641: CI4UI1
  loc_B99642: FLdPr Me
  loc_B99645: MemLdStr global_100
  loc_B99648: Ary1LdPr
  loc_B99649: MemLdStr global_24
  loc_B9964C: Ary1LdPr
  loc_B9964D: MemLdStr global_24
  loc_B99650: Ary1LdPr
  loc_B99651: MemLdStr global_20
  loc_B99654: Ary1LdPr
  loc_B99655: MemLdRfVar from_stack_1.global_0
  loc_B99658: LdFixedStr
  loc_B9965B: CVarStr var_EC
  loc_B9965E: HardType
  loc_B9965F: EqVarBool
  loc_B99661: FFreeAd var_C0 = "": var_DC = ""
  loc_B9966A: FFreeVar var_D4 = ""
  loc_B99671: BranchF loc_B99681
  loc_B99674: LitI4 4
  loc_B99679: Call Proc_229_38_BA68A0()
  loc_B9967E: Branch loc_B9968B
  loc_B99681: LitI4 3
  loc_B99686: Call Proc_229_38_BA68A0()
  loc_B9968B: Branch loc_B99698
  loc_B9968E: LitI4 2
  loc_B99693: Call Proc_229_38_BA68A0()
  loc_B99698: Branch loc_B996A5
  loc_B9969B: LitI4 1
  loc_B996A0: Call Proc_229_38_BA68A0()
  loc_B996A5: Branch loc_B996B2
  loc_B996A8: LitI4 0
  loc_B996AD: Call Proc_229_38_BA68A0()
  loc_B996B2: Call Proc_229_39_B50B18()
  loc_B996B7: FLdRfVar var_9C
  loc_B996BA: NextI4 var_2B0, loc_B99477
  loc_B996BF: LitNothing
  loc_B996C1: FStAd var_2A8 
  loc_B996C5: LitI2_Byte 1
  loc_B996C7: FLdPr Me
  loc_B996CA: MemLdRfVar from_stack_1.global_104
  loc_B996CD: FLdPr Me
  loc_B996D0: MemLdStr global_100
  loc_B996D3: LitI2_Byte 1
  loc_B996D5: FnUBound
  loc_B996D7: CI2I4
  loc_B996D8: ForI2 var_2B4
  loc_B996DE: LitI2_Byte 1
  loc_B996E0: FLdPr Me
  loc_B996E3: MemLdRfVar from_stack_1.global_106
  loc_B996E6: FLdPr Me
  loc_B996E9: MemLdI2 global_104
  loc_B996EC: CI4UI1
  loc_B996ED: FLdPr Me
  loc_B996F0: MemLdStr global_100
  loc_B996F3: Ary1LdPr
  loc_B996F4: MemLdStr global_24
  loc_B996F7: LitI2_Byte 1
  loc_B996F9: FnUBound
  loc_B996FB: CI2I4
  loc_B996FC: ForI2 var_2B8
  loc_B99702: LitI2_Byte 1
  loc_B99704: FLdPr Me
  loc_B99707: MemLdRfVar from_stack_1.global_108
  loc_B9970A: FLdPr Me
  loc_B9970D: MemLdI2 global_106
  loc_B99710: CI4UI1
  loc_B99711: FLdPr Me
  loc_B99714: MemLdI2 global_104
  loc_B99717: CI4UI1
  loc_B99718: FLdPr Me
  loc_B9971B: MemLdStr global_100
  loc_B9971E: Ary1LdPr
  loc_B9971F: MemLdStr global_24
  loc_B99722: Ary1LdPr
  loc_B99723: MemLdStr global_24
  loc_B99726: LitI2_Byte 1
  loc_B99728: FnUBound
  loc_B9972A: CI2I4
  loc_B9972B: ForI2 var_2BC
  loc_B99731: LitI2_Byte 1
  loc_B99733: FLdPr Me
  loc_B99736: MemLdRfVar from_stack_1.global_110
  loc_B99739: FLdPr Me
  loc_B9973C: MemLdI2 global_108
  loc_B9973F: CI4UI1
  loc_B99740: FLdPr Me
  loc_B99743: MemLdI2 global_106
  loc_B99746: CI4UI1
  loc_B99747: FLdPr Me
  loc_B9974A: MemLdI2 global_104
  loc_B9974D: CI4UI1
  loc_B9974E: FLdPr Me
  loc_B99751: MemLdStr global_100
  loc_B99754: Ary1LdPr
  loc_B99755: MemLdStr global_24
  loc_B99758: Ary1LdPr
  loc_B99759: MemLdStr global_24
  loc_B9975C: Ary1LdPr
  loc_B9975D: MemLdStr global_20
  loc_B99760: LitI2_Byte 1
  loc_B99762: FnUBound
  loc_B99764: CI2I4
  loc_B99765: ForI2 var_2C0
  loc_B9976B: LitI2_Byte 1
  loc_B9976D: FLdPr Me
  loc_B99770: MemLdRfVar from_stack_1.global_114
  loc_B99773: LitI2_Byte 5
  loc_B99775: ForI2 var_2C4
  loc_B9977B: LitI2_Byte 0
  loc_B9977D: FLdPr Me
  loc_B99780: MemLdI2 global_114
  loc_B99783: CI4UI1
  loc_B99784: FLdPr Me
  loc_B99787: MemLdI2 global_108
  loc_B9978A: CI4UI1
  loc_B9978B: FLdPr Me
  loc_B9978E: MemLdI2 global_106
  loc_B99791: CI4UI1
  loc_B99792: FLdPr Me
  loc_B99795: MemLdI2 global_104
  loc_B99798: CI4UI1
  loc_B99799: FLdPr Me
  loc_B9979C: MemLdStr global_100
  loc_B9979F: AryLock
  loc_B997A2: Ary1LdPr
  loc_B997A3: MemLdStr global_24
  loc_B997A6: AryLock
  loc_B997A9: Ary1LdPr
  loc_B997AA: MemLdStr global_24
  loc_B997AD: AryLock
  loc_B997B0: Ary1LdPr
  loc_B997B1: MemLdRfVar from_stack_1.global_24
  loc_B997B4: AryInRecLdRf
  loc_B997BA: CVarRef
  loc_B997BF: LitI2_Byte &HFF
  loc_B997C1: FLdPr Me
  loc_B997C4: MemLdI2 global_114
  loc_B997C7: CI4UI1
  loc_B997C8: FLdPr Me
  loc_B997CB: MemLdI2 global_110
  loc_B997CE: CI4UI1
  loc_B997CF: FLdPr Me
  loc_B997D2: MemLdI2 global_108
  loc_B997D5: CI4UI1
  loc_B997D6: FLdPr Me
  loc_B997D9: MemLdI2 global_106
  loc_B997DC: CI4UI1
  loc_B997DD: FLdPr Me
  loc_B997E0: MemLdI2 global_104
  loc_B997E3: CI4UI1
  loc_B997E4: FLdPr Me
  loc_B997E7: MemLdStr global_100
  loc_B997EA: Ary1LdPr
  loc_B997EB: MemLdStr global_24
  loc_B997EE: Ary1LdPr
  loc_B997EF: MemLdStr global_24
  loc_B997F2: Ary1LdPr
  loc_B997F3: MemLdStr global_20
  loc_B997F6: Ary1LdPr
  loc_B997F7: MemLdRfVar from_stack_1.global_24
  loc_B997FA: AryInRecLdPr
  loc_B99800: MemLdStr global_0
  loc_B99803: CVarStr var_AC
  loc_B99806: PopAdLdVar
  loc_B99807: FLdPr Me
  loc_B9980A: MemLdRfVar from_stack_1.global_116
  loc_B9980D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B99812: AryUnlock
  loc_B99815: AryUnlock
  loc_B99818: AryUnlock
  loc_B9981B: FLdPr Me
  loc_B9981E: MemLdRfVar from_stack_1.global_114
  loc_B99821: NextI2 var_2C4, loc_B9977B
  loc_B99826: FLdPr Me
  loc_B99829: MemLdRfVar from_stack_1.global_110
  loc_B9982C: NextI2 var_2C0, loc_B9976B
  loc_B99831: LitI2_Byte 1
  loc_B99833: FLdPr Me
  loc_B99836: MemLdRfVar from_stack_1.global_114
  loc_B99839: LitI2_Byte 5
  loc_B9983B: ForI2 var_2D4
  loc_B99841: LitI2_Byte 0
  loc_B99843: FLdPr Me
  loc_B99846: MemLdI2 global_114
  loc_B99849: CI4UI1
  loc_B9984A: FLdPr Me
  loc_B9984D: MemLdI2 global_106
  loc_B99850: CI4UI1
  loc_B99851: FLdPr Me
  loc_B99854: MemLdI2 global_104
  loc_B99857: CI4UI1
  loc_B99858: FLdPr Me
  loc_B9985B: MemLdStr global_100
  loc_B9985E: AryLock
  loc_B99861: Ary1LdPr
  loc_B99862: MemLdStr global_24
  loc_B99865: AryLock
  loc_B99868: Ary1LdPr
  loc_B99869: MemLdRfVar from_stack_1.global_28
  loc_B9986C: AryInRecLdRf
  loc_B99872: CVarRef
  loc_B99877: LitI2_Byte &HFF
  loc_B99879: FLdPr Me
  loc_B9987C: MemLdI2 global_114
  loc_B9987F: CI4UI1
  loc_B99880: FLdPr Me
  loc_B99883: MemLdI2 global_108
  loc_B99886: CI4UI1
  loc_B99887: FLdPr Me
  loc_B9988A: MemLdI2 global_106
  loc_B9988D: CI4UI1
  loc_B9988E: FLdPr Me
  loc_B99891: MemLdI2 global_104
  loc_B99894: CI4UI1
  loc_B99895: FLdPr Me
  loc_B99898: MemLdStr global_100
  loc_B9989B: Ary1LdPr
  loc_B9989C: MemLdStr global_24
  loc_B9989F: Ary1LdPr
  loc_B998A0: MemLdStr global_24
  loc_B998A3: Ary1LdPr
  loc_B998A4: MemLdRfVar from_stack_1.global_24
  loc_B998A7: AryInRecLdPr
  loc_B998AD: MemLdStr global_0
  loc_B998B0: CVarStr var_AC
  loc_B998B3: PopAdLdVar
  loc_B998B4: FLdPr Me
  loc_B998B7: MemLdRfVar from_stack_1.global_116
  loc_B998BA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B998BF: AryUnlock
  loc_B998C2: AryUnlock
  loc_B998C5: FLdPr Me
  loc_B998C8: MemLdRfVar from_stack_1.global_114
  loc_B998CB: NextI2 var_2D4, loc_B99841
  loc_B998D0: FLdPr Me
  loc_B998D3: MemLdRfVar from_stack_1.global_108
  loc_B998D6: NextI2 var_2BC, loc_B99731
  loc_B998DB: LitI2_Byte 1
  loc_B998DD: FLdPr Me
  loc_B998E0: MemLdRfVar from_stack_1.global_114
  loc_B998E3: LitI2_Byte 5
  loc_B998E5: ForI2 var_2D8
  loc_B998EB: LitI2_Byte 0
  loc_B998ED: FLdPr Me
  loc_B998F0: MemLdI2 global_114
  loc_B998F3: CI4UI1
  loc_B998F4: FLdPr Me
  loc_B998F7: MemLdI2 global_104
  loc_B998FA: CI4UI1
  loc_B998FB: FLdPr Me
  loc_B998FE: MemLdStr global_100
  loc_B99901: AryLock
  loc_B99904: Ary1LdPr
  loc_B99905: MemLdRfVar from_stack_1.global_28
  loc_B99908: AryInRecLdRf
  loc_B9990E: CVarRef
  loc_B99913: LitI2_Byte &HFF
  loc_B99915: FLdPr Me
  loc_B99918: MemLdI2 global_114
  loc_B9991B: CI4UI1
  loc_B9991C: FLdPr Me
  loc_B9991F: MemLdI2 global_106
  loc_B99922: CI4UI1
  loc_B99923: FLdPr Me
  loc_B99926: MemLdI2 global_104
  loc_B99929: CI4UI1
  loc_B9992A: FLdPr Me
  loc_B9992D: MemLdStr global_100
  loc_B99930: Ary1LdPr
  loc_B99931: MemLdStr global_24
  loc_B99934: Ary1LdPr
  loc_B99935: MemLdRfVar from_stack_1.global_28
  loc_B99938: AryInRecLdPr
  loc_B9993E: MemLdStr global_0
  loc_B99941: CVarStr var_AC
  loc_B99944: PopAdLdVar
  loc_B99945: FLdPr Me
  loc_B99948: MemLdRfVar from_stack_1.global_116
  loc_B9994B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B99950: AryUnlock
  loc_B99953: FLdPr Me
  loc_B99956: MemLdRfVar from_stack_1.global_114
  loc_B99959: NextI2 var_2D8, loc_B998EB
  loc_B9995E: FLdPr Me
  loc_B99961: MemLdRfVar from_stack_1.global_106
  loc_B99964: NextI2 var_2B8, loc_B99702
  loc_B99969: LitI2_Byte 1
  loc_B9996B: FLdPr Me
  loc_B9996E: MemLdRfVar from_stack_1.global_114
  loc_B99971: LitI2_Byte 5
  loc_B99973: ForI2 var_2DC
  loc_B99979: LitI2_Byte 0
  loc_B9997B: FLdPr Me
  loc_B9997E: MemLdI2 global_114
  loc_B99981: CI4UI1
  loc_B99982: FLdPr Me
  loc_B99985: MemLdStr global_120
  loc_B99988: AryLock
  loc_B9998B: Ary1LdRf
  loc_B9998C: CVarRef
  loc_B99991: LitI2_Byte &HFF
  loc_B99993: FLdPr Me
  loc_B99996: MemLdI2 global_114
  loc_B99999: CI4UI1
  loc_B9999A: FLdPr Me
  loc_B9999D: MemLdI2 global_104
  loc_B999A0: CI4UI1
  loc_B999A1: FLdPr Me
  loc_B999A4: MemLdStr global_100
  loc_B999A7: Ary1LdPr
  loc_B999A8: MemLdRfVar from_stack_1.global_28
  loc_B999AB: AryInRecLdPr
  loc_B999B1: MemLdStr global_0
  loc_B999B4: CVarStr var_AC
  loc_B999B7: PopAdLdVar
  loc_B999B8: FLdPr Me
  loc_B999BB: MemLdRfVar from_stack_1.global_116
  loc_B999BE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B999C3: AryUnlock
  loc_B999C6: FLdPr Me
  loc_B999C9: MemLdRfVar from_stack_1.global_114
  loc_B999CC: NextI2 var_2DC, loc_B99979
  loc_B999D1: FLdPr Me
  loc_B999D4: MemLdRfVar from_stack_1.global_104
  loc_B999D7: NextI2 var_2B4, loc_B996DE
  loc_B999DC: LitI2_Byte 1
  loc_B999DE: FLdPr Me
  loc_B999E1: MemLdRfVar from_stack_1.global_104
  loc_B999E4: FLdPr Me
  loc_B999E7: MemLdStr global_100
  loc_B999EA: LitI2_Byte 1
  loc_B999EC: FnUBound
  loc_B999EE: CI2I4
  loc_B999EF: ForI2 var_2E0
  loc_B999F5: LitI2_Byte 1
  loc_B999F7: FLdPr Me
  loc_B999FA: MemLdRfVar from_stack_1.global_106
  loc_B999FD: FLdPr Me
  loc_B99A00: MemLdI2 global_104
  loc_B99A03: CI4UI1
  loc_B99A04: FLdPr Me
  loc_B99A07: MemLdStr global_100
  loc_B99A0A: Ary1LdPr
  loc_B99A0B: MemLdStr global_24
  loc_B99A0E: LitI2_Byte 1
  loc_B99A10: FnUBound
  loc_B99A12: CI2I4
  loc_B99A13: ForI2 var_2E4
  loc_B99A19: LitI2_Byte 1
  loc_B99A1B: FLdPr Me
  loc_B99A1E: MemLdRfVar from_stack_1.global_108
  loc_B99A21: FLdPr Me
  loc_B99A24: MemLdI2 global_106
  loc_B99A27: CI4UI1
  loc_B99A28: FLdPr Me
  loc_B99A2B: MemLdI2 global_104
  loc_B99A2E: CI4UI1
  loc_B99A2F: FLdPr Me
  loc_B99A32: MemLdStr global_100
  loc_B99A35: Ary1LdPr
  loc_B99A36: MemLdStr global_24
  loc_B99A39: Ary1LdPr
  loc_B99A3A: MemLdStr global_24
  loc_B99A3D: LitI2_Byte 1
  loc_B99A3F: FnUBound
  loc_B99A41: CI2I4
  loc_B99A42: ForI2 var_2E8
  loc_B99A48: LitI2_Byte 1
  loc_B99A4A: FLdPr Me
  loc_B99A4D: MemLdRfVar from_stack_1.global_110
  loc_B99A50: FLdPr Me
  loc_B99A53: MemLdI2 global_108
  loc_B99A56: CI4UI1
  loc_B99A57: FLdPr Me
  loc_B99A5A: MemLdI2 global_106
  loc_B99A5D: CI4UI1
  loc_B99A5E: FLdPr Me
  loc_B99A61: MemLdI2 global_104
  loc_B99A64: CI4UI1
  loc_B99A65: FLdPr Me
  loc_B99A68: MemLdStr global_100
  loc_B99A6B: Ary1LdPr
  loc_B99A6C: MemLdStr global_24
  loc_B99A6F: Ary1LdPr
  loc_B99A70: MemLdStr global_24
  loc_B99A73: Ary1LdPr
  loc_B99A74: MemLdStr global_20
  loc_B99A77: LitI2_Byte 1
  loc_B99A79: FnUBound
  loc_B99A7B: CI2I4
  loc_B99A7C: ForI2 var_2EC
  loc_B99A82: LitI4 1
  loc_B99A87: FLdPr Me
  loc_B99A8A: MemLdI2 global_110
  loc_B99A8D: CI4UI1
  loc_B99A8E: FLdPr Me
  loc_B99A91: MemLdI2 global_108
  loc_B99A94: CI4UI1
  loc_B99A95: FLdPr Me
  loc_B99A98: MemLdI2 global_106
  loc_B99A9B: CI4UI1
  loc_B99A9C: FLdPr Me
  loc_B99A9F: MemLdI2 global_104
  loc_B99AA2: CI4UI1
  loc_B99AA3: FLdPr Me
  loc_B99AA6: MemLdStr global_100
  loc_B99AA9: Ary1LdPr
  loc_B99AAA: MemLdStr global_24
  loc_B99AAD: Ary1LdPr
  loc_B99AAE: MemLdStr global_24
  loc_B99AB1: Ary1LdPr
  loc_B99AB2: MemLdStr global_20
  loc_B99AB5: Ary1LdPr
  loc_B99AB6: MemStI4 global_16
  loc_B99AB9: FLdPr Me
  loc_B99ABC: MemLdI2 global_108
  loc_B99ABF: CI4UI1
  loc_B99AC0: FLdPr Me
  loc_B99AC3: MemLdI2 global_106
  loc_B99AC6: CI4UI1
  loc_B99AC7: FLdPr Me
  loc_B99ACA: MemLdI2 global_104
  loc_B99ACD: CI4UI1
  loc_B99ACE: FLdPr Me
  loc_B99AD1: MemLdStr global_100
  loc_B99AD4: Ary1LdPr
  loc_B99AD5: MemLdStr global_24
  loc_B99AD8: Ary1LdPr
  loc_B99AD9: MemLdStr global_24
  loc_B99ADC: Ary1LdPr
  loc_B99ADD: MemLdStr global_16
  loc_B99AE0: FLdPr Me
  loc_B99AE3: MemLdI2 global_110
  loc_B99AE6: CI4UI1
  loc_B99AE7: FLdPr Me
  loc_B99AEA: MemLdI2 global_108
  loc_B99AED: CI4UI1
  loc_B99AEE: FLdPr Me
  loc_B99AF1: MemLdI2 global_106
  loc_B99AF4: CI4UI1
  loc_B99AF5: FLdPr Me
  loc_B99AF8: MemLdI2 global_104
  loc_B99AFB: CI4UI1
  loc_B99AFC: FLdPr Me
  loc_B99AFF: MemLdStr global_100
  loc_B99B02: Ary1LdPr
  loc_B99B03: MemLdStr global_24
  loc_B99B06: Ary1LdPr
  loc_B99B07: MemLdStr global_24
  loc_B99B0A: Ary1LdPr
  loc_B99B0B: MemLdStr global_20
  loc_B99B0E: Ary1LdPr
  loc_B99B0F: MemLdStr global_16
  loc_B99B12: AddI4
  loc_B99B13: FLdPr Me
  loc_B99B16: MemLdI2 global_108
  loc_B99B19: CI4UI1
  loc_B99B1A: FLdPr Me
  loc_B99B1D: MemLdI2 global_106
  loc_B99B20: CI4UI1
  loc_B99B21: FLdPr Me
  loc_B99B24: MemLdI2 global_104
  loc_B99B27: CI4UI1
  loc_B99B28: FLdPr Me
  loc_B99B2B: MemLdStr global_100
  loc_B99B2E: Ary1LdPr
  loc_B99B2F: MemLdStr global_24
  loc_B99B32: Ary1LdPr
  loc_B99B33: MemLdStr global_24
  loc_B99B36: Ary1LdPr
  loc_B99B37: MemStI4 global_16
  loc_B99B3A: FLdPr Me
  loc_B99B3D: MemLdRfVar from_stack_1.global_110
  loc_B99B40: NextI2 var_2EC, loc_B99A82
  loc_B99B45: FLdPr Me
  loc_B99B48: MemLdI2 global_108
  loc_B99B4B: CI4UI1
  loc_B99B4C: FLdPr Me
  loc_B99B4F: MemLdI2 global_106
  loc_B99B52: CI4UI1
  loc_B99B53: FLdPr Me
  loc_B99B56: MemLdI2 global_104
  loc_B99B59: CI4UI1
  loc_B99B5A: FLdPr Me
  loc_B99B5D: MemLdStr global_100
  loc_B99B60: Ary1LdPr
  loc_B99B61: MemLdStr global_24
  loc_B99B64: Ary1LdPr
  loc_B99B65: MemLdStr global_24
  loc_B99B68: Ary1LdPr
  loc_B99B69: MemLdStr global_16
  loc_B99B6C: LitI4 1
  loc_B99B71: AddI4
  loc_B99B72: FLdPr Me
  loc_B99B75: MemLdI2 global_108
  loc_B99B78: CI4UI1
  loc_B99B79: FLdPr Me
  loc_B99B7C: MemLdI2 global_106
  loc_B99B7F: CI4UI1
  loc_B99B80: FLdPr Me
  loc_B99B83: MemLdI2 global_104
  loc_B99B86: CI4UI1
  loc_B99B87: FLdPr Me
  loc_B99B8A: MemLdStr global_100
  loc_B99B8D: Ary1LdPr
  loc_B99B8E: MemLdStr global_24
  loc_B99B91: Ary1LdPr
  loc_B99B92: MemLdStr global_24
  loc_B99B95: Ary1LdPr
  loc_B99B96: MemStI4 global_16
  loc_B99B99: FLdPr Me
  loc_B99B9C: MemLdI2 global_106
  loc_B99B9F: CI4UI1
  loc_B99BA0: FLdPr Me
  loc_B99BA3: MemLdI2 global_104
  loc_B99BA6: CI4UI1
  loc_B99BA7: FLdPr Me
  loc_B99BAA: MemLdStr global_100
  loc_B99BAD: Ary1LdPr
  loc_B99BAE: MemLdStr global_24
  loc_B99BB1: Ary1LdPr
  loc_B99BB2: MemLdStr global_20
  loc_B99BB5: FLdPr Me
  loc_B99BB8: MemLdI2 global_108
  loc_B99BBB: CI4UI1
  loc_B99BBC: FLdPr Me
  loc_B99BBF: MemLdI2 global_106
  loc_B99BC2: CI4UI1
  loc_B99BC3: FLdPr Me
  loc_B99BC6: MemLdI2 global_104
  loc_B99BC9: CI4UI1
  loc_B99BCA: FLdPr Me
  loc_B99BCD: MemLdStr global_100
  loc_B99BD0: Ary1LdPr
  loc_B99BD1: MemLdStr global_24
  loc_B99BD4: Ary1LdPr
  loc_B99BD5: MemLdStr global_24
  loc_B99BD8: Ary1LdPr
  loc_B99BD9: MemLdStr global_16
  loc_B99BDC: AddI4
  loc_B99BDD: FLdPr Me
  loc_B99BE0: MemLdI2 global_106
  loc_B99BE3: CI4UI1
  loc_B99BE4: FLdPr Me
  loc_B99BE7: MemLdI2 global_104
  loc_B99BEA: CI4UI1
  loc_B99BEB: FLdPr Me
  loc_B99BEE: MemLdStr global_100
  loc_B99BF1: Ary1LdPr
  loc_B99BF2: MemLdStr global_24
  loc_B99BF5: Ary1LdPr
  loc_B99BF6: MemStI4 global_20
  loc_B99BF9: FLdPr Me
  loc_B99BFC: MemLdRfVar from_stack_1.global_108
  loc_B99BFF: NextI2 var_2E8, loc_B99A48
  loc_B99C04: FLdPr Me
  loc_B99C07: MemLdI2 global_106
  loc_B99C0A: CI4UI1
  loc_B99C0B: FLdPr Me
  loc_B99C0E: MemLdI2 global_104
  loc_B99C11: CI4UI1
  loc_B99C12: FLdPr Me
  loc_B99C15: MemLdStr global_100
  loc_B99C18: Ary1LdPr
  loc_B99C19: MemLdStr global_24
  loc_B99C1C: Ary1LdPr
  loc_B99C1D: MemLdStr global_20
  loc_B99C20: LitI4 1
  loc_B99C25: AddI4
  loc_B99C26: FLdPr Me
  loc_B99C29: MemLdI2 global_106
  loc_B99C2C: CI4UI1
  loc_B99C2D: FLdPr Me
  loc_B99C30: MemLdI2 global_104
  loc_B99C33: CI4UI1
  loc_B99C34: FLdPr Me
  loc_B99C37: MemLdStr global_100
  loc_B99C3A: Ary1LdPr
  loc_B99C3B: MemLdStr global_24
  loc_B99C3E: Ary1LdPr
  loc_B99C3F: MemStI4 global_20
  loc_B99C42: FLdPr Me
  loc_B99C45: MemLdI2 global_104
  loc_B99C48: CI4UI1
  loc_B99C49: FLdPr Me
  loc_B99C4C: MemLdStr global_100
  loc_B99C4F: Ary1LdPr
  loc_B99C50: MemLdStr global_20
  loc_B99C53: FLdPr Me
  loc_B99C56: MemLdI2 global_106
  loc_B99C59: CI4UI1
  loc_B99C5A: FLdPr Me
  loc_B99C5D: MemLdI2 global_104
  loc_B99C60: CI4UI1
  loc_B99C61: FLdPr Me
  loc_B99C64: MemLdStr global_100
  loc_B99C67: Ary1LdPr
  loc_B99C68: MemLdStr global_24
  loc_B99C6B: Ary1LdPr
  loc_B99C6C: MemLdStr global_20
  loc_B99C6F: AddI4
  loc_B99C70: FLdPr Me
  loc_B99C73: MemLdI2 global_104
  loc_B99C76: CI4UI1
  loc_B99C77: FLdPr Me
  loc_B99C7A: MemLdStr global_100
  loc_B99C7D: Ary1LdPr
  loc_B99C7E: MemStI4 global_20
  loc_B99C81: FLdPr Me
  loc_B99C84: MemLdRfVar from_stack_1.global_106
  loc_B99C87: NextI2 var_2E4, loc_B99A19
  loc_B99C8C: FLdPr Me
  loc_B99C8F: MemLdI2 global_104
  loc_B99C92: CI4UI1
  loc_B99C93: FLdPr Me
  loc_B99C96: MemLdStr global_100
  loc_B99C99: Ary1LdPr
  loc_B99C9A: MemLdStr global_20
  loc_B99C9D: LitI4 1
  loc_B99CA2: AddI4
  loc_B99CA3: FLdPr Me
  loc_B99CA6: MemLdI2 global_104
  loc_B99CA9: CI4UI1
  loc_B99CAA: FLdPr Me
  loc_B99CAD: MemLdStr global_100
  loc_B99CB0: Ary1LdPr
  loc_B99CB1: MemStI4 global_20
  loc_B99CB4: FLdPr Me
  loc_B99CB7: MemLdRfVar from_stack_1.global_104
  loc_B99CBA: NextI2 var_2E0, loc_B999F5
  loc_B99CBF: LitI2_Byte &HFF
  loc_B99CC1: FLdPr Me
  loc_B99CC4: MemStI2 bGenerado
  loc_B99CC7: LitI4 0
  loc_B99CCC: CI2I4
  loc_B99CCD: FLdPr Me
  loc_B99CD0: Me.MousePointer = from_stack_1
  loc_B99CD5: LitVarStr var_AC, vbNullString
  loc_B99CDA: PopAdLdVar
  loc_B99CDB: FLdPr Me
  loc_B99CDE: VCallAd Control_ID_statusBar
  loc_B99CE1: FStAdFunc var_C0
  loc_B99CE4: FLdPr var_C0
  loc_B99CE7: LateIdSt
  loc_B99CEC: FFree1Ad var_C0
  loc_B99CEF: ExitProcHresult
  loc_B99CF0: LitI4 0
  loc_B99CF5: LitStr "Error "
  loc_B99CF8: FLdRfVar var_2A4
  loc_B99CFB: ImpAdCallI2 Err 'rtcErrObj
  loc_B99D00: FStAdFunc var_C0
  loc_B99D03: FLdPr var_C0
  loc_B99D06:  = Err.Number
  loc_B99D0B: ILdRf var_2A4
  loc_B99D0E: CStrI4
  loc_B99D10: FStStrNoPop var_D8
  loc_B99D13: ConcatStr
  loc_B99D14: FStStrNoPop var_F0
  loc_B99D17: LitStr ": "
  loc_B99D1A: ConcatStr
  loc_B99D1B: FStStrNoPop var_128
  loc_B99D1E: FLdRfVar var_124
  loc_B99D21: ImpAdCallI2 Err 'rtcErrObj
  loc_B99D26: FStAdFunc var_DC
  loc_B99D29: FLdPr var_DC
  loc_B99D2C:  = Err.Description
  loc_B99D31: ILdRf var_124
  loc_B99D34: ConcatStr
  loc_B99D35: FStStrNoPop var_12C
  loc_B99D38: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B99D3D: FFreeStr var_D8 = "": var_F0 = "": var_128 = "": var_124 = ""
  loc_B99D4A: FFreeAd var_C0 = ""
  loc_B99D51: ExitProcHresult
  loc_B99D52: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B3A5F4
  'Data Table: 4D5204
  loc_B39C20: FLdRfVar var_88
  loc_B39C23: LitI2_Byte 0
  loc_B39C25: LitI2_Byte &HFF
  loc_B39C27: ImpAdLdI4 MemVar_C3D83C
  loc_B39C2A: FLdPr Me
  loc_B39C2D: MemLdRfVar from_stack_1.global_96
  loc_B39C30: NewIfNullPr IFileSystem3
  loc_B39C33: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B39C38: ILdRf var_88
  loc_B39C3B: FLdPr Me
  loc_B39C3E: MemStVarAd
  loc_B39C42: FFree1Ad var_88
  loc_B39C45: Call Proc_229_40_AE68B0()
  loc_B39C4A: LitI2_Byte 1
  loc_B39C4C: FLdPr Me
  loc_B39C4F: MemLdRfVar from_stack_1.global_104
  loc_B39C52: FLdPr Me
  loc_B39C55: MemLdStr global_100
  loc_B39C58: LitI2_Byte 1
  loc_B39C5A: FnUBound
  loc_B39C5C: CI2I4
  loc_B39C5D: ForI2 var_8C
  loc_B39C63: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B39C68: PopAdLdVar
  loc_B39C69: FLdPr Me
  loc_B39C6C: MemLdRfVar from_stack_1.htmFile
  loc_B39C6F: LdPrVar
  loc_B39C71: LateMemCall
  loc_B39C77: LitStr "<th rowspan="""
  loc_B39C7A: FLdPr Me
  loc_B39C7D: MemLdI2 global_104
  loc_B39C80: CI4UI1
  loc_B39C81: FLdPr Me
  loc_B39C84: MemLdStr global_100
  loc_B39C87: Ary1LdPr
  loc_B39C88: MemLdStr global_20
  loc_B39C8B: CStrI4
  loc_B39C8D: FStStrNoPop var_B0
  loc_B39C90: ConcatStr
  loc_B39C91: FStStrNoPop var_B4
  loc_B39C94: LitStr """ align=""center"" valign=""top"" class=""LineaDato"">"
  loc_B39C97: ConcatStr
  loc_B39C98: FStStrNoPop var_B8
  loc_B39C9B: FLdPr Me
  loc_B39C9E: MemLdI2 global_104
  loc_B39CA1: CI4UI1
  loc_B39CA2: FLdPr Me
  loc_B39CA5: MemLdStr global_100
  loc_B39CA8: Ary1LdPr
  loc_B39CA9: MemLdRfVar from_stack_1.global_0
  loc_B39CAC: LdFixedStr
  loc_B39CAF: FStStrNoPop var_BC
  loc_B39CB2: ConcatStr
  loc_B39CB3: FStStrNoPop var_C0
  loc_B39CB6: LitStr "<br>"
  loc_B39CB9: ConcatStr
  loc_B39CBA: FStStrNoPop var_C4
  loc_B39CBD: FLdPr Me
  loc_B39CC0: MemLdI2 global_104
  loc_B39CC3: CI4UI1
  loc_B39CC4: FLdPr Me
  loc_B39CC7: MemLdStr global_100
  loc_B39CCA: Ary1LdPr
  loc_B39CCB: MemLdStr global_16
  loc_B39CCE: ConcatStr
  loc_B39CCF: FStStrNoPop var_C8
  loc_B39CD2: LitStr "</th>"
  loc_B39CD5: ConcatStr
  loc_B39CD6: CVarStr var_D8
  loc_B39CD9: PopAdLdVar
  loc_B39CDA: FLdPr Me
  loc_B39CDD: MemLdRfVar from_stack_1.htmFile
  loc_B39CE0: LdPrVar
  loc_B39CE2: LateMemCall
  loc_B39CE8: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B39CF9: FFree1Var var_D8 = ""
  loc_B39CFC: LitI2_Byte 1
  loc_B39CFE: FLdPr Me
  loc_B39D01: MemLdRfVar from_stack_1.global_106
  loc_B39D04: FLdPr Me
  loc_B39D07: MemLdI2 global_104
  loc_B39D0A: CI4UI1
  loc_B39D0B: FLdPr Me
  loc_B39D0E: MemLdStr global_100
  loc_B39D11: Ary1LdPr
  loc_B39D12: MemLdStr global_24
  loc_B39D15: LitI2_Byte 1
  loc_B39D17: FnUBound
  loc_B39D19: CI2I4
  loc_B39D1A: ForI2 var_DC
  loc_B39D20: FLdPr Me
  loc_B39D23: MemLdI2 global_106
  loc_B39D26: LitI2_Byte 1
  loc_B39D28: GtI2
  loc_B39D29: BranchF loc_B39D40
  loc_B39D2C: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B39D31: PopAdLdVar
  loc_B39D32: FLdPr Me
  loc_B39D35: MemLdRfVar from_stack_1.htmFile
  loc_B39D38: LdPrVar
  loc_B39D3A: LateMemCall
  loc_B39D40: LitVarStr var_9C, "<th rowspan="
  loc_B39D45: LitI4 &H22
  loc_B39D4A: FLdRfVar var_D8
  loc_B39D4D: ImpAdCallFPR4  = Chr()
  loc_B39D52: FLdRfVar var_D8
  loc_B39D55: ConcatVar var_EC
  loc_B39D59: FLdPr Me
  loc_B39D5C: MemLdI2 global_106
  loc_B39D5F: CI4UI1
  loc_B39D60: FLdPr Me
  loc_B39D63: MemLdI2 global_104
  loc_B39D66: CI4UI1
  loc_B39D67: FLdPr Me
  loc_B39D6A: MemLdStr global_100
  loc_B39D6D: Ary1LdPr
  loc_B39D6E: MemLdStr global_24
  loc_B39D71: Ary1LdPr
  loc_B39D72: MemLdStr global_20
  loc_B39D75: CVarI4
  loc_B39D79: ConcatVar var_FC
  loc_B39D7D: LitI4 &H22
  loc_B39D82: FLdRfVar var_10C
  loc_B39D85: ImpAdCallFPR4  = Chr()
  loc_B39D8A: FLdRfVar var_10C
  loc_B39D8D: ConcatVar var_11C
  loc_B39D91: LitVarStr var_12C, " align=""center"" valign=""top"" class=""LineaDato"">"
  loc_B39D96: ConcatVar var_13C
  loc_B39D9A: FLdPr Me
  loc_B39D9D: MemLdI2 global_106
  loc_B39DA0: CI4UI1
  loc_B39DA1: FLdPr Me
  loc_B39DA4: MemLdI2 global_104
  loc_B39DA7: CI4UI1
  loc_B39DA8: FLdPr Me
  loc_B39DAB: MemLdStr global_100
  loc_B39DAE: Ary1LdPr
  loc_B39DAF: MemLdStr global_24
  loc_B39DB2: Ary1LdPr
  loc_B39DB3: MemLdRfVar from_stack_1.global_0
  loc_B39DB6: LdFixedStr
  loc_B39DB9: CVarStr var_14C
  loc_B39DBC: ConcatVar var_15C
  loc_B39DC0: LitVarStr var_16C, "<br>"
  loc_B39DC5: ConcatVar var_17C
  loc_B39DC9: FLdPr Me
  loc_B39DCC: MemLdI2 global_106
  loc_B39DCF: CI4UI1
  loc_B39DD0: FLdPr Me
  loc_B39DD3: MemLdI2 global_104
  loc_B39DD6: CI4UI1
  loc_B39DD7: FLdPr Me
  loc_B39DDA: MemLdStr global_100
  loc_B39DDD: Ary1LdPr
  loc_B39DDE: MemLdStr global_24
  loc_B39DE1: Ary1LdPr
  loc_B39DE2: MemLdStr global_16
  loc_B39DE5: CVarStr var_18C
  loc_B39DE8: ConcatVar var_19C
  loc_B39DEC: LitVarStr var_1AC, "</th>"
  loc_B39DF1: ConcatVar var_1BC
  loc_B39DF5: PopAdLdVar
  loc_B39DF6: FLdPr Me
  loc_B39DF9: MemLdRfVar from_stack_1.htmFile
  loc_B39DFC: LdPrVar
  loc_B39DFE: LateMemCall
  loc_B39E04: FFreeVar var_D8 = "": var_EC = "": var_FC = "": var_10C = "": var_11C = "": var_13C = "": var_14C = "": var_15C = "": var_17C = "": var_19C = ""
  loc_B39E1D: LitI2_Byte 1
  loc_B39E1F: FLdPr Me
  loc_B39E22: MemLdRfVar from_stack_1.global_108
  loc_B39E25: FLdPr Me
  loc_B39E28: MemLdI2 global_106
  loc_B39E2B: CI4UI1
  loc_B39E2C: FLdPr Me
  loc_B39E2F: MemLdI2 global_104
  loc_B39E32: CI4UI1
  loc_B39E33: FLdPr Me
  loc_B39E36: MemLdStr global_100
  loc_B39E39: Ary1LdPr
  loc_B39E3A: MemLdStr global_24
  loc_B39E3D: Ary1LdPr
  loc_B39E3E: MemLdStr global_24
  loc_B39E41: LitI2_Byte 1
  loc_B39E43: FnUBound
  loc_B39E45: CI2I4
  loc_B39E46: ForI2 var_1D0
  loc_B39E4C: FLdPr Me
  loc_B39E4F: MemLdI2 global_108
  loc_B39E52: LitI2_Byte 1
  loc_B39E54: GtI2
  loc_B39E55: BranchF loc_B39E6C
  loc_B39E58: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B39E5D: PopAdLdVar
  loc_B39E5E: FLdPr Me
  loc_B39E61: MemLdRfVar from_stack_1.htmFile
  loc_B39E64: LdPrVar
  loc_B39E66: LateMemCall
  loc_B39E6C: LitVarStr var_9C, "<th rowspan="
  loc_B39E71: LitI4 &H22
  loc_B39E76: FLdRfVar var_D8
  loc_B39E79: ImpAdCallFPR4  = Chr()
  loc_B39E7E: FLdRfVar var_D8
  loc_B39E81: ConcatVar var_EC
  loc_B39E85: FLdPr Me
  loc_B39E88: MemLdI2 global_108
  loc_B39E8B: CI4UI1
  loc_B39E8C: FLdPr Me
  loc_B39E8F: MemLdI2 global_106
  loc_B39E92: CI4UI1
  loc_B39E93: FLdPr Me
  loc_B39E96: MemLdI2 global_104
  loc_B39E99: CI4UI1
  loc_B39E9A: FLdPr Me
  loc_B39E9D: MemLdStr global_100
  loc_B39EA0: Ary1LdPr
  loc_B39EA1: MemLdStr global_24
  loc_B39EA4: Ary1LdPr
  loc_B39EA5: MemLdStr global_24
  loc_B39EA8: Ary1LdPr
  loc_B39EA9: MemLdStr global_16
  loc_B39EAC: CVarI4
  loc_B39EB0: ConcatVar var_FC
  loc_B39EB4: LitI4 &H22
  loc_B39EB9: FLdRfVar var_10C
  loc_B39EBC: ImpAdCallFPR4  = Chr()
  loc_B39EC1: FLdRfVar var_10C
  loc_B39EC4: ConcatVar var_11C
  loc_B39EC8: LitVarStr var_12C, " align=""center"" valign=""top"" class=""LineaDato"">"
  loc_B39ECD: ConcatVar var_13C
  loc_B39ED1: FLdPr Me
  loc_B39ED4: MemLdI2 global_108
  loc_B39ED7: CI4UI1
  loc_B39ED8: FLdPr Me
  loc_B39EDB: MemLdI2 global_106
  loc_B39EDE: CI4UI1
  loc_B39EDF: FLdPr Me
  loc_B39EE2: MemLdI2 global_104
  loc_B39EE5: CI4UI1
  loc_B39EE6: FLdPr Me
  loc_B39EE9: MemLdStr global_100
  loc_B39EEC: Ary1LdPr
  loc_B39EED: MemLdStr global_24
  loc_B39EF0: Ary1LdPr
  loc_B39EF1: MemLdStr global_24
  loc_B39EF4: Ary1LdPr
  loc_B39EF5: MemLdRfVar from_stack_1.global_0
  loc_B39EF8: LdFixedStr
  loc_B39EFB: CVarStr var_14C
  loc_B39EFE: ConcatVar var_15C
  loc_B39F02: LitVarStr var_16C, "<br>"
  loc_B39F07: ConcatVar var_17C
  loc_B39F0B: FLdPr Me
  loc_B39F0E: MemLdI2 global_108
  loc_B39F11: CI4UI1
  loc_B39F12: FLdPr Me
  loc_B39F15: MemLdI2 global_106
  loc_B39F18: CI4UI1
  loc_B39F19: FLdPr Me
  loc_B39F1C: MemLdI2 global_104
  loc_B39F1F: CI4UI1
  loc_B39F20: FLdPr Me
  loc_B39F23: MemLdStr global_100
  loc_B39F26: Ary1LdPr
  loc_B39F27: MemLdStr global_24
  loc_B39F2A: Ary1LdPr
  loc_B39F2B: MemLdStr global_24
  loc_B39F2E: Ary1LdPr
  loc_B39F2F: MemLdStr global_12
  loc_B39F32: CVarStr var_18C
  loc_B39F35: ConcatVar var_19C
  loc_B39F39: LitVarStr var_1AC, "</th>"
  loc_B39F3E: ConcatVar var_1BC
  loc_B39F42: PopAdLdVar
  loc_B39F43: FLdPr Me
  loc_B39F46: MemLdRfVar from_stack_1.htmFile
  loc_B39F49: LdPrVar
  loc_B39F4B: LateMemCall
  loc_B39F51: FFreeVar var_D8 = "": var_EC = "": var_FC = "": var_10C = "": var_11C = "": var_13C = "": var_14C = "": var_15C = "": var_17C = "": var_19C = ""
  loc_B39F6A: LitI2_Byte 1
  loc_B39F6C: FLdPr Me
  loc_B39F6F: MemLdRfVar from_stack_1.global_110
  loc_B39F72: FLdPr Me
  loc_B39F75: MemLdI2 global_108
  loc_B39F78: CI4UI1
  loc_B39F79: FLdPr Me
  loc_B39F7C: MemLdI2 global_106
  loc_B39F7F: CI4UI1
  loc_B39F80: FLdPr Me
  loc_B39F83: MemLdI2 global_104
  loc_B39F86: CI4UI1
  loc_B39F87: FLdPr Me
  loc_B39F8A: MemLdStr global_100
  loc_B39F8D: Ary1LdPr
  loc_B39F8E: MemLdStr global_24
  loc_B39F91: Ary1LdPr
  loc_B39F92: MemLdStr global_24
  loc_B39F95: Ary1LdPr
  loc_B39F96: MemLdStr global_20
  loc_B39F99: LitI2_Byte 1
  loc_B39F9B: FnUBound
  loc_B39F9D: CI2I4
  loc_B39F9E: ForI2 var_1D4
  loc_B39FA4: FLdPr Me
  loc_B39FA7: MemLdI2 global_110
  loc_B39FAA: LitI2_Byte 1
  loc_B39FAC: GtI2
  loc_B39FAD: BranchF loc_B39FC4
  loc_B39FB0: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B39FB5: PopAdLdVar
  loc_B39FB6: FLdPr Me
  loc_B39FB9: MemLdRfVar from_stack_1.htmFile
  loc_B39FBC: LdPrVar
  loc_B39FBE: LateMemCall
  loc_B39FC4: LitStr "<th align=""center"" valign=""top"" class=""LineaDato"">"
  loc_B39FC7: FLdPr Me
  loc_B39FCA: MemLdI2 global_110
  loc_B39FCD: CI4UI1
  loc_B39FCE: FLdPr Me
  loc_B39FD1: MemLdI2 global_108
  loc_B39FD4: CI4UI1
  loc_B39FD5: FLdPr Me
  loc_B39FD8: MemLdI2 global_106
  loc_B39FDB: CI4UI1
  loc_B39FDC: FLdPr Me
  loc_B39FDF: MemLdI2 global_104
  loc_B39FE2: CI4UI1
  loc_B39FE3: FLdPr Me
  loc_B39FE6: MemLdStr global_100
  loc_B39FE9: Ary1LdPr
  loc_B39FEA: MemLdStr global_24
  loc_B39FED: Ary1LdPr
  loc_B39FEE: MemLdStr global_24
  loc_B39FF1: Ary1LdPr
  loc_B39FF2: MemLdStr global_20
  loc_B39FF5: Ary1LdPr
  loc_B39FF6: MemLdRfVar from_stack_1.global_0
  loc_B39FF9: LdFixedStr
  loc_B39FFC: FStStrNoPop var_B0
  loc_B39FFF: ConcatStr
  loc_B3A000: FStStrNoPop var_B4
  loc_B3A003: LitStr "<br>"
  loc_B3A006: ConcatStr
  loc_B3A007: FStStrNoPop var_B8
  loc_B3A00A: FLdPr Me
  loc_B3A00D: MemLdI2 global_110
  loc_B3A010: CI4UI1
  loc_B3A011: FLdPr Me
  loc_B3A014: MemLdI2 global_108
  loc_B3A017: CI4UI1
  loc_B3A018: FLdPr Me
  loc_B3A01B: MemLdI2 global_106
  loc_B3A01E: CI4UI1
  loc_B3A01F: FLdPr Me
  loc_B3A022: MemLdI2 global_104
  loc_B3A025: CI4UI1
  loc_B3A026: FLdPr Me
  loc_B3A029: MemLdStr global_100
  loc_B3A02C: Ary1LdPr
  loc_B3A02D: MemLdStr global_24
  loc_B3A030: Ary1LdPr
  loc_B3A031: MemLdStr global_24
  loc_B3A034: Ary1LdPr
  loc_B3A035: MemLdStr global_20
  loc_B3A038: Ary1LdPr
  loc_B3A039: MemLdStr global_12
  loc_B3A03C: ConcatStr
  loc_B3A03D: FStStrNoPop var_BC
  loc_B3A040: LitStr "</th>"
  loc_B3A043: ConcatStr
  loc_B3A044: CVarStr var_D8
  loc_B3A047: PopAdLdVar
  loc_B3A048: FLdPr Me
  loc_B3A04B: MemLdRfVar from_stack_1.htmFile
  loc_B3A04E: LdPrVar
  loc_B3A050: LateMemCall
  loc_B3A056: FFreeStr var_B0 = "": var_B4 = "": var_B8 = ""
  loc_B3A061: FFree1Var var_D8 = ""
  loc_B3A064: LitStr "    <th colspan=""1"" align=""left"" class=""LineaDato"">Subtotales ("
  loc_B3A067: FLdPr Me
  loc_B3A06A: MemLdI2 global_104
  loc_B3A06D: CI4UI1
  loc_B3A06E: FLdPr Me
  loc_B3A071: MemLdStr global_100
  loc_B3A074: Ary1LdPr
  loc_B3A075: MemLdRfVar from_stack_1.global_0
  loc_B3A078: LdFixedStr
  loc_B3A07B: FStStrNoPop var_B0
  loc_B3A07E: ConcatStr
  loc_B3A07F: FStStrNoPop var_B4
  loc_B3A082: LitStr " - "
  loc_B3A085: ConcatStr
  loc_B3A086: FStStrNoPop var_B8
  loc_B3A089: FLdPr Me
  loc_B3A08C: MemLdI2 global_106
  loc_B3A08F: CI4UI1
  loc_B3A090: FLdPr Me
  loc_B3A093: MemLdI2 global_104
  loc_B3A096: CI4UI1
  loc_B3A097: FLdPr Me
  loc_B3A09A: MemLdStr global_100
  loc_B3A09D: Ary1LdPr
  loc_B3A09E: MemLdStr global_24
  loc_B3A0A1: Ary1LdPr
  loc_B3A0A2: MemLdRfVar from_stack_1.global_0
  loc_B3A0A5: LdFixedStr
  loc_B3A0A8: FStStrNoPop var_BC
  loc_B3A0AB: ConcatStr
  loc_B3A0AC: FStStrNoPop var_C0
  loc_B3A0AF: LitStr " - "
  loc_B3A0B2: ConcatStr
  loc_B3A0B3: FStStrNoPop var_C4
  loc_B3A0B6: FLdPr Me
  loc_B3A0B9: MemLdI2 global_108
  loc_B3A0BC: CI4UI1
  loc_B3A0BD: FLdPr Me
  loc_B3A0C0: MemLdI2 global_106
  loc_B3A0C3: CI4UI1
  loc_B3A0C4: FLdPr Me
  loc_B3A0C7: MemLdI2 global_104
  loc_B3A0CA: CI4UI1
  loc_B3A0CB: FLdPr Me
  loc_B3A0CE: MemLdStr global_100
  loc_B3A0D1: Ary1LdPr
  loc_B3A0D2: MemLdStr global_24
  loc_B3A0D5: Ary1LdPr
  loc_B3A0D6: MemLdStr global_24
  loc_B3A0D9: Ary1LdPr
  loc_B3A0DA: MemLdRfVar from_stack_1.global_0
  loc_B3A0DD: LdFixedStr
  loc_B3A0E0: FStStrNoPop var_C8
  loc_B3A0E3: ConcatStr
  loc_B3A0E4: FStStrNoPop var_1D8
  loc_B3A0E7: LitStr " - "
  loc_B3A0EA: ConcatStr
  loc_B3A0EB: FStStrNoPop var_1DC
  loc_B3A0EE: FLdPr Me
  loc_B3A0F1: MemLdI2 global_110
  loc_B3A0F4: CI4UI1
  loc_B3A0F5: FLdPr Me
  loc_B3A0F8: MemLdI2 global_108
  loc_B3A0FB: CI4UI1
  loc_B3A0FC: FLdPr Me
  loc_B3A0FF: MemLdI2 global_106
  loc_B3A102: CI4UI1
  loc_B3A103: FLdPr Me
  loc_B3A106: MemLdI2 global_104
  loc_B3A109: CI4UI1
  loc_B3A10A: FLdPr Me
  loc_B3A10D: MemLdStr global_100
  loc_B3A110: Ary1LdPr
  loc_B3A111: MemLdStr global_24
  loc_B3A114: Ary1LdPr
  loc_B3A115: MemLdStr global_24
  loc_B3A118: Ary1LdPr
  loc_B3A119: MemLdStr global_20
  loc_B3A11C: Ary1LdPr
  loc_B3A11D: MemLdRfVar from_stack_1.global_0
  loc_B3A120: LdFixedStr
  loc_B3A123: FStStrNoPop var_1E0
  loc_B3A126: ConcatStr
  loc_B3A127: FStStrNoPop var_1E4
  loc_B3A12A: LitStr ")</th>"
  loc_B3A12D: ConcatStr
  loc_B3A12E: CVarStr var_D8
  loc_B3A131: PopAdLdVar
  loc_B3A132: FLdPr Me
  loc_B3A135: MemLdRfVar from_stack_1.htmFile
  loc_B3A138: LdPrVar
  loc_B3A13A: LateMemCall
  loc_B3A140: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_1D8 = "": var_1DC = "": var_1E0 = ""
  loc_B3A159: FFree1Var var_D8 = ""
  loc_B3A15C: LitI2_Byte 1
  loc_B3A15E: FLdPr Me
  loc_B3A161: MemLdRfVar from_stack_1.global_114
  loc_B3A164: LitI2_Byte 5
  loc_B3A166: ForI2 var_1E8
  loc_B3A16C: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B3A16F: FLdPr Me
  loc_B3A172: MemLdI2 global_114
  loc_B3A175: CI4UI1
  loc_B3A176: FLdPr Me
  loc_B3A179: MemLdI2 global_110
  loc_B3A17C: CI4UI1
  loc_B3A17D: FLdPr Me
  loc_B3A180: MemLdI2 global_108
  loc_B3A183: CI4UI1
  loc_B3A184: FLdPr Me
  loc_B3A187: MemLdI2 global_106
  loc_B3A18A: CI4UI1
  loc_B3A18B: FLdPr Me
  loc_B3A18E: MemLdI2 global_104
  loc_B3A191: CI4UI1
  loc_B3A192: FLdPr Me
  loc_B3A195: MemLdStr global_100
  loc_B3A198: Ary1LdPr
  loc_B3A199: MemLdStr global_24
  loc_B3A19C: Ary1LdPr
  loc_B3A19D: MemLdStr global_24
  loc_B3A1A0: Ary1LdPr
  loc_B3A1A1: MemLdStr global_20
  loc_B3A1A4: Ary1LdPr
  loc_B3A1A5: MemLdRfVar from_stack_1.global_24
  loc_B3A1A8: AryInRecLdPr
  loc_B3A1AE: MemLdStr global_0
  loc_B3A1B1: ConcatStr
  loc_B3A1B2: FStStrNoPop var_B0
  loc_B3A1B5: LitStr "</th>"
  loc_B3A1B8: ConcatStr
  loc_B3A1B9: CVarStr var_D8
  loc_B3A1BC: PopAdLdVar
  loc_B3A1BD: FLdPr Me
  loc_B3A1C0: MemLdRfVar from_stack_1.htmFile
  loc_B3A1C3: LdPrVar
  loc_B3A1C5: LateMemCall
  loc_B3A1CB: FFree1Str var_B0
  loc_B3A1CE: FFree1Var var_D8 = ""
  loc_B3A1D1: FLdPr Me
  loc_B3A1D4: MemLdRfVar from_stack_1.global_114
  loc_B3A1D7: NextI2 var_1E8, loc_B3A16C
  loc_B3A1DC: LitVarStr var_9C, "  </tr>"
  loc_B3A1E1: PopAdLdVar
  loc_B3A1E2: FLdPr Me
  loc_B3A1E5: MemLdRfVar from_stack_1.htmFile
  loc_B3A1E8: LdPrVar
  loc_B3A1EA: LateMemCall
  loc_B3A1F0: FLdPr Me
  loc_B3A1F3: MemLdRfVar from_stack_1.global_110
  loc_B3A1F6: NextI2 var_1D4, loc_B39FA4
  loc_B3A1FB: LitStr "    <th colspan=""2"" align=""left"" class=""LineaDato"">Subtotales ("
  loc_B3A1FE: FLdPr Me
  loc_B3A201: MemLdI2 global_104
  loc_B3A204: CI4UI1
  loc_B3A205: FLdPr Me
  loc_B3A208: MemLdStr global_100
  loc_B3A20B: Ary1LdPr
  loc_B3A20C: MemLdRfVar from_stack_1.global_0
  loc_B3A20F: LdFixedStr
  loc_B3A212: FStStrNoPop var_B0
  loc_B3A215: ConcatStr
  loc_B3A216: FStStrNoPop var_B4
  loc_B3A219: LitStr " - "
  loc_B3A21C: ConcatStr
  loc_B3A21D: FStStrNoPop var_B8
  loc_B3A220: FLdPr Me
  loc_B3A223: MemLdI2 global_106
  loc_B3A226: CI4UI1
  loc_B3A227: FLdPr Me
  loc_B3A22A: MemLdI2 global_104
  loc_B3A22D: CI4UI1
  loc_B3A22E: FLdPr Me
  loc_B3A231: MemLdStr global_100
  loc_B3A234: Ary1LdPr
  loc_B3A235: MemLdStr global_24
  loc_B3A238: Ary1LdPr
  loc_B3A239: MemLdRfVar from_stack_1.global_0
  loc_B3A23C: LdFixedStr
  loc_B3A23F: FStStrNoPop var_BC
  loc_B3A242: ConcatStr
  loc_B3A243: FStStrNoPop var_C0
  loc_B3A246: LitStr " - "
  loc_B3A249: ConcatStr
  loc_B3A24A: FStStrNoPop var_C4
  loc_B3A24D: FLdPr Me
  loc_B3A250: MemLdI2 global_108
  loc_B3A253: CI4UI1
  loc_B3A254: FLdPr Me
  loc_B3A257: MemLdI2 global_106
  loc_B3A25A: CI4UI1
  loc_B3A25B: FLdPr Me
  loc_B3A25E: MemLdI2 global_104
  loc_B3A261: CI4UI1
  loc_B3A262: FLdPr Me
  loc_B3A265: MemLdStr global_100
  loc_B3A268: Ary1LdPr
  loc_B3A269: MemLdStr global_24
  loc_B3A26C: Ary1LdPr
  loc_B3A26D: MemLdStr global_24
  loc_B3A270: Ary1LdPr
  loc_B3A271: MemLdRfVar from_stack_1.global_0
  loc_B3A274: LdFixedStr
  loc_B3A277: FStStrNoPop var_C8
  loc_B3A27A: ConcatStr
  loc_B3A27B: FStStrNoPop var_1D8
  loc_B3A27E: LitStr ")</th>"
  loc_B3A281: ConcatStr
  loc_B3A282: CVarStr var_D8
  loc_B3A285: PopAdLdVar
  loc_B3A286: FLdPr Me
  loc_B3A289: MemLdRfVar from_stack_1.htmFile
  loc_B3A28C: LdPrVar
  loc_B3A28E: LateMemCall
  loc_B3A294: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B3A2A7: FFree1Var var_D8 = ""
  loc_B3A2AA: LitI2_Byte 1
  loc_B3A2AC: FLdPr Me
  loc_B3A2AF: MemLdRfVar from_stack_1.global_114
  loc_B3A2B2: LitI2_Byte 5
  loc_B3A2B4: ForI2 var_1EC
  loc_B3A2BA: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B3A2BD: FLdPr Me
  loc_B3A2C0: MemLdI2 global_114
  loc_B3A2C3: CI4UI1
  loc_B3A2C4: FLdPr Me
  loc_B3A2C7: MemLdI2 global_108
  loc_B3A2CA: CI4UI1
  loc_B3A2CB: FLdPr Me
  loc_B3A2CE: MemLdI2 global_106
  loc_B3A2D1: CI4UI1
  loc_B3A2D2: FLdPr Me
  loc_B3A2D5: MemLdI2 global_104
  loc_B3A2D8: CI4UI1
  loc_B3A2D9: FLdPr Me
  loc_B3A2DC: MemLdStr global_100
  loc_B3A2DF: Ary1LdPr
  loc_B3A2E0: MemLdStr global_24
  loc_B3A2E3: Ary1LdPr
  loc_B3A2E4: MemLdStr global_24
  loc_B3A2E7: Ary1LdPr
  loc_B3A2E8: MemLdRfVar from_stack_1.global_24
  loc_B3A2EB: AryInRecLdPr
  loc_B3A2F1: MemLdStr global_0
  loc_B3A2F4: ConcatStr
  loc_B3A2F5: FStStrNoPop var_B0
  loc_B3A2F8: LitStr "</th>"
  loc_B3A2FB: ConcatStr
  loc_B3A2FC: CVarStr var_D8
  loc_B3A2FF: PopAdLdVar
  loc_B3A300: FLdPr Me
  loc_B3A303: MemLdRfVar from_stack_1.htmFile
  loc_B3A306: LdPrVar
  loc_B3A308: LateMemCall
  loc_B3A30E: FFree1Str var_B0
  loc_B3A311: FFree1Var var_D8 = ""
  loc_B3A314: FLdPr Me
  loc_B3A317: MemLdRfVar from_stack_1.global_114
  loc_B3A31A: NextI2 var_1EC, loc_B3A2BA
  loc_B3A31F: LitVarStr var_9C, "  </tr>"
  loc_B3A324: PopAdLdVar
  loc_B3A325: FLdPr Me
  loc_B3A328: MemLdRfVar from_stack_1.htmFile
  loc_B3A32B: LdPrVar
  loc_B3A32D: LateMemCall
  loc_B3A333: FLdPr Me
  loc_B3A336: MemLdRfVar from_stack_1.global_108
  loc_B3A339: NextI2 var_1D0, loc_B39E4C
  loc_B3A33E: LitStr "    <th colspan=""3"" align=""left"" class=""LineaDato"">Subtotales ("
  loc_B3A341: FLdPr Me
  loc_B3A344: MemLdI2 global_104
  loc_B3A347: CI4UI1
  loc_B3A348: FLdPr Me
  loc_B3A34B: MemLdStr global_100
  loc_B3A34E: Ary1LdPr
  loc_B3A34F: MemLdRfVar from_stack_1.global_0
  loc_B3A352: LdFixedStr
  loc_B3A355: FStStrNoPop var_B0
  loc_B3A358: ConcatStr
  loc_B3A359: FStStrNoPop var_B4
  loc_B3A35C: LitStr " - "
  loc_B3A35F: ConcatStr
  loc_B3A360: FStStrNoPop var_B8
  loc_B3A363: FLdPr Me
  loc_B3A366: MemLdI2 global_106
  loc_B3A369: CI4UI1
  loc_B3A36A: FLdPr Me
  loc_B3A36D: MemLdI2 global_104
  loc_B3A370: CI4UI1
  loc_B3A371: FLdPr Me
  loc_B3A374: MemLdStr global_100
  loc_B3A377: Ary1LdPr
  loc_B3A378: MemLdStr global_24
  loc_B3A37B: Ary1LdPr
  loc_B3A37C: MemLdRfVar from_stack_1.global_0
  loc_B3A37F: LdFixedStr
  loc_B3A382: FStStrNoPop var_BC
  loc_B3A385: ConcatStr
  loc_B3A386: FStStrNoPop var_C0
  loc_B3A389: LitStr ")</th>"
  loc_B3A38C: ConcatStr
  loc_B3A38D: CVarStr var_D8
  loc_B3A390: PopAdLdVar
  loc_B3A391: FLdPr Me
  loc_B3A394: MemLdRfVar from_stack_1.htmFile
  loc_B3A397: LdPrVar
  loc_B3A399: LateMemCall
  loc_B3A39F: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B3A3AC: FFree1Var var_D8 = ""
  loc_B3A3AF: LitI2_Byte 1
  loc_B3A3B1: FLdPr Me
  loc_B3A3B4: MemLdRfVar from_stack_1.global_114
  loc_B3A3B7: LitI2_Byte 5
  loc_B3A3B9: ForI2 var_1F0
  loc_B3A3BF: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B3A3C2: FLdPr Me
  loc_B3A3C5: MemLdI2 global_114
  loc_B3A3C8: CI4UI1
  loc_B3A3C9: FLdPr Me
  loc_B3A3CC: MemLdI2 global_106
  loc_B3A3CF: CI4UI1
  loc_B3A3D0: FLdPr Me
  loc_B3A3D3: MemLdI2 global_104
  loc_B3A3D6: CI4UI1
  loc_B3A3D7: FLdPr Me
  loc_B3A3DA: MemLdStr global_100
  loc_B3A3DD: Ary1LdPr
  loc_B3A3DE: MemLdStr global_24
  loc_B3A3E1: Ary1LdPr
  loc_B3A3E2: MemLdRfVar from_stack_1.global_28
  loc_B3A3E5: AryInRecLdPr
  loc_B3A3EB: MemLdStr global_0
  loc_B3A3EE: ConcatStr
  loc_B3A3EF: FStStrNoPop var_B0
  loc_B3A3F2: LitStr "</th>"
  loc_B3A3F5: ConcatStr
  loc_B3A3F6: CVarStr var_D8
  loc_B3A3F9: PopAdLdVar
  loc_B3A3FA: FLdPr Me
  loc_B3A3FD: MemLdRfVar from_stack_1.htmFile
  loc_B3A400: LdPrVar
  loc_B3A402: LateMemCall
  loc_B3A408: FFree1Str var_B0
  loc_B3A40B: FFree1Var var_D8 = ""
  loc_B3A40E: FLdPr Me
  loc_B3A411: MemLdRfVar from_stack_1.global_114
  loc_B3A414: NextI2 var_1F0, loc_B3A3BF
  loc_B3A419: LitVarStr var_9C, "  </tr>"
  loc_B3A41E: PopAdLdVar
  loc_B3A41F: FLdPr Me
  loc_B3A422: MemLdRfVar from_stack_1.htmFile
  loc_B3A425: LdPrVar
  loc_B3A427: LateMemCall
  loc_B3A42D: FLdPr Me
  loc_B3A430: MemLdRfVar from_stack_1.global_106
  loc_B3A433: NextI2 var_DC, loc_B39D20
  loc_B3A438: LitStr "    <th colspan=""4"" align=""left"" class=""LineaDato"">Subtotales ("
  loc_B3A43B: FLdPr Me
  loc_B3A43E: MemLdI2 global_104
  loc_B3A441: CI4UI1
  loc_B3A442: FLdPr Me
  loc_B3A445: MemLdStr global_100
  loc_B3A448: Ary1LdPr
  loc_B3A449: MemLdRfVar from_stack_1.global_0
  loc_B3A44C: LdFixedStr
  loc_B3A44F: FStStrNoPop var_B0
  loc_B3A452: ConcatStr
  loc_B3A453: FStStrNoPop var_B4
  loc_B3A456: LitStr " "
  loc_B3A459: ConcatStr
  loc_B3A45A: FStStrNoPop var_B8
  loc_B3A45D: FLdPr Me
  loc_B3A460: MemLdI2 global_104
  loc_B3A463: CI4UI1
  loc_B3A464: FLdPr Me
  loc_B3A467: MemLdStr global_100
  loc_B3A46A: Ary1LdPr
  loc_B3A46B: MemLdStr global_16
  loc_B3A46E: ConcatStr
  loc_B3A46F: FStStrNoPop var_BC
  loc_B3A472: LitStr ")</th>"
  loc_B3A475: ConcatStr
  loc_B3A476: CVarStr var_D8
  loc_B3A479: PopAdLdVar
  loc_B3A47A: FLdPr Me
  loc_B3A47D: MemLdRfVar from_stack_1.htmFile
  loc_B3A480: LdPrVar
  loc_B3A482: LateMemCall
  loc_B3A488: FFreeStr var_B0 = "": var_B4 = "": var_B8 = ""
  loc_B3A493: FFree1Var var_D8 = ""
  loc_B3A496: LitI2_Byte 1
  loc_B3A498: FLdPr Me
  loc_B3A49B: MemLdRfVar from_stack_1.global_114
  loc_B3A49E: LitI2_Byte 5
  loc_B3A4A0: ForI2 var_1F4
  loc_B3A4A6: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B3A4A9: FLdPr Me
  loc_B3A4AC: MemLdI2 global_114
  loc_B3A4AF: CI4UI1
  loc_B3A4B0: FLdPr Me
  loc_B3A4B3: MemLdI2 global_104
  loc_B3A4B6: CI4UI1
  loc_B3A4B7: FLdPr Me
  loc_B3A4BA: MemLdStr global_100
  loc_B3A4BD: Ary1LdPr
  loc_B3A4BE: MemLdRfVar from_stack_1.global_28
  loc_B3A4C1: AryInRecLdPr
  loc_B3A4C7: MemLdStr global_0
  loc_B3A4CA: ConcatStr
  loc_B3A4CB: FStStrNoPop var_B0
  loc_B3A4CE: LitStr "</th>"
  loc_B3A4D1: ConcatStr
  loc_B3A4D2: CVarStr var_D8
  loc_B3A4D5: PopAdLdVar
  loc_B3A4D6: FLdPr Me
  loc_B3A4D9: MemLdRfVar from_stack_1.htmFile
  loc_B3A4DC: LdPrVar
  loc_B3A4DE: LateMemCall
  loc_B3A4E4: FFree1Str var_B0
  loc_B3A4E7: FFree1Var var_D8 = ""
  loc_B3A4EA: FLdPr Me
  loc_B3A4ED: MemLdRfVar from_stack_1.global_114
  loc_B3A4F0: NextI2 var_1F4, loc_B3A4A6
  loc_B3A4F5: LitVarStr var_9C, "  </tr>"
  loc_B3A4FA: PopAdLdVar
  loc_B3A4FB: FLdPr Me
  loc_B3A4FE: MemLdRfVar from_stack_1.htmFile
  loc_B3A501: LdPrVar
  loc_B3A503: LateMemCall
  loc_B3A509: FLdPr Me
  loc_B3A50C: MemLdRfVar from_stack_1.global_104
  loc_B3A50F: NextI2 var_8C, loc_B39C63
  loc_B3A514: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B3A519: PopAdLdVar
  loc_B3A51A: FLdPr Me
  loc_B3A51D: MemLdRfVar from_stack_1.htmFile
  loc_B3A520: LdPrVar
  loc_B3A522: LateMemCall
  loc_B3A528: LitVarStr var_9C, "    <th colspan=""10"" class=""Encabezado"">&nbsp;</th>"
  loc_B3A52D: PopAdLdVar
  loc_B3A52E: FLdPr Me
  loc_B3A531: MemLdRfVar from_stack_1.htmFile
  loc_B3A534: LdPrVar
  loc_B3A536: LateMemCall
  loc_B3A53C: LitVarStr var_9C, "  </tr>"
  loc_B3A541: PopAdLdVar
  loc_B3A542: FLdPr Me
  loc_B3A545: MemLdRfVar from_stack_1.htmFile
  loc_B3A548: LdPrVar
  loc_B3A54A: LateMemCall
  loc_B3A550: LitVarStr var_9C, "  <tr class=""LineaDato"">"
  loc_B3A555: PopAdLdVar
  loc_B3A556: FLdPr Me
  loc_B3A559: MemLdRfVar from_stack_1.htmFile
  loc_B3A55C: LdPrVar
  loc_B3A55E: LateMemCall
  loc_B3A564: LitVarStr var_9C, "    <th colspan=""5"" align=""right"" class=""Titulo2"">TOTALES:</th>"
  loc_B3A569: PopAdLdVar
  loc_B3A56A: FLdPr Me
  loc_B3A56D: MemLdRfVar from_stack_1.htmFile
  loc_B3A570: LdPrVar
  loc_B3A572: LateMemCall
  loc_B3A578: LitI2_Byte 1
  loc_B3A57A: FLdPr Me
  loc_B3A57D: MemLdRfVar from_stack_1.global_114
  loc_B3A580: LitI2_Byte 5
  loc_B3A582: ForI2 var_1F8
  loc_B3A588: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B3A58B: FLdPr Me
  loc_B3A58E: MemLdI2 global_114
  loc_B3A591: CI4UI1
  loc_B3A592: FLdPr Me
  loc_B3A595: MemLdStr global_120
  loc_B3A598: Ary1LdI4
  loc_B3A599: ConcatStr
  loc_B3A59A: FStStrNoPop var_B0
  loc_B3A59D: LitStr "</th>"
  loc_B3A5A0: ConcatStr
  loc_B3A5A1: CVarStr var_D8
  loc_B3A5A4: PopAdLdVar
  loc_B3A5A5: FLdPr Me
  loc_B3A5A8: MemLdRfVar from_stack_1.htmFile
  loc_B3A5AB: LdPrVar
  loc_B3A5AD: LateMemCall
  loc_B3A5B3: FFree1Str var_B0
  loc_B3A5B6: FFree1Var var_D8 = ""
  loc_B3A5B9: FLdPr Me
  loc_B3A5BC: MemLdRfVar from_stack_1.global_114
  loc_B3A5BF: NextI2 var_1F8, loc_B3A588
  loc_B3A5C4: LitVarStr var_9C, "  </tr>"
  loc_B3A5C9: PopAdLdVar
  loc_B3A5CA: FLdPr Me
  loc_B3A5CD: MemLdRfVar from_stack_1.htmFile
  loc_B3A5D0: LdPrVar
  loc_B3A5D2: LateMemCall
  loc_B3A5D8: Call Proc_229_41_981A50()
  loc_B3A5DD: FLdPr Me
  loc_B3A5E0: MemLdRfVar from_stack_1.htmFile
  loc_B3A5E3: LdPrVar
  loc_B3A5E5: LateMemCall
  loc_B3A5EB: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B3A5F0: ExitProcHresult
End Sub

Private Function Proc_229_38_BA68A0(arg_C) 'BA68A0
  'Data Table: 4D5204
  loc_BA5920: ILdRf arg_C
  loc_BA5923: FStR4 var_8C
  loc_BA5926: ILdRf var_8C
  loc_BA5929: LitI4 0
  loc_BA592E: EqI4
  loc_BA592F: BranchF loc_BA5E9C
  loc_BA5932: FLdPr Me
  loc_BA5935: MemLdI2 global_104
  loc_BA5938: LitI2_Byte 1
  loc_BA593A: AddI2
  loc_BA593B: FLdPr Me
  loc_BA593E: MemStI2 global_104
  loc_BA5941: LitI2_Byte 1
  loc_BA5943: FLdPr Me
  loc_BA5946: MemStI2 global_106
  loc_BA5949: LitI2_Byte 1
  loc_BA594B: FLdPr Me
  loc_BA594E: MemStI2 global_108
  loc_BA5951: LitI2_Byte 1
  loc_BA5953: FLdPr Me
  loc_BA5956: MemStI2 global_110
  loc_BA5959: LitI2_Byte 1
  loc_BA595B: FLdPr Me
  loc_BA595E: MemStI2 global_112
  loc_BA5961: LitI4 0
  loc_BA5966: FLdPr Me
  loc_BA5969: MemLdI2 global_104
  loc_BA596C: CI4UI1
  loc_BA596D: FLdPr Me
  loc_BA5970: MemLdRfVar from_stack_1.global_100
  loc_BA5973: RedimPreserve
  loc_BA597D: FLdRfVar var_A8
  loc_BA5980: LitVarStr var_A4, "CodiInsu"
  loc_BA5985: PopAdLdVar
  loc_BA5986: FLdRfVar var_94
  loc_BA5989: FLdRfVar var_90
  loc_BA598C: FLdPr Me
  loc_BA598F: MemLdRfVar from_stack_1.global_76
  loc_BA5992: NewIfNullPr clsimputacion
  loc_BA5995: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA599A: FLdPr var_90
  loc_BA599D:  = Me.Fields
  loc_BA59A2: FLdPr var_94
  loc_BA59A5: from_stack_2 = Me.Item(from_stack_1)
  loc_BA59AA: LitI2_Byte 0
  loc_BA59AC: LitVar_Missing var_DC
  loc_BA59AF: LitI2_Byte 0
  loc_BA59B1: FLdZeroAd var_A8
  loc_BA59B4: CVarAd
  loc_BA59B8: PopAdLdVar
  loc_BA59B9: FLdPr Me
  loc_BA59BC: MemLdI2 global_104
  loc_BA59BF: CI4UI1
  loc_BA59C0: FLdPr Me
  loc_BA59C3: MemLdStr global_100
  loc_BA59C6: Ary1LdPr
  loc_BA59C7: MemLdRfVar from_stack_1.global_0
  loc_BA59CA: LdFixedStr
  loc_BA59CD: PopTmpLdAdStr
  loc_BA59D1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA59D6: ILdRf var_AC
  loc_BA59D9: FLdPr Me
  loc_BA59DC: MemLdI2 global_104
  loc_BA59DF: CI4UI1
  loc_BA59E0: FLdPr Me
  loc_BA59E3: MemLdStr global_100
  loc_BA59E6: Ary1LdPr
  loc_BA59E7: MemLdRfVar from_stack_1.global_0
  loc_BA59EA: StFixedStr
  loc_BA59ED: FFree1Str var_AC
  loc_BA59F0: FFreeAd var_90 = ""
  loc_BA59F7: FFreeVar var_BC = ""
  loc_BA59FE: FLdRfVar var_A8
  loc_BA5A01: LitVarStr var_A4, "DetaInsu"
  loc_BA5A06: PopAdLdVar
  loc_BA5A07: FLdRfVar var_94
  loc_BA5A0A: FLdRfVar var_90
  loc_BA5A0D: FLdPr Me
  loc_BA5A10: MemLdRfVar from_stack_1.global_76
  loc_BA5A13: NewIfNullPr clsimputacion
  loc_BA5A16: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA5A1B: FLdPr var_90
  loc_BA5A1E:  = Me.Fields
  loc_BA5A23: FLdPr var_94
  loc_BA5A26: from_stack_2 = Me.Item(from_stack_1)
  loc_BA5A2B: LitI2_Byte 0
  loc_BA5A2D: LitVar_Missing var_DC
  loc_BA5A30: LitI2_Byte 0
  loc_BA5A32: FLdZeroAd var_A8
  loc_BA5A35: CVarAd
  loc_BA5A39: PopAdLdVar
  loc_BA5A3A: FLdPr Me
  loc_BA5A3D: MemLdI2 global_104
  loc_BA5A40: CI4UI1
  loc_BA5A41: FLdPr Me
  loc_BA5A44: MemLdStr global_100
  loc_BA5A47: AryLock
  loc_BA5A4A: Ary1LdPr
  loc_BA5A4B: MemLdRfVar from_stack_1.global_16
  loc_BA5A4E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA5A53: AryUnlock
  loc_BA5A56: FFreeAd var_90 = ""
  loc_BA5A5D: FFreeVar var_BC = ""
  loc_BA5A64: LitI4 0
  loc_BA5A69: FLdPr Me
  loc_BA5A6C: MemLdI2 global_106
  loc_BA5A6F: CI4UI1
  loc_BA5A70: FLdPr Me
  loc_BA5A73: MemLdI2 global_104
  loc_BA5A76: CI4UI1
  loc_BA5A77: FLdPr Me
  loc_BA5A7A: MemLdStr global_100
  loc_BA5A7D: Ary1LdPr
  loc_BA5A7E: MemLdRfVar from_stack_1.global_24
  loc_BA5A81: RedimPreserve
  loc_BA5A8B: FLdRfVar var_A8
  loc_BA5A8E: LitVarStr var_A4, "CodiPart"
  loc_BA5A93: PopAdLdVar
  loc_BA5A94: FLdRfVar var_94
  loc_BA5A97: FLdRfVar var_90
  loc_BA5A9A: FLdPr Me
  loc_BA5A9D: MemLdRfVar from_stack_1.global_76
  loc_BA5AA0: NewIfNullPr clsimputacion
  loc_BA5AA3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA5AA8: FLdPr var_90
  loc_BA5AAB:  = Me.Fields
  loc_BA5AB0: FLdPr var_94
  loc_BA5AB3: from_stack_2 = Me.Item(from_stack_1)
  loc_BA5AB8: LitI2_Byte 0
  loc_BA5ABA: LitVar_Missing var_DC
  loc_BA5ABD: LitI2_Byte 0
  loc_BA5ABF: FLdZeroAd var_A8
  loc_BA5AC2: CVarAd
  loc_BA5AC6: PopAdLdVar
  loc_BA5AC7: FLdPr Me
  loc_BA5ACA: MemLdI2 global_106
  loc_BA5ACD: CI4UI1
  loc_BA5ACE: FLdPr Me
  loc_BA5AD1: MemLdI2 global_104
  loc_BA5AD4: CI4UI1
  loc_BA5AD5: FLdPr Me
  loc_BA5AD8: MemLdStr global_100
  loc_BA5ADB: Ary1LdPr
  loc_BA5ADC: MemLdStr global_24
  loc_BA5ADF: Ary1LdPr
  loc_BA5AE0: MemLdRfVar from_stack_1.global_0
  loc_BA5AE3: LdFixedStr
  loc_BA5AE6: PopTmpLdAdStr
  loc_BA5AEA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA5AEF: ILdRf var_AC
  loc_BA5AF2: FLdPr Me
  loc_BA5AF5: MemLdI2 global_106
  loc_BA5AF8: CI4UI1
  loc_BA5AF9: FLdPr Me
  loc_BA5AFC: MemLdI2 global_104
  loc_BA5AFF: CI4UI1
  loc_BA5B00: FLdPr Me
  loc_BA5B03: MemLdStr global_100
  loc_BA5B06: Ary1LdPr
  loc_BA5B07: MemLdStr global_24
  loc_BA5B0A: Ary1LdPr
  loc_BA5B0B: MemLdRfVar from_stack_1.global_0
  loc_BA5B0E: StFixedStr
  loc_BA5B11: FFree1Str var_AC
  loc_BA5B14: FFreeAd var_90 = ""
  loc_BA5B1B: FFreeVar var_BC = ""
  loc_BA5B22: FLdRfVar var_A8
  loc_BA5B25: LitVarStr var_A4, "DetaPart"
  loc_BA5B2A: PopAdLdVar
  loc_BA5B2B: FLdRfVar var_94
  loc_BA5B2E: FLdRfVar var_90
  loc_BA5B31: FLdPr Me
  loc_BA5B34: MemLdRfVar from_stack_1.global_76
  loc_BA5B37: NewIfNullPr clsimputacion
  loc_BA5B3A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA5B3F: FLdPr var_90
  loc_BA5B42:  = Me.Fields
  loc_BA5B47: FLdPr var_94
  loc_BA5B4A: from_stack_2 = Me.Item(from_stack_1)
  loc_BA5B4F: LitI2_Byte 0
  loc_BA5B51: LitVar_Missing var_DC
  loc_BA5B54: LitI2_Byte 0
  loc_BA5B56: FLdZeroAd var_A8
  loc_BA5B59: CVarAd
  loc_BA5B5D: PopAdLdVar
  loc_BA5B5E: FLdPr Me
  loc_BA5B61: MemLdI2 global_106
  loc_BA5B64: CI4UI1
  loc_BA5B65: FLdPr Me
  loc_BA5B68: MemLdI2 global_104
  loc_BA5B6B: CI4UI1
  loc_BA5B6C: FLdPr Me
  loc_BA5B6F: MemLdStr global_100
  loc_BA5B72: AryLock
  loc_BA5B75: Ary1LdPr
  loc_BA5B76: MemLdStr global_24
  loc_BA5B79: AryLock
  loc_BA5B7C: Ary1LdPr
  loc_BA5B7D: MemLdRfVar from_stack_1.global_16
  loc_BA5B80: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA5B85: AryUnlock
  loc_BA5B88: AryUnlock
  loc_BA5B8B: FFreeAd var_90 = ""
  loc_BA5B92: FFreeVar var_BC = ""
  loc_BA5B99: LitI4 0
  loc_BA5B9E: FLdPr Me
  loc_BA5BA1: MemLdI2 global_108
  loc_BA5BA4: CI4UI1
  loc_BA5BA5: FLdPr Me
  loc_BA5BA8: MemLdI2 global_106
  loc_BA5BAB: CI4UI1
  loc_BA5BAC: FLdPr Me
  loc_BA5BAF: MemLdI2 global_104
  loc_BA5BB2: CI4UI1
  loc_BA5BB3: FLdPr Me
  loc_BA5BB6: MemLdStr global_100
  loc_BA5BB9: Ary1LdPr
  loc_BA5BBA: MemLdStr global_24
  loc_BA5BBD: Ary1LdPr
  loc_BA5BBE: MemLdRfVar from_stack_1.global_24
  loc_BA5BC1: RedimPreserve
  loc_BA5BCB: FLdRfVar var_A8
  loc_BA5BCE: LitVarStr var_A4, "CodiOrga"
  loc_BA5BD3: PopAdLdVar
  loc_BA5BD4: FLdRfVar var_94
  loc_BA5BD7: FLdRfVar var_90
  loc_BA5BDA: FLdPr Me
  loc_BA5BDD: MemLdRfVar from_stack_1.global_76
  loc_BA5BE0: NewIfNullPr clsimputacion
  loc_BA5BE3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA5BE8: FLdPr var_90
  loc_BA5BEB:  = Me.Fields
  loc_BA5BF0: FLdPr var_94
  loc_BA5BF3: from_stack_2 = Me.Item(from_stack_1)
  loc_BA5BF8: LitI2_Byte 0
  loc_BA5BFA: LitVar_Missing var_DC
  loc_BA5BFD: LitI2_Byte 0
  loc_BA5BFF: FLdZeroAd var_A8
  loc_BA5C02: CVarAd
  loc_BA5C06: PopAdLdVar
  loc_BA5C07: FLdPr Me
  loc_BA5C0A: MemLdI2 global_108
  loc_BA5C0D: CI4UI1
  loc_BA5C0E: FLdPr Me
  loc_BA5C11: MemLdI2 global_106
  loc_BA5C14: CI4UI1
  loc_BA5C15: FLdPr Me
  loc_BA5C18: MemLdI2 global_104
  loc_BA5C1B: CI4UI1
  loc_BA5C1C: FLdPr Me
  loc_BA5C1F: MemLdStr global_100
  loc_BA5C22: Ary1LdPr
  loc_BA5C23: MemLdStr global_24
  loc_BA5C26: Ary1LdPr
  loc_BA5C27: MemLdStr global_24
  loc_BA5C2A: Ary1LdPr
  loc_BA5C2B: MemLdRfVar from_stack_1.global_0
  loc_BA5C2E: LdFixedStr
  loc_BA5C31: PopTmpLdAdStr
  loc_BA5C35: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA5C3A: ILdRf var_AC
  loc_BA5C3D: FLdPr Me
  loc_BA5C40: MemLdI2 global_108
  loc_BA5C43: CI4UI1
  loc_BA5C44: FLdPr Me
  loc_BA5C47: MemLdI2 global_106
  loc_BA5C4A: CI4UI1
  loc_BA5C4B: FLdPr Me
  loc_BA5C4E: MemLdI2 global_104
  loc_BA5C51: CI4UI1
  loc_BA5C52: FLdPr Me
  loc_BA5C55: MemLdStr global_100
  loc_BA5C58: Ary1LdPr
  loc_BA5C59: MemLdStr global_24
  loc_BA5C5C: Ary1LdPr
  loc_BA5C5D: MemLdStr global_24
  loc_BA5C60: Ary1LdPr
  loc_BA5C61: MemLdRfVar from_stack_1.global_0
  loc_BA5C64: StFixedStr
  loc_BA5C67: FFree1Str var_AC
  loc_BA5C6A: FFreeAd var_90 = ""
  loc_BA5C71: FFreeVar var_BC = ""
  loc_BA5C78: FLdRfVar var_A8
  loc_BA5C7B: LitVarStr var_A4, "DetaOrga"
  loc_BA5C80: PopAdLdVar
  loc_BA5C81: FLdRfVar var_94
  loc_BA5C84: FLdRfVar var_90
  loc_BA5C87: FLdPr Me
  loc_BA5C8A: MemLdRfVar from_stack_1.global_76
  loc_BA5C8D: NewIfNullPr clsimputacion
  loc_BA5C90: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA5C95: FLdPr var_90
  loc_BA5C98:  = Me.Fields
  loc_BA5C9D: FLdPr var_94
  loc_BA5CA0: from_stack_2 = Me.Item(from_stack_1)
  loc_BA5CA5: LitI2_Byte 0
  loc_BA5CA7: LitVar_Missing var_DC
  loc_BA5CAA: LitI2_Byte 0
  loc_BA5CAC: FLdZeroAd var_A8
  loc_BA5CAF: CVarAd
  loc_BA5CB3: PopAdLdVar
  loc_BA5CB4: FLdPr Me
  loc_BA5CB7: MemLdI2 global_108
  loc_BA5CBA: CI4UI1
  loc_BA5CBB: FLdPr Me
  loc_BA5CBE: MemLdI2 global_106
  loc_BA5CC1: CI4UI1
  loc_BA5CC2: FLdPr Me
  loc_BA5CC5: MemLdI2 global_104
  loc_BA5CC8: CI4UI1
  loc_BA5CC9: FLdPr Me
  loc_BA5CCC: MemLdStr global_100
  loc_BA5CCF: AryLock
  loc_BA5CD2: Ary1LdPr
  loc_BA5CD3: MemLdStr global_24
  loc_BA5CD6: AryLock
  loc_BA5CD9: Ary1LdPr
  loc_BA5CDA: MemLdStr global_24
  loc_BA5CDD: AryLock
  loc_BA5CE0: Ary1LdPr
  loc_BA5CE1: MemLdRfVar from_stack_1.global_12
  loc_BA5CE4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA5CE9: AryUnlock
  loc_BA5CEC: AryUnlock
  loc_BA5CEF: AryUnlock
  loc_BA5CF2: FFreeAd var_90 = ""
  loc_BA5CF9: FFreeVar var_BC = ""
  loc_BA5D00: LitI4 0
  loc_BA5D05: FLdPr Me
  loc_BA5D08: MemLdI2 global_110
  loc_BA5D0B: CI4UI1
  loc_BA5D0C: FLdPr Me
  loc_BA5D0F: MemLdI2 global_108
  loc_BA5D12: CI4UI1
  loc_BA5D13: FLdPr Me
  loc_BA5D16: MemLdI2 global_106
  loc_BA5D19: CI4UI1
  loc_BA5D1A: FLdPr Me
  loc_BA5D1D: MemLdI2 global_104
  loc_BA5D20: CI4UI1
  loc_BA5D21: FLdPr Me
  loc_BA5D24: MemLdStr global_100
  loc_BA5D27: Ary1LdPr
  loc_BA5D28: MemLdStr global_24
  loc_BA5D2B: Ary1LdPr
  loc_BA5D2C: MemLdStr global_24
  loc_BA5D2F: Ary1LdPr
  loc_BA5D30: MemLdRfVar from_stack_1.global_20
  loc_BA5D33: RedimPreserve
  loc_BA5D3D: FLdRfVar var_A8
  loc_BA5D40: LitVarStr var_A4, "CodiFifu"
  loc_BA5D45: PopAdLdVar
  loc_BA5D46: FLdRfVar var_94
  loc_BA5D49: FLdRfVar var_90
  loc_BA5D4C: FLdPr Me
  loc_BA5D4F: MemLdRfVar from_stack_1.global_76
  loc_BA5D52: NewIfNullPr clsimputacion
  loc_BA5D55: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA5D5A: FLdPr var_90
  loc_BA5D5D:  = Me.Fields
  loc_BA5D62: FLdPr var_94
  loc_BA5D65: from_stack_2 = Me.Item(from_stack_1)
  loc_BA5D6A: LitI2_Byte 0
  loc_BA5D6C: LitVar_Missing var_DC
  loc_BA5D6F: LitI2_Byte 0
  loc_BA5D71: FLdZeroAd var_A8
  loc_BA5D74: CVarAd
  loc_BA5D78: PopAdLdVar
  loc_BA5D79: FLdPr Me
  loc_BA5D7C: MemLdI2 global_110
  loc_BA5D7F: CI4UI1
  loc_BA5D80: FLdPr Me
  loc_BA5D83: MemLdI2 global_108
  loc_BA5D86: CI4UI1
  loc_BA5D87: FLdPr Me
  loc_BA5D8A: MemLdI2 global_106
  loc_BA5D8D: CI4UI1
  loc_BA5D8E: FLdPr Me
  loc_BA5D91: MemLdI2 global_104
  loc_BA5D94: CI4UI1
  loc_BA5D95: FLdPr Me
  loc_BA5D98: MemLdStr global_100
  loc_BA5D9B: Ary1LdPr
  loc_BA5D9C: MemLdStr global_24
  loc_BA5D9F: Ary1LdPr
  loc_BA5DA0: MemLdStr global_24
  loc_BA5DA3: Ary1LdPr
  loc_BA5DA4: MemLdStr global_20
  loc_BA5DA7: Ary1LdPr
  loc_BA5DA8: MemLdRfVar from_stack_1.global_0
  loc_BA5DAB: LdFixedStr
  loc_BA5DAE: PopTmpLdAdStr
  loc_BA5DB2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA5DB7: ILdRf var_AC
  loc_BA5DBA: FLdPr Me
  loc_BA5DBD: MemLdI2 global_110
  loc_BA5DC0: CI4UI1
  loc_BA5DC1: FLdPr Me
  loc_BA5DC4: MemLdI2 global_108
  loc_BA5DC7: CI4UI1
  loc_BA5DC8: FLdPr Me
  loc_BA5DCB: MemLdI2 global_106
  loc_BA5DCE: CI4UI1
  loc_BA5DCF: FLdPr Me
  loc_BA5DD2: MemLdI2 global_104
  loc_BA5DD5: CI4UI1
  loc_BA5DD6: FLdPr Me
  loc_BA5DD9: MemLdStr global_100
  loc_BA5DDC: Ary1LdPr
  loc_BA5DDD: MemLdStr global_24
  loc_BA5DE0: Ary1LdPr
  loc_BA5DE1: MemLdStr global_24
  loc_BA5DE4: Ary1LdPr
  loc_BA5DE5: MemLdStr global_20
  loc_BA5DE8: Ary1LdPr
  loc_BA5DE9: MemLdRfVar from_stack_1.global_0
  loc_BA5DEC: StFixedStr
  loc_BA5DEF: FFree1Str var_AC
  loc_BA5DF2: FFreeAd var_90 = ""
  loc_BA5DF9: FFreeVar var_BC = ""
  loc_BA5E00: FLdRfVar var_A8
  loc_BA5E03: LitVarStr var_A4, "DetaFifu"
  loc_BA5E08: PopAdLdVar
  loc_BA5E09: FLdRfVar var_94
  loc_BA5E0C: FLdRfVar var_90
  loc_BA5E0F: FLdPr Me
  loc_BA5E12: MemLdRfVar from_stack_1.global_76
  loc_BA5E15: NewIfNullPr clsimputacion
  loc_BA5E18: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA5E1D: FLdPr var_90
  loc_BA5E20:  = Me.Fields
  loc_BA5E25: FLdPr var_94
  loc_BA5E28: from_stack_2 = Me.Item(from_stack_1)
  loc_BA5E2D: LitI2_Byte 0
  loc_BA5E2F: LitVar_Missing var_DC
  loc_BA5E32: LitI2_Byte 0
  loc_BA5E34: FLdZeroAd var_A8
  loc_BA5E37: CVarAd
  loc_BA5E3B: PopAdLdVar
  loc_BA5E3C: FLdPr Me
  loc_BA5E3F: MemLdI2 global_110
  loc_BA5E42: CI4UI1
  loc_BA5E43: FLdPr Me
  loc_BA5E46: MemLdI2 global_108
  loc_BA5E49: CI4UI1
  loc_BA5E4A: FLdPr Me
  loc_BA5E4D: MemLdI2 global_106
  loc_BA5E50: CI4UI1
  loc_BA5E51: FLdPr Me
  loc_BA5E54: MemLdI2 global_104
  loc_BA5E57: CI4UI1
  loc_BA5E58: FLdPr Me
  loc_BA5E5B: MemLdStr global_100
  loc_BA5E5E: AryLock
  loc_BA5E61: Ary1LdPr
  loc_BA5E62: MemLdStr global_24
  loc_BA5E65: AryLock
  loc_BA5E68: Ary1LdPr
  loc_BA5E69: MemLdStr global_24
  loc_BA5E6C: AryLock
  loc_BA5E6F: Ary1LdPr
  loc_BA5E70: MemLdStr global_20
  loc_BA5E73: AryLock
  loc_BA5E76: Ary1LdPr
  loc_BA5E77: MemLdRfVar from_stack_1.global_12
  loc_BA5E7A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA5E7F: AryUnlock
  loc_BA5E82: AryUnlock
  loc_BA5E85: AryUnlock
  loc_BA5E88: AryUnlock
  loc_BA5E8B: FFreeAd var_90 = ""
  loc_BA5E92: FFreeVar var_BC = ""
  loc_BA5E99: Branch loc_BA6803
  loc_BA5E9C: ILdRf var_8C
  loc_BA5E9F: LitI4 1
  loc_BA5EA4: EqI4
  loc_BA5EA5: BranchF loc_BA6307
  loc_BA5EA8: FLdPr Me
  loc_BA5EAB: MemLdI2 global_106
  loc_BA5EAE: LitI2_Byte 1
  loc_BA5EB0: AddI2
  loc_BA5EB1: FLdPr Me
  loc_BA5EB4: MemStI2 global_106
  loc_BA5EB7: LitI2_Byte 1
  loc_BA5EB9: FLdPr Me
  loc_BA5EBC: MemStI2 global_108
  loc_BA5EBF: LitI2_Byte 1
  loc_BA5EC1: FLdPr Me
  loc_BA5EC4: MemStI2 global_110
  loc_BA5EC7: LitI2_Byte 1
  loc_BA5EC9: FLdPr Me
  loc_BA5ECC: MemStI2 global_112
  loc_BA5ECF: LitI4 0
  loc_BA5ED4: FLdPr Me
  loc_BA5ED7: MemLdI2 global_106
  loc_BA5EDA: CI4UI1
  loc_BA5EDB: FLdPr Me
  loc_BA5EDE: MemLdI2 global_104
  loc_BA5EE1: CI4UI1
  loc_BA5EE2: FLdPr Me
  loc_BA5EE5: MemLdStr global_100
  loc_BA5EE8: Ary1LdPr
  loc_BA5EE9: MemLdRfVar from_stack_1.global_24
  loc_BA5EEC: RedimPreserve
  loc_BA5EF6: FLdRfVar var_A8
  loc_BA5EF9: LitVarStr var_A4, "CodiPart"
  loc_BA5EFE: PopAdLdVar
  loc_BA5EFF: FLdRfVar var_94
  loc_BA5F02: FLdRfVar var_90
  loc_BA5F05: FLdPr Me
  loc_BA5F08: MemLdRfVar from_stack_1.global_76
  loc_BA5F0B: NewIfNullPr clsimputacion
  loc_BA5F0E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA5F13: FLdPr var_90
  loc_BA5F16:  = Me.Fields
  loc_BA5F1B: FLdPr var_94
  loc_BA5F1E: from_stack_2 = Me.Item(from_stack_1)
  loc_BA5F23: LitI2_Byte 0
  loc_BA5F25: LitVar_Missing var_DC
  loc_BA5F28: LitI2_Byte 0
  loc_BA5F2A: FLdZeroAd var_A8
  loc_BA5F2D: CVarAd
  loc_BA5F31: PopAdLdVar
  loc_BA5F32: FLdPr Me
  loc_BA5F35: MemLdI2 global_106
  loc_BA5F38: CI4UI1
  loc_BA5F39: FLdPr Me
  loc_BA5F3C: MemLdI2 global_104
  loc_BA5F3F: CI4UI1
  loc_BA5F40: FLdPr Me
  loc_BA5F43: MemLdStr global_100
  loc_BA5F46: Ary1LdPr
  loc_BA5F47: MemLdStr global_24
  loc_BA5F4A: Ary1LdPr
  loc_BA5F4B: MemLdRfVar from_stack_1.global_0
  loc_BA5F4E: LdFixedStr
  loc_BA5F51: PopTmpLdAdStr
  loc_BA5F55: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA5F5A: ILdRf var_AC
  loc_BA5F5D: FLdPr Me
  loc_BA5F60: MemLdI2 global_106
  loc_BA5F63: CI4UI1
  loc_BA5F64: FLdPr Me
  loc_BA5F67: MemLdI2 global_104
  loc_BA5F6A: CI4UI1
  loc_BA5F6B: FLdPr Me
  loc_BA5F6E: MemLdStr global_100
  loc_BA5F71: Ary1LdPr
  loc_BA5F72: MemLdStr global_24
  loc_BA5F75: Ary1LdPr
  loc_BA5F76: MemLdRfVar from_stack_1.global_0
  loc_BA5F79: StFixedStr
  loc_BA5F7C: FFree1Str var_AC
  loc_BA5F7F: FFreeAd var_90 = ""
  loc_BA5F86: FFreeVar var_BC = ""
  loc_BA5F8D: FLdRfVar var_A8
  loc_BA5F90: LitVarStr var_A4, "DetaPart"
  loc_BA5F95: PopAdLdVar
  loc_BA5F96: FLdRfVar var_94
  loc_BA5F99: FLdRfVar var_90
  loc_BA5F9C: FLdPr Me
  loc_BA5F9F: MemLdRfVar from_stack_1.global_76
  loc_BA5FA2: NewIfNullPr clsimputacion
  loc_BA5FA5: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA5FAA: FLdPr var_90
  loc_BA5FAD:  = Me.Fields
  loc_BA5FB2: FLdPr var_94
  loc_BA5FB5: from_stack_2 = Me.Item(from_stack_1)
  loc_BA5FBA: LitI2_Byte 0
  loc_BA5FBC: LitVar_Missing var_DC
  loc_BA5FBF: LitI2_Byte 0
  loc_BA5FC1: FLdZeroAd var_A8
  loc_BA5FC4: CVarAd
  loc_BA5FC8: PopAdLdVar
  loc_BA5FC9: FLdPr Me
  loc_BA5FCC: MemLdI2 global_106
  loc_BA5FCF: CI4UI1
  loc_BA5FD0: FLdPr Me
  loc_BA5FD3: MemLdI2 global_104
  loc_BA5FD6: CI4UI1
  loc_BA5FD7: FLdPr Me
  loc_BA5FDA: MemLdStr global_100
  loc_BA5FDD: AryLock
  loc_BA5FE0: Ary1LdPr
  loc_BA5FE1: MemLdStr global_24
  loc_BA5FE4: AryLock
  loc_BA5FE7: Ary1LdPr
  loc_BA5FE8: MemLdRfVar from_stack_1.global_16
  loc_BA5FEB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA5FF0: AryUnlock
  loc_BA5FF3: AryUnlock
  loc_BA5FF6: FFreeAd var_90 = ""
  loc_BA5FFD: FFreeVar var_BC = ""
  loc_BA6004: LitI4 0
  loc_BA6009: FLdPr Me
  loc_BA600C: MemLdI2 global_108
  loc_BA600F: CI4UI1
  loc_BA6010: FLdPr Me
  loc_BA6013: MemLdI2 global_106
  loc_BA6016: CI4UI1
  loc_BA6017: FLdPr Me
  loc_BA601A: MemLdI2 global_104
  loc_BA601D: CI4UI1
  loc_BA601E: FLdPr Me
  loc_BA6021: MemLdStr global_100
  loc_BA6024: Ary1LdPr
  loc_BA6025: MemLdStr global_24
  loc_BA6028: Ary1LdPr
  loc_BA6029: MemLdRfVar from_stack_1.global_24
  loc_BA602C: RedimPreserve
  loc_BA6036: FLdRfVar var_A8
  loc_BA6039: LitVarStr var_A4, "CodiOrga"
  loc_BA603E: PopAdLdVar
  loc_BA603F: FLdRfVar var_94
  loc_BA6042: FLdRfVar var_90
  loc_BA6045: FLdPr Me
  loc_BA6048: MemLdRfVar from_stack_1.global_76
  loc_BA604B: NewIfNullPr clsimputacion
  loc_BA604E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA6053: FLdPr var_90
  loc_BA6056:  = Me.Fields
  loc_BA605B: FLdPr var_94
  loc_BA605E: from_stack_2 = Me.Item(from_stack_1)
  loc_BA6063: LitI2_Byte 0
  loc_BA6065: LitVar_Missing var_DC
  loc_BA6068: LitI2_Byte 0
  loc_BA606A: FLdZeroAd var_A8
  loc_BA606D: CVarAd
  loc_BA6071: PopAdLdVar
  loc_BA6072: FLdPr Me
  loc_BA6075: MemLdI2 global_108
  loc_BA6078: CI4UI1
  loc_BA6079: FLdPr Me
  loc_BA607C: MemLdI2 global_106
  loc_BA607F: CI4UI1
  loc_BA6080: FLdPr Me
  loc_BA6083: MemLdI2 global_104
  loc_BA6086: CI4UI1
  loc_BA6087: FLdPr Me
  loc_BA608A: MemLdStr global_100
  loc_BA608D: Ary1LdPr
  loc_BA608E: MemLdStr global_24
  loc_BA6091: Ary1LdPr
  loc_BA6092: MemLdStr global_24
  loc_BA6095: Ary1LdPr
  loc_BA6096: MemLdRfVar from_stack_1.global_0
  loc_BA6099: LdFixedStr
  loc_BA609C: PopTmpLdAdStr
  loc_BA60A0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA60A5: ILdRf var_AC
  loc_BA60A8: FLdPr Me
  loc_BA60AB: MemLdI2 global_108
  loc_BA60AE: CI4UI1
  loc_BA60AF: FLdPr Me
  loc_BA60B2: MemLdI2 global_106
  loc_BA60B5: CI4UI1
  loc_BA60B6: FLdPr Me
  loc_BA60B9: MemLdI2 global_104
  loc_BA60BC: CI4UI1
  loc_BA60BD: FLdPr Me
  loc_BA60C0: MemLdStr global_100
  loc_BA60C3: Ary1LdPr
  loc_BA60C4: MemLdStr global_24
  loc_BA60C7: Ary1LdPr
  loc_BA60C8: MemLdStr global_24
  loc_BA60CB: Ary1LdPr
  loc_BA60CC: MemLdRfVar from_stack_1.global_0
  loc_BA60CF: StFixedStr
  loc_BA60D2: FFree1Str var_AC
  loc_BA60D5: FFreeAd var_90 = ""
  loc_BA60DC: FFreeVar var_BC = ""
  loc_BA60E3: FLdRfVar var_A8
  loc_BA60E6: LitVarStr var_A4, "DetaOrga"
  loc_BA60EB: PopAdLdVar
  loc_BA60EC: FLdRfVar var_94
  loc_BA60EF: FLdRfVar var_90
  loc_BA60F2: FLdPr Me
  loc_BA60F5: MemLdRfVar from_stack_1.global_76
  loc_BA60F8: NewIfNullPr clsimputacion
  loc_BA60FB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA6100: FLdPr var_90
  loc_BA6103:  = Me.Fields
  loc_BA6108: FLdPr var_94
  loc_BA610B: from_stack_2 = Me.Item(from_stack_1)
  loc_BA6110: LitI2_Byte 0
  loc_BA6112: LitVar_Missing var_DC
  loc_BA6115: LitI2_Byte 0
  loc_BA6117: FLdZeroAd var_A8
  loc_BA611A: CVarAd
  loc_BA611E: PopAdLdVar
  loc_BA611F: FLdPr Me
  loc_BA6122: MemLdI2 global_108
  loc_BA6125: CI4UI1
  loc_BA6126: FLdPr Me
  loc_BA6129: MemLdI2 global_106
  loc_BA612C: CI4UI1
  loc_BA612D: FLdPr Me
  loc_BA6130: MemLdI2 global_104
  loc_BA6133: CI4UI1
  loc_BA6134: FLdPr Me
  loc_BA6137: MemLdStr global_100
  loc_BA613A: AryLock
  loc_BA613D: Ary1LdPr
  loc_BA613E: MemLdStr global_24
  loc_BA6141: AryLock
  loc_BA6144: Ary1LdPr
  loc_BA6145: MemLdStr global_24
  loc_BA6148: AryLock
  loc_BA614B: Ary1LdPr
  loc_BA614C: MemLdRfVar from_stack_1.global_12
  loc_BA614F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA6154: AryUnlock
  loc_BA6157: AryUnlock
  loc_BA615A: AryUnlock
  loc_BA615D: FFreeAd var_90 = ""
  loc_BA6164: FFreeVar var_BC = ""
  loc_BA616B: LitI4 0
  loc_BA6170: FLdPr Me
  loc_BA6173: MemLdI2 global_110
  loc_BA6176: CI4UI1
  loc_BA6177: FLdPr Me
  loc_BA617A: MemLdI2 global_108
  loc_BA617D: CI4UI1
  loc_BA617E: FLdPr Me
  loc_BA6181: MemLdI2 global_106
  loc_BA6184: CI4UI1
  loc_BA6185: FLdPr Me
  loc_BA6188: MemLdI2 global_104
  loc_BA618B: CI4UI1
  loc_BA618C: FLdPr Me
  loc_BA618F: MemLdStr global_100
  loc_BA6192: Ary1LdPr
  loc_BA6193: MemLdStr global_24
  loc_BA6196: Ary1LdPr
  loc_BA6197: MemLdStr global_24
  loc_BA619A: Ary1LdPr
  loc_BA619B: MemLdRfVar from_stack_1.global_20
  loc_BA619E: RedimPreserve
  loc_BA61A8: FLdRfVar var_A8
  loc_BA61AB: LitVarStr var_A4, "CodiFifu"
  loc_BA61B0: PopAdLdVar
  loc_BA61B1: FLdRfVar var_94
  loc_BA61B4: FLdRfVar var_90
  loc_BA61B7: FLdPr Me
  loc_BA61BA: MemLdRfVar from_stack_1.global_76
  loc_BA61BD: NewIfNullPr clsimputacion
  loc_BA61C0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA61C5: FLdPr var_90
  loc_BA61C8:  = Me.Fields
  loc_BA61CD: FLdPr var_94
  loc_BA61D0: from_stack_2 = Me.Item(from_stack_1)
  loc_BA61D5: LitI2_Byte 0
  loc_BA61D7: LitVar_Missing var_DC
  loc_BA61DA: LitI2_Byte 0
  loc_BA61DC: FLdZeroAd var_A8
  loc_BA61DF: CVarAd
  loc_BA61E3: PopAdLdVar
  loc_BA61E4: FLdPr Me
  loc_BA61E7: MemLdI2 global_110
  loc_BA61EA: CI4UI1
  loc_BA61EB: FLdPr Me
  loc_BA61EE: MemLdI2 global_108
  loc_BA61F1: CI4UI1
  loc_BA61F2: FLdPr Me
  loc_BA61F5: MemLdI2 global_106
  loc_BA61F8: CI4UI1
  loc_BA61F9: FLdPr Me
  loc_BA61FC: MemLdI2 global_104
  loc_BA61FF: CI4UI1
  loc_BA6200: FLdPr Me
  loc_BA6203: MemLdStr global_100
  loc_BA6206: Ary1LdPr
  loc_BA6207: MemLdStr global_24
  loc_BA620A: Ary1LdPr
  loc_BA620B: MemLdStr global_24
  loc_BA620E: Ary1LdPr
  loc_BA620F: MemLdStr global_20
  loc_BA6212: Ary1LdPr
  loc_BA6213: MemLdRfVar from_stack_1.global_0
  loc_BA6216: LdFixedStr
  loc_BA6219: PopTmpLdAdStr
  loc_BA621D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA6222: ILdRf var_AC
  loc_BA6225: FLdPr Me
  loc_BA6228: MemLdI2 global_110
  loc_BA622B: CI4UI1
  loc_BA622C: FLdPr Me
  loc_BA622F: MemLdI2 global_108
  loc_BA6232: CI4UI1
  loc_BA6233: FLdPr Me
  loc_BA6236: MemLdI2 global_106
  loc_BA6239: CI4UI1
  loc_BA623A: FLdPr Me
  loc_BA623D: MemLdI2 global_104
  loc_BA6240: CI4UI1
  loc_BA6241: FLdPr Me
  loc_BA6244: MemLdStr global_100
  loc_BA6247: Ary1LdPr
  loc_BA6248: MemLdStr global_24
  loc_BA624B: Ary1LdPr
  loc_BA624C: MemLdStr global_24
  loc_BA624F: Ary1LdPr
  loc_BA6250: MemLdStr global_20
  loc_BA6253: Ary1LdPr
  loc_BA6254: MemLdRfVar from_stack_1.global_0
  loc_BA6257: StFixedStr
  loc_BA625A: FFree1Str var_AC
  loc_BA625D: FFreeAd var_90 = ""
  loc_BA6264: FFreeVar var_BC = ""
  loc_BA626B: FLdRfVar var_A8
  loc_BA626E: LitVarStr var_A4, "DetaFifu"
  loc_BA6273: PopAdLdVar
  loc_BA6274: FLdRfVar var_94
  loc_BA6277: FLdRfVar var_90
  loc_BA627A: FLdPr Me
  loc_BA627D: MemLdRfVar from_stack_1.global_76
  loc_BA6280: NewIfNullPr clsimputacion
  loc_BA6283: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA6288: FLdPr var_90
  loc_BA628B:  = Me.Fields
  loc_BA6290: FLdPr var_94
  loc_BA6293: from_stack_2 = Me.Item(from_stack_1)
  loc_BA6298: LitI2_Byte 0
  loc_BA629A: LitVar_Missing var_DC
  loc_BA629D: LitI2_Byte 0
  loc_BA629F: FLdZeroAd var_A8
  loc_BA62A2: CVarAd
  loc_BA62A6: PopAdLdVar
  loc_BA62A7: FLdPr Me
  loc_BA62AA: MemLdI2 global_110
  loc_BA62AD: CI4UI1
  loc_BA62AE: FLdPr Me
  loc_BA62B1: MemLdI2 global_108
  loc_BA62B4: CI4UI1
  loc_BA62B5: FLdPr Me
  loc_BA62B8: MemLdI2 global_106
  loc_BA62BB: CI4UI1
  loc_BA62BC: FLdPr Me
  loc_BA62BF: MemLdI2 global_104
  loc_BA62C2: CI4UI1
  loc_BA62C3: FLdPr Me
  loc_BA62C6: MemLdStr global_100
  loc_BA62C9: AryLock
  loc_BA62CC: Ary1LdPr
  loc_BA62CD: MemLdStr global_24
  loc_BA62D0: AryLock
  loc_BA62D3: Ary1LdPr
  loc_BA62D4: MemLdStr global_24
  loc_BA62D7: AryLock
  loc_BA62DA: Ary1LdPr
  loc_BA62DB: MemLdStr global_20
  loc_BA62DE: AryLock
  loc_BA62E1: Ary1LdPr
  loc_BA62E2: MemLdRfVar from_stack_1.global_12
  loc_BA62E5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA62EA: AryUnlock
  loc_BA62ED: AryUnlock
  loc_BA62F0: AryUnlock
  loc_BA62F3: AryUnlock
  loc_BA62F6: FFreeAd var_90 = ""
  loc_BA62FD: FFreeVar var_BC = ""
  loc_BA6304: Branch loc_BA6803
  loc_BA6307: ILdRf var_8C
  loc_BA630A: LitI4 2
  loc_BA630F: EqI4
  loc_BA6310: BranchF loc_BA6635
  loc_BA6313: FLdPr Me
  loc_BA6316: MemLdI2 global_108
  loc_BA6319: LitI2_Byte 1
  loc_BA631B: AddI2
  loc_BA631C: FLdPr Me
  loc_BA631F: MemStI2 global_108
  loc_BA6322: LitI2_Byte 1
  loc_BA6324: FLdPr Me
  loc_BA6327: MemStI2 global_110
  loc_BA632A: LitI2_Byte 1
  loc_BA632C: FLdPr Me
  loc_BA632F: MemStI2 global_112
  loc_BA6332: LitI4 0
  loc_BA6337: FLdPr Me
  loc_BA633A: MemLdI2 global_108
  loc_BA633D: CI4UI1
  loc_BA633E: FLdPr Me
  loc_BA6341: MemLdI2 global_106
  loc_BA6344: CI4UI1
  loc_BA6345: FLdPr Me
  loc_BA6348: MemLdI2 global_104
  loc_BA634B: CI4UI1
  loc_BA634C: FLdPr Me
  loc_BA634F: MemLdStr global_100
  loc_BA6352: Ary1LdPr
  loc_BA6353: MemLdStr global_24
  loc_BA6356: Ary1LdPr
  loc_BA6357: MemLdRfVar from_stack_1.global_24
  loc_BA635A: RedimPreserve
  loc_BA6364: FLdRfVar var_A8
  loc_BA6367: LitVarStr var_A4, "CodiOrga"
  loc_BA636C: PopAdLdVar
  loc_BA636D: FLdRfVar var_94
  loc_BA6370: FLdRfVar var_90
  loc_BA6373: FLdPr Me
  loc_BA6376: MemLdRfVar from_stack_1.global_76
  loc_BA6379: NewIfNullPr clsimputacion
  loc_BA637C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA6381: FLdPr var_90
  loc_BA6384:  = Me.Fields
  loc_BA6389: FLdPr var_94
  loc_BA638C: from_stack_2 = Me.Item(from_stack_1)
  loc_BA6391: LitI2_Byte 0
  loc_BA6393: LitVar_Missing var_DC
  loc_BA6396: LitI2_Byte 0
  loc_BA6398: FLdZeroAd var_A8
  loc_BA639B: CVarAd
  loc_BA639F: PopAdLdVar
  loc_BA63A0: FLdPr Me
  loc_BA63A3: MemLdI2 global_108
  loc_BA63A6: CI4UI1
  loc_BA63A7: FLdPr Me
  loc_BA63AA: MemLdI2 global_106
  loc_BA63AD: CI4UI1
  loc_BA63AE: FLdPr Me
  loc_BA63B1: MemLdI2 global_104
  loc_BA63B4: CI4UI1
  loc_BA63B5: FLdPr Me
  loc_BA63B8: MemLdStr global_100
  loc_BA63BB: Ary1LdPr
  loc_BA63BC: MemLdStr global_24
  loc_BA63BF: Ary1LdPr
  loc_BA63C0: MemLdStr global_24
  loc_BA63C3: Ary1LdPr
  loc_BA63C4: MemLdRfVar from_stack_1.global_0
  loc_BA63C7: LdFixedStr
  loc_BA63CA: PopTmpLdAdStr
  loc_BA63CE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA63D3: ILdRf var_AC
  loc_BA63D6: FLdPr Me
  loc_BA63D9: MemLdI2 global_108
  loc_BA63DC: CI4UI1
  loc_BA63DD: FLdPr Me
  loc_BA63E0: MemLdI2 global_106
  loc_BA63E3: CI4UI1
  loc_BA63E4: FLdPr Me
  loc_BA63E7: MemLdI2 global_104
  loc_BA63EA: CI4UI1
  loc_BA63EB: FLdPr Me
  loc_BA63EE: MemLdStr global_100
  loc_BA63F1: Ary1LdPr
  loc_BA63F2: MemLdStr global_24
  loc_BA63F5: Ary1LdPr
  loc_BA63F6: MemLdStr global_24
  loc_BA63F9: Ary1LdPr
  loc_BA63FA: MemLdRfVar from_stack_1.global_0
  loc_BA63FD: StFixedStr
  loc_BA6400: FFree1Str var_AC
  loc_BA6403: FFreeAd var_90 = ""
  loc_BA640A: FFreeVar var_BC = ""
  loc_BA6411: FLdRfVar var_A8
  loc_BA6414: LitVarStr var_A4, "DetaOrga"
  loc_BA6419: PopAdLdVar
  loc_BA641A: FLdRfVar var_94
  loc_BA641D: FLdRfVar var_90
  loc_BA6420: FLdPr Me
  loc_BA6423: MemLdRfVar from_stack_1.global_76
  loc_BA6426: NewIfNullPr clsimputacion
  loc_BA6429: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA642E: FLdPr var_90
  loc_BA6431:  = Me.Fields
  loc_BA6436: FLdPr var_94
  loc_BA6439: from_stack_2 = Me.Item(from_stack_1)
  loc_BA643E: LitI2_Byte 0
  loc_BA6440: LitVar_Missing var_DC
  loc_BA6443: LitI2_Byte 0
  loc_BA6445: FLdZeroAd var_A8
  loc_BA6448: CVarAd
  loc_BA644C: PopAdLdVar
  loc_BA644D: FLdPr Me
  loc_BA6450: MemLdI2 global_108
  loc_BA6453: CI4UI1
  loc_BA6454: FLdPr Me
  loc_BA6457: MemLdI2 global_106
  loc_BA645A: CI4UI1
  loc_BA645B: FLdPr Me
  loc_BA645E: MemLdI2 global_104
  loc_BA6461: CI4UI1
  loc_BA6462: FLdPr Me
  loc_BA6465: MemLdStr global_100
  loc_BA6468: AryLock
  loc_BA646B: Ary1LdPr
  loc_BA646C: MemLdStr global_24
  loc_BA646F: AryLock
  loc_BA6472: Ary1LdPr
  loc_BA6473: MemLdStr global_24
  loc_BA6476: AryLock
  loc_BA6479: Ary1LdPr
  loc_BA647A: MemLdRfVar from_stack_1.global_12
  loc_BA647D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA6482: AryUnlock
  loc_BA6485: AryUnlock
  loc_BA6488: AryUnlock
  loc_BA648B: FFreeAd var_90 = ""
  loc_BA6492: FFreeVar var_BC = ""
  loc_BA6499: LitI4 0
  loc_BA649E: FLdPr Me
  loc_BA64A1: MemLdI2 global_110
  loc_BA64A4: CI4UI1
  loc_BA64A5: FLdPr Me
  loc_BA64A8: MemLdI2 global_108
  loc_BA64AB: CI4UI1
  loc_BA64AC: FLdPr Me
  loc_BA64AF: MemLdI2 global_106
  loc_BA64B2: CI4UI1
  loc_BA64B3: FLdPr Me
  loc_BA64B6: MemLdI2 global_104
  loc_BA64B9: CI4UI1
  loc_BA64BA: FLdPr Me
  loc_BA64BD: MemLdStr global_100
  loc_BA64C0: Ary1LdPr
  loc_BA64C1: MemLdStr global_24
  loc_BA64C4: Ary1LdPr
  loc_BA64C5: MemLdStr global_24
  loc_BA64C8: Ary1LdPr
  loc_BA64C9: MemLdRfVar from_stack_1.global_20
  loc_BA64CC: RedimPreserve
  loc_BA64D6: FLdRfVar var_A8
  loc_BA64D9: LitVarStr var_A4, "CodiFifu"
  loc_BA64DE: PopAdLdVar
  loc_BA64DF: FLdRfVar var_94
  loc_BA64E2: FLdRfVar var_90
  loc_BA64E5: FLdPr Me
  loc_BA64E8: MemLdRfVar from_stack_1.global_76
  loc_BA64EB: NewIfNullPr clsimputacion
  loc_BA64EE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA64F3: FLdPr var_90
  loc_BA64F6:  = Me.Fields
  loc_BA64FB: FLdPr var_94
  loc_BA64FE: from_stack_2 = Me.Item(from_stack_1)
  loc_BA6503: LitI2_Byte 0
  loc_BA6505: LitVar_Missing var_DC
  loc_BA6508: LitI2_Byte 0
  loc_BA650A: FLdZeroAd var_A8
  loc_BA650D: CVarAd
  loc_BA6511: PopAdLdVar
  loc_BA6512: FLdPr Me
  loc_BA6515: MemLdI2 global_110
  loc_BA6518: CI4UI1
  loc_BA6519: FLdPr Me
  loc_BA651C: MemLdI2 global_108
  loc_BA651F: CI4UI1
  loc_BA6520: FLdPr Me
  loc_BA6523: MemLdI2 global_106
  loc_BA6526: CI4UI1
  loc_BA6527: FLdPr Me
  loc_BA652A: MemLdI2 global_104
  loc_BA652D: CI4UI1
  loc_BA652E: FLdPr Me
  loc_BA6531: MemLdStr global_100
  loc_BA6534: Ary1LdPr
  loc_BA6535: MemLdStr global_24
  loc_BA6538: Ary1LdPr
  loc_BA6539: MemLdStr global_24
  loc_BA653C: Ary1LdPr
  loc_BA653D: MemLdStr global_20
  loc_BA6540: Ary1LdPr
  loc_BA6541: MemLdRfVar from_stack_1.global_0
  loc_BA6544: LdFixedStr
  loc_BA6547: PopTmpLdAdStr
  loc_BA654B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA6550: ILdRf var_AC
  loc_BA6553: FLdPr Me
  loc_BA6556: MemLdI2 global_110
  loc_BA6559: CI4UI1
  loc_BA655A: FLdPr Me
  loc_BA655D: MemLdI2 global_108
  loc_BA6560: CI4UI1
  loc_BA6561: FLdPr Me
  loc_BA6564: MemLdI2 global_106
  loc_BA6567: CI4UI1
  loc_BA6568: FLdPr Me
  loc_BA656B: MemLdI2 global_104
  loc_BA656E: CI4UI1
  loc_BA656F: FLdPr Me
  loc_BA6572: MemLdStr global_100
  loc_BA6575: Ary1LdPr
  loc_BA6576: MemLdStr global_24
  loc_BA6579: Ary1LdPr
  loc_BA657A: MemLdStr global_24
  loc_BA657D: Ary1LdPr
  loc_BA657E: MemLdStr global_20
  loc_BA6581: Ary1LdPr
  loc_BA6582: MemLdRfVar from_stack_1.global_0
  loc_BA6585: StFixedStr
  loc_BA6588: FFree1Str var_AC
  loc_BA658B: FFreeAd var_90 = ""
  loc_BA6592: FFreeVar var_BC = ""
  loc_BA6599: FLdRfVar var_A8
  loc_BA659C: LitVarStr var_A4, "DetaFifu"
  loc_BA65A1: PopAdLdVar
  loc_BA65A2: FLdRfVar var_94
  loc_BA65A5: FLdRfVar var_90
  loc_BA65A8: FLdPr Me
  loc_BA65AB: MemLdRfVar from_stack_1.global_76
  loc_BA65AE: NewIfNullPr clsimputacion
  loc_BA65B1: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA65B6: FLdPr var_90
  loc_BA65B9:  = Me.Fields
  loc_BA65BE: FLdPr var_94
  loc_BA65C1: from_stack_2 = Me.Item(from_stack_1)
  loc_BA65C6: LitI2_Byte 0
  loc_BA65C8: LitVar_Missing var_DC
  loc_BA65CB: LitI2_Byte 0
  loc_BA65CD: FLdZeroAd var_A8
  loc_BA65D0: CVarAd
  loc_BA65D4: PopAdLdVar
  loc_BA65D5: FLdPr Me
  loc_BA65D8: MemLdI2 global_110
  loc_BA65DB: CI4UI1
  loc_BA65DC: FLdPr Me
  loc_BA65DF: MemLdI2 global_108
  loc_BA65E2: CI4UI1
  loc_BA65E3: FLdPr Me
  loc_BA65E6: MemLdI2 global_106
  loc_BA65E9: CI4UI1
  loc_BA65EA: FLdPr Me
  loc_BA65ED: MemLdI2 global_104
  loc_BA65F0: CI4UI1
  loc_BA65F1: FLdPr Me
  loc_BA65F4: MemLdStr global_100
  loc_BA65F7: AryLock
  loc_BA65FA: Ary1LdPr
  loc_BA65FB: MemLdStr global_24
  loc_BA65FE: AryLock
  loc_BA6601: Ary1LdPr
  loc_BA6602: MemLdStr global_24
  loc_BA6605: AryLock
  loc_BA6608: Ary1LdPr
  loc_BA6609: MemLdStr global_20
  loc_BA660C: AryLock
  loc_BA660F: Ary1LdPr
  loc_BA6610: MemLdRfVar from_stack_1.global_12
  loc_BA6613: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA6618: AryUnlock
  loc_BA661B: AryUnlock
  loc_BA661E: AryUnlock
  loc_BA6621: AryUnlock
  loc_BA6624: FFreeAd var_90 = ""
  loc_BA662B: FFreeVar var_BC = ""
  loc_BA6632: Branch loc_BA6803
  loc_BA6635: ILdRf var_8C
  loc_BA6638: LitI4 3
  loc_BA663D: EqI4
  loc_BA663E: BranchF loc_BA67F4
  loc_BA6641: FLdPr Me
  loc_BA6644: MemLdI2 global_110
  loc_BA6647: LitI2_Byte 1
  loc_BA6649: AddI2
  loc_BA664A: FLdPr Me
  loc_BA664D: MemStI2 global_110
  loc_BA6650: LitI2_Byte 1
  loc_BA6652: FLdPr Me
  loc_BA6655: MemStI2 global_112
  loc_BA6658: LitI4 0
  loc_BA665D: FLdPr Me
  loc_BA6660: MemLdI2 global_110
  loc_BA6663: CI4UI1
  loc_BA6664: FLdPr Me
  loc_BA6667: MemLdI2 global_108
  loc_BA666A: CI4UI1
  loc_BA666B: FLdPr Me
  loc_BA666E: MemLdI2 global_106
  loc_BA6671: CI4UI1
  loc_BA6672: FLdPr Me
  loc_BA6675: MemLdI2 global_104
  loc_BA6678: CI4UI1
  loc_BA6679: FLdPr Me
  loc_BA667C: MemLdStr global_100
  loc_BA667F: Ary1LdPr
  loc_BA6680: MemLdStr global_24
  loc_BA6683: Ary1LdPr
  loc_BA6684: MemLdStr global_24
  loc_BA6687: Ary1LdPr
  loc_BA6688: MemLdRfVar from_stack_1.global_20
  loc_BA668B: RedimPreserve
  loc_BA6695: FLdRfVar var_A8
  loc_BA6698: LitVarStr var_A4, "CodiFifu"
  loc_BA669D: PopAdLdVar
  loc_BA669E: FLdRfVar var_94
  loc_BA66A1: FLdRfVar var_90
  loc_BA66A4: FLdPr Me
  loc_BA66A7: MemLdRfVar from_stack_1.global_76
  loc_BA66AA: NewIfNullPr clsimputacion
  loc_BA66AD: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA66B2: FLdPr var_90
  loc_BA66B5:  = Me.Fields
  loc_BA66BA: FLdPr var_94
  loc_BA66BD: from_stack_2 = Me.Item(from_stack_1)
  loc_BA66C2: LitI2_Byte 0
  loc_BA66C4: LitVar_Missing var_DC
  loc_BA66C7: LitI2_Byte 0
  loc_BA66C9: FLdZeroAd var_A8
  loc_BA66CC: CVarAd
  loc_BA66D0: PopAdLdVar
  loc_BA66D1: FLdPr Me
  loc_BA66D4: MemLdI2 global_110
  loc_BA66D7: CI4UI1
  loc_BA66D8: FLdPr Me
  loc_BA66DB: MemLdI2 global_108
  loc_BA66DE: CI4UI1
  loc_BA66DF: FLdPr Me
  loc_BA66E2: MemLdI2 global_106
  loc_BA66E5: CI4UI1
  loc_BA66E6: FLdPr Me
  loc_BA66E9: MemLdI2 global_104
  loc_BA66EC: CI4UI1
  loc_BA66ED: FLdPr Me
  loc_BA66F0: MemLdStr global_100
  loc_BA66F3: Ary1LdPr
  loc_BA66F4: MemLdStr global_24
  loc_BA66F7: Ary1LdPr
  loc_BA66F8: MemLdStr global_24
  loc_BA66FB: Ary1LdPr
  loc_BA66FC: MemLdStr global_20
  loc_BA66FF: Ary1LdPr
  loc_BA6700: MemLdRfVar from_stack_1.global_0
  loc_BA6703: LdFixedStr
  loc_BA6706: PopTmpLdAdStr
  loc_BA670A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA670F: ILdRf var_AC
  loc_BA6712: FLdPr Me
  loc_BA6715: MemLdI2 global_110
  loc_BA6718: CI4UI1
  loc_BA6719: FLdPr Me
  loc_BA671C: MemLdI2 global_108
  loc_BA671F: CI4UI1
  loc_BA6720: FLdPr Me
  loc_BA6723: MemLdI2 global_106
  loc_BA6726: CI4UI1
  loc_BA6727: FLdPr Me
  loc_BA672A: MemLdI2 global_104
  loc_BA672D: CI4UI1
  loc_BA672E: FLdPr Me
  loc_BA6731: MemLdStr global_100
  loc_BA6734: Ary1LdPr
  loc_BA6735: MemLdStr global_24
  loc_BA6738: Ary1LdPr
  loc_BA6739: MemLdStr global_24
  loc_BA673C: Ary1LdPr
  loc_BA673D: MemLdStr global_20
  loc_BA6740: Ary1LdPr
  loc_BA6741: MemLdRfVar from_stack_1.global_0
  loc_BA6744: StFixedStr
  loc_BA6747: FFree1Str var_AC
  loc_BA674A: FFreeAd var_90 = ""
  loc_BA6751: FFreeVar var_BC = ""
  loc_BA6758: FLdRfVar var_A8
  loc_BA675B: LitVarStr var_A4, "DetaFifu"
  loc_BA6760: PopAdLdVar
  loc_BA6761: FLdRfVar var_94
  loc_BA6764: FLdRfVar var_90
  loc_BA6767: FLdPr Me
  loc_BA676A: MemLdRfVar from_stack_1.global_76
  loc_BA676D: NewIfNullPr clsimputacion
  loc_BA6770: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA6775: FLdPr var_90
  loc_BA6778:  = Me.Fields
  loc_BA677D: FLdPr var_94
  loc_BA6780: from_stack_2 = Me.Item(from_stack_1)
  loc_BA6785: LitI2_Byte 0
  loc_BA6787: LitVar_Missing var_DC
  loc_BA678A: LitI2_Byte 0
  loc_BA678C: FLdZeroAd var_A8
  loc_BA678F: CVarAd
  loc_BA6793: PopAdLdVar
  loc_BA6794: FLdPr Me
  loc_BA6797: MemLdI2 global_110
  loc_BA679A: CI4UI1
  loc_BA679B: FLdPr Me
  loc_BA679E: MemLdI2 global_108
  loc_BA67A1: CI4UI1
  loc_BA67A2: FLdPr Me
  loc_BA67A5: MemLdI2 global_106
  loc_BA67A8: CI4UI1
  loc_BA67A9: FLdPr Me
  loc_BA67AC: MemLdI2 global_104
  loc_BA67AF: CI4UI1
  loc_BA67B0: FLdPr Me
  loc_BA67B3: MemLdStr global_100
  loc_BA67B6: AryLock
  loc_BA67B9: Ary1LdPr
  loc_BA67BA: MemLdStr global_24
  loc_BA67BD: AryLock
  loc_BA67C0: Ary1LdPr
  loc_BA67C1: MemLdStr global_24
  loc_BA67C4: AryLock
  loc_BA67C7: Ary1LdPr
  loc_BA67C8: MemLdStr global_20
  loc_BA67CB: AryLock
  loc_BA67CE: Ary1LdPr
  loc_BA67CF: MemLdRfVar from_stack_1.global_12
  loc_BA67D2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA67D7: AryUnlock
  loc_BA67DA: AryUnlock
  loc_BA67DD: AryUnlock
  loc_BA67E0: AryUnlock
  loc_BA67E3: FFreeAd var_90 = ""
  loc_BA67EA: FFreeVar var_BC = ""
  loc_BA67F1: Branch loc_BA6803
  loc_BA67F4: FLdPr Me
  loc_BA67F7: MemLdI2 global_112
  loc_BA67FA: LitI2_Byte 1
  loc_BA67FC: AddI2
  loc_BA67FD: FLdPr Me
  loc_BA6800: MemStI2 global_112
  loc_BA6803: LitI4 0
  loc_BA6808: FLdPr Me
  loc_BA680B: MemLdI2 global_112
  loc_BA680E: CI4UI1
  loc_BA680F: FLdPr Me
  loc_BA6812: MemLdI2 global_110
  loc_BA6815: CI4UI1
  loc_BA6816: FLdPr Me
  loc_BA6819: MemLdI2 global_108
  loc_BA681C: CI4UI1
  loc_BA681D: FLdPr Me
  loc_BA6820: MemLdI2 global_106
  loc_BA6823: CI4UI1
  loc_BA6824: FLdPr Me
  loc_BA6827: MemLdI2 global_104
  loc_BA682A: CI4UI1
  loc_BA682B: FLdPr Me
  loc_BA682E: MemLdStr global_100
  loc_BA6831: Ary1LdPr
  loc_BA6832: MemLdStr global_24
  loc_BA6835: Ary1LdPr
  loc_BA6836: MemLdStr global_24
  loc_BA6839: Ary1LdPr
  loc_BA683A: MemLdStr global_20
  loc_BA683D: Ary1LdPr
  loc_BA683E: MemLdRfVar from_stack_1.global_20
  loc_BA6841: RedimPreserve
  loc_BA684B: LitI4 0
  loc_BA6850: LitI4 5
  loc_BA6855: FLdPr Me
  loc_BA6858: MemLdI2 global_112
  loc_BA685B: CI4UI1
  loc_BA685C: FLdPr Me
  loc_BA685F: MemLdI2 global_110
  loc_BA6862: CI4UI1
  loc_BA6863: FLdPr Me
  loc_BA6866: MemLdI2 global_108
  loc_BA6869: CI4UI1
  loc_BA686A: FLdPr Me
  loc_BA686D: MemLdI2 global_106
  loc_BA6870: CI4UI1
  loc_BA6871: FLdPr Me
  loc_BA6874: MemLdI2 global_104
  loc_BA6877: CI4UI1
  loc_BA6878: FLdPr Me
  loc_BA687B: MemLdStr global_100
  loc_BA687E: Ary1LdPr
  loc_BA687F: MemLdStr global_24
  loc_BA6882: Ary1LdPr
  loc_BA6883: MemLdStr global_24
  loc_BA6886: Ary1LdPr
  loc_BA6887: MemLdStr global_20
  loc_BA688A: Ary1LdPr
  loc_BA688B: MemLdStr global_20
  loc_BA688E: Ary1LdPr
  loc_BA688F: MemLdRfVar from_stack_1.global_0
  loc_BA6892: RedimPreserve
  loc_BA689C: ExitProcHresult
End Function

Private Function Proc_229_39_B50B18() 'B50B18
  'Data Table: 4D5204
  loc_B50068: FLdPr Me
  loc_B5006B: MemLdRfVar from_stack_1.global_76
  loc_B5006E: NewIfNullAd
  loc_B50071: FStAd var_88 
  loc_B50075: LitI2_Byte 0
  loc_B50077: LitI4 1
  loc_B5007C: FLdPr Me
  loc_B5007F: MemLdI2 global_110
  loc_B50082: CI4UI1
  loc_B50083: FLdPr Me
  loc_B50086: MemLdI2 global_108
  loc_B50089: CI4UI1
  loc_B5008A: FLdPr Me
  loc_B5008D: MemLdI2 global_106
  loc_B50090: CI4UI1
  loc_B50091: FLdPr Me
  loc_B50094: MemLdI2 global_104
  loc_B50097: CI4UI1
  loc_B50098: FLdPr Me
  loc_B5009B: MemLdStr global_100
  loc_B5009E: AryLock
  loc_B500A1: Ary1LdPr
  loc_B500A2: MemLdStr global_24
  loc_B500A5: AryLock
  loc_B500A8: Ary1LdPr
  loc_B500A9: MemLdStr global_24
  loc_B500AC: AryLock
  loc_B500AF: Ary1LdPr
  loc_B500B0: MemLdStr global_20
  loc_B500B3: AryLock
  loc_B500B6: Ary1LdPr
  loc_B500B7: MemLdRfVar from_stack_1.global_24
  loc_B500BA: AryInRecLdRf
  loc_B500C0: CVarRef
  loc_B500C5: LitI2_Byte &HFF
  loc_B500C7: LitVarI2 var_B0, 0
  loc_B500CC: PopAdLdVar
  loc_B500CD: LitI4 1
  loc_B500D2: FLdPr Me
  loc_B500D5: MemLdI2 global_112
  loc_B500D8: CI4UI1
  loc_B500D9: FLdPr Me
  loc_B500DC: MemLdI2 global_110
  loc_B500DF: CI4UI1
  loc_B500E0: FLdPr Me
  loc_B500E3: MemLdI2 global_108
  loc_B500E6: CI4UI1
  loc_B500E7: FLdPr Me
  loc_B500EA: MemLdI2 global_106
  loc_B500ED: CI4UI1
  loc_B500EE: FLdPr Me
  loc_B500F1: MemLdI2 global_104
  loc_B500F4: CI4UI1
  loc_B500F5: FLdPr Me
  loc_B500F8: MemLdStr global_100
  loc_B500FB: AryLock
  loc_B500FE: Ary1LdPr
  loc_B500FF: MemLdStr global_24
  loc_B50102: AryLock
  loc_B50105: Ary1LdPr
  loc_B50106: MemLdStr global_24
  loc_B50109: AryLock
  loc_B5010C: Ary1LdPr
  loc_B5010D: MemLdStr global_20
  loc_B50110: AryLock
  loc_B50113: Ary1LdPr
  loc_B50114: MemLdStr global_20
  loc_B50117: AryLock
  loc_B5011A: Ary1LdPr
  loc_B5011B: MemLdStr global_0
  loc_B5011E: AryLock
  loc_B50121: Ary1LdRf
  loc_B50122: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B50127: AryUnlock
  loc_B5012A: AryUnlock
  loc_B5012D: AryUnlock
  loc_B50130: AryUnlock
  loc_B50133: AryUnlock
  loc_B50136: AryUnlock
  loc_B50139: AryUnlock
  loc_B5013C: AryUnlock
  loc_B5013F: AryUnlock
  loc_B50142: AryUnlock
  loc_B50145: LitI2_Byte 0
  loc_B50147: LitI4 2
  loc_B5014C: FLdPr Me
  loc_B5014F: MemLdI2 global_110
  loc_B50152: CI4UI1
  loc_B50153: FLdPr Me
  loc_B50156: MemLdI2 global_108
  loc_B50159: CI4UI1
  loc_B5015A: FLdPr Me
  loc_B5015D: MemLdI2 global_106
  loc_B50160: CI4UI1
  loc_B50161: FLdPr Me
  loc_B50164: MemLdI2 global_104
  loc_B50167: CI4UI1
  loc_B50168: FLdPr Me
  loc_B5016B: MemLdStr global_100
  loc_B5016E: AryLock
  loc_B50171: Ary1LdPr
  loc_B50172: MemLdStr global_24
  loc_B50175: AryLock
  loc_B50178: Ary1LdPr
  loc_B50179: MemLdStr global_24
  loc_B5017C: AryLock
  loc_B5017F: Ary1LdPr
  loc_B50180: MemLdStr global_20
  loc_B50183: AryLock
  loc_B50186: Ary1LdPr
  loc_B50187: MemLdRfVar from_stack_1.global_24
  loc_B5018A: AryInRecLdRf
  loc_B50190: CVarRef
  loc_B50195: LitI2_Byte &HFF
  loc_B50197: LitVarI2 var_B0, 0
  loc_B5019C: PopAdLdVar
  loc_B5019D: LitI4 2
  loc_B501A2: FLdPr Me
  loc_B501A5: MemLdI2 global_112
  loc_B501A8: CI4UI1
  loc_B501A9: FLdPr Me
  loc_B501AC: MemLdI2 global_110
  loc_B501AF: CI4UI1
  loc_B501B0: FLdPr Me
  loc_B501B3: MemLdI2 global_108
  loc_B501B6: CI4UI1
  loc_B501B7: FLdPr Me
  loc_B501BA: MemLdI2 global_106
  loc_B501BD: CI4UI1
  loc_B501BE: FLdPr Me
  loc_B501C1: MemLdI2 global_104
  loc_B501C4: CI4UI1
  loc_B501C5: FLdPr Me
  loc_B501C8: MemLdStr global_100
  loc_B501CB: AryLock
  loc_B501CE: Ary1LdPr
  loc_B501CF: MemLdStr global_24
  loc_B501D2: AryLock
  loc_B501D5: Ary1LdPr
  loc_B501D6: MemLdStr global_24
  loc_B501D9: AryLock
  loc_B501DC: Ary1LdPr
  loc_B501DD: MemLdStr global_20
  loc_B501E0: AryLock
  loc_B501E3: Ary1LdPr
  loc_B501E4: MemLdStr global_20
  loc_B501E7: AryLock
  loc_B501EA: Ary1LdPr
  loc_B501EB: MemLdStr global_0
  loc_B501EE: AryLock
  loc_B501F1: Ary1LdRf
  loc_B501F2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B501F7: AryUnlock
  loc_B501FA: AryUnlock
  loc_B501FD: AryUnlock
  loc_B50200: AryUnlock
  loc_B50203: AryUnlock
  loc_B50206: AryUnlock
  loc_B50209: AryUnlock
  loc_B5020C: AryUnlock
  loc_B5020F: AryUnlock
  loc_B50212: AryUnlock
  loc_B50215: LitI2_Byte 0
  loc_B50217: LitI4 3
  loc_B5021C: FLdPr Me
  loc_B5021F: MemLdI2 global_110
  loc_B50222: CI4UI1
  loc_B50223: FLdPr Me
  loc_B50226: MemLdI2 global_108
  loc_B50229: CI4UI1
  loc_B5022A: FLdPr Me
  loc_B5022D: MemLdI2 global_106
  loc_B50230: CI4UI1
  loc_B50231: FLdPr Me
  loc_B50234: MemLdI2 global_104
  loc_B50237: CI4UI1
  loc_B50238: FLdPr Me
  loc_B5023B: MemLdStr global_100
  loc_B5023E: AryLock
  loc_B50241: Ary1LdPr
  loc_B50242: MemLdStr global_24
  loc_B50245: AryLock
  loc_B50248: Ary1LdPr
  loc_B50249: MemLdStr global_24
  loc_B5024C: AryLock
  loc_B5024F: Ary1LdPr
  loc_B50250: MemLdStr global_20
  loc_B50253: AryLock
  loc_B50256: Ary1LdPr
  loc_B50257: MemLdRfVar from_stack_1.global_24
  loc_B5025A: AryInRecLdRf
  loc_B50260: CVarRef
  loc_B50265: LitI2_Byte &HFF
  loc_B50267: LitVarI2 var_B0, 0
  loc_B5026C: PopAdLdVar
  loc_B5026D: LitI4 3
  loc_B50272: FLdPr Me
  loc_B50275: MemLdI2 global_112
  loc_B50278: CI4UI1
  loc_B50279: FLdPr Me
  loc_B5027C: MemLdI2 global_110
  loc_B5027F: CI4UI1
  loc_B50280: FLdPr Me
  loc_B50283: MemLdI2 global_108
  loc_B50286: CI4UI1
  loc_B50287: FLdPr Me
  loc_B5028A: MemLdI2 global_106
  loc_B5028D: CI4UI1
  loc_B5028E: FLdPr Me
  loc_B50291: MemLdI2 global_104
  loc_B50294: CI4UI1
  loc_B50295: FLdPr Me
  loc_B50298: MemLdStr global_100
  loc_B5029B: AryLock
  loc_B5029E: Ary1LdPr
  loc_B5029F: MemLdStr global_24
  loc_B502A2: AryLock
  loc_B502A5: Ary1LdPr
  loc_B502A6: MemLdStr global_24
  loc_B502A9: AryLock
  loc_B502AC: Ary1LdPr
  loc_B502AD: MemLdStr global_20
  loc_B502B0: AryLock
  loc_B502B3: Ary1LdPr
  loc_B502B4: MemLdStr global_20
  loc_B502B7: AryLock
  loc_B502BA: Ary1LdPr
  loc_B502BB: MemLdStr global_0
  loc_B502BE: AryLock
  loc_B502C1: Ary1LdRf
  loc_B502C2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B502C7: AryUnlock
  loc_B502CA: AryUnlock
  loc_B502CD: AryUnlock
  loc_B502D0: AryUnlock
  loc_B502D3: AryUnlock
  loc_B502D6: AryUnlock
  loc_B502D9: AryUnlock
  loc_B502DC: AryUnlock
  loc_B502DF: AryUnlock
  loc_B502E2: AryUnlock
  loc_B502E5: LitI2_Byte 0
  loc_B502E7: LitI4 4
  loc_B502EC: FLdPr Me
  loc_B502EF: MemLdI2 global_110
  loc_B502F2: CI4UI1
  loc_B502F3: FLdPr Me
  loc_B502F6: MemLdI2 global_108
  loc_B502F9: CI4UI1
  loc_B502FA: FLdPr Me
  loc_B502FD: MemLdI2 global_106
  loc_B50300: CI4UI1
  loc_B50301: FLdPr Me
  loc_B50304: MemLdI2 global_104
  loc_B50307: CI4UI1
  loc_B50308: FLdPr Me
  loc_B5030B: MemLdStr global_100
  loc_B5030E: AryLock
  loc_B50311: Ary1LdPr
  loc_B50312: MemLdStr global_24
  loc_B50315: AryLock
  loc_B50318: Ary1LdPr
  loc_B50319: MemLdStr global_24
  loc_B5031C: AryLock
  loc_B5031F: Ary1LdPr
  loc_B50320: MemLdStr global_20
  loc_B50323: AryLock
  loc_B50326: Ary1LdPr
  loc_B50327: MemLdRfVar from_stack_1.global_24
  loc_B5032A: AryInRecLdRf
  loc_B50330: CVarRef
  loc_B50335: LitI2_Byte &HFF
  loc_B50337: LitVarI2 var_B0, 0
  loc_B5033C: PopAdLdVar
  loc_B5033D: LitI4 4
  loc_B50342: FLdPr Me
  loc_B50345: MemLdI2 global_112
  loc_B50348: CI4UI1
  loc_B50349: FLdPr Me
  loc_B5034C: MemLdI2 global_110
  loc_B5034F: CI4UI1
  loc_B50350: FLdPr Me
  loc_B50353: MemLdI2 global_108
  loc_B50356: CI4UI1
  loc_B50357: FLdPr Me
  loc_B5035A: MemLdI2 global_106
  loc_B5035D: CI4UI1
  loc_B5035E: FLdPr Me
  loc_B50361: MemLdI2 global_104
  loc_B50364: CI4UI1
  loc_B50365: FLdPr Me
  loc_B50368: MemLdStr global_100
  loc_B5036B: AryLock
  loc_B5036E: Ary1LdPr
  loc_B5036F: MemLdStr global_24
  loc_B50372: AryLock
  loc_B50375: Ary1LdPr
  loc_B50376: MemLdStr global_24
  loc_B50379: AryLock
  loc_B5037C: Ary1LdPr
  loc_B5037D: MemLdStr global_20
  loc_B50380: AryLock
  loc_B50383: Ary1LdPr
  loc_B50384: MemLdStr global_20
  loc_B50387: AryLock
  loc_B5038A: Ary1LdPr
  loc_B5038B: MemLdStr global_0
  loc_B5038E: AryLock
  loc_B50391: Ary1LdRf
  loc_B50392: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B50397: AryUnlock
  loc_B5039A: AryUnlock
  loc_B5039D: AryUnlock
  loc_B503A0: AryUnlock
  loc_B503A3: AryUnlock
  loc_B503A6: AryUnlock
  loc_B503A9: AryUnlock
  loc_B503AC: AryUnlock
  loc_B503AF: AryUnlock
  loc_B503B2: AryUnlock
  loc_B503B5: LitI2_Byte 0
  loc_B503B7: LitI4 5
  loc_B503BC: FLdPr Me
  loc_B503BF: MemLdI2 global_110
  loc_B503C2: CI4UI1
  loc_B503C3: FLdPr Me
  loc_B503C6: MemLdI2 global_108
  loc_B503C9: CI4UI1
  loc_B503CA: FLdPr Me
  loc_B503CD: MemLdI2 global_106
  loc_B503D0: CI4UI1
  loc_B503D1: FLdPr Me
  loc_B503D4: MemLdI2 global_104
  loc_B503D7: CI4UI1
  loc_B503D8: FLdPr Me
  loc_B503DB: MemLdStr global_100
  loc_B503DE: AryLock
  loc_B503E1: Ary1LdPr
  loc_B503E2: MemLdStr global_24
  loc_B503E5: AryLock
  loc_B503E8: Ary1LdPr
  loc_B503E9: MemLdStr global_24
  loc_B503EC: AryLock
  loc_B503EF: Ary1LdPr
  loc_B503F0: MemLdStr global_20
  loc_B503F3: AryLock
  loc_B503F6: Ary1LdPr
  loc_B503F7: MemLdRfVar from_stack_1.global_24
  loc_B503FA: AryInRecLdRf
  loc_B50400: CVarRef
  loc_B50405: LitI2_Byte &HFF
  loc_B50407: LitVarI2 var_B0, 0
  loc_B5040C: PopAdLdVar
  loc_B5040D: LitI4 5
  loc_B50412: FLdPr Me
  loc_B50415: MemLdI2 global_112
  loc_B50418: CI4UI1
  loc_B50419: FLdPr Me
  loc_B5041C: MemLdI2 global_110
  loc_B5041F: CI4UI1
  loc_B50420: FLdPr Me
  loc_B50423: MemLdI2 global_108
  loc_B50426: CI4UI1
  loc_B50427: FLdPr Me
  loc_B5042A: MemLdI2 global_106
  loc_B5042D: CI4UI1
  loc_B5042E: FLdPr Me
  loc_B50431: MemLdI2 global_104
  loc_B50434: CI4UI1
  loc_B50435: FLdPr Me
  loc_B50438: MemLdStr global_100
  loc_B5043B: AryLock
  loc_B5043E: Ary1LdPr
  loc_B5043F: MemLdStr global_24
  loc_B50442: AryLock
  loc_B50445: Ary1LdPr
  loc_B50446: MemLdStr global_24
  loc_B50449: AryLock
  loc_B5044C: Ary1LdPr
  loc_B5044D: MemLdStr global_20
  loc_B50450: AryLock
  loc_B50453: Ary1LdPr
  loc_B50454: MemLdStr global_20
  loc_B50457: AryLock
  loc_B5045A: Ary1LdPr
  loc_B5045B: MemLdStr global_0
  loc_B5045E: AryLock
  loc_B50461: Ary1LdRf
  loc_B50462: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B50467: AryUnlock
  loc_B5046A: AryUnlock
  loc_B5046D: AryUnlock
  loc_B50470: AryUnlock
  loc_B50473: AryUnlock
  loc_B50476: AryUnlock
  loc_B50479: AryUnlock
  loc_B5047C: AryUnlock
  loc_B5047F: AryUnlock
  loc_B50482: AryUnlock
  loc_B50485: FLdRfVar var_EC
  loc_B50488: FLdRfVar var_DC
  loc_B5048B: LitVarStr var_B0, "PrevImpu"
  loc_B50490: PopAdLdVar
  loc_B50491: FLdRfVar var_D8
  loc_B50494: FLdRfVar var_D4
  loc_B50497: FLdPr var_88
  loc_B5049A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B5049F: FLdPr var_D4
  loc_B504A2:  = Me.Fields
  loc_B504A7: FLdPr var_D8
  loc_B504AA: from_stack_2 = Me.Item(from_stack_1)
  loc_B504AF: FLdPr var_DC
  loc_B504B2:  = Me.Value
  loc_B504B7: FLdRfVar var_EC
  loc_B504BA: LitVarI2 var_C0, 0
  loc_B504BF: HardType
  loc_B504C0: NeVarBool
  loc_B504C2: FFreeAd var_D4 = "": var_D8 = ""
  loc_B504CB: FFree1Var var_EC = ""
  loc_B504CE: BranchF loc_B505D4
  loc_B504D1: FLdRfVar var_DC
  loc_B504D4: LitVarStr var_B0, "ImpoImpu"
  loc_B504D9: PopAdLdVar
  loc_B504DA: FLdRfVar var_D8
  loc_B504DD: FLdRfVar var_D4
  loc_B504E0: FLdPr var_88
  loc_B504E3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B504E8: FLdPr var_D4
  loc_B504EB:  = Me.Fields
  loc_B504F0: FLdPr var_D8
  loc_B504F3: from_stack_2 = Me.Item(from_stack_1)
  loc_B504F8: LitI2_Byte 0
  loc_B504FA: LitI4 1
  loc_B504FF: FLdPr Me
  loc_B50502: MemLdI2 global_110
  loc_B50505: CI4UI1
  loc_B50506: FLdPr Me
  loc_B50509: MemLdI2 global_108
  loc_B5050C: CI4UI1
  loc_B5050D: FLdPr Me
  loc_B50510: MemLdI2 global_106
  loc_B50513: CI4UI1
  loc_B50514: FLdPr Me
  loc_B50517: MemLdI2 global_104
  loc_B5051A: CI4UI1
  loc_B5051B: FLdPr Me
  loc_B5051E: MemLdStr global_100
  loc_B50521: AryLock
  loc_B50524: Ary1LdPr
  loc_B50525: MemLdStr global_24
  loc_B50528: AryLock
  loc_B5052B: Ary1LdPr
  loc_B5052C: MemLdStr global_24
  loc_B5052F: AryLock
  loc_B50532: Ary1LdPr
  loc_B50533: MemLdStr global_20
  loc_B50536: AryLock
  loc_B50539: Ary1LdPr
  loc_B5053A: MemLdRfVar from_stack_1.global_24
  loc_B5053D: AryInRecLdRf
  loc_B50543: CVarRef
  loc_B50548: LitI2_Byte &HFF
  loc_B5054A: FLdZeroAd var_DC
  loc_B5054D: CVarAd
  loc_B50551: PopAdLdVar
  loc_B50552: LitI4 1
  loc_B50557: FLdPr Me
  loc_B5055A: MemLdI2 global_112
  loc_B5055D: CI4UI1
  loc_B5055E: FLdPr Me
  loc_B50561: MemLdI2 global_110
  loc_B50564: CI4UI1
  loc_B50565: FLdPr Me
  loc_B50568: MemLdI2 global_108
  loc_B5056B: CI4UI1
  loc_B5056C: FLdPr Me
  loc_B5056F: MemLdI2 global_106
  loc_B50572: CI4UI1
  loc_B50573: FLdPr Me
  loc_B50576: MemLdI2 global_104
  loc_B50579: CI4UI1
  loc_B5057A: FLdPr Me
  loc_B5057D: MemLdStr global_100
  loc_B50580: AryLock
  loc_B50583: Ary1LdPr
  loc_B50584: MemLdStr global_24
  loc_B50587: AryLock
  loc_B5058A: Ary1LdPr
  loc_B5058B: MemLdStr global_24
  loc_B5058E: AryLock
  loc_B50591: Ary1LdPr
  loc_B50592: MemLdStr global_20
  loc_B50595: AryLock
  loc_B50598: Ary1LdPr
  loc_B50599: MemLdStr global_20
  loc_B5059C: AryLock
  loc_B5059F: Ary1LdPr
  loc_B505A0: MemLdStr global_0
  loc_B505A3: AryLock
  loc_B505A6: Ary1LdRf
  loc_B505A7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B505AC: AryUnlock
  loc_B505AF: AryUnlock
  loc_B505B2: AryUnlock
  loc_B505B5: AryUnlock
  loc_B505B8: AryUnlock
  loc_B505BB: AryUnlock
  loc_B505BE: AryUnlock
  loc_B505C1: AryUnlock
  loc_B505C4: AryUnlock
  loc_B505C7: AryUnlock
  loc_B505CA: FFreeAd var_D4 = ""
  loc_B505D1: FFree1Var var_EC = ""
  loc_B505D4: FLdRfVar var_EC
  loc_B505D7: FLdRfVar var_DC
  loc_B505DA: LitVarStr var_B0, "DefiImpu"
  loc_B505DF: PopAdLdVar
  loc_B505E0: FLdRfVar var_D8
  loc_B505E3: FLdRfVar var_D4
  loc_B505E6: FLdPr var_88
  loc_B505E9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B505EE: FLdPr var_D4
  loc_B505F1:  = Me.Fields
  loc_B505F6: FLdPr var_D8
  loc_B505F9: from_stack_2 = Me.Item(from_stack_1)
  loc_B505FE: FLdPr var_DC
  loc_B50601:  = Me.Value
  loc_B50606: FLdRfVar var_EC
  loc_B50609: LitVarI2 var_C0, 0
  loc_B5060E: HardType
  loc_B5060F: NeVarBool
  loc_B50611: FFreeAd var_D4 = "": var_D8 = ""
  loc_B5061A: FFree1Var var_EC = ""
  loc_B5061D: BranchF loc_B50723
  loc_B50620: FLdRfVar var_DC
  loc_B50623: LitVarStr var_B0, "ImpoImpu"
  loc_B50628: PopAdLdVar
  loc_B50629: FLdRfVar var_D8
  loc_B5062C: FLdRfVar var_D4
  loc_B5062F: FLdPr var_88
  loc_B50632: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B50637: FLdPr var_D4
  loc_B5063A:  = Me.Fields
  loc_B5063F: FLdPr var_D8
  loc_B50642: from_stack_2 = Me.Item(from_stack_1)
  loc_B50647: LitI2_Byte 0
  loc_B50649: LitI4 2
  loc_B5064E: FLdPr Me
  loc_B50651: MemLdI2 global_110
  loc_B50654: CI4UI1
  loc_B50655: FLdPr Me
  loc_B50658: MemLdI2 global_108
  loc_B5065B: CI4UI1
  loc_B5065C: FLdPr Me
  loc_B5065F: MemLdI2 global_106
  loc_B50662: CI4UI1
  loc_B50663: FLdPr Me
  loc_B50666: MemLdI2 global_104
  loc_B50669: CI4UI1
  loc_B5066A: FLdPr Me
  loc_B5066D: MemLdStr global_100
  loc_B50670: AryLock
  loc_B50673: Ary1LdPr
  loc_B50674: MemLdStr global_24
  loc_B50677: AryLock
  loc_B5067A: Ary1LdPr
  loc_B5067B: MemLdStr global_24
  loc_B5067E: AryLock
  loc_B50681: Ary1LdPr
  loc_B50682: MemLdStr global_20
  loc_B50685: AryLock
  loc_B50688: Ary1LdPr
  loc_B50689: MemLdRfVar from_stack_1.global_24
  loc_B5068C: AryInRecLdRf
  loc_B50692: CVarRef
  loc_B50697: LitI2_Byte &HFF
  loc_B50699: FLdZeroAd var_DC
  loc_B5069C: CVarAd
  loc_B506A0: PopAdLdVar
  loc_B506A1: LitI4 2
  loc_B506A6: FLdPr Me
  loc_B506A9: MemLdI2 global_112
  loc_B506AC: CI4UI1
  loc_B506AD: FLdPr Me
  loc_B506B0: MemLdI2 global_110
  loc_B506B3: CI4UI1
  loc_B506B4: FLdPr Me
  loc_B506B7: MemLdI2 global_108
  loc_B506BA: CI4UI1
  loc_B506BB: FLdPr Me
  loc_B506BE: MemLdI2 global_106
  loc_B506C1: CI4UI1
  loc_B506C2: FLdPr Me
  loc_B506C5: MemLdI2 global_104
  loc_B506C8: CI4UI1
  loc_B506C9: FLdPr Me
  loc_B506CC: MemLdStr global_100
  loc_B506CF: AryLock
  loc_B506D2: Ary1LdPr
  loc_B506D3: MemLdStr global_24
  loc_B506D6: AryLock
  loc_B506D9: Ary1LdPr
  loc_B506DA: MemLdStr global_24
  loc_B506DD: AryLock
  loc_B506E0: Ary1LdPr
  loc_B506E1: MemLdStr global_20
  loc_B506E4: AryLock
  loc_B506E7: Ary1LdPr
  loc_B506E8: MemLdStr global_20
  loc_B506EB: AryLock
  loc_B506EE: Ary1LdPr
  loc_B506EF: MemLdStr global_0
  loc_B506F2: AryLock
  loc_B506F5: Ary1LdRf
  loc_B506F6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B506FB: AryUnlock
  loc_B506FE: AryUnlock
  loc_B50701: AryUnlock
  loc_B50704: AryUnlock
  loc_B50707: AryUnlock
  loc_B5070A: AryUnlock
  loc_B5070D: AryUnlock
  loc_B50710: AryUnlock
  loc_B50713: AryUnlock
  loc_B50716: AryUnlock
  loc_B50719: FFreeAd var_D4 = ""
  loc_B50720: FFree1Var var_EC = ""
  loc_B50723: FLdRfVar var_EC
  loc_B50726: FLdRfVar var_DC
  loc_B50729: LitVarStr var_B0, "DeveImpu"
  loc_B5072E: PopAdLdVar
  loc_B5072F: FLdRfVar var_D8
  loc_B50732: FLdRfVar var_D4
  loc_B50735: FLdPr var_88
  loc_B50738: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B5073D: FLdPr var_D4
  loc_B50740:  = Me.Fields
  loc_B50745: FLdPr var_D8
  loc_B50748: from_stack_2 = Me.Item(from_stack_1)
  loc_B5074D: FLdPr var_DC
  loc_B50750:  = Me.Value
  loc_B50755: FLdRfVar var_EC
  loc_B50758: LitVarI2 var_C0, 0
  loc_B5075D: HardType
  loc_B5075E: NeVarBool
  loc_B50760: FFreeAd var_D4 = "": var_D8 = ""
  loc_B50769: FFree1Var var_EC = ""
  loc_B5076C: BranchF loc_B50872
  loc_B5076F: FLdRfVar var_DC
  loc_B50772: LitVarStr var_B0, "ImpoImpu"
  loc_B50777: PopAdLdVar
  loc_B50778: FLdRfVar var_D8
  loc_B5077B: FLdRfVar var_D4
  loc_B5077E: FLdPr var_88
  loc_B50781: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B50786: FLdPr var_D4
  loc_B50789:  = Me.Fields
  loc_B5078E: FLdPr var_D8
  loc_B50791: from_stack_2 = Me.Item(from_stack_1)
  loc_B50796: LitI2_Byte 0
  loc_B50798: LitI4 3
  loc_B5079D: FLdPr Me
  loc_B507A0: MemLdI2 global_110
  loc_B507A3: CI4UI1
  loc_B507A4: FLdPr Me
  loc_B507A7: MemLdI2 global_108
  loc_B507AA: CI4UI1
  loc_B507AB: FLdPr Me
  loc_B507AE: MemLdI2 global_106
  loc_B507B1: CI4UI1
  loc_B507B2: FLdPr Me
  loc_B507B5: MemLdI2 global_104
  loc_B507B8: CI4UI1
  loc_B507B9: FLdPr Me
  loc_B507BC: MemLdStr global_100
  loc_B507BF: AryLock
  loc_B507C2: Ary1LdPr
  loc_B507C3: MemLdStr global_24
  loc_B507C6: AryLock
  loc_B507C9: Ary1LdPr
  loc_B507CA: MemLdStr global_24
  loc_B507CD: AryLock
  loc_B507D0: Ary1LdPr
  loc_B507D1: MemLdStr global_20
  loc_B507D4: AryLock
  loc_B507D7: Ary1LdPr
  loc_B507D8: MemLdRfVar from_stack_1.global_24
  loc_B507DB: AryInRecLdRf
  loc_B507E1: CVarRef
  loc_B507E6: LitI2_Byte &HFF
  loc_B507E8: FLdZeroAd var_DC
  loc_B507EB: CVarAd
  loc_B507EF: PopAdLdVar
  loc_B507F0: LitI4 3
  loc_B507F5: FLdPr Me
  loc_B507F8: MemLdI2 global_112
  loc_B507FB: CI4UI1
  loc_B507FC: FLdPr Me
  loc_B507FF: MemLdI2 global_110
  loc_B50802: CI4UI1
  loc_B50803: FLdPr Me
  loc_B50806: MemLdI2 global_108
  loc_B50809: CI4UI1
  loc_B5080A: FLdPr Me
  loc_B5080D: MemLdI2 global_106
  loc_B50810: CI4UI1
  loc_B50811: FLdPr Me
  loc_B50814: MemLdI2 global_104
  loc_B50817: CI4UI1
  loc_B50818: FLdPr Me
  loc_B5081B: MemLdStr global_100
  loc_B5081E: AryLock
  loc_B50821: Ary1LdPr
  loc_B50822: MemLdStr global_24
  loc_B50825: AryLock
  loc_B50828: Ary1LdPr
  loc_B50829: MemLdStr global_24
  loc_B5082C: AryLock
  loc_B5082F: Ary1LdPr
  loc_B50830: MemLdStr global_20
  loc_B50833: AryLock
  loc_B50836: Ary1LdPr
  loc_B50837: MemLdStr global_20
  loc_B5083A: AryLock
  loc_B5083D: Ary1LdPr
  loc_B5083E: MemLdStr global_0
  loc_B50841: AryLock
  loc_B50844: Ary1LdRf
  loc_B50845: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B5084A: AryUnlock
  loc_B5084D: AryUnlock
  loc_B50850: AryUnlock
  loc_B50853: AryUnlock
  loc_B50856: AryUnlock
  loc_B50859: AryUnlock
  loc_B5085C: AryUnlock
  loc_B5085F: AryUnlock
  loc_B50862: AryUnlock
  loc_B50865: AryUnlock
  loc_B50868: FFreeAd var_D4 = ""
  loc_B5086F: FFree1Var var_EC = ""
  loc_B50872: FLdRfVar var_EC
  loc_B50875: FLdRfVar var_DC
  loc_B50878: LitVarStr var_B0, "MapaImpu"
  loc_B5087D: PopAdLdVar
  loc_B5087E: FLdRfVar var_D8
  loc_B50881: FLdRfVar var_D4
  loc_B50884: FLdPr var_88
  loc_B50887: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B5088C: FLdPr var_D4
  loc_B5088F:  = Me.Fields
  loc_B50894: FLdPr var_D8
  loc_B50897: from_stack_2 = Me.Item(from_stack_1)
  loc_B5089C: FLdPr var_DC
  loc_B5089F:  = Me.Value
  loc_B508A4: FLdRfVar var_EC
  loc_B508A7: LitVarI2 var_C0, 0
  loc_B508AC: HardType
  loc_B508AD: NeVarBool
  loc_B508AF: FFreeAd var_D4 = "": var_D8 = ""
  loc_B508B8: FFree1Var var_EC = ""
  loc_B508BB: BranchF loc_B509C1
  loc_B508BE: FLdRfVar var_DC
  loc_B508C1: LitVarStr var_B0, "ImpoImpu"
  loc_B508C6: PopAdLdVar
  loc_B508C7: FLdRfVar var_D8
  loc_B508CA: FLdRfVar var_D4
  loc_B508CD: FLdPr var_88
  loc_B508D0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B508D5: FLdPr var_D4
  loc_B508D8:  = Me.Fields
  loc_B508DD: FLdPr var_D8
  loc_B508E0: from_stack_2 = Me.Item(from_stack_1)
  loc_B508E5: LitI2_Byte 0
  loc_B508E7: LitI4 4
  loc_B508EC: FLdPr Me
  loc_B508EF: MemLdI2 global_110
  loc_B508F2: CI4UI1
  loc_B508F3: FLdPr Me
  loc_B508F6: MemLdI2 global_108
  loc_B508F9: CI4UI1
  loc_B508FA: FLdPr Me
  loc_B508FD: MemLdI2 global_106
  loc_B50900: CI4UI1
  loc_B50901: FLdPr Me
  loc_B50904: MemLdI2 global_104
  loc_B50907: CI4UI1
  loc_B50908: FLdPr Me
  loc_B5090B: MemLdStr global_100
  loc_B5090E: AryLock
  loc_B50911: Ary1LdPr
  loc_B50912: MemLdStr global_24
  loc_B50915: AryLock
  loc_B50918: Ary1LdPr
  loc_B50919: MemLdStr global_24
  loc_B5091C: AryLock
  loc_B5091F: Ary1LdPr
  loc_B50920: MemLdStr global_20
  loc_B50923: AryLock
  loc_B50926: Ary1LdPr
  loc_B50927: MemLdRfVar from_stack_1.global_24
  loc_B5092A: AryInRecLdRf
  loc_B50930: CVarRef
  loc_B50935: LitI2_Byte &HFF
  loc_B50937: FLdZeroAd var_DC
  loc_B5093A: CVarAd
  loc_B5093E: PopAdLdVar
  loc_B5093F: LitI4 4
  loc_B50944: FLdPr Me
  loc_B50947: MemLdI2 global_112
  loc_B5094A: CI4UI1
  loc_B5094B: FLdPr Me
  loc_B5094E: MemLdI2 global_110
  loc_B50951: CI4UI1
  loc_B50952: FLdPr Me
  loc_B50955: MemLdI2 global_108
  loc_B50958: CI4UI1
  loc_B50959: FLdPr Me
  loc_B5095C: MemLdI2 global_106
  loc_B5095F: CI4UI1
  loc_B50960: FLdPr Me
  loc_B50963: MemLdI2 global_104
  loc_B50966: CI4UI1
  loc_B50967: FLdPr Me
  loc_B5096A: MemLdStr global_100
  loc_B5096D: AryLock
  loc_B50970: Ary1LdPr
  loc_B50971: MemLdStr global_24
  loc_B50974: AryLock
  loc_B50977: Ary1LdPr
  loc_B50978: MemLdStr global_24
  loc_B5097B: AryLock
  loc_B5097E: Ary1LdPr
  loc_B5097F: MemLdStr global_20
  loc_B50982: AryLock
  loc_B50985: Ary1LdPr
  loc_B50986: MemLdStr global_20
  loc_B50989: AryLock
  loc_B5098C: Ary1LdPr
  loc_B5098D: MemLdStr global_0
  loc_B50990: AryLock
  loc_B50993: Ary1LdRf
  loc_B50994: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B50999: AryUnlock
  loc_B5099C: AryUnlock
  loc_B5099F: AryUnlock
  loc_B509A2: AryUnlock
  loc_B509A5: AryUnlock
  loc_B509A8: AryUnlock
  loc_B509AB: AryUnlock
  loc_B509AE: AryUnlock
  loc_B509B1: AryUnlock
  loc_B509B4: AryUnlock
  loc_B509B7: FFreeAd var_D4 = ""
  loc_B509BE: FFree1Var var_EC = ""
  loc_B509C1: FLdRfVar var_EC
  loc_B509C4: FLdRfVar var_DC
  loc_B509C7: LitVarStr var_B0, "PagaImpu"
  loc_B509CC: PopAdLdVar
  loc_B509CD: FLdRfVar var_D8
  loc_B509D0: FLdRfVar var_D4
  loc_B509D3: FLdPr var_88
  loc_B509D6: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B509DB: FLdPr var_D4
  loc_B509DE:  = Me.Fields
  loc_B509E3: FLdPr var_D8
  loc_B509E6: from_stack_2 = Me.Item(from_stack_1)
  loc_B509EB: FLdPr var_DC
  loc_B509EE:  = Me.Value
  loc_B509F3: FLdRfVar var_EC
  loc_B509F6: LitVarI2 var_C0, 0
  loc_B509FB: HardType
  loc_B509FC: NeVarBool
  loc_B509FE: FFreeAd var_D4 = "": var_D8 = ""
  loc_B50A07: FFree1Var var_EC = ""
  loc_B50A0A: BranchF loc_B50B10
  loc_B50A0D: FLdRfVar var_DC
  loc_B50A10: LitVarStr var_B0, "ImpoImpu"
  loc_B50A15: PopAdLdVar
  loc_B50A16: FLdRfVar var_D8
  loc_B50A19: FLdRfVar var_D4
  loc_B50A1C: FLdPr var_88
  loc_B50A1F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B50A24: FLdPr var_D4
  loc_B50A27:  = Me.Fields
  loc_B50A2C: FLdPr var_D8
  loc_B50A2F: from_stack_2 = Me.Item(from_stack_1)
  loc_B50A34: LitI2_Byte 0
  loc_B50A36: LitI4 5
  loc_B50A3B: FLdPr Me
  loc_B50A3E: MemLdI2 global_110
  loc_B50A41: CI4UI1
  loc_B50A42: FLdPr Me
  loc_B50A45: MemLdI2 global_108
  loc_B50A48: CI4UI1
  loc_B50A49: FLdPr Me
  loc_B50A4C: MemLdI2 global_106
  loc_B50A4F: CI4UI1
  loc_B50A50: FLdPr Me
  loc_B50A53: MemLdI2 global_104
  loc_B50A56: CI4UI1
  loc_B50A57: FLdPr Me
  loc_B50A5A: MemLdStr global_100
  loc_B50A5D: AryLock
  loc_B50A60: Ary1LdPr
  loc_B50A61: MemLdStr global_24
  loc_B50A64: AryLock
  loc_B50A67: Ary1LdPr
  loc_B50A68: MemLdStr global_24
  loc_B50A6B: AryLock
  loc_B50A6E: Ary1LdPr
  loc_B50A6F: MemLdStr global_20
  loc_B50A72: AryLock
  loc_B50A75: Ary1LdPr
  loc_B50A76: MemLdRfVar from_stack_1.global_24
  loc_B50A79: AryInRecLdRf
  loc_B50A7F: CVarRef
  loc_B50A84: LitI2_Byte &HFF
  loc_B50A86: FLdZeroAd var_DC
  loc_B50A89: CVarAd
  loc_B50A8D: PopAdLdVar
  loc_B50A8E: LitI4 5
  loc_B50A93: FLdPr Me
  loc_B50A96: MemLdI2 global_112
  loc_B50A99: CI4UI1
  loc_B50A9A: FLdPr Me
  loc_B50A9D: MemLdI2 global_110
  loc_B50AA0: CI4UI1
  loc_B50AA1: FLdPr Me
  loc_B50AA4: MemLdI2 global_108
  loc_B50AA7: CI4UI1
  loc_B50AA8: FLdPr Me
  loc_B50AAB: MemLdI2 global_106
  loc_B50AAE: CI4UI1
  loc_B50AAF: FLdPr Me
  loc_B50AB2: MemLdI2 global_104
  loc_B50AB5: CI4UI1
  loc_B50AB6: FLdPr Me
  loc_B50AB9: MemLdStr global_100
  loc_B50ABC: AryLock
  loc_B50ABF: Ary1LdPr
  loc_B50AC0: MemLdStr global_24
  loc_B50AC3: AryLock
  loc_B50AC6: Ary1LdPr
  loc_B50AC7: MemLdStr global_24
  loc_B50ACA: AryLock
  loc_B50ACD: Ary1LdPr
  loc_B50ACE: MemLdStr global_20
  loc_B50AD1: AryLock
  loc_B50AD4: Ary1LdPr
  loc_B50AD5: MemLdStr global_20
  loc_B50AD8: AryLock
  loc_B50ADB: Ary1LdPr
  loc_B50ADC: MemLdStr global_0
  loc_B50ADF: AryLock
  loc_B50AE2: Ary1LdRf
  loc_B50AE3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B50AE8: AryUnlock
  loc_B50AEB: AryUnlock
  loc_B50AEE: AryUnlock
  loc_B50AF1: AryUnlock
  loc_B50AF4: AryUnlock
  loc_B50AF7: AryUnlock
  loc_B50AFA: AryUnlock
  loc_B50AFD: AryUnlock
  loc_B50B00: AryUnlock
  loc_B50B03: AryUnlock
  loc_B50B06: FFreeAd var_D4 = ""
  loc_B50B0D: FFree1Var var_EC = ""
  loc_B50B10: LitNothing
  loc_B50B12: FStAd var_88 
  loc_B50B16: ExitProcHresult
End Function

Private Function Proc_229_40_AE68B0() 'AE68B0
  'Data Table: 4D5204
  loc_AE61C4: LitVarStr var_94, "<html>"
  loc_AE61C9: PopAdLdVar
  loc_AE61CA: FLdPr Me
  loc_AE61CD: MemLdRfVar from_stack_1.htmFile
  loc_AE61D0: LdPrVar
  loc_AE61D2: LateMemCall
  loc_AE61D8: LitVarStr var_94, "<head>"
  loc_AE61DD: PopAdLdVar
  loc_AE61DE: FLdPr Me
  loc_AE61E1: MemLdRfVar from_stack_1.htmFile
  loc_AE61E4: LdPrVar
  loc_AE61E6: LateMemCall
  loc_AE61EC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AE61F1: PopAdLdVar
  loc_AE61F2: FLdPr Me
  loc_AE61F5: MemLdRfVar from_stack_1.htmFile
  loc_AE61F8: LdPrVar
  loc_AE61FA: LateMemCall
  loc_AE6200: LitStr "<title>"
  loc_AE6203: FLdRfVar var_A8
  loc_AE6206: FLdPr Me
  loc_AE6209:  = Me.Caption
  loc_AE620E: ILdRf var_A8
  loc_AE6211: ConcatStr
  loc_AE6212: FStStrNoPop var_AC
  loc_AE6215: LitStr "</title>"
  loc_AE6218: ConcatStr
  loc_AE6219: CVarStr var_BC
  loc_AE621C: PopAdLdVar
  loc_AE621D: FLdPr Me
  loc_AE6220: MemLdRfVar from_stack_1.htmFile
  loc_AE6223: LdPrVar
  loc_AE6225: LateMemCall
  loc_AE622B: FFreeStr var_A8 = ""
  loc_AE6232: FFree1Var var_BC = ""
  loc_AE6235: LitStr vbNullString
  loc_AE6238: ILdRf Me
  loc_AE623B: CastAd
  loc_AE623E: FStAdFunc var_C0
  loc_AE6241: FLdRfVar var_C0
  loc_AE6244: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_AE6249: FFree1Ad var_C0
  loc_AE624C: LitI4 0
  loc_AE6251: FStStrCopy var_AC
  loc_AE6254: FLdRfVar var_AC
  loc_AE6257: LitI4 0
  loc_AE625C: FStStrCopy var_A8
  loc_AE625F: FLdRfVar var_A8
  loc_AE6262: LitI2_Byte &HFF
  loc_AE6264: PopTmpLdAd2 var_C2
  loc_AE6267: FLdPr Me
  loc_AE626A: MemLdRfVar from_stack_1.htmFile
  loc_AE626D: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AE6272: FFreeStr var_A8 = ""
  loc_AE6279: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AE627E: PopAdLdVar
  loc_AE627F: FLdPr Me
  loc_AE6282: MemLdRfVar from_stack_1.htmFile
  loc_AE6285: LdPrVar
  loc_AE6287: LateMemCall
  loc_AE628D: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AE6292: PopAdLdVar
  loc_AE6293: FLdPr Me
  loc_AE6296: MemLdRfVar from_stack_1.htmFile
  loc_AE6299: LdPrVar
  loc_AE629B: LateMemCall
  loc_AE62A1: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ valign=""bottom""><p align=""center""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_AE62A6: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AE62AB: FStVarCopyObj var_BC
  loc_AE62AE: FLdRfVar var_BC
  loc_AE62B1: FLdRfVar var_D4
  loc_AE62B4: ImpAdCallFPR4  = Ucase()
  loc_AE62B9: FLdRfVar var_D4
  loc_AE62BC: ConcatVar var_E4
  loc_AE62C0: LitVarStr var_F4, "</p>"
  loc_AE62C5: ConcatVar var_104
  loc_AE62C9: PopAdLdVar
  loc_AE62CA: FLdPr Me
  loc_AE62CD: MemLdRfVar from_stack_1.htmFile
  loc_AE62D0: LdPrVar
  loc_AE62D2: LateMemCall
  loc_AE62D8: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_AE62E3: LitStr "    <p align=""center"">"
  loc_AE62E6: FLdRfVar var_A8
  loc_AE62E9: FLdPr Me
  loc_AE62EC:  = Me.Caption
  loc_AE62F1: ILdRf var_A8
  loc_AE62F4: ConcatStr
  loc_AE62F5: FStStrNoPop var_AC
  loc_AE62F8: LitStr "</p></th>"
  loc_AE62FB: ConcatStr
  loc_AE62FC: CVarStr var_BC
  loc_AE62FF: PopAdLdVar
  loc_AE6300: FLdPr Me
  loc_AE6303: MemLdRfVar from_stack_1.htmFile
  loc_AE6306: LdPrVar
  loc_AE6308: LateMemCall
  loc_AE630E: FFreeStr var_A8 = ""
  loc_AE6315: FFree1Var var_BC = ""
  loc_AE6318: LitVarStr var_94, "  </tr>"
  loc_AE631D: PopAdLdVar
  loc_AE631E: FLdPr Me
  loc_AE6321: MemLdRfVar from_stack_1.htmFile
  loc_AE6324: LdPrVar
  loc_AE6326: LateMemCall
  loc_AE632C: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_AE6331: PopAdLdVar
  loc_AE6332: FLdPr Me
  loc_AE6335: MemLdRfVar from_stack_1.htmFile
  loc_AE6338: LdPrVar
  loc_AE633A: LateMemCall
  loc_AE6340: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_AE6345: PopAdLdVar
  loc_AE6346: FLdPr Me
  loc_AE6349: MemLdRfVar from_stack_1.htmFile
  loc_AE634C: LdPrVar
  loc_AE634E: LateMemCall
  loc_AE6354: LitStr "    Periodo: <span class=""Normal"">"
  loc_AE6357: FLdRfVar var_A8
  loc_AE635A: FLdPr Me
  loc_AE635D: VCallAd Control_ID_cboPeriodo
  loc_AE6360: FStAdFunc var_C0
  loc_AE6363: FLdPr var_C0
  loc_AE6366:  = Me.Text
  loc_AE636B: ILdRf var_A8
  loc_AE636E: ConcatStr
  loc_AE636F: FStStrNoPop var_AC
  loc_AE6372: LitStr "</span>"
  loc_AE6375: ConcatStr
  loc_AE6376: CVarStr var_BC
  loc_AE6379: PopAdLdVar
  loc_AE637A: FLdPr Me
  loc_AE637D: MemLdRfVar from_stack_1.htmFile
  loc_AE6380: LdPrVar
  loc_AE6382: LateMemCall
  loc_AE6388: FFreeStr var_A8 = ""
  loc_AE638F: FFree1Ad var_C0
  loc_AE6392: FFree1Var var_BC = ""
  loc_AE6395: LitStr "   <br>Desde: <span class=""Normal"">"
  loc_AE6398: FLdPr Me
  loc_AE639B: VCallAd Control_ID_mskDesde
  loc_AE639E: FStAdFunc var_C0
  loc_AE63A1: FLdPr var_C0
  loc_AE63A4: LateIdLdVar var_BC DispID_15 0
  loc_AE63AB: CStrVarTmp
  loc_AE63AC: FStStrNoPop var_A8
  loc_AE63AF: ConcatStr
  loc_AE63B0: FStStrNoPop var_AC
  loc_AE63B3: LitStr "</span>"
  loc_AE63B6: ConcatStr
  loc_AE63B7: CVarStr var_D4
  loc_AE63BA: PopAdLdVar
  loc_AE63BB: FLdPr Me
  loc_AE63BE: MemLdRfVar from_stack_1.htmFile
  loc_AE63C1: LdPrVar
  loc_AE63C3: LateMemCall
  loc_AE63C9: FFreeStr var_A8 = ""
  loc_AE63D0: FFree1Ad var_C0
  loc_AE63D3: FFreeVar var_BC = ""
  loc_AE63DA: LitStr "   <br>Hasta: <span class=""Normal"">"
  loc_AE63DD: FLdPr Me
  loc_AE63E0: VCallAd Control_ID_mskHasta
  loc_AE63E3: FStAdFunc var_C0
  loc_AE63E6: FLdPr var_C0
  loc_AE63E9: LateIdLdVar var_BC DispID_15 0
  loc_AE63F0: CStrVarTmp
  loc_AE63F1: FStStrNoPop var_A8
  loc_AE63F4: ConcatStr
  loc_AE63F5: FStStrNoPop var_AC
  loc_AE63F8: LitStr "</span>"
  loc_AE63FB: ConcatStr
  loc_AE63FC: CVarStr var_D4
  loc_AE63FF: PopAdLdVar
  loc_AE6400: FLdPr Me
  loc_AE6403: MemLdRfVar from_stack_1.htmFile
  loc_AE6406: LdPrVar
  loc_AE6408: LateMemCall
  loc_AE640E: FFreeStr var_A8 = ""
  loc_AE6415: FFree1Ad var_C0
  loc_AE6418: FFreeVar var_BC = ""
  loc_AE641F: FLdPr Me
  loc_AE6422: VCallAd Control_ID_CodiInsuMsk
  loc_AE6425: FStAdFunc var_C0
  loc_AE6428: FLdPr var_C0
  loc_AE642B: LateIdLdVar var_BC DispID_0 0
  loc_AE6432: CStrVarTmp
  loc_AE6433: FStStrNoPop var_A8
  loc_AE6436: LitStr vbNullString
  loc_AE6439: NeStr
  loc_AE643B: FFree1Str var_A8
  loc_AE643E: FFree1Ad var_C0
  loc_AE6441: FFree1Var var_BC = ""
  loc_AE6444: BranchF loc_AE64B8
  loc_AE6447: LitStr "   <br>Insumo: <span class=""Normal"">Igual a '"
  loc_AE644A: FLdPr Me
  loc_AE644D: VCallAd Control_ID_CodiInsuMsk
  loc_AE6450: FStAdFunc var_C0
  loc_AE6453: FLdPr var_C0
  loc_AE6456: LateIdLdVar var_BC DispID_0 0
  loc_AE645D: CStrVarTmp
  loc_AE645E: FStStrNoPop var_A8
  loc_AE6461: ConcatStr
  loc_AE6462: FStStrNoPop var_AC
  loc_AE6465: LitStr "'  -  "
  loc_AE6468: ConcatStr
  loc_AE6469: FStStrNoPop var_120
  loc_AE646C: FLdRfVar var_11C
  loc_AE646F: FLdPr Me
  loc_AE6472: VCallAd Control_ID_CodiInsuLbl
  loc_AE6475: FStAdFunc var_118
  loc_AE6478: FLdPr var_118
  loc_AE647B:  = Me.Caption
  loc_AE6480: ILdRf var_11C
  loc_AE6483: ConcatStr
  loc_AE6484: FStStrNoPop var_124
  loc_AE6487: LitStr "</span>"
  loc_AE648A: ConcatStr
  loc_AE648B: CVarStr var_D4
  loc_AE648E: PopAdLdVar
  loc_AE648F: FLdPr Me
  loc_AE6492: MemLdRfVar from_stack_1.htmFile
  loc_AE6495: LdPrVar
  loc_AE6497: LateMemCall
  loc_AE649D: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_AE64AA: FFreeAd var_C0 = ""
  loc_AE64B1: FFreeVar var_BC = ""
  loc_AE64B8: FLdPr Me
  loc_AE64BB: VCallAd Control_ID_CodiPartMsk
  loc_AE64BE: FStAdFunc var_C0
  loc_AE64C1: FLdPr var_C0
  loc_AE64C4: LateIdLdVar var_BC DispID_0 0
  loc_AE64CB: CStrVarTmp
  loc_AE64CC: FStStrNoPop var_A8
  loc_AE64CF: LitStr vbNullString
  loc_AE64D2: NeStr
  loc_AE64D4: FFree1Str var_A8
  loc_AE64D7: FFree1Ad var_C0
  loc_AE64DA: FFree1Var var_BC = ""
  loc_AE64DD: BranchF loc_AE6551
  loc_AE64E0: LitStr "   <br>Partida: <span class=""Normal"">Comenzando con '"
  loc_AE64E3: FLdPr Me
  loc_AE64E6: VCallAd Control_ID_CodiPartMsk
  loc_AE64E9: FStAdFunc var_C0
  loc_AE64EC: FLdPr var_C0
  loc_AE64EF: LateIdLdVar var_BC DispID_0 0
  loc_AE64F6: CStrVarTmp
  loc_AE64F7: FStStrNoPop var_A8
  loc_AE64FA: ConcatStr
  loc_AE64FB: FStStrNoPop var_AC
  loc_AE64FE: LitStr "'  -  "
  loc_AE6501: ConcatStr
  loc_AE6502: FStStrNoPop var_120
  loc_AE6505: FLdRfVar var_11C
  loc_AE6508: FLdPr Me
  loc_AE650B: VCallAd Control_ID_CodiPartLbl
  loc_AE650E: FStAdFunc var_118
  loc_AE6511: FLdPr var_118
  loc_AE6514:  = Me.Caption
  loc_AE6519: ILdRf var_11C
  loc_AE651C: ConcatStr
  loc_AE651D: FStStrNoPop var_124
  loc_AE6520: LitStr "</span>"
  loc_AE6523: ConcatStr
  loc_AE6524: CVarStr var_D4
  loc_AE6527: PopAdLdVar
  loc_AE6528: FLdPr Me
  loc_AE652B: MemLdRfVar from_stack_1.htmFile
  loc_AE652E: LdPrVar
  loc_AE6530: LateMemCall
  loc_AE6536: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_AE6543: FFreeAd var_C0 = ""
  loc_AE654A: FFreeVar var_BC = ""
  loc_AE6551: FLdPr Me
  loc_AE6554: VCallAd Control_ID_CodiOrgaMsk
  loc_AE6557: FStAdFunc var_C0
  loc_AE655A: FLdPr var_C0
  loc_AE655D: LateIdLdVar var_BC DispID_0 0
  loc_AE6564: CStrVarTmp
  loc_AE6565: FStStrNoPop var_A8
  loc_AE6568: LitStr vbNullString
  loc_AE656B: NeStr
  loc_AE656D: FFree1Str var_A8
  loc_AE6570: FFree1Ad var_C0
  loc_AE6573: FFree1Var var_BC = ""
  loc_AE6576: BranchF loc_AE65EA
  loc_AE6579: LitStr "   <br>Organigrama: <span class=""Normal"">Comenzando con '"
  loc_AE657C: FLdPr Me
  loc_AE657F: VCallAd Control_ID_CodiOrgaMsk
  loc_AE6582: FStAdFunc var_C0
  loc_AE6585: FLdPr var_C0
  loc_AE6588: LateIdLdVar var_BC DispID_0 0
  loc_AE658F: CStrVarTmp
  loc_AE6590: FStStrNoPop var_A8
  loc_AE6593: ConcatStr
  loc_AE6594: FStStrNoPop var_AC
  loc_AE6597: LitStr "'  -  "
  loc_AE659A: ConcatStr
  loc_AE659B: FStStrNoPop var_120
  loc_AE659E: FLdRfVar var_11C
  loc_AE65A1: FLdPr Me
  loc_AE65A4: VCallAd Control_ID_CodiOrgaLbl
  loc_AE65A7: FStAdFunc var_118
  loc_AE65AA: FLdPr var_118
  loc_AE65AD:  = Me.Caption
  loc_AE65B2: ILdRf var_11C
  loc_AE65B5: ConcatStr
  loc_AE65B6: FStStrNoPop var_124
  loc_AE65B9: LitStr "</span>"
  loc_AE65BC: ConcatStr
  loc_AE65BD: CVarStr var_D4
  loc_AE65C0: PopAdLdVar
  loc_AE65C1: FLdPr Me
  loc_AE65C4: MemLdRfVar from_stack_1.htmFile
  loc_AE65C7: LdPrVar
  loc_AE65C9: LateMemCall
  loc_AE65CF: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_AE65DC: FFreeAd var_C0 = ""
  loc_AE65E3: FFreeVar var_BC = ""
  loc_AE65EA: FLdPr Me
  loc_AE65ED: VCallAd Control_ID_CodiUngaMsk
  loc_AE65F0: FStAdFunc var_C0
  loc_AE65F3: FLdPr var_C0
  loc_AE65F6: LateIdLdVar var_BC DispID_0 0
  loc_AE65FD: CStrVarTmp
  loc_AE65FE: FStStrNoPop var_A8
  loc_AE6601: LitStr vbNullString
  loc_AE6604: NeStr
  loc_AE6606: FFree1Str var_A8
  loc_AE6609: FFree1Ad var_C0
  loc_AE660C: FFree1Var var_BC = ""
  loc_AE660F: BranchF loc_AE6683
  loc_AE6612: LitStr "   <br>Unidad de Gasto: <span class=""Normal"">"
  loc_AE6615: FLdPr Me
  loc_AE6618: VCallAd Control_ID_CodiUngaMsk
  loc_AE661B: FStAdFunc var_C0
  loc_AE661E: FLdPr var_C0
  loc_AE6621: LateIdLdVar var_BC DispID_22 0
  loc_AE6628: CStrVarTmp
  loc_AE6629: FStStrNoPop var_A8
  loc_AE662C: ConcatStr
  loc_AE662D: FStStrNoPop var_AC
  loc_AE6630: LitStr " - "
  loc_AE6633: ConcatStr
  loc_AE6634: FStStrNoPop var_120
  loc_AE6637: FLdRfVar var_11C
  loc_AE663A: FLdPr Me
  loc_AE663D: VCallAd Control_ID_DetaUngaLbl
  loc_AE6640: FStAdFunc var_118
  loc_AE6643: FLdPr var_118
  loc_AE6646:  = Me.Caption
  loc_AE664B: ILdRf var_11C
  loc_AE664E: ConcatStr
  loc_AE664F: FStStrNoPop var_124
  loc_AE6652: LitStr "</span>"
  loc_AE6655: ConcatStr
  loc_AE6656: CVarStr var_D4
  loc_AE6659: PopAdLdVar
  loc_AE665A: FLdPr Me
  loc_AE665D: MemLdRfVar from_stack_1.htmFile
  loc_AE6660: LdPrVar
  loc_AE6662: LateMemCall
  loc_AE6668: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_AE6675: FFreeAd var_C0 = ""
  loc_AE667C: FFreeVar var_BC = ""
  loc_AE6683: FLdPr Me
  loc_AE6686: VCallAd Control_ID_CodiFifuMsk
  loc_AE6689: FStAdFunc var_C0
  loc_AE668C: FLdPr var_C0
  loc_AE668F: LateIdLdVar var_BC DispID_0 0
  loc_AE6696: CStrVarTmp
  loc_AE6697: FStStrNoPop var_A8
  loc_AE669A: LitStr vbNullString
  loc_AE669D: NeStr
  loc_AE669F: FFree1Str var_A8
  loc_AE66A2: FFree1Ad var_C0
  loc_AE66A5: FFree1Var var_BC = ""
  loc_AE66A8: BranchF loc_AE671C
  loc_AE66AB: LitStr "   <br>Finalidad y Funci&oacute;n: <span class=""Normal"">Comenzando con '"
  loc_AE66AE: FLdPr Me
  loc_AE66B1: VCallAd Control_ID_CodiFifuMsk
  loc_AE66B4: FStAdFunc var_C0
  loc_AE66B7: FLdPr var_C0
  loc_AE66BA: LateIdLdVar var_BC DispID_0 0
  loc_AE66C1: CStrVarTmp
  loc_AE66C2: FStStrNoPop var_A8
  loc_AE66C5: ConcatStr
  loc_AE66C6: FStStrNoPop var_AC
  loc_AE66C9: LitStr "'  -  "
  loc_AE66CC: ConcatStr
  loc_AE66CD: FStStrNoPop var_120
  loc_AE66D0: FLdRfVar var_11C
  loc_AE66D3: FLdPr Me
  loc_AE66D6: VCallAd Control_ID_CodiFifuLbl
  loc_AE66D9: FStAdFunc var_118
  loc_AE66DC: FLdPr var_118
  loc_AE66DF:  = Me.Caption
  loc_AE66E4: ILdRf var_11C
  loc_AE66E7: ConcatStr
  loc_AE66E8: FStStrNoPop var_124
  loc_AE66EB: LitStr "</span>"
  loc_AE66EE: ConcatStr
  loc_AE66EF: CVarStr var_D4
  loc_AE66F2: PopAdLdVar
  loc_AE66F3: FLdPr Me
  loc_AE66F6: MemLdRfVar from_stack_1.htmFile
  loc_AE66F9: LdPrVar
  loc_AE66FB: LateMemCall
  loc_AE6701: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_AE670E: FFreeAd var_C0 = ""
  loc_AE6715: FFreeVar var_BC = ""
  loc_AE671C: LitVarStr var_94, "   </th>"
  loc_AE6721: PopAdLdVar
  loc_AE6722: FLdPr Me
  loc_AE6725: MemLdRfVar from_stack_1.htmFile
  loc_AE6728: LdPrVar
  loc_AE672A: LateMemCall
  loc_AE6730: LitVarStr var_94, "  </tr>"
  loc_AE6735: PopAdLdVar
  loc_AE6736: FLdPr Me
  loc_AE6739: MemLdRfVar from_stack_1.htmFile
  loc_AE673C: LdPrVar
  loc_AE673E: LateMemCall
  loc_AE6744: LitVarStr var_94, "</table>"
  loc_AE6749: PopAdLdVar
  loc_AE674A: FLdPr Me
  loc_AE674D: MemLdRfVar from_stack_1.htmFile
  loc_AE6750: LdPrVar
  loc_AE6752: LateMemCall
  loc_AE6758: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AE675D: PopAdLdVar
  loc_AE675E: FLdPr Me
  loc_AE6761: MemLdRfVar from_stack_1.htmFile
  loc_AE6764: LdPrVar
  loc_AE6766: LateMemCall
  loc_AE676C: LitVarStr var_94, "  <THEAD>"
  loc_AE6771: PopAdLdVar
  loc_AE6772: FLdPr Me
  loc_AE6775: MemLdRfVar from_stack_1.htmFile
  loc_AE6778: LdPrVar
  loc_AE677A: LateMemCall
  loc_AE6780: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AE6785: PopAdLdVar
  loc_AE6786: FLdPr Me
  loc_AE6789: MemLdRfVar from_stack_1.htmFile
  loc_AE678C: LdPrVar
  loc_AE678E: LateMemCall
  loc_AE6794: LitVarStr var_94, "    <th>Insumo</th>"
  loc_AE6799: PopAdLdVar
  loc_AE679A: FLdPr Me
  loc_AE679D: MemLdRfVar from_stack_1.htmFile
  loc_AE67A0: LdPrVar
  loc_AE67A2: LateMemCall
  loc_AE67A8: LitVarStr var_94, "    <th>Partida</th>"
  loc_AE67AD: PopAdLdVar
  loc_AE67AE: FLdPr Me
  loc_AE67B1: MemLdRfVar from_stack_1.htmFile
  loc_AE67B4: LdPrVar
  loc_AE67B6: LateMemCall
  loc_AE67BC: LitVarStr var_94, "    <th>Organigrama</th>"
  loc_AE67C1: PopAdLdVar
  loc_AE67C2: FLdPr Me
  loc_AE67C5: MemLdRfVar from_stack_1.htmFile
  loc_AE67C8: LdPrVar
  loc_AE67CA: LateMemCall
  loc_AE67D0: LitVarStr var_94, "    <th>Finalidad<br>"
  loc_AE67D5: PopAdLdVar
  loc_AE67D6: FLdPr Me
  loc_AE67D9: MemLdRfVar from_stack_1.htmFile
  loc_AE67DC: LdPrVar
  loc_AE67DE: LateMemCall
  loc_AE67E4: LitVarStr var_94, "    y funci&oacute;n</th>"
  loc_AE67E9: PopAdLdVar
  loc_AE67EA: FLdPr Me
  loc_AE67ED: MemLdRfVar from_stack_1.htmFile
  loc_AE67F0: LdPrVar
  loc_AE67F2: LateMemCall
  loc_AE67F8: LitVarStr var_94, "    <th>&nbsp</th>"
  loc_AE67FD: PopAdLdVar
  loc_AE67FE: FLdPr Me
  loc_AE6801: MemLdRfVar from_stack_1.htmFile
  loc_AE6804: LdPrVar
  loc_AE6806: LateMemCall
  loc_AE680C: LitVarStr var_94, "    <th>Preventiva</th>"
  loc_AE6811: PopAdLdVar
  loc_AE6812: FLdPr Me
  loc_AE6815: MemLdRfVar from_stack_1.htmFile
  loc_AE6818: LdPrVar
  loc_AE681A: LateMemCall
  loc_AE6820: LitVarStr var_94, "    <th>Definitiva</th>"
  loc_AE6825: PopAdLdVar
  loc_AE6826: FLdPr Me
  loc_AE6829: MemLdRfVar from_stack_1.htmFile
  loc_AE682C: LdPrVar
  loc_AE682E: LateMemCall
  loc_AE6834: LitVarStr var_94, "    <th>Devengado</th>"
  loc_AE6839: PopAdLdVar
  loc_AE683A: FLdPr Me
  loc_AE683D: MemLdRfVar from_stack_1.htmFile
  loc_AE6840: LdPrVar
  loc_AE6842: LateMemCall
  loc_AE6848: LitVarStr var_94, "    <th>Mandado<br>"
  loc_AE684D: PopAdLdVar
  loc_AE684E: FLdPr Me
  loc_AE6851: MemLdRfVar from_stack_1.htmFile
  loc_AE6854: LdPrVar
  loc_AE6856: LateMemCall
  loc_AE685C: LitVarStr var_94, "    a pagar </th>"
  loc_AE6861: PopAdLdVar
  loc_AE6862: FLdPr Me
  loc_AE6865: MemLdRfVar from_stack_1.htmFile
  loc_AE6868: LdPrVar
  loc_AE686A: LateMemCall
  loc_AE6870: LitVarStr var_94, "    <th>Pagado</th>"
  loc_AE6875: PopAdLdVar
  loc_AE6876: FLdPr Me
  loc_AE6879: MemLdRfVar from_stack_1.htmFile
  loc_AE687C: LdPrVar
  loc_AE687E: LateMemCall
  loc_AE6884: LitVarStr var_94, "  </tr>"
  loc_AE6889: PopAdLdVar
  loc_AE688A: FLdPr Me
  loc_AE688D: MemLdRfVar from_stack_1.htmFile
  loc_AE6890: LdPrVar
  loc_AE6892: LateMemCall
  loc_AE6898: LitVarStr var_94, "  </THEAD>"
  loc_AE689D: PopAdLdVar
  loc_AE689E: FLdPr Me
  loc_AE68A1: MemLdRfVar from_stack_1.htmFile
  loc_AE68A4: LdPrVar
  loc_AE68A6: LateMemCall
  loc_AE68AC: ExitProcHresult
End Function

Private Function Proc_229_41_981A50() '981A50
  'Data Table: 4D5204
  loc_981A10: LitVarStr var_94, "</table>"
  loc_981A15: PopAdLdVar
  loc_981A16: FLdPr Me
  loc_981A19: MemLdRfVar from_stack_1.htmFile
  loc_981A1C: LdPrVar
  loc_981A1E: LateMemCall
  loc_981A24: LitVarStr var_94, "</body>"
  loc_981A29: PopAdLdVar
  loc_981A2A: FLdPr Me
  loc_981A2D: MemLdRfVar from_stack_1.htmFile
  loc_981A30: LdPrVar
  loc_981A32: LateMemCall
  loc_981A38: LitVarStr var_94, "</html>"
  loc_981A3D: PopAdLdVar
  loc_981A3E: FLdPr Me
  loc_981A41: MemLdRfVar from_stack_1.htmFile
  loc_981A44: LdPrVar
  loc_981A46: LateMemCall
  loc_981A4C: ExitProcHresult
End Function
