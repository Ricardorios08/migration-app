VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeCotizaciones
  Caption = "Listado de Cotizaciones"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeCotizaciones.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7920
  ClientHeight = 4575
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4320
    Width = 7920
    Height = 255
    TabIndex = 21
    OleObjectBlob = "rptListadodeCotizaciones.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6000
    Top = 3360
    Width = 735
    Height = 615
    TabIndex = 19
    Cancel = -1  'True
    Picture = "rptListadodeCotizaciones.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeCotizaciones.frx":0B9C
    Left = 3960
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 3120
    Width = 1815
    Height = 1095
    TabIndex = 17
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 18
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3120
    Width = 3015
    Height = 1095
    TabIndex = 14
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 16
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 15
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7695
    Height = 3015
    TabIndex = 0
    Begin VB.ComboBox cboExpeImpu
      Left = 2160
      Top = 2400
      Width = 2055
      Height = 315
      TabIndex = 13
    End
    Begin VB.TextBox CucuPersTxt
      Left = 2160
      Top = 1920
      Width = 1335
      Height = 285
      TabIndex = 9
      MaxLength = 11
    End
    Begin VB.CommandButton CucuPersCmd
      Left = 3600
      Top = 1920
      Width = 375
      Height = 375
      TabIndex = 10
      Picture = "rptListadodeCotizaciones.frx":0C00
      Style = 1
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2160
      Top = 480
      Width = 1095
      Height = 315
      TabIndex = 3
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6120
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 2
    End
    Begin MSMask.MaskEdBox DesdeCodiNopeMsk
      Left = 2160
      Top = 960
      Width = 975
      Height = 315
      TabIndex = 5
      OleObjectBlob = "rptListadodeCotizaciones.frx":0CFA
    End
    Begin MSMask.MaskEdBox HastaCodiNopeMsk
      Left = 2160
      Top = 1440
      Width = 975
      Height = 315
      TabIndex = 7
      OleObjectBlob = "rptListadodeCotizaciones.frx":0D6A
    End
    Begin VB.Label Label4
      Caption = "Expediente:"
      Left = 1185
      Top = 2400
      Width = 840
      Height = 195
      TabIndex = 12
      AutoSize = -1  'True
    End
    Begin VB.Label Label5
      Caption = "Proveedor:"
      Left = 1245
      Top = 1920
      Width = 780
      Height = 195
      TabIndex = 8
    End
    Begin VB.Label DetaProvLbl
      Left = 4080
      Top = 1920
      Width = 3495
      Height = 375
      TabIndex = 11
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label2
      Caption = "Desde Nota de pedido Nº:"
      Left = 150
      Top = 960
      Width = 1875
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Hasta Nota de Pedido Nº:"
      Left = 180
      Top = 1440
      Width = 1845
      Height = 195
      TabIndex = 6
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 1440
      Top = 480
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6120
    Top = 3600
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 20
    OleObjectBlob = "rptListadodeCotizaciones.frx":0DDA
  End
End

Attribute VB_Name = "rptListadodeCotizaciones"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_00597558
  bStruc(60) As Byte ' String fields: 15
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '989D34
  'Data Table: 4794A0
  loc_989CFC: FLdPr Me
  loc_989CFF: VCallAd Control_ID_statusBar
  loc_989D02: FStAdFunc var_88
  loc_989D05: FLdPr var_88
  loc_989D08: LateIdLdVar var_98 DispID_1 0
  loc_989D0F: CStrVarTmp
  loc_989D10: CVarStr var_A8
  loc_989D13: PopAdLdVar
  loc_989D14: FLdPr Me
  loc_989D17: VCallAd Control_ID_statusBar
  loc_989D1A: FStAdFunc var_BC
  loc_989D1D: FLdPr var_BC
  loc_989D20: LateIdSt
  loc_989D25: FFreeAd var_88 = ""
  loc_989D2C: FFreeVar var_98 = ""
  loc_989D33: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '9E598C
  'Data Table: 4794A0
  loc_9E5888: FLdPr Me
  loc_9E588B: VCallAd Control_ID_cboExpeImpu
  loc_9E588E: FStAdFunc var_8C
  loc_9E5891: FLdPr var_8C
  loc_9E5894: Me.Clear
  loc_9E5899: FFree1Ad var_8C
  loc_9E589C: FLdRfVar var_88
  loc_9E589F: NewIfNullAd
  loc_9E58A2: FStAd var_90 
  loc_9E58A6: LitStr "SELECT DISTINCT ExpeImpu FROM notapedido WHERE PeriInfo = "
  loc_9E58A9: FLdRfVar var_94
  loc_9E58AC: FLdPr Me
  loc_9E58AF: VCallAd Control_ID_cboPeriodo
  loc_9E58B2: FStAdFunc var_8C
  loc_9E58B5: FLdPr var_8C
  loc_9E58B8:  = Me.Text
  loc_9E58BD: ILdRf var_94
  loc_9E58C0: ConcatStr
  loc_9E58C1: FStStrNoPop var_98
  loc_9E58C4: LitStr " ORDER BY ExpeImpu;"
  loc_9E58C7: ConcatStr
  loc_9E58C8: FStStrNoPop var_9C
  loc_9E58CB: FLdPr var_90
  loc_9E58CE: Call clscotizacion.RedefineRS(from_stack_1v)
  loc_9E58D3: FFreeStr var_94 = "": var_98 = ""
  loc_9E58DC: FFree1Ad var_8C
  loc_9E58DF: FLdRfVar var_A0
  loc_9E58E2: FLdPr var_90
  loc_9E58E5: from_stack_1 = clscotizacion.RecordCount
  loc_9E58EA: ILdRf var_A0
  loc_9E58ED: LitI4 0
  loc_9E58F2: GtI4
  loc_9E58F3: BranchF loc_9E597A
  loc_9E58F6: FLdPr var_90
  loc_9E58F9: Call clscotizacion.MoveFirst()
  loc_9E58FE: FLdRfVar var_A2
  loc_9E5901: FLdPr var_90
  loc_9E5904: from_stack_1 = clscotizacion.EOF
  loc_9E5909: FLdI2 var_A2
  loc_9E590C: NotI4
  loc_9E590D: BranchF loc_9E597A
  loc_9E5910: LitVar_Missing var_DC
  loc_9E5913: PopAdLdVar
  loc_9E5914: FLdRfVar var_CC
  loc_9E5917: FLdRfVar var_BC
  loc_9E591A: LitVarStr var_B8, "ExpeImpu"
  loc_9E591F: PopAdLdVar
  loc_9E5920: FLdRfVar var_A8
  loc_9E5923: FLdRfVar var_8C
  loc_9E5926: FLdPr var_90
  loc_9E5929: from_stack_1v = clscotizacion.RsFrmGet()
  loc_9E592E: FLdPr var_8C
  loc_9E5931:  = Me.Fields
  loc_9E5936: FLdPr var_A8
  loc_9E5939: from_stack_2 = Me.Item(from_stack_1)
  loc_9E593E: FLdPr var_BC
  loc_9E5941:  = Me.Value
  loc_9E5946: FLdRfVar var_CC
  loc_9E5949: CStrVarTmp
  loc_9E594A: FStStrNoPop var_94
  loc_9E594D: FLdPr Me
  loc_9E5950: VCallAd Control_ID_cboExpeImpu
  loc_9E5953: FStAdFunc var_E0
  loc_9E5956: FLdPr var_E0
  loc_9E5959: Me.AddItem from_stack_1, from_stack_2
  loc_9E595E: FFree1Str var_94
  loc_9E5961: FFreeAd var_8C = "": var_A8 = "": var_BC = ""
  loc_9E596C: FFree1Var var_CC = ""
  loc_9E596F: FLdPr var_90
  loc_9E5972: Call clscotizacion.MoveSiguiente()
  loc_9E5977: Branch loc_9E58FE
  loc_9E597A: LitNothing
  loc_9E597C: FStAd var_90 
  loc_9E5980: LitNothing
  loc_9E5982: CastAd
  loc_9E5985: FStAdFunc var_88
  loc_9E5988: ExitProcHresult
  loc_9E5989: CBoolVarNull
  loc_9E598B: Ary1StI2
End Sub

Private Sub cmdPredeterminada_Click() '960F04
  'Data Table: 4794A0
  loc_960EEC: ILdRf Me
  loc_960EEF: CastAd
  loc_960EF2: FStAdFunc var_88
  loc_960EF5: FLdRfVar var_88
  loc_960EF8: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_960EFD: FFree1Ad var_88
  loc_960F00: ExitProcHresult
  loc_960F01: FLdRfVar var_90
End Sub

Private Sub cmdPdf_Click() '960F9C
  'Data Table: 4794A0
  loc_960F84: LitI2_Byte 0
  loc_960F86: ILdRf Me
  loc_960F89: CastAd
  loc_960F8C: FStAdFunc var_88
  loc_960F8F: FLdRfVar var_88
  loc_960F92: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_960F97: FFree1Ad var_88
  loc_960F9A: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '960E6C
  'Data Table: 4794A0
  loc_960E54: ILdRf Me
  loc_960E57: CastAd
  loc_960E5A: FStAdFunc var_88
  loc_960E5D: FLdRfVar var_88
  loc_960E60: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_960E65: FFree1Ad var_88
  loc_960E68: ExitProcHresult
  loc_960E69: CVarStr Me00
End Sub

Private Sub Form_Load() '9CBE14
  'Data Table: 4794A0
  loc_9CBD3C: LitI2_Byte &HFF
  loc_9CBD3E: ImpAdStI2 MemVar_C3D840
  loc_9CBD41: ILdRf Me
  loc_9CBD44: CastAd
  loc_9CBD47: FStAdFunc var_88
  loc_9CBD4A: FLdRfVar var_88
  loc_9CBD4D: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9CBD52: FFree1Ad var_88
  loc_9CBD55: FLdPr Me
  loc_9CBD58: MemLdRfVar from_stack_1.global_72
  loc_9CBD5B: NewIfNullAd
  loc_9CBD5E: FStAd var_8C 
  loc_9CBD62: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9CBD65: FLdPr var_8C
  loc_9CBD68: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9CBD6D: FLdRfVar var_90
  loc_9CBD70: FLdPr var_8C
  loc_9CBD73: from_stack_1 = clsperiodo.RecordCount
  loc_9CBD78: ILdRf var_90
  loc_9CBD7B: LitI4 0
  loc_9CBD80: GtI4
  loc_9CBD81: BranchF loc_9CBE08
  loc_9CBD84: FLdPr var_8C
  loc_9CBD87: Call clsperiodo.MoveFirst()
  loc_9CBD8C: FLdRfVar var_92
  loc_9CBD8F: FLdPr var_8C
  loc_9CBD92: from_stack_1 = clsperiodo.EOF
  loc_9CBD97: FLdI2 var_92
  loc_9CBD9A: NotI4
  loc_9CBD9B: BranchF loc_9CBE08
  loc_9CBD9E: LitVar_Missing var_D0
  loc_9CBDA1: PopAdLdVar
  loc_9CBDA2: FLdRfVar var_BC
  loc_9CBDA5: FLdRfVar var_AC
  loc_9CBDA8: LitVarStr var_A8, "PeriInfo"
  loc_9CBDAD: PopAdLdVar
  loc_9CBDAE: FLdRfVar var_98
  loc_9CBDB1: FLdRfVar var_88
  loc_9CBDB4: FLdPr var_8C
  loc_9CBDB7: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9CBDBC: FLdPr var_88
  loc_9CBDBF:  = Me.Fields
  loc_9CBDC4: FLdPr var_98
  loc_9CBDC7: from_stack_2 = Me.Item(from_stack_1)
  loc_9CBDCC: FLdPr var_AC
  loc_9CBDCF:  = Me.Value
  loc_9CBDD4: FLdRfVar var_BC
  loc_9CBDD7: CStrVarTmp
  loc_9CBDD8: FStStrNoPop var_C0
  loc_9CBDDB: FLdPr Me
  loc_9CBDDE: VCallAd Control_ID_cboPeriodo
  loc_9CBDE1: FStAdFunc var_D4
  loc_9CBDE4: FLdPr var_D4
  loc_9CBDE7: Me.AddItem from_stack_1, from_stack_2
  loc_9CBDEC: FFree1Str var_C0
  loc_9CBDEF: FFreeAd var_88 = "": var_98 = "": var_AC = ""
  loc_9CBDFA: FFree1Var var_BC = ""
  loc_9CBDFD: FLdPr var_8C
  loc_9CBE00: Call clsperiodo.MoveSiguiente()
  loc_9CBE05: Branch loc_9CBD8C
  loc_9CBE08: LitNothing
  loc_9CBE0A: FStAd var_8C 
  loc_9CBE0E: Call cmdNueva_Click()
  loc_9CBE13: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9610CC
  'Data Table: 4794A0
  loc_9610B4: FLdPr Me
  loc_9610B7: VCallAd Control_ID_wbbReporte
  loc_9610BA: FStAdFunc var_88
  loc_9610BD: FLdRfVar var_88
  loc_9610C0: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9610C5: FFree1Ad var_88
  loc_9610C8: ExitProcHresult
