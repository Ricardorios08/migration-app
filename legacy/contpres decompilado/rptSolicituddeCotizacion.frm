VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptSolicituddeCotizacion
  Caption = "Solicitud de Cotización"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptSolicituddeCotizacion.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7920
  ClientHeight = 4080
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3825
    Width = 7920
    Height = 255
    TabIndex = 17
    OleObjectBlob = "rptSolicituddeCotizacion.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6720
    Top = 2880
    Width = 735
    Height = 615
    TabIndex = 15
    Cancel = -1  'True
    Picture = "rptSolicituddeCotizacion.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptSolicituddeCotizacion.frx":0B9C
    Left = 6480
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2640
    Width = 3255
    Height = 1095
    TabIndex = 12
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 14
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 13
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2640
    Width = 3015
    Height = 1095
    TabIndex = 9
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 11
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7695
    Height = 2535
    TabIndex = 0
    Begin VB.CheckBox chkOcultarItc
      Caption = "Ocultar ítems adjudicados"
      Left = 4440
      Top = 1560
      Width = 2415
      Height = 375
      TabIndex = 8
    End
    Begin VB.CheckBox chkAgrupar
      Caption = "Agrupar items iguales"
      Left = 360
      Top = 1560
      Width = 1815
      Height = 315
      TabIndex = 6
    End
    Begin VB.CheckBox chkHojasSeparadas
      Caption = "Hojas separadas"
      Left = 2520
      Top = 1560
      Width = 1575
      Height = 375
      TabIndex = 7
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 3000
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5160
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox DesdeCodiNopeMsk
      Left = 3000
      Top = 840
      Width = 975
      Height = 315
      TabIndex = 5
      OleObjectBlob = "rptSolicituddeCotizacion.frx":0C00
    End
    Begin VB.Label Label2
      Caption = "Nota de pedido Nº:"
      Left = 1500
      Top = 840
      Width = 1365
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 2280
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6840
    Top = 3000
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 16
    OleObjectBlob = "rptSolicituddeCotizacion.frx":0C70
  End
End

Attribute VB_Name = "rptSolicituddeCotizacion"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_0059F730
  bStruc(24) As Byte ' String fields: 6
End Type

Private Type UDT_2_00615750
  bStruc(76) As Byte ' String fields: 19
End Type


Private Sub cmdPdf_Click() '95C9D8
  'Data Table: 473C5C
  loc_95C9C0: LitI2_Byte 0
  loc_95C9C2: ILdRf Me
  loc_95C9C5: CastAd
  loc_95C9C8: FStAdFunc var_88
  loc_95C9CB: FLdRfVar var_88
  loc_95C9CE: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95C9D3: FFree1Ad var_88
  loc_95C9D6: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98B954
  'Data Table: 473C5C
  loc_98B91C: FLdPr Me
  loc_98B91F: VCallAd Control_ID_statusBar
  loc_98B922: FStAdFunc var_88
  loc_98B925: FLdPr var_88
  loc_98B928: LateIdLdVar var_98 DispID_1 0
  loc_98B92F: CStrVarTmp
  loc_98B930: CVarStr var_A8
  loc_98B933: PopAdLdVar
  loc_98B934: FLdPr Me
  loc_98B937: VCallAd Control_ID_statusBar
  loc_98B93A: FStAdFunc var_BC
  loc_98B93D: FLdPr var_BC
  loc_98B940: LateIdSt
  loc_98B945: FFreeAd var_88 = ""
  loc_98B94C: FFreeVar var_98 = ""
  loc_98B953: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9AA880
  'Data Table: 473C5C
  loc_9AA7E4: LitI2_Byte 0
  loc_9AA7E6: FLdPr Me
  loc_9AA7E9: MemStI2 bGenerado
  loc_9AA7EC: LitI2_Byte &HFF
  loc_9AA7EE: FLdPr Me
  loc_9AA7F1: MemStI2 bLogos
  loc_9AA7F4: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9AA7F9: ImpAdLdI2 MemVar_C3D064
  loc_9AA7FC: CStrUI1
  loc_9AA7FE: FStStrNoPop var_88
  loc_9AA801: FLdPr Me
  loc_9AA804: VCallAd Control_ID_cboPeriodo
  loc_9AA807: FStAdFunc var_8C
  loc_9AA80A: FLdPr var_8C
  loc_9AA80D: Me.Text = from_stack_1
  loc_9AA812: FFree1Str var_88
  loc_9AA815: FFree1Ad var_8C
  loc_9AA818: LitI4 0
  loc_9AA81D: CI2I4
  loc_9AA81E: FLdPr Me
  loc_9AA821: VCallAd Control_ID_chkAgrupar
  loc_9AA824: FStAdFunc var_8C
  loc_9AA827: FLdPr var_8C
  loc_9AA82A: Me.Value = from_stack_1
  loc_9AA82F: FFree1Ad var_8C
  loc_9AA832: LitI4 1
  loc_9AA837: CI2I4
  loc_9AA838: FLdPr Me
  loc_9AA83B: VCallAd Control_ID_chkHojasSeparadas
  loc_9AA83E: FStAdFunc var_8C
  loc_9AA841: FLdPr var_8C
  loc_9AA844: Me.Value = from_stack_1
  loc_9AA849: FFree1Ad var_8C
  loc_9AA84C: LitI4 0
  loc_9AA851: CI2I4
  loc_9AA852: FLdPr Me
  loc_9AA855: VCallAd Control_ID_chkOcultarItc
  loc_9AA858: FStAdFunc var_8C
  loc_9AA85B: FLdPr var_8C
  loc_9AA85E: Me.Value = from_stack_1
  loc_9AA863: FFree1Ad var_8C
  loc_9AA866: Call HabilitarCriterio()
  loc_9AA86B: ILdRf Me
  loc_9AA86E: CastAd
  loc_9AA871: FStAdFunc var_8C
  loc_9AA874: FLdRfVar var_8C
  loc_9AA877: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9AA87C: FFree1Ad var_8C
  loc_9AA87F: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97B4F0
  'Data Table: 473C5C
  loc_97B4C0: LitVarStr var_94, "Cerrando..."
  loc_97B4C5: PopAdLdVar
  loc_97B4C6: FLdPr Me
  loc_97B4C9: VCallAd Control_ID_statusBar
  loc_97B4CC: FStAdFunc var_A8
  loc_97B4CF: FLdPr var_A8
  loc_97B4D2: LateIdSt
  loc_97B4D7: FFree1Ad var_A8
  loc_97B4DA: ILdRf Me
  loc_97B4DD: FStAdNoPop
  loc_97B4E1: ImpAdLdRf MemVar_C44F9C
  loc_97B4E4: NewIfNullPr Me
  loc_97B4E7: Me.Global.Unload from_stack_1
  loc_97B4EC: FFree1Ad var_A8
  loc_97B4EF: ExitProcHresult
End Sub

Private Sub DesdeCodiNopeMsk_UnknownEvent_0 '94FC80
  'Data Table: 473C5C
  loc_94FC6C: FLdPr Me
  loc_94FC6F: VCallAd Control_ID_DesdeCodiNopeMsk
  loc_94FC72: CVarAd
  loc_94FC76: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94FC7B: FFree1Var var_94 = ""
  loc_94FC7E: ExitProcHresult
End Sub

Private Function DesdeCodiNopeMsk_UnknownEvent_8(arg_C) '9A7DF0
  'Data Table: 473C5C
  loc_9A7D74: FLdPr Me
  loc_9A7D77: VCallAd Control_ID_DesdeCodiNopeMsk
  loc_9A7D7A: FStAdFunc var_88
  loc_9A7D7D: FLdPr var_88
  loc_9A7D80: LateIdLdVar var_98 DispID_0 0
  loc_9A7D87: PopAd
  loc_9A7D89: LitI2_Byte 0
  loc_9A7D8B: LitI2_Byte 0
  loc_9A7D8D: FLdRfVar var_98
  loc_9A7D90: CStrVarTmp
  loc_9A7D91: FStStrNoPop var_9C
  loc_9A7D94: LitStr "Nota de pedido"
  loc_9A7D97: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_9A7D9C: FStStrNoPop var_A0
  loc_9A7D9F: FLdPr Me
  loc_9A7DA2: MemStStrCopy
  loc_9A7DA6: FFreeStr var_9C = ""
  loc_9A7DAD: FFree1Ad var_88
  loc_9A7DB0: FFree1Var var_98 = ""
  loc_9A7DB3: FLdPr Me
  loc_9A7DB6: VCallAd Control_ID_DesdeCodiNopeMsk
  loc_9A7DB9: FStAdFunc var_AC
  loc_9A7DBC: LitNothing
  loc_9A7DBE: CastAd
  loc_9A7DC1: FStAdFunc var_A8
  loc_9A7DC4: FLdRfVar var_A8
  loc_9A7DC7: FLdZeroAd var_AC
  loc_9A7DCA: FStAdFuncNoPop
  loc_9A7DCD: CastAd
  loc_9A7DD0: FStAdFunc var_A4
  loc_9A7DD3: FLdRfVar var_A4
  loc_9A7DD6: FLdPr Me
  loc_9A7DD9: MemLdRfVar from_stack_1.global_100
  loc_9A7DDC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9A7DE1: IStI2 arg_C
  loc_9A7DE4: FFreeAd var_88 = "": var_A4 = "": var_A8 = ""
  loc_9A7DEF: ExitProcHresult
End Function

Private Sub cmdPrevia_Click() '95CB08
  'Data Table: 473C5C
  loc_95CAF0: ILdRf Me
  loc_95CAF3: CastAd
  loc_95CAF6: FStAdFunc var_88
  loc_95CAF9: FLdRfVar var_88
  loc_95CAFC: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95CB01: FFree1Ad var_88
  loc_95CB04: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95CA70
  'Data Table: 473C5C
  loc_95CA58: ILdRf Me
  loc_95CA5B: CastAd
  loc_95CA5E: FStAdFunc var_88
  loc_95CA61: FLdRfVar var_88
  loc_95CA64: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95CA69: FFree1Ad var_88
  loc_95CA6C: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96B2BC
  'Data Table: 473C5C
  loc_96B2A0: LitI2_Byte &HFF
  loc_96B2A2: LitI2_Byte 0
  loc_96B2A4: ILdRf Me
  loc_96B2A7: CastAd
  loc_96B2AA: FStAdFunc var_88
  loc_96B2AD: FLdRfVar var_88
  loc_96B2B0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B2B5: FFree1Ad var_88
  loc_96B2B8: ExitProcHresult
End Sub

Private Sub Form_Load() '9D557C
  'Data Table: 473C5C
  loc_9D5490: LitI2_Byte &HFF
  loc_9D5492: ImpAdStI2 MemVar_C3D840
  loc_9D5495: ILdRf Me
  loc_9D5498: CastAd
  loc_9D549B: FStAdFunc var_88
  loc_9D549E: FLdRfVar var_88
  loc_9D54A1: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D54A6: FFree1Ad var_88
  loc_9D54A9: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D54AC: FLdPr Me
  loc_9D54AF: MemLdRfVar from_stack_1.global_72
  loc_9D54B2: NewIfNullPr clsbase
  loc_9D54B5: Call clsbase.RedefineRS(from_stack_1v)
  loc_9D54BA: FLdRfVar var_8C
  loc_9D54BD: FLdPr Me
  loc_9D54C0: MemLdRfVar from_stack_1.global_72
  loc_9D54C3: NewIfNullPr clsbase
  loc_9D54C6: from_stack_1 = clsbase.RecordCount
  loc_9D54CB: ILdRf var_8C
  loc_9D54CE: LitI4 0
  loc_9D54D3: GtI4
  loc_9D54D4: BranchF loc_9D5573
  loc_9D54D7: FLdPr Me
  loc_9D54DA: MemLdRfVar from_stack_1.global_72
  loc_9D54DD: NewIfNullPr clsbase
  loc_9D54E0: Call clsbase.MoveFirst()
  loc_9D54E5: FLdRfVar var_8E
  loc_9D54E8: FLdPr Me
  loc_9D54EB: MemLdRfVar from_stack_1.global_72
  loc_9D54EE: NewIfNullPr clsbase
  loc_9D54F1: from_stack_1 = clsbase.EOF
  loc_9D54F6: FLdI2 var_8E
  loc_9D54F9: NotI4
  loc_9D54FA: BranchF loc_9D5573
  loc_9D54FD: LitVar_Missing var_CC
  loc_9D5500: PopAdLdVar
  loc_9D5501: FLdRfVar var_B8
  loc_9D5504: FLdRfVar var_A8
  loc_9D5507: LitVarStr var_A4, "PeriInfo"
  loc_9D550C: PopAdLdVar
  loc_9D550D: FLdRfVar var_94
  loc_9D5510: FLdRfVar var_88
  loc_9D5513: FLdPr Me
  loc_9D5516: MemLdRfVar from_stack_1.global_72
  loc_9D5519: NewIfNullPr clsbase
  loc_9D551C: from_stack_1v = clsbase.RsFrmGet()
  loc_9D5521: FLdPr var_88
  loc_9D5524:  = Me.Fields
  loc_9D5529: FLdPr var_94
  loc_9D552C: from_stack_2 = Me.Item(from_stack_1)
  loc_9D5531: FLdPr var_A8
  loc_9D5534:  = Me.Value
  loc_9D5539: FLdRfVar var_B8
  loc_9D553C: CStrVarTmp
  loc_9D553D: FStStrNoPop var_BC
  loc_9D5540: FLdPr Me
  loc_9D5543: VCallAd Control_ID_cboPeriodo
  loc_9D5546: FStAdFunc var_D0
  loc_9D5549: FLdPr var_D0
  loc_9D554C: Me.AddItem from_stack_1, from_stack_2
  loc_9D5551: FFree1Str var_BC
  loc_9D5554: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_9D555F: FFree1Var var_B8 = ""
  loc_9D5562: FLdPr Me
  loc_9D5565: MemLdRfVar from_stack_1.global_72
  loc_9D5568: NewIfNullPr clsbase
  loc_9D556B: Call clsbase.MoveSiguiente()
  loc_9D5570: Branch loc_9D54E5
  loc_9D5573: Call cmdNueva_Click()
  loc_9D5578: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95C1D4
  'Data Table: 473C5C
  loc_95C1BC: FLdPr Me
  loc_95C1BF: VCallAd Control_ID_wbbReporte
  loc_95C1C2: FStAdFunc var_88
  loc_95C1C5: FLdRfVar var_88
  loc_95C1C8: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95C1CD: FFree1Ad var_88
  loc_95C1D0: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '9D7148
  'Data Table: 473C5C
  loc_9D7068: FLdPr Me
  loc_9D706B: MemLdRfVar from_stack_1.global_76
  loc_9D706E: NewIfNullAd
  loc_9D7071: FStAd var_88 
  loc_9D7075: LitStr "SELECT CodiNope FROM notapedido WHERE PeriInfo = "
  loc_9D7078: FLdRfVar var_90
  loc_9D707B: FLdPr Me
  loc_9D707E: VCallAd Control_ID_cboPeriodo
  loc_9D7081: FStAdFunc var_8C
  loc_9D7084: FLdPr var_8C
  loc_9D7087:  = Me.Text
  loc_9D708C: ILdRf var_90
  loc_9D708F: ConcatStr
  loc_9D7090: FStStrNoPop var_94
  loc_9D7093: LitStr " ORDER BY CodiNope DESC LIMIT 1"
  loc_9D7096: ConcatStr
  loc_9D7097: FStStrNoPop var_98
  loc_9D709A: FLdPr var_88
  loc_9D709D: Call clsnotapedido.RedefineRS(from_stack_1v)
  loc_9D70A2: FFreeStr var_90 = "": var_94 = ""
  loc_9D70AB: FFree1Ad var_8C
  loc_9D70AE: FLdRfVar var_9C
  loc_9D70B1: FLdPr var_88
  loc_9D70B4: from_stack_1 = clsnotapedido.RecordCount
  loc_9D70B9: ILdRf var_9C
  loc_9D70BC: LitI4 0
  loc_9D70C1: GtI4
  loc_9D70C2: BranchF loc_9D7125
  loc_9D70C5: FLdRfVar var_C4
  loc_9D70C8: FLdRfVar var_B4
  loc_9D70CB: LitVarStr var_B0, "CodiNope"
  loc_9D70D0: PopAdLdVar
  loc_9D70D1: FLdRfVar var_A0
  loc_9D70D4: FLdRfVar var_8C
  loc_9D70D7: FLdPr var_88
  loc_9D70DA: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_9D70DF: FLdPr var_8C
  loc_9D70E2:  = Me.Fields
  loc_9D70E7: FLdPr var_A0
  loc_9D70EA: from_stack_2 = Me.Item(from_stack_1)
  loc_9D70EF: FLdPr var_B4
  loc_9D70F2:  = Me.Value
  loc_9D70F7: FLdRfVar var_C4
  loc_9D70FA: CStrVarTmp
  loc_9D70FB: CVarStr var_D4
  loc_9D70FE: PopAdLdVar
  loc_9D70FF: FLdPr Me
  loc_9D7102: VCallAd Control_ID_DesdeCodiNopeMsk
  loc_9D7105: FStAdFunc var_E8
  loc_9D7108: FLdPr var_E8
  loc_9D710B: LateIdSt
  loc_9D7110: FFreeAd var_8C = "": var_A0 = "": var_B4 = ""
  loc_9D711B: FFreeVar var_C4 = ""
  loc_9D7122: Branch loc_9D713F
  loc_9D7125: LitVarStr var_B0, "0"
  loc_9D712A: PopAdLdVar
  loc_9D712B: FLdPr Me
  loc_9D712E: VCallAd Control_ID_DesdeCodiNopeMsk
  loc_9D7131: FStAdFunc var_8C
  loc_9D7134: FLdPr var_8C
  loc_9D7137: LateIdSt
  loc_9D713C: FFree1Ad var_8C
  loc_9D713F: LitNothing
  loc_9D7141: FStAd var_88 
  loc_9D7145: ExitProcHresult
End Sub

Public Function htmFileGet() '474B0C
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '474B1B
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '474B2A
  htmFile = Value
End Sub

Public Function bLogosGet() '474B39
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '474B48
  bLogos = Value
End Sub

