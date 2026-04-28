VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptSubdiariodeinventario
  Caption = "Subdiario de inventario"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptSubdiariodeinventario.frx":0000
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
    OleObjectBlob = "rptSubdiariodeinventario.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5280
    Top = 1800
    Width = 735
    Height = 615
    TabIndex = 13
    Cancel = -1  'True
    Picture = "rptSubdiariodeinventario.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptSubdiariodeinventario.frx":0B9C
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
      Picture = "rptSubdiariodeinventario.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2520
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptSubdiariodeinventario.frx":1142
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
      OleObjectBlob = "rptSubdiariodeinventario.frx":1684
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1320
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 6
      OleObjectBlob = "rptSubdiariodeinventario.frx":170C
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
    OleObjectBlob = "rptSubdiariodeinventario.frx":1794
  End
End

Attribute VB_Name = "rptSubdiariodeinventario"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_0059A1E0
  bStruc(20) As Byte ' String fields: 5
End Type

Private Type UDT_2_0062216C
  bStruc(20) As Byte ' String fields: 5
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98B1D4
  'Data Table: 447128
  loc_98B19C: FLdPr Me
  loc_98B19F: VCallAd Control_ID_statusBar
  loc_98B1A2: FStAdFunc var_88
  loc_98B1A5: FLdPr var_88
  loc_98B1A8: LateIdLdVar var_98 DispID_1 0
  loc_98B1AF: CStrVarTmp
  loc_98B1B0: CVarStr var_A8
  loc_98B1B3: PopAdLdVar
  loc_98B1B4: FLdPr Me
  loc_98B1B7: VCallAd Control_ID_statusBar
  loc_98B1BA: FStAdFunc var_BC
  loc_98B1BD: FLdPr var_BC
  loc_98B1C0: LateIdSt
  loc_98B1C5: FFreeAd var_88 = ""
  loc_98B1CC: FFreeVar var_98 = ""
  loc_98B1D3: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95E444
  'Data Table: 447128
  loc_95E42C: LitI2_Byte 0
  loc_95E42E: ILdRf Me
  loc_95E431: CastAd
  loc_95E434: FStAdFunc var_88
  loc_95E437: FLdRfVar var_88
  loc_95E43A: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95E43F: FFree1Ad var_88
  loc_95E442: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9569A8
  'Data Table: 447128
  loc_956990: ILdRf Me
  loc_956993: CastAd
  loc_956996: FStAdFunc var_88
  loc_956999: FLdRfVar var_88
  loc_95699C: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_9569A1: FFree1Ad var_88
  loc_9569A4: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97C300
  'Data Table: 447128
  loc_97C2D0: LitVarStr var_94, "Cerrando..."
  loc_97C2D5: PopAdLdVar
  loc_97C2D6: FLdPr Me
  loc_97C2D9: VCallAd Control_ID_statusBar
  loc_97C2DC: FStAdFunc var_A8
  loc_97C2DF: FLdPr var_A8
  loc_97C2E2: LateIdSt
  loc_97C2E7: FFree1Ad var_A8
  loc_97C2EA: ILdRf Me
  loc_97C2ED: FStAdNoPop
  loc_97C2F1: ImpAdLdRf MemVar_C44F9C
  loc_97C2F4: NewIfNullPr Me
  loc_97C2F7: Me.Global.Unload from_stack_1
  loc_97C2FC: FFree1Ad var_A8
  loc_97C2FF: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9BC3BC
  'Data Table: 447128
  loc_9BC30C: LitI2_Byte 0
  loc_9BC30E: FLdPr Me
  loc_9BC311: MemStI2 bGenerado
  loc_9BC314: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9BC319: LitI2_Byte 0
  loc_9BC31B: PopTmpLdAd2 var_86
  loc_9BC31E: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9BC323: CVarDate var_A8
  loc_9BC327: FLdRfVar var_B8
  loc_9BC32A: ImpAdCallFPR4  = Year()
  loc_9BC32F: LitI2_Byte 0
  loc_9BC331: PopTmpLdAd2 var_BA
  loc_9BC334: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9BC339: CVarDate var_DC
  loc_9BC33D: FLdRfVar var_EC
  loc_9BC340: ImpAdCallFPR4  = Month()
  loc_9BC345: LitI2_Byte 1
  loc_9BC347: FLdRfVar var_EC
  loc_9BC34A: CI2Var
  loc_9BC34B: FLdRfVar var_B8
  loc_9BC34E: CI2Var
  loc_9BC34F: FLdRfVar var_FC
  loc_9BC352: ImpAdCallFPR4  = DateSerial(, , )
  loc_9BC357: FLdRfVar var_FC
  loc_9BC35A: CStrVarTmp
  loc_9BC35B: CVarStr var_10C
  loc_9BC35E: PopAdLdVar
  loc_9BC35F: FLdPr Me
  loc_9BC362: VCallAd Control_ID_mskDesde
  loc_9BC365: FStAdFunc var_120
  loc_9BC368: FLdPr var_120
  loc_9BC36B: LateIdSt
  loc_9BC370: FFree1Ad var_120
  loc_9BC373: FFreeVar var_A8 = "": var_DC = "": var_B8 = "": var_EC = "": var_FC = ""
  loc_9BC382: ImpAdLdFPR8 MemVar_C3D04C
  loc_9BC385: CStrDate
  loc_9BC387: CVarStr var_A8
  loc_9BC38A: PopAdLdVar
  loc_9BC38B: FLdPr Me
  loc_9BC38E: VCallAd Control_ID_mskHasta
  loc_9BC391: FStAdFunc var_120
  loc_9BC394: FLdPr var_120
  loc_9BC397: LateIdSt
  loc_9BC39C: FFree1Ad var_120
  loc_9BC39F: FFree1Var var_A8 = ""
  loc_9BC3A2: Call HabilitarCriterio()
  loc_9BC3A7: ILdRf Me
  loc_9BC3AA: CastAd
  loc_9BC3AD: FStAdFunc var_120
  loc_9BC3B0: FLdRfVar var_120
  loc_9BC3B3: ImpAdCallFPR4  = Proc_263_12_9C9114()
  loc_9BC3B8: FFree1Ad var_120
  loc_9BC3BB: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95DD70
  'Data Table: 447128
  loc_95DD58: ILdRf Me
  loc_95DD5B: CastAd
  loc_95DD5E: FStAdFunc var_88
  loc_95DD61: FLdRfVar var_88
  loc_95DD64: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95DD69: FFree1Ad var_88
  loc_95DD6C: ExitProcHresult
  loc_95DD6D: CDateR8
  loc_95DD6E: MemStFPR4 global_-20476
End Sub

Private Sub mskDesde_UnknownEvent_0 '94F608
  'Data Table: 447128
  loc_94F5F4: FLdPr Me
  loc_94F5F7: VCallAd Control_ID_mskDesde
  loc_94F5FA: CVarAd
  loc_94F5FE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F603: FFree1Var var_94 = ""
  loc_94F606: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9C4CB8
  'Data Table: 447128
  loc_9C4BF4: FLdPr Me
  loc_9C4BF7: VCallAd Control_ID_mskDesde
  loc_9C4BFA: FStAdFunc var_88
  loc_9C4BFD: FLdPr var_88
  loc_9C4C00: LateIdLdVar var_98 DispID_22 0
  loc_9C4C07: CStrVarTmp
  loc_9C4C08: FStStrNoPop var_9C
  loc_9C4C0B: LitStr vbNullString
  loc_9C4C0E: NeStr
  loc_9C4C10: FFree1Str var_9C
  loc_9C4C13: FFree1Ad var_88
  loc_9C4C16: FFree1Var var_98 = ""
  loc_9C4C19: BranchF loc_9C4CB4
  loc_9C4C1C: FLdPr Me
  loc_9C4C1F: VCallAd Control_ID_mskDesde
  loc_9C4C22: FStAdFunc var_88
  loc_9C4C25: FLdPr var_88
  loc_9C4C28: LateIdLdVar var_98 DispID_15 0
  loc_9C4C2F: PopAd
  loc_9C4C31: FLdPr Me
  loc_9C4C34: VCallAd Control_ID_mskDesde
  loc_9C4C37: FStAdFunc var_AC
  loc_9C4C3A: LitI2_Byte &HFF
  loc_9C4C3C: PopTmpLdAd2 var_A2
  loc_9C4C3F: FLdZeroAd var_AC
  loc_9C4C42: FStAdFunc var_A0
  loc_9C4C45: FLdRfVar var_A0
  loc_9C4C48: LitStr vbNullString
  loc_9C4C4B: LitI2_Byte 0
  loc_9C4C4D: LitI2_Byte 0
  loc_9C4C4F: FLdRfVar var_98
  loc_9C4C52: CStrVarTmp
  loc_9C4C53: FStStrNoPop var_9C
  loc_9C4C56: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C4C5B: FStStrNoPop var_A8
  loc_9C4C5E: FLdPr Me
  loc_9C4C61: MemStStrCopy
  loc_9C4C65: FFreeStr var_9C = ""
  loc_9C4C6C: FFreeAd var_88 = "": var_A0 = ""
  loc_9C4C75: FFree1Var var_98 = ""
  loc_9C4C78: FLdPr Me
  loc_9C4C7B: VCallAd Control_ID_mskDesde
  loc_9C4C7E: FStAdFunc var_B0
  loc_9C4C81: LitNothing
  loc_9C4C83: CastAd
  loc_9C4C86: FStAdFunc var_AC
  loc_9C4C89: FLdRfVar var_AC
  loc_9C4C8C: FLdZeroAd var_B0
  loc_9C4C8F: FStAdFuncNoPop
  loc_9C4C92: CastAd
  loc_9C4C95: FStAdFunc var_A0
  loc_9C4C98: FLdRfVar var_A0
  loc_9C4C9B: FLdPr Me
  loc_9C4C9E: MemLdRfVar from_stack_1.global_100
  loc_9C4CA1: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C4CA6: IStI2 arg_C
  loc_9C4CA9: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9C4CB4: ExitProcHresult
  loc_9C4CB5: FnLenStr
  loc_9C4CB6: UMiCy
End Function

