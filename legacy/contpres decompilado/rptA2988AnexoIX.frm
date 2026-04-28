VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988AnexoIX
  Caption = "Acuerdo 2988 - Anexo IX"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988AnexoIX.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7215
  ClientHeight = 2640
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1200
    Width = 3015
    Height = 1095
    TabIndex = 4
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 5
    End
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 6
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2385
    Width = 7215
    Height = 255
    TabIndex = 12
    OleObjectBlob = "rptA2988AnexoIX.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6360
    Top = 1440
    Width = 735
    Height = 615
    TabIndex = 10
    Cancel = -1  'True
    Picture = "rptA2988AnexoIX.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988AnexoIX.frx":0B9C
    Left = 2760
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1200
    Width = 3015
    Height = 1095
    TabIndex = 7
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 9
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 8
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 6135
    Height = 1095
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 3960
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1080
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 360
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6480
    Top = 1680
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 11
    OleObjectBlob = "rptA2988AnexoIX.frx":0C00
  End
End

Attribute VB_Name = "rptA2988AnexoIX"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00519134
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_2_005AC4B0
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_3_005AC0F0
  bStruc(12) As Byte ' String fields: 3
End Type


Private Sub cmdNueva_Click() '992154
  'Data Table: 43B144
  loc_992104: LitI2_Byte 0
  loc_992106: FLdPr Me
  loc_992109: MemStI2 bGenerado
  loc_99210C: LitI2_Byte &HFF
  loc_99210E: FLdPr Me
  loc_992111: MemStI2 bLogos
  loc_992114: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_992119: ImpAdLdI2 MemVar_C3D064
  loc_99211C: CStrUI1
  loc_99211E: FStStrNoPop var_88
  loc_992121: FLdPr Me
  loc_992124: VCallAd Control_ID_cboPeriodo
  loc_992127: FStAdFunc var_8C
  loc_99212A: FLdPr var_8C
  loc_99212D: Me.Text = from_stack_1
  loc_992132: FFree1Str var_88
  loc_992135: FFree1Ad var_8C
  loc_992138: Call HabilitarCriterio()
  loc_99213D: ILdRf Me
  loc_992140: CastAd
  loc_992143: FStAdFunc var_8C
  loc_992146: FLdRfVar var_8C
  loc_992149: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_99214E: FFree1Ad var_8C
  loc_992151: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97A488
  'Data Table: 43B144
  loc_97A458: LitVarStr var_94, "Cerrando..."
  loc_97A45D: PopAdLdVar
  loc_97A45E: FLdPr Me
  loc_97A461: VCallAd Control_ID_statusBar
  loc_97A464: FStAdFunc var_A8
  loc_97A467: FLdPr var_A8
  loc_97A46A: LateIdSt
  loc_97A46F: FFree1Ad var_A8
  loc_97A472: ILdRf Me
  loc_97A475: FStAdNoPop
  loc_97A479: ImpAdLdRf MemVar_C44F9C
  loc_97A47C: NewIfNullPr Me
  loc_97A47F: Me.Global.Unload from_stack_1
  loc_97A484: FFree1Ad var_A8
  loc_97A487: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98A07C
  'Data Table: 43B144
  loc_98A044: FLdPr Me
  loc_98A047: VCallAd Control_ID_statusBar
  loc_98A04A: FStAdFunc var_88
  loc_98A04D: FLdPr var_88
  loc_98A050: LateIdLdVar var_98 DispID_1 0
  loc_98A057: CStrVarTmp
  loc_98A058: CVarStr var_A8
  loc_98A05B: PopAdLdVar
  loc_98A05C: FLdPr Me
  loc_98A05F: VCallAd Control_ID_statusBar
  loc_98A062: FStAdFunc var_BC
  loc_98A065: FLdPr var_BC
  loc_98A068: LateIdSt
  loc_98A06D: FFreeAd var_88 = ""
  loc_98A074: FFreeVar var_98 = ""
  loc_98A07B: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96AD1C
  'Data Table: 43B144
  loc_96AD00: LitI2_Byte &HFF
  loc_96AD02: LitI2_Byte 0
  loc_96AD04: ILdRf Me
  loc_96AD07: CastAd
  loc_96AD0A: FStAdFunc var_88
  loc_96AD0D: FLdRfVar var_88
  loc_96AD10: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96AD15: FFree1Ad var_88
  loc_96AD18: ExitProcHresult
End Sub

Private Sub Form_Load() '9D0838
  'Data Table: 43B144
  loc_9D0760: LitI2_Byte &HFF
  loc_9D0762: ImpAdStI2 MemVar_C3D840
  loc_9D0765: ILdRf Me
  loc_9D0768: CastAd
  loc_9D076B: FStAdFunc var_8C
  loc_9D076E: FLdRfVar var_8C
  loc_9D0771: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D0776: FFree1Ad var_8C
  loc_9D0779: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D077C: FLdRfVar var_88
  loc_9D077F: NewIfNullPr clsperiodo
  loc_9D0782: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9D0787: FLdRfVar var_90
  loc_9D078A: FLdRfVar var_88
  loc_9D078D: NewIfNullPr clsperiodo
  loc_9D0790: from_stack_1 = clsperiodo.RecordCount
  loc_9D0795: ILdRf var_90
  loc_9D0798: LitI4 0
  loc_9D079D: GtI4
  loc_9D079E: BranchF loc_9D0831
  loc_9D07A1: FLdRfVar var_88
  loc_9D07A4: NewIfNullPr clsperiodo
  loc_9D07A7: Call clsperiodo.MoveFirst()
  loc_9D07AC: FLdRfVar var_92
  loc_9D07AF: FLdRfVar var_88
  loc_9D07B2: NewIfNullPr clsperiodo
  loc_9D07B5: from_stack_1 = clsperiodo.EOF
  loc_9D07BA: FLdI2 var_92
  loc_9D07BD: NotI4
  loc_9D07BE: BranchF loc_9D0831
  loc_9D07C1: LitVar_Missing var_D0
  loc_9D07C4: PopAdLdVar
  loc_9D07C5: FLdRfVar var_BC
  loc_9D07C8: FLdRfVar var_AC
  loc_9D07CB: LitVarStr var_A8, "PeriInfo"
  loc_9D07D0: PopAdLdVar
  loc_9D07D1: FLdRfVar var_98
  loc_9D07D4: FLdRfVar var_8C
  loc_9D07D7: FLdRfVar var_88
  loc_9D07DA: NewIfNullPr clsperiodo
  loc_9D07DD: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9D07E2: FLdPr var_8C
  loc_9D07E5:  = Me.Fields
  loc_9D07EA: FLdPr var_98
  loc_9D07ED: from_stack_2 = Me.Item(from_stack_1)
  loc_9D07F2: FLdPr var_AC
  loc_9D07F5:  = Me.Value
  loc_9D07FA: FLdRfVar var_BC
  loc_9D07FD: CStrVarTmp
  loc_9D07FE: FStStrNoPop var_C0
  loc_9D0801: FLdPr Me
  loc_9D0804: VCallAd Control_ID_cboPeriodo
  loc_9D0807: FStAdFunc var_D4
  loc_9D080A: FLdPr var_D4
  loc_9D080D: Me.AddItem from_stack_1, from_stack_2
  loc_9D0812: FFree1Str var_C0
  loc_9D0815: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_9D0820: FFree1Var var_BC = ""
  loc_9D0823: FLdRfVar var_88
  loc_9D0826: NewIfNullPr clsperiodo
  loc_9D0829: Call clsperiodo.MoveSiguiente()
  loc_9D082E: Branch loc_9D07AC
  loc_9D0831: Call cmdNueva_Click()
  loc_9D0836: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '954B60
  'Data Table: 43B144
  loc_954B48: FLdPr Me
  loc_954B4B: VCallAd Control_ID_wbbReporte
  loc_954B4E: FStAdFunc var_88
  loc_954B51: FLdRfVar var_88
  loc_954B54: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_954B59: FFree1Ad var_88
  loc_954B5C: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95AA60
  'Data Table: 43B144
  loc_95AA48: ILdRf Me
  loc_95AA4B: CastAd
  loc_95AA4E: FStAdFunc var_88
  loc_95AA51: FLdRfVar var_88
  loc_95AA54: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95AA59: FFree1Ad var_88
  loc_95AA5C: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '954D28
  'Data Table: 43B144
  loc_954D10: ILdRf Me
  loc_954D13: CastAd
  loc_954D16: FStAdFunc var_88
  loc_954D19: FLdRfVar var_88
  loc_954D1C: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_954D21: FFree1Ad var_88
  loc_954D24: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '958590
  'Data Table: 43B144
  loc_958578: LitI2_Byte 0
  loc_95857A: ILdRf Me
  loc_95857D: CastAd
  loc_958580: FStAdFunc var_88
  loc_958583: FLdRfVar var_88
  loc_958586: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95858B: FFree1Ad var_88
  loc_95858E: ExitProcHresult
End Sub

Public Function htmFileGet() '43BBD4
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '43BBE3
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '43BBF2
  htmFile = Value
End Sub

Public Function bLogosGet() '43BC01
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '43BC10
  bLogos = Value
End Sub

