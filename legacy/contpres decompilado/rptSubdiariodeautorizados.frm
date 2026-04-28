VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptSubdiariodeautorizados
  Caption = "Subdiario de autorizados"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptSubdiariodeautorizados.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6195
  ClientHeight = 2970
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2715
    Width = 6195
    Height = 255
    TabIndex = 15
    OleObjectBlob = "rptSubdiariodeautorizados.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5280
    Top = 1800
    Width = 735
    Height = 615
    TabIndex = 13
    Cancel = -1  'True
    Picture = "rptSubdiariodeautorizados.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptSubdiariodeautorizados.frx":0B9C
    Left = 5520
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1560
    Width = 1815
    Height = 1095
    TabIndex = 11
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 12
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1560
    Width = 3015
    Height = 1095
    TabIndex = 8
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 9
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 5895
    Height = 1455
    TabIndex = 0
    Begin VB.CommandButton cmdCalHasta
      Left = 2520
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 7
      Picture = "rptSubdiariodeautorizados.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2520
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptSubdiariodeautorizados.frx":1142
      Style = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4320
      Top = 480
      Width = 1335
      Height = 495
      TabIndex = 4
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1320
      Top = 360
      Width = 1095
      Height = 285
      TabIndex = 2
      OleObjectBlob = "rptSubdiariodeautorizados.frx":1684
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1320
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 6
      OleObjectBlob = "rptSubdiariodeautorizados.frx":170C
    End
    Begin VB.Label Label2
      Caption = "Hasta:"
      Left = 720
      Top = 840
      Width = 465
      Height = 195
      TabIndex = 5
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Desde:"
      Left = 720
      Top = 360
      Width = 510
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5400
    Top = 2160
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptSubdiariodeautorizados.frx":1794
  End
End

Attribute VB_Name = "rptSubdiariodeautorizados"

Public bGenerado As Boolean

Private Type UDT_1_0059F730
  bStruc(24) As Byte ' String fields: 6
End Type

Private Type UDT_2_0061773C
  bStruc(20) As Byte ' String fields: 5
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98B864
  'Data Table: 44C814
  loc_98B82C: FLdPr Me
  loc_98B82F: VCallAd Control_ID_statusBar
  loc_98B832: FStAdFunc var_88
  loc_98B835: FLdPr var_88
  loc_98B838: LateIdLdVar var_98 DispID_1 0
  loc_98B83F: CStrVarTmp
  loc_98B840: CVarStr var_A8
  loc_98B843: PopAdLdVar
  loc_98B844: FLdPr Me
  loc_98B847: VCallAd Control_ID_statusBar
  loc_98B84A: FStAdFunc var_BC
  loc_98B84D: FLdPr var_BC
  loc_98B850: LateIdSt
  loc_98B855: FFreeAd var_88 = ""
  loc_98B85C: FFreeVar var_98 = ""
  loc_98B863: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95B55C
  'Data Table: 44C814
  loc_95B544: LitI2_Byte 0
  loc_95B546: ILdRf Me
  loc_95B549: CastAd
  loc_95B54C: FStAdFunc var_88
  loc_95B54F: FLdRfVar var_88
  loc_95B552: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95B557: FFree1Ad var_88
  loc_95B55A: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95B640
  'Data Table: 44C814
  loc_95B628: ILdRf Me
  loc_95B62B: CastAd
  loc_95B62E: FStAdFunc var_88
  loc_95B631: FLdRfVar var_88
  loc_95B634: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95B639: FFree1Ad var_88
  loc_95B63C: ExitProcHresult
  loc_95B63D: AryLdRf
End Sub

Private Sub cmdSalir_Click() '97B1D0
  'Data Table: 44C814
  loc_97B1A0: LitVarStr var_94, "Cerrando..."
  loc_97B1A5: PopAdLdVar
  loc_97B1A6: FLdPr Me
  loc_97B1A9: VCallAd Control_ID_statusBar
  loc_97B1AC: FStAdFunc var_A8
  loc_97B1AF: FLdPr var_A8
  loc_97B1B2: LateIdSt
  loc_97B1B7: FFree1Ad var_A8
  loc_97B1BA: ILdRf Me
  loc_97B1BD: FStAdNoPop
  loc_97B1C1: ImpAdLdRf MemVar_C44F9C
  loc_97B1C4: NewIfNullPr Me
  loc_97B1C7: Me.Global.Unload from_stack_1
  loc_97B1CC: FFree1Ad var_A8
  loc_97B1CF: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9BBDD4
  'Data Table: 44C814
  loc_9BBD24: LitI2_Byte 0
  loc_9BBD26: FLdPr Me
  loc_9BBD29: MemStI2 bGenerado
  loc_9BBD2C: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9BBD31: LitI2_Byte 0
  loc_9BBD33: PopTmpLdAd2 var_86
  loc_9BBD36: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9BBD3B: CVarDate var_A8
  loc_9BBD3F: FLdRfVar var_B8
  loc_9BBD42: ImpAdCallFPR4  = Year()
  loc_9BBD47: LitI2_Byte 0
  loc_9BBD49: PopTmpLdAd2 var_BA
  loc_9BBD4C: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9BBD51: CVarDate var_DC
  loc_9BBD55: FLdRfVar var_EC
  loc_9BBD58: ImpAdCallFPR4  = Month()
  loc_9BBD5D: LitI2_Byte 1
  loc_9BBD5F: FLdRfVar var_EC
  loc_9BBD62: CI2Var
  loc_9BBD63: FLdRfVar var_B8
  loc_9BBD66: CI2Var
  loc_9BBD67: FLdRfVar var_FC
  loc_9BBD6A: ImpAdCallFPR4  = DateSerial(, , )
  loc_9BBD6F: FLdRfVar var_FC
  loc_9BBD72: CStrVarTmp
  loc_9BBD73: CVarStr var_10C
  loc_9BBD76: PopAdLdVar
  loc_9BBD77: FLdPr Me
  loc_9BBD7A: VCallAd Control_ID_mskDesde
  loc_9BBD7D: FStAdFunc var_120
  loc_9BBD80: FLdPr var_120
  loc_9BBD83: LateIdSt
  loc_9BBD88: FFree1Ad var_120
  loc_9BBD8B: FFreeVar var_A8 = "": var_DC = "": var_B8 = "": var_EC = "": var_FC = ""
  loc_9BBD9A: ImpAdLdFPR8 MemVar_C3D04C
  loc_9BBD9D: CStrDate
  loc_9BBD9F: CVarStr var_A8
  loc_9BBDA2: PopAdLdVar
  loc_9BBDA3: FLdPr Me
  loc_9BBDA6: VCallAd Control_ID_mskHasta
  loc_9BBDA9: FStAdFunc var_120
  loc_9BBDAC: FLdPr var_120
  loc_9BBDAF: LateIdSt
  loc_9BBDB4: FFree1Ad var_120
  loc_9BBDB7: FFree1Var var_A8 = ""
  loc_9BBDBA: Call HabilitarCriterio()
  loc_9BBDBF: ILdRf Me
  loc_9BBDC2: CastAd
  loc_9BBDC5: FStAdFunc var_120
  loc_9BBDC8: FLdRfVar var_120
  loc_9BBDCB: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9BBDD0: FFree1Ad var_120
  loc_9BBDD3: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95B6D8
  'Data Table: 44C814
  loc_95B6C0: ILdRf Me
  loc_95B6C3: CastAd
  loc_95B6C6: FStAdFunc var_88
  loc_95B6C9: FLdRfVar var_88
  loc_95B6CC: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95B6D1: FFree1Ad var_88
  loc_95B6D4: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '9526F8
  'Data Table: 44C814
  loc_9526E4: FLdPr Me
  loc_9526E7: VCallAd Control_ID_mskDesde
  loc_9526EA: CVarAd
  loc_9526EE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9526F3: FFree1Var var_94 = ""
  loc_9526F6: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9C4A98
  'Data Table: 44C814
  loc_9C49D4: FLdPr Me
  loc_9C49D7: VCallAd Control_ID_mskDesde
  loc_9C49DA: FStAdFunc var_88
  loc_9C49DD: FLdPr var_88
  loc_9C49E0: LateIdLdVar var_98 DispID_22 0
  loc_9C49E7: CStrVarTmp
  loc_9C49E8: FStStrNoPop var_9C
  loc_9C49EB: LitStr vbNullString
  loc_9C49EE: NeStr
  loc_9C49F0: FFree1Str var_9C
  loc_9C49F3: FFree1Ad var_88
  loc_9C49F6: FFree1Var var_98 = ""
  loc_9C49F9: BranchF loc_9C4A94
  loc_9C49FC: FLdPr Me
  loc_9C49FF: VCallAd Control_ID_mskDesde
  loc_9C4A02: FStAdFunc var_88
  loc_9C4A05: FLdPr var_88
  loc_9C4A08: LateIdLdVar var_98 DispID_15 0
  loc_9C4A0F: PopAd
  loc_9C4A11: FLdPr Me
  loc_9C4A14: VCallAd Control_ID_mskDesde
  loc_9C4A17: FStAdFunc var_AC
  loc_9C4A1A: LitI2_Byte &HFF
  loc_9C4A1C: PopTmpLdAd2 var_A2
  loc_9C4A1F: FLdZeroAd var_AC
  loc_9C4A22: FStAdFunc var_A0
  loc_9C4A25: FLdRfVar var_A0
  loc_9C4A28: LitStr vbNullString
  loc_9C4A2B: LitI2_Byte 0
  loc_9C4A2D: LitI2_Byte 0
  loc_9C4A2F: FLdRfVar var_98
  loc_9C4A32: CStrVarTmp
  loc_9C4A33: FStStrNoPop var_9C
  loc_9C4A36: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C4A3B: FStStrNoPop var_A8
  loc_9C4A3E: FLdPr Me
  loc_9C4A41: MemStStrCopy
  loc_9C4A45: FFreeStr var_9C = ""
  loc_9C4A4C: FFreeAd var_88 = "": var_A0 = ""
  loc_9C4A55: FFree1Var var_98 = ""
  loc_9C4A58: FLdPr Me
  loc_9C4A5B: VCallAd Control_ID_mskDesde
  loc_9C4A5E: FStAdFunc var_B0
  loc_9C4A61: LitNothing
  loc_9C4A63: CastAd
  loc_9C4A66: FStAdFunc var_AC
  loc_9C4A69: FLdRfVar var_AC
  loc_9C4A6C: FLdZeroAd var_B0
  loc_9C4A6F: FStAdFuncNoPop
  loc_9C4A72: CastAd
  loc_9C4A75: FStAdFunc var_A0
  loc_9C4A78: FLdRfVar var_A0
  loc_9C4A7B: FLdPr Me
  loc_9C4A7E: MemLdRfVar from_stack_1.global_100
  loc_9C4A81: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C4A86: IStI2 arg_C
  loc_9C4A89: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9C4A94: ExitProcHresult
  loc_9C4A95: GeR8
  loc_9C4A96: ExitProcR8
End Function

Private Sub mskHasta_UnknownEvent_0 '952788
  'Data Table: 44C814
  loc_952774: FLdPr Me
  loc_952777: VCallAd Control_ID_mskHasta
  loc_95277A: CVarAd
  loc_95277E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952783: FFree1Var var_94 = ""
  loc_952786: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B1904
  'Data Table: 44C814
  loc_9B1868: FLdPr Me
  loc_9B186B: VCallAd Control_ID_mskHasta
  loc_9B186E: FStAdFunc var_88
  loc_9B1871: FLdPr var_88
  loc_9B1874: LateIdLdVar var_98 DispID_15 0
  loc_9B187B: PopAd
  loc_9B187D: FLdPr Me
  loc_9B1880: VCallAd Control_ID_mskHasta
  loc_9B1883: FStAdFunc var_AC
  loc_9B1886: LitI2_Byte &HFF
  loc_9B1888: PopTmpLdAd2 var_A2
  loc_9B188B: FLdZeroAd var_AC
  loc_9B188E: FStAdFunc var_A0
  loc_9B1891: FLdRfVar var_A0
  loc_9B1894: LitStr vbNullString
  loc_9B1897: LitI2_Byte 0
  loc_9B1899: LitI2_Byte 0
  loc_9B189B: FLdRfVar var_98
  loc_9B189E: CStrVarTmp
  loc_9B189F: FStStrNoPop var_9C
  loc_9B18A2: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B18A7: FStStrNoPop var_A8
  loc_9B18AA: FLdPr Me
  loc_9B18AD: MemStStrCopy
  loc_9B18B1: FFreeStr var_9C = ""
  loc_9B18B8: FFreeAd var_88 = "": var_A0 = ""
  loc_9B18C1: FFree1Var var_98 = ""
  loc_9B18C4: FLdPr Me
  loc_9B18C7: VCallAd Control_ID_mskHasta
  loc_9B18CA: FStAdFunc var_B0
  loc_9B18CD: LitNothing
  loc_9B18CF: CastAd
  loc_9B18D2: FStAdFunc var_AC
  loc_9B18D5: FLdRfVar var_AC
  loc_9B18D8: FLdZeroAd var_B0
  loc_9B18DB: FStAdFuncNoPop
  loc_9B18DE: CastAd
  loc_9B18E1: FStAdFunc var_A0
  loc_9B18E4: FLdRfVar var_A0
  loc_9B18E7: FLdPr Me
  loc_9B18EA: MemLdRfVar from_stack_1.global_100
  loc_9B18ED: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B18F2: IStI2 arg_C
  loc_9B18F5: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B1900: ExitProcHresult
