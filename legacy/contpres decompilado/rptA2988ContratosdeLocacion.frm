VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988ContratosdeLocacion
  Caption = "Acuerdo 2988 - Contratos de Locación - Art. 19 Inc. H."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988ContratosdeLocacion.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9525
  ClientHeight = 3930
  StartUpPosition = 2 'CenterScreen
  Begin VB.CheckBox chkIncluirRP
    Caption = "Incluir Residuos Pasivos"
    Left = 240
    Top = 1680
    Width = 2055
    Height = 375
    TabIndex = 5
    Alignment = 1 'Right Justify
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 120
    Width = 6255
    Height = 1335
    TabIndex = 0
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 960
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.ComboBox cboMes
      Style = 2
      ForeColor = &HFF0000&
      Left = 945
      Top = 840
      Width = 1575
      Height = 315
      TabIndex = 4
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 3840
      Top = 480
      Width = 1335
      Height = 495
      TabIndex = 12
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 240
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Mes:"
      Left = 465
      Top = 840
      Width = 345
      Height = 195
      TabIndex = 3
      AutoSize = -1  'True
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3675
    Width = 9525
    Height = 255
    TabIndex = 17
    OleObjectBlob = "rptA2988ContratosdeLocacion.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6960
    Top = 480
    Width = 735
    Height = 615
    TabIndex = 13
    Cancel = -1  'True
    Picture = "rptA2988ContratosdeLocacion.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988ContratosdeLocacion.frx":0B9C
    Left = 7080
    Top = 600
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2400
    Width = 6135
    Height = 1095
    TabIndex = 16
    Begin VB.CommandButton cmdTXT
      Caption = "T&XT HTC"
      Index = 0
      Left = 3120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
    Begin VB.CommandButton cmdTXT
      Caption = "&TXT DPI"
      Index = 1
      Left = 4560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 11
    End
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 9
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 8
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2400
    Width = 3015
    Height = 1095
    TabIndex = 15
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 7
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 6
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7080
    Top = 600
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptA2988ContratosdeLocacion.frx":0C00
  End
End

Attribute VB_Name = "rptA2988ContratosdeLocacion"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean


Private Sub cmdTxt_Click() '956028
  'Data Table: 4633A4
  loc_956010: LitI2_Byte 0
  loc_956012: ILdRf Me
  loc_956015: CastAd
  loc_956018: FStAdFunc var_88
  loc_95601B: FLdRfVar var_88
  loc_95601E: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_956023: FFree1Ad var_88
  loc_956026: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95BF74
  'Data Table: 4633A4
  loc_95BF5C: ILdRf Me
  loc_95BF5F: CastAd
  loc_95BF62: FStAdFunc var_88
  loc_95BF65: FLdRfVar var_88
  loc_95BF68: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95BF6D: FFree1Ad var_88
  loc_95BF70: ExitProcHresult
  loc_95BF71: LitStr "StrFormMemory_0"
End Sub

Private Sub cmdPredeterminada_Click() '955D7C
  'Data Table: 4633A4
  loc_955D64: ILdRf Me
  loc_955D67: CastAd
  loc_955D6A: FStAdFunc var_88
  loc_955D6D: FLdRfVar var_88
  loc_955D70: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_955D75: FFree1Ad var_88
  loc_955D78: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98593C
  'Data Table: 4633A4
  loc_985904: FLdPr Me
  loc_985907: VCallAd Control_ID_statusBar
  loc_98590A: FStAdFunc var_88
  loc_98590D: FLdPr var_88
  loc_985910: LateIdLdVar var_98 DispID_1 0
  loc_985917: CStrVarTmp
  loc_985918: CVarStr var_A8
  loc_98591B: PopAdLdVar
  loc_98591C: FLdPr Me
  loc_98591F: VCallAd Control_ID_statusBar
  loc_985922: FStAdFunc var_BC
  loc_985925: FLdPr var_BC
  loc_985928: LateIdSt
  loc_98592D: FFreeAd var_88 = ""
  loc_985934: FFreeVar var_98 = ""
  loc_98593B: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96B9EC
  'Data Table: 4633A4
  loc_96B9D0: LitI2_Byte &HFF
  loc_96B9D2: LitI2_Byte 0
  loc_96B9D4: ILdRf Me
  loc_96B9D7: CastAd
  loc_96B9DA: FStAdFunc var_88
  loc_96B9DD: FLdRfVar var_88
  loc_96B9E0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B9E5: FFree1Ad var_88
  loc_96B9E8: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '976860
  'Data Table: 4633A4
  loc_976830: LitVarStr var_94, "Cerrando..."
  loc_976835: PopAdLdVar
  loc_976836: FLdPr Me
  loc_976839: VCallAd Control_ID_statusBar
  loc_97683C: FStAdFunc var_A8
  loc_97683F: FLdPr var_A8
  loc_976842: LateIdSt
  loc_976847: FFree1Ad var_A8
  loc_97684A: ILdRf Me
  loc_97684D: FStAdNoPop
  loc_976851: ImpAdLdRf MemVar_C44F9C
  loc_976854: NewIfNullPr Me
  loc_976857: Me.Global.Unload from_stack_1
  loc_97685C: FFree1Ad var_A8
  loc_97685F: ExitProcHresult
End Sub

Private Sub Form_Load() 'A0BC30
  'Data Table: 4633A4
  loc_A0BACC: LitI2_Byte &HFF
  loc_A0BACE: ImpAdStI2 MemVar_C3D840
  loc_A0BAD1: ILdRf Me
  loc_A0BAD4: CastAd
  loc_A0BAD7: FStAdFunc var_88
  loc_A0BADA: FLdRfVar var_88
  loc_A0BADD: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A0BAE2: FFree1Ad var_88
  loc_A0BAE5: FLdPr Me
  loc_A0BAE8: MemLdRfVar from_stack_1.global_76
  loc_A0BAEB: NewIfNullAd
  loc_A0BAEE: FStAd var_8C 
  loc_A0BAF2: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_A0BAF5: FLdPr var_8C
  loc_A0BAF8: Call clsbase.RedefineRS(from_stack_1v)
  loc_A0BAFD: FLdRfVar var_90
  loc_A0BB00: FLdPr var_8C
  loc_A0BB03: from_stack_1 = clsbase.RecordCount
  loc_A0BB08: ILdRf var_90
  loc_A0BB0B: LitI4 0
  loc_A0BB10: GtI4
  loc_A0BB11: BranchF loc_A0BB98
  loc_A0BB14: FLdPr var_8C
  loc_A0BB17: Call clsbase.MoveFirst()
  loc_A0BB1C: FLdRfVar var_92
  loc_A0BB1F: FLdPr var_8C
  loc_A0BB22: from_stack_1 = clsbase.EOF
  loc_A0BB27: FLdI2 var_92
  loc_A0BB2A: NotI4
  loc_A0BB2B: BranchF loc_A0BB98
  loc_A0BB2E: LitVar_Missing var_D0
  loc_A0BB31: PopAdLdVar
  loc_A0BB32: FLdRfVar var_BC
  loc_A0BB35: FLdRfVar var_AC
  loc_A0BB38: LitVarStr var_A8, "PeriInfo"
  loc_A0BB3D: PopAdLdVar
  loc_A0BB3E: FLdRfVar var_98
  loc_A0BB41: FLdRfVar var_88
  loc_A0BB44: FLdPr var_8C
  loc_A0BB47: from_stack_1v = clsbase.RsFrmGet()
  loc_A0BB4C: FLdPr var_88
  loc_A0BB4F:  = Me.Fields
  loc_A0BB54: FLdPr var_98
  loc_A0BB57: from_stack_2 = Me.Item(from_stack_1)
  loc_A0BB5C: FLdPr var_AC
  loc_A0BB5F:  = Me.Value
  loc_A0BB64: FLdRfVar var_BC
  loc_A0BB67: CStrVarTmp
  loc_A0BB68: FStStrNoPop var_C0
  loc_A0BB6B: FLdPr Me
  loc_A0BB6E: VCallAd Control_ID_cboPeriodo
  loc_A0BB71: FStAdFunc var_D4
  loc_A0BB74: FLdPr var_D4
  loc_A0BB77: Me.AddItem from_stack_1, from_stack_2
  loc_A0BB7C: FFree1Str var_C0
  loc_A0BB7F: FFreeAd var_88 = "": var_98 = "": var_AC = ""
  loc_A0BB8A: FFree1Var var_BC = ""
  loc_A0BB8D: FLdPr var_8C
  loc_A0BB90: Call clsbase.MoveSiguiente()
  loc_A0BB95: Branch loc_A0BB1C
  loc_A0BB98: LitNothing
  loc_A0BB9A: FStAd var_8C 
  loc_A0BB9E: LitI2_Byte 1
  loc_A0BBA0: CUI1I2
  loc_A0BBA2: FLdPr Me
  loc_A0BBA5: MemLdRfVar from_stack_1.global_108
  loc_A0BBA8: LitI2_Byte &HC
  loc_A0BBAA: CUI1I2
  loc_A0BBAC: ForUI1 var_D8
  loc_A0BBB2: LitVar_Missing var_A8
  loc_A0BBB5: PopAdLdVar
  loc_A0BBB6: LitI2_Byte 0
  loc_A0BBB8: FLdPr Me
  loc_A0BBBB: MemLdUI1 global_108
  loc_A0BBBF: CI4UI1
  loc_A0BBC0: ImpAdCallI2 MonthName(, )
  loc_A0BBC5: FStStrNoPop var_C0
  loc_A0BBC8: FLdPr Me
  loc_A0BBCB: VCallAd Control_ID_cboMes
  loc_A0BBCE: FStAdFunc var_88
  loc_A0BBD1: FLdPr var_88
  loc_A0BBD4: Me.AddItem from_stack_1, from_stack_2
  loc_A0BBD9: FFree1Str var_C0
  loc_A0BBDC: FFree1Ad var_88
  loc_A0BBDF: FLdPr Me
  loc_A0BBE2: MemLdUI1 global_108
  loc_A0BBE6: CI4UI1
  loc_A0BBE7: FLdRfVar var_92
  loc_A0BBEA: FLdPr Me
  loc_A0BBED: VCallAd Control_ID_cboMes
  loc_A0BBF0: FStAdFunc var_88
  loc_A0BBF3: FLdPr var_88
  loc_A0BBF6:  = Me.NewIndex
  loc_A0BBFB: FLdI2 var_92
  loc_A0BBFE: FLdPr Me
  loc_A0BC01: VCallAd Control_ID_cboMes
  loc_A0BC04: FStAdFunc var_98
  loc_A0BC07: FLdPr var_98
  loc_A0BC0A: Me.ItemData = from_stack_1
  loc_A0BC0F: FFreeAd var_88 = ""
  loc_A0BC16: FLdPr Me
  loc_A0BC19: MemLdRfVar from_stack_1.global_108
  loc_A0BC1C: NextUI1
  loc_A0BC22: LitI2_Byte &HFF
  loc_A0BC24: FLdPr Me
  loc_A0BC27: MemStI2 bLogos
  loc_A0BC2A: Call cmdNueva_Click()
  loc_A0BC2F: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9553FC
  'Data Table: 4633A4
  loc_9553E4: FLdPr Me
  loc_9553E7: VCallAd Control_ID_wbbReporte
  loc_9553EA: FStAdFunc var_88
  loc_9553ED: FLdRfVar var_88
  loc_9553F0: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9553F5: FFree1Ad var_88
  loc_9553F8: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '955DC8
  'Data Table: 4633A4
  loc_955DB0: LitI2_Byte 0
  loc_955DB2: ILdRf Me
  loc_955DB5: CastAd
  loc_955DB8: FStAdFunc var_88
  loc_955DBB: FLdRfVar var_88
  loc_955DBE: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_955DC3: FFree1Ad var_88
  loc_955DC6: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9AF958
  'Data Table: 4633A4
  loc_9AF8B8: LitI2_Byte 0
  loc_9AF8BA: FLdPr Me
  loc_9AF8BD: MemStI2 bGenerado
  loc_9AF8C0: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9AF8C5: ImpAdLdI2 MemVar_C3D064
  loc_9AF8C8: CStrUI1
  loc_9AF8CA: FStStrNoPop var_88
  loc_9AF8CD: FLdPr Me
  loc_9AF8D0: VCallAd Control_ID_cboPeriodo
  loc_9AF8D3: FStAdFunc var_8C
  loc_9AF8D6: FLdPr var_8C
  loc_9AF8D9: Me.Text = from_stack_1
  loc_9AF8DE: FFree1Str var_88
  loc_9AF8E1: FFree1Ad var_8C
  loc_9AF8E4: LitI2_Byte 0
  loc_9AF8E6: PopTmpLdAd2 var_8E
  loc_9AF8E9: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9AF8EE: CVarDate var_B0
  loc_9AF8F2: FLdRfVar var_C0
  loc_9AF8F5: ImpAdCallFPR4  = Month()
  loc_9AF8FA: FLdRfVar var_C0
  loc_9AF8FD: LitVarI2 var_D0, 1
  loc_9AF902: SubVar var_E0
  loc_9AF906: CI2Var
  loc_9AF907: FLdPr Me
  loc_9AF90A: VCallAd Control_ID_cboMes
  loc_9AF90D: FStAdFunc var_8C
  loc_9AF910: FLdPr var_8C
  loc_9AF913: Me.ListIndex = from_stack_1
  loc_9AF918: FFree1Ad var_8C
  loc_9AF91B: FFreeVar var_B0 = ""
  loc_9AF922: LitI4 0
  loc_9AF927: CI2I4
  loc_9AF928: FLdPr Me
  loc_9AF92B: VCallAd Control_ID_chkIncluirRP
  loc_9AF92E: FStAdFunc var_8C
  loc_9AF931: FLdPr var_8C
  loc_9AF934: Me.Value = from_stack_1
  loc_9AF939: FFree1Ad var_8C
  loc_9AF93C: Call HabilitarCriterio()
  loc_9AF941: ILdRf Me
  loc_9AF944: CastAd
  loc_9AF947: FStAdFunc var_8C
  loc_9AF94A: FLdRfVar var_8C
  loc_9AF94D: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9AF952: FFree1Ad var_8C
  loc_9AF955: ExitProcHresult