End Sub

Private Sub DesdeCodiNopeMsk_UnknownEvent_0 '951810
  'Data Table: 4794A0
  loc_9517FC: FLdPr Me
  loc_9517FF: VCallAd Control_ID_DesdeCodiNopeMsk
  loc_951802: CVarAd
  loc_951806: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95180B: FFree1Var var_94 = ""
  loc_95180E: ExitProcHresult
  loc_95180F: LtI2
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) '9E9294
  'Data Table: 4794A0
  loc_9E917C: FLdRfVar var_8C
  loc_9E917F: FLdPr Me
  loc_9E9182: VCallAd Control_ID_CucuPersTxt
  loc_9E9185: FStAdFunc var_88
  loc_9E9188: FLdPr var_88
  loc_9E918B:  = Me.Text
  loc_9E9190: ILdRf var_8C
  loc_9E9193: LitStr vbNullString
  loc_9E9196: NeStr
  loc_9E9198: FFree1Str var_8C
  loc_9E919B: FFree1Ad var_88
  loc_9E919E: BranchF loc_9E927B
  loc_9E91A1: LitStr "SELECT DetaProv FROM proveedor WHERE CucuPers = '"
  loc_9E91A4: FLdRfVar var_8C
  loc_9E91A7: FLdPr Me
  loc_9E91AA: VCallAd Control_ID_CucuPersTxt
  loc_9E91AD: FStAdFunc var_88
  loc_9E91B0: FLdPr var_88
  loc_9E91B3:  = Me.Text
  loc_9E91B8: ILdRf var_8C
  loc_9E91BB: ConcatStr
  loc_9E91BC: FStStrNoPop var_90
  loc_9E91BF: LitStr "'"
  loc_9E91C2: ConcatStr
  loc_9E91C3: FStStrNoPop var_94
  loc_9E91C6: FLdPr Me
  loc_9E91C9: MemLdRfVar from_stack_1.global_76
  loc_9E91CC: NewIfNullPr clsproveedor
  loc_9E91CF: Call clsproveedor.RedefineRS(from_stack_1v)
  loc_9E91D4: FFreeStr var_8C = "": var_90 = ""
  loc_9E91DD: FFree1Ad var_88
  loc_9E91E0: FLdRfVar var_98
  loc_9E91E3: FLdPr Me
  loc_9E91E6: MemLdRfVar from_stack_1.global_76
  loc_9E91E9: NewIfNullPr clsproveedor
  loc_9E91EC: from_stack_1 = clsproveedor.RecordCount
  loc_9E91F1: ILdRf var_98
  loc_9E91F4: LitI4 1
  loc_9E91F9: EqI4
  loc_9E91FA: BranchF loc_9E9261
  loc_9E91FD: FLdRfVar var_C0
  loc_9E9200: FLdRfVar var_B0
  loc_9E9203: LitVarStr var_AC, "DetaProv"
  loc_9E9208: PopAdLdVar
  loc_9E9209: FLdRfVar var_9C
  loc_9E920C: FLdRfVar var_88
  loc_9E920F: FLdPr Me
  loc_9E9212: MemLdRfVar from_stack_1.global_76
  loc_9E9215: NewIfNullPr clsproveedor
  loc_9E9218: from_stack_1v = clsproveedor.RsFrmGet()
  loc_9E921D: FLdPr var_88
  loc_9E9220:  = Me.Fields
  loc_9E9225: FLdPr var_9C
  loc_9E9228: from_stack_2 = Me.Item(from_stack_1)
  loc_9E922D: FLdPr var_B0
  loc_9E9230:  = Me.Value
  loc_9E9235: FLdRfVar var_C0
  loc_9E9238: CStrVarTmp
  loc_9E9239: FStStrNoPop var_8C
  loc_9E923C: FLdPr Me
  loc_9E923F: VCallAd Control_ID_DetaProvLbl
  loc_9E9242: FStAdFunc var_C4
  loc_9E9245: FLdPr var_C4
  loc_9E9248: Me.Caption = from_stack_1
  loc_9E924D: FFree1Str var_8C
  loc_9E9250: FFreeAd var_88 = "": var_9C = "": var_B0 = ""
  loc_9E925B: FFree1Var var_C0 = ""
  loc_9E925E: Branch loc_9E9278
  loc_9E9261: LitStr "El código ingresado no existe"
  loc_9E9264: FLdPr Me
  loc_9E9267: VCallAd Control_ID_DetaProvLbl
  loc_9E926A: FStAdFunc var_88
  loc_9E926D: FLdPr var_88
  loc_9E9270: Me.Caption = from_stack_1
  loc_9E9275: FFree1Ad var_88
  loc_9E9278: Branch loc_9E9292
  loc_9E927B: LitStr "Todos"
  loc_9E927E: FLdPr Me
  loc_9E9281: VCallAd Control_ID_DetaProvLbl
  loc_9E9284: FStAdFunc var_88
  loc_9E9287: FLdPr var_88
  loc_9E928A: Me.Caption = from_stack_1
  loc_9E928F: FFree1Ad var_88
  loc_9E9292: ExitProcHresult
End Sub

Private Sub HastaCodiNopeMsk_UnknownEvent_0 '9AF78C
  'Data Table: 4794A0
  loc_9AF6F0: FLdPr Me
  loc_9AF6F3: VCallAd Control_ID_HastaCodiNopeMsk
  loc_9AF6F6: FStAdFunc var_88
  loc_9AF6F9: FLdPr var_88
  loc_9AF6FC: LateIdLdVar var_98 DispID_0 0
  loc_9AF703: CStrVarTmp
  loc_9AF704: FStStrNoPop var_9C
  loc_9AF707: LitStr vbNullString
  loc_9AF70A: EqStr
  loc_9AF70C: FLdPr Me
  loc_9AF70F: VCallAd Control_ID_DesdeCodiNopeMsk
  loc_9AF712: FStAdFunc var_A0
  loc_9AF715: FLdPr var_A0
  loc_9AF718: LateIdLdVar var_B0 DispID_0 0
  loc_9AF71F: CStrVarTmp
  loc_9AF720: FStStrNoPop var_B4
  loc_9AF723: LitStr "1"
  loc_9AF726: NeStr
  loc_9AF728: OrI4
  loc_9AF729: FFreeStr var_9C = ""
  loc_9AF730: FFreeAd var_88 = ""
  loc_9AF737: FFreeVar var_98 = ""
  loc_9AF73E: BranchF loc_9AF778
  loc_9AF741: FLdPr Me
  loc_9AF744: VCallAd Control_ID_DesdeCodiNopeMsk
  loc_9AF747: FStAdFunc var_88
  loc_9AF74A: FLdPr var_88
  loc_9AF74D: LateIdLdVar var_98 DispID_0 0
  loc_9AF754: CStrVarTmp
  loc_9AF755: CVarStr var_B0
  loc_9AF758: PopAdLdVar
  loc_9AF759: FLdPr Me
  loc_9AF75C: VCallAd Control_ID_HastaCodiNopeMsk
  loc_9AF75F: FStAdFunc var_A0
  loc_9AF762: FLdPr var_A0
  loc_9AF765: LateIdSt
  loc_9AF76A: FFreeAd var_88 = ""
  loc_9AF771: FFreeVar var_98 = ""
  loc_9AF778: FLdPr Me
  loc_9AF77B: VCallAd Control_ID_HastaCodiNopeMsk
  loc_9AF77E: CVarAd
  loc_9AF782: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9AF787: FFree1Var var_98 = ""
  loc_9AF78A: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '978E44
  'Data Table: 4794A0
  loc_978E14: LitVarStr var_94, "Cerrando..."
  loc_978E19: PopAdLdVar
  loc_978E1A: FLdPr Me
  loc_978E1D: VCallAd Control_ID_statusBar
  loc_978E20: FStAdFunc var_A8
  loc_978E23: FLdPr var_A8
  loc_978E26: LateIdSt
  loc_978E2B: FFree1Ad var_A8
  loc_978E2E: ILdRf Me
  loc_978E31: FStAdNoPop
  loc_978E35: ImpAdLdRf MemVar_C44F9C
  loc_978E38: NewIfNullPr Me
  loc_978E3B: Me.Global.Unload from_stack_1
  loc_978E40: FFree1Ad var_A8
  loc_978E43: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9BA66C
  'Data Table: 4794A0
  loc_9BA5AC: LitI2_Byte 0
  loc_9BA5AE: FLdPr Me
  loc_9BA5B1: MemStI2 bGenerado
  loc_9BA5B4: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9BA5B9: ImpAdLdI2 MemVar_C3D064
  loc_9BA5BC: CStrUI1
  loc_9BA5BE: FStStrNoPop var_88
  loc_9BA5C1: FLdPr Me
  loc_9BA5C4: VCallAd Control_ID_cboPeriodo
  loc_9BA5C7: FStAdFunc var_8C
  loc_9BA5CA: FLdPr var_8C
  loc_9BA5CD: Me.Text = from_stack_1
  loc_9BA5D2: FFree1Str var_88
  loc_9BA5D5: FFree1Ad var_8C
  loc_9BA5D8: LitVarStr var_9C, vbNullString
  loc_9BA5DD: PopAdLdVar
  loc_9BA5DE: FLdPr Me
  loc_9BA5E1: VCallAd Control_ID_DesdeCodiNopeMsk
  loc_9BA5E4: FStAdFunc var_8C
  loc_9BA5E7: FLdPr var_8C
  loc_9BA5EA: LateIdSt
  loc_9BA5EF: FFree1Ad var_8C
  loc_9BA5F2: LitVarStr var_9C, vbNullString
  loc_9BA5F7: PopAdLdVar
  loc_9BA5F8: FLdPr Me
  loc_9BA5FB: VCallAd Control_ID_HastaCodiNopeMsk
  loc_9BA5FE: FStAdFunc var_8C
  loc_9BA601: FLdPr var_8C
  loc_9BA604: LateIdSt
  loc_9BA609: FFree1Ad var_8C
  loc_9BA60C: LitStr vbNullString
  loc_9BA60F: FLdPr Me
  loc_9BA612: VCallAd Control_ID_cboExpeImpu
  loc_9BA615: FStAdFunc var_8C
  loc_9BA618: FLdPr var_8C
  loc_9BA61B: Me.Text = from_stack_1
  loc_9BA620: FFree1Ad var_8C
  loc_9BA623: LitStr vbNullString
  loc_9BA626: FLdPr Me
  loc_9BA629: VCallAd Control_ID_CucuPersTxt
  loc_9BA62C: FStAdFunc var_8C
  loc_9BA62F: FLdPr var_8C
  loc_9BA632: Me.Text = from_stack_1
  loc_9BA637: FFree1Ad var_8C
  loc_9BA63A: LitStr vbNullString
  loc_9BA63D: FLdPr Me
  loc_9BA640: VCallAd Control_ID_DetaProvLbl
  loc_9BA643: FStAdFunc var_8C
  loc_9BA646: FLdPr var_8C
  loc_9BA649: Me.Caption = from_stack_1
  loc_9BA64E: FFree1Ad var_8C
  loc_9BA651: Call HabilitarCriterio()
  loc_9BA656: ILdRf Me
  loc_9BA659: CastAd
  loc_9BA65C: FStAdFunc var_8C
  loc_9BA65F: FLdRfVar var_8C
  loc_9BA662: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9BA667: FFree1Ad var_8C
  loc_9BA66A: ExitProcHresult