End Function

Private Sub cmdCalHasta_Click() '97F140
  'Data Table: 44C814
  loc_97F10C: LitVar_Missing var_A4
  loc_97F10F: PopAdLdVar
  loc_97F110: LitVarI4
  loc_97F118: PopAdLdVar
  loc_97F119: ImpAdLdRf MemVar_C3D9A8
  loc_97F11C: NewIfNullPr frmCalendario
  loc_97F11F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97F124: ImpAdLdRf MemVar_C3D038
  loc_97F127: CDargRef
  loc_97F12B: FLdPr Me
  loc_97F12E: VCallAd Control_ID_mskHasta
  loc_97F131: FStAdFunc var_A8
  loc_97F134: FLdPr var_A8
  loc_97F137: LateIdSt
  loc_97F13C: FFree1Ad var_A8
  loc_97F13F: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97F480
  'Data Table: 44C814
  loc_97F44C: LitVar_Missing var_A4
  loc_97F44F: PopAdLdVar
  loc_97F450: LitVarI4
  loc_97F458: PopAdLdVar
  loc_97F459: ImpAdLdRf MemVar_C3D9A8
  loc_97F45C: NewIfNullPr frmCalendario
  loc_97F45F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97F464: ImpAdLdRf MemVar_C3D038
  loc_97F467: CDargRef
  loc_97F46B: FLdPr Me
  loc_97F46E: VCallAd Control_ID_mskDesde
  loc_97F471: FStAdFunc var_A8
  loc_97F474: FLdPr var_A8
  loc_97F477: LateIdSt
  loc_97F47C: FFree1Ad var_A8
  loc_97F47F: ExitProcHresult
End Sub

Private Sub Form_Load() '96C028
  'Data Table: 44C814
  loc_96C008: LitI2_Byte &HFF
  loc_96C00A: ImpAdStI2 MemVar_C3D840
  loc_96C00D: ILdRf Me
  loc_96C010: CastAd
  loc_96C013: FStAdFunc var_88
  loc_96C016: FLdRfVar var_88
  loc_96C019: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_96C01E: FFree1Ad var_88
  loc_96C021: Call cmdNueva_Click()
  loc_96C026: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95B2B0
  'Data Table: 44C814
  loc_95B298: FLdPr Me
  loc_95B29B: VCallAd Control_ID_wbbReporte
  loc_95B29E: FStAdFunc var_88
  loc_95B2A1: FLdRfVar var_88
  loc_95B2A4: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95B2A9: FFree1Ad var_88
  loc_95B2AC: ExitProcHresult
End Sub