Private Sub mskHasta_UnknownEvent_0 '94F4E8
  'Data Table: 447128
  loc_94F4D4: FLdPr Me
  loc_94F4D7: VCallAd Control_ID_mskHasta
  loc_94F4DA: CVarAd
  loc_94F4DE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F4E3: FFree1Var var_94 = ""
  loc_94F4E6: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B2B24
  'Data Table: 447128
  loc_9B2A88: FLdPr Me
  loc_9B2A8B: VCallAd Control_ID_mskHasta
  loc_9B2A8E: FStAdFunc var_88
  loc_9B2A91: FLdPr var_88
  loc_9B2A94: LateIdLdVar var_98 DispID_15 0
  loc_9B2A9B: PopAd
  loc_9B2A9D: FLdPr Me
  loc_9B2AA0: VCallAd Control_ID_mskHasta
  loc_9B2AA3: FStAdFunc var_AC
  loc_9B2AA6: LitI2_Byte &HFF
  loc_9B2AA8: PopTmpLdAd2 var_A2
  loc_9B2AAB: FLdZeroAd var_AC
  loc_9B2AAE: FStAdFunc var_A0
  loc_9B2AB1: FLdRfVar var_A0
  loc_9B2AB4: LitStr vbNullString
  loc_9B2AB7: LitI2_Byte 0
  loc_9B2AB9: LitI2_Byte 0
  loc_9B2ABB: FLdRfVar var_98
  loc_9B2ABE: CStrVarTmp
  loc_9B2ABF: FStStrNoPop var_9C
  loc_9B2AC2: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B2AC7: FStStrNoPop var_A8
  loc_9B2ACA: FLdPr Me
  loc_9B2ACD: MemStStrCopy
  loc_9B2AD1: FFreeStr var_9C = ""
  loc_9B2AD8: FFreeAd var_88 = "": var_A0 = ""
  loc_9B2AE1: FFree1Var var_98 = ""
  loc_9B2AE4: FLdPr Me
  loc_9B2AE7: VCallAd Control_ID_mskHasta
  loc_9B2AEA: FStAdFunc var_B0
  loc_9B2AED: LitNothing
  loc_9B2AEF: CastAd
  loc_9B2AF2: FStAdFunc var_AC
  loc_9B2AF5: FLdRfVar var_AC
  loc_9B2AF8: FLdZeroAd var_B0
  loc_9B2AFB: FStAdFuncNoPop
  loc_9B2AFE: CastAd
  loc_9B2B01: FStAdFunc var_A0
  loc_9B2B04: FLdRfVar var_A0
  loc_9B2B07: FLdPr Me
  loc_9B2B0A: MemLdRfVar from_stack_1.global_100
  loc_9B2B0D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B2B12: IStI2 arg_C
  loc_9B2B15: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B2B20: ExitProcHresult
  loc_9B2B21: ImpAdLdPr unk_447481
End Function

Private Sub cmdCalHasta_Click() '97C5C8
  'Data Table: 447128
  loc_97C594: LitVar_Missing var_A4
  loc_97C597: PopAdLdVar
  loc_97C598: LitVarI4
  loc_97C5A0: PopAdLdVar
  loc_97C5A1: ImpAdLdRf MemVar_C3D9A8
  loc_97C5A4: NewIfNullPr frmCalendario
  loc_97C5A7: frmCalendario.Show from_stack_1, from_stack_2
  loc_97C5AC: ImpAdLdRf MemVar_C3D038
  loc_97C5AF: CDargRef
  loc_97C5B3: FLdPr Me
  loc_97C5B6: VCallAd Control_ID_mskHasta
  loc_97C5B9: FStAdFunc var_A8
  loc_97C5BC: FLdPr var_A8
  loc_97C5BF: LateIdSt
  loc_97C5C4: FFree1Ad var_A8
  loc_97C5C7: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97C698
  'Data Table: 447128
  loc_97C664: LitVar_Missing var_A4
  loc_97C667: PopAdLdVar
  loc_97C668: LitVarI4
  loc_97C670: PopAdLdVar
  loc_97C671: ImpAdLdRf MemVar_C3D9A8
  loc_97C674: NewIfNullPr frmCalendario
  loc_97C677: frmCalendario.Show from_stack_1, from_stack_2
  loc_97C67C: ImpAdLdRf MemVar_C3D038
  loc_97C67F: CDargRef
  loc_97C683: FLdPr Me
  loc_97C686: VCallAd Control_ID_mskDesde
  loc_97C689: FStAdFunc var_A8
  loc_97C68C: FLdPr var_A8
  loc_97C68F: LateIdSt
  loc_97C694: FFree1Ad var_A8
  loc_97C697: ExitProcHresult
End Sub

Private Sub Form_Load() '96BB90
  'Data Table: 447128
  loc_96BB70: LitI2_Byte &HFF
  loc_96BB72: ImpAdStI2 MemVar_C3D840
  loc_96BB75: ILdRf Me
  loc_96BB78: CastAd
  loc_96BB7B: FStAdFunc var_88
  loc_96BB7E: FLdRfVar var_88
  loc_96BB81: ImpAdCallFPR4  = Proc_261_42_9991A0()
  loc_96BB86: FFree1Ad var_88
  loc_96BB89: Call cmdNueva_Click()
  loc_96BB8E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '957964
  'Data Table: 447128
  loc_95794C: FLdPr Me
  loc_95794F: VCallAd Control_ID_wbbReporte
  loc_957952: FStAdFunc var_88
  loc_957955: FLdRfVar var_88
  loc_957958: ImpAdCallFPR4  = Proc_263_22_98CC50()
  loc_95795D: FFree1Ad var_88
  loc_957960: ExitProcHresult
  loc_957961: Ary1StFPR8
  loc_957962: BranchFVar
End Sub

Public Function htmFileGet() '447D54
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '447D63
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '447D72
  htmFile = Value
End Sub