End Sub

Public Function htmFileGet() '464148
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '464157
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '464166
  htmFile = Value
End Sub

Public Function bLogosGet() '464175
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '464184
  bLogos = Value
End Sub

Public Function bGeneradoGet() '464193
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4641A2
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9962D4
  'Data Table: 4633A4
  loc_996280: LitI4 0
  loc_996285: LitI4 2
  loc_99628A: FLdRfVar var_88
  loc_99628D: Redim
  loc_996297: FLdPr Me
  loc_99629A: VCallAd Control_ID_cboPeriodo
  loc_99629D: CVarAd
  loc_9962A1: ParmAry1St
  loc_9962A7: FLdPr Me
  loc_9962AA: VCallAd Control_ID_cboMes
  loc_9962AD: CVarAd
  loc_9962B1: ParmAry1St
  loc_9962B7: FLdPr Me
  loc_9962BA: VCallAd Control_ID_chkIncluirRP
  loc_9962BD: CVarAd
  loc_9962C1: ParmAry1St
  loc_9962C7: FLdRfVar var_88
  loc_9962CA: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9962CF: FLdRfVar var_88
  loc_9962D2: Erase
  loc_9962D3: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B1B830
  'Data Table: 4633A4
  loc_B1AFE8: OnErrorGoto loc_B1B7CA
  loc_B1AFEB: FLdPr Me
  loc_B1AFEE: MemLdI2 bGenerado
  loc_B1AFF1: BranchF loc_B1AFF5
  loc_B1AFF4: ExitProcHresult
  loc_B1AFF5: LitVarStr var_98, "Generando reporte..."
  loc_B1AFFA: PopAdLdVar
  loc_B1AFFB: FLdPr Me
  loc_B1AFFE: VCallAd Control_ID_statusBar
  loc_B1B001: FStAdFunc var_AC
  loc_B1B004: FLdPr var_AC
  loc_B1B007: LateIdSt
  loc_B1B00C: FFree1Ad var_AC
  loc_B1B00F: LitI4 &HB
  loc_B1B014: CI2I4
  loc_B1B015: FLdPr Me
  loc_B1B018: Me.MousePointer = from_stack_1
  loc_B1B01D: FLdRfVar var_B8
  loc_B1B020: FLdRfVar var_AE
  loc_B1B023: FLdPr Me
  loc_B1B026: VCallAd Control_ID_cboMes
  loc_B1B029: FStAdFunc var_AC
  loc_B1B02C: FLdPr var_AC
  loc_B1B02F:  = Me.ListIndex
  loc_B1B034: FLdI2 var_AE
  loc_B1B037: FLdPr Me
  loc_B1B03A: VCallAd Control_ID_cboMes
  loc_B1B03D: FStAdFunc var_B4
  loc_B1B040: FLdPr var_B4
  loc_B1B043:  = Me.ItemData
  loc_B1B048: ILdRf var_B8
  loc_B1B04B: CI2I4
  loc_B1B04C: FLdPr Me
  loc_B1B04F: MemStI2 global_100
  loc_B1B052: FFreeAd var_AC = ""
  loc_B1B059: FLdRfVar var_BC
  loc_B1B05C: FLdPr Me
  loc_B1B05F: VCallAd Control_ID_cboPeriodo
  loc_B1B062: FStAdFunc var_AC
  loc_B1B065: FLdPr var_AC
  loc_B1B068:  = Me.Text
  loc_B1B06D: ILdRf var_BC
  loc_B1B070: CI2Str
  loc_B1B072: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_B1B077: CVarStr var_CC
  loc_B1B07A: FLdRfVar var_DC
  loc_B1B07D: ImpAdCallFPR4  = Month()
  loc_B1B082: LitVarStr var_11C, "Definitivo"
  loc_B1B087: FStVarCopyObj var_12C
  loc_B1B08A: FLdRfVar var_12C
  loc_B1B08D: LitVarStr var_A8, "Provisorio"
  loc_B1B092: FStVarCopyObj var_10C
  loc_B1B095: FLdRfVar var_10C
  loc_B1B098: FLdPr Me
  loc_B1B09B: MemLdI2 global_100
  loc_B1B09E: CVarI2 var_98
  loc_B1B0A1: HardType
  loc_B1B0A2: FLdRfVar var_DC
  loc_B1B0A5: GtVar var_EC
  loc_B1B0A9: FStVar var_FC
  loc_B1B0AD: FLdRfVar var_FC
  loc_B1B0B0: FLdRfVar var_13C
  loc_B1B0B3: ImpAdCallFPR4  = IIf(, , )
  loc_B1B0B8: FLdRfVar var_13C
  loc_B1B0BB: CStrVarTmp
  loc_B1B0BC: FStStrNoPop var_140
  loc_B1B0BF: FLdPr Me
  loc_B1B0C2: MemStStrCopy
  loc_B1B0C6: FFreeStr var_BC = ""
  loc_B1B0CD: FFree1Ad var_AC
  loc_B1B0D0: FFreeVar var_CC = "": var_DC = "": var_FC = "": var_10C = "": var_12C = ""
  loc_B1B0DF: FLdPr Me
  loc_B1B0E2: MemLdRfVar from_stack_1.global_72
  loc_B1B0E5: NewIfNullAd
  loc_B1B0E8: FStAd var_144 
  loc_B1B0EC: LitStr "SELECT pg.PartLocaPage FROM paragene pg WHERE PeriInfo = "
  loc_B1B0EF: FLdRfVar var_BC
  loc_B1B0F2: FLdPr Me
  loc_B1B0F5: VCallAd Control_ID_cboPeriodo
  loc_B1B0F8: FStAdFunc var_AC
  loc_B1B0FB: FLdPr var_AC
  loc_B1B0FE:  = Me.Text
  loc_B1B103: ILdRf var_BC
  loc_B1B106: ConcatStr
  loc_B1B107: FStStrNoPop var_140
  loc_B1B10A: FLdPr var_144
  loc_B1B10D: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1B112: FFreeStr var_BC = ""
  loc_B1B119: FFree1Ad var_AC
  loc_B1B11C: FLdRfVar var_B8
  loc_B1B11F: FLdPr var_144
  loc_B1B122: from_stack_1 = clsbase.RecordCount
  loc_B1B127: ILdRf var_B8
  loc_B1B12A: LitI4 0
  loc_B1B12F: EqI4
  loc_B1B130: BranchF loc_B1B146
  loc_B1B133: LitI4 0
  loc_B1B138: LitStr "No existen parámetros. Verifique..."
  loc_B1B13B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B1B140: Branch loc_B1B7A1
  loc_B1B143: Branch loc_B1B18B
  loc_B1B146: FLdRfVar var_CC
  loc_B1B149: FLdRfVar var_148
  loc_B1B14C: LitVarStr var_98, "PartLocaPage"
  loc_B1B151: PopAdLdVar
  loc_B1B152: FLdRfVar var_B4
  loc_B1B155: FLdRfVar var_AC
  loc_B1B158: FLdPr var_144
  loc_B1B15B: from_stack_1v = clsbase.RsFrmGet()
  loc_B1B160: FLdPr var_AC
  loc_B1B163:  = Me.Fields
  loc_B1B168: FLdPr var_B4
  loc_B1B16B: from_stack_2 = Me.Item(from_stack_1)
  loc_B1B170: FLdPr var_148
  loc_B1B173:  = Me.Value
  loc_B1B178: FLdRfVar var_CC
  loc_B1B17B: CStrVarTmp
  loc_B1B17C: FStStr var_88
  loc_B1B17F: FFreeAd var_AC = "": var_B4 = ""
  loc_B1B188: FFree1Var var_CC = ""
  loc_B1B18B: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_B1B18E: FLdPr var_144
  loc_B1B191: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1B196: LitStr "CREATE TEMPORARY TABLE movi` ("
  loc_B1B199: LitStr " etaProv` varchar(70) NOT NULL DEFAULT '',"
  loc_B1B19C: ConcatStr
  loc_B1B19D: FStStrNoPop var_BC
  loc_B1B1A0: LitStr " ucuPers` bigint(11) unsigned NOT NULL DEFAULT '0',"
  loc_B1B1A3: ConcatStr
  loc_B1B1A4: FStStrNoPop var_140
  loc_B1B1A7: LitStr " edcProv` varchar(10) NOT NULL DEFAULT '',"
  loc_B1B1AA: ConcatStr
  loc_B1B1AB: FStStrNoPop var_14C
  loc_B1B1AE: LitStr " ehcProv` varchar(10) NOT NULL DEFAULT '',"
  loc_B1B1B1: ConcatStr
  loc_B1B1B2: FStStrNoPop var_150
  loc_B1B1B5: LitStr " otcProv` decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_B1B1B8: ConcatStr
  loc_B1B1B9: FStStrNoPop var_154
  loc_B1B1BC: LitStr " eriInfo` year(4) NOT NULL DEFAULT '0000',"
  loc_B1B1BF: ConcatStr
  loc_B1B1C0: FStStrNoPop var_158
  loc_B1B1C3: LitStr " xpeImpu` varchar(15) NOT NULL DEFAULT '',"
  loc_B1B1C6: ConcatStr
  loc_B1B1C7: FStStrNoPop var_15C
  loc_B1B1CA: LitStr " umeLiqu` smallint(4) unsigned NOT NULL DEFAULT '0',"
  loc_B1B1CD: ConcatStr
  loc_B1B1CE: FStStrNoPop var_160
  loc_B1B1D1: LitStr " echLiqu` date DEFAULT NULL,"
  loc_B1B1D4: ConcatStr
  loc_B1B1D5: FStStrNoPop var_164
  loc_B1B1D8: LitStr " etaLiqu` varchar(500) NOT NULL DEFAULT ''"
  loc_B1B1DB: ConcatStr
  loc_B1B1DC: FStStrNoPop var_168
  loc_B1B1DF: LitStr ") ;"
  loc_B1B1E2: ConcatStr
  loc_B1B1E3: FStStrNoPop var_16C
  loc_B1B1E6: FLdPr var_144
  loc_B1B1E9: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1B1EE: FFreeStr var_BC = "": var_140 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = ""
  loc_B1B207: LitI2_Byte &HFF
  loc_B1B209: BranchF loc_B1B337
  loc_B1B20C: LitStr "DROP TEMPORARY TABLE IF EXISTS tprov;"
  loc_B1B20F: LitStr " CREATE TEMPORARY TABLE tprov"
  loc_B1B212: ConcatStr
  loc_B1B213: FStStrNoPop var_BC
  loc_B1B216: LitStr " SELECT CucuPers, l.FedcLoca, l.FehcLoca, l.ImpoLoca, IFNULL(l.ImpoLoca*(TIMESTAMPDIFF(MONTH,l.FedcLoca,l.FehcLoca)+1),l.ImpoLoca) TotalContrato, tm.CodiPart"
  loc_B1B219: ConcatStr
  loc_B1B21A: FStStrNoPop var_140
  loc_B1B21D: LitStr " FROM locadores l"
  loc_B1B220: ConcatStr
  loc_B1B221: FStStrNoPop var_14C
  loc_B1B224: LitStr " INNER JOIN tipomensual tm ON tm.PeriInfo = l.PeriInfo AND tm.CodiTime = l.CodiTime"
  loc_B1B227: ConcatStr
  loc_B1B228: FStStrNoPop var_150
  loc_B1B22B: LitStr " WHERE l.PeriInfo = "
  loc_B1B22E: ConcatStr
  loc_B1B22F: FStStrNoPop var_158
  loc_B1B232: FLdRfVar var_154
  loc_B1B235: FLdPr Me
  loc_B1B238: VCallAd Control_ID_cboPeriodo
  loc_B1B23B: FStAdFunc var_AC
  loc_B1B23E: FLdPr var_AC
  loc_B1B241:  = Me.Text
  loc_B1B246: ILdRf var_154
  loc_B1B249: ConcatStr
  loc_B1B24A: FStStrNoPop var_15C
  loc_B1B24D: LitStr " AND l.MesLoca = "
  loc_B1B250: ConcatStr
  loc_B1B251: FStStrNoPop var_160
  loc_B1B254: FLdPr Me
  loc_B1B257: MemLdI2 global_100
  loc_B1B25A: CStrUI1
  loc_B1B25C: FStStrNoPop var_164
  loc_B1B25F: ConcatStr
  loc_B1B260: FStStrNoPop var_168
  loc_B1B263: LitStr " AND l.CodiTime = 1"
  loc_B1B266: ConcatStr
  loc_B1B267: FStStrNoPop var_16C
  loc_B1B26A: LitStr " GROUP BY CucuPers;"
  loc_B1B26D: ConcatStr
  loc_B1B26E: FStStrNoPop var_170
  loc_B1B271: FLdPr var_144
  loc_B1B274: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1B279: FFreeStr var_BC = "": var_140 = "": var_14C = "": var_150 = "": var_158 = "": var_154 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = ""
  loc_B1B294: FFree1Ad var_AC
  loc_B1B297: LitStr "INSERT INTO tmovi"
  loc_B1B29A: LitStr " SELECT DetaProv, p.CucuPers, IFNULL(DATE_FORMAT(FedcLoca,'" & Chr(37) & "d/" & Chr(37) & "m/" & Chr(37) & "Y'),'') FedcProv, IFNULL(DATE_FORMAT(FehcLoca,'" & Chr(37) & "d/" & Chr(37) & "m/" & Chr(37) & "Y'),'') FehcProv, tp.TotalContrato TotcProv"
  loc_B1B29D: ConcatStr
  loc_B1B29E: FStStrNoPop var_BC
  loc_B1B2A1: LitStr ", l.PeriInfo, l.ExpeImpu, l.NumeLiqu, l.FechLiqu, DetaLiqu"
  loc_B1B2A4: ConcatStr
  loc_B1B2A5: FStStrNoPop var_140
  loc_B1B2A8: LitStr " FROM tprov tp"
  loc_B1B2AB: ConcatStr
  loc_B1B2AC: FStStrNoPop var_14C
  loc_B1B2AF: LitStr " INNER JOIN proveedor p ON p.CucuPers = tp.CucuPers"
  loc_B1B2B2: ConcatStr
  loc_B1B2B3: FStStrNoPop var_150
  loc_B1B2B6: LitStr " INNER JOIN liquidacion l ON l.PeriInfo = "
  loc_B1B2B9: ConcatStr
  loc_B1B2BA: FStStrNoPop var_158
  loc_B1B2BD: FLdRfVar var_154
  loc_B1B2C0: FLdPr Me
  loc_B1B2C3: VCallAd Control_ID_cboPeriodo
  loc_B1B2C6: FStAdFunc var_AC
  loc_B1B2C9: FLdPr var_AC
  loc_B1B2CC:  = Me.Text
  loc_B1B2D1: ILdRf var_154
  loc_B1B2D4: ConcatStr
  loc_B1B2D5: FStStrNoPop var_15C
  loc_B1B2D8: LitStr " AND MONTH(l.FechLiqu) = "
  loc_B1B2DB: ConcatStr
  loc_B1B2DC: FStStrNoPop var_160
  loc_B1B2DF: FLdPr Me
  loc_B1B2E2: MemLdI2 global_100
  loc_B1B2E5: CStrUI1
  loc_B1B2E7: FStStrNoPop var_164
  loc_B1B2EA: ConcatStr
  loc_B1B2EB: FStStrNoPop var_168
  loc_B1B2EE: LitStr " AND FeanLiqu IS NULL"
  loc_B1B2F1: ConcatStr
  loc_B1B2F2: FStStrNoPop var_16C
  loc_B1B2F5: LitStr " INNER JOIN imputacion i ON i.PeriInfo = l.PeriInfo AND i.LiquImpu != 0 AND i.ExpeImpu = l.ExpeImpu AND i.NumeLiqu = l.NumeLiqu AND i.CucuPers = p.CucuPers"
  loc_B1B2F8: ConcatStr
  loc_B1B2F9: FStStrNoPop var_170
  loc_B1B2FC: LitStr " AND i.CodiPart = tp.CodiPart"
  loc_B1B2FF: ConcatStr
  loc_B1B300: FStStrNoPop var_174
  loc_B1B303: LitStr " GROUP BY p.CucuPers, l.PeriInfo, l.ExpeImpu, l.NumeLiqu;"
  loc_B1B306: ConcatStr
  loc_B1B307: FStStrNoPop var_178
  loc_B1B30A: FLdPr var_144
  loc_B1B30D: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1B312: FFreeStr var_BC = "": var_140 = "": var_14C = "": var_150 = "": var_158 = "": var_154 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = ""
  loc_B1B331: FFree1Ad var_AC
  loc_B1B334: Branch loc_B1B42F
  loc_B1B337: LitStr "INSERT INTO tmovi"
  loc_B1B33A: LitStr " SELECT DetaProv, tbl.CucuPers, IFNULL(DATE_FORMAT(FedcProv,'" & Chr(37) & "d/" & Chr(37) & "m/" & Chr(37) & "Y'),'') FedcProv"
  loc_B1B33D: ConcatStr
  loc_B1B33E: FStStrNoPop var_BC
  loc_B1B341: LitStr ", IFNULL(DATE_FORMAT(FehcProv,'" & Chr(37) & "d/" & Chr(37) & "m/" & Chr(37) & "Y'),'') FehcProv, TotcProv, tbl.PeriInfo, tbl.ExpeImpu, tbl.NumeLiqu"
  loc_B1B344: ConcatStr
  loc_B1B345: FStStrNoPop var_140
  loc_B1B348: LitStr ", FechOrpa, DetaOrpa"
  loc_B1B34B: ConcatStr
  loc_B1B34C: FStStrNoPop var_14C
  loc_B1B34F: LitStr " FROM ("
  loc_B1B352: ConcatStr
  loc_B1B353: FStStrNoPop var_150
  loc_B1B356: LitStr " SELECT p.CucuPers, i.PeriInfo, i.ExpeImpu, i.NumeLiqu, SUM(MapaImpu) MapaImpu"
  loc_B1B359: ConcatStr
  loc_B1B35A: FStStrNoPop var_154
  loc_B1B35D: LitStr " FROM proveedor p"
  loc_B1B360: ConcatStr
  loc_B1B361: FStStrNoPop var_158
  loc_B1B364: LitStr " INNER JOIN imputacion i ON i.PeriInfo = "
  loc_B1B367: ConcatStr
  loc_B1B368: FStStrNoPop var_160
  loc_B1B36B: FLdRfVar var_15C
  loc_B1B36E: FLdPr Me
  loc_B1B371: VCallAd Control_ID_cboPeriodo
  loc_B1B374: FStAdFunc var_AC
  loc_B1B377: FLdPr var_AC
  loc_B1B37A:  = Me.Text
  loc_B1B37F: ILdRf var_15C
  loc_B1B382: ConcatStr
  loc_B1B383: FStStrNoPop var_164
  loc_B1B386: LitStr " AND MONTH(i.FechImpu) = "
  loc_B1B389: ConcatStr
  loc_B1B38A: FStStrNoPop var_168
  loc_B1B38D: FLdPr Me
  loc_B1B390: MemLdI2 global_100
  loc_B1B393: CStrUI1
  loc_B1B395: FStStrNoPop var_16C
  loc_B1B398: ConcatStr
  loc_B1B399: FStStrNoPop var_170
  loc_B1B39C: LitStr " AND i.MapaImpu != 0 AND i.CucuPers = p.CucuPers AND i.CodiPart IN ("
  loc_B1B39F: ConcatStr
  loc_B1B3A0: FStStrNoPop var_174
  loc_B1B3A3: ILdRf var_88
  loc_B1B3A6: ConcatStr
  loc_B1B3A7: FStStrNoPop var_178
  loc_B1B3AA: LitStr ") "
  loc_B1B3AD: ConcatStr
  loc_B1B3AE: FStStrNoPop var_17C
  loc_B1B3B1: LitStr " WHERE LocaProv = 1"
  loc_B1B3B4: ConcatStr
  loc_B1B3B5: FStStrNoPop var_180
  loc_B1B3B8: LitStr " GROUP BY p.CucuPers, i.PeriInfo, i.ExpeImpu, i.NumeLiqu"
  loc_B1B3BB: ConcatStr
  loc_B1B3BC: FStStrNoPop var_184
  loc_B1B3BF: LitStr " HAVING MapaImpu != 0"
  loc_B1B3C2: ConcatStr
  loc_B1B3C3: FStStrNoPop var_188
  loc_B1B3C6: LitStr ") AS tbl"
  loc_B1B3C9: ConcatStr
  loc_B1B3CA: FStStrNoPop var_18C
  loc_B1B3CD: LitStr " INNER JOIN proveedor p ON p.CucuPers = tbl.CucuPers"
  loc_B1B3D0: ConcatStr
  loc_B1B3D1: FStStrNoPop var_190
  loc_B1B3D4: LitStr " INNER JOIN ordenpago o ON o.PeriInfo = tbl.PeriInfo AND o.ExpeImpu = tbl.ExpeImpu AND o.NumeLiqu = tbl.NumeLiqu AND MONTH(o.FechOrpa) = "
  loc_B1B3D7: ConcatStr
  loc_B1B3D8: FStStrNoPop var_194
  loc_B1B3DB: FLdPr Me
  loc_B1B3DE: MemLdI2 global_100
  loc_B1B3E1: CStrUI1
  loc_B1B3E3: FStStrNoPop var_198
  loc_B1B3E6: ConcatStr
  loc_B1B3E7: FStStrNoPop var_19C
  loc_B1B3EA: LitStr ";"
  loc_B1B3ED: ConcatStr
  loc_B1B3EE: FStStrNoPop var_1A0
  loc_B1B3F1: FLdPr var_144
  loc_B1B3F4: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1B3F9: FFreeStr var_BC = "": var_140 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_160 = "": var_15C = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = ""
  loc_B1B42C: FFree1Ad var_AC
  loc_B1B42F: FLdPr Me
  loc_B1B432: VCallAd Control_ID_chkIncluirRP
  loc_B1B435: CVarAd
  loc_B1B439: CBoolVarNull
  loc_B1B43B: FFree1Var var_CC = ""
  loc_B1B43E: BranchF loc_B1B4DE
  loc_B1B441: LitStr "INSERT INTO tmovi"
  loc_B1B444: LitStr " SELECT DetaProv, p.CucuPers, IFNULL(DATE_FORMAT(FedcLoca,'" & Chr(37) & "d/" & Chr(37) & "m/" & Chr(37) & "Y'),'') FedcProv, IFNULL(DATE_FORMAT(FehcLoca,'" & Chr(37) & "d/" & Chr(37) & "m/" & Chr(37) & "Y'),'') FehcProv, tp.TotalContrato TotcProv, l.PeriInfo, l.ExpeImpu, l.NumeLiqu, l.FechLiqu, DetaLiqu"
  loc_B1B447: ConcatStr
  loc_B1B448: FStStrNoPop var_BC
  loc_B1B44B: LitStr " FROM tprov tp"
  loc_B1B44E: ConcatStr
  loc_B1B44F: FStStrNoPop var_140
  loc_B1B452: LitStr " INNER JOIN proveedor p ON p.CucuPers = tp.CucuPers"
  loc_B1B455: ConcatStr
  loc_B1B456: FStStrNoPop var_14C
  loc_B1B459: LitStr " INNER JOIN liquidacion l ON l.PeriInfo = "
  loc_B1B45C: ConcatStr
  loc_B1B45D: FStStrNoPop var_154
  loc_B1B460: FLdRfVar var_150
  loc_B1B463: FLdPr Me
  loc_B1B466: VCallAd Control_ID_cboPeriodo
  loc_B1B469: FStAdFunc var_AC
  loc_B1B46C: FLdPr var_AC
  loc_B1B46F:  = Me.Text
  loc_B1B474: ILdRf var_150
  loc_B1B477: ConcatStr
  loc_B1B478: FStStrNoPop var_158
  loc_B1B47B: LitStr " AND MONTH(l.FechLiqu) = "
  loc_B1B47E: ConcatStr
  loc_B1B47F: FStStrNoPop var_15C
  loc_B1B482: FLdPr Me
  loc_B1B485: MemLdI2 global_100
  loc_B1B488: CStrUI1
  loc_B1B48A: FStStrNoPop var_160
  loc_B1B48D: ConcatStr
  loc_B1B48E: FStStrNoPop var_164
  loc_B1B491: LitStr " AND FeanLiqu IS NULL"
  loc_B1B494: ConcatStr
  loc_B1B495: FStStrNoPop var_168
  loc_B1B498: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = l.PeriInfo"
  loc_B1B49B: ConcatStr
  loc_B1B49C: FStStrNoPop var_16C
  loc_B1B49F: LitStr " INNER JOIN liquidadeta lqd ON lqd.PeriInfo = l.PeriInfo AND lqd.ExpeImpu = l.ExpeImpu AND lqd.NumeLiqu = l.NumeLiqu"
  loc_B1B4A2: ConcatStr
  loc_B1B4A3: FStStrNoPop var_170
  loc_B1B4A6: LitStr " AND lqd.CodiCuco = pc.CcrpPaco"
  loc_B1B4A9: ConcatStr
  loc_B1B4AA: FStStrNoPop var_174
  loc_B1B4AD: LitStr " AND lqd.CucuPers = p.CucuPers;"
  loc_B1B4B0: ConcatStr
  loc_B1B4B1: FStStrNoPop var_178
  loc_B1B4B4: FLdPr var_144
  loc_B1B4B7: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1B4BC: FFreeStr var_BC = "": var_140 = "": var_14C = "": var_154 = "": var_150 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = ""
  loc_B1B4DB: FFree1Ad var_AC
  loc_B1B4DE: LitStr "Municipalidad de Guaymallén"
  loc_B1B4E1: LitStr "Municipalidad de San Carlos"
  loc_B1B4E4: EqStr
  loc_B1B4E6: BranchF loc_B1B57C
  loc_B1B4E9: LitStr "SELECT DetaProv, tmovi.CucuPers, FechLiqu, FedcProv, FehcProv, Sum(ImpoLine) TotcProv, tmovi.PeriInfo, tmovi.ExpeImpu, tmovi.NumeLiqu, Sum(ImpoLine) ImpoLiqu"
  loc_B1B4EC: LitStr ", CAST(GROUP_CONCAT(DISTINCT CONCAT(tmovi.ExpeImpu,'(',tmovi.NumeLiqu,')',DetaRete,' $&nbsp;',ImpoLine)) AS CHAR) DetalleLiqu"
  loc_B1B4EF: ConcatStr
  loc_B1B4F0: FStStrNoPop var_BC
  loc_B1B4F3: LitStr ", Concat(DATE_FORMAT(FechLiqu,'" & Chr(37) & "Y" & Chr(37) & "m'),'|','"
  loc_B1B4F6: ConcatStr
  loc_B1B4F7: FStStrNoPop var_140
  loc_B1B4FA: LitStr "060204"
  loc_B1B4FD: ConcatStr
  loc_B1B4FE: FStStrNoPop var_14C
  loc_B1B501: LitStr "','|',"
  loc_B1B504: ConcatStr
  loc_B1B505: FStStrNoPop var_150
  loc_B1B508: LitI4 0
  loc_B1B50D: LitI4 -1
  loc_B1B512: LitI4 1
  loc_B1B517: LitStr vbNullString
  loc_B1B51A: LitStr "-"
  loc_B1B51D: LitStr "30-99914707-7"
  loc_B1B520: ImpAdCallI2 Replace(, , , , , )
  loc_B1B525: FStStrNoPop var_154
  loc_B1B528: ConcatStr
  loc_B1B529: FStStrNoPop var_158
  loc_B1B52C: LitStr ",'|',tmovi.CucuPers,'|',DetaLiqu,'|',FedcProv,'|',FehcProv,'|',Replace(Sum(ImpoLine),'.',','),'|',Replace(Sum(ImpoLine),'.',','),'|', REPLACE(SUM(if(ln.CodiRete>0,ImpoLine,0)),'.',',')) LineaTxt"
  loc_B1B52F: ConcatStr
  loc_B1B530: FStStrNoPop var_15C
  loc_B1B533: LitStr " FROM tmovi"
  loc_B1B536: ConcatStr
  loc_B1B537: FStStrNoPop var_160
  loc_B1B53A: LitStr " INNER JOIN liquidaneto ln ON ln.PeriInfo = tmovi.PeriInfo AND ln.ExpeImpu = tmovi.ExpeImpu AND ln.NumeLiqu = tmovi.NumeLiqu AND ln.CucuPers = tmovi.CucuPers"
  loc_B1B53D: ConcatStr
  loc_B1B53E: FStStrNoPop var_164
  loc_B1B541: LitStr " INNER JOIN retenciones r ON r.PeriInfo = ln.PeriInfo AND r.CodiRete = ln.CodiRete"
  loc_B1B544: ConcatStr
  loc_B1B545: FStStrNoPop var_168
  loc_B1B548: LitStr " GROUP BY CucuPers"
  loc_B1B54B: ConcatStr
  loc_B1B54C: FStStrNoPop var_16C
  loc_B1B54F: LitStr " ORDER BY DetaProv"
  loc_B1B552: ConcatStr
  loc_B1B553: FStStrNoPop var_170
  loc_B1B556: FLdPr var_144
  loc_B1B559: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1B55E: FFreeStr var_BC = "": var_140 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = ""
  loc_B1B579: Branch loc_B1B76C
  loc_B1B57C: LitStr "Municipalidad de Guaymallén"
  loc_B1B57F: LitStr "Municipalidad de General Alvear"
  loc_B1B582: EqStr
  loc_B1B584: LitStr "Municipalidad de Guaymallén"
  loc_B1B587: LitStr "Municipalidad de Malargüe"
  loc_B1B58A: EqStr
  loc_B1B58C: OrI4
  loc_B1B58D: BranchF loc_B1B62C
  loc_B1B590: LitStr "SELECT DetaProv, tmovi.CucuPers, FechLiqu, FedcProv, FehcProv, TotcProv, Sum(ImpoLine) ImpoLiqu"
  loc_B1B593: LitStr ", CAST(GROUP_CONCAT(DISTINCT CONCAT(tmovi.ExpeImpu,'(',tmovi.NumeLiqu,')',DetaRete,' $&nbsp;',ImpoLine)) AS CHAR) DetalleLiqu"
  loc_B1B596: ConcatStr
  loc_B1B597: FStStrNoPop var_BC
  loc_B1B59A: LitStr ", Concat(DATE_FORMAT(FechLiqu,'" & Chr(37) & "Y" & Chr(37) & "m'),'|','"
  loc_B1B59D: ConcatStr
  loc_B1B59E: FStStrNoPop var_140
  loc_B1B5A1: LitStr "060204"
  loc_B1B5A4: ConcatStr
  loc_B1B5A5: FStStrNoPop var_14C
  loc_B1B5A8: LitStr "','|',"
  loc_B1B5AB: ConcatStr
  loc_B1B5AC: FStStrNoPop var_150
  loc_B1B5AF: LitI4 0
  loc_B1B5B4: LitI4 -1
  loc_B1B5B9: LitI4 1
  loc_B1B5BE: LitStr vbNullString
  loc_B1B5C1: LitStr "-"
  loc_B1B5C4: LitStr "30-99914707-7"
  loc_B1B5C7: ImpAdCallI2 Replace(, , , , , )
  loc_B1B5CC: FStStrNoPop var_154
  loc_B1B5CF: ConcatStr
  loc_B1B5D0: FStStrNoPop var_158
  loc_B1B5D3: LitStr ",'|',tmovi.CucuPers,'|',DetaProv,'|',FedcProv,'|',FehcProv,'|',Replace(TotcProv,'.',','),'|',Replace(Sum(ImpoLine),'.',','),'|', REPLACE(SUM(if(ln.CodiRete>0,ImpoLine,0)),'.',',')) LineaTxt"
  loc_B1B5D6: ConcatStr
  loc_B1B5D7: FStStrNoPop var_15C
  loc_B1B5DA: LitStr ", CONCAT(tmovi.CucuPers,rpad(detaprov,30,' '),'F00010191349 0,0000800000000',lpad(REPLACE(SUM(ImpoLine),'.',','),11,' '),lpad(REPLACE(SUM(ImpoLine),'.',','),10,' '),'     0,00     0,00     0,00     0,00     0,00Mendoza                                           ',lpad(REPLACE(SUM(ImpoLine),'.',','),10,' '),lpad(REPLACE(SUM(ImpoLine),'.',','),10,' '),'      0,0000F     0,003     0,001010101000100',lpad(REPLACE(SUM(ImpoLine),'.',','),10,' '),'      0,00      0,00      0,00      0,00000000030      0,01F      0,000      0,00      0,00      0,00      0,00000      0,00      0,00     0,00      0,01     0,00000F') LineaTxt2"
  loc_B1B5DD: ConcatStr
  loc_B1B5DE: FStStrNoPop var_160
  loc_B1B5E1: LitStr " FROM tmovi"
  loc_B1B5E4: ConcatStr
  loc_B1B5E5: FStStrNoPop var_164
  loc_B1B5E8: LitStr " INNER JOIN liquidaneto ln ON ln.PeriInfo = tmovi.PeriInfo AND ln.ExpeImpu = tmovi.ExpeImpu AND ln.NumeLiqu = tmovi.NumeLiqu AND ln.CucuPers = tmovi.CucuPers"
  loc_B1B5EB: ConcatStr
  loc_B1B5EC: FStStrNoPop var_168
  loc_B1B5EF: LitStr " INNER JOIN retenciones r ON r.PeriInfo = ln.PeriInfo AND r.CodiRete = ln.CodiRete"
  loc_B1B5F2: ConcatStr
  loc_B1B5F3: FStStrNoPop var_16C
  loc_B1B5F6: LitStr " GROUP BY CucuPers"
  loc_B1B5F9: ConcatStr
  loc_B1B5FA: FStStrNoPop var_170
  loc_B1B5FD: LitStr " ORDER BY DetaProv"
  loc_B1B600: ConcatStr
  loc_B1B601: FStStrNoPop var_174
  loc_B1B604: FLdPr var_144
  loc_B1B607: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1B60C: FFreeStr var_BC = "": var_140 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = ""
  loc_B1B629: Branch loc_B1B76C
  loc_B1B62C: LitStr "Municipalidad de Guaymallén"
  loc_B1B62F: LitStr "Municipalidad de Guaymallén"
  loc_B1B632: EqStr
  loc_B1B634: BranchF loc_B1B6D3
  loc_B1B637: LitStr "SELECT DetaProv, tmovi.CucuPers, FechLiqu, FedcProv, FehcProv, TotcProv, Sum(ImpoLine) ImpoLiqu"
  loc_B1B63A: LitStr ", CAST(GROUP_CONCAT(DISTINCT CONCAT(tmovi.ExpeImpu,'(',tmovi.NumeLiqu,')',DetaRete,' $&nbsp;',ImpoLine)) AS CHAR) DetalleLiqu"
  loc_B1B63D: ConcatStr
  loc_B1B63E: FStStrNoPop var_BC
  loc_B1B641: LitStr ", Concat(DATE_FORMAT(FechLiqu,'" & Chr(37) & "Y" & Chr(37) & "m'),'|','"
  loc_B1B644: ConcatStr
  loc_B1B645: FStStrNoPop var_140
  loc_B1B648: LitStr "060204"
  loc_B1B64B: ConcatStr
  loc_B1B64C: FStStrNoPop var_14C
  loc_B1B64F: LitStr "','|',"
  loc_B1B652: ConcatStr
  loc_B1B653: FStStrNoPop var_150
  loc_B1B656: LitI4 0
  loc_B1B65B: LitI4 -1
  loc_B1B660: LitI4 1
  loc_B1B665: LitStr vbNullString
  loc_B1B668: LitStr "-"
  loc_B1B66B: LitStr "30-99914707-7"
  loc_B1B66E: ImpAdCallI2 Replace(, , , , , )
  loc_B1B673: FStStrNoPop var_154
  loc_B1B676: ConcatStr
  loc_B1B677: FStStrNoPop var_158
  loc_B1B67A: LitStr ",'|',tmovi.CucuPers,'|',DetaLiqu,'|',FedcProv,'|',FehcProv,'|',Replace(TotcProv,'.',','),'|',Replace(Sum(ImpoLine),'.',','),'|', REPLACE(SUM(if(ln.CodiRete>0,ImpoLine,0)),'.',',')) LineaTxt"
  loc_B1B67D: ConcatStr
  loc_B1B67E: FStStrNoPop var_15C
  loc_B1B681: LitStr ", CONCAT(tmovi.CucuPers,rpad(detaprov,30,' '),'0000101913490000000800000000',lpad(REPLACE(SUM(ImpoLine),'.','.'),12,'0'),lpad(REPLACE(SUM(ImpoLine),'.','.'),12,'0'),'000000.00000000.00000000.00000000.00000000.00Mendoza                                           ',lpad(REPLACE(SUM(ImpoLine),'.','.'),12,'0'),lpad(REPLACE(SUM(ImpoLine),'.','.'),12,'0'),'000000000.00000000000.003000000.001010100000000',lpad(REPLACE(SUM(ImpoLine),'.','.'),12,'0'),'000000000.00000000000.00000000000.00000000000.00000030.00000000000.010000000000.000000000000.00000000000.00000000000.00000000000.00000000000000.00000000000.00000000.00000000000.00000000.000000') LineaTxt2"
  loc_B1B684: ConcatStr
  loc_B1B685: FStStrNoPop var_160
  loc_B1B688: LitStr " FROM tmovi"
  loc_B1B68B: ConcatStr
  loc_B1B68C: FStStrNoPop var_164
  loc_B1B68F: LitStr " INNER JOIN liquidaneto ln ON ln.PeriInfo = tmovi.PeriInfo AND ln.ExpeImpu = tmovi.ExpeImpu AND ln.NumeLiqu = tmovi.NumeLiqu AND ln.CucuPers = tmovi.CucuPers"
  loc_B1B692: ConcatStr
  loc_B1B693: FStStrNoPop var_168
  loc_B1B696: LitStr " INNER JOIN retenciones r ON r.PeriInfo = ln.PeriInfo AND r.CodiRete = ln.CodiRete"
  loc_B1B699: ConcatStr
  loc_B1B69A: FStStrNoPop var_16C
  loc_B1B69D: LitStr " GROUP BY CucuPers"
  loc_B1B6A0: ConcatStr
  loc_B1B6A1: FStStrNoPop var_170
  loc_B1B6A4: LitStr " ORDER BY DetaProv;"
  loc_B1B6A7: ConcatStr
  loc_B1B6A8: FStStrNoPop var_174
  loc_B1B6AB: FLdPr var_144
  loc_B1B6AE: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1B6B3: FFreeStr var_BC = "": var_140 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = ""
  loc_B1B6D0: Branch loc_B1B76C
  loc_B1B6D3: LitStr "SELECT DetaProv, tmovi.CucuPers, FechLiqu, FedcProv, FehcProv, TotcProv, Sum(ImpoLine) ImpoLiqu"
  loc_B1B6D6: LitStr ", CAST(GROUP_CONCAT(DISTINCT CONCAT(tmovi.ExpeImpu,'(',tmovi.NumeLiqu,')',DetaRete,' $&nbsp;',ImpoLine)) AS CHAR) DetalleLiqu"
  loc_B1B6D9: ConcatStr
  loc_B1B6DA: FStStrNoPop var_BC
  loc_B1B6DD: LitStr ", Concat(DATE_FORMAT(FechLiqu,'" & Chr(37) & "Y" & Chr(37) & "m'),'|','"
  loc_B1B6E0: ConcatStr
  loc_B1B6E1: FStStrNoPop var_140
  loc_B1B6E4: LitStr "060204"
  loc_B1B6E7: ConcatStr
  loc_B1B6E8: FStStrNoPop var_14C
  loc_B1B6EB: LitStr "','|',"
  loc_B1B6EE: ConcatStr
  loc_B1B6EF: FStStrNoPop var_150
  loc_B1B6F2: LitI4 0
  loc_B1B6F7: LitI4 -1
  loc_B1B6FC: LitI4 1
  loc_B1B701: LitStr vbNullString
  loc_B1B704: LitStr "-"
  loc_B1B707: LitStr "30-99914707-7"
  loc_B1B70A: ImpAdCallI2 Replace(, , , , , )
  loc_B1B70F: FStStrNoPop var_154
  loc_B1B712: ConcatStr
  loc_B1B713: FStStrNoPop var_158
  loc_B1B716: LitStr ",'|',tmovi.CucuPers,'|',DetaLiqu,'|',FedcProv,'|',FehcProv,'|',Replace(TotcProv,'.',','),'|',Replace(Sum(ImpoLine),'.',','),'|', REPLACE(SUM(if(ln.CodiRete>0,ImpoLine,0)),'.',',')) LineaTxt"
  loc_B1B719: ConcatStr
  loc_B1B71A: FStStrNoPop var_15C
  loc_B1B71D: LitStr ", CONCAT(tmovi.CucuPers,rpad(detaprov,30,' '),'F00010191349 0,0000800000000',lpad(REPLACE(SUM(ImpoLine),'.',','),11,' '),lpad(REPLACE(SUM(ImpoLine),'.',','),10,' '),'     0,00     0,00     0,00     0,00     0,00Mendoza                                           ',lpad(REPLACE(SUM(ImpoLine),'.',','),10,' '),lpad(REPLACE(SUM(ImpoLine),'.',','),10,' '),'      0,0000F     0,003     0,001010101000100',lpad(REPLACE(SUM(ImpoLine),'.',','),10,' '),'      0,00      0,00      0,00      0,00000000030      0,01F      0,000      0,00      0,00      0,00      0,00000      0,00      0,00     0,00      0,01     0,00000F') LineaTxt2"
  loc_B1B720: ConcatStr
  loc_B1B721: FStStrNoPop var_160
  loc_B1B724: LitStr " FROM tmovi"
  loc_B1B727: ConcatStr
  loc_B1B728: FStStrNoPop var_164
  loc_B1B72B: LitStr " INNER JOIN liquidaneto ln ON ln.PeriInfo = tmovi.PeriInfo AND ln.ExpeImpu = tmovi.ExpeImpu AND ln.NumeLiqu = tmovi.NumeLiqu AND ln.CucuPers = tmovi.CucuPers"
  loc_B1B72E: ConcatStr
  loc_B1B72F: FStStrNoPop var_168
  loc_B1B732: LitStr " INNER JOIN retenciones r ON r.PeriInfo = ln.PeriInfo AND r.CodiRete = ln.CodiRete"
  loc_B1B735: ConcatStr
  loc_B1B736: FStStrNoPop var_16C
  loc_B1B739: LitStr " GROUP BY CucuPers"
  loc_B1B73C: ConcatStr
  loc_B1B73D: FStStrNoPop var_170
  loc_B1B740: LitStr " ORDER BY DetaProv;"
  loc_B1B743: ConcatStr
  loc_B1B744: FStStrNoPop var_174
  loc_B1B747: FLdPr var_144
  loc_B1B74A: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1B74F: FFreeStr var_BC = "": var_140 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = ""
  loc_B1B76C: FLdRfVar var_B8
  loc_B1B76F: FLdPr var_144
  loc_B1B772: from_stack_1 = clsbase.RecordCount
  loc_B1B777: ILdRf var_B8
  loc_B1B77A: LitI4 0
  loc_B1B77F: EqI4
  loc_B1B780: BranchF loc_B1B793
  loc_B1B783: LitI4 0
  loc_B1B788: LitStr "No existen registros"
  loc_B1B78B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B1B790: Branch loc_B1B7A1
  loc_B1B793: LitNothing
  loc_B1B795: FStAd var_144 
  loc_B1B799: LitI2_Byte &HFF
  loc_B1B79B: FLdPr Me
  loc_B1B79E: MemStI2 bGenerado
  loc_B1B7A1: LitI4 0
  loc_B1B7A6: CI2I4
  loc_B1B7A7: FLdPr Me
  loc_B1B7AA: Me.MousePointer = from_stack_1
  loc_B1B7AF: LitVarStr var_98, vbNullString
  loc_B1B7B4: PopAdLdVar
  loc_B1B7B5: FLdPr Me
  loc_B1B7B8: VCallAd Control_ID_statusBar
  loc_B1B7BB: FStAdFunc var_AC
  loc_B1B7BE: FLdPr var_AC
  loc_B1B7C1: LateIdSt
  loc_B1B7C6: FFree1Ad var_AC
  loc_B1B7C9: ExitProcHresult
  loc_B1B7CA: LitI4 0
  loc_B1B7CF: LitStr "Error "
  loc_B1B7D2: FLdRfVar var_B8
  loc_B1B7D5: ImpAdCallI2 Err 'rtcErrObj
  loc_B1B7DA: FStAdFunc var_AC
  loc_B1B7DD: FLdPr var_AC
  loc_B1B7E0:  = Err.Number
  loc_B1B7E5: ILdRf var_B8
  loc_B1B7E8: CStrI4
  loc_B1B7EA: FStStrNoPop var_BC
  loc_B1B7ED: ConcatStr
  loc_B1B7EE: FStStrNoPop var_140
  loc_B1B7F1: LitStr ": "
  loc_B1B7F4: ConcatStr
  loc_B1B7F5: FStStrNoPop var_150
  loc_B1B7F8: FLdRfVar var_14C
  loc_B1B7FB: ImpAdCallI2 Err 'rtcErrObj
  loc_B1B800: FStAdFunc var_B4
  loc_B1B803: FLdPr var_B4
  loc_B1B806:  = Err.Description
  loc_B1B80B: ILdRf var_14C
  loc_B1B80E: ConcatStr
  loc_B1B80F: FStStrNoPop var_154
  loc_B1B812: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B1B817: FFreeStr var_BC = "": var_140 = "": var_150 = "": var_14C = ""
  loc_B1B824: FFreeAd var_AC = ""
  loc_B1B82B: ExitProcHresult
  loc_B1B82C: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'A12434
  'Data Table: 4633A4
  loc_A122C0: FLdRfVar var_88
  loc_A122C3: LitI2_Byte 0
  loc_A122C5: LitI2_Byte &HFF
  loc_A122C7: ImpAdLdI4 MemVar_C3D05C
  loc_A122CA: FLdPr Me
  loc_A122CD: MemLdRfVar from_stack_1.global_80
  loc_A122D0: NewIfNullPr IFileSystem3
  loc_A122D3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A122D8: ILdRf var_88
  loc_A122DB: FLdPr Me
  loc_A122DE: MemStVarAd
  loc_A122E2: FFree1Ad var_88
  loc_A122E5: FLdRfVar var_8C
  loc_A122E8: LitI2_Byte 0
  loc_A122EA: FLdPr Me
  loc_A122ED: VCallAd Control_ID_cmdTXT
  loc_A122F0: FStAdFunc var_88
  loc_A122F3: FLdPr var_88
  loc_A122F6: Set from_stack_2 = Me(from_stack_1)
  loc_A122FB: FLdZeroAd var_8C
  loc_A122FE: CVarAd
  loc_A12302: CBoolVarNull
  loc_A12304: FFree1Ad var_88
  loc_A12307: FFree1Var var_9C = ""
  loc_A1230A: BranchF loc_A123A3
  loc_A1230D: LitVarStr var_AC, "Periodo de presentacion|organismo|CUITOrg|CUITCont|ConceptoLiq|FchIni|FchFin|Totalcontrato|ImpLiq|Retenciones"
  loc_A12312: PopAdLdVar
  loc_A12313: FLdPr Me
  loc_A12316: MemLdRfVar from_stack_1.global_84
  loc_A12319: LdPrVar
  loc_A1231B: LateMemCall
  loc_A12321: FLdPr Me
  loc_A12324: MemLdRfVar from_stack_1.global_72
  loc_A12327: NewIfNullAd
  loc_A1232A: FStAd var_C0 
  loc_A1232E: FLdPr var_C0
  loc_A12331: Call clsbase.MoveFirst()
  loc_A12336: FLdRfVar var_C2
  loc_A12339: FLdPr var_C0
  loc_A1233C: from_stack_1 = clsbase.EOF
  loc_A12341: FLdI2 var_C2
  loc_A12344: NotI4
  loc_A12345: BranchF loc_A1239A
  loc_A12348: FLdRfVar var_C8
  loc_A1234B: LitVarStr var_AC, "LineaTxt"
  loc_A12350: PopAdLdVar
  loc_A12351: FLdRfVar var_8C
  loc_A12354: FLdRfVar var_88
  loc_A12357: FLdPr var_C0
  loc_A1235A: from_stack_1v = clsbase.RsFrmGet()
  loc_A1235F: FLdPr var_88
  loc_A12362:  = Me.Fields
  loc_A12367: FLdPr var_8C
  loc_A1236A: from_stack_2 = Me.Item(from_stack_1)
  loc_A1236F: FLdZeroAd var_C8
  loc_A12372: CVarAd
  loc_A12376: PopAdLdVar
  loc_A12377: FLdPr Me
  loc_A1237A: MemLdRfVar from_stack_1.global_84
  loc_A1237D: LdPrVar
  loc_A1237F: LateMemCall
  loc_A12385: FFreeAd var_88 = ""
  loc_A1238C: FFree1Var var_9C = ""
  loc_A1238F: FLdPr var_C0
  loc_A12392: Call clsbase.MoveSiguiente()
  loc_A12397: Branch loc_A12336
  loc_A1239A: LitNothing
  loc_A1239C: FStAd var_C0 
  loc_A123A0: Branch loc_A12422
  loc_A123A3: FLdPr Me
  loc_A123A6: MemLdRfVar from_stack_1.global_72
  loc_A123A9: NewIfNullAd
  loc_A123AC: FStAd var_CC 
  loc_A123B0: FLdPr var_CC
  loc_A123B3: Call clsbase.MoveFirst()
  loc_A123B8: FLdRfVar var_C2
  loc_A123BB: FLdPr var_CC
  loc_A123BE: from_stack_1 = clsbase.EOF
  loc_A123C3: FLdI2 var_C2
  loc_A123C6: NotI4
  loc_A123C7: BranchF loc_A1241C
  loc_A123CA: FLdRfVar var_C8
  loc_A123CD: LitVarStr var_AC, "LineaTxt2"
  loc_A123D2: PopAdLdVar
  loc_A123D3: FLdRfVar var_8C
  loc_A123D6: FLdRfVar var_88
  loc_A123D9: FLdPr var_CC
  loc_A123DC: from_stack_1v = clsbase.RsFrmGet()
  loc_A123E1: FLdPr var_88
  loc_A123E4:  = Me.Fields
  loc_A123E9: FLdPr var_8C
  loc_A123EC: from_stack_2 = Me.Item(from_stack_1)
  loc_A123F1: FLdZeroAd var_C8
  loc_A123F4: CVarAd
  loc_A123F8: PopAdLdVar
  loc_A123F9: FLdPr Me
  loc_A123FC: MemLdRfVar from_stack_1.global_84
  loc_A123FF: LdPrVar
  loc_A12401: LateMemCall
  loc_A12407: FFreeAd var_88 = ""
  loc_A1240E: FFree1Var var_9C = ""
  loc_A12411: FLdPr var_CC
  loc_A12414: Call clsbase.MoveSiguiente()
  loc_A12419: Branch loc_A123B8
  loc_A1241C: LitNothing
  loc_A1241E: FStAd var_CC 
  loc_A12422: FLdPr Me
  loc_A12425: MemLdRfVar from_stack_1.global_84
  loc_A12428: LdPrVar
  loc_A1242A: LateMemCall
  loc_A12430: ExitProcHresult
  loc_A12431: FnAbsI4
