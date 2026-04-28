VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptErroresdeLiquidaciondeTasas
  Caption = "Errores de Liquidación de Tasas"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptErroresdeLiquidaciondeTasas.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 11328
  ClientHeight = 6852
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 6600
    Width = 11325
    Height = 255
    TabIndex = 10
    OleObjectBlob = "rptErroresdeLiquidaciondeTasas.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8280
    Top = 5400
    Width = 855
    Height = 735
    TabIndex = 5
    Cancel = -1  'True
    Picture = "rptErroresdeLiquidaciondeTasas.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptErroresdeLiquidaciondeTasas.frx":0B9C
    Left = 10200
    Top = 5280
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 5280
    Width = 1815
    Height = 1215
    TabIndex = 8
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 3
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 5280
    Width = 4095
    Height = 1215
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 2
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 1
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 10935
    Height = 5175
    TabIndex = 6
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 9000
      Top = 240
      Width = 1575
      Height = 615
      TabIndex = 4
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin MSDataGridLib.DataGrid dgdLiquidacion
      Left = 240
      Top = 240
      Width = 8400
      Height = 4755
      TabIndex = 0
      OleObjectBlob = "rptErroresdeLiquidaciondeTasas.frx":0C00
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8520
    Top = 5760
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 9
    OleObjectBlob = "rptErroresdeLiquidaciondeTasas.frx":0F06
  End
End

Attribute VB_Name = "rptErroresdeLiquidaciondeTasas"

Public bGenerado As Boolean

Private Type UDT_1_0056237C
  bStruc(16) As Byte ' String fields: 4
End Type


Private Sub cmdSalir_Click() 'A03A1C
  'Data Table: 44A928
  loc_A039EC: LitVarStr var_94, "Cerrando..."
  loc_A039F1: PopAdLdVar
  loc_A039F2: FLdPr Me
  loc_A039F5: VCallAd Control_ID_statusBar
  loc_A039F8: FStAdFunc var_A8
  loc_A039FB: FLdPr var_A8
  loc_A039FE: LateIdSt
  loc_A03A03: FFree1Ad var_A8
  loc_A03A06: ILdRf Me
  loc_A03A09: FStAdNoPop
  loc_A03A0D: ImpAdLdRf MemVar_D9C5D8
  loc_A03A10: NewIfNullPr Global
  loc_A03A13: Global.Unload from_stack_1
  loc_A03A18: FFree1Ad var_A8
  loc_A03A1B: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DED4C
  'Data Table: 44A928
  loc_9DED30: LitI2_Byte 0
  loc_9DED32: PopTmpLdAd2 var_8A
  loc_9DED35: ILdRf Me
  loc_9DED38: CastAd
  loc_9DED3B: FStAdFunc var_88
  loc_9DED3E: FLdRfVar var_88
  loc_9DED41: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DED46: FFree1Ad var_88
  loc_9DED49: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9C9210
  'Data Table: 44A928
  loc_9C91F8: ILdRf Me
  loc_9C91FB: CastAd
  loc_9C91FE: FStAdFunc var_88
  loc_9C9201: FLdRfVar var_88
  loc_9C9204: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9C9209: FFree1Ad var_88
  loc_9C920C: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'A43D58
  'Data Table: 44A928
  loc_A43D04: LitI2_Byte 0
  loc_A43D06: ILdRf Me
  loc_A43D09: CastAd
  loc_A43D0C: FStAdFunc var_88
  loc_A43D0F: FLdRfVar var_88
  loc_A43D12: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A43D17: FFree1Ad var_88
  loc_A43D1A: FLdRfVar var_8A
  loc_A43D1D: FLdPr Me
  loc_A43D20: VCallAd Control_ID_cmdPredeterminada
  loc_A43D23: FStAdFunc var_88
  loc_A43D26: FLdPr var_88
  loc_A43D29:  = Me.Enabled
  loc_A43D2E: FLdI2 var_8A
  loc_A43D31: NotI4
  loc_A43D32: FFree1Ad var_88
  loc_A43D35: BranchF loc_A43D40
  loc_A43D38: ImpAdCallFPR4 DoEvents()
  loc_A43D3D: Branch loc_A43D1A
  loc_A43D40: ILdRf Me
  loc_A43D43: FStAdNoPop
  loc_A43D47: ImpAdLdRf MemVar_D9C5D8
  loc_A43D4A: NewIfNullPr Global
  loc_A43D4D: Global.Unload from_stack_1
  loc_A43D52: FFree1Ad var_88
  loc_A43D55: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A16318
  'Data Table: 44A928
  loc_A162E0: FLdPr Me
  loc_A162E3: VCallAd Control_ID_statusBar
  loc_A162E6: FStAdFunc var_88
  loc_A162E9: FLdPr var_88
  loc_A162EC: LateIdLdVar var_98 DispID_1 0
  loc_A162F3: CStrVarTmp
  loc_A162F4: CVarStr var_A8
  loc_A162F7: PopAdLdVar
  loc_A162F8: FLdPr Me
  loc_A162FB: VCallAd Control_ID_statusBar
  loc_A162FE: FStAdFunc var_BC
  loc_A16301: FLdPr var_BC
  loc_A16304: LateIdSt
  loc_A16309: FFreeAd var_88 = ""
  loc_A16310: FFreeVar var_98 = ""
  loc_A16317: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'ABC2A8
  'Data Table: 44A928
  loc_ABC1B8: LitI2_Byte 0
  loc_ABC1BA: FLdPr Me
  loc_ABC1BD: MemStI2 bGenerado
  loc_ABC1C0: LitI2_Byte 0
  loc_ABC1C2: ILdRf Me
  loc_ABC1C5: CastAd
  loc_ABC1C8: FStAdFunc var_88
  loc_ABC1CB: FLdRfVar var_88
  loc_ABC1CE: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_ABC1D3: FFree1Ad var_88
  loc_ABC1D6: FLdPr Me
  loc_ABC1D9: MemLdRfVar from_stack_1.global_76
  loc_ABC1DC: NewIfNullPr clsliquidacion
  loc_ABC1DF: Call clsliquidacion.Requery()
  loc_ABC1E4: FLdRfVar var_8C
  loc_ABC1E7: FLdPr Me
  loc_ABC1EA: MemLdRfVar from_stack_1.global_76
  loc_ABC1ED: NewIfNullPr clsliquidacion
  loc_ABC1F0: from_stack_1 = clsliquidacion.RecordCount
  loc_ABC1F5: ILdRf var_8C
  loc_ABC1F8: LitI4 0
  loc_ABC1FD: GtI4
  loc_ABC1FE: BranchF loc_ABC270
  loc_ABC201: LitI4 0
  loc_ABC206: LitI4 1
  loc_ABC20B: FLdRfVar var_90
  loc_ABC20E: Redim
  loc_ABC218: FLdPr Me
  loc_ABC21B: MemLdRfVar from_stack_1.global_76
  loc_ABC21E: NewIfNullAd
  loc_ABC221: FStAd var_88 
  loc_ABC225: FLdRfVar var_88
  loc_ABC228: CVarRef
  loc_ABC22D: ParmAry1St
  loc_ABC233: FLdPr Me
  loc_ABC236: VCallAd Control_ID_dgdLiquidacion
  loc_ABC239: CVarAd
  loc_ABC23D: ParmAry1St
  loc_ABC243: FLdRfVar var_90
  loc_ABC246: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_ABC24B: ILdRf var_88
  loc_ABC24E: CastAd
  loc_ABC251: FLdPr Me
  loc_ABC254: MemStAdFunc
  loc_ABC258: FLdRfVar var_90
  loc_ABC25B: Erase
  loc_ABC25C: FFree1Ad var_88
  loc_ABC25F: FLdPr Me
  loc_ABC262: MemLdRfVar from_stack_1.global_76
  loc_ABC265: NewIfNullPr clsliquidacion
  loc_ABC268: Call clsliquidacion.MoveFirst()
  loc_ABC26D: Branch loc_ABC28C
  loc_ABC270: LitStr "No existen liquidaciones para listar"
  loc_ABC273: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABC278: ILdRf Me
  loc_ABC27B: CastAd
  loc_ABC27E: FStAdFunc var_88
  loc_ABC281: FLdRfVar var_88
  loc_ABC284: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_ABC289: FFree1Ad var_88
  loc_ABC28C: Call HabilitarCriterio()
  loc_ABC291: ILdRf Me
  loc_ABC294: CastAd
  loc_ABC297: FStAdFunc var_88
  loc_ABC29A: FLdRfVar var_88
  loc_ABC29D: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_ABC2A2: FFree1Ad var_88
  loc_ABC2A5: ExitProcHresult