Public Function bGeneradoGet() '474B57
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '474B66
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9A62B4
  'Data Table: 473C5C
  loc_9A6240: LitI4 0
  loc_9A6245: LitI4 4
  loc_9A624A: FLdRfVar var_88
  loc_9A624D: Redim
  loc_9A6257: FLdPr Me
  loc_9A625A: VCallAd Control_ID_cboPeriodo
  loc_9A625D: CVarAd
  loc_9A6261: ParmAry1St
  loc_9A6267: FLdPr Me
  loc_9A626A: VCallAd Control_ID_DesdeCodiNopeMsk
  loc_9A626D: CVarAd
  loc_9A6271: ParmAry1St
  loc_9A6277: FLdPr Me
  loc_9A627A: VCallAd Control_ID_chkAgrupar
  loc_9A627D: CVarAd
  loc_9A6281: ParmAry1St
  loc_9A6287: FLdPr Me
  loc_9A628A: VCallAd Control_ID_chkHojasSeparadas
  loc_9A628D: CVarAd
  loc_9A6291: ParmAry1St
  loc_9A6297: FLdPr Me
  loc_9A629A: VCallAd Control_ID_chkOcultarItc
  loc_9A629D: CVarAd
  loc_9A62A1: ParmAry1St
  loc_9A62A7: FLdRfVar var_88
  loc_9A62AA: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A62AF: FLdRfVar var_88
  loc_9A62B2: Erase
  loc_9A62B3: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B8A028
  'Data Table: 473C5C
  loc_B89234: FLdPr Me
  loc_B89237: MemLdI2 bGenerado
  loc_B8923A: BranchF loc_B8923E
  loc_B8923D: ExitProcHresult
  loc_B8923E: LitVarStr var_94, "Generando reporte..."
  loc_B89243: PopAdLdVar
  loc_B89244: FLdPr Me
  loc_B89247: VCallAd Control_ID_statusBar
  loc_B8924A: FStAdFunc var_A8
  loc_B8924D: FLdPr var_A8
  loc_B89250: LateIdSt
  loc_B89255: FFree1Ad var_A8
  loc_B89258: LitI4 &HB
  loc_B8925D: CI2I4
  loc_B8925E: FLdPr Me
  loc_B89261: Me.MousePointer = from_stack_1
  loc_B89266: LitI2_Byte 0
  loc_B89268: PopTmpLdAd2 var_AA
  loc_B8926B: from_stack_2v = DesdeCodiNopeMsk_UnknownEvent_8(from_stack_1v)
  loc_B89270: FLdPr Me
  loc_B89273: MemLdStr global_100
  loc_B89276: LitStr vbNullString
  loc_B89279: NeStr
  loc_B8927B: BranchF loc_B89281
  loc_B8927E: Branch loc_B89FFF
  loc_B89281: LitStr "SELECT np.*, DetaTico, DetaOrga"
  loc_B89284: LitStr ", IF(np.PlieNope>0,fnSellado(np.ExpeImpu) * (SELECT UntriPage FROM paragene pg WHERE pg.PeriInfo = np.PeriInfo),0) SelladoNope"
  loc_B89287: ConcatStr
  loc_B89288: FStStrNoPop var_B0
  loc_B8928B: LitStr " FROM notapedido np"
  loc_B8928E: ConcatStr
  loc_B8928F: FStStrNoPop var_B4
  loc_B89292: LitStr " INNER JOIN tipocompra tc ON tc.CodiTico = np.CodiTico"
  loc_B89295: ConcatStr
  loc_B89296: FStStrNoPop var_B8
  loc_B89299: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = np.PeriInfo AND o.CodiOrga = np.CodiOrga"
  loc_B8929C: ConcatStr
  loc_B8929D: FStStrNoPop var_BC
  loc_B892A0: LitStr " WHERE np.PeriInfo = "
  loc_B892A3: ConcatStr
  loc_B892A4: FStStrNoPop var_C4
  loc_B892A7: FLdRfVar var_C0
  loc_B892AA: FLdPr Me
  loc_B892AD: VCallAd Control_ID_cboPeriodo
  loc_B892B0: FStAdFunc var_A8
  loc_B892B3: FLdPr var_A8
  loc_B892B6:  = Me.Text
  loc_B892BB: ILdRf var_C0
  loc_B892BE: ConcatStr
  loc_B892BF: FStStrNoPop var_C8
  loc_B892C2: LitStr " AND np.CodiNope = "
  loc_B892C5: ConcatStr
  loc_B892C6: FStStrNoPop var_E0
  loc_B892C9: FLdPr Me
  loc_B892CC: VCallAd Control_ID_DesdeCodiNopeMsk
  loc_B892CF: FStAdFunc var_CC
  loc_B892D2: FLdPr var_CC
  loc_B892D5: LateIdLdVar var_DC DispID_22 0
  loc_B892DC: CStrVarTmp
  loc_B892DD: FStStrNoPop var_E4
  loc_B892E0: ConcatStr
  loc_B892E1: FStStrNoPop var_E8
  loc_B892E4: LitStr " ORDER BY np.CodiNope;"
  loc_B892E7: ConcatStr
  loc_B892E8: FStStrNoPop var_EC
  loc_B892EB: FLdPr Me
  loc_B892EE: MemLdRfVar from_stack_1.global_76
  loc_B892F1: NewIfNullPr clsnotapedido
  loc_B892F4: Call clsnotapedido.RedefineRS(from_stack_1v)
  loc_B892F9: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C4 = "": var_C0 = "": var_C8 = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_B89312: FFreeAd var_A8 = ""
  loc_B89319: FFree1Var var_DC = ""
  loc_B8931C: FLdRfVar var_F0
  loc_B8931F: FLdPr Me
  loc_B89322: MemLdRfVar from_stack_1.global_76
  loc_B89325: NewIfNullPr clsnotapedido
  loc_B89328: from_stack_1 = clsnotapedido.RecordCount
  loc_B8932D: ILdRf var_F0
  loc_B89330: LitI4 0
  loc_B89335: EqI4
  loc_B89336: BranchF loc_B89349
  loc_B89339: LitI4 0
  loc_B8933E: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B89341: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B89346: Branch loc_B89FFF
  loc_B89349: LitI4 0
  loc_B8934E: FLdRfVar var_F0
  loc_B89351: FLdPr Me
  loc_B89354: MemLdRfVar from_stack_1.global_76
  loc_B89357: NewIfNullPr clsnotapedido
  loc_B8935A: from_stack_1 = clsnotapedido.RecordCount
  loc_B8935F: ILdRf var_F0
  loc_B89362: FLdPr Me
  loc_B89365: MemLdRfVar from_stack_1.global_88
  loc_B89368: Redim
  loc_B89372: FLdPr Me
  loc_B89375: MemLdRfVar from_stack_1.global_76
  loc_B89378: NewIfNullPr clsnotapedido
  loc_B8937B: Call clsnotapedido.MoveFirst()
  loc_B89380: LitI2_Byte 1
  loc_B89382: FLdPr Me
  loc_B89385: MemLdRfVar from_stack_1.global_92
  loc_B89388: FLdPr Me
  loc_B8938B: MemLdStr global_88
  loc_B8938E: LitI2_Byte 1
  loc_B89390: FnUBound
  loc_B89392: CI2I4
  loc_B89393: ForI2 var_F4
  loc_B89399: FLdPr Me
  loc_B8939C: MemLdRfVar from_stack_1.global_76
  loc_B8939F: NewIfNullAd
  loc_B893A2: FStAd var_F8 
  loc_B893A6: FLdRfVar var_FC
  loc_B893A9: LitVarStr var_94, "CodiNope"
  loc_B893AE: PopAdLdVar
  loc_B893AF: FLdRfVar var_CC
  loc_B893B2: FLdRfVar var_A8
  loc_B893B5: FLdPr var_F8
  loc_B893B8: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B893BD: FLdPr var_A8
  loc_B893C0:  = Me.Fields
  loc_B893C5: FLdPr var_CC
  loc_B893C8: from_stack_2 = Me.Item(from_stack_1)
  loc_B893CD: LitI2_Byte 0
  loc_B893CF: LitVar_Missing var_110
  loc_B893D2: LitI2_Byte 0
  loc_B893D4: FLdZeroAd var_FC
  loc_B893D7: CVarAd
  loc_B893DB: PopAdLdVar
  loc_B893DC: FLdPr Me
  loc_B893DF: MemLdI2 global_92
  loc_B893E2: CI4UI1
  loc_B893E3: FLdPr Me
  loc_B893E6: MemLdStr global_88
  loc_B893E9: AryLock
  loc_B893EC: Ary1LdPr
  loc_B893ED: MemLdRfVar from_stack_1.global_0
  loc_B893F0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B893F5: AryUnlock
  loc_B893F8: FFreeAd var_A8 = ""
  loc_B893FF: FFreeVar var_DC = ""
  loc_B89406: FLdRfVar var_FC
  loc_B89409: LitVarStr var_94, "DetaNope"
  loc_B8940E: PopAdLdVar
  loc_B8940F: FLdRfVar var_CC
  loc_B89412: FLdRfVar var_A8
  loc_B89415: FLdPr var_F8
  loc_B89418: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B8941D: FLdPr var_A8
  loc_B89420:  = Me.Fields
  loc_B89425: FLdPr var_CC
  loc_B89428: from_stack_2 = Me.Item(from_stack_1)
  loc_B8942D: LitI2_Byte 0
  loc_B8942F: LitVar_Missing var_110
  loc_B89432: LitI2_Byte 0
  loc_B89434: FLdZeroAd var_FC
  loc_B89437: CVarAd
  loc_B8943B: PopAdLdVar
  loc_B8943C: FLdPr Me
  loc_B8943F: MemLdI2 global_92
  loc_B89442: CI4UI1
  loc_B89443: FLdPr Me
  loc_B89446: MemLdStr global_88
  loc_B89449: AryLock
  loc_B8944C: Ary1LdPr
  loc_B8944D: MemLdRfVar from_stack_1.global_4
  loc_B89450: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B89455: AryUnlock
  loc_B89458: FFreeAd var_A8 = ""
  loc_B8945F: FFreeVar var_DC = ""
  loc_B89466: FLdRfVar var_FC
  loc_B89469: LitVarStr var_94, "DetaNope2"
  loc_B8946E: PopAdLdVar
  loc_B8946F: FLdRfVar var_CC
  loc_B89472: FLdRfVar var_A8
  loc_B89475: FLdPr var_F8
  loc_B89478: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B8947D: FLdPr var_A8
  loc_B89480:  = Me.Fields
  loc_B89485: FLdPr var_CC
  loc_B89488: from_stack_2 = Me.Item(from_stack_1)
  loc_B8948D: LitI2_Byte 0
  loc_B8948F: LitVar_Missing var_110
  loc_B89492: LitI2_Byte 0
  loc_B89494: FLdZeroAd var_FC
  loc_B89497: CVarAd
  loc_B8949B: PopAdLdVar
  loc_B8949C: FLdPr Me
  loc_B8949F: MemLdI2 global_92
  loc_B894A2: CI4UI1
  loc_B894A3: FLdPr Me
  loc_B894A6: MemLdStr global_88
  loc_B894A9: AryLock
  loc_B894AC: Ary1LdPr
  loc_B894AD: MemLdRfVar from_stack_1.global_8
  loc_B894B0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B894B5: AryUnlock
  loc_B894B8: FFreeAd var_A8 = ""
  loc_B894BF: FFreeVar var_DC = ""
  loc_B894C6: FLdRfVar var_FC
  loc_B894C9: LitVarStr var_94, "CodiTico"
  loc_B894CE: PopAdLdVar
  loc_B894CF: FLdRfVar var_CC
  loc_B894D2: FLdRfVar var_A8
  loc_B894D5: FLdPr var_F8
  loc_B894D8: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B894DD: FLdPr var_A8
  loc_B894E0:  = Me.Fields
  loc_B894E5: FLdPr var_CC
  loc_B894E8: from_stack_2 = Me.Item(from_stack_1)
  loc_B894ED: LitI2_Byte 0
  loc_B894EF: LitVar_Missing var_110
  loc_B894F2: LitI2_Byte 0
  loc_B894F4: FLdZeroAd var_FC
  loc_B894F7: CVarAd
  loc_B894FB: PopAdLdVar
  loc_B894FC: FLdPr Me
  loc_B894FF: MemLdI2 global_92
  loc_B89502: CI4UI1
  loc_B89503: FLdPr Me
  loc_B89506: MemLdStr global_88
  loc_B89509: AryLock
  loc_B8950C: Ary1LdPr
  loc_B8950D: MemLdRfVar from_stack_1.global_12
  loc_B89510: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B89515: AryUnlock
  loc_B89518: FFreeAd var_A8 = ""
  loc_B8951F: FFreeVar var_DC = ""
  loc_B89526: FLdRfVar var_FC
  loc_B89529: LitVarStr var_94, "DetaTico"
  loc_B8952E: PopAdLdVar
  loc_B8952F: FLdRfVar var_CC
  loc_B89532: FLdRfVar var_A8
  loc_B89535: FLdPr var_F8
  loc_B89538: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B8953D: FLdPr var_A8
  loc_B89540:  = Me.Fields
  loc_B89545: FLdPr var_CC
  loc_B89548: from_stack_2 = Me.Item(from_stack_1)
  loc_B8954D: LitI2_Byte 0
  loc_B8954F: LitVar_Missing var_110
  loc_B89552: LitI2_Byte 0
  loc_B89554: FLdZeroAd var_FC
  loc_B89557: CVarAd
  loc_B8955B: PopAdLdVar
  loc_B8955C: FLdPr Me
  loc_B8955F: MemLdI2 global_92
  loc_B89562: CI4UI1
  loc_B89563: FLdPr Me
  loc_B89566: MemLdStr global_88
  loc_B89569: AryLock
  loc_B8956C: Ary1LdPr
  loc_B8956D: MemLdRfVar from_stack_1.global_16
  loc_B89570: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B89575: AryUnlock
  loc_B89578: FFreeAd var_A8 = ""
  loc_B8957F: FFreeVar var_DC = ""
  loc_B89586: FLdRfVar var_FC
  loc_B89589: LitVarStr var_94, "PlieNope"
  loc_B8958E: PopAdLdVar
  loc_B8958F: FLdRfVar var_CC
  loc_B89592: FLdRfVar var_A8
  loc_B89595: FLdPr var_F8
  loc_B89598: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B8959D: FLdPr var_A8
  loc_B895A0:  = Me.Fields
  loc_B895A5: FLdPr var_CC
  loc_B895A8: from_stack_2 = Me.Item(from_stack_1)
  loc_B895AD: LitI2_Byte 0
  loc_B895AF: LitVar_Missing var_110
  loc_B895B2: LitI2_Byte 0
  loc_B895B4: FLdZeroAd var_FC
  loc_B895B7: CVarAd
  loc_B895BB: PopAdLdVar
  loc_B895BC: FLdPr Me
  loc_B895BF: MemLdI2 global_92
  loc_B895C2: CI4UI1
  loc_B895C3: FLdPr Me
  loc_B895C6: MemLdStr global_88
  loc_B895C9: AryLock
  loc_B895CC: Ary1LdPr
  loc_B895CD: MemLdRfVar from_stack_1.global_20
  loc_B895D0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B895D5: AryUnlock
  loc_B895D8: FFreeAd var_A8 = ""
  loc_B895DF: FFreeVar var_DC = ""
  loc_B895E6: FLdRfVar var_FC
  loc_B895E9: LitVarStr var_94, "SelladoNope"
  loc_B895EE: PopAdLdVar
  loc_B895EF: FLdRfVar var_CC
  loc_B895F2: FLdRfVar var_A8
  loc_B895F5: FLdPr var_F8
  loc_B895F8: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B895FD: FLdPr var_A8
  loc_B89600:  = Me.Fields
  loc_B89605: FLdPr var_CC
  loc_B89608: from_stack_2 = Me.Item(from_stack_1)
  loc_B8960D: LitI2_Byte 0
  loc_B8960F: LitVar_Missing var_110
  loc_B89612: LitI2_Byte 0
  loc_B89614: FLdZeroAd var_FC
  loc_B89617: CVarAd
  loc_B8961B: PopAdLdVar
  loc_B8961C: FLdPr Me
  loc_B8961F: MemLdI2 global_92
  loc_B89622: CI4UI1
  loc_B89623: FLdPr Me
  loc_B89626: MemLdStr global_88
  loc_B89629: AryLock
  loc_B8962C: Ary1LdPr
  loc_B8962D: MemLdRfVar from_stack_1.global_24
  loc_B89630: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B89635: AryUnlock
  loc_B89638: FFreeAd var_A8 = ""
  loc_B8963F: FFreeVar var_DC = ""
  loc_B89646: FLdRfVar var_FC
  loc_B89649: LitVarStr var_94, "ExpeImpu"
  loc_B8964E: PopAdLdVar
  loc_B8964F: FLdRfVar var_CC
  loc_B89652: FLdRfVar var_A8
  loc_B89655: FLdPr var_F8
  loc_B89658: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B8965D: FLdPr var_A8
  loc_B89660:  = Me.Fields
  loc_B89665: FLdPr var_CC
  loc_B89668: from_stack_2 = Me.Item(from_stack_1)
  loc_B8966D: LitI2_Byte 0
  loc_B8966F: LitVar_Missing var_110
  loc_B89672: LitI2_Byte 0
  loc_B89674: FLdZeroAd var_FC
  loc_B89677: CVarAd
  loc_B8967B: PopAdLdVar
  loc_B8967C: FLdPr Me
  loc_B8967F: MemLdI2 global_92
  loc_B89682: CI4UI1
  loc_B89683: FLdPr Me
  loc_B89686: MemLdStr global_88
  loc_B89689: AryLock
  loc_B8968C: Ary1LdPr
  loc_B8968D: MemLdRfVar from_stack_1.global_28
  loc_B89690: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B89695: AryUnlock
  loc_B89698: FFreeAd var_A8 = ""
  loc_B8969F: FFreeVar var_DC = ""
  loc_B896A6: FLdRfVar var_FC
  loc_B896A9: LitVarStr var_94, "FechNope"
  loc_B896AE: PopAdLdVar
  loc_B896AF: FLdRfVar var_CC
  loc_B896B2: FLdRfVar var_A8
  loc_B896B5: FLdPr var_F8
  loc_B896B8: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B896BD: FLdPr var_A8
  loc_B896C0:  = Me.Fields
  loc_B896C5: FLdPr var_CC
  loc_B896C8: from_stack_2 = Me.Item(from_stack_1)
  loc_B896CD: LitI2_Byte 0
  loc_B896CF: LitVar_Missing var_110
  loc_B896D2: LitI2_Byte 0
  loc_B896D4: FLdZeroAd var_FC
  loc_B896D7: CVarAd
  loc_B896DB: PopAdLdVar
  loc_B896DC: FLdPr Me
  loc_B896DF: MemLdI2 global_92
  loc_B896E2: CI4UI1
  loc_B896E3: FLdPr Me
  loc_B896E6: MemLdStr global_88
  loc_B896E9: AryLock
  loc_B896EC: Ary1LdPr
  loc_B896ED: MemLdRfVar from_stack_1.global_32
  loc_B896F0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B896F5: AryUnlock
  loc_B896F8: FFreeAd var_A8 = ""
  loc_B896FF: FFreeVar var_DC = ""
  loc_B89706: FLdRfVar var_FC
  loc_B89709: LitVarStr var_94, "FeliNope"
  loc_B8970E: PopAdLdVar
  loc_B8970F: FLdRfVar var_CC
  loc_B89712: FLdRfVar var_A8
  loc_B89715: FLdPr var_F8
  loc_B89718: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B8971D: FLdPr var_A8
  loc_B89720:  = Me.Fields
  loc_B89725: FLdPr var_CC
  loc_B89728: from_stack_2 = Me.Item(from_stack_1)
  loc_B8972D: LitI2_Byte 0
  loc_B8972F: LitVar_Missing var_110
  loc_B89732: LitI2_Byte 0
  loc_B89734: FLdZeroAd var_FC
  loc_B89737: CVarAd
  loc_B8973B: PopAdLdVar
  loc_B8973C: FLdPr Me
  loc_B8973F: MemLdI2 global_92
  loc_B89742: CI4UI1
  loc_B89743: FLdPr Me
  loc_B89746: MemLdStr global_88
  loc_B89749: AryLock
  loc_B8974C: Ary1LdPr
  loc_B8974D: MemLdRfVar from_stack_1.global_36
  loc_B89750: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B89755: AryUnlock
  loc_B89758: FFreeAd var_A8 = ""
  loc_B8975F: FFreeVar var_DC = ""
  loc_B89766: FLdRfVar var_FC
  loc_B89769: LitVarStr var_94, "HoliNope"
  loc_B8976E: PopAdLdVar
  loc_B8976F: FLdRfVar var_CC
  loc_B89772: FLdRfVar var_A8
  loc_B89775: FLdPr var_F8
  loc_B89778: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B8977D: FLdPr var_A8
  loc_B89780:  = Me.Fields
  loc_B89785: FLdPr var_CC
  loc_B89788: from_stack_2 = Me.Item(from_stack_1)
  loc_B8978D: LitI2_Byte 0
  loc_B8978F: LitVar_Missing var_110
  loc_B89792: LitI2_Byte 0
  loc_B89794: FLdZeroAd var_FC
  loc_B89797: CVarAd
  loc_B8979B: PopAdLdVar
  loc_B8979C: FLdPr Me
  loc_B8979F: MemLdI2 global_92
  loc_B897A2: CI4UI1
  loc_B897A3: FLdPr Me
  loc_B897A6: MemLdStr global_88
  loc_B897A9: AryLock
  loc_B897AC: Ary1LdPr
  loc_B897AD: MemLdRfVar from_stack_1.global_40
  loc_B897B0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B897B5: AryUnlock
  loc_B897B8: FFreeAd var_A8 = ""
  loc_B897BF: FFreeVar var_DC = ""
  loc_B897C6: FLdRfVar var_FC
  loc_B897C9: LitVarStr var_94, "FeleNope"
  loc_B897CE: PopAdLdVar
  loc_B897CF: FLdRfVar var_CC
  loc_B897D2: FLdRfVar var_A8
  loc_B897D5: FLdPr var_F8
  loc_B897D8: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B897DD: FLdPr var_A8
  loc_B897E0:  = Me.Fields
  loc_B897E5: FLdPr var_CC
  loc_B897E8: from_stack_2 = Me.Item(from_stack_1)
  loc_B897ED: LitI2_Byte 0
  loc_B897EF: LitVar_Missing var_110
  loc_B897F2: LitI2_Byte 0
  loc_B897F4: FLdZeroAd var_FC
  loc_B897F7: CVarAd
  loc_B897FB: PopAdLdVar
  loc_B897FC: FLdPr Me
  loc_B897FF: MemLdI2 global_92
  loc_B89802: CI4UI1
  loc_B89803: FLdPr Me
  loc_B89806: MemLdStr global_88
  loc_B89809: AryLock
  loc_B8980C: Ary1LdPr
  loc_B8980D: MemLdRfVar from_stack_1.global_44
  loc_B89810: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B89815: AryUnlock
  loc_B89818: FFreeAd var_A8 = ""
  loc_B8981F: FFreeVar var_DC = ""
  loc_B89826: FLdRfVar var_FC
  loc_B89829: LitVarStr var_94, "HoleNope"
  loc_B8982E: PopAdLdVar
  loc_B8982F: FLdRfVar var_CC
  loc_B89832: FLdRfVar var_A8
  loc_B89835: FLdPr var_F8
  loc_B89838: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B8983D: FLdPr var_A8
  loc_B89840:  = Me.Fields
  loc_B89845: FLdPr var_CC
  loc_B89848: from_stack_2 = Me.Item(from_stack_1)
  loc_B8984D: LitI2_Byte 0
  loc_B8984F: LitVar_Missing var_110
  loc_B89852: LitI2_Byte 0
  loc_B89854: FLdZeroAd var_FC
  loc_B89857: CVarAd
  loc_B8985B: PopAdLdVar
  loc_B8985C: FLdPr Me
  loc_B8985F: MemLdI2 global_92
  loc_B89862: CI4UI1
  loc_B89863: FLdPr Me
  loc_B89866: MemLdStr global_88
  loc_B89869: AryLock
  loc_B8986C: Ary1LdPr
  loc_B8986D: MemLdRfVar from_stack_1.global_48
  loc_B89870: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B89875: AryUnlock
  loc_B89878: FFreeAd var_A8 = ""
  loc_B8987F: FFreeVar var_DC = ""
  loc_B89886: FLdRfVar var_FC
  loc_B89889: LitVarStr var_94, "FeanNope"
  loc_B8988E: PopAdLdVar
  loc_B8988F: FLdRfVar var_CC
  loc_B89892: FLdRfVar var_A8
  loc_B89895: FLdPr var_F8
  loc_B89898: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B8989D: FLdPr var_A8
  loc_B898A0:  = Me.Fields
  loc_B898A5: FLdPr var_CC
  loc_B898A8: from_stack_2 = Me.Item(from_stack_1)
  loc_B898AD: LitI2_Byte 0
  loc_B898AF: LitVar_Missing var_110
  loc_B898B2: LitI2_Byte 0
  loc_B898B4: FLdZeroAd var_FC
  loc_B898B7: CVarAd
  loc_B898BB: PopAdLdVar
  loc_B898BC: FLdPr Me
  loc_B898BF: MemLdI2 global_92
  loc_B898C2: CI4UI1
  loc_B898C3: FLdPr Me
  loc_B898C6: MemLdStr global_88
  loc_B898C9: AryLock
  loc_B898CC: Ary1LdPr
  loc_B898CD: MemLdRfVar from_stack_1.htmFile
  loc_B898D0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B898D5: AryUnlock
  loc_B898D8: FFreeAd var_A8 = ""
  loc_B898DF: FFreeVar var_DC = ""
  loc_B898E6: FLdRfVar var_FC
  loc_B898E9: LitVarStr var_94, "BajaMoti"
  loc_B898EE: PopAdLdVar
  loc_B898EF: FLdRfVar var_CC
  loc_B898F2: FLdRfVar var_A8
  loc_B898F5: FLdPr var_F8
  loc_B898F8: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B898FD: FLdPr var_A8
  loc_B89900:  = Me.Fields
  loc_B89905: FLdPr var_CC
  loc_B89908: from_stack_2 = Me.Item(from_stack_1)
  loc_B8990D: LitI2_Byte 0
  loc_B8990F: LitVar_Missing var_110
  loc_B89912: LitI2_Byte 0
  loc_B89914: FLdZeroAd var_FC
  loc_B89917: CVarAd
  loc_B8991B: PopAdLdVar
  loc_B8991C: FLdPr Me
  loc_B8991F: MemLdI2 global_92
  loc_B89922: CI4UI1
  loc_B89923: FLdPr Me
  loc_B89926: MemLdStr global_88
  loc_B89929: AryLock
  loc_B8992C: Ary1LdPr
  loc_B8992D: MemLdRfVar from_stack_1.global_56
  loc_B89930: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B89935: AryUnlock
  loc_B89938: FFreeAd var_A8 = ""
  loc_B8993F: FFreeVar var_DC = ""
  loc_B89946: FLdRfVar var_FC
  loc_B89949: LitVarStr var_94, "CodiOrga"
  loc_B8994E: PopAdLdVar
  loc_B8994F: FLdRfVar var_CC
  loc_B89952: FLdRfVar var_A8
  loc_B89955: FLdPr var_F8
  loc_B89958: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B8995D: FLdPr var_A8
  loc_B89960:  = Me.Fields
  loc_B89965: FLdPr var_CC
  loc_B89968: from_stack_2 = Me.Item(from_stack_1)
  loc_B8996D: LitI2_Byte 0
  loc_B8996F: LitVar_Missing var_110
  loc_B89972: LitI2_Byte 0
  loc_B89974: FLdZeroAd var_FC
  loc_B89977: CVarAd
  loc_B8997B: PopAdLdVar
  loc_B8997C: FLdPr Me
  loc_B8997F: MemLdI2 global_92
  loc_B89982: CI4UI1
  loc_B89983: FLdPr Me
  loc_B89986: MemLdStr global_88
  loc_B89989: AryLock
  loc_B8998C: Ary1LdPr
  loc_B8998D: MemLdRfVar from_stack_1.global_60
  loc_B89990: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B89995: AryUnlock
  loc_B89998: FFreeAd var_A8 = ""
  loc_B8999F: FFreeVar var_DC = ""
  loc_B899A6: FLdRfVar var_FC
  loc_B899A9: LitVarStr var_94, "DetaOrga"
  loc_B899AE: PopAdLdVar
  loc_B899AF: FLdRfVar var_CC
  loc_B899B2: FLdRfVar var_A8
  loc_B899B5: FLdPr var_F8
  loc_B899B8: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B899BD: FLdPr var_A8
  loc_B899C0:  = Me.Fields
  loc_B899C5: FLdPr var_CC
  loc_B899C8: from_stack_2 = Me.Item(from_stack_1)
  loc_B899CD: LitI2_Byte 0
  loc_B899CF: LitVar_Missing var_110
  loc_B899D2: LitI2_Byte 0
  loc_B899D4: FLdZeroAd var_FC
  loc_B899D7: CVarAd
  loc_B899DB: PopAdLdVar
  loc_B899DC: FLdPr Me
  loc_B899DF: MemLdI2 global_92
  loc_B899E2: CI4UI1
  loc_B899E3: FLdPr Me
  loc_B899E6: MemLdStr global_88
  loc_B899E9: AryLock
  loc_B899EC: Ary1LdPr
  loc_B899ED: MemLdRfVar from_stack_1.global_64
  loc_B899F0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B899F5: AryUnlock
  loc_B899F8: FFreeAd var_A8 = ""
  loc_B899FF: FFreeVar var_DC = ""
  loc_B89A06: FLdRfVar var_FC
  loc_B89A09: LitVarStr var_94, "AltaUsua"
  loc_B89A0E: PopAdLdVar
  loc_B89A0F: FLdRfVar var_CC
  loc_B89A12: FLdRfVar var_A8
  loc_B89A15: FLdPr var_F8
  loc_B89A18: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B89A1D: FLdPr var_A8
  loc_B89A20:  = Me.Fields
  loc_B89A25: FLdPr var_CC
  loc_B89A28: from_stack_2 = Me.Item(from_stack_1)
  loc_B89A2D: LitI2_Byte 0
  loc_B89A2F: LitVar_Missing var_110
  loc_B89A32: LitI2_Byte 0
  loc_B89A34: FLdZeroAd var_FC
  loc_B89A37: CVarAd
  loc_B89A3B: PopAdLdVar
  loc_B89A3C: FLdPr Me
  loc_B89A3F: MemLdI2 global_92
  loc_B89A42: CI4UI1
  loc_B89A43: FLdPr Me
  loc_B89A46: MemLdStr global_88
  loc_B89A49: AryLock
  loc_B89A4C: Ary1LdPr
  loc_B89A4D: MemLdRfVar from_stack_1.bLogos
  loc_B89A50: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B89A55: AryUnlock
  loc_B89A58: FFreeAd var_A8 = ""
  loc_B89A5F: FFreeVar var_DC = ""
  loc_B89A66: LitNothing
  loc_B89A68: FStAd var_F8 
  loc_B89A6C: FLdRfVar var_AA
  loc_B89A6F: FLdPr Me
  loc_B89A72: VCallAd Control_ID_chkOcultarItc
  loc_B89A75: FStAdFunc var_A8
  loc_B89A78: FLdPr var_A8
  loc_B89A7B:  = Me.Value
  loc_B89A80: FLdI2 var_AA
  loc_B89A83: CI4UI1
  loc_B89A84: LitI4 0
  loc_B89A89: EqI4
  loc_B89A8A: FFree1Ad var_A8
  loc_B89A8D: BranchF loc_B89B0D
  loc_B89A90: LitStr "SELECT CodiItno, itemnota.CodiInsu, DetaInsu, DetaItno, CaraItno, CantItno, IdImpu"
  loc_B89A93: LitStr " FROM itemnota"
  loc_B89A96: ConcatStr
  loc_B89A97: FStStrNoPop var_B0
  loc_B89A9A: LitStr " INNER JOIN infogov.insumo ON insumo.CodiInsu = itemnota.CodiInsu"
  loc_B89A9D: ConcatStr
  loc_B89A9E: FStStrNoPop var_B4
  loc_B89AA1: LitStr " WHERE PeriInfo = "
  loc_B89AA4: ConcatStr
  loc_B89AA5: FStStrNoPop var_BC
  loc_B89AA8: FLdRfVar var_B8
  loc_B89AAB: FLdPr Me
  loc_B89AAE: VCallAd Control_ID_cboPeriodo
  loc_B89AB1: FStAdFunc var_A8
  loc_B89AB4: FLdPr var_A8
  loc_B89AB7:  = Me.Text
  loc_B89ABC: ILdRf var_B8
  loc_B89ABF: ConcatStr
  loc_B89AC0: FStStrNoPop var_C0
  loc_B89AC3: LitStr " AND CodiNope = "
  loc_B89AC6: ConcatStr
  loc_B89AC7: FStStrNoPop var_C4
  loc_B89ACA: FLdPr Me
  loc_B89ACD: MemLdI2 global_92
  loc_B89AD0: CI4UI1
  loc_B89AD1: FLdPr Me
  loc_B89AD4: MemLdStr global_88
  loc_B89AD7: Ary1LdPr
  loc_B89AD8: MemLdStr global_0
  loc_B89ADB: ConcatStr
  loc_B89ADC: FStStrNoPop var_C8
  loc_B89ADF: LitStr " ORDER BY CodiItno;"
  loc_B89AE2: ConcatStr
  loc_B89AE3: FStStrNoPop var_E0
  loc_B89AE6: FLdPr Me
  loc_B89AE9: MemLdRfVar from_stack_1.global_80
  loc_B89AEC: NewIfNullPr clsbase
  loc_B89AEF: Call clsbase.RedefineRS(from_stack_1v)
  loc_B89AF4: FFreeStr var_B0 = "": var_B4 = "": var_BC = "": var_B8 = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B89B07: FFree1Ad var_A8
  loc_B89B0A: Branch loc_B89BA2
  loc_B89B0D: LitStr "SELECT CodiItno, itn.CodiInsu, DetaInsu, DetaItno, CaraItno, CantItno, itn.IdImpu"
  loc_B89B10: LitStr " FROM itemnota itn"
  loc_B89B13: ConcatStr
  loc_B89B14: FStStrNoPop var_B0
  loc_B89B17: LitStr " INNER JOIN infogov.insumo i ON i.CodiInsu = itn.CodiInsu"
  loc_B89B1A: ConcatStr
  loc_B89B1B: FStStrNoPop var_B4
  loc_B89B1E: LitStr " LEFT JOIN itemcompra itc ON itc.PeriInfo = itn.PeriInfo AND itc.CodiOrco = (SELECT CodiOrco FROM ordencompra oc WHERE oc.PeriInfo = itn.PeriInfo AND oc.CodiNope = itn.CodiNope AND oc.FeanOrco IS NULL)"
  loc_B89B21: ConcatStr
  loc_B89B22: FStStrNoPop var_B8
  loc_B89B25: LitStr " AND itc.CodiItco = itn.CodiItno"
  loc_B89B28: ConcatStr
  loc_B89B29: FStStrNoPop var_BC
  loc_B89B2C: LitStr " WHERE itn.PeriInfo = "
  loc_B89B2F: ConcatStr
  loc_B89B30: FStStrNoPop var_C4
  loc_B89B33: FLdRfVar var_C0
  loc_B89B36: FLdPr Me
  loc_B89B39: VCallAd Control_ID_cboPeriodo
  loc_B89B3C: FStAdFunc var_A8
  loc_B89B3F: FLdPr var_A8
  loc_B89B42:  = Me.Text
  loc_B89B47: ILdRf var_C0
  loc_B89B4A: ConcatStr
  loc_B89B4B: FStStrNoPop var_C8
  loc_B89B4E: LitStr " AND CodiNope = "
  loc_B89B51: ConcatStr
  loc_B89B52: FStStrNoPop var_E0
  loc_B89B55: FLdPr Me
  loc_B89B58: MemLdI2 global_92
  loc_B89B5B: CI4UI1
  loc_B89B5C: FLdPr Me
  loc_B89B5F: MemLdStr global_88
  loc_B89B62: Ary1LdPr
  loc_B89B63: MemLdStr global_0
  loc_B89B66: ConcatStr
  loc_B89B67: FStStrNoPop var_E4
  loc_B89B6A: LitStr " AND itc.PeriInfo IS NULL"
  loc_B89B6D: ConcatStr
  loc_B89B6E: FStStrNoPop var_E8
  loc_B89B71: LitStr " ORDER BY CodiItno;"
  loc_B89B74: ConcatStr
  loc_B89B75: FStStrNoPop var_EC
  loc_B89B78: FLdPr Me
  loc_B89B7B: MemLdRfVar from_stack_1.global_80
  loc_B89B7E: NewIfNullPr clsbase
  loc_B89B81: Call clsbase.RedefineRS(from_stack_1v)
  loc_B89B86: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C4 = "": var_C0 = "": var_C8 = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_B89B9F: FFree1Ad var_A8
  loc_B89BA2: FLdRfVar var_AA
  loc_B89BA5: FLdPr Me
  loc_B89BA8: VCallAd Control_ID_chkAgrupar
  loc_B89BAB: FStAdFunc var_A8
  loc_B89BAE: FLdPr var_A8
  loc_B89BB1:  = Me.Value
  loc_B89BB6: FLdI2 var_AA
  loc_B89BB9: CI4UI1
  loc_B89BBA: LitI4 0
  loc_B89BBF: EqI4
  loc_B89BC0: FFree1Ad var_A8
  loc_B89BC3: BranchF loc_B89F81
  loc_B89BC6: FLdRfVar var_F0
  loc_B89BC9: FLdPr Me
  loc_B89BCC: MemLdRfVar from_stack_1.global_80
  loc_B89BCF: NewIfNullPr clsbase
  loc_B89BD2: from_stack_1 = clsbase.RecordCount
  loc_B89BD7: LitI4 0
  loc_B89BDC: ILdRf var_F0
  loc_B89BDF: FLdPr Me
  loc_B89BE2: MemLdI2 global_92
  loc_B89BE5: CI4UI1
  loc_B89BE6: FLdPr Me
  loc_B89BE9: MemLdStr global_88
  loc_B89BEC: Ary1LdPr
  loc_B89BED: MemLdRfVar from_stack_1.global_72
  loc_B89BF0: Redim
  loc_B89BFA: FLdPr Me
  loc_B89BFD: MemLdRfVar from_stack_1.global_80
  loc_B89C00: NewIfNullPr clsbase
  loc_B89C03: Call clsbase.MoveFirst()
  loc_B89C08: LitI2_Byte 1
  loc_B89C0A: FLdPr Me
  loc_B89C0D: MemLdRfVar from_stack_1.global_94
  loc_B89C10: FLdPr Me
  loc_B89C13: MemLdI2 global_92
  loc_B89C16: CI4UI1
  loc_B89C17: FLdPr Me
  loc_B89C1A: MemLdStr global_88
  loc_B89C1D: Ary1LdPr
  loc_B89C1E: MemLdStr global_72
  loc_B89C21: LitI2_Byte 1
  loc_B89C23: FnUBound
  loc_B89C25: CI2I4
  loc_B89C26: ForI2 var_114
  loc_B89C2C: FLdPr Me
  loc_B89C2F: MemLdRfVar from_stack_1.global_80
  loc_B89C32: NewIfNullAd
  loc_B89C35: FStAd var_118 
  loc_B89C39: FLdRfVar var_174
  loc_B89C3C: FLdRfVar var_FC
  loc_B89C3F: LitVarStr var_94, "CodiItno"
  loc_B89C44: PopAdLdVar
  loc_B89C45: FLdRfVar var_CC
  loc_B89C48: FLdRfVar var_A8
  loc_B89C4B: FLdPr var_118
  loc_B89C4E: from_stack_1v = clsbase.RsFrmGet()
  loc_B89C53: FLdPr var_A8
  loc_B89C56:  = Me.Fields
  loc_B89C5B: FLdPr var_CC
  loc_B89C5E: from_stack_2 = Me.Item(from_stack_1)
  loc_B89C63: FLdPr var_FC
  loc_B89C66:  = Me.Value
  loc_B89C6B: FLdRfVar var_DC
  loc_B89C6E: FLdRfVar var_124
  loc_B89C71: LitVarStr var_A4, "IdImpu"
  loc_B89C76: PopAdLdVar
  loc_B89C77: FLdRfVar var_120
  loc_B89C7A: FLdRfVar var_11C
  loc_B89C7D: FLdPr var_118
  loc_B89C80: from_stack_1v = clsbase.RsFrmGet()
  loc_B89C85: FLdPr var_11C
  loc_B89C88:  = Me.Fields
  loc_B89C8D: FLdPr var_120
  loc_B89C90: from_stack_2 = Me.Item(from_stack_1)
  loc_B89C95: FLdPr var_124
  loc_B89C98:  = Me.Value
  loc_B89C9D: LitVarStr var_144, vbNullString
  loc_B89CA2: FStVarCopyObj var_154
  loc_B89CA5: FLdRfVar var_154
  loc_B89CA8: LitStr "<br>"
  loc_B89CAB: LitStr "S/Prev."
  loc_B89CAE: ConcatStr
  loc_B89CAF: CVarStr var_110
  loc_B89CB2: FLdRfVar var_DC
  loc_B89CB5: FnCLngVar
  loc_B89CB7: LitI4 0
  loc_B89CBC: EqI4
  loc_B89CBD: CVarBoolI2 var_134
  loc_B89CC1: FLdRfVar var_164
  loc_B89CC4: ImpAdCallFPR4  = IIf(, , )
  loc_B89CC9: LitI2_Byte 0
  loc_B89CCB: LitVar_Missing var_1A8
  loc_B89CCE: LitI2_Byte 0
  loc_B89CD0: FLdRfVar var_174
  loc_B89CD3: FLdRfVar var_164
  loc_B89CD6: ConcatVar var_184
  loc_B89CDA: PopAdLdVar
  loc_B89CDB: FLdPr Me
  loc_B89CDE: MemLdI2 global_94
  loc_B89CE1: CI4UI1
  loc_B89CE2: FLdPr Me
  loc_B89CE5: MemLdI2 global_92
  loc_B89CE8: CI4UI1
  loc_B89CE9: FLdPr Me
  loc_B89CEC: MemLdStr global_88
  loc_B89CEF: AryLock
  loc_B89CF2: Ary1LdPr
  loc_B89CF3: MemLdStr global_72
  loc_B89CF6: AryLock
  loc_B89CF9: Ary1LdPr
  loc_B89CFA: MemLdRfVar from_stack_1.global_0
  loc_B89CFD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B89D02: AryUnlock
  loc_B89D05: AryUnlock
  loc_B89D08: FFreeAd var_A8 = "": var_CC = "": var_11C = "": var_120 = "": var_124 = ""
  loc_B89D17: FFreeVar var_DC = "": var_134 = "": var_110 = "": var_154 = "": var_174 = "": var_164 = "": var_184 = ""
  loc_B89D2A: FLdRfVar var_FC
  loc_B89D2D: LitVarStr var_94, "CodiInsu"
  loc_B89D32: PopAdLdVar
  loc_B89D33: FLdRfVar var_CC
  loc_B89D36: FLdRfVar var_A8
  loc_B89D39: FLdPr var_118
  loc_B89D3C: from_stack_1v = clsbase.RsFrmGet()
  loc_B89D41: FLdPr var_A8
  loc_B89D44:  = Me.Fields
  loc_B89D49: FLdPr var_CC
  loc_B89D4C: from_stack_2 = Me.Item(from_stack_1)
  loc_B89D51: LitI2_Byte 0
  loc_B89D53: LitVar_Missing var_110
  loc_B89D56: LitI2_Byte 0
  loc_B89D58: FLdZeroAd var_FC
  loc_B89D5B: CVarAd
  loc_B89D5F: PopAdLdVar
  loc_B89D60: FLdPr Me
  loc_B89D63: MemLdI2 global_94
  loc_B89D66: CI4UI1
  loc_B89D67: FLdPr Me
  loc_B89D6A: MemLdI2 global_92
  loc_B89D6D: CI4UI1
  loc_B89D6E: FLdPr Me
  loc_B89D71: MemLdStr global_88
  loc_B89D74: AryLock
  loc_B89D77: Ary1LdPr
  loc_B89D78: MemLdStr global_72
  loc_B89D7B: AryLock
  loc_B89D7E: Ary1LdPr
  loc_B89D7F: MemLdRfVar from_stack_1.global_4
  loc_B89D82: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B89D87: AryUnlock
  loc_B89D8A: AryUnlock
  loc_B89D8D: FFreeAd var_A8 = ""
  loc_B89D94: FFreeVar var_DC = ""
  loc_B89D9B: FLdRfVar var_FC
  loc_B89D9E: LitVarStr var_94, "DetaInsu"
  loc_B89DA3: PopAdLdVar
  loc_B89DA4: FLdRfVar var_CC
  loc_B89DA7: FLdRfVar var_A8
  loc_B89DAA: FLdPr var_118
  loc_B89DAD: from_stack_1v = clsbase.RsFrmGet()
  loc_B89DB2: FLdPr var_A8
  loc_B89DB5:  = Me.Fields
  loc_B89DBA: FLdPr var_CC
  loc_B89DBD: from_stack_2 = Me.Item(from_stack_1)
  loc_B89DC2: LitI2_Byte 0
  loc_B89DC4: LitVar_Missing var_110
  loc_B89DC7: LitI2_Byte 0
  loc_B89DC9: FLdZeroAd var_FC
  loc_B89DCC: CVarAd
  loc_B89DD0: PopAdLdVar
  loc_B89DD1: FLdPr Me
  loc_B89DD4: MemLdI2 global_94
  loc_B89DD7: CI4UI1
  loc_B89DD8: FLdPr Me
  loc_B89DDB: MemLdI2 global_92
  loc_B89DDE: CI4UI1
  loc_B89DDF: FLdPr Me
  loc_B89DE2: MemLdStr global_88
  loc_B89DE5: AryLock
  loc_B89DE8: Ary1LdPr
  loc_B89DE9: MemLdStr global_72
  loc_B89DEC: AryLock
  loc_B89DEF: Ary1LdPr
  loc_B89DF0: MemLdRfVar from_stack_1.global_8
  loc_B89DF3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B89DF8: AryUnlock
  loc_B89DFB: AryUnlock
  loc_B89DFE: FFreeAd var_A8 = ""
  loc_B89E05: FFreeVar var_DC = ""
  loc_B89E0C: FLdRfVar var_FC
  loc_B89E0F: LitVarStr var_94, "DetaItno"
  loc_B89E14: PopAdLdVar
  loc_B89E15: FLdRfVar var_CC
  loc_B89E18: FLdRfVar var_A8
  loc_B89E1B: FLdPr var_118
  loc_B89E1E: from_stack_1v = clsbase.RsFrmGet()
  loc_B89E23: FLdPr var_A8
  loc_B89E26:  = Me.Fields
  loc_B89E2B: FLdPr var_CC
  loc_B89E2E: from_stack_2 = Me.Item(from_stack_1)
  loc_B89E33: LitI2_Byte 0
  loc_B89E35: LitVar_Missing var_110
  loc_B89E38: LitI2_Byte 0
  loc_B89E3A: FLdZeroAd var_FC
  loc_B89E3D: CVarAd
  loc_B89E41: PopAdLdVar
  loc_B89E42: FLdPr Me
  loc_B89E45: MemLdI2 global_94
  loc_B89E48: CI4UI1
  loc_B89E49: FLdPr Me
  loc_B89E4C: MemLdI2 global_92
  loc_B89E4F: CI4UI1
  loc_B89E50: FLdPr Me
  loc_B89E53: MemLdStr global_88
  loc_B89E56: AryLock
  loc_B89E59: Ary1LdPr
  loc_B89E5A: MemLdStr global_72
  loc_B89E5D: AryLock
  loc_B89E60: Ary1LdPr
  loc_B89E61: MemLdRfVar from_stack_1.global_12
  loc_B89E64: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B89E69: AryUnlock
  loc_B89E6C: AryUnlock
  loc_B89E6F: FFreeAd var_A8 = ""
  loc_B89E76: FFreeVar var_DC = ""
  loc_B89E7D: FLdRfVar var_FC
  loc_B89E80: LitVarStr var_94, "CaraItno"
  loc_B89E85: PopAdLdVar
  loc_B89E86: FLdRfVar var_CC
  loc_B89E89: FLdRfVar var_A8
  loc_B89E8C: FLdPr var_118
  loc_B89E8F: from_stack_1v = clsbase.RsFrmGet()
  loc_B89E94: FLdPr var_A8
  loc_B89E97:  = Me.Fields
  loc_B89E9C: FLdPr var_CC
  loc_B89E9F: from_stack_2 = Me.Item(from_stack_1)
  loc_B89EA4: LitI2_Byte 0
  loc_B89EA6: LitVar_Missing var_110
  loc_B89EA9: LitI2_Byte 0
  loc_B89EAB: FLdZeroAd var_FC
  loc_B89EAE: CVarAd
  loc_B89EB2: PopAdLdVar
  loc_B89EB3: FLdPr Me
  loc_B89EB6: MemLdI2 global_94
  loc_B89EB9: CI4UI1
  loc_B89EBA: FLdPr Me
  loc_B89EBD: MemLdI2 global_92
  loc_B89EC0: CI4UI1
  loc_B89EC1: FLdPr Me
  loc_B89EC4: MemLdStr global_88
  loc_B89EC7: AryLock
  loc_B89ECA: Ary1LdPr
  loc_B89ECB: MemLdStr global_72
  loc_B89ECE: AryLock
  loc_B89ED1: Ary1LdPr
  loc_B89ED2: MemLdRfVar from_stack_1.global_16
  loc_B89ED5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B89EDA: AryUnlock
  loc_B89EDD: AryUnlock
  loc_B89EE0: FFreeAd var_A8 = ""
  loc_B89EE7: FFreeVar var_DC = ""
  loc_B89EEE: FLdRfVar var_FC
  loc_B89EF1: LitVarStr var_94, "CantItno"
  loc_B89EF6: PopAdLdVar
  loc_B89EF7: FLdRfVar var_CC
  loc_B89EFA: FLdRfVar var_A8
  loc_B89EFD: FLdPr var_118
  loc_B89F00: from_stack_1v = clsbase.RsFrmGet()
  loc_B89F05: FLdPr var_A8
  loc_B89F08:  = Me.Fields
  loc_B89F0D: FLdPr var_CC
  loc_B89F10: from_stack_2 = Me.Item(from_stack_1)
  loc_B89F15: LitI2_Byte 0
  loc_B89F17: LitVar_Missing var_110
  loc_B89F1A: LitI2_Byte 0
  loc_B89F1C: FLdZeroAd var_FC
  loc_B89F1F: CVarAd
  loc_B89F23: PopAdLdVar
  loc_B89F24: FLdPr Me
  loc_B89F27: MemLdI2 global_94
  loc_B89F2A: CI4UI1
  loc_B89F2B: FLdPr Me
  loc_B89F2E: MemLdI2 global_92
  loc_B89F31: CI4UI1
  loc_B89F32: FLdPr Me
  loc_B89F35: MemLdStr global_88
  loc_B89F38: AryLock
  loc_B89F3B: Ary1LdPr
  loc_B89F3C: MemLdStr global_72
  loc_B89F3F: AryLock
  loc_B89F42: Ary1LdPr
  loc_B89F43: MemLdRfVar from_stack_1.global_20
  loc_B89F46: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B89F4B: AryUnlock
  loc_B89F4E: AryUnlock
  loc_B89F51: FFreeAd var_A8 = ""
  loc_B89F58: FFreeVar var_DC = ""
  loc_B89F5F: LitNothing
  loc_B89F61: FStAd var_118 
  loc_B89F65: FLdPr Me
  loc_B89F68: MemLdRfVar from_stack_1.global_80
  loc_B89F6B: NewIfNullPr clsbase
  loc_B89F6E: Call clsbase.MoveSiguiente()
  loc_B89F73: FLdPr Me
  loc_B89F76: MemLdRfVar from_stack_1.global_94
  loc_B89F79: NextI2 var_114, loc_B89C2C
  loc_B89F7E: Branch loc_B89FDE
  loc_B89F81: FLdPr Me
  loc_B89F84: MemLdRfVar from_stack_1.global_80
  loc_B89F87: NewIfNullPr clsbase
  loc_B89F8A: Call clsbase.MoveFirst()
  loc_B89F8F: LitI2_Byte 0
  loc_B89F91: FLdPr Me
  loc_B89F94: MemStI2 global_94
  loc_B89F97: Call Proc_238_24_A5D418()
  loc_B89F9C: FLdRfVar var_AA
  loc_B89F9F: FLdPr Me
  loc_B89FA2: MemLdRfVar from_stack_1.global_80
  loc_B89FA5: NewIfNullPr clsbase
  loc_B89FA8: from_stack_1 = clsbase.EOF
  loc_B89FAD: FLdI2 var_AA
  loc_B89FB0: NotI4
  loc_B89FB1: BranchF loc_B89FDE
  loc_B89FB4: FLdRfVar var_AA
  loc_B89FB7: Call Proc_238_23_A1FDE4()
  loc_B89FBC: FLdI2 var_AA
  loc_B89FBF: FStI2 var_1AA
  loc_B89FC2: FLdI2 var_1AA
  loc_B89FC5: LitI2_Byte 0
  loc_B89FC7: GtI2
  loc_B89FC8: BranchF loc_B89FD6
  loc_B89FCB: FLdI2 var_1AA
  loc_B89FCE: Call Proc_238_25_9E5010()
  loc_B89FD3: Branch loc_B89FDB
  loc_B89FD6: Call Proc_238_24_A5D418()
  loc_B89FDB: Branch loc_B89F9C
  loc_B89FDE: FLdPr Me
  loc_B89FE1: MemLdRfVar from_stack_1.global_76
  loc_B89FE4: NewIfNullPr clsnotapedido
  loc_B89FE7: Call clsnotapedido.MoveSiguiente()
  loc_B89FEC: FLdPr Me
  loc_B89FEF: MemLdRfVar from_stack_1.global_92
  loc_B89FF2: NextI2 var_F4, loc_B89399
  loc_B89FF7: LitI2_Byte &HFF
  loc_B89FF9: FLdPr Me
  loc_B89FFC: MemStI2 bGenerado
  loc_B89FFF: LitI4 0
  loc_B8A004: CI2I4
  loc_B8A005: FLdPr Me
  loc_B8A008: Me.MousePointer = from_stack_1
  loc_B8A00D: LitVarStr var_94, vbNullString
  loc_B8A012: PopAdLdVar
  loc_B8A013: FLdPr Me
  loc_B8A016: VCallAd Control_ID_statusBar
  loc_B8A019: FStAdFunc var_A8
  loc_B8A01C: FLdPr var_A8
  loc_B8A01F: LateIdSt
  loc_B8A024: FFree1Ad var_A8
  loc_B8A027: ExitProcHresult