End Sub

Public Sub GeneraHTML() 'AD4974
  'Data Table: 4633A4
  loc_AD4304: FLdRfVar var_94
  loc_AD4307: LitI2_Byte 0
  loc_AD4309: LitI2_Byte &HFF
  loc_AD430B: ImpAdLdI4 MemVar_C3D83C
  loc_AD430E: FLdPr Me
  loc_AD4311: MemLdRfVar from_stack_1.global_80
  loc_AD4314: NewIfNullPr IFileSystem3
  loc_AD4317: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AD431C: ILdRf var_94
  loc_AD431F: FLdPr Me
  loc_AD4322: MemStVarAd
  loc_AD4326: FFree1Ad var_94
  loc_AD4329: Call Proc_159_22_A74204()
  loc_AD432E: FLdPr Me
  loc_AD4331: MemLdRfVar from_stack_1.global_72
  loc_AD4334: NewIfNullPr clsbase
  loc_AD4337: Call clsbase.MoveFirst()
  loc_AD433C: FLdRfVar var_96
  loc_AD433F: FLdPr Me
  loc_AD4342: MemLdRfVar from_stack_1.global_72
  loc_AD4345: NewIfNullPr clsbase
  loc_AD4348: from_stack_1 = clsbase.EOF
  loc_AD434D: FLdI2 var_96
  loc_AD4350: NotI4
  loc_AD4351: BranchF loc_AD477F
  loc_AD4354: FLdRfVar var_94
  loc_AD4357: FLdPr Me
  loc_AD435A: MemLdRfVar from_stack_1.global_72
  loc_AD435D: NewIfNullPr clsbase
  loc_AD4360: from_stack_1v = clsbase.RsFrmGet()
  loc_AD4365: FLdZeroAd var_94
  loc_AD4368: FStAdFunc var_9C
  loc_AD436B: LitVarStr var_AC, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AD4370: PopAdLdVar
  loc_AD4371: FLdPr Me
  loc_AD4374: MemLdRfVar from_stack_1.htmFile
  loc_AD4377: LdPrVar
  loc_AD4379: LateMemCall
  loc_AD437F: FLdRfVar var_D0
  loc_AD4382: FLdRfVar var_C0
  loc_AD4385: LitVarStr var_AC, "DetaProv"
  loc_AD438A: PopAdLdVar
  loc_AD438B: FLdRfVar var_94
  loc_AD438E: FLdPr var_9C
  loc_AD4391:  = Me.Fields
  loc_AD4396: FLdPr var_94
  loc_AD4399: from_stack_2 = Me.Item(from_stack_1)
  loc_AD439E: FLdPr var_C0
  loc_AD43A1:  = Me.Value
  loc_AD43A6: LitI4 0
  loc_AD43AB: LitI4 0
  loc_AD43B0: LitI2_Byte 0
  loc_AD43B2: LitStr "left"
  loc_AD43B5: FLdRfVar var_D0
  loc_AD43B8: CStrVarTmp
  loc_AD43B9: FStStrNoPop var_D4
  loc_AD43BC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD43C1: CVarStr var_E4
  loc_AD43C4: PopAdLdVar
  loc_AD43C5: FLdPr Me
  loc_AD43C8: MemLdRfVar from_stack_1.htmFile
  loc_AD43CB: LdPrVar
  loc_AD43CD: LateMemCall
  loc_AD43D3: FFree1Str var_D4
  loc_AD43D6: FFreeAd var_94 = ""
  loc_AD43DD: FFreeVar var_D0 = ""
  loc_AD43E4: FLdRfVar var_D0
  loc_AD43E7: FLdRfVar var_C0
  loc_AD43EA: LitVarStr var_AC, "CucuPers"
  loc_AD43EF: PopAdLdVar
  loc_AD43F0: FLdRfVar var_94
  loc_AD43F3: FLdPr var_9C
  loc_AD43F6:  = Me.Fields
  loc_AD43FB: FLdPr var_94
  loc_AD43FE: from_stack_2 = Me.Item(from_stack_1)
  loc_AD4403: FLdPr var_C0
  loc_AD4406:  = Me.Value
  loc_AD440B: LitI4 0
  loc_AD4410: LitI4 0
  loc_AD4415: LitI2_Byte 0
  loc_AD4417: LitStr "center"
  loc_AD441A: FLdRfVar var_D0
  loc_AD441D: CStrVarTmp
  loc_AD441E: FStStrNoPop var_D4
  loc_AD4421: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD4426: CVarStr var_E4
  loc_AD4429: PopAdLdVar
  loc_AD442A: FLdPr Me
  loc_AD442D: MemLdRfVar from_stack_1.htmFile
  loc_AD4430: LdPrVar
  loc_AD4432: LateMemCall
  loc_AD4438: FFree1Str var_D4
  loc_AD443B: FFreeAd var_94 = ""
  loc_AD4442: FFreeVar var_D0 = ""
  loc_AD4449: FLdRfVar var_D0
  loc_AD444C: FLdRfVar var_C0
  loc_AD444F: LitVarStr var_AC, "FechLiqu"
  loc_AD4454: PopAdLdVar
  loc_AD4455: FLdRfVar var_94
  loc_AD4458: FLdPr var_9C
  loc_AD445B:  = Me.Fields
  loc_AD4460: FLdPr var_94
  loc_AD4463: from_stack_2 = Me.Item(from_stack_1)
  loc_AD4468: FLdPr var_C0
  loc_AD446B:  = Me.Value
  loc_AD4470: LitI4 0
  loc_AD4475: LitI4 0
  loc_AD447A: LitI2_Byte 0
  loc_AD447C: LitStr "left"
  loc_AD447F: FLdRfVar var_D0
  loc_AD4482: CStrVarTmp
  loc_AD4483: FStStrNoPop var_D4
  loc_AD4486: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD448B: CVarStr var_E4
  loc_AD448E: PopAdLdVar
  loc_AD448F: FLdPr Me
  loc_AD4492: MemLdRfVar from_stack_1.htmFile
  loc_AD4495: LdPrVar
  loc_AD4497: LateMemCall
  loc_AD449D: FFree1Str var_D4
  loc_AD44A0: FFreeAd var_94 = ""
  loc_AD44A7: FFreeVar var_D0 = ""
  loc_AD44AE: FLdRfVar var_D0
  loc_AD44B1: FLdRfVar var_C0
  loc_AD44B4: LitVarStr var_AC, "FedcProv"
  loc_AD44B9: PopAdLdVar
  loc_AD44BA: FLdRfVar var_94
  loc_AD44BD: FLdPr var_9C
  loc_AD44C0:  = Me.Fields
  loc_AD44C5: FLdPr var_94
  loc_AD44C8: from_stack_2 = Me.Item(from_stack_1)
  loc_AD44CD: FLdPr var_C0
  loc_AD44D0:  = Me.Value
  loc_AD44D5: LitI4 0
  loc_AD44DA: LitI4 0
  loc_AD44DF: LitI2_Byte 0
  loc_AD44E1: LitStr "left"
  loc_AD44E4: FLdRfVar var_D0
  loc_AD44E7: CStrVarTmp
  loc_AD44E8: FStStrNoPop var_D4
  loc_AD44EB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD44F0: CVarStr var_E4
  loc_AD44F3: PopAdLdVar
  loc_AD44F4: FLdPr Me
  loc_AD44F7: MemLdRfVar from_stack_1.htmFile
  loc_AD44FA: LdPrVar
  loc_AD44FC: LateMemCall
  loc_AD4502: FFree1Str var_D4
  loc_AD4505: FFreeAd var_94 = ""
  loc_AD450C: FFreeVar var_D0 = ""
  loc_AD4513: FLdRfVar var_D0
  loc_AD4516: FLdRfVar var_C0
  loc_AD4519: LitVarStr var_AC, "FehcProv"
  loc_AD451E: PopAdLdVar
  loc_AD451F: FLdRfVar var_94
  loc_AD4522: FLdPr var_9C
  loc_AD4525:  = Me.Fields
  loc_AD452A: FLdPr var_94
  loc_AD452D: from_stack_2 = Me.Item(from_stack_1)
  loc_AD4532: FLdPr var_C0
  loc_AD4535:  = Me.Value
  loc_AD453A: LitI4 0
  loc_AD453F: LitI4 0
  loc_AD4544: LitI2_Byte 0
  loc_AD4546: LitStr "left"
  loc_AD4549: FLdRfVar var_D0
  loc_AD454C: CStrVarTmp
  loc_AD454D: FStStrNoPop var_D4
  loc_AD4550: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD4555: CVarStr var_E4
  loc_AD4558: PopAdLdVar
  loc_AD4559: FLdPr Me
  loc_AD455C: MemLdRfVar from_stack_1.htmFile
  loc_AD455F: LdPrVar
  loc_AD4561: LateMemCall
  loc_AD4567: FFree1Str var_D4
  loc_AD456A: FFreeAd var_94 = ""
  loc_AD4571: FFreeVar var_D0 = ""
  loc_AD4578: FLdRfVar var_C0
  loc_AD457B: LitVarStr var_AC, "TotcProv"
  loc_AD4580: PopAdLdVar
  loc_AD4581: FLdRfVar var_94
  loc_AD4584: FLdPr var_9C
  loc_AD4587:  = Me.Fields
  loc_AD458C: FLdPr var_94
  loc_AD458F: from_stack_2 = Me.Item(from_stack_1)
  loc_AD4594: LitI4 1
  loc_AD4599: LitI4 1
  loc_AD459E: LitVarStr var_BC, "currency"
  loc_AD45A3: FStVarCopyObj var_E4
  loc_AD45A6: FLdRfVar var_E4
  loc_AD45A9: FLdZeroAd var_C0
  loc_AD45AC: CVarAd
  loc_AD45B0: ImpAdCallI2 Format$(, )
  loc_AD45B5: FStStr var_108
  loc_AD45B8: LitI4 0
  loc_AD45BD: LitI4 0
  loc_AD45C2: LitI2_Byte 0
  loc_AD45C4: LitStr "left"
  loc_AD45C7: FLdZeroAd var_108
  loc_AD45CA: FStStrNoPop var_D4
  loc_AD45CD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD45D2: CVarStr var_F4
  loc_AD45D5: PopAdLdVar
  loc_AD45D6: FLdPr Me
  loc_AD45D9: MemLdRfVar from_stack_1.htmFile
  loc_AD45DC: LdPrVar
  loc_AD45DE: LateMemCall
  loc_AD45E4: FFreeStr var_D4 = ""
  loc_AD45EB: FFree1Ad var_94
  loc_AD45EE: FFreeVar var_D0 = "": var_E4 = ""
  loc_AD45F7: FLdRfVar var_C0
  loc_AD45FA: LitVarStr var_AC, "ImpoLiqu"
  loc_AD45FF: PopAdLdVar
  loc_AD4600: FLdRfVar var_94
  loc_AD4603: FLdPr var_9C
  loc_AD4606:  = Me.Fields
  loc_AD460B: FLdPr var_94
  loc_AD460E: from_stack_2 = Me.Item(from_stack_1)
  loc_AD4613: LitI4 1
  loc_AD4618: LitI4 1
  loc_AD461D: LitVarStr var_BC, "currency"
  loc_AD4622: FStVarCopyObj var_E4
  loc_AD4625: FLdRfVar var_E4
  loc_AD4628: FLdZeroAd var_C0
  loc_AD462B: CVarAd
  loc_AD462F: ImpAdCallI2 Format$(, )
  loc_AD4634: FStStr var_108
  loc_AD4637: LitI4 0
  loc_AD463C: LitI4 0
  loc_AD4641: LitI2_Byte 0
  loc_AD4643: LitStr "left"
  loc_AD4646: FLdZeroAd var_108
  loc_AD4649: FStStrNoPop var_D4
  loc_AD464C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD4651: CVarStr var_F4
  loc_AD4654: PopAdLdVar
  loc_AD4655: FLdPr Me
  loc_AD4658: MemLdRfVar from_stack_1.htmFile
  loc_AD465B: LdPrVar
  loc_AD465D: LateMemCall
  loc_AD4663: FFreeStr var_D4 = ""
  loc_AD466A: FFree1Ad var_94
  loc_AD466D: FFreeVar var_D0 = "": var_E4 = ""
  loc_AD4676: FLdRfVar var_D0
  loc_AD4679: FLdRfVar var_C0
  loc_AD467C: LitVarStr var_AC, "DetalleLiqu"
  loc_AD4681: PopAdLdVar
  loc_AD4682: FLdRfVar var_94
  loc_AD4685: FLdPr var_9C
  loc_AD4688:  = Me.Fields
  loc_AD468D: FLdPr var_94
  loc_AD4690: from_stack_2 = Me.Item(from_stack_1)
  loc_AD4695: FLdPr var_C0
  loc_AD4698:  = Me.Value
  loc_AD469D: LitI4 0
  loc_AD46A2: LitI4 -1
  loc_AD46A7: LitI4 1
  loc_AD46AC: LitStr "<br>"
  loc_AD46AF: LitStr ","
  loc_AD46B2: FLdRfVar var_D0
  loc_AD46B5: CStrVarTmp
  loc_AD46B6: FStStrNoPop var_D4
  loc_AD46B9: ImpAdCallI2 Replace(, , , , , )
  loc_AD46BE: FStStr var_10C
  loc_AD46C1: LitI4 0
  loc_AD46C6: LitI4 0
  loc_AD46CB: LitI2_Byte 0
  loc_AD46CD: LitStr "left"
  loc_AD46D0: FLdZeroAd var_10C
  loc_AD46D3: FStStrNoPop var_108
  loc_AD46D6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD46DB: CVarStr var_E4
  loc_AD46DE: PopAdLdVar
  loc_AD46DF: FLdPr Me
  loc_AD46E2: MemLdRfVar from_stack_1.htmFile
  loc_AD46E5: LdPrVar
  loc_AD46E7: LateMemCall
  loc_AD46ED: FFreeStr var_D4 = "": var_108 = ""
  loc_AD46F6: FFreeAd var_94 = ""
  loc_AD46FD: FFreeVar var_D0 = ""
  loc_AD4704: LitVarStr var_AC, "     </tr>"
  loc_AD4709: PopAdLdVar
  loc_AD470A: FLdPr Me
  loc_AD470D: MemLdRfVar from_stack_1.htmFile
  loc_AD4710: LdPrVar
  loc_AD4712: LateMemCall
  loc_AD4718: FLdFPR8 var_8C
  loc_AD471B: CVarR8
  loc_AD471F: FLdRfVar var_D0
  loc_AD4722: FLdRfVar var_C0
  loc_AD4725: LitVarStr var_AC, "ImpoLiqu"
  loc_AD472A: PopAdLdVar
  loc_AD472B: FLdRfVar var_94
  loc_AD472E: FLdPr var_9C
  loc_AD4731:  = Me.Fields
  loc_AD4736: FLdPr var_94
  loc_AD4739: from_stack_2 = Me.Item(from_stack_1)
  loc_AD473E: FLdPr var_C0
  loc_AD4741:  = Me.Value
  loc_AD4746: FLdRfVar var_D0
  loc_AD4749: AddVar var_E4
  loc_AD474D: CR4Var
  loc_AD474E: FStFPR8 var_8C
  loc_AD4751: FFreeAd var_94 = ""
  loc_AD4758: FFreeVar var_D0 = ""
  loc_AD475F: FLdI2 var_8E
  loc_AD4762: LitI2_Byte 1
  loc_AD4764: AddI2
  loc_AD4765: FStI2 var_8E
  loc_AD4768: LitNothing
  loc_AD476A: FStAd var_9C 
  loc_AD476E: FLdPr Me
  loc_AD4771: MemLdRfVar from_stack_1.global_72
  loc_AD4774: NewIfNullPr clsbase
  loc_AD4777: Call clsbase.MoveSiguiente()
  loc_AD477C: Branch loc_AD433C
  loc_AD477F: LitVarStr var_AC, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_AD4784: PopAdLdVar
  loc_AD4785: FLdPr Me
  loc_AD4788: MemLdRfVar from_stack_1.htmFile
  loc_AD478B: LdPrVar
  loc_AD478D: LateMemCall
  loc_AD4793: LitI4 0
  loc_AD4798: LitI4 0
  loc_AD479D: LitI2_Byte 0
  loc_AD479F: LitStr "right"
  loc_AD47A2: LitStr "CANTIDAD "
  loc_AD47A5: FLdI2 var_8E
  loc_AD47A8: CStrUI1
  loc_AD47AA: FStStrNoPop var_D4
  loc_AD47AD: ConcatStr
  loc_AD47AE: FStStrNoPop var_108
  loc_AD47B1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD47B6: CVarStr var_D0
  loc_AD47B9: PopAdLdVar
  loc_AD47BA: FLdPr Me
  loc_AD47BD: MemLdRfVar from_stack_1.htmFile
  loc_AD47C0: LdPrVar
  loc_AD47C2: LateMemCall
  loc_AD47C8: FFreeStr var_D4 = ""
  loc_AD47CF: FFree1Var var_D0 = ""
  loc_AD47D2: LitI4 0
  loc_AD47D7: LitI4 0
  loc_AD47DC: LitI2_Byte 0
  loc_AD47DE: LitI4 0
  loc_AD47E3: LitStr vbNullString
  loc_AD47E6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD47EB: CVarStr var_D0
  loc_AD47EE: PopAdLdVar
  loc_AD47EF: FLdPr Me
  loc_AD47F2: MemLdRfVar from_stack_1.htmFile
  loc_AD47F5: LdPrVar
  loc_AD47F7: LateMemCall
  loc_AD47FD: FFree1Var var_D0 = ""
  loc_AD4800: LitI4 0
  loc_AD4805: LitI4 0
  loc_AD480A: LitI2_Byte 0
  loc_AD480C: LitI4 0
  loc_AD4811: LitStr vbNullString
  loc_AD4814: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD4819: CVarStr var_D0
  loc_AD481C: PopAdLdVar
  loc_AD481D: FLdPr Me
  loc_AD4820: MemLdRfVar from_stack_1.htmFile
  loc_AD4823: LdPrVar
  loc_AD4825: LateMemCall
  loc_AD482B: FFree1Var var_D0 = ""
  loc_AD482E: LitI4 0
  loc_AD4833: LitI4 0
  loc_AD4838: LitI2_Byte 0
  loc_AD483A: LitI4 0
  loc_AD483F: LitStr vbNullString
  loc_AD4842: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD4847: CVarStr var_D0
  loc_AD484A: PopAdLdVar
  loc_AD484B: FLdPr Me
  loc_AD484E: MemLdRfVar from_stack_1.htmFile
  loc_AD4851: LdPrVar
  loc_AD4853: LateMemCall
  loc_AD4859: FFree1Var var_D0 = ""
  loc_AD485C: LitI4 0
  loc_AD4861: LitI4 0
  loc_AD4866: LitI2_Byte 0
  loc_AD4868: LitI4 0
  loc_AD486D: LitStr vbNullString
  loc_AD4870: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD4875: CVarStr var_D0
  loc_AD4878: PopAdLdVar
  loc_AD4879: FLdPr Me
  loc_AD487C: MemLdRfVar from_stack_1.htmFile
  loc_AD487F: LdPrVar
  loc_AD4881: LateMemCall
  loc_AD4887: FFree1Var var_D0 = ""
  loc_AD488A: LitI4 0
  loc_AD488F: LitI4 0
  loc_AD4894: LitI2_Byte 0
  loc_AD4896: LitI4 0
  loc_AD489B: LitStr "TOTAL"
  loc_AD489E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD48A3: CVarStr var_D0
  loc_AD48A6: PopAdLdVar
  loc_AD48A7: FLdPr Me
  loc_AD48AA: MemLdRfVar from_stack_1.htmFile
  loc_AD48AD: LdPrVar
  loc_AD48AF: LateMemCall
  loc_AD48B5: FFree1Var var_D0 = ""
  loc_AD48B8: LitI4 1
  loc_AD48BD: LitI4 1
  loc_AD48C2: LitVarStr var_BC, "currency"
  loc_AD48C7: FStVarCopyObj var_D0
  loc_AD48CA: FLdRfVar var_D0
  loc_AD48CD: FLdRfVar var_8C
  loc_AD48D0: CVarRef
  loc_AD48D5: ImpAdCallI2 Format$(, )
  loc_AD48DA: FStStr var_108
  loc_AD48DD: LitI4 0
  loc_AD48E2: LitI4 0
  loc_AD48E7: LitI2_Byte 0
  loc_AD48E9: LitStr "right"
  loc_AD48EC: FLdZeroAd var_108
  loc_AD48EF: FStStrNoPop var_D4
  loc_AD48F2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD48F7: CVarStr var_E4
  loc_AD48FA: PopAdLdVar
  loc_AD48FB: FLdPr Me
  loc_AD48FE: MemLdRfVar from_stack_1.htmFile
  loc_AD4901: LdPrVar
  loc_AD4903: LateMemCall
  loc_AD4909: FFreeStr var_D4 = ""
  loc_AD4910: FFreeVar var_D0 = ""
  loc_AD4917: LitI4 0
  loc_AD491C: LitI4 0
  loc_AD4921: LitI2_Byte 0
  loc_AD4923: LitI4 0
  loc_AD4928: LitStr vbNullString
  loc_AD492B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AD4930: CVarStr var_D0
  loc_AD4933: PopAdLdVar
  loc_AD4934: FLdPr Me
  loc_AD4937: MemLdRfVar from_stack_1.htmFile
  loc_AD493A: LdPrVar
  loc_AD493C: LateMemCall
  loc_AD4942: FFree1Var var_D0 = ""
  loc_AD4945: LitVarStr var_AC, "     </tr>"
  loc_AD494A: PopAdLdVar
  loc_AD494B: FLdPr Me
  loc_AD494E: MemLdRfVar from_stack_1.htmFile
  loc_AD4951: LdPrVar
  loc_AD4953: LateMemCall
  loc_AD4959: Call Proc_159_23_981CF0()
  loc_AD495E: FLdPr Me
  loc_AD4961: MemLdRfVar from_stack_1.htmFile
  loc_AD4964: LdPrVar
  loc_AD4966: LateMemCall
  loc_AD496C: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AD4971: ExitProcHresult
