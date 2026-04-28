VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptLibroBancoMayorGeneral
  Caption = "Libro Banco y Mayor General"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptLibroBancoMayorGeneral.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6195
  ClientHeight = 2880
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2625
    Width = 6195
    Height = 255
    TabIndex = 13
    OleObjectBlob = "rptLibroBancoMayorGeneral.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5280
    Top = 1680
    Width = 735
    Height = 615
    TabIndex = 11
    Cancel = -1  'True
    Picture = "rptLibroBancoMayorGeneral.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptLibroBancoMayorGeneral.frx":0B9C
    Left = 5520
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1440
    Width = 1815
    Height = 1095
    TabIndex = 9
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1440
    Width = 3015
    Height = 1095
    TabIndex = 6
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 8
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 7
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 5895
    Height = 1335
    TabIndex = 0
    Begin VB.ComboBox cboMes
      Style = 2
      ForeColor = &HFF0000&
      Left = 1560
      Top = 720
      Width = 1095
      Height = 315
      TabIndex = 5
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1560
      Top = 240
      Width = 1095
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4320
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.Label Label1
      Caption = "Mes:"
      Left = 1080
      Top = 720
      Width = 345
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 840
      Top = 240
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5400
    Top = 2040
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptLibroBancoMayorGeneral.frx":0C00
  End
End

Attribute VB_Name = "rptLibroBancoMayorGeneral"

Public bGenerado As Boolean

Private Type UDT_1_00597558
  bStruc(60) As Byte ' String fields: 15
End Type


Private Sub cmdSalir_Click() '977B20
  'Data Table: 43CB50
  loc_977AF0: LitVarStr var_94, "Cerrando..."
  loc_977AF5: PopAdLdVar
  loc_977AF6: FLdPr Me
  loc_977AF9: VCallAd Control_ID_statusBar
  loc_977AFC: FStAdFunc var_A8
  loc_977AFF: FLdPr var_A8
  loc_977B02: LateIdSt
  loc_977B07: FFree1Ad var_A8
  loc_977B0A: ILdRf Me
  loc_977B0D: FStAdNoPop
  loc_977B11: ImpAdLdRf MemVar_C44F9C
  loc_977B14: NewIfNullPr Me
  loc_977B17: Me.Global.Unload from_stack_1
  loc_977B1C: FFree1Ad var_A8
  loc_977B1F: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '98E5B0
  'Data Table: 43CB50
  loc_98E568: LitI2_Byte 0
  loc_98E56A: FLdPr Me
  loc_98E56D: MemStI2 bGenerado
  loc_98E570: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_98E575: ImpAdLdI2 MemVar_C3D064
  loc_98E578: CStrUI1
  loc_98E57A: FStStrNoPop var_88
  loc_98E57D: FLdPr Me
  loc_98E580: VCallAd Control_ID_cboPeriodo
  loc_98E583: FStAdFunc var_8C
  loc_98E586: FLdPr var_8C
  loc_98E589: Me.Text = from_stack_1
  loc_98E58E: FFree1Str var_88
  loc_98E591: FFree1Ad var_8C
  loc_98E594: Call HabilitarCriterio()
  loc_98E599: ILdRf Me
  loc_98E59C: CastAd
  loc_98E59F: FStAdFunc var_8C
  loc_98E5A2: FLdRfVar var_8C
  loc_98E5A5: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_98E5AA: FFree1Ad var_8C
  loc_98E5AD: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95E950
  'Data Table: 43CB50
  loc_95E938: ILdRf Me
  loc_95E93B: CastAd
  loc_95E93E: FStAdFunc var_88
  loc_95E941: FLdRfVar var_88
  loc_95E944: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95E949: FFree1Ad var_88
  loc_95E94C: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95EA80
  'Data Table: 43CB50
  loc_95EA68: LitI2_Byte 0
  loc_95EA6A: ILdRf Me
  loc_95EA6D: CastAd
  loc_95EA70: FStAdFunc var_88
  loc_95EA73: FLdRfVar var_88
  loc_95EA76: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95EA7B: FFree1Ad var_88
  loc_95EA7E: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '9893D4
  'Data Table: 43CB50
  loc_98939C: FLdPr Me
  loc_98939F: VCallAd Control_ID_statusBar
  loc_9893A2: FStAdFunc var_88
  loc_9893A5: FLdPr var_88
  loc_9893A8: LateIdLdVar var_98 DispID_1 0
  loc_9893AF: CStrVarTmp
  loc_9893B0: CVarStr var_A8
  loc_9893B3: PopAdLdVar
  loc_9893B4: FLdPr Me
  loc_9893B7: VCallAd Control_ID_statusBar
  loc_9893BA: FStAdFunc var_BC
  loc_9893BD: FLdPr var_BC
  loc_9893C0: LateIdSt
  loc_9893C5: FFreeAd var_88 = ""
  loc_9893CC: FFreeVar var_98 = ""
  loc_9893D3: ExitProcHresult
End Sub

Private Sub Form_Load() '9FDC18
  'Data Table: 43CB50
  loc_9FDAD4: LitI2_Byte &HFF
  loc_9FDAD6: ImpAdStI2 MemVar_C3D840
  loc_9FDAD9: ILdRf Me
  loc_9FDADC: CastAd
  loc_9FDADF: FStAdFunc var_8C
  loc_9FDAE2: FLdRfVar var_8C
  loc_9FDAE5: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9FDAEA: FFree1Ad var_8C
  loc_9FDAED: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9FDAF0: FLdRfVar var_88
  loc_9FDAF3: NewIfNullPr clsperiodo
  loc_9FDAF6: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9FDAFB: FLdRfVar var_90
  loc_9FDAFE: FLdRfVar var_88
  loc_9FDB01: NewIfNullPr clsperiodo
  loc_9FDB04: from_stack_1 = clsperiodo.RecordCount
  loc_9FDB09: ILdRf var_90
  loc_9FDB0C: LitI4 0
  loc_9FDB11: GtI4
  loc_9FDB12: BranchF loc_9FDBA5
  loc_9FDB15: FLdRfVar var_88
  loc_9FDB18: NewIfNullPr clsperiodo
  loc_9FDB1B: Call clsperiodo.MoveFirst()
  loc_9FDB20: FLdRfVar var_92
  loc_9FDB23: FLdRfVar var_88
  loc_9FDB26: NewIfNullPr clsperiodo
  loc_9FDB29: from_stack_1 = clsperiodo.EOF
  loc_9FDB2E: FLdI2 var_92
  loc_9FDB31: NotI4
  loc_9FDB32: BranchF loc_9FDBA5
  loc_9FDB35: LitVar_Missing var_D0
  loc_9FDB38: PopAdLdVar
  loc_9FDB39: FLdRfVar var_BC
  loc_9FDB3C: FLdRfVar var_AC
  loc_9FDB3F: LitVarStr var_A8, "PeriInfo"
  loc_9FDB44: PopAdLdVar
  loc_9FDB45: FLdRfVar var_98
  loc_9FDB48: FLdRfVar var_8C
  loc_9FDB4B: FLdRfVar var_88
  loc_9FDB4E: NewIfNullPr clsperiodo
  loc_9FDB51: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9FDB56: FLdPr var_8C
  loc_9FDB59:  = Me.Fields
  loc_9FDB5E: FLdPr var_98
  loc_9FDB61: from_stack_2 = Me.Item(from_stack_1)
  loc_9FDB66: FLdPr var_AC
  loc_9FDB69:  = Me.Value
  loc_9FDB6E: FLdRfVar var_BC
  loc_9FDB71: CStrVarTmp
  loc_9FDB72: FStStrNoPop var_C0
  loc_9FDB75: FLdPr Me
  loc_9FDB78: VCallAd Control_ID_cboPeriodo
  loc_9FDB7B: FStAdFunc var_D4
  loc_9FDB7E: FLdPr var_D4
  loc_9FDB81: Me.AddItem from_stack_1, from_stack_2
  loc_9FDB86: FFree1Str var_C0
  loc_9FDB89: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_9FDB94: FFree1Var var_BC = ""
  loc_9FDB97: FLdRfVar var_88
  loc_9FDB9A: NewIfNullPr clsperiodo
  loc_9FDB9D: Call clsperiodo.MoveSiguiente()
  loc_9FDBA2: Branch loc_9FDB20
  loc_9FDBA5: FLdPr Me
  loc_9FDBA8: VCallAd Control_ID_cboMes
  loc_9FDBAB: FStAdFunc var_D8
  loc_9FDBAE: FLdPr var_D8
  loc_9FDBB1: Me.Clear
  loc_9FDBB6: LitI2_Byte 1
  loc_9FDBB8: CUI1I2
  loc_9FDBBA: FLdRfVar var_DA
  loc_9FDBBD: LitI2_Byte &HC
  loc_9FDBBF: CUI1I2
  loc_9FDBC1: ForUI1 var_DE
  loc_9FDBC7: LitVar_Missing var_A8
  loc_9FDBCA: PopAdLdVar
  loc_9FDBCB: LitI2_Byte 0
  loc_9FDBCD: FLdUI1
  loc_9FDBD1: CI4UI1
  loc_9FDBD2: ImpAdCallI2 MonthName(, )
  loc_9FDBD7: FStStrNoPop var_C0
  loc_9FDBDA: FLdPr var_D8
  loc_9FDBDD: Me.AddItem from_stack_1, from_stack_2
  loc_9FDBE2: FFree1Str var_C0
  loc_9FDBE5: FLdUI1
  loc_9FDBE9: CI4UI1
  loc_9FDBEA: FLdRfVar var_92
  loc_9FDBED: FLdPr var_D8
  loc_9FDBF0:  = Me.NewIndex
  loc_9FDBF5: FLdI2 var_92
  loc_9FDBF8: FLdPr var_D8
  loc_9FDBFB: Me.ItemData = from_stack_1
  loc_9FDC00: FLdRfVar var_DA
  loc_9FDC03: NextUI1
  loc_9FDC09: LitNothing
  loc_9FDC0B: FStAd var_D8 
  loc_9FDC0F: Call cmdNueva_Click()
  loc_9FDC14: ExitProcHresult
  loc_9FDC15: PopAdLdVar
  loc_9FDC16: Error
End Sub

Private Sub Form_Unload(Cancel As Integer) '95EBB0
  'Data Table: 43CB50
  loc_95EB98: FLdPr Me
  loc_95EB9B: VCallAd Control_ID_wbbReporte
  loc_95EB9E: FStAdFunc var_88
  loc_95EBA1: FLdRfVar var_88
  loc_95EBA4: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95EBA9: FFree1Ad var_88
  loc_95EBAC: ExitProcHresult
  loc_95EBAD: ModI4
End Sub

