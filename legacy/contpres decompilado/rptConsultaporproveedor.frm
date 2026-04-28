VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptConsultaporproveedor
  Caption = "Consulta por proveedor PAGADO PRESUPUESTARIO"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptConsultaporproveedor.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9750
  ClientHeight = 5730
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5475
    Width = 9750
    Height = 255
    TabIndex = 21
    OleObjectBlob = "rptConsultaporproveedor.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7920
    Top = 4560
    Width = 735
    Height = 615
    TabIndex = 19
    Cancel = -1  'True
    Picture = "rptConsultaporproveedor.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptConsultaporproveedor.frx":0B9C
    Left = 5160
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 4320
    Width = 3975
    Height = 1095
    TabIndex = 15
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 17
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 16
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 4320
    Width = 3015
    Height = 1095
    TabIndex = 12
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 13
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9495
    Height = 4215
    TabIndex = 0
    Begin VB.TextBox CucuPersTxt
      Left = 1200
      Top = 2400
      Width = 1575
      Height = 375
      TabIndex = 10
      MaxLength = 70
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2400
      Top = 1200
      Width = 375
      Height = 375
      TabIndex = 5
      Picture = "rptConsultaporproveedor.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdCalHasta
      Left = 2400
      Top = 1680
      Width = 375
      Height = 375
      TabIndex = 8
      Picture = "rptConsultaporproveedor.frx":1142
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1200
      Top = 720
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6075
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 18
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1200
      Top = 1200
      Width = 1095
      Height = 315
      TabIndex = 4
      OleObjectBlob = "rptConsultaporproveedor.frx":1684
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1200
      Top = 1680
      Width = 1095
      Height = 315
      TabIndex = 7
      OleObjectBlob = "rptConsultaporproveedor.frx":170C
    End
    Begin VB.Label DetaProvLbl
      Left = 2835
      Top = 2400
      Width = 4575
      Height = 375
      TabIndex = 11
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label4
      Caption = "Desde:"
      Left = 555
      Top = 1200
      Width = 510
      Height = 195
      TabIndex = 3
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Hasta:"
      Left = 600
      Top = 1680
      Width = 465
      Height = 195
      TabIndex = 6
      AutoSize = -1  'True
    End
    Begin VB.Label Label5
      Caption = "Proveedor:"
      Left = 285
      Top = 2400
      Width = 780
      Height = 195
      TabIndex = 9
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 480
      Top = 720
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7920
    Top = 4800
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 20
    OleObjectBlob = "rptConsultaporproveedor.frx":1794
  End
End

Attribute VB_Name = "rptConsultaporproveedor"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00595938
  bStruc(32) As Byte ' String fields: 8
End Type

Private Type UDT_2_005D3518
  bStruc(24) As Byte ' String fields: 6
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98872C
  'Data Table: 48BC3C
  loc_9886F4: FLdPr Me
  loc_9886F7: VCallAd Control_ID_statusBar
  loc_9886FA: FStAdFunc var_88
  loc_9886FD: FLdPr var_88
  loc_988700: LateIdLdVar var_98 DispID_1 0
  loc_988707: CStrVarTmp
  loc_988708: CVarStr var_A8
  loc_98870B: PopAdLdVar
  loc_98870C: FLdPr Me
  loc_98870F: VCallAd Control_ID_statusBar
  loc_988712: FStAdFunc var_BC
  loc_988715: FLdPr var_BC
  loc_988718: LateIdSt
  loc_98871D: FFreeAd var_88 = ""
  loc_988724: FFreeVar var_98 = ""
  loc_98872B: ExitProcHresult
End Sub

Private Sub cboPeriodo_Change() '9D45F4
  'Data Table: 48BC3C
  loc_9D4514: FLdRfVar var_8C
  loc_9D4517: FLdPr Me
  loc_9D451A: VCallAd Control_ID_cboPeriodo
  loc_9D451D: FStAdFunc var_88
  loc_9D4520: FLdPr var_88
  loc_9D4523:  = Me.Text
  loc_9D4528: LitI2_Byte 1
  loc_9D452A: LitI2_Byte 1
  loc_9D452C: ILdRf var_8C
  loc_9D452F: CI2Str
  loc_9D4531: FLdRfVar var_9C
  loc_9D4534: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D4539: FLdRfVar var_9C
  loc_9D453C: CStrVarTmp
  loc_9D453D: CVarStr var_AC
  loc_9D4540: PopAdLdVar
  loc_9D4541: FLdPr Me
  loc_9D4544: VCallAd Control_ID_mskDesde
  loc_9D4547: FStAdFunc var_C0
  loc_9D454A: FLdPr var_C0
  loc_9D454D: LateIdSt
  loc_9D4552: FFree1Str var_8C
  loc_9D4555: FFreeAd var_88 = ""
  loc_9D455C: FFreeVar var_9C = ""
  loc_9D4563: FLdRfVar var_8C
  loc_9D4566: FLdPr Me
  loc_9D4569: VCallAd Control_ID_cboPeriodo
  loc_9D456C: FStAdFunc var_88
  loc_9D456F: FLdPr var_88
  loc_9D4572:  = Me.Text
  loc_9D4577: FLdRfVar var_C4
  loc_9D457A: FLdPr Me
  loc_9D457D: VCallAd Control_ID_cboPeriodo
  loc_9D4580: FStAdFunc var_C0
  loc_9D4583: FLdPr var_C0
  loc_9D4586:  = Me.Text
  loc_9D458B: LitI2_Byte &H1F
  loc_9D458D: LitI2_Byte &HC
  loc_9D458F: ILdRf var_C4
  loc_9D4592: CI2Str
  loc_9D4594: FLdRfVar var_9C
  loc_9D4597: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D459C: ImpAdLdRf MemVar_C3D04C
  loc_9D459F: CVarRef
  loc_9D45A4: FLdRfVar var_9C
  loc_9D45A7: ILdRf var_8C
  loc_9D45AA: CI2Str
  loc_9D45AC: ImpAdLdI2 MemVar_C3D064
  loc_9D45AF: NeI2
  loc_9D45B0: CVarBoolI2 var_BC
  loc_9D45B4: FLdRfVar var_AC
  loc_9D45B7: ImpAdCallFPR4  = IIf(, , )
  loc_9D45BC: FLdRfVar var_AC
  loc_9D45BF: CStrVarTmp
  loc_9D45C0: CVarStr var_E4
  loc_9D45C3: PopAdLdVar
  loc_9D45C4: FLdPr Me
  loc_9D45C7: VCallAd Control_ID_mskHasta
  loc_9D45CA: FStAdFunc var_F8
  loc_9D45CD: FLdPr var_F8
  loc_9D45D0: LateIdSt
  loc_9D45D5: FFreeStr var_8C = ""
  loc_9D45DC: FFreeAd var_88 = "": var_C0 = ""
  loc_9D45E5: FFreeVar var_BC = "": var_9C = "": var_AC = ""
  loc_9D45F0: ExitProcHresult
  loc_9D45F1: FLdPr arg_5EC
End Sub

Private Sub cmdPredeterminada_Click() '95A424
  'Data Table: 48BC3C
  loc_95A40C: ILdRf Me
  loc_95A40F: CastAd
  loc_95A412: FStAdFunc var_88
  loc_95A415: FLdRfVar var_88
  loc_95A418: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95A41D: FFree1Ad var_88
  loc_95A420: ExitProcHresult
  loc_95A421: MemLdRfVar from_stack_1.global_30720
End Sub

Private Sub cmdPdf_Click() '95A470
  'Data Table: 48BC3C
  loc_95A458: LitI2_Byte 0
  loc_95A45A: ILdRf Me
  loc_95A45D: CastAd
  loc_95A460: FStAdFunc var_88
  loc_95A463: FLdRfVar var_88
  loc_95A466: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95A46B: FFree1Ad var_88
  loc_95A46E: ExitProcHresult
End Sub

Private Sub Form_Load() '9D6050
  'Data Table: 48BC3C
  loc_9D5F64: LitI2_Byte &HFF
  loc_9D5F66: ImpAdStI2 MemVar_C3D840
  loc_9D5F69: ILdRf Me
  loc_9D5F6C: CastAd
  loc_9D5F6F: FStAdFunc var_88
  loc_9D5F72: FLdRfVar var_88
  loc_9D5F75: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D5F7A: FFree1Ad var_88
  loc_9D5F7D: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D5F80: FLdPr Me
  loc_9D5F83: MemLdRfVar from_stack_1.global_76
  loc_9D5F86: NewIfNullPr clsperiodo
  loc_9D5F89: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9D5F8E: FLdRfVar var_8C
  loc_9D5F91: FLdPr Me
  loc_9D5F94: MemLdRfVar from_stack_1.global_76
  loc_9D5F97: NewIfNullPr clsperiodo
  loc_9D5F9A: from_stack_1 = clsperiodo.RecordCount
  loc_9D5F9F: ILdRf var_8C
  loc_9D5FA2: LitI4 0
  loc_9D5FA7: GtI4
  loc_9D5FA8: BranchF loc_9D6047
  loc_9D5FAB: FLdPr Me
  loc_9D5FAE: MemLdRfVar from_stack_1.global_76
  loc_9D5FB1: NewIfNullPr clsperiodo
  loc_9D5FB4: Call clsperiodo.MoveFirst()
  loc_9D5FB9: FLdRfVar var_8E
  loc_9D5FBC: FLdPr Me
  loc_9D5FBF: MemLdRfVar from_stack_1.global_76
  loc_9D5FC2: NewIfNullPr clsperiodo
  loc_9D5FC5: from_stack_1 = clsperiodo.EOF
  loc_9D5FCA: FLdI2 var_8E
  loc_9D5FCD: NotI4
  loc_9D5FCE: BranchF loc_9D6047
  loc_9D5FD1: LitVar_Missing var_CC
  loc_9D5FD4: PopAdLdVar
  loc_9D5FD5: FLdRfVar var_B8
  loc_9D5FD8: FLdRfVar var_A8
  loc_9D5FDB: LitVarStr var_A4, "PeriInfo"
  loc_9D5FE0: PopAdLdVar
  loc_9D5FE1: FLdRfVar var_94
  loc_9D5FE4: FLdRfVar var_88
  loc_9D5FE7: FLdPr Me
  loc_9D5FEA: MemLdRfVar from_stack_1.global_76
  loc_9D5FED: NewIfNullPr clsperiodo
  loc_9D5FF0: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9D5FF5: FLdPr var_88
  loc_9D5FF8:  = Me.Fields
  loc_9D5FFD: FLdPr var_94
  loc_9D6000: from_stack_2 = Me.Item(from_stack_1)
  loc_9D6005: FLdPr var_A8
  loc_9D6008:  = Me.Value
  loc_9D600D: FLdRfVar var_B8
  loc_9D6010: CStrVarTmp
  loc_9D6011: FStStrNoPop var_BC
  loc_9D6014: FLdPr Me
  loc_9D6017: VCallAd Control_ID_cboPeriodo
  loc_9D601A: FStAdFunc var_D0
  loc_9D601D: FLdPr var_D0
  loc_9D6020: Me.AddItem from_stack_1, from_stack_2
  loc_9D6025: FFree1Str var_BC
  loc_9D6028: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_9D6033: FFree1Var var_B8 = ""
  loc_9D6036: FLdPr Me
  loc_9D6039: MemLdRfVar from_stack_1.global_76
  loc_9D603C: NewIfNullPr clsperiodo
  loc_9D603F: Call clsperiodo.MoveSiguiente()
  loc_9D6044: Branch loc_9D5FB9
  loc_9D6047: Call cmdNueva_Click()
  loc_9D604C: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95A9C8
  'Data Table: 48BC3C
  loc_95A9B0: FLdPr Me
  loc_95A9B3: VCallAd Control_ID_wbbReporte
  loc_95A9B6: FStAdFunc var_88
  loc_95A9B9: FLdRfVar var_88
  loc_95A9BC: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95A9C1: FFree1Ad var_88
  loc_95A9C4: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95A3D8
  'Data Table: 48BC3C
  loc_95A3C0: ILdRf Me
  loc_95A3C3: CastAd
  loc_95A3C6: FStAdFunc var_88
  loc_95A3C9: FLdRfVar var_88
  loc_95A3CC: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95A3D1: FFree1Ad var_88
  loc_95A3D4: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '9503D0
  'Data Table: 48BC3C
  loc_9503BC: FLdPr Me
  loc_9503BF: VCallAd Control_ID_mskDesde
  loc_9503C2: CVarAd
  loc_9503C6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9503CB: FFree1Var var_94 = ""
  loc_9503CE: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9B147C
  'Data Table: 48BC3C
  loc_9B13E0: FLdPr Me
  loc_9B13E3: VCallAd Control_ID_mskDesde
  loc_9B13E6: FStAdFunc var_88
  loc_9B13E9: FLdPr var_88
  loc_9B13EC: LateIdLdVar var_98 DispID_15 0
  loc_9B13F3: PopAd
  loc_9B13F5: FLdPr Me
  loc_9B13F8: VCallAd Control_ID_mskDesde
  loc_9B13FB: FStAdFunc var_AC
  loc_9B13FE: LitI2_Byte &HFF
  loc_9B1400: PopTmpLdAd2 var_A2
  loc_9B1403: FLdZeroAd var_AC
  loc_9B1406: FStAdFunc var_A0
  loc_9B1409: FLdRfVar var_A0
  loc_9B140C: LitStr vbNullString
  loc_9B140F: LitI2_Byte 0
  loc_9B1411: LitI2_Byte 0
  loc_9B1413: FLdRfVar var_98
  loc_9B1416: CStrVarTmp
  loc_9B1417: FStStrNoPop var_9C
  loc_9B141A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B141F: FStStrNoPop var_A8
  loc_9B1422: FLdPr Me
  loc_9B1425: MemStStrCopy
  loc_9B1429: FFreeStr var_9C = ""
  loc_9B1430: FFreeAd var_88 = "": var_A0 = ""
  loc_9B1439: FFree1Var var_98 = ""
  loc_9B143C: FLdPr Me
  loc_9B143F: VCallAd Control_ID_mskDesde
  loc_9B1442: FStAdFunc var_B0
  loc_9B1445: LitNothing
  loc_9B1447: CastAd
  loc_9B144A: FStAdFunc var_AC
  loc_9B144D: FLdRfVar var_AC
  loc_9B1450: FLdZeroAd var_B0
  loc_9B1453: FStAdFuncNoPop
  loc_9B1456: CastAd
  loc_9B1459: FStAdFunc var_A0
  loc_9B145C: FLdRfVar var_A0
  loc_9B145F: FLdPr Me
  loc_9B1462: MemLdRfVar from_stack_1.global_104
  loc_9B1465: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B146A: IStI2 arg_C
  loc_9B146D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B1478: ExitProcHresult
  loc_9B1479: CR8Cy
  loc_9B147A: FLdPrThis
End Function

Private Sub mskHasta_UnknownEvent_0 '950388
  'Data Table: 48BC3C
  loc_950374: FLdPr Me
  loc_950377: VCallAd Control_ID_mskHasta
  loc_95037A: CVarAd
  loc_95037E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950383: FFree1Var var_94 = ""
  loc_950386: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9C4210
  'Data Table: 48BC3C
  loc_9C4154: FLdPr Me
  loc_9C4157: VCallAd Control_ID_mskHasta
  loc_9C415A: FStAdFunc var_88
  loc_9C415D: FLdPr var_88
  loc_9C4160: LateIdLdVar var_98 DispID_15 0
  loc_9C4167: PopAd
  loc_9C4169: FLdPr Me
  loc_9C416C: VCallAd Control_ID_mskDesde
  loc_9C416F: FStAdFunc var_9C
  loc_9C4172: FLdPr var_9C
  loc_9C4175: LateIdLdVar var_AC DispID_15 0
  loc_9C417C: PopAd
  loc_9C417E: FLdPr Me
  loc_9C4181: VCallAd Control_ID_mskHasta
  loc_9C4184: FStAdFunc var_C4
  loc_9C4187: LitI2_Byte &HFF
  loc_9C4189: PopTmpLdAd2 var_BA
  loc_9C418C: FLdZeroAd var_C4
  loc_9C418F: FStAdFunc var_B8
  loc_9C4192: FLdRfVar var_B8
  loc_9C4195: FLdRfVar var_AC
  loc_9C4198: CStrVarTmp
  loc_9C4199: FStStrNoPop var_B4
  loc_9C419C: LitI2_Byte 0
  loc_9C419E: LitI2_Byte 0
  loc_9C41A0: FLdRfVar var_98
  loc_9C41A3: CStrVarTmp
  loc_9C41A4: FStStrNoPop var_B0
  loc_9C41A7: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C41AC: FStStrNoPop var_C0
  loc_9C41AF: FLdPr Me
  loc_9C41B2: MemStStrCopy
  loc_9C41B6: FFreeStr var_B0 = "": var_B4 = ""
  loc_9C41BF: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_9C41CA: FFreeVar var_98 = ""
  loc_9C41D1: FLdPr Me
  loc_9C41D4: VCallAd Control_ID_mskHasta
  loc_9C41D7: FStAdFunc var_C4
  loc_9C41DA: LitNothing
  loc_9C41DC: CastAd
  loc_9C41DF: FStAdFunc var_B8
  loc_9C41E2: FLdRfVar var_B8
  loc_9C41E5: FLdZeroAd var_C4
  loc_9C41E8: FStAdFuncNoPop
  loc_9C41EB: CastAd
  loc_9C41EE: FStAdFunc var_9C
  loc_9C41F1: FLdRfVar var_9C
  loc_9C41F4: FLdPr Me
  loc_9C41F7: MemLdRfVar from_stack_1.global_104
  loc_9C41FA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C41FF: IStI2 arg_C
  loc_9C4202: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_9C420D: ExitProcHresult
  loc_9C420E: NewIfNullPr Me