Public Function bGeneradoGet() '43BC1F
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '43BC2E
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '984A80
  'Data Table: 43B144
  loc_984A4C: LitI4 0
  loc_984A51: LitI4 0
  loc_984A56: FLdRfVar var_88
  loc_984A59: Redim
  loc_984A63: FLdPr Me
  loc_984A66: VCallAd Control_ID_cboPeriodo
  loc_984A69: CVarAd
  loc_984A6D: ParmAry1St
  loc_984A73: FLdRfVar var_88
  loc_984A76: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_984A7B: FLdRfVar var_88
  loc_984A7E: Erase
  loc_984A7F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'AF2AFC
  'Data Table: 43B144
  loc_AF23D8: OnErrorGoto loc_AF2A97
  loc_AF23DB: FLdPr Me
  loc_AF23DE: MemLdI2 bGenerado
  loc_AF23E1: BranchF loc_AF23E5
  loc_AF23E4: ExitProcHresult
  loc_AF23E5: LitVarStr var_98, "Generando reporte..."
  loc_AF23EA: PopAdLdVar
  loc_AF23EB: FLdPr Me
  loc_AF23EE: VCallAd Control_ID_statusBar
  loc_AF23F1: FStAdFunc var_AC
  loc_AF23F4: FLdPr var_AC
  loc_AF23F7: LateIdSt
  loc_AF23FC: FFree1Ad var_AC
  loc_AF23FF: LitI4 &HB
  loc_AF2404: CI2I4
  loc_AF2405: FLdPr Me
  loc_AF2408: Me.MousePointer = from_stack_1
  loc_AF240D: LitI2_Byte &HC
  loc_AF240F: FLdPr Me
  loc_AF2412: MemStI2 global_112
  loc_AF2415: FLdRfVar var_B0
  loc_AF2418: FLdPr Me
  loc_AF241B: VCallAd Control_ID_cboPeriodo
  loc_AF241E: FStAdFunc var_AC
  loc_AF2421: FLdPr var_AC
  loc_AF2424:  = Me.Text
  loc_AF2429: ILdRf var_B0
  loc_AF242C: CI2Str
  loc_AF242E: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_AF2433: CVarStr var_C0
  loc_AF2436: FLdRfVar var_D0
  loc_AF2439: ImpAdCallFPR4  = Month()
  loc_AF243E: LitVarStr var_110, "Definitivo"
  loc_AF2443: FStVarCopyObj var_120
  loc_AF2446: FLdRfVar var_120
  loc_AF2449: LitVarStr var_A8, "Provisorio"
  loc_AF244E: FStVarCopyObj var_100
  loc_AF2451: FLdRfVar var_100
  loc_AF2454: FLdPr Me
  loc_AF2457: MemLdI2 global_112
  loc_AF245A: CVarI2 var_98
  loc_AF245D: HardType
  loc_AF245E: FLdRfVar var_D0
  loc_AF2461: GtVar var_E0
  loc_AF2465: FStVar var_F0
  loc_AF2469: FLdRfVar var_F0
  loc_AF246C: FLdRfVar var_130
  loc_AF246F: ImpAdCallFPR4  = IIf(, , )
  loc_AF2474: FLdRfVar var_130
  loc_AF2477: CStrVarTmp
  loc_AF2478: FStStrNoPop var_134
  loc_AF247B: FLdPr Me
  loc_AF247E: MemStStrCopy
  loc_AF2482: FFreeStr var_B0 = ""
  loc_AF2489: FFree1Ad var_AC
  loc_AF248C: FFreeVar var_C0 = "": var_D0 = "": var_F0 = "": var_100 = "": var_120 = ""
  loc_AF249B: LitStr " HAVING Importe <> 0"
  loc_AF249E: FStStrCopy var_88
  loc_AF24A1: LitI2_Byte 0
  loc_AF24A3: LitVar_Missing var_C0
  loc_AF24A6: LitI2_Byte &HFF
  loc_AF24A8: LitVarI2 var_98, 0
  loc_AF24AD: PopAdLdVar
  loc_AF24AE: FLdPr Me
  loc_AF24B1: MemLdRfVar from_stack_1.global_104
  loc_AF24B4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF24B9: FFree1Var var_C0 = ""
  loc_AF24BC: LitI2_Byte 0
  loc_AF24BE: LitVar_Missing var_C0
  loc_AF24C1: LitI2_Byte &HFF
  loc_AF24C3: LitVarI2 var_98, 0
  loc_AF24C8: PopAdLdVar
  loc_AF24C9: FLdPr Me
  loc_AF24CC: MemLdRfVar from_stack_1.global_108
  loc_AF24CF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF24D4: FFree1Var var_C0 = ""
  loc_AF24D7: LitI4 0
  loc_AF24DC: LitI4 0
  loc_AF24E1: FLdPr Me
  loc_AF24E4: MemLdRfVar from_stack_1.global_80
  loc_AF24E7: Redim
  loc_AF24F1: FLdRfVar var_B0
  loc_AF24F4: FLdPr Me
  loc_AF24F7: VCallAd Control_ID_cboPeriodo
  loc_AF24FA: FStAdFunc var_AC
  loc_AF24FD: FLdPr var_AC
  loc_AF2500:  = Me.Text
  loc_AF2505: ILdRf var_B0
  loc_AF2508: CI2Str
  loc_AF250A: FLdPr Me
  loc_AF250D: MemLdRfVar from_stack_1.global_72
  loc_AF2510: NewIfNullPr clsbase
  loc_AF2513: Call clsbase.Anexos_IX_VII_XIV(from_stack_1v)
  loc_AF2518: FFree1Str var_B0
  loc_AF251B: FFree1Ad var_AC
  loc_AF251E: LitStr "Municipalidad de Guaymallén"
  loc_AF2521: LitStr "Municipalidad de Rivadavia"
  loc_AF2524: EqStr
  loc_AF2526: BranchF loc_AF2576
  loc_AF2529: LitStr "SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(SaldIniD-SaldIniH) Importe"
  loc_AF252C: LitStr " FROM tmovi"
  loc_AF252F: ConcatStr
  loc_AF2530: FStStrNoPop var_B0
  loc_AF2533: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_AF2536: ConcatStr
  loc_AF2537: FStStrNoPop var_134
  loc_AF253A: LitStr " WHERE tmovi.CodiTicu IN (1110,1120,1130,1140)"
  loc_AF253D: ConcatStr
  loc_AF253E: FStStrNoPop var_138
  loc_AF2541: LitStr " OR tmovi.CodiCuco = CajaPaco"
  loc_AF2544: ConcatStr
  loc_AF2545: FStStrNoPop var_13C
  loc_AF2548: LitStr " GROUP BY CodiCuco"
  loc_AF254B: ConcatStr
  loc_AF254C: FStStrNoPop var_140
  loc_AF254F: LitStr " HAVING Importe <> 0;"
  loc_AF2552: ConcatStr
  loc_AF2553: FStStrNoPop var_144
  loc_AF2556: FLdPr Me
  loc_AF2559: MemLdRfVar from_stack_1.global_72
  loc_AF255C: NewIfNullPr clsbase
  loc_AF255F: Call clsbase.RedefineRS(from_stack_1v)
  loc_AF2564: FFreeStr var_B0 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_AF2573: Branch loc_AF25C0
  loc_AF2576: LitStr "SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(SaldIniD-SaldIniH) Importe"
  loc_AF2579: LitStr " FROM tmovi"
  loc_AF257C: ConcatStr
  loc_AF257D: FStStrNoPop var_B0
  loc_AF2580: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_AF2583: ConcatStr
  loc_AF2584: FStStrNoPop var_134
  loc_AF2587: LitStr " WHERE tmovi.CodiTicu IN (1110,1120,1130)"
  loc_AF258A: ConcatStr
  loc_AF258B: FStStrNoPop var_138
  loc_AF258E: LitStr " OR tmovi.CodiCuco = CajaPaco"
  loc_AF2591: ConcatStr
  loc_AF2592: FStStrNoPop var_13C
  loc_AF2595: LitStr " GROUP BY CodiCuco"
  loc_AF2598: ConcatStr
  loc_AF2599: FStStrNoPop var_140
  loc_AF259C: LitStr " HAVING Importe <> 0;"
  loc_AF259F: ConcatStr
  loc_AF25A0: FStStrNoPop var_144
  loc_AF25A3: FLdPr Me
  loc_AF25A6: MemLdRfVar from_stack_1.global_72
  loc_AF25A9: NewIfNullPr clsbase
  loc_AF25AC: Call clsbase.RedefineRS(from_stack_1v)
  loc_AF25B1: FFreeStr var_B0 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_AF25C0: FLdRfVar var_148
  loc_AF25C3: FLdPr Me
  loc_AF25C6: MemLdRfVar from_stack_1.global_72
  loc_AF25C9: NewIfNullPr clsbase
  loc_AF25CC: from_stack_1 = clsbase.RecordCount
  loc_AF25D1: ILdRf var_148
  loc_AF25D4: LitI4 0
  loc_AF25D9: NeI4
  loc_AF25DA: BranchF loc_AF25E9
  loc_AF25DD: LitStr "SALDOS INICIALES"
  loc_AF25E0: LitI2_Byte 1
  loc_AF25E2: CUI1I2
  loc_AF25E4: Call Proc_149_20_9B8898()
  loc_AF25E9: LitStr "SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(MoviFonH) Importe"
  loc_AF25EC: LitStr " FROM tmovi"
  loc_AF25EF: ConcatStr
  loc_AF25F0: FStStrNoPop var_B0
  loc_AF25F3: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_AF25F6: ConcatStr
  loc_AF25F7: FStStrNoPop var_134
  loc_AF25FA: LitStr " WHERE (tmovi.CodiTicu Like '5" & Chr(37) & "' OR tmovi.CodiTicu Like '7" & Chr(37) & "')"
  loc_AF25FD: ConcatStr
  loc_AF25FE: FStStrNoPop var_138
  loc_AF2601: LitStr " AND tmovi.CodiCuco <> CajaPaco"
  loc_AF2604: ConcatStr
  loc_AF2605: FStStrNoPop var_13C
  loc_AF2608: LitStr " GROUP BY CodiCuco"
  loc_AF260B: ConcatStr
  loc_AF260C: FStStrNoPop var_140
  loc_AF260F: LitStr " HAVING Importe <> 0;"
  loc_AF2612: ConcatStr
  loc_AF2613: FStStrNoPop var_144
  loc_AF2616: FLdPr Me
  loc_AF2619: MemLdRfVar from_stack_1.global_72
  loc_AF261C: NewIfNullPr clsbase
  loc_AF261F: Call clsbase.RedefineRS(from_stack_1v)
  loc_AF2624: FFreeStr var_B0 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_AF2633: FLdRfVar var_148
  loc_AF2636: FLdPr Me
  loc_AF2639: MemLdRfVar from_stack_1.global_72
  loc_AF263C: NewIfNullPr clsbase
  loc_AF263F: from_stack_1 = clsbase.RecordCount
  loc_AF2644: ILdRf var_148
  loc_AF2647: LitI4 0
  loc_AF264C: NeI4
  loc_AF264D: BranchF loc_AF265C
  loc_AF2650: LitStr "INGRESOS PRESUPUESTARIOS"
  loc_AF2653: LitI2_Byte 2
  loc_AF2655: CUI1I2
  loc_AF2657: Call Proc_149_20_9B8898()
  loc_AF265C: LitStr "SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(MoviFonH) Importe"
  loc_AF265F: LitStr " FROM tmovi"
  loc_AF2662: ConcatStr
  loc_AF2663: FStStrNoPop var_B0
  loc_AF2666: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_AF2669: ConcatStr
  loc_AF266A: FStStrNoPop var_134
  loc_AF266D: LitStr " WHERE NOT (tmovi.CodiTicu Like '5" & Chr(37) & "' OR tmovi.CodiTicu Like '7" & Chr(37) & "')"
  loc_AF2670: ConcatStr
  loc_AF2671: FStStrNoPop var_138
  loc_AF2674: LitStr " AND tmovi.CodiCuco <> CajaPaco"
  loc_AF2677: ConcatStr
  loc_AF2678: FStStrNoPop var_13C
  loc_AF267B: LitStr " GROUP BY CodiCuco"
  loc_AF267E: ConcatStr
  loc_AF267F: FStStrNoPop var_140
  loc_AF2682: LitStr " HAVING Importe <> 0;"
  loc_AF2685: ConcatStr
  loc_AF2686: FStStrNoPop var_144
  loc_AF2689: FLdPr Me
  loc_AF268C: MemLdRfVar from_stack_1.global_72
  loc_AF268F: NewIfNullPr clsbase
  loc_AF2692: Call clsbase.RedefineRS(from_stack_1v)
  loc_AF2697: FFreeStr var_B0 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_AF26A6: FLdRfVar var_148
  loc_AF26A9: FLdPr Me
  loc_AF26AC: MemLdRfVar from_stack_1.global_72
  loc_AF26AF: NewIfNullPr clsbase
  loc_AF26B2: from_stack_1 = clsbase.RecordCount
  loc_AF26B7: ILdRf var_148
  loc_AF26BA: LitI4 0
  loc_AF26BF: NeI4
  loc_AF26C0: BranchF loc_AF26CF
  loc_AF26C3: LitStr "INGRESOS EXTRAPRESUPUESTARIOS"
  loc_AF26C6: LitI2_Byte 2
  loc_AF26C8: CUI1I2
  loc_AF26CA: Call Proc_149_20_9B8898()
  loc_AF26CF: LitStr "SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(MoviFonD) Importe"
  loc_AF26D2: LitStr " FROM tmovi"
  loc_AF26D5: ConcatStr
  loc_AF26D6: FStStrNoPop var_B0
  loc_AF26D9: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_AF26DC: ConcatStr
  loc_AF26DD: FStStrNoPop var_134
  loc_AF26E0: LitStr " WHERE (tmovi.CodiTicu Like '6" & Chr(37) & "' OR tmovi.CodiTicu Like '8" & Chr(37) & "')"
  loc_AF26E3: ConcatStr
  loc_AF26E4: FStStrNoPop var_138
  loc_AF26E7: LitStr " AND tmovi.CodiCuco <> CajaPaco"
  loc_AF26EA: ConcatStr
  loc_AF26EB: FStStrNoPop var_13C
  loc_AF26EE: LitStr " GROUP BY CodiCuco"
  loc_AF26F1: ConcatStr
  loc_AF26F2: FStStrNoPop var_140
  loc_AF26F5: LitStr " HAVING Importe <> 0;"
  loc_AF26F8: ConcatStr
  loc_AF26F9: FStStrNoPop var_144
  loc_AF26FC: FLdPr Me
  loc_AF26FF: MemLdRfVar from_stack_1.global_72
  loc_AF2702: NewIfNullPr clsbase
  loc_AF2705: Call clsbase.RedefineRS(from_stack_1v)
  loc_AF270A: FFreeStr var_B0 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_AF2719: FLdRfVar var_148
  loc_AF271C: FLdPr Me
  loc_AF271F: MemLdRfVar from_stack_1.global_72
  loc_AF2722: NewIfNullPr clsbase
  loc_AF2725: from_stack_1 = clsbase.RecordCount
  loc_AF272A: ILdRf var_148
  loc_AF272D: LitI4 0
  loc_AF2732: NeI4
  loc_AF2733: BranchF loc_AF2742
  loc_AF2736: LitStr "EROGACIONES PRESUPUESTARIAS"
  loc_AF2739: LitI2_Byte 3
  loc_AF273B: CUI1I2
  loc_AF273D: Call Proc_149_20_9B8898()
  loc_AF2742: LitStr "SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(MoviFonD) Importe"
  loc_AF2745: LitStr " FROM tmovi"
  loc_AF2748: ConcatStr
  loc_AF2749: FStStrNoPop var_B0
  loc_AF274C: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_AF274F: ConcatStr
  loc_AF2750: FStStrNoPop var_134
  loc_AF2753: LitStr " WHERE NOT (tmovi.CodiTicu Like '6" & Chr(37) & "' OR tmovi.CodiTicu Like '8" & Chr(37) & "')"
  loc_AF2756: ConcatStr
  loc_AF2757: FStStrNoPop var_138
  loc_AF275A: LitStr " AND tmovi.CodiCuco <> CajaPaco"
  loc_AF275D: ConcatStr
  loc_AF275E: FStStrNoPop var_13C
  loc_AF2761: LitStr " GROUP BY CodiCuco"
  loc_AF2764: ConcatStr
  loc_AF2765: FStStrNoPop var_140
  loc_AF2768: LitStr " HAVING Importe <> 0;"
  loc_AF276B: ConcatStr
  loc_AF276C: FStStrNoPop var_144
  loc_AF276F: FLdPr Me
  loc_AF2772: MemLdRfVar from_stack_1.global_72
  loc_AF2775: NewIfNullPr clsbase
  loc_AF2778: Call clsbase.RedefineRS(from_stack_1v)
  loc_AF277D: FFreeStr var_B0 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_AF278C: FLdRfVar var_148
  loc_AF278F: FLdPr Me
  loc_AF2792: MemLdRfVar from_stack_1.global_72
  loc_AF2795: NewIfNullPr clsbase
  loc_AF2798: from_stack_1 = clsbase.RecordCount
  loc_AF279D: ILdRf var_148
  loc_AF27A0: LitI4 0
  loc_AF27A5: NeI4
  loc_AF27A6: BranchF loc_AF27B5
  loc_AF27A9: LitStr "EROGACIONES EXTRAPRESUPUESTARIAS"
  loc_AF27AC: LitI2_Byte 3
  loc_AF27AE: CUI1I2
  loc_AF27B0: Call Proc_149_20_9B8898()
  loc_AF27B5: LitStr "Municipalidad de Guaymallén"
  loc_AF27B8: LitStr "Municipalidad de Rivadavia"
  loc_AF27BB: EqStr
  loc_AF27BD: BranchF loc_AF280D
  loc_AF27C0: LitStr "SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(SaldFinaD-SaldFinaH) Importe"
  loc_AF27C3: LitStr " FROM tmovi"
  loc_AF27C6: ConcatStr
  loc_AF27C7: FStStrNoPop var_B0
  loc_AF27CA: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_AF27CD: ConcatStr
  loc_AF27CE: FStStrNoPop var_134
  loc_AF27D1: LitStr " WHERE tmovi.CodiTicu IN (1110,1120,1130,1140)"
  loc_AF27D4: ConcatStr
  loc_AF27D5: FStStrNoPop var_138
  loc_AF27D8: LitStr " OR tmovi.CodiCuco = CajaPaco"
  loc_AF27DB: ConcatStr
  loc_AF27DC: FStStrNoPop var_13C
  loc_AF27DF: LitStr " GROUP BY CodiCuco"
  loc_AF27E2: ConcatStr
  loc_AF27E3: FStStrNoPop var_140
  loc_AF27E6: LitStr " HAVING Importe <> 0;"
  loc_AF27E9: ConcatStr
  loc_AF27EA: FStStrNoPop var_144
  loc_AF27ED: FLdPr Me
  loc_AF27F0: MemLdRfVar from_stack_1.global_72
  loc_AF27F3: NewIfNullPr clsbase
  loc_AF27F6: Call clsbase.RedefineRS(from_stack_1v)
  loc_AF27FB: FFreeStr var_B0 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_AF280A: Branch loc_AF2857
  loc_AF280D: LitStr "SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(SaldFinaD-SaldFinaH) Importe"
  loc_AF2810: LitStr " FROM tmovi"
  loc_AF2813: ConcatStr
  loc_AF2814: FStStrNoPop var_B0
  loc_AF2817: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_AF281A: ConcatStr
  loc_AF281B: FStStrNoPop var_134
  loc_AF281E: LitStr " WHERE tmovi.CodiTicu IN (1110,1120,1130)"
  loc_AF2821: ConcatStr
  loc_AF2822: FStStrNoPop var_138
  loc_AF2825: LitStr " OR tmovi.CodiCuco = CajaPaco"
  loc_AF2828: ConcatStr
  loc_AF2829: FStStrNoPop var_13C
  loc_AF282C: LitStr " GROUP BY CodiCuco"
  loc_AF282F: ConcatStr
  loc_AF2830: FStStrNoPop var_140
  loc_AF2833: LitStr " HAVING Importe <> 0;"
  loc_AF2836: ConcatStr
  loc_AF2837: FStStrNoPop var_144
  loc_AF283A: FLdPr Me
  loc_AF283D: MemLdRfVar from_stack_1.global_72
  loc_AF2840: NewIfNullPr clsbase
  loc_AF2843: Call clsbase.RedefineRS(from_stack_1v)
  loc_AF2848: FFreeStr var_B0 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_AF2857: FLdRfVar var_148
  loc_AF285A: FLdPr Me
  loc_AF285D: MemLdRfVar from_stack_1.global_72
  loc_AF2860: NewIfNullPr clsbase
  loc_AF2863: from_stack_1 = clsbase.RecordCount
  loc_AF2868: ILdRf var_148
  loc_AF286B: LitI4 0
  loc_AF2870: NeI4
  loc_AF2871: BranchF loc_AF2880
  loc_AF2874: LitStr "SALDOS FINALES"
  loc_AF2877: LitI2_Byte 4
  loc_AF2879: CUI1I2
  loc_AF287B: Call Proc_149_20_9B8898()
  loc_AF2880: FLdPr Me
  loc_AF2883: MemLdStr global_80
  loc_AF2886: LitI2_Byte 1
  loc_AF2888: FnUBound
  loc_AF288A: LitI4 0
  loc_AF288F: EqI4
  loc_AF2890: BranchF loc_AF28A3
  loc_AF2893: LitI4 0
  loc_AF2898: LitStr "No existen registros para el criterio de búsqueda seleccionado"
  loc_AF289B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AF28A0: Branch loc_AF2A6E
  loc_AF28A3: LitI2_Byte 1
  loc_AF28A5: FLdPr Me
  loc_AF28A8: MemLdRfVar from_stack_1.global_96
  loc_AF28AB: FLdPr Me
  loc_AF28AE: MemLdStr global_80
  loc_AF28B1: LitI2_Byte 1
  loc_AF28B3: FnUBound
  loc_AF28B5: CI2I4
  loc_AF28B6: ForI2 var_14C
  loc_AF28BC: LitI2_Byte 1
  loc_AF28BE: FLdPr Me
  loc_AF28C1: MemLdRfVar from_stack_1.global_98
  loc_AF28C4: FLdPr Me
  loc_AF28C7: MemLdI2 global_96
  loc_AF28CA: CI4UI1
  loc_AF28CB: FLdPr Me
  loc_AF28CE: MemLdStr global_80
  loc_AF28D1: Ary1LdPr
  loc_AF28D2: MemLdStr global_4
  loc_AF28D5: LitI2_Byte 1
  loc_AF28D7: FnUBound
  loc_AF28D9: CI2I4
  loc_AF28DA: ForI2 var_150
  loc_AF28E0: LitI2_Byte 0
  loc_AF28E2: FLdPr Me
  loc_AF28E5: MemLdI2 global_96
  loc_AF28E8: CI4UI1
  loc_AF28E9: FLdPr Me
  loc_AF28EC: MemLdStr global_80
  loc_AF28EF: AryLock
  loc_AF28F2: Ary1LdPr
  loc_AF28F3: MemLdRfVar from_stack_1.global_8
  loc_AF28F6: CVarRef
  loc_AF28FB: LitI2_Byte &HFF
  loc_AF28FD: FLdPr Me
  loc_AF2900: MemLdI2 global_98
  loc_AF2903: CI4UI1
  loc_AF2904: FLdPr Me
  loc_AF2907: MemLdI2 global_96
  loc_AF290A: CI4UI1
  loc_AF290B: FLdPr Me
  loc_AF290E: MemLdStr global_80
  loc_AF2911: Ary1LdPr
  loc_AF2912: MemLdStr global_4
  loc_AF2915: Ary1LdPr
  loc_AF2916: MemLdStr global_8
  loc_AF2919: CVarStr var_98
  loc_AF291C: PopAdLdVar
  loc_AF291D: FLdPr Me
  loc_AF2920: MemLdRfVar from_stack_1.global_120
  loc_AF2923: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF2928: AryUnlock
  loc_AF292B: FLdPr Me
  loc_AF292E: MemLdRfVar from_stack_1.global_98
  loc_AF2931: NextI2 var_150, loc_AF28E0
  loc_AF2936: FLdPr Me
  loc_AF2939: MemLdRfVar from_stack_1.global_96
  loc_AF293C: NextI2 var_14C, loc_AF28BC
  loc_AF2941: LitI2_Byte 0
  loc_AF2943: LitVar_Missing var_C0
  loc_AF2946: LitI2_Byte &HFF
  loc_AF2948: LitI4 1
  loc_AF294D: FLdPr Me
  loc_AF2950: MemLdStr global_80
  loc_AF2953: Ary1LdPr
  loc_AF2954: MemLdStr global_8
  loc_AF2957: CVarStr var_98
  loc_AF295A: PopAdLdVar
  loc_AF295B: FLdPr Me
  loc_AF295E: MemLdRfVar from_stack_1.global_84
  loc_AF2961: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF2966: FFree1Var var_C0 = ""
  loc_AF2969: LitI2_Byte 0
  loc_AF296B: LitVar_Missing var_C0
  loc_AF296E: LitI2_Byte &HFF
  loc_AF2970: LitI4 4
  loc_AF2975: FLdPr Me
  loc_AF2978: MemLdStr global_80
  loc_AF297B: Ary1LdPr
  loc_AF297C: MemLdStr global_8
  loc_AF297F: CVarStr var_98
  loc_AF2982: PopAdLdVar
  loc_AF2983: FLdPr Me
  loc_AF2986: MemLdRfVar from_stack_1.global_88
  loc_AF2989: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF298E: FFree1Var var_C0 = ""
  loc_AF2991: LitI4 2
  loc_AF2996: FLdPr Me
  loc_AF2999: MemLdStr global_88
  loc_AF299C: CR8Str
  loc_AF299E: FLdPr Me
  loc_AF29A1: MemLdStr global_84
  loc_AF29A4: CR8Str
  loc_AF29A6: SubR4
  loc_AF29A7: CVarR8
  loc_AF29AB: FLdRfVar var_D0
  loc_AF29AE: ImpAdCallFPR4  = Round(, )
  loc_AF29B3: LitI2_Byte 0
  loc_AF29B5: LitVar_Missing var_E0
  loc_AF29B8: LitI2_Byte &HFF
  loc_AF29BA: FLdVar var_D0
  loc_AF29BE: FLdPr Me
  loc_AF29C1: MemLdRfVar from_stack_1.global_92
  loc_AF29C4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF29C9: FFreeVar var_C0 = "": var_D0 = ""
  loc_AF29D2: LitI4 2
  loc_AF29D7: LitI4 2
  loc_AF29DC: FLdPr Me
  loc_AF29DF: MemLdStr global_80
  loc_AF29E2: Ary1LdPr
  loc_AF29E3: MemLdStr global_8
  loc_AF29E6: CR8Str
  loc_AF29E8: LitI4 3
  loc_AF29ED: FLdPr Me
  loc_AF29F0: MemLdStr global_80
  loc_AF29F3: Ary1LdPr
  loc_AF29F4: MemLdStr global_8
  loc_AF29F7: CR8Str
  loc_AF29F9: SubR4
  loc_AF29FA: CVarR8
  loc_AF29FE: FLdRfVar var_D0
  loc_AF2A01: ImpAdCallFPR4  = Round(, )
  loc_AF2A06: LitI2_Byte 0
  loc_AF2A08: LitVar_Missing var_E0
  loc_AF2A0B: LitI2_Byte &HFF
  loc_AF2A0D: FLdVar var_D0
  loc_AF2A11: FLdPr Me
  loc_AF2A14: MemLdRfVar from_stack_1.global_104
  loc_AF2A17: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF2A1C: FFreeVar var_C0 = "": var_D0 = ""
  loc_AF2A25: LitI4 2
  loc_AF2A2A: FLdPr Me
  loc_AF2A2D: MemLdStr global_92
  loc_AF2A30: CR8Str
  loc_AF2A32: FLdPr Me
  loc_AF2A35: MemLdStr global_104
  loc_AF2A38: CR8Str
  loc_AF2A3A: SubR4
  loc_AF2A3B: CVarR8
  loc_AF2A3F: FLdRfVar var_D0
  loc_AF2A42: ImpAdCallFPR4  = Round(, )
  loc_AF2A47: LitI2_Byte 0
  loc_AF2A49: LitVar_Missing var_E0
  loc_AF2A4C: LitI2_Byte &HFF
  loc_AF2A4E: FLdVar var_D0
  loc_AF2A52: FLdPr Me
  loc_AF2A55: MemLdRfVar from_stack_1.global_108
  loc_AF2A58: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF2A5D: FFreeVar var_C0 = "": var_D0 = ""
  loc_AF2A66: LitI2_Byte &HFF
  loc_AF2A68: FLdPr Me
  loc_AF2A6B: MemStI2 bGenerado
  loc_AF2A6E: LitI4 0
  loc_AF2A73: CI2I4
  loc_AF2A74: FLdPr Me
  loc_AF2A77: Me.MousePointer = from_stack_1
  loc_AF2A7C: LitVarStr var_98, vbNullString
  loc_AF2A81: PopAdLdVar
  loc_AF2A82: FLdPr Me
  loc_AF2A85: VCallAd Control_ID_statusBar
  loc_AF2A88: FStAdFunc var_AC
  loc_AF2A8B: FLdPr var_AC
  loc_AF2A8E: LateIdSt
  loc_AF2A93: FFree1Ad var_AC
  loc_AF2A96: ExitProcHresult
  loc_AF2A97: LitI4 0
  loc_AF2A9C: LitStr "Error "
  loc_AF2A9F: FLdRfVar var_148
  loc_AF2AA2: ImpAdCallI2 Err 'rtcErrObj
  loc_AF2AA7: FStAdFunc var_AC
  loc_AF2AAA: FLdPr var_AC
  loc_AF2AAD:  = Err.Number
  loc_AF2AB2: ILdRf var_148
  loc_AF2AB5: CStrI4
  loc_AF2AB7: FStStrNoPop var_B0
  loc_AF2ABA: ConcatStr
  loc_AF2ABB: FStStrNoPop var_134
  loc_AF2ABE: LitStr ": "
  loc_AF2AC1: ConcatStr
  loc_AF2AC2: FStStrNoPop var_13C
  loc_AF2AC5: FLdRfVar var_138
  loc_AF2AC8: ImpAdCallI2 Err 'rtcErrObj
  loc_AF2ACD: FStAdFunc var_158
  loc_AF2AD0: FLdPr var_158
  loc_AF2AD3:  = Err.Description
  loc_AF2AD8: ILdRf var_138
  loc_AF2ADB: ConcatStr
  loc_AF2ADC: FStStrNoPop var_140
  loc_AF2ADF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AF2AE4: FFreeStr var_B0 = "": var_134 = "": var_13C = "": var_138 = ""
  loc_AF2AF1: FFreeAd var_AC = ""
  loc_AF2AF8: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A899E8
  'Data Table: 43B144
  loc_A89598: FLdRfVar var_88
  loc_A8959B: LitI2_Byte 0
  loc_A8959D: LitI2_Byte &HFF
  loc_A8959F: ImpAdLdI4 MemVar_C3D83C
  loc_A895A2: FLdPr Me
  loc_A895A5: MemLdRfVar from_stack_1.global_76
  loc_A895A8: NewIfNullPr IFileSystem3
  loc_A895AB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A895B0: ILdRf var_88
  loc_A895B3: FLdPr Me
  loc_A895B6: MemStVarAd
  loc_A895BA: FFree1Ad var_88
  loc_A895BD: Call Proc_149_24_A4185C()
  loc_A895C2: LitI2_Byte 1
  loc_A895C4: FLdPr Me
  loc_A895C7: MemLdRfVar from_stack_1.global_96
  loc_A895CA: FLdPr Me
  loc_A895CD: MemLdStr global_80
  loc_A895D0: LitI2_Byte 1
  loc_A895D2: FnUBound
  loc_A895D4: CI2I4
  loc_A895D5: ForI2 var_8C
  loc_A895DB: FLdPr Me
  loc_A895DE: MemLdI2 global_96
  loc_A895E1: CI4UI1
  loc_A895E2: FLdPr Me
  loc_A895E5: MemLdStr global_80
  loc_A895E8: AryLock
  loc_A895EB: Ary1LdRf
  loc_A895EC: FStR4 var_94
  loc_A895EF: LitVarStr var_A4, "  <tr align=""center"" class=""Encabezado"">"
  loc_A895F4: PopAdLdVar
  loc_A895F5: FLdPr Me
  loc_A895F8: MemLdRfVar from_stack_1.htmFile
  loc_A895FB: LdPrVar
  loc_A895FD: LateMemCall
  loc_A89603: LitStr "    <th align=""left""><strong>"
  loc_A89606: FMemLdR4 var_94(0)
  loc_A8960B: ConcatStr
  loc_A8960C: FStStrNoPop var_B8
  loc_A8960F: LitStr "</strong></th>"
  loc_A89612: ConcatStr
  loc_A89613: CVarStr var_C8
  loc_A89616: PopAdLdVar
  loc_A89617: FLdPr Me
  loc_A8961A: MemLdRfVar from_stack_1.htmFile
  loc_A8961D: LdPrVar
  loc_A8961F: LateMemCall
  loc_A89625: FFree1Str var_B8
  loc_A89628: FFree1Var var_C8 = ""
  loc_A8962B: LitI4 0
  loc_A89630: LitStr "SubTotales"
  loc_A89633: LitI2_Byte &HFF
  loc_A89635: LitStr "right"
  loc_A89638: LitStr vbNullString
  loc_A8963B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89640: CVarStr var_C8
  loc_A89643: PopAdLdVar
  loc_A89644: FLdPr Me
  loc_A89647: MemLdRfVar from_stack_1.htmFile
  loc_A8964A: LdPrVar
  loc_A8964C: LateMemCall
  loc_A89652: FFree1Var var_C8 = ""
  loc_A89655: LitI4 0
  loc_A8965A: LitStr "SubTotales"
  loc_A8965D: LitI2_Byte &HFF
  loc_A8965F: LitStr "right"
  loc_A89662: FMemLdR4 var_94(8)
  loc_A89667: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A8966C: CVarStr var_C8
  loc_A8966F: PopAdLdVar
  loc_A89670: FLdPr Me
  loc_A89673: MemLdRfVar from_stack_1.htmFile
  loc_A89676: LdPrVar
  loc_A89678: LateMemCall
  loc_A8967E: FFree1Var var_C8 = ""
  loc_A89681: LitVarStr var_A4, "     </tr>"
  loc_A89686: PopAdLdVar
  loc_A89687: FLdPr Me
  loc_A8968A: MemLdRfVar from_stack_1.htmFile
  loc_A8968D: LdPrVar
  loc_A8968F: LateMemCall
  loc_A89695: LitI2_Byte 1
  loc_A89697: FLdPr Me
  loc_A8969A: MemLdRfVar from_stack_1.global_98
  loc_A8969D: FMemLdR4 var_94(4)
  loc_A896A2: LitI2_Byte 1
  loc_A896A4: FnUBound
  loc_A896A6: CI2I4
  loc_A896A7: ForI2 var_CC
  loc_A896AD: FLdPr Me
  loc_A896B0: MemLdI2 global_98
  loc_A896B3: CI4UI1
  loc_A896B4: FMemLdR4 var_94(4)
  loc_A896B9: AryLock
  loc_A896BC: Ary1LdRf
  loc_A896BD: FStR4 var_D4
  loc_A896C0: LitVarStr var_A4, "  <tr align=""center"" class=""Encabezado"">"
  loc_A896C5: PopAdLdVar
  loc_A896C6: FLdPr Me
  loc_A896C9: MemLdRfVar from_stack_1.htmFile
  loc_A896CC: LdPrVar
  loc_A896CE: LateMemCall
  loc_A896D4: LitStr "    <th align=""left""><strong>--"
  loc_A896D7: FMemLdR4 var_D4(0)
  loc_A896DC: ConcatStr
  loc_A896DD: FStStrNoPop var_B8
  loc_A896E0: LitStr "</strong></th>"
  loc_A896E3: ConcatStr
  loc_A896E4: CVarStr var_C8
  loc_A896E7: PopAdLdVar
  loc_A896E8: FLdPr Me
  loc_A896EB: MemLdRfVar from_stack_1.htmFile
  loc_A896EE: LdPrVar
  loc_A896F0: LateMemCall
  loc_A896F6: FFree1Str var_B8
  loc_A896F9: FFree1Var var_C8 = ""
  loc_A896FC: LitI4 0
  loc_A89701: LitStr "SubTotales"
  loc_A89704: LitI2_Byte &HFF
  loc_A89706: LitStr "right"
  loc_A89709: FMemLdR4 var_D4(8)
  loc_A8970E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89713: CVarStr var_C8
  loc_A89716: PopAdLdVar
  loc_A89717: FLdPr Me
  loc_A8971A: MemLdRfVar from_stack_1.htmFile
  loc_A8971D: LdPrVar
  loc_A8971F: LateMemCall
  loc_A89725: FFree1Var var_C8 = ""
  loc_A89728: LitI4 0
  loc_A8972D: LitStr "SubTotales"
  loc_A89730: LitI2_Byte &HFF
  loc_A89732: LitStr "right"
  loc_A89735: LitStr vbNullString
  loc_A89738: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A8973D: CVarStr var_C8
  loc_A89740: PopAdLdVar
  loc_A89741: FLdPr Me
  loc_A89744: MemLdRfVar from_stack_1.htmFile
  loc_A89747: LdPrVar
  loc_A89749: LateMemCall
  loc_A8974F: FFree1Var var_C8 = ""
  loc_A89752: LitVarStr var_A4, "     </tr>"
  loc_A89757: PopAdLdVar
  loc_A89758: FLdPr Me
  loc_A8975B: MemLdRfVar from_stack_1.htmFile
  loc_A8975E: LdPrVar
  loc_A89760: LateMemCall
  loc_A89766: LitI2_Byte 1
  loc_A89768: FLdPr Me
  loc_A8976B: MemLdRfVar from_stack_1.global_100
  loc_A8976E: FMemLdR4 var_D4(4)
  loc_A89773: LitI2_Byte 1
  loc_A89775: FnUBound
  loc_A89777: CI2I4
  loc_A89778: ForI2 var_D8
  loc_A8977E: FLdPr Me
  loc_A89781: MemLdI2 global_100
  loc_A89784: CI4UI1
  loc_A89785: FMemLdR4 var_D4(4)
  loc_A8978A: AryLock
  loc_A8978D: Ary1LdRf
  loc_A8978E: FStR4 var_E0
  loc_A89791: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A89796: PopAdLdVar
  loc_A89797: FLdPr Me
  loc_A8979A: MemLdRfVar from_stack_1.htmFile
  loc_A8979D: LdPrVar
  loc_A8979F: LateMemCall
  loc_A897A5: LitI4 0
  loc_A897AA: LitI4 0
  loc_A897AF: LitI2_Byte 0
  loc_A897B1: LitStr "left"
  loc_A897B4: FMemLdR4 var_E0(0)
  loc_A897B9: LitStr " - "
  loc_A897BC: ConcatStr
  loc_A897BD: FStStrNoPop var_B8
  loc_A897C0: FMemLdR4 var_E0(4)
  loc_A897C5: ConcatStr
  loc_A897C6: FStStrNoPop var_E4
  loc_A897C9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A897CE: CVarStr var_C8
  loc_A897D1: PopAdLdVar
  loc_A897D2: FLdPr Me
  loc_A897D5: MemLdRfVar from_stack_1.htmFile
  loc_A897D8: LdPrVar
  loc_A897DA: LateMemCall
  loc_A897E0: FFreeStr var_B8 = ""
  loc_A897E7: FFree1Var var_C8 = ""
  loc_A897EA: LitI4 0
  loc_A897EF: LitI4 0
  loc_A897F4: LitI2_Byte &HFF
  loc_A897F6: LitStr "right"
  loc_A897F9: FMemLdR4 var_E0(8)
  loc_A897FE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89803: CVarStr var_C8
  loc_A89806: PopAdLdVar
  loc_A89807: FLdPr Me
  loc_A8980A: MemLdRfVar from_stack_1.htmFile
  loc_A8980D: LdPrVar
  loc_A8980F: LateMemCall
  loc_A89815: FFree1Var var_C8 = ""
  loc_A89818: LitI4 0
  loc_A8981D: LitI4 0
  loc_A89822: LitI2_Byte 0
  loc_A89824: LitStr "right"
  loc_A89827: LitStr vbNullString
  loc_A8982A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A8982F: CVarStr var_C8
  loc_A89832: PopAdLdVar
  loc_A89833: FLdPr Me
  loc_A89836: MemLdRfVar from_stack_1.htmFile
  loc_A89839: LdPrVar
  loc_A8983B: LateMemCall
  loc_A89841: FFree1Var var_C8 = ""
  loc_A89844: LitVarStr var_A4, "     </tr>"
  loc_A89849: PopAdLdVar
  loc_A8984A: FLdPr Me
  loc_A8984D: MemLdRfVar from_stack_1.htmFile
  loc_A89850: LdPrVar
  loc_A89852: LateMemCall
  loc_A89858: LitI4 0
  loc_A8985D: FStR4 var_E0
  loc_A89860: AryUnlock
  loc_A89863: FLdPr Me
  loc_A89866: MemLdRfVar from_stack_1.global_100
  loc_A89869: NextI2 var_D8, loc_A8977E
  loc_A8986E: LitI4 0
  loc_A89873: FStR4 var_D4
  loc_A89876: AryUnlock
  loc_A89879: FLdPr Me
  loc_A8987C: MemLdRfVar from_stack_1.global_98
  loc_A8987F: NextI2 var_CC, loc_A896AD
  loc_A89884: LitI4 0
  loc_A89889: FStR4 var_94
  loc_A8988C: AryUnlock
  loc_A8988F: FLdPr Me
  loc_A89892: MemLdRfVar from_stack_1.global_96
  loc_A89895: NextI2 var_8C, loc_A895DB
  loc_A8989A: LitVarStr var_A4, "  <tr align=""left"" class=""Encabezado"">"
  loc_A8989F: PopAdLdVar
  loc_A898A0: FLdPr Me
  loc_A898A3: MemLdRfVar from_stack_1.htmFile
  loc_A898A6: LdPrVar
  loc_A898A8: LateMemCall
  loc_A898AE: LitVarStr var_A4, "    <th>AUMENTOS O DISMINUCIONES DE LOS FONDOS</th>"
  loc_A898B3: PopAdLdVar
  loc_A898B4: FLdPr Me
  loc_A898B7: MemLdRfVar from_stack_1.htmFile
  loc_A898BA: LdPrVar
  loc_A898BC: LateMemCall
  loc_A898C2: LitI4 0
  loc_A898C7: LitStr "SubTotales"
  loc_A898CA: LitI2_Byte &HFF
  loc_A898CC: LitStr "right"
  loc_A898CF: LitStr vbNullString
  loc_A898D2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A898D7: CVarStr var_C8
  loc_A898DA: PopAdLdVar
  loc_A898DB: FLdPr Me
  loc_A898DE: MemLdRfVar from_stack_1.htmFile
  loc_A898E1: LdPrVar
  loc_A898E3: LateMemCall
  loc_A898E9: FFree1Var var_C8 = ""
  loc_A898EC: LitI4 0
  loc_A898F1: LitStr "SubTotales"
  loc_A898F4: LitI2_Byte &HFF
  loc_A898F6: LitStr "right"
  loc_A898F9: FLdPr Me
  loc_A898FC: MemLdStr global_104
  loc_A898FF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89904: CVarStr var_C8
  loc_A89907: PopAdLdVar
  loc_A89908: FLdPr Me
  loc_A8990B: MemLdRfVar from_stack_1.htmFile
  loc_A8990E: LdPrVar
  loc_A89910: LateMemCall
  loc_A89916: FFree1Var var_C8 = ""
  loc_A89919: LitVarStr var_A4, "     </tr>"
  loc_A8991E: PopAdLdVar
  loc_A8991F: FLdPr Me
  loc_A89922: MemLdRfVar from_stack_1.htmFile
  loc_A89925: LdPrVar
  loc_A89927: LateMemCall
  loc_A8992D: FLdPr Me
  loc_A89930: MemLdStr global_108
  loc_A89933: CR8Str
  loc_A89935: LitI2_Byte 0
  loc_A89937: CR8I2
  loc_A89938: NeR8
  loc_A89939: BranchF loc_A899CF
  loc_A8993C: LitVarStr var_A4, "  <tr align=""left"" class=""Encabezado"">"
  loc_A89941: PopAdLdVar
  loc_A89942: FLdPr Me
  loc_A89945: MemLdRfVar from_stack_1.htmFile
  loc_A89948: LdPrVar
  loc_A8994A: LateMemCall
  loc_A89950: LitVarStr var_A4, "    <th>DIFERENCIA SEGÚN SEGUN ANEXO</th>"
  loc_A89955: PopAdLdVar
  loc_A89956: FLdPr Me
  loc_A89959: MemLdRfVar from_stack_1.htmFile
  loc_A8995C: LdPrVar
  loc_A8995E: LateMemCall
  loc_A89964: LitI4 0
  loc_A89969: LitStr "SubTotales"
  loc_A8996C: LitI2_Byte &HFF
  loc_A8996E: LitStr "right"
  loc_A89971: LitStr vbNullString
  loc_A89974: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89979: CVarStr var_C8
  loc_A8997C: PopAdLdVar
  loc_A8997D: FLdPr Me
  loc_A89980: MemLdRfVar from_stack_1.htmFile
  loc_A89983: LdPrVar
  loc_A89985: LateMemCall
  loc_A8998B: FFree1Var var_C8 = ""
  loc_A8998E: LitI4 0
  loc_A89993: LitStr "SubTotales"
  loc_A89996: LitI2_Byte &HFF
  loc_A89998: LitStr "right"
  loc_A8999B: FLdPr Me
  loc_A8999E: MemLdStr global_108
  loc_A899A1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A899A6: CVarStr var_C8
  loc_A899A9: PopAdLdVar
  loc_A899AA: FLdPr Me
  loc_A899AD: MemLdRfVar from_stack_1.htmFile
  loc_A899B0: LdPrVar
  loc_A899B2: LateMemCall
  loc_A899B8: FFree1Var var_C8 = ""
  loc_A899BB: LitVarStr var_A4, "     </tr>"
  loc_A899C0: PopAdLdVar
  loc_A899C1: FLdPr Me
  loc_A899C4: MemLdRfVar from_stack_1.htmFile
  loc_A899C7: LdPrVar
  loc_A899C9: LateMemCall
  loc_A899CF: Call Proc_149_25_A05A28()
  loc_A899D4: FLdPr Me
  loc_A899D7: MemLdRfVar from_stack_1.htmFile
  loc_A899DA: LdPrVar
  loc_A899DC: LateMemCall
  loc_A899E2: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A899E7: ExitProcHresult