End Sub

Private Sub CucuPersCmd_Click() '9F7F00
  'Data Table: 4794A0
  loc_9F7DC4: LitI2_Byte &HFF
  loc_9F7DC6: ImpAdLdRf MemVar_C3D74C
  loc_9F7DC9: NewIfNullPr bscProveedor
  loc_9F7DCC: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_9F7DD1: LitNothing
  loc_9F7DD3: CastAd
  loc_9F7DD6: FStAdFuncNoPop
  loc_9F7DD9: ImpAdLdRf MemVar_C3D74C
  loc_9F7DDC: NewIfNullPr bscProveedor
  loc_9F7DDF: Call bscProveedor.global_4315292Set(from_stack_1v)
  loc_9F7DE4: FFree1Ad var_88
  loc_9F7DE7: LitVar_Missing var_A8
  loc_9F7DEA: PopAdLdVar
  loc_9F7DEB: LitVarI4
  loc_9F7DF3: PopAdLdVar
  loc_9F7DF4: ImpAdLdRf MemVar_C3D74C
  loc_9F7DF7: NewIfNullPr bscProveedor
  loc_9F7DFA: bscProveedor.Show from_stack_1, from_stack_2
  loc_9F7DFF: FLdRfVar var_AC
  loc_9F7E02: FLdRfVar var_88
  loc_9F7E05: ImpAdLdRf MemVar_C3D74C
  loc_9F7E08: NewIfNullPr bscProveedor
  loc_9F7E0B: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9F7E10: FLdPr var_88
  loc_9F7E13: from_stack_1 = clsbase.RecordCount
  loc_9F7E18: ILdRf var_AC
  loc_9F7E1B: LitI4 0
  loc_9F7E20: GtI4
  loc_9F7E21: FFree1Ad var_88
  loc_9F7E24: BranchF loc_9F7EFD
  loc_9F7E27: FLdRfVar var_C8
  loc_9F7E2A: FLdRfVar var_B8
  loc_9F7E2D: LitVarStr var_98, "CucuPers"
  loc_9F7E32: PopAdLdVar
  loc_9F7E33: FLdRfVar var_B4
  loc_9F7E36: FLdRfVar var_B0
  loc_9F7E39: FLdRfVar var_88
  loc_9F7E3C: ImpAdLdRf MemVar_C3D74C
  loc_9F7E3F: NewIfNullPr bscProveedor
  loc_9F7E42: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9F7E47: FLdPr var_88
  loc_9F7E4A: from_stack_1v = clsbase.RsFrmGet()
  loc_9F7E4F: FLdPr var_B0
  loc_9F7E52:  = Me.Fields
  loc_9F7E57: FLdPr var_B4
  loc_9F7E5A: from_stack_2 = Me.Item(from_stack_1)
  loc_9F7E5F: FLdPr var_B8
  loc_9F7E62:  = Me.Value
  loc_9F7E67: FLdRfVar var_C8
  loc_9F7E6A: CStrVarTmp
  loc_9F7E6B: FStStrNoPop var_CC
  loc_9F7E6E: FLdPr Me
  loc_9F7E71: VCallAd Control_ID_CucuPersTxt
  loc_9F7E74: FStAdFunc var_D0
  loc_9F7E77: FLdPr var_D0
  loc_9F7E7A: Me.Text = from_stack_1
  loc_9F7E7F: FFree1Str var_CC
  loc_9F7E82: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F7E8F: FFree1Var var_C8 = ""
  loc_9F7E92: FLdRfVar var_C8
  loc_9F7E95: FLdRfVar var_B8
  loc_9F7E98: LitVarStr var_98, "DetaProv"
  loc_9F7E9D: PopAdLdVar
  loc_9F7E9E: FLdRfVar var_B4
  loc_9F7EA1: FLdRfVar var_B0
  loc_9F7EA4: FLdRfVar var_88
  loc_9F7EA7: ImpAdLdRf MemVar_C3D74C
  loc_9F7EAA: NewIfNullPr bscProveedor
  loc_9F7EAD: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9F7EB2: FLdPr var_88
  loc_9F7EB5: from_stack_1v = clsbase.RsFrmGet()
  loc_9F7EBA: FLdPr var_B0
  loc_9F7EBD:  = Me.Fields
  loc_9F7EC2: FLdPr var_B4
  loc_9F7EC5: from_stack_2 = Me.Item(from_stack_1)
  loc_9F7ECA: FLdPr var_B8
  loc_9F7ECD:  = Me.Value
  loc_9F7ED2: FLdRfVar var_C8
  loc_9F7ED5: CStrVarTmp
  loc_9F7ED6: FStStrNoPop var_CC
  loc_9F7ED9: FLdPr Me
  loc_9F7EDC: VCallAd Control_ID_DetaProvLbl
  loc_9F7EDF: FStAdFunc var_D0
  loc_9F7EE2: FLdPr var_D0
  loc_9F7EE5: Me.Caption = from_stack_1
  loc_9F7EEA: FFree1Str var_CC
  loc_9F7EED: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F7EFA: FFree1Var var_C8 = ""
  loc_9F7EFD: ExitProcHresult
End Sub

Private Sub cboExpeImpu_KeyPress(KeyAscii As Integer) '975F94
  'Data Table: 4794A0
  loc_975F6C: FLdPr Me
  loc_975F6F: VCallAd Control_ID_cboExpeImpu
  loc_975F72: FStAdFunc var_8C
  loc_975F75: ILdI2 KeyAscii
  loc_975F78: FLdZeroAd var_8C
  loc_975F7B: FStAdFunc var_88
  loc_975F7E: FLdRfVar var_88
  loc_975F81: ImpAdCallI2 Proc_265_8_A56F7C(, )
  loc_975F86: IStI2 KeyAscii
  loc_975F89: FFreeAd var_88 = ""
  loc_975F90: ExitProcHresult
End Sub

Public Function htmFileGet() '47A440
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '47A44F
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '47A45E
  htmFile = Value
End Sub