End Sub

Public Sub GeneraXLS() '94FD14
  'Data Table: 473C5C
  loc_94FCFC: LitI2_Byte 0
  loc_94FCFE: FLdPr Me
  loc_94FD01: MemStI2 bLogos
  loc_94FD04: Call GeneraHTML()
  loc_94FD09: LitI2_Byte &HFF
  loc_94FD0B: FLdPr Me
  loc_94FD0E: MemStI2 bLogos
  loc_94FD11: ExitProcHresult
  loc_94FD12: Branch loc_95E0FC
End Sub

Public Sub GeneraHTML() '9BDC8C
  'Data Table: 473C5C
  loc_9BDBC0: FLdRfVar var_88
  loc_9BDBC3: LitI2_Byte 0
  loc_9BDBC5: LitI2_Byte &HFF
  loc_9BDBC7: ImpAdLdI4 MemVar_C3D83C
  loc_9BDBCA: FLdPr Me
  loc_9BDBCD: MemLdRfVar from_stack_1.global_84
  loc_9BDBD0: NewIfNullPr IFileSystem3
  loc_9BDBD3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_9BDBD8: ILdRf var_88
  loc_9BDBDB: FLdPr Me
  loc_9BDBDE: MemStVarAd
  loc_9BDBE2: FFree1Ad var_88
  loc_9BDBE5: Call Proc_238_26_9BAD2C()
  loc_9BDBEA: LitI2_Byte 1
  loc_9BDBEC: FLdPr Me
  loc_9BDBEF: MemLdRfVar from_stack_1.global_92
  loc_9BDBF2: FLdPr Me
  loc_9BDBF5: MemLdStr global_88
  loc_9BDBF8: LitI2_Byte 1
  loc_9BDBFA: FnUBound
  loc_9BDBFC: CI2I4
  loc_9BDBFD: ForI2 var_8C
  loc_9BDC03: FLdRfVar var_8E
  loc_9BDC06: FLdPr Me
  loc_9BDC09: VCallAd Control_ID_chkHojasSeparadas
  loc_9BDC0C: FStAdFunc var_88
  loc_9BDC0F: FLdPr var_88
  loc_9BDC12:  = Me.Value
  loc_9BDC17: FLdI2 var_8E
  loc_9BDC1A: CI4UI1
  loc_9BDC1B: LitI4 1
  loc_9BDC20: EqI4
  loc_9BDC21: FFree1Ad var_88
  loc_9BDC24: BranchF loc_9BDC4F
  loc_9BDC27: FLdPr Me
  loc_9BDC2A: MemLdI2 global_92
  loc_9BDC2D: LitI2_Byte 1
  loc_9BDC2F: NeI2
  loc_9BDC30: BranchF loc_9BDC47
  loc_9BDC33: LitVarStr var_A0, "<div style=""page-break-before:always""></div>"
  loc_9BDC38: PopAdLdVar
  loc_9BDC39: FLdPr Me
  loc_9BDC3C: MemLdRfVar from_stack_1.htmFile
  loc_9BDC3F: LdPrVar
  loc_9BDC41: LateMemCall
  loc_9BDC47: Call Proc_238_27_A9C170()
  loc_9BDC4C: Branch loc_9BDC60
  loc_9BDC4F: FLdPr Me
  loc_9BDC52: MemLdI2 global_92
  loc_9BDC55: LitI2_Byte 1
  loc_9BDC57: EqI2
  loc_9BDC58: BranchF loc_9BDC60
  loc_9BDC5B: Call Proc_238_27_A9C170()
  loc_9BDC60: Call Proc_238_28_BA09C8()
  loc_9BDC65: FLdPr Me
  loc_9BDC68: MemLdRfVar from_stack_1.global_92
  loc_9BDC6B: NextI2 var_8C, loc_9BDC03
  loc_9BDC70: Call Proc_238_29_972E24()
  loc_9BDC75: FLdPr Me
  loc_9BDC78: MemLdRfVar from_stack_1.htmFile
  loc_9BDC7B: LdPrVar
  loc_9BDC7D: LateMemCall
  loc_9BDC83: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_9BDC88: ExitProcHresult
  loc_9BDC89: ImpAdLdI2 MemVar_0