End Function

Private Sub CucuPersTxt_GotFocus() '9502B0
  'Data Table: 48BC3C
  loc_95029C: FLdPr Me
  loc_95029F: VCallAd Control_ID_CucuPersTxt
  loc_9502A2: CVarAd
  loc_9502A6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9502AB: FFree1Var var_94 = ""
  loc_9502AE: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyUp(KeyCode As Integer, Shift As Integer) 'A0C9B0
  'Data Table: 48BC3C
  loc_A0C84C: ILdI2 Shift
  loc_A0C84F: CI4UI1
  loc_A0C850: LitI4 2
  loc_A0C855: EqI4
  loc_A0C856: ILdI2 KeyCode
  loc_A0C859: CI4UI1
  loc_A0C85A: LitI4 &H42
  loc_A0C85F: EqI4
  loc_A0C860: AndI4
  loc_A0C861: BranchF loc_A0C9AC
  loc_A0C864: LitI2_Byte &HFF
  loc_A0C866: ImpAdLdRf MemVar_C3D74C
  loc_A0C869: NewIfNullPr bscProveedor
  loc_A0C86C: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_A0C871: LitNothing
  loc_A0C873: CastAd
  loc_A0C876: FStAdFuncNoPop
  loc_A0C879: FLdRfVar var_88
  loc_A0C87C: ImpAdLdRf MemVar_C3D74C
  loc_A0C87F: NewIfNullPr bscProveedor
  loc_A0C882: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0C887: FLdPr var_88
  loc_A0C88A: Call clsbase.RsFrmSet(from_stack_1v)
  loc_A0C88F: FFreeAd var_8C = ""
  loc_A0C896: LitVar_Missing var_AC
  loc_A0C899: PopAdLdVar
  loc_A0C89A: LitVarI4
  loc_A0C8A2: PopAdLdVar
  loc_A0C8A3: ImpAdLdRf MemVar_C3D74C
  loc_A0C8A6: NewIfNullPr bscProveedor
  loc_A0C8A9: bscProveedor.Show from_stack_1, from_stack_2
  loc_A0C8AE: FLdRfVar var_B0
  loc_A0C8B1: FLdRfVar var_88
  loc_A0C8B4: ImpAdLdRf MemVar_C3D74C
  loc_A0C8B7: NewIfNullPr bscProveedor
  loc_A0C8BA: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0C8BF: FLdPr var_88
  loc_A0C8C2: from_stack_1 = clsbase.RecordCount
  loc_A0C8C7: ILdRf var_B0
  loc_A0C8CA: LitI4 0
  loc_A0C8CF: GtI4
  loc_A0C8D0: FFree1Ad var_88
  loc_A0C8D3: BranchF loc_A0C9AC
  loc_A0C8D6: FLdRfVar var_C8
  loc_A0C8D9: FLdRfVar var_B8
  loc_A0C8DC: LitVarStr var_9C, "CucuPers"
  loc_A0C8E1: PopAdLdVar
  loc_A0C8E2: FLdRfVar var_B4
  loc_A0C8E5: FLdRfVar var_8C
  loc_A0C8E8: FLdRfVar var_88
  loc_A0C8EB: ImpAdLdRf MemVar_C3D74C
  loc_A0C8EE: NewIfNullPr bscProveedor
  loc_A0C8F1: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0C8F6: FLdPr var_88
  loc_A0C8F9: from_stack_1v = clsbase.RsFrmGet()
  loc_A0C8FE: FLdPr var_8C
  loc_A0C901:  = Me.Fields
  loc_A0C906: FLdPr var_B4
  loc_A0C909: from_stack_2 = Me.Item(from_stack_1)
  loc_A0C90E: FLdPr var_B8
  loc_A0C911:  = Me.Value
  loc_A0C916: FLdRfVar var_C8
  loc_A0C919: CStrVarTmp
  loc_A0C91A: FStStrNoPop var_CC
  loc_A0C91D: FLdPr Me
  loc_A0C920: VCallAd Control_ID_CucuPersTxt
  loc_A0C923: FStAdFunc var_D0
  loc_A0C926: FLdPr var_D0
  loc_A0C929: Me.Text = from_stack_1
  loc_A0C92E: FFree1Str var_CC
  loc_A0C931: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0C93E: FFree1Var var_C8 = ""
  loc_A0C941: FLdRfVar var_C8
  loc_A0C944: FLdRfVar var_B8
  loc_A0C947: LitVarStr var_9C, "DetaProv"
  loc_A0C94C: PopAdLdVar
  loc_A0C94D: FLdRfVar var_B4
  loc_A0C950: FLdRfVar var_8C
  loc_A0C953: FLdRfVar var_88
  loc_A0C956: ImpAdLdRf MemVar_C3D74C
  loc_A0C959: NewIfNullPr bscProveedor
  loc_A0C95C: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0C961: FLdPr var_88
  loc_A0C964: from_stack_1v = clsbase.RsFrmGet()
  loc_A0C969: FLdPr var_8C
  loc_A0C96C:  = Me.Fields
  loc_A0C971: FLdPr var_B4
  loc_A0C974: from_stack_2 = Me.Item(from_stack_1)
  loc_A0C979: FLdPr var_B8
  loc_A0C97C:  = Me.Value
  loc_A0C981: FLdRfVar var_C8
  loc_A0C984: CStrVarTmp
  loc_A0C985: FStStrNoPop var_CC
  loc_A0C988: FLdPr Me
  loc_A0C98B: VCallAd Control_ID_DetaProvLbl
  loc_A0C98E: FStAdFunc var_D0
  loc_A0C991: FLdPr var_D0
  loc_A0C994: Me.Caption = from_stack_1
  loc_A0C999: FFree1Str var_CC
  loc_A0C99C: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0C9A9: FFree1Var var_C8 = ""
  loc_A0C9AC: ExitProcHresult
  loc_A0C9AD: ModI4
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) 'B2C9EC
  'Data Table: 48BC3C
  loc_B2C080: FLdRfVar var_8C
  loc_B2C083: FLdPr Me
  loc_B2C086: VCallAd Control_ID_CucuPersTxt
  loc_B2C089: FStAdFunc var_88
  loc_B2C08C: FLdPr var_88
  loc_B2C08F:  = Me.Text
  loc_B2C094: ILdRf var_8C
  loc_B2C097: ImpAdCallI2 Trim$()
  loc_B2C09C: FStStrNoPop var_90
  loc_B2C09F: LitStr vbNullString
  loc_B2C0A2: NeStr
  loc_B2C0A4: FFreeStr var_8C = ""
  loc_B2C0AB: FFree1Ad var_88
  loc_B2C0AE: BranchF loc_B2C975
  loc_B2C0B1: FLdPr Me
  loc_B2C0B4: VCallAd Control_ID_CucuPersTxt
  loc_B2C0B7: FStAdFunc var_88
  loc_B2C0BA: FLdRfVar var_88
  loc_B2C0BD: ImpAdCallI2 Proc_266_39_9F3844()
  loc_B2C0C2: FFree1Ad var_88
  loc_B2C0C5: BranchF loc_B2C50F
  loc_B2C0C8: LitI2_Byte &HFF
  loc_B2C0CA: ImpAdLdRf MemVar_C3D74C
  loc_B2C0CD: NewIfNullPr bscProveedor
  loc_B2C0D0: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_B2C0D5: LitStr "AND proveedor.CucuPers LIKE '" & Chr(37)
  loc_B2C0D8: FLdRfVar var_8C
  loc_B2C0DB: FLdPr Me
  loc_B2C0DE: VCallAd Control_ID_
  loc_B2C0E1: FStAdFunc var_88
  loc_B2C0E4: FLdPr var_88
  loc_B2C0E7:  = bscProveedor.TextBox.Text
  loc_B2C0EC: ILdRf var_8C
  loc_B2C0EF: ConcatStr
  loc_B2C0F0: FStStrNoPop var_90
  loc_B2C0F3: LitStr Chr(37) & "' ORDER BY DetaProv"
  loc_B2C0F6: ConcatStr
  loc_B2C0F7: FStStrNoPop var_94
  loc_B2C0FA: ImpAdLdRf MemVar_C3D74C
  loc_B2C0FD: NewIfNullPr bscProveedor
  loc_B2C100: Call bscProveedor.Constructor(from_stack_1v)
  loc_B2C105: FFreeStr var_8C = "": var_90 = ""
  loc_B2C10E: FFree1Ad var_88
  loc_B2C111: FLdRfVar var_9C
  loc_B2C114: FLdRfVar var_98
  loc_B2C117: FLdRfVar var_88
  loc_B2C11A: ImpAdLdRf MemVar_C3D74C
  loc_B2C11D: NewIfNullPr bscProveedor
  loc_B2C120: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B2C125: FLdPr var_88
  loc_B2C128: from_stack_1v = clsbase.RsFrmGet()
  loc_B2C12D: FLdPr var_98
  loc_B2C130:  = Me.RecordCount
  loc_B2C135: ILdRf var_9C
  loc_B2C138: LitI4 1
  loc_B2C13D: EqI4
  loc_B2C13E: FFreeAd var_88 = ""
  loc_B2C145: BranchF loc_B2C268
  loc_B2C148: FLdRfVar var_C4
  loc_B2C14B: FLdRfVar var_B4
  loc_B2C14E: LitVarStr var_B0, "CucuPers"
  loc_B2C153: PopAdLdVar
  loc_B2C154: FLdRfVar var_A0
  loc_B2C157: FLdRfVar var_98
  loc_B2C15A: FLdRfVar var_88
  loc_B2C15D: ImpAdLdRf MemVar_C3D74C
  loc_B2C160: NewIfNullPr bscProveedor
  loc_B2C163: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B2C168: FLdPr var_88
  loc_B2C16B: from_stack_1v = clsbase.RsFrmGet()
  loc_B2C170: FLdPr var_98
  loc_B2C173:  = Me.Fields
  loc_B2C178: FLdPr var_A0
  loc_B2C17B: from_stack_2 = Me.Item(from_stack_1)
  loc_B2C180: FLdPr var_B4
  loc_B2C183:  = Me.Value
  loc_B2C188: FLdRfVar var_C4
  loc_B2C18B: CStrVarTmp
  loc_B2C18C: FStStrNoPop var_8C
  loc_B2C18F: FLdPr Me
  loc_B2C192: VCallAd Control_ID_CucuPersTxt
  loc_B2C195: FStAdFunc var_C8
  loc_B2C198: FLdPr var_C8
  loc_B2C19B: Me.Text = from_stack_1
  loc_B2C1A0: FFree1Str var_8C
  loc_B2C1A3: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B2C1B0: FFree1Var var_C4 = ""
  loc_B2C1B3: FLdRfVar var_C4
  loc_B2C1B6: FLdRfVar var_B4
  loc_B2C1B9: LitVarStr var_B0, "DetaProv"
  loc_B2C1BE: PopAdLdVar
  loc_B2C1BF: FLdRfVar var_A0
  loc_B2C1C2: FLdRfVar var_98
  loc_B2C1C5: FLdRfVar var_88
  loc_B2C1C8: ImpAdLdRf MemVar_C3D74C
  loc_B2C1CB: NewIfNullPr bscProveedor
  loc_B2C1CE: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B2C1D3: FLdPr var_88
  loc_B2C1D6: from_stack_1v = clsbase.RsFrmGet()
  loc_B2C1DB: FLdPr var_98
  loc_B2C1DE:  = Me.Fields
  loc_B2C1E3: FLdPr var_A0
  loc_B2C1E6: from_stack_2 = Me.Item(from_stack_1)
  loc_B2C1EB: FLdPr var_B4
  loc_B2C1EE:  = Me.Value
  loc_B2C1F3: FLdRfVar var_C4
  loc_B2C1F6: CStrVarTmp
  loc_B2C1F7: FStStrNoPop var_8C
  loc_B2C1FA: FLdPr Me
  loc_B2C1FD: VCallAd Control_ID_DetaProvLbl
  loc_B2C200: FStAdFunc var_C8
  loc_B2C203: FLdPr var_C8
  loc_B2C206: Me.Caption = from_stack_1
  loc_B2C20B: FFree1Str var_8C
  loc_B2C20E: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B2C21B: FFree1Var var_C4 = ""
  loc_B2C21E: LitStr vbNullString
  loc_B2C221: FLdPr Me
  loc_B2C224: MemStStrCopy
  loc_B2C228: FLdPr Me
  loc_B2C22B: VCallAd Control_ID_CucuPersTxt
  loc_B2C22E: FStAdFunc var_B4
  loc_B2C231: FLdPr Me
  loc_B2C234: VCallAd Control_ID_DetaProvLbl
  loc_B2C237: FStAdFunc var_A0
  loc_B2C23A: FLdRfVar var_A0
  loc_B2C23D: FLdZeroAd var_B4
  loc_B2C240: FStAdFuncNoPop
  loc_B2C243: CastAd
  loc_B2C246: FStAdFunc var_98
  loc_B2C249: FLdRfVar var_98
  loc_B2C24C: FLdPr Me
  loc_B2C24F: MemLdRfVar from_stack_1.global_104
  loc_B2C252: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B2C257: IStI2 Cancel
  loc_B2C25A: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B2C265: Branch loc_B2C50C
  loc_B2C268: FLdRfVar var_9C
  loc_B2C26B: FLdRfVar var_98
  loc_B2C26E: FLdRfVar var_88
  loc_B2C271: ImpAdLdRf MemVar_C3D74C
  loc_B2C274: NewIfNullPr bscProveedor
  loc_B2C277: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B2C27C: FLdPr var_88
  loc_B2C27F: from_stack_1v = clsbase.RsFrmGet()
  loc_B2C284: FLdPr var_98
  loc_B2C287:  = Me.RecordCount
  loc_B2C28C: ILdRf var_9C
  loc_B2C28F: LitI4 1
  loc_B2C294: GtI4
  loc_B2C295: FFreeAd var_88 = ""
  loc_B2C29C: BranchF loc_B2C477
  loc_B2C29F: LitVar_Missing var_D8
  loc_B2C2A2: PopAdLdVar
  loc_B2C2A3: LitVarI4
  loc_B2C2AB: PopAdLdVar
  loc_B2C2AC: ImpAdLdRf MemVar_C3D74C
  loc_B2C2AF: NewIfNullPr bscProveedor
  loc_B2C2B2: bscProveedor.Show from_stack_1, from_stack_2
  loc_B2C2B7: FLdRfVar var_9C
  loc_B2C2BA: FLdRfVar var_88
  loc_B2C2BD: ImpAdLdRf MemVar_C3D74C
  loc_B2C2C0: NewIfNullPr bscProveedor
  loc_B2C2C3: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B2C2C8: FLdPr var_88
  loc_B2C2CB: from_stack_1 = clsbase.RecordCount
  loc_B2C2D0: ILdRf var_9C
  loc_B2C2D3: LitI4 0
  loc_B2C2D8: GtI4
  loc_B2C2D9: FFree1Ad var_88
  loc_B2C2DC: BranchF loc_B2C3FF
  loc_B2C2DF: FLdRfVar var_C4
  loc_B2C2E2: FLdRfVar var_B4
  loc_B2C2E5: LitVarStr var_B0, "CucuPers"
  loc_B2C2EA: PopAdLdVar
  loc_B2C2EB: FLdRfVar var_A0
  loc_B2C2EE: FLdRfVar var_98
  loc_B2C2F1: FLdRfVar var_88
  loc_B2C2F4: ImpAdLdRf MemVar_C3D74C
  loc_B2C2F7: NewIfNullPr bscProveedor
  loc_B2C2FA: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B2C2FF: FLdPr var_88
  loc_B2C302: from_stack_1v = clsbase.RsFrmGet()
  loc_B2C307: FLdPr var_98
  loc_B2C30A:  = Me.Fields
  loc_B2C30F: FLdPr var_A0
  loc_B2C312: from_stack_2 = Me.Item(from_stack_1)
  loc_B2C317: FLdPr var_B4
  loc_B2C31A:  = Me.Value
  loc_B2C31F: FLdRfVar var_C4
  loc_B2C322: CStrVarTmp
  loc_B2C323: FStStrNoPop var_8C
  loc_B2C326: FLdPr Me
  loc_B2C329: VCallAd Control_ID_CucuPersTxt
  loc_B2C32C: FStAdFunc var_C8
  loc_B2C32F: FLdPr var_C8
  loc_B2C332: Me.Text = from_stack_1
  loc_B2C337: FFree1Str var_8C
  loc_B2C33A: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B2C347: FFree1Var var_C4 = ""
  loc_B2C34A: FLdRfVar var_C4
  loc_B2C34D: FLdRfVar var_B4
  loc_B2C350: LitVarStr var_B0, "DetaProv"
  loc_B2C355: PopAdLdVar
  loc_B2C356: FLdRfVar var_A0
  loc_B2C359: FLdRfVar var_98
  loc_B2C35C: FLdRfVar var_88
  loc_B2C35F: ImpAdLdRf MemVar_C3D74C
  loc_B2C362: NewIfNullPr bscProveedor
  loc_B2C365: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B2C36A: FLdPr var_88
  loc_B2C36D: from_stack_1v = clsbase.RsFrmGet()
  loc_B2C372: FLdPr var_98
  loc_B2C375:  = Me.Fields
  loc_B2C37A: FLdPr var_A0
  loc_B2C37D: from_stack_2 = Me.Item(from_stack_1)
  loc_B2C382: FLdPr var_B4
  loc_B2C385:  = Me.Value
  loc_B2C38A: FLdRfVar var_C4
  loc_B2C38D: CStrVarTmp
  loc_B2C38E: FStStrNoPop var_8C
  loc_B2C391: FLdPr Me
  loc_B2C394: VCallAd Control_ID_DetaProvLbl
  loc_B2C397: FStAdFunc var_C8
  loc_B2C39A: FLdPr var_C8
  loc_B2C39D: Me.Caption = from_stack_1
  loc_B2C3A2: FFree1Str var_8C
  loc_B2C3A5: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B2C3B2: FFree1Var var_C4 = ""
  loc_B2C3B5: LitStr vbNullString
  loc_B2C3B8: FLdPr Me
  loc_B2C3BB: MemStStrCopy
  loc_B2C3BF: FLdPr Me
  loc_B2C3C2: VCallAd Control_ID_CucuPersTxt
  loc_B2C3C5: FStAdFunc var_B4
  loc_B2C3C8: FLdPr Me
  loc_B2C3CB: VCallAd Control_ID_DetaProvLbl
  loc_B2C3CE: FStAdFunc var_A0
  loc_B2C3D1: FLdRfVar var_A0
  loc_B2C3D4: FLdZeroAd var_B4
  loc_B2C3D7: FStAdFuncNoPop
  loc_B2C3DA: CastAd
  loc_B2C3DD: FStAdFunc var_98
  loc_B2C3E0: FLdRfVar var_98
  loc_B2C3E3: FLdPr Me
  loc_B2C3E6: MemLdRfVar from_stack_1.global_104
  loc_B2C3E9: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B2C3EE: IStI2 Cancel
  loc_B2C3F1: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B2C3FC: Branch loc_B2C474
  loc_B2C3FF: LitStr vbNullString
  loc_B2C402: FLdPr Me
  loc_B2C405: VCallAd Control_ID_CucuPersTxt
  loc_B2C408: FStAdFunc var_88
  loc_B2C40B: FLdPr var_88
  loc_B2C40E: Me.Text = from_stack_1
  loc_B2C413: FFree1Ad var_88
  loc_B2C416: LitStr vbNullString
  loc_B2C419: FLdPr Me
  loc_B2C41C: VCallAd Control_ID_DetaProvLbl
  loc_B2C41F: FStAdFunc var_88
  loc_B2C422: FLdPr var_88
  loc_B2C425: Me.Caption = from_stack_1
  loc_B2C42A: FFree1Ad var_88
  loc_B2C42D: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B2C430: FLdPr Me
  loc_B2C433: MemStStrCopy
  loc_B2C437: FLdPr Me
  loc_B2C43A: VCallAd Control_ID_CucuPersTxt
  loc_B2C43D: FStAdFunc var_B4
  loc_B2C440: FLdPr Me
  loc_B2C443: VCallAd Control_ID_DetaProvLbl
  loc_B2C446: FStAdFunc var_A0
  loc_B2C449: FLdRfVar var_A0
  loc_B2C44C: FLdZeroAd var_B4
  loc_B2C44F: FStAdFuncNoPop
  loc_B2C452: CastAd
  loc_B2C455: FStAdFunc var_98
  loc_B2C458: FLdRfVar var_98
  loc_B2C45B: FLdPr Me
  loc_B2C45E: MemLdRfVar from_stack_1.global_104
  loc_B2C461: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B2C466: IStI2 Cancel
  loc_B2C469: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B2C474: Branch loc_B2C50C
  loc_B2C477: FLdRfVar var_9C
  loc_B2C47A: FLdRfVar var_98
  loc_B2C47D: FLdRfVar var_88
  loc_B2C480: ImpAdLdRf MemVar_C3D74C
  loc_B2C483: NewIfNullPr bscProveedor
  loc_B2C486: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B2C48B: FLdPr var_88
  loc_B2C48E: from_stack_1v = clsbase.RsFrmGet()
  loc_B2C493: FLdPr var_98
  loc_B2C496:  = Me.RecordCount
  loc_B2C49B: ILdRf var_9C
  loc_B2C49E: LitI4 1
  loc_B2C4A3: LtI4
  loc_B2C4A4: FFreeAd var_88 = ""
  loc_B2C4AB: BranchF loc_B2C50C
  loc_B2C4AE: LitStr vbNullString
  loc_B2C4B1: FLdPr Me
  loc_B2C4B4: VCallAd Control_ID_DetaProvLbl
  loc_B2C4B7: FStAdFunc var_88
  loc_B2C4BA: FLdPr var_88
  loc_B2C4BD: Me.Caption = from_stack_1
  loc_B2C4C2: FFree1Ad var_88
  loc_B2C4C5: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B2C4C8: FLdPr Me
  loc_B2C4CB: MemStStrCopy
  loc_B2C4CF: FLdPr Me
  loc_B2C4D2: VCallAd Control_ID_CucuPersTxt
  loc_B2C4D5: FStAdFunc var_B4
  loc_B2C4D8: FLdPr Me
  loc_B2C4DB: VCallAd Control_ID_DetaProvLbl
  loc_B2C4DE: FStAdFunc var_A0
  loc_B2C4E1: FLdRfVar var_A0
  loc_B2C4E4: FLdZeroAd var_B4
  loc_B2C4E7: FStAdFuncNoPop
  loc_B2C4EA: CastAd
  loc_B2C4ED: FStAdFunc var_98
  loc_B2C4F0: FLdRfVar var_98
  loc_B2C4F3: FLdPr Me
  loc_B2C4F6: MemLdRfVar from_stack_1.global_104
  loc_B2C4F9: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B2C4FE: IStI2 Cancel
  loc_B2C501: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B2C50C: Branch loc_B2C972
  loc_B2C50F: LitI2_Byte &HFF
  loc_B2C511: ImpAdLdRf MemVar_C3D74C
  loc_B2C514: NewIfNullPr bscProveedor
  loc_B2C517: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_B2C51C: FLdRfVar var_8C
  loc_B2C51F: FLdPr Me
  loc_B2C522: VCallAd Control_ID_
  loc_B2C525: FStAdFunc var_88
  loc_B2C528: FLdPr var_88
  loc_B2C52B:  = bscProveedor.TextBox.Text
  loc_B2C530: LitStr " AND DetaProv LIKE '" & Chr(37)
  loc_B2C533: LitI4 0
  loc_B2C538: LitI4 -1
  loc_B2C53D: LitI4 1
  loc_B2C542: LitStr Chr(37)
  loc_B2C545: LitStr " "
  loc_B2C548: ILdRf var_8C
  loc_B2C54B: ImpAdCallI2 Replace(, , , , , )
  loc_B2C550: FStStrNoPop var_90
  loc_B2C553: ConcatStr
  loc_B2C554: FStStrNoPop var_94
  loc_B2C557: LitStr Chr(37) & "' ORDER BY DetaProv"
  loc_B2C55A: ConcatStr
  loc_B2C55B: FStStrNoPop var_DC
  loc_B2C55E: ImpAdLdRf MemVar_C3D74C
  loc_B2C561: NewIfNullPr bscProveedor
  loc_B2C564: Call bscProveedor.Constructor(from_stack_1v)
  loc_B2C569: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_B2C574: FFree1Ad var_88
  loc_B2C577: FLdRfVar var_9C
  loc_B2C57A: FLdRfVar var_98
  loc_B2C57D: FLdRfVar var_88
  loc_B2C580: ImpAdLdRf MemVar_C3D74C
  loc_B2C583: NewIfNullPr bscProveedor
  loc_B2C586: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B2C58B: FLdPr var_88
  loc_B2C58E: from_stack_1v = clsbase.RsFrmGet()
  loc_B2C593: FLdPr var_98
  loc_B2C596:  = Me.RecordCount
  loc_B2C59B: ILdRf var_9C
  loc_B2C59E: LitI4 1
  loc_B2C5A3: EqI4
  loc_B2C5A4: FFreeAd var_88 = ""
  loc_B2C5AB: BranchF loc_B2C6CE
  loc_B2C5AE: FLdRfVar var_C4
  loc_B2C5B1: FLdRfVar var_B4
  loc_B2C5B4: LitVarStr var_B0, "CucuPers"
  loc_B2C5B9: PopAdLdVar
  loc_B2C5BA: FLdRfVar var_A0
  loc_B2C5BD: FLdRfVar var_98
  loc_B2C5C0: FLdRfVar var_88
  loc_B2C5C3: ImpAdLdRf MemVar_C3D74C
  loc_B2C5C6: NewIfNullPr bscProveedor
  loc_B2C5C9: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B2C5CE: FLdPr var_88
  loc_B2C5D1: from_stack_1v = clsbase.RsFrmGet()
  loc_B2C5D6: FLdPr var_98
  loc_B2C5D9:  = Me.Fields
  loc_B2C5DE: FLdPr var_A0
  loc_B2C5E1: from_stack_2 = Me.Item(from_stack_1)
  loc_B2C5E6: FLdPr var_B4
  loc_B2C5E9:  = Me.Value
  loc_B2C5EE: FLdRfVar var_C4
  loc_B2C5F1: CStrVarTmp
  loc_B2C5F2: FStStrNoPop var_8C
  loc_B2C5F5: FLdPr Me
  loc_B2C5F8: VCallAd Control_ID_CucuPersTxt
  loc_B2C5FB: FStAdFunc var_C8
  loc_B2C5FE: FLdPr var_C8
  loc_B2C601: Me.Text = from_stack_1
  loc_B2C606: FFree1Str var_8C
  loc_B2C609: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B2C616: FFree1Var var_C4 = ""
  loc_B2C619: FLdRfVar var_C4
  loc_B2C61C: FLdRfVar var_B4
  loc_B2C61F: LitVarStr var_B0, "DetaProv"
  loc_B2C624: PopAdLdVar
  loc_B2C625: FLdRfVar var_A0
  loc_B2C628: FLdRfVar var_98
  loc_B2C62B: FLdRfVar var_88
  loc_B2C62E: ImpAdLdRf MemVar_C3D74C
  loc_B2C631: NewIfNullPr bscProveedor
  loc_B2C634: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B2C639: FLdPr var_88
  loc_B2C63C: from_stack_1v = clsbase.RsFrmGet()
  loc_B2C641: FLdPr var_98
  loc_B2C644:  = Me.Fields
  loc_B2C649: FLdPr var_A0
  loc_B2C64C: from_stack_2 = Me.Item(from_stack_1)
  loc_B2C651: FLdPr var_B4
  loc_B2C654:  = Me.Value
  loc_B2C659: FLdRfVar var_C4
  loc_B2C65C: CStrVarTmp
  loc_B2C65D: FStStrNoPop var_8C
  loc_B2C660: FLdPr Me
  loc_B2C663: VCallAd Control_ID_DetaProvLbl
  loc_B2C666: FStAdFunc var_C8
  loc_B2C669: FLdPr var_C8
  loc_B2C66C: Me.Caption = from_stack_1
  loc_B2C671: FFree1Str var_8C
  loc_B2C674: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B2C681: FFree1Var var_C4 = ""
  loc_B2C684: LitStr vbNullString
  loc_B2C687: FLdPr Me
  loc_B2C68A: MemStStrCopy
  loc_B2C68E: FLdPr Me
  loc_B2C691: VCallAd Control_ID_CucuPersTxt
  loc_B2C694: FStAdFunc var_B4
  loc_B2C697: FLdPr Me
  loc_B2C69A: VCallAd Control_ID_DetaProvLbl
  loc_B2C69D: FStAdFunc var_A0
  loc_B2C6A0: FLdRfVar var_A0
  loc_B2C6A3: FLdZeroAd var_B4
  loc_B2C6A6: FStAdFuncNoPop
  loc_B2C6A9: CastAd
  loc_B2C6AC: FStAdFunc var_98
  loc_B2C6AF: FLdRfVar var_98
  loc_B2C6B2: FLdPr Me
  loc_B2C6B5: MemLdRfVar from_stack_1.global_104
  loc_B2C6B8: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B2C6BD: IStI2 Cancel
  loc_B2C6C0: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B2C6CB: Branch loc_B2C972
  loc_B2C6CE: FLdRfVar var_9C
  loc_B2C6D1: FLdRfVar var_98
  loc_B2C6D4: FLdRfVar var_88
  loc_B2C6D7: ImpAdLdRf MemVar_C3D74C
  loc_B2C6DA: NewIfNullPr bscProveedor
  loc_B2C6DD: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B2C6E2: FLdPr var_88
  loc_B2C6E5: from_stack_1v = clsbase.RsFrmGet()
  loc_B2C6EA: FLdPr var_98
  loc_B2C6ED:  = Me.RecordCount
  loc_B2C6F2: ILdRf var_9C
  loc_B2C6F5: LitI4 1
  loc_B2C6FA: GtI4
  loc_B2C6FB: FFreeAd var_88 = ""
  loc_B2C702: BranchF loc_B2C8DD
  loc_B2C705: LitVar_Missing var_D8
  loc_B2C708: PopAdLdVar
  loc_B2C709: LitVarI4
  loc_B2C711: PopAdLdVar
  loc_B2C712: ImpAdLdRf MemVar_C3D74C
  loc_B2C715: NewIfNullPr bscProveedor
  loc_B2C718: bscProveedor.Show from_stack_1, from_stack_2
  loc_B2C71D: FLdRfVar var_9C
  loc_B2C720: FLdRfVar var_88
  loc_B2C723: ImpAdLdRf MemVar_C3D74C
  loc_B2C726: NewIfNullPr bscProveedor
  loc_B2C729: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B2C72E: FLdPr var_88
  loc_B2C731: from_stack_1 = clsbase.RecordCount
  loc_B2C736: ILdRf var_9C
  loc_B2C739: LitI4 0
  loc_B2C73E: GtI4
  loc_B2C73F: FFree1Ad var_88
  loc_B2C742: BranchF loc_B2C865
  loc_B2C745: FLdRfVar var_C4
  loc_B2C748: FLdRfVar var_B4
  loc_B2C74B: LitVarStr var_B0, "CucuPers"
  loc_B2C750: PopAdLdVar
  loc_B2C751: FLdRfVar var_A0
  loc_B2C754: FLdRfVar var_98
  loc_B2C757: FLdRfVar var_88
  loc_B2C75A: ImpAdLdRf MemVar_C3D74C
  loc_B2C75D: NewIfNullPr bscProveedor
  loc_B2C760: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B2C765: FLdPr var_88
  loc_B2C768: from_stack_1v = clsbase.RsFrmGet()
  loc_B2C76D: FLdPr var_98
  loc_B2C770:  = Me.Fields
  loc_B2C775: FLdPr var_A0
  loc_B2C778: from_stack_2 = Me.Item(from_stack_1)
  loc_B2C77D: FLdPr var_B4
  loc_B2C780:  = Me.Value
  loc_B2C785: FLdRfVar var_C4
  loc_B2C788: CStrVarTmp
  loc_B2C789: FStStrNoPop var_8C
  loc_B2C78C: FLdPr Me
  loc_B2C78F: VCallAd Control_ID_CucuPersTxt
  loc_B2C792: FStAdFunc var_C8
  loc_B2C795: FLdPr var_C8
  loc_B2C798: Me.Text = from_stack_1
  loc_B2C79D: FFree1Str var_8C
  loc_B2C7A0: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B2C7AD: FFree1Var var_C4 = ""
  loc_B2C7B0: FLdRfVar var_C4
  loc_B2C7B3: FLdRfVar var_B4
  loc_B2C7B6: LitVarStr var_B0, "DetaProv"
  loc_B2C7BB: PopAdLdVar
  loc_B2C7BC: FLdRfVar var_A0
  loc_B2C7BF: FLdRfVar var_98
  loc_B2C7C2: FLdRfVar var_88
  loc_B2C7C5: ImpAdLdRf MemVar_C3D74C
  loc_B2C7C8: NewIfNullPr bscProveedor
  loc_B2C7CB: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B2C7D0: FLdPr var_88
  loc_B2C7D3: from_stack_1v = clsbase.RsFrmGet()
  loc_B2C7D8: FLdPr var_98
  loc_B2C7DB:  = Me.Fields
  loc_B2C7E0: FLdPr var_A0
  loc_B2C7E3: from_stack_2 = Me.Item(from_stack_1)
  loc_B2C7E8: FLdPr var_B4
  loc_B2C7EB:  = Me.Value
  loc_B2C7F0: FLdRfVar var_C4
  loc_B2C7F3: CStrVarTmp
  loc_B2C7F4: FStStrNoPop var_8C
  loc_B2C7F7: FLdPr Me
  loc_B2C7FA: VCallAd Control_ID_DetaProvLbl
  loc_B2C7FD: FStAdFunc var_C8
  loc_B2C800: FLdPr var_C8
  loc_B2C803: Me.Caption = from_stack_1
  loc_B2C808: FFree1Str var_8C
  loc_B2C80B: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B2C818: FFree1Var var_C4 = ""
  loc_B2C81B: LitStr vbNullString
  loc_B2C81E: FLdPr Me
  loc_B2C821: MemStStrCopy
  loc_B2C825: FLdPr Me
  loc_B2C828: VCallAd Control_ID_CucuPersTxt
  loc_B2C82B: FStAdFunc var_B4
  loc_B2C82E: FLdPr Me
  loc_B2C831: VCallAd Control_ID_DetaProvLbl
  loc_B2C834: FStAdFunc var_A0
  loc_B2C837: FLdRfVar var_A0
  loc_B2C83A: FLdZeroAd var_B4
  loc_B2C83D: FStAdFuncNoPop
  loc_B2C840: CastAd
  loc_B2C843: FStAdFunc var_98
  loc_B2C846: FLdRfVar var_98
  loc_B2C849: FLdPr Me
  loc_B2C84C: MemLdRfVar from_stack_1.global_104
  loc_B2C84F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B2C854: IStI2 Cancel
  loc_B2C857: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B2C862: Branch loc_B2C8DA
  loc_B2C865: LitStr vbNullString
  loc_B2C868: FLdPr Me
  loc_B2C86B: VCallAd Control_ID_CucuPersTxt
  loc_B2C86E: FStAdFunc var_88
  loc_B2C871: FLdPr var_88
  loc_B2C874: Me.Text = from_stack_1
  loc_B2C879: FFree1Ad var_88
  loc_B2C87C: LitStr vbNullString
  loc_B2C87F: FLdPr Me
  loc_B2C882: VCallAd Control_ID_DetaProvLbl
  loc_B2C885: FStAdFunc var_88
  loc_B2C888: FLdPr var_88
  loc_B2C88B: Me.Caption = from_stack_1
  loc_B2C890: FFree1Ad var_88
  loc_B2C893: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B2C896: FLdPr Me
  loc_B2C899: MemStStrCopy
  loc_B2C89D: FLdPr Me
  loc_B2C8A0: VCallAd Control_ID_CucuPersTxt
  loc_B2C8A3: FStAdFunc var_B4
  loc_B2C8A6: FLdPr Me
  loc_B2C8A9: VCallAd Control_ID_DetaProvLbl
  loc_B2C8AC: FStAdFunc var_A0
  loc_B2C8AF: FLdRfVar var_A0
  loc_B2C8B2: FLdZeroAd var_B4
  loc_B2C8B5: FStAdFuncNoPop
  loc_B2C8B8: CastAd
  loc_B2C8BB: FStAdFunc var_98
  loc_B2C8BE: FLdRfVar var_98
  loc_B2C8C1: FLdPr Me
  loc_B2C8C4: MemLdRfVar from_stack_1.global_104
  loc_B2C8C7: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B2C8CC: IStI2 Cancel
  loc_B2C8CF: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B2C8DA: Branch loc_B2C972
  loc_B2C8DD: FLdRfVar var_9C
  loc_B2C8E0: FLdRfVar var_98
  loc_B2C8E3: FLdRfVar var_88
  loc_B2C8E6: ImpAdLdRf MemVar_C3D74C
  loc_B2C8E9: NewIfNullPr bscProveedor
  loc_B2C8EC: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B2C8F1: FLdPr var_88
  loc_B2C8F4: from_stack_1v = clsbase.RsFrmGet()
  loc_B2C8F9: FLdPr var_98
  loc_B2C8FC:  = Me.RecordCount
  loc_B2C901: ILdRf var_9C
  loc_B2C904: LitI4 1
  loc_B2C909: LtI4
  loc_B2C90A: FFreeAd var_88 = ""
  loc_B2C911: BranchF loc_B2C972
  loc_B2C914: LitStr vbNullString
  loc_B2C917: FLdPr Me
  loc_B2C91A: VCallAd Control_ID_DetaProvLbl
  loc_B2C91D: FStAdFunc var_88
  loc_B2C920: FLdPr var_88
  loc_B2C923: Me.Caption = from_stack_1
  loc_B2C928: FFree1Ad var_88
  loc_B2C92B: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B2C92E: FLdPr Me
  loc_B2C931: MemStStrCopy
  loc_B2C935: FLdPr Me
  loc_B2C938: VCallAd Control_ID_CucuPersTxt
  loc_B2C93B: FStAdFunc var_B4
  loc_B2C93E: FLdPr Me
  loc_B2C941: VCallAd Control_ID_DetaProvLbl
  loc_B2C944: FStAdFunc var_A0
  loc_B2C947: FLdRfVar var_A0
  loc_B2C94A: FLdZeroAd var_B4
  loc_B2C94D: FStAdFuncNoPop
  loc_B2C950: CastAd
  loc_B2C953: FStAdFunc var_98
  loc_B2C956: FLdRfVar var_98
  loc_B2C959: FLdPr Me
  loc_B2C95C: MemLdRfVar from_stack_1.global_104
  loc_B2C95F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B2C964: IStI2 Cancel
  loc_B2C967: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B2C972: Branch loc_B2C9EA
  loc_B2C975: LitStr vbNullString
  loc_B2C978: FLdPr Me
  loc_B2C97B: VCallAd Control_ID_CucuPersTxt
  loc_B2C97E: FStAdFunc var_88
  loc_B2C981: FLdPr var_88
  loc_B2C984: Me.Text = from_stack_1
  loc_B2C989: FFree1Ad var_88
  loc_B2C98C: LitStr vbNullString
  loc_B2C98F: FLdPr Me
  loc_B2C992: VCallAd Control_ID_DetaProvLbl
  loc_B2C995: FStAdFunc var_88
  loc_B2C998: FLdPr var_88
  loc_B2C99B: Me.Caption = from_stack_1
  loc_B2C9A0: FFree1Ad var_88
  loc_B2C9A3: LitStr vbNullString
  loc_B2C9A6: FLdPr Me
  loc_B2C9A9: MemStStrCopy
  loc_B2C9AD: FLdPr Me
  loc_B2C9B0: VCallAd Control_ID_CucuPersTxt
  loc_B2C9B3: FStAdFunc var_B4
  loc_B2C9B6: FLdPr Me
  loc_B2C9B9: VCallAd Control_ID_DetaProvLbl
  loc_B2C9BC: FStAdFunc var_A0
  loc_B2C9BF: FLdRfVar var_A0
  loc_B2C9C2: FLdZeroAd var_B4
  loc_B2C9C5: FStAdFuncNoPop
  loc_B2C9C8: CastAd
  loc_B2C9CB: FStAdFunc var_98
  loc_B2C9CE: FLdRfVar var_98
  loc_B2C9D1: FLdPr Me
  loc_B2C9D4: MemLdRfVar from_stack_1.global_104
  loc_B2C9D7: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B2C9DC: IStI2 Cancel
  loc_B2C9DF: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B2C9EA: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '976AB8
  'Data Table: 48BC3C
  loc_976A88: LitVarStr var_94, "Cerrando..."
  loc_976A8D: PopAdLdVar
  loc_976A8E: FLdPr Me
  loc_976A91: VCallAd Control_ID_statusBar
  loc_976A94: FStAdFunc var_A8
  loc_976A97: FLdPr var_A8
  loc_976A9A: LateIdSt
  loc_976A9F: FFree1Ad var_A8
  loc_976AA2: ILdRf Me
  loc_976AA5: FStAdNoPop
  loc_976AA9: ImpAdLdRf MemVar_C44F9C
  loc_976AAC: NewIfNullPr Me
  loc_976AAF: Me.Global.Unload from_stack_1
  loc_976AB4: FFree1Ad var_A8
  loc_976AB7: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9C3EF4
  'Data Table: 48BC3C
  loc_9C3E24: LitI2_Byte 0
  loc_9C3E26: FLdPr Me
  loc_9C3E29: MemStI2 bGenerado
  loc_9C3E2C: LitI2_Byte &HFF
  loc_9C3E2E: FLdPr Me
  loc_9C3E31: MemStI2 bLogos
  loc_9C3E34: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9C3E39: ImpAdLdI2 MemVar_C3D064
  loc_9C3E3C: CStrUI1
  loc_9C3E3E: FStStrNoPop var_88
  loc_9C3E41: FLdPr Me
  loc_9C3E44: VCallAd Control_ID_cboPeriodo
  loc_9C3E47: FStAdFunc var_8C
  loc_9C3E4A: FLdPr var_8C
  loc_9C3E4D: Me.Text = from_stack_1
  loc_9C3E52: FFree1Str var_88
  loc_9C3E55: FFree1Ad var_8C
  loc_9C3E58: LitI2_Byte 1
  loc_9C3E5A: LitI2_Byte 1
  loc_9C3E5C: ImpAdLdI2 MemVar_C3D064
  loc_9C3E5F: FLdRfVar var_9C
  loc_9C3E62: ImpAdCallFPR4  = DateSerial(, , )
  loc_9C3E67: FLdRfVar var_9C
  loc_9C3E6A: CStrVarTmp
  loc_9C3E6B: CVarStr var_AC
  loc_9C3E6E: PopAdLdVar
  loc_9C3E6F: FLdPr Me
  loc_9C3E72: VCallAd Control_ID_mskDesde
  loc_9C3E75: FStAdFunc var_8C
  loc_9C3E78: FLdPr var_8C
  loc_9C3E7B: LateIdSt
  loc_9C3E80: FFree1Ad var_8C
  loc_9C3E83: FFreeVar var_9C = ""
  loc_9C3E8A: ImpAdLdFPR8 MemVar_C3D04C
  loc_9C3E8D: CStrDate
  loc_9C3E8F: CVarStr var_9C
  loc_9C3E92: PopAdLdVar
  loc_9C3E93: FLdPr Me
  loc_9C3E96: VCallAd Control_ID_mskHasta
  loc_9C3E99: FStAdFunc var_8C
  loc_9C3E9C: FLdPr var_8C
  loc_9C3E9F: LateIdSt
  loc_9C3EA4: FFree1Ad var_8C
  loc_9C3EA7: FFree1Var var_9C = ""
  loc_9C3EAA: LitStr vbNullString
  loc_9C3EAD: FLdPr Me
  loc_9C3EB0: VCallAd Control_ID_CucuPersTxt
  loc_9C3EB3: FStAdFunc var_8C
  loc_9C3EB6: FLdPr var_8C
  loc_9C3EB9: Me.Text = from_stack_1
  loc_9C3EBE: FFree1Ad var_8C
  loc_9C3EC1: LitStr vbNullString
  loc_9C3EC4: FLdPr Me
  loc_9C3EC7: VCallAd Control_ID_DetaProvLbl
  loc_9C3ECA: FStAdFunc var_8C
  loc_9C3ECD: FLdPr var_8C
  loc_9C3ED0: Me.Caption = from_stack_1
  loc_9C3ED5: FFree1Ad var_8C
  loc_9C3ED8: Call HabilitarCriterio()
  loc_9C3EDD: ILdRf Me
  loc_9C3EE0: CastAd
  loc_9C3EE3: FStAdFunc var_8C
  loc_9C3EE6: FLdRfVar var_8C
  loc_9C3EE9: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9C3EEE: FFree1Ad var_8C
  loc_9C3EF1: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '98181C
  'Data Table: 48BC3C
  loc_9817E0: LitVar_Missing var_A4
  loc_9817E3: PopAdLdVar
  loc_9817E4: LitVarI4
  loc_9817EC: PopAdLdVar
  loc_9817ED: ImpAdLdRf MemVar_C3D9A8
  loc_9817F0: NewIfNullPr frmCalendario
  loc_9817F3: frmCalendario.Show from_stack_1, from_stack_2
  loc_9817F8: ImpAdLdRf MemVar_C3D038
  loc_9817FB: CDargRef
  loc_9817FF: FLdPr Me
  loc_981802: VCallAd Control_ID_mskDesde
  loc_981805: FStAdFunc var_A8
  loc_981808: FLdPr var_A8
  loc_98180B: LateIdSt
  loc_981810: FFree1Ad var_A8
  loc_981813: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_981818: ExitProcHresult