End Sub

Public Sub GeneraXLS() '94C51C
  'Data Table: 43B144
  loc_94C504: LitI2_Byte 0
  loc_94C506: FLdPr Me
  loc_94C509: MemStI2 bLogos
  loc_94C50C: Call GeneraHTML()
  loc_94C511: LitI2_Byte &HFF
  loc_94C513: FLdPr Me
  loc_94C516: MemStI2 bLogos
  loc_94C519: ExitProcHresult
End Sub

Private Function Proc_149_20_9B8898(arg_10) '9B8898
  'Data Table: 43B144
  loc_9B87DC: ILdRf arg_10
  loc_9B87DF: FStStrCopy var_88
  loc_9B87E2: FLdPr Me
  loc_9B87E5: MemLdRfVar from_stack_1.global_72
  loc_9B87E8: NewIfNullAd
  loc_9B87EB: FStAd var_8C 
  loc_9B87EF: FLdPr var_8C
  loc_9B87F2: Call clsbase.MoveFirst()
  loc_9B87F7: FLdUI1
  loc_9B87FB: CI2UI1
  loc_9B87FD: FLdPr Me
  loc_9B8800: MemStI2 global_96
  loc_9B8803: FLdPr Me
  loc_9B8806: MemLdStr global_80
  loc_9B8809: LitI2_Byte 1
  loc_9B880B: FnUBound
  loc_9B880D: FLdPr Me
  loc_9B8810: MemLdI2 global_96
  loc_9B8813: CI4UI1
  loc_9B8814: LtI4
  loc_9B8815: BranchF loc_9B886E
  loc_9B8818: FLdPr Me
  loc_9B881B: MemLdI2 global_96
  loc_9B881E: FStI2 var_8E
  loc_9B8821: FLdI2 var_8E
  loc_9B8824: LitI2_Byte 1
  loc_9B8826: EqI2
  loc_9B8827: BranchF loc_9B8835
  loc_9B882A: LitStr "SALDOS INICIALES"
  loc_9B882D: Call Proc_149_21_994EB4()
  loc_9B8832: Branch loc_9B886E
  loc_9B8835: FLdI2 var_8E
  loc_9B8838: LitI2_Byte 2
  loc_9B883A: EqI2
  loc_9B883B: BranchF loc_9B8849
  loc_9B883E: LitStr "INGRESOS DEL EJERCICIO"
  loc_9B8841: Call Proc_149_21_994EB4()
  loc_9B8846: Branch loc_9B886E
  loc_9B8849: FLdI2 var_8E
  loc_9B884C: LitI2_Byte 3
  loc_9B884E: EqI2
  loc_9B884F: BranchF loc_9B885D
  loc_9B8852: LitStr "EGRESOS DEL EJERCICIO"
  loc_9B8855: Call Proc_149_21_994EB4()
  loc_9B885A: Branch loc_9B886E
  loc_9B885D: FLdI2 var_8E
  loc_9B8860: LitI2_Byte 4
  loc_9B8862: EqI2
  loc_9B8863: BranchF loc_9B886E
  loc_9B8866: LitStr "SALDOS FINALES"
  loc_9B8869: Call Proc_149_21_994EB4()
  loc_9B886E: ILdRf var_88
  loc_9B8871: Call Proc_149_22_9A7A14()
  loc_9B8876: FLdRfVar var_90
  loc_9B8879: FLdPr var_8C
  loc_9B887C: from_stack_1 = clsbase.EOF
  loc_9B8881: FLdI2 var_90
  loc_9B8884: NotI4
  loc_9B8885: BranchF loc_9B8890
  loc_9B8888: Call Proc_149_23_A26CE0()
  loc_9B888D: Branch loc_9B8876
  loc_9B8890: LitNothing
  loc_9B8892: FStAd var_8C 
  loc_9B8896: ExitProcHresult
