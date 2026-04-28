VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResumendeImputacionesporUnidadGasto
  Caption = "Resumen de Imputaciones por Unidad de Gasto"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResumendeImputacionesporUnidadGasto.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 8865
  ClientHeight = 4815
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4560
    Width = 8865
    Height = 255
    TabIndex = 25
    OleObjectBlob = "rptResumendeImputacionesporUnidadGasto.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7920
    Top = 3600
    Width = 735
    Height = 615
    TabIndex = 23
    Cancel = -1  'True
    Picture = "rptResumendeImputacionesporUnidadGasto.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResumendeImputacionesporUnidadGasto.frx":0B9C
    Left = 5160
    Top = 480
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 3360
    Width = 4455
    Height = 1095
    TabIndex = 19
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 22
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 21
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 20
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3360
    Width = 3015
    Height = 1095
    TabIndex = 16
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 18
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 17
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8535
    Height = 3255
    TabIndex = 0
    Begin VB.ComboBox cboTipoug
      Style = 2
      Left = 1455
      Top = 1920
      Width = 4095
      Height = 315
      TabIndex = 11
      DataField = "DetaTiug"
    End
    Begin VB.CommandButton CodiUngaCmd
      Left = 2235
      Top = 2400
      Width = 375
      Height = 375
      Enabled = 0   'False
      TabIndex = 14
      Picture = "rptResumendeImputacionesporUnidadGasto.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdDesde
      Left = 2610
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptResumendeImputacionesporUnidadGasto.frx":0CFA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdHasta
      Left = 2610
      Top = 1320
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptResumendeImputacionesporUnidadGasto.frx":123C
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5880
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1455
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1455
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 5
      OleObjectBlob = "rptResumendeImputacionesporUnidadGasto.frx":177E
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1455
      Top = 1320
      Width = 1095
      Height = 285
      TabIndex = 8
      OleObjectBlob = "rptResumendeImputacionesporUnidadGasto.frx":1806
    End
    Begin MSMask.MaskEdBox CodiUngaMsk
      Left = 1500
      Top = 2400
      Width = 600
      Height = 315
      TabIndex = 13
      OleObjectBlob = "rptResumendeImputacionesporUnidadGasto.frx":188E
      DataField = "CodiUnga"
    End
    Begin VB.Label Label2
      Caption = "Tipo de Gasto:"
      Left = 240
      Top = 1920
      Width = 1080
      Height = 300
      TabIndex = 10
      AutoSize = -1  'True
    End
    Begin VB.Label DetaUngaLbl
      Left = 2760
      Top = 2400
      Width = 5655
      Height = 375
      TabIndex = 15
      BorderStyle = 1 'Fixed Single
      DataField = "DetaUnga"
    End
    Begin VB.Label Label16
      Caption = "Unidad de Gasto:"
      Left = 120
      Top = 2400
      Width = 1245
      Height = 195
      TabIndex = 12
    End
    Begin VB.Label Label4
      Caption = "Desde:"
      Left = 810
      Top = 840
      Width = 510
      Height = 195
      TabIndex = 4
      Alignment = 1 'Right Justify
    End
    Begin VB.Label Label3
      Caption = "Hasta:"
      Left = 855
      Top = 1320
      Width = 465
      Height = 195
      TabIndex = 7
      Alignment = 1 'Right Justify
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 735
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      Alignment = 1 'Right Justify
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8040
    Top = 3720
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 24
    OleObjectBlob = "rptResumendeImputacionesporUnidadGasto.frx":191E
  End
End

Attribute VB_Name = "rptResumendeImputacionesporUnidadGasto"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean


Private Sub cmdPrevia_Click() '95F614
  'Data Table: 49F7F8
  loc_95F5FC: ILdRf Me
  loc_95F5FF: CastAd
  loc_95F602: FStAdFunc var_88
  loc_95F605: FLdRfVar var_88
  loc_95F608: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95F60D: FFree1Ad var_88
  loc_95F610: ExitProcHresult
  loc_95F611: Ary1LdPr
  loc_95F612: MemLdPr global_-32765
End Sub

Private Sub cmdXLS_Click() '96B44C
  'Data Table: 49F7F8
  loc_96B430: LitI2_Byte &HFF
  loc_96B432: LitI2_Byte 0
  loc_96B434: ILdRf Me
  loc_96B437: CastAd
  loc_96B43A: FStAdFunc var_88
  loc_96B43D: FLdRfVar var_88
  loc_96B440: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B445: FFree1Ad var_88
  loc_96B448: ExitProcHresult
End Sub

Private Sub cmdHtml_Click() '95F530
  'Data Table: 49F7F8
  loc_95F518: ILdRf Me
  loc_95F51B: CastAd
  loc_95F51E: FStAdFunc var_88
  loc_95F521: FLdRfVar var_88
  loc_95F524: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_95F529: FFree1Ad var_88
  loc_95F52C: ExitProcHresult
  loc_95F52D: FFree1Ad arg_359
End Sub

Private Sub cmdSalir_Click() '976BE4
  'Data Table: 49F7F8
  loc_976BB4: LitVarStr var_94, "Cerrando..."
  loc_976BB9: PopAdLdVar
  loc_976BBA: FLdPr Me
  loc_976BBD: VCallAd Control_ID_statusBar
  loc_976BC0: FStAdFunc var_A8
  loc_976BC3: FLdPr var_A8
  loc_976BC6: LateIdSt
  loc_976BCB: FFree1Ad var_A8
  loc_976BCE: ILdRf Me
  loc_976BD1: FStAdNoPop
  loc_976BD5: ImpAdLdRf MemVar_C44F9C
  loc_976BD8: NewIfNullPr Me
  loc_976BDB: Me.Global.Unload from_stack_1
  loc_976BE0: FFree1Ad var_A8
  loc_976BE3: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95F57C
  'Data Table: 49F7F8
  loc_95F564: ILdRf Me
  loc_95F567: CastAd
  loc_95F56A: FStAdFunc var_88
  loc_95F56D: FLdRfVar var_88
  loc_95F570: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95F575: FFree1Ad var_88
  loc_95F578: ExitProcHresult
  loc_95F579: FLdZeroAd arg_359
End Sub

Private Sub CodiUngaCmd_Click() '9FE268
  'Data Table: 49F7F8
  loc_9FE124: LitI2_Byte &HFF
  loc_9FE126: ImpAdLdRf MemVar_C3D7D8
  loc_9FE129: NewIfNullPr bscUnidadGasto
  loc_9FE12C: Call bscUnidadGasto.MuestroAnuladosPut(from_stack_1v)
  loc_9FE131: LitNothing
  loc_9FE133: CastAd
  loc_9FE136: FStAdFuncNoPop
  loc_9FE139: ImpAdLdRf MemVar_C3D7D8
  loc_9FE13C: NewIfNullPr bscUnidadGasto
  loc_9FE13F: Call bscUnidadGasto.global_4338300Set(from_stack_1v)
  loc_9FE144: FFree1Ad var_88
  loc_9FE147: LitVar_Missing var_A8
  loc_9FE14A: PopAdLdVar
  loc_9FE14B: LitVarI4
  loc_9FE153: PopAdLdVar
  loc_9FE154: ImpAdLdRf MemVar_C3D7D8
  loc_9FE157: NewIfNullPr bscUnidadGasto
  loc_9FE15A: bscUnidadGasto.Show from_stack_1, from_stack_2
  loc_9FE15F: FLdRfVar var_AC
  loc_9FE162: FLdRfVar var_88
  loc_9FE165: ImpAdLdRf MemVar_C3D7D8
  loc_9FE168: NewIfNullPr bscUnidadGasto
  loc_9FE16B: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_9FE170: FLdPr var_88
  loc_9FE173: from_stack_1 = clsbase.RecordCount
  loc_9FE178: ILdRf var_AC
  loc_9FE17B: LitI4 0
  loc_9FE180: GtI4
  loc_9FE181: FFree1Ad var_88
  loc_9FE184: BranchF loc_9FE25F
  loc_9FE187: FLdRfVar var_C8
  loc_9FE18A: FLdRfVar var_B8
  loc_9FE18D: LitVarStr var_98, "CodiUnga"
  loc_9FE192: PopAdLdVar
  loc_9FE193: FLdRfVar var_B4
  loc_9FE196: FLdRfVar var_B0
  loc_9FE199: FLdRfVar var_88
  loc_9FE19C: ImpAdLdRf MemVar_C3D7D8
  loc_9FE19F: NewIfNullPr bscUnidadGasto
  loc_9FE1A2: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_9FE1A7: FLdPr var_88
  loc_9FE1AA: from_stack_1v = clsbase.RsFrmGet()
  loc_9FE1AF: FLdPr var_B0
  loc_9FE1B2:  = Me.Fields
  loc_9FE1B7: FLdPr var_B4
  loc_9FE1BA: from_stack_2 = Me.Item(from_stack_1)
  loc_9FE1BF: FLdPr var_B8
  loc_9FE1C2:  = Me.Value
  loc_9FE1C7: FLdRfVar var_C8
  loc_9FE1CA: CStrVarTmp
  loc_9FE1CB: CVarStr var_D8
  loc_9FE1CE: PopAdLdVar
  loc_9FE1CF: FLdPr Me
  loc_9FE1D2: VCallAd Control_ID_CodiUngaMsk
  loc_9FE1D5: FStAdFunc var_DC
  loc_9FE1D8: FLdPr var_DC
  loc_9FE1DB: LateIdSt
  loc_9FE1E0: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FE1ED: FFreeVar var_C8 = ""
  loc_9FE1F4: FLdRfVar var_C8
  loc_9FE1F7: FLdRfVar var_B8
  loc_9FE1FA: LitVarStr var_98, "DetaUnga"
  loc_9FE1FF: PopAdLdVar
  loc_9FE200: FLdRfVar var_B4
  loc_9FE203: FLdRfVar var_B0
  loc_9FE206: FLdRfVar var_88
  loc_9FE209: ImpAdLdRf MemVar_C3D7D8
  loc_9FE20C: NewIfNullPr bscUnidadGasto
  loc_9FE20F: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_9FE214: FLdPr var_88
  loc_9FE217: from_stack_1v = clsbase.RsFrmGet()
  loc_9FE21C: FLdPr var_B0
  loc_9FE21F:  = Me.Fields
  loc_9FE224: FLdPr var_B4
  loc_9FE227: from_stack_2 = Me.Item(from_stack_1)
  loc_9FE22C: FLdPr var_B8
  loc_9FE22F:  = Me.Value
  loc_9FE234: FLdRfVar var_C8
  loc_9FE237: CStrVarTmp
  loc_9FE238: FStStrNoPop var_E0
  loc_9FE23B: FLdPr Me
  loc_9FE23E: VCallAd Control_ID_DetaUngaLbl
  loc_9FE241: FStAdFunc var_DC
  loc_9FE244: FLdPr var_DC
  loc_9FE247: Me.Caption = from_stack_1
  loc_9FE24C: FFree1Str var_E0
  loc_9FE24F: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FE25C: FFree1Var var_C8 = ""
  loc_9FE25F: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9FE264: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98BC24
  'Data Table: 49F7F8
  loc_98BBEC: FLdPr Me
  loc_98BBEF: VCallAd Control_ID_statusBar
  loc_98BBF2: FStAdFunc var_88
  loc_98BBF5: FLdPr var_88
  loc_98BBF8: LateIdLdVar var_98 DispID_1 0
  loc_98BBFF: CStrVarTmp
  loc_98BC00: CVarStr var_A8
  loc_98BC03: PopAdLdVar
  loc_98BC04: FLdPr Me
  loc_98BC07: VCallAd Control_ID_statusBar
  loc_98BC0A: FStAdFunc var_BC
  loc_98BC0D: FLdPr var_BC
  loc_98BC10: LateIdSt
  loc_98BC15: FFreeAd var_88 = ""
  loc_98BC1C: FFreeVar var_98 = ""
  loc_98BC23: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '9D21A4
  'Data Table: 49F7F8
  loc_9D20BC: FLdRfVar var_8C
  loc_9D20BF: FLdPr Me
  loc_9D20C2: VCallAd Control_ID_cboPeriodo
  loc_9D20C5: FStAdFunc var_88
  loc_9D20C8: FLdPr var_88
  loc_9D20CB:  = Me.Text
  loc_9D20D0: LitI2_Byte 1
  loc_9D20D2: LitI2_Byte 1
  loc_9D20D4: ILdRf var_8C
  loc_9D20D7: CI2Str
  loc_9D20D9: FLdRfVar var_9C
  loc_9D20DC: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D20E1: FLdRfVar var_9C
  loc_9D20E4: CStrVarTmp
  loc_9D20E5: CVarStr var_AC
  loc_9D20E8: PopAdLdVar
  loc_9D20E9: FLdPr Me
  loc_9D20EC: VCallAd Control_ID_mskDesde
  loc_9D20EF: FStAdFunc var_C0
  loc_9D20F2: FLdPr var_C0
  loc_9D20F5: LateIdSt
  loc_9D20FA: FFree1Str var_8C
  loc_9D20FD: FFreeAd var_88 = ""
  loc_9D2104: FFreeVar var_9C = ""
  loc_9D210B: FLdRfVar var_8C
  loc_9D210E: FLdPr Me
  loc_9D2111: VCallAd Control_ID_cboPeriodo
  loc_9D2114: FStAdFunc var_88
  loc_9D2117: FLdPr var_88
  loc_9D211A:  = Me.Text
  loc_9D211F: ILdRf var_8C
  loc_9D2122: CI2Str
  loc_9D2124: ImpAdLdI2 MemVar_C3D064
  loc_9D2127: LtI2
  loc_9D2128: FFree1Str var_8C
  loc_9D212B: FFree1Ad var_88
  loc_9D212E: BranchF loc_9D2183
  loc_9D2131: FLdRfVar var_8C
  loc_9D2134: FLdPr Me
  loc_9D2137: VCallAd Control_ID_cboPeriodo
  loc_9D213A: FStAdFunc var_88
  loc_9D213D: FLdPr var_88
  loc_9D2140:  = Me.Text
  loc_9D2145: LitI2_Byte &H1F
  loc_9D2147: LitI2_Byte &HC
  loc_9D2149: ILdRf var_8C
  loc_9D214C: CI2Str
  loc_9D214E: FLdRfVar var_9C
  loc_9D2151: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D2156: FLdRfVar var_9C
  loc_9D2159: CStrVarTmp
  loc_9D215A: CVarStr var_AC
  loc_9D215D: PopAdLdVar
  loc_9D215E: FLdPr Me
  loc_9D2161: VCallAd Control_ID_mskHasta
  loc_9D2164: FStAdFunc var_C0
  loc_9D2167: FLdPr var_C0
  loc_9D216A: LateIdSt
  loc_9D216F: FFree1Str var_8C
  loc_9D2172: FFreeAd var_88 = ""
  loc_9D2179: FFreeVar var_9C = ""
  loc_9D2180: Branch loc_9D21A3
  loc_9D2183: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D2186: CStrDate
  loc_9D2188: CVarStr var_9C
  loc_9D218B: PopAdLdVar
  loc_9D218C: FLdPr Me
  loc_9D218F: VCallAd Control_ID_mskHasta
  loc_9D2192: FStAdFunc var_88
  loc_9D2195: FLdPr var_88
  loc_9D2198: LateIdSt
  loc_9D219D: FFree1Ad var_88
  loc_9D21A0: FFree1Var var_9C = ""
  loc_9D21A3: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '951E88
  'Data Table: 49F7F8
  loc_951E74: FLdPr Me
  loc_951E77: VCallAd Control_ID_mskDesde
  loc_951E7A: CVarAd
  loc_951E7E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951E83: FFree1Var var_94 = ""
  loc_951E86: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9B06E4
  'Data Table: 49F7F8
  loc_9B0648: FLdPr Me
  loc_9B064B: VCallAd Control_ID_mskDesde
  loc_9B064E: FStAdFunc var_88
  loc_9B0651: FLdPr var_88
  loc_9B0654: LateIdLdVar var_98 DispID_15 0
  loc_9B065B: PopAd
  loc_9B065D: FLdPr Me
  loc_9B0660: VCallAd Control_ID_mskDesde
  loc_9B0663: FStAdFunc var_AC
  loc_9B0666: LitI2_Byte &HFF
  loc_9B0668: PopTmpLdAd2 var_A2
  loc_9B066B: FLdZeroAd var_AC
  loc_9B066E: FStAdFunc var_A0
  loc_9B0671: FLdRfVar var_A0
  loc_9B0674: LitStr vbNullString
  loc_9B0677: LitI2_Byte 0
  loc_9B0679: LitI2_Byte 0
  loc_9B067B: FLdRfVar var_98
  loc_9B067E: CStrVarTmp
  loc_9B067F: FStStrNoPop var_9C
  loc_9B0682: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B0687: FStStrNoPop var_A8
  loc_9B068A: FLdPr Me
  loc_9B068D: MemStStrCopy
  loc_9B0691: FFreeStr var_9C = ""
  loc_9B0698: FFreeAd var_88 = "": var_A0 = ""
  loc_9B06A1: FFree1Var var_98 = ""
  loc_9B06A4: FLdPr Me
  loc_9B06A7: VCallAd Control_ID_mskDesde
  loc_9B06AA: FStAdFunc var_B0
  loc_9B06AD: LitNothing
  loc_9B06AF: CastAd
  loc_9B06B2: FStAdFunc var_AC
  loc_9B06B5: FLdRfVar var_AC
  loc_9B06B8: FLdZeroAd var_B0
  loc_9B06BB: FStAdFuncNoPop
  loc_9B06BE: CastAd
  loc_9B06C1: FStAdFunc var_A0
  loc_9B06C4: FLdRfVar var_A0
  loc_9B06C7: FLdPr Me
  loc_9B06CA: MemLdRfVar from_stack_1.global_80
  loc_9B06CD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B06D2: IStI2 arg_C
  loc_9B06D5: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B06E0: ExitProcHresult
  loc_9B06E1: PopAdLdVar
  loc_9B06E2: AryLdPr