Private Sub cmdPrevia_Click() '966BA4
  'Data Table: 43CB50
  loc_966B8C: ILdRf Me
  loc_966B8F: CastAd
  loc_966B92: FStAdFunc var_88
  loc_966B95: FLdRfVar var_88
  loc_966B98: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_966B9D: FFree1Ad var_88
  loc_966BA0: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '9EAAB8
  'Data Table: 43CB50
  loc_9EA9A8: FLdRfVar var_88
  loc_9EA9AB: NewIfNullAd
  loc_9EA9AE: FStAd var_8C 
  loc_9EA9B2: LitStr "SELECT month(FechAsie) AS FechAsie FROM asiento WHERE PeriInfo = "
  loc_9EA9B5: FLdRfVar var_94
  loc_9EA9B8: FLdPr Me
  loc_9EA9BB: VCallAd Control_ID_cboPeriodo
  loc_9EA9BE: FStAdFunc var_90
  loc_9EA9C1: FLdPr var_90
  loc_9EA9C4:  = Me.Text
  loc_9EA9C9: ILdRf var_94
  loc_9EA9CC: ConcatStr
  loc_9EA9CD: FStStrNoPop var_98
  loc_9EA9D0: LitStr " ORDER BY FechAsie DESC LIMIT 1"
  loc_9EA9D3: ConcatStr
  loc_9EA9D4: FStStrNoPop var_9C
  loc_9EA9D7: FLdPr var_8C
  loc_9EA9DA: Call clsasiento.RedefineRS(from_stack_1v)
  loc_9EA9DF: FFreeStr var_94 = "": var_98 = ""
  loc_9EA9E8: FFree1Ad var_90
  loc_9EA9EB: FLdRfVar var_A0
  loc_9EA9EE: FLdPr var_8C
  loc_9EA9F1: from_stack_1 = clsasiento.RecordCount
  loc_9EA9F6: ILdRf var_A0
  loc_9EA9F9: LitI4 0
  loc_9EA9FE: GtI4
  loc_9EA9FF: BranchF loc_9EAA63
  loc_9EAA02: FLdRfVar var_C8
  loc_9EAA05: FLdRfVar var_B8
  loc_9EAA08: LitVarStr var_B4, "FechAsie"
  loc_9EAA0D: PopAdLdVar
  loc_9EAA0E: FLdRfVar var_A4
  loc_9EAA11: FLdRfVar var_90
  loc_9EAA14: FLdPr var_8C
  loc_9EAA17: from_stack_1v = clsasiento.RsFrmGet()
  loc_9EAA1C: FLdPr var_90
  loc_9EAA1F:  = Me.Fields
  loc_9EAA24: FLdPr var_A4
  loc_9EAA27: from_stack_2 = Me.Item(from_stack_1)
  loc_9EAA2C: FLdPr var_B8
  loc_9EAA2F:  = Me.Value
  loc_9EAA34: FLdRfVar var_C8
  loc_9EAA37: LitVarI2 var_D8, 1
  loc_9EAA3C: SubVar var_E8
  loc_9EAA40: CI2Var
  loc_9EAA41: FLdPr Me
  loc_9EAA44: VCallAd Control_ID_cboMes
  loc_9EAA47: FStAdFunc var_EC
  loc_9EAA4A: FLdPr var_EC
  loc_9EAA4D: Me.ListIndex = from_stack_1
  loc_9EAA52: FFreeAd var_90 = "": var_A4 = "": var_B8 = ""
  loc_9EAA5D: FFree1Var var_C8 = ""
  loc_9EAA60: Branch loc_9EAAAE
  loc_9EAA63: LitI4 0
  loc_9EAA68: LitStr "El periodo seleccionado no posee asientos"
  loc_9EAA6B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9EAA70: LitI2_Byte 0
  loc_9EAA72: PopTmpLdAd2 var_EE
  loc_9EAA75: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9EAA7A: CVarDate var_C8
  loc_9EAA7E: FLdRfVar var_E8
  loc_9EAA81: ImpAdCallFPR4  = Month()
  loc_9EAA86: FLdRfVar var_E8
  loc_9EAA89: LitVarI2 var_D8, 1
  loc_9EAA8E: SubVar var_100
  loc_9EAA92: CI2Var
  loc_9EAA93: FLdPr Me
  loc_9EAA96: VCallAd Control_ID_cboMes
  loc_9EAA99: FStAdFunc var_90
  loc_9EAA9C: FLdPr var_90
  loc_9EAA9F: Me.ListIndex = from_stack_1
  loc_9EAAA4: FFree1Ad var_90
  loc_9EAAA7: FFreeVar var_C8 = ""
  loc_9EAAAE: LitNothing
  loc_9EAAB0: FStAd var_8C 
  loc_9EAAB4: ExitProcHresult
End Sub