End Function

Private Function Proc_149_21_994EB4(arg_C) '994EB4
  'Data Table: 43B144
  loc_994E5C: ILdRf arg_C
  loc_994E5F: FStStrCopy var_88
  loc_994E62: LitI2_Byte 0
  loc_994E64: FLdPr Me
  loc_994E67: MemStI2 global_98
  loc_994E6A: LitI4 0
  loc_994E6F: FLdPr Me
  loc_994E72: MemLdI2 global_96
  loc_994E75: CI4UI1
  loc_994E76: FLdPr Me
  loc_994E79: MemLdRfVar from_stack_1.global_80
  loc_994E7C: RedimPreserve
  loc_994E86: LitI2_Byte 0
  loc_994E88: LitVar_Missing var_BC
  loc_994E8B: LitI2_Byte 0
  loc_994E8D: ILdRf var_88
  loc_994E90: CVarStr var_9C
  loc_994E93: PopAdLdVar
  loc_994E94: FLdPr Me
  loc_994E97: MemLdI2 global_96
  loc_994E9A: CI4UI1
  loc_994E9B: FLdPr Me
  loc_994E9E: MemLdStr global_80
  loc_994EA1: AryLock
  loc_994EA4: Ary1LdPr
  loc_994EA5: MemLdRfVar from_stack_1.global_0
  loc_994EA8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_994EAD: AryUnlock
  loc_994EB0: FFree1Var var_BC = ""
  loc_994EB3: ExitProcHresult