End Sub

Private Sub cmdCalHasta_Click() '9818FC
  'Data Table: 48BC3C
  loc_9818C0: LitVar_Missing var_A4
  loc_9818C3: PopAdLdVar
  loc_9818C4: LitVarI4
  loc_9818CC: PopAdLdVar
  loc_9818CD: ImpAdLdRf MemVar_C3D9A8
  loc_9818D0: NewIfNullPr frmCalendario
  loc_9818D3: frmCalendario.Show from_stack_1, from_stack_2
  loc_9818D8: ImpAdLdRf MemVar_C3D038
  loc_9818DB: CDargRef
  loc_9818DF: FLdPr Me
  loc_9818E2: VCallAd Control_ID_mskHasta
  loc_9818E5: FStAdFunc var_A8
  loc_9818E8: FLdPr var_A8
  loc_9818EB: LateIdSt
  loc_9818F0: FFree1Ad var_A8
  loc_9818F3: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9818F8: ExitProcHresult
  loc_9818F9: MulCy
  loc_9818FA: CRec2Ansi var_3C00
End Sub

Private Sub cmdXLS_Click() '96B58C
  'Data Table: 48BC3C
  loc_96B570: LitI2_Byte &HFF
  loc_96B572: LitI2_Byte 0
  loc_96B574: ILdRf Me
  loc_96B577: CastAd
  loc_96B57A: FStAdFunc var_88
  loc_96B57D: FLdRfVar var_88
  loc_96B580: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B585: FFree1Ad var_88
  loc_96B588: ExitProcHresult