End Function

Private Sub mskHasta_UnknownEvent_0 '951FF0
  'Data Table: 49F7F8
  loc_951FDC: FLdPr Me
  loc_951FDF: VCallAd Control_ID_mskHasta
  loc_951FE2: CVarAd
  loc_951FE6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951FEB: FFree1Var var_94 = ""
  loc_951FEE: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B1394
  'Data Table: 49F7F8
  loc_9B12F8: FLdPr Me
  loc_9B12FB: VCallAd Control_ID_mskHasta
  loc_9B12FE: FStAdFunc var_88
  loc_9B1301: FLdPr var_88
  loc_9B1304: LateIdLdVar var_98 DispID_15 0
  loc_9B130B: PopAd
  loc_9B130D: FLdPr Me
  loc_9B1310: VCallAd Control_ID_mskHasta
  loc_9B1313: FStAdFunc var_AC
  loc_9B1316: LitI2_Byte &HFF
  loc_9B1318: PopTmpLdAd2 var_A2
  loc_9B131B: FLdZeroAd var_AC
  loc_9B131E: FStAdFunc var_A0
  loc_9B1321: FLdRfVar var_A0
  loc_9B1324: LitStr vbNullString
  loc_9B1327: LitI2_Byte 0
  loc_9B1329: LitI2_Byte 0
  loc_9B132B: FLdRfVar var_98
  loc_9B132E: CStrVarTmp
  loc_9B132F: FStStrNoPop var_9C
  loc_9B1332: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B1337: FStStrNoPop var_A8
  loc_9B133A: FLdPr Me
  loc_9B133D: MemStStrCopy
  loc_9B1341: FFreeStr var_9C = ""
  loc_9B1348: FFreeAd var_88 = "": var_A0 = ""
  loc_9B1351: FFree1Var var_98 = ""
  loc_9B1354: FLdPr Me
  loc_9B1357: VCallAd Control_ID_mskHasta
  loc_9B135A: FStAdFunc var_B0
  loc_9B135D: LitNothing
  loc_9B135F: CastAd
  loc_9B1362: FStAdFunc var_AC
  loc_9B1365: FLdRfVar var_AC
  loc_9B1368: FLdZeroAd var_B0
  loc_9B136B: FStAdFuncNoPop
  loc_9B136E: CastAd
  loc_9B1371: FStAdFunc var_A0
  loc_9B1374: FLdRfVar var_A0
  loc_9B1377: FLdPr Me
  loc_9B137A: MemLdRfVar from_stack_1.global_80
  loc_9B137D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B1382: IStI2 arg_C
  loc_9B1385: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B1390: ExitProcHresult
  loc_9B1391: AndI4
  loc_9B1392: BranchT loc_9B92F8
End Function

Private Sub cmdNueva_Click() '9C4444
  'Data Table: 49F7F8
  loc_9C4374: LitI2_Byte 0
  loc_9C4376: FLdPr Me
  loc_9C4379: MemStI2 bGenerado
  loc_9C437C: LitI2_Byte &HFF
  loc_9C437E: FLdPr Me
  loc_9C4381: MemStI2 bLogos
  loc_9C4384: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9C4389: ImpAdLdI2 MemVar_C3D064
  loc_9C438C: CStrUI1
  loc_9C438E: FStStrNoPop var_88
  loc_9C4391: FLdPr Me
  loc_9C4394: VCallAd Control_ID_cboPeriodo
  loc_9C4397: FStAdFunc var_8C
  loc_9C439A: FLdPr var_8C
  loc_9C439D: Me.Text = from_stack_1
  loc_9C43A2: FFree1Str var_88
  loc_9C43A5: FFree1Ad var_8C
  loc_9C43A8: LitI2_Byte 1
  loc_9C43AA: LitI2_Byte 1
  loc_9C43AC: ImpAdLdI2 MemVar_C3D064
  loc_9C43AF: FLdRfVar var_9C
  loc_9C43B2: ImpAdCallFPR4  = DateSerial(, , )
  loc_9C43B7: FLdRfVar var_9C
  loc_9C43BA: CStrVarTmp
  loc_9C43BB: CVarStr var_AC
  loc_9C43BE: PopAdLdVar
  loc_9C43BF: FLdPr Me
  loc_9C43C2: VCallAd Control_ID_mskDesde
  loc_9C43C5: FStAdFunc var_8C
  loc_9C43C8: FLdPr var_8C
  loc_9C43CB: LateIdSt
  loc_9C43D0: FFree1Ad var_8C
  loc_9C43D3: FFreeVar var_9C = ""
  loc_9C43DA: ImpAdLdFPR8 MemVar_C3D04C
  loc_9C43DD: CStrDate
  loc_9C43DF: CVarStr var_9C
  loc_9C43E2: PopAdLdVar
  loc_9C43E3: FLdPr Me
  loc_9C43E6: VCallAd Control_ID_mskHasta
  loc_9C43E9: FStAdFunc var_8C
  loc_9C43EC: FLdPr var_8C
  loc_9C43EF: LateIdSt
  loc_9C43F4: FFree1Ad var_8C
  loc_9C43F7: FFree1Var var_9C = ""
  loc_9C43FA: LitI2_Byte 0
  loc_9C43FC: FLdPr Me
  loc_9C43FF: VCallAd Control_ID_cboTipoug
  loc_9C4402: FStAdFunc var_8C
  loc_9C4405: FLdPr var_8C
  loc_9C4408: Me.ListIndex = from_stack_1
  loc_9C440D: FFree1Ad var_8C
  loc_9C4410: LitVarStr var_BC, vbNullString
  loc_9C4415: PopAdLdVar
  loc_9C4416: FLdPr Me
  loc_9C4419: VCallAd Control_ID_CodiUngaMsk
  loc_9C441C: FStAdFunc var_8C
  loc_9C441F: FLdPr var_8C
  loc_9C4422: LateIdSt
  loc_9C4427: FFree1Ad var_8C
  loc_9C442A: Call HabilitarCriterio()
  loc_9C442F: ILdRf Me
  loc_9C4432: CastAd
  loc_9C4435: FStAdFunc var_8C
  loc_9C4438: FLdRfVar var_8C
  loc_9C443B: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9C4440: FFree1Ad var_8C
  loc_9C4443: ExitProcHresult
End Sub

Private Sub CodiUngaMsk_UnknownEvent_0 '94ED50
  'Data Table: 49F7F8
  loc_94ED3C: FLdPr Me
  loc_94ED3F: VCallAd Control_ID_CodiUngaMsk
  loc_94ED42: CVarAd
  loc_94ED46: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94ED4B: FFree1Var var_94 = ""
  loc_94ED4E: ExitProcHresult
End Sub

Private Function CodiUngaMsk_UnknownEvent_8(arg_C) '9D0F0C
  'Data Table: 49F7F8
  loc_9D0E3C: FLdPr Me
  loc_9D0E3F: VCallAd Control_ID_CodiUngaMsk
  loc_9D0E42: FStAdFunc var_88
  loc_9D0E45: FLdPr var_88
  loc_9D0E48: LateIdLdVar var_98 DispID_13 -32767
  loc_9D0E4F: CBoolVar
  loc_9D0E51: FLdPr Me
  loc_9D0E54: VCallAd Control_ID_CodiUngaMsk
  loc_9D0E57: FStAdFunc var_9C
  loc_9D0E5A: FLdPr var_9C
  loc_9D0E5D: LateIdLdVar var_AC DispID_22 0
  loc_9D0E64: CStrVarTmp
  loc_9D0E65: FStStrNoPop var_B0
  loc_9D0E68: LitStr vbNullString
  loc_9D0E6B: NeStr
  loc_9D0E6D: AndI4
  loc_9D0E6E: FFree1Str var_B0
  loc_9D0E71: FFreeAd var_88 = ""
  loc_9D0E78: FFreeVar var_98 = ""
  loc_9D0E7F: BranchF loc_9D0F08
  loc_9D0E82: FLdPr Me
  loc_9D0E85: VCallAd Control_ID_CodiUngaMsk
  loc_9D0E88: FStAdFunc var_88
  loc_9D0E8B: FLdPr var_88
  loc_9D0E8E: LateIdLdVar var_98 DispID_22 0
  loc_9D0E95: PopAd
  loc_9D0E97: FLdRfVar var_B4
  loc_9D0E9A: NewIfNullRf
  loc_9D0E9E: FLdRfVar var_98
  loc_9D0EA1: CStrVarTmp
  loc_9D0EA2: FStStrNoPop var_B8
  loc_9D0EA5: ImpAdLdI2 MemVar_C3D064
  loc_9D0EA8: CStrUI1
  loc_9D0EAA: FStStrNoPop var_B0
  loc_9D0EAD: ImpAdCallI2 Proc_266_15_9A14F8(, , )
  loc_9D0EB2: FStStrNoPop var_BC
  loc_9D0EB5: FLdPr Me
  loc_9D0EB8: MemStStrCopy
  loc_9D0EBC: FFreeStr var_B0 = "": var_B8 = ""
  loc_9D0EC5: FFree1Ad var_88
  loc_9D0EC8: FFree1Var var_98 = ""
  loc_9D0ECB: FLdPr Me
  loc_9D0ECE: VCallAd Control_ID_CodiUngaMsk
  loc_9D0ED1: FStAdFunc var_C4
  loc_9D0ED4: FLdPr Me
  loc_9D0ED7: VCallAd Control_ID_DetaUngaLbl
  loc_9D0EDA: FStAdFunc var_C0
  loc_9D0EDD: FLdRfVar var_C0
  loc_9D0EE0: FLdZeroAd var_C4
  loc_9D0EE3: FStAdFuncNoPop
  loc_9D0EE6: CastAd
  loc_9D0EE9: FStAdFunc var_9C
  loc_9D0EEC: FLdRfVar var_9C
  loc_9D0EEF: FLdPr Me
  loc_9D0EF2: MemLdRfVar from_stack_1.global_80
  loc_9D0EF5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D0EFA: IStI2 arg_C
  loc_9D0EFD: FFreeAd var_88 = "": var_9C = "": var_C0 = ""
  loc_9D0F08: ExitProcHresult