End Function

Private Function Proc_149_22_9A7A14(arg_C) '9A7A14
  'Data Table: 43B144
  loc_9A798C: ILdRf arg_C
  loc_9A798F: FStStrCopy var_88
  loc_9A7992: FLdPr Me
  loc_9A7995: MemLdI2 global_98
  loc_9A7998: LitI2_Byte 1
  loc_9A799A: AddI2
  loc_9A799B: FLdPr Me
  loc_9A799E: MemStI2 global_98
  loc_9A79A1: LitI2_Byte 0
  loc_9A79A3: FLdPr Me
  loc_9A79A6: MemStI2 global_100
  loc_9A79A9: LitI4 0
  loc_9A79AE: FLdPr Me
  loc_9A79B1: MemLdI2 global_98
  loc_9A79B4: CI4UI1
  loc_9A79B5: FLdPr Me
  loc_9A79B8: MemLdI2 global_96
  loc_9A79BB: CI4UI1
  loc_9A79BC: FLdPr Me
  loc_9A79BF: MemLdStr global_80
  loc_9A79C2: Ary1LdPr
  loc_9A79C3: MemLdRfVar from_stack_1.global_4
  loc_9A79C6: RedimPreserve
  loc_9A79D0: LitI2_Byte 0
  loc_9A79D2: LitVar_Missing var_C0
  loc_9A79D5: LitI2_Byte 0
  loc_9A79D7: ILdRf var_88
  loc_9A79DA: CVarStr var_A0
  loc_9A79DD: PopAdLdVar
  loc_9A79DE: FLdPr Me
  loc_9A79E1: MemLdI2 global_98
  loc_9A79E4: CI4UI1
  loc_9A79E5: FLdPr Me
  loc_9A79E8: MemLdI2 global_96
  loc_9A79EB: CI4UI1
  loc_9A79EC: FLdPr Me
  loc_9A79EF: MemLdStr global_80
  loc_9A79F2: AryLock
  loc_9A79F5: Ary1LdPr
  loc_9A79F6: MemLdStr global_4
  loc_9A79F9: AryLock
  loc_9A79FC: Ary1LdPr
  loc_9A79FD: MemLdRfVar from_stack_1.global_0
  loc_9A7A00: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9A7A05: AryUnlock
  loc_9A7A08: AryUnlock
  loc_9A7A0B: FFree1Var var_C0 = ""
  loc_9A7A0E: Call Proc_149_23_A26CE0()
  loc_9A7A13: ExitProcHresult