End Sub

Public Function htmFileGet() '48CC6C
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '48CC7B
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '48CC8A
  htmFile = Value
End Sub

Public Function bLogosGet() '48CC99
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '48CCA8
  bLogos = Value
End Sub

Public Function bGeneradoGet() '48CCB7
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '48CCC6
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9ABADC
  'Data Table: 48BC3C
  loc_9ABA58: LitI4 0
  loc_9ABA5D: LitI4 5
  loc_9ABA62: FLdRfVar var_88
  loc_9ABA65: Redim
  loc_9ABA6F: FLdPr Me
  loc_9ABA72: VCallAd Control_ID_cboPeriodo
  loc_9ABA75: CVarAd
  loc_9ABA79: ParmAry1St
  loc_9ABA7F: FLdPr Me
  loc_9ABA82: VCallAd Control_ID_mskDesde
  loc_9ABA85: CVarAd
  loc_9ABA89: ParmAry1St
  loc_9ABA8F: FLdPr Me
  loc_9ABA92: VCallAd Control_ID_cmdCalDesde
  loc_9ABA95: CVarAd
  loc_9ABA99: ParmAry1St
  loc_9ABA9F: FLdPr Me
  loc_9ABAA2: VCallAd Control_ID_mskHasta
  loc_9ABAA5: CVarAd
  loc_9ABAA9: ParmAry1St
  loc_9ABAAF: FLdPr Me
  loc_9ABAB2: VCallAd Control_ID_cmdCalHasta
  loc_9ABAB5: CVarAd
  loc_9ABAB9: ParmAry1St
  loc_9ABABF: FLdPr Me
  loc_9ABAC2: VCallAd Control_ID_CucuPersTxt
  loc_9ABAC5: CVarAd
  loc_9ABAC9: ParmAry1St
  loc_9ABACF: FLdRfVar var_88
  loc_9ABAD2: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9ABAD7: FLdRfVar var_88
  loc_9ABADA: Erase
  loc_9ABADB: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B33FB8
  'Data Table: 48BC3C
  loc_B33664: LitStr vbNullString
  loc_B33667: FLdPr Me
  loc_B3366A: MemStStrCopy
  loc_B3366E: LitI2_Byte 0
  loc_B33670: PopTmpLdAd2 var_92
  loc_B33673: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B33678: FLdPr Me
  loc_B3367B: MemLdStr global_104
  loc_B3367E: LitStr vbNullString
  loc_B33681: NeStr
  loc_B33683: BranchF loc_B33687
  loc_B33686: ExitProcHresult
  loc_B33687: LitI2_Byte 0
  loc_B33689: PopTmpLdAd2 var_92
  loc_B3368C: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B33691: FLdPr Me
  loc_B33694: MemLdStr global_104
  loc_B33697: LitStr vbNullString
  loc_B3369A: NeStr
  loc_B3369C: BranchF loc_B336A0
  loc_B3369F: ExitProcHresult
  loc_B336A0: FLdPr Me
  loc_B336A3: MemLdI2 bGenerado
  loc_B336A6: BranchF loc_B336AA
  loc_B336A9: ExitProcHresult
  loc_B336AA: LitVarStr var_A4, "Generando reporte..."
  loc_B336AF: PopAdLdVar
  loc_B336B0: FLdPr Me
  loc_B336B3: VCallAd Control_ID_statusBar
  loc_B336B6: FStAdFunc var_B8
  loc_B336B9: FLdPr var_B8
  loc_B336BC: LateIdSt
  loc_B336C1: FFree1Ad var_B8
  loc_B336C4: LitI4 &HB
  loc_B336C9: CI2I4
  loc_B336CA: FLdPr Me
  loc_B336CD: Me.MousePointer = from_stack_1
  loc_B336D2: LitI2_Byte 0
  loc_B336D4: PopTmpLdAd2 var_92
  loc_B336D7: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B336DC: FLdPr Me
  loc_B336DF: MemLdStr global_104
  loc_B336E2: LitStr vbNullString
  loc_B336E5: NeStr
  loc_B336E7: BranchF loc_B336ED
  loc_B336EA: Branch loc_B33F8F
  loc_B336ED: LitI2_Byte 0
  loc_B336EF: PopTmpLdAd2 var_92
  loc_B336F2: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B336F7: FLdPr Me
  loc_B336FA: MemLdStr global_104
  loc_B336FD: LitStr vbNullString
  loc_B33700: NeStr
  loc_B33702: BranchF loc_B33708
  loc_B33705: Branch loc_B33F8F
  loc_B33708: LitI2_Byte 0
  loc_B3370A: PopTmpLdAd2 var_92
  loc_B3370D: Call CucuPersTxt_Validate(from_stack_1v)
  loc_B33712: FLdPr Me
  loc_B33715: MemLdStr global_104
  loc_B33718: LitStr vbNullString
  loc_B3371B: NeStr
  loc_B3371D: BranchF loc_B33723
  loc_B33720: Branch loc_B33F8F
  loc_B33723: FLdPr Me
  loc_B33726: VCallAd Control_ID_mskDesde
  loc_B33729: FStAdFunc var_B8
  loc_B3372C: FLdPr var_B8
  loc_B3372F: LateIdLdVar var_C8 DispID_15 0
  loc_B33736: PopAd
  loc_B33738: FLdPr Me
  loc_B3373B: VCallAd Control_ID_mskHasta
  loc_B3373E: FStAdFunc var_F4
  loc_B33741: FLdPr var_F4
  loc_B33744: LateIdLdVar var_104 DispID_15 0
  loc_B3374B: PopAd
  loc_B3374D: LitStr " AND FechImpu BETWEEN '"
  loc_B33750: LitI4 1
  loc_B33755: LitI4 1
  loc_B3375A: LitVarStr var_A4, "yyyy-mm-dd"
  loc_B3375F: FStVarCopyObj var_E8
  loc_B33762: FLdRfVar var_E8
  loc_B33765: FLdRfVar var_C8
  loc_B33768: CStrVarTmp
  loc_B33769: CVarStr var_D8
  loc_B3376C: ImpAdCallI2 Format$(, )
  loc_B33771: FStStrNoPop var_EC
  loc_B33774: ConcatStr
  loc_B33775: FStStrNoPop var_F0
  loc_B33778: LitStr "' AND '"
  loc_B3377B: ConcatStr
  loc_B3377C: FStStrNoPop var_128
  loc_B3377F: LitI4 1
  loc_B33784: LitI4 1
  loc_B33789: LitVarStr var_B4, "yyyy-mm-dd"
  loc_B3378E: FStVarCopyObj var_124
  loc_B33791: FLdRfVar var_124
  loc_B33794: FLdRfVar var_104
  loc_B33797: CStrVarTmp
  loc_B33798: CVarStr var_114
  loc_B3379B: ImpAdCallI2 Format$(, )
  loc_B337A0: FStStrNoPop var_12C
  loc_B337A3: ConcatStr
  loc_B337A4: FStStrNoPop var_130
  loc_B337A7: LitStr "'"
  loc_B337AA: ConcatStr
  loc_B337AB: FStStr var_88
  loc_B337AE: FFreeStr var_EC = "": var_F0 = "": var_128 = "": var_12C = ""
  loc_B337BB: FFreeAd var_B8 = ""
  loc_B337C2: FFreeVar var_C8 = "": var_D8 = "": var_E8 = "": var_104 = "": var_114 = ""
  loc_B337D1: FLdRfVar var_EC
  loc_B337D4: FLdPr Me
  loc_B337D7: VCallAd Control_ID_CucuPersTxt
  loc_B337DA: FStAdFunc var_B8
  loc_B337DD: FLdPr var_B8
  loc_B337E0:  = Me.Text
  loc_B337E5: FLdRfVar var_F0
  loc_B337E8: FLdPr Me
  loc_B337EB: VCallAd Control_ID_CucuPersTxt
  loc_B337EE: FStAdFunc var_F4
  loc_B337F1: FLdPr var_F4
  loc_B337F4:  = Me.Text
  loc_B337F9: LitVarStr var_B4, vbNullString
  loc_B337FE: FStVarCopyObj var_D8
  loc_B33801: FLdRfVar var_D8
  loc_B33804: LitStr " AND i.CucuPers = "
  loc_B33807: ILdRf var_F0
  loc_B3380A: ConcatStr
  loc_B3380B: CVarStr var_C8
  loc_B3380E: ILdRf var_EC
  loc_B33811: LitStr vbNullString
  loc_B33814: NeStr
  loc_B33816: CVarBoolI2 var_A4
  loc_B3381A: FLdRfVar var_E8
  loc_B3381D: ImpAdCallFPR4  = IIf(, , )
  loc_B33822: FLdRfVar var_E8
  loc_B33825: CStrVarTmp
  loc_B33826: FStStr var_8C
  loc_B33829: FFreeStr var_EC = ""
  loc_B33830: FFreeAd var_B8 = ""
  loc_B33837: FFreeVar var_A4 = "": var_C8 = "": var_D8 = ""
  loc_B33842: FLdPr Me
  loc_B33845: MemLdRfVar from_stack_1.global_84
  loc_B33848: NewIfNullAd
  loc_B3384B: FStAd var_134 
  loc_B3384F: LitStr "DROP TEMPORARY TABLE if EXISTS tmovi;"
  loc_B33852: LitStr "CREATE TEMPORARY TABLE tmovi "
  loc_B33855: ConcatStr
  loc_B33856: FStStrNoPop var_EC
  loc_B33859: LitStr "SELECT CucuPers, COUNT(0) rowspan "
  loc_B3385C: ConcatStr
  loc_B3385D: FStStrNoPop var_F0
  loc_B33860: LitStr "FROM ( "
  loc_B33863: ConcatStr
  loc_B33864: FStStrNoPop var_128
  loc_B33867: LitStr "SELECT i.CucuPers, SUM(i.PagaImpu) PagaImpu "
  loc_B3386A: ConcatStr
  loc_B3386B: FStStrNoPop var_12C
  loc_B3386E: LitStr "FROM imputacion i "
  loc_B33871: ConcatStr
  loc_B33872: FStStrNoPop var_130
  loc_B33875: LitStr "WHERE i.PeriInfo = "
  loc_B33878: ConcatStr
  loc_B33879: FStStrNoPop var_13C
  loc_B3387C: FLdRfVar var_138
  loc_B3387F: FLdPr Me
  loc_B33882: VCallAd Control_ID_cboPeriodo
  loc_B33885: FStAdFunc var_B8
  loc_B33888: FLdPr var_B8
  loc_B3388B:  = Me.Text
  loc_B33890: ILdRf var_138
  loc_B33893: ConcatStr
  loc_B33894: FStStrNoPop var_140
  loc_B33897: ILdRf var_8C
  loc_B3389A: ConcatStr
  loc_B3389B: FStStrNoPop var_144
  loc_B3389E: ILdRf var_88
  loc_B338A1: ConcatStr
  loc_B338A2: FStStrNoPop var_148
  loc_B338A5: LitStr "GROUP BY i.CucuPers, i.NumeOrpa "
  loc_B338A8: ConcatStr
  loc_B338A9: FStStrNoPop var_14C
  loc_B338AC: LitStr "HAVING PagaImpu != 0 "
  loc_B338AF: ConcatStr
  loc_B338B0: FStStrNoPop var_150
  loc_B338B3: LitStr ") AS tbl "
  loc_B338B6: ConcatStr
  loc_B338B7: FStStrNoPop var_154
  loc_B338BA: LitStr "GROUP BY CucuPers;"
  loc_B338BD: ConcatStr
  loc_B338BE: FStStrNoPop var_158
  loc_B338C1: FLdPr var_134
  loc_B338C4: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_B338C9: FFreeStr var_EC = "": var_F0 = "": var_128 = "": var_12C = "": var_130 = "": var_13C = "": var_138 = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_B338E8: FFree1Ad var_B8
  loc_B338EB: LitStr "SELECT i.CucuPers CucuPers, DetaProv, FantProv, FactProv "
  loc_B338EE: LitStr ", (SELECT rowspan FROM tmovi WHERE tmovi.CucuPers = i.CucuPers) rowspan "
  loc_B338F1: ConcatStr
  loc_B338F2: FStStrNoPop var_EC
  loc_B338F5: LitStr "FROM imputacion i "
  loc_B338F8: ConcatStr
  loc_B338F9: FStStrNoPop var_F0
  loc_B338FC: LitStr "INNER JOIN proveedor p  ON p.CucuPers = i.CucuPers "
  loc_B338FF: ConcatStr
  loc_B33900: FStStrNoPop var_128
  loc_B33903: LitStr "WHERE PeriInfo = "
  loc_B33906: ConcatStr
  loc_B33907: FStStrNoPop var_130
  loc_B3390A: FLdRfVar var_12C
  loc_B3390D: FLdPr Me
  loc_B33910: VCallAd Control_ID_cboPeriodo
  loc_B33913: FStAdFunc var_B8
  loc_B33916: FLdPr var_B8
  loc_B33919:  = Me.Text
  loc_B3391E: ILdRf var_12C
  loc_B33921: ConcatStr
  loc_B33922: FStStrNoPop var_138
  loc_B33925: LitStr " AND PagaImpu != 0 "
  loc_B33928: ConcatStr
  loc_B33929: FStStrNoPop var_13C
  loc_B3392C: ILdRf var_8C
  loc_B3392F: ConcatStr
  loc_B33930: FStStrNoPop var_140
  loc_B33933: ILdRf var_88
  loc_B33936: ConcatStr
  loc_B33937: FStStrNoPop var_144
  loc_B3393A: LitStr "GROUP  BY i.CucuPers "
  loc_B3393D: ConcatStr
  loc_B3393E: FStStrNoPop var_148
  loc_B33941: LitStr "ORDER  BY DetaProv;"
  loc_B33944: ConcatStr
  loc_B33945: FStStrNoPop var_14C
  loc_B33948: FLdPr var_134
  loc_B3394B: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_B33950: FFreeStr var_EC = "": var_F0 = "": var_128 = "": var_130 = "": var_12C = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_B33969: FFree1Ad var_B8
  loc_B3396C: FLdRfVar var_15C
  loc_B3396F: FLdPr var_134
  loc_B33972: from_stack_1 = clsimputacion.RecordCount
  loc_B33977: ILdRf var_15C
  loc_B3397A: LitI4 0
  loc_B3397F: EqI4
  loc_B33980: BranchF loc_B33993
  loc_B33983: LitI4 0
  loc_B33988: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B3398B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B33990: Branch loc_B33F8F
  loc_B33993: LitI4 0
  loc_B33998: FLdRfVar var_15C
  loc_B3399B: FLdPr var_134
  loc_B3399E: from_stack_1 = clsimputacion.RecordCount
  loc_B339A3: ILdRf var_15C
  loc_B339A6: FLdPr Me
  loc_B339A9: MemLdRfVar from_stack_1.global_92
  loc_B339AC: Redim
  loc_B339B6: LitI2_Byte 1
  loc_B339B8: FLdPr Me
  loc_B339BB: MemLdRfVar from_stack_1.global_100
  loc_B339BE: FLdPr Me
  loc_B339C1: MemLdStr global_92
  loc_B339C4: LitI2_Byte 1
  loc_B339C6: FnUBound
  loc_B339C8: CI2I4
  loc_B339C9: ForI2 var_160
  loc_B339CF: FLdRfVar var_164
  loc_B339D2: LitVarStr var_A4, "CucuPers"
  loc_B339D7: PopAdLdVar
  loc_B339D8: FLdRfVar var_F4
  loc_B339DB: FLdRfVar var_B8
  loc_B339DE: FLdPr var_134
  loc_B339E1: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B339E6: FLdPr var_B8
  loc_B339E9:  = Me.Fields
  loc_B339EE: FLdPr var_F4
  loc_B339F1: from_stack_2 = Me.Item(from_stack_1)
  loc_B339F6: LitI2_Byte 0
  loc_B339F8: LitVar_Missing var_D8
  loc_B339FB: LitI2_Byte 0
  loc_B339FD: FLdZeroAd var_164
  loc_B33A00: CVarAd
  loc_B33A04: PopAdLdVar
  loc_B33A05: FLdPr Me
  loc_B33A08: MemLdI2 global_100
  loc_B33A0B: CI4UI1
  loc_B33A0C: FLdPr Me
  loc_B33A0F: MemLdStr global_92
  loc_B33A12: AryLock
  loc_B33A15: Ary1LdPr
  loc_B33A16: MemLdRfVar from_stack_1.global_0
  loc_B33A19: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B33A1E: AryUnlock
  loc_B33A21: FFreeAd var_B8 = ""
  loc_B33A28: FFreeVar var_C8 = ""
  loc_B33A2F: FLdRfVar var_164
  loc_B33A32: LitVarStr var_A4, "DetaProv"
  loc_B33A37: PopAdLdVar
  loc_B33A38: FLdRfVar var_F4
  loc_B33A3B: FLdRfVar var_B8
  loc_B33A3E: FLdPr var_134
  loc_B33A41: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B33A46: FLdPr var_B8
  loc_B33A49:  = Me.Fields
  loc_B33A4E: FLdPr var_F4
  loc_B33A51: from_stack_2 = Me.Item(from_stack_1)
  loc_B33A56: LitI2_Byte 0
  loc_B33A58: LitVar_Missing var_D8
  loc_B33A5B: LitI2_Byte 0
  loc_B33A5D: FLdZeroAd var_164
  loc_B33A60: CVarAd
  loc_B33A64: PopAdLdVar
  loc_B33A65: FLdPr Me
  loc_B33A68: MemLdI2 global_100
  loc_B33A6B: CI4UI1
  loc_B33A6C: FLdPr Me
  loc_B33A6F: MemLdStr global_92
  loc_B33A72: AryLock
  loc_B33A75: Ary1LdPr
  loc_B33A76: MemLdRfVar from_stack_1.global_4
  loc_B33A79: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B33A7E: AryUnlock
  loc_B33A81: FFreeAd var_B8 = ""
  loc_B33A88: FFreeVar var_C8 = ""
  loc_B33A8F: FLdRfVar var_164
  loc_B33A92: LitVarStr var_A4, "FantProv"
  loc_B33A97: PopAdLdVar
  loc_B33A98: FLdRfVar var_F4
  loc_B33A9B: FLdRfVar var_B8
  loc_B33A9E: FLdPr var_134
  loc_B33AA1: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B33AA6: FLdPr var_B8
  loc_B33AA9:  = Me.Fields
  loc_B33AAE: FLdPr var_F4
  loc_B33AB1: from_stack_2 = Me.Item(from_stack_1)
  loc_B33AB6: LitI2_Byte 0
  loc_B33AB8: LitVar_Missing var_D8
  loc_B33ABB: LitI2_Byte 0
  loc_B33ABD: FLdZeroAd var_164
  loc_B33AC0: CVarAd
  loc_B33AC4: PopAdLdVar
  loc_B33AC5: FLdPr Me
  loc_B33AC8: MemLdI2 global_100
  loc_B33ACB: CI4UI1
  loc_B33ACC: FLdPr Me
  loc_B33ACF: MemLdStr global_92
  loc_B33AD2: AryLock
  loc_B33AD5: Ary1LdPr
  loc_B33AD6: MemLdRfVar from_stack_1.global_8
  loc_B33AD9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B33ADE: AryUnlock
  loc_B33AE1: FFreeAd var_B8 = ""
  loc_B33AE8: FFreeVar var_C8 = ""
  loc_B33AEF: FLdRfVar var_164
  loc_B33AF2: LitVarStr var_A4, "FactProv"
  loc_B33AF7: PopAdLdVar
  loc_B33AF8: FLdRfVar var_F4
  loc_B33AFB: FLdRfVar var_B8
  loc_B33AFE: FLdPr var_134
  loc_B33B01: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B33B06: FLdPr var_B8
  loc_B33B09:  = Me.Fields
  loc_B33B0E: FLdPr var_F4
  loc_B33B11: from_stack_2 = Me.Item(from_stack_1)
  loc_B33B16: LitI2_Byte 0
  loc_B33B18: LitVar_Missing var_D8
  loc_B33B1B: LitI2_Byte 0
  loc_B33B1D: FLdZeroAd var_164
  loc_B33B20: CVarAd
  loc_B33B24: PopAdLdVar
  loc_B33B25: FLdPr Me
  loc_B33B28: MemLdI2 global_100
  loc_B33B2B: CI4UI1
  loc_B33B2C: FLdPr Me
  loc_B33B2F: MemLdStr global_92
  loc_B33B32: AryLock
  loc_B33B35: Ary1LdPr
  loc_B33B36: MemLdRfVar from_stack_1.global_12
  loc_B33B39: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B33B3E: AryUnlock
  loc_B33B41: FFreeAd var_B8 = ""
  loc_B33B48: FFreeVar var_C8 = ""
  loc_B33B4F: FLdRfVar var_164
  loc_B33B52: LitVarStr var_A4, "RowSpan"
  loc_B33B57: PopAdLdVar
  loc_B33B58: FLdRfVar var_F4
  loc_B33B5B: FLdRfVar var_B8
  loc_B33B5E: FLdPr var_134
  loc_B33B61: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B33B66: FLdPr var_B8
  loc_B33B69:  = Me.Fields
  loc_B33B6E: FLdPr var_F4
  loc_B33B71: from_stack_2 = Me.Item(from_stack_1)
  loc_B33B76: LitI2_Byte 0
  loc_B33B78: LitVar_Missing var_D8
  loc_B33B7B: LitI2_Byte 0
  loc_B33B7D: FLdZeroAd var_164
  loc_B33B80: CVarAd
  loc_B33B84: PopAdLdVar
  loc_B33B85: FLdPr Me
  loc_B33B88: MemLdI2 global_100
  loc_B33B8B: CI4UI1
  loc_B33B8C: FLdPr Me
  loc_B33B8F: MemLdStr global_92
  loc_B33B92: AryLock
  loc_B33B95: Ary1LdPr
  loc_B33B96: MemLdRfVar from_stack_1.global_20
  loc_B33B99: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B33B9E: AryUnlock
  loc_B33BA1: FFreeAd var_B8 = ""
  loc_B33BA8: FFreeVar var_C8 = ""
  loc_B33BAF: FLdRfVar var_90
  loc_B33BB2: NewIfNullAd
  loc_B33BB5: FStAd var_16C 
  loc_B33BB9: LitStr "SELECT i.NumeOrpa, i.ExpeImpu, LEFT( GROUP_CONCAT(DISTINCT i.NumeFact), 51) NumeFact, SUM(PagaImpu) PagaImpu, MAX(i.FechImpu) FechImpu"
  loc_B33BBC: LitStr " FROM imputacion i"
  loc_B33BBF: ConcatStr
  loc_B33BC0: FStStrNoPop var_EC
  loc_B33BC3: LitStr " WHERE i.PeriInfo = "
  loc_B33BC6: ConcatStr
  loc_B33BC7: FStStrNoPop var_128
  loc_B33BCA: FLdRfVar var_F0
  loc_B33BCD: FLdPr Me
  loc_B33BD0: VCallAd Control_ID_cboPeriodo
  loc_B33BD3: FStAdFunc var_B8
  loc_B33BD6: FLdPr var_B8
  loc_B33BD9:  = Me.Text
  loc_B33BDE: ILdRf var_F0
  loc_B33BE1: ConcatStr
  loc_B33BE2: FStStrNoPop var_12C
  loc_B33BE5: LitStr " AND i.CucuPers = "
  loc_B33BE8: ConcatStr
  loc_B33BE9: FStStrNoPop var_130
  loc_B33BEC: FLdPr Me
  loc_B33BEF: MemLdI2 global_100
  loc_B33BF2: CI4UI1
  loc_B33BF3: FLdPr Me
  loc_B33BF6: MemLdStr global_92
  loc_B33BF9: Ary1LdPr
  loc_B33BFA: MemLdStr global_0
  loc_B33BFD: ConcatStr
  loc_B33BFE: FStStrNoPop var_138
  loc_B33C01: ILdRf var_88
  loc_B33C04: ConcatStr
  loc_B33C05: FStStrNoPop var_13C
  loc_B33C08: LitStr " GROUP  BY i.CucuPers, i.NumeOrpa HAVING PagaImpu != 0 ORDER BY i.CucuPers;"
  loc_B33C0B: ConcatStr
  loc_B33C0C: FStStrNoPop var_140
  loc_B33C0F: FLdPr var_16C
  loc_B33C12: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_B33C17: FFreeStr var_EC = "": var_128 = "": var_F0 = "": var_12C = "": var_130 = "": var_138 = "": var_13C = ""
  loc_B33C2A: FFree1Ad var_B8
  loc_B33C2D: FLdRfVar var_15C
  loc_B33C30: FLdPr var_16C
  loc_B33C33: from_stack_1 = clsimputacion.RecordCount
  loc_B33C38: ILdRf var_15C
  loc_B33C3B: LitI4 0
  loc_B33C40: EqI4
  loc_B33C41: BranchF loc_B33C54
  loc_B33C44: LitI4 0
  loc_B33C49: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B33C4C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B33C51: Branch loc_B33F8F
  loc_B33C54: FLdRfVar var_15C
  loc_B33C57: FLdPr var_16C
  loc_B33C5A: from_stack_1 = clsimputacion.RecordCount
  loc_B33C5F: LitI4 0
  loc_B33C64: ILdRf var_15C
  loc_B33C67: FLdPr Me
  loc_B33C6A: MemLdI2 global_100
  loc_B33C6D: CI4UI1
  loc_B33C6E: FLdPr Me
  loc_B33C71: MemLdStr global_92
  loc_B33C74: Ary1LdPr
  loc_B33C75: MemLdRfVar from_stack_1.global_16
  loc_B33C78: Redim
  loc_B33C82: LitI2_Byte 1
  loc_B33C84: FLdPr Me
  loc_B33C87: MemLdRfVar from_stack_1.global_102
  loc_B33C8A: FLdPr Me
  loc_B33C8D: MemLdI2 global_100
  loc_B33C90: CI4UI1
  loc_B33C91: FLdPr Me
  loc_B33C94: MemLdStr global_92
  loc_B33C97: Ary1LdPr
  loc_B33C98: MemLdStr global_16
  loc_B33C9B: LitI2_Byte 1
  loc_B33C9D: FnUBound
  loc_B33C9F: CI2I4
  loc_B33CA0: ForI2 var_170
  loc_B33CA6: FLdRfVar var_164
  loc_B33CA9: LitVarStr var_A4, "NumeOrpa"
  loc_B33CAE: PopAdLdVar
  loc_B33CAF: FLdRfVar var_F4
  loc_B33CB2: FLdRfVar var_B8
  loc_B33CB5: FLdPr var_16C
  loc_B33CB8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B33CBD: FLdPr var_B8
  loc_B33CC0:  = Me.Fields
  loc_B33CC5: FLdPr var_F4
  loc_B33CC8: from_stack_2 = Me.Item(from_stack_1)
  loc_B33CCD: LitI2_Byte 0
  loc_B33CCF: LitVar_Missing var_D8
  loc_B33CD2: LitI2_Byte 0
  loc_B33CD4: FLdZeroAd var_164
  loc_B33CD7: CVarAd
  loc_B33CDB: PopAdLdVar
  loc_B33CDC: FLdPr Me
  loc_B33CDF: MemLdI2 global_102
  loc_B33CE2: CI4UI1
  loc_B33CE3: FLdPr Me
  loc_B33CE6: MemLdI2 global_100
  loc_B33CE9: CI4UI1
  loc_B33CEA: FLdPr Me
  loc_B33CED: MemLdStr global_92
  loc_B33CF0: AryLock
  loc_B33CF3: Ary1LdPr
  loc_B33CF4: MemLdStr global_16
  loc_B33CF7: AryLock
  loc_B33CFA: Ary1LdPr
  loc_B33CFB: MemLdRfVar from_stack_1.global_0
  loc_B33CFE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B33D03: AryUnlock
  loc_B33D06: AryUnlock
  loc_B33D09: FFreeAd var_B8 = ""
  loc_B33D10: FFreeVar var_C8 = ""
  loc_B33D17: FLdRfVar var_164
  loc_B33D1A: LitVarStr var_A4, "ExpeImpu"
  loc_B33D1F: PopAdLdVar
  loc_B33D20: FLdRfVar var_F4
  loc_B33D23: FLdRfVar var_B8
  loc_B33D26: FLdPr var_16C
  loc_B33D29: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B33D2E: FLdPr var_B8
  loc_B33D31:  = Me.Fields
  loc_B33D36: FLdPr var_F4
  loc_B33D39: from_stack_2 = Me.Item(from_stack_1)
  loc_B33D3E: LitI2_Byte 0
  loc_B33D40: LitVar_Missing var_D8
  loc_B33D43: LitI2_Byte 0
  loc_B33D45: FLdZeroAd var_164
  loc_B33D48: CVarAd
  loc_B33D4C: PopAdLdVar
  loc_B33D4D: FLdPr Me
  loc_B33D50: MemLdI2 global_102
  loc_B33D53: CI4UI1
  loc_B33D54: FLdPr Me
  loc_B33D57: MemLdI2 global_100
  loc_B33D5A: CI4UI1
  loc_B33D5B: FLdPr Me
  loc_B33D5E: MemLdStr global_92
  loc_B33D61: AryLock
  loc_B33D64: Ary1LdPr
  loc_B33D65: MemLdStr global_16
  loc_B33D68: AryLock
  loc_B33D6B: Ary1LdPr
  loc_B33D6C: MemLdRfVar from_stack_1.global_4
  loc_B33D6F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B33D74: AryUnlock
  loc_B33D77: AryUnlock
  loc_B33D7A: FFreeAd var_B8 = ""
  loc_B33D81: FFreeVar var_C8 = ""
  loc_B33D88: FLdRfVar var_164
  loc_B33D8B: LitVarStr var_A4, "NumeFact"
  loc_B33D90: PopAdLdVar
  loc_B33D91: FLdRfVar var_F4
  loc_B33D94: FLdRfVar var_B8
  loc_B33D97: FLdPr var_16C
  loc_B33D9A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B33D9F: FLdPr var_B8
  loc_B33DA2:  = Me.Fields
  loc_B33DA7: FLdPr var_F4
  loc_B33DAA: from_stack_2 = Me.Item(from_stack_1)
  loc_B33DAF: LitI2_Byte 0
  loc_B33DB1: LitVar_Missing var_D8
  loc_B33DB4: LitI2_Byte 0
  loc_B33DB6: FLdZeroAd var_164
  loc_B33DB9: CVarAd
  loc_B33DBD: PopAdLdVar
  loc_B33DBE: FLdPr Me
  loc_B33DC1: MemLdI2 global_102
  loc_B33DC4: CI4UI1
  loc_B33DC5: FLdPr Me
  loc_B33DC8: MemLdI2 global_100
  loc_B33DCB: CI4UI1
  loc_B33DCC: FLdPr Me
  loc_B33DCF: MemLdStr global_92
  loc_B33DD2: AryLock
  loc_B33DD5: Ary1LdPr
  loc_B33DD6: MemLdStr global_16
  loc_B33DD9: AryLock
  loc_B33DDC: Ary1LdPr
  loc_B33DDD: MemLdRfVar from_stack_1.global_8
  loc_B33DE0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B33DE5: AryUnlock
  loc_B33DE8: AryUnlock
  loc_B33DEB: FFreeAd var_B8 = ""
  loc_B33DF2: FFreeVar var_C8 = ""
  loc_B33DF9: LitI2_Byte 0
  loc_B33DFB: LitVar_Missing var_C8
  loc_B33DFE: LitI2_Byte &HFF
  loc_B33E00: LitVarStr var_A4, "0"
  loc_B33E05: PopAdLdVar
  loc_B33E06: FLdPr Me
  loc_B33E09: MemLdI2 global_102
  loc_B33E0C: CI4UI1
  loc_B33E0D: FLdPr Me
  loc_B33E10: MemLdI2 global_100
  loc_B33E13: CI4UI1
  loc_B33E14: FLdPr Me
  loc_B33E17: MemLdStr global_92
  loc_B33E1A: AryLock
  loc_B33E1D: Ary1LdPr
  loc_B33E1E: MemLdStr global_16
  loc_B33E21: AryLock
  loc_B33E24: Ary1LdPr
  loc_B33E25: MemLdRfVar from_stack_1.global_16
  loc_B33E28: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B33E2D: AryUnlock
  loc_B33E30: AryUnlock
  loc_B33E33: FFree1Var var_C8 = ""
  loc_B33E36: LitI2_Byte 0
  loc_B33E38: LitVar_Missing var_C8
  loc_B33E3B: LitI2_Byte &HFF
  loc_B33E3D: LitVarStr var_A4, "0"
  loc_B33E42: PopAdLdVar
  loc_B33E43: FLdPr Me
  loc_B33E46: MemLdI2 global_102
  loc_B33E49: CI4UI1
  loc_B33E4A: FLdPr Me
  loc_B33E4D: MemLdI2 global_100
  loc_B33E50: CI4UI1
  loc_B33E51: FLdPr Me
  loc_B33E54: MemLdStr global_92
  loc_B33E57: AryLock
  loc_B33E5A: Ary1LdPr
  loc_B33E5B: MemLdStr global_16
  loc_B33E5E: AryLock
  loc_B33E61: Ary1LdPr
  loc_B33E62: MemLdRfVar from_stack_1.global_20
  loc_B33E65: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B33E6A: AryUnlock
  loc_B33E6D: AryUnlock
  loc_B33E70: FFree1Var var_C8 = ""
  loc_B33E73: FLdRfVar var_164
  loc_B33E76: LitVarStr var_A4, "PagaImpu"
  loc_B33E7B: PopAdLdVar
  loc_B33E7C: FLdRfVar var_F4
  loc_B33E7F: FLdRfVar var_B8
  loc_B33E82: FLdPr var_16C
  loc_B33E85: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B33E8A: FLdPr var_B8
  loc_B33E8D:  = Me.Fields
  loc_B33E92: FLdPr var_F4
  loc_B33E95: from_stack_2 = Me.Item(from_stack_1)
  loc_B33E9A: LitI2_Byte 0
  loc_B33E9C: LitVar_Missing var_D8
  loc_B33E9F: LitI2_Byte &HFF
  loc_B33EA1: FLdZeroAd var_164
  loc_B33EA4: CVarAd
  loc_B33EA8: PopAdLdVar
  loc_B33EA9: FLdPr Me
  loc_B33EAC: MemLdI2 global_102
  loc_B33EAF: CI4UI1
  loc_B33EB0: FLdPr Me
  loc_B33EB3: MemLdI2 global_100
  loc_B33EB6: CI4UI1
  loc_B33EB7: FLdPr Me
  loc_B33EBA: MemLdStr global_92
  loc_B33EBD: AryLock
  loc_B33EC0: Ary1LdPr
  loc_B33EC1: MemLdStr global_16
  loc_B33EC4: AryLock
  loc_B33EC7: Ary1LdPr
  loc_B33EC8: MemLdRfVar from_stack_1.global_12
  loc_B33ECB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B33ED0: AryUnlock
  loc_B33ED3: AryUnlock
  loc_B33ED6: FFreeAd var_B8 = ""
  loc_B33EDD: FFreeVar var_C8 = ""
  loc_B33EE4: FLdRfVar var_164
  loc_B33EE7: LitVarStr var_A4, "FechImpu"
  loc_B33EEC: PopAdLdVar
  loc_B33EED: FLdRfVar var_F4
  loc_B33EF0: FLdRfVar var_B8
  loc_B33EF3: FLdPr var_16C
  loc_B33EF6: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B33EFB: FLdPr var_B8
  loc_B33EFE:  = Me.Fields
  loc_B33F03: FLdPr var_F4
  loc_B33F06: from_stack_2 = Me.Item(from_stack_1)
  loc_B33F0B: LitI2_Byte 0
  loc_B33F0D: LitVar_Missing var_D8
  loc_B33F10: LitI2_Byte 0
  loc_B33F12: FLdZeroAd var_164
  loc_B33F15: CVarAd
  loc_B33F19: PopAdLdVar
  loc_B33F1A: FLdPr Me
  loc_B33F1D: MemLdI2 global_102
  loc_B33F20: CI4UI1
  loc_B33F21: FLdPr Me
  loc_B33F24: MemLdI2 global_100
  loc_B33F27: CI4UI1
  loc_B33F28: FLdPr Me
  loc_B33F2B: MemLdStr global_92
  loc_B33F2E: AryLock
  loc_B33F31: Ary1LdPr
  loc_B33F32: MemLdStr global_16
  loc_B33F35: AryLock
  loc_B33F38: Ary1LdPr
  loc_B33F39: MemLdRfVar from_stack_1.global_24
  loc_B33F3C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B33F41: AryUnlock
  loc_B33F44: AryUnlock
  loc_B33F47: FFreeAd var_B8 = ""
  loc_B33F4E: FFreeVar var_C8 = ""
  loc_B33F55: FLdPr var_16C
  loc_B33F58: Call clsimputacion.MoveSiguiente()
  loc_B33F5D: FLdPr Me
  loc_B33F60: MemLdRfVar from_stack_1.global_102
  loc_B33F63: NextI2 var_170, loc_B33CA6
  loc_B33F68: LitNothing
  loc_B33F6A: FStAd var_16C 
  loc_B33F6E: FLdPr var_134
  loc_B33F71: Call clsimputacion.MoveSiguiente()
  loc_B33F76: FLdPr Me
  loc_B33F79: MemLdRfVar from_stack_1.global_100
  loc_B33F7C: NextI2 var_160, loc_B339CF
  loc_B33F81: LitNothing
  loc_B33F83: FStAd var_134 
  loc_B33F87: LitI2_Byte &HFF
  loc_B33F89: FLdPr Me
  loc_B33F8C: MemStI2 bGenerado
  loc_B33F8F: LitI4 0
  loc_B33F94: CI2I4
  loc_B33F95: FLdPr Me
  loc_B33F98: Me.MousePointer = from_stack_1
  loc_B33F9D: LitVarStr var_A4, vbNullString
  loc_B33FA2: PopAdLdVar
  loc_B33FA3: FLdPr Me
  loc_B33FA6: VCallAd Control_ID_statusBar
  loc_B33FA9: FStAdFunc var_B8
  loc_B33FAC: FLdPr var_B8
  loc_B33FAF: LateIdSt
  loc_B33FB4: FFree1Ad var_B8
  loc_B33FB7: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A6F56C
  'Data Table: 48BC3C
  loc_A6F1C4: FLdRfVar var_88
  loc_A6F1C7: LitI2_Byte 0
  loc_A6F1C9: LitI2_Byte &HFF
  loc_A6F1CB: ImpAdLdI4 MemVar_C3D83C
  loc_A6F1CE: FLdPr Me
  loc_A6F1D1: MemLdRfVar from_stack_1.global_88
  loc_A6F1D4: NewIfNullPr IFileSystem3
  loc_A6F1D7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A6F1DC: ILdRf var_88
  loc_A6F1DF: FLdPr Me
  loc_A6F1E2: MemStVarAd
  loc_A6F1E6: FFree1Ad var_88
  loc_A6F1E9: Call Proc_173_31_A8634C()
  loc_A6F1EE: LitI2_Byte 1
  loc_A6F1F0: FLdPr Me
  loc_A6F1F3: MemLdRfVar from_stack_1.global_100
  loc_A6F1F6: FLdPr Me
  loc_A6F1F9: MemLdStr global_92
  loc_A6F1FC: LitI2_Byte 1
  loc_A6F1FE: FnUBound
  loc_A6F200: CI2I4
  loc_A6F201: ForI2 var_8C
  loc_A6F207: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A6F20C: PopAdLdVar
  loc_A6F20D: FLdPr Me
  loc_A6F210: MemLdRfVar from_stack_1.htmFile
  loc_A6F213: LdPrVar
  loc_A6F215: LateMemCall
  loc_A6F21B: LitStr "    <th rowspan="
  loc_A6F21E: FLdPr Me
  loc_A6F221: MemLdI2 global_100
  loc_A6F224: CI4UI1
  loc_A6F225: FLdPr Me
  loc_A6F228: MemLdStr global_92
  loc_A6F22B: Ary1LdPr
  loc_A6F22C: MemLdStr global_20
  loc_A6F22F: ConcatStr
  loc_A6F230: FStStrNoPop var_B0
  loc_A6F233: LitStr " align=""left"">"
  loc_A6F236: ConcatStr
  loc_A6F237: FStStrNoPop var_B4
  loc_A6F23A: FLdPr Me
  loc_A6F23D: MemLdI2 global_100
  loc_A6F240: CI4UI1
  loc_A6F241: FLdPr Me
  loc_A6F244: MemLdStr global_92
  loc_A6F247: Ary1LdPr
  loc_A6F248: MemLdStr global_4
  loc_A6F24B: ConcatStr
  loc_A6F24C: FStStrNoPop var_B8
  loc_A6F24F: LitStr "</th>"
  loc_A6F252: ConcatStr
  loc_A6F253: CVarStr var_C8
  loc_A6F256: PopAdLdVar
  loc_A6F257: FLdPr Me
  loc_A6F25A: MemLdRfVar from_stack_1.htmFile
  loc_A6F25D: LdPrVar
  loc_A6F25F: LateMemCall
  loc_A6F265: FFreeStr var_B0 = "": var_B4 = ""
  loc_A6F26E: FFree1Var var_C8 = ""
  loc_A6F271: LitStr "    <th rowspan="
  loc_A6F274: FLdPr Me
  loc_A6F277: MemLdI2 global_100
  loc_A6F27A: CI4UI1
  loc_A6F27B: FLdPr Me
  loc_A6F27E: MemLdStr global_92
  loc_A6F281: Ary1LdPr
  loc_A6F282: MemLdStr global_20
  loc_A6F285: ConcatStr
  loc_A6F286: FStStrNoPop var_B0
  loc_A6F289: LitStr " align=""left"">"
  loc_A6F28C: ConcatStr
  loc_A6F28D: FStStrNoPop var_B4
  loc_A6F290: FLdPr Me
  loc_A6F293: MemLdI2 global_100
  loc_A6F296: CI4UI1
  loc_A6F297: FLdPr Me
  loc_A6F29A: MemLdStr global_92
  loc_A6F29D: Ary1LdPr
  loc_A6F29E: MemLdStr global_8
  loc_A6F2A1: ConcatStr
  loc_A6F2A2: FStStrNoPop var_B8
  loc_A6F2A5: LitStr "</th>"
  loc_A6F2A8: ConcatStr
  loc_A6F2A9: CVarStr var_C8
  loc_A6F2AC: PopAdLdVar
  loc_A6F2AD: FLdPr Me
  loc_A6F2B0: MemLdRfVar from_stack_1.htmFile
  loc_A6F2B3: LdPrVar
  loc_A6F2B5: LateMemCall
  loc_A6F2BB: FFreeStr var_B0 = "": var_B4 = ""
  loc_A6F2C4: FFree1Var var_C8 = ""
  loc_A6F2C7: LitStr "    <th rowspan="
  loc_A6F2CA: FLdPr Me
  loc_A6F2CD: MemLdI2 global_100
  loc_A6F2D0: CI4UI1
  loc_A6F2D1: FLdPr Me
  loc_A6F2D4: MemLdStr global_92
  loc_A6F2D7: Ary1LdPr
  loc_A6F2D8: MemLdStr global_20
  loc_A6F2DB: ConcatStr
  loc_A6F2DC: FStStrNoPop var_B0
  loc_A6F2DF: LitStr " align=""left"">"
  loc_A6F2E2: ConcatStr
  loc_A6F2E3: FStStrNoPop var_B4
  loc_A6F2E6: FLdPr Me
  loc_A6F2E9: MemLdI2 global_100
  loc_A6F2EC: CI4UI1
  loc_A6F2ED: FLdPr Me
  loc_A6F2F0: MemLdStr global_92
  loc_A6F2F3: Ary1LdPr
  loc_A6F2F4: MemLdStr global_0
  loc_A6F2F7: ConcatStr
  loc_A6F2F8: FStStrNoPop var_B8
  loc_A6F2FB: LitStr "</th>"
  loc_A6F2FE: ConcatStr
  loc_A6F2FF: CVarStr var_C8
  loc_A6F302: PopAdLdVar
  loc_A6F303: FLdPr Me
  loc_A6F306: MemLdRfVar from_stack_1.htmFile
  loc_A6F309: LdPrVar
  loc_A6F30B: LateMemCall
  loc_A6F311: FFreeStr var_B0 = "": var_B4 = ""
  loc_A6F31A: FFree1Var var_C8 = ""
  loc_A6F31D: LitStr "    <th rowspan="
  loc_A6F320: FLdPr Me
  loc_A6F323: MemLdI2 global_100
  loc_A6F326: CI4UI1
  loc_A6F327: FLdPr Me
  loc_A6F32A: MemLdStr global_92
  loc_A6F32D: Ary1LdPr
  loc_A6F32E: MemLdStr global_20
  loc_A6F331: ConcatStr
  loc_A6F332: FStStrNoPop var_B0
  loc_A6F335: LitStr " align=""left"">"
  loc_A6F338: ConcatStr
  loc_A6F339: FStStrNoPop var_B4
  loc_A6F33C: FLdPr Me
  loc_A6F33F: MemLdI2 global_100
  loc_A6F342: CI4UI1
  loc_A6F343: FLdPr Me
  loc_A6F346: MemLdStr global_92
  loc_A6F349: Ary1LdPr
  loc_A6F34A: MemLdStr global_12
  loc_A6F34D: ConcatStr
  loc_A6F34E: FStStrNoPop var_B8
  loc_A6F351: LitStr "</th>"
  loc_A6F354: ConcatStr
  loc_A6F355: CVarStr var_C8
  loc_A6F358: PopAdLdVar
  loc_A6F359: FLdPr Me
  loc_A6F35C: MemLdRfVar from_stack_1.htmFile
  loc_A6F35F: LdPrVar
  loc_A6F361: LateMemCall
  loc_A6F367: FFreeStr var_B0 = "": var_B4 = ""
  loc_A6F370: FFree1Var var_C8 = ""
  loc_A6F373: LitI2_Byte 1
  loc_A6F375: FLdPr Me
  loc_A6F378: MemLdRfVar from_stack_1.global_102
  loc_A6F37B: FLdPr Me
  loc_A6F37E: MemLdI2 global_100
  loc_A6F381: CI4UI1
  loc_A6F382: FLdPr Me
  loc_A6F385: MemLdStr global_92
  loc_A6F388: Ary1LdPr
  loc_A6F389: MemLdStr global_16
  loc_A6F38C: LitI2_Byte 1
  loc_A6F38E: FnUBound
  loc_A6F390: CI2I4
  loc_A6F391: ForI2 var_CC
  loc_A6F397: FLdPr Me
  loc_A6F39A: MemLdI2 global_102
  loc_A6F39D: CI4UI1
  loc_A6F39E: FLdPr Me
  loc_A6F3A1: MemLdI2 global_100
  loc_A6F3A4: CI4UI1
  loc_A6F3A5: FLdPr Me
  loc_A6F3A8: MemLdStr global_92
  loc_A6F3AB: AryLock
  loc_A6F3AE: Ary1LdPr
  loc_A6F3AF: MemLdStr global_16
  loc_A6F3B2: AryLock
  loc_A6F3B5: Ary1LdRf
  loc_A6F3B6: FStR4 var_D8
  loc_A6F3B9: FLdPr Me
  loc_A6F3BC: MemLdI2 global_102
  loc_A6F3BF: LitI2_Byte 1
  loc_A6F3C1: GtI2
  loc_A6F3C2: BranchF loc_A6F3D9
  loc_A6F3C5: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A6F3CA: PopAdLdVar
  loc_A6F3CB: FLdPr Me
  loc_A6F3CE: MemLdRfVar from_stack_1.htmFile
  loc_A6F3D1: LdPrVar
  loc_A6F3D3: LateMemCall
  loc_A6F3D9: LitI4 0
  loc_A6F3DE: LitI4 0
  loc_A6F3E3: LitI2_Byte 0
  loc_A6F3E5: LitStr "right"
  loc_A6F3E8: FMemLdR4 var_D8(0)
  loc_A6F3ED: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A6F3F2: CVarStr var_C8
  loc_A6F3F5: PopAdLdVar
  loc_A6F3F6: FLdPr Me
  loc_A6F3F9: MemLdRfVar from_stack_1.htmFile
  loc_A6F3FC: LdPrVar
  loc_A6F3FE: LateMemCall
  loc_A6F404: FFree1Var var_C8 = ""
  loc_A6F407: LitI4 0
  loc_A6F40C: LitI4 0
  loc_A6F411: LitI2_Byte 0
  loc_A6F413: LitStr "right"
  loc_A6F416: FMemLdR4 var_D8(4)
  loc_A6F41B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A6F420: CVarStr var_C8
  loc_A6F423: PopAdLdVar
  loc_A6F424: FLdPr Me
  loc_A6F427: MemLdRfVar from_stack_1.htmFile
  loc_A6F42A: LdPrVar
  loc_A6F42C: LateMemCall
  loc_A6F432: FFree1Var var_C8 = ""
  loc_A6F435: LitI4 0
  loc_A6F43A: LitI4 0
  loc_A6F43F: LitI2_Byte 0
  loc_A6F441: LitStr "left"
  loc_A6F444: FMemLdR4 var_D8(8)
  loc_A6F449: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A6F44E: CVarStr var_C8
  loc_A6F451: PopAdLdVar
  loc_A6F452: FLdPr Me
  loc_A6F455: MemLdRfVar from_stack_1.htmFile
  loc_A6F458: LdPrVar
  loc_A6F45A: LateMemCall
  loc_A6F460: FFree1Var var_C8 = ""
  loc_A6F463: LitI4 0
  loc_A6F468: LitI4 0
  loc_A6F46D: LitI2_Byte 0
  loc_A6F46F: LitStr "right"
  loc_A6F472: FMemLdR4 var_D8(16)
  loc_A6F477: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A6F47C: CVarStr var_C8
  loc_A6F47F: PopAdLdVar
  loc_A6F480: FLdPr Me
  loc_A6F483: MemLdRfVar from_stack_1.htmFile
  loc_A6F486: LdPrVar
  loc_A6F488: LateMemCall
  loc_A6F48E: FFree1Var var_C8 = ""
  loc_A6F491: LitI4 0
  loc_A6F496: LitI4 0
  loc_A6F49B: LitI2_Byte 0
  loc_A6F49D: LitStr "right"
  loc_A6F4A0: FMemLdR4 var_D8(20)
  loc_A6F4A5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A6F4AA: CVarStr var_C8
  loc_A6F4AD: PopAdLdVar
  loc_A6F4AE: FLdPr Me
  loc_A6F4B1: MemLdRfVar from_stack_1.htmFile
  loc_A6F4B4: LdPrVar
  loc_A6F4B6: LateMemCall
  loc_A6F4BC: FFree1Var var_C8 = ""
  loc_A6F4BF: LitI4 0
  loc_A6F4C4: LitI4 0
  loc_A6F4C9: LitI2_Byte 0
  loc_A6F4CB: LitStr "right"
  loc_A6F4CE: FMemLdR4 var_D8(12)
  loc_A6F4D3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A6F4D8: CVarStr var_C8
  loc_A6F4DB: PopAdLdVar
  loc_A6F4DC: FLdPr Me
  loc_A6F4DF: MemLdRfVar from_stack_1.htmFile
  loc_A6F4E2: LdPrVar
  loc_A6F4E4: LateMemCall
  loc_A6F4EA: FFree1Var var_C8 = ""
  loc_A6F4ED: LitI4 0
  loc_A6F4F2: LitI4 0
  loc_A6F4F7: LitI2_Byte 0
  loc_A6F4F9: LitStr "right"
  loc_A6F4FC: FMemLdR4 var_D8(24)
  loc_A6F501: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A6F506: CVarStr var_C8
  loc_A6F509: PopAdLdVar
  loc_A6F50A: FLdPr Me
  loc_A6F50D: MemLdRfVar from_stack_1.htmFile
  loc_A6F510: LdPrVar
  loc_A6F512: LateMemCall
  loc_A6F518: FFree1Var var_C8 = ""
  loc_A6F51B: LitVarStr var_9C, "     </tr>"
  loc_A6F520: PopAdLdVar
  loc_A6F521: FLdPr Me
  loc_A6F524: MemLdRfVar from_stack_1.htmFile
  loc_A6F527: LdPrVar
  loc_A6F529: LateMemCall
  loc_A6F52F: LitI4 0
  loc_A6F534: FStR4 var_D8
  loc_A6F537: AryUnlock
  loc_A6F53A: AryUnlock
  loc_A6F53D: FLdPr Me
  loc_A6F540: MemLdRfVar from_stack_1.global_102
  loc_A6F543: NextI2 var_CC, loc_A6F397
  loc_A6F548: FLdPr Me
  loc_A6F54B: MemLdRfVar from_stack_1.global_100
  loc_A6F54E: NextI2 var_8C, loc_A6F207
  loc_A6F553: Call Proc_173_32_981660()
  loc_A6F558: FLdPr Me
  loc_A6F55B: MemLdRfVar from_stack_1.htmFile
  loc_A6F55E: LdPrVar
  loc_A6F560: LateMemCall
  loc_A6F566: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A6F56B: ExitProcHresult