Public Function bGeneradoGet() '43D6BC
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '43D6CB
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '991840
  'Data Table: 43CB50
  loc_9917FC: LitI4 0
  loc_991801: LitI4 1
  loc_991806: FLdRfVar var_88
  loc_991809: Redim
  loc_991813: FLdPr Me
  loc_991816: VCallAd Control_ID_cboPeriodo
  loc_991819: CVarAd
  loc_99181D: ParmAry1St
  loc_991823: FLdPr Me
  loc_991826: VCallAd Control_ID_cboMes
  loc_991829: CVarAd
  loc_99182D: ParmAry1St
  loc_991833: FLdRfVar var_88
  loc_991836: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_99183B: FLdRfVar var_88
  loc_99183E: Erase
  loc_99183F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B37234
  'Data Table: 43CB50
  loc_B368C8: FLdPr Me
  loc_B368CB: MemLdI2 bGenerado
  loc_B368CE: BranchF loc_B368D2
  loc_B368D1: ExitProcHresult
  loc_B368D2: LitVarStr var_9C, "Generando reporte..."
  loc_B368D7: PopAdLdVar
  loc_B368D8: FLdPr Me
  loc_B368DB: VCallAd Control_ID_statusBar
  loc_B368DE: FStAdFunc var_B0
  loc_B368E1: FLdPr var_B0
  loc_B368E4: LateIdSt
  loc_B368E9: FFree1Ad var_B0
  loc_B368EC: LitI4 &HB
  loc_B368F1: CI2I4
  loc_B368F2: FLdPr Me
  loc_B368F5: Me.MousePointer = from_stack_1
  loc_B368FA: FLdRfVar var_B4
  loc_B368FD: FLdPr Me
  loc_B36900: VCallAd Control_ID_cboPeriodo
  loc_B36903: FStAdFunc var_B0
  loc_B36906: FLdPr var_B0
  loc_B36909:  = Me.Text
  loc_B3690E: FLdRfVar var_BA
  loc_B36911: FLdPr Me
  loc_B36914: VCallAd Control_ID_cboMes
  loc_B36917: FStAdFunc var_B8
  loc_B3691A: FLdPr var_B8
  loc_B3691D:  = Me.ListIndex
  loc_B36922: FLdRfVar var_C4
  loc_B36925: FLdI2 var_BA
  loc_B36928: FLdPr Me
  loc_B3692B: VCallAd Control_ID_cboMes
  loc_B3692E: FStAdFunc var_C0
  loc_B36931: FLdPr var_C0
  loc_B36934:  = Me.ItemData
  loc_B36939: LitI2_Byte 1
  loc_B3693B: ILdRf var_C4
  loc_B3693E: LitI4 1
  loc_B36943: AddI4
  loc_B36944: CI2I4
  loc_B36945: ILdRf var_B4
  loc_B36948: CI2Str
  loc_B3694A: FLdRfVar var_D4
  loc_B3694D: ImpAdCallFPR4  = DateSerial(, , )
  loc_B36952: LitStr "'"
  loc_B36955: LitI4 1
  loc_B3695A: LitI4 1
  loc_B3695F: LitVarStr var_AC, "yyyy-mm-dd"
  loc_B36964: FStVarCopyObj var_104
  loc_B36967: FLdRfVar var_104
  loc_B3696A: FLdRfVar var_D4
  loc_B3696D: LitVarI2 var_9C, 1
  loc_B36972: SubVar var_E4
  loc_B36976: FStVar var_F4
  loc_B3697A: FLdRfVar var_F4
  loc_B3697D: ImpAdCallI2 Format$(, )
  loc_B36982: FStStrNoPop var_108
  loc_B36985: ConcatStr
  loc_B36986: FStStrNoPop var_10C
  loc_B36989: LitStr "'"
  loc_B3698C: ConcatStr
  loc_B3698D: FStStr var_88
  loc_B36990: FFreeStr var_B4 = "": var_108 = ""
  loc_B36999: FFreeAd var_B0 = "": var_B8 = ""
  loc_B369A2: FFreeVar var_D4 = "": var_F4 = ""
  loc_B369AB: FLdRfVar var_BA
  loc_B369AE: FLdPr Me
  loc_B369B1: VCallAd Control_ID_cboMes
  loc_B369B4: FStAdFunc var_B0
  loc_B369B7: FLdPr var_B0
  loc_B369BA:  = Me.ListIndex
  loc_B369BF: FLdRfVar var_C4
  loc_B369C2: FLdI2 var_BA
  loc_B369C5: FLdPr Me
  loc_B369C8: VCallAd Control_ID_cboMes
  loc_B369CB: FStAdFunc var_B8
  loc_B369CE: FLdPr var_B8
  loc_B369D1:  = Me.ItemData
  loc_B369D6: FLdRfVar var_B4
  loc_B369D9: FLdPr Me
  loc_B369DC: VCallAd Control_ID_cboPeriodo
  loc_B369DF: FStAdFunc var_C0
  loc_B369E2: FLdPr var_C0
  loc_B369E5:  = Me.Text
  loc_B369EA: ILdRf var_B4
  loc_B369ED: CI2Str
  loc_B369EF: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_B369F4: CVarStr var_D4
  loc_B369F7: FLdRfVar var_E4
  loc_B369FA: ImpAdCallFPR4  = Month()
  loc_B369FF: LitVarStr var_12C, "Definitivo"
  loc_B36A04: FStVarCopyObj var_13C
  loc_B36A07: FLdRfVar var_13C
  loc_B36A0A: LitVarStr var_AC, "Provisorio"
  loc_B36A0F: FStVarCopyObj var_11C
  loc_B36A12: FLdRfVar var_11C
  loc_B36A15: ILdRf var_C4
  loc_B36A18: CVarI4
  loc_B36A1C: HardType
  loc_B36A1D: FLdRfVar var_E4
  loc_B36A20: GtVar var_F4
  loc_B36A24: FStVar var_104
  loc_B36A28: FLdRfVar var_104
  loc_B36A2B: FLdRfVar var_14C
  loc_B36A2E: ImpAdCallFPR4  = IIf(, , )
  loc_B36A33: FLdRfVar var_14C
  loc_B36A36: CStrVarTmp
  loc_B36A37: FStStrNoPop var_108
  loc_B36A3A: FLdPr Me
  loc_B36A3D: MemStStrCopy
  loc_B36A41: FFreeStr var_B4 = ""
  loc_B36A48: FFreeAd var_B0 = "": var_B8 = ""
  loc_B36A51: FFreeVar var_D4 = "": var_E4 = "": var_104 = "": var_11C = "": var_13C = ""
  loc_B36A60: FLdPr Me
  loc_B36A63: MemLdRfVar from_stack_1.global_56
  loc_B36A66: NewIfNullAd
  loc_B36A69: FStAd var_150 
  loc_B36A6D: LitStr "DROP TEMPORARY TABLE IF EXISTS tbanc;"
  loc_B36A70: LitStr " CREATE TEMPORARY TABLE tbanc"
  loc_B36A73: ConcatStr
  loc_B36A74: FStStrNoPop var_B4
  loc_B36A77: LitStr " (SELECT banco.PeriInfo, banco.CodiBanc, banco.DetaBanc, banco.NumeBanc, banco.CodiCuco, DetaCuco,"
  loc_B36A7A: ConcatStr
  loc_B36A7B: FStStrNoPop var_108
  loc_B36A7E: LitStr " 0 as DebeMoba, 0 as HabeMoba, sum(DebeMoas) as DebeMoas, sum(HabeMoas) as HabeMoas"
  loc_B36A81: ConcatStr
  loc_B36A82: FStStrNoPop var_10C
  loc_B36A85: LitStr " FROM banco"
  loc_B36A88: ConcatStr
  loc_B36A89: FStStrNoPop var_154
  loc_B36A8C: LitStr " LEFT JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = banco.PeriInfo AND infogov.cuentacontable.codicuco = banco.CodiCuco"
  loc_B36A8F: ConcatStr
  loc_B36A90: FStStrNoPop var_158
  loc_B36A93: LitStr " LEFT JOIN asiento ON asiento.PeriInfo = banco.PeriInfo and coditias not in (15,16,25)"
  loc_B36A96: ConcatStr
  loc_B36A97: FStStrNoPop var_15C
  loc_B36A9A: LitStr " LEFT JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie AND moviasiento.CodiCuco = banco.CodiCuco"
  loc_B36A9D: ConcatStr
  loc_B36A9E: FStStrNoPop var_160
  loc_B36AA1: LitStr " WHERE banco.PeriInfo = "
  loc_B36AA4: ConcatStr
  loc_B36AA5: FStStrNoPop var_168
  loc_B36AA8: FLdRfVar var_164
  loc_B36AAB: FLdPr Me
  loc_B36AAE: VCallAd Control_ID_cboPeriodo
  loc_B36AB1: FStAdFunc var_B0
  loc_B36AB4: FLdPr var_B0
  loc_B36AB7:  = Me.Text
  loc_B36ABC: ILdRf var_164
  loc_B36ABF: ConcatStr
  loc_B36AC0: FStStrNoPop var_16C
  loc_B36AC3: LitStr " AND banco.FeanBanc IS NULL"
  loc_B36AC6: ConcatStr
  loc_B36AC7: FStStrNoPop var_170
  loc_B36ACA: LitStr " AND asiento.FechAsie <= "
  loc_B36ACD: ConcatStr
  loc_B36ACE: FStStrNoPop var_174
  loc_B36AD1: ILdRf var_88
  loc_B36AD4: ConcatStr
  loc_B36AD5: FStStrNoPop var_178
  loc_B36AD8: LitStr " GROUP BY banco.PeriInfo, banco.CodiBanc)"
  loc_B36ADB: ConcatStr
  loc_B36ADC: FStStrNoPop var_17C
  loc_B36ADF: LitStr " UNION ALL"
  loc_B36AE2: ConcatStr
  loc_B36AE3: FStStrNoPop var_180
  loc_B36AE6: LitStr " (SELECT banco.PeriInfo, banco.CodiBanc, banco.DetaBanc, banco.NumeBanc, banco.CodiCuco, '' as DetaCuco,"
  loc_B36AE9: ConcatStr
  loc_B36AEA: FStStrNoPop var_184
  loc_B36AED: LitStr " sum(DebeMoba) as DebeMoba, sum(HabeMoba) as HabeMoba, 0 as DebeMoas, 0 as HabeMoas"
  loc_B36AF0: ConcatStr
  loc_B36AF1: FStStrNoPop var_188
  loc_B36AF4: LitStr " FROM banco INNER JOIN movibanco ON movibanco.CodiBanc = banco.CodiBanc"
  loc_B36AF7: ConcatStr
  loc_B36AF8: FStStrNoPop var_18C
  loc_B36AFB: LitStr " WHERE banco.PeriInfo = "
  loc_B36AFE: ConcatStr
  loc_B36AFF: FStStrNoPop var_194
  loc_B36B02: FLdRfVar var_190
  loc_B36B05: FLdPr Me
  loc_B36B08: VCallAd Control_ID_cboPeriodo
  loc_B36B0B: FStAdFunc var_B8
  loc_B36B0E: FLdPr var_B8
  loc_B36B11:  = Me.Text
  loc_B36B16: ILdRf var_190
  loc_B36B19: ConcatStr
  loc_B36B1A: FStStrNoPop var_198
  loc_B36B1D: LitStr " AND banco.FeanBanc IS NULL"
  loc_B36B20: ConcatStr
  loc_B36B21: FStStrNoPop var_19C
  loc_B36B24: LitStr " AND movibanco.FechMoba <= "
  loc_B36B27: ConcatStr
  loc_B36B28: FStStrNoPop var_1A0
  loc_B36B2B: ILdRf var_88
  loc_B36B2E: ConcatStr
  loc_B36B2F: FStStrNoPop var_1A4
  loc_B36B32: LitStr " GROUP BY banco.PeriInfo, banco.CodiBanc);"
  loc_B36B35: ConcatStr
  loc_B36B36: FStStrNoPop var_1A8
  loc_B36B39: FLdPr var_150
  loc_B36B3C: Call clsbanco.RedefineRS(from_stack_1v)
  loc_B36B41: FFreeStr var_B4 = "": var_108 = "": var_10C = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_168 = "": var_164 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_194 = "": var_190 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = ""
  loc_B36B76: FFreeAd var_B0 = ""
  loc_B36B7D: LitStr "SELECT tbanc.PeriInfo, tbanc.CodiBanc, tbanc.DetaBanc, tbanc.NumeBanc, tbanc.CodiCuco, tbanc.DetaCuco,"
  loc_B36B80: LitStr " sum(DebeMoba) as DebeMoba, sum(HabeMoba) as HabeMoba,"
  loc_B36B83: ConcatStr
  loc_B36B84: FStStrNoPop var_B4
  loc_B36B87: LitStr " if(sum(DebeMoba)-sum(HabeMoba)>0,sum(DebeMoba)-sum(HabeMoba),0) as DeudMoba,"
  loc_B36B8A: ConcatStr
  loc_B36B8B: FStStrNoPop var_108
  loc_B36B8E: LitStr " if(sum(HabeMoba)-sum(DebeMoba)>0,sum(HabeMoba)-sum(DebeMoba),0) as AcreMoba,"
  loc_B36B91: ConcatStr
  loc_B36B92: FStStrNoPop var_10C
  loc_B36B95: LitStr " ifnull(sum(DebeMoas),0) as DebeMoas, ifnull(sum(HabeMoas),0) as HabeMoas,"
  loc_B36B98: ConcatStr
  loc_B36B99: FStStrNoPop var_154
  loc_B36B9C: LitStr " if(sum(DebeMoas)-sum(HabeMoas)>0,sum(DebeMoas)-sum(HabeMoas),0) as DeudMoas,"
  loc_B36B9F: ConcatStr
  loc_B36BA0: FStStrNoPop var_158
  loc_B36BA3: LitStr " if(sum(HabeMoas)-sum(DebeMoas)>0,sum(HabeMoas)-sum(DebeMoas),0) as AcreMoas,"
  loc_B36BA6: ConcatStr
  loc_B36BA7: FStStrNoPop var_15C
  loc_B36BAA: LitStr " if((sum(DebeMoba)-sum(HabeMoba))-(sum(DebeMoas)-sum(HabeMoas))>0,(sum(DebeMoba)-sum(HabeMoba))-(sum(DebeMoas)-sum(HabeMoas)),0) as DifeDeud,"
  loc_B36BAD: ConcatStr
  loc_B36BAE: FStStrNoPop var_160
  loc_B36BB1: LitStr " if((sum(HabeMoba)-sum(DebeMoba))-(sum(HabeMoas)-sum(DebeMoas))>0,(sum(HabeMoba)-sum(DebeMoba))-(sum(HabeMoas)-sum(DebeMoas)),0) as DifeAcre"
  loc_B36BB4: ConcatStr
  loc_B36BB5: FStStrNoPop var_164
  loc_B36BB8: LitStr " FROM tbanc GROUP BY tbanc.PeriInfo, tbanc.CodiBanc;"
  loc_B36BBB: ConcatStr
  loc_B36BBC: FStStrNoPop var_168
  loc_B36BBF: FLdPr var_150
  loc_B36BC2: Call clsbanco.RedefineRS(from_stack_1v)
  loc_B36BC7: FFreeStr var_B4 = "": var_108 = "": var_10C = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = ""
  loc_B36BDC: FLdRfVar var_C4
  loc_B36BDF: FLdPr var_150
  loc_B36BE2: from_stack_1 = clsbanco.RecordCount
  loc_B36BE7: ILdRf var_C4
  loc_B36BEA: LitI4 1
  loc_B36BEF: LtI4
  loc_B36BF0: BranchF loc_B36C03
  loc_B36BF3: LitI4 0
  loc_B36BF8: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B36BFB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B36C00: Branch loc_B37208
  loc_B36C03: LitI4 0
  loc_B36C08: FLdRfVar var_C4
  loc_B36C0B: FLdPr var_150
  loc_B36C0E: from_stack_1 = clsbanco.RecordCount
  loc_B36C13: ILdRf var_C4
  loc_B36C16: FLdPr Me
  loc_B36C19: MemLdRfVar from_stack_1.global_80
  loc_B36C1C: Redim
  loc_B36C26: FLdPr var_150
  loc_B36C29: Call clsbanco.MoveFirst()
  loc_B36C2E: LitI2_Byte 1
  loc_B36C30: FLdPr Me
  loc_B36C33: MemLdRfVar from_stack_1.global_84
  loc_B36C36: FLdPr Me
  loc_B36C39: MemLdStr global_80
  loc_B36C3C: LitI2_Byte 1
  loc_B36C3E: FnUBound
  loc_B36C40: CI2I4
  loc_B36C41: ForI2 var_1AC
  loc_B36C47: FLdRfVar var_C0
  loc_B36C4A: LitVarStr var_9C, "CodiBanc"
  loc_B36C4F: PopAdLdVar
  loc_B36C50: FLdRfVar var_B8
  loc_B36C53: FLdRfVar var_B0
  loc_B36C56: FLdPr var_150
  loc_B36C59: from_stack_1v = clsbanco.RsFrmGet()
  loc_B36C5E: FLdPr var_B0
  loc_B36C61:  = Me.Fields
  loc_B36C66: FLdPr var_B8
  loc_B36C69: from_stack_2 = Me.Item(from_stack_1)
  loc_B36C6E: LitI2_Byte 0
  loc_B36C70: LitVar_Missing var_E4
  loc_B36C73: LitI2_Byte 0
  loc_B36C75: FLdZeroAd var_C0
  loc_B36C78: CVarAd
  loc_B36C7C: PopAdLdVar
  loc_B36C7D: FLdPr Me
  loc_B36C80: MemLdI2 global_84
  loc_B36C83: CI4UI1
  loc_B36C84: FLdPr Me
  loc_B36C87: MemLdStr global_80
  loc_B36C8A: AryLock
  loc_B36C8D: Ary1LdPr
  loc_B36C8E: MemLdRfVar from_stack_1.global_0
  loc_B36C91: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B36C96: AryUnlock
  loc_B36C99: FFreeAd var_B0 = ""
  loc_B36CA0: FFreeVar var_D4 = ""
  loc_B36CA7: FLdRfVar var_C0
  loc_B36CAA: LitVarStr var_9C, "DetaBanc"
  loc_B36CAF: PopAdLdVar
  loc_B36CB0: FLdRfVar var_B8
  loc_B36CB3: FLdRfVar var_B0
  loc_B36CB6: FLdPr var_150
  loc_B36CB9: from_stack_1v = clsbanco.RsFrmGet()
  loc_B36CBE: FLdPr var_B0
  loc_B36CC1:  = Me.Fields
  loc_B36CC6: FLdPr var_B8
  loc_B36CC9: from_stack_2 = Me.Item(from_stack_1)
  loc_B36CCE: LitI2_Byte 0
  loc_B36CD0: LitVar_Missing var_E4
  loc_B36CD3: LitI2_Byte 0
  loc_B36CD5: FLdZeroAd var_C0
  loc_B36CD8: CVarAd
  loc_B36CDC: PopAdLdVar
  loc_B36CDD: FLdPr Me
  loc_B36CE0: MemLdI2 global_84
  loc_B36CE3: CI4UI1
  loc_B36CE4: FLdPr Me
  loc_B36CE7: MemLdStr global_80
  loc_B36CEA: AryLock
  loc_B36CED: Ary1LdPr
  loc_B36CEE: MemLdRfVar from_stack_1.global_4
  loc_B36CF1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B36CF6: AryUnlock
  loc_B36CF9: FFreeAd var_B0 = ""
  loc_B36D00: FFreeVar var_D4 = ""
  loc_B36D07: FLdRfVar var_C0
  loc_B36D0A: LitVarStr var_9C, "NumeBanc"
  loc_B36D0F: PopAdLdVar
  loc_B36D10: FLdRfVar var_B8
  loc_B36D13: FLdRfVar var_B0
  loc_B36D16: FLdPr var_150
  loc_B36D19: from_stack_1v = clsbanco.RsFrmGet()
  loc_B36D1E: FLdPr var_B0
  loc_B36D21:  = Me.Fields
  loc_B36D26: FLdPr var_B8
  loc_B36D29: from_stack_2 = Me.Item(from_stack_1)
  loc_B36D2E: LitI2_Byte 0
  loc_B36D30: LitVar_Missing var_E4
  loc_B36D33: LitI2_Byte 0
  loc_B36D35: FLdZeroAd var_C0
  loc_B36D38: CVarAd
  loc_B36D3C: PopAdLdVar
  loc_B36D3D: FLdPr Me
  loc_B36D40: MemLdI2 global_84
  loc_B36D43: CI4UI1
  loc_B36D44: FLdPr Me
  loc_B36D47: MemLdStr global_80
  loc_B36D4A: AryLock
  loc_B36D4D: Ary1LdPr
  loc_B36D4E: MemLdRfVar from_stack_1.global_8
  loc_B36D51: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B36D56: AryUnlock
  loc_B36D59: FFreeAd var_B0 = ""
  loc_B36D60: FFreeVar var_D4 = ""
  loc_B36D67: FLdRfVar var_C0
  loc_B36D6A: LitVarStr var_9C, "CodiCuco"
  loc_B36D6F: PopAdLdVar
  loc_B36D70: FLdRfVar var_B8
  loc_B36D73: FLdRfVar var_B0
  loc_B36D76: FLdPr var_150
  loc_B36D79: from_stack_1v = clsbanco.RsFrmGet()
  loc_B36D7E: FLdPr var_B0
  loc_B36D81:  = Me.Fields
  loc_B36D86: FLdPr var_B8
  loc_B36D89: from_stack_2 = Me.Item(from_stack_1)
  loc_B36D8E: LitI2_Byte 0
  loc_B36D90: LitVar_Missing var_E4
  loc_B36D93: LitI2_Byte 0
  loc_B36D95: FLdZeroAd var_C0
  loc_B36D98: CVarAd
  loc_B36D9C: PopAdLdVar
  loc_B36D9D: FLdPr Me
  loc_B36DA0: MemLdI2 global_84
  loc_B36DA3: CI4UI1
  loc_B36DA4: FLdPr Me
  loc_B36DA7: MemLdStr global_80
  loc_B36DAA: AryLock
  loc_B36DAD: Ary1LdPr
  loc_B36DAE: MemLdRfVar from_stack_1.global_12
  loc_B36DB1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B36DB6: AryUnlock
  loc_B36DB9: FFreeAd var_B0 = ""
  loc_B36DC0: FFreeVar var_D4 = ""
  loc_B36DC7: FLdRfVar var_C0
  loc_B36DCA: LitVarStr var_9C, "DetaCuco"
  loc_B36DCF: PopAdLdVar
  loc_B36DD0: FLdRfVar var_B8
  loc_B36DD3: FLdRfVar var_B0
  loc_B36DD6: FLdPr var_150
  loc_B36DD9: from_stack_1v = clsbanco.RsFrmGet()
  loc_B36DDE: FLdPr var_B0
  loc_B36DE1:  = Me.Fields
  loc_B36DE6: FLdPr var_B8
  loc_B36DE9: from_stack_2 = Me.Item(from_stack_1)
  loc_B36DEE: LitI2_Byte 0
  loc_B36DF0: LitVar_Missing var_E4
  loc_B36DF3: LitI2_Byte 0
  loc_B36DF5: FLdZeroAd var_C0
  loc_B36DF8: CVarAd
  loc_B36DFC: PopAdLdVar
  loc_B36DFD: FLdPr Me
  loc_B36E00: MemLdI2 global_84
  loc_B36E03: CI4UI1
  loc_B36E04: FLdPr Me
  loc_B36E07: MemLdStr global_80
  loc_B36E0A: AryLock
  loc_B36E0D: Ary1LdPr
  loc_B36E0E: MemLdRfVar from_stack_1.global_16
  loc_B36E11: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B36E16: AryUnlock
  loc_B36E19: FFreeAd var_B0 = ""
  loc_B36E20: FFreeVar var_D4 = ""
  loc_B36E27: FLdRfVar var_C0
  loc_B36E2A: LitVarStr var_9C, "DebeMoba"
  loc_B36E2F: PopAdLdVar
  loc_B36E30: FLdRfVar var_B8
  loc_B36E33: FLdRfVar var_B0
  loc_B36E36: FLdPr var_150
  loc_B36E39: from_stack_1v = clsbanco.RsFrmGet()
  loc_B36E3E: FLdPr var_B0
  loc_B36E41:  = Me.Fields
  loc_B36E46: FLdPr var_B8
  loc_B36E49: from_stack_2 = Me.Item(from_stack_1)
  loc_B36E4E: LitI2_Byte 0
  loc_B36E50: LitVar_Missing var_E4
  loc_B36E53: LitI2_Byte &HFF
  loc_B36E55: FLdZeroAd var_C0
  loc_B36E58: CVarAd
  loc_B36E5C: PopAdLdVar
  loc_B36E5D: FLdPr Me
  loc_B36E60: MemLdI2 global_84
  loc_B36E63: CI4UI1
  loc_B36E64: FLdPr Me
  loc_B36E67: MemLdStr global_80
  loc_B36E6A: AryLock
  loc_B36E6D: Ary1LdPr
  loc_B36E6E: MemLdRfVar from_stack_1.global_20
  loc_B36E71: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B36E76: AryUnlock
  loc_B36E79: FFreeAd var_B0 = ""
  loc_B36E80: FFreeVar var_D4 = ""
  loc_B36E87: FLdRfVar var_C0
  loc_B36E8A: LitVarStr var_9C, "HabeMoba"
  loc_B36E8F: PopAdLdVar
  loc_B36E90: FLdRfVar var_B8
  loc_B36E93: FLdRfVar var_B0
  loc_B36E96: FLdPr var_150
  loc_B36E99: from_stack_1v = clsbanco.RsFrmGet()
  loc_B36E9E: FLdPr var_B0
  loc_B36EA1:  = Me.Fields
  loc_B36EA6: FLdPr var_B8
  loc_B36EA9: from_stack_2 = Me.Item(from_stack_1)
  loc_B36EAE: LitI2_Byte 0
  loc_B36EB0: LitVar_Missing var_E4
  loc_B36EB3: LitI2_Byte &HFF
  loc_B36EB5: FLdZeroAd var_C0
  loc_B36EB8: CVarAd
  loc_B36EBC: PopAdLdVar
  loc_B36EBD: FLdPr Me
  loc_B36EC0: MemLdI2 global_84
  loc_B36EC3: CI4UI1
  loc_B36EC4: FLdPr Me
  loc_B36EC7: MemLdStr global_80
  loc_B36ECA: AryLock
  loc_B36ECD: Ary1LdPr
  loc_B36ECE: MemLdRfVar from_stack_1.global_24
  loc_B36ED1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B36ED6: AryUnlock
  loc_B36ED9: FFreeAd var_B0 = ""
  loc_B36EE0: FFreeVar var_D4 = ""
  loc_B36EE7: FLdRfVar var_C0
  loc_B36EEA: LitVarStr var_9C, "DeudMoba"
  loc_B36EEF: PopAdLdVar
  loc_B36EF0: FLdRfVar var_B8
  loc_B36EF3: FLdRfVar var_B0
  loc_B36EF6: FLdPr var_150
  loc_B36EF9: from_stack_1v = clsbanco.RsFrmGet()
  loc_B36EFE: FLdPr var_B0
  loc_B36F01:  = Me.Fields
  loc_B36F06: FLdPr var_B8
  loc_B36F09: from_stack_2 = Me.Item(from_stack_1)
  loc_B36F0E: LitI2_Byte 0
  loc_B36F10: LitVar_Missing var_E4
  loc_B36F13: LitI2_Byte &HFF
  loc_B36F15: FLdZeroAd var_C0
  loc_B36F18: CVarAd
  loc_B36F1C: PopAdLdVar
  loc_B36F1D: FLdPr Me
  loc_B36F20: MemLdI2 global_84
  loc_B36F23: CI4UI1
  loc_B36F24: FLdPr Me
  loc_B36F27: MemLdStr global_80
  loc_B36F2A: AryLock
  loc_B36F2D: Ary1LdPr
  loc_B36F2E: MemLdRfVar from_stack_1.global_28
  loc_B36F31: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B36F36: AryUnlock
  loc_B36F39: FFreeAd var_B0 = ""
  loc_B36F40: FFreeVar var_D4 = ""
  loc_B36F47: FLdRfVar var_C0
  loc_B36F4A: LitVarStr var_9C, "AcreMoba"
  loc_B36F4F: PopAdLdVar
  loc_B36F50: FLdRfVar var_B8
  loc_B36F53: FLdRfVar var_B0
  loc_B36F56: FLdPr var_150
  loc_B36F59: from_stack_1v = clsbanco.RsFrmGet()
  loc_B36F5E: FLdPr var_B0
  loc_B36F61:  = Me.Fields
  loc_B36F66: FLdPr var_B8
  loc_B36F69: from_stack_2 = Me.Item(from_stack_1)
  loc_B36F6E: LitI2_Byte 0
  loc_B36F70: LitVar_Missing var_E4
  loc_B36F73: LitI2_Byte &HFF
  loc_B36F75: FLdZeroAd var_C0
  loc_B36F78: CVarAd
  loc_B36F7C: PopAdLdVar
  loc_B36F7D: FLdPr Me
  loc_B36F80: MemLdI2 global_84
  loc_B36F83: CI4UI1
  loc_B36F84: FLdPr Me
  loc_B36F87: MemLdStr global_80
  loc_B36F8A: AryLock
  loc_B36F8D: Ary1LdPr
  loc_B36F8E: MemLdRfVar from_stack_1.global_32
  loc_B36F91: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B36F96: AryUnlock
  loc_B36F99: FFreeAd var_B0 = ""
  loc_B36FA0: FFreeVar var_D4 = ""
  loc_B36FA7: FLdRfVar var_C0
  loc_B36FAA: LitVarStr var_9C, "DebeMoas"
  loc_B36FAF: PopAdLdVar
  loc_B36FB0: FLdRfVar var_B8
  loc_B36FB3: FLdRfVar var_B0
  loc_B36FB6: FLdPr var_150
  loc_B36FB9: from_stack_1v = clsbanco.RsFrmGet()
  loc_B36FBE: FLdPr var_B0
  loc_B36FC1:  = Me.Fields
  loc_B36FC6: FLdPr var_B8
  loc_B36FC9: from_stack_2 = Me.Item(from_stack_1)
  loc_B36FCE: LitI2_Byte 0
  loc_B36FD0: LitVar_Missing var_E4
  loc_B36FD3: LitI2_Byte &HFF
  loc_B36FD5: FLdZeroAd var_C0
  loc_B36FD8: CVarAd
  loc_B36FDC: PopAdLdVar
  loc_B36FDD: FLdPr Me
  loc_B36FE0: MemLdI2 global_84
  loc_B36FE3: CI4UI1
  loc_B36FE4: FLdPr Me
  loc_B36FE7: MemLdStr global_80
  loc_B36FEA: AryLock
  loc_B36FED: Ary1LdPr
  loc_B36FEE: MemLdRfVar from_stack_1.global_36
  loc_B36FF1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B36FF6: AryUnlock
  loc_B36FF9: FFreeAd var_B0 = ""
  loc_B37000: FFreeVar var_D4 = ""
  loc_B37007: FLdRfVar var_C0
  loc_B3700A: LitVarStr var_9C, "HabeMoas"
  loc_B3700F: PopAdLdVar
  loc_B37010: FLdRfVar var_B8
  loc_B37013: FLdRfVar var_B0
  loc_B37016: FLdPr var_150
  loc_B37019: from_stack_1v = clsbanco.RsFrmGet()
  loc_B3701E: FLdPr var_B0
  loc_B37021:  = Me.Fields
  loc_B37026: FLdPr var_B8
  loc_B37029: from_stack_2 = Me.Item(from_stack_1)
  loc_B3702E: LitI2_Byte 0
  loc_B37030: LitVar_Missing var_E4
  loc_B37033: LitI2_Byte &HFF
  loc_B37035: FLdZeroAd var_C0
  loc_B37038: CVarAd
  loc_B3703C: PopAdLdVar
  loc_B3703D: FLdPr Me
  loc_B37040: MemLdI2 global_84
  loc_B37043: CI4UI1
  loc_B37044: FLdPr Me
  loc_B37047: MemLdStr global_80
  loc_B3704A: AryLock
  loc_B3704D: Ary1LdPr
  loc_B3704E: MemLdRfVar from_stack_1.global_40
  loc_B37051: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B37056: AryUnlock
  loc_B37059: FFreeAd var_B0 = ""
  loc_B37060: FFreeVar var_D4 = ""
  loc_B37067: FLdRfVar var_C0
  loc_B3706A: LitVarStr var_9C, "DeudMoas"
  loc_B3706F: PopAdLdVar
  loc_B37070: FLdRfVar var_B8
  loc_B37073: FLdRfVar var_B0
  loc_B37076: FLdPr var_150
  loc_B37079: from_stack_1v = clsbanco.RsFrmGet()
  loc_B3707E: FLdPr var_B0
  loc_B37081:  = Me.Fields
  loc_B37086: FLdPr var_B8
  loc_B37089: from_stack_2 = Me.Item(from_stack_1)
  loc_B3708E: LitI2_Byte 0
  loc_B37090: LitVar_Missing var_E4
  loc_B37093: LitI2_Byte &HFF
  loc_B37095: FLdZeroAd var_C0
  loc_B37098: CVarAd
  loc_B3709C: PopAdLdVar
  loc_B3709D: FLdPr Me
  loc_B370A0: MemLdI2 global_84
  loc_B370A3: CI4UI1
  loc_B370A4: FLdPr Me
  loc_B370A7: MemLdStr global_80
  loc_B370AA: AryLock
  loc_B370AD: Ary1LdPr
  loc_B370AE: MemLdRfVar from_stack_1.global_44
  loc_B370B1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B370B6: AryUnlock
  loc_B370B9: FFreeAd var_B0 = ""
  loc_B370C0: FFreeVar var_D4 = ""
  loc_B370C7: FLdRfVar var_C0
  loc_B370CA: LitVarStr var_9C, "AcreMoas"
  loc_B370CF: PopAdLdVar
  loc_B370D0: FLdRfVar var_B8
  loc_B370D3: FLdRfVar var_B0
  loc_B370D6: FLdPr var_150
  loc_B370D9: from_stack_1v = clsbanco.RsFrmGet()
  loc_B370DE: FLdPr var_B0
  loc_B370E1:  = Me.Fields
  loc_B370E6: FLdPr var_B8
  loc_B370E9: from_stack_2 = Me.Item(from_stack_1)
  loc_B370EE: LitI2_Byte 0
  loc_B370F0: LitVar_Missing var_E4
  loc_B370F3: LitI2_Byte &HFF
  loc_B370F5: FLdZeroAd var_C0
  loc_B370F8: CVarAd
  loc_B370FC: PopAdLdVar
  loc_B370FD: FLdPr Me
  loc_B37100: MemLdI2 global_84
  loc_B37103: CI4UI1
  loc_B37104: FLdPr Me
  loc_B37107: MemLdStr global_80
  loc_B3710A: AryLock
  loc_B3710D: Ary1LdPr
  loc_B3710E: MemLdRfVar from_stack_1.global_48
  loc_B37111: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B37116: AryUnlock
  loc_B37119: FFreeAd var_B0 = ""
  loc_B37120: FFreeVar var_D4 = ""
  loc_B37127: FLdRfVar var_C0
  loc_B3712A: LitVarStr var_9C, "DifeDeud"
  loc_B3712F: PopAdLdVar
  loc_B37130: FLdRfVar var_B8
  loc_B37133: FLdRfVar var_B0
  loc_B37136: FLdPr var_150
  loc_B37139: from_stack_1v = clsbanco.RsFrmGet()
  loc_B3713E: FLdPr var_B0
  loc_B37141:  = Me.Fields
  loc_B37146: FLdPr var_B8
  loc_B37149: from_stack_2 = Me.Item(from_stack_1)
  loc_B3714E: LitI2_Byte 0
  loc_B37150: LitVar_Missing var_E4
  loc_B37153: LitI2_Byte &HFF
  loc_B37155: FLdZeroAd var_C0
  loc_B37158: CVarAd
  loc_B3715C: PopAdLdVar
  loc_B3715D: FLdPr Me
  loc_B37160: MemLdI2 global_84
  loc_B37163: CI4UI1
  loc_B37164: FLdPr Me
  loc_B37167: MemLdStr global_80
  loc_B3716A: AryLock
  loc_B3716D: Ary1LdPr
  loc_B3716E: MemLdRfVar from_stack_1.bGenerado
  loc_B37171: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B37176: AryUnlock
  loc_B37179: FFreeAd var_B0 = ""
  loc_B37180: FFreeVar var_D4 = ""
  loc_B37187: FLdRfVar var_C0
  loc_B3718A: LitVarStr var_9C, "DifeAcre"
  loc_B3718F: PopAdLdVar
  loc_B37190: FLdRfVar var_B8
  loc_B37193: FLdRfVar var_B0
  loc_B37196: FLdPr var_150
  loc_B37199: from_stack_1v = clsbanco.RsFrmGet()
  loc_B3719E: FLdPr var_B0
  loc_B371A1:  = Me.Fields
  loc_B371A6: FLdPr var_B8
  loc_B371A9: from_stack_2 = Me.Item(from_stack_1)
  loc_B371AE: LitI2_Byte 0
  loc_B371B0: LitVar_Missing var_E4
  loc_B371B3: LitI2_Byte &HFF
  loc_B371B5: FLdZeroAd var_C0
  loc_B371B8: CVarAd
  loc_B371BC: PopAdLdVar
  loc_B371BD: FLdPr Me
  loc_B371C0: MemLdI2 global_84
  loc_B371C3: CI4UI1
  loc_B371C4: FLdPr Me
  loc_B371C7: MemLdStr global_80
  loc_B371CA: AryLock
  loc_B371CD: Ary1LdPr
  loc_B371CE: MemLdRfVar from_stack_1.global_56
  loc_B371D1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B371D6: AryUnlock
  loc_B371D9: FFreeAd var_B0 = ""
  loc_B371E0: FFreeVar var_D4 = ""
  loc_B371E7: FLdPr var_150
  loc_B371EA: Call clsbanco.MoveSiguiente()
  loc_B371EF: FLdPr Me
  loc_B371F2: MemLdRfVar from_stack_1.global_84
  loc_B371F5: NextI2 var_1AC, loc_B36C47
  loc_B371FA: LitNothing
  loc_B371FC: FStAd var_150 
  loc_B37200: LitI2_Byte &HFF
  loc_B37202: FLdPr Me
  loc_B37205: MemStI2 bGenerado
  loc_B37208: LitI4 0
  loc_B3720D: CI2I4
  loc_B3720E: FLdPr Me
  loc_B37211: Me.MousePointer = from_stack_1
  loc_B37216: LitVarStr var_9C, vbNullString
  loc_B3721B: PopAdLdVar
  loc_B3721C: FLdPr Me
  loc_B3721F: VCallAd Control_ID_statusBar
  loc_B37222: FStAdFunc var_B0
  loc_B37225: FLdPr var_B0
  loc_B37228: LateIdSt
  loc_B3722D: FFree1Ad var_B0
  loc_B37230: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A9FEFC
  'Data Table: 43CB50
  loc_A9FA10: FLdRfVar var_88
  loc_A9FA13: LitI2_Byte 0
  loc_A9FA15: LitI2_Byte &HFF
  loc_A9FA17: ImpAdLdI4 MemVar_C3D83C
  loc_A9FA1A: FLdPr Me
  loc_A9FA1D: MemLdRfVar from_stack_1.global_60
  loc_A9FA20: NewIfNullPr IFileSystem3
  loc_A9FA23: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A9FA28: ILdRf var_88
  loc_A9FA2B: FLdPr Me
  loc_A9FA2E: MemStVarAd
  loc_A9FA32: FFree1Ad var_88
  loc_A9FA35: Call Proc_184_14_AB8D3C()
  loc_A9FA3A: LitI2_Byte 1
  loc_A9FA3C: FLdPr Me
  loc_A9FA3F: MemLdRfVar from_stack_1.global_84
  loc_A9FA42: FLdPr Me
  loc_A9FA45: MemLdStr global_80
  loc_A9FA48: LitI2_Byte 1
  loc_A9FA4A: FnUBound
  loc_A9FA4C: CI2I4
  loc_A9FA4D: ForI2 var_8C
  loc_A9FA53: FLdPr Me
  loc_A9FA56: MemLdI2 global_84
  loc_A9FA59: CI4UI1
  loc_A9FA5A: FLdPr Me
  loc_A9FA5D: MemLdStr global_80
  loc_A9FA60: AryLock
  loc_A9FA63: Ary1LdRf
  loc_A9FA64: FStR4 var_94
  loc_A9FA67: LitVarStr var_A4, "<br>"
  loc_A9FA6C: PopAdLdVar
  loc_A9FA6D: FLdPr Me
  loc_A9FA70: MemLdRfVar from_stack_1.global_64
  loc_A9FA73: LdPrVar
  loc_A9FA75: LateMemCall
  loc_A9FA7B: LitVarStr var_A4, "<table width=""95" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""3"" cellspacing=""0"">"
  loc_A9FA80: PopAdLdVar
  loc_A9FA81: FLdPr Me
  loc_A9FA84: MemLdRfVar from_stack_1.global_64
  loc_A9FA87: LdPrVar
  loc_A9FA89: LateMemCall
  loc_A9FA8F: LitVarStr var_A4, "  <tr>"
  loc_A9FA94: PopAdLdVar
  loc_A9FA95: FLdPr Me
  loc_A9FA98: MemLdRfVar from_stack_1.global_64
  loc_A9FA9B: LdPrVar
  loc_A9FA9D: LateMemCall
  loc_A9FAA3: LitVarStr var_A4, "    <td align=""right"" class=""EncabezadoGrande"" nowrap=""nowrap"">Banco:</td>"
  loc_A9FAA8: PopAdLdVar
  loc_A9FAA9: FLdPr Me
  loc_A9FAAC: MemLdRfVar from_stack_1.global_64
  loc_A9FAAF: LdPrVar
  loc_A9FAB1: LateMemCall
  loc_A9FAB7: LitStr "    <td colspan=""4"" class=""Normal"">"
  loc_A9FABA: FMemLdR4 var_94(0)
  loc_A9FABF: ConcatStr
  loc_A9FAC0: FStStrNoPop var_B8
  loc_A9FAC3: LitStr " - "
  loc_A9FAC6: ConcatStr
  loc_A9FAC7: FStStrNoPop var_BC
  loc_A9FACA: FMemLdR4 var_94(4)
  loc_A9FACF: ConcatStr
  loc_A9FAD0: FStStrNoPop var_C0
  loc_A9FAD3: LitStr "</td>"
  loc_A9FAD6: ConcatStr
  loc_A9FAD7: CVarStr var_D0
  loc_A9FADA: PopAdLdVar
  loc_A9FADB: FLdPr Me
  loc_A9FADE: MemLdRfVar from_stack_1.global_64
  loc_A9FAE1: LdPrVar
  loc_A9FAE3: LateMemCall
  loc_A9FAE9: FFreeStr var_B8 = "": var_BC = ""
  loc_A9FAF2: FFree1Var var_D0 = ""
  loc_A9FAF5: LitVarStr var_A4, "  </tr>"
  loc_A9FAFA: PopAdLdVar
  loc_A9FAFB: FLdPr Me
  loc_A9FAFE: MemLdRfVar from_stack_1.global_64
  loc_A9FB01: LdPrVar
  loc_A9FB03: LateMemCall
  loc_A9FB09: LitVarStr var_A4, "  <tr>"
  loc_A9FB0E: PopAdLdVar
  loc_A9FB0F: FLdPr Me
  loc_A9FB12: MemLdRfVar from_stack_1.global_64
  loc_A9FB15: LdPrVar
  loc_A9FB17: LateMemCall
  loc_A9FB1D: LitVarStr var_A4, "    <td align=""right"" class=""EncabezadoGrande"" nowrap=""nowrap"">N&uacute;mero:</td>"
  loc_A9FB22: PopAdLdVar
  loc_A9FB23: FLdPr Me
  loc_A9FB26: MemLdRfVar from_stack_1.global_64
  loc_A9FB29: LdPrVar
  loc_A9FB2B: LateMemCall
  loc_A9FB31: LitStr "    <td colspan=""4"" class=""Normal"">"
  loc_A9FB34: FMemLdR4 var_94(8)
  loc_A9FB39: ConcatStr
  loc_A9FB3A: FStStrNoPop var_B8
  loc_A9FB3D: LitStr "</td>"
  loc_A9FB40: ConcatStr
  loc_A9FB41: CVarStr var_D0
  loc_A9FB44: PopAdLdVar
  loc_A9FB45: FLdPr Me
  loc_A9FB48: MemLdRfVar from_stack_1.global_64
  loc_A9FB4B: LdPrVar
  loc_A9FB4D: LateMemCall
  loc_A9FB53: FFree1Str var_B8
  loc_A9FB56: FFree1Var var_D0 = ""
  loc_A9FB59: LitVarStr var_A4, "  </tr>"
  loc_A9FB5E: PopAdLdVar
  loc_A9FB5F: FLdPr Me
  loc_A9FB62: MemLdRfVar from_stack_1.global_64
  loc_A9FB65: LdPrVar
  loc_A9FB67: LateMemCall
  loc_A9FB6D: LitVarStr var_A4, "  <tr>"
  loc_A9FB72: PopAdLdVar
  loc_A9FB73: FLdPr Me
  loc_A9FB76: MemLdRfVar from_stack_1.global_64
  loc_A9FB79: LdPrVar
  loc_A9FB7B: LateMemCall
  loc_A9FB81: LitVarStr var_A4, "    <td align=""right"" class=""EncabezadoGrande"" nowrap=""nowrap"">Cuenta Contable: </td>"
  loc_A9FB86: PopAdLdVar
  loc_A9FB87: FLdPr Me
  loc_A9FB8A: MemLdRfVar from_stack_1.global_64
  loc_A9FB8D: LdPrVar
  loc_A9FB8F: LateMemCall
  loc_A9FB95: LitStr "    <td colspan=""4"" class=""Normal"">"
  loc_A9FB98: FMemLdR4 var_94(12)
  loc_A9FB9D: ConcatStr
  loc_A9FB9E: FStStrNoPop var_B8
  loc_A9FBA1: LitStr " - "
  loc_A9FBA4: ConcatStr
  loc_A9FBA5: FStStrNoPop var_BC
  loc_A9FBA8: FMemLdR4 var_94(16)
  loc_A9FBAD: ConcatStr
  loc_A9FBAE: FStStrNoPop var_C0
  loc_A9FBB1: LitStr "</td>"
  loc_A9FBB4: ConcatStr
  loc_A9FBB5: CVarStr var_D0
  loc_A9FBB8: PopAdLdVar
  loc_A9FBB9: FLdPr Me
  loc_A9FBBC: MemLdRfVar from_stack_1.global_64
  loc_A9FBBF: LdPrVar
  loc_A9FBC1: LateMemCall
  loc_A9FBC7: FFreeStr var_B8 = "": var_BC = ""
  loc_A9FBD0: FFree1Var var_D0 = ""
  loc_A9FBD3: LitVarStr var_A4, "  </tr>"
  loc_A9FBD8: PopAdLdVar
  loc_A9FBD9: FLdPr Me
  loc_A9FBDC: MemLdRfVar from_stack_1.global_64
  loc_A9FBDF: LdPrVar
  loc_A9FBE1: LateMemCall
  loc_A9FBE7: LitVarStr var_A4, "  <tr align=""center"">"
  loc_A9FBEC: PopAdLdVar
  loc_A9FBED: FLdPr Me
  loc_A9FBF0: MemLdRfVar from_stack_1.global_64
  loc_A9FBF3: LdPrVar
  loc_A9FBF5: LateMemCall
  loc_A9FBFB: LitVarStr var_A4, "    <td>&nbsp;</td>"
  loc_A9FC00: PopAdLdVar
  loc_A9FC01: FLdPr Me
  loc_A9FC04: MemLdRfVar from_stack_1.global_64
  loc_A9FC07: LdPrVar
  loc_A9FC09: LateMemCall
  loc_A9FC0F: LitVarStr var_A4, "    <td width=""20" & Chr(37) & """ class=""Encabezado"">Debe</td>"
  loc_A9FC14: PopAdLdVar
  loc_A9FC15: FLdPr Me
  loc_A9FC18: MemLdRfVar from_stack_1.global_64
  loc_A9FC1B: LdPrVar
  loc_A9FC1D: LateMemCall
  loc_A9FC23: LitVarStr var_A4, "    <td width=""20" & Chr(37) & """ class=""Encabezado"">Haber</td>"
  loc_A9FC28: PopAdLdVar
  loc_A9FC29: FLdPr Me
  loc_A9FC2C: MemLdRfVar from_stack_1.global_64
  loc_A9FC2F: LdPrVar
  loc_A9FC31: LateMemCall
  loc_A9FC37: LitVarStr var_A4, "    <td width=""20" & Chr(37) & """ class=""Encabezado"">Deudor</td>"
  loc_A9FC3C: PopAdLdVar
  loc_A9FC3D: FLdPr Me
  loc_A9FC40: MemLdRfVar from_stack_1.global_64
  loc_A9FC43: LdPrVar
  loc_A9FC45: LateMemCall
  loc_A9FC4B: LitVarStr var_A4, "    <td width=""20" & Chr(37) & """ class=""Encabezado"">Acreedor</td>"
  loc_A9FC50: PopAdLdVar
  loc_A9FC51: FLdPr Me
  loc_A9FC54: MemLdRfVar from_stack_1.global_64
  loc_A9FC57: LdPrVar
  loc_A9FC59: LateMemCall
  loc_A9FC5F: LitVarStr var_A4, "  </tr>"
  loc_A9FC64: PopAdLdVar
  loc_A9FC65: FLdPr Me
  loc_A9FC68: MemLdRfVar from_stack_1.global_64
  loc_A9FC6B: LdPrVar
  loc_A9FC6D: LateMemCall
  loc_A9FC73: LitVarStr var_A4, "  <tr align=""right"">"
  loc_A9FC78: PopAdLdVar
  loc_A9FC79: FLdPr Me
  loc_A9FC7C: MemLdRfVar from_stack_1.global_64
  loc_A9FC7F: LdPrVar
  loc_A9FC81: LateMemCall
  loc_A9FC87: LitVarStr var_A4, "    <td class=""EncabezadoGrande"" nowrap=""nowrap"">Libro Banco:</td>"
  loc_A9FC8C: PopAdLdVar
  loc_A9FC8D: FLdPr Me
  loc_A9FC90: MemLdRfVar from_stack_1.global_64
  loc_A9FC93: LdPrVar
  loc_A9FC95: LateMemCall
  loc_A9FC9B: LitStr "    <td class=""LineaDato"">"
  loc_A9FC9E: FMemLdR4 var_94(20)
  loc_A9FCA3: ConcatStr
  loc_A9FCA4: FStStrNoPop var_B8
  loc_A9FCA7: LitStr "</td>"
  loc_A9FCAA: ConcatStr
  loc_A9FCAB: CVarStr var_D0
  loc_A9FCAE: PopAdLdVar
  loc_A9FCAF: FLdPr Me
  loc_A9FCB2: MemLdRfVar from_stack_1.global_64
  loc_A9FCB5: LdPrVar
  loc_A9FCB7: LateMemCall
  loc_A9FCBD: FFree1Str var_B8
  loc_A9FCC0: FFree1Var var_D0 = ""
  loc_A9FCC3: LitStr "    <td class=""LineaDato"">"
  loc_A9FCC6: FMemLdR4 var_94(24)
  loc_A9FCCB: ConcatStr
  loc_A9FCCC: FStStrNoPop var_B8
  loc_A9FCCF: LitStr "</td>"
  loc_A9FCD2: ConcatStr
  loc_A9FCD3: CVarStr var_D0
  loc_A9FCD6: PopAdLdVar
  loc_A9FCD7: FLdPr Me
  loc_A9FCDA: MemLdRfVar from_stack_1.global_64
  loc_A9FCDD: LdPrVar
  loc_A9FCDF: LateMemCall
  loc_A9FCE5: FFree1Str var_B8
  loc_A9FCE8: FFree1Var var_D0 = ""
  loc_A9FCEB: LitStr "    <td class=""LineaDato"">"
  loc_A9FCEE: FMemLdR4 var_94(28)
  loc_A9FCF3: ConcatStr
  loc_A9FCF4: FStStrNoPop var_B8
  loc_A9FCF7: LitStr "</td>"
  loc_A9FCFA: ConcatStr
  loc_A9FCFB: CVarStr var_D0
  loc_A9FCFE: PopAdLdVar
  loc_A9FCFF: FLdPr Me
  loc_A9FD02: MemLdRfVar from_stack_1.global_64
  loc_A9FD05: LdPrVar
  loc_A9FD07: LateMemCall
  loc_A9FD0D: FFree1Str var_B8
  loc_A9FD10: FFree1Var var_D0 = ""
  loc_A9FD13: LitStr "    <td class=""LineaDato"">"
  loc_A9FD16: FMemLdR4 var_94(32)
  loc_A9FD1B: ConcatStr
  loc_A9FD1C: FStStrNoPop var_B8
  loc_A9FD1F: LitStr "</td>"
  loc_A9FD22: ConcatStr
  loc_A9FD23: CVarStr var_D0
  loc_A9FD26: PopAdLdVar
  loc_A9FD27: FLdPr Me
  loc_A9FD2A: MemLdRfVar from_stack_1.global_64
  loc_A9FD2D: LdPrVar
  loc_A9FD2F: LateMemCall
  loc_A9FD35: FFree1Str var_B8
  loc_A9FD38: FFree1Var var_D0 = ""
  loc_A9FD3B: LitVarStr var_A4, "  </tr>"
  loc_A9FD40: PopAdLdVar
  loc_A9FD41: FLdPr Me
  loc_A9FD44: MemLdRfVar from_stack_1.global_64
  loc_A9FD47: LdPrVar
  loc_A9FD49: LateMemCall
  loc_A9FD4F: LitVarStr var_A4, "  <tr align=""right"">"
  loc_A9FD54: PopAdLdVar
  loc_A9FD55: FLdPr Me
  loc_A9FD58: MemLdRfVar from_stack_1.global_64
  loc_A9FD5B: LdPrVar
  loc_A9FD5D: LateMemCall
  loc_A9FD63: LitVarStr var_A4, "    <td class=""EncabezadoGrande"" nowrap=""nowrap"">Mayor General:</td>"
  loc_A9FD68: PopAdLdVar
  loc_A9FD69: FLdPr Me
  loc_A9FD6C: MemLdRfVar from_stack_1.global_64
  loc_A9FD6F: LdPrVar
  loc_A9FD71: LateMemCall
  loc_A9FD77: LitStr "    <td class=""LineaDato"">"
  loc_A9FD7A: FMemLdR4 var_94(36)
  loc_A9FD7F: ConcatStr
  loc_A9FD80: FStStrNoPop var_B8
  loc_A9FD83: LitStr "</td>"
  loc_A9FD86: ConcatStr
  loc_A9FD87: CVarStr var_D0
  loc_A9FD8A: PopAdLdVar
  loc_A9FD8B: FLdPr Me
  loc_A9FD8E: MemLdRfVar from_stack_1.global_64
  loc_A9FD91: LdPrVar
  loc_A9FD93: LateMemCall
  loc_A9FD99: FFree1Str var_B8
  loc_A9FD9C: FFree1Var var_D0 = ""
  loc_A9FD9F: LitStr "    <td class=""LineaDato"">"
  loc_A9FDA2: FMemLdR4 var_94(40)
  loc_A9FDA7: ConcatStr
  loc_A9FDA8: FStStrNoPop var_B8
  loc_A9FDAB: LitStr "</td>"
  loc_A9FDAE: ConcatStr
  loc_A9FDAF: CVarStr var_D0
  loc_A9FDB2: PopAdLdVar
  loc_A9FDB3: FLdPr Me
  loc_A9FDB6: MemLdRfVar from_stack_1.global_64
  loc_A9FDB9: LdPrVar
  loc_A9FDBB: LateMemCall
  loc_A9FDC1: FFree1Str var_B8
  loc_A9FDC4: FFree1Var var_D0 = ""
  loc_A9FDC7: LitStr "    <td class=""LineaDato"">"
  loc_A9FDCA: FMemLdR4 var_94(44)
  loc_A9FDCF: ConcatStr
  loc_A9FDD0: FStStrNoPop var_B8
  loc_A9FDD3: LitStr "</td>"
  loc_A9FDD6: ConcatStr
  loc_A9FDD7: CVarStr var_D0
  loc_A9FDDA: PopAdLdVar
  loc_A9FDDB: FLdPr Me
  loc_A9FDDE: MemLdRfVar from_stack_1.global_64
  loc_A9FDE1: LdPrVar
  loc_A9FDE3: LateMemCall
  loc_A9FDE9: FFree1Str var_B8
  loc_A9FDEC: FFree1Var var_D0 = ""
  loc_A9FDEF: LitStr "    <td class=""LineaDato"">"
  loc_A9FDF2: FMemLdR4 var_94(48)
  loc_A9FDF7: ConcatStr
  loc_A9FDF8: FStStrNoPop var_B8
  loc_A9FDFB: LitStr "</td>"
  loc_A9FDFE: ConcatStr
  loc_A9FDFF: CVarStr var_D0
  loc_A9FE02: PopAdLdVar
  loc_A9FE03: FLdPr Me
  loc_A9FE06: MemLdRfVar from_stack_1.global_64
  loc_A9FE09: LdPrVar
  loc_A9FE0B: LateMemCall
  loc_A9FE11: FFree1Str var_B8
  loc_A9FE14: FFree1Var var_D0 = ""
  loc_A9FE17: LitVarStr var_A4, "  </tr>"
  loc_A9FE1C: PopAdLdVar
  loc_A9FE1D: FLdPr Me
  loc_A9FE20: MemLdRfVar from_stack_1.global_64
  loc_A9FE23: LdPrVar
  loc_A9FE25: LateMemCall
  loc_A9FE2B: LitVarStr var_A4, "  <tr align=""right"">"
  loc_A9FE30: PopAdLdVar
  loc_A9FE31: FLdPr Me
  loc_A9FE34: MemLdRfVar from_stack_1.global_64
  loc_A9FE37: LdPrVar
  loc_A9FE39: LateMemCall
  loc_A9FE3F: LitVarStr var_A4, "    <td colspan=""3"" class=""Totales"">Diferencia:</td>"
  loc_A9FE44: PopAdLdVar
  loc_A9FE45: FLdPr Me
  loc_A9FE48: MemLdRfVar from_stack_1.global_64
  loc_A9FE4B: LdPrVar
  loc_A9FE4D: LateMemCall
  loc_A9FE53: LitStr "    <td class=""Totales"">"
  loc_A9FE56: FMemLdR4 var_94(52)
  loc_A9FE5B: ConcatStr
  loc_A9FE5C: FStStrNoPop var_B8
  loc_A9FE5F: LitStr "</td>"
  loc_A9FE62: ConcatStr
  loc_A9FE63: CVarStr var_D0
  loc_A9FE66: PopAdLdVar
  loc_A9FE67: FLdPr Me
  loc_A9FE6A: MemLdRfVar from_stack_1.global_64
  loc_A9FE6D: LdPrVar
  loc_A9FE6F: LateMemCall
  loc_A9FE75: FFree1Str var_B8
  loc_A9FE78: FFree1Var var_D0 = ""
  loc_A9FE7B: LitStr "    <td class=""Totales"">"
  loc_A9FE7E: FMemLdR4 var_94(56)
  loc_A9FE83: ConcatStr
  loc_A9FE84: FStStrNoPop var_B8
  loc_A9FE87: LitStr "</td>"
  loc_A9FE8A: ConcatStr
  loc_A9FE8B: CVarStr var_D0
  loc_A9FE8E: PopAdLdVar
  loc_A9FE8F: FLdPr Me
  loc_A9FE92: MemLdRfVar from_stack_1.global_64
  loc_A9FE95: LdPrVar
  loc_A9FE97: LateMemCall
  loc_A9FE9D: FFree1Str var_B8
  loc_A9FEA0: FFree1Var var_D0 = ""
  loc_A9FEA3: LitVarStr var_A4, "  </tr>"
  loc_A9FEA8: PopAdLdVar
  loc_A9FEA9: FLdPr Me
  loc_A9FEAC: MemLdRfVar from_stack_1.global_64
  loc_A9FEAF: LdPrVar
  loc_A9FEB1: LateMemCall
  loc_A9FEB7: LitVarStr var_A4, "</table>"
  loc_A9FEBC: PopAdLdVar
  loc_A9FEBD: FLdPr Me
  loc_A9FEC0: MemLdRfVar from_stack_1.global_64
  loc_A9FEC3: LdPrVar
  loc_A9FEC5: LateMemCall
  loc_A9FECB: LitI4 0
  loc_A9FED0: FStR4 var_94
  loc_A9FED3: AryUnlock
  loc_A9FED6: FLdPr Me
  loc_A9FED9: MemLdRfVar from_stack_1.global_84
  loc_A9FEDC: NextI2 var_8C, loc_A9FA53
  loc_A9FEE1: Call Proc_184_15_9715B4()
  loc_A9FEE6: FLdPr Me
  loc_A9FEE9: MemLdRfVar from_stack_1.global_64
  loc_A9FEEC: LdPrVar
  loc_A9FEEE: LateMemCall
  loc_A9FEF4: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A9FEF9: ExitProcHresult
  loc_A9FEFA: FnLBound