End Function

Private Function Proc_149_23_A26CE0() 'A26CE0
  'Data Table: 43B144
  loc_A26B2C: FLdPr Me
  loc_A26B2F: MemLdI2 global_100
  loc_A26B32: LitI2_Byte 1
  loc_A26B34: AddI2
  loc_A26B35: FLdPr Me
  loc_A26B38: MemStI2 global_100
  loc_A26B3B: LitI4 0
  loc_A26B40: FLdPr Me
  loc_A26B43: MemLdI2 global_100
  loc_A26B46: CI4UI1
  loc_A26B47: FLdPr Me
  loc_A26B4A: MemLdI2 global_98
  loc_A26B4D: CI4UI1
  loc_A26B4E: FLdPr Me
  loc_A26B51: MemLdI2 global_96
  loc_A26B54: CI4UI1
  loc_A26B55: FLdPr Me
  loc_A26B58: MemLdStr global_80
  loc_A26B5B: Ary1LdPr
  loc_A26B5C: MemLdStr global_4
  loc_A26B5F: Ary1LdPr
  loc_A26B60: MemLdRfVar from_stack_1.global_4
  loc_A26B63: RedimPreserve
  loc_A26B6D: FLdPr Me
  loc_A26B70: MemLdI2 global_100
  loc_A26B73: CI4UI1
  loc_A26B74: FLdPr Me
  loc_A26B77: MemLdI2 global_98
  loc_A26B7A: CI4UI1
  loc_A26B7B: FLdPr Me
  loc_A26B7E: MemLdI2 global_96
  loc_A26B81: CI4UI1
  loc_A26B82: FLdPr Me
  loc_A26B85: MemLdStr global_80
  loc_A26B88: AryLock
  loc_A26B8B: Ary1LdPr
  loc_A26B8C: MemLdStr global_4
  loc_A26B8F: AryLock
  loc_A26B92: Ary1LdPr
  loc_A26B93: MemLdStr global_4
  loc_A26B96: AryLock
  loc_A26B99: Ary1LdRf
  loc_A26B9A: FStR4 var_94
  loc_A26B9D: FLdRfVar var_B0
  loc_A26BA0: LitVarStr var_AC, "CodiCuco"
  loc_A26BA5: PopAdLdVar
  loc_A26BA6: FLdRfVar var_9C
  loc_A26BA9: FLdRfVar var_98
  loc_A26BAC: FLdPr Me
  loc_A26BAF: MemLdRfVar from_stack_1.global_72
  loc_A26BB2: NewIfNullPr clsbase
  loc_A26BB5: from_stack_1v = clsbase.RsFrmGet()
  loc_A26BBA: FLdPr var_98
  loc_A26BBD:  = Me.Fields
  loc_A26BC2: FLdPr var_9C
  loc_A26BC5: from_stack_2 = Me.Item(from_stack_1)
  loc_A26BCA: LitI2_Byte 0
  loc_A26BCC: LitVar_Missing var_E0
  loc_A26BCF: LitI2_Byte 0
  loc_A26BD1: FLdZeroAd var_B0
  loc_A26BD4: CVarAd
  loc_A26BD8: PopAdLdVar
  loc_A26BD9: FMemLdRf 0
  loc_A26BDE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A26BE3: FFreeAd var_98 = ""
  loc_A26BEA: FFreeVar var_C0 = ""
  loc_A26BF1: FLdRfVar var_B0
  loc_A26BF4: LitVarStr var_AC, "DetaCuco"
  loc_A26BF9: PopAdLdVar
  loc_A26BFA: FLdRfVar var_9C
  loc_A26BFD: FLdRfVar var_98
  loc_A26C00: FLdPr Me
  loc_A26C03: MemLdRfVar from_stack_1.global_72
  loc_A26C06: NewIfNullPr clsbase
  loc_A26C09: from_stack_1v = clsbase.RsFrmGet()
  loc_A26C0E: FLdPr var_98
  loc_A26C11:  = Me.Fields
  loc_A26C16: FLdPr var_9C
  loc_A26C19: from_stack_2 = Me.Item(from_stack_1)
  loc_A26C1E: LitI2_Byte 0
  loc_A26C20: LitVar_Missing var_E0
  loc_A26C23: LitI2_Byte 0
  loc_A26C25: FLdZeroAd var_B0
  loc_A26C28: CVarAd
  loc_A26C2C: PopAdLdVar
  loc_A26C2D: FMemLdRf 0
  loc_A26C32: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A26C37: FFreeAd var_98 = ""
  loc_A26C3E: FFreeVar var_C0 = ""
  loc_A26C45: FLdRfVar var_B0
  loc_A26C48: LitVarStr var_AC, "Importe"
  loc_A26C4D: PopAdLdVar
  loc_A26C4E: FLdRfVar var_9C
  loc_A26C51: FLdRfVar var_98
  loc_A26C54: FLdPr Me
  loc_A26C57: MemLdRfVar from_stack_1.global_72
  loc_A26C5A: NewIfNullPr clsbase
  loc_A26C5D: from_stack_1v = clsbase.RsFrmGet()
  loc_A26C62: FLdPr var_98
  loc_A26C65:  = Me.Fields
  loc_A26C6A: FLdPr var_9C
  loc_A26C6D: from_stack_2 = Me.Item(from_stack_1)
  loc_A26C72: LitI2_Byte 0
  loc_A26C74: FLdPr Me
  loc_A26C77: MemLdI2 global_98
  loc_A26C7A: CI4UI1
  loc_A26C7B: FLdPr Me
  loc_A26C7E: MemLdI2 global_96
  loc_A26C81: CI4UI1
  loc_A26C82: FLdPr Me
  loc_A26C85: MemLdStr global_80
  loc_A26C88: AryLock
  loc_A26C8B: Ary1LdPr
  loc_A26C8C: MemLdStr global_4
  loc_A26C8F: AryLock
  loc_A26C92: Ary1LdPr
  loc_A26C93: MemLdRfVar from_stack_1.global_8
  loc_A26C96: CVarRef
  loc_A26C9B: LitI2_Byte &HFF
  loc_A26C9D: FLdZeroAd var_B0
  loc_A26CA0: CVarAd
  loc_A26CA4: PopAdLdVar
  loc_A26CA5: FMemLdRf 0
  loc_A26CAA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A26CAF: AryUnlock
  loc_A26CB2: AryUnlock
  loc_A26CB5: FFreeAd var_98 = ""
  loc_A26CBC: FFree1Var var_C0 = ""
  loc_A26CBF: LitI4 0
  loc_A26CC4: FStR4 var_94
  loc_A26CC7: AryUnlock
  loc_A26CCA: AryUnlock
  loc_A26CCD: AryUnlock
  loc_A26CD0: FLdPr Me
  loc_A26CD3: MemLdRfVar from_stack_1.global_72
  loc_A26CD6: NewIfNullPr clsbase
  loc_A26CD9: Call clsbase.MoveSiguiente()
  loc_A26CDE: ExitProcHresult