Public Function bGeneradoGet() '47A46D
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '47A47C
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9AAF0C
  'Data Table: 4794A0
  loc_9AAE88: LitI4 0
  loc_9AAE8D: LitI4 5
  loc_9AAE92: FLdRfVar var_88
  loc_9AAE95: Redim
  loc_9AAE9F: FLdPr Me
  loc_9AAEA2: VCallAd Control_ID_cboPeriodo
  loc_9AAEA5: CVarAd
  loc_9AAEA9: ParmAry1St
  loc_9AAEAF: FLdPr Me
  loc_9AAEB2: VCallAd Control_ID_DesdeCodiNopeMsk
  loc_9AAEB5: CVarAd
  loc_9AAEB9: ParmAry1St
  loc_9AAEBF: FLdPr Me
  loc_9AAEC2: VCallAd Control_ID_HastaCodiNopeMsk
  loc_9AAEC5: CVarAd
  loc_9AAEC9: ParmAry1St
  loc_9AAECF: FLdPr Me
  loc_9AAED2: VCallAd Control_ID_CucuPersTxt
  loc_9AAED5: CVarAd
  loc_9AAED9: ParmAry1St
  loc_9AAEDF: FLdPr Me
  loc_9AAEE2: VCallAd Control_ID_CucuPersCmd
  loc_9AAEE5: CVarAd
  loc_9AAEE9: ParmAry1St
  loc_9AAEEF: FLdPr Me
  loc_9AAEF2: VCallAd Control_ID_cboExpeImpu
  loc_9AAEF5: CVarAd
  loc_9AAEF9: ParmAry1St
  loc_9AAEFF: FLdRfVar var_88
  loc_9AAF02: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9AAF07: FLdRfVar var_88
  loc_9AAF0A: Erase
  loc_9AAF0B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B27C1C
  'Data Table: 4794A0
  loc_B2731C: OnErrorGoto loc_B27BB7
  loc_B2731F: FLdPr Me
  loc_B27322: MemLdI2 bGenerado
  loc_B27325: BranchF loc_B27329
  loc_B27328: ExitProcHresult
  loc_B27329: LitVarStr var_A4, "Generando reporte..."
  loc_B2732E: PopAdLdVar
  loc_B2732F: FLdPr Me
  loc_B27332: VCallAd Control_ID_statusBar
  loc_B27335: FStAdFunc var_B8
  loc_B27338: FLdPr var_B8
  loc_B2733B: LateIdSt
  loc_B27340: FFree1Ad var_B8
  loc_B27343: LitI4 &HB
  loc_B27348: CI2I4
  loc_B27349: FLdPr Me
  loc_B2734C: Me.MousePointer = from_stack_1
  loc_B27351: FLdPr Me
  loc_B27354: VCallAd Control_ID_DesdeCodiNopeMsk
  loc_B27357: FStAdFunc var_B8
  loc_B2735A: FLdPr var_B8
  loc_B2735D: LateIdLdVar var_C8 DispID_20 0
  loc_B27364: CStrVarTmp
  loc_B27365: FStStrNoPop var_CC
  loc_B27368: LitStr vbNullString
  loc_B2736B: NeStr
  loc_B2736D: FFree1Str var_CC
  loc_B27370: FFree1Ad var_B8
  loc_B27373: FFree1Var var_C8 = ""
  loc_B27376: BranchF loc_B273A0
  loc_B27379: LitStr " AND c.CodiNope >= "
  loc_B2737C: FLdPr Me
  loc_B2737F: VCallAd Control_ID_DesdeCodiNopeMsk
  loc_B27382: FStAdFunc var_B8
  loc_B27385: FLdPr var_B8
  loc_B27388: LateIdLdVar var_C8 DispID_20 0
  loc_B2738F: CStrVarTmp
  loc_B27390: FStStrNoPop var_CC
  loc_B27393: ConcatStr
  loc_B27394: FStStr var_88
  loc_B27397: FFree1Str var_CC
  loc_B2739A: FFree1Ad var_B8
  loc_B2739D: FFree1Var var_C8 = ""
  loc_B273A0: FLdPr Me
  loc_B273A3: VCallAd Control_ID_HastaCodiNopeMsk
  loc_B273A6: FStAdFunc var_B8
  loc_B273A9: FLdPr var_B8
  loc_B273AC: LateIdLdVar var_C8 DispID_20 0
  loc_B273B3: CStrVarTmp
  loc_B273B4: FStStrNoPop var_CC
  loc_B273B7: LitStr vbNullString
  loc_B273BA: NeStr
  loc_B273BC: FFree1Str var_CC
  loc_B273BF: FFree1Ad var_B8
  loc_B273C2: FFree1Var var_C8 = ""
  loc_B273C5: BranchF loc_B273EF
  loc_B273C8: LitStr " AND c.CodiNope <= "
  loc_B273CB: FLdPr Me
  loc_B273CE: VCallAd Control_ID_HastaCodiNopeMsk
  loc_B273D1: FStAdFunc var_B8
  loc_B273D4: FLdPr var_B8
  loc_B273D7: LateIdLdVar var_C8 DispID_20 0
  loc_B273DE: CStrVarTmp
  loc_B273DF: FStStrNoPop var_CC
  loc_B273E2: ConcatStr
  loc_B273E3: FStStr var_8C
  loc_B273E6: FFree1Str var_CC
  loc_B273E9: FFree1Ad var_B8
  loc_B273EC: FFree1Var var_C8 = ""
  loc_B273EF: FLdRfVar var_CC
  loc_B273F2: FLdPr Me
  loc_B273F5: VCallAd Control_ID_CucuPersTxt
  loc_B273F8: FStAdFunc var_B8
  loc_B273FB: FLdPr var_B8
  loc_B273FE:  = Me.Text
  loc_B27403: ILdRf var_CC
  loc_B27406: LitStr vbNullString
  loc_B27409: NeStr
  loc_B2740B: FFree1Str var_CC
  loc_B2740E: FFree1Ad var_B8
  loc_B27411: BranchF loc_B27443
  loc_B27414: LitStr " AND c.CucuPers = '"
  loc_B27417: FLdRfVar var_CC
  loc_B2741A: FLdPr Me
  loc_B2741D: VCallAd Control_ID_CucuPersTxt
  loc_B27420: FStAdFunc var_B8
  loc_B27423: FLdPr var_B8
  loc_B27426:  = Me.Text
  loc_B2742B: ILdRf var_CC
  loc_B2742E: ConcatStr
  loc_B2742F: FStStrNoPop var_D0
  loc_B27432: LitStr "'"
  loc_B27435: ConcatStr
  loc_B27436: FStStr var_90
  loc_B27439: FFreeStr var_CC = ""
  loc_B27440: FFree1Ad var_B8
  loc_B27443: FLdRfVar var_CC
  loc_B27446: FLdPr Me
  loc_B27449: VCallAd Control_ID_cboExpeImpu
  loc_B2744C: FStAdFunc var_B8
  loc_B2744F: FLdPr var_B8
  loc_B27452:  = Me.Text
  loc_B27457: FLdRfVar var_D0
  loc_B2745A: FLdPr Me
  loc_B2745D: VCallAd Control_ID_cboExpeImpu
  loc_B27460: FStAdFunc var_D4
  loc_B27463: FLdPr var_D4
  loc_B27466:  = Me.Text
  loc_B2746B: LitVarStr var_B4, vbNullString
  loc_B27470: FStVarCopyObj var_E8
  loc_B27473: FLdRfVar var_E8
  loc_B27476: LitStr " AND np.ExpeImpu = '"
  loc_B27479: ILdRf var_D0
  loc_B2747C: ConcatStr
  loc_B2747D: FStStrNoPop var_D8
  loc_B27480: LitStr "'"
  loc_B27483: ConcatStr
  loc_B27484: CVarStr var_C8
  loc_B27487: ILdRf var_CC
  loc_B2748A: LitStr vbNullString
  loc_B2748D: NeStr
  loc_B2748F: CVarBoolI2 var_A4
  loc_B27493: FLdRfVar var_F8
  loc_B27496: ImpAdCallFPR4  = IIf(, , )
  loc_B2749B: FLdRfVar var_F8
  loc_B2749E: CStrVarTmp
  loc_B2749F: FStStr var_94
  loc_B274A2: FFreeStr var_CC = "": var_D0 = ""
  loc_B274AB: FFreeAd var_B8 = ""
  loc_B274B2: FFreeVar var_A4 = "": var_C8 = "": var_E8 = ""
  loc_B274BD: FLdPr Me
  loc_B274C0: MemLdRfVar from_stack_1.global_80
  loc_B274C3: NewIfNullAd
  loc_B274C6: FStAd var_FC 
  loc_B274CA: LitStr "SELECT c.*, IFNULL(DetaProv,'') DetaProv, DetaTico, IF(c.ModiUsua!='',c.ModiUsua,c.AltaUsua) CodiUsua"
  loc_B274CD: LitStr ", np.ExpeImpu, np.CodiTico"
  loc_B274D0: ConcatStr
  loc_B274D1: FStStrNoPop var_CC
  loc_B274D4: LitStr ", np.PlieNope"
  loc_B274D7: ConcatStr
  loc_B274D8: FStStrNoPop var_D0
  loc_B274DB: LitStr ", IF(np.PlieNope>0,fnSellado(np.ExpeImpu) * (SELECT UntriPage FROM paragene pg WHERE pg.PeriInfo = np.PeriInfo),0) SelladoNope"
  loc_B274DE: ConcatStr
  loc_B274DF: FStStrNoPop var_D8
  loc_B274E2: LitStr " FROM cotizacion c"
  loc_B274E5: ConcatStr
  loc_B274E6: FStStrNoPop var_100
  loc_B274E9: LitStr " LEFT JOIN proveedor p ON p.CucuPers = c.CucuPers"
  loc_B274EC: ConcatStr
  loc_B274ED: FStStrNoPop var_104
  loc_B274F0: LitStr " INNER JOIN notapedido np ON np.PeriInfo = c.PeriInfo AND np.CodiNope = c.CodiNope"
  loc_B274F3: ConcatStr
  loc_B274F4: FStStrNoPop var_108
  loc_B274F7: LitStr " INNER JOIN tipocompra tc ON tc.CodiTico = np.CodiTico"
  loc_B274FA: ConcatStr
  loc_B274FB: FStStrNoPop var_10C
  loc_B274FE: LitStr " WHERE c.PeriInfo = "
  loc_B27501: ConcatStr
  loc_B27502: FStStrNoPop var_114
  loc_B27505: FLdRfVar var_110
  loc_B27508: FLdPr Me
  loc_B2750B: VCallAd Control_ID_cboPeriodo
  loc_B2750E: FStAdFunc var_B8
  loc_B27511: FLdPr var_B8
  loc_B27514:  = Me.Text
  loc_B27519: ILdRf var_110
  loc_B2751C: ConcatStr
  loc_B2751D: FStStrNoPop var_118
  loc_B27520: ILdRf var_88
  loc_B27523: ConcatStr
  loc_B27524: FStStrNoPop var_11C
  loc_B27527: ILdRf var_8C
  loc_B2752A: ConcatStr
  loc_B2752B: FStStrNoPop var_120
  loc_B2752E: ILdRf var_90
  loc_B27531: ConcatStr
  loc_B27532: FStStrNoPop var_124
  loc_B27535: ILdRf var_94
  loc_B27538: ConcatStr
  loc_B27539: FStStrNoPop var_128
  loc_B2753C: LitStr " ORDER BY CodiNope, CucuPers;"
  loc_B2753F: ConcatStr
  loc_B27540: FStStrNoPop var_12C
  loc_B27543: FLdPr var_FC
  loc_B27546: Call clscotizacion.RedefineRS(from_stack_1v)
  loc_B2754B: FFreeStr var_CC = "": var_D0 = "": var_D8 = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_114 = "": var_110 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_B2756C: FFree1Ad var_B8
  loc_B2756F: FLdRfVar var_130
  loc_B27572: FLdPr var_FC
  loc_B27575: from_stack_1 = clscotizacion.RecordCount
  loc_B2757A: ILdRf var_130
  loc_B2757D: LitI4 0
  loc_B27582: EqI4
  loc_B27583: BranchF loc_B27596
  loc_B27586: LitI4 0
  loc_B2758B: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B2758E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B27593: Branch loc_B27B8E
  loc_B27596: LitI4 1
  loc_B2759B: FLdRfVar var_130
  loc_B2759E: FLdPr var_FC
  loc_B275A1: from_stack_1 = clscotizacion.RecordCount
  loc_B275A6: ILdRf var_130
  loc_B275A9: FLdPr Me
  loc_B275AC: MemLdRfVar from_stack_1.global_92
  loc_B275AF: Redim
  loc_B275B9: FLdPr var_FC
  loc_B275BC: Call clscotizacion.MoveFirst()
  loc_B275C1: LitI4 1
  loc_B275C6: FLdPr Me
  loc_B275C9: MemLdRfVar from_stack_1.global_96
  loc_B275CC: FLdPr Me
  loc_B275CF: MemLdStr global_92
  loc_B275D2: LitI2_Byte 1
  loc_B275D4: FnUBound
  loc_B275D6: ForI4 var_138
  loc_B275DC: FLdRfVar var_13C
  loc_B275DF: LitVarStr var_A4, "CodiNope"
  loc_B275E4: PopAdLdVar
  loc_B275E5: FLdRfVar var_D4
  loc_B275E8: FLdRfVar var_B8
  loc_B275EB: FLdPr var_FC
  loc_B275EE: from_stack_1v = clscotizacion.RsFrmGet()
  loc_B275F3: FLdPr var_B8
  loc_B275F6:  = Me.Fields
  loc_B275FB: FLdPr var_D4
  loc_B275FE: from_stack_2 = Me.Item(from_stack_1)
  loc_B27603: LitI2_Byte 0
  loc_B27605: LitVar_Missing var_E8
  loc_B27608: LitI2_Byte 0
  loc_B2760A: FLdZeroAd var_13C
  loc_B2760D: CVarAd
  loc_B27611: PopAdLdVar
  loc_B27612: FLdPr Me
  loc_B27615: MemLdStr global_96
  loc_B27618: FLdPr Me
  loc_B2761B: MemLdStr global_92
  loc_B2761E: AryLock
  loc_B27621: Ary1LdPr
  loc_B27622: MemLdRfVar from_stack_1.global_0
  loc_B27625: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2762A: AryUnlock
  loc_B2762D: FFreeAd var_B8 = ""
  loc_B27634: FFreeVar var_C8 = ""
  loc_B2763B: FLdRfVar var_13C
  loc_B2763E: LitVarStr var_A4, "CucuPers"
  loc_B27643: PopAdLdVar
  loc_B27644: FLdRfVar var_D4
  loc_B27647: FLdRfVar var_B8
  loc_B2764A: FLdPr var_FC
  loc_B2764D: from_stack_1v = clscotizacion.RsFrmGet()
  loc_B27652: FLdPr var_B8
  loc_B27655:  = Me.Fields
  loc_B2765A: FLdPr var_D4
  loc_B2765D: from_stack_2 = Me.Item(from_stack_1)
  loc_B27662: LitI2_Byte 0
  loc_B27664: LitVar_Missing var_E8
  loc_B27667: LitI2_Byte 0
  loc_B27669: FLdZeroAd var_13C
  loc_B2766C: CVarAd
  loc_B27670: PopAdLdVar
  loc_B27671: FLdPr Me
  loc_B27674: MemLdStr global_96
  loc_B27677: FLdPr Me
  loc_B2767A: MemLdStr global_92
  loc_B2767D: AryLock
  loc_B27680: Ary1LdPr
  loc_B27681: MemLdRfVar from_stack_1.global_4
  loc_B27684: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B27689: AryUnlock
  loc_B2768C: FFreeAd var_B8 = ""
  loc_B27693: FFreeVar var_C8 = ""
  loc_B2769A: FLdRfVar var_13C
  loc_B2769D: LitVarStr var_A4, "DetaProv"
  loc_B276A2: PopAdLdVar
  loc_B276A3: FLdRfVar var_D4
  loc_B276A6: FLdRfVar var_B8
  loc_B276A9: FLdPr var_FC
  loc_B276AC: from_stack_1v = clscotizacion.RsFrmGet()
  loc_B276B1: FLdPr var_B8
  loc_B276B4:  = Me.Fields
  loc_B276B9: FLdPr var_D4
  loc_B276BC: from_stack_2 = Me.Item(from_stack_1)
  loc_B276C1: LitI2_Byte 0
  loc_B276C3: LitVar_Missing var_E8
  loc_B276C6: LitI2_Byte 0
  loc_B276C8: FLdZeroAd var_13C
  loc_B276CB: CVarAd
  loc_B276CF: PopAdLdVar
  loc_B276D0: FLdPr Me
  loc_B276D3: MemLdStr global_96
  loc_B276D6: FLdPr Me
  loc_B276D9: MemLdStr global_92
  loc_B276DC: AryLock
  loc_B276DF: Ary1LdPr
  loc_B276E0: MemLdRfVar from_stack_1.global_8
  loc_B276E3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B276E8: AryUnlock
  loc_B276EB: FFreeAd var_B8 = ""
  loc_B276F2: FFreeVar var_C8 = ""
  loc_B276F9: FLdRfVar var_13C
  loc_B276FC: LitVarStr var_A4, "CodiTico"
  loc_B27701: PopAdLdVar
  loc_B27702: FLdRfVar var_D4
  loc_B27705: FLdRfVar var_B8
  loc_B27708: FLdPr var_FC
  loc_B2770B: from_stack_1v = clscotizacion.RsFrmGet()
  loc_B27710: FLdPr var_B8
  loc_B27713:  = Me.Fields
  loc_B27718: FLdPr var_D4
  loc_B2771B: from_stack_2 = Me.Item(from_stack_1)
  loc_B27720: LitI2_Byte 0
  loc_B27722: LitVar_Missing var_E8
  loc_B27725: LitI2_Byte 0
  loc_B27727: FLdZeroAd var_13C
  loc_B2772A: CVarAd
  loc_B2772E: PopAdLdVar
  loc_B2772F: FLdPr Me
  loc_B27732: MemLdStr global_96
  loc_B27735: FLdPr Me
  loc_B27738: MemLdStr global_92
  loc_B2773B: AryLock
  loc_B2773E: Ary1LdPr
  loc_B2773F: MemLdRfVar from_stack_1.global_12
  loc_B27742: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B27747: AryUnlock
  loc_B2774A: FFreeAd var_B8 = ""
  loc_B27751: FFreeVar var_C8 = ""
  loc_B27758: FLdRfVar var_13C
  loc_B2775B: LitVarStr var_A4, "DetaTico"
  loc_B27760: PopAdLdVar
  loc_B27761: FLdRfVar var_D4
  loc_B27764: FLdRfVar var_B8
  loc_B27767: FLdPr var_FC
  loc_B2776A: from_stack_1v = clscotizacion.RsFrmGet()
  loc_B2776F: FLdPr var_B8
  loc_B27772:  = Me.Fields
  loc_B27777: FLdPr var_D4
  loc_B2777A: from_stack_2 = Me.Item(from_stack_1)
  loc_B2777F: LitI2_Byte 0
  loc_B27781: LitVar_Missing var_E8
  loc_B27784: LitI2_Byte 0
  loc_B27786: FLdZeroAd var_13C
  loc_B27789: CVarAd
  loc_B2778D: PopAdLdVar
  loc_B2778E: FLdPr Me
  loc_B27791: MemLdStr global_96
  loc_B27794: FLdPr Me
  loc_B27797: MemLdStr global_92
  loc_B2779A: AryLock
  loc_B2779D: Ary1LdPr
  loc_B2779E: MemLdRfVar from_stack_1.global_16
  loc_B277A1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B277A6: AryUnlock
  loc_B277A9: FFreeAd var_B8 = ""
  loc_B277B0: FFreeVar var_C8 = ""
  loc_B277B7: FLdRfVar var_13C
  loc_B277BA: LitVarStr var_A4, "PlieNope"
  loc_B277BF: PopAdLdVar
  loc_B277C0: FLdRfVar var_D4
  loc_B277C3: FLdRfVar var_B8
  loc_B277C6: FLdPr var_FC
  loc_B277C9: from_stack_1v = clscotizacion.RsFrmGet()
  loc_B277CE: FLdPr var_B8
  loc_B277D1:  = Me.Fields
  loc_B277D6: FLdPr var_D4
  loc_B277D9: from_stack_2 = Me.Item(from_stack_1)
  loc_B277DE: LitI2_Byte 0
  loc_B277E0: LitVar_Missing var_E8
  loc_B277E3: LitI2_Byte 0
  loc_B277E5: FLdZeroAd var_13C
  loc_B277E8: CVarAd
  loc_B277EC: PopAdLdVar
  loc_B277ED: FLdPr Me
  loc_B277F0: MemLdStr global_96
  loc_B277F3: FLdPr Me
  loc_B277F6: MemLdStr global_92
  loc_B277F9: AryLock
  loc_B277FC: Ary1LdPr
  loc_B277FD: MemLdRfVar from_stack_1.global_20
  loc_B27800: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B27805: AryUnlock
  loc_B27808: FFreeAd var_B8 = ""
  loc_B2780F: FFreeVar var_C8 = ""
  loc_B27816: FLdRfVar var_13C
  loc_B27819: LitVarStr var_A4, "SelladoNope"
  loc_B2781E: PopAdLdVar
  loc_B2781F: FLdRfVar var_D4
  loc_B27822: FLdRfVar var_B8
  loc_B27825: FLdPr var_FC
  loc_B27828: from_stack_1v = clscotizacion.RsFrmGet()
  loc_B2782D: FLdPr var_B8
  loc_B27830:  = Me.Fields
  loc_B27835: FLdPr var_D4
  loc_B27838: from_stack_2 = Me.Item(from_stack_1)
  loc_B2783D: LitI2_Byte 0
  loc_B2783F: LitVar_Missing var_E8
  loc_B27842: LitI2_Byte 0
  loc_B27844: FLdZeroAd var_13C
  loc_B27847: CVarAd
  loc_B2784B: PopAdLdVar
  loc_B2784C: FLdPr Me
  loc_B2784F: MemLdStr global_96
  loc_B27852: FLdPr Me
  loc_B27855: MemLdStr global_92
  loc_B27858: AryLock
  loc_B2785B: Ary1LdPr
  loc_B2785C: MemLdRfVar from_stack_1.global_24
  loc_B2785F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B27864: AryUnlock
  loc_B27867: FFreeAd var_B8 = ""
  loc_B2786E: FFreeVar var_C8 = ""
  loc_B27875: FLdRfVar var_13C
  loc_B27878: LitVarStr var_A4, "ExpeImpu"
  loc_B2787D: PopAdLdVar
  loc_B2787E: FLdRfVar var_D4
  loc_B27881: FLdRfVar var_B8
  loc_B27884: FLdPr var_FC
  loc_B27887: from_stack_1v = clscotizacion.RsFrmGet()
  loc_B2788C: FLdPr var_B8
  loc_B2788F:  = Me.Fields
  loc_B27894: FLdPr var_D4
  loc_B27897: from_stack_2 = Me.Item(from_stack_1)
  loc_B2789C: LitI2_Byte 0
  loc_B2789E: LitVar_Missing var_E8
  loc_B278A1: LitI2_Byte 0
  loc_B278A3: FLdZeroAd var_13C
  loc_B278A6: CVarAd
  loc_B278AA: PopAdLdVar
  loc_B278AB: FLdPr Me
  loc_B278AE: MemLdStr global_96
  loc_B278B1: FLdPr Me
  loc_B278B4: MemLdStr global_92
  loc_B278B7: AryLock
  loc_B278BA: Ary1LdPr
  loc_B278BB: MemLdRfVar from_stack_1.global_28
  loc_B278BE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B278C3: AryUnlock
  loc_B278C6: FFreeAd var_B8 = ""
  loc_B278CD: FFreeVar var_C8 = ""
  loc_B278D4: FLdRfVar var_13C
  loc_B278D7: LitVarStr var_A4, "FechCoti"
  loc_B278DC: PopAdLdVar
  loc_B278DD: FLdRfVar var_D4
  loc_B278E0: FLdRfVar var_B8
  loc_B278E3: FLdPr var_FC
  loc_B278E6: from_stack_1v = clscotizacion.RsFrmGet()
  loc_B278EB: FLdPr var_B8
  loc_B278EE:  = Me.Fields
  loc_B278F3: FLdPr var_D4
  loc_B278F6: from_stack_2 = Me.Item(from_stack_1)
  loc_B278FB: LitI2_Byte 0
  loc_B278FD: LitVar_Missing var_E8
  loc_B27900: LitI2_Byte 0
  loc_B27902: FLdZeroAd var_13C
  loc_B27905: CVarAd
  loc_B27909: PopAdLdVar
  loc_B2790A: FLdPr Me
  loc_B2790D: MemLdStr global_96
  loc_B27910: FLdPr Me
  loc_B27913: MemLdStr global_92
  loc_B27916: AryLock
  loc_B27919: Ary1LdPr
  loc_B2791A: MemLdRfVar from_stack_1.global_32
  loc_B2791D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B27922: AryUnlock
  loc_B27925: FFreeAd var_B8 = ""
  loc_B2792C: FFreeVar var_C8 = ""
  loc_B27933: FLdRfVar var_13C
  loc_B27936: LitVarStr var_A4, "FeanCoti"
  loc_B2793B: PopAdLdVar
  loc_B2793C: FLdRfVar var_D4
  loc_B2793F: FLdRfVar var_B8
  loc_B27942: FLdPr var_FC
  loc_B27945: from_stack_1v = clscotizacion.RsFrmGet()
  loc_B2794A: FLdPr var_B8
  loc_B2794D:  = Me.Fields
  loc_B27952: FLdPr var_D4
  loc_B27955: from_stack_2 = Me.Item(from_stack_1)
  loc_B2795A: LitI2_Byte 0
  loc_B2795C: LitVar_Missing var_E8
  loc_B2795F: LitI2_Byte 0
  loc_B27961: FLdZeroAd var_13C
  loc_B27964: CVarAd
  loc_B27968: PopAdLdVar
  loc_B27969: FLdPr Me
  loc_B2796C: MemLdStr global_96
  loc_B2796F: FLdPr Me
  loc_B27972: MemLdStr global_92
  loc_B27975: AryLock
  loc_B27978: Ary1LdPr
  loc_B27979: MemLdRfVar from_stack_1.global_36
  loc_B2797C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B27981: AryUnlock
  loc_B27984: FFreeAd var_B8 = ""
  loc_B2798B: FFreeVar var_C8 = ""
  loc_B27992: FLdRfVar var_13C
  loc_B27995: LitVarStr var_A4, "BajaMoti"
  loc_B2799A: PopAdLdVar
  loc_B2799B: FLdRfVar var_D4
  loc_B2799E: FLdRfVar var_B8
  loc_B279A1: FLdPr var_FC
  loc_B279A4: from_stack_1v = clscotizacion.RsFrmGet()
  loc_B279A9: FLdPr var_B8
  loc_B279AC:  = Me.Fields
  loc_B279B1: FLdPr var_D4
  loc_B279B4: from_stack_2 = Me.Item(from_stack_1)
  loc_B279B9: LitI2_Byte 0
  loc_B279BB: LitVar_Missing var_E8
  loc_B279BE: LitI2_Byte 0
  loc_B279C0: FLdZeroAd var_13C
  loc_B279C3: CVarAd
  loc_B279C7: PopAdLdVar
  loc_B279C8: FLdPr Me
  loc_B279CB: MemLdStr global_96
  loc_B279CE: FLdPr Me
  loc_B279D1: MemLdStr global_92
  loc_B279D4: AryLock
  loc_B279D7: Ary1LdPr
  loc_B279D8: MemLdRfVar from_stack_1.global_40
  loc_B279DB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B279E0: AryUnlock
  loc_B279E3: FFreeAd var_B8 = ""
  loc_B279EA: FFreeVar var_C8 = ""
  loc_B279F1: FLdRfVar var_13C
  loc_B279F4: LitVarStr var_A4, "PlenCoti"
  loc_B279F9: PopAdLdVar
  loc_B279FA: FLdRfVar var_D4
  loc_B279FD: FLdRfVar var_B8
  loc_B27A00: FLdPr var_FC
  loc_B27A03: from_stack_1v = clscotizacion.RsFrmGet()
  loc_B27A08: FLdPr var_B8
  loc_B27A0B:  = Me.Fields
  loc_B27A10: FLdPr var_D4
  loc_B27A13: from_stack_2 = Me.Item(from_stack_1)
  loc_B27A18: LitI2_Byte 0
  loc_B27A1A: LitVar_Missing var_E8
  loc_B27A1D: LitI2_Byte 0
  loc_B27A1F: FLdZeroAd var_13C
  loc_B27A22: CVarAd
  loc_B27A26: PopAdLdVar
  loc_B27A27: FLdPr Me
  loc_B27A2A: MemLdStr global_96
  loc_B27A2D: FLdPr Me
  loc_B27A30: MemLdStr global_92
  loc_B27A33: AryLock
  loc_B27A36: Ary1LdPr
  loc_B27A37: MemLdRfVar from_stack_1.global_44
  loc_B27A3A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B27A3F: AryUnlock
  loc_B27A42: FFreeAd var_B8 = ""
  loc_B27A49: FFreeVar var_C8 = ""
  loc_B27A50: FLdRfVar var_13C
  loc_B27A53: LitVarStr var_A4, "MaofCoti"
  loc_B27A58: PopAdLdVar
  loc_B27A59: FLdRfVar var_D4
  loc_B27A5C: FLdRfVar var_B8
  loc_B27A5F: FLdPr var_FC
  loc_B27A62: from_stack_1v = clscotizacion.RsFrmGet()
  loc_B27A67: FLdPr var_B8
  loc_B27A6A:  = Me.Fields
  loc_B27A6F: FLdPr var_D4
  loc_B27A72: from_stack_2 = Me.Item(from_stack_1)
  loc_B27A77: LitI2_Byte 0
  loc_B27A79: LitVar_Missing var_E8
  loc_B27A7C: LitI2_Byte 0
  loc_B27A7E: FLdZeroAd var_13C
  loc_B27A81: CVarAd
  loc_B27A85: PopAdLdVar
  loc_B27A86: FLdPr Me
  loc_B27A89: MemLdStr global_96
  loc_B27A8C: FLdPr Me
  loc_B27A8F: MemLdStr global_92
  loc_B27A92: AryLock
  loc_B27A95: Ary1LdPr
  loc_B27A96: MemLdRfVar from_stack_1.global_48
  loc_B27A99: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B27A9E: AryUnlock
  loc_B27AA1: FFreeAd var_B8 = ""
  loc_B27AA8: FFreeVar var_C8 = ""
  loc_B27AAF: FLdRfVar var_13C
  loc_B27AB2: LitVarStr var_A4, "ObseCoti"
  loc_B27AB7: PopAdLdVar
  loc_B27AB8: FLdRfVar var_D4
  loc_B27ABB: FLdRfVar var_B8
  loc_B27ABE: FLdPr var_FC
  loc_B27AC1: from_stack_1v = clscotizacion.RsFrmGet()
  loc_B27AC6: FLdPr var_B8
  loc_B27AC9:  = Me.Fields
  loc_B27ACE: FLdPr var_D4
  loc_B27AD1: from_stack_2 = Me.Item(from_stack_1)
  loc_B27AD6: LitI2_Byte 0
  loc_B27AD8: LitVar_Missing var_E8
  loc_B27ADB: LitI2_Byte 0
  loc_B27ADD: FLdZeroAd var_13C
  loc_B27AE0: CVarAd
  loc_B27AE4: PopAdLdVar
  loc_B27AE5: FLdPr Me
  loc_B27AE8: MemLdStr global_96
  loc_B27AEB: FLdPr Me
  loc_B27AEE: MemLdStr global_92
  loc_B27AF1: AryLock
  loc_B27AF4: Ary1LdPr
  loc_B27AF5: MemLdRfVar from_stack_1.htmFile
  loc_B27AF8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B27AFD: AryUnlock
  loc_B27B00: FFreeAd var_B8 = ""
  loc_B27B07: FFreeVar var_C8 = ""
  loc_B27B0E: FLdRfVar var_13C
  loc_B27B11: LitVarStr var_A4, "CodiUsua"
  loc_B27B16: PopAdLdVar
  loc_B27B17: FLdRfVar var_D4
  loc_B27B1A: FLdRfVar var_B8
  loc_B27B1D: FLdPr var_FC
  loc_B27B20: from_stack_1v = clscotizacion.RsFrmGet()
  loc_B27B25: FLdPr var_B8
  loc_B27B28:  = Me.Fields
  loc_B27B2D: FLdPr var_D4
  loc_B27B30: from_stack_2 = Me.Item(from_stack_1)
  loc_B27B35: LitI2_Byte 0
  loc_B27B37: LitVar_Missing var_E8
  loc_B27B3A: LitI2_Byte 0
  loc_B27B3C: FLdZeroAd var_13C
  loc_B27B3F: CVarAd
  loc_B27B43: PopAdLdVar
  loc_B27B44: FLdPr Me
  loc_B27B47: MemLdStr global_96
  loc_B27B4A: FLdPr Me
  loc_B27B4D: MemLdStr global_92
  loc_B27B50: AryLock
  loc_B27B53: Ary1LdPr
  loc_B27B54: MemLdRfVar from_stack_1.global_56
  loc_B27B57: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B27B5C: AryUnlock
  loc_B27B5F: FFreeAd var_B8 = ""
  loc_B27B66: FFreeVar var_C8 = ""
  loc_B27B6D: FLdPr var_FC
  loc_B27B70: Call clscotizacion.MoveSiguiente()
  loc_B27B75: FLdPr Me
  loc_B27B78: MemLdRfVar from_stack_1.global_96
  loc_B27B7B: NextI4 var_138, loc_B275DC
  loc_B27B80: LitNothing
  loc_B27B82: FStAd var_FC 
  loc_B27B86: LitI2_Byte &HFF
  loc_B27B88: FLdPr Me
  loc_B27B8B: MemStI2 bGenerado
  loc_B27B8E: LitI4 0
  loc_B27B93: CI2I4
  loc_B27B94: FLdPr Me
  loc_B27B97: Me.MousePointer = from_stack_1
  loc_B27B9C: LitVarStr var_A4, vbNullString
  loc_B27BA1: PopAdLdVar
  loc_B27BA2: FLdPr Me
  loc_B27BA5: VCallAd Control_ID_statusBar
  loc_B27BA8: FStAdFunc var_B8
  loc_B27BAB: FLdPr var_B8
  loc_B27BAE: LateIdSt
  loc_B27BB3: FFree1Ad var_B8
  loc_B27BB6: ExitProcHresult
  loc_B27BB7: LitI4 0
  loc_B27BBC: LitStr "Error "
  loc_B27BBF: FLdRfVar var_130
  loc_B27BC2: ImpAdCallI2 Err 'rtcErrObj
  loc_B27BC7: FStAdFunc var_B8
  loc_B27BCA: FLdPr var_B8
  loc_B27BCD:  = Err.Number
  loc_B27BD2: ILdRf var_130
  loc_B27BD5: CStrI4
  loc_B27BD7: FStStrNoPop var_CC
  loc_B27BDA: ConcatStr
  loc_B27BDB: FStStrNoPop var_D0
  loc_B27BDE: LitStr ": "
  loc_B27BE1: ConcatStr
  loc_B27BE2: FStStrNoPop var_100
  loc_B27BE5: FLdRfVar var_D8
  loc_B27BE8: ImpAdCallI2 Err 'rtcErrObj
  loc_B27BED: FStAdFunc var_D4
  loc_B27BF0: FLdPr var_D4
  loc_B27BF3:  = Err.Description
  loc_B27BF8: ILdRf var_D8
  loc_B27BFB: ConcatStr
  loc_B27BFC: FStStrNoPop var_104
  loc_B27BFF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B27C04: FFreeStr var_CC = "": var_D0 = "": var_100 = "": var_D8 = ""
  loc_B27C11: FFreeAd var_B8 = ""
  loc_B27C18: ExitProcHresult
  loc_B27C19: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A562E8
  'Data Table: 4794A0
  loc_A5600C: FLdRfVar var_8C
  loc_A5600F: LitI2_Byte 0
  loc_A56011: LitI2_Byte &HFF
  loc_A56013: ImpAdLdI4 MemVar_C3D83C
  loc_A56016: FLdPr Me
  loc_A56019: MemLdRfVar from_stack_1.global_84
  loc_A5601C: NewIfNullPr IFileSystem3
  loc_A5601F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A56024: ILdRf var_8C
  loc_A56027: FLdPr Me
  loc_A5602A: MemStVarAd
  loc_A5602E: FFree1Ad var_8C
  loc_A56031: Call Proc_190_22_AA28A4()
  loc_A56036: LitI4 1
  loc_A5603B: FLdPr Me
  loc_A5603E: MemLdRfVar from_stack_1.global_96
  loc_A56041: FLdPr Me
  loc_A56044: MemLdStr global_92
  loc_A56047: LitI2_Byte 1
  loc_A56049: FnUBound
  loc_A5604B: ForI4 var_94
  loc_A56051: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A56056: PopAdLdVar
  loc_A56057: FLdPr Me
  loc_A5605A: MemLdRfVar from_stack_1.htmFile
  loc_A5605D: LdPrVar
  loc_A5605F: LateMemCall
  loc_A56065: FLdPr Me
  loc_A56068: MemLdStr global_96
  loc_A5606B: FLdPr Me
  loc_A5606E: MemLdStr global_92
  loc_A56071: AryLock
  loc_A56074: Ary1LdRf
  loc_A56075: FStR4 var_BC
  loc_A56078: LitStr vbNullString
  loc_A5607B: FStStrCopy var_88
  loc_A5607E: LitI4 0
  loc_A56083: LitI4 0
  loc_A56088: LitI2_Byte 0
  loc_A5608A: LitStr "right"
  loc_A5608D: FMemLdR4 var_BC(0)
  loc_A56092: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A56097: CVarStr var_CC
  loc_A5609A: PopAdLdVar
  loc_A5609B: FLdPr Me
  loc_A5609E: MemLdRfVar from_stack_1.htmFile
  loc_A560A1: LdPrVar
  loc_A560A3: LateMemCall
  loc_A560A9: FFree1Var var_CC = ""
  loc_A560AC: LitI4 0
  loc_A560B1: LitI4 0
  loc_A560B6: LitI2_Byte 0
  loc_A560B8: LitStr "left"
  loc_A560BB: FMemLdR4 var_BC(4)
  loc_A560C0: LitStr " - "
  loc_A560C3: ConcatStr
  loc_A560C4: FStStrNoPop var_D0
  loc_A560C7: FMemLdR4 var_BC(8)
  loc_A560CC: ConcatStr
  loc_A560CD: FStStrNoPop var_D4
  loc_A560D0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A560D5: CVarStr var_CC
  loc_A560D8: PopAdLdVar
  loc_A560D9: FLdPr Me
  loc_A560DC: MemLdRfVar from_stack_1.htmFile
  loc_A560DF: LdPrVar
  loc_A560E1: LateMemCall
  loc_A560E7: FFreeStr var_D0 = ""
  loc_A560EE: FFree1Var var_CC = ""
  loc_A560F1: FMemLdR4 var_BC(12)
  loc_A560F6: LitStr " - "
  loc_A560F9: ConcatStr
  loc_A560FA: FStStrNoPop var_D0
  loc_A560FD: FMemLdR4 var_BC(16)
  loc_A56102: ConcatStr
  loc_A56103: FStStr var_88
  loc_A56106: FFree1Str var_D0
  loc_A56109: LitI4 0
  loc_A5610E: LitI4 0
  loc_A56113: LitI2_Byte 0
  loc_A56115: LitStr "left"
  loc_A56118: ILdRf var_88
  loc_A5611B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A56120: CVarStr var_CC
  loc_A56123: PopAdLdVar
  loc_A56124: FLdPr Me
  loc_A56127: MemLdRfVar from_stack_1.htmFile
  loc_A5612A: LdPrVar
  loc_A5612C: LateMemCall
  loc_A56132: FFree1Var var_CC = ""
  loc_A56135: LitI4 0
  loc_A5613A: LitI4 0
  loc_A5613F: LitI2_Byte 0
  loc_A56141: LitStr "left"
  loc_A56144: FMemLdR4 var_BC(28)
  loc_A56149: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A5614E: CVarStr var_CC
  loc_A56151: PopAdLdVar
  loc_A56152: FLdPr Me
  loc_A56155: MemLdRfVar from_stack_1.htmFile
  loc_A56158: LdPrVar
  loc_A5615A: LateMemCall
  loc_A56160: FFree1Var var_CC = ""
  loc_A56163: LitI4 0
  loc_A56168: LitI4 0
  loc_A5616D: LitI2_Byte 0
  loc_A5616F: LitStr "center"
  loc_A56172: FMemLdR4 var_BC(32)
  loc_A56177: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A5617C: CVarStr var_CC
  loc_A5617F: PopAdLdVar
  loc_A56180: FLdPr Me
  loc_A56183: MemLdRfVar from_stack_1.htmFile
  loc_A56186: LdPrVar
  loc_A56188: LateMemCall
  loc_A5618E: FFree1Var var_CC = ""
  loc_A56191: LitI4 0
  loc_A56196: LitI4 0
  loc_A5619B: LitI2_Byte 0
  loc_A5619D: LitStr "center"
  loc_A561A0: FMemLdR4 var_BC(36)
  loc_A561A5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A561AA: CVarStr var_CC
  loc_A561AD: PopAdLdVar
  loc_A561AE: FLdPr Me
  loc_A561B1: MemLdRfVar from_stack_1.htmFile
  loc_A561B4: LdPrVar
  loc_A561B6: LateMemCall
  loc_A561BC: FFree1Var var_CC = ""
  loc_A561BF: LitI4 0
  loc_A561C4: LitI4 0
  loc_A561C9: LitI2_Byte 0
  loc_A561CB: LitStr "justify"
  loc_A561CE: FMemLdR4 var_BC(40)
  loc_A561D3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A561D8: CVarStr var_CC
  loc_A561DB: PopAdLdVar
  loc_A561DC: FLdPr Me
  loc_A561DF: MemLdRfVar from_stack_1.htmFile
  loc_A561E2: LdPrVar
  loc_A561E4: LateMemCall
  loc_A561EA: FFree1Var var_CC = ""
  loc_A561ED: LitI4 0
  loc_A561F2: LitI4 0
  loc_A561F7: LitI2_Byte 0
  loc_A561F9: LitStr "left"
  loc_A561FC: FMemLdR4 var_BC(44)
  loc_A56201: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A56206: CVarStr var_CC
  loc_A56209: PopAdLdVar
  loc_A5620A: FLdPr Me
  loc_A5620D: MemLdRfVar from_stack_1.htmFile
  loc_A56210: LdPrVar
  loc_A56212: LateMemCall
  loc_A56218: FFree1Var var_CC = ""
  loc_A5621B: LitI4 0
  loc_A56220: LitI4 0
  loc_A56225: LitI2_Byte 0
  loc_A56227: LitStr "left"
  loc_A5622A: FMemLdR4 var_BC(48)
  loc_A5622F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A56234: CVarStr var_CC
  loc_A56237: PopAdLdVar
  loc_A56238: FLdPr Me
  loc_A5623B: MemLdRfVar from_stack_1.htmFile
  loc_A5623E: LdPrVar
  loc_A56240: LateMemCall
  loc_A56246: FFree1Var var_CC = ""
  loc_A56249: LitI4 0
  loc_A5624E: LitI4 0
  loc_A56253: LitI2_Byte 0
  loc_A56255: LitStr "justify"
  loc_A56258: FMemLdR4 var_BC(52)
  loc_A5625D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A56262: CVarStr var_CC
  loc_A56265: PopAdLdVar
  loc_A56266: FLdPr Me
  loc_A56269: MemLdRfVar from_stack_1.htmFile
  loc_A5626C: LdPrVar
  loc_A5626E: LateMemCall
  loc_A56274: FFree1Var var_CC = ""
  loc_A56277: LitI4 0
  loc_A5627C: LitI4 0
  loc_A56281: LitI2_Byte 0
  loc_A56283: LitStr "left"
  loc_A56286: FMemLdR4 var_BC(56)
  loc_A5628B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A56290: CVarStr var_CC
  loc_A56293: PopAdLdVar
  loc_A56294: FLdPr Me
  loc_A56297: MemLdRfVar from_stack_1.htmFile
  loc_A5629A: LdPrVar
  loc_A5629C: LateMemCall
  loc_A562A2: FFree1Var var_CC = ""
  loc_A562A5: LitVarStr var_A4, "    </tr>"
  loc_A562AA: PopAdLdVar
  loc_A562AB: FLdPr Me
  loc_A562AE: MemLdRfVar from_stack_1.htmFile
  loc_A562B1: LdPrVar
  loc_A562B3: LateMemCall
  loc_A562B9: LitI4 0
  loc_A562BE: FStR4 var_BC
  loc_A562C1: AryUnlock
  loc_A562C4: FLdPr Me
  loc_A562C7: MemLdRfVar from_stack_1.global_96
  loc_A562CA: NextI4 var_94, loc_A56051
  loc_A562CF: Call Proc_190_23_982FC0()
  loc_A562D4: FLdPr Me
  loc_A562D7: MemLdRfVar from_stack_1.htmFile
  loc_A562DA: LdPrVar
  loc_A562DC: LateMemCall
  loc_A562E2: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A562E7: ExitProcHresult