End Sub

Private Function Proc_184_14_AB8D3C() 'AB8D3C
  'Data Table: 43CB50
  loc_AB87B8: LitVarStr var_94, "<html>"
  loc_AB87BD: PopAdLdVar
  loc_AB87BE: FLdPr Me
  loc_AB87C1: MemLdRfVar from_stack_1.global_64
  loc_AB87C4: LdPrVar
  loc_AB87C6: LateMemCall
  loc_AB87CC: LitVarStr var_94, "<head>"
  loc_AB87D1: PopAdLdVar
  loc_AB87D2: FLdPr Me
  loc_AB87D5: MemLdRfVar from_stack_1.global_64
  loc_AB87D8: LdPrVar
  loc_AB87DA: LateMemCall
  loc_AB87E0: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AB87E5: PopAdLdVar
  loc_AB87E6: FLdPr Me
  loc_AB87E9: MemLdRfVar from_stack_1.global_64
  loc_AB87EC: LdPrVar
  loc_AB87EE: LateMemCall
  loc_AB87F4: LitStr "<title>"
  loc_AB87F7: FLdRfVar var_A8
  loc_AB87FA: FLdPr Me
  loc_AB87FD:  = Me.Caption
  loc_AB8802: ILdRf var_A8
  loc_AB8805: ConcatStr
  loc_AB8806: FStStrNoPop var_AC
  loc_AB8809: LitStr "</title>"
  loc_AB880C: ConcatStr
  loc_AB880D: CVarStr var_BC
  loc_AB8810: PopAdLdVar
  loc_AB8811: FLdPr Me
  loc_AB8814: MemLdRfVar from_stack_1.global_64
  loc_AB8817: LdPrVar
  loc_AB8819: LateMemCall
  loc_AB881F: FFreeStr var_A8 = ""
  loc_AB8826: FFree1Var var_BC = ""
  loc_AB8829: LitVarStr var_94, "<style type=""text/css"">"
  loc_AB882E: PopAdLdVar
  loc_AB882F: FLdPr Me
  loc_AB8832: MemLdRfVar from_stack_1.global_64
  loc_AB8835: LdPrVar
  loc_AB8837: LateMemCall
  loc_AB883D: LitVarStr var_94, ".Titulo1 {"
  loc_AB8842: PopAdLdVar
  loc_AB8843: FLdPr Me
  loc_AB8846: MemLdRfVar from_stack_1.global_64
  loc_AB8849: LdPrVar
  loc_AB884B: LateMemCall
  loc_AB8851: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AB8856: PopAdLdVar
  loc_AB8857: FLdPr Me
  loc_AB885A: MemLdRfVar from_stack_1.global_64
  loc_AB885D: LdPrVar
  loc_AB885F: LateMemCall
  loc_AB8865: LitVarStr var_94, " font-size: 18px;"
  loc_AB886A: PopAdLdVar
  loc_AB886B: FLdPr Me
  loc_AB886E: MemLdRfVar from_stack_1.global_64
  loc_AB8871: LdPrVar
  loc_AB8873: LateMemCall
  loc_AB8879: LitVarStr var_94, " font-weight: bold;"
  loc_AB887E: PopAdLdVar
  loc_AB887F: FLdPr Me
  loc_AB8882: MemLdRfVar from_stack_1.global_64
  loc_AB8885: LdPrVar
  loc_AB8887: LateMemCall
  loc_AB888D: LitVarStr var_94, "}"
  loc_AB8892: PopAdLdVar
  loc_AB8893: FLdPr Me
  loc_AB8896: MemLdRfVar from_stack_1.global_64
  loc_AB8899: LdPrVar
  loc_AB889B: LateMemCall
  loc_AB88A1: LitVarStr var_94, ".Titulo2 {"
  loc_AB88A6: PopAdLdVar
  loc_AB88A7: FLdPr Me
  loc_AB88AA: MemLdRfVar from_stack_1.global_64
  loc_AB88AD: LdPrVar
  loc_AB88AF: LateMemCall
  loc_AB88B5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AB88BA: PopAdLdVar
  loc_AB88BB: FLdPr Me
  loc_AB88BE: MemLdRfVar from_stack_1.global_64
  loc_AB88C1: LdPrVar
  loc_AB88C3: LateMemCall
  loc_AB88C9: LitVarStr var_94, " font-size: 14px;"
  loc_AB88CE: PopAdLdVar
  loc_AB88CF: FLdPr Me
  loc_AB88D2: MemLdRfVar from_stack_1.global_64
  loc_AB88D5: LdPrVar
  loc_AB88D7: LateMemCall
  loc_AB88DD: LitVarStr var_94, " font-weight: bold;"
  loc_AB88E2: PopAdLdVar
  loc_AB88E3: FLdPr Me
  loc_AB88E6: MemLdRfVar from_stack_1.global_64
  loc_AB88E9: LdPrVar
  loc_AB88EB: LateMemCall
  loc_AB88F1: LitVarStr var_94, "}"
  loc_AB88F6: PopAdLdVar
  loc_AB88F7: FLdPr Me
  loc_AB88FA: MemLdRfVar from_stack_1.global_64
  loc_AB88FD: LdPrVar
  loc_AB88FF: LateMemCall
  loc_AB8905: LitVarStr var_94, ".Normal {"
  loc_AB890A: PopAdLdVar
  loc_AB890B: FLdPr Me
  loc_AB890E: MemLdRfVar from_stack_1.global_64
  loc_AB8911: LdPrVar
  loc_AB8913: LateMemCall
  loc_AB8919: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AB891E: PopAdLdVar
  loc_AB891F: FLdPr Me
  loc_AB8922: MemLdRfVar from_stack_1.global_64
  loc_AB8925: LdPrVar
  loc_AB8927: LateMemCall
  loc_AB892D: LitVarStr var_94, " font-size: 14px;"
  loc_AB8932: PopAdLdVar
  loc_AB8933: FLdPr Me
  loc_AB8936: MemLdRfVar from_stack_1.global_64
  loc_AB8939: LdPrVar
  loc_AB893B: LateMemCall
  loc_AB8941: LitVarStr var_94, " font-style: normal;"
  loc_AB8946: PopAdLdVar
  loc_AB8947: FLdPr Me
  loc_AB894A: MemLdRfVar from_stack_1.global_64
  loc_AB894D: LdPrVar
  loc_AB894F: LateMemCall
  loc_AB8955: LitVarStr var_94, " font-weight: normal;"
  loc_AB895A: PopAdLdVar
  loc_AB895B: FLdPr Me
  loc_AB895E: MemLdRfVar from_stack_1.global_64
  loc_AB8961: LdPrVar
  loc_AB8963: LateMemCall
  loc_AB8969: LitVarStr var_94, " font-variant: normal;"
  loc_AB896E: PopAdLdVar
  loc_AB896F: FLdPr Me
  loc_AB8972: MemLdRfVar from_stack_1.global_64
  loc_AB8975: LdPrVar
  loc_AB8977: LateMemCall
  loc_AB897D: LitVarStr var_94, "}"
  loc_AB8982: PopAdLdVar
  loc_AB8983: FLdPr Me
  loc_AB8986: MemLdRfVar from_stack_1.global_64
  loc_AB8989: LdPrVar
  loc_AB898B: LateMemCall
  loc_AB8991: LitVarStr var_94, ".EncabezadoGrande {"
  loc_AB8996: PopAdLdVar
  loc_AB8997: FLdPr Me
  loc_AB899A: MemLdRfVar from_stack_1.global_64
  loc_AB899D: LdPrVar
  loc_AB899F: LateMemCall
  loc_AB89A5: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_AB89AA: PopAdLdVar
  loc_AB89AB: FLdPr Me
  loc_AB89AE: MemLdRfVar from_stack_1.global_64
  loc_AB89B1: LdPrVar
  loc_AB89B3: LateMemCall
  loc_AB89B9: LitVarStr var_94, " font-size: 14px;"
  loc_AB89BE: PopAdLdVar
  loc_AB89BF: FLdPr Me
  loc_AB89C2: MemLdRfVar from_stack_1.global_64
  loc_AB89C5: LdPrVar
  loc_AB89C7: LateMemCall
  loc_AB89CD: LitVarStr var_94, " font-weight: bold;"
  loc_AB89D2: PopAdLdVar
  loc_AB89D3: FLdPr Me
  loc_AB89D6: MemLdRfVar from_stack_1.global_64
  loc_AB89D9: LdPrVar
  loc_AB89DB: LateMemCall
  loc_AB89E1: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_AB89E6: PopAdLdVar
  loc_AB89E7: FLdPr Me
  loc_AB89EA: MemLdRfVar from_stack_1.global_64
  loc_AB89ED: LdPrVar
  loc_AB89EF: LateMemCall
  loc_AB89F5: LitVarStr var_94, "}"
  loc_AB89FA: PopAdLdVar
  loc_AB89FB: FLdPr Me
  loc_AB89FE: MemLdRfVar from_stack_1.global_64
  loc_AB8A01: LdPrVar
  loc_AB8A03: LateMemCall
  loc_AB8A09: LitVarStr var_94, ".Encabezado {"
  loc_AB8A0E: PopAdLdVar
  loc_AB8A0F: FLdPr Me
  loc_AB8A12: MemLdRfVar from_stack_1.global_64
  loc_AB8A15: LdPrVar
  loc_AB8A17: LateMemCall
  loc_AB8A1D: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_AB8A22: PopAdLdVar
  loc_AB8A23: FLdPr Me
  loc_AB8A26: MemLdRfVar from_stack_1.global_64
  loc_AB8A29: LdPrVar
  loc_AB8A2B: LateMemCall
  loc_AB8A31: LitVarStr var_94, " font-size: 12px;"
  loc_AB8A36: PopAdLdVar
  loc_AB8A37: FLdPr Me
  loc_AB8A3A: MemLdRfVar from_stack_1.global_64
  loc_AB8A3D: LdPrVar
  loc_AB8A3F: LateMemCall
  loc_AB8A45: LitVarStr var_94, " font-weight: bold;"
  loc_AB8A4A: PopAdLdVar
  loc_AB8A4B: FLdPr Me
  loc_AB8A4E: MemLdRfVar from_stack_1.global_64
  loc_AB8A51: LdPrVar
  loc_AB8A53: LateMemCall
  loc_AB8A59: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_AB8A5E: PopAdLdVar
  loc_AB8A5F: FLdPr Me
  loc_AB8A62: MemLdRfVar from_stack_1.global_64
  loc_AB8A65: LdPrVar
  loc_AB8A67: LateMemCall
  loc_AB8A6D: LitVarStr var_94, "}"
  loc_AB8A72: PopAdLdVar
  loc_AB8A73: FLdPr Me
  loc_AB8A76: MemLdRfVar from_stack_1.global_64
  loc_AB8A79: LdPrVar
  loc_AB8A7B: LateMemCall
  loc_AB8A81: LitVarStr var_94, ".LineaDato {"
  loc_AB8A86: PopAdLdVar
  loc_AB8A87: FLdPr Me
  loc_AB8A8A: MemLdRfVar from_stack_1.global_64
  loc_AB8A8D: LdPrVar
  loc_AB8A8F: LateMemCall
  loc_AB8A95: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AB8A9A: PopAdLdVar
  loc_AB8A9B: FLdPr Me
  loc_AB8A9E: MemLdRfVar from_stack_1.global_64
  loc_AB8AA1: LdPrVar
  loc_AB8AA3: LateMemCall
  loc_AB8AA9: LitVarStr var_94, " font-size: 12px;"
  loc_AB8AAE: PopAdLdVar
  loc_AB8AAF: FLdPr Me
  loc_AB8AB2: MemLdRfVar from_stack_1.global_64
  loc_AB8AB5: LdPrVar
  loc_AB8AB7: LateMemCall
  loc_AB8ABD: LitVarStr var_94, "}"
  loc_AB8AC2: PopAdLdVar
  loc_AB8AC3: FLdPr Me
  loc_AB8AC6: MemLdRfVar from_stack_1.global_64
  loc_AB8AC9: LdPrVar
  loc_AB8ACB: LateMemCall
  loc_AB8AD1: LitVarStr var_94, ".Totales {"
  loc_AB8AD6: PopAdLdVar
  loc_AB8AD7: FLdPr Me
  loc_AB8ADA: MemLdRfVar from_stack_1.global_64
  loc_AB8ADD: LdPrVar
  loc_AB8ADF: LateMemCall
  loc_AB8AE5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AB8AEA: PopAdLdVar
  loc_AB8AEB: FLdPr Me
  loc_AB8AEE: MemLdRfVar from_stack_1.global_64
  loc_AB8AF1: LdPrVar
  loc_AB8AF3: LateMemCall
  loc_AB8AF9: LitVarStr var_94, " font-size: 14px;"
  loc_AB8AFE: PopAdLdVar
  loc_AB8AFF: FLdPr Me
  loc_AB8B02: MemLdRfVar from_stack_1.global_64
  loc_AB8B05: LdPrVar
  loc_AB8B07: LateMemCall
  loc_AB8B0D: LitVarStr var_94, " font-weight: bold;"
  loc_AB8B12: PopAdLdVar
  loc_AB8B13: FLdPr Me
  loc_AB8B16: MemLdRfVar from_stack_1.global_64
  loc_AB8B19: LdPrVar
  loc_AB8B1B: LateMemCall
  loc_AB8B21: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_AB8B26: PopAdLdVar
  loc_AB8B27: FLdPr Me
  loc_AB8B2A: MemLdRfVar from_stack_1.global_64
  loc_AB8B2D: LdPrVar
  loc_AB8B2F: LateMemCall
  loc_AB8B35: LitVarStr var_94, "}"
  loc_AB8B3A: PopAdLdVar
  loc_AB8B3B: FLdPr Me
  loc_AB8B3E: MemLdRfVar from_stack_1.global_64
  loc_AB8B41: LdPrVar
  loc_AB8B43: LateMemCall
  loc_AB8B49: LitVarStr var_94, "</style>"
  loc_AB8B4E: PopAdLdVar
  loc_AB8B4F: FLdPr Me
  loc_AB8B52: MemLdRfVar from_stack_1.global_64
  loc_AB8B55: LdPrVar
  loc_AB8B57: LateMemCall
  loc_AB8B5D: LitI4 0
  loc_AB8B62: FStStrCopy var_AC
  loc_AB8B65: FLdRfVar var_AC
  loc_AB8B68: LitI4 0
  loc_AB8B6D: FStStrCopy var_A8
  loc_AB8B70: FLdRfVar var_A8
  loc_AB8B73: LitI2_Byte 0
  loc_AB8B75: PopTmpLdAd2 var_BE
  loc_AB8B78: FLdPr Me
  loc_AB8B7B: MemLdRfVar from_stack_1.global_64
  loc_AB8B7E: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AB8B83: FFreeStr var_A8 = ""
  loc_AB8B8A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AB8B8F: PopAdLdVar
  loc_AB8B90: FLdPr Me
  loc_AB8B93: MemLdRfVar from_stack_1.global_64
  loc_AB8B96: LdPrVar
  loc_AB8B98: LateMemCall
  loc_AB8B9E: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_AB8BA3: PopAdLdVar
  loc_AB8BA4: FLdPr Me
  loc_AB8BA7: MemLdRfVar from_stack_1.global_64
  loc_AB8BAA: LdPrVar
  loc_AB8BAC: LateMemCall
  loc_AB8BB2: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ colspan=""2"" align=""center"" valign=""middle""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_AB8BB7: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AB8BBC: FStVarCopyObj var_BC
  loc_AB8BBF: FLdRfVar var_BC
  loc_AB8BC2: FLdRfVar var_D0
  loc_AB8BC5: ImpAdCallFPR4  = Ucase()
  loc_AB8BCA: FLdRfVar var_D0
  loc_AB8BCD: ConcatVar var_E0
  loc_AB8BD1: LitVarStr var_F0, "<br><br>"
  loc_AB8BD6: ConcatVar var_100
  loc_AB8BDA: FLdRfVar var_A8
  loc_AB8BDD: FLdPr Me
  loc_AB8BE0:  = Me.Caption
  loc_AB8BE5: FLdZeroAd var_A8
  loc_AB8BE8: CVarStr var_110
  loc_AB8BEB: ConcatVar var_120
  loc_AB8BEF: LitVarStr var_130, "</th>"
  loc_AB8BF4: ConcatVar var_140
  loc_AB8BF8: PopAdLdVar
  loc_AB8BF9: FLdPr Me
  loc_AB8BFC: MemLdRfVar from_stack_1.global_64
  loc_AB8BFF: LdPrVar
  loc_AB8C01: LateMemCall
  loc_AB8C07: FFreeVar var_BC = "": var_D0 = "": var_E0 = "": var_100 = "": var_110 = "": var_120 = ""
  loc_AB8C18: LitVarStr var_94, "  </tr>"
  loc_AB8C1D: PopAdLdVar
  loc_AB8C1E: FLdPr Me
  loc_AB8C21: MemLdRfVar from_stack_1.global_64
  loc_AB8C24: LdPrVar
  loc_AB8C26: LateMemCall
  loc_AB8C2C: LitVarStr var_94, "  <tr>"
  loc_AB8C31: PopAdLdVar
  loc_AB8C32: FLdPr Me
  loc_AB8C35: MemLdRfVar from_stack_1.global_64
  loc_AB8C38: LdPrVar
  loc_AB8C3A: LateMemCall
  loc_AB8C40: LitVarStr var_94, "    <th colspan=""2""><hr></th>"
  loc_AB8C45: PopAdLdVar
  loc_AB8C46: FLdPr Me
  loc_AB8C49: MemLdRfVar from_stack_1.global_64
  loc_AB8C4C: LdPrVar
  loc_AB8C4E: LateMemCall
  loc_AB8C54: LitVarStr var_94, "  </tr>"
  loc_AB8C59: PopAdLdVar
  loc_AB8C5A: FLdPr Me
  loc_AB8C5D: MemLdRfVar from_stack_1.global_64
  loc_AB8C60: LdPrVar
  loc_AB8C62: LateMemCall
  loc_AB8C68: LitVarStr var_94, "  <tr align=""left"">"
  loc_AB8C6D: PopAdLdVar
  loc_AB8C6E: FLdPr Me
  loc_AB8C71: MemLdRfVar from_stack_1.global_64
  loc_AB8C74: LdPrVar
  loc_AB8C76: LateMemCall
  loc_AB8C7C: LitStr "    <th>Periodo: <span class=""Normal"">"
  loc_AB8C7F: FLdRfVar var_A8
  loc_AB8C82: FLdPr Me
  loc_AB8C85: VCallAd Control_ID_cboPeriodo
  loc_AB8C88: FStAdFunc var_154
  loc_AB8C8B: FLdPr var_154
  loc_AB8C8E:  = Me.Text
  loc_AB8C93: ILdRf var_A8
  loc_AB8C96: ConcatStr
  loc_AB8C97: FStStrNoPop var_AC
  loc_AB8C9A: LitStr "</span></th>"
  loc_AB8C9D: ConcatStr
  loc_AB8C9E: CVarStr var_BC
  loc_AB8CA1: PopAdLdVar
  loc_AB8CA2: FLdPr Me
  loc_AB8CA5: MemLdRfVar from_stack_1.global_64
  loc_AB8CA8: LdPrVar
  loc_AB8CAA: LateMemCall
  loc_AB8CB0: FFreeStr var_A8 = ""
  loc_AB8CB7: FFree1Ad var_154
  loc_AB8CBA: FFree1Var var_BC = ""
  loc_AB8CBD: LitStr "    <th align=""right"">Mes: <span class=""Normal"">"
  loc_AB8CC0: FLdRfVar var_A8
  loc_AB8CC3: FLdPr Me
  loc_AB8CC6: VCallAd Control_ID_cboMes
  loc_AB8CC9: FStAdFunc var_154
  loc_AB8CCC: FLdPr var_154
  loc_AB8CCF:  = Me.Text
  loc_AB8CD4: ILdRf var_A8
  loc_AB8CD7: ConcatStr
  loc_AB8CD8: FStStrNoPop var_AC
  loc_AB8CDB: LitStr " ("
  loc_AB8CDE: ConcatStr
  loc_AB8CDF: FStStrNoPop var_158
  loc_AB8CE2: FLdPr Me
  loc_AB8CE5: MemLdStr global_88
  loc_AB8CE8: ConcatStr
  loc_AB8CE9: FStStrNoPop var_15C
  loc_AB8CEC: LitStr ")</span></th>"
  loc_AB8CEF: ConcatStr
  loc_AB8CF0: CVarStr var_BC
  loc_AB8CF3: PopAdLdVar
  loc_AB8CF4: FLdPr Me
  loc_AB8CF7: MemLdRfVar from_stack_1.global_64
  loc_AB8CFA: LdPrVar
  loc_AB8CFC: LateMemCall
  loc_AB8D02: FFreeStr var_A8 = "": var_AC = "": var_158 = ""
  loc_AB8D0D: FFree1Ad var_154
  loc_AB8D10: FFree1Var var_BC = ""
  loc_AB8D13: LitVarStr var_94, "  </tr>"
  loc_AB8D18: PopAdLdVar
  loc_AB8D19: FLdPr Me
  loc_AB8D1C: MemLdRfVar from_stack_1.global_64
  loc_AB8D1F: LdPrVar
  loc_AB8D21: LateMemCall
  loc_AB8D27: LitVarStr var_94, "</table>"
  loc_AB8D2C: PopAdLdVar
  loc_AB8D2D: FLdPr Me
  loc_AB8D30: MemLdRfVar from_stack_1.global_64
  loc_AB8D33: LdPrVar
  loc_AB8D35: LateMemCall
  loc_AB8D3B: ExitProcHresult
End Function

Private Function Proc_184_15_9715B4() '9715B4
  'Data Table: 43CB50
  loc_971588: LitVarStr var_94, "</body>"
  loc_97158D: PopAdLdVar
  loc_97158E: FLdPr Me
  loc_971591: MemLdRfVar from_stack_1.global_64
  loc_971594: LdPrVar
  loc_971596: LateMemCall
  loc_97159C: LitVarStr var_94, "</html>"
  loc_9715A1: PopAdLdVar
  loc_9715A2: FLdPr Me
  loc_9715A5: MemLdRfVar from_stack_1.global_64
  loc_9715A8: LdPrVar
  loc_9715AA: LateMemCall
  loc_9715B0: ExitProcHresult
  loc_9715B1: CI4R8
  loc_9715B2: IStDarg var_27FD
End Function