End Function

Private Sub cmdPdf_Click() '95F44C
  'Data Table: 49F7F8
  loc_95F434: LitI2_Byte 0
  loc_95F436: ILdRf Me
  loc_95F439: CastAd
  loc_95F43C: FStAdFunc var_88
  loc_95F43F: FLdRfVar var_88
  loc_95F442: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95F447: FFree1Ad var_88
  loc_95F44A: ExitProcHresult
End Sub

Private Sub cmdDesde_Click() '9802B8
  'Data Table: 49F7F8
  loc_980284: LitVar_Missing var_A4
  loc_980287: PopAdLdVar
  loc_980288: LitVarI4
  loc_980290: PopAdLdVar
  loc_980291: ImpAdLdRf MemVar_C3D9A8
  loc_980294: NewIfNullPr frmCalendario
  loc_980297: frmCalendario.Show from_stack_1, from_stack_2
  loc_98029C: ImpAdLdRf MemVar_C3D038
  loc_98029F: CDargRef
  loc_9802A3: FLdPr Me
  loc_9802A6: VCallAd Control_ID_mskDesde
  loc_9802A9: FStAdFunc var_A8
  loc_9802AC: FLdPr var_A8
  loc_9802AF: LateIdSt
  loc_9802B4: FFree1Ad var_A8
  loc_9802B7: ExitProcHresult
End Sub

Private Sub cmdHasta_Click() '980730
  'Data Table: 49F7F8
  loc_9806FC: LitVar_Missing var_A4
  loc_9806FF: PopAdLdVar
  loc_980700: LitVarI4
  loc_980708: PopAdLdVar
  loc_980709: ImpAdLdRf MemVar_C3D9A8
  loc_98070C: NewIfNullPr frmCalendario
  loc_98070F: frmCalendario.Show from_stack_1, from_stack_2
  loc_980714: ImpAdLdRf MemVar_C3D038
  loc_980717: CDargRef
  loc_98071B: FLdPr Me
  loc_98071E: VCallAd Control_ID_mskHasta
  loc_980721: FStAdFunc var_A8
  loc_980724: FLdPr var_A8
  loc_980727: LateIdSt
  loc_98072C: FFree1Ad var_A8
  loc_98072F: ExitProcHresult
End Sub

Private Sub Form_Load() 'A58280
  'Data Table: 49F7F8
  loc_A57FB0: LitI2_Byte &HFF
  loc_A57FB2: ImpAdStI2 MemVar_C3D840
  loc_A57FB5: ILdRf Me
  loc_A57FB8: CastAd
  loc_A57FBB: FStAdFunc var_88
  loc_A57FBE: FLdRfVar var_88
  loc_A57FC1: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A57FC6: FFree1Ad var_88
  loc_A57FC9: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_A57FCC: FLdPr Me
  loc_A57FCF: MemLdRfVar from_stack_1.global_72
  loc_A57FD2: NewIfNullPr clsbase
  loc_A57FD5: Call clsbase.RedefineRS(from_stack_1v)
  loc_A57FDA: FLdRfVar var_8C
  loc_A57FDD: FLdPr Me
  loc_A57FE0: MemLdRfVar from_stack_1.global_72
  loc_A57FE3: NewIfNullPr clsbase
  loc_A57FE6: from_stack_1 = clsbase.RecordCount
  loc_A57FEB: ILdRf var_8C
  loc_A57FEE: LitI4 0
  loc_A57FF3: GtI4
  loc_A57FF4: BranchF loc_A58093
  loc_A57FF7: FLdPr Me
  loc_A57FFA: MemLdRfVar from_stack_1.global_72
  loc_A57FFD: NewIfNullPr clsbase
  loc_A58000: Call clsbase.MoveFirst()
  loc_A58005: FLdRfVar var_8E
  loc_A58008: FLdPr Me
  loc_A5800B: MemLdRfVar from_stack_1.global_72
  loc_A5800E: NewIfNullPr clsbase
  loc_A58011: from_stack_1 = clsbase.EOF
  loc_A58016: FLdI2 var_8E
  loc_A58019: NotI4
  loc_A5801A: BranchF loc_A58093
  loc_A5801D: LitVar_Missing var_CC
  loc_A58020: PopAdLdVar
  loc_A58021: FLdRfVar var_B8
  loc_A58024: FLdRfVar var_A8
  loc_A58027: LitVarStr var_A4, "PeriInfo"
  loc_A5802C: PopAdLdVar
  loc_A5802D: FLdRfVar var_94
  loc_A58030: FLdRfVar var_88
  loc_A58033: FLdPr Me
  loc_A58036: MemLdRfVar from_stack_1.global_72
  loc_A58039: NewIfNullPr clsbase
  loc_A5803C: from_stack_1v = clsbase.RsFrmGet()
  loc_A58041: FLdPr var_88
  loc_A58044:  = Me.Fields
  loc_A58049: FLdPr var_94
  loc_A5804C: from_stack_2 = Me.Item(from_stack_1)
  loc_A58051: FLdPr var_A8
  loc_A58054:  = Me.Value
  loc_A58059: FLdRfVar var_B8
  loc_A5805C: CStrVarTmp
  loc_A5805D: FStStrNoPop var_BC
  loc_A58060: FLdPr Me
  loc_A58063: VCallAd Control_ID_cboPeriodo
  loc_A58066: FStAdFunc var_D0
  loc_A58069: FLdPr var_D0
  loc_A5806C: Me.AddItem from_stack_1, from_stack_2
  loc_A58071: FFree1Str var_BC
  loc_A58074: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_A5807F: FFree1Var var_B8 = ""
  loc_A58082: FLdPr Me
  loc_A58085: MemLdRfVar from_stack_1.global_72
  loc_A58088: NewIfNullPr clsbase
  loc_A5808B: Call clsbase.MoveSiguiente()
  loc_A58090: Branch loc_A58005
  loc_A58093: LitVar_Missing var_A4
  loc_A58096: PopAdLdVar
  loc_A58097: LitStr "Todos"
  loc_A5809A: FLdPr Me
  loc_A5809D: VCallAd Control_ID_cboTipoug
  loc_A580A0: FStAdFunc var_88
  loc_A580A3: FLdPr var_88
  loc_A580A6: Me.AddItem from_stack_1, from_stack_2
  loc_A580AB: FFree1Ad var_88
  loc_A580AE: LitI4 0
  loc_A580B3: FLdRfVar var_8E
  loc_A580B6: FLdPr Me
  loc_A580B9: VCallAd Control_ID_cboTipoug
  loc_A580BC: FStAdFunc var_88
  loc_A580BF: FLdPr var_88
  loc_A580C2:  = Me.NewIndex
  loc_A580C7: FLdI2 var_8E
  loc_A580CA: FLdPr Me
  loc_A580CD: VCallAd Control_ID_cboTipoug
  loc_A580D0: FStAdFunc var_94
  loc_A580D3: FLdPr var_94
  loc_A580D6: Me.ItemData = from_stack_1
  loc_A580DB: FFreeAd var_88 = ""
  loc_A580E2: LitStr "SELECT * FROM tipoug ORDER BY CodiTiug"
  loc_A580E5: FLdPr Me
  loc_A580E8: MemLdRfVar from_stack_1.global_72
  loc_A580EB: NewIfNullPr clsbase
  loc_A580EE: Call clsbase.RedefineRS(from_stack_1v)
  loc_A580F3: FLdRfVar var_8C
  loc_A580F6: FLdPr Me
  loc_A580F9: MemLdRfVar from_stack_1.global_72
  loc_A580FC: NewIfNullPr clsbase
  loc_A580FF: from_stack_1 = clsbase.RecordCount
  loc_A58104: ILdRf var_8C
  loc_A58107: LitI4 0
  loc_A5810C: GtI4
  loc_A5810D: BranchF loc_A58277
  loc_A58110: FLdPr Me
  loc_A58113: MemLdRfVar from_stack_1.global_72
  loc_A58116: NewIfNullPr clsbase
  loc_A58119: Call clsbase.MoveFirst()
  loc_A5811E: FLdRfVar var_8E
  loc_A58121: FLdPr Me
  loc_A58124: MemLdRfVar from_stack_1.global_72
  loc_A58127: NewIfNullPr clsbase
  loc_A5812A: from_stack_1 = clsbase.EOF
  loc_A5812F: FLdI2 var_8E
  loc_A58132: NotI4
  loc_A58133: BranchF loc_A58277
  loc_A58136: LitVar_Missing var_128
  loc_A58139: PopAdLdVar
  loc_A5813A: FLdRfVar var_B8
  loc_A5813D: FLdRfVar var_A8
  loc_A58140: LitVarStr var_A4, "CodiTiug"
  loc_A58145: PopAdLdVar
  loc_A58146: FLdRfVar var_94
  loc_A58149: FLdRfVar var_88
  loc_A5814C: FLdPr Me
  loc_A5814F: MemLdRfVar from_stack_1.global_72
  loc_A58152: NewIfNullPr clsbase
  loc_A58155: from_stack_1v = clsbase.RsFrmGet()
  loc_A5815A: FLdPr var_88
  loc_A5815D:  = Me.Fields
  loc_A58162: FLdPr var_94
  loc_A58165: from_stack_2 = Me.Item(from_stack_1)
  loc_A5816A: FLdPr var_A8
  loc_A5816D:  = Me.Value
  loc_A58172: FLdRfVar var_B8
  loc_A58175: LitVarStr var_CC, " - "
  loc_A5817A: ConcatVar var_E0
  loc_A5817E: FLdRfVar var_108
  loc_A58181: FLdRfVar var_F8
  loc_A58184: LitVarStr var_F4, "DetaTiug"
  loc_A58189: PopAdLdVar
  loc_A5818A: FLdRfVar var_E4
  loc_A5818D: FLdRfVar var_D0
  loc_A58190: FLdPr Me
  loc_A58193: MemLdRfVar from_stack_1.global_72
  loc_A58196: NewIfNullPr clsbase
  loc_A58199: from_stack_1v = clsbase.RsFrmGet()
  loc_A5819E: FLdPr var_D0
  loc_A581A1:  = Me.Fields
  loc_A581A6: FLdPr var_E4
  loc_A581A9: from_stack_2 = Me.Item(from_stack_1)
  loc_A581AE: FLdPr var_F8
  loc_A581B1:  = Me.Value
  loc_A581B6: FLdRfVar var_108
  loc_A581B9: ConcatVar var_118
  loc_A581BD: CStrVarVal var_BC
  loc_A581C1: FLdPr Me
  loc_A581C4: VCallAd Control_ID_cboTipoug
  loc_A581C7: FStAdFunc var_12C
  loc_A581CA: FLdPr var_12C
  loc_A581CD: Me.AddItem from_stack_1, from_stack_2
  loc_A581D2: FFree1Str var_BC
  loc_A581D5: FFreeAd var_88 = "": var_94 = "": var_A8 = "": var_D0 = "": var_E4 = "": var_F8 = ""
  loc_A581E6: FFreeVar var_B8 = "": var_E0 = "": var_108 = ""
  loc_A581F1: FLdRfVar var_B8
  loc_A581F4: FLdRfVar var_A8
  loc_A581F7: LitVarStr var_A4, "CodiTiug"
  loc_A581FC: PopAdLdVar
  loc_A581FD: FLdRfVar var_94
  loc_A58200: FLdRfVar var_88
  loc_A58203: FLdPr Me
  loc_A58206: MemLdRfVar from_stack_1.global_72
  loc_A58209: NewIfNullPr clsbase
  loc_A5820C: from_stack_1v = clsbase.RsFrmGet()
  loc_A58211: FLdPr var_88
  loc_A58214:  = Me.Fields
  loc_A58219: FLdPr var_94
  loc_A5821C: from_stack_2 = Me.Item(from_stack_1)
  loc_A58221: FLdPr var_A8
  loc_A58224:  = Me.Value
  loc_A58229: FLdRfVar var_B8
  loc_A5822C: CI4Var
  loc_A5822E: FLdRfVar var_8E
  loc_A58231: FLdPr Me
  loc_A58234: VCallAd Control_ID_cboTipoug
  loc_A58237: FStAdFunc var_D0
  loc_A5823A: FLdPr var_D0
  loc_A5823D:  = Me.NewIndex
  loc_A58242: FLdI2 var_8E
  loc_A58245: FLdPr Me
  loc_A58248: VCallAd Control_ID_cboTipoug
  loc_A5824B: FStAdFunc var_E4
  loc_A5824E: FLdPr var_E4
  loc_A58251: Me.ItemData = from_stack_1
  loc_A58256: FFreeAd var_88 = "": var_94 = "": var_D0 = "": var_A8 = ""
  loc_A58263: FFree1Var var_B8 = ""
  loc_A58266: FLdPr Me
  loc_A58269: MemLdRfVar from_stack_1.global_72
  loc_A5826C: NewIfNullPr clsbase
  loc_A5826F: Call clsbase.MoveSiguiente()
  loc_A58274: Branch loc_A5811E
  loc_A58277: Call cmdNueva_Click()
  loc_A5827C: ExitProcHresult
  loc_A5827D: ILdRf arg_356