End Sub

Private Sub Form_Load() 'A2409C
  'Data Table: 44A928
  loc_A2405C: ILdRf Me
  loc_A2405F: CastAd
  loc_A24062: FStAdFunc var_88
  loc_A24065: FLdRfVar var_88
  loc_A24068: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_A2406D: FFree1Ad var_88
  loc_A24070: LitStr "SELECT PeriLiqu, liquidacion.CodiTili, DetaTili, NumeLiqu, ActuLiqu, FealLiqu"
  loc_A24073: LitStr " FROM liquidacion LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili"
  loc_A24076: ConcatStr
  loc_A24077: FStStrNoPop var_8C
  loc_A2407A: LitStr " WHERE liquidacion.CodiOfic = 1 ORDER BY  PeriLiqu, liquidacion.CodiOfic, CodiTili, NumeLiqu"
  loc_A2407D: ConcatStr
  loc_A2407E: FStStrNoPop var_90
  loc_A24081: FLdPr Me
  loc_A24084: MemLdRfVar from_stack_1.global_76
  loc_A24087: NewIfNullPr clsliquidacion
  loc_A2408A: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A2408F: FFreeStr var_8C = ""
  loc_A24096: Call cmdNueva_Click()
  loc_A2409B: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9C9684
  'Data Table: 44A928
  loc_9C966C: FLdPr Me
  loc_9C966F: VCallAd Control_ID_wbbReporte
  loc_9C9672: FStAdFunc var_88
  loc_9C9675: FLdRfVar var_88
  loc_9C9678: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9C967D: FFree1Ad var_88
  loc_9C9680: ExitProcHresult
End Sub