Public Function bGeneradoGet() '44D490
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '44D49F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9A28DC
  'Data Table: 44C814
  loc_9A2878: LitI4 0
  loc_9A287D: LitI4 3
  loc_9A2882: FLdRfVar var_88
  loc_9A2885: Redim
  loc_9A288F: FLdPr Me
  loc_9A2892: VCallAd Control_ID_mskDesde
  loc_9A2895: CVarAd
  loc_9A2899: ParmAry1St
  loc_9A289F: FLdPr Me
  loc_9A28A2: VCallAd Control_ID_cmdCalDesde
  loc_9A28A5: CVarAd
  loc_9A28A9: ParmAry1St
  loc_9A28AF: FLdPr Me
  loc_9A28B2: VCallAd Control_ID_mskHasta
  loc_9A28B5: CVarAd
  loc_9A28B9: ParmAry1St
  loc_9A28BF: FLdPr Me
  loc_9A28C2: VCallAd Control_ID_cmdCalHasta
  loc_9A28C5: CVarAd
  loc_9A28C9: ParmAry1St
  loc_9A28CF: FLdRfVar var_88
  loc_9A28D2: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A28D7: FLdRfVar var_88
  loc_9A28DA: Erase
  loc_9A28DB: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B0050C
  'Data Table: 44C814
  loc_AFFD94: LitStr vbNullString
  loc_AFFD97: FLdPr Me
  loc_AFFD9A: MemStStrCopy
  loc_AFFD9E: LitI2_Byte 0
  loc_AFFDA0: PopTmpLdAd2 var_8E
  loc_AFFDA3: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_AFFDA8: FLdPr Me
  loc_AFFDAB: MemLdStr global_100
  loc_AFFDAE: LitStr vbNullString
  loc_AFFDB1: NeStr
  loc_AFFDB3: BranchF loc_AFFDB9
  loc_AFFDB6: Branch loc_B004E1
  loc_AFFDB9: LitI2_Byte 0
  loc_AFFDBB: PopTmpLdAd2 var_8E
  loc_AFFDBE: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_AFFDC3: FLdPr Me
  loc_AFFDC6: MemLdStr global_100
  loc_AFFDC9: LitStr vbNullString
  loc_AFFDCC: NeStr
  loc_AFFDCE: BranchF loc_AFFDD4
  loc_AFFDD1: Branch loc_B004E1
  loc_AFFDD4: FLdPr Me
  loc_AFFDD7: MemLdI2 bGenerado
  loc_AFFDDA: BranchF loc_AFFDDE
  loc_AFFDDD: ExitProcHresult
  loc_AFFDDE: LitVarStr var_A0, "Generando reporte..."
  loc_AFFDE3: PopAdLdVar
  loc_AFFDE4: FLdPr Me
  loc_AFFDE7: VCallAd Control_ID_statusBar
  loc_AFFDEA: FStAdFunc var_B4
  loc_AFFDED: FLdPr var_B4
  loc_AFFDF0: LateIdSt
  loc_AFFDF5: FFree1Ad var_B4
  loc_AFFDF8: LitI4 &HB
  loc_AFFDFD: CI2I4
  loc_AFFDFE: FLdPr Me
  loc_AFFE01: Me.MousePointer = from_stack_1
  loc_AFFE06: FLdPr Me
  loc_AFFE09: VCallAd Control_ID_mskDesde
  loc_AFFE0C: FStAdFunc var_B4
  loc_AFFE0F: FLdPr var_B4
  loc_AFFE12: LateIdLdVar var_C4 DispID_22 0
  loc_AFFE19: CStrVarTmp
  loc_AFFE1A: FStStrNoPop var_C8
  loc_AFFE1D: LitStr vbNullString
  loc_AFFE20: NeStr
  loc_AFFE22: FFree1Str var_C8
  loc_AFFE25: FFree1Ad var_B4
  loc_AFFE28: FFree1Var var_C4 = ""
  loc_AFFE2B: BranchF loc_AFFE7D
  loc_AFFE2E: FLdPr Me
  loc_AFFE31: VCallAd Control_ID_mskDesde
  loc_AFFE34: FStAdFunc var_B4
  loc_AFFE37: FLdPr var_B4
  loc_AFFE3A: LateIdLdVar var_C4 DispID_15 0
  loc_AFFE41: PopAd
  loc_AFFE43: LitStr " AND FechCaja >= "
  loc_AFFE46: LitI4 1
  loc_AFFE4B: LitI4 1
  loc_AFFE50: LitVarStr var_A0, "'yyyy-mm-dd'"
  loc_AFFE55: FStVarCopyObj var_E8
  loc_AFFE58: FLdRfVar var_E8
  loc_AFFE5B: FLdRfVar var_C4
  loc_AFFE5E: CStrVarTmp
  loc_AFFE5F: CVarStr var_D8
  loc_AFFE62: ImpAdCallI2 Format$(, )
  loc_AFFE67: FStStrNoPop var_C8
  loc_AFFE6A: ConcatStr
  loc_AFFE6B: FStStr var_88
  loc_AFFE6E: FFree1Str var_C8
  loc_AFFE71: FFree1Ad var_B4
  loc_AFFE74: FFreeVar var_C4 = "": var_D8 = ""
  loc_AFFE7D: FLdPr Me
  loc_AFFE80: VCallAd Control_ID_mskHasta
  loc_AFFE83: FStAdFunc var_B4
  loc_AFFE86: FLdPr var_B4
  loc_AFFE89: LateIdLdVar var_C4 DispID_22 0
  loc_AFFE90: CStrVarTmp
  loc_AFFE91: FStStrNoPop var_C8
  loc_AFFE94: LitStr vbNullString
  loc_AFFE97: NeStr
  loc_AFFE99: FFree1Str var_C8
  loc_AFFE9C: FFree1Ad var_B4
  loc_AFFE9F: FFree1Var var_C4 = ""
  loc_AFFEA2: BranchF loc_AFFEF4
  loc_AFFEA5: FLdPr Me
  loc_AFFEA8: VCallAd Control_ID_mskHasta
  loc_AFFEAB: FStAdFunc var_B4
  loc_AFFEAE: FLdPr var_B4
  loc_AFFEB1: LateIdLdVar var_C4 DispID_15 0
  loc_AFFEB8: PopAd
  loc_AFFEBA: LitStr " AND FechCaja <= "
  loc_AFFEBD: LitI4 1
  loc_AFFEC2: LitI4 1
  loc_AFFEC7: LitVarStr var_A0, "'yyyy-mm-dd'"
  loc_AFFECC: FStVarCopyObj var_E8
  loc_AFFECF: FLdRfVar var_E8
  loc_AFFED2: FLdRfVar var_C4
  loc_AFFED5: CStrVarTmp
  loc_AFFED6: CVarStr var_D8
  loc_AFFED9: ImpAdCallI2 Format$(, )
  loc_AFFEDE: FStStrNoPop var_C8
  loc_AFFEE1: ConcatStr
  loc_AFFEE2: FStStr var_8C
  loc_AFFEE5: FFree1Str var_C8
  loc_AFFEE8: FFree1Ad var_B4
  loc_AFFEEB: FFreeVar var_C4 = "": var_D8 = ""
  loc_AFFEF4: FLdPr Me
  loc_AFFEF7: MemLdRfVar from_stack_1.global_56
  loc_AFFEFA: NewIfNullAd
  loc_AFFEFD: FStAd var_EC 
  loc_AFFF01: LitStr "SELECT DISTINCT cajaauto.CodiCuco, DetaCuco"
  loc_AFFF04: LitStr " FROM cajaauto"
  loc_AFFF07: ConcatStr
  loc_AFFF08: FStStrNoPop var_C8
  loc_AFFF0B: LitStr " LEFT JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = cajaauto.PeriInfo AND infogov.cuentacontable.CodiCuco = cajaauto.CodiCuco WHERE TRUE "
  loc_AFFF0E: ConcatStr
  loc_AFFF0F: FStStrNoPop var_F0
  loc_AFFF12: ILdRf var_88
  loc_AFFF15: ConcatStr
  loc_AFFF16: FStStrNoPop var_F4
  loc_AFFF19: ILdRf var_8C
  loc_AFFF1C: ConcatStr
  loc_AFFF1D: FStStrNoPop var_F8
  loc_AFFF20: LitStr " ORDER BY CodiCuco"
  loc_AFFF23: ConcatStr
  loc_AFFF24: FStStrNoPop var_FC
  loc_AFFF27: FLdPr var_EC
  loc_AFFF2A: Call clsbase.RedefineRS(from_stack_1v)
  loc_AFFF2F: FFreeStr var_C8 = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_AFFF3C: FLdRfVar var_100
  loc_AFFF3F: FLdPr var_EC
  loc_AFFF42: from_stack_1 = clsbase.RecordCount
  loc_AFFF47: ILdRf var_100
  loc_AFFF4A: LitI4 0
  loc_AFFF4F: EqI4
  loc_AFFF50: BranchF loc_AFFF63
  loc_AFFF53: LitI4 0
  loc_AFFF58: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_AFFF5B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AFFF60: Branch loc_B004E1
  loc_AFFF63: LitI2_Byte 0
  loc_AFFF65: CStrUI1
  loc_AFFF67: FStStrNoPop var_C8
  loc_AFFF6A: FLdPr Me
  loc_AFFF6D: MemStStrCopy
  loc_AFFF71: FFree1Str var_C8
  loc_AFFF74: LitI2_Byte 0
  loc_AFFF76: CStrUI1
  loc_AFFF78: FStStrNoPop var_C8
  loc_AFFF7B: FLdPr Me
  loc_AFFF7E: MemStStrCopy
  loc_AFFF82: FFree1Str var_C8
  loc_AFFF85: LitI4 1
  loc_AFFF8A: FLdRfVar var_100
  loc_AFFF8D: FLdPr Me
  loc_AFFF90: MemLdRfVar from_stack_1.global_56
  loc_AFFF93: NewIfNullPr clsbase
  loc_AFFF96: from_stack_1 = clsbase.RecordCount
  loc_AFFF9B: ILdRf var_100
  loc_AFFF9E: FLdPr Me
  loc_AFFFA1: MemLdRfVar from_stack_1.global_80
  loc_AFFFA4: Redim
  loc_AFFFAE: FLdPr var_EC
  loc_AFFFB1: Call clsbase.MoveFirst()
  loc_AFFFB6: LitI2_Byte 1
  loc_AFFFB8: FLdPr Me
  loc_AFFFBB: MemLdRfVar from_stack_1.global_92
  loc_AFFFBE: FLdPr Me
  loc_AFFFC1: MemLdStr global_80
  loc_AFFFC4: LitI2_Byte 1
  loc_AFFFC6: FnUBound
  loc_AFFFC8: CI2I4
  loc_AFFFC9: ForI2 var_104
  loc_AFFFCF: FLdRfVar var_10C
  loc_AFFFD2: LitVarStr var_A0, "CodiCuco"
  loc_AFFFD7: PopAdLdVar
  loc_AFFFD8: FLdRfVar var_108
  loc_AFFFDB: FLdRfVar var_B4
  loc_AFFFDE: FLdPr var_EC
  loc_AFFFE1: from_stack_1v = clsbase.RsFrmGet()
  loc_AFFFE6: FLdPr var_B4
  loc_AFFFE9:  = Me.Fields
  loc_AFFFEE: FLdPr var_108
  loc_AFFFF1: from_stack_2 = Me.Item(from_stack_1)
  loc_AFFFF6: LitI2_Byte 0
  loc_AFFFF8: LitVar_Missing var_D8
  loc_AFFFFB: LitI2_Byte 0
  loc_AFFFFD: FLdZeroAd var_10C
  loc_B00000: CVarAd
  loc_B00004: PopAdLdVar
  loc_B00005: FLdPr Me
  loc_B00008: MemLdI2 global_92
  loc_B0000B: CI4UI1
  loc_B0000C: FLdPr Me
  loc_B0000F: MemLdStr global_80
  loc_B00012: AryLock
  loc_B00015: Ary1LdPr
  loc_B00016: MemLdRfVar from_stack_1.global_0
  loc_B00019: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0001E: AryUnlock
  loc_B00021: FFreeAd var_B4 = ""
  loc_B00028: FFreeVar var_C4 = ""
  loc_B0002F: FLdRfVar var_10C
  loc_B00032: LitVarStr var_A0, "DetaCuco"
  loc_B00037: PopAdLdVar
  loc_B00038: FLdRfVar var_108
  loc_B0003B: FLdRfVar var_B4
  loc_B0003E: FLdPr var_EC
  loc_B00041: from_stack_1v = clsbase.RsFrmGet()
  loc_B00046: FLdPr var_B4
  loc_B00049:  = Me.Fields
  loc_B0004E: FLdPr var_108
  loc_B00051: from_stack_2 = Me.Item(from_stack_1)
  loc_B00056: LitI2_Byte 0
  loc_B00058: LitVar_Missing var_D8
  loc_B0005B: LitI2_Byte 0
  loc_B0005D: FLdZeroAd var_10C
  loc_B00060: CVarAd
  loc_B00064: PopAdLdVar
  loc_B00065: FLdPr Me
  loc_B00068: MemLdI2 global_92
  loc_B0006B: CI4UI1
  loc_B0006C: FLdPr Me
  loc_B0006F: MemLdStr global_80
  loc_B00072: AryLock
  loc_B00075: Ary1LdPr
  loc_B00076: MemLdRfVar from_stack_1.global_4
  loc_B00079: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0007E: AryUnlock
  loc_B00081: FFreeAd var_B4 = ""
  loc_B00088: FFreeVar var_C4 = ""
  loc_B0008F: FLdPr var_EC
  loc_B00092: Call clsbase.MoveSiguiente()
  loc_B00097: FLdPr Me
  loc_B0009A: MemLdRfVar from_stack_1.global_92
  loc_B0009D: NextI2 var_104, loc_AFFFCF
  loc_B000A2: LitI2_Byte 1
  loc_B000A4: FLdPr Me
  loc_B000A7: MemLdRfVar from_stack_1.global_92
  loc_B000AA: FLdPr Me
  loc_B000AD: MemLdStr global_80
  loc_B000B0: LitI2_Byte 1
  loc_B000B2: FnUBound
  loc_B000B4: CI2I4
  loc_B000B5: ForI2 var_114
  loc_B000BB: LitStr "SELECT FechCaja, CodiPart, CodiOrga, ExpeAuto, DebeCaau, HabeCaau"
  loc_B000BE: LitStr " FROM cajaauto"
  loc_B000C1: ConcatStr
  loc_B000C2: FStStrNoPop var_C8
  loc_B000C5: LitStr " WHERE CodiCuco = '"
  loc_B000C8: ConcatStr
  loc_B000C9: FStStrNoPop var_F0
  loc_B000CC: FLdPr Me
  loc_B000CF: MemLdI2 global_92
  loc_B000D2: CI4UI1
  loc_B000D3: FLdPr Me
  loc_B000D6: MemLdStr global_80
  loc_B000D9: Ary1LdPr
  loc_B000DA: MemLdStr global_0
  loc_B000DD: ConcatStr
  loc_B000DE: FStStrNoPop var_F4
  loc_B000E1: LitStr "'"
  loc_B000E4: ConcatStr
  loc_B000E5: FStStrNoPop var_F8
  loc_B000E8: ILdRf var_88
  loc_B000EB: ConcatStr
  loc_B000EC: FStStrNoPop var_FC
  loc_B000EF: ILdRf var_8C
  loc_B000F2: ConcatStr
  loc_B000F3: FStStrNoPop var_118
  loc_B000F6: LitStr " ORDER BY FechCaja, CodiPart, CodiOrga, ExpeAuto"
  loc_B000F9: ConcatStr
  loc_B000FA: FStStrNoPop var_11C
  loc_B000FD: FLdPr var_EC
  loc_B00100: Call clsbase.RedefineRS(from_stack_1v)
  loc_B00105: FFreeStr var_C8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_118 = ""
  loc_B00116: FLdRfVar var_100
  loc_B00119: FLdPr var_EC
  loc_B0011C: from_stack_1 = clsbase.RecordCount
  loc_B00121: ILdRf var_100
  loc_B00124: LitI4 0
  loc_B00129: GtI4
  loc_B0012A: BranchF loc_B0046A
  loc_B0012D: FLdRfVar var_100
  loc_B00130: FLdPr var_EC
  loc_B00133: from_stack_1 = clsbase.RecordCount
  loc_B00138: LitI4 1
  loc_B0013D: ILdRf var_100
  loc_B00140: FLdPr Me
  loc_B00143: MemLdI2 global_92
  loc_B00146: CI4UI1
  loc_B00147: FLdPr Me
  loc_B0014A: MemLdStr global_80
  loc_B0014D: Ary1LdPr
  loc_B0014E: MemLdRfVar from_stack_1.global_8
  loc_B00151: Redim
  loc_B0015B: FLdPr var_EC
  loc_B0015E: Call clsbase.MoveFirst()
  loc_B00163: LitI2_Byte 1
  loc_B00165: FLdPr Me
  loc_B00168: MemLdRfVar from_stack_1.global_94
  loc_B0016B: FLdPr Me
  loc_B0016E: MemLdI2 global_92
  loc_B00171: CI4UI1
  loc_B00172: FLdPr Me
  loc_B00175: MemLdStr global_80
  loc_B00178: Ary1LdPr
  loc_B00179: MemLdStr global_8
  loc_B0017C: LitI2_Byte 1
  loc_B0017E: FnUBound
  loc_B00180: CI2I4
  loc_B00181: ForI2 var_120
  loc_B00187: FLdRfVar var_10C
  loc_B0018A: LitVarStr var_A0, "FechCaja"
  loc_B0018F: PopAdLdVar
  loc_B00190: FLdRfVar var_108
  loc_B00193: FLdRfVar var_B4
  loc_B00196: FLdPr var_EC
  loc_B00199: from_stack_1v = clsbase.RsFrmGet()
  loc_B0019E: FLdPr var_B4
  loc_B001A1:  = Me.Fields
  loc_B001A6: FLdPr var_108
  loc_B001A9: from_stack_2 = Me.Item(from_stack_1)
  loc_B001AE: LitI2_Byte 0
  loc_B001B0: LitVar_Missing var_D8
  loc_B001B3: LitI2_Byte 0
  loc_B001B5: FLdZeroAd var_10C
  loc_B001B8: CVarAd
  loc_B001BC: PopAdLdVar
  loc_B001BD: FLdPr Me
  loc_B001C0: MemLdI2 global_94
  loc_B001C3: CI4UI1
  loc_B001C4: FLdPr Me
  loc_B001C7: MemLdI2 global_92
  loc_B001CA: CI4UI1
  loc_B001CB: FLdPr Me
  loc_B001CE: MemLdStr global_80
  loc_B001D1: AryLock
  loc_B001D4: Ary1LdPr
  loc_B001D5: MemLdStr global_8
  loc_B001D8: AryLock
  loc_B001DB: Ary1LdPr
  loc_B001DC: MemLdRfVar from_stack_1.global_0
  loc_B001DF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B001E4: AryUnlock
  loc_B001E7: AryUnlock
  loc_B001EA: FFreeAd var_B4 = ""
  loc_B001F1: FFreeVar var_C4 = ""
  loc_B001F8: FLdRfVar var_10C
  loc_B001FB: LitVarStr var_A0, "CodiPart"
  loc_B00200: PopAdLdVar
  loc_B00201: FLdRfVar var_108
  loc_B00204: FLdRfVar var_B4
  loc_B00207: FLdPr var_EC
  loc_B0020A: from_stack_1v = clsbase.RsFrmGet()
  loc_B0020F: FLdPr var_B4
  loc_B00212:  = Me.Fields
  loc_B00217: FLdPr var_108
  loc_B0021A: from_stack_2 = Me.Item(from_stack_1)
  loc_B0021F: LitI2_Byte 0
  loc_B00221: LitVar_Missing var_D8
  loc_B00224: LitI2_Byte 0
  loc_B00226: FLdZeroAd var_10C
  loc_B00229: CVarAd
  loc_B0022D: PopAdLdVar
  loc_B0022E: FLdPr Me
  loc_B00231: MemLdI2 global_94
  loc_B00234: CI4UI1
  loc_B00235: FLdPr Me
  loc_B00238: MemLdI2 global_92
  loc_B0023B: CI4UI1
  loc_B0023C: FLdPr Me
  loc_B0023F: MemLdStr global_80
  loc_B00242: AryLock
  loc_B00245: Ary1LdPr
  loc_B00246: MemLdStr global_8
  loc_B00249: AryLock
  loc_B0024C: Ary1LdPr
  loc_B0024D: MemLdRfVar from_stack_1.global_4
  loc_B00250: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B00255: AryUnlock
  loc_B00258: AryUnlock
  loc_B0025B: FFreeAd var_B4 = ""
  loc_B00262: FFreeVar var_C4 = ""
  loc_B00269: FLdRfVar var_10C
  loc_B0026C: LitVarStr var_A0, "CodiOrga"
  loc_B00271: PopAdLdVar
  loc_B00272: FLdRfVar var_108
  loc_B00275: FLdRfVar var_B4
  loc_B00278: FLdPr var_EC
  loc_B0027B: from_stack_1v = clsbase.RsFrmGet()
  loc_B00280: FLdPr var_B4
  loc_B00283:  = Me.Fields
  loc_B00288: FLdPr var_108
  loc_B0028B: from_stack_2 = Me.Item(from_stack_1)
  loc_B00290: LitI2_Byte 0
  loc_B00292: LitVar_Missing var_D8
  loc_B00295: LitI2_Byte 0
  loc_B00297: FLdZeroAd var_10C
  loc_B0029A: CVarAd
  loc_B0029E: PopAdLdVar
  loc_B0029F: FLdPr Me
  loc_B002A2: MemLdI2 global_94
  loc_B002A5: CI4UI1
  loc_B002A6: FLdPr Me
  loc_B002A9: MemLdI2 global_92
  loc_B002AC: CI4UI1
  loc_B002AD: FLdPr Me
  loc_B002B0: MemLdStr global_80
  loc_B002B3: AryLock
  loc_B002B6: Ary1LdPr
  loc_B002B7: MemLdStr global_8
  loc_B002BA: AryLock
  loc_B002BD: Ary1LdPr
  loc_B002BE: MemLdRfVar from_stack_1.global_8
  loc_B002C1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B002C6: AryUnlock
  loc_B002C9: AryUnlock
  loc_B002CC: FFreeAd var_B4 = ""
  loc_B002D3: FFreeVar var_C4 = ""
  loc_B002DA: FLdRfVar var_10C
  loc_B002DD: LitVarStr var_A0, "ExpeAuto"
  loc_B002E2: PopAdLdVar
  loc_B002E3: FLdRfVar var_108
  loc_B002E6: FLdRfVar var_B4
  loc_B002E9: FLdPr var_EC
  loc_B002EC: from_stack_1v = clsbase.RsFrmGet()
  loc_B002F1: FLdPr var_B4
  loc_B002F4:  = Me.Fields
  loc_B002F9: FLdPr var_108
  loc_B002FC: from_stack_2 = Me.Item(from_stack_1)
  loc_B00301: LitI2_Byte 0
  loc_B00303: LitVar_Missing var_D8
  loc_B00306: LitI2_Byte 0
  loc_B00308: FLdZeroAd var_10C
  loc_B0030B: CVarAd
  loc_B0030F: PopAdLdVar
  loc_B00310: FLdPr Me
  loc_B00313: MemLdI2 global_94
  loc_B00316: CI4UI1
  loc_B00317: FLdPr Me
  loc_B0031A: MemLdI2 global_92
  loc_B0031D: CI4UI1
  loc_B0031E: FLdPr Me
  loc_B00321: MemLdStr global_80
  loc_B00324: AryLock
  loc_B00327: Ary1LdPr
  loc_B00328: MemLdStr global_8
  loc_B0032B: AryLock
  loc_B0032E: Ary1LdPr
  loc_B0032F: MemLdRfVar from_stack_1.global_12
  loc_B00332: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B00337: AryUnlock
  loc_B0033A: AryUnlock
  loc_B0033D: FFreeAd var_B4 = ""
  loc_B00344: FFreeVar var_C4 = ""
  loc_B0034B: FLdRfVar var_10C
  loc_B0034E: LitVarStr var_A0, "DebeCaau"
  loc_B00353: PopAdLdVar
  loc_B00354: FLdRfVar var_108
  loc_B00357: FLdRfVar var_B4
  loc_B0035A: FLdPr var_EC
  loc_B0035D: from_stack_1v = clsbase.RsFrmGet()
  loc_B00362: FLdPr var_B4
  loc_B00365:  = Me.Fields
  loc_B0036A: FLdPr var_108
  loc_B0036D: from_stack_2 = Me.Item(from_stack_1)
  loc_B00372: LitI2_Byte 0
  loc_B00374: FLdPr Me
  loc_B00377: MemLdI2 global_92
  loc_B0037A: CI4UI1
  loc_B0037B: FLdPr Me
  loc_B0037E: MemLdStr global_80
  loc_B00381: AryLock
  loc_B00384: Ary1LdPr
  loc_B00385: MemLdRfVar from_stack_1.global_12
  loc_B00388: CVarRef
  loc_B0038D: LitI2_Byte &HFF
  loc_B0038F: FLdZeroAd var_10C
  loc_B00392: CVarAd
  loc_B00396: PopAdLdVar
  loc_B00397: FLdPr Me
  loc_B0039A: MemLdI2 global_94
  loc_B0039D: CI4UI1
  loc_B0039E: FLdPr Me
  loc_B003A1: MemLdI2 global_92
  loc_B003A4: CI4UI1
  loc_B003A5: FLdPr Me
  loc_B003A8: MemLdStr global_80
  loc_B003AB: AryLock
  loc_B003AE: Ary1LdPr
  loc_B003AF: MemLdStr global_8
  loc_B003B2: AryLock
  loc_B003B5: Ary1LdPr
  loc_B003B6: MemLdRfVar from_stack_1.global_16
  loc_B003B9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B003BE: AryUnlock
  loc_B003C1: AryUnlock
  loc_B003C4: AryUnlock
  loc_B003C7: FFreeAd var_B4 = ""
  loc_B003CE: FFree1Var var_C4 = ""
  loc_B003D1: FLdRfVar var_10C
  loc_B003D4: LitVarStr var_A0, "HabeCaau"
  loc_B003D9: PopAdLdVar
  loc_B003DA: FLdRfVar var_108
  loc_B003DD: FLdRfVar var_B4
  loc_B003E0: FLdPr var_EC
  loc_B003E3: from_stack_1v = clsbase.RsFrmGet()
  loc_B003E8: FLdPr var_B4
  loc_B003EB:  = Me.Fields
  loc_B003F0: FLdPr var_108
  loc_B003F3: from_stack_2 = Me.Item(from_stack_1)
  loc_B003F8: LitI2_Byte 0
  loc_B003FA: FLdPr Me
  loc_B003FD: MemLdI2 global_92
  loc_B00400: CI4UI1
  loc_B00401: FLdPr Me
  loc_B00404: MemLdStr global_80
  loc_B00407: AryLock
  loc_B0040A: Ary1LdPr
  loc_B0040B: MemLdRfVar from_stack_1.global_16
  loc_B0040E: CVarRef
  loc_B00413: LitI2_Byte &HFF
  loc_B00415: FLdZeroAd var_10C
  loc_B00418: CVarAd
  loc_B0041C: PopAdLdVar
  loc_B0041D: FLdPr Me
  loc_B00420: MemLdI2 global_94
  loc_B00423: CI4UI1
  loc_B00424: FLdPr Me
  loc_B00427: MemLdI2 global_92
  loc_B0042A: CI4UI1
  loc_B0042B: FLdPr Me
  loc_B0042E: MemLdStr global_80
  loc_B00431: AryLock
  loc_B00434: Ary1LdPr
  loc_B00435: MemLdStr global_8
  loc_B00438: AryLock
  loc_B0043B: Ary1LdPr
  loc_B0043C: MemLdRfVar from_stack_1.global_20
  loc_B0043F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B00444: AryUnlock
  loc_B00447: AryUnlock
  loc_B0044A: AryUnlock
  loc_B0044D: FFreeAd var_B4 = ""
  loc_B00454: FFree1Var var_C4 = ""
  loc_B00457: FLdPr var_EC
  loc_B0045A: Call clsbase.MoveSiguiente()
  loc_B0045F: FLdPr Me
  loc_B00462: MemLdRfVar from_stack_1.global_94
  loc_B00465: NextI2 var_120, loc_B00187
  loc_B0046A: LitI2_Byte 0
  loc_B0046C: FLdPr Me
  loc_B0046F: MemLdRfVar from_stack_1.global_84
  loc_B00472: CVarRef
  loc_B00477: LitI2_Byte &HFF
  loc_B00479: FLdPr Me
  loc_B0047C: MemLdI2 global_92
  loc_B0047F: CI4UI1
  loc_B00480: FLdPr Me
  loc_B00483: MemLdStr global_80
  loc_B00486: Ary1LdPr
  loc_B00487: MemLdStr global_12
  loc_B0048A: CVarStr var_A0
  loc_B0048D: PopAdLdVar
  loc_B0048E: FLdPr Me
  loc_B00491: MemLdRfVar from_stack_1.global_96
  loc_B00494: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B00499: LitI2_Byte 0
  loc_B0049B: FLdPr Me
  loc_B0049E: MemLdRfVar from_stack_1.global_88
  loc_B004A1: CVarRef
  loc_B004A6: LitI2_Byte &HFF
  loc_B004A8: FLdPr Me
  loc_B004AB: MemLdI2 global_92
  loc_B004AE: CI4UI1
  loc_B004AF: FLdPr Me
  loc_B004B2: MemLdStr global_80
  loc_B004B5: Ary1LdPr
  loc_B004B6: MemLdStr global_16
  loc_B004B9: CVarStr var_A0
  loc_B004BC: PopAdLdVar
  loc_B004BD: FLdPr Me
  loc_B004C0: MemLdRfVar from_stack_1.global_96
  loc_B004C3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B004C8: FLdPr Me
  loc_B004CB: MemLdRfVar from_stack_1.global_92
  loc_B004CE: NextI2 var_114, loc_B000BB
  loc_B004D3: LitNothing
  loc_B004D5: FStAd var_EC 
  loc_B004D9: LitI2_Byte &HFF
  loc_B004DB: FLdPr Me
  loc_B004DE: MemStI2 bGenerado
  loc_B004E1: LitI4 0
  loc_B004E6: CI2I4
  loc_B004E7: FLdPr Me
  loc_B004EA: Me.MousePointer = from_stack_1
  loc_B004EF: LitVarStr var_A0, vbNullString
  loc_B004F4: PopAdLdVar
  loc_B004F5: FLdPr Me
  loc_B004F8: VCallAd Control_ID_statusBar
  loc_B004FB: FStAdFunc var_B4
  loc_B004FE: FLdPr var_B4
  loc_B00501: LateIdSt
  loc_B00506: FFree1Ad var_B4
  loc_B00509: ExitProcHresult
  loc_B0050A: GeCy