End Sub

Private Function Proc_238_23_A1FDE4() 'A1FDE4
  'Data Table: 473C5C
  loc_A1FC74: LitI2_Byte 1
  loc_A1FC76: FLdRfVar var_88
  loc_A1FC79: FLdPr Me
  loc_A1FC7C: MemLdI2 global_92
  loc_A1FC7F: CI4UI1
  loc_A1FC80: FLdPr Me
  loc_A1FC83: MemLdStr global_88
  loc_A1FC86: Ary1LdPr
  loc_A1FC87: MemLdStr global_72
  loc_A1FC8A: LitI2_Byte 1
  loc_A1FC8C: FnUBound
  loc_A1FC8E: CI2I4
  loc_A1FC8F: ForI2 var_8C
  loc_A1FC95: FLdI2 var_88
  loc_A1FC98: CI4UI1
  loc_A1FC99: FLdPr Me
  loc_A1FC9C: MemLdI2 global_92
  loc_A1FC9F: CI4UI1
  loc_A1FCA0: FLdPr Me
  loc_A1FCA3: MemLdStr global_88
  loc_A1FCA6: AryLock
  loc_A1FCA9: Ary1LdPr
  loc_A1FCAA: MemLdStr global_72
  loc_A1FCAD: AryLock
  loc_A1FCB0: Ary1LdRf
  loc_A1FCB1: FStR4 var_98
  loc_A1FCB4: FMemLdR4 var_98(4)
  loc_A1FCB9: CI2Str
  loc_A1FCBB: CVarI2 var_D4
  loc_A1FCBE: HardType
  loc_A1FCBF: FLdRfVar var_C4
  loc_A1FCC2: FLdRfVar var_B4
  loc_A1FCC5: LitVarStr var_B0, "CodiInsu"
  loc_A1FCCA: PopAdLdVar
  loc_A1FCCB: FLdRfVar var_A0
  loc_A1FCCE: FLdRfVar var_9C
  loc_A1FCD1: FLdPr Me
  loc_A1FCD4: MemLdRfVar from_stack_1.global_80
  loc_A1FCD7: NewIfNullPr clsbase
  loc_A1FCDA: from_stack_1v = clsbase.RsFrmGet()
  loc_A1FCDF: FLdPr var_9C
  loc_A1FCE2:  = Me.Fields
  loc_A1FCE7: FLdPr var_A0
  loc_A1FCEA: from_stack_2 = Me.Item(from_stack_1)
  loc_A1FCEF: FLdPr var_B4
  loc_A1FCF2:  = Me.Value
  loc_A1FCF7: FLdRfVar var_C4
  loc_A1FCFA: EqVar var_E4
  loc_A1FCFE: FMemLdR4 var_98(12)
  loc_A1FD03: CVarStr var_120
  loc_A1FD06: HardType
  loc_A1FD07: FLdRfVar var_110
  loc_A1FD0A: FLdRfVar var_100
  loc_A1FD0D: LitVarStr var_FC, "DetaItno"
  loc_A1FD12: PopAdLdVar
  loc_A1FD13: FLdRfVar var_EC
  loc_A1FD16: FLdRfVar var_E8
  loc_A1FD19: FLdPr Me
  loc_A1FD1C: MemLdRfVar from_stack_1.global_80
  loc_A1FD1F: NewIfNullPr clsbase
  loc_A1FD22: from_stack_1v = clsbase.RsFrmGet()
  loc_A1FD27: FLdPr var_E8
  loc_A1FD2A:  = Me.Fields
  loc_A1FD2F: FLdPr var_EC
  loc_A1FD32: from_stack_2 = Me.Item(from_stack_1)
  loc_A1FD37: FLdPr var_100
  loc_A1FD3A:  = Me.Value
  loc_A1FD3F: FLdRfVar var_110
  loc_A1FD42: EqVar var_130
  loc_A1FD46: AndVar var_140
  loc_A1FD4A: FMemLdR4 var_98(16)
  loc_A1FD4F: CVarStr var_17C
  loc_A1FD52: HardType
  loc_A1FD53: FLdRfVar var_16C
  loc_A1FD56: FLdRfVar var_15C
  loc_A1FD59: LitVarStr var_158, "CaraItno"
  loc_A1FD5E: PopAdLdVar
  loc_A1FD5F: FLdRfVar var_148
  loc_A1FD62: FLdRfVar var_144
  loc_A1FD65: FLdPr Me
  loc_A1FD68: MemLdRfVar from_stack_1.global_80
  loc_A1FD6B: NewIfNullPr clsbase
  loc_A1FD6E: from_stack_1v = clsbase.RsFrmGet()
  loc_A1FD73: FLdPr var_144
  loc_A1FD76:  = Me.Fields
  loc_A1FD7B: FLdPr var_148
  loc_A1FD7E: from_stack_2 = Me.Item(from_stack_1)
  loc_A1FD83: FLdPr var_15C
  loc_A1FD86:  = Me.Value
  loc_A1FD8B: FLdRfVar var_16C
  loc_A1FD8E: EqVar var_18C
  loc_A1FD92: AndVar var_19C
  loc_A1FD96: CBoolVarNull
  loc_A1FD98: FFreeAd var_9C = "": var_A0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_100 = "": var_144 = "": var_148 = ""
  loc_A1FDAD: FFreeVar var_C4 = "": var_110 = ""
  loc_A1FDB6: BranchF loc_A1FDC5
  loc_A1FDB9: FLdI2 var_88
  loc_A1FDBC: FStI2 var_86
  loc_A1FDBF: ExitProcCbHresult
  loc_A1FDC5: LitI4 0
  loc_A1FDCA: FStR4 var_98
  loc_A1FDCD: AryUnlock
  loc_A1FDD0: AryUnlock
  loc_A1FDD3: FLdRfVar var_88
  loc_A1FDD6: NextI2 var_8C, loc_A1FC95
  loc_A1FDDB: ExitProcCbHresult
End Function

Private Function Proc_238_24_A5D418() 'A5D418
  'Data Table: 473C5C
  loc_A5D118: FLdPr Me
  loc_A5D11B: MemLdI2 global_94
  loc_A5D11E: LitI2_Byte 1
  loc_A5D120: AddI2
  loc_A5D121: FLdPr Me
  loc_A5D124: MemStI2 global_94
  loc_A5D127: LitI4 0
  loc_A5D12C: FLdPr Me
  loc_A5D12F: MemLdI2 global_94
  loc_A5D132: CI4UI1
  loc_A5D133: FLdPr Me
  loc_A5D136: MemLdI2 global_92
  loc_A5D139: CI4UI1
  loc_A5D13A: FLdPr Me
  loc_A5D13D: MemLdStr global_88
  loc_A5D140: Ary1LdPr
  loc_A5D141: MemLdRfVar from_stack_1.global_72
  loc_A5D144: RedimPreserve
  loc_A5D14E: FLdPr Me
  loc_A5D151: MemLdRfVar from_stack_1.global_80
  loc_A5D154: NewIfNullAd
  loc_A5D157: FStAd var_88 
  loc_A5D15B: FLdRfVar var_A4
  loc_A5D15E: LitVarStr var_A0, "CodiItno"
  loc_A5D163: PopAdLdVar
  loc_A5D164: FLdRfVar var_90
  loc_A5D167: FLdRfVar var_8C
  loc_A5D16A: FLdPr var_88
  loc_A5D16D: from_stack_1v = clsbase.RsFrmGet()
  loc_A5D172: FLdPr var_8C
  loc_A5D175:  = Me.Fields
  loc_A5D17A: FLdPr var_90
  loc_A5D17D: from_stack_2 = Me.Item(from_stack_1)
  loc_A5D182: LitI2_Byte 0
  loc_A5D184: LitVar_Missing var_DC
  loc_A5D187: LitI2_Byte 0
  loc_A5D189: FLdZeroAd var_A4
  loc_A5D18C: CVarAd
  loc_A5D190: PopAdLdVar
  loc_A5D191: FLdPr Me
  loc_A5D194: MemLdI2 global_94
  loc_A5D197: CI4UI1
  loc_A5D198: FLdPr Me
  loc_A5D19B: MemLdI2 global_92
  loc_A5D19E: CI4UI1
  loc_A5D19F: FLdPr Me
  loc_A5D1A2: MemLdStr global_88
  loc_A5D1A5: AryLock
  loc_A5D1A8: Ary1LdPr
  loc_A5D1A9: MemLdStr global_72
  loc_A5D1AC: AryLock
  loc_A5D1AF: Ary1LdPr
  loc_A5D1B0: MemLdRfVar from_stack_1.global_0
  loc_A5D1B3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5D1B8: AryUnlock
  loc_A5D1BB: AryUnlock
  loc_A5D1BE: FFreeAd var_8C = ""
  loc_A5D1C5: FFreeVar var_BC = ""
  loc_A5D1CC: FLdRfVar var_A4
  loc_A5D1CF: LitVarStr var_A0, "CodiInsu"
  loc_A5D1D4: PopAdLdVar
  loc_A5D1D5: FLdRfVar var_90
  loc_A5D1D8: FLdRfVar var_8C
  loc_A5D1DB: FLdPr var_88
  loc_A5D1DE: from_stack_1v = clsbase.RsFrmGet()
  loc_A5D1E3: FLdPr var_8C
  loc_A5D1E6:  = Me.Fields
  loc_A5D1EB: FLdPr var_90
  loc_A5D1EE: from_stack_2 = Me.Item(from_stack_1)
  loc_A5D1F3: LitI2_Byte 0
  loc_A5D1F5: LitVar_Missing var_DC
  loc_A5D1F8: LitI2_Byte 0
  loc_A5D1FA: FLdZeroAd var_A4
  loc_A5D1FD: CVarAd
  loc_A5D201: PopAdLdVar
  loc_A5D202: FLdPr Me
  loc_A5D205: MemLdI2 global_94
  loc_A5D208: CI4UI1
  loc_A5D209: FLdPr Me
  loc_A5D20C: MemLdI2 global_92
  loc_A5D20F: CI4UI1
  loc_A5D210: FLdPr Me
  loc_A5D213: MemLdStr global_88
  loc_A5D216: AryLock
  loc_A5D219: Ary1LdPr
  loc_A5D21A: MemLdStr global_72
  loc_A5D21D: AryLock
  loc_A5D220: Ary1LdPr
  loc_A5D221: MemLdRfVar from_stack_1.global_4
  loc_A5D224: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5D229: AryUnlock
  loc_A5D22C: AryUnlock
  loc_A5D22F: FFreeAd var_8C = ""
  loc_A5D236: FFreeVar var_BC = ""
  loc_A5D23D: FLdRfVar var_A4
  loc_A5D240: LitVarStr var_A0, "DetaInsu"
  loc_A5D245: PopAdLdVar
  loc_A5D246: FLdRfVar var_90
  loc_A5D249: FLdRfVar var_8C
  loc_A5D24C: FLdPr var_88
  loc_A5D24F: from_stack_1v = clsbase.RsFrmGet()
  loc_A5D254: FLdPr var_8C
  loc_A5D257:  = Me.Fields
  loc_A5D25C: FLdPr var_90
  loc_A5D25F: from_stack_2 = Me.Item(from_stack_1)
  loc_A5D264: LitI2_Byte 0
  loc_A5D266: LitVar_Missing var_DC
  loc_A5D269: LitI2_Byte 0
  loc_A5D26B: FLdZeroAd var_A4
  loc_A5D26E: CVarAd
  loc_A5D272: PopAdLdVar
  loc_A5D273: FLdPr Me
  loc_A5D276: MemLdI2 global_94
  loc_A5D279: CI4UI1
  loc_A5D27A: FLdPr Me
  loc_A5D27D: MemLdI2 global_92
  loc_A5D280: CI4UI1
  loc_A5D281: FLdPr Me
  loc_A5D284: MemLdStr global_88
  loc_A5D287: AryLock
  loc_A5D28A: Ary1LdPr
  loc_A5D28B: MemLdStr global_72
  loc_A5D28E: AryLock
  loc_A5D291: Ary1LdPr
  loc_A5D292: MemLdRfVar from_stack_1.global_8
  loc_A5D295: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5D29A: AryUnlock
  loc_A5D29D: AryUnlock
  loc_A5D2A0: FFreeAd var_8C = ""
  loc_A5D2A7: FFreeVar var_BC = ""
  loc_A5D2AE: FLdRfVar var_A4
  loc_A5D2B1: LitVarStr var_A0, "DetaItno"
  loc_A5D2B6: PopAdLdVar
  loc_A5D2B7: FLdRfVar var_90
  loc_A5D2BA: FLdRfVar var_8C
  loc_A5D2BD: FLdPr var_88
  loc_A5D2C0: from_stack_1v = clsbase.RsFrmGet()
  loc_A5D2C5: FLdPr var_8C
  loc_A5D2C8:  = Me.Fields
  loc_A5D2CD: FLdPr var_90
  loc_A5D2D0: from_stack_2 = Me.Item(from_stack_1)
  loc_A5D2D5: LitI2_Byte 0
  loc_A5D2D7: LitVar_Missing var_DC
  loc_A5D2DA: LitI2_Byte 0
  loc_A5D2DC: FLdZeroAd var_A4
  loc_A5D2DF: CVarAd
  loc_A5D2E3: PopAdLdVar
  loc_A5D2E4: FLdPr Me
  loc_A5D2E7: MemLdI2 global_94
  loc_A5D2EA: CI4UI1
  loc_A5D2EB: FLdPr Me
  loc_A5D2EE: MemLdI2 global_92
  loc_A5D2F1: CI4UI1
  loc_A5D2F2: FLdPr Me
  loc_A5D2F5: MemLdStr global_88
  loc_A5D2F8: AryLock
  loc_A5D2FB: Ary1LdPr
  loc_A5D2FC: MemLdStr global_72
  loc_A5D2FF: AryLock
  loc_A5D302: Ary1LdPr
  loc_A5D303: MemLdRfVar from_stack_1.global_12
  loc_A5D306: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5D30B: AryUnlock
  loc_A5D30E: AryUnlock
  loc_A5D311: FFreeAd var_8C = ""
  loc_A5D318: FFreeVar var_BC = ""
  loc_A5D31F: FLdRfVar var_A4
  loc_A5D322: LitVarStr var_A0, "CaraItno"
  loc_A5D327: PopAdLdVar
  loc_A5D328: FLdRfVar var_90
  loc_A5D32B: FLdRfVar var_8C
  loc_A5D32E: FLdPr var_88
  loc_A5D331: from_stack_1v = clsbase.RsFrmGet()
  loc_A5D336: FLdPr var_8C
  loc_A5D339:  = Me.Fields
  loc_A5D33E: FLdPr var_90
  loc_A5D341: from_stack_2 = Me.Item(from_stack_1)
  loc_A5D346: LitI2_Byte 0
  loc_A5D348: LitVar_Missing var_DC
  loc_A5D34B: LitI2_Byte 0
  loc_A5D34D: FLdZeroAd var_A4
  loc_A5D350: CVarAd
  loc_A5D354: PopAdLdVar
  loc_A5D355: FLdPr Me
  loc_A5D358: MemLdI2 global_94
  loc_A5D35B: CI4UI1
  loc_A5D35C: FLdPr Me
  loc_A5D35F: MemLdI2 global_92
  loc_A5D362: CI4UI1
  loc_A5D363: FLdPr Me
  loc_A5D366: MemLdStr global_88
  loc_A5D369: AryLock
  loc_A5D36C: Ary1LdPr
  loc_A5D36D: MemLdStr global_72
  loc_A5D370: AryLock
  loc_A5D373: Ary1LdPr
  loc_A5D374: MemLdRfVar from_stack_1.global_16
  loc_A5D377: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5D37C: AryUnlock
  loc_A5D37F: AryUnlock
  loc_A5D382: FFreeAd var_8C = ""
  loc_A5D389: FFreeVar var_BC = ""
  loc_A5D390: FLdRfVar var_A4
  loc_A5D393: LitVarStr var_A0, "CantItno"
  loc_A5D398: PopAdLdVar
  loc_A5D399: FLdRfVar var_90
  loc_A5D39C: FLdRfVar var_8C
  loc_A5D39F: FLdPr var_88
  loc_A5D3A2: from_stack_1v = clsbase.RsFrmGet()
  loc_A5D3A7: FLdPr var_8C
  loc_A5D3AA:  = Me.Fields
  loc_A5D3AF: FLdPr var_90
  loc_A5D3B2: from_stack_2 = Me.Item(from_stack_1)
  loc_A5D3B7: LitI2_Byte 0
  loc_A5D3B9: LitVar_Missing var_DC
  loc_A5D3BC: LitI2_Byte 0
  loc_A5D3BE: FLdZeroAd var_A4
  loc_A5D3C1: CVarAd
  loc_A5D3C5: PopAdLdVar
  loc_A5D3C6: FLdPr Me
  loc_A5D3C9: MemLdI2 global_94
  loc_A5D3CC: CI4UI1
  loc_A5D3CD: FLdPr Me
  loc_A5D3D0: MemLdI2 global_92
  loc_A5D3D3: CI4UI1
  loc_A5D3D4: FLdPr Me
  loc_A5D3D7: MemLdStr global_88
  loc_A5D3DA: AryLock
  loc_A5D3DD: Ary1LdPr
  loc_A5D3DE: MemLdStr global_72
  loc_A5D3E1: AryLock
  loc_A5D3E4: Ary1LdPr
  loc_A5D3E5: MemLdRfVar from_stack_1.global_20
  loc_A5D3E8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5D3ED: AryUnlock
  loc_A5D3F0: AryUnlock
  loc_A5D3F3: FFreeAd var_8C = ""
  loc_A5D3FA: FFreeVar var_BC = ""
  loc_A5D401: LitI2_Byte 1
  loc_A5D403: PopTmpLdAd2 var_DE
  loc_A5D406: FLdPr var_88
  loc_A5D409: Call clsbase.Move(from_stack_1v)
  loc_A5D40E: LitNothing
  loc_A5D410: FStAd var_88 
  loc_A5D414: ExitProcHresult
  loc_A5D415: PopAdLd4
  loc_A5D416: BranchFVar