Public Function bGeneradoGet() '44B264
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '44B273
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A111D0
  'Data Table: 44A928
  loc_A1119C: LitI4 0
  loc_A111A1: LitI4 0
  loc_A111A6: FLdRfVar var_88
  loc_A111A9: Redim
  loc_A111B3: FLdPr Me
  loc_A111B6: VCallAd Control_ID_dgdLiquidacion
  loc_A111B9: CVarAd
  loc_A111BD: ParmAry1St
  loc_A111C3: FLdRfVar var_88
  loc_A111C6: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A111CB: FLdRfVar var_88
  loc_A111CE: Erase
  loc_A111CF: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B25B14
  'Data Table: 44A928
  loc_B2587C: FLdPr Me
  loc_B2587F: MemLdI2 bGenerado
  loc_B25882: BranchF loc_B25886
  loc_B25885: ExitProcHresult
  loc_B25886: LitVarStr var_94, "Generando reporte..."
  loc_B2588B: PopAdLdVar
  loc_B2588C: FLdPr Me
  loc_B2588F: VCallAd Control_ID_statusBar
  loc_B25892: FStAdFunc var_A8
  loc_B25895: FLdPr var_A8
  loc_B25898: LateIdSt
  loc_B2589D: FFree1Ad var_A8
  loc_B258A0: LitI4 &HB
  loc_B258A5: CI2I4
  loc_B258A6: FLdPr Me
  loc_B258A9: Me.MousePointer = from_stack_1
  loc_B258AE: FLdRfVar var_AC
  loc_B258B1: FLdPr Me
  loc_B258B4: MemLdRfVar from_stack_1.global_76
  loc_B258B7: NewIfNullPr clsliquidacion
  loc_B258BA: from_stack_1 = clsliquidacion.RecordCount
  loc_B258BF: ILdRf var_AC
  loc_B258C2: LitI4 1
  loc_B258C7: LtI4
  loc_B258C8: BranchF loc_B258D6
  loc_B258CB: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B258CE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B258D3: Branch loc_B25AE9
  loc_B258D6: FLdPr Me
  loc_B258D9: MemLdRfVar from_stack_1.global_80
  loc_B258DC: NewIfNullAd
  loc_B258DF: FStAd var_B0 
  loc_B258E3: LitStr "SELECT CuenCtct, NumeErli, FealErli, DetaErli FROM erroliqu"
  loc_B258E6: LitStr " WHERE CodiOfic = 1 AND erroliqu.PeriLiqu = "
  loc_B258E9: ConcatStr
  loc_B258EA: FStStrNoPop var_B8
  loc_B258ED: FLdRfVar var_B2
  loc_B258F0: FLdPr Me
  loc_B258F3: MemLdRfVar from_stack_1.global_76
  loc_B258F6: NewIfNullPr clsliquidacion
  loc_B258F9: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B258FE: FLdI2 var_B2
  loc_B25901: CStrUI1
  loc_B25903: FStStrNoPop var_BC
  loc_B25906: ConcatStr
  loc_B25907: FStStrNoPop var_C0
  loc_B2590A: LitStr " AND erroliqu.CodiTili = "
  loc_B2590D: ConcatStr
  loc_B2590E: FStStrNoPop var_C8
  loc_B25911: FLdRfVar var_C2
  loc_B25914: FLdPr Me
  loc_B25917: MemLdRfVar from_stack_1.global_76
  loc_B2591A: NewIfNullPr clsliquidacion
  loc_B2591D: from_stack_1 = clsliquidacion.CodiTili
  loc_B25922: FLdUI1
  loc_B25926: CStrI2
  loc_B25928: FStStrNoPop var_CC
  loc_B2592B: ConcatStr
  loc_B2592C: FStStrNoPop var_D0
  loc_B2592F: LitStr " AND erroliqu.NumeLiqu = "
  loc_B25932: ConcatStr
  loc_B25933: FStStrNoPop var_D8
  loc_B25936: FLdRfVar var_D2
  loc_B25939: FLdPr Me
  loc_B2593C: MemLdRfVar from_stack_1.global_76
  loc_B2593F: NewIfNullPr clsliquidacion
  loc_B25942: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B25947: FLdI2 var_D2
  loc_B2594A: CStrUI1
  loc_B2594C: FStStrNoPop var_DC
  loc_B2594F: ConcatStr
  loc_B25950: FStStrNoPop var_E0
  loc_B25953: LitStr "  ORDER BY CuenCtct, NumeErli"
  loc_B25956: ConcatStr
  loc_B25957: FStStrNoPop var_E4
  loc_B2595A: FLdPr var_B0
  loc_B2595D: Call clserroliqu.RedefineRS(from_stack_1v)
  loc_B25962: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_B25979: FLdRfVar var_AC
  loc_B2597C: FLdPr var_B0
  loc_B2597F: from_stack_1 = clserroliqu.RecordCount
  loc_B25984: ILdRf var_AC
  loc_B25987: LitI4 1
  loc_B2598C: LtI4
  loc_B2598D: BranchF loc_B2599B
  loc_B25990: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B25993: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B25998: Branch loc_B25AE9
  loc_B2599B: LitI4 0
  loc_B259A0: FLdRfVar var_AC
  loc_B259A3: FLdPr var_B0
  loc_B259A6: from_stack_1 = clserroliqu.RecordCount
  loc_B259AB: ILdRf var_AC
  loc_B259AE: FLdPr Me
  loc_B259B1: MemLdRfVar from_stack_1.global_84
  loc_B259B4: Redim
  loc_B259BE: LitI4 1
  loc_B259C3: FLdPr Me
  loc_B259C6: MemLdRfVar from_stack_1.global_88
  loc_B259C9: FLdPr Me
  loc_B259CC: MemLdStr global_84
  loc_B259CF: LitI2_Byte 1
  loc_B259D1: FnUBound
  loc_B259D3: ForI4 var_EC
  loc_B259D9: FLdRfVar var_B8
  loc_B259DC: FLdPr var_B0
  loc_B259DF: from_stack_1 = clserroliqu.CuenCtct
  loc_B259E4: LitI2_Byte 0
  loc_B259E6: LitVar_Missing var_110
  loc_B259E9: LitI2_Byte 0
  loc_B259EB: FLdZeroAd var_B8
  loc_B259EE: CVarStr var_100
  loc_B259F1: PopAdLdVar
  loc_B259F2: FLdPr Me
  loc_B259F5: MemLdStr global_88
  loc_B259F8: FLdPr Me
  loc_B259FB: MemLdStr global_84
  loc_B259FE: AryLock
  loc_B25A01: Ary1LdPr
  loc_B25A02: MemLdRfVar from_stack_1.global_0
  loc_B25A05: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B25A0A: AryUnlock
  loc_B25A0D: FFreeVar var_100 = ""
  loc_B25A14: FLdRfVar var_B2
  loc_B25A17: FLdPr var_B0
  loc_B25A1A: from_stack_1 = clserroliqu.NumeErli
  loc_B25A1F: LitI2_Byte 0
  loc_B25A21: LitVar_Missing var_100
  loc_B25A24: LitI2_Byte 0
  loc_B25A26: FLdUI1
  loc_B25A2A: CVarUI1
  loc_B25A2E: PopAdLdVar
  loc_B25A2F: FLdPr Me
  loc_B25A32: MemLdStr global_88
  loc_B25A35: FLdPr Me
  loc_B25A38: MemLdStr global_84
  loc_B25A3B: AryLock
  loc_B25A3E: Ary1LdPr
  loc_B25A3F: MemLdRfVar from_stack_1.global_4
  loc_B25A42: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B25A47: AryUnlock
  loc_B25A4A: FFree1Var var_100 = ""
  loc_B25A4D: FLdRfVar var_B8
  loc_B25A50: FLdPr var_B0
  loc_B25A53: from_stack_1 = clserroliqu.FealErli
  loc_B25A58: LitI2_Byte 0
  loc_B25A5A: LitVar_Missing var_110
  loc_B25A5D: LitI2_Byte 0
  loc_B25A5F: FLdZeroAd var_B8
  loc_B25A62: CVarStr var_100
  loc_B25A65: PopAdLdVar
  loc_B25A66: FLdPr Me
  loc_B25A69: MemLdStr global_88
  loc_B25A6C: FLdPr Me
  loc_B25A6F: MemLdStr global_84
  loc_B25A72: AryLock
  loc_B25A75: Ary1LdPr
  loc_B25A76: MemLdRfVar from_stack_1.global_8
  loc_B25A79: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B25A7E: AryUnlock
  loc_B25A81: FFreeVar var_100 = ""
  loc_B25A88: FLdRfVar var_B8
  loc_B25A8B: FLdPr var_B0
  loc_B25A8E: from_stack_1 = clserroliqu.DetaErli
  loc_B25A93: LitI2_Byte 0
  loc_B25A95: LitVar_Missing var_110
  loc_B25A98: LitI2_Byte 0
  loc_B25A9A: FLdZeroAd var_B8
  loc_B25A9D: CVarStr var_100
  loc_B25AA0: PopAdLdVar
  loc_B25AA1: FLdPr Me
  loc_B25AA4: MemLdStr global_88
  loc_B25AA7: FLdPr Me
  loc_B25AAA: MemLdStr global_84
  loc_B25AAD: AryLock
  loc_B25AB0: Ary1LdPr
  loc_B25AB1: MemLdRfVar from_stack_1.global_12
  loc_B25AB4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B25AB9: AryUnlock
  loc_B25ABC: FFreeVar var_100 = ""
  loc_B25AC3: LitI2_Byte 1
  loc_B25AC5: PopTmpLdAd2 var_B2
  loc_B25AC8: FLdPr var_B0
  loc_B25ACB: Call clserroliqu.Move(from_stack_1v)
  loc_B25AD0: FLdPr Me
  loc_B25AD3: MemLdRfVar from_stack_1.global_88
  loc_B25AD6: NextI4 var_EC, loc_B259D9
  loc_B25ADB: LitNothing
  loc_B25ADD: FStAd var_B0 
  loc_B25AE1: LitI2_Byte &HFF
  loc_B25AE3: FLdPr Me
  loc_B25AE6: MemStI2 bGenerado
  loc_B25AE9: LitI4 0
  loc_B25AEE: CI2I4
  loc_B25AEF: FLdPr Me
  loc_B25AF2: Me.MousePointer = from_stack_1
  loc_B25AF7: LitVarStr var_94, vbNullString
  loc_B25AFC: PopAdLdVar
  loc_B25AFD: FLdPr Me
  loc_B25B00: VCallAd Control_ID_statusBar
  loc_B25B03: FStAdFunc var_A8
  loc_B25B06: FLdPr var_A8
  loc_B25B09: LateIdSt
  loc_B25B0E: FFree1Ad var_A8
  loc_B25B11: ExitProcHresult
  loc_B25B12: IDvI4
  loc_B25B13: ExitProc