End Function

Private Function Proc_149_24_A4185C() 'A4185C
  'Data Table: 43B144
  loc_A41600: LitVarStr var_94, "<html>"
  loc_A41605: PopAdLdVar
  loc_A41606: FLdPr Me
  loc_A41609: MemLdRfVar from_stack_1.htmFile
  loc_A4160C: LdPrVar
  loc_A4160E: LateMemCall
  loc_A41614: LitVarStr var_94, "<head>"
  loc_A41619: PopAdLdVar
  loc_A4161A: FLdPr Me
  loc_A4161D: MemLdRfVar from_stack_1.htmFile
  loc_A41620: LdPrVar
  loc_A41622: LateMemCall
  loc_A41628: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A4162D: PopAdLdVar
  loc_A4162E: FLdPr Me
  loc_A41631: MemLdRfVar from_stack_1.htmFile
  loc_A41634: LdPrVar
  loc_A41636: LateMemCall
  loc_A4163C: LitStr "<title>"
  loc_A4163F: FLdRfVar var_A8
  loc_A41642: FLdPr Me
  loc_A41645:  = Me.Caption
  loc_A4164A: ILdRf var_A8
  loc_A4164D: ConcatStr
  loc_A4164E: FStStrNoPop var_AC
  loc_A41651: LitStr "</title>"
  loc_A41654: ConcatStr
  loc_A41655: CVarStr var_BC
  loc_A41658: PopAdLdVar
  loc_A41659: FLdPr Me
  loc_A4165C: MemLdRfVar from_stack_1.htmFile
  loc_A4165F: LdPrVar
  loc_A41661: LateMemCall
  loc_A41667: FFreeStr var_A8 = ""
  loc_A4166E: FFree1Var var_BC = ""
  loc_A41671: LitStr vbNullString
  loc_A41674: ILdRf Me
  loc_A41677: CastAd
  loc_A4167A: FStAdFunc var_C0
  loc_A4167D: FLdRfVar var_C0
  loc_A41680: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A41685: FFree1Ad var_C0
  loc_A41688: LitI4 0
  loc_A4168D: FStStrCopy var_AC
  loc_A41690: FLdRfVar var_AC
  loc_A41693: LitI4 0
  loc_A41698: FStStrCopy var_A8
  loc_A4169B: FLdRfVar var_A8
  loc_A4169E: LitI2_Byte 0
  loc_A416A0: PopTmpLdAd2 var_C2
  loc_A416A3: FLdPr Me
  loc_A416A6: MemLdRfVar from_stack_1.htmFile
  loc_A416A9: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A416AE: FFreeStr var_A8 = ""
  loc_A416B5: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A416BA: PopAdLdVar
  loc_A416BB: FLdPr Me
  loc_A416BE: MemLdRfVar from_stack_1.htmFile
  loc_A416C1: LdPrVar
  loc_A416C3: LateMemCall
  loc_A416C9: LitVarStr var_94, "  <tr valign=""center"">"
  loc_A416CE: PopAdLdVar
  loc_A416CF: FLdPr Me
  loc_A416D2: MemLdRfVar from_stack_1.htmFile
  loc_A416D5: LdPrVar
  loc_A416D7: LateMemCall
  loc_A416DD: LitVarStr var_94, "    <th align=""center"" valign=""center""><p>"
  loc_A416E2: PopAdLdVar
  loc_A416E3: FLdPr Me
  loc_A416E6: MemLdRfVar from_stack_1.htmFile
  loc_A416E9: LdPrVar
  loc_A416EB: LateMemCall
  loc_A416F1: FLdPr Me
  loc_A416F4: MemLdI2 bLogos
  loc_A416F7: BranchF loc_A4170E
  loc_A416FA: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A416FF: PopAdLdVar
  loc_A41700: FLdPr Me
  loc_A41703: MemLdRfVar from_stack_1.htmFile
  loc_A41706: LdPrVar
  loc_A41708: LateMemCall
  loc_A4170E: LitVarStr var_94, "    <br>ACUERDO N&ordm; 2988 <br>"
  loc_A41713: PopAdLdVar
  loc_A41714: FLdPr Me
  loc_A41717: MemLdRfVar from_stack_1.htmFile
  loc_A4171A: LdPrVar
  loc_A4171C: LateMemCall
  loc_A41722: LitVarStr var_94, "      <span class=""Titulo2"">ANEXO IX: MOVIMIENTOS DE FONDOS Y VALORES<br>(texto ordenado según Acuerdo Nº 3961)</span></p>"
  loc_A41727: PopAdLdVar
  loc_A41728: FLdPr Me
  loc_A4172B: MemLdRfVar from_stack_1.htmFile
  loc_A4172E: LdPrVar
  loc_A41730: LateMemCall
  loc_A41736: LitVarStr var_94, "    </th>"
  loc_A4173B: PopAdLdVar
  loc_A4173C: FLdPr Me
  loc_A4173F: MemLdRfVar from_stack_1.htmFile
  loc_A41742: LdPrVar
  loc_A41744: LateMemCall
  loc_A4174A: LitVarStr var_94, "  </tr>"
  loc_A4174F: PopAdLdVar
  loc_A41750: FLdPr Me
  loc_A41753: MemLdRfVar from_stack_1.htmFile
  loc_A41756: LdPrVar
  loc_A41758: LateMemCall
  loc_A4175E: LitVarStr var_94, "  <tr>"
  loc_A41763: PopAdLdVar
  loc_A41764: FLdPr Me
  loc_A41767: MemLdRfVar from_stack_1.htmFile
  loc_A4176A: LdPrVar
  loc_A4176C: LateMemCall
  loc_A41772: LitVarStr var_94, "    <th>"
  loc_A41777: PopAdLdVar
  loc_A41778: FLdPr Me
  loc_A4177B: MemLdRfVar from_stack_1.htmFile
  loc_A4177E: LdPrVar
  loc_A41780: LateMemCall
  loc_A41786: LitStr "      <p align=""left"" class=""Titulo2"">Repartición/Organismo: "
  loc_A41789: LitStr "Municipalidad de Guaymallén"
  loc_A4178C: ConcatStr
  loc_A4178D: FStStrNoPop var_A8
  loc_A41790: LitStr "<br>"
  loc_A41793: ConcatStr
  loc_A41794: CVarStr var_BC
  loc_A41797: PopAdLdVar
  loc_A41798: FLdPr Me
  loc_A4179B: MemLdRfVar from_stack_1.htmFile
  loc_A4179E: LdPrVar
  loc_A417A0: LateMemCall
  loc_A417A6: FFree1Str var_A8
  loc_A417A9: FFree1Var var_BC = ""
  loc_A417AC: LitStr "    Nomenclador: "
  loc_A417AF: LitStr "060204"
  loc_A417B2: ConcatStr
  loc_A417B3: FStStrNoPop var_A8
  loc_A417B6: LitStr "<br>"
  loc_A417B9: ConcatStr
  loc_A417BA: CVarStr var_BC
  loc_A417BD: PopAdLdVar
  loc_A417BE: FLdPr Me
  loc_A417C1: MemLdRfVar from_stack_1.htmFile
  loc_A417C4: LdPrVar
  loc_A417C6: LateMemCall
  loc_A417CC: FFree1Str var_A8
  loc_A417CF: FFree1Var var_BC = ""
  loc_A417D2: LitStr "    Ejercicio: "
  loc_A417D5: FLdRfVar var_A8
  loc_A417D8: FLdPr Me
  loc_A417DB: VCallAd Control_ID_cboPeriodo
  loc_A417DE: FStAdFunc var_C0
  loc_A417E1: FLdPr var_C0
  loc_A417E4:  = Me.Text
  loc_A417E9: ILdRf var_A8
  loc_A417EC: ConcatStr
  loc_A417ED: CVarStr var_BC
  loc_A417F0: PopAdLdVar
  loc_A417F1: FLdPr Me
  loc_A417F4: MemLdRfVar from_stack_1.htmFile
  loc_A417F7: LdPrVar
  loc_A417F9: LateMemCall
  loc_A417FF: FFree1Str var_A8
  loc_A41802: FFree1Ad var_C0
  loc_A41805: FFree1Var var_BC = ""
  loc_A41808: LitVarStr var_94, "    </p></th>"
  loc_A4180D: PopAdLdVar
  loc_A4180E: FLdPr Me
  loc_A41811: MemLdRfVar from_stack_1.htmFile
  loc_A41814: LdPrVar
  loc_A41816: LateMemCall
  loc_A4181C: LitVarStr var_94, "  </tr>"
  loc_A41821: PopAdLdVar
  loc_A41822: FLdPr Me
  loc_A41825: MemLdRfVar from_stack_1.htmFile
  loc_A41828: LdPrVar
  loc_A4182A: LateMemCall
  loc_A41830: LitVarStr var_94, "</table>"
  loc_A41835: PopAdLdVar
  loc_A41836: FLdPr Me
  loc_A41839: MemLdRfVar from_stack_1.htmFile
  loc_A4183C: LdPrVar
  loc_A4183E: LateMemCall
  loc_A41844: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A41849: PopAdLdVar
  loc_A4184A: FLdPr Me
  loc_A4184D: MemLdRfVar from_stack_1.htmFile
  loc_A41850: LdPrVar
  loc_A41852: LateMemCall
  loc_A41858: ExitProcHresult
  loc_A41859: ImpAdLdFPR4 MemVar_3000B