End Sub

Private Sub Form_Unload(Cancel As Integer) '95F154
  'Data Table: 49F7F8
  loc_95F13C: FLdPr Me
  loc_95F13F: VCallAd Control_ID_wbbReporte
  loc_95F142: FStAdFunc var_88
  loc_95F145: FLdRfVar var_88
  loc_95F148: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95F14D: FFree1Ad var_88
  loc_95F150: ExitProcHresult
End Sub

Public Function htmFileGet() '4A0A10
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4A0A1F
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4A0A2E
  htmFile = Value
End Sub

Public Function bLogosGet() '4A0A3D
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4A0A4C
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4A0A5B
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4A0A6A
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9BD964
  'Data Table: 49F7F8
  loc_9BD8C0: LitI4 0
  loc_9BD8C5: LitI4 7
  loc_9BD8CA: FLdRfVar var_88
  loc_9BD8CD: Redim
  loc_9BD8D7: FLdPr Me
  loc_9BD8DA: VCallAd Control_ID_cboPeriodo
  loc_9BD8DD: CVarAd
  loc_9BD8E1: ParmAry1St
  loc_9BD8E7: FLdPr Me
  loc_9BD8EA: VCallAd Control_ID_mskDesde
  loc_9BD8ED: CVarAd
  loc_9BD8F1: ParmAry1St
  loc_9BD8F7: FLdPr Me
  loc_9BD8FA: VCallAd Control_ID_cmdDesde
  loc_9BD8FD: CVarAd
  loc_9BD901: ParmAry1St
  loc_9BD907: FLdPr Me
  loc_9BD90A: VCallAd Control_ID_mskHasta
  loc_9BD90D: CVarAd
  loc_9BD911: ParmAry1St
  loc_9BD917: FLdPr Me
  loc_9BD91A: VCallAd Control_ID_cmdHasta
  loc_9BD91D: CVarAd
  loc_9BD921: ParmAry1St
  loc_9BD927: FLdPr Me
  loc_9BD92A: VCallAd Control_ID_cboTipoug
  loc_9BD92D: CVarAd
  loc_9BD931: ParmAry1St
  loc_9BD937: FLdPr Me
  loc_9BD93A: VCallAd Control_ID_CodiUngaCmd
  loc_9BD93D: CVarAd
  loc_9BD941: ParmAry1St
  loc_9BD947: FLdPr Me
  loc_9BD94A: VCallAd Control_ID_CodiUngaMsk
  loc_9BD94D: CVarAd
  loc_9BD951: ParmAry1St
  loc_9BD957: FLdRfVar var_88
  loc_9BD95A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9BD95F: FLdRfVar var_88
  loc_9BD962: Erase
  loc_9BD963: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'A8BA08
  'Data Table: 49F7F8
  loc_A8B610: FLdPr Me
  loc_A8B613: MemLdI2 bGenerado
  loc_A8B616: BranchF loc_A8B61A
  loc_A8B619: ExitProcHresult
  loc_A8B61A: LitVarStr var_9C, "Generando reporte..."
  loc_A8B61F: PopAdLdVar
  loc_A8B620: FLdPr Me
  loc_A8B623: VCallAd Control_ID_statusBar
  loc_A8B626: FStAdFunc var_B0
  loc_A8B629: FLdPr var_B0
  loc_A8B62C: LateIdSt
  loc_A8B631: FFree1Ad var_B0
  loc_A8B634: LitI4 &HB
  loc_A8B639: CI2I4
  loc_A8B63A: FLdPr Me
  loc_A8B63D: Me.MousePointer = from_stack_1
  loc_A8B642: LitI2_Byte 0
  loc_A8B644: PopTmpLdAd2 var_B2
  loc_A8B647: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_A8B64C: FLdPr Me
  loc_A8B64F: MemLdStr global_80
  loc_A8B652: LitStr vbNullString
  loc_A8B655: NeStr
  loc_A8B657: BranchF loc_A8B65D
  loc_A8B65A: Branch loc_A8B9E0
  loc_A8B65D: LitI2_Byte 0
  loc_A8B65F: PopTmpLdAd2 var_B2
  loc_A8B662: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_A8B667: FLdPr Me
  loc_A8B66A: MemLdStr global_80
  loc_A8B66D: LitStr vbNullString
  loc_A8B670: NeStr
  loc_A8B672: BranchF loc_A8B678
  loc_A8B675: Branch loc_A8B9E0
  loc_A8B678: LitI2_Byte 0
  loc_A8B67A: PopTmpLdAd2 var_B2
  loc_A8B67D: from_stack_2v = CodiUngaMsk_UnknownEvent_8(from_stack_1v)
  loc_A8B682: FLdRfVar var_B2
  loc_A8B685: FLdPr Me
  loc_A8B688: VCallAd Control_ID_cboTipoug
  loc_A8B68B: FStAdFunc var_B0
  loc_A8B68E: FLdPr var_B0
  loc_A8B691:  = Me.ListIndex
  loc_A8B696: FLdRfVar var_BC
  loc_A8B699: FLdI2 var_B2
  loc_A8B69C: FLdPr Me
  loc_A8B69F: VCallAd Control_ID_cboTipoug
  loc_A8B6A2: FStAdFunc var_B8
  loc_A8B6A5: FLdPr var_B8
  loc_A8B6A8:  = Me.ItemData
  loc_A8B6AD: FLdRfVar var_C2
  loc_A8B6B0: FLdPr Me
  loc_A8B6B3: VCallAd Control_ID_cboTipoug
  loc_A8B6B6: FStAdFunc var_C0
  loc_A8B6B9: FLdPr var_C0
  loc_A8B6BC:  = Me.ListIndex
  loc_A8B6C1: FLdRfVar var_CC
  loc_A8B6C4: FLdI2 var_C2
  loc_A8B6C7: FLdPr Me
  loc_A8B6CA: VCallAd Control_ID_cboTipoug
  loc_A8B6CD: FStAdFunc var_C8
  loc_A8B6D0: FLdPr var_C8
  loc_A8B6D3:  = Me.ItemData
  loc_A8B6D8: LitVarStr var_AC, vbNullString
  loc_A8B6DD: FStVarCopyObj var_F0
  loc_A8B6E0: FLdRfVar var_F0
  loc_A8B6E3: LitStr " AND ug.CodiTiug = "
  loc_A8B6E6: ILdRf var_CC
  loc_A8B6E9: CStrI4
  loc_A8B6EB: FStStrNoPop var_D0
  loc_A8B6EE: ConcatStr
  loc_A8B6EF: CVarStr var_E0
  loc_A8B6F2: ILdRf var_BC
  loc_A8B6F5: LitI4 0
  loc_A8B6FA: NeI4
  loc_A8B6FB: CVarBoolI2 var_9C
  loc_A8B6FF: FLdRfVar var_100
  loc_A8B702: ImpAdCallFPR4  = IIf(, , )
  loc_A8B707: FLdRfVar var_100
  loc_A8B70A: CStrVarTmp
  loc_A8B70B: FStStr var_88
  loc_A8B70E: FFree1Str var_D0
  loc_A8B711: FFreeAd var_B0 = "": var_B8 = "": var_C0 = ""
  loc_A8B71C: FFreeVar var_9C = "": var_E0 = "": var_F0 = ""
  loc_A8B727: FLdPr Me
  loc_A8B72A: VCallAd Control_ID_CodiUngaMsk
  loc_A8B72D: FStAdFunc var_B0
  loc_A8B730: FLdPr var_B0
  loc_A8B733: LateIdLdVar var_E0 DispID_22 0
  loc_A8B73A: PopAd
  loc_A8B73C: FLdPr Me
  loc_A8B73F: VCallAd Control_ID_CodiUngaMsk
  loc_A8B742: FStAdFunc var_B8
  loc_A8B745: FLdPr var_B8
  loc_A8B748: LateIdLdVar var_F0 DispID_22 0
  loc_A8B74F: PopAd
  loc_A8B751: LitVarStr var_AC, vbNullString
  loc_A8B756: FStVarCopyObj var_114
  loc_A8B759: FLdRfVar var_114
  loc_A8B75C: LitStr " AND ug.CodiUnga = "
  loc_A8B75F: FLdRfVar var_F0
  loc_A8B762: CStrVarTmp
  loc_A8B763: FStStrNoPop var_104
  loc_A8B766: ConcatStr
  loc_A8B767: CVarStr var_100
  loc_A8B76A: FLdRfVar var_E0
  loc_A8B76D: CStrVarTmp
  loc_A8B76E: FStStrNoPop var_D0
  loc_A8B771: LitStr vbNullString
  loc_A8B774: NeStr
  loc_A8B776: CVarBoolI2 var_9C
  loc_A8B77A: FLdRfVar var_124
  loc_A8B77D: ImpAdCallFPR4  = IIf(, , )
  loc_A8B782: FLdRfVar var_124
  loc_A8B785: CStrVarTmp
  loc_A8B786: FStStr var_8C
  loc_A8B789: FFreeStr var_D0 = ""
  loc_A8B790: FFreeAd var_B0 = ""
  loc_A8B797: FFreeVar var_E0 = "": var_F0 = "": var_9C = "": var_100 = "": var_114 = ""
  loc_A8B7A6: FLdPr Me
  loc_A8B7A9: VCallAd Control_ID_mskDesde
  loc_A8B7AC: FStAdFunc var_B8
  loc_A8B7AF: FLdPr var_B8
  loc_A8B7B2: LateIdLdVar var_E0 DispID_15 0
  loc_A8B7B9: PopAd
  loc_A8B7BB: FLdPr Me
  loc_A8B7BE: VCallAd Control_ID_mskHasta
  loc_A8B7C1: FStAdFunc var_C0
  loc_A8B7C4: FLdPr var_C0
  loc_A8B7C7: LateIdLdVar var_114 DispID_15 0
  loc_A8B7CE: PopAd
  loc_A8B7D0: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_A8B7D3: LitStr " CREATE TEMPORARY TABLE tmovi"
  loc_A8B7D6: ConcatStr
  loc_A8B7D7: FStStrNoPop var_D0
  loc_A8B7DA: LitStr " SELECT ug.CodiTiug, DetaTiug, ug.CodiUnga, DetaUnga, i.CodiPart, DetaPart"
  loc_A8B7DD: ConcatStr
  loc_A8B7DE: FStStrNoPop var_104
  loc_A8B7E1: LitStr ", Sum(PrevImpu) PrevImpu, Sum(DefiImpu) DefiImpu, Sum(DeveImpu) DeveImpu"
  loc_A8B7E4: ConcatStr
  loc_A8B7E5: FStStrNoPop var_128
  loc_A8B7E8: LitStr ", Sum(MapaImpu) MapaImpu, Sum(PagaImpu) PagaImpu"
  loc_A8B7EB: ConcatStr
  loc_A8B7EC: FStStrNoPop var_12C
  loc_A8B7EF: LitStr " FROM unidadgasto ug"
  loc_A8B7F2: ConcatStr
  loc_A8B7F3: FStStrNoPop var_130
  loc_A8B7F6: LitStr " INNER JOIN tipoug ON tipoug.CodiTiug = ug.CodiTiug"
  loc_A8B7F9: ConcatStr
  loc_A8B7FA: FStStrNoPop var_134
  loc_A8B7FD: LitStr " INNER JOIN imputacion i ON i.PeriInfo = "
  loc_A8B800: ConcatStr
  loc_A8B801: FStStrNoPop var_13C
  loc_A8B804: FLdRfVar var_138
  loc_A8B807: FLdPr Me
  loc_A8B80A: VCallAd Control_ID_cboPeriodo
  loc_A8B80D: FStAdFunc var_B0
  loc_A8B810: FLdPr var_B0
  loc_A8B813:  = Me.Text
  loc_A8B818: ILdRf var_138
  loc_A8B81B: ConcatStr
  loc_A8B81C: FStStrNoPop var_140
  loc_A8B81F: LitStr " AND i.CodiUnga = ug.CodiUnga"
  loc_A8B822: ConcatStr
  loc_A8B823: FStStrNoPop var_144
  loc_A8B826: LitStr " AND FechImpu BETWEEN "
  loc_A8B829: ConcatStr
  loc_A8B82A: FStStrNoPop var_148
  loc_A8B82D: LitI4 1
  loc_A8B832: LitI4 1
  loc_A8B837: LitVarStr var_9C, "'yyyy-mm-dd'"
  loc_A8B83C: FStVarCopyObj var_100
  loc_A8B83F: FLdRfVar var_100
  loc_A8B842: FLdRfVar var_E0
  loc_A8B845: CStrVarTmp
  loc_A8B846: CVarStr var_F0
  loc_A8B849: ImpAdCallI2 Format$(, )
  loc_A8B84E: FStStrNoPop var_14C
  loc_A8B851: ConcatStr
  loc_A8B852: FStStrNoPop var_150
  loc_A8B855: LitStr " AND "
  loc_A8B858: ConcatStr
  loc_A8B859: FStStrNoPop var_164
  loc_A8B85C: LitI4 1
  loc_A8B861: LitI4 1
  loc_A8B866: LitVarStr var_AC, "'yyyy-mm-dd'"
  loc_A8B86B: FStVarCopyObj var_160
  loc_A8B86E: FLdRfVar var_160
  loc_A8B871: FLdRfVar var_114
  loc_A8B874: CStrVarTmp
  loc_A8B875: CVarStr var_124
  loc_A8B878: ImpAdCallI2 Format$(, )
  loc_A8B87D: FStStrNoPop var_168
  loc_A8B880: ConcatStr
  loc_A8B881: FStStrNoPop var_16C
  loc_A8B884: LitStr " INNER JOIN partida part ON part.PeriInfo = i.PeriInfo AND part.CodiPart = i.CodiPart"
  loc_A8B887: ConcatStr
  loc_A8B888: FStStrNoPop var_170
  loc_A8B88B: LitStr " WHERE TRUE"
  loc_A8B88E: ConcatStr
  loc_A8B88F: FStStrNoPop var_174
  loc_A8B892: ILdRf var_88
  loc_A8B895: ConcatStr
  loc_A8B896: FStStrNoPop var_178
  loc_A8B899: ILdRf var_8C
  loc_A8B89C: ConcatStr
  loc_A8B89D: FStStrNoPop var_17C
  loc_A8B8A0: LitStr " GROUP BY CodiUnga, CodiPart;"
  loc_A8B8A3: ConcatStr
  loc_A8B8A4: FStStrNoPop var_180
  loc_A8B8A7: FLdPr Me
  loc_A8B8AA: MemLdRfVar from_stack_1.global_72
  loc_A8B8AD: NewIfNullPr clsbase
  loc_A8B8B0: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8B8B5: FFreeStr var_D0 = "": var_104 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_13C = "": var_138 = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = ""
  loc_A8B8E2: FFreeAd var_B0 = "": var_B8 = ""
  loc_A8B8EB: FFreeVar var_E0 = "": var_F0 = "": var_100 = "": var_114 = "": var_124 = ""
  loc_A8B8FA: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi2;"
  loc_A8B8FD: LitStr " CREATE TEMPORARY TABLE tmovi2"
  loc_A8B900: ConcatStr
  loc_A8B901: FStStrNoPop var_D0
  loc_A8B904: LitStr " SELECT * FROM tmovi;"
  loc_A8B907: ConcatStr
  loc_A8B908: FStStrNoPop var_104
  loc_A8B90B: FLdPr Me
  loc_A8B90E: MemLdRfVar from_stack_1.global_72
  loc_A8B911: NewIfNullPr clsbase
  loc_A8B914: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8B919: FFreeStr var_D0 = ""
  loc_A8B920: LitStr "DROP TEMPORARY TABLE IF EXISTS total;"
  loc_A8B923: LitStr " CREATE TEMPORARY TABLE total"
  loc_A8B926: ConcatStr
  loc_A8B927: FStStrNoPop var_D0
  loc_A8B92A: LitStr " SELECT '2' nivel, CodiTiug, DetaTiug, CodiUnga, DetaUnga, '' CodiPart, 'TOTAL' DetaPart, Sum(PrevImpu) PrevImpu, Sum(DefiImpu) DefiImpu, Sum(DeveImpu) DeveImpu, Sum(MapaImpu) MapaImpu, Sum(PagaImpu) PagaImpu"
  loc_A8B92D: ConcatStr
  loc_A8B92E: FStStrNoPop var_104
  loc_A8B931: LitStr " , 0 RowSpan"
  loc_A8B934: ConcatStr
  loc_A8B935: FStStrNoPop var_128
  loc_A8B938: LitStr " FROM tmovi"
  loc_A8B93B: ConcatStr
  loc_A8B93C: FStStrNoPop var_12C
  loc_A8B93F: LitStr " GROUP BY CodiUnga;"
  loc_A8B942: ConcatStr
  loc_A8B943: FStStrNoPop var_130
  loc_A8B946: FLdPr Me
  loc_A8B949: MemLdRfVar from_stack_1.global_72
  loc_A8B94C: NewIfNullPr clsbase
  loc_A8B94F: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8B954: FFreeStr var_D0 = "": var_104 = "": var_128 = "": var_12C = ""
  loc_A8B961: LitStr "SELECT '1' nivel, tmovi.* "
  loc_A8B964: LitStr ", (Select Count(CodiPart)+1 FROM tmovi2 WHERE tmovi2.CodiUnga = tmovi.CodiUnga) RowSpan"
  loc_A8B967: ConcatStr
  loc_A8B968: FStStrNoPop var_D0
  loc_A8B96B: LitStr " FROM tmovi"
  loc_A8B96E: ConcatStr
  loc_A8B96F: FStStrNoPop var_104
  loc_A8B972: LitStr " UNION ALL"
  loc_A8B975: ConcatStr
  loc_A8B976: FStStrNoPop var_128
  loc_A8B979: LitStr " SELECT total.*"
  loc_A8B97C: ConcatStr
  loc_A8B97D: FStStrNoPop var_12C
  loc_A8B980: LitStr " FROM total"
  loc_A8B983: ConcatStr
  loc_A8B984: FStStrNoPop var_130
  loc_A8B987: LitStr " ORDER BY CodiTiug, CodiUnga, nivel, CodiPart;"
  loc_A8B98A: ConcatStr
  loc_A8B98B: FStStrNoPop var_134
  loc_A8B98E: FLdPr Me
  loc_A8B991: MemLdRfVar from_stack_1.global_72
  loc_A8B994: NewIfNullPr clsbase
  loc_A8B997: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8B99C: FFreeStr var_D0 = "": var_104 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_A8B9AB: FLdRfVar var_BC
  loc_A8B9AE: FLdPr Me
  loc_A8B9B1: MemLdRfVar from_stack_1.global_72
  loc_A8B9B4: NewIfNullPr clsbase
  loc_A8B9B7: from_stack_1 = clsbase.RecordCount
  loc_A8B9BC: ILdRf var_BC
  loc_A8B9BF: LitI4 1
  loc_A8B9C4: LtI4
  loc_A8B9C5: BranchF loc_A8B9D8
  loc_A8B9C8: LitI4 0
  loc_A8B9CD: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_A8B9D0: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A8B9D5: Branch loc_A8B9E0
  loc_A8B9D8: LitI2_Byte &HFF
  loc_A8B9DA: FLdPr Me
  loc_A8B9DD: MemStI2 bGenerado
  loc_A8B9E0: LitI2_Byte 0
  loc_A8B9E2: FLdPr Me
  loc_A8B9E5: Me.MousePointer = from_stack_1
  loc_A8B9EA: LitVarStr var_9C, vbNullString
  loc_A8B9EF: PopAdLdVar
  loc_A8B9F0: FLdPr Me
  loc_A8B9F3: VCallAd Control_ID_statusBar
  loc_A8B9F6: FStAdFunc var_B0
  loc_A8B9F9: FLdPr var_B0
  loc_A8B9FC: LateIdSt
  loc_A8BA01: FFree1Ad var_B0
  loc_A8BA04: ExitProcHresult
  loc_A8BA05: BranchT loc_A8BAEF