End Sub

Public Sub GeneraHTML() 'AE1964
  'Data Table: 44A928
  loc_AE1800: FLdRfVar var_88
  loc_AE1803: LitI2_Byte 0
  loc_AE1805: LitI2_Byte &HFF
  loc_AE1807: ImpAdLdI4 MemVar_D93C84
  loc_AE180A: FLdPr Me
  loc_AE180D: MemLdRfVar from_stack_1.global_56
  loc_AE1810: NewIfNullPr IFileSystem3
  loc_AE1813: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AE1818: ILdRf var_88
  loc_AE181B: FLdPr Me
  loc_AE181E: MemStVarAd
  loc_AE1822: FFree1Ad var_88
  loc_AE1825: LitI2_Byte &HFF
  loc_AE1827: ImpAdStI2 MemVar_D93C8A
  loc_AE182A: Call Proc_196_13_BC5130()
  loc_AE182F: LitI4 1
  loc_AE1834: FLdPr Me
  loc_AE1837: MemLdRfVar from_stack_1.global_88
  loc_AE183A: FLdPr Me
  loc_AE183D: MemLdStr global_84
  loc_AE1840: LitI2_Byte 1
  loc_AE1842: FnUBound
  loc_AE1844: ForI4 var_90
  loc_AE184A: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE184F: PopAdLdVar
  loc_AE1850: FLdPr Me
  loc_AE1853: MemLdRfVar from_stack_1.global_60
  loc_AE1856: LdPrVar
  loc_AE1858: LateMemCall
  loc_AE185E: FLdPr Me
  loc_AE1861: MemLdStr global_88
  loc_AE1864: FLdPr Me
  loc_AE1867: MemLdStr global_84
  loc_AE186A: AryLock
  loc_AE186D: Ary1LdRf
  loc_AE186E: FStR4 var_B8
  loc_AE1871: LitStr vbNullString
  loc_AE1874: LitI2_Byte 0
  loc_AE1876: LitI2_Byte 0
  loc_AE1878: LitI2_Byte 0
  loc_AE187A: LitStr "right"
  loc_AE187D: FMemLdR4 var_B8(0)
  loc_AE1882: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AE1887: CVarStr var_C8
  loc_AE188A: PopAdLdVar
  loc_AE188B: FLdPr Me
  loc_AE188E: MemLdRfVar from_stack_1.global_60
  loc_AE1891: LdPrVar
  loc_AE1893: LateMemCall
  loc_AE1899: FFree1Var var_C8 = ""
  loc_AE189C: LitStr vbNullString
  loc_AE189F: LitI2_Byte 0
  loc_AE18A1: LitI2_Byte 0
  loc_AE18A3: LitI2_Byte 0
  loc_AE18A5: LitStr "right"
  loc_AE18A8: FMemLdR4 var_B8(4)
  loc_AE18AD: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AE18B2: CVarStr var_C8
  loc_AE18B5: PopAdLdVar
  loc_AE18B6: FLdPr Me
  loc_AE18B9: MemLdRfVar from_stack_1.global_60
  loc_AE18BC: LdPrVar
  loc_AE18BE: LateMemCall
  loc_AE18C4: FFree1Var var_C8 = ""
  loc_AE18C7: LitStr vbNullString
  loc_AE18CA: LitI2_Byte 0
  loc_AE18CC: LitI2_Byte 0
  loc_AE18CE: LitI2_Byte 0
  loc_AE18D0: LitStr "center"
  loc_AE18D3: FMemLdR4 var_B8(8)
  loc_AE18D8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AE18DD: CVarStr var_C8
  loc_AE18E0: PopAdLdVar
  loc_AE18E1: FLdPr Me
  loc_AE18E4: MemLdRfVar from_stack_1.global_60
  loc_AE18E7: LdPrVar
  loc_AE18E9: LateMemCall
  loc_AE18EF: FFree1Var var_C8 = ""
  loc_AE18F2: LitStr vbNullString
  loc_AE18F5: LitI2_Byte 0
  loc_AE18F7: LitI2_Byte 0
  loc_AE18F9: LitI2_Byte 0
  loc_AE18FB: LitStr "justify"
  loc_AE18FE: FMemLdR4 var_B8(12)
  loc_AE1903: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AE1908: CVarStr var_C8
  loc_AE190B: PopAdLdVar
  loc_AE190C: FLdPr Me
  loc_AE190F: MemLdRfVar from_stack_1.global_60
  loc_AE1912: LdPrVar
  loc_AE1914: LateMemCall
  loc_AE191A: FFree1Var var_C8 = ""
  loc_AE191D: LitI4 0
  loc_AE1922: FStR4 var_B8
  loc_AE1925: AryUnlock
  loc_AE1928: LitVarStr var_A0, "     </tr>"
  loc_AE192D: PopAdLdVar
  loc_AE192E: FLdPr Me
  loc_AE1931: MemLdRfVar from_stack_1.global_60
  loc_AE1934: LdPrVar
  loc_AE1936: LateMemCall
  loc_AE193C: FLdPr Me
  loc_AE193F: MemLdRfVar from_stack_1.global_88
  loc_AE1942: NextI4 var_90, loc_AE184A
  loc_AE1947: Call Proc_196_14_A0C758()
  loc_AE194C: FLdPr Me
  loc_AE194F: MemLdRfVar from_stack_1.global_60
  loc_AE1952: LdPrVar
  loc_AE1954: LateMemCall
  loc_AE195A: LitStr vbNullString
  loc_AE195D: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_AE1962: ExitProcHresult
End Sub