End Function

Private Function Proc_149_25_A05A28() 'A05A28
  'Data Table: 43B144
  loc_A058B4: LitVarStr var_94, "</table>"
  loc_A058B9: PopAdLdVar
  loc_A058BA: FLdPr Me
  loc_A058BD: MemLdRfVar from_stack_1.htmFile
  loc_A058C0: LdPrVar
  loc_A058C2: LateMemCall
  loc_A058C8: LitVarStr var_94, "<br>"
  loc_A058CD: PopAdLdVar
  loc_A058CE: FLdPr Me
  loc_A058D1: MemLdRfVar from_stack_1.htmFile
  loc_A058D4: LdPrVar
  loc_A058D6: LateMemCall
  loc_A058DC: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_A058E1: PopAdLdVar
  loc_A058E2: FLdPr Me
  loc_A058E5: MemLdRfVar from_stack_1.htmFile
  loc_A058E8: LdPrVar
  loc_A058EA: LateMemCall
  loc_A058F0: LitVarStr var_94, "  <tr>"
  loc_A058F5: PopAdLdVar
  loc_A058F6: FLdPr Me
  loc_A058F9: MemLdRfVar from_stack_1.htmFile
  loc_A058FC: LdPrVar
  loc_A058FE: LateMemCall
  loc_A05904: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_A05909: PopAdLdVar
  loc_A0590A: FLdPr Me
  loc_A0590D: MemLdRfVar from_stack_1.htmFile
  loc_A05910: LdPrVar
  loc_A05912: LateMemCall
  loc_A05918: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_A0591D: PopAdLdVar
  loc_A0591E: FLdPr Me
  loc_A05921: MemLdRfVar from_stack_1.htmFile
  loc_A05924: LdPrVar
  loc_A05926: LateMemCall
  loc_A0592C: FLdPr Me
  loc_A0592F: MemLdI2 bLogos
  loc_A05932: BranchF loc_A05999
  loc_A05935: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_A0593A: PopAdLdVar
  loc_A0593B: FLdPr Me
  loc_A0593E: MemLdRfVar from_stack_1.htmFile
  loc_A05941: LdPrVar
  loc_A05943: LateMemCall
  loc_A05949: LitVarStr var_94, "          <map name=""Map"">"
  loc_A0594E: PopAdLdVar
  loc_A0594F: FLdPr Me
  loc_A05952: MemLdRfVar from_stack_1.htmFile
  loc_A05955: LdPrVar
  loc_A05957: LateMemCall
  loc_A0595D: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_A05962: PopAdLdVar
  loc_A05963: FLdPr Me
  loc_A05966: MemLdRfVar from_stack_1.htmFile
  loc_A05969: LdPrVar
  loc_A0596B: LateMemCall
  loc_A05971: LitVarStr var_94, "          </map>"
  loc_A05976: PopAdLdVar
  loc_A05977: FLdPr Me
  loc_A0597A: MemLdRfVar from_stack_1.htmFile
  loc_A0597D: LdPrVar
  loc_A0597F: LateMemCall
  loc_A05985: LitVarStr var_94, "    </div></th>"
  loc_A0598A: PopAdLdVar
  loc_A0598B: FLdPr Me
  loc_A0598E: MemLdRfVar from_stack_1.htmFile
  loc_A05991: LdPrVar
  loc_A05993: LateMemCall
  loc_A05999: LitVarStr var_94, "  </tr>"
  loc_A0599E: PopAdLdVar
  loc_A0599F: FLdPr Me
  loc_A059A2: MemLdRfVar from_stack_1.htmFile
  loc_A059A5: LdPrVar
  loc_A059A7: LateMemCall
  loc_A059AD: LitVarStr var_94, "  <tr>"
  loc_A059B2: PopAdLdVar
  loc_A059B3: FLdPr Me
  loc_A059B6: MemLdRfVar from_stack_1.htmFile
  loc_A059B9: LdPrVar
  loc_A059BB: LateMemCall
  loc_A059C1: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_A059C6: PopAdLdVar
  loc_A059C7: FLdPr Me
  loc_A059CA: MemLdRfVar from_stack_1.htmFile
  loc_A059CD: LdPrVar
  loc_A059CF: LateMemCall
  loc_A059D5: LitVarStr var_94, "  </tr>"
  loc_A059DA: PopAdLdVar
  loc_A059DB: FLdPr Me
  loc_A059DE: MemLdRfVar from_stack_1.htmFile
  loc_A059E1: LdPrVar
  loc_A059E3: LateMemCall
  loc_A059E9: LitVarStr var_94, "</table>"
  loc_A059EE: PopAdLdVar
  loc_A059EF: FLdPr Me
  loc_A059F2: MemLdRfVar from_stack_1.htmFile
  loc_A059F5: LdPrVar
  loc_A059F7: LateMemCall
  loc_A059FD: LitVarStr var_94, "</body>"
  loc_A05A02: PopAdLdVar
  loc_A05A03: FLdPr Me
  loc_A05A06: MemLdRfVar from_stack_1.htmFile
  loc_A05A09: LdPrVar
  loc_A05A0B: LateMemCall
  loc_A05A11: LitVarStr var_94, "</html>"
  loc_A05A16: PopAdLdVar
  loc_A05A17: FLdPr Me
  loc_A05A1A: MemLdRfVar from_stack_1.htmFile
  loc_A05A1D: LdPrVar
  loc_A05A1F: LateMemCall
  loc_A05A25: ExitProcHresult
End Function