End Sub

Public Sub GeneraHTML() 'B1944C
  'Data Table: 49F7F8
  loc_B18BD8: FLdRfVar var_8C
  loc_B18BDB: LitI2_Byte 0
  loc_B18BDD: LitI2_Byte &HFF
  loc_B18BDF: ImpAdLdI4 MemVar_C3D83C
  loc_B18BE2: FLdPr Me
  loc_B18BE5: MemLdRfVar from_stack_1.global_76
  loc_B18BE8: NewIfNullPr IFileSystem3
  loc_B18BEB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B18BF0: ILdRf var_8C
  loc_B18BF3: FLdPr Me
  loc_B18BF6: MemStVarAd
  loc_B18BFA: FFree1Ad var_8C
  loc_B18BFD: Call Proc_233_31_A6D9EC()
  loc_B18C02: FLdPr Me
  loc_B18C05: MemLdRfVar from_stack_1.global_72
  loc_B18C08: NewIfNullPr clsbase
  loc_B18C0B: Call clsbase.MoveFirst()
  loc_B18C10: FLdRfVar var_8E
  loc_B18C13: FLdPr Me
  loc_B18C16: MemLdRfVar from_stack_1.global_72
  loc_B18C19: NewIfNullPr clsbase
  loc_B18C1C: from_stack_1 = clsbase.EOF
  loc_B18C21: FLdI2 var_8E
  loc_B18C24: NotI4
  loc_B18C25: BranchF loc_B19432
  loc_B18C28: FLdRfVar var_8C
  loc_B18C2B: FLdPr Me
  loc_B18C2E: MemLdRfVar from_stack_1.global_72
  loc_B18C31: NewIfNullPr clsbase
  loc_B18C34: from_stack_1v = clsbase.RsFrmGet()
  loc_B18C39: FLdZeroAd var_8C
  loc_B18C3C: FStAdFunc var_94
  loc_B18C3F: ILdRf var_88
  loc_B18C42: FLdRfVar var_B8
  loc_B18C45: FLdRfVar var_A8
  loc_B18C48: LitVarStr var_A4, "CodiUnga"
  loc_B18C4D: PopAdLdVar
  loc_B18C4E: FLdRfVar var_8C
  loc_B18C51: FLdPr var_94
  loc_B18C54:  = Me.Fields
  loc_B18C59: FLdPr var_8C
  loc_B18C5C: from_stack_2 = Me.Item(from_stack_1)
  loc_B18C61: FLdPr var_A8
  loc_B18C64:  = Me.Value
  loc_B18C69: FLdRfVar var_B8
  loc_B18C6C: FnCStrVar
  loc_B18C6E: FStStrNoPop var_BC
  loc_B18C71: NeStr
  loc_B18C73: FFree1Str var_BC
  loc_B18C76: FFreeAd var_8C = ""
  loc_B18C7D: FFree1Var var_B8 = ""
  loc_B18C80: BranchF loc_B18DA4
  loc_B18C83: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B18C88: PopAdLdVar
  loc_B18C89: FLdPr Me
  loc_B18C8C: MemLdRfVar from_stack_1.htmFile
  loc_B18C8F: LdPrVar
  loc_B18C91: LateMemCall
  loc_B18C97: LitVarStr var_A4, "<td rowspan="
  loc_B18C9C: LitI4 &H22
  loc_B18CA1: FLdRfVar var_B8
  loc_B18CA4: ImpAdCallFPR4  = Chr()
  loc_B18CA9: FLdRfVar var_B8
  loc_B18CAC: ConcatVar var_DC
  loc_B18CB0: FLdRfVar var_EC
  loc_B18CB3: FLdRfVar var_A8
  loc_B18CB6: LitVarStr var_CC, "RowSpan"
  loc_B18CBB: PopAdLdVar
  loc_B18CBC: FLdRfVar var_8C
  loc_B18CBF: FLdPr var_94
  loc_B18CC2:  = Me.Fields
  loc_B18CC7: FLdPr var_8C
  loc_B18CCA: from_stack_2 = Me.Item(from_stack_1)
  loc_B18CCF: FLdPr var_A8
  loc_B18CD2:  = Me.Value
  loc_B18CD7: FLdRfVar var_EC
  loc_B18CDA: ConcatVar var_FC
  loc_B18CDE: LitI4 &H22
  loc_B18CE3: FLdRfVar var_10C
  loc_B18CE6: ImpAdCallFPR4  = Chr()
  loc_B18CEB: FLdRfVar var_10C
  loc_B18CEE: ConcatVar var_11C
  loc_B18CF2: LitVarStr var_12C, " align=""left"" valign=""top"">"
  loc_B18CF7: ConcatVar var_13C
  loc_B18CFB: FLdRfVar var_164
  loc_B18CFE: FLdRfVar var_154
  loc_B18D01: LitVarStr var_150, "CodiUnga"
  loc_B18D06: PopAdLdVar
  loc_B18D07: FLdRfVar var_140
  loc_B18D0A: FLdPr var_94
  loc_B18D0D:  = Me.Fields
  loc_B18D12: FLdPr var_140
  loc_B18D15: from_stack_2 = Me.Item(from_stack_1)
  loc_B18D1A: FLdPr var_154
  loc_B18D1D:  = Me.Value
  loc_B18D22: FLdRfVar var_164
  loc_B18D25: ConcatVar var_174
  loc_B18D29: LitVarStr var_184, " - "
  loc_B18D2E: ConcatVar var_194
  loc_B18D32: FLdRfVar var_1BC
  loc_B18D35: FLdRfVar var_1AC
  loc_B18D38: LitVarStr var_1A8, "DetaUnga"
  loc_B18D3D: PopAdLdVar
  loc_B18D3E: FLdRfVar var_198
  loc_B18D41: FLdPr var_94
  loc_B18D44:  = Me.Fields
  loc_B18D49: FLdPr var_198
  loc_B18D4C: from_stack_2 = Me.Item(from_stack_1)
  loc_B18D51: FLdPr var_1AC
  loc_B18D54:  = Me.Value
  loc_B18D59: FLdRfVar var_1BC
  loc_B18D5C: ConcatVar var_1CC
  loc_B18D60: LitVarStr var_1DC, "</td>"
  loc_B18D65: ConcatVar var_1EC
  loc_B18D69: PopAdLdVar
  loc_B18D6A: FLdPr Me
  loc_B18D6D: MemLdRfVar from_stack_1.htmFile
  loc_B18D70: LdPrVar
  loc_B18D72: LateMemCall
  loc_B18D78: FFreeAd var_8C = "": var_A8 = "": var_140 = "": var_154 = "": var_198 = ""
  loc_B18D87: FFreeVar var_B8 = "": var_DC = "": var_EC = "": var_FC = "": var_10C = "": var_11C = "": var_13C = "": var_164 = "": var_174 = "": var_194 = "": var_1BC = "": var_1CC = ""
  loc_B18DA4: FLdRfVar var_B8
  loc_B18DA7: FLdRfVar var_A8
  loc_B18DAA: LitVarStr var_A4, "CodiPart"
  loc_B18DAF: PopAdLdVar
  loc_B18DB0: FLdRfVar var_8C
  loc_B18DB3: FLdPr var_94
  loc_B18DB6:  = Me.Fields
  loc_B18DBB: FLdPr var_8C
  loc_B18DBE: from_stack_2 = Me.Item(from_stack_1)
  loc_B18DC3: FLdPr var_A8
  loc_B18DC6:  = Me.Value
  loc_B18DCB: FLdRfVar var_B8
  loc_B18DCE: LitVarStr var_CC, vbNullString
  loc_B18DD3: HardType
  loc_B18DD4: NeVarBool
  loc_B18DD6: FFreeAd var_8C = ""
  loc_B18DDD: FFree1Var var_B8 = ""
  loc_B18DE0: BranchF loc_B190FB
  loc_B18DE3: FLdRfVar var_B8
  loc_B18DE6: FLdRfVar var_A8
  loc_B18DE9: LitVarStr var_A4, "CodiPart"
  loc_B18DEE: PopAdLdVar
  loc_B18DEF: FLdRfVar var_8C
  loc_B18DF2: FLdPr var_94
  loc_B18DF5:  = Me.Fields
  loc_B18DFA: FLdPr var_8C
  loc_B18DFD: from_stack_2 = Me.Item(from_stack_1)
  loc_B18E02: FLdPr var_A8
  loc_B18E05:  = Me.Value
  loc_B18E0A: FLdRfVar var_EC
  loc_B18E0D: FLdRfVar var_154
  loc_B18E10: LitVarStr var_12C, "DetaPart"
  loc_B18E15: PopAdLdVar
  loc_B18E16: FLdRfVar var_140
  loc_B18E19: FLdPr var_94
  loc_B18E1C:  = Me.Fields
  loc_B18E21: FLdPr var_140
  loc_B18E24: from_stack_2 = Me.Item(from_stack_1)
  loc_B18E29: FLdPr var_154
  loc_B18E2C:  = Me.Value
  loc_B18E31: LitI4 0
  loc_B18E36: LitStr "LineaDato"
  loc_B18E39: LitI2_Byte 0
  loc_B18E3B: LitStr "left"
  loc_B18E3E: FLdRfVar var_B8
  loc_B18E41: LitVarStr var_CC, " - "
  loc_B18E46: ConcatVar var_DC
  loc_B18E4A: FLdRfVar var_EC
  loc_B18E4D: ConcatVar var_FC
  loc_B18E51: CStrVarVal var_BC
  loc_B18E55: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B18E5A: CVarStr var_10C
  loc_B18E5D: PopAdLdVar
  loc_B18E5E: FLdPr Me
  loc_B18E61: MemLdRfVar from_stack_1.htmFile
  loc_B18E64: LdPrVar
  loc_B18E66: LateMemCall
  loc_B18E6C: FFree1Str var_BC
  loc_B18E6F: FFreeAd var_8C = "": var_A8 = "": var_140 = ""
  loc_B18E7A: FFreeVar var_B8 = "": var_DC = "": var_EC = "": var_FC = ""
  loc_B18E87: FLdRfVar var_A8
  loc_B18E8A: LitVarStr var_A4, "PrevImpu"
  loc_B18E8F: PopAdLdVar
  loc_B18E90: FLdRfVar var_8C
  loc_B18E93: FLdPr var_94
  loc_B18E96:  = Me.Fields
  loc_B18E9B: FLdPr var_8C
  loc_B18E9E: from_stack_2 = Me.Item(from_stack_1)
  loc_B18EA3: LitI4 1
  loc_B18EA8: LitI4 1
  loc_B18EAD: LitVarStr var_CC, "###,###,##0.00"
  loc_B18EB2: FStVarCopyObj var_DC
  loc_B18EB5: FLdRfVar var_DC
  loc_B18EB8: FLdZeroAd var_A8
  loc_B18EBB: CVarAd
  loc_B18EBF: ImpAdCallI2 Format$(, )
  loc_B18EC4: FStStr var_200
  loc_B18EC7: LitI4 0
  loc_B18ECC: LitStr "LineaDato"
  loc_B18ECF: LitI2_Byte 0
  loc_B18ED1: LitStr "right"
  loc_B18ED4: FLdZeroAd var_200
  loc_B18ED7: FStStrNoPop var_BC
  loc_B18EDA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B18EDF: CVarStr var_EC
  loc_B18EE2: PopAdLdVar
  loc_B18EE3: FLdPr Me
  loc_B18EE6: MemLdRfVar from_stack_1.htmFile
  loc_B18EE9: LdPrVar
  loc_B18EEB: LateMemCall
  loc_B18EF1: FFreeStr var_BC = ""
  loc_B18EF8: FFree1Ad var_8C
  loc_B18EFB: FFreeVar var_B8 = "": var_DC = ""
  loc_B18F04: FLdRfVar var_A8
  loc_B18F07: LitVarStr var_A4, "DefiImpu"
  loc_B18F0C: PopAdLdVar
  loc_B18F0D: FLdRfVar var_8C
  loc_B18F10: FLdPr var_94
  loc_B18F13:  = Me.Fields
  loc_B18F18: FLdPr var_8C
  loc_B18F1B: from_stack_2 = Me.Item(from_stack_1)
  loc_B18F20: LitI4 1
  loc_B18F25: LitI4 1
  loc_B18F2A: LitVarStr var_CC, "###,###,##0.00"
  loc_B18F2F: FStVarCopyObj var_DC
  loc_B18F32: FLdRfVar var_DC
  loc_B18F35: FLdZeroAd var_A8
  loc_B18F38: CVarAd
  loc_B18F3C: ImpAdCallI2 Format$(, )
  loc_B18F41: FStStr var_200
  loc_B18F44: LitI4 0
  loc_B18F49: LitStr "LineaDato"
  loc_B18F4C: LitI2_Byte 0
  loc_B18F4E: LitStr "right"
  loc_B18F51: FLdZeroAd var_200
  loc_B18F54: FStStrNoPop var_BC
  loc_B18F57: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B18F5C: CVarStr var_EC
  loc_B18F5F: PopAdLdVar
  loc_B18F60: FLdPr Me
  loc_B18F63: MemLdRfVar from_stack_1.htmFile
  loc_B18F66: LdPrVar
  loc_B18F68: LateMemCall
  loc_B18F6E: FFreeStr var_BC = ""
  loc_B18F75: FFree1Ad var_8C
  loc_B18F78: FFreeVar var_B8 = "": var_DC = ""
  loc_B18F81: FLdRfVar var_A8
  loc_B18F84: LitVarStr var_A4, "DeveImpu"
  loc_B18F89: PopAdLdVar
  loc_B18F8A: FLdRfVar var_8C
  loc_B18F8D: FLdPr var_94
  loc_B18F90:  = Me.Fields
  loc_B18F95: FLdPr var_8C
  loc_B18F98: from_stack_2 = Me.Item(from_stack_1)
  loc_B18F9D: LitI4 1
  loc_B18FA2: LitI4 1
  loc_B18FA7: LitVarStr var_CC, "###,###,##0.00"
  loc_B18FAC: FStVarCopyObj var_DC
  loc_B18FAF: FLdRfVar var_DC
  loc_B18FB2: FLdZeroAd var_A8
  loc_B18FB5: CVarAd
  loc_B18FB9: ImpAdCallI2 Format$(, )
  loc_B18FBE: FStStr var_200
  loc_B18FC1: LitI4 0
  loc_B18FC6: LitStr "LineaDato"
  loc_B18FC9: LitI2_Byte 0
  loc_B18FCB: LitStr "right"
  loc_B18FCE: FLdZeroAd var_200
  loc_B18FD1: FStStrNoPop var_BC
  loc_B18FD4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B18FD9: CVarStr var_EC
  loc_B18FDC: PopAdLdVar
  loc_B18FDD: FLdPr Me
  loc_B18FE0: MemLdRfVar from_stack_1.htmFile
  loc_B18FE3: LdPrVar
  loc_B18FE5: LateMemCall
  loc_B18FEB: FFreeStr var_BC = ""
  loc_B18FF2: FFree1Ad var_8C
  loc_B18FF5: FFreeVar var_B8 = "": var_DC = ""
  loc_B18FFE: FLdRfVar var_A8
  loc_B19001: LitVarStr var_A4, "MapaImpu"
  loc_B19006: PopAdLdVar
  loc_B19007: FLdRfVar var_8C
  loc_B1900A: FLdPr var_94
  loc_B1900D:  = Me.Fields
  loc_B19012: FLdPr var_8C
  loc_B19015: from_stack_2 = Me.Item(from_stack_1)
  loc_B1901A: LitI4 1
  loc_B1901F: LitI4 1
  loc_B19024: LitVarStr var_CC, "###,###,##0.00"
  loc_B19029: FStVarCopyObj var_DC
  loc_B1902C: FLdRfVar var_DC
  loc_B1902F: FLdZeroAd var_A8
  loc_B19032: CVarAd
  loc_B19036: ImpAdCallI2 Format$(, )
  loc_B1903B: FStStr var_200
  loc_B1903E: LitI4 0
  loc_B19043: LitStr "LineaDato"
  loc_B19046: LitI2_Byte 0
  loc_B19048: LitStr "right"
  loc_B1904B: FLdZeroAd var_200
  loc_B1904E: FStStrNoPop var_BC
  loc_B19051: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B19056: CVarStr var_EC
  loc_B19059: PopAdLdVar
  loc_B1905A: FLdPr Me
  loc_B1905D: MemLdRfVar from_stack_1.htmFile
  loc_B19060: LdPrVar
  loc_B19062: LateMemCall
  loc_B19068: FFreeStr var_BC = ""
  loc_B1906F: FFree1Ad var_8C
  loc_B19072: FFreeVar var_B8 = "": var_DC = ""
  loc_B1907B: FLdRfVar var_A8
  loc_B1907E: LitVarStr var_A4, "PagaImpu"
  loc_B19083: PopAdLdVar
  loc_B19084: FLdRfVar var_8C
  loc_B19087: FLdPr var_94
  loc_B1908A:  = Me.Fields
  loc_B1908F: FLdPr var_8C
  loc_B19092: from_stack_2 = Me.Item(from_stack_1)
  loc_B19097: LitI4 1
  loc_B1909C: LitI4 1
  loc_B190A1: LitVarStr var_CC, "###,###,##0.00"
  loc_B190A6: FStVarCopyObj var_DC
  loc_B190A9: FLdRfVar var_DC
  loc_B190AC: FLdZeroAd var_A8
  loc_B190AF: CVarAd
  loc_B190B3: ImpAdCallI2 Format$(, )
  loc_B190B8: FStStr var_200
  loc_B190BB: LitI4 0
  loc_B190C0: LitStr "LineaDato"
  loc_B190C3: LitI2_Byte 0
  loc_B190C5: LitStr "right"
  loc_B190C8: FLdZeroAd var_200
  loc_B190CB: FStStrNoPop var_BC
  loc_B190CE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B190D3: CVarStr var_EC
  loc_B190D6: PopAdLdVar
  loc_B190D7: FLdPr Me
  loc_B190DA: MemLdRfVar from_stack_1.htmFile
  loc_B190DD: LdPrVar
  loc_B190DF: LateMemCall
  loc_B190E5: FFreeStr var_BC = ""
  loc_B190EC: FFree1Ad var_8C
  loc_B190EF: FFreeVar var_B8 = "": var_DC = ""
  loc_B190F8: Branch loc_B193CF
  loc_B190FB: FLdRfVar var_B8
  loc_B190FE: FLdRfVar var_A8
  loc_B19101: LitVarStr var_A4, "DetaPart"
  loc_B19106: PopAdLdVar
  loc_B19107: FLdRfVar var_8C
  loc_B1910A: FLdPr var_94
  loc_B1910D:  = Me.Fields
  loc_B19112: FLdPr var_8C
  loc_B19115: from_stack_2 = Me.Item(from_stack_1)
  loc_B1911A: FLdPr var_A8
  loc_B1911D:  = Me.Value
  loc_B19122: LitI4 0
  loc_B19127: LitStr "Totales3"
  loc_B1912A: LitI2_Byte 0
  loc_B1912C: LitStr "left"
  loc_B1912F: FLdRfVar var_B8
  loc_B19132: CStrVarTmp
  loc_B19133: FStStrNoPop var_BC
  loc_B19136: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1913B: CVarStr var_DC
  loc_B1913E: PopAdLdVar
  loc_B1913F: FLdPr Me
  loc_B19142: MemLdRfVar from_stack_1.htmFile
  loc_B19145: LdPrVar
  loc_B19147: LateMemCall
  loc_B1914D: FFree1Str var_BC
  loc_B19150: FFreeAd var_8C = ""
  loc_B19157: FFreeVar var_B8 = ""
  loc_B1915E: FLdRfVar var_A8
  loc_B19161: LitVarStr var_A4, "PrevImpu"
  loc_B19166: PopAdLdVar
  loc_B19167: FLdRfVar var_8C
  loc_B1916A: FLdPr var_94
  loc_B1916D:  = Me.Fields
  loc_B19172: FLdPr var_8C
  loc_B19175: from_stack_2 = Me.Item(from_stack_1)
  loc_B1917A: LitI4 1
  loc_B1917F: LitI4 1
  loc_B19184: LitVarStr var_CC, "###,###,##0.00"
  loc_B19189: FStVarCopyObj var_DC
  loc_B1918C: FLdRfVar var_DC
  loc_B1918F: FLdZeroAd var_A8
  loc_B19192: CVarAd
  loc_B19196: ImpAdCallI2 Format$(, )
  loc_B1919B: FStStr var_200
  loc_B1919E: LitI4 0
  loc_B191A3: LitStr "Totales3"
  loc_B191A6: LitI2_Byte 0
  loc_B191A8: LitStr "right"
  loc_B191AB: FLdZeroAd var_200
  loc_B191AE: FStStrNoPop var_BC
  loc_B191B1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B191B6: CVarStr var_EC
  loc_B191B9: PopAdLdVar
  loc_B191BA: FLdPr Me
  loc_B191BD: MemLdRfVar from_stack_1.htmFile
  loc_B191C0: LdPrVar
  loc_B191C2: LateMemCall
  loc_B191C8: FFreeStr var_BC = ""
  loc_B191CF: FFree1Ad var_8C
  loc_B191D2: FFreeVar var_B8 = "": var_DC = ""
  loc_B191DB: FLdRfVar var_A8
  loc_B191DE: LitVarStr var_A4, "DefiImpu"
  loc_B191E3: PopAdLdVar
  loc_B191E4: FLdRfVar var_8C
  loc_B191E7: FLdPr var_94
  loc_B191EA:  = Me.Fields
  loc_B191EF: FLdPr var_8C
  loc_B191F2: from_stack_2 = Me.Item(from_stack_1)
  loc_B191F7: LitI4 1
  loc_B191FC: LitI4 1
  loc_B19201: LitVarStr var_CC, "###,###,##0.00"
  loc_B19206: FStVarCopyObj var_DC
  loc_B19209: FLdRfVar var_DC
  loc_B1920C: FLdZeroAd var_A8
  loc_B1920F: CVarAd
  loc_B19213: ImpAdCallI2 Format$(, )
  loc_B19218: FStStr var_200
  loc_B1921B: LitI4 0
  loc_B19220: LitStr "Totales3"
  loc_B19223: LitI2_Byte 0
  loc_B19225: LitStr "right"
  loc_B19228: FLdZeroAd var_200
  loc_B1922B: FStStrNoPop var_BC
  loc_B1922E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B19233: CVarStr var_EC
  loc_B19236: PopAdLdVar
  loc_B19237: FLdPr Me
  loc_B1923A: MemLdRfVar from_stack_1.htmFile
  loc_B1923D: LdPrVar
  loc_B1923F: LateMemCall
  loc_B19245: FFreeStr var_BC = ""
  loc_B1924C: FFree1Ad var_8C
  loc_B1924F: FFreeVar var_B8 = "": var_DC = ""
  loc_B19258: FLdRfVar var_A8
  loc_B1925B: LitVarStr var_A4, "DeveImpu"
  loc_B19260: PopAdLdVar
  loc_B19261: FLdRfVar var_8C
  loc_B19264: FLdPr var_94
  loc_B19267:  = Me.Fields
  loc_B1926C: FLdPr var_8C
  loc_B1926F: from_stack_2 = Me.Item(from_stack_1)
  loc_B19274: LitI4 1
  loc_B19279: LitI4 1
  loc_B1927E: LitVarStr var_CC, "###,###,##0.00"
  loc_B19283: FStVarCopyObj var_DC
  loc_B19286: FLdRfVar var_DC
  loc_B19289: FLdZeroAd var_A8
  loc_B1928C: CVarAd
  loc_B19290: ImpAdCallI2 Format$(, )
  loc_B19295: FStStr var_200
  loc_B19298: LitI4 0
  loc_B1929D: LitStr "Totales3"
  loc_B192A0: LitI2_Byte 0
  loc_B192A2: LitStr "right"
  loc_B192A5: FLdZeroAd var_200
  loc_B192A8: FStStrNoPop var_BC
  loc_B192AB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B192B0: CVarStr var_EC
  loc_B192B3: PopAdLdVar
  loc_B192B4: FLdPr Me
  loc_B192B7: MemLdRfVar from_stack_1.htmFile
  loc_B192BA: LdPrVar
  loc_B192BC: LateMemCall
  loc_B192C2: FFreeStr var_BC = ""
  loc_B192C9: FFree1Ad var_8C
  loc_B192CC: FFreeVar var_B8 = "": var_DC = ""
  loc_B192D5: FLdRfVar var_A8
  loc_B192D8: LitVarStr var_A4, "MapaImpu"
  loc_B192DD: PopAdLdVar
  loc_B192DE: FLdRfVar var_8C
  loc_B192E1: FLdPr var_94
  loc_B192E4:  = Me.Fields
  loc_B192E9: FLdPr var_8C
  loc_B192EC: from_stack_2 = Me.Item(from_stack_1)
  loc_B192F1: LitI4 1
  loc_B192F6: LitI4 1
  loc_B192FB: LitVarStr var_CC, "###,###,##0.00"
  loc_B19300: FStVarCopyObj var_DC
  loc_B19303: FLdRfVar var_DC
  loc_B19306: FLdZeroAd var_A8
  loc_B19309: CVarAd
  loc_B1930D: ImpAdCallI2 Format$(, )
  loc_B19312: FStStr var_200
  loc_B19315: LitI4 0
  loc_B1931A: LitStr "Totales3"
  loc_B1931D: LitI2_Byte 0
  loc_B1931F: LitStr "right"
  loc_B19322: FLdZeroAd var_200
  loc_B19325: FStStrNoPop var_BC
  loc_B19328: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1932D: CVarStr var_EC
  loc_B19330: PopAdLdVar
  loc_B19331: FLdPr Me
  loc_B19334: MemLdRfVar from_stack_1.htmFile
  loc_B19337: LdPrVar
  loc_B19339: LateMemCall
  loc_B1933F: FFreeStr var_BC = ""
  loc_B19346: FFree1Ad var_8C
  loc_B19349: FFreeVar var_B8 = "": var_DC = ""
  loc_B19352: FLdRfVar var_A8
  loc_B19355: LitVarStr var_A4, "PagaImpu"
  loc_B1935A: PopAdLdVar
  loc_B1935B: FLdRfVar var_8C
  loc_B1935E: FLdPr var_94
  loc_B19361:  = Me.Fields
  loc_B19366: FLdPr var_8C
  loc_B19369: from_stack_2 = Me.Item(from_stack_1)
  loc_B1936E: LitI4 1
  loc_B19373: LitI4 1
  loc_B19378: LitVarStr var_CC, "###,###,##0.00"
  loc_B1937D: FStVarCopyObj var_DC
  loc_B19380: FLdRfVar var_DC
  loc_B19383: FLdZeroAd var_A8
  loc_B19386: CVarAd
  loc_B1938A: ImpAdCallI2 Format$(, )
  loc_B1938F: FStStr var_200
  loc_B19392: LitI4 0
  loc_B19397: LitStr "Totales3"
  loc_B1939A: LitI2_Byte 0
  loc_B1939C: LitStr "right"
  loc_B1939F: FLdZeroAd var_200
  loc_B193A2: FStStrNoPop var_BC
  loc_B193A5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B193AA: CVarStr var_EC
  loc_B193AD: PopAdLdVar
  loc_B193AE: FLdPr Me
  loc_B193B1: MemLdRfVar from_stack_1.htmFile
  loc_B193B4: LdPrVar
  loc_B193B6: LateMemCall
  loc_B193BC: FFreeStr var_BC = ""
  loc_B193C3: FFree1Ad var_8C
  loc_B193C6: FFreeVar var_B8 = "": var_DC = ""
  loc_B193CF: LitVarStr var_A4, "     </tr>"
  loc_B193D4: PopAdLdVar
  loc_B193D5: FLdPr Me
  loc_B193D8: MemLdRfVar from_stack_1.htmFile
  loc_B193DB: LdPrVar
  loc_B193DD: LateMemCall
  loc_B193E3: FLdRfVar var_B8
  loc_B193E6: FLdRfVar var_A8
  loc_B193E9: LitVarStr var_A4, "CodiUnga"
  loc_B193EE: PopAdLdVar
  loc_B193EF: FLdRfVar var_8C
  loc_B193F2: FLdPr var_94
  loc_B193F5:  = Me.Fields
  loc_B193FA: FLdPr var_8C
  loc_B193FD: from_stack_2 = Me.Item(from_stack_1)
  loc_B19402: FLdPr var_A8
  loc_B19405:  = Me.Value
  loc_B1940A: FLdRfVar var_B8
  loc_B1940D: CStrVarTmp
  loc_B1940E: FStStr var_88
  loc_B19411: FFreeAd var_8C = ""
  loc_B19418: FFree1Var var_B8 = ""
  loc_B1941B: LitNothing
  loc_B1941D: FStAd var_94 
  loc_B19421: FLdPr Me
  loc_B19424: MemLdRfVar from_stack_1.global_72
  loc_B19427: NewIfNullPr clsbase
  loc_B1942A: Call clsbase.MoveSiguiente()
  loc_B1942F: Branch loc_B18C10
  loc_B19432: Call Proc_233_32_981740()
  loc_B19437: FLdPr Me
  loc_B1943A: MemLdRfVar from_stack_1.htmFile
  loc_B1943D: LdPrVar
  loc_B1943F: LateMemCall
  loc_B19445: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B1944A: ExitProcHresult