Private Function Proc_196_13_BC5130() 'BC5130
  'Data Table: 44A928
  loc_BC4A6C: LitVarStr var_98, "<html>"
  loc_BC4A71: PopAdLdVar
  loc_BC4A72: FLdPr Me
  loc_BC4A75: MemLdRfVar from_stack_1.global_60
  loc_BC4A78: LdPrVar
  loc_BC4A7A: LateMemCall
  loc_BC4A80: LitVarStr var_98, "<head>"
  loc_BC4A85: PopAdLdVar
  loc_BC4A86: FLdPr Me
  loc_BC4A89: MemLdRfVar from_stack_1.global_60
  loc_BC4A8C: LdPrVar
  loc_BC4A8E: LateMemCall
  loc_BC4A94: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BC4A99: PopAdLdVar
  loc_BC4A9A: FLdPr Me
  loc_BC4A9D: MemLdRfVar from_stack_1.global_60
  loc_BC4AA0: LdPrVar
  loc_BC4AA2: LateMemCall
  loc_BC4AA8: LitStr "<title>"
  loc_BC4AAB: FLdRfVar var_AC
  loc_BC4AAE: FLdPr Me
  loc_BC4AB1:  = Me.Caption
  loc_BC4AB6: ILdRf var_AC
  loc_BC4AB9: ConcatStr
  loc_BC4ABA: FStStrNoPop var_B0
  loc_BC4ABD: LitStr "</title>"
  loc_BC4AC0: ConcatStr
  loc_BC4AC1: CVarStr var_C0
  loc_BC4AC4: PopAdLdVar
  loc_BC4AC5: FLdPr Me
  loc_BC4AC8: MemLdRfVar from_stack_1.global_60
  loc_BC4ACB: LdPrVar
  loc_BC4ACD: LateMemCall
  loc_BC4AD3: FFreeStr var_AC = ""
  loc_BC4ADA: FFree1Var var_C0 = ""
  loc_BC4ADD: LitVarStr var_98, "<style type=""text/css"">"
  loc_BC4AE2: PopAdLdVar
  loc_BC4AE3: FLdPr Me
  loc_BC4AE6: MemLdRfVar from_stack_1.global_60
  loc_BC4AE9: LdPrVar
  loc_BC4AEB: LateMemCall
  loc_BC4AF1: LitVarStr var_98, ".Titulo1 {"
  loc_BC4AF6: PopAdLdVar
  loc_BC4AF7: FLdPr Me
  loc_BC4AFA: MemLdRfVar from_stack_1.global_60
  loc_BC4AFD: LdPrVar
  loc_BC4AFF: LateMemCall
  loc_BC4B05: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC4B0A: PopAdLdVar
  loc_BC4B0B: FLdPr Me
  loc_BC4B0E: MemLdRfVar from_stack_1.global_60
  loc_BC4B11: LdPrVar
  loc_BC4B13: LateMemCall
  loc_BC4B19: LitVarStr var_98, " font-size: 18px;"
  loc_BC4B1E: PopAdLdVar
  loc_BC4B1F: FLdPr Me
  loc_BC4B22: MemLdRfVar from_stack_1.global_60
  loc_BC4B25: LdPrVar
  loc_BC4B27: LateMemCall
  loc_BC4B2D: LitVarStr var_98, " font-weight: bold;"
  loc_BC4B32: PopAdLdVar
  loc_BC4B33: FLdPr Me
  loc_BC4B36: MemLdRfVar from_stack_1.global_60
  loc_BC4B39: LdPrVar
  loc_BC4B3B: LateMemCall
  loc_BC4B41: LitVarStr var_98, "}"
  loc_BC4B46: PopAdLdVar
  loc_BC4B47: FLdPr Me
  loc_BC4B4A: MemLdRfVar from_stack_1.global_60
  loc_BC4B4D: LdPrVar
  loc_BC4B4F: LateMemCall
  loc_BC4B55: LitVarStr var_98, ".Titulo2 {"
  loc_BC4B5A: PopAdLdVar
  loc_BC4B5B: FLdPr Me
  loc_BC4B5E: MemLdRfVar from_stack_1.global_60
  loc_BC4B61: LdPrVar
  loc_BC4B63: LateMemCall
  loc_BC4B69: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC4B6E: PopAdLdVar
  loc_BC4B6F: FLdPr Me
  loc_BC4B72: MemLdRfVar from_stack_1.global_60
  loc_BC4B75: LdPrVar
  loc_BC4B77: LateMemCall
  loc_BC4B7D: LitVarStr var_98, " font-size: 14px;"
  loc_BC4B82: PopAdLdVar
  loc_BC4B83: FLdPr Me
  loc_BC4B86: MemLdRfVar from_stack_1.global_60
  loc_BC4B89: LdPrVar
  loc_BC4B8B: LateMemCall
  loc_BC4B91: LitVarStr var_98, " font-weight: bold;"
  loc_BC4B96: PopAdLdVar
  loc_BC4B97: FLdPr Me
  loc_BC4B9A: MemLdRfVar from_stack_1.global_60
  loc_BC4B9D: LdPrVar
  loc_BC4B9F: LateMemCall
  loc_BC4BA5: LitVarStr var_98, "}"
  loc_BC4BAA: PopAdLdVar
  loc_BC4BAB: FLdPr Me
  loc_BC4BAE: MemLdRfVar from_stack_1.global_60
  loc_BC4BB1: LdPrVar
  loc_BC4BB3: LateMemCall
  loc_BC4BB9: LitVarStr var_98, ".Normal {"
  loc_BC4BBE: PopAdLdVar
  loc_BC4BBF: FLdPr Me
  loc_BC4BC2: MemLdRfVar from_stack_1.global_60
  loc_BC4BC5: LdPrVar
  loc_BC4BC7: LateMemCall
  loc_BC4BCD: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC4BD2: PopAdLdVar
  loc_BC4BD3: FLdPr Me
  loc_BC4BD6: MemLdRfVar from_stack_1.global_60
  loc_BC4BD9: LdPrVar
  loc_BC4BDB: LateMemCall
  loc_BC4BE1: LitVarStr var_98, " font-size: 12px;"
  loc_BC4BE6: PopAdLdVar
  loc_BC4BE7: FLdPr Me
  loc_BC4BEA: MemLdRfVar from_stack_1.global_60
  loc_BC4BED: LdPrVar
  loc_BC4BEF: LateMemCall
  loc_BC4BF5: LitVarStr var_98, " font-style: normal;"
  loc_BC4BFA: PopAdLdVar
  loc_BC4BFB: FLdPr Me
  loc_BC4BFE: MemLdRfVar from_stack_1.global_60
  loc_BC4C01: LdPrVar
  loc_BC4C03: LateMemCall
  loc_BC4C09: LitVarStr var_98, " font-weight: normal;"
  loc_BC4C0E: PopAdLdVar
  loc_BC4C0F: FLdPr Me
  loc_BC4C12: MemLdRfVar from_stack_1.global_60
  loc_BC4C15: LdPrVar
  loc_BC4C17: LateMemCall
  loc_BC4C1D: LitVarStr var_98, " font-variant: normal;"
  loc_BC4C22: PopAdLdVar
  loc_BC4C23: FLdPr Me
  loc_BC4C26: MemLdRfVar from_stack_1.global_60
  loc_BC4C29: LdPrVar
  loc_BC4C2B: LateMemCall
  loc_BC4C31: LitVarStr var_98, "}"
  loc_BC4C36: PopAdLdVar
  loc_BC4C37: FLdPr Me
  loc_BC4C3A: MemLdRfVar from_stack_1.global_60
  loc_BC4C3D: LdPrVar
  loc_BC4C3F: LateMemCall
  loc_BC4C45: LitVarStr var_98, ".Encabezado {"
  loc_BC4C4A: PopAdLdVar
  loc_BC4C4B: FLdPr Me
  loc_BC4C4E: MemLdRfVar from_stack_1.global_60
  loc_BC4C51: LdPrVar
  loc_BC4C53: LateMemCall
  loc_BC4C59: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BC4C5E: PopAdLdVar
  loc_BC4C5F: FLdPr Me
  loc_BC4C62: MemLdRfVar from_stack_1.global_60
  loc_BC4C65: LdPrVar
  loc_BC4C67: LateMemCall
  loc_BC4C6D: LitVarStr var_98, " font-size: 11px;"
  loc_BC4C72: PopAdLdVar
  loc_BC4C73: FLdPr Me
  loc_BC4C76: MemLdRfVar from_stack_1.global_60
  loc_BC4C79: LdPrVar
  loc_BC4C7B: LateMemCall
  loc_BC4C81: LitVarStr var_98, " font-weight: bold;"
  loc_BC4C86: PopAdLdVar
  loc_BC4C87: FLdPr Me
  loc_BC4C8A: MemLdRfVar from_stack_1.global_60
  loc_BC4C8D: LdPrVar
  loc_BC4C8F: LateMemCall
  loc_BC4C95: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BC4C9A: PopAdLdVar
  loc_BC4C9B: FLdPr Me
  loc_BC4C9E: MemLdRfVar from_stack_1.global_60
  loc_BC4CA1: LdPrVar
  loc_BC4CA3: LateMemCall
  loc_BC4CA9: LitVarStr var_98, "}"
  loc_BC4CAE: PopAdLdVar
  loc_BC4CAF: FLdPr Me
  loc_BC4CB2: MemLdRfVar from_stack_1.global_60
  loc_BC4CB5: LdPrVar
  loc_BC4CB7: LateMemCall
  loc_BC4CBD: LitVarStr var_98, ".LineaDato {"
  loc_BC4CC2: PopAdLdVar
  loc_BC4CC3: FLdPr Me
  loc_BC4CC6: MemLdRfVar from_stack_1.global_60
  loc_BC4CC9: LdPrVar
  loc_BC4CCB: LateMemCall
  loc_BC4CD1: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC4CD6: PopAdLdVar
  loc_BC4CD7: FLdPr Me
  loc_BC4CDA: MemLdRfVar from_stack_1.global_60
  loc_BC4CDD: LdPrVar
  loc_BC4CDF: LateMemCall
  loc_BC4CE5: LitVarStr var_98, " font-size: 10px;"
  loc_BC4CEA: PopAdLdVar
  loc_BC4CEB: FLdPr Me
  loc_BC4CEE: MemLdRfVar from_stack_1.global_60
  loc_BC4CF1: LdPrVar
  loc_BC4CF3: LateMemCall
  loc_BC4CF9: LitVarStr var_98, "}"
  loc_BC4CFE: PopAdLdVar
  loc_BC4CFF: FLdPr Me
  loc_BC4D02: MemLdRfVar from_stack_1.global_60
  loc_BC4D05: LdPrVar
  loc_BC4D07: LateMemCall
  loc_BC4D0D: LitVarStr var_98, ".Totales {"
  loc_BC4D12: PopAdLdVar
  loc_BC4D13: FLdPr Me
  loc_BC4D16: MemLdRfVar from_stack_1.global_60
  loc_BC4D19: LdPrVar
  loc_BC4D1B: LateMemCall
  loc_BC4D21: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC4D26: PopAdLdVar
  loc_BC4D27: FLdPr Me
  loc_BC4D2A: MemLdRfVar from_stack_1.global_60
  loc_BC4D2D: LdPrVar
  loc_BC4D2F: LateMemCall
  loc_BC4D35: LitVarStr var_98, " font-size: 12px;"
  loc_BC4D3A: PopAdLdVar
  loc_BC4D3B: FLdPr Me
  loc_BC4D3E: MemLdRfVar from_stack_1.global_60
  loc_BC4D41: LdPrVar
  loc_BC4D43: LateMemCall
  loc_BC4D49: LitVarStr var_98, " font-weight: bold;"
  loc_BC4D4E: PopAdLdVar
  loc_BC4D4F: FLdPr Me
  loc_BC4D52: MemLdRfVar from_stack_1.global_60
  loc_BC4D55: LdPrVar
  loc_BC4D57: LateMemCall
  loc_BC4D5D: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BC4D62: PopAdLdVar
  loc_BC4D63: FLdPr Me
  loc_BC4D66: MemLdRfVar from_stack_1.global_60
  loc_BC4D69: LdPrVar
  loc_BC4D6B: LateMemCall
  loc_BC4D71: LitVarStr var_98, "}"
  loc_BC4D76: PopAdLdVar
  loc_BC4D77: FLdPr Me
  loc_BC4D7A: MemLdRfVar from_stack_1.global_60
  loc_BC4D7D: LdPrVar
  loc_BC4D7F: LateMemCall
  loc_BC4D85: LitVarStr var_98, ".SubTotales {"
  loc_BC4D8A: PopAdLdVar
  loc_BC4D8B: FLdPr Me
  loc_BC4D8E: MemLdRfVar from_stack_1.global_60
  loc_BC4D91: LdPrVar
  loc_BC4D93: LateMemCall
  loc_BC4D99: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC4D9E: PopAdLdVar
  loc_BC4D9F: FLdPr Me
  loc_BC4DA2: MemLdRfVar from_stack_1.global_60
  loc_BC4DA5: LdPrVar
  loc_BC4DA7: LateMemCall
  loc_BC4DAD: LitVarStr var_98, " font-size: 10px;"
  loc_BC4DB2: PopAdLdVar
  loc_BC4DB3: FLdPr Me
  loc_BC4DB6: MemLdRfVar from_stack_1.global_60
  loc_BC4DB9: LdPrVar
  loc_BC4DBB: LateMemCall
  loc_BC4DC1: LitVarStr var_98, " font-weight: bold;"
  loc_BC4DC6: PopAdLdVar
  loc_BC4DC7: FLdPr Me
  loc_BC4DCA: MemLdRfVar from_stack_1.global_60
  loc_BC4DCD: LdPrVar
  loc_BC4DCF: LateMemCall
  loc_BC4DD5: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BC4DDA: PopAdLdVar
  loc_BC4DDB: FLdPr Me
  loc_BC4DDE: MemLdRfVar from_stack_1.global_60
  loc_BC4DE1: LdPrVar
  loc_BC4DE3: LateMemCall
  loc_BC4DE9: LitVarStr var_98, "}"
  loc_BC4DEE: PopAdLdVar
  loc_BC4DEF: FLdPr Me
  loc_BC4DF2: MemLdRfVar from_stack_1.global_60
  loc_BC4DF5: LdPrVar
  loc_BC4DF7: LateMemCall
  loc_BC4DFD: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BC4E02: PopAdLdVar
  loc_BC4E03: FLdPr Me
  loc_BC4E06: MemLdRfVar from_stack_1.global_60
  loc_BC4E09: LdPrVar
  loc_BC4E0B: LateMemCall
  loc_BC4E11: LitVarStr var_98, "</style>"
  loc_BC4E16: PopAdLdVar
  loc_BC4E17: FLdPr Me
  loc_BC4E1A: MemLdRfVar from_stack_1.global_60
  loc_BC4E1D: LdPrVar
  loc_BC4E1F: LateMemCall
  loc_BC4E25: LitI4 0
  loc_BC4E2A: FStStrCopy var_B0
  loc_BC4E2D: FLdRfVar var_B0
  loc_BC4E30: LitI4 0
  loc_BC4E35: FStStrCopy var_AC
  loc_BC4E38: FLdRfVar var_AC
  loc_BC4E3B: LitI2_Byte 0
  loc_BC4E3D: PopTmpLdAd2 var_C2
  loc_BC4E40: FLdPr Me
  loc_BC4E43: MemLdRfVar from_stack_1.global_60
  loc_BC4E46: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BC4E4B: FFreeStr var_AC = ""
  loc_BC4E52: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BC4E57: PopAdLdVar
  loc_BC4E58: FLdPr Me
  loc_BC4E5B: MemLdRfVar from_stack_1.global_60
  loc_BC4E5E: LdPrVar
  loc_BC4E60: LateMemCall
  loc_BC4E66: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BC4E6B: PopAdLdVar
  loc_BC4E6C: FLdPr Me
  loc_BC4E6F: MemLdRfVar from_stack_1.global_60
  loc_BC4E72: LdPrVar
  loc_BC4E74: LateMemCall
  loc_BC4E7A: LitStr "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BC4E7D: LitI2_Byte &H5F
  loc_BC4E7F: CStrUI1
  loc_BC4E81: FStStrNoPop var_AC
  loc_BC4E84: ConcatStr
  loc_BC4E85: FStStrNoPop var_B0
  loc_BC4E88: LitStr """ height="""
  loc_BC4E8B: ConcatStr
  loc_BC4E8C: FStStrNoPop var_C8
  loc_BC4E8F: LitI2_Byte &H3C
  loc_BC4E91: CStrUI1
  loc_BC4E93: FStStrNoPop var_CC
  loc_BC4E96: ConcatStr
  loc_BC4E97: FStStrNoPop var_D0
  loc_BC4E9A: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BC4E9D: ConcatStr
  loc_BC4E9E: FStStrNoPop var_D4
  loc_BC4EA1: LitStr "Municipalidad de Guaymallén"
  loc_BC4EA4: ConcatStr
  loc_BC4EA5: FStStrNoPop var_D8
  loc_BC4EA8: LitStr "</p>"
  loc_BC4EAB: ConcatStr
  loc_BC4EAC: CVarStr var_C0
  loc_BC4EAF: PopAdLdVar
  loc_BC4EB0: FLdPr Me
  loc_BC4EB3: MemLdRfVar from_stack_1.global_60
  loc_BC4EB6: LdPrVar
  loc_BC4EB8: LateMemCall
  loc_BC4EBE: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BC4ECF: FFree1Var var_C0 = ""
  loc_BC4ED2: LitStr "    <p>"
  loc_BC4ED5: FLdRfVar var_AC
  loc_BC4ED8: FLdPr Me
  loc_BC4EDB:  = Me.Caption
  loc_BC4EE0: ILdRf var_AC
  loc_BC4EE3: ConcatStr
  loc_BC4EE4: FStStrNoPop var_B0
  loc_BC4EE7: LitStr "</p></th>"
  loc_BC4EEA: ConcatStr
  loc_BC4EEB: CVarStr var_C0
  loc_BC4EEE: PopAdLdVar
  loc_BC4EEF: FLdPr Me
  loc_BC4EF2: MemLdRfVar from_stack_1.global_60
  loc_BC4EF5: LdPrVar
  loc_BC4EF7: LateMemCall
  loc_BC4EFD: FFreeStr var_AC = ""
  loc_BC4F04: FFree1Var var_C0 = ""
  loc_BC4F07: LitVarStr var_98, "  </tr>"
  loc_BC4F0C: PopAdLdVar
  loc_BC4F0D: FLdPr Me
  loc_BC4F10: MemLdRfVar from_stack_1.global_60
  loc_BC4F13: LdPrVar
  loc_BC4F15: LateMemCall
  loc_BC4F1B: LitVarStr var_98, "  <tr>"
  loc_BC4F20: PopAdLdVar
  loc_BC4F21: FLdPr Me
  loc_BC4F24: MemLdRfVar from_stack_1.global_60
  loc_BC4F27: LdPrVar
  loc_BC4F29: LateMemCall
  loc_BC4F2F: LitVarStr var_98, "    <th colspan=""2""><hr></th>"
  loc_BC4F34: PopAdLdVar
  loc_BC4F35: FLdPr Me
  loc_BC4F38: MemLdRfVar from_stack_1.global_60
  loc_BC4F3B: LdPrVar
  loc_BC4F3D: LateMemCall
  loc_BC4F43: LitVarStr var_98, "  </tr>"
  loc_BC4F48: PopAdLdVar
  loc_BC4F49: FLdPr Me
  loc_BC4F4C: MemLdRfVar from_stack_1.global_60
  loc_BC4F4F: LdPrVar
  loc_BC4F51: LateMemCall
  loc_BC4F57: FLdPr Me
  loc_BC4F5A: MemLdRfVar from_stack_1.global_76
  loc_BC4F5D: NewIfNullAd
  loc_BC4F60: FStAd var_DC 
  loc_BC4F64: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_BC4F69: PopAdLdVar
  loc_BC4F6A: FLdPr Me
  loc_BC4F6D: MemLdRfVar from_stack_1.global_60
  loc_BC4F70: LdPrVar
  loc_BC4F72: LateMemCall
  loc_BC4F78: LitStr "    <td width=""50" & Chr(37) & """><strong>Periodo: </strong>"
  loc_BC4F7B: FLdRfVar var_C2
  loc_BC4F7E: FLdPr var_DC
  loc_BC4F81: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BC4F86: FLdI2 var_C2
  loc_BC4F89: CStrUI1
  loc_BC4F8B: FStStrNoPop var_AC
  loc_BC4F8E: ConcatStr
  loc_BC4F8F: FStStrNoPop var_B0
  loc_BC4F92: LitStr "</td>"
  loc_BC4F95: ConcatStr
  loc_BC4F96: CVarStr var_C0
  loc_BC4F99: PopAdLdVar
  loc_BC4F9A: FLdPr Me
  loc_BC4F9D: MemLdRfVar from_stack_1.global_60
  loc_BC4FA0: LdPrVar
  loc_BC4FA2: LateMemCall
  loc_BC4FA8: FFreeStr var_AC = ""
  loc_BC4FAF: FFree1Var var_C0 = ""
  loc_BC4FB2: LitVarStr var_98, "    <td width=""50" & Chr(37) & """><strong>Tipo de Liquidación: </strong>"
  loc_BC4FB7: FLdRfVar var_C0
  loc_BC4FBA: FLdPr var_DC
  loc_BC4FBD: from_stack_1 = clsliquidacion.DetaTili
  loc_BC4FC2: FLdRfVar var_C0
  loc_BC4FC5: ConcatVar var_EC
  loc_BC4FC9: LitVarStr var_A8, "</td>"
  loc_BC4FCE: ConcatVar var_FC
  loc_BC4FD2: PopAdLdVar
  loc_BC4FD3: FLdPr Me
  loc_BC4FD6: MemLdRfVar from_stack_1.global_60
  loc_BC4FD9: LdPrVar
  loc_BC4FDB: LateMemCall
  loc_BC4FE1: FFreeVar var_C0 = "": var_EC = ""
  loc_BC4FEA: LitVarStr var_98, "  </tr>"
  loc_BC4FEF: PopAdLdVar
  loc_BC4FF0: FLdPr Me
  loc_BC4FF3: MemLdRfVar from_stack_1.global_60
  loc_BC4FF6: LdPrVar
  loc_BC4FF8: LateMemCall
  loc_BC4FFE: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_BC5003: PopAdLdVar
  loc_BC5004: FLdPr Me
  loc_BC5007: MemLdRfVar from_stack_1.global_60
  loc_BC500A: LdPrVar
  loc_BC500C: LateMemCall
  loc_BC5012: LitStr "    <td><strong>Número: </strong>"
  loc_BC5015: FLdRfVar var_C2
  loc_BC5018: FLdPr var_DC
  loc_BC501B: from_stack_1 = clsliquidacion.NumeLiqu
  loc_BC5020: FLdI2 var_C2
  loc_BC5023: CStrUI1
  loc_BC5025: FStStrNoPop var_AC
  loc_BC5028: ConcatStr
  loc_BC5029: FStStrNoPop var_B0
  loc_BC502C: LitStr "</td>"
  loc_BC502F: ConcatStr
  loc_BC5030: CVarStr var_C0
  loc_BC5033: PopAdLdVar
  loc_BC5034: FLdPr Me
  loc_BC5037: MemLdRfVar from_stack_1.global_60
  loc_BC503A: LdPrVar
  loc_BC503C: LateMemCall
  loc_BC5042: FFreeStr var_AC = ""
  loc_BC5049: FFree1Var var_C0 = ""
  loc_BC504C: LitVarStr var_98, "  </tr>"
  loc_BC5051: PopAdLdVar
  loc_BC5052: FLdPr Me
  loc_BC5055: MemLdRfVar from_stack_1.global_60
  loc_BC5058: LdPrVar
  loc_BC505A: LateMemCall
  loc_BC5060: LitNothing
  loc_BC5062: FStAd var_DC 
  loc_BC5066: LitVarStr var_98, "</table>"
  loc_BC506B: PopAdLdVar
  loc_BC506C: FLdPr Me
  loc_BC506F: MemLdRfVar from_stack_1.global_60
  loc_BC5072: LdPrVar
  loc_BC5074: LateMemCall
  loc_BC507A: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BC507F: PopAdLdVar
  loc_BC5080: FLdPr Me
  loc_BC5083: MemLdRfVar from_stack_1.global_60
  loc_BC5086: LdPrVar
  loc_BC5088: LateMemCall
  loc_BC508E: LitVarStr var_98, "  <thead>"
  loc_BC5093: PopAdLdVar
  loc_BC5094: FLdPr Me
  loc_BC5097: MemLdRfVar from_stack_1.global_60
  loc_BC509A: LdPrVar
  loc_BC509C: LateMemCall
  loc_BC50A2: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BC50A7: PopAdLdVar
  loc_BC50A8: FLdPr Me
  loc_BC50AB: MemLdRfVar from_stack_1.global_60
  loc_BC50AE: LdPrVar
  loc_BC50B0: LateMemCall
  loc_BC50B6: LitVarStr var_98, "    <th>Inmueble</th>"
  loc_BC50BB: PopAdLdVar
  loc_BC50BC: FLdPr Me
  loc_BC50BF: MemLdRfVar from_stack_1.global_60
  loc_BC50C2: LdPrVar
  loc_BC50C4: LateMemCall
  loc_BC50CA: LitVarStr var_98, "    <th>Error</th>"
  loc_BC50CF: PopAdLdVar
  loc_BC50D0: FLdPr Me
  loc_BC50D3: MemLdRfVar from_stack_1.global_60
  loc_BC50D6: LdPrVar
  loc_BC50D8: LateMemCall
  loc_BC50DE: LitVarStr var_98, "    <th>Fecha</sup></th>"
  loc_BC50E3: PopAdLdVar
  loc_BC50E4: FLdPr Me
  loc_BC50E7: MemLdRfVar from_stack_1.global_60
  loc_BC50EA: LdPrVar
  loc_BC50EC: LateMemCall
  loc_BC50F2: LitVarStr var_98, "    <th>Detalle</th>"
  loc_BC50F7: PopAdLdVar
  loc_BC50F8: FLdPr Me
  loc_BC50FB: MemLdRfVar from_stack_1.global_60
  loc_BC50FE: LdPrVar
  loc_BC5100: LateMemCall
  loc_BC5106: LitVarStr var_98, "    </tr>"
  loc_BC510B: PopAdLdVar
  loc_BC510C: FLdPr Me
  loc_BC510F: MemLdRfVar from_stack_1.global_60
  loc_BC5112: LdPrVar
  loc_BC5114: LateMemCall
  loc_BC511A: LitVarStr var_98, "  </thead>"
  loc_BC511F: PopAdLdVar
  loc_BC5120: FLdPr Me
  loc_BC5123: MemLdRfVar from_stack_1.global_60
  loc_BC5126: LdPrVar
  loc_BC5128: LateMemCall
  loc_BC512E: ExitProcHresult
End Function

Private Function Proc_196_14_A0C758() 'A0C758
  'Data Table: 44A928
  loc_A0C718: LitVarStr var_94, "</table>"
  loc_A0C71D: PopAdLdVar
  loc_A0C71E: FLdPr Me
  loc_A0C721: MemLdRfVar from_stack_1.global_60
  loc_A0C724: LdPrVar
  loc_A0C726: LateMemCall
  loc_A0C72C: LitVarStr var_94, "</body>"
  loc_A0C731: PopAdLdVar
  loc_A0C732: FLdPr Me
  loc_A0C735: MemLdRfVar from_stack_1.global_60
  loc_A0C738: LdPrVar
  loc_A0C73A: LateMemCall
  loc_A0C740: LitVarStr var_94, "</html>"
  loc_A0C745: PopAdLdVar
  loc_A0C746: FLdPr Me
  loc_A0C749: MemLdRfVar from_stack_1.global_60
  loc_A0C74C: LdPrVar
  loc_A0C74E: LateMemCall
  loc_A0C754: ExitProcHresult
  loc_A0C755: GeI2
  loc_A0C756: NeR8
End Function