End Sub

Private Function Proc_190_22_AA28A4() 'AA28A4
  'Data Table: 4794A0
  loc_AA23C0: LitVarStr var_94, "<html>"
  loc_AA23C5: PopAdLdVar
  loc_AA23C6: FLdPr Me
  loc_AA23C9: MemLdRfVar from_stack_1.htmFile
  loc_AA23CC: LdPrVar
  loc_AA23CE: LateMemCall
  loc_AA23D4: LitVarStr var_94, "<head>"
  loc_AA23D9: PopAdLdVar
  loc_AA23DA: FLdPr Me
  loc_AA23DD: MemLdRfVar from_stack_1.htmFile
  loc_AA23E0: LdPrVar
  loc_AA23E2: LateMemCall
  loc_AA23E8: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AA23ED: PopAdLdVar
  loc_AA23EE: FLdPr Me
  loc_AA23F1: MemLdRfVar from_stack_1.htmFile
  loc_AA23F4: LdPrVar
  loc_AA23F6: LateMemCall
  loc_AA23FC: LitStr "<title>"
  loc_AA23FF: FLdRfVar var_A8
  loc_AA2402: FLdPr Me
  loc_AA2405:  = Me.Caption
  loc_AA240A: ILdRf var_A8
  loc_AA240D: ConcatStr
  loc_AA240E: FStStrNoPop var_AC
  loc_AA2411: LitStr "</title>"
  loc_AA2414: ConcatStr
  loc_AA2415: CVarStr var_BC
  loc_AA2418: PopAdLdVar
  loc_AA2419: FLdPr Me
  loc_AA241C: MemLdRfVar from_stack_1.htmFile
  loc_AA241F: LdPrVar
  loc_AA2421: LateMemCall
  loc_AA2427: FFreeStr var_A8 = ""
  loc_AA242E: FFree1Var var_BC = ""
  loc_AA2431: LitStr vbNullString
  loc_AA2434: ILdRf Me
  loc_AA2437: CastAd
  loc_AA243A: FStAdFunc var_C0
  loc_AA243D: FLdRfVar var_C0
  loc_AA2440: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_AA2445: FFree1Ad var_C0
  loc_AA2448: LitI4 0
  loc_AA244D: FStStrCopy var_AC
  loc_AA2450: FLdRfVar var_AC
  loc_AA2453: LitI4 0
  loc_AA2458: FStStrCopy var_A8
  loc_AA245B: FLdRfVar var_A8
  loc_AA245E: LitI2_Byte &HFF
  loc_AA2460: PopTmpLdAd2 var_C2
  loc_AA2463: FLdPr Me
  loc_AA2466: MemLdRfVar from_stack_1.htmFile
  loc_AA2469: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AA246E: FFreeStr var_A8 = ""
  loc_AA2475: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AA247A: PopAdLdVar
  loc_AA247B: FLdPr Me
  loc_AA247E: MemLdRfVar from_stack_1.htmFile
  loc_AA2481: LdPrVar
  loc_AA2483: LateMemCall
  loc_AA2489: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AA248E: PopAdLdVar
  loc_AA248F: FLdPr Me
  loc_AA2492: MemLdRfVar from_stack_1.htmFile
  loc_AA2495: LdPrVar
  loc_AA2497: LateMemCall
  loc_AA249D: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_AA24A2: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AA24A7: FStVarCopyObj var_BC
  loc_AA24AA: FLdRfVar var_BC
  loc_AA24AD: FLdRfVar var_D4
  loc_AA24B0: ImpAdCallFPR4  = Ucase()
  loc_AA24B5: FLdRfVar var_D4
  loc_AA24B8: ConcatVar var_E4
  loc_AA24BC: LitVarStr var_F4, "</p>"
  loc_AA24C1: ConcatVar var_104
  loc_AA24C5: PopAdLdVar
  loc_AA24C6: FLdPr Me
  loc_AA24C9: MemLdRfVar from_stack_1.htmFile
  loc_AA24CC: LdPrVar
  loc_AA24CE: LateMemCall
  loc_AA24D4: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_AA24DF: LitStr "    <p>"
  loc_AA24E2: FLdRfVar var_A8
  loc_AA24E5: FLdPr Me
  loc_AA24E8:  = Me.Caption
  loc_AA24ED: ILdRf var_A8
  loc_AA24F0: ConcatStr
  loc_AA24F1: FStStrNoPop var_AC
  loc_AA24F4: LitStr "</p></th>"
  loc_AA24F7: ConcatStr
  loc_AA24F8: CVarStr var_BC
  loc_AA24FB: PopAdLdVar
  loc_AA24FC: FLdPr Me
  loc_AA24FF: MemLdRfVar from_stack_1.htmFile
  loc_AA2502: LdPrVar
  loc_AA2504: LateMemCall
  loc_AA250A: FFreeStr var_A8 = ""
  loc_AA2511: FFree1Var var_BC = ""
  loc_AA2514: LitVarStr var_94, "  </tr>"
  loc_AA2519: PopAdLdVar
  loc_AA251A: FLdPr Me
  loc_AA251D: MemLdRfVar from_stack_1.htmFile
  loc_AA2520: LdPrVar
  loc_AA2522: LateMemCall
  loc_AA2528: LitVarStr var_94, "  <tr>"
  loc_AA252D: PopAdLdVar
  loc_AA252E: FLdPr Me
  loc_AA2531: MemLdRfVar from_stack_1.htmFile
  loc_AA2534: LdPrVar
  loc_AA2536: LateMemCall
  loc_AA253C: LitVarStr var_94, "    <th><hr></th>"
  loc_AA2541: PopAdLdVar
  loc_AA2542: FLdPr Me
  loc_AA2545: MemLdRfVar from_stack_1.htmFile
  loc_AA2548: LdPrVar
  loc_AA254A: LateMemCall
  loc_AA2550: LitVarStr var_94, "  </tr>"
  loc_AA2555: PopAdLdVar
  loc_AA2556: FLdPr Me
  loc_AA2559: MemLdRfVar from_stack_1.htmFile
  loc_AA255C: LdPrVar
  loc_AA255E: LateMemCall
  loc_AA2564: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AA2569: PopAdLdVar
  loc_AA256A: FLdPr Me
  loc_AA256D: MemLdRfVar from_stack_1.htmFile
  loc_AA2570: LdPrVar
  loc_AA2572: LateMemCall
  loc_AA2578: LitStr "    <th align=""left"" valign=""bottom"">Periodo: <span class=""Normal"">"
  loc_AA257B: FLdRfVar var_A8
  loc_AA257E: FLdPr Me
  loc_AA2581: VCallAd Control_ID_cboPeriodo
  loc_AA2584: FStAdFunc var_C0
  loc_AA2587: FLdPr var_C0
  loc_AA258A:  = Me.Text
  loc_AA258F: ILdRf var_A8
  loc_AA2592: ConcatStr
  loc_AA2593: FStStrNoPop var_AC
  loc_AA2596: LitStr "</span>"
  loc_AA2599: ConcatStr
  loc_AA259A: CVarStr var_BC
  loc_AA259D: PopAdLdVar
  loc_AA259E: FLdPr Me
  loc_AA25A1: MemLdRfVar from_stack_1.htmFile
  loc_AA25A4: LdPrVar
  loc_AA25A6: LateMemCall
  loc_AA25AC: FFreeStr var_A8 = ""
  loc_AA25B3: FFree1Ad var_C0
  loc_AA25B6: FFree1Var var_BC = ""
  loc_AA25B9: FLdPr Me
  loc_AA25BC: VCallAd Control_ID_DesdeCodiNopeMsk
  loc_AA25BF: FStAdFunc var_C0
  loc_AA25C2: FLdPr var_C0
  loc_AA25C5: LateIdLdVar var_BC DispID_20 0
  loc_AA25CC: CStrVarTmp
  loc_AA25CD: FStStrNoPop var_A8
  loc_AA25D0: LitStr vbNullString
  loc_AA25D3: NeStr
  loc_AA25D5: FFree1Str var_A8
  loc_AA25D8: FFree1Ad var_C0
  loc_AA25DB: FFree1Var var_BC = ""
  loc_AA25DE: BranchF loc_AA2626
  loc_AA25E1: LitStr "                                 <br>Desde Nota de Pedido Nº: <span class=""Normal"">"
  loc_AA25E4: FLdPr Me
  loc_AA25E7: VCallAd Control_ID_DesdeCodiNopeMsk
  loc_AA25EA: FStAdFunc var_C0
  loc_AA25ED: FLdPr var_C0
  loc_AA25F0: LateIdLdVar var_BC DispID_20 0
  loc_AA25F7: CStrVarTmp
  loc_AA25F8: FStStrNoPop var_A8
  loc_AA25FB: ConcatStr
  loc_AA25FC: FStStrNoPop var_AC
  loc_AA25FF: LitStr "</span>"
  loc_AA2602: ConcatStr
  loc_AA2603: CVarStr var_D4
  loc_AA2606: PopAdLdVar
  loc_AA2607: FLdPr Me
  loc_AA260A: MemLdRfVar from_stack_1.htmFile
  loc_AA260D: LdPrVar
  loc_AA260F: LateMemCall
  loc_AA2615: FFreeStr var_A8 = ""
  loc_AA261C: FFree1Ad var_C0
  loc_AA261F: FFreeVar var_BC = ""
  loc_AA2626: FLdPr Me
  loc_AA2629: VCallAd Control_ID_HastaCodiNopeMsk
  loc_AA262C: FStAdFunc var_C0
  loc_AA262F: FLdPr var_C0
  loc_AA2632: LateIdLdVar var_BC DispID_20 0
  loc_AA2639: CStrVarTmp
  loc_AA263A: FStStrNoPop var_A8
  loc_AA263D: LitStr vbNullString
  loc_AA2640: NeStr
  loc_AA2642: FFree1Str var_A8
  loc_AA2645: FFree1Ad var_C0
  loc_AA2648: FFree1Var var_BC = ""
  loc_AA264B: BranchF loc_AA2693
  loc_AA264E: LitStr "                                 <br>Hasta Nota de Pedido Nº: <span class=""Normal"">"
  loc_AA2651: FLdPr Me
  loc_AA2654: VCallAd Control_ID_HastaCodiNopeMsk
  loc_AA2657: FStAdFunc var_C0
  loc_AA265A: FLdPr var_C0
  loc_AA265D: LateIdLdVar var_BC DispID_20 0
  loc_AA2664: CStrVarTmp
  loc_AA2665: FStStrNoPop var_A8
  loc_AA2668: ConcatStr
  loc_AA2669: FStStrNoPop var_AC
  loc_AA266C: LitStr "</span>"
  loc_AA266F: ConcatStr
  loc_AA2670: CVarStr var_D4
  loc_AA2673: PopAdLdVar
  loc_AA2674: FLdPr Me
  loc_AA2677: MemLdRfVar from_stack_1.htmFile
  loc_AA267A: LdPrVar
  loc_AA267C: LateMemCall
  loc_AA2682: FFreeStr var_A8 = ""
  loc_AA2689: FFree1Ad var_C0
  loc_AA268C: FFreeVar var_BC = ""
  loc_AA2693: FLdRfVar var_A8
  loc_AA2696: FLdPr Me
  loc_AA2699: VCallAd Control_ID_CucuPersTxt
  loc_AA269C: FStAdFunc var_C0
  loc_AA269F: FLdPr var_C0
  loc_AA26A2:  = Me.Text
  loc_AA26A7: ILdRf var_A8
  loc_AA26AA: LitStr vbNullString
  loc_AA26AD: NeStr
  loc_AA26AF: FFree1Str var_A8
  loc_AA26B2: FFree1Ad var_C0
  loc_AA26B5: BranchF loc_AA2725
  loc_AA26B8: LitStr "                                 <br>Proveedor: <span class=""Normal"">"
  loc_AA26BB: FLdRfVar var_A8
  loc_AA26BE: FLdPr Me
  loc_AA26C1: VCallAd Control_ID_CucuPersTxt
  loc_AA26C4: FStAdFunc var_C0
  loc_AA26C7: FLdPr var_C0
  loc_AA26CA:  = Me.Text
  loc_AA26CF: ILdRf var_A8
  loc_AA26D2: ConcatStr
  loc_AA26D3: FStStrNoPop var_AC
  loc_AA26D6: LitStr " - "
  loc_AA26D9: ConcatStr
  loc_AA26DA: FStStrNoPop var_120
  loc_AA26DD: FLdRfVar var_11C
  loc_AA26E0: FLdPr Me
  loc_AA26E3: VCallAd Control_ID_DetaProvLbl
  loc_AA26E6: FStAdFunc var_118
  loc_AA26E9: FLdPr var_118
  loc_AA26EC:  = Me.Caption
  loc_AA26F1: ILdRf var_11C
  loc_AA26F4: ConcatStr
  loc_AA26F5: FStStrNoPop var_124
  loc_AA26F8: LitStr "</span>"
  loc_AA26FB: ConcatStr
  loc_AA26FC: CVarStr var_BC
  loc_AA26FF: PopAdLdVar
  loc_AA2700: FLdPr Me
  loc_AA2703: MemLdRfVar from_stack_1.htmFile
  loc_AA2706: LdPrVar
  loc_AA2708: LateMemCall
  loc_AA270E: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_AA271B: FFreeAd var_C0 = ""
  loc_AA2722: FFree1Var var_BC = ""
  loc_AA2725: LitVarStr var_94, "    </th>"
  loc_AA272A: PopAdLdVar
  loc_AA272B: FLdPr Me
  loc_AA272E: MemLdRfVar from_stack_1.htmFile
  loc_AA2731: LdPrVar
  loc_AA2733: LateMemCall
  loc_AA2739: LitVarStr var_94, "  </tr>"
  loc_AA273E: PopAdLdVar
  loc_AA273F: FLdPr Me
  loc_AA2742: MemLdRfVar from_stack_1.htmFile
  loc_AA2745: LdPrVar
  loc_AA2747: LateMemCall
  loc_AA274D: LitVarStr var_94, "</table>"
  loc_AA2752: PopAdLdVar
  loc_AA2753: FLdPr Me
  loc_AA2756: MemLdRfVar from_stack_1.htmFile
  loc_AA2759: LdPrVar
  loc_AA275B: LateMemCall
  loc_AA2761: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AA2766: PopAdLdVar
  loc_AA2767: FLdPr Me
  loc_AA276A: MemLdRfVar from_stack_1.htmFile
  loc_AA276D: LdPrVar
  loc_AA276F: LateMemCall
  loc_AA2775: LitVarStr var_94, "  <THEAD>"
  loc_AA277A: PopAdLdVar
  loc_AA277B: FLdPr Me
  loc_AA277E: MemLdRfVar from_stack_1.htmFile
  loc_AA2781: LdPrVar
  loc_AA2783: LateMemCall
  loc_AA2789: LitVarStr var_94, "  <tr valign=""top"" align=""center"" class=""Encabezado"">"
  loc_AA278E: PopAdLdVar
  loc_AA278F: FLdPr Me
  loc_AA2792: MemLdRfVar from_stack_1.htmFile
  loc_AA2795: LdPrVar
  loc_AA2797: LateMemCall
  loc_AA279D: LitVarStr var_94, "    <th>Nota de pedido</th>"
  loc_AA27A2: PopAdLdVar
  loc_AA27A3: FLdPr Me
  loc_AA27A6: MemLdRfVar from_stack_1.htmFile
  loc_AA27A9: LdPrVar
  loc_AA27AB: LateMemCall
  loc_AA27B1: LitVarStr var_94, "    <th>Proveedor</th>"
  loc_AA27B6: PopAdLdVar
  loc_AA27B7: FLdPr Me
  loc_AA27BA: MemLdRfVar from_stack_1.htmFile
  loc_AA27BD: LdPrVar
  loc_AA27BF: LateMemCall
  loc_AA27C5: LitVarStr var_94, "    <th>Tipo de compra</th>"
  loc_AA27CA: PopAdLdVar
  loc_AA27CB: FLdPr Me
  loc_AA27CE: MemLdRfVar from_stack_1.htmFile
  loc_AA27D1: LdPrVar
  loc_AA27D3: LateMemCall
  loc_AA27D9: LitVarStr var_94, "    <th>Expediente</th>"
  loc_AA27DE: PopAdLdVar
  loc_AA27DF: FLdPr Me
  loc_AA27E2: MemLdRfVar from_stack_1.htmFile
  loc_AA27E5: LdPrVar
  loc_AA27E7: LateMemCall
  loc_AA27ED: LitVarStr var_94, "    <th>Fecha</th>"
  loc_AA27F2: PopAdLdVar
  loc_AA27F3: FLdPr Me
  loc_AA27F6: MemLdRfVar from_stack_1.htmFile
  loc_AA27F9: LdPrVar
  loc_AA27FB: LateMemCall
  loc_AA2801: LitVarStr var_94, "    <th>Fecha de anulación</th>"
  loc_AA2806: PopAdLdVar
  loc_AA2807: FLdPr Me
  loc_AA280A: MemLdRfVar from_stack_1.htmFile
  loc_AA280D: LdPrVar
  loc_AA280F: LateMemCall
  loc_AA2815: LitVarStr var_94, "    <th>Motivo de anulación</th>"
  loc_AA281A: PopAdLdVar
  loc_AA281B: FLdPr Me
  loc_AA281E: MemLdRfVar from_stack_1.htmFile
  loc_AA2821: LdPrVar
  loc_AA2823: LateMemCall
  loc_AA2829: LitVarStr var_94, "    <th>Plazo de entrega</th>"
  loc_AA282E: PopAdLdVar
  loc_AA282F: FLdPr Me
  loc_AA2832: MemLdRfVar from_stack_1.htmFile
  loc_AA2835: LdPrVar
  loc_AA2837: LateMemCall
  loc_AA283D: LitVarStr var_94, "    <th>Mantenimiento de la oferta</th>"
  loc_AA2842: PopAdLdVar
  loc_AA2843: FLdPr Me
  loc_AA2846: MemLdRfVar from_stack_1.htmFile
  loc_AA2849: LdPrVar
  loc_AA284B: LateMemCall
  loc_AA2851: LitVarStr var_94, "    <th>Observaciones</th>"
  loc_AA2856: PopAdLdVar
  loc_AA2857: FLdPr Me
  loc_AA285A: MemLdRfVar from_stack_1.htmFile
  loc_AA285D: LdPrVar
  loc_AA285F: LateMemCall
  loc_AA2865: LitVarStr var_94, "    <th>Usuario</th>"
  loc_AA286A: PopAdLdVar
  loc_AA286B: FLdPr Me
  loc_AA286E: MemLdRfVar from_stack_1.htmFile
  loc_AA2871: LdPrVar
  loc_AA2873: LateMemCall
  loc_AA2879: LitVarStr var_94, "  </tr>"
  loc_AA287E: PopAdLdVar
  loc_AA287F: FLdPr Me
  loc_AA2882: MemLdRfVar from_stack_1.htmFile
  loc_AA2885: LdPrVar
  loc_AA2887: LateMemCall
  loc_AA288D: LitVarStr var_94, "  </THEAD>"
  loc_AA2892: PopAdLdVar
  loc_AA2893: FLdPr Me
  loc_AA2896: MemLdRfVar from_stack_1.htmFile
  loc_AA2899: LdPrVar
  loc_AA289B: LateMemCall
  loc_AA28A1: ExitProcHresult
End Function

Private Function Proc_190_23_982FC0() '982FC0
  'Data Table: 4794A0
  loc_982F80: LitVarStr var_94, "</table>"
  loc_982F85: PopAdLdVar
  loc_982F86: FLdPr Me
  loc_982F89: MemLdRfVar from_stack_1.htmFile
  loc_982F8C: LdPrVar
  loc_982F8E: LateMemCall
  loc_982F94: LitVarStr var_94, "</body>"
  loc_982F99: PopAdLdVar
  loc_982F9A: FLdPr Me
  loc_982F9D: MemLdRfVar from_stack_1.htmFile
  loc_982FA0: LdPrVar
  loc_982FA2: LateMemCall
  loc_982FA8: LitVarStr var_94, "</html>"
  loc_982FAD: PopAdLdVar
  loc_982FAE: FLdPr Me
  loc_982FB1: MemLdRfVar from_stack_1.htmFile
  loc_982FB4: LdPrVar
  loc_982FB6: LateMemCall
  loc_982FBC: ExitProcHresult
End Function