End Function

Private Function Proc_238_25_9E5010(arg_C) '9E5010
  'Data Table: 473C5C
  loc_9E4F0C: FLdI2 arg_C
  loc_9E4F0F: CI4UI1
  loc_9E4F10: FLdPr Me
  loc_9E4F13: MemLdI2 global_92
  loc_9E4F16: CI4UI1
  loc_9E4F17: FLdPr Me
  loc_9E4F1A: MemLdStr global_88
  loc_9E4F1D: AryLock
  loc_9E4F20: Ary1LdPr
  loc_9E4F21: MemLdStr global_72
  loc_9E4F24: AryLock
  loc_9E4F27: Ary1LdRf
  loc_9E4F28: FStR4 var_90
  loc_9E4F2B: FMemLdR4 var_90(0)
  loc_9E4F30: LitStr ", "
  loc_9E4F33: ConcatStr
  loc_9E4F34: CVarStr var_CC
  loc_9E4F37: FLdRfVar var_BC
  loc_9E4F3A: FLdRfVar var_AC
  loc_9E4F3D: LitVarStr var_A8, "CodiItno"
  loc_9E4F42: PopAdLdVar
  loc_9E4F43: FLdRfVar var_98
  loc_9E4F46: FLdRfVar var_94
  loc_9E4F49: FLdPr Me
  loc_9E4F4C: MemLdRfVar from_stack_1.global_80
  loc_9E4F4F: NewIfNullPr clsbase
  loc_9E4F52: from_stack_1v = clsbase.RsFrmGet()
  loc_9E4F57: FLdPr var_94
  loc_9E4F5A:  = Me.Fields
  loc_9E4F5F: FLdPr var_98
  loc_9E4F62: from_stack_2 = Me.Item(from_stack_1)
  loc_9E4F67: FLdPr var_AC
  loc_9E4F6A:  = Me.Value
  loc_9E4F6F: FLdRfVar var_BC
  loc_9E4F72: ConcatVar var_DC
  loc_9E4F76: CStrVarTmp
  loc_9E4F77: FStStrNoPop var_E0
  loc_9E4F7A: FMemStStrCopy
  loc_9E4F7F: FFree1Str var_E0
  loc_9E4F82: FFreeAd var_94 = "": var_98 = ""
  loc_9E4F8B: FFreeVar var_CC = "": var_BC = ""
  loc_9E4F94: FLdRfVar var_AC
  loc_9E4F97: LitVarStr var_A8, "CantItno"
  loc_9E4F9C: PopAdLdVar
  loc_9E4F9D: FLdRfVar var_98
  loc_9E4FA0: FLdRfVar var_94
  loc_9E4FA3: FLdPr Me
  loc_9E4FA6: MemLdRfVar from_stack_1.global_80
  loc_9E4FA9: NewIfNullPr clsbase
  loc_9E4FAC: from_stack_1v = clsbase.RsFrmGet()
  loc_9E4FB1: FLdPr var_94
  loc_9E4FB4:  = Me.Fields
  loc_9E4FB9: FLdPr var_98
  loc_9E4FBC: from_stack_2 = Me.Item(from_stack_1)
  loc_9E4FC1: LitI2_Byte 0
  loc_9E4FC3: FMemLdRf 0
  loc_9E4FC8: CVarRef
  loc_9E4FCD: LitI2_Byte 0
  loc_9E4FCF: FLdZeroAd var_AC
  loc_9E4FD2: CVarAd
  loc_9E4FD6: PopAdLdVar
  loc_9E4FD7: FLdPr Me
  loc_9E4FDA: MemLdRfVar from_stack_1.global_96
  loc_9E4FDD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E4FE2: FFreeAd var_94 = ""
  loc_9E4FE9: FFree1Var var_BC = ""
  loc_9E4FEC: LitI4 0
  loc_9E4FF1: FStR4 var_90
  loc_9E4FF4: AryUnlock
  loc_9E4FF7: AryUnlock
  loc_9E4FFA: LitI2_Byte 1
  loc_9E4FFC: PopTmpLdAd2 var_F2
  loc_9E4FFF: FLdPr Me
  loc_9E5002: MemLdRfVar from_stack_1.global_80
  loc_9E5005: NewIfNullPr clsbase
  loc_9E5008: Call clsbase.Move(from_stack_1v)
  loc_9E500D: ExitProcHresult
End Function

Private Function Proc_238_26_9BAD2C() '9BAD2C
  'Data Table: 473C5C
  loc_9BAC74: LitVarStr var_94, "<html>"
  loc_9BAC79: PopAdLdVar
  loc_9BAC7A: FLdPr Me
  loc_9BAC7D: MemLdRfVar from_stack_1.htmFile
  loc_9BAC80: LdPrVar
  loc_9BAC82: LateMemCall
  loc_9BAC88: LitVarStr var_94, "<head>"
  loc_9BAC8D: PopAdLdVar
  loc_9BAC8E: FLdPr Me
  loc_9BAC91: MemLdRfVar from_stack_1.htmFile
  loc_9BAC94: LdPrVar
  loc_9BAC96: LateMemCall
  loc_9BAC9C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_9BACA1: PopAdLdVar
  loc_9BACA2: FLdPr Me
  loc_9BACA5: MemLdRfVar from_stack_1.htmFile
  loc_9BACA8: LdPrVar
  loc_9BACAA: LateMemCall
  loc_9BACB0: LitStr "<title>"
  loc_9BACB3: FLdRfVar var_A8
  loc_9BACB6: FLdPr Me
  loc_9BACB9:  = Me.Caption
  loc_9BACBE: ILdRf var_A8
  loc_9BACC1: ConcatStr
  loc_9BACC2: FStStrNoPop var_AC
  loc_9BACC5: LitStr "</title>"
  loc_9BACC8: ConcatStr
  loc_9BACC9: CVarStr var_BC
  loc_9BACCC: PopAdLdVar
  loc_9BACCD: FLdPr Me
  loc_9BACD0: MemLdRfVar from_stack_1.htmFile
  loc_9BACD3: LdPrVar
  loc_9BACD5: LateMemCall
  loc_9BACDB: FFreeStr var_A8 = ""
  loc_9BACE2: FFree1Var var_BC = ""
  loc_9BACE5: LitStr vbNullString
  loc_9BACE8: ILdRf Me
  loc_9BACEB: CastAd
  loc_9BACEE: FStAdFunc var_C0
  loc_9BACF1: FLdRfVar var_C0
  loc_9BACF4: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_9BACF9: FFree1Ad var_C0
  loc_9BACFC: LitI4 0
  loc_9BAD01: FStStrCopy var_AC
  loc_9BAD04: FLdRfVar var_AC
  loc_9BAD07: LitI4 0
  loc_9BAD0C: FStStrCopy var_A8
  loc_9BAD0F: FLdRfVar var_A8
  loc_9BAD12: LitI2_Byte 0
  loc_9BAD14: PopTmpLdAd2 var_C2
  loc_9BAD17: FLdPr Me
  loc_9BAD1A: MemLdRfVar from_stack_1.htmFile
  loc_9BAD1D: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_9BAD22: FFreeStr var_A8 = ""
  loc_9BAD29: ExitProcHresult
  loc_9BAD2A: AddI2
End Function

Private Function Proc_238_27_A9C170() 'A9C170
  'Data Table: 473C5C
  loc_A9BCAC: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A9BCB1: PopAdLdVar
  loc_A9BCB2: FLdPr Me
  loc_A9BCB5: MemLdRfVar from_stack_1.htmFile
  loc_A9BCB8: LdPrVar
  loc_A9BCBA: LateMemCall
  loc_A9BCC0: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A9BCC5: PopAdLdVar
  loc_A9BCC6: FLdPr Me
  loc_A9BCC9: MemLdRfVar from_stack_1.htmFile
  loc_A9BCCC: LdPrVar
  loc_A9BCCE: LateMemCall
  loc_A9BCD4: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""bottom"">"
  loc_A9BCD9: PopAdLdVar
  loc_A9BCDA: FLdPr Me
  loc_A9BCDD: MemLdRfVar from_stack_1.htmFile
  loc_A9BCE0: LdPrVar
  loc_A9BCE2: LateMemCall
  loc_A9BCE8: FLdPr Me
  loc_A9BCEB: MemLdI2 bLogos
  loc_A9BCEE: BranchF loc_A9BD05
  loc_A9BCF1: LitVarStr var_94, "<img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A9BCF6: PopAdLdVar
  loc_A9BCF7: FLdPr Me
  loc_A9BCFA: MemLdRfVar from_stack_1.htmFile
  loc_A9BCFD: LdPrVar
  loc_A9BCFF: LateMemCall
  loc_A9BD05: LitVarStr var_A4, "<br><p>"
  loc_A9BD0A: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A9BD0F: FStVarCopyObj var_B4
  loc_A9BD12: FLdRfVar var_B4
  loc_A9BD15: FLdRfVar var_C4
  loc_A9BD18: ImpAdCallFPR4  = Ucase()
  loc_A9BD1D: FLdRfVar var_C4
  loc_A9BD20: ConcatVar var_D4
  loc_A9BD24: LitVarStr var_E4, "</p>"
  loc_A9BD29: ConcatVar var_F4
  loc_A9BD2D: PopAdLdVar
  loc_A9BD2E: FLdPr Me
  loc_A9BD31: MemLdRfVar from_stack_1.htmFile
  loc_A9BD34: LdPrVar
  loc_A9BD36: LateMemCall
  loc_A9BD3C: FFreeVar var_B4 = "": var_C4 = "": var_D4 = ""
  loc_A9BD47: LitStr "Municipalidad de Guaymallén"
  loc_A9BD4A: LitStr "Municipalidad de Rivadavia"
  loc_A9BD4D: EqStr
  loc_A9BD4F: LitStr "Municipalidad de Guaymallén"
  loc_A9BD52: LitStr "Municipalidad de Tunuyán"
  loc_A9BD55: EqStr
  loc_A9BD57: OrI4
  loc_A9BD58: BranchF loc_A9BD72
  loc_A9BD5B: LitVarStr var_94, "        <p>Orden de Provisión</p></th>"
  loc_A9BD60: PopAdLdVar
  loc_A9BD61: FLdPr Me
  loc_A9BD64: MemLdRfVar from_stack_1.htmFile
  loc_A9BD67: LdPrVar
  loc_A9BD69: LateMemCall
  loc_A9BD6F: Branch loc_A9BDA7
  loc_A9BD72: LitStr "        <p>"
  loc_A9BD75: FLdRfVar var_108
  loc_A9BD78: FLdPr Me
  loc_A9BD7B:  = Me.Caption
  loc_A9BD80: ILdRf var_108
  loc_A9BD83: ConcatStr
  loc_A9BD84: FStStrNoPop var_10C
  loc_A9BD87: LitStr "</p></th>"
  loc_A9BD8A: ConcatStr
  loc_A9BD8B: CVarStr var_B4
  loc_A9BD8E: PopAdLdVar
  loc_A9BD8F: FLdPr Me
  loc_A9BD92: MemLdRfVar from_stack_1.htmFile
  loc_A9BD95: LdPrVar
  loc_A9BD97: LateMemCall
  loc_A9BD9D: FFreeStr var_108 = ""
  loc_A9BDA4: FFree1Var var_B4 = ""
  loc_A9BDA7: LitVarStr var_94, "  </tr>"
  loc_A9BDAC: PopAdLdVar
  loc_A9BDAD: FLdPr Me
  loc_A9BDB0: MemLdRfVar from_stack_1.htmFile
  loc_A9BDB3: LdPrVar
  loc_A9BDB5: LateMemCall
  loc_A9BDBB: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A9BDC0: PopAdLdVar
  loc_A9BDC1: FLdPr Me
  loc_A9BDC4: MemLdRfVar from_stack_1.htmFile
  loc_A9BDC7: LdPrVar
  loc_A9BDC9: LateMemCall
  loc_A9BDCF: LitStr "    <th colspan=""3"" align=""left"" valign=""bottom"" class=""Normal"">Domicilio: <span class=""Normal"">"
  loc_A9BDD2: LitStr "Libertad Nº 720"
  loc_A9BDD5: ConcatStr
  loc_A9BDD6: FStStrNoPop var_108
  loc_A9BDD9: LitStr "</span></th>"
  loc_A9BDDC: ConcatStr
  loc_A9BDDD: CVarStr var_B4
  loc_A9BDE0: PopAdLdVar
  loc_A9BDE1: FLdPr Me
  loc_A9BDE4: MemLdRfVar from_stack_1.htmFile
  loc_A9BDE7: LdPrVar
  loc_A9BDE9: LateMemCall
  loc_A9BDEF: FFree1Str var_108
  loc_A9BDF2: FFree1Var var_B4 = ""
  loc_A9BDF5: LitVarStr var_94, "  </tr>"
  loc_A9BDFA: PopAdLdVar
  loc_A9BDFB: FLdPr Me
  loc_A9BDFE: MemLdRfVar from_stack_1.htmFile
  loc_A9BE01: LdPrVar
  loc_A9BE03: LateMemCall
  loc_A9BE09: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A9BE0E: PopAdLdVar
  loc_A9BE0F: FLdPr Me
  loc_A9BE12: MemLdRfVar from_stack_1.htmFile
  loc_A9BE15: LdPrVar
  loc_A9BE17: LateMemCall
  loc_A9BE1D: LitStr "    <th colspan=""3"" align=""left"" valign=""bottom"" class=""Normal"">Condición del IVA: <span class=""Normal"">"
  loc_A9BE20: LitStr "Exento"
  loc_A9BE23: ConcatStr
  loc_A9BE24: FStStrNoPop var_108
  loc_A9BE27: LitStr "</span></th>"
  loc_A9BE2A: ConcatStr
  loc_A9BE2B: CVarStr var_B4
  loc_A9BE2E: PopAdLdVar
  loc_A9BE2F: FLdPr Me
  loc_A9BE32: MemLdRfVar from_stack_1.htmFile
  loc_A9BE35: LdPrVar
  loc_A9BE37: LateMemCall
  loc_A9BE3D: FFree1Str var_108
  loc_A9BE40: FFree1Var var_B4 = ""
  loc_A9BE43: LitVarStr var_94, "  </tr>"
  loc_A9BE48: PopAdLdVar
  loc_A9BE49: FLdPr Me
  loc_A9BE4C: MemLdRfVar from_stack_1.htmFile
  loc_A9BE4F: LdPrVar
  loc_A9BE51: LateMemCall
  loc_A9BE57: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A9BE5C: PopAdLdVar
  loc_A9BE5D: FLdPr Me
  loc_A9BE60: MemLdRfVar from_stack_1.htmFile
  loc_A9BE63: LdPrVar
  loc_A9BE65: LateMemCall
  loc_A9BE6B: LitStr "    <th colspan=""3"" align=""left"" valign=""bottom"" class=""Normal"">CUIT: <span class=""Normal"">"
  loc_A9BE6E: LitStr "30-99914707-7"
  loc_A9BE71: ConcatStr
  loc_A9BE72: FStStrNoPop var_108
  loc_A9BE75: LitStr "</span></th>"
  loc_A9BE78: ConcatStr
  loc_A9BE79: CVarStr var_B4
  loc_A9BE7C: PopAdLdVar
  loc_A9BE7D: FLdPr Me
  loc_A9BE80: MemLdRfVar from_stack_1.htmFile
  loc_A9BE83: LdPrVar
  loc_A9BE85: LateMemCall
  loc_A9BE8B: FFree1Str var_108
  loc_A9BE8E: FFree1Var var_B4 = ""
  loc_A9BE91: LitVarStr var_94, "  </tr>"
  loc_A9BE96: PopAdLdVar
  loc_A9BE97: FLdPr Me
  loc_A9BE9A: MemLdRfVar from_stack_1.htmFile
  loc_A9BE9D: LdPrVar
  loc_A9BE9F: LateMemCall
  loc_A9BEA5: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A9BEAA: PopAdLdVar
  loc_A9BEAB: FLdPr Me
  loc_A9BEAE: MemLdRfVar from_stack_1.htmFile
  loc_A9BEB1: LdPrVar
  loc_A9BEB3: LateMemCall
  loc_A9BEB9: LitStr "    <th colspan=""3"" align=""left"" valign=""bottom"" class=""Normal"">Teléfono: <span class=""Normal"">"
  loc_A9BEBC: LitStr "(0261) 4498238"
  loc_A9BEBF: ConcatStr
  loc_A9BEC0: FStStrNoPop var_108
  loc_A9BEC3: LitStr "</span></th>"
  loc_A9BEC6: ConcatStr
  loc_A9BEC7: CVarStr var_B4
  loc_A9BECA: PopAdLdVar
  loc_A9BECB: FLdPr Me
  loc_A9BECE: MemLdRfVar from_stack_1.htmFile
  loc_A9BED1: LdPrVar
  loc_A9BED3: LateMemCall
  loc_A9BED9: FFree1Str var_108
  loc_A9BEDC: FFree1Var var_B4 = ""
  loc_A9BEDF: LitVarStr var_94, "  </tr>"
  loc_A9BEE4: PopAdLdVar
  loc_A9BEE5: FLdPr Me
  loc_A9BEE8: MemLdRfVar from_stack_1.htmFile
  loc_A9BEEB: LdPrVar
  loc_A9BEED: LateMemCall
  loc_A9BEF3: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A9BEF8: PopAdLdVar
  loc_A9BEF9: FLdPr Me
  loc_A9BEFC: MemLdRfVar from_stack_1.htmFile
  loc_A9BEFF: LdPrVar
  loc_A9BF01: LateMemCall
  loc_A9BF07: LitStr "    <th colspan=""3"" align=""left"" valign=""bottom"" class=""Normal"">Email: <span class=""Normal"">"
  loc_A9BF0A: LitStr "compras@guaymallen.gob.ar"
  loc_A9BF0D: ConcatStr
  loc_A9BF0E: FStStrNoPop var_108
  loc_A9BF11: LitStr "</span></th>"
  loc_A9BF14: ConcatStr
  loc_A9BF15: CVarStr var_B4
  loc_A9BF18: PopAdLdVar
  loc_A9BF19: FLdPr Me
  loc_A9BF1C: MemLdRfVar from_stack_1.htmFile
  loc_A9BF1F: LdPrVar
  loc_A9BF21: LateMemCall
  loc_A9BF27: FFree1Str var_108
  loc_A9BF2A: FFree1Var var_B4 = ""
  loc_A9BF2D: LitVarStr var_94, "  </tr>"
  loc_A9BF32: PopAdLdVar
  loc_A9BF33: FLdPr Me
  loc_A9BF36: MemLdRfVar from_stack_1.htmFile
  loc_A9BF39: LdPrVar
  loc_A9BF3B: LateMemCall
  loc_A9BF41: LitVarStr var_94, "  <tr>"
  loc_A9BF46: PopAdLdVar
  loc_A9BF47: FLdPr Me
  loc_A9BF4A: MemLdRfVar from_stack_1.htmFile
  loc_A9BF4D: LdPrVar
  loc_A9BF4F: LateMemCall
  loc_A9BF55: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_A9BF5A: PopAdLdVar
  loc_A9BF5B: FLdPr Me
  loc_A9BF5E: MemLdRfVar from_stack_1.htmFile
  loc_A9BF61: LdPrVar
  loc_A9BF63: LateMemCall
  loc_A9BF69: LitVarStr var_94, "  </tr>"
  loc_A9BF6E: PopAdLdVar
  loc_A9BF6F: FLdPr Me
  loc_A9BF72: MemLdRfVar from_stack_1.htmFile
  loc_A9BF75: LdPrVar
  loc_A9BF77: LateMemCall
  loc_A9BF7D: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A9BF82: PopAdLdVar
  loc_A9BF83: FLdPr Me
  loc_A9BF86: MemLdRfVar from_stack_1.htmFile
  loc_A9BF89: LdPrVar
  loc_A9BF8B: LateMemCall
  loc_A9BF91: LitStr "    <th colspan=""3"" align=""left"" valign=""bottom"">Periodo: <span class=""Normal"">"
  loc_A9BF94: FLdRfVar var_108
  loc_A9BF97: FLdPr Me
  loc_A9BF9A: VCallAd Control_ID_cboPeriodo
  loc_A9BF9D: FStAdFunc var_110
  loc_A9BFA0: FLdPr var_110
  loc_A9BFA3:  = Me.Text
  loc_A9BFA8: ILdRf var_108
  loc_A9BFAB: ConcatStr
  loc_A9BFAC: FStStrNoPop var_10C
  loc_A9BFAF: LitStr "</span></th>"
  loc_A9BFB2: ConcatStr
  loc_A9BFB3: CVarStr var_B4
  loc_A9BFB6: PopAdLdVar
  loc_A9BFB7: FLdPr Me
  loc_A9BFBA: MemLdRfVar from_stack_1.htmFile
  loc_A9BFBD: LdPrVar
  loc_A9BFBF: LateMemCall
  loc_A9BFC5: FFreeStr var_108 = ""
  loc_A9BFCC: FFree1Ad var_110
  loc_A9BFCF: FFree1Var var_B4 = ""
  loc_A9BFD2: LitVarStr var_94, "  </tr>"
  loc_A9BFD7: PopAdLdVar
  loc_A9BFD8: FLdPr Me
  loc_A9BFDB: MemLdRfVar from_stack_1.htmFile
  loc_A9BFDE: LdPrVar
  loc_A9BFE0: LateMemCall
  loc_A9BFE6: LitStr "Municipalidad de Guaymallén"
  loc_A9BFE9: LitStr "Municipalidad de Lavalle"
  loc_A9BFEC: EqStr
  loc_A9BFEE: BranchF loc_A9C159
  loc_A9BFF1: LitVarStr var_94, "  <tr valign=""baseline"" class=""Normal"">"
  loc_A9BFF6: PopAdLdVar
  loc_A9BFF7: FLdPr Me
  loc_A9BFFA: MemLdRfVar from_stack_1.htmFile
  loc_A9BFFD: LdPrVar
  loc_A9BFFF: LateMemCall
  loc_A9C005: LitVarStr var_94, "    <th colspan=""3"" align=""left"" valign=""bottom"">Oferente:</th>"
  loc_A9C00A: PopAdLdVar
  loc_A9C00B: FLdPr Me
  loc_A9C00E: MemLdRfVar from_stack_1.htmFile
  loc_A9C011: LdPrVar
  loc_A9C013: LateMemCall
  loc_A9C019: LitVarStr var_94, "  </tr>"
  loc_A9C01E: PopAdLdVar
  loc_A9C01F: FLdPr Me
  loc_A9C022: MemLdRfVar from_stack_1.htmFile
  loc_A9C025: LdPrVar
  loc_A9C027: LateMemCall
  loc_A9C02D: LitVarStr var_94, "  <tr valign=""baseline"" class=""Normal"">"
  loc_A9C032: PopAdLdVar
  loc_A9C033: FLdPr Me
  loc_A9C036: MemLdRfVar from_stack_1.htmFile
  loc_A9C039: LdPrVar
  loc_A9C03B: LateMemCall
  loc_A9C041: LitVarStr var_94, "    <th colspan=""3"" align=""left"" valign=""bottom"">Domicilio:</th>"
  loc_A9C046: PopAdLdVar
  loc_A9C047: FLdPr Me
  loc_A9C04A: MemLdRfVar from_stack_1.htmFile
  loc_A9C04D: LdPrVar
  loc_A9C04F: LateMemCall
  loc_A9C055: LitVarStr var_94, "  </tr>"
  loc_A9C05A: PopAdLdVar
  loc_A9C05B: FLdPr Me
  loc_A9C05E: MemLdRfVar from_stack_1.htmFile
  loc_A9C061: LdPrVar
  loc_A9C063: LateMemCall
  loc_A9C069: LitVarStr var_94, "  <tr valign=""baseline"" class=""Normal"">"
  loc_A9C06E: PopAdLdVar
  loc_A9C06F: FLdPr Me
  loc_A9C072: MemLdRfVar from_stack_1.htmFile
  loc_A9C075: LdPrVar
  loc_A9C077: LateMemCall
  loc_A9C07D: LitVarStr var_94, "    <th colspan=""3"" align=""left"" valign=""bottom"">Teléfono:</th>"
  loc_A9C082: PopAdLdVar
  loc_A9C083: FLdPr Me
  loc_A9C086: MemLdRfVar from_stack_1.htmFile
  loc_A9C089: LdPrVar
  loc_A9C08B: LateMemCall
  loc_A9C091: LitVarStr var_94, "  </tr>"
  loc_A9C096: PopAdLdVar
  loc_A9C097: FLdPr Me
  loc_A9C09A: MemLdRfVar from_stack_1.htmFile
  loc_A9C09D: LdPrVar
  loc_A9C09F: LateMemCall
  loc_A9C0A5: LitVarStr var_94, "  <tr valign=""baseline"" class=""Normal"">"
  loc_A9C0AA: PopAdLdVar
  loc_A9C0AB: FLdPr Me
  loc_A9C0AE: MemLdRfVar from_stack_1.htmFile
  loc_A9C0B1: LdPrVar
  loc_A9C0B3: LateMemCall
  loc_A9C0B9: LitVarStr var_94, "    <th colspan=""3"" align=""left"" valign=""bottom"">Email:</th>"
  loc_A9C0BE: PopAdLdVar
  loc_A9C0BF: FLdPr Me
  loc_A9C0C2: MemLdRfVar from_stack_1.htmFile
  loc_A9C0C5: LdPrVar
  loc_A9C0C7: LateMemCall
  loc_A9C0CD: LitVarStr var_94, "  </tr>"
  loc_A9C0D2: PopAdLdVar
  loc_A9C0D3: FLdPr Me
  loc_A9C0D6: MemLdRfVar from_stack_1.htmFile
  loc_A9C0D9: LdPrVar
  loc_A9C0DB: LateMemCall
  loc_A9C0E1: LitVarStr var_94, "  <tr valign=""baseline"" class=""Normal"">"
  loc_A9C0E6: PopAdLdVar
  loc_A9C0E7: FLdPr Me
  loc_A9C0EA: MemLdRfVar from_stack_1.htmFile
  loc_A9C0ED: LdPrVar
  loc_A9C0EF: LateMemCall
  loc_A9C0F5: LitVarStr var_94, "    <th colspan=""3"" align=""left"" valign=""bottom"">Ingresos Brutos:</th>"
  loc_A9C0FA: PopAdLdVar
  loc_A9C0FB: FLdPr Me
  loc_A9C0FE: MemLdRfVar from_stack_1.htmFile
  loc_A9C101: LdPrVar
  loc_A9C103: LateMemCall
  loc_A9C109: LitVarStr var_94, "  </tr>"
  loc_A9C10E: PopAdLdVar
  loc_A9C10F: FLdPr Me
  loc_A9C112: MemLdRfVar from_stack_1.htmFile
  loc_A9C115: LdPrVar
  loc_A9C117: LateMemCall
  loc_A9C11D: LitVarStr var_94, "  <tr valign=""baseline"" class=""Normal"">"
  loc_A9C122: PopAdLdVar
  loc_A9C123: FLdPr Me
  loc_A9C126: MemLdRfVar from_stack_1.htmFile
  loc_A9C129: LdPrVar
  loc_A9C12B: LateMemCall
  loc_A9C131: LitVarStr var_94, "    <th colspan=""3"" align=""left"" valign=""bottom"">CUIT:</th>"
  loc_A9C136: PopAdLdVar
  loc_A9C137: FLdPr Me
  loc_A9C13A: MemLdRfVar from_stack_1.htmFile
  loc_A9C13D: LdPrVar
  loc_A9C13F: LateMemCall
  loc_A9C145: LitVarStr var_94, "  </tr>"
  loc_A9C14A: PopAdLdVar
  loc_A9C14B: FLdPr Me
  loc_A9C14E: MemLdRfVar from_stack_1.htmFile
  loc_A9C151: LdPrVar
  loc_A9C153: LateMemCall
  loc_A9C159: LitVarStr var_94, "</table>"
  loc_A9C15E: PopAdLdVar
  loc_A9C15F: FLdPr Me
  loc_A9C162: MemLdRfVar from_stack_1.htmFile
  loc_A9C165: LdPrVar
  loc_A9C167: LateMemCall
  loc_A9C16D: ExitProcHresult
  loc_A9C16E: ExitProcR8