End Sub

Public Sub GeneraXLS() '95026C
  'Data Table: 48BC3C
  loc_950254: LitI2_Byte 0
  loc_950256: FLdPr Me
  loc_950259: MemStI2 bLogos
  loc_95025C: Call GeneraHTML()
  loc_950261: LitI2_Byte &HFF
  loc_950263: FLdPr Me
  loc_950266: MemStI2 bLogos
  loc_950269: ExitProcHresult
  loc_95026A: CVarStr var_3C00
End Sub

Private Function Proc_173_30_9FABBC() '9FABBC
  'Data Table: 48BC3C
  loc_9FAA7C: LitI2_Byte &HFF
  loc_9FAA7E: ImpAdLdRf MemVar_C3D74C
  loc_9FAA81: NewIfNullPr bscProveedor
  loc_9FAA84: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_9FAA89: LitNothing
  loc_9FAA8B: CastAd
  loc_9FAA8E: FStAdFuncNoPop
  loc_9FAA91: ImpAdLdRf MemVar_C3D74C
  loc_9FAA94: NewIfNullPr bscProveedor
  loc_9FAA97: Call bscProveedor.global_4315292Set(from_stack_1v)
  loc_9FAA9C: FFree1Ad var_88
  loc_9FAA9F: LitVar_Missing var_A8
  loc_9FAAA2: PopAdLdVar
  loc_9FAAA3: LitVarI4
  loc_9FAAAB: PopAdLdVar
  loc_9FAAAC: ImpAdLdRf MemVar_C3D74C
  loc_9FAAAF: NewIfNullPr bscProveedor
  loc_9FAAB2: bscProveedor.Show from_stack_1, from_stack_2
  loc_9FAAB7: FLdRfVar var_AC
  loc_9FAABA: FLdRfVar var_88
  loc_9FAABD: ImpAdLdRf MemVar_C3D74C
  loc_9FAAC0: NewIfNullPr bscProveedor
  loc_9FAAC3: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9FAAC8: FLdPr var_88
  loc_9FAACB: from_stack_1 = clsbase.RecordCount
  loc_9FAAD0: ILdRf var_AC
  loc_9FAAD3: LitI4 0
  loc_9FAAD8: GtI4
  loc_9FAAD9: FFree1Ad var_88
  loc_9FAADC: BranchF loc_9FABB5
  loc_9FAADF: FLdRfVar var_C8
  loc_9FAAE2: FLdRfVar var_B8
  loc_9FAAE5: LitVarStr var_98, "CucuPers"
  loc_9FAAEA: PopAdLdVar
  loc_9FAAEB: FLdRfVar var_B4
  loc_9FAAEE: FLdRfVar var_B0
  loc_9FAAF1: FLdRfVar var_88
  loc_9FAAF4: ImpAdLdRf MemVar_C3D74C
  loc_9FAAF7: NewIfNullPr bscProveedor
  loc_9FAAFA: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9FAAFF: FLdPr var_88
  loc_9FAB02: from_stack_1v = clsbase.RsFrmGet()
  loc_9FAB07: FLdPr var_B0
  loc_9FAB0A:  = Me.Fields
  loc_9FAB0F: FLdPr var_B4
  loc_9FAB12: from_stack_2 = Me.Item(from_stack_1)
  loc_9FAB17: FLdPr var_B8
  loc_9FAB1A:  = Me.Value
  loc_9FAB1F: FLdRfVar var_C8
  loc_9FAB22: CStrVarTmp
  loc_9FAB23: FStStrNoPop var_CC
  loc_9FAB26: FLdPr Me
  loc_9FAB29: VCallAd Control_ID_CucuPersTxt
  loc_9FAB2C: FStAdFunc var_D0
  loc_9FAB2F: FLdPr var_D0
  loc_9FAB32: Me.Text = from_stack_1
  loc_9FAB37: FFree1Str var_CC
  loc_9FAB3A: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FAB47: FFree1Var var_C8 = ""
  loc_9FAB4A: FLdRfVar var_C8
  loc_9FAB4D: FLdRfVar var_B8
  loc_9FAB50: LitVarStr var_98, "DetaProv"
  loc_9FAB55: PopAdLdVar
  loc_9FAB56: FLdRfVar var_B4
  loc_9FAB59: FLdRfVar var_B0
  loc_9FAB5C: FLdRfVar var_88
  loc_9FAB5F: ImpAdLdRf MemVar_C3D74C
  loc_9FAB62: NewIfNullPr bscProveedor
  loc_9FAB65: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9FAB6A: FLdPr var_88
  loc_9FAB6D: from_stack_1v = clsbase.RsFrmGet()
  loc_9FAB72: FLdPr var_B0
  loc_9FAB75:  = Me.Fields
  loc_9FAB7A: FLdPr var_B4
  loc_9FAB7D: from_stack_2 = Me.Item(from_stack_1)
  loc_9FAB82: FLdPr var_B8
  loc_9FAB85:  = Me.Value
  loc_9FAB8A: FLdRfVar var_C8
  loc_9FAB8D: CStrVarTmp
  loc_9FAB8E: FStStrNoPop var_CC
  loc_9FAB91: FLdPr Me
  loc_9FAB94: VCallAd Control_ID_DetaProvLbl
  loc_9FAB97: FStAdFunc var_D0
  loc_9FAB9A: FLdPr var_D0
  loc_9FAB9D: Me.Caption = from_stack_1
  loc_9FABA2: FFree1Str var_CC
  loc_9FABA5: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FABB2: FFree1Var var_C8 = ""
  loc_9FABB5: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9FABBA: ExitProcHresult