End Sub

Public Sub GeneraXLS() '952084
  'Data Table: 49F7F8
  loc_95206C: LitI2_Byte 0
  loc_95206E: FLdPr Me
  loc_952071: MemStI2 bLogos
  loc_952074: Call GeneraHTML()
  loc_952079: LitI2_Byte &HFF
  loc_95207B: FLdPr Me
  loc_95207E: MemStI2 bLogos
  loc_952081: ExitProcHresult
End Sub

Private Function Proc_233_31_A6D9EC() 'A6D9EC
  'Data Table: 49F7F8
  loc_A6D660: LitVarStr var_94, "<html>"
  loc_A6D665: PopAdLdVar
  loc_A6D666: FLdPr Me
  loc_A6D669: MemLdRfVar from_stack_1.htmFile
  loc_A6D66C: LdPrVar
  loc_A6D66E: LateMemCall
  loc_A6D674: LitVarStr var_94, "<head>"
  loc_A6D679: PopAdLdVar
  loc_A6D67A: FLdPr Me
  loc_A6D67D: MemLdRfVar from_stack_1.htmFile
  loc_A6D680: LdPrVar
  loc_A6D682: LateMemCall
  loc_A6D688: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A6D68D: PopAdLdVar
  loc_A6D68E: FLdPr Me
  loc_A6D691: MemLdRfVar from_stack_1.htmFile
  loc_A6D694: LdPrVar
  loc_A6D696: LateMemCall
  loc_A6D69C: LitStr "<title>"
  loc_A6D69F: FLdRfVar var_A8
  loc_A6D6A2: FLdPr Me
  loc_A6D6A5:  = Me.Caption
  loc_A6D6AA: ILdRf var_A8
  loc_A6D6AD: ConcatStr
  loc_A6D6AE: FStStrNoPop var_AC
  loc_A6D6B1: LitStr " - "
  loc_A6D6B4: ConcatStr
  loc_A6D6B5: FStStrNoPop var_B0
  loc_A6D6B8: LitStr "Municipalidad de Guaymallén"
  loc_A6D6BB: ConcatStr
  loc_A6D6BC: FStStrNoPop var_B4
  loc_A6D6BF: LitStr "</title>"
  loc_A6D6C2: ConcatStr
  loc_A6D6C3: CVarStr var_C4
  loc_A6D6C6: PopAdLdVar
  loc_A6D6C7: FLdPr Me
  loc_A6D6CA: MemLdRfVar from_stack_1.htmFile
  loc_A6D6CD: LdPrVar
  loc_A6D6CF: LateMemCall
  loc_A6D6D5: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_A6D6E0: FFree1Var var_C4 = ""
  loc_A6D6E3: LitStr vbNullString
  loc_A6D6E6: ILdRf Me
  loc_A6D6E9: CastAd
  loc_A6D6EC: FStAdFunc var_C8
  loc_A6D6EF: FLdRfVar var_C8
  loc_A6D6F2: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A6D6F7: FFree1Ad var_C8
  loc_A6D6FA: LitI4 0
  loc_A6D6FF: FStStrCopy var_AC
  loc_A6D702: FLdRfVar var_AC
  loc_A6D705: LitI4 0
  loc_A6D70A: FStStrCopy var_A8
  loc_A6D70D: FLdRfVar var_A8
  loc_A6D710: LitI2_Byte &HFF
  loc_A6D712: PopTmpLdAd2 var_CA
  loc_A6D715: FLdPr Me
  loc_A6D718: MemLdRfVar from_stack_1.htmFile
  loc_A6D71B: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A6D720: FFreeStr var_A8 = ""
  loc_A6D727: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A6D72C: PopAdLdVar
  loc_A6D72D: FLdPr Me
  loc_A6D730: MemLdRfVar from_stack_1.htmFile
  loc_A6D733: LdPrVar
  loc_A6D735: LateMemCall
  loc_A6D73B: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_A6D740: PopAdLdVar
  loc_A6D741: FLdPr Me
  loc_A6D744: MemLdRfVar from_stack_1.htmFile
  loc_A6D747: LdPrVar
  loc_A6D749: LateMemCall
  loc_A6D74F: LitVarStr var_94, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_A6D754: PopAdLdVar
  loc_A6D755: FLdPr Me
  loc_A6D758: MemLdRfVar from_stack_1.htmFile
  loc_A6D75B: LdPrVar
  loc_A6D75D: LateMemCall
  loc_A6D763: FLdPr Me
  loc_A6D766: MemLdI2 bLogos
  loc_A6D769: BranchF loc_A6D7AE
  loc_A6D76C: LitVarStr var_A4, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_A6D771: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A6D776: FStVarCopyObj var_C4
  loc_A6D779: FLdRfVar var_C4
  loc_A6D77C: FLdRfVar var_DC
  loc_A6D77F: ImpAdCallFPR4  = Ucase()
  loc_A6D784: FLdRfVar var_DC
  loc_A6D787: ConcatVar var_EC
  loc_A6D78B: LitVarStr var_FC, "</p>"
  loc_A6D790: ConcatVar var_10C
  loc_A6D794: PopAdLdVar
  loc_A6D795: FLdPr Me
  loc_A6D798: MemLdRfVar from_stack_1.htmFile
  loc_A6D79B: LdPrVar
  loc_A6D79D: LateMemCall
  loc_A6D7A3: FFreeVar var_C4 = "": var_DC = "": var_EC = ""
  loc_A6D7AE: LitStr "    <p>"
  loc_A6D7B1: FLdRfVar var_A8
  loc_A6D7B4: FLdPr Me
  loc_A6D7B7:  = Me.Caption
  loc_A6D7BC: ILdRf var_A8
  loc_A6D7BF: ConcatStr
  loc_A6D7C0: FStStrNoPop var_AC
  loc_A6D7C3: LitStr "</p></th>"
  loc_A6D7C6: ConcatStr
  loc_A6D7C7: CVarStr var_C4
  loc_A6D7CA: PopAdLdVar
  loc_A6D7CB: FLdPr Me
  loc_A6D7CE: MemLdRfVar from_stack_1.htmFile
  loc_A6D7D1: LdPrVar
  loc_A6D7D3: LateMemCall
  loc_A6D7D9: FFreeStr var_A8 = ""
  loc_A6D7E0: FFree1Var var_C4 = ""
  loc_A6D7E3: LitVarStr var_94, "  </tr>"
  loc_A6D7E8: PopAdLdVar
  loc_A6D7E9: FLdPr Me
  loc_A6D7EC: MemLdRfVar from_stack_1.htmFile
  loc_A6D7EF: LdPrVar
  loc_A6D7F1: LateMemCall
  loc_A6D7F7: LitVarStr var_94, "  <tr><th colspan=""2""><hr></th></tr>"
  loc_A6D7FC: PopAdLdVar
  loc_A6D7FD: FLdPr Me
  loc_A6D800: MemLdRfVar from_stack_1.htmFile
  loc_A6D803: LdPrVar
  loc_A6D805: LateMemCall
  loc_A6D80B: LitVarStr var_94, "  <tr valign=""top"">"
  loc_A6D810: PopAdLdVar
  loc_A6D811: FLdPr Me
  loc_A6D814: MemLdRfVar from_stack_1.htmFile
  loc_A6D817: LdPrVar
  loc_A6D819: LateMemCall
  loc_A6D81F: LitVarStr var_94, "    <th align=""right"">"
  loc_A6D824: PopAdLdVar
  loc_A6D825: FLdPr Me
  loc_A6D828: MemLdRfVar from_stack_1.htmFile
  loc_A6D82B: LdPrVar
  loc_A6D82D: LateMemCall
  loc_A6D833: LitStr "     Desde: <span class=""Normal"">"
  loc_A6D836: FLdPr Me
  loc_A6D839: VCallAd Control_ID_mskDesde
  loc_A6D83C: FStAdFunc var_C8
  loc_A6D83F: FLdPr var_C8
  loc_A6D842: LateIdLdVar var_C4 DispID_15 0
  loc_A6D849: CStrVarTmp
  loc_A6D84A: FStStrNoPop var_A8
  loc_A6D84D: ConcatStr
  loc_A6D84E: FStStrNoPop var_AC
  loc_A6D851: LitStr "</span><br>"
  loc_A6D854: ConcatStr
  loc_A6D855: CVarStr var_DC
  loc_A6D858: PopAdLdVar
  loc_A6D859: FLdPr Me
  loc_A6D85C: MemLdRfVar from_stack_1.htmFile
  loc_A6D85F: LdPrVar
  loc_A6D861: LateMemCall
  loc_A6D867: FFreeStr var_A8 = ""
  loc_A6D86E: FFree1Ad var_C8
  loc_A6D871: FFreeVar var_C4 = ""
  loc_A6D878: LitStr "     Hasta: <span class=""Normal"">"
  loc_A6D87B: FLdPr Me
  loc_A6D87E: VCallAd Control_ID_mskHasta
  loc_A6D881: FStAdFunc var_C8
  loc_A6D884: FLdPr var_C8
  loc_A6D887: LateIdLdVar var_C4 DispID_15 0
  loc_A6D88E: CStrVarTmp
  loc_A6D88F: FStStrNoPop var_A8
  loc_A6D892: ConcatStr
  loc_A6D893: FStStrNoPop var_AC
  loc_A6D896: LitStr "</span>"
  loc_A6D899: ConcatStr
  loc_A6D89A: CVarStr var_DC
  loc_A6D89D: PopAdLdVar
  loc_A6D89E: FLdPr Me
  loc_A6D8A1: MemLdRfVar from_stack_1.htmFile
  loc_A6D8A4: LdPrVar
  loc_A6D8A6: LateMemCall
  loc_A6D8AC: FFreeStr var_A8 = ""
  loc_A6D8B3: FFree1Ad var_C8
  loc_A6D8B6: FFreeVar var_C4 = ""
  loc_A6D8BD: LitVarStr var_94, "    </th>"
  loc_A6D8C2: PopAdLdVar
  loc_A6D8C3: FLdPr Me
  loc_A6D8C6: MemLdRfVar from_stack_1.htmFile
  loc_A6D8C9: LdPrVar
  loc_A6D8CB: LateMemCall
  loc_A6D8D1: LitVarStr var_94, "  </tr>"
  loc_A6D8D6: PopAdLdVar
  loc_A6D8D7: FLdPr Me
  loc_A6D8DA: MemLdRfVar from_stack_1.htmFile
  loc_A6D8DD: LdPrVar
  loc_A6D8DF: LateMemCall
  loc_A6D8E5: LitVarStr var_94, "</table>"
  loc_A6D8EA: PopAdLdVar
  loc_A6D8EB: FLdPr Me
  loc_A6D8EE: MemLdRfVar from_stack_1.htmFile
  loc_A6D8F1: LdPrVar
  loc_A6D8F3: LateMemCall
  loc_A6D8F9: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A6D8FE: PopAdLdVar
  loc_A6D8FF: FLdPr Me
  loc_A6D902: MemLdRfVar from_stack_1.htmFile
  loc_A6D905: LdPrVar
  loc_A6D907: LateMemCall
  loc_A6D90D: LitVarStr var_94, "  <THEAD>"
  loc_A6D912: PopAdLdVar
  loc_A6D913: FLdPr Me
  loc_A6D916: MemLdRfVar from_stack_1.htmFile
  loc_A6D919: LdPrVar
  loc_A6D91B: LateMemCall
  loc_A6D921: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A6D926: PopAdLdVar
  loc_A6D927: FLdPr Me
  loc_A6D92A: MemLdRfVar from_stack_1.htmFile
  loc_A6D92D: LdPrVar
  loc_A6D92F: LateMemCall
  loc_A6D935: LitVarStr var_94, "    <th>Unidad de Gasto</th>"
  loc_A6D93A: PopAdLdVar
  loc_A6D93B: FLdPr Me
  loc_A6D93E: MemLdRfVar from_stack_1.htmFile
  loc_A6D941: LdPrVar
  loc_A6D943: LateMemCall
  loc_A6D949: LitVarStr var_94, "    <th>Partida</th>"
  loc_A6D94E: PopAdLdVar
  loc_A6D94F: FLdPr Me
  loc_A6D952: MemLdRfVar from_stack_1.htmFile
  loc_A6D955: LdPrVar
  loc_A6D957: LateMemCall
  loc_A6D95D: LitVarStr var_94, "    <th>Preventiva</th>"
  loc_A6D962: PopAdLdVar
  loc_A6D963: FLdPr Me
  loc_A6D966: MemLdRfVar from_stack_1.htmFile
  loc_A6D969: LdPrVar
  loc_A6D96B: LateMemCall
  loc_A6D971: LitVarStr var_94, "    <th>Definitiva</th>"
  loc_A6D976: PopAdLdVar
  loc_A6D977: FLdPr Me
  loc_A6D97A: MemLdRfVar from_stack_1.htmFile
  loc_A6D97D: LdPrVar
  loc_A6D97F: LateMemCall
  loc_A6D985: LitVarStr var_94, "    <th>Devengado</th>"
  loc_A6D98A: PopAdLdVar
  loc_A6D98B: FLdPr Me
  loc_A6D98E: MemLdRfVar from_stack_1.htmFile
  loc_A6D991: LdPrVar
  loc_A6D993: LateMemCall
  loc_A6D999: LitVarStr var_94, "    <th>Mandado a Pagar</th>"
  loc_A6D99E: PopAdLdVar
  loc_A6D99F: FLdPr Me
  loc_A6D9A2: MemLdRfVar from_stack_1.htmFile
  loc_A6D9A5: LdPrVar
  loc_A6D9A7: LateMemCall
  loc_A6D9AD: LitVarStr var_94, "    <th>Pagado</th>"
  loc_A6D9B2: PopAdLdVar
  loc_A6D9B3: FLdPr Me
  loc_A6D9B6: MemLdRfVar from_stack_1.htmFile
  loc_A6D9B9: LdPrVar
  loc_A6D9BB: LateMemCall
  loc_A6D9C1: LitVarStr var_94, "  </tr>"
  loc_A6D9C6: PopAdLdVar
  loc_A6D9C7: FLdPr Me
  loc_A6D9CA: MemLdRfVar from_stack_1.htmFile
  loc_A6D9CD: LdPrVar
  loc_A6D9CF: LateMemCall
  loc_A6D9D5: LitVarStr var_94, "  </THEAD>"
  loc_A6D9DA: PopAdLdVar
  loc_A6D9DB: FLdPr Me
  loc_A6D9DE: MemLdRfVar from_stack_1.htmFile
  loc_A6D9E1: LdPrVar
  loc_A6D9E3: LateMemCall
  loc_A6D9E9: ExitProcHresult
End Function

Private Function Proc_233_32_981740() '981740
  'Data Table: 49F7F8
  loc_981700: LitVarStr var_94, "</table>"
  loc_981705: PopAdLdVar
  loc_981706: FLdPr Me
  loc_981709: MemLdRfVar from_stack_1.htmFile
  loc_98170C: LdPrVar
  loc_98170E: LateMemCall
  loc_981714: LitVarStr var_94, "</body>"
  loc_981719: PopAdLdVar
  loc_98171A: FLdPr Me
  loc_98171D: MemLdRfVar from_stack_1.htmFile
  loc_981720: LdPrVar
  loc_981722: LateMemCall
  loc_981728: LitVarStr var_94, "</html>"
  loc_98172D: PopAdLdVar
  loc_98172E: FLdPr Me
  loc_981731: MemLdRfVar from_stack_1.htmFile
  loc_981734: LdPrVar
  loc_981736: LateMemCall
  loc_98173C: ExitProcHresult
End Function