End Sub

Public Sub GeneraXLS() '950074
  'Data Table: 4633A4
  loc_95005C: LitI2_Byte 0
  loc_95005E: FLdPr Me
  loc_950061: MemStI2 bLogos
  loc_950064: Call GeneraHTML()
  loc_950069: LitI2_Byte &HFF
  loc_95006B: FLdPr Me
  loc_95006E: MemStI2 bLogos
  loc_950071: ExitProcHresult
End Sub

Private Function Proc_159_22_A74204() 'A74204
  'Data Table: 4633A4
  loc_A73E34: LitVarStr var_94, "<html>"
  loc_A73E39: PopAdLdVar
  loc_A73E3A: FLdPr Me
  loc_A73E3D: MemLdRfVar from_stack_1.htmFile
  loc_A73E40: LdPrVar
  loc_A73E42: LateMemCall
  loc_A73E48: LitVarStr var_94, "<head>"
  loc_A73E4D: PopAdLdVar
  loc_A73E4E: FLdPr Me
  loc_A73E51: MemLdRfVar from_stack_1.htmFile
  loc_A73E54: LdPrVar
  loc_A73E56: LateMemCall
  loc_A73E5C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A73E61: PopAdLdVar
  loc_A73E62: FLdPr Me
  loc_A73E65: MemLdRfVar from_stack_1.htmFile
  loc_A73E68: LdPrVar
  loc_A73E6A: LateMemCall
  loc_A73E70: LitStr "<title>"
  loc_A73E73: FLdRfVar var_A8
  loc_A73E76: FLdPr Me
  loc_A73E79:  = Me.Caption
  loc_A73E7E: ILdRf var_A8
  loc_A73E81: ConcatStr
  loc_A73E82: FStStrNoPop var_AC
  loc_A73E85: LitStr "</title>"
  loc_A73E88: ConcatStr
  loc_A73E89: CVarStr var_BC
  loc_A73E8C: PopAdLdVar
  loc_A73E8D: FLdPr Me
  loc_A73E90: MemLdRfVar from_stack_1.htmFile
  loc_A73E93: LdPrVar
  loc_A73E95: LateMemCall
  loc_A73E9B: FFreeStr var_A8 = ""
  loc_A73EA2: FFree1Var var_BC = ""
  loc_A73EA5: LitStr vbNullString
  loc_A73EA8: ILdRf Me
  loc_A73EAB: CastAd
  loc_A73EAE: FStAdFunc var_C0
  loc_A73EB1: FLdRfVar var_C0
  loc_A73EB4: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A73EB9: FFree1Ad var_C0
  loc_A73EBC: LitI4 0
  loc_A73EC1: FStStrCopy var_AC
  loc_A73EC4: FLdRfVar var_AC
  loc_A73EC7: LitI4 0
  loc_A73ECC: FStStrCopy var_A8
  loc_A73ECF: FLdRfVar var_A8
  loc_A73ED2: LitI2_Byte &HFF
  loc_A73ED4: PopTmpLdAd2 var_C2
  loc_A73ED7: FLdPr Me
  loc_A73EDA: MemLdRfVar from_stack_1.htmFile
  loc_A73EDD: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A73EE2: FFreeStr var_A8 = ""
  loc_A73EE9: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A73EEE: PopAdLdVar
  loc_A73EEF: FLdPr Me
  loc_A73EF2: MemLdRfVar from_stack_1.htmFile
  loc_A73EF5: LdPrVar
  loc_A73EF7: LateMemCall
  loc_A73EFD: LitVarStr var_94, "  <tr valign=""center"">"
  loc_A73F02: PopAdLdVar
  loc_A73F03: FLdPr Me
  loc_A73F06: MemLdRfVar from_stack_1.htmFile
  loc_A73F09: LdPrVar
  loc_A73F0B: LateMemCall
  loc_A73F11: LitVarStr var_94, "    <th colspan=""2"" align=""center"" valign=""center""><p>    "
  loc_A73F16: PopAdLdVar
  loc_A73F17: FLdPr Me
  loc_A73F1A: MemLdRfVar from_stack_1.htmFile
  loc_A73F1D: LdPrVar
  loc_A73F1F: LateMemCall
  loc_A73F25: FLdPr Me
  loc_A73F28: MemLdI2 bLogos
  loc_A73F2B: BranchF loc_A73F42
  loc_A73F2E: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A73F33: PopAdLdVar
  loc_A73F34: FLdPr Me
  loc_A73F37: MemLdRfVar from_stack_1.htmFile
  loc_A73F3A: LdPrVar
  loc_A73F3C: LateMemCall
  loc_A73F42: LitVarStr var_94, "    <br>ACUERDO N&ordm; 2988 <br>"
  loc_A73F47: PopAdLdVar
  loc_A73F48: FLdPr Me
  loc_A73F4B: MemLdRfVar from_stack_1.htmFile
  loc_A73F4E: LdPrVar
  loc_A73F50: LateMemCall
  loc_A73F56: LitVarStr var_94, "      <span class=""Titulo2"">CONTRATOS DE LOCACIÓN (Art. 19 Inc. H)</span></p>"
  loc_A73F5B: PopAdLdVar
  loc_A73F5C: FLdPr Me
  loc_A73F5F: MemLdRfVar from_stack_1.htmFile
  loc_A73F62: LdPrVar
  loc_A73F64: LateMemCall
  loc_A73F6A: LitVarStr var_94, "    </th>"
  loc_A73F6F: PopAdLdVar
  loc_A73F70: FLdPr Me
  loc_A73F73: MemLdRfVar from_stack_1.htmFile
  loc_A73F76: LdPrVar
  loc_A73F78: LateMemCall
  loc_A73F7E: LitVarStr var_94, "  </tr>"
  loc_A73F83: PopAdLdVar
  loc_A73F84: FLdPr Me
  loc_A73F87: MemLdRfVar from_stack_1.htmFile
  loc_A73F8A: LdPrVar
  loc_A73F8C: LateMemCall
  loc_A73F92: LitVarStr var_94, "  <tr>"
  loc_A73F97: PopAdLdVar
  loc_A73F98: FLdPr Me
  loc_A73F9B: MemLdRfVar from_stack_1.htmFile
  loc_A73F9E: LdPrVar
  loc_A73FA0: LateMemCall
  loc_A73FA6: LitVarStr var_94, "    <th>"
  loc_A73FAB: PopAdLdVar
  loc_A73FAC: FLdPr Me
  loc_A73FAF: MemLdRfVar from_stack_1.htmFile
  loc_A73FB2: LdPrVar
  loc_A73FB4: LateMemCall
  loc_A73FBA: LitStr "      <p align=""left"" class=""Titulo2"">Repartición/Organismo: "
  loc_A73FBD: LitStr "Municipalidad de Guaymallén"
  loc_A73FC0: ConcatStr
  loc_A73FC1: FStStrNoPop var_A8
  loc_A73FC4: LitStr "<br>"
  loc_A73FC7: ConcatStr
  loc_A73FC8: CVarStr var_BC
  loc_A73FCB: PopAdLdVar
  loc_A73FCC: FLdPr Me
  loc_A73FCF: MemLdRfVar from_stack_1.htmFile
  loc_A73FD2: LdPrVar
  loc_A73FD4: LateMemCall
  loc_A73FDA: FFree1Str var_A8
  loc_A73FDD: FFree1Var var_BC = ""
  loc_A73FE0: LitStr "    Nomenclador: "
  loc_A73FE3: LitStr "060204"
  loc_A73FE6: ConcatStr
  loc_A73FE7: FStStrNoPop var_A8
  loc_A73FEA: LitStr "<br>"
  loc_A73FED: ConcatStr
  loc_A73FEE: CVarStr var_BC
  loc_A73FF1: PopAdLdVar
  loc_A73FF2: FLdPr Me
  loc_A73FF5: MemLdRfVar from_stack_1.htmFile
  loc_A73FF8: LdPrVar
  loc_A73FFA: LateMemCall
  loc_A74000: FFree1Str var_A8
  loc_A74003: FFree1Var var_BC = ""
  loc_A74006: LitStr "    Ejercicio: "
  loc_A74009: FLdRfVar var_A8
  loc_A7400C: FLdPr Me
  loc_A7400F: VCallAd Control_ID_cboPeriodo
  loc_A74012: FStAdFunc var_C0
  loc_A74015: FLdPr var_C0
  loc_A74018:  = Me.Text
  loc_A7401D: ILdRf var_A8
  loc_A74020: ConcatStr
  loc_A74021: FStStrNoPop var_AC
  loc_A74024: LitStr "<br>"
  loc_A74027: ConcatStr
  loc_A74028: CVarStr var_BC
  loc_A7402B: PopAdLdVar
  loc_A7402C: FLdPr Me
  loc_A7402F: MemLdRfVar from_stack_1.htmFile
  loc_A74032: LdPrVar
  loc_A74034: LateMemCall
  loc_A7403A: FFreeStr var_A8 = ""
  loc_A74041: FFree1Ad var_C0
  loc_A74044: FFree1Var var_BC = ""
  loc_A74047: LitStr "    Mes: "
  loc_A7404A: FLdRfVar var_A8
  loc_A7404D: FLdPr Me
  loc_A74050: VCallAd Control_ID_cboMes
  loc_A74053: FStAdFunc var_C0
  loc_A74056: FLdPr var_C0
  loc_A74059:  = Me.Text
  loc_A7405E: ILdRf var_A8
  loc_A74061: ConcatStr
  loc_A74062: FStStrNoPop var_AC
  loc_A74065: LitStr " ("
  loc_A74068: ConcatStr
  loc_A74069: FStStrNoPop var_C8
  loc_A7406C: FLdPr Me
  loc_A7406F: MemLdStr global_104
  loc_A74072: ConcatStr
  loc_A74073: FStStrNoPop var_CC
  loc_A74076: LitStr ")"
  loc_A74079: ConcatStr
  loc_A7407A: CVarStr var_BC
  loc_A7407D: PopAdLdVar
  loc_A7407E: FLdPr Me
  loc_A74081: MemLdRfVar from_stack_1.htmFile
  loc_A74084: LdPrVar
  loc_A74086: LateMemCall
  loc_A7408C: FFreeStr var_A8 = "": var_AC = "": var_C8 = ""
  loc_A74097: FFree1Ad var_C0
  loc_A7409A: FFree1Var var_BC = ""
  loc_A7409D: FLdPr Me
  loc_A740A0: VCallAd Control_ID_chkIncluirRP
  loc_A740A3: CVarAd
  loc_A740A7: CBoolVarNull
  loc_A740A9: FFree1Var var_BC = ""
  loc_A740AC: BranchF loc_A740C3
  loc_A740AF: LitVarStr var_94, "<br>Incluye Residuos Pasivos"
  loc_A740B4: PopAdLdVar
  loc_A740B5: FLdPr Me
  loc_A740B8: MemLdRfVar from_stack_1.htmFile
  loc_A740BB: LdPrVar
  loc_A740BD: LateMemCall
  loc_A740C3: LitVarStr var_94, "    </p></th>"
  loc_A740C8: PopAdLdVar
  loc_A740C9: FLdPr Me
  loc_A740CC: MemLdRfVar from_stack_1.htmFile
  loc_A740CF: LdPrVar
  loc_A740D1: LateMemCall
  loc_A740D7: LitVarStr var_94, "  </tr>"
  loc_A740DC: PopAdLdVar
  loc_A740DD: FLdPr Me
  loc_A740E0: MemLdRfVar from_stack_1.htmFile
  loc_A740E3: LdPrVar
  loc_A740E5: LateMemCall
  loc_A740EB: LitVarStr var_94, "</table>"
  loc_A740F0: PopAdLdVar
  loc_A740F1: FLdPr Me
  loc_A740F4: MemLdRfVar from_stack_1.htmFile
  loc_A740F7: LdPrVar
  loc_A740F9: LateMemCall
  loc_A740FF: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A74104: PopAdLdVar
  loc_A74105: FLdPr Me
  loc_A74108: MemLdRfVar from_stack_1.htmFile
  loc_A7410B: LdPrVar
  loc_A7410D: LateMemCall
  loc_A74113: LitVarStr var_94, "  <THEAD>"
  loc_A74118: PopAdLdVar
  loc_A74119: FLdPr Me
  loc_A7411C: MemLdRfVar from_stack_1.htmFile
  loc_A7411F: LdPrVar
  loc_A74121: LateMemCall
  loc_A74127: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A7412C: PopAdLdVar
  loc_A7412D: FLdPr Me
  loc_A74130: MemLdRfVar from_stack_1.htmFile
  loc_A74133: LdPrVar
  loc_A74135: LateMemCall
  loc_A7413B: LitVarStr var_94, "    <th>Nombre</th>"
  loc_A74140: PopAdLdVar
  loc_A74141: FLdPr Me
  loc_A74144: MemLdRfVar from_stack_1.htmFile
  loc_A74147: LdPrVar
  loc_A74149: LateMemCall
  loc_A7414F: LitVarStr var_94, "    <th>CUIT</th>"
  loc_A74154: PopAdLdVar
  loc_A74155: FLdPr Me
  loc_A74158: MemLdRfVar from_stack_1.htmFile
  loc_A7415B: LdPrVar
  loc_A7415D: LateMemCall
  loc_A74163: LitVarStr var_94, "    <th>Fecha Liquidación</th>"
  loc_A74168: PopAdLdVar
  loc_A74169: FLdPr Me
  loc_A7416C: MemLdRfVar from_stack_1.htmFile
  loc_A7416F: LdPrVar
  loc_A74171: LateMemCall
  loc_A74177: LitVarStr var_94, "    <th>Inicio del Contr.</th>"
  loc_A7417C: PopAdLdVar
  loc_A7417D: FLdPr Me
  loc_A74180: MemLdRfVar from_stack_1.htmFile
  loc_A74183: LdPrVar
  loc_A74185: LateMemCall
  loc_A7418B: LitVarStr var_94, "    <th>Fin del Contr.</th>"
  loc_A74190: PopAdLdVar
  loc_A74191: FLdPr Me
  loc_A74194: MemLdRfVar from_stack_1.htmFile
  loc_A74197: LdPrVar
  loc_A74199: LateMemCall
  loc_A7419F: LitVarStr var_94, "    <th>Total del Contr.</th>"
  loc_A741A4: PopAdLdVar
  loc_A741A5: FLdPr Me
  loc_A741A8: MemLdRfVar from_stack_1.htmFile
  loc_A741AB: LdPrVar
  loc_A741AD: LateMemCall
  loc_A741B3: LitVarStr var_94, "    <th>Importe Liquidación</th>"
  loc_A741B8: PopAdLdVar
  loc_A741B9: FLdPr Me
  loc_A741BC: MemLdRfVar from_stack_1.htmFile
  loc_A741BF: LdPrVar
  loc_A741C1: LateMemCall
  loc_A741C7: LitVarStr var_94, "    <th>Detalle Liquidación</th>"
  loc_A741CC: PopAdLdVar
  loc_A741CD: FLdPr Me
  loc_A741D0: MemLdRfVar from_stack_1.htmFile
  loc_A741D3: LdPrVar
  loc_A741D5: LateMemCall
  loc_A741DB: LitVarStr var_94, "  </tr>"
  loc_A741E0: PopAdLdVar
  loc_A741E1: FLdPr Me
  loc_A741E4: MemLdRfVar from_stack_1.htmFile
  loc_A741E7: LdPrVar
  loc_A741E9: LateMemCall
  loc_A741EF: LitVarStr var_94, "  </THEAD>"
  loc_A741F4: PopAdLdVar
  loc_A741F5: FLdPr Me
  loc_A741F8: MemLdRfVar from_stack_1.htmFile
  loc_A741FB: LdPrVar
  loc_A741FD: LateMemCall
  loc_A74203: ExitProcHresult
End Function

Private Function Proc_159_23_981CF0() '981CF0
  'Data Table: 4633A4
  loc_981CB0: LitVarStr var_94, "</table>"
  loc_981CB5: PopAdLdVar
  loc_981CB6: FLdPr Me
  loc_981CB9: MemLdRfVar from_stack_1.htmFile
  loc_981CBC: LdPrVar
  loc_981CBE: LateMemCall
  loc_981CC4: LitVarStr var_94, "</body>"
  loc_981CC9: PopAdLdVar
  loc_981CCA: FLdPr Me
  loc_981CCD: MemLdRfVar from_stack_1.htmFile
  loc_981CD0: LdPrVar
  loc_981CD2: LateMemCall
  loc_981CD8: LitVarStr var_94, "</html>"
  loc_981CDD: PopAdLdVar
  loc_981CDE: FLdPr Me
  loc_981CE1: MemLdRfVar from_stack_1.htmFile
  loc_981CE4: LdPrVar
  loc_981CE6: LateMemCall
  loc_981CEC: ExitProcHresult
End Function