End Function

Private Function Proc_173_31_A8634C() 'A8634C
  'Data Table: 48BC3C
  loc_A85F18: LitVarStr var_94, "<html>"
  loc_A85F1D: PopAdLdVar
  loc_A85F1E: FLdPr Me
  loc_A85F21: MemLdRfVar from_stack_1.htmFile
  loc_A85F24: LdPrVar
  loc_A85F26: LateMemCall
  loc_A85F2C: LitVarStr var_94, "<head>"
  loc_A85F31: PopAdLdVar
  loc_A85F32: FLdPr Me
  loc_A85F35: MemLdRfVar from_stack_1.htmFile
  loc_A85F38: LdPrVar
  loc_A85F3A: LateMemCall
  loc_A85F40: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A85F45: PopAdLdVar
  loc_A85F46: FLdPr Me
  loc_A85F49: MemLdRfVar from_stack_1.htmFile
  loc_A85F4C: LdPrVar
  loc_A85F4E: LateMemCall
  loc_A85F54: LitStr "<title>"
  loc_A85F57: FLdRfVar var_A8
  loc_A85F5A: FLdPr Me
  loc_A85F5D:  = Me.Caption
  loc_A85F62: ILdRf var_A8
  loc_A85F65: ConcatStr
  loc_A85F66: FStStrNoPop var_AC
  loc_A85F69: LitStr "</title>"
  loc_A85F6C: ConcatStr
  loc_A85F6D: CVarStr var_BC
  loc_A85F70: PopAdLdVar
  loc_A85F71: FLdPr Me
  loc_A85F74: MemLdRfVar from_stack_1.htmFile
  loc_A85F77: LdPrVar
  loc_A85F79: LateMemCall
  loc_A85F7F: FFreeStr var_A8 = ""
  loc_A85F86: FFree1Var var_BC = ""
  loc_A85F89: LitStr vbNullString
  loc_A85F8C: ILdRf Me
  loc_A85F8F: CastAd
  loc_A85F92: FStAdFunc var_C0
  loc_A85F95: FLdRfVar var_C0
  loc_A85F98: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A85F9D: FFree1Ad var_C0
  loc_A85FA0: LitI4 0
  loc_A85FA5: FStStrCopy var_AC
  loc_A85FA8: FLdRfVar var_AC
  loc_A85FAB: LitI4 0
  loc_A85FB0: FStStrCopy var_A8
  loc_A85FB3: FLdRfVar var_A8
  loc_A85FB6: LitI2_Byte &HFF
  loc_A85FB8: PopTmpLdAd2 var_C2
  loc_A85FBB: FLdPr Me
  loc_A85FBE: MemLdRfVar from_stack_1.htmFile
  loc_A85FC1: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A85FC6: FFreeStr var_A8 = ""
  loc_A85FCD: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A85FD2: PopAdLdVar
  loc_A85FD3: FLdPr Me
  loc_A85FD6: MemLdRfVar from_stack_1.htmFile
  loc_A85FD9: LdPrVar
  loc_A85FDB: LateMemCall
  loc_A85FE1: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A85FE6: PopAdLdVar
  loc_A85FE7: FLdPr Me
  loc_A85FEA: MemLdRfVar from_stack_1.htmFile
  loc_A85FED: LdPrVar
  loc_A85FEF: LateMemCall
  loc_A85FF5: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_A85FFA: PopAdLdVar
  loc_A85FFB: FLdPr Me
  loc_A85FFE: MemLdRfVar from_stack_1.htmFile
  loc_A86001: LdPrVar
  loc_A86003: LateMemCall
  loc_A86009: FLdPr Me
  loc_A8600C: MemLdI2 bLogos
  loc_A8600F: BranchF loc_A86026
  loc_A86012: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A86017: PopAdLdVar
  loc_A86018: FLdPr Me
  loc_A8601B: MemLdRfVar from_stack_1.htmFile
  loc_A8601E: LdPrVar
  loc_A86020: LateMemCall
  loc_A86026: LitVarStr var_A4, "    <br><br>"
  loc_A8602B: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A86030: FStVarCopyObj var_BC
  loc_A86033: FLdRfVar var_BC
  loc_A86036: FLdRfVar var_D4
  loc_A86039: ImpAdCallFPR4  = Ucase()
  loc_A8603E: FLdRfVar var_D4
  loc_A86041: ConcatVar var_E4
  loc_A86045: LitVarStr var_F4, "</p>"
  loc_A8604A: ConcatVar var_104
  loc_A8604E: PopAdLdVar
  loc_A8604F: FLdPr Me
  loc_A86052: MemLdRfVar from_stack_1.htmFile
  loc_A86055: LdPrVar
  loc_A86057: LateMemCall
  loc_A8605D: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A86068: LitStr "    <p>"
  loc_A8606B: FLdRfVar var_A8
  loc_A8606E: FLdPr Me
  loc_A86071:  = Me.Caption
  loc_A86076: ILdRf var_A8
  loc_A86079: ConcatStr
  loc_A8607A: FStStrNoPop var_AC
  loc_A8607D: LitStr "</p></th>"
  loc_A86080: ConcatStr
  loc_A86081: CVarStr var_BC
  loc_A86084: PopAdLdVar
  loc_A86085: FLdPr Me
  loc_A86088: MemLdRfVar from_stack_1.htmFile
  loc_A8608B: LdPrVar
  loc_A8608D: LateMemCall
  loc_A86093: FFreeStr var_A8 = ""
  loc_A8609A: FFree1Var var_BC = ""
  loc_A8609D: LitVarStr var_94, "  </tr>"
  loc_A860A2: PopAdLdVar
  loc_A860A3: FLdPr Me
  loc_A860A6: MemLdRfVar from_stack_1.htmFile
  loc_A860A9: LdPrVar
  loc_A860AB: LateMemCall
  loc_A860B1: LitVarStr var_94, "  <tr><th colspan=""3""><hr></th></tr>"
  loc_A860B6: PopAdLdVar
  loc_A860B7: FLdPr Me
  loc_A860BA: MemLdRfVar from_stack_1.htmFile
  loc_A860BD: LdPrVar
  loc_A860BF: LateMemCall
  loc_A860C5: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A860CA: PopAdLdVar
  loc_A860CB: FLdPr Me
  loc_A860CE: MemLdRfVar from_stack_1.htmFile
  loc_A860D1: LdPrVar
  loc_A860D3: LateMemCall
  loc_A860D9: LitVarStr var_94, "    <th align=""left"">"
  loc_A860DE: PopAdLdVar
  loc_A860DF: FLdPr Me
  loc_A860E2: MemLdRfVar from_stack_1.htmFile
  loc_A860E5: LdPrVar
  loc_A860E7: LateMemCall
  loc_A860ED: LitStr "    Periodo: <span class=""Normal"">"
  loc_A860F0: FLdRfVar var_A8
  loc_A860F3: FLdPr Me
  loc_A860F6: VCallAd Control_ID_cboPeriodo
  loc_A860F9: FStAdFunc var_C0
  loc_A860FC: FLdPr var_C0
  loc_A860FF:  = Me.Text
  loc_A86104: ILdRf var_A8
  loc_A86107: ConcatStr
  loc_A86108: FStStrNoPop var_AC
  loc_A8610B: LitStr "</span><br>"
  loc_A8610E: ConcatStr
  loc_A8610F: CVarStr var_BC
  loc_A86112: PopAdLdVar
  loc_A86113: FLdPr Me
  loc_A86116: MemLdRfVar from_stack_1.htmFile
  loc_A86119: LdPrVar
  loc_A8611B: LateMemCall
  loc_A86121: FFreeStr var_A8 = ""
  loc_A86128: FFree1Ad var_C0
  loc_A8612B: FFree1Var var_BC = ""
  loc_A8612E: LitVarStr var_94, "  </th>"
  loc_A86133: PopAdLdVar
  loc_A86134: FLdPr Me
  loc_A86137: MemLdRfVar from_stack_1.htmFile
  loc_A8613A: LdPrVar
  loc_A8613C: LateMemCall
  loc_A86142: LitVarStr var_94, "  <th align=""right"">"
  loc_A86147: PopAdLdVar
  loc_A86148: FLdPr Me
  loc_A8614B: MemLdRfVar from_stack_1.htmFile
  loc_A8614E: LdPrVar
  loc_A86150: LateMemCall
  loc_A86156: LitStr "    Desde: <span class=""Normal"">"
  loc_A86159: FLdPr Me
  loc_A8615C: VCallAd Control_ID_mskDesde
  loc_A8615F: FStAdFunc var_C0
  loc_A86162: FLdPr var_C0
  loc_A86165: LateIdLdVar var_BC DispID_15 0
  loc_A8616C: CStrVarTmp
  loc_A8616D: FStStrNoPop var_A8
  loc_A86170: ConcatStr
  loc_A86171: FStStrNoPop var_AC
  loc_A86174: LitStr "</span><br>"
  loc_A86177: ConcatStr
  loc_A86178: CVarStr var_D4
  loc_A8617B: PopAdLdVar
  loc_A8617C: FLdPr Me
  loc_A8617F: MemLdRfVar from_stack_1.htmFile
  loc_A86182: LdPrVar
  loc_A86184: LateMemCall
  loc_A8618A: FFreeStr var_A8 = ""
  loc_A86191: FFree1Ad var_C0
  loc_A86194: FFreeVar var_BC = ""
  loc_A8619B: LitStr "    Hasta: <span class=""Normal"">"
  loc_A8619E: FLdPr Me
  loc_A861A1: VCallAd Control_ID_mskHasta
  loc_A861A4: FStAdFunc var_C0
  loc_A861A7: FLdPr var_C0
  loc_A861AA: LateIdLdVar var_BC DispID_15 0
  loc_A861B1: CStrVarTmp
  loc_A861B2: FStStrNoPop var_A8
  loc_A861B5: ConcatStr
  loc_A861B6: FStStrNoPop var_AC
  loc_A861B9: LitStr "</span>"
  loc_A861BC: ConcatStr
  loc_A861BD: CVarStr var_D4
  loc_A861C0: PopAdLdVar
  loc_A861C1: FLdPr Me
  loc_A861C4: MemLdRfVar from_stack_1.htmFile
  loc_A861C7: LdPrVar
  loc_A861C9: LateMemCall
  loc_A861CF: FFreeStr var_A8 = ""
  loc_A861D6: FFree1Ad var_C0
  loc_A861D9: FFreeVar var_BC = ""
  loc_A861E0: LitVarStr var_94, "  </th></tr>"
  loc_A861E5: PopAdLdVar
  loc_A861E6: FLdPr Me
  loc_A861E9: MemLdRfVar from_stack_1.htmFile
  loc_A861EC: LdPrVar
  loc_A861EE: LateMemCall
  loc_A861F4: LitVarStr var_94, "</table>"
  loc_A861F9: PopAdLdVar
  loc_A861FA: FLdPr Me
  loc_A861FD: MemLdRfVar from_stack_1.htmFile
  loc_A86200: LdPrVar
  loc_A86202: LateMemCall
  loc_A86208: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A8620D: PopAdLdVar
  loc_A8620E: FLdPr Me
  loc_A86211: MemLdRfVar from_stack_1.htmFile
  loc_A86214: LdPrVar
  loc_A86216: LateMemCall
  loc_A8621C: LitVarStr var_94, "  <THEAD>"
  loc_A86221: PopAdLdVar
  loc_A86222: FLdPr Me
  loc_A86225: MemLdRfVar from_stack_1.htmFile
  loc_A86228: LdPrVar
  loc_A8622A: LateMemCall
  loc_A86230: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A86235: PopAdLdVar
  loc_A86236: FLdPr Me
  loc_A86239: MemLdRfVar from_stack_1.htmFile
  loc_A8623C: LdPrVar
  loc_A8623E: LateMemCall
  loc_A86244: LitVarStr var_94, "    <th>PROVEEDOR</th>"
  loc_A86249: PopAdLdVar
  loc_A8624A: FLdPr Me
  loc_A8624D: MemLdRfVar from_stack_1.htmFile
  loc_A86250: LdPrVar
  loc_A86252: LateMemCall
  loc_A86258: LitVarStr var_94, "    <th>RAZÓN SOCIAL</th>"
  loc_A8625D: PopAdLdVar
  loc_A8625E: FLdPr Me
  loc_A86261: MemLdRfVar from_stack_1.htmFile
  loc_A86264: LdPrVar
  loc_A86266: LateMemCall
  loc_A8626C: LitVarStr var_94, "    <th>CUIT</th>"
  loc_A86271: PopAdLdVar
  loc_A86272: FLdPr Me
  loc_A86275: MemLdRfVar from_stack_1.htmFile
  loc_A86278: LdPrVar
  loc_A8627A: LateMemCall
  loc_A86280: LitVarStr var_94, "    <th>TIPO FACT.</th>"
  loc_A86285: PopAdLdVar
  loc_A86286: FLdPr Me
  loc_A86289: MemLdRfVar from_stack_1.htmFile
  loc_A8628C: LdPrVar
  loc_A8628E: LateMemCall
  loc_A86294: LitVarStr var_94, "    <th>ORDEN DE PAGO</th>"
  loc_A86299: PopAdLdVar
  loc_A8629A: FLdPr Me
  loc_A8629D: MemLdRfVar from_stack_1.htmFile
  loc_A862A0: LdPrVar
  loc_A862A2: LateMemCall
  loc_A862A8: LitVarStr var_94, "    <th>EXPEDIENTE</th>"
  loc_A862AD: PopAdLdVar
  loc_A862AE: FLdPr Me
  loc_A862B1: MemLdRfVar from_stack_1.htmFile
  loc_A862B4: LdPrVar
  loc_A862B6: LateMemCall
  loc_A862BC: LitVarStr var_94, "    <th>FACTURA/S</th>"
  loc_A862C1: PopAdLdVar
  loc_A862C2: FLdPr Me
  loc_A862C5: MemLdRfVar from_stack_1.htmFile
  loc_A862C8: LdPrVar
  loc_A862CA: LateMemCall
  loc_A862D0: LitVarStr var_94, "    <th>RETENCIONES</th>"
  loc_A862D5: PopAdLdVar
  loc_A862D6: FLdPr Me
  loc_A862D9: MemLdRfVar from_stack_1.htmFile
  loc_A862DC: LdPrVar
  loc_A862DE: LateMemCall
  loc_A862E4: LitVarStr var_94, "    <th>NETO</th>"
  loc_A862E9: PopAdLdVar
  loc_A862EA: FLdPr Me
  loc_A862ED: MemLdRfVar from_stack_1.htmFile
  loc_A862F0: LdPrVar
  loc_A862F2: LateMemCall
  loc_A862F8: LitVarStr var_94, "    <th>TOTAL PAGADO</th>"
  loc_A862FD: PopAdLdVar
  loc_A862FE: FLdPr Me
  loc_A86301: MemLdRfVar from_stack_1.htmFile
  loc_A86304: LdPrVar
  loc_A86306: LateMemCall
  loc_A8630C: LitVarStr var_94, "    <th>FECHA PAGO</th>"
  loc_A86311: PopAdLdVar
  loc_A86312: FLdPr Me
  loc_A86315: MemLdRfVar from_stack_1.htmFile
  loc_A86318: LdPrVar
  loc_A8631A: LateMemCall
  loc_A86320: LitVarStr var_94, "  </tr>"
  loc_A86325: PopAdLdVar
  loc_A86326: FLdPr Me
  loc_A86329: MemLdRfVar from_stack_1.htmFile
  loc_A8632C: LdPrVar
  loc_A8632E: LateMemCall
  loc_A86334: LitVarStr var_94, "  </THEAD>"
  loc_A86339: PopAdLdVar
  loc_A8633A: FLdPr Me
  loc_A8633D: MemLdRfVar from_stack_1.htmFile
  loc_A86340: LdPrVar
  loc_A86342: LateMemCall
  loc_A86348: ExitProcHresult
End Function

Private Function Proc_173_32_981660() '981660
  'Data Table: 48BC3C
  loc_981620: LitVarStr var_94, "</table>"
  loc_981625: PopAdLdVar
  loc_981626: FLdPr Me
  loc_981629: MemLdRfVar from_stack_1.htmFile
  loc_98162C: LdPrVar
  loc_98162E: LateMemCall
  loc_981634: LitVarStr var_94, "</body>"
  loc_981639: PopAdLdVar
  loc_98163A: FLdPr Me
  loc_98163D: MemLdRfVar from_stack_1.htmFile
  loc_981640: LdPrVar
  loc_981642: LateMemCall
  loc_981648: LitVarStr var_94, "</html>"
  loc_98164D: PopAdLdVar
  loc_98164E: FLdPr Me
  loc_981651: MemLdRfVar from_stack_1.htmFile
  loc_981654: LdPrVar
  loc_981656: LateMemCall
  loc_98165C: ExitProcHresult
End Function