End Sub

Public Sub GeneraHTML() 'ADE090
  'Data Table: 44C814
  loc_ADDA14: FLdRfVar var_88
  loc_ADDA17: LitI2_Byte 0
  loc_ADDA19: LitI2_Byte &HFF
  loc_ADDA1B: ImpAdLdI4 MemVar_C3D83C
  loc_ADDA1E: FLdPr Me
  loc_ADDA21: MemLdRfVar from_stack_1.global_60
  loc_ADDA24: NewIfNullPr IFileSystem3
  loc_ADDA27: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_ADDA2C: ILdRf var_88
  loc_ADDA2F: FLdPr Me
  loc_ADDA32: MemStVarAd
  loc_ADDA36: FFree1Ad var_88
  loc_ADDA39: Call Proc_240_19_ACFFB4()
  loc_ADDA3E: LitI2_Byte 1
  loc_ADDA40: FLdPr Me
  loc_ADDA43: MemLdRfVar from_stack_1.global_92
  loc_ADDA46: FLdPr Me
  loc_ADDA49: MemLdStr global_80
  loc_ADDA4C: LitI2_Byte 1
  loc_ADDA4E: FnUBound
  loc_ADDA50: CI2I4
  loc_ADDA51: ForI2 var_8C
  loc_ADDA57: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADDA5C: PopAdLdVar
  loc_ADDA5D: FLdPr Me
  loc_ADDA60: MemLdRfVar from_stack_1.global_64
  loc_ADDA63: LdPrVar
  loc_ADDA65: LateMemCall
  loc_ADDA6B: LitStr "    <td rowspan="""
  loc_ADDA6E: FLdPr Me
  loc_ADDA71: MemLdI2 global_92
  loc_ADDA74: CI4UI1
  loc_ADDA75: FLdPr Me
  loc_ADDA78: MemLdStr global_80
  loc_ADDA7B: Ary1LdPr
  loc_ADDA7C: MemLdStr global_8
  loc_ADDA7F: LitI2_Byte 1
  loc_ADDA81: FnUBound
  loc_ADDA83: LitI4 1
  loc_ADDA88: AddI4
  loc_ADDA89: CStrI4
  loc_ADDA8B: FStStrNoPop var_B0
  loc_ADDA8E: ConcatStr
  loc_ADDA8F: FStStrNoPop var_B4
  loc_ADDA92: LitStr """ align=""left"" valign = ""top"" class=""Titulo2"">"
  loc_ADDA95: ConcatStr
  loc_ADDA96: FStStrNoPop var_B8
  loc_ADDA99: FLdPr Me
  loc_ADDA9C: MemLdI2 global_92
  loc_ADDA9F: CI4UI1
  loc_ADDAA0: FLdPr Me
  loc_ADDAA3: MemLdStr global_80
  loc_ADDAA6: Ary1LdPr
  loc_ADDAA7: MemLdStr global_0
  loc_ADDAAA: ConcatStr
  loc_ADDAAB: FStStrNoPop var_BC
  loc_ADDAAE: LitStr "<br>"
  loc_ADDAB1: ConcatStr
  loc_ADDAB2: FStStrNoPop var_C0
  loc_ADDAB5: FLdPr Me
  loc_ADDAB8: MemLdI2 global_92
  loc_ADDABB: CI4UI1
  loc_ADDABC: FLdPr Me
  loc_ADDABF: MemLdStr global_80
  loc_ADDAC2: Ary1LdPr
  loc_ADDAC3: MemLdStr global_4
  loc_ADDAC6: ConcatStr
  loc_ADDAC7: FStStrNoPop var_C4
  loc_ADDACA: LitStr "</td>"
  loc_ADDACD: ConcatStr
  loc_ADDACE: CVarStr var_D4
  loc_ADDAD1: PopAdLdVar
  loc_ADDAD2: FLdPr Me
  loc_ADDAD5: MemLdRfVar from_stack_1.global_64
  loc_ADDAD8: LdPrVar
  loc_ADDADA: LateMemCall
  loc_ADDAE0: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_ADDAEF: FFree1Var var_D4 = ""
  loc_ADDAF2: LitI2_Byte 1
  loc_ADDAF4: FLdPr Me
  loc_ADDAF7: MemLdRfVar from_stack_1.global_94
  loc_ADDAFA: FLdPr Me
  loc_ADDAFD: MemLdI2 global_92
  loc_ADDB00: CI4UI1
  loc_ADDB01: FLdPr Me
  loc_ADDB04: MemLdStr global_80
  loc_ADDB07: Ary1LdPr
  loc_ADDB08: MemLdStr global_8
  loc_ADDB0B: LitI2_Byte 1
  loc_ADDB0D: FnUBound
  loc_ADDB0F: CI2I4
  loc_ADDB10: ForI2 var_D8
  loc_ADDB16: FLdPr Me
  loc_ADDB19: MemLdI2 global_94
  loc_ADDB1C: CI4UI1
  loc_ADDB1D: FLdPr Me
  loc_ADDB20: MemLdI2 global_92
  loc_ADDB23: CI4UI1
  loc_ADDB24: FLdPr Me
  loc_ADDB27: MemLdStr global_80
  loc_ADDB2A: AryLock
  loc_ADDB2D: Ary1LdPr
  loc_ADDB2E: MemLdStr global_8
  loc_ADDB31: AryLock
  loc_ADDB34: Ary1LdRf
  loc_ADDB35: FStR4 var_E4
  loc_ADDB38: FLdPr Me
  loc_ADDB3B: MemLdI2 global_94
  loc_ADDB3E: LitI2_Byte 1
  loc_ADDB40: NeI2
  loc_ADDB41: BranchF loc_ADDB58
  loc_ADDB44: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADDB49: PopAdLdVar
  loc_ADDB4A: FLdPr Me
  loc_ADDB4D: MemLdRfVar from_stack_1.global_64
  loc_ADDB50: LdPrVar
  loc_ADDB52: LateMemCall
  loc_ADDB58: LitI4 0
  loc_ADDB5D: LitI4 0
  loc_ADDB62: LitI2_Byte 0
  loc_ADDB64: LitStr "center"
  loc_ADDB67: FMemLdR4 var_E4(0)
  loc_ADDB6C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADDB71: CVarStr var_D4
  loc_ADDB74: PopAdLdVar
  loc_ADDB75: FLdPr Me
  loc_ADDB78: MemLdRfVar from_stack_1.global_64
  loc_ADDB7B: LdPrVar
  loc_ADDB7D: LateMemCall
  loc_ADDB83: FFree1Var var_D4 = ""
  loc_ADDB86: LitI4 0
  loc_ADDB8B: LitI4 0
  loc_ADDB90: LitI2_Byte 0
  loc_ADDB92: LitStr "left"
  loc_ADDB95: FMemLdR4 var_E4(4)
  loc_ADDB9A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADDB9F: CVarStr var_D4
  loc_ADDBA2: PopAdLdVar
  loc_ADDBA3: FLdPr Me
  loc_ADDBA6: MemLdRfVar from_stack_1.global_64
  loc_ADDBA9: LdPrVar
  loc_ADDBAB: LateMemCall
  loc_ADDBB1: FFree1Var var_D4 = ""
  loc_ADDBB4: LitI4 0
  loc_ADDBB9: LitI4 0
  loc_ADDBBE: LitI2_Byte 0
  loc_ADDBC0: LitStr "left"
  loc_ADDBC3: FMemLdR4 var_E4(8)
  loc_ADDBC8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADDBCD: CVarStr var_D4
  loc_ADDBD0: PopAdLdVar
  loc_ADDBD1: FLdPr Me
  loc_ADDBD4: MemLdRfVar from_stack_1.global_64
  loc_ADDBD7: LdPrVar
  loc_ADDBD9: LateMemCall
  loc_ADDBDF: FFree1Var var_D4 = ""
  loc_ADDBE2: LitI4 0
  loc_ADDBE7: LitI4 0
  loc_ADDBEC: LitI2_Byte 0
  loc_ADDBEE: LitStr "left"
  loc_ADDBF1: FMemLdR4 var_E4(12)
  loc_ADDBF6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADDBFB: CVarStr var_D4
  loc_ADDBFE: PopAdLdVar
  loc_ADDBFF: FLdPr Me
  loc_ADDC02: MemLdRfVar from_stack_1.global_64
  loc_ADDC05: LdPrVar
  loc_ADDC07: LateMemCall
  loc_ADDC0D: FFree1Var var_D4 = ""
  loc_ADDC10: LitI4 0
  loc_ADDC15: LitI4 0
  loc_ADDC1A: LitI2_Byte 0
  loc_ADDC1C: LitStr "right"
  loc_ADDC1F: FMemLdR4 var_E4(16)
  loc_ADDC24: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADDC29: CVarStr var_D4
  loc_ADDC2C: PopAdLdVar
  loc_ADDC2D: FLdPr Me
  loc_ADDC30: MemLdRfVar from_stack_1.global_64
  loc_ADDC33: LdPrVar
  loc_ADDC35: LateMemCall
  loc_ADDC3B: FFree1Var var_D4 = ""
  loc_ADDC3E: LitI4 0
  loc_ADDC43: LitI4 0
  loc_ADDC48: LitI2_Byte 0
  loc_ADDC4A: LitStr "right"
  loc_ADDC4D: FMemLdR4 var_E4(20)
  loc_ADDC52: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADDC57: CVarStr var_D4
  loc_ADDC5A: PopAdLdVar
  loc_ADDC5B: FLdPr Me
  loc_ADDC5E: MemLdRfVar from_stack_1.global_64
  loc_ADDC61: LdPrVar
  loc_ADDC63: LateMemCall
  loc_ADDC69: FFree1Var var_D4 = ""
  loc_ADDC6C: LitVarStr var_9C, "  </tr>"
  loc_ADDC71: PopAdLdVar
  loc_ADDC72: FLdPr Me
  loc_ADDC75: MemLdRfVar from_stack_1.global_64
  loc_ADDC78: LdPrVar
  loc_ADDC7A: LateMemCall
  loc_ADDC80: LitI4 0
  loc_ADDC85: FStR4 var_E4
  loc_ADDC88: AryUnlock
  loc_ADDC8B: AryUnlock
  loc_ADDC8E: FLdPr Me
  loc_ADDC91: MemLdRfVar from_stack_1.global_94
  loc_ADDC94: NextI2 var_D8, loc_ADDB16
  loc_ADDC99: LitVarStr var_9C, "  <tr>"
  loc_ADDC9E: PopAdLdVar
  loc_ADDC9F: FLdPr Me
  loc_ADDCA2: MemLdRfVar from_stack_1.global_64
  loc_ADDCA5: LdPrVar
  loc_ADDCA7: LateMemCall
  loc_ADDCAD: LitVarStr var_9C, "    <th colspan=""3"" align=""left"">&nbsp;</th>"
  loc_ADDCB2: PopAdLdVar
  loc_ADDCB3: FLdPr Me
  loc_ADDCB6: MemLdRfVar from_stack_1.global_64
  loc_ADDCB9: LdPrVar
  loc_ADDCBB: LateMemCall
  loc_ADDCC1: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Subtotal:</td>"
  loc_ADDCC6: PopAdLdVar
  loc_ADDCC7: FLdPr Me
  loc_ADDCCA: MemLdRfVar from_stack_1.global_64
  loc_ADDCCD: LdPrVar
  loc_ADDCCF: LateMemCall
  loc_ADDCD5: LitStr "    <td align=""right"" class=""Totales"">"
  loc_ADDCD8: FLdPr Me
  loc_ADDCDB: MemLdI2 global_92
  loc_ADDCDE: CI4UI1
  loc_ADDCDF: FLdPr Me
  loc_ADDCE2: MemLdStr global_80
  loc_ADDCE5: Ary1LdPr
  loc_ADDCE6: MemLdStr global_12
  loc_ADDCE9: ConcatStr
  loc_ADDCEA: FStStrNoPop var_B0
  loc_ADDCED: LitStr "</td>"
  loc_ADDCF0: ConcatStr
  loc_ADDCF1: CVarStr var_D4
  loc_ADDCF4: PopAdLdVar
  loc_ADDCF5: FLdPr Me
  loc_ADDCF8: MemLdRfVar from_stack_1.global_64
  loc_ADDCFB: LdPrVar
  loc_ADDCFD: LateMemCall
  loc_ADDD03: FFree1Str var_B0
  loc_ADDD06: FFree1Var var_D4 = ""
  loc_ADDD09: LitStr "    <td align=""right"" class=""Totales"">"
  loc_ADDD0C: FLdPr Me
  loc_ADDD0F: MemLdI2 global_92
  loc_ADDD12: CI4UI1
  loc_ADDD13: FLdPr Me
  loc_ADDD16: MemLdStr global_80
  loc_ADDD19: Ary1LdPr
  loc_ADDD1A: MemLdStr global_16
  loc_ADDD1D: ConcatStr
  loc_ADDD1E: FStStrNoPop var_B0
  loc_ADDD21: LitStr "</td>"
  loc_ADDD24: ConcatStr
  loc_ADDD25: CVarStr var_D4
  loc_ADDD28: PopAdLdVar
  loc_ADDD29: FLdPr Me
  loc_ADDD2C: MemLdRfVar from_stack_1.global_64
  loc_ADDD2F: LdPrVar
  loc_ADDD31: LateMemCall
  loc_ADDD37: FFree1Str var_B0
  loc_ADDD3A: FFree1Var var_D4 = ""
  loc_ADDD3D: LitVarStr var_9C, "  </tr>"
  loc_ADDD42: PopAdLdVar
  loc_ADDD43: FLdPr Me
  loc_ADDD46: MemLdRfVar from_stack_1.global_64
  loc_ADDD49: LdPrVar
  loc_ADDD4B: LateMemCall
  loc_ADDD51: FLdPr Me
  loc_ADDD54: MemLdRfVar from_stack_1.global_92
  loc_ADDD57: NextI2 var_8C, loc_ADDA57
  loc_ADDD5C: LitVarStr var_9C, "  <tr><td colspan=""7"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_ADDD61: PopAdLdVar
  loc_ADDD62: FLdPr Me
  loc_ADDD65: MemLdRfVar from_stack_1.global_64
  loc_ADDD68: LdPrVar
  loc_ADDD6A: LateMemCall
  loc_ADDD70: LitVarStr var_9C, "  <tr>"
  loc_ADDD75: PopAdLdVar
  loc_ADDD76: FLdPr Me
  loc_ADDD79: MemLdRfVar from_stack_1.global_64
  loc_ADDD7C: LdPrVar
  loc_ADDD7E: LateMemCall
  loc_ADDD84: LitVarStr var_9C, "    <td colspan=""4"" align=""left"">&nbsp;</th>"
  loc_ADDD89: PopAdLdVar
  loc_ADDD8A: FLdPr Me
  loc_ADDD8D: MemLdRfVar from_stack_1.global_64
  loc_ADDD90: LdPrVar
  loc_ADDD92: LateMemCall
  loc_ADDD98: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_ADDD9D: PopAdLdVar
  loc_ADDD9E: FLdPr Me
  loc_ADDDA1: MemLdRfVar from_stack_1.global_64
  loc_ADDDA4: LdPrVar
  loc_ADDDA6: LateMemCall
  loc_ADDDAC: LitStr "    <td align=""right"" class=""Totales"">"
  loc_ADDDAF: FLdPr Me
  loc_ADDDB2: MemLdStr global_84
  loc_ADDDB5: ConcatStr
  loc_ADDDB6: FStStrNoPop var_B0
  loc_ADDDB9: LitStr "</td>"
  loc_ADDDBC: ConcatStr
  loc_ADDDBD: CVarStr var_D4
  loc_ADDDC0: PopAdLdVar
  loc_ADDDC1: FLdPr Me
  loc_ADDDC4: MemLdRfVar from_stack_1.global_64
  loc_ADDDC7: LdPrVar
  loc_ADDDC9: LateMemCall
  loc_ADDDCF: FFree1Str var_B0
  loc_ADDDD2: FFree1Var var_D4 = ""
  loc_ADDDD5: LitStr "    <td align=""right"" class=""Totales"">"
  loc_ADDDD8: FLdPr Me
  loc_ADDDDB: MemLdStr global_88
  loc_ADDDDE: ConcatStr
  loc_ADDDDF: FStStrNoPop var_B0
  loc_ADDDE2: LitStr "</td>"
  loc_ADDDE5: ConcatStr
  loc_ADDDE6: CVarStr var_D4
  loc_ADDDE9: PopAdLdVar
  loc_ADDDEA: FLdPr Me
  loc_ADDDED: MemLdRfVar from_stack_1.global_64
  loc_ADDDF0: LdPrVar
  loc_ADDDF2: LateMemCall
  loc_ADDDF8: FFree1Str var_B0
  loc_ADDDFB: FFree1Var var_D4 = ""
  loc_ADDDFE: LitVarStr var_9C, "  </tr>"
  loc_ADDE03: PopAdLdVar
  loc_ADDE04: FLdPr Me
  loc_ADDE07: MemLdRfVar from_stack_1.global_64
  loc_ADDE0A: LdPrVar
  loc_ADDE0C: LateMemCall
  loc_ADDE12: LitVarStr var_9C, "  <tr><td colspan=""7"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_ADDE17: PopAdLdVar
  loc_ADDE18: FLdPr Me
  loc_ADDE1B: MemLdRfVar from_stack_1.global_64
  loc_ADDE1E: LdPrVar
  loc_ADDE20: LateMemCall
  loc_ADDE26: FLdPr Me
  loc_ADDE29: MemLdStr global_88
  loc_ADDE2C: CR8Str
  loc_ADDE2E: FLdPr Me
  loc_ADDE31: MemLdStr global_84
  loc_ADDE34: CR8Str
  loc_ADDE36: SubR4
  loc_ADDE37: CR8R8
  loc_ADDE38: LitI2_Byte 0
  loc_ADDE3A: CR8I2
  loc_ADDE3B: GtR4
  loc_ADDE3C: BranchF loc_ADDE82
  loc_ADDE3F: LitI2_Byte 0
  loc_ADDE41: LitVar_Missing var_D4
  loc_ADDE44: LitI2_Byte &HFF
  loc_ADDE46: FLdPr Me
  loc_ADDE49: MemLdStr global_88
  loc_ADDE4C: CR8Str
  loc_ADDE4E: FLdPr Me
  loc_ADDE51: MemLdStr global_84
  loc_ADDE54: CR8Str
  loc_ADDE56: SubR4
  loc_ADDE57: CVarR8
  loc_ADDE5B: PopAdLdVar
  loc_ADDE5C: FLdRfVar var_EC
  loc_ADDE5F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ADDE64: FFree1Var var_D4 = ""
  loc_ADDE67: LitI2_Byte 0
  loc_ADDE69: LitVar_Missing var_D4
  loc_ADDE6C: LitI2_Byte &HFF
  loc_ADDE6E: LitVarStr var_9C, "0"
  loc_ADDE73: PopAdLdVar
  loc_ADDE74: FLdRfVar var_F0
  loc_ADDE77: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ADDE7C: FFree1Var var_D4 = ""
  loc_ADDE7F: Branch loc_ADDEC2
  loc_ADDE82: LitI2_Byte 0
  loc_ADDE84: LitVar_Missing var_D4
  loc_ADDE87: LitI2_Byte &HFF
  loc_ADDE89: FLdPr Me
  loc_ADDE8C: MemLdStr global_84
  loc_ADDE8F: CR8Str
  loc_ADDE91: FLdPr Me
  loc_ADDE94: MemLdStr global_88
  loc_ADDE97: CR8Str
  loc_ADDE99: SubR4
  loc_ADDE9A: CVarR8
  loc_ADDE9E: PopAdLdVar
  loc_ADDE9F: FLdRfVar var_F0
  loc_ADDEA2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ADDEA7: FFree1Var var_D4 = ""
  loc_ADDEAA: LitI2_Byte 0
  loc_ADDEAC: LitVar_Missing var_D4
  loc_ADDEAF: LitI2_Byte &HFF
  loc_ADDEB1: LitVarStr var_9C, "0"
  loc_ADDEB6: PopAdLdVar
  loc_ADDEB7: FLdRfVar var_EC
  loc_ADDEBA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ADDEBF: FFree1Var var_D4 = ""
  loc_ADDEC2: LitStr "SELECT CaerPaco, DetaCuco"
  loc_ADDEC5: LitStr " FROM paraconta"
  loc_ADDEC8: ConcatStr
  loc_ADDEC9: FStStrNoPop var_B0
  loc_ADDECC: LitStr " LEFT JOIN infogov.cuentacontable AS cc ON cc.PeriInfo = paraconta.PeriInfo AND cc.CodiCuco = CaerPaco"
  loc_ADDECF: ConcatStr
  loc_ADDED0: FStStrNoPop var_B4
  loc_ADDED3: LitStr " WHERE paraconta.PeriInfo = "
  loc_ADDED6: ConcatStr
  loc_ADDED7: CVarStr var_120
  loc_ADDEDA: FLdPr Me
  loc_ADDEDD: VCallAd Control_ID_mskDesde
  loc_ADDEE0: FStAdFunc var_88
  loc_ADDEE3: FLdPr var_88
  loc_ADDEE6: LateIdLdVar var_D4 DispID_15 0
  loc_ADDEED: CStrVarTmp
  loc_ADDEEE: CVarStr var_100
  loc_ADDEF1: FLdRfVar var_110
  loc_ADDEF4: ImpAdCallFPR4  = Year()
  loc_ADDEF9: FLdRfVar var_110
  loc_ADDEFC: ConcatVar var_130
  loc_ADDF00: CStrVarVal var_B8
  loc_ADDF04: FLdRfVar var_E8
  loc_ADDF07: NewIfNullPr clsparaconta
  loc_ADDF0A: Call clsparaconta.RedefineRS(from_stack_1v)
  loc_ADDF0F: FFreeStr var_B0 = "": var_B4 = ""
  loc_ADDF18: FFree1Ad var_88
  loc_ADDF1B: FFreeVar var_D4 = "": var_100 = "": var_120 = "": var_110 = ""
  loc_ADDF28: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_ADDF2D: PopAdLdVar
  loc_ADDF2E: FLdPr Me
  loc_ADDF31: MemLdRfVar from_stack_1.global_64
  loc_ADDF34: LdPrVar
  loc_ADDF36: LateMemCall
  loc_ADDF3C: LitVarStr var_AC, "    <td class=""Titulo2"" colspan=""4"" align=""left"">"
  loc_ADDF41: FLdRfVar var_D4
  loc_ADDF44: FLdRfVar var_138
  loc_ADDF47: LitVarStr var_9C, "CaerPaco"
  loc_ADDF4C: PopAdLdVar
  loc_ADDF4D: FLdRfVar var_134
  loc_ADDF50: FLdRfVar var_88
  loc_ADDF53: FLdRfVar var_E8
  loc_ADDF56: NewIfNullPr clsparaconta
  loc_ADDF59: from_stack_1v = clsparaconta.RsFrmGet()
  loc_ADDF5E: FLdPr var_88
  loc_ADDF61:  = Me.Fields
  loc_ADDF66: FLdPr var_134
  loc_ADDF69: from_stack_2 = Me.Item(from_stack_1)
  loc_ADDF6E: FLdPr var_138
  loc_ADDF71:  = Me.Value
  loc_ADDF76: FLdRfVar var_D4
  loc_ADDF79: ConcatVar var_100
  loc_ADDF7D: LitVarStr var_148, " - "
  loc_ADDF82: ConcatVar var_110
  loc_ADDF86: FLdRfVar var_120
  loc_ADDF89: FLdRfVar var_164
  loc_ADDF8C: LitVarStr var_160, "DetaCuco"
  loc_ADDF91: PopAdLdVar
  loc_ADDF92: FLdRfVar var_150
  loc_ADDF95: FLdRfVar var_14C
  loc_ADDF98: FLdRfVar var_E8
  loc_ADDF9B: NewIfNullPr clsparaconta
  loc_ADDF9E: from_stack_1v = clsparaconta.RsFrmGet()
  loc_ADDFA3: FLdPr var_14C
  loc_ADDFA6:  = Me.Fields
  loc_ADDFAB: FLdPr var_150
  loc_ADDFAE: from_stack_2 = Me.Item(from_stack_1)
  loc_ADDFB3: FLdPr var_164
  loc_ADDFB6:  = Me.Value
  loc_ADDFBB: FLdRfVar var_120
  loc_ADDFBE: ConcatVar var_130
  loc_ADDFC2: LitVarStr var_174, "</th>"
  loc_ADDFC7: ConcatVar var_184
  loc_ADDFCB: PopAdLdVar
  loc_ADDFCC: FLdPr Me
  loc_ADDFCF: MemLdRfVar from_stack_1.global_64
  loc_ADDFD2: LdPrVar
  loc_ADDFD4: LateMemCall
  loc_ADDFDA: FFreeAd var_88 = "": var_134 = "": var_138 = "": var_14C = "": var_150 = ""
  loc_ADDFE9: FFreeVar var_D4 = "": var_100 = "": var_110 = "": var_120 = "": var_130 = ""
  loc_ADDFF8: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_ADDFFD: PopAdLdVar
  loc_ADDFFE: FLdPr Me
  loc_ADE001: MemLdRfVar from_stack_1.global_64
  loc_ADE004: LdPrVar
  loc_ADE006: LateMemCall
  loc_ADE00C: LitStr "    <td align=""right"" class=""Totales"">"
  loc_ADE00F: ILdRf var_EC
  loc_ADE012: ConcatStr
  loc_ADE013: FStStrNoPop var_B0
  loc_ADE016: LitStr "</td>"
  loc_ADE019: ConcatStr
  loc_ADE01A: CVarStr var_D4
  loc_ADE01D: PopAdLdVar
  loc_ADE01E: FLdPr Me
  loc_ADE021: MemLdRfVar from_stack_1.global_64
  loc_ADE024: LdPrVar
  loc_ADE026: LateMemCall
  loc_ADE02C: FFree1Str var_B0
  loc_ADE02F: FFree1Var var_D4 = ""
  loc_ADE032: LitStr "    <td align=""right"" class=""Totales"">"
  loc_ADE035: ILdRf var_F0
  loc_ADE038: ConcatStr
  loc_ADE039: FStStrNoPop var_B0
  loc_ADE03C: LitStr "</td>"
  loc_ADE03F: ConcatStr
  loc_ADE040: CVarStr var_D4
  loc_ADE043: PopAdLdVar
  loc_ADE044: FLdPr Me
  loc_ADE047: MemLdRfVar from_stack_1.global_64
  loc_ADE04A: LdPrVar
  loc_ADE04C: LateMemCall
  loc_ADE052: FFree1Str var_B0
  loc_ADE055: FFree1Var var_D4 = ""
  loc_ADE058: LitVarStr var_9C, "  </tr>"
  loc_ADE05D: PopAdLdVar
  loc_ADE05E: FLdPr Me
  loc_ADE061: MemLdRfVar from_stack_1.global_64
  loc_ADE064: LdPrVar
  loc_ADE066: LateMemCall
  loc_ADE06C: LitNothing
  loc_ADE06E: CastAd
  loc_ADE071: FStAdFunc var_E8
  loc_ADE074: Call Proc_240_20_983F80()
  loc_ADE079: FLdPr Me
  loc_ADE07C: MemLdRfVar from_stack_1.global_64
  loc_ADE07F: LdPrVar
  loc_ADE081: LateMemCall
  loc_ADE087: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_ADE08C: ExitProcHresult
End Sub

Private Function Proc_240_19_ACFFB4() 'ACFFB4
  'Data Table: 44C814
  loc_ACF964: LitVarStr var_94, "<html>"
  loc_ACF969: PopAdLdVar
  loc_ACF96A: FLdPr Me
  loc_ACF96D: MemLdRfVar from_stack_1.global_64
  loc_ACF970: LdPrVar
  loc_ACF972: LateMemCall
  loc_ACF978: LitVarStr var_94, "<head>"
  loc_ACF97D: PopAdLdVar
  loc_ACF97E: FLdPr Me
  loc_ACF981: MemLdRfVar from_stack_1.global_64
  loc_ACF984: LdPrVar
  loc_ACF986: LateMemCall
  loc_ACF98C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_ACF991: PopAdLdVar
  loc_ACF992: FLdPr Me
  loc_ACF995: MemLdRfVar from_stack_1.global_64
  loc_ACF998: LdPrVar
  loc_ACF99A: LateMemCall
  loc_ACF9A0: LitStr "<title>"
  loc_ACF9A3: FLdRfVar var_A8
  loc_ACF9A6: FLdPr Me
  loc_ACF9A9:  = Me.Caption
  loc_ACF9AE: ILdRf var_A8
  loc_ACF9B1: ConcatStr
  loc_ACF9B2: FStStrNoPop var_AC
  loc_ACF9B5: LitStr "</title>"
  loc_ACF9B8: ConcatStr
  loc_ACF9B9: CVarStr var_BC
  loc_ACF9BC: PopAdLdVar
  loc_ACF9BD: FLdPr Me
  loc_ACF9C0: MemLdRfVar from_stack_1.global_64
  loc_ACF9C3: LdPrVar
  loc_ACF9C5: LateMemCall
  loc_ACF9CB: FFreeStr var_A8 = ""
  loc_ACF9D2: FFree1Var var_BC = ""
  loc_ACF9D5: LitVarStr var_94, "<style type=""text/css"">"
  loc_ACF9DA: PopAdLdVar
  loc_ACF9DB: FLdPr Me
  loc_ACF9DE: MemLdRfVar from_stack_1.global_64
  loc_ACF9E1: LdPrVar
  loc_ACF9E3: LateMemCall
  loc_ACF9E9: LitVarStr var_94, ".Titulo1 {"
  loc_ACF9EE: PopAdLdVar
  loc_ACF9EF: FLdPr Me
  loc_ACF9F2: MemLdRfVar from_stack_1.global_64
  loc_ACF9F5: LdPrVar
  loc_ACF9F7: LateMemCall
  loc_ACF9FD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ACFA02: PopAdLdVar
  loc_ACFA03: FLdPr Me
  loc_ACFA06: MemLdRfVar from_stack_1.global_64
  loc_ACFA09: LdPrVar
  loc_ACFA0B: LateMemCall
  loc_ACFA11: LitVarStr var_94, " font-size: 18px;"
  loc_ACFA16: PopAdLdVar
  loc_ACFA17: FLdPr Me
  loc_ACFA1A: MemLdRfVar from_stack_1.global_64
  loc_ACFA1D: LdPrVar
  loc_ACFA1F: LateMemCall
  loc_ACFA25: LitVarStr var_94, " font-weight: bold;"
  loc_ACFA2A: PopAdLdVar
  loc_ACFA2B: FLdPr Me
  loc_ACFA2E: MemLdRfVar from_stack_1.global_64
  loc_ACFA31: LdPrVar
  loc_ACFA33: LateMemCall
  loc_ACFA39: LitVarStr var_94, "}"
  loc_ACFA3E: PopAdLdVar
  loc_ACFA3F: FLdPr Me
  loc_ACFA42: MemLdRfVar from_stack_1.global_64
  loc_ACFA45: LdPrVar
  loc_ACFA47: LateMemCall
  loc_ACFA4D: LitVarStr var_94, ".Titulo2 {"
  loc_ACFA52: PopAdLdVar
  loc_ACFA53: FLdPr Me
  loc_ACFA56: MemLdRfVar from_stack_1.global_64
  loc_ACFA59: LdPrVar
  loc_ACFA5B: LateMemCall
  loc_ACFA61: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ACFA66: PopAdLdVar
  loc_ACFA67: FLdPr Me
  loc_ACFA6A: MemLdRfVar from_stack_1.global_64
  loc_ACFA6D: LdPrVar
  loc_ACFA6F: LateMemCall
  loc_ACFA75: LitVarStr var_94, " font-size: 14px;"
  loc_ACFA7A: PopAdLdVar
  loc_ACFA7B: FLdPr Me
  loc_ACFA7E: MemLdRfVar from_stack_1.global_64
  loc_ACFA81: LdPrVar
  loc_ACFA83: LateMemCall
  loc_ACFA89: LitVarStr var_94, " font-weight: bold;"
  loc_ACFA8E: PopAdLdVar
  loc_ACFA8F: FLdPr Me
  loc_ACFA92: MemLdRfVar from_stack_1.global_64
  loc_ACFA95: LdPrVar
  loc_ACFA97: LateMemCall
  loc_ACFA9D: LitVarStr var_94, "}"
  loc_ACFAA2: PopAdLdVar
  loc_ACFAA3: FLdPr Me
  loc_ACFAA6: MemLdRfVar from_stack_1.global_64
  loc_ACFAA9: LdPrVar
  loc_ACFAAB: LateMemCall
  loc_ACFAB1: LitVarStr var_94, ".Normal {"
  loc_ACFAB6: PopAdLdVar
  loc_ACFAB7: FLdPr Me
  loc_ACFABA: MemLdRfVar from_stack_1.global_64
  loc_ACFABD: LdPrVar
  loc_ACFABF: LateMemCall
  loc_ACFAC5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ACFACA: PopAdLdVar
  loc_ACFACB: FLdPr Me
  loc_ACFACE: MemLdRfVar from_stack_1.global_64
  loc_ACFAD1: LdPrVar
  loc_ACFAD3: LateMemCall
  loc_ACFAD9: LitVarStr var_94, " font-size: 14px;"
  loc_ACFADE: PopAdLdVar
  loc_ACFADF: FLdPr Me
  loc_ACFAE2: MemLdRfVar from_stack_1.global_64
  loc_ACFAE5: LdPrVar
  loc_ACFAE7: LateMemCall
  loc_ACFAED: LitVarStr var_94, " font-style: normal;"
  loc_ACFAF2: PopAdLdVar
  loc_ACFAF3: FLdPr Me
  loc_ACFAF6: MemLdRfVar from_stack_1.global_64
  loc_ACFAF9: LdPrVar
  loc_ACFAFB: LateMemCall
  loc_ACFB01: LitVarStr var_94, " font-weight: normal;"
  loc_ACFB06: PopAdLdVar
  loc_ACFB07: FLdPr Me
  loc_ACFB0A: MemLdRfVar from_stack_1.global_64
  loc_ACFB0D: LdPrVar
  loc_ACFB0F: LateMemCall
  loc_ACFB15: LitVarStr var_94, " font-variant: normal;"
  loc_ACFB1A: PopAdLdVar
  loc_ACFB1B: FLdPr Me
  loc_ACFB1E: MemLdRfVar from_stack_1.global_64
  loc_ACFB21: LdPrVar
  loc_ACFB23: LateMemCall
  loc_ACFB29: LitVarStr var_94, "}"
  loc_ACFB2E: PopAdLdVar
  loc_ACFB2F: FLdPr Me
  loc_ACFB32: MemLdRfVar from_stack_1.global_64
  loc_ACFB35: LdPrVar
  loc_ACFB37: LateMemCall
  loc_ACFB3D: LitVarStr var_94, ".Encabezado {"
  loc_ACFB42: PopAdLdVar
  loc_ACFB43: FLdPr Me
  loc_ACFB46: MemLdRfVar from_stack_1.global_64
  loc_ACFB49: LdPrVar
  loc_ACFB4B: LateMemCall
  loc_ACFB51: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_ACFB56: PopAdLdVar
  loc_ACFB57: FLdPr Me
  loc_ACFB5A: MemLdRfVar from_stack_1.global_64
  loc_ACFB5D: LdPrVar
  loc_ACFB5F: LateMemCall
  loc_ACFB65: LitVarStr var_94, " font-size: 13px;"
  loc_ACFB6A: PopAdLdVar
  loc_ACFB6B: FLdPr Me
  loc_ACFB6E: MemLdRfVar from_stack_1.global_64
  loc_ACFB71: LdPrVar
  loc_ACFB73: LateMemCall
  loc_ACFB79: LitVarStr var_94, " font-weight: bold;"
  loc_ACFB7E: PopAdLdVar
  loc_ACFB7F: FLdPr Me
  loc_ACFB82: MemLdRfVar from_stack_1.global_64
  loc_ACFB85: LdPrVar
  loc_ACFB87: LateMemCall
  loc_ACFB8D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_ACFB92: PopAdLdVar
  loc_ACFB93: FLdPr Me
  loc_ACFB96: MemLdRfVar from_stack_1.global_64
  loc_ACFB99: LdPrVar
  loc_ACFB9B: LateMemCall
  loc_ACFBA1: LitVarStr var_94, "}"
  loc_ACFBA6: PopAdLdVar
  loc_ACFBA7: FLdPr Me
  loc_ACFBAA: MemLdRfVar from_stack_1.global_64
  loc_ACFBAD: LdPrVar
  loc_ACFBAF: LateMemCall
  loc_ACFBB5: LitVarStr var_94, ".LineaDato {"
  loc_ACFBBA: PopAdLdVar
  loc_ACFBBB: FLdPr Me
  loc_ACFBBE: MemLdRfVar from_stack_1.global_64
  loc_ACFBC1: LdPrVar
  loc_ACFBC3: LateMemCall
  loc_ACFBC9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_ACFBCE: PopAdLdVar
  loc_ACFBCF: FLdPr Me
  loc_ACFBD2: MemLdRfVar from_stack_1.global_64
  loc_ACFBD5: LdPrVar
  loc_ACFBD7: LateMemCall
  loc_ACFBDD: LitVarStr var_94, " font-size: 10px;"
  loc_ACFBE2: PopAdLdVar
  loc_ACFBE3: FLdPr Me
  loc_ACFBE6: MemLdRfVar from_stack_1.global_64
  loc_ACFBE9: LdPrVar
  loc_ACFBEB: LateMemCall
  loc_ACFBF1: LitVarStr var_94, "}"
  loc_ACFBF6: PopAdLdVar
  loc_ACFBF7: FLdPr Me
  loc_ACFBFA: MemLdRfVar from_stack_1.global_64
  loc_ACFBFD: LdPrVar
  loc_ACFBFF: LateMemCall
  loc_ACFC05: LitVarStr var_94, ".Totales {"
  loc_ACFC0A: PopAdLdVar
  loc_ACFC0B: FLdPr Me
  loc_ACFC0E: MemLdRfVar from_stack_1.global_64
  loc_ACFC11: LdPrVar
  loc_ACFC13: LateMemCall
  loc_ACFC19: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_ACFC1E: PopAdLdVar
  loc_ACFC1F: FLdPr Me
  loc_ACFC22: MemLdRfVar from_stack_1.global_64
  loc_ACFC25: LdPrVar
  loc_ACFC27: LateMemCall
  loc_ACFC2D: LitVarStr var_94, " font-size: 12px;"
  loc_ACFC32: PopAdLdVar
  loc_ACFC33: FLdPr Me
  loc_ACFC36: MemLdRfVar from_stack_1.global_64
  loc_ACFC39: LdPrVar
  loc_ACFC3B: LateMemCall
  loc_ACFC41: LitVarStr var_94, " font-weight: bold;"
  loc_ACFC46: PopAdLdVar
  loc_ACFC47: FLdPr Me
  loc_ACFC4A: MemLdRfVar from_stack_1.global_64
  loc_ACFC4D: LdPrVar
  loc_ACFC4F: LateMemCall
  loc_ACFC55: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_ACFC5A: PopAdLdVar
  loc_ACFC5B: FLdPr Me
  loc_ACFC5E: MemLdRfVar from_stack_1.global_64
  loc_ACFC61: LdPrVar
  loc_ACFC63: LateMemCall
  loc_ACFC69: LitVarStr var_94, "}"
  loc_ACFC6E: PopAdLdVar
  loc_ACFC6F: FLdPr Me
  loc_ACFC72: MemLdRfVar from_stack_1.global_64
  loc_ACFC75: LdPrVar
  loc_ACFC77: LateMemCall
  loc_ACFC7D: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_ACFC82: PopAdLdVar
  loc_ACFC83: FLdPr Me
  loc_ACFC86: MemLdRfVar from_stack_1.global_64
  loc_ACFC89: LdPrVar
  loc_ACFC8B: LateMemCall
  loc_ACFC91: LitVarStr var_94, "</style>"
  loc_ACFC96: PopAdLdVar
  loc_ACFC97: FLdPr Me
  loc_ACFC9A: MemLdRfVar from_stack_1.global_64
  loc_ACFC9D: LdPrVar
  loc_ACFC9F: LateMemCall
  loc_ACFCA5: LitI4 0
  loc_ACFCAA: FStStrCopy var_AC
  loc_ACFCAD: FLdRfVar var_AC
  loc_ACFCB0: LitI4 0
  loc_ACFCB5: FStStrCopy var_A8
  loc_ACFCB8: FLdRfVar var_A8
  loc_ACFCBB: LitI2_Byte 0
  loc_ACFCBD: PopTmpLdAd2 var_BE
  loc_ACFCC0: FLdPr Me
  loc_ACFCC3: MemLdRfVar from_stack_1.global_64
  loc_ACFCC6: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_ACFCCB: FFreeStr var_A8 = ""
  loc_ACFCD2: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_ACFCD7: PopAdLdVar
  loc_ACFCD8: FLdPr Me
  loc_ACFCDB: MemLdRfVar from_stack_1.global_64
  loc_ACFCDE: LdPrVar
  loc_ACFCE0: LateMemCall
  loc_ACFCE6: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_ACFCEB: PopAdLdVar
  loc_ACFCEC: FLdPr Me
  loc_ACFCEF: MemLdRfVar from_stack_1.global_64
  loc_ACFCF2: LdPrVar
  loc_ACFCF4: LateMemCall
  loc_ACFCFA: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ valign=""bottom""><p align=""center""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_ACFCFF: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_ACFD04: FStVarCopyObj var_BC
  loc_ACFD07: FLdRfVar var_BC
  loc_ACFD0A: FLdRfVar var_D0
  loc_ACFD0D: ImpAdCallFPR4  = Ucase()
  loc_ACFD12: FLdRfVar var_D0
  loc_ACFD15: ConcatVar var_E0
  loc_ACFD19: LitVarStr var_F0, "</p>"
  loc_ACFD1E: ConcatVar var_100
  loc_ACFD22: PopAdLdVar
  loc_ACFD23: FLdPr Me
  loc_ACFD26: MemLdRfVar from_stack_1.global_64
  loc_ACFD29: LdPrVar
  loc_ACFD2B: LateMemCall
  loc_ACFD31: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_ACFD3C: LitStr "    <p align=""center"">"
  loc_ACFD3F: FLdRfVar var_A8
  loc_ACFD42: FLdPr Me
  loc_ACFD45:  = Me.Caption
  loc_ACFD4A: ILdRf var_A8
  loc_ACFD4D: ConcatStr
  loc_ACFD4E: FStStrNoPop var_AC
  loc_ACFD51: LitStr "</p></th>"
  loc_ACFD54: ConcatStr
  loc_ACFD55: CVarStr var_BC
  loc_ACFD58: PopAdLdVar
  loc_ACFD59: FLdPr Me
  loc_ACFD5C: MemLdRfVar from_stack_1.global_64
  loc_ACFD5F: LdPrVar
  loc_ACFD61: LateMemCall
  loc_ACFD67: FFreeStr var_A8 = ""
  loc_ACFD6E: FFree1Var var_BC = ""
  loc_ACFD71: LitVarStr var_94, "  </tr>"
  loc_ACFD76: PopAdLdVar
  loc_ACFD77: FLdPr Me
  loc_ACFD7A: MemLdRfVar from_stack_1.global_64
  loc_ACFD7D: LdPrVar
  loc_ACFD7F: LateMemCall
  loc_ACFD85: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_ACFD8A: PopAdLdVar
  loc_ACFD8B: FLdPr Me
  loc_ACFD8E: MemLdRfVar from_stack_1.global_64
  loc_ACFD91: LdPrVar
  loc_ACFD93: LateMemCall
  loc_ACFD99: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_ACFD9E: PopAdLdVar
  loc_ACFD9F: FLdPr Me
  loc_ACFDA2: MemLdRfVar from_stack_1.global_64
  loc_ACFDA5: LdPrVar
  loc_ACFDA7: LateMemCall
  loc_ACFDAD: FLdPr Me
  loc_ACFDB0: VCallAd Control_ID_mskDesde
  loc_ACFDB3: FStAdFunc var_114
  loc_ACFDB6: FLdPr var_114
  loc_ACFDB9: LateIdLdVar var_BC DispID_22 0
  loc_ACFDC0: CStrVarTmp
  loc_ACFDC1: FStStrNoPop var_A8
  loc_ACFDC4: LitStr vbNullString
  loc_ACFDC7: NeStr
  loc_ACFDC9: FFree1Str var_A8
  loc_ACFDCC: FFree1Ad var_114
  loc_ACFDCF: FFree1Var var_BC = ""
  loc_ACFDD2: BranchF loc_ACFE1A
  loc_ACFDD5: LitStr "         Desde: <span class=""Normal"">"
  loc_ACFDD8: FLdPr Me
  loc_ACFDDB: VCallAd Control_ID_mskDesde
  loc_ACFDDE: FStAdFunc var_114
  loc_ACFDE1: FLdPr var_114
  loc_ACFDE4: LateIdLdVar var_BC DispID_15 0
  loc_ACFDEB: CStrVarTmp
  loc_ACFDEC: FStStrNoPop var_A8
  loc_ACFDEF: ConcatStr
  loc_ACFDF0: FStStrNoPop var_AC
  loc_ACFDF3: LitStr "</span><br>"
  loc_ACFDF6: ConcatStr
  loc_ACFDF7: CVarStr var_D0
  loc_ACFDFA: PopAdLdVar
  loc_ACFDFB: FLdPr Me
  loc_ACFDFE: MemLdRfVar from_stack_1.global_64
  loc_ACFE01: LdPrVar
  loc_ACFE03: LateMemCall
  loc_ACFE09: FFreeStr var_A8 = ""
  loc_ACFE10: FFree1Ad var_114
  loc_ACFE13: FFreeVar var_BC = ""
  loc_ACFE1A: FLdPr Me
  loc_ACFE1D: VCallAd Control_ID_mskHasta
  loc_ACFE20: FStAdFunc var_114
  loc_ACFE23: FLdPr var_114
  loc_ACFE26: LateIdLdVar var_BC DispID_22 0
  loc_ACFE2D: CStrVarTmp
  loc_ACFE2E: FStStrNoPop var_A8
  loc_ACFE31: LitStr vbNullString
  loc_ACFE34: NeStr
  loc_ACFE36: FFree1Str var_A8
  loc_ACFE39: FFree1Ad var_114
  loc_ACFE3C: FFree1Var var_BC = ""
  loc_ACFE3F: BranchF loc_ACFE87
  loc_ACFE42: LitStr "         Hasta: <span class=""Normal"">"
  loc_ACFE45: FLdPr Me
  loc_ACFE48: VCallAd Control_ID_mskHasta
  loc_ACFE4B: FStAdFunc var_114
  loc_ACFE4E: FLdPr var_114
  loc_ACFE51: LateIdLdVar var_BC DispID_15 0
  loc_ACFE58: CStrVarTmp
  loc_ACFE59: FStStrNoPop var_A8
  loc_ACFE5C: ConcatStr
  loc_ACFE5D: FStStrNoPop var_AC
  loc_ACFE60: LitStr "</span>"
  loc_ACFE63: ConcatStr
  loc_ACFE64: CVarStr var_D0
  loc_ACFE67: PopAdLdVar
  loc_ACFE68: FLdPr Me
  loc_ACFE6B: MemLdRfVar from_stack_1.global_64
  loc_ACFE6E: LdPrVar
  loc_ACFE70: LateMemCall
  loc_ACFE76: FFreeStr var_A8 = ""
  loc_ACFE7D: FFree1Ad var_114
  loc_ACFE80: FFreeVar var_BC = ""
  loc_ACFE87: LitVarStr var_94, "   </th>"
  loc_ACFE8C: PopAdLdVar
  loc_ACFE8D: FLdPr Me
  loc_ACFE90: MemLdRfVar from_stack_1.global_64
  loc_ACFE93: LdPrVar
  loc_ACFE95: LateMemCall
  loc_ACFE9B: LitVarStr var_94, "  </tr>"
  loc_ACFEA0: PopAdLdVar
  loc_ACFEA1: FLdPr Me
  loc_ACFEA4: MemLdRfVar from_stack_1.global_64
  loc_ACFEA7: LdPrVar
  loc_ACFEA9: LateMemCall
  loc_ACFEAF: LitVarStr var_94, "</table>"
  loc_ACFEB4: PopAdLdVar
  loc_ACFEB5: FLdPr Me
  loc_ACFEB8: MemLdRfVar from_stack_1.global_64
  loc_ACFEBB: LdPrVar
  loc_ACFEBD: LateMemCall
  loc_ACFEC3: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_ACFEC8: PopAdLdVar
  loc_ACFEC9: FLdPr Me
  loc_ACFECC: MemLdRfVar from_stack_1.global_64
  loc_ACFECF: LdPrVar
  loc_ACFED1: LateMemCall
  loc_ACFED7: LitVarStr var_94, "  <THEAD>"
  loc_ACFEDC: PopAdLdVar
  loc_ACFEDD: FLdPr Me
  loc_ACFEE0: MemLdRfVar from_stack_1.global_64
  loc_ACFEE3: LdPrVar
  loc_ACFEE5: LateMemCall
  loc_ACFEEB: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_ACFEF0: PopAdLdVar
  loc_ACFEF1: FLdPr Me
  loc_ACFEF4: MemLdRfVar from_stack_1.global_64
  loc_ACFEF7: LdPrVar
  loc_ACFEF9: LateMemCall
  loc_ACFEFF: LitVarStr var_94, "    <th>Cuenta Contable</th>"
  loc_ACFF04: PopAdLdVar
  loc_ACFF05: FLdPr Me
  loc_ACFF08: MemLdRfVar from_stack_1.global_64
  loc_ACFF0B: LdPrVar
  loc_ACFF0D: LateMemCall
  loc_ACFF13: LitVarStr var_94, "    <th>Fecha</th>"
  loc_ACFF18: PopAdLdVar
  loc_ACFF19: FLdPr Me
  loc_ACFF1C: MemLdRfVar from_stack_1.global_64
  loc_ACFF1F: LdPrVar
  loc_ACFF21: LateMemCall
  loc_ACFF27: LitVarStr var_94, "    <th>Partida</th>"
  loc_ACFF2C: PopAdLdVar
  loc_ACFF2D: FLdPr Me
  loc_ACFF30: MemLdRfVar from_stack_1.global_64
  loc_ACFF33: LdPrVar
  loc_ACFF35: LateMemCall
  loc_ACFF3B: LitVarStr var_94, "    <th>Organigrama</th>"
  loc_ACFF40: PopAdLdVar
  loc_ACFF41: FLdPr Me
  loc_ACFF44: MemLdRfVar from_stack_1.global_64
  loc_ACFF47: LdPrVar
  loc_ACFF49: LateMemCall
  loc_ACFF4F: LitVarStr var_94, "    <th>Expediente</th>"
  loc_ACFF54: PopAdLdVar
  loc_ACFF55: FLdPr Me
  loc_ACFF58: MemLdRfVar from_stack_1.global_64
  loc_ACFF5B: LdPrVar
  loc_ACFF5D: LateMemCall
  loc_ACFF63: LitVarStr var_94, "    <th>D E B E</th>"
  loc_ACFF68: PopAdLdVar
  loc_ACFF69: FLdPr Me
  loc_ACFF6C: MemLdRfVar from_stack_1.global_64
  loc_ACFF6F: LdPrVar
  loc_ACFF71: LateMemCall
  loc_ACFF77: LitVarStr var_94, "    <th>H A B E R</th>"
  loc_ACFF7C: PopAdLdVar
  loc_ACFF7D: FLdPr Me
  loc_ACFF80: MemLdRfVar from_stack_1.global_64
  loc_ACFF83: LdPrVar
  loc_ACFF85: LateMemCall
  loc_ACFF8B: LitVarStr var_94, "  </tr>"
  loc_ACFF90: PopAdLdVar
  loc_ACFF91: FLdPr Me
  loc_ACFF94: MemLdRfVar from_stack_1.global_64
  loc_ACFF97: LdPrVar
  loc_ACFF99: LateMemCall
  loc_ACFF9F: LitVarStr var_94, "  </THEAD>"
  loc_ACFFA4: PopAdLdVar
  loc_ACFFA5: FLdPr Me
  loc_ACFFA8: MemLdRfVar from_stack_1.global_64
  loc_ACFFAB: LdPrVar
  loc_ACFFAD: LateMemCall
  loc_ACFFB3: ExitProcHresult
End Function

Private Function Proc_240_20_983F80() '983F80
  'Data Table: 44C814
  loc_983F40: LitVarStr var_94, "</table>"
  loc_983F45: PopAdLdVar
  loc_983F46: FLdPr Me
  loc_983F49: MemLdRfVar from_stack_1.global_64
  loc_983F4C: LdPrVar
  loc_983F4E: LateMemCall
  loc_983F54: LitVarStr var_94, "</body>"
  loc_983F59: PopAdLdVar
  loc_983F5A: FLdPr Me
  loc_983F5D: MemLdRfVar from_stack_1.global_64
  loc_983F60: LdPrVar
  loc_983F62: LateMemCall
  loc_983F68: LitVarStr var_94, "</html>"
  loc_983F6D: PopAdLdVar
  loc_983F6E: FLdPr Me
  loc_983F71: MemLdRfVar from_stack_1.global_64
  loc_983F74: LdPrVar
  loc_983F76: LateMemCall
  loc_983F7C: ExitProcHresult
End Function