End Function

Private Function Proc_238_28_BA09C8() 'BA09C8
  'Data Table: 473C5C
  loc_B9FAA0: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_B9FAA5: PopAdLdVar
  loc_B9FAA6: FLdPr Me
  loc_B9FAA9: MemLdRfVar from_stack_1.htmFile
  loc_B9FAAC: LdPrVar
  loc_B9FAAE: LateMemCall
  loc_B9FAB4: LitVarStr var_98, "  <tr align=""left"" valign=""top"" class=""Normal"" nowrap=""nowrap"">"
  loc_B9FAB9: PopAdLdVar
  loc_B9FABA: FLdPr Me
  loc_B9FABD: MemLdRfVar from_stack_1.htmFile
  loc_B9FAC0: LdPrVar
  loc_B9FAC2: LateMemCall
  loc_B9FAC8: LitVarStr var_98, "    <th colspan=""7"" class=""LineaDato"" >"
  loc_B9FACD: PopAdLdVar
  loc_B9FACE: FLdPr Me
  loc_B9FAD1: MemLdRfVar from_stack_1.htmFile
  loc_B9FAD4: LdPrVar
  loc_B9FAD6: LateMemCall
  loc_B9FADC: LitVarStr var_98, "  <table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" cellpadding=""1"">"
  loc_B9FAE1: PopAdLdVar
  loc_B9FAE2: FLdPr Me
  loc_B9FAE5: MemLdRfVar from_stack_1.htmFile
  loc_B9FAE8: LdPrVar
  loc_B9FAEA: LateMemCall
  loc_B9FAF0: LitVarStr var_98, "      <tr valign=""top"" class=""LineaDato"">"
  loc_B9FAF5: PopAdLdVar
  loc_B9FAF6: FLdPr Me
  loc_B9FAF9: MemLdRfVar from_stack_1.htmFile
  loc_B9FAFC: LdPrVar
  loc_B9FAFE: LateMemCall
  loc_B9FB04: LitStr "        <td align=""center"" rowspan=""2"" class=""Encabezado"">Nota de Pedido N&ordm;<br>"
  loc_B9FB07: FLdPr Me
  loc_B9FB0A: MemLdI2 global_92
  loc_B9FB0D: CI4UI1
  loc_B9FB0E: FLdPr Me
  loc_B9FB11: MemLdStr global_88
  loc_B9FB14: Ary1LdPr
  loc_B9FB15: MemLdStr global_0
  loc_B9FB18: ConcatStr
  loc_B9FB19: FStStrNoPop var_AC
  loc_B9FB1C: LitStr "</td>"
  loc_B9FB1F: ConcatStr
  loc_B9FB20: CVarStr var_BC
  loc_B9FB23: PopAdLdVar
  loc_B9FB24: FLdPr Me
  loc_B9FB27: MemLdRfVar from_stack_1.htmFile
  loc_B9FB2A: LdPrVar
  loc_B9FB2C: LateMemCall
  loc_B9FB32: FFree1Str var_AC
  loc_B9FB35: FFree1Var var_BC = ""
  loc_B9FB38: LitStr "        <td rowspan=""2"">Fecha de Emisión:<br>"
  loc_B9FB3B: FLdPr Me
  loc_B9FB3E: MemLdI2 global_92
  loc_B9FB41: CI4UI1
  loc_B9FB42: FLdPr Me
  loc_B9FB45: MemLdStr global_88
  loc_B9FB48: Ary1LdPr
  loc_B9FB49: MemLdStr global_32
  loc_B9FB4C: ConcatStr
  loc_B9FB4D: FStStrNoPop var_AC
  loc_B9FB50: LitStr "</td>"
  loc_B9FB53: ConcatStr
  loc_B9FB54: CVarStr var_BC
  loc_B9FB57: PopAdLdVar
  loc_B9FB58: FLdPr Me
  loc_B9FB5B: MemLdRfVar from_stack_1.htmFile
  loc_B9FB5E: LdPrVar
  loc_B9FB60: LateMemCall
  loc_B9FB66: FFree1Str var_AC
  loc_B9FB69: FFree1Var var_BC = ""
  loc_B9FB6C: FLdPr Me
  loc_B9FB6F: MemLdI2 global_92
  loc_B9FB72: CI4UI1
  loc_B9FB73: FLdPr Me
  loc_B9FB76: MemLdStr global_88
  loc_B9FB79: Ary1LdPr
  loc_B9FB7A: MemLdStr global_12
  loc_B9FB7D: LitStr " - "
  loc_B9FB80: ConcatStr
  loc_B9FB81: FStStrNoPop var_AC
  loc_B9FB84: FLdPr Me
  loc_B9FB87: MemLdI2 global_92
  loc_B9FB8A: CI4UI1
  loc_B9FB8B: FLdPr Me
  loc_B9FB8E: MemLdStr global_88
  loc_B9FB91: Ary1LdPr
  loc_B9FB92: MemLdStr global_16
  loc_B9FB95: ConcatStr
  loc_B9FB96: FStStr var_88
  loc_B9FB99: FFree1Str var_AC
  loc_B9FB9C: LitI4 1
  loc_B9FBA1: FLdPr Me
  loc_B9FBA4: MemLdI2 global_92
  loc_B9FBA7: CI4UI1
  loc_B9FBA8: FLdPr Me
  loc_B9FBAB: MemLdStr global_88
  loc_B9FBAE: AryLock
  loc_B9FBB1: Ary1LdPr
  loc_B9FBB2: MemLdRfVar from_stack_1.global_16
  loc_B9FBB5: CVarRef
  loc_B9FBBA: FLdRfVar var_BC
  loc_B9FBBD: ImpAdCallFPR4  = LCase()
  loc_B9FBC2: AryUnlock
  loc_B9FBC5: FLdRfVar var_BC
  loc_B9FBC8: LitVarStr var_A8, "licita"
  loc_B9FBCD: LitI4 0
  loc_B9FBD2: FnInStr4Var
  loc_B9FBD6: LitVarI2 var_E0, 0
  loc_B9FBDB: HardType
  loc_B9FBDC: GtVar var_F0
  loc_B9FBE0: FLdPr Me
  loc_B9FBE3: MemLdI2 global_92
  loc_B9FBE6: CI4UI1
  loc_B9FBE7: FLdPr Me
  loc_B9FBEA: MemLdStr global_88
  loc_B9FBED: Ary1LdPr
  loc_B9FBEE: MemLdStr global_24
  loc_B9FBF1: LitStr "0"
  loc_B9FBF4: NeStr
  loc_B9FBF6: CVarBoolI2 var_100
  loc_B9FBFA: AndVar var_110
  loc_B9FBFE: CBoolVarNull
  loc_B9FC00: FFreeVar var_BC = "": var_D0 = ""
  loc_B9FC09: BranchF loc_B9FC60
  loc_B9FC0C: ILdRf var_88
  loc_B9FC0F: LitStr "<br> Sellado: "
  loc_B9FC12: ConcatStr
  loc_B9FC13: FStStrNoPop var_114
  loc_B9FC16: LitI4 1
  loc_B9FC1B: LitI4 1
  loc_B9FC20: LitVarStr var_A8, "currency"
  loc_B9FC25: FStVarCopyObj var_BC
  loc_B9FC28: FLdRfVar var_BC
  loc_B9FC2B: FLdPr Me
  loc_B9FC2E: MemLdI2 global_92
  loc_B9FC31: CI4UI1
  loc_B9FC32: FLdPr Me
  loc_B9FC35: MemLdStr global_88
  loc_B9FC38: AryLock
  loc_B9FC3B: Ary1LdPr
  loc_B9FC3C: MemLdRfVar from_stack_1.global_24
  loc_B9FC3F: CVarRef
  loc_B9FC44: ImpAdCallI2 Format$(, )
  loc_B9FC49: FStStr var_AC
  loc_B9FC4C: AryUnlock
  loc_B9FC4F: ILdRf var_AC
  loc_B9FC52: ConcatStr
  loc_B9FC53: FStStr var_88
  loc_B9FC56: FFreeStr var_114 = ""
  loc_B9FC5D: FFree1Var var_BC = ""
  loc_B9FC60: LitI4 1
  loc_B9FC65: FLdPr Me
  loc_B9FC68: MemLdI2 global_92
  loc_B9FC6B: CI4UI1
  loc_B9FC6C: FLdPr Me
  loc_B9FC6F: MemLdStr global_88
  loc_B9FC72: AryLock
  loc_B9FC75: Ary1LdPr
  loc_B9FC76: MemLdRfVar from_stack_1.global_16
  loc_B9FC79: CVarRef
  loc_B9FC7E: FLdRfVar var_BC
  loc_B9FC81: ImpAdCallFPR4  = LCase()
  loc_B9FC86: AryUnlock
  loc_B9FC89: FLdRfVar var_BC
  loc_B9FC8C: LitVarStr var_A8, "licita"
  loc_B9FC91: LitI4 0
  loc_B9FC96: FnInStr4Var
  loc_B9FC9A: LitVarI2 var_E0, 0
  loc_B9FC9F: HardType
  loc_B9FCA0: GtVar var_F0
  loc_B9FCA4: FLdPr Me
  loc_B9FCA7: MemLdI2 global_92
  loc_B9FCAA: CI4UI1
  loc_B9FCAB: FLdPr Me
  loc_B9FCAE: MemLdStr global_88
  loc_B9FCB1: Ary1LdPr
  loc_B9FCB2: MemLdStr global_20
  loc_B9FCB5: LitStr "0"
  loc_B9FCB8: NeStr
  loc_B9FCBA: CVarBoolI2 var_100
  loc_B9FCBE: AndVar var_110
  loc_B9FCC2: CBoolVarNull
  loc_B9FCC4: FFreeVar var_BC = "": var_D0 = ""
  loc_B9FCCD: BranchF loc_B9FD24
  loc_B9FCD0: ILdRf var_88
  loc_B9FCD3: LitStr "<br> Valor del Pliego: "
  loc_B9FCD6: ConcatStr
  loc_B9FCD7: FStStrNoPop var_114
  loc_B9FCDA: LitI4 1
  loc_B9FCDF: LitI4 1
  loc_B9FCE4: LitVarStr var_A8, "currency"
  loc_B9FCE9: FStVarCopyObj var_BC
  loc_B9FCEC: FLdRfVar var_BC
  loc_B9FCEF: FLdPr Me
  loc_B9FCF2: MemLdI2 global_92
  loc_B9FCF5: CI4UI1
  loc_B9FCF6: FLdPr Me
  loc_B9FCF9: MemLdStr global_88
  loc_B9FCFC: AryLock
  loc_B9FCFF: Ary1LdPr
  loc_B9FD00: MemLdRfVar from_stack_1.global_20
  loc_B9FD03: CVarRef
  loc_B9FD08: ImpAdCallI2 Format$(, )
  loc_B9FD0D: FStStr var_AC
  loc_B9FD10: AryUnlock
  loc_B9FD13: ILdRf var_AC
  loc_B9FD16: ConcatStr
  loc_B9FD17: FStStr var_88
  loc_B9FD1A: FFreeStr var_114 = ""
  loc_B9FD21: FFree1Var var_BC = ""
  loc_B9FD24: LitStr "        <td rowspan=""2"">Tipo de compra:<br>"
  loc_B9FD27: ILdRf var_88
  loc_B9FD2A: ConcatStr
  loc_B9FD2B: FStStrNoPop var_AC
  loc_B9FD2E: LitStr "</td>"
  loc_B9FD31: ConcatStr
  loc_B9FD32: CVarStr var_BC
  loc_B9FD35: PopAdLdVar
  loc_B9FD36: FLdPr Me
  loc_B9FD39: MemLdRfVar from_stack_1.htmFile
  loc_B9FD3C: LdPrVar
  loc_B9FD3E: LateMemCall
  loc_B9FD44: FFree1Str var_AC
  loc_B9FD47: FFree1Var var_BC = ""
  loc_B9FD4A: LitStr "        <td rowspan=""2"">Expediente:<br>"
  loc_B9FD4D: FLdPr Me
  loc_B9FD50: MemLdI2 global_92
  loc_B9FD53: CI4UI1
  loc_B9FD54: FLdPr Me
  loc_B9FD57: MemLdStr global_88
  loc_B9FD5A: Ary1LdPr
  loc_B9FD5B: MemLdStr global_28
  loc_B9FD5E: ConcatStr
  loc_B9FD5F: FStStrNoPop var_AC
  loc_B9FD62: LitStr "</td>"
  loc_B9FD65: ConcatStr
  loc_B9FD66: CVarStr var_BC
  loc_B9FD69: PopAdLdVar
  loc_B9FD6A: FLdPr Me
  loc_B9FD6D: MemLdRfVar from_stack_1.htmFile
  loc_B9FD70: LdPrVar
  loc_B9FD72: LateMemCall
  loc_B9FD78: FFree1Str var_AC
  loc_B9FD7B: FFree1Var var_BC = ""
  loc_B9FD7E: LitVarStr var_98, "        <td rowspan=""2"" class=""Totales"" width=""22" & Chr(37) & """>Total:<br>$&nbsp;</td>"
  loc_B9FD83: PopAdLdVar
  loc_B9FD84: FLdPr Me
  loc_B9FD87: MemLdRfVar from_stack_1.htmFile
  loc_B9FD8A: LdPrVar
  loc_B9FD8C: LateMemCall
  loc_B9FD92: LitVarStr var_98, "      </tr>"
  loc_B9FD97: PopAdLdVar
  loc_B9FD98: FLdPr Me
  loc_B9FD9B: MemLdRfVar from_stack_1.htmFile
  loc_B9FD9E: LdPrVar
  loc_B9FDA0: LateMemCall
  loc_B9FDA6: LitVarStr var_98, "      <tr valign=""top"" class=""LineaDato"">"
  loc_B9FDAB: PopAdLdVar
  loc_B9FDAC: FLdPr Me
  loc_B9FDAF: MemLdRfVar from_stack_1.htmFile
  loc_B9FDB2: LdPrVar
  loc_B9FDB4: LateMemCall
  loc_B9FDBA: LitVarStr var_98, "        </tr>"
  loc_B9FDBF: PopAdLdVar
  loc_B9FDC0: FLdPr Me
  loc_B9FDC3: MemLdRfVar from_stack_1.htmFile
  loc_B9FDC6: LdPrVar
  loc_B9FDC8: LateMemCall
  loc_B9FDCE: LitVarStr var_98, "      <tr valign=""top"" class=""LineaDato"">"
  loc_B9FDD3: PopAdLdVar
  loc_B9FDD4: FLdPr Me
  loc_B9FDD7: MemLdRfVar from_stack_1.htmFile
  loc_B9FDDA: LdPrVar
  loc_B9FDDC: LateMemCall
  loc_B9FDE2: LitStr "        <td colspan=""7"">Detalle: "
  loc_B9FDE5: FLdPr Me
  loc_B9FDE8: MemLdI2 global_92
  loc_B9FDEB: CI4UI1
  loc_B9FDEC: FLdPr Me
  loc_B9FDEF: MemLdStr global_88
  loc_B9FDF2: Ary1LdPr
  loc_B9FDF3: MemLdStr global_4
  loc_B9FDF6: ConcatStr
  loc_B9FDF7: FStStrNoPop var_AC
  loc_B9FDFA: LitStr "</td>"
  loc_B9FDFD: ConcatStr
  loc_B9FDFE: CVarStr var_BC
  loc_B9FE01: PopAdLdVar
  loc_B9FE02: FLdPr Me
  loc_B9FE05: MemLdRfVar from_stack_1.htmFile
  loc_B9FE08: LdPrVar
  loc_B9FE0A: LateMemCall
  loc_B9FE10: FFree1Str var_AC
  loc_B9FE13: FFree1Var var_BC = ""
  loc_B9FE16: LitVarStr var_98, "      </tr>"
  loc_B9FE1B: PopAdLdVar
  loc_B9FE1C: FLdPr Me
  loc_B9FE1F: MemLdRfVar from_stack_1.htmFile
  loc_B9FE22: LdPrVar
  loc_B9FE24: LateMemCall
  loc_B9FE2A: FLdPr Me
  loc_B9FE2D: MemLdI2 global_92
  loc_B9FE30: CI4UI1
  loc_B9FE31: FLdPr Me
  loc_B9FE34: MemLdStr global_88
  loc_B9FE37: Ary1LdPr
  loc_B9FE38: MemLdStr global_8
  loc_B9FE3B: LitStr vbNullString
  loc_B9FE3E: NeStr
  loc_B9FE40: BranchF loc_B9FE9F
  loc_B9FE43: LitVarStr var_98, "      <tr valign=""top"" class=""LineaDato"">"
  loc_B9FE48: PopAdLdVar
  loc_B9FE49: FLdPr Me
  loc_B9FE4C: MemLdRfVar from_stack_1.htmFile
  loc_B9FE4F: LdPrVar
  loc_B9FE51: LateMemCall
  loc_B9FE57: LitStr "        <td colspan=""8"">Cotiza según especificaciones técnicas adjuntas "
  loc_B9FE5A: FLdPr Me
  loc_B9FE5D: MemLdI2 global_92
  loc_B9FE60: CI4UI1
  loc_B9FE61: FLdPr Me
  loc_B9FE64: MemLdStr global_88
  loc_B9FE67: Ary1LdPr
  loc_B9FE68: MemLdStr global_8
  loc_B9FE6B: ConcatStr
  loc_B9FE6C: FStStrNoPop var_AC
  loc_B9FE6F: LitStr "</td>"
  loc_B9FE72: ConcatStr
  loc_B9FE73: CVarStr var_BC
  loc_B9FE76: PopAdLdVar
  loc_B9FE77: FLdPr Me
  loc_B9FE7A: MemLdRfVar from_stack_1.htmFile
  loc_B9FE7D: LdPrVar
  loc_B9FE7F: LateMemCall
  loc_B9FE85: FFree1Str var_AC
  loc_B9FE88: FFree1Var var_BC = ""
  loc_B9FE8B: LitVarStr var_98, "      </tr>"
  loc_B9FE90: PopAdLdVar
  loc_B9FE91: FLdPr Me
  loc_B9FE94: MemLdRfVar from_stack_1.htmFile
  loc_B9FE97: LdPrVar
  loc_B9FE99: LateMemCall
  loc_B9FE9F: FLdPr Me
  loc_B9FEA2: MemLdI2 global_92
  loc_B9FEA5: CI4UI1
  loc_B9FEA6: FLdPr Me
  loc_B9FEA9: MemLdStr global_88
  loc_B9FEAC: Ary1LdPr
  loc_B9FEAD: MemLdStr htmFile
  loc_B9FEB0: LitStr vbNullString
  loc_B9FEB3: NeStr
  loc_B9FEB5: BranchF loc_B9FF36
  loc_B9FEB8: LitVarStr var_98, "      <tr valign=""top"" class=""Encabezado"">"
  loc_B9FEBD: PopAdLdVar
  loc_B9FEBE: FLdPr Me
  loc_B9FEC1: MemLdRfVar from_stack_1.htmFile
  loc_B9FEC4: LdPrVar
  loc_B9FEC6: LateMemCall
  loc_B9FECC: LitStr "        <td colspan=""7"">ANULADA<br>Fecha: "
  loc_B9FECF: FLdPr Me
  loc_B9FED2: MemLdI2 global_92
  loc_B9FED5: CI4UI1
  loc_B9FED6: FLdPr Me
  loc_B9FED9: MemLdStr global_88
  loc_B9FEDC: Ary1LdPr
  loc_B9FEDD: MemLdStr htmFile
  loc_B9FEE0: ConcatStr
  loc_B9FEE1: FStStrNoPop var_AC
  loc_B9FEE4: LitStr "<br>Motivo: "
  loc_B9FEE7: ConcatStr
  loc_B9FEE8: FStStrNoPop var_114
  loc_B9FEEB: FLdPr Me
  loc_B9FEEE: MemLdI2 global_92
  loc_B9FEF1: CI4UI1
  loc_B9FEF2: FLdPr Me
  loc_B9FEF5: MemLdStr global_88
  loc_B9FEF8: Ary1LdPr
  loc_B9FEF9: MemLdStr global_56
  loc_B9FEFC: ConcatStr
  loc_B9FEFD: FStStrNoPop var_118
  loc_B9FF00: LitStr "</td>"
  loc_B9FF03: ConcatStr
  loc_B9FF04: CVarStr var_BC
  loc_B9FF07: PopAdLdVar
  loc_B9FF08: FLdPr Me
  loc_B9FF0B: MemLdRfVar from_stack_1.htmFile
  loc_B9FF0E: LdPrVar
  loc_B9FF10: LateMemCall
  loc_B9FF16: FFreeStr var_AC = "": var_114 = ""
  loc_B9FF1F: FFree1Var var_BC = ""
  loc_B9FF22: LitVarStr var_98, "      </tr>"
  loc_B9FF27: PopAdLdVar
  loc_B9FF28: FLdPr Me
  loc_B9FF2B: MemLdRfVar from_stack_1.htmFile
  loc_B9FF2E: LdPrVar
  loc_B9FF30: LateMemCall
  loc_B9FF36: LitVarStr var_98, "  </table></th>"
  loc_B9FF3B: PopAdLdVar
  loc_B9FF3C: FLdPr Me
  loc_B9FF3F: MemLdRfVar from_stack_1.htmFile
  loc_B9FF42: LdPrVar
  loc_B9FF44: LateMemCall
  loc_B9FF4A: LitVarStr var_98, "  </tr>"
  loc_B9FF4F: PopAdLdVar
  loc_B9FF50: FLdPr Me
  loc_B9FF53: MemLdRfVar from_stack_1.htmFile
  loc_B9FF56: LdPrVar
  loc_B9FF58: LateMemCall
  loc_B9FF5E: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_B9FF63: PopAdLdVar
  loc_B9FF64: FLdPr Me
  loc_B9FF67: MemLdRfVar from_stack_1.htmFile
  loc_B9FF6A: LdPrVar
  loc_B9FF6C: LateMemCall
  loc_B9FF72: LitVarStr var_98, "    <th>Item</th>"
  loc_B9FF77: PopAdLdVar
  loc_B9FF78: FLdPr Me
  loc_B9FF7B: MemLdRfVar from_stack_1.htmFile
  loc_B9FF7E: LdPrVar
  loc_B9FF80: LateMemCall
  loc_B9FF86: LitVarStr var_98, "    <th>Insumo</th>"
  loc_B9FF8B: PopAdLdVar
  loc_B9FF8C: FLdPr Me
  loc_B9FF8F: MemLdRfVar from_stack_1.htmFile
  loc_B9FF92: LdPrVar
  loc_B9FF94: LateMemCall
  loc_B9FF9A: LitVarStr var_98, "    <th>Cantidad</th>"
  loc_B9FF9F: PopAdLdVar
  loc_B9FFA0: FLdPr Me
  loc_B9FFA3: MemLdRfVar from_stack_1.htmFile
  loc_B9FFA6: LdPrVar
  loc_B9FFA8: LateMemCall
  loc_B9FFAE: LitVarStr var_98, "    <th>Detalle</th>"
  loc_B9FFB3: PopAdLdVar
  loc_B9FFB4: FLdPr Me
  loc_B9FFB7: MemLdRfVar from_stack_1.htmFile
  loc_B9FFBA: LdPrVar
  loc_B9FFBC: LateMemCall
  loc_B9FFC2: LitVarStr var_98, "    <th width=""14" & Chr(37) & """>Marca</th>"
  loc_B9FFC7: PopAdLdVar
  loc_B9FFC8: FLdPr Me
  loc_B9FFCB: MemLdRfVar from_stack_1.htmFile
  loc_B9FFCE: LdPrVar
  loc_B9FFD0: LateMemCall
  loc_B9FFD6: LitVarStr var_98, "    <th>Importe unitario</th>"
  loc_B9FFDB: PopAdLdVar
  loc_B9FFDC: FLdPr Me
  loc_B9FFDF: MemLdRfVar from_stack_1.htmFile
  loc_B9FFE2: LdPrVar
  loc_B9FFE4: LateMemCall
  loc_B9FFEA: LitVarStr var_98, "    <th>Total</th>"
  loc_B9FFEF: PopAdLdVar
  loc_B9FFF0: FLdPr Me
  loc_B9FFF3: MemLdRfVar from_stack_1.htmFile
  loc_B9FFF6: LdPrVar
  loc_B9FFF8: LateMemCall
  loc_B9FFFE: LitVarStr var_98, "     </tr>"
  loc_BA0003: PopAdLdVar
  loc_BA0004: FLdPr Me
  loc_BA0007: MemLdRfVar from_stack_1.htmFile
  loc_BA000A: LdPrVar
  loc_BA000C: LateMemCall
  loc_BA0012: LitI2_Byte 1
  loc_BA0014: FLdPr Me
  loc_BA0017: MemLdRfVar from_stack_1.global_94
  loc_BA001A: FLdPr Me
  loc_BA001D: MemLdI2 global_92
  loc_BA0020: CI4UI1
  loc_BA0021: FLdPr Me
  loc_BA0024: MemLdStr global_88
  loc_BA0027: Ary1LdPr
  loc_BA0028: MemLdStr global_72
  loc_BA002B: LitI2_Byte 1
  loc_BA002D: FnUBound
  loc_BA002F: CI2I4
  loc_BA0030: ForI2 var_11C
  loc_BA0036: LitVarStr var_98, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BA003B: PopAdLdVar
  loc_BA003C: FLdPr Me
  loc_BA003F: MemLdRfVar from_stack_1.htmFile
  loc_BA0042: LdPrVar
  loc_BA0044: LateMemCall
  loc_BA004A: FLdPr Me
  loc_BA004D: MemLdI2 global_94
  loc_BA0050: CI4UI1
  loc_BA0051: FLdPr Me
  loc_BA0054: MemLdI2 global_92
  loc_BA0057: CI4UI1
  loc_BA0058: FLdPr Me
  loc_BA005B: MemLdStr global_88
  loc_BA005E: AryLock
  loc_BA0061: Ary1LdPr
  loc_BA0062: MemLdStr global_72
  loc_BA0065: AryLock
  loc_BA0068: Ary1LdRf
  loc_BA0069: FStR4 var_128
  loc_BA006C: LitI4 0
  loc_BA0071: LitI4 0
  loc_BA0076: LitI2_Byte 0
  loc_BA0078: LitStr "center"
  loc_BA007B: FMemLdR4 var_128(0)
  loc_BA0080: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA0085: CVarStr var_BC
  loc_BA0088: PopAdLdVar
  loc_BA0089: FLdPr Me
  loc_BA008C: MemLdRfVar from_stack_1.htmFile
  loc_BA008F: LdPrVar
  loc_BA0091: LateMemCall
  loc_BA0097: FFree1Var var_BC = ""
  loc_BA009A: LitI4 0
  loc_BA009F: LitI4 0
  loc_BA00A4: LitI2_Byte 0
  loc_BA00A6: LitStr "left"
  loc_BA00A9: FMemLdR4 var_128(4)
  loc_BA00AE: LitStr " - "
  loc_BA00B1: ConcatStr
  loc_BA00B2: FStStrNoPop var_AC
  loc_BA00B5: FMemLdR4 var_128(8)
  loc_BA00BA: ConcatStr
  loc_BA00BB: FStStrNoPop var_114
  loc_BA00BE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA00C3: CVarStr var_BC
  loc_BA00C6: PopAdLdVar
  loc_BA00C7: FLdPr Me
  loc_BA00CA: MemLdRfVar from_stack_1.htmFile
  loc_BA00CD: LdPrVar
  loc_BA00CF: LateMemCall
  loc_BA00D5: FFreeStr var_AC = ""
  loc_BA00DC: FFree1Var var_BC = ""
  loc_BA00DF: LitI4 0
  loc_BA00E4: LitI4 0
  loc_BA00E9: LitI2_Byte 0
  loc_BA00EB: LitStr "right"
  loc_BA00EE: FMemLdR4 var_128(20)
  loc_BA00F3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA00F8: CVarStr var_BC
  loc_BA00FB: PopAdLdVar
  loc_BA00FC: FLdPr Me
  loc_BA00FF: MemLdRfVar from_stack_1.htmFile
  loc_BA0102: LdPrVar
  loc_BA0104: LateMemCall
  loc_BA010A: FFree1Var var_BC = ""
  loc_BA010D: LitI4 0
  loc_BA0112: LitI4 0
  loc_BA0117: LitI2_Byte 0
  loc_BA0119: LitStr "left"
  loc_BA011C: FMemLdR4 var_128(12)
  loc_BA0121: LitStr "<br>"
  loc_BA0124: ConcatStr
  loc_BA0125: FStStrNoPop var_AC
  loc_BA0128: FMemLdR4 var_128(16)
  loc_BA012D: ConcatStr
  loc_BA012E: FStStrNoPop var_114
  loc_BA0131: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA0136: CVarStr var_BC
  loc_BA0139: PopAdLdVar
  loc_BA013A: FLdPr Me
  loc_BA013D: MemLdRfVar from_stack_1.htmFile
  loc_BA0140: LdPrVar
  loc_BA0142: LateMemCall
  loc_BA0148: FFreeStr var_AC = ""
  loc_BA014F: FFree1Var var_BC = ""
  loc_BA0152: LitI4 0
  loc_BA0157: LitI4 0
  loc_BA015C: LitI2_Byte 0
  loc_BA015E: LitI4 0
  loc_BA0163: LitStr vbNullString
  loc_BA0166: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA016B: CVarStr var_BC
  loc_BA016E: PopAdLdVar
  loc_BA016F: FLdPr Me
  loc_BA0172: MemLdRfVar from_stack_1.htmFile
  loc_BA0175: LdPrVar
  loc_BA0177: LateMemCall
  loc_BA017D: FFree1Var var_BC = ""
  loc_BA0180: LitI4 0
  loc_BA0185: LitI4 0
  loc_BA018A: LitI2_Byte 0
  loc_BA018C: LitI4 0
  loc_BA0191: LitStr vbNullString
  loc_BA0194: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA0199: CVarStr var_BC
  loc_BA019C: PopAdLdVar
  loc_BA019D: FLdPr Me
  loc_BA01A0: MemLdRfVar from_stack_1.htmFile
  loc_BA01A3: LdPrVar
  loc_BA01A5: LateMemCall
  loc_BA01AB: FFree1Var var_BC = ""
  loc_BA01AE: LitI4 0
  loc_BA01B3: LitI4 0
  loc_BA01B8: LitI2_Byte 0
  loc_BA01BA: LitI4 0
  loc_BA01BF: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_BA01C2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA01C7: CVarStr var_BC
  loc_BA01CA: PopAdLdVar
  loc_BA01CB: FLdPr Me
  loc_BA01CE: MemLdRfVar from_stack_1.htmFile
  loc_BA01D1: LdPrVar
  loc_BA01D3: LateMemCall
  loc_BA01D9: FFree1Var var_BC = ""
  loc_BA01DC: LitVarStr var_98, "     </tr>"
  loc_BA01E1: PopAdLdVar
  loc_BA01E2: FLdPr Me
  loc_BA01E5: MemLdRfVar from_stack_1.htmFile
  loc_BA01E8: LdPrVar
  loc_BA01EA: LateMemCall
  loc_BA01F0: LitI4 0
  loc_BA01F5: FStR4 var_128
  loc_BA01F8: AryUnlock
  loc_BA01FB: AryUnlock
  loc_BA01FE: FLdPr Me
  loc_BA0201: MemLdRfVar from_stack_1.global_94
  loc_BA0204: NextI2 var_11C, loc_BA0036
  loc_BA0209: LitVarStr var_98, "  <tr align=""left"" valign=""top"" class=""Normal"" nowrap=""nowrap"">"
  loc_BA020E: PopAdLdVar
  loc_BA020F: FLdPr Me
  loc_BA0212: MemLdRfVar from_stack_1.htmFile
  loc_BA0215: LdPrVar
  loc_BA0217: LateMemCall
  loc_BA021D: LitVarStr var_98, "    <th colspan=""7"" class=""LineaDato"" >"
  loc_BA0222: PopAdLdVar
  loc_BA0223: FLdPr Me
  loc_BA0226: MemLdRfVar from_stack_1.htmFile
  loc_BA0229: LdPrVar
  loc_BA022B: LateMemCall
  loc_BA0231: LitVarStr var_98, "  <table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" cellpadding=""1"">"
  loc_BA0236: PopAdLdVar
  loc_BA0237: FLdPr Me
  loc_BA023A: MemLdRfVar from_stack_1.htmFile
  loc_BA023D: LdPrVar
  loc_BA023F: LateMemCall
  loc_BA0245: LitStr "Municipalidad de Guaymallén"
  loc_BA0248: LitStr "Municipalidad de Lavalle"
  loc_BA024B: NeStr
  loc_BA024D: BranchF loc_BA0488
  loc_BA0250: LitVarStr var_98, "      <tr valign=""top"" class=""Normal"">"
  loc_BA0255: PopAdLdVar
  loc_BA0256: FLdPr Me
  loc_BA0259: MemLdRfVar from_stack_1.htmFile
  loc_BA025C: LdPrVar
  loc_BA025E: LateMemCall
  loc_BA0264: LitVarStr var_98, "        <td colspan=""7"">Monto TOTAL en letras con IVA incluído</td>"
  loc_BA0269: PopAdLdVar
  loc_BA026A: FLdPr Me
  loc_BA026D: MemLdRfVar from_stack_1.htmFile
  loc_BA0270: LdPrVar
  loc_BA0272: LateMemCall
  loc_BA0278: LitVarStr var_98, "      </tr>"
  loc_BA027D: PopAdLdVar
  loc_BA027E: FLdPr Me
  loc_BA0281: MemLdRfVar from_stack_1.htmFile
  loc_BA0284: LdPrVar
  loc_BA0286: LateMemCall
  loc_BA028C: LitStr "Municipalidad de Guaymallén"
  loc_BA028F: LitStr "Municipalidad de Guaymallén"
  loc_BA0292: EqStr
  loc_BA0294: BranchF loc_BA029A
  loc_BA0297: Branch loc_BA02D6
  loc_BA029A: LitVarStr var_98, "      <tr valign=""top"" class=""Normal"">"
  loc_BA029F: PopAdLdVar
  loc_BA02A0: FLdPr Me
  loc_BA02A3: MemLdRfVar from_stack_1.htmFile
  loc_BA02A6: LdPrVar
  loc_BA02A8: LateMemCall
  loc_BA02AE: LitVarStr var_98, "        <td colspan=""7"">Forma de pago:</td>"
  loc_BA02B3: PopAdLdVar
  loc_BA02B4: FLdPr Me
  loc_BA02B7: MemLdRfVar from_stack_1.htmFile
  loc_BA02BA: LdPrVar
  loc_BA02BC: LateMemCall
  loc_BA02C2: LitVarStr var_98, "      </tr>"
  loc_BA02C7: PopAdLdVar
  loc_BA02C8: FLdPr Me
  loc_BA02CB: MemLdRfVar from_stack_1.htmFile
  loc_BA02CE: LdPrVar
  loc_BA02D0: LateMemCall
  loc_BA02D6: LitStr "Municipalidad de Guaymallén"
  loc_BA02D9: LitStr "Municipalidad de Guaymallén"
  loc_BA02DC: EqStr
  loc_BA02DE: BranchF loc_BA02E4
  loc_BA02E1: Branch loc_BA0320
  loc_BA02E4: LitVarStr var_98, "      <tr valign=""top"" class=""Normal"">"
  loc_BA02E9: PopAdLdVar
  loc_BA02EA: FLdPr Me
  loc_BA02ED: MemLdRfVar from_stack_1.htmFile
  loc_BA02F0: LdPrVar
  loc_BA02F2: LateMemCall
  loc_BA02F8: LitVarStr var_98, "        <td colspan=""7"">Mantenimiento de la oferta:</td>"
  loc_BA02FD: PopAdLdVar
  loc_BA02FE: FLdPr Me
  loc_BA0301: MemLdRfVar from_stack_1.htmFile
  loc_BA0304: LdPrVar
  loc_BA0306: LateMemCall
  loc_BA030C: LitVarStr var_98, "      </tr>"
  loc_BA0311: PopAdLdVar
  loc_BA0312: FLdPr Me
  loc_BA0315: MemLdRfVar from_stack_1.htmFile
  loc_BA0318: LdPrVar
  loc_BA031A: LateMemCall
  loc_BA0320: LitVarStr var_98, "      <tr valign=""top"" class=""Normal"">"
  loc_BA0325: PopAdLdVar
  loc_BA0326: FLdPr Me
  loc_BA0329: MemLdRfVar from_stack_1.htmFile
  loc_BA032C: LdPrVar
  loc_BA032E: LateMemCall
  loc_BA0334: LitVarStr var_98, "        <td colspan=""7"">Plazo de entrega:</td>"
  loc_BA0339: PopAdLdVar
  loc_BA033A: FLdPr Me
  loc_BA033D: MemLdRfVar from_stack_1.htmFile
  loc_BA0340: LdPrVar
  loc_BA0342: LateMemCall
  loc_BA0348: LitVarStr var_98, "      </tr>"
  loc_BA034D: PopAdLdVar
  loc_BA034E: FLdPr Me
  loc_BA0351: MemLdRfVar from_stack_1.htmFile
  loc_BA0354: LdPrVar
  loc_BA0356: LateMemCall
  loc_BA035C: LitVarStr var_98, "      <tr valign=""top"" class=""Normal"">"
  loc_BA0361: PopAdLdVar
  loc_BA0362: FLdPr Me
  loc_BA0365: MemLdRfVar from_stack_1.htmFile
  loc_BA0368: LdPrVar
  loc_BA036A: LateMemCall
  loc_BA0370: LitVarStr var_98, "        <td colspan=""7"">Razón Social:</td>"
  loc_BA0375: PopAdLdVar
  loc_BA0376: FLdPr Me
  loc_BA0379: MemLdRfVar from_stack_1.htmFile
  loc_BA037C: LdPrVar
  loc_BA037E: LateMemCall
  loc_BA0384: LitVarStr var_98, "      </tr>"
  loc_BA0389: PopAdLdVar
  loc_BA038A: FLdPr Me
  loc_BA038D: MemLdRfVar from_stack_1.htmFile
  loc_BA0390: LdPrVar
  loc_BA0392: LateMemCall
  loc_BA0398: LitVarStr var_98, "      <tr valign=""top"" class=""Normal"">"
  loc_BA039D: PopAdLdVar
  loc_BA039E: FLdPr Me
  loc_BA03A1: MemLdRfVar from_stack_1.htmFile
  loc_BA03A4: LdPrVar
  loc_BA03A6: LateMemCall
  loc_BA03AC: LitVarStr var_98, "        <td colspan=""7"">CUIT:</td>"
  loc_BA03B1: PopAdLdVar
  loc_BA03B2: FLdPr Me
  loc_BA03B5: MemLdRfVar from_stack_1.htmFile
  loc_BA03B8: LdPrVar
  loc_BA03BA: LateMemCall
  loc_BA03C0: LitVarStr var_98, "      </tr>"
  loc_BA03C5: PopAdLdVar
  loc_BA03C6: FLdPr Me
  loc_BA03C9: MemLdRfVar from_stack_1.htmFile
  loc_BA03CC: LdPrVar
  loc_BA03CE: LateMemCall
  loc_BA03D4: LitVarStr var_98, "      <tr valign=""top"" class=""Normal"">"
  loc_BA03D9: PopAdLdVar
  loc_BA03DA: FLdPr Me
  loc_BA03DD: MemLdRfVar from_stack_1.htmFile
  loc_BA03E0: LdPrVar
  loc_BA03E2: LateMemCall
  loc_BA03E8: LitVarStr var_98, "        <td colspan=""7"">Domicilio:</td>"
  loc_BA03ED: PopAdLdVar
  loc_BA03EE: FLdPr Me
  loc_BA03F1: MemLdRfVar from_stack_1.htmFile
  loc_BA03F4: LdPrVar
  loc_BA03F6: LateMemCall
  loc_BA03FC: LitVarStr var_98, "      </tr>"
  loc_BA0401: PopAdLdVar
  loc_BA0402: FLdPr Me
  loc_BA0405: MemLdRfVar from_stack_1.htmFile
  loc_BA0408: LdPrVar
  loc_BA040A: LateMemCall
  loc_BA0410: LitVarStr var_98, "      <tr valign=""top"" class=""Normal"">"
  loc_BA0415: PopAdLdVar
  loc_BA0416: FLdPr Me
  loc_BA0419: MemLdRfVar from_stack_1.htmFile
  loc_BA041C: LdPrVar
  loc_BA041E: LateMemCall
  loc_BA0424: LitVarStr var_98, "        <td colspan=""7"">Correo/Mail:</td>"
  loc_BA0429: PopAdLdVar
  loc_BA042A: FLdPr Me
  loc_BA042D: MemLdRfVar from_stack_1.htmFile
  loc_BA0430: LdPrVar
  loc_BA0432: LateMemCall
  loc_BA0438: LitVarStr var_98, "      </tr>"
  loc_BA043D: PopAdLdVar
  loc_BA043E: FLdPr Me
  loc_BA0441: MemLdRfVar from_stack_1.htmFile
  loc_BA0444: LdPrVar
  loc_BA0446: LateMemCall
  loc_BA044C: LitVarStr var_98, "      <tr valign=""top"" class=""Normal"">"
  loc_BA0451: PopAdLdVar
  loc_BA0452: FLdPr Me
  loc_BA0455: MemLdRfVar from_stack_1.htmFile
  loc_BA0458: LdPrVar
  loc_BA045A: LateMemCall
  loc_BA0460: LitVarStr var_98, "        <td colspan=""7"">Teléfono/s de contacto:</td>"
  loc_BA0465: PopAdLdVar
  loc_BA0466: FLdPr Me
  loc_BA0469: MemLdRfVar from_stack_1.htmFile
  loc_BA046C: LdPrVar
  loc_BA046E: LateMemCall
  loc_BA0474: LitVarStr var_98, "      </tr>"
  loc_BA0479: PopAdLdVar
  loc_BA047A: FLdPr Me
  loc_BA047D: MemLdRfVar from_stack_1.htmFile
  loc_BA0480: LdPrVar
  loc_BA0482: LateMemCall
  loc_BA0488: LitStr "Municipalidad de Guaymallén"
  loc_BA048B: LitStr "Municipalidad de Lavalle"
  loc_BA048E: EqStr
  loc_BA0490: BranchF loc_BA060F
  loc_BA0493: LitVarStr var_98, "      <tr valign=""top"" class=""Normal"">"
  loc_BA0498: PopAdLdVar
  loc_BA0499: FLdPr Me
  loc_BA049C: MemLdRfVar from_stack_1.htmFile
  loc_BA049F: LdPrVar
  loc_BA04A1: LateMemCall
  loc_BA04A7: LitVarStr var_98, "        <td colspan=""7"">Monto Total Cotizado:</td>"
  loc_BA04AC: PopAdLdVar
  loc_BA04AD: FLdPr Me
  loc_BA04B0: MemLdRfVar from_stack_1.htmFile
  loc_BA04B3: LdPrVar
  loc_BA04B5: LateMemCall
  loc_BA04BB: LitVarStr var_98, "      </tr>"
  loc_BA04C0: PopAdLdVar
  loc_BA04C1: FLdPr Me
  loc_BA04C4: MemLdRfVar from_stack_1.htmFile
  loc_BA04C7: LdPrVar
  loc_BA04C9: LateMemCall
  loc_BA04CF: LitVarStr var_98, "        <table width=""100" & Chr(37) & """ border=""0"" align=""right"">"
  loc_BA04D4: PopAdLdVar
  loc_BA04D5: FLdPr Me
  loc_BA04D8: MemLdRfVar from_stack_1.htmFile
  loc_BA04DB: LdPrVar
  loc_BA04DD: LateMemCall
  loc_BA04E3: LitVarStr var_98, "      </br>"
  loc_BA04E8: PopAdLdVar
  loc_BA04E9: FLdPr Me
  loc_BA04EC: MemLdRfVar from_stack_1.htmFile
  loc_BA04EF: LdPrVar
  loc_BA04F1: LateMemCall
  loc_BA04F7: LitVarStr var_98, "      </br>"
  loc_BA04FC: PopAdLdVar
  loc_BA04FD: FLdPr Me
  loc_BA0500: MemLdRfVar from_stack_1.htmFile
  loc_BA0503: LdPrVar
  loc_BA0505: LateMemCall
  loc_BA050B: LitVarStr var_98, "      </br>"
  loc_BA0510: PopAdLdVar
  loc_BA0511: FLdPr Me
  loc_BA0514: MemLdRfVar from_stack_1.htmFile
  loc_BA0517: LdPrVar
  loc_BA0519: LateMemCall
  loc_BA051F: LitVarStr var_98, "      </br>"
  loc_BA0524: PopAdLdVar
  loc_BA0525: FLdPr Me
  loc_BA0528: MemLdRfVar from_stack_1.htmFile
  loc_BA052B: LdPrVar
  loc_BA052D: LateMemCall
  loc_BA0533: LitVarStr var_98, "         <tr align=""center"">"
  loc_BA0538: PopAdLdVar
  loc_BA0539: FLdPr Me
  loc_BA053C: MemLdRfVar from_stack_1.htmFile
  loc_BA053F: LdPrVar
  loc_BA0541: LateMemCall
  loc_BA0547: LitVarStr var_98, "           <td width=""33" & Chr(37) & """>&nbsp;</td>"
  loc_BA054C: PopAdLdVar
  loc_BA054D: FLdPr Me
  loc_BA0550: MemLdRfVar from_stack_1.htmFile
  loc_BA0553: LdPrVar
  loc_BA0555: LateMemCall
  loc_BA055B: LitVarStr var_98, "           <td width=""33" & Chr(37) & """>&nbsp;</td>"
  loc_BA0560: PopAdLdVar
  loc_BA0561: FLdPr Me
  loc_BA0564: MemLdRfVar from_stack_1.htmFile
  loc_BA0567: LdPrVar
  loc_BA0569: LateMemCall
  loc_BA056F: LitVarStr var_98, "           <td width=""33" & Chr(37) & """ valign=""bottom""><hr width=""80" & Chr(37) & """></td>"
  loc_BA0574: PopAdLdVar
  loc_BA0575: FLdPr Me
  loc_BA0578: MemLdRfVar from_stack_1.htmFile
  loc_BA057B: LdPrVar
  loc_BA057D: LateMemCall
  loc_BA0583: LitVarStr var_98, "         </tr>"
  loc_BA0588: PopAdLdVar
  loc_BA0589: FLdPr Me
  loc_BA058C: MemLdRfVar from_stack_1.htmFile
  loc_BA058F: LdPrVar
  loc_BA0591: LateMemCall
  loc_BA0597: LitVarStr var_98, "         <tr>"
  loc_BA059C: PopAdLdVar
  loc_BA059D: FLdPr Me
  loc_BA05A0: MemLdRfVar from_stack_1.htmFile
  loc_BA05A3: LdPrVar
  loc_BA05A5: LateMemCall
  loc_BA05AB: LitVarStr var_98, "           <td width=""33" & Chr(37) & """>&nbsp;</td>"
  loc_BA05B0: PopAdLdVar
  loc_BA05B1: FLdPr Me
  loc_BA05B4: MemLdRfVar from_stack_1.htmFile
  loc_BA05B7: LdPrVar
  loc_BA05B9: LateMemCall
  loc_BA05BF: LitVarStr var_98, "           <td width=""33" & Chr(37) & """>&nbsp;</td>"
  loc_BA05C4: PopAdLdVar
  loc_BA05C5: FLdPr Me
  loc_BA05C8: MemLdRfVar from_stack_1.htmFile
  loc_BA05CB: LdPrVar
  loc_BA05CD: LateMemCall
  loc_BA05D3: LitVarStr var_98, "           <td class=""Normal"" align=""center"" valign=""top"">Firma del Oferente<br></td>"
  loc_BA05D8: PopAdLdVar
  loc_BA05D9: FLdPr Me
  loc_BA05DC: MemLdRfVar from_stack_1.htmFile
  loc_BA05DF: LdPrVar
  loc_BA05E1: LateMemCall
  loc_BA05E7: LitVarStr var_98, "         </tr>"
  loc_BA05EC: PopAdLdVar
  loc_BA05ED: FLdPr Me
  loc_BA05F0: MemLdRfVar from_stack_1.htmFile
  loc_BA05F3: LdPrVar
  loc_BA05F5: LateMemCall
  loc_BA05FB: LitVarStr var_98, "        </table></td>"
  loc_BA0600: PopAdLdVar
  loc_BA0601: FLdPr Me
  loc_BA0604: MemLdRfVar from_stack_1.htmFile
  loc_BA0607: LdPrVar
  loc_BA0609: LateMemCall
  loc_BA060F: LitVarStr var_98, "  </table></th>"
  loc_BA0614: PopAdLdVar
  loc_BA0615: FLdPr Me
  loc_BA0618: MemLdRfVar from_stack_1.htmFile
  loc_BA061B: LdPrVar
  loc_BA061D: LateMemCall
  loc_BA0623: LitVarStr var_98, "  </tr>"
  loc_BA0628: PopAdLdVar
  loc_BA0629: FLdPr Me
  loc_BA062C: MemLdRfVar from_stack_1.htmFile
  loc_BA062F: LdPrVar
  loc_BA0631: LateMemCall
  loc_BA0637: LitVarStr var_98, "</table>"
  loc_BA063C: PopAdLdVar
  loc_BA063D: FLdPr Me
  loc_BA0640: MemLdRfVar from_stack_1.htmFile
  loc_BA0643: LdPrVar
  loc_BA0645: LateMemCall
  loc_BA064B: FLdPr Me
  loc_BA064E: MemLdI2 global_92
  loc_BA0651: CI4UI1
  loc_BA0652: FLdPr Me
  loc_BA0655: MemLdStr global_88
  loc_BA0658: Ary1LdPr
  loc_BA0659: MemLdStr global_36
  loc_BA065C: LitStr vbNullString
  loc_BA065F: NeStr
  loc_BA0661: FLdPr Me
  loc_BA0664: MemLdI2 global_92
  loc_BA0667: CI4UI1
  loc_BA0668: FLdPr Me
  loc_BA066B: MemLdStr global_88
  loc_BA066E: Ary1LdPr
  loc_BA066F: MemLdStr global_44
  loc_BA0672: LitStr vbNullString
  loc_BA0675: NeStr
  loc_BA0677: AndI4
  loc_BA0678: BranchF loc_BA089E
  loc_BA067B: FLdPr Me
  loc_BA067E: MemLdI2 global_92
  loc_BA0681: CI4UI1
  loc_BA0682: FLdPr Me
  loc_BA0685: MemLdStr global_88
  loc_BA0688: Ary1LdPr
  loc_BA0689: MemLdStr global_36
  loc_BA068C: LitStr vbNullString
  loc_BA068F: NeStr
  loc_BA0691: BranchF loc_BA078B
  loc_BA0694: LitI4 1
  loc_BA0699: LitI4 1
  loc_BA069E: LitVarStr var_100, "hh:mm"
  loc_BA06A3: FStVarCopyObj var_D0
  loc_BA06A6: FLdRfVar var_D0
  loc_BA06A9: FLdPr Me
  loc_BA06AC: MemLdI2 global_92
  loc_BA06AF: CI4UI1
  loc_BA06B0: FLdPr Me
  loc_BA06B3: MemLdStr global_88
  loc_BA06B6: AryLock
  loc_BA06B9: Ary1LdPr
  loc_BA06BA: MemLdRfVar from_stack_1.global_40
  loc_BA06BD: CVarRef
  loc_BA06C2: ImpAdCallI2 Format$(, )
  loc_BA06C7: FStStr var_114
  loc_BA06CA: AryUnlock
  loc_BA06CD: LitStr "<p class=""LineaDato"">Apertura de sobre Nº 1: "
  loc_BA06D0: LitI4 1
  loc_BA06D5: LitI4 1
  loc_BA06DA: LitVarStr var_A8, "dddd d \de mmmm \de yyyy"
  loc_BA06DF: FStVarCopyObj var_BC
  loc_BA06E2: FLdRfVar var_BC
  loc_BA06E5: FLdPr Me
  loc_BA06E8: MemLdI2 global_92
  loc_BA06EB: CI4UI1
  loc_BA06EC: FLdPr Me
  loc_BA06EF: MemLdStr global_88
  loc_BA06F2: AryLock
  loc_BA06F5: Ary1LdPr
  loc_BA06F6: MemLdRfVar from_stack_1.global_36
  loc_BA06F9: CVarRef
  loc_BA06FE: ImpAdCallI2 Format$(, )
  loc_BA0703: FStStr var_AC
  loc_BA0706: AryUnlock
  loc_BA0709: ILdRf var_AC
  loc_BA070C: ConcatStr
  loc_BA070D: CVarStr var_16C
  loc_BA0710: LitVarStr var_14C, vbNullString
  loc_BA0715: FStVarCopyObj var_110
  loc_BA0718: FLdRfVar var_110
  loc_BA071B: LitStr " a las "
  loc_BA071E: ILdRf var_114
  loc_BA0721: ConcatStr
  loc_BA0722: FStStrNoPop var_118
  loc_BA0725: LitStr " horas."
  loc_BA0728: ConcatStr
  loc_BA0729: CVarStr var_F0
  loc_BA072C: FLdPr Me
  loc_BA072F: MemLdI2 global_92
  loc_BA0732: CI4UI1
  loc_BA0733: FLdPr Me
  loc_BA0736: MemLdStr global_88
  loc_BA0739: Ary1LdPr
  loc_BA073A: MemLdStr global_40
  loc_BA073D: LitStr vbNullString
  loc_BA0740: NeStr
  loc_BA0742: CVarBoolI2 var_13C
  loc_BA0746: FLdRfVar var_15C
  loc_BA0749: ImpAdCallFPR4  = IIf(, , )
  loc_BA074E: FLdRfVar var_15C
  loc_BA0751: ConcatVar var_17C
  loc_BA0755: LitVarStr var_18C, "</p>"
  loc_BA075A: ConcatVar var_19C
  loc_BA075E: PopAdLdVar
  loc_BA075F: FLdPr Me
  loc_BA0762: MemLdRfVar from_stack_1.htmFile
  loc_BA0765: LdPrVar
  loc_BA0767: LateMemCall
  loc_BA076D: FFreeStr var_AC = "": var_114 = ""
  loc_BA0776: FFreeVar var_BC = "": var_D0 = "": var_13C = "": var_F0 = "": var_110 = "": var_16C = "": var_15C = "": var_17C = ""
  loc_BA078B: FLdPr Me
  loc_BA078E: MemLdI2 global_92
  loc_BA0791: CI4UI1
  loc_BA0792: FLdPr Me
  loc_BA0795: MemLdStr global_88
  loc_BA0798: Ary1LdPr
  loc_BA0799: MemLdStr global_44
  loc_BA079C: LitStr vbNullString
  loc_BA079F: NeStr
  loc_BA07A1: BranchF loc_BA089B
  loc_BA07A4: LitI4 1
  loc_BA07A9: LitI4 1
  loc_BA07AE: LitVarStr var_100, "hh:mm"
  loc_BA07B3: FStVarCopyObj var_D0
  loc_BA07B6: FLdRfVar var_D0
  loc_BA07B9: FLdPr Me
  loc_BA07BC: MemLdI2 global_92
  loc_BA07BF: CI4UI1
  loc_BA07C0: FLdPr Me
  loc_BA07C3: MemLdStr global_88
  loc_BA07C6: AryLock
  loc_BA07C9: Ary1LdPr
  loc_BA07CA: MemLdRfVar from_stack_1.global_48
  loc_BA07CD: CVarRef
  loc_BA07D2: ImpAdCallI2 Format$(, )
  loc_BA07D7: FStStr var_114
  loc_BA07DA: AryUnlock
  loc_BA07DD: LitStr "<p class=""LineaDato"">Apertura de sobre Nº 2: "
  loc_BA07E0: LitI4 1
  loc_BA07E5: LitI4 1
  loc_BA07EA: LitVarStr var_A8, "dddd d \de mmmm \de yyyy"
  loc_BA07EF: FStVarCopyObj var_BC
  loc_BA07F2: FLdRfVar var_BC
  loc_BA07F5: FLdPr Me
  loc_BA07F8: MemLdI2 global_92
  loc_BA07FB: CI4UI1
  loc_BA07FC: FLdPr Me
  loc_BA07FF: MemLdStr global_88
  loc_BA0802: AryLock
  loc_BA0805: Ary1LdPr
  loc_BA0806: MemLdRfVar from_stack_1.global_44
  loc_BA0809: CVarRef
  loc_BA080E: ImpAdCallI2 Format$(, )
  loc_BA0813: FStStr var_AC
  loc_BA0816: AryUnlock
  loc_BA0819: ILdRf var_AC
  loc_BA081C: ConcatStr
  loc_BA081D: CVarStr var_16C
  loc_BA0820: LitVarStr var_14C, vbNullString
  loc_BA0825: FStVarCopyObj var_110
  loc_BA0828: FLdRfVar var_110
  loc_BA082B: LitStr " a las "
  loc_BA082E: ILdRf var_114
  loc_BA0831: ConcatStr
  loc_BA0832: FStStrNoPop var_118
  loc_BA0835: LitStr " horas."
  loc_BA0838: ConcatStr
  loc_BA0839: CVarStr var_F0
  loc_BA083C: FLdPr Me
  loc_BA083F: MemLdI2 global_92
  loc_BA0842: CI4UI1
  loc_BA0843: FLdPr Me
  loc_BA0846: MemLdStr global_88
  loc_BA0849: Ary1LdPr
  loc_BA084A: MemLdStr global_48
  loc_BA084D: LitStr vbNullString
  loc_BA0850: NeStr
  loc_BA0852: CVarBoolI2 var_13C
  loc_BA0856: FLdRfVar var_15C
  loc_BA0859: ImpAdCallFPR4  = IIf(, , )
  loc_BA085E: FLdRfVar var_15C
  loc_BA0861: ConcatVar var_17C
  loc_BA0865: LitVarStr var_18C, "</p>"
  loc_BA086A: ConcatVar var_19C
  loc_BA086E: PopAdLdVar
  loc_BA086F: FLdPr Me
  loc_BA0872: MemLdRfVar from_stack_1.htmFile
  loc_BA0875: LdPrVar
  loc_BA0877: LateMemCall
  loc_BA087D: FFreeStr var_AC = "": var_114 = ""
  loc_BA0886: FFreeVar var_BC = "": var_D0 = "": var_13C = "": var_F0 = "": var_110 = "": var_16C = "": var_15C = "": var_17C = ""
  loc_BA089B: Branch loc_BA09C7
  loc_BA089E: FLdPr Me
  loc_BA08A1: MemLdI2 global_92
  loc_BA08A4: CI4UI1
  loc_BA08A5: FLdPr Me
  loc_BA08A8: MemLdStr global_88
  loc_BA08AB: Ary1LdPr
  loc_BA08AC: MemLdStr global_36
  loc_BA08AF: LitStr vbNullString
  loc_BA08B2: NeStr
  loc_BA08B4: BranchF loc_BA09C7
  loc_BA08B7: FLdPr Me
  loc_BA08BA: MemLdI2 global_92
  loc_BA08BD: CI4UI1
  loc_BA08BE: FLdPr Me
  loc_BA08C1: MemLdStr global_88
  loc_BA08C4: Ary1LdPr
  loc_BA08C5: MemLdStr global_36
  loc_BA08C8: LitStr vbNullString
  loc_BA08CB: NeStr
  loc_BA08CD: BranchF loc_BA09C7
  loc_BA08D0: LitI4 1
  loc_BA08D5: LitI4 1
  loc_BA08DA: LitVarStr var_100, "hh:mm"
  loc_BA08DF: FStVarCopyObj var_D0
  loc_BA08E2: FLdRfVar var_D0
  loc_BA08E5: FLdPr Me
  loc_BA08E8: MemLdI2 global_92
  loc_BA08EB: CI4UI1
  loc_BA08EC: FLdPr Me
  loc_BA08EF: MemLdStr global_88
  loc_BA08F2: AryLock
  loc_BA08F5: Ary1LdPr
  loc_BA08F6: MemLdRfVar from_stack_1.global_40
  loc_BA08F9: CVarRef
  loc_BA08FE: ImpAdCallI2 Format$(, )
  loc_BA0903: FStStr var_114
  loc_BA0906: AryUnlock
  loc_BA0909: LitStr "<p class=""LineaDato"">Apertura: "
  loc_BA090C: LitI4 1
  loc_BA0911: LitI4 1
  loc_BA0916: LitVarStr var_A8, "dddd d \de mmmm \de yyyy"
  loc_BA091B: FStVarCopyObj var_BC
  loc_BA091E: FLdRfVar var_BC
  loc_BA0921: FLdPr Me
  loc_BA0924: MemLdI2 global_92
  loc_BA0927: CI4UI1
  loc_BA0928: FLdPr Me
  loc_BA092B: MemLdStr global_88
  loc_BA092E: AryLock
  loc_BA0931: Ary1LdPr
  loc_BA0932: MemLdRfVar from_stack_1.global_36
  loc_BA0935: CVarRef
  loc_BA093A: ImpAdCallI2 Format$(, )
  loc_BA093F: FStStr var_AC
  loc_BA0942: AryUnlock
  loc_BA0945: ILdRf var_AC
  loc_BA0948: ConcatStr
  loc_BA0949: CVarStr var_16C
  loc_BA094C: LitVarStr var_14C, vbNullString
  loc_BA0951: FStVarCopyObj var_110
  loc_BA0954: FLdRfVar var_110
  loc_BA0957: LitStr " a las "
  loc_BA095A: ILdRf var_114
  loc_BA095D: ConcatStr
  loc_BA095E: FStStrNoPop var_118
  loc_BA0961: LitStr " horas."
  loc_BA0964: ConcatStr
  loc_BA0965: CVarStr var_F0
  loc_BA0968: FLdPr Me
  loc_BA096B: MemLdI2 global_92
  loc_BA096E: CI4UI1
  loc_BA096F: FLdPr Me
  loc_BA0972: MemLdStr global_88
  loc_BA0975: Ary1LdPr
  loc_BA0976: MemLdStr global_40
  loc_BA0979: LitStr vbNullString
  loc_BA097C: NeStr
  loc_BA097E: CVarBoolI2 var_13C
  loc_BA0982: FLdRfVar var_15C
  loc_BA0985: ImpAdCallFPR4  = IIf(, , )
  loc_BA098A: FLdRfVar var_15C
  loc_BA098D: ConcatVar var_17C
  loc_BA0991: LitVarStr var_18C, "</p>"
  loc_BA0996: ConcatVar var_19C
  loc_BA099A: PopAdLdVar
  loc_BA099B: FLdPr Me
  loc_BA099E: MemLdRfVar from_stack_1.htmFile
  loc_BA09A1: LdPrVar
  loc_BA09A3: LateMemCall
  loc_BA09A9: FFreeStr var_AC = "": var_114 = ""
  loc_BA09B2: FFreeVar var_BC = "": var_D0 = "": var_13C = "": var_F0 = "": var_110 = "": var_16C = "": var_15C = "": var_17C = ""
  loc_BA09C7: ExitProcHresult
End Function

Private Function Proc_238_29_972E24() '972E24
  'Data Table: 473C5C
  loc_972DF8: LitVarStr var_94, "</body>"
  loc_972DFD: PopAdLdVar
  loc_972DFE: FLdPr Me
  loc_972E01: MemLdRfVar from_stack_1.htmFile
  loc_972E04: LdPrVar
  loc_972E06: LateMemCall
  loc_972E0C: LitVarStr var_94, "</html>"
  loc_972E11: PopAdLdVar
  loc_972E12: FLdPr Me
  loc_972E15: MemLdRfVar from_stack_1.htmFile
  loc_972E18: LdPrVar
  loc_972E1A: LateMemCall
  loc_972E20: ExitProcHresult
End Function