Public Function bGeneradoGet() '447D81
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '447D90
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9A185C
  'Data Table: 447128
  loc_9A17F8: LitI4 0
  loc_9A17FD: LitI4 3
  loc_9A1802: FLdRfVar var_88
  loc_9A1805: Redim
  loc_9A180F: FLdPr Me
  loc_9A1812: VCallAd Control_ID_mskDesde
  loc_9A1815: CVarAd
  loc_9A1819: ParmAry1St
  loc_9A181F: FLdPr Me
  loc_9A1822: VCallAd Control_ID_cmdCalDesde
  loc_9A1825: CVarAd
  loc_9A1829: ParmAry1St
  loc_9A182F: FLdPr Me
  loc_9A1832: VCallAd Control_ID_mskHasta
  loc_9A1835: CVarAd
  loc_9A1839: ParmAry1St
  loc_9A183F: FLdPr Me
  loc_9A1842: VCallAd Control_ID_cmdCalHasta
  loc_9A1845: CVarAd
  loc_9A1849: ParmAry1St
  loc_9A184F: FLdRfVar var_88
  loc_9A1852: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A1857: FLdRfVar var_88
  loc_9A185A: Erase
  loc_9A185B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'AF2358
  'Data Table: 447128
  loc_AF1C40: LitStr vbNullString
  loc_AF1C43: FLdPr Me
  loc_AF1C46: MemStStrCopy
  loc_AF1C4A: LitI2_Byte 0
  loc_AF1C4C: PopTmpLdAd2 var_8E
  loc_AF1C4F: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_AF1C54: FLdPr Me
  loc_AF1C57: MemLdStr global_100
  loc_AF1C5A: LitStr vbNullString
  loc_AF1C5D: NeStr
  loc_AF1C5F: BranchF loc_AF1C65
  loc_AF1C62: Branch loc_AF232E
  loc_AF1C65: LitI2_Byte 0
  loc_AF1C67: PopTmpLdAd2 var_8E
  loc_AF1C6A: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_AF1C6F: FLdPr Me
  loc_AF1C72: MemLdStr global_100
  loc_AF1C75: LitStr vbNullString
  loc_AF1C78: NeStr
  loc_AF1C7A: BranchF loc_AF1C80
  loc_AF1C7D: Branch loc_AF232E
  loc_AF1C80: FLdPr Me
  loc_AF1C83: MemLdI2 bGenerado
  loc_AF1C86: BranchF loc_AF1C8A
  loc_AF1C89: ExitProcHresult
  loc_AF1C8A: LitVarStr var_A0, "Generando reporte..."
  loc_AF1C8F: PopAdLdVar
  loc_AF1C90: FLdPr Me
  loc_AF1C93: VCallAd Control_ID_statusBar
  loc_AF1C96: FStAdFunc var_B4
  loc_AF1C99: FLdPr var_B4
  loc_AF1C9C: LateIdSt
  loc_AF1CA1: FFree1Ad var_B4
  loc_AF1CA4: LitI4 &HB
  loc_AF1CA9: CI2I4
  loc_AF1CAA: FLdPr Me
  loc_AF1CAD: Me.MousePointer = from_stack_1
  loc_AF1CB2: FLdPr Me
  loc_AF1CB5: VCallAd Control_ID_mskDesde
  loc_AF1CB8: FStAdFunc var_B4
  loc_AF1CBB: FLdPr var_B4
  loc_AF1CBE: LateIdLdVar var_C4 DispID_22 0
  loc_AF1CC5: CStrVarTmp
  loc_AF1CC6: FStStrNoPop var_C8
  loc_AF1CC9: LitStr vbNullString
  loc_AF1CCC: NeStr
  loc_AF1CCE: FFree1Str var_C8
  loc_AF1CD1: FFree1Ad var_B4
  loc_AF1CD4: FFree1Var var_C4 = ""
  loc_AF1CD7: BranchF loc_AF1D29
  loc_AF1CDA: FLdPr Me
  loc_AF1CDD: VCallAd Control_ID_mskDesde
  loc_AF1CE0: FStAdFunc var_B4
  loc_AF1CE3: FLdPr var_B4
  loc_AF1CE6: LateIdLdVar var_C4 DispID_15 0
  loc_AF1CED: PopAd
  loc_AF1CEF: LitStr " AND FechCaja >= "
  loc_AF1CF2: LitI4 1
  loc_AF1CF7: LitI4 1
  loc_AF1CFC: LitVarStr var_A0, "'yyyy-mm-dd'"
  loc_AF1D01: FStVarCopyObj var_E8
  loc_AF1D04: FLdRfVar var_E8
  loc_AF1D07: FLdRfVar var_C4
  loc_AF1D0A: CStrVarTmp
  loc_AF1D0B: CVarStr var_D8
  loc_AF1D0E: ImpAdCallI2 Format$(, )
  loc_AF1D13: FStStrNoPop var_C8
  loc_AF1D16: ConcatStr
  loc_AF1D17: FStStr var_88
  loc_AF1D1A: FFree1Str var_C8
  loc_AF1D1D: FFree1Ad var_B4
  loc_AF1D20: FFreeVar var_C4 = "": var_D8 = ""
  loc_AF1D29: FLdPr Me
  loc_AF1D2C: VCallAd Control_ID_mskHasta
  loc_AF1D2F: FStAdFunc var_B4
  loc_AF1D32: FLdPr var_B4
  loc_AF1D35: LateIdLdVar var_C4 DispID_22 0
  loc_AF1D3C: CStrVarTmp
  loc_AF1D3D: FStStrNoPop var_C8
  loc_AF1D40: LitStr vbNullString
  loc_AF1D43: NeStr
  loc_AF1D45: FFree1Str var_C8
  loc_AF1D48: FFree1Ad var_B4
  loc_AF1D4B: FFree1Var var_C4 = ""
  loc_AF1D4E: BranchF loc_AF1DA0
  loc_AF1D51: FLdPr Me
  loc_AF1D54: VCallAd Control_ID_mskHasta
  loc_AF1D57: FStAdFunc var_B4
  loc_AF1D5A: FLdPr var_B4
  loc_AF1D5D: LateIdLdVar var_C4 DispID_15 0
  loc_AF1D64: PopAd
  loc_AF1D66: LitStr " AND FechCaja <= "
  loc_AF1D69: LitI4 1
  loc_AF1D6E: LitI4 1
  loc_AF1D73: LitVarStr var_A0, "'yyyy-mm-dd'"
  loc_AF1D78: FStVarCopyObj var_E8
  loc_AF1D7B: FLdRfVar var_E8
  loc_AF1D7E: FLdRfVar var_C4
  loc_AF1D81: CStrVarTmp
  loc_AF1D82: CVarStr var_D8
  loc_AF1D85: ImpAdCallI2 Format$(, )
  loc_AF1D8A: FStStrNoPop var_C8
  loc_AF1D8D: ConcatStr
  loc_AF1D8E: FStStr var_8C
  loc_AF1D91: FFree1Str var_C8
  loc_AF1D94: FFree1Ad var_B4
  loc_AF1D97: FFreeVar var_C4 = "": var_D8 = ""
  loc_AF1DA0: FLdPr Me
  loc_AF1DA3: MemLdRfVar from_stack_1.global_72
  loc_AF1DA6: NewIfNullAd
  loc_AF1DA9: FStAd var_EC 
  loc_AF1DAD: LitStr "SELECT DISTINCT c.CodiCuco, DetaCuco"
  loc_AF1DB0: LitStr " FROM cajaaltapatr c"
  loc_AF1DB3: ConcatStr
  loc_AF1DB4: FStStrNoPop var_C8
  loc_AF1DB7: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = Year(FechCaja) AND cc.CodiCuco = c.CodiCuco"
  loc_AF1DBA: ConcatStr
  loc_AF1DBB: FStStrNoPop var_F0
  loc_AF1DBE: LitStr " WHERE TRUE "
  loc_AF1DC1: ConcatStr
  loc_AF1DC2: FStStrNoPop var_F4
  loc_AF1DC5: ILdRf var_88
  loc_AF1DC8: ConcatStr
  loc_AF1DC9: FStStrNoPop var_F8
  loc_AF1DCC: ILdRf var_8C
  loc_AF1DCF: ConcatStr
  loc_AF1DD0: FStStrNoPop var_FC
  loc_AF1DD3: LitStr " ORDER BY CodiCuco"
  loc_AF1DD6: ConcatStr
  loc_AF1DD7: FStStrNoPop var_100
  loc_AF1DDA: FLdPr var_EC
  loc_AF1DDD: Call clsbase.RedefineRS(from_stack_1v)
  loc_AF1DE2: FFreeStr var_C8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_AF1DF1: FLdRfVar var_104
  loc_AF1DF4: FLdPr var_EC
  loc_AF1DF7: from_stack_1 = clsbase.RecordCount
  loc_AF1DFC: ILdRf var_104
  loc_AF1DFF: LitI4 0
  loc_AF1E04: EqI4
  loc_AF1E05: BranchF loc_AF1E18
  loc_AF1E08: LitI4 0
  loc_AF1E0D: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_AF1E10: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AF1E15: Branch loc_AF232E
  loc_AF1E18: LitI2_Byte 0
  loc_AF1E1A: CStrUI1
  loc_AF1E1C: FStStrNoPop var_C8
  loc_AF1E1F: FLdPr Me
  loc_AF1E22: MemStStrCopy
  loc_AF1E26: FFree1Str var_C8
  loc_AF1E29: LitI2_Byte 0
  loc_AF1E2B: CStrUI1
  loc_AF1E2D: FStStrNoPop var_C8
  loc_AF1E30: FLdPr Me
  loc_AF1E33: MemStStrCopy
  loc_AF1E37: FFree1Str var_C8
  loc_AF1E3A: LitI4 1
  loc_AF1E3F: FLdRfVar var_104
  loc_AF1E42: FLdPr Me
  loc_AF1E45: MemLdRfVar from_stack_1.global_72
  loc_AF1E48: NewIfNullPr clsbase
  loc_AF1E4B: from_stack_1 = clsbase.RecordCount
  loc_AF1E50: ILdRf var_104
  loc_AF1E53: FLdPr Me
  loc_AF1E56: MemLdRfVar from_stack_1.global_80
  loc_AF1E59: Redim
  loc_AF1E63: FLdPr var_EC
  loc_AF1E66: Call clsbase.MoveFirst()
  loc_AF1E6B: LitI2_Byte 1
  loc_AF1E6D: FLdPr Me
  loc_AF1E70: MemLdRfVar from_stack_1.global_92
  loc_AF1E73: FLdPr Me
  loc_AF1E76: MemLdStr global_80
  loc_AF1E79: LitI2_Byte 1
  loc_AF1E7B: FnUBound
  loc_AF1E7D: CI2I4
  loc_AF1E7E: ForI2 var_108
  loc_AF1E84: FLdRfVar var_110
  loc_AF1E87: LitVarStr var_A0, "CodiCuco"
  loc_AF1E8C: PopAdLdVar
  loc_AF1E8D: FLdRfVar var_10C
  loc_AF1E90: FLdRfVar var_B4
  loc_AF1E93: FLdPr var_EC
  loc_AF1E96: from_stack_1v = clsbase.RsFrmGet()
  loc_AF1E9B: FLdPr var_B4
  loc_AF1E9E:  = Me.Fields
  loc_AF1EA3: FLdPr var_10C
  loc_AF1EA6: from_stack_2 = Me.Item(from_stack_1)
  loc_AF1EAB: LitI2_Byte 0
  loc_AF1EAD: LitVar_Missing var_D8
  loc_AF1EB0: LitI2_Byte 0
  loc_AF1EB2: FLdZeroAd var_110
  loc_AF1EB5: CVarAd
  loc_AF1EB9: PopAdLdVar
  loc_AF1EBA: FLdPr Me
  loc_AF1EBD: MemLdI2 global_92
  loc_AF1EC0: CI4UI1
  loc_AF1EC1: FLdPr Me
  loc_AF1EC4: MemLdStr global_80
  loc_AF1EC7: AryLock
  loc_AF1ECA: Ary1LdPr
  loc_AF1ECB: MemLdRfVar from_stack_1.global_0
  loc_AF1ECE: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_AF1ED3: AryUnlock
  loc_AF1ED6: FFreeAd var_B4 = ""
  loc_AF1EDD: FFreeVar var_C4 = ""
  loc_AF1EE4: FLdRfVar var_110
  loc_AF1EE7: LitVarStr var_A0, "DetaCuco"
  loc_AF1EEC: PopAdLdVar
  loc_AF1EED: FLdRfVar var_10C
  loc_AF1EF0: FLdRfVar var_B4
  loc_AF1EF3: FLdPr var_EC
  loc_AF1EF6: from_stack_1v = clsbase.RsFrmGet()
  loc_AF1EFB: FLdPr var_B4
  loc_AF1EFE:  = Me.Fields
  loc_AF1F03: FLdPr var_10C
  loc_AF1F06: from_stack_2 = Me.Item(from_stack_1)
  loc_AF1F0B: LitI2_Byte 0
  loc_AF1F0D: LitVar_Missing var_D8
  loc_AF1F10: LitI2_Byte 0
  loc_AF1F12: FLdZeroAd var_110
  loc_AF1F15: CVarAd
  loc_AF1F19: PopAdLdVar
  loc_AF1F1A: FLdPr Me
  loc_AF1F1D: MemLdI2 global_92
  loc_AF1F20: CI4UI1
  loc_AF1F21: FLdPr Me
  loc_AF1F24: MemLdStr global_80
  loc_AF1F27: AryLock
  loc_AF1F2A: Ary1LdPr
  loc_AF1F2B: MemLdRfVar from_stack_1.global_4
  loc_AF1F2E: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_AF1F33: AryUnlock
  loc_AF1F36: FFreeAd var_B4 = ""
  loc_AF1F3D: FFreeVar var_C4 = ""
  loc_AF1F44: FLdPr var_EC
  loc_AF1F47: Call clsbase.MoveSiguiente()
  loc_AF1F4C: FLdPr Me
  loc_AF1F4F: MemLdRfVar from_stack_1.global_92
  loc_AF1F52: NextI2 var_108, loc_AF1E84
  loc_AF1F57: LitI2_Byte 1
  loc_AF1F59: FLdPr Me
  loc_AF1F5C: MemLdRfVar from_stack_1.global_92
  loc_AF1F5F: FLdPr Me
  loc_AF1F62: MemLdStr global_80
  loc_AF1F65: LitI2_Byte 1
  loc_AF1F67: FnUBound
  loc_AF1F69: CI2I4
  loc_AF1F6A: ForI2 var_118
  loc_AF1F70: LitStr "SELECT FechCaja, ExpeImpu, c.CodiInpa, DebeCaja, HabeCaja"
  loc_AF1F73: LitStr " FROM cajaaltapatr c"
  loc_AF1F76: ConcatStr
  loc_AF1F77: FStStrNoPop var_C8
  loc_AF1F7A: LitStr " INNER JOIN invepatrimonial i ON i.IdInpa = c.IdInpa"
  loc_AF1F7D: ConcatStr
  loc_AF1F7E: FStStrNoPop var_F0
  loc_AF1F81: LitStr " WHERE c.CodiCuco = '"
  loc_AF1F84: ConcatStr
  loc_AF1F85: FStStrNoPop var_F4
  loc_AF1F88: FLdPr Me
  loc_AF1F8B: MemLdI2 global_92
  loc_AF1F8E: CI4UI1
  loc_AF1F8F: FLdPr Me
  loc_AF1F92: MemLdStr global_80
  loc_AF1F95: Ary1LdPr
  loc_AF1F96: MemLdStr global_0
  loc_AF1F99: ConcatStr
  loc_AF1F9A: FStStrNoPop var_F8
  loc_AF1F9D: LitStr "'"
  loc_AF1FA0: ConcatStr
  loc_AF1FA1: FStStrNoPop var_FC
  loc_AF1FA4: ILdRf var_88
  loc_AF1FA7: ConcatStr
  loc_AF1FA8: FStStrNoPop var_100
  loc_AF1FAB: ILdRf var_8C
  loc_AF1FAE: ConcatStr
  loc_AF1FAF: FStStrNoPop var_11C
  loc_AF1FB2: LitStr " ORDER BY FechCaja, ExpeImpu, c.CodiInpa;"
  loc_AF1FB5: ConcatStr
  loc_AF1FB6: FStStrNoPop var_120
  loc_AF1FB9: FLdPr var_EC
  loc_AF1FBC: Call clsbase.RedefineRS(from_stack_1v)
  loc_AF1FC1: FFreeStr var_C8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_11C = ""
  loc_AF1FD4: FLdRfVar var_104
  loc_AF1FD7: FLdPr var_EC
  loc_AF1FDA: from_stack_1 = clsbase.RecordCount
  loc_AF1FDF: ILdRf var_104
  loc_AF1FE2: LitI4 0
  loc_AF1FE7: GtI4
  loc_AF1FE8: BranchF loc_AF22B7
  loc_AF1FEB: FLdRfVar var_104
  loc_AF1FEE: FLdPr var_EC
  loc_AF1FF1: from_stack_1 = clsbase.RecordCount
  loc_AF1FF6: LitI4 1
  loc_AF1FFB: ILdRf var_104
  loc_AF1FFE: FLdPr Me
  loc_AF2001: MemLdI2 global_92
  loc_AF2004: CI4UI1
  loc_AF2005: FLdPr Me
  loc_AF2008: MemLdStr global_80
  loc_AF200B: Ary1LdPr
  loc_AF200C: MemLdRfVar from_stack_1.global_8
  loc_AF200F: Redim
  loc_AF2019: FLdPr var_EC
  loc_AF201C: Call clsbase.MoveFirst()
  loc_AF2021: LitI2_Byte 1
  loc_AF2023: FLdPr Me
  loc_AF2026: MemLdRfVar from_stack_1.global_94
  loc_AF2029: FLdPr Me
  loc_AF202C: MemLdI2 global_92
  loc_AF202F: CI4UI1
  loc_AF2030: FLdPr Me
  loc_AF2033: MemLdStr global_80
  loc_AF2036: Ary1LdPr
  loc_AF2037: MemLdStr global_8
  loc_AF203A: LitI2_Byte 1
  loc_AF203C: FnUBound
  loc_AF203E: CI2I4
  loc_AF203F: ForI2 var_124
  loc_AF2045: FLdRfVar var_110
  loc_AF2048: LitVarStr var_A0, "FechCaja"
  loc_AF204D: PopAdLdVar
  loc_AF204E: FLdRfVar var_10C
  loc_AF2051: FLdRfVar var_B4
  loc_AF2054: FLdPr var_EC
  loc_AF2057: from_stack_1v = clsbase.RsFrmGet()
  loc_AF205C: FLdPr var_B4
  loc_AF205F:  = Me.Fields
  loc_AF2064: FLdPr var_10C
  loc_AF2067: from_stack_2 = Me.Item(from_stack_1)
  loc_AF206C: LitI2_Byte 0
  loc_AF206E: LitVar_Missing var_D8
  loc_AF2071: LitI2_Byte 0
  loc_AF2073: FLdZeroAd var_110
  loc_AF2076: CVarAd
  loc_AF207A: PopAdLdVar
  loc_AF207B: FLdPr Me
  loc_AF207E: MemLdI2 global_94
  loc_AF2081: CI4UI1
  loc_AF2082: FLdPr Me
  loc_AF2085: MemLdI2 global_92
  loc_AF2088: CI4UI1
  loc_AF2089: FLdPr Me
  loc_AF208C: MemLdStr global_80
  loc_AF208F: AryLock
  loc_AF2092: Ary1LdPr
  loc_AF2093: MemLdStr global_8
  loc_AF2096: AryLock
  loc_AF2099: Ary1LdPr
  loc_AF209A: MemLdRfVar from_stack_1.global_0
  loc_AF209D: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_AF20A2: AryUnlock
  loc_AF20A5: AryUnlock
  loc_AF20A8: FFreeAd var_B4 = ""
  loc_AF20AF: FFreeVar var_C4 = ""
  loc_AF20B6: FLdRfVar var_110
  loc_AF20B9: LitVarStr var_A0, "ExpeImpu"
  loc_AF20BE: PopAdLdVar
  loc_AF20BF: FLdRfVar var_10C
  loc_AF20C2: FLdRfVar var_B4
  loc_AF20C5: FLdPr var_EC
  loc_AF20C8: from_stack_1v = clsbase.RsFrmGet()
  loc_AF20CD: FLdPr var_B4
  loc_AF20D0:  = Me.Fields
  loc_AF20D5: FLdPr var_10C
  loc_AF20D8: from_stack_2 = Me.Item(from_stack_1)
  loc_AF20DD: LitI2_Byte 0
  loc_AF20DF: LitVar_Missing var_D8
  loc_AF20E2: LitI2_Byte 0
  loc_AF20E4: FLdZeroAd var_110
  loc_AF20E7: CVarAd
  loc_AF20EB: PopAdLdVar
  loc_AF20EC: FLdPr Me
  loc_AF20EF: MemLdI2 global_94
  loc_AF20F2: CI4UI1
  loc_AF20F3: FLdPr Me
  loc_AF20F6: MemLdI2 global_92
  loc_AF20F9: CI4UI1
  loc_AF20FA: FLdPr Me
  loc_AF20FD: MemLdStr global_80
  loc_AF2100: AryLock
  loc_AF2103: Ary1LdPr
  loc_AF2104: MemLdStr global_8
  loc_AF2107: AryLock
  loc_AF210A: Ary1LdPr
  loc_AF210B: MemLdRfVar from_stack_1.global_4
  loc_AF210E: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_AF2113: AryUnlock
  loc_AF2116: AryUnlock
  loc_AF2119: FFreeAd var_B4 = ""
  loc_AF2120: FFreeVar var_C4 = ""
  loc_AF2127: FLdRfVar var_110
  loc_AF212A: LitVarStr var_A0, "CodiInpa"
  loc_AF212F: PopAdLdVar
  loc_AF2130: FLdRfVar var_10C
  loc_AF2133: FLdRfVar var_B4
  loc_AF2136: FLdPr var_EC
  loc_AF2139: from_stack_1v = clsbase.RsFrmGet()
  loc_AF213E: FLdPr var_B4
  loc_AF2141:  = Me.Fields
  loc_AF2146: FLdPr var_10C
  loc_AF2149: from_stack_2 = Me.Item(from_stack_1)
  loc_AF214E: LitI2_Byte 0
  loc_AF2150: LitVar_Missing var_D8
  loc_AF2153: LitI2_Byte 0
  loc_AF2155: FLdZeroAd var_110
  loc_AF2158: CVarAd
  loc_AF215C: PopAdLdVar
  loc_AF215D: FLdPr Me
  loc_AF2160: MemLdI2 global_94
  loc_AF2163: CI4UI1
  loc_AF2164: FLdPr Me
  loc_AF2167: MemLdI2 global_92
  loc_AF216A: CI4UI1
  loc_AF216B: FLdPr Me
  loc_AF216E: MemLdStr global_80
  loc_AF2171: AryLock
  loc_AF2174: Ary1LdPr
  loc_AF2175: MemLdStr global_8
  loc_AF2178: AryLock
  loc_AF217B: Ary1LdPr
  loc_AF217C: MemLdRfVar from_stack_1.global_8
  loc_AF217F: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_AF2184: AryUnlock
  loc_AF2187: AryUnlock
  loc_AF218A: FFreeAd var_B4 = ""
  loc_AF2191: FFreeVar var_C4 = ""
  loc_AF2198: FLdRfVar var_110
  loc_AF219B: LitVarStr var_A0, "DebeCaja"
  loc_AF21A0: PopAdLdVar
  loc_AF21A1: FLdRfVar var_10C
  loc_AF21A4: FLdRfVar var_B4
  loc_AF21A7: FLdPr var_EC
  loc_AF21AA: from_stack_1v = clsbase.RsFrmGet()
  loc_AF21AF: FLdPr var_B4
  loc_AF21B2:  = Me.Fields
  loc_AF21B7: FLdPr var_10C
  loc_AF21BA: from_stack_2 = Me.Item(from_stack_1)
  loc_AF21BF: LitI2_Byte 0
  loc_AF21C1: FLdPr Me
  loc_AF21C4: MemLdI2 global_92
  loc_AF21C7: CI4UI1
  loc_AF21C8: FLdPr Me
  loc_AF21CB: MemLdStr global_80
  loc_AF21CE: AryLock
  loc_AF21D1: Ary1LdPr
  loc_AF21D2: MemLdRfVar from_stack_1.global_12
  loc_AF21D5: CVarRef
  loc_AF21DA: LitI2_Byte &HFF
  loc_AF21DC: FLdZeroAd var_110
  loc_AF21DF: CVarAd
  loc_AF21E3: PopAdLdVar
  loc_AF21E4: FLdPr Me
  loc_AF21E7: MemLdI2 global_94
  loc_AF21EA: CI4UI1
  loc_AF21EB: FLdPr Me
  loc_AF21EE: MemLdI2 global_92
  loc_AF21F1: CI4UI1
  loc_AF21F2: FLdPr Me
  loc_AF21F5: MemLdStr global_80
  loc_AF21F8: AryLock
  loc_AF21FB: Ary1LdPr
  loc_AF21FC: MemLdStr global_8
  loc_AF21FF: AryLock
  loc_AF2202: Ary1LdPr
  loc_AF2203: MemLdRfVar from_stack_1.global_12
  loc_AF2206: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_AF220B: AryUnlock
  loc_AF220E: AryUnlock
  loc_AF2211: AryUnlock
  loc_AF2214: FFreeAd var_B4 = ""
  loc_AF221B: FFree1Var var_C4 = ""
  loc_AF221E: FLdRfVar var_110
  loc_AF2221: LitVarStr var_A0, "HabeCaja"
  loc_AF2226: PopAdLdVar
  loc_AF2227: FLdRfVar var_10C
  loc_AF222A: FLdRfVar var_B4
  loc_AF222D: FLdPr var_EC
  loc_AF2230: from_stack_1v = clsbase.RsFrmGet()
  loc_AF2235: FLdPr var_B4
  loc_AF2238:  = Me.Fields
  loc_AF223D: FLdPr var_10C
  loc_AF2240: from_stack_2 = Me.Item(from_stack_1)
  loc_AF2245: LitI2_Byte 0
  loc_AF2247: FLdPr Me
  loc_AF224A: MemLdI2 global_92
  loc_AF224D: CI4UI1
  loc_AF224E: FLdPr Me
  loc_AF2251: MemLdStr global_80
  loc_AF2254: AryLock
  loc_AF2257: Ary1LdPr
  loc_AF2258: MemLdRfVar from_stack_1.global_16
  loc_AF225B: CVarRef
  loc_AF2260: LitI2_Byte &HFF
  loc_AF2262: FLdZeroAd var_110
  loc_AF2265: CVarAd
  loc_AF2269: PopAdLdVar
  loc_AF226A: FLdPr Me
  loc_AF226D: MemLdI2 global_94
  loc_AF2270: CI4UI1
  loc_AF2271: FLdPr Me
  loc_AF2274: MemLdI2 global_92
  loc_AF2277: CI4UI1
  loc_AF2278: FLdPr Me
  loc_AF227B: MemLdStr global_80
  loc_AF227E: AryLock
  loc_AF2281: Ary1LdPr
  loc_AF2282: MemLdStr global_8
  loc_AF2285: AryLock
  loc_AF2288: Ary1LdPr
  loc_AF2289: MemLdRfVar from_stack_1.global_16
  loc_AF228C: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_AF2291: AryUnlock
  loc_AF2294: AryUnlock
  loc_AF2297: AryUnlock
  loc_AF229A: FFreeAd var_B4 = ""
  loc_AF22A1: FFree1Var var_C4 = ""
  loc_AF22A4: FLdPr var_EC
  loc_AF22A7: Call clsbase.MoveSiguiente()
  loc_AF22AC: FLdPr Me
  loc_AF22AF: MemLdRfVar from_stack_1.global_94
  loc_AF22B2: NextI2 var_124, loc_AF2045
  loc_AF22B7: LitI2_Byte 0
  loc_AF22B9: FLdPr Me
  loc_AF22BC: MemLdRfVar from_stack_1.global_84
  loc_AF22BF: CVarRef
  loc_AF22C4: LitI2_Byte &HFF
  loc_AF22C6: FLdPr Me
  loc_AF22C9: MemLdI2 global_92
  loc_AF22CC: CI4UI1
  loc_AF22CD: FLdPr Me
  loc_AF22D0: MemLdStr global_80
  loc_AF22D3: Ary1LdPr
  loc_AF22D4: MemLdStr global_12
  loc_AF22D7: CVarStr var_A0
  loc_AF22DA: PopAdLdVar
  loc_AF22DB: FLdPr Me
  loc_AF22DE: MemLdRfVar from_stack_1.global_96
  loc_AF22E1: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_AF22E6: LitI2_Byte 0
  loc_AF22E8: FLdPr Me
  loc_AF22EB: MemLdRfVar from_stack_1.global_88
  loc_AF22EE: CVarRef
  loc_AF22F3: LitI2_Byte &HFF
  loc_AF22F5: FLdPr Me
  loc_AF22F8: MemLdI2 global_92
  loc_AF22FB: CI4UI1
  loc_AF22FC: FLdPr Me
  loc_AF22FF: MemLdStr global_80
  loc_AF2302: Ary1LdPr
  loc_AF2303: MemLdStr global_16
  loc_AF2306: CVarStr var_A0
  loc_AF2309: PopAdLdVar
  loc_AF230A: FLdPr Me
  loc_AF230D: MemLdRfVar from_stack_1.global_96
  loc_AF2310: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_AF2315: FLdPr Me
  loc_AF2318: MemLdRfVar from_stack_1.global_92
  loc_AF231B: NextI2 var_118, loc_AF1F70
  loc_AF2320: LitNothing
  loc_AF2322: FStAd var_EC 
  loc_AF2326: LitI2_Byte &HFF
  loc_AF2328: FLdPr Me
  loc_AF232B: MemStI2 bGenerado
  loc_AF232E: LitI4 0
  loc_AF2333: CI2I4
  loc_AF2334: FLdPr Me
  loc_AF2337: Me.MousePointer = from_stack_1
  loc_AF233C: LitVarStr var_A0, vbNullString
  loc_AF2341: PopAdLdVar
  loc_AF2342: FLdPr Me
  loc_AF2345: VCallAd Control_ID_statusBar
  loc_AF2348: FStAdFunc var_B4
  loc_AF234B: FLdPr var_B4
  loc_AF234E: LateIdSt
  loc_AF2353: FFree1Ad var_B4
  loc_AF2356: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AD8680
  'Data Table: 447128
  loc_AD8034: FLdRfVar var_88
  loc_AD8037: LitI2_Byte 0
  loc_AD8039: LitI2_Byte &HFF
  loc_AD803B: ImpAdLdI4 MemVar_C3D83C
  loc_AD803E: FLdPr Me
  loc_AD8041: MemLdRfVar from_stack_1.global_76
  loc_AD8044: NewIfNullPr IFileSystem3
  loc_AD8047: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AD804C: ILdRf var_88
  loc_AD804F: FLdPr Me
  loc_AD8052: MemStVarAd
  loc_AD8056: FFree1Ad var_88
  loc_AD8059: Call Proc_269_22_A6BB20()
  loc_AD805E: LitI2_Byte 1
  loc_AD8060: FLdPr Me
  loc_AD8063: MemLdRfVar from_stack_1.global_92
  loc_AD8066: FLdPr Me
  loc_AD8069: MemLdStr global_80
  loc_AD806C: LitI2_Byte 1
  loc_AD806E: FnUBound
  loc_AD8070: CI2I4
  loc_AD8071: ForI2 var_8C
  loc_AD8077: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AD807C: PopAdLdVar
  loc_AD807D: FLdPr Me
  loc_AD8080: MemLdRfVar from_stack_1.htmFile
  loc_AD8083: LdPrVar
  loc_AD8085: LateMemCall
  loc_AD808B: LitStr "    <td rowspan="""
  loc_AD808E: FLdPr Me
  loc_AD8091: MemLdI2 global_92
  loc_AD8094: CI4UI1
  loc_AD8095: FLdPr Me
  loc_AD8098: MemLdStr global_80
  loc_AD809B: Ary1LdPr
  loc_AD809C: MemLdStr global_8
  loc_AD809F: LitI2_Byte 1
  loc_AD80A1: FnUBound
  loc_AD80A3: LitI4 1
  loc_AD80A8: AddI4
  loc_AD80A9: CStrI4
  loc_AD80AB: FStStrNoPop var_B0
  loc_AD80AE: ConcatStr
  loc_AD80AF: FStStrNoPop var_B4
  loc_AD80B2: LitStr """ align=""left"" valign = ""top"" class=""Titulo2"">"
  loc_AD80B5: ConcatStr
  loc_AD80B6: FStStrNoPop var_B8
  loc_AD80B9: FLdPr Me
  loc_AD80BC: MemLdI2 global_92
  loc_AD80BF: CI4UI1
  loc_AD80C0: FLdPr Me
  loc_AD80C3: MemLdStr global_80
  loc_AD80C6: Ary1LdPr
  loc_AD80C7: MemLdStr global_0
  loc_AD80CA: ConcatStr
  loc_AD80CB: FStStrNoPop var_BC
  loc_AD80CE: LitStr "<br>"
  loc_AD80D1: ConcatStr
  loc_AD80D2: FStStrNoPop var_C0
  loc_AD80D5: FLdPr Me
  loc_AD80D8: MemLdI2 global_92
  loc_AD80DB: CI4UI1
  loc_AD80DC: FLdPr Me
  loc_AD80DF: MemLdStr global_80
  loc_AD80E2: Ary1LdPr
  loc_AD80E3: MemLdStr global_4
  loc_AD80E6: ConcatStr
  loc_AD80E7: FStStrNoPop var_C4
  loc_AD80EA: LitStr "</td>"
  loc_AD80ED: ConcatStr
  loc_AD80EE: CVarStr var_D4
  loc_AD80F1: PopAdLdVar
  loc_AD80F2: FLdPr Me
  loc_AD80F5: MemLdRfVar from_stack_1.htmFile
  loc_AD80F8: LdPrVar
  loc_AD80FA: LateMemCall
  loc_AD8100: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_AD810F: FFree1Var var_D4 = ""
  loc_AD8112: LitI2_Byte 1
  loc_AD8114: FLdPr Me
  loc_AD8117: MemLdRfVar from_stack_1.global_94
  loc_AD811A: FLdPr Me
  loc_AD811D: MemLdI2 global_92
  loc_AD8120: CI4UI1
  loc_AD8121: FLdPr Me
  loc_AD8124: MemLdStr global_80
  loc_AD8127: Ary1LdPr
  loc_AD8128: MemLdStr global_8
  loc_AD812B: LitI2_Byte 1
  loc_AD812D: FnUBound
  loc_AD812F: CI2I4
  loc_AD8130: ForI2 var_D8
  loc_AD8136: FLdPr Me
  loc_AD8139: MemLdI2 global_94
  loc_AD813C: CI4UI1
  loc_AD813D: FLdPr Me
  loc_AD8140: MemLdI2 global_92
  loc_AD8143: CI4UI1
  loc_AD8144: FLdPr Me
  loc_AD8147: MemLdStr global_80
  loc_AD814A: AryLock
  loc_AD814D: Ary1LdPr
  loc_AD814E: MemLdStr global_8
  loc_AD8151: AryLock
  loc_AD8154: Ary1LdRf
  loc_AD8155: FStR4 var_E4
  loc_AD8158: FLdPr Me
  loc_AD815B: MemLdI2 global_94
  loc_AD815E: LitI2_Byte 1
  loc_AD8160: NeI2
  loc_AD8161: BranchF loc_AD8178
  loc_AD8164: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AD8169: PopAdLdVar
  loc_AD816A: FLdPr Me
  loc_AD816D: MemLdRfVar from_stack_1.htmFile
  loc_AD8170: LdPrVar
  loc_AD8172: LateMemCall
  loc_AD8178: LitI4 0
  loc_AD817D: LitI4 0
  loc_AD8182: LitI2_Byte 0
  loc_AD8184: LitStr "center"
  loc_AD8187: FMemLdR4 var_E4(0)
  loc_AD818C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8191: CVarStr var_D4
  loc_AD8194: PopAdLdVar
  loc_AD8195: FLdPr Me
  loc_AD8198: MemLdRfVar from_stack_1.htmFile
  loc_AD819B: LdPrVar
  loc_AD819D: LateMemCall
  loc_AD81A3: FFree1Var var_D4 = ""
  loc_AD81A6: LitI4 0
  loc_AD81AB: LitI4 0
  loc_AD81B0: LitI2_Byte 0
  loc_AD81B2: LitStr "left"
  loc_AD81B5: FMemLdR4 var_E4(4)
  loc_AD81BA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD81BF: CVarStr var_D4
  loc_AD81C2: PopAdLdVar
  loc_AD81C3: FLdPr Me
  loc_AD81C6: MemLdRfVar from_stack_1.htmFile
  loc_AD81C9: LdPrVar
  loc_AD81CB: LateMemCall
  loc_AD81D1: FFree1Var var_D4 = ""
  loc_AD81D4: LitI4 0
  loc_AD81D9: LitI4 0
  loc_AD81DE: LitI2_Byte 0
  loc_AD81E0: LitStr "right"
  loc_AD81E3: FMemLdR4 var_E4(8)
  loc_AD81E8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD81ED: CVarStr var_D4
  loc_AD81F0: PopAdLdVar
  loc_AD81F1: FLdPr Me
  loc_AD81F4: MemLdRfVar from_stack_1.htmFile
  loc_AD81F7: LdPrVar
  loc_AD81F9: LateMemCall
  loc_AD81FF: FFree1Var var_D4 = ""
  loc_AD8202: LitI4 0
  loc_AD8207: LitI4 0
  loc_AD820C: LitI2_Byte 0
  loc_AD820E: LitStr "right"
  loc_AD8211: FMemLdR4 var_E4(12)
  loc_AD8216: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD821B: CVarStr var_D4
  loc_AD821E: PopAdLdVar
  loc_AD821F: FLdPr Me
  loc_AD8222: MemLdRfVar from_stack_1.htmFile
  loc_AD8225: LdPrVar
  loc_AD8227: LateMemCall
  loc_AD822D: FFree1Var var_D4 = ""
  loc_AD8230: LitI4 0
  loc_AD8235: LitI4 0
  loc_AD823A: LitI2_Byte 0
  loc_AD823C: LitStr "right"
  loc_AD823F: FMemLdR4 var_E4(16)
  loc_AD8244: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD8249: CVarStr var_D4
  loc_AD824C: PopAdLdVar
  loc_AD824D: FLdPr Me
  loc_AD8250: MemLdRfVar from_stack_1.htmFile
  loc_AD8253: LdPrVar
  loc_AD8255: LateMemCall
  loc_AD825B: FFree1Var var_D4 = ""
  loc_AD825E: LitVarStr var_9C, "  </tr>"
  loc_AD8263: PopAdLdVar
  loc_AD8264: FLdPr Me
  loc_AD8267: MemLdRfVar from_stack_1.htmFile
  loc_AD826A: LdPrVar
  loc_AD826C: LateMemCall
  loc_AD8272: LitI4 0
  loc_AD8277: FStR4 var_E4
  loc_AD827A: AryUnlock
  loc_AD827D: AryUnlock
  loc_AD8280: FLdPr Me
  loc_AD8283: MemLdRfVar from_stack_1.global_94
  loc_AD8286: NextI2 var_D8, loc_AD8136
  loc_AD828B: LitVarStr var_9C, "  <tr>"
  loc_AD8290: PopAdLdVar
  loc_AD8291: FLdPr Me
  loc_AD8294: MemLdRfVar from_stack_1.htmFile
  loc_AD8297: LdPrVar
  loc_AD8299: LateMemCall
  loc_AD829F: LitVarStr var_9C, "    <th colspan=""2"" align=""left"">&nbsp;</th>"
  loc_AD82A4: PopAdLdVar
  loc_AD82A5: FLdPr Me
  loc_AD82A8: MemLdRfVar from_stack_1.htmFile
  loc_AD82AB: LdPrVar
  loc_AD82AD: LateMemCall
  loc_AD82B3: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Subtotal:</td>"
  loc_AD82B8: PopAdLdVar
  loc_AD82B9: FLdPr Me
  loc_AD82BC: MemLdRfVar from_stack_1.htmFile
  loc_AD82BF: LdPrVar
  loc_AD82C1: LateMemCall
  loc_AD82C7: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AD82CA: FLdPr Me
  loc_AD82CD: MemLdI2 global_92
  loc_AD82D0: CI4UI1
  loc_AD82D1: FLdPr Me
  loc_AD82D4: MemLdStr global_80
  loc_AD82D7: Ary1LdPr
  loc_AD82D8: MemLdStr global_12
  loc_AD82DB: ConcatStr
  loc_AD82DC: FStStrNoPop var_B0
  loc_AD82DF: LitStr "</td>"
  loc_AD82E2: ConcatStr
  loc_AD82E3: CVarStr var_D4
  loc_AD82E6: PopAdLdVar
  loc_AD82E7: FLdPr Me
  loc_AD82EA: MemLdRfVar from_stack_1.htmFile
  loc_AD82ED: LdPrVar
  loc_AD82EF: LateMemCall
  loc_AD82F5: FFree1Str var_B0
  loc_AD82F8: FFree1Var var_D4 = ""
  loc_AD82FB: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AD82FE: FLdPr Me
  loc_AD8301: MemLdI2 global_92
  loc_AD8304: CI4UI1
  loc_AD8305: FLdPr Me
  loc_AD8308: MemLdStr global_80
  loc_AD830B: Ary1LdPr
  loc_AD830C: MemLdStr global_16
  loc_AD830F: ConcatStr
  loc_AD8310: FStStrNoPop var_B0
  loc_AD8313: LitStr "</td>"
  loc_AD8316: ConcatStr
  loc_AD8317: CVarStr var_D4
  loc_AD831A: PopAdLdVar
  loc_AD831B: FLdPr Me
  loc_AD831E: MemLdRfVar from_stack_1.htmFile
  loc_AD8321: LdPrVar
  loc_AD8323: LateMemCall
  loc_AD8329: FFree1Str var_B0
  loc_AD832C: FFree1Var var_D4 = ""
  loc_AD832F: LitVarStr var_9C, "  </tr>"
  loc_AD8334: PopAdLdVar
  loc_AD8335: FLdPr Me
  loc_AD8338: MemLdRfVar from_stack_1.htmFile
  loc_AD833B: LdPrVar
  loc_AD833D: LateMemCall
  loc_AD8343: FLdPr Me
  loc_AD8346: MemLdRfVar from_stack_1.global_92
  loc_AD8349: NextI2 var_8C, loc_AD8077
  loc_AD834E: LitVarStr var_9C, "  <tr><td colspan=""8"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_AD8353: PopAdLdVar
  loc_AD8354: FLdPr Me
  loc_AD8357: MemLdRfVar from_stack_1.htmFile
  loc_AD835A: LdPrVar
  loc_AD835C: LateMemCall
  loc_AD8362: LitVarStr var_9C, "  <tr>"
  loc_AD8367: PopAdLdVar
  loc_AD8368: FLdPr Me
  loc_AD836B: MemLdRfVar from_stack_1.htmFile
  loc_AD836E: LdPrVar
  loc_AD8370: LateMemCall
  loc_AD8376: LitVarStr var_9C, "    <td colspan=""3"" align=""left"">&nbsp;</th>"
  loc_AD837B: PopAdLdVar
  loc_AD837C: FLdPr Me
  loc_AD837F: MemLdRfVar from_stack_1.htmFile
  loc_AD8382: LdPrVar
  loc_AD8384: LateMemCall
  loc_AD838A: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_AD838F: PopAdLdVar
  loc_AD8390: FLdPr Me
  loc_AD8393: MemLdRfVar from_stack_1.htmFile
  loc_AD8396: LdPrVar
  loc_AD8398: LateMemCall
  loc_AD839E: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AD83A1: FLdPr Me
  loc_AD83A4: MemLdStr global_84
  loc_AD83A7: ConcatStr
  loc_AD83A8: FStStrNoPop var_B0
  loc_AD83AB: LitStr "</td>"
  loc_AD83AE: ConcatStr
  loc_AD83AF: CVarStr var_D4
  loc_AD83B2: PopAdLdVar
  loc_AD83B3: FLdPr Me
  loc_AD83B6: MemLdRfVar from_stack_1.htmFile
  loc_AD83B9: LdPrVar
  loc_AD83BB: LateMemCall
  loc_AD83C1: FFree1Str var_B0
  loc_AD83C4: FFree1Var var_D4 = ""
  loc_AD83C7: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AD83CA: FLdPr Me
  loc_AD83CD: MemLdStr global_88
  loc_AD83D0: ConcatStr
  loc_AD83D1: FStStrNoPop var_B0
  loc_AD83D4: LitStr "</td>"
  loc_AD83D7: ConcatStr
  loc_AD83D8: CVarStr var_D4
  loc_AD83DB: PopAdLdVar
  loc_AD83DC: FLdPr Me
  loc_AD83DF: MemLdRfVar from_stack_1.htmFile
  loc_AD83E2: LdPrVar
  loc_AD83E4: LateMemCall
  loc_AD83EA: FFree1Str var_B0
  loc_AD83ED: FFree1Var var_D4 = ""
  loc_AD83F0: LitVarStr var_9C, "  </tr>"
  loc_AD83F5: PopAdLdVar
  loc_AD83F6: FLdPr Me
  loc_AD83F9: MemLdRfVar from_stack_1.htmFile
  loc_AD83FC: LdPrVar
  loc_AD83FE: LateMemCall
  loc_AD8404: LitVarStr var_9C, "  <tr><td colspan=""8"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_AD8409: PopAdLdVar
  loc_AD840A: FLdPr Me
  loc_AD840D: MemLdRfVar from_stack_1.htmFile
  loc_AD8410: LdPrVar
  loc_AD8412: LateMemCall
  loc_AD8418: FLdPr Me
  loc_AD841B: MemLdStr global_88
  loc_AD841E: CR8Str
  loc_AD8420: FLdPr Me
  loc_AD8423: MemLdStr global_84
  loc_AD8426: CR8Str
  loc_AD8428: SubR4
  loc_AD8429: CR8R8
  loc_AD842A: LitI2_Byte 0
  loc_AD842C: CR8I2
  loc_AD842D: GtR4
  loc_AD842E: BranchF loc_AD8474
  loc_AD8431: LitI2_Byte 0
  loc_AD8433: LitVar_Missing var_D4
  loc_AD8436: LitI2_Byte &HFF
  loc_AD8438: FLdPr Me
  loc_AD843B: MemLdStr global_88
  loc_AD843E: CR8Str
  loc_AD8440: FLdPr Me
  loc_AD8443: MemLdStr global_84
  loc_AD8446: CR8Str
  loc_AD8448: SubR4
  loc_AD8449: CVarR8
  loc_AD844D: PopAdLdVar
  loc_AD844E: FLdRfVar var_EC
  loc_AD8451: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_AD8456: FFree1Var var_D4 = ""
  loc_AD8459: LitI2_Byte 0
  loc_AD845B: LitVar_Missing var_D4
  loc_AD845E: LitI2_Byte &HFF
  loc_AD8460: LitVarStr var_9C, "0"
  loc_AD8465: PopAdLdVar
  loc_AD8466: FLdRfVar var_F0
  loc_AD8469: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_AD846E: FFree1Var var_D4 = ""
  loc_AD8471: Branch loc_AD84B4
  loc_AD8474: LitI2_Byte 0
  loc_AD8476: LitVar_Missing var_D4
  loc_AD8479: LitI2_Byte &HFF
  loc_AD847B: FLdPr Me
  loc_AD847E: MemLdStr global_84
  loc_AD8481: CR8Str
  loc_AD8483: FLdPr Me
  loc_AD8486: MemLdStr global_88
  loc_AD8489: CR8Str
  loc_AD848B: SubR4
  loc_AD848C: CVarR8
  loc_AD8490: PopAdLdVar
  loc_AD8491: FLdRfVar var_F0
  loc_AD8494: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_AD8499: FFree1Var var_D4 = ""
  loc_AD849C: LitI2_Byte 0
  loc_AD849E: LitVar_Missing var_D4
  loc_AD84A1: LitI2_Byte &HFF
  loc_AD84A3: LitVarStr var_9C, "0"
  loc_AD84A8: PopAdLdVar
  loc_AD84A9: FLdRfVar var_EC
  loc_AD84AC: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_AD84B1: FFree1Var var_D4 = ""
  loc_AD84B4: LitStr "SELECT PatrPaco, DetaCuco"
  loc_AD84B7: LitStr " FROM paraconta"
  loc_AD84BA: ConcatStr
  loc_AD84BB: FStStrNoPop var_B0
  loc_AD84BE: LitStr " LEFT JOIN infogov.cuentacontable AS cc ON cc.PeriInfo = paraconta.PeriInfo AND cc.CodiCuco = PatrPaco"
  loc_AD84C1: ConcatStr
  loc_AD84C2: FStStrNoPop var_B4
  loc_AD84C5: LitStr " WHERE paraconta.PeriInfo = "
  loc_AD84C8: ConcatStr
  loc_AD84C9: CVarStr var_120
  loc_AD84CC: FLdPr Me
  loc_AD84CF: VCallAd Control_ID_mskDesde
  loc_AD84D2: FStAdFunc var_88
  loc_AD84D5: FLdPr var_88
  loc_AD84D8: LateIdLdVar var_D4 DispID_15 0
  loc_AD84DF: CStrVarTmp
  loc_AD84E0: CVarStr var_100
  loc_AD84E3: FLdRfVar var_110
  loc_AD84E6: ImpAdCallFPR4  = Year()
  loc_AD84EB: FLdRfVar var_110
  loc_AD84EE: ConcatVar var_130
  loc_AD84F2: CStrVarVal var_B8
  loc_AD84F6: FLdRfVar var_E8
  loc_AD84F9: NewIfNullPr clsparaconta
  loc_AD84FC: Call clsparaconta.RedefineRS(from_stack_1v)
  loc_AD8501: FFreeStr var_B0 = "": var_B4 = ""
  loc_AD850A: FFree1Ad var_88
  loc_AD850D: FFreeVar var_D4 = "": var_100 = "": var_120 = "": var_110 = ""
  loc_AD851A: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_AD851F: PopAdLdVar
  loc_AD8520: FLdPr Me
  loc_AD8523: MemLdRfVar from_stack_1.htmFile
  loc_AD8526: LdPrVar
  loc_AD8528: LateMemCall
  loc_AD852E: LitVarStr var_AC, "    <td class=""Titulo2"" colspan=""3"" align=""left"">"
  loc_AD8533: FLdRfVar var_D4
  loc_AD8536: FLdRfVar var_138
  loc_AD8539: LitVarStr var_9C, "PatrPaco"
  loc_AD853E: PopAdLdVar
  loc_AD853F: FLdRfVar var_134
  loc_AD8542: FLdRfVar var_88
  loc_AD8545: FLdRfVar var_E8
  loc_AD8548: NewIfNullPr clsparaconta
  loc_AD854B: from_stack_1v = clsparaconta.RsFrmGet()
  loc_AD8550: FLdPr var_88
  loc_AD8553:  = Me.Fields
  loc_AD8558: FLdPr var_134
  loc_AD855B: from_stack_2 = Me.Item(from_stack_1)
  loc_AD8560: FLdPr var_138
  loc_AD8563:  = Me.Value
  loc_AD8568: FLdRfVar var_D4
  loc_AD856B: ConcatVar var_100
  loc_AD856F: LitVarStr var_148, " - "
  loc_AD8574: ConcatVar var_110
  loc_AD8578: FLdRfVar var_120
  loc_AD857B: FLdRfVar var_164
  loc_AD857E: LitVarStr var_160, "DetaCuco"
  loc_AD8583: PopAdLdVar
  loc_AD8584: FLdRfVar var_150
  loc_AD8587: FLdRfVar var_14C
  loc_AD858A: FLdRfVar var_E8
  loc_AD858D: NewIfNullPr clsparaconta
  loc_AD8590: from_stack_1v = clsparaconta.RsFrmGet()
  loc_AD8595: FLdPr var_14C
  loc_AD8598:  = Me.Fields
  loc_AD859D: FLdPr var_150
  loc_AD85A0: from_stack_2 = Me.Item(from_stack_1)
  loc_AD85A5: FLdPr var_164
  loc_AD85A8:  = Me.Value
  loc_AD85AD: FLdRfVar var_120
  loc_AD85B0: ConcatVar var_130
  loc_AD85B4: LitVarStr var_174, "</th>"
  loc_AD85B9: ConcatVar var_184
  loc_AD85BD: PopAdLdVar
  loc_AD85BE: FLdPr Me
  loc_AD85C1: MemLdRfVar from_stack_1.htmFile
  loc_AD85C4: LdPrVar
  loc_AD85C6: LateMemCall
  loc_AD85CC: FFreeAd var_88 = "": var_134 = "": var_138 = "": var_14C = "": var_150 = ""
  loc_AD85DB: FFreeVar var_D4 = "": var_100 = "": var_110 = "": var_120 = "": var_130 = ""
  loc_AD85EA: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_AD85EF: PopAdLdVar
  loc_AD85F0: FLdPr Me
  loc_AD85F3: MemLdRfVar from_stack_1.htmFile
  loc_AD85F6: LdPrVar
  loc_AD85F8: LateMemCall
  loc_AD85FE: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AD8601: ILdRf var_EC
  loc_AD8604: ConcatStr
  loc_AD8605: FStStrNoPop var_B0
  loc_AD8608: LitStr "</td>"
  loc_AD860B: ConcatStr
  loc_AD860C: CVarStr var_D4
  loc_AD860F: PopAdLdVar
  loc_AD8610: FLdPr Me
  loc_AD8613: MemLdRfVar from_stack_1.htmFile
  loc_AD8616: LdPrVar
  loc_AD8618: LateMemCall
  loc_AD861E: FFree1Str var_B0
  loc_AD8621: FFree1Var var_D4 = ""
  loc_AD8624: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AD8627: ILdRf var_F0
  loc_AD862A: ConcatStr
  loc_AD862B: FStStrNoPop var_B0
  loc_AD862E: LitStr "</td>"
  loc_AD8631: ConcatStr
  loc_AD8632: CVarStr var_D4
  loc_AD8635: PopAdLdVar
  loc_AD8636: FLdPr Me
  loc_AD8639: MemLdRfVar from_stack_1.htmFile
  loc_AD863C: LdPrVar
  loc_AD863E: LateMemCall
  loc_AD8644: FFree1Str var_B0
  loc_AD8647: FFree1Var var_D4 = ""
  loc_AD864A: LitVarStr var_9C, "  </tr>"
  loc_AD864F: PopAdLdVar
  loc_AD8650: FLdPr Me
  loc_AD8653: MemLdRfVar from_stack_1.htmFile
  loc_AD8656: LdPrVar
  loc_AD8658: LateMemCall
  loc_AD865E: LitNothing
  loc_AD8660: CastAd
  loc_AD8663: FStAdFunc var_E8
  loc_AD8666: Call Proc_269_23_981DD0()
  loc_AD866B: FLdPr Me
  loc_AD866E: MemLdRfVar from_stack_1.htmFile
  loc_AD8671: LdPrVar
  loc_AD8673: LateMemCall
  loc_AD8679: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AD867E: ExitProcHresult
End Sub

Private Function Proc_269_22_A6BB20() 'A6BB20
  'Data Table: 447128
  loc_A6B79C: LitVarStr var_94, "<html>"
  loc_A6B7A1: PopAdLdVar
  loc_A6B7A2: FLdPr Me
  loc_A6B7A5: MemLdRfVar from_stack_1.htmFile
  loc_A6B7A8: LdPrVar
  loc_A6B7AA: LateMemCall
  loc_A6B7B0: LitVarStr var_94, "<head>"
  loc_A6B7B5: PopAdLdVar
  loc_A6B7B6: FLdPr Me
  loc_A6B7B9: MemLdRfVar from_stack_1.htmFile
  loc_A6B7BC: LdPrVar
  loc_A6B7BE: LateMemCall
  loc_A6B7C4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A6B7C9: PopAdLdVar
  loc_A6B7CA: FLdPr Me
  loc_A6B7CD: MemLdRfVar from_stack_1.htmFile
  loc_A6B7D0: LdPrVar
  loc_A6B7D2: LateMemCall
  loc_A6B7D8: LitStr "<title>"
  loc_A6B7DB: FLdRfVar var_A8
  loc_A6B7DE: FLdPr Me
  loc_A6B7E1:  = Me.Caption
  loc_A6B7E6: ILdRf var_A8
  loc_A6B7E9: ConcatStr
  loc_A6B7EA: FStStrNoPop var_AC
  loc_A6B7ED: LitStr "</title>"
  loc_A6B7F0: ConcatStr
  loc_A6B7F1: CVarStr var_BC
  loc_A6B7F4: PopAdLdVar
  loc_A6B7F5: FLdPr Me
  loc_A6B7F8: MemLdRfVar from_stack_1.htmFile
  loc_A6B7FB: LdPrVar
  loc_A6B7FD: LateMemCall
  loc_A6B803: FFreeStr var_A8 = ""
  loc_A6B80A: FFree1Var var_BC = ""
  loc_A6B80D: LitStr vbNullString
  loc_A6B810: ILdRf Me
  loc_A6B813: CastAd
  loc_A6B816: FStAdFunc var_C0
  loc_A6B819: FLdRfVar var_C0
  loc_A6B81C: ImpAdCallFPR4  = Proc_263_23_B3DAB8()
  loc_A6B821: FFree1Ad var_C0
  loc_A6B824: LitI4 0
  loc_A6B829: FStStrCopy var_AC
  loc_A6B82C: FLdRfVar var_AC
  loc_A6B82F: LitI4 0
  loc_A6B834: FStStrCopy var_A8
  loc_A6B837: FLdRfVar var_A8
  loc_A6B83A: LitI2_Byte 0
  loc_A6B83C: PopTmpLdAd2 var_C2
  loc_A6B83F: FLdPr Me
  loc_A6B842: MemLdRfVar from_stack_1.htmFile
  loc_A6B845: ImpAdCallFPR4  = Proc_263_6_A92790(, )
  loc_A6B84A: FFreeStr var_A8 = ""
  loc_A6B851: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A6B856: PopAdLdVar
  loc_A6B857: FLdPr Me
  loc_A6B85A: MemLdRfVar from_stack_1.htmFile
  loc_A6B85D: LdPrVar
  loc_A6B85F: LateMemCall
  loc_A6B865: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A6B86A: PopAdLdVar
  loc_A6B86B: FLdPr Me
  loc_A6B86E: MemLdRfVar from_stack_1.htmFile
  loc_A6B871: LdPrVar
  loc_A6B873: LateMemCall
  loc_A6B879: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ valign=""bottom""><p align=""center""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_A6B87E: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A6B883: FStVarCopyObj var_BC
  loc_A6B886: FLdRfVar var_BC
  loc_A6B889: FLdRfVar var_D4
  loc_A6B88C: ImpAdCallFPR4  = Ucase()
  loc_A6B891: FLdRfVar var_D4
  loc_A6B894: ConcatVar var_E4
  loc_A6B898: LitVarStr var_F4, "</p>"
  loc_A6B89D: ConcatVar var_104
  loc_A6B8A1: PopAdLdVar
  loc_A6B8A2: FLdPr Me
  loc_A6B8A5: MemLdRfVar from_stack_1.htmFile
  loc_A6B8A8: LdPrVar
  loc_A6B8AA: LateMemCall
  loc_A6B8B0: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A6B8BB: LitStr "    <p align=""center"">"
  loc_A6B8BE: FLdRfVar var_A8
  loc_A6B8C1: FLdPr Me
  loc_A6B8C4:  = Me.Caption
  loc_A6B8C9: ILdRf var_A8
  loc_A6B8CC: ConcatStr
  loc_A6B8CD: FStStrNoPop var_AC
  loc_A6B8D0: LitStr "</p></th>"
  loc_A6B8D3: ConcatStr
  loc_A6B8D4: CVarStr var_BC
  loc_A6B8D7: PopAdLdVar
  loc_A6B8D8: FLdPr Me
  loc_A6B8DB: MemLdRfVar from_stack_1.htmFile
  loc_A6B8DE: LdPrVar
  loc_A6B8E0: LateMemCall
  loc_A6B8E6: FFreeStr var_A8 = ""
  loc_A6B8ED: FFree1Var var_BC = ""
  loc_A6B8F0: LitVarStr var_94, "  </tr>"
  loc_A6B8F5: PopAdLdVar
  loc_A6B8F6: FLdPr Me
  loc_A6B8F9: MemLdRfVar from_stack_1.htmFile
  loc_A6B8FC: LdPrVar
  loc_A6B8FE: LateMemCall
  loc_A6B904: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_A6B909: PopAdLdVar
  loc_A6B90A: FLdPr Me
  loc_A6B90D: MemLdRfVar from_stack_1.htmFile
  loc_A6B910: LdPrVar
  loc_A6B912: LateMemCall
  loc_A6B918: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_A6B91D: PopAdLdVar
  loc_A6B91E: FLdPr Me
  loc_A6B921: MemLdRfVar from_stack_1.htmFile
  loc_A6B924: LdPrVar
  loc_A6B926: LateMemCall
  loc_A6B92C: FLdPr Me
  loc_A6B92F: VCallAd Control_ID_mskDesde
  loc_A6B932: FStAdFunc var_C0
  loc_A6B935: FLdPr var_C0
  loc_A6B938: LateIdLdVar var_BC DispID_22 0
  loc_A6B93F: CStrVarTmp
  loc_A6B940: FStStrNoPop var_A8
  loc_A6B943: LitStr vbNullString
  loc_A6B946: NeStr
  loc_A6B948: FFree1Str var_A8
  loc_A6B94B: FFree1Ad var_C0
  loc_A6B94E: FFree1Var var_BC = ""
  loc_A6B951: BranchF loc_A6B999
  loc_A6B954: LitStr "         Desde: <span class=""Normal"">"
  loc_A6B957: FLdPr Me
  loc_A6B95A: VCallAd Control_ID_mskDesde
  loc_A6B95D: FStAdFunc var_C0
  loc_A6B960: FLdPr var_C0
  loc_A6B963: LateIdLdVar var_BC DispID_15 0
  loc_A6B96A: CStrVarTmp
  loc_A6B96B: FStStrNoPop var_A8
  loc_A6B96E: ConcatStr
  loc_A6B96F: FStStrNoPop var_AC
  loc_A6B972: LitStr "</span><br>"
  loc_A6B975: ConcatStr
  loc_A6B976: CVarStr var_D4
  loc_A6B979: PopAdLdVar
  loc_A6B97A: FLdPr Me
  loc_A6B97D: MemLdRfVar from_stack_1.htmFile
  loc_A6B980: LdPrVar
  loc_A6B982: LateMemCall
  loc_A6B988: FFreeStr var_A8 = ""
  loc_A6B98F: FFree1Ad var_C0
  loc_A6B992: FFreeVar var_BC = ""
  loc_A6B999: FLdPr Me
  loc_A6B99C: VCallAd Control_ID_mskHasta
  loc_A6B99F: FStAdFunc var_C0
  loc_A6B9A2: FLdPr var_C0
  loc_A6B9A5: LateIdLdVar var_BC DispID_22 0
  loc_A6B9AC: CStrVarTmp
  loc_A6B9AD: FStStrNoPop var_A8
  loc_A6B9B0: LitStr vbNullString
  loc_A6B9B3: NeStr
  loc_A6B9B5: FFree1Str var_A8
  loc_A6B9B8: FFree1Ad var_C0
  loc_A6B9BB: FFree1Var var_BC = ""
  loc_A6B9BE: BranchF loc_A6BA06
  loc_A6B9C1: LitStr "         Hasta: <span class=""Normal"">"
  loc_A6B9C4: FLdPr Me
  loc_A6B9C7: VCallAd Control_ID_mskHasta
  loc_A6B9CA: FStAdFunc var_C0
  loc_A6B9CD: FLdPr var_C0
  loc_A6B9D0: LateIdLdVar var_BC DispID_15 0
  loc_A6B9D7: CStrVarTmp
  loc_A6B9D8: FStStrNoPop var_A8
  loc_A6B9DB: ConcatStr
  loc_A6B9DC: FStStrNoPop var_AC
  loc_A6B9DF: LitStr "</span>"
  loc_A6B9E2: ConcatStr
  loc_A6B9E3: CVarStr var_D4
  loc_A6B9E6: PopAdLdVar
  loc_A6B9E7: FLdPr Me
  loc_A6B9EA: MemLdRfVar from_stack_1.htmFile
  loc_A6B9ED: LdPrVar
  loc_A6B9EF: LateMemCall
  loc_A6B9F5: FFreeStr var_A8 = ""
  loc_A6B9FC: FFree1Ad var_C0
  loc_A6B9FF: FFreeVar var_BC = ""
  loc_A6BA06: LitVarStr var_94, "   </th>"
  loc_A6BA0B: PopAdLdVar
  loc_A6BA0C: FLdPr Me
  loc_A6BA0F: MemLdRfVar from_stack_1.htmFile
  loc_A6BA12: LdPrVar
  loc_A6BA14: LateMemCall
  loc_A6BA1A: LitVarStr var_94, "  </tr>"
  loc_A6BA1F: PopAdLdVar
  loc_A6BA20: FLdPr Me
  loc_A6BA23: MemLdRfVar from_stack_1.htmFile
  loc_A6BA26: LdPrVar
  loc_A6BA28: LateMemCall
  loc_A6BA2E: LitVarStr var_94, "</table>"
  loc_A6BA33: PopAdLdVar
  loc_A6BA34: FLdPr Me
  loc_A6BA37: MemLdRfVar from_stack_1.htmFile
  loc_A6BA3A: LdPrVar
  loc_A6BA3C: LateMemCall
  loc_A6BA42: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A6BA47: PopAdLdVar
  loc_A6BA48: FLdPr Me
  loc_A6BA4B: MemLdRfVar from_stack_1.htmFile
  loc_A6BA4E: LdPrVar
  loc_A6BA50: LateMemCall
  loc_A6BA56: LitVarStr var_94, "  <THEAD>"
  loc_A6BA5B: PopAdLdVar
  loc_A6BA5C: FLdPr Me
  loc_A6BA5F: MemLdRfVar from_stack_1.htmFile
  loc_A6BA62: LdPrVar
  loc_A6BA64: LateMemCall
  loc_A6BA6A: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A6BA6F: PopAdLdVar
  loc_A6BA70: FLdPr Me
  loc_A6BA73: MemLdRfVar from_stack_1.htmFile
  loc_A6BA76: LdPrVar
  loc_A6BA78: LateMemCall
  loc_A6BA7E: LitVarStr var_94, "    <th>Cuenta Contable</th>"
  loc_A6BA83: PopAdLdVar
  loc_A6BA84: FLdPr Me
  loc_A6BA87: MemLdRfVar from_stack_1.htmFile
  loc_A6BA8A: LdPrVar
  loc_A6BA8C: LateMemCall
  loc_A6BA92: LitVarStr var_94, "    <th>Fecha</th>"
  loc_A6BA97: PopAdLdVar
  loc_A6BA98: FLdPr Me
  loc_A6BA9B: MemLdRfVar from_stack_1.htmFile
  loc_A6BA9E: LdPrVar
  loc_A6BAA0: LateMemCall
  loc_A6BAA6: LitVarStr var_94, "    <th>Expediente</th>"
  loc_A6BAAB: PopAdLdVar
  loc_A6BAAC: FLdPr Me
  loc_A6BAAF: MemLdRfVar from_stack_1.htmFile
  loc_A6BAB2: LdPrVar
  loc_A6BAB4: LateMemCall
  loc_A6BABA: LitVarStr var_94, "    <th>Inventario</th>"
  loc_A6BABF: PopAdLdVar
  loc_A6BAC0: FLdPr Me
  loc_A6BAC3: MemLdRfVar from_stack_1.htmFile
  loc_A6BAC6: LdPrVar
  loc_A6BAC8: LateMemCall
  loc_A6BACE: LitVarStr var_94, "    <th>D E B E</th>"
  loc_A6BAD3: PopAdLdVar
  loc_A6BAD4: FLdPr Me
  loc_A6BAD7: MemLdRfVar from_stack_1.htmFile
  loc_A6BADA: LdPrVar
  loc_A6BADC: LateMemCall
  loc_A6BAE2: LitVarStr var_94, "    <th>H A B E R</th>"
  loc_A6BAE7: PopAdLdVar
  loc_A6BAE8: FLdPr Me
  loc_A6BAEB: MemLdRfVar from_stack_1.htmFile
  loc_A6BAEE: LdPrVar
  loc_A6BAF0: LateMemCall
  loc_A6BAF6: LitVarStr var_94, "  </tr>"
  loc_A6BAFB: PopAdLdVar
  loc_A6BAFC: FLdPr Me
  loc_A6BAFF: MemLdRfVar from_stack_1.htmFile
  loc_A6BB02: LdPrVar
  loc_A6BB04: LateMemCall
  loc_A6BB0A: LitVarStr var_94, "  </THEAD>"
  loc_A6BB0F: PopAdLdVar
  loc_A6BB10: FLdPr Me
  loc_A6BB13: MemLdRfVar from_stack_1.htmFile
  loc_A6BB16: LdPrVar
  loc_A6BB18: LateMemCall
  loc_A6BB1E: ExitProcHresult
End Function

Private Function Proc_269_23_981DD0() '981DD0
  'Data Table: 447128
  loc_981D90: LitVarStr var_94, "</table>"
  loc_981D95: PopAdLdVar
  loc_981D96: FLdPr Me
  loc_981D99: MemLdRfVar from_stack_1.htmFile
  loc_981D9C: LdPrVar
  loc_981D9E: LateMemCall
  loc_981DA4: LitVarStr var_94, "</body>"
  loc_981DA9: PopAdLdVar
  loc_981DAA: FLdPr Me
  loc_981DAD: MemLdRfVar from_stack_1.htmFile
  loc_981DB0: LdPrVar
  loc_981DB2: LateMemCall
  loc_981DB8: LitVarStr var_94, "</html>"
  loc_981DBD: PopAdLdVar
  loc_981DBE: FLdPr Me
  loc_981DC1: MemLdRfVar from_stack_1.htmFile
  loc_981DC4: LdPrVar
  loc_981DC6: LateMemCall
  loc_981DCC: ExitProcHresult
  loc_981DCD: ThisVCall unk_447482
End Function
