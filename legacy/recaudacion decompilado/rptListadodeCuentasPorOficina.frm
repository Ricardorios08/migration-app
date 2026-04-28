VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeCuentasPorOficina
  Caption = "Listado de Cuentas"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeCuentasPorOficina.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10116
  ClientHeight = 3516
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame6
    Left = 120
    Top = 0
    Width = 9855
    Height = 1935
    TabIndex = 9
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 8040
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox FechVencMsk
      Left = 3195
      Top = 720
      Width = 1455
      Height = 345
      TabIndex = 10
      OleObjectBlob = "rptListadodeCuentasPorOficina.frx":08CA
    End
    Begin VB.Label Label4
      Caption = "Fecha de Vencimiento:"
      Left = 720
      Top = 720
      Width = 2445
      Height = 300
      TabIndex = 11
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3264
    Width = 10116
    Height = 252
    TabIndex = 8
    OleObjectBlob = "rptListadodeCuentasPorOficina.frx":097A
  End
  Begin VB.CommandButton cmdSalir
    Left = 8520
    Top = 2280
    Width = 855
    Height = 735
    TabIndex = 4
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "rptListadodeCuentasPorOficina.frx":09FA
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeCuentasPorOficina.frx":0C4C
    Left = 9120
    Top = 2040
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 2040
    Width = 3495
    Height = 1215
    TabIndex = 6
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 12
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 2
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2040
    Width = 4095
    Height = 1215
    TabIndex = 5
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 1
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 0
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8520
    Top = 2640
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 7
    OleObjectBlob = "rptListadodeCuentasPorOficina.frx":0CB0
  End
End

Attribute VB_Name = "rptListadodeCuentasPorOficina"

Public sImprimir As String
Public iCodiOfic As Byte
Public BuscarCLS As New Class
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_0056237C
  bStruc(16) As Byte ' String fields: 4
End Type


Private Sub cmdPredeterminada_Click() '9CCF38
  'Data Table: 462764
  loc_9CCF20: LitI2_Byte 0
  loc_9CCF22: ILdRf Me
  loc_9CCF25: CastAd
  loc_9CCF28: FStAdFunc var_88
  loc_9CCF2B: FLdRfVar var_88
  loc_9CCF2E: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CCF33: FFree1Ad var_88
  loc_9CCF36: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A128F8
  'Data Table: 462764
  loc_A128C0: FLdPr Me
  loc_A128C3: VCallAd Control_ID_statusBar
  loc_A128C6: FStAdFunc var_88
  loc_A128C9: FLdPr var_88
  loc_A128CC: LateIdLdVar var_98 DispID_1 0
  loc_A128D3: CStrVarTmp
  loc_A128D4: CVarStr var_A8
  loc_A128D7: PopAdLdVar
  loc_A128D8: FLdPr Me
  loc_A128DB: VCallAd Control_ID_statusBar
  loc_A128DE: FStAdFunc var_BC
  loc_A128E1: FLdPr var_BC
  loc_A128E4: LateIdSt
  loc_A128E9: FFreeAd var_88 = ""
  loc_A128F0: FFreeVar var_98 = ""
  loc_A128F7: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E2A8C
  'Data Table: 462764
  loc_9E2A70: LitI2_Byte &HFF
  loc_9E2A72: LitI2_Byte 0
  loc_9E2A74: ILdRf Me
  loc_9E2A77: CastAd
  loc_9E2A7A: FStAdFunc var_88
  loc_9E2A7D: FLdRfVar var_88
  loc_9E2A80: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E2A85: FFree1Ad var_88
  loc_9E2A88: ExitProcHresult
  loc_9E2A89: LeCyR8
  loc_9E2A8A: FnLBound
End Sub

Private Sub cmdPrevia_Click() '9CCEA0
  'Data Table: 462764
  loc_9CCE88: ILdRf Me
  loc_9CCE8B: CastAd
  loc_9CCE8E: FStAdFunc var_88
  loc_9CCE91: FLdRfVar var_88
  loc_9CCE94: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CCE99: FFree1Ad var_88
  loc_9CCE9C: ExitProcHresult
End Sub

Private Sub Form_Load() 'A7C2E4
  'Data Table: 462764
  loc_A7C25C: ILdRf Me
  loc_A7C25F: CastAd
  loc_A7C262: FStAdFunc var_88
  loc_A7C265: FLdRfVar var_88
  loc_A7C268: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_A7C26D: FFree1Ad var_88
  loc_A7C270: Call cmdNueva_Click()
  loc_A7C275: FLdPr Me
  loc_A7C278: MemLdUI1 iCodiOfic
  loc_A7C27C: FStUI1 var_8A
  loc_A7C280: FLdUI1
  loc_A7C284: LitI2_Byte 1
  loc_A7C286: CUI1I2
  loc_A7C288: EqI2
  loc_A7C289: BranchF loc_A7C299
  loc_A7C28C: LitStr "Inmueble"
  loc_A7C28F: FLdPr Me
  loc_A7C292: MemStStrCopy
  loc_A7C296: Branch loc_A7C2E1
  loc_A7C299: FLdUI1
  loc_A7C29D: LitI2_Byte 2
  loc_A7C29F: CUI1I2
  loc_A7C2A1: EqI2
  loc_A7C2A2: BranchF loc_A7C2B2
  loc_A7C2A5: LitStr "Comercio"
  loc_A7C2A8: FLdPr Me
  loc_A7C2AB: MemStStrCopy
  loc_A7C2AF: Branch loc_A7C2E1
  loc_A7C2B2: FLdUI1
  loc_A7C2B6: LitI2_Byte 3
  loc_A7C2B8: CUI1I2
  loc_A7C2BA: EqI2
  loc_A7C2BB: BranchF loc_A7C2CB
  loc_A7C2BE: LitStr "Deudores Varios"
  loc_A7C2C1: FLdPr Me
  loc_A7C2C4: MemStStrCopy
  loc_A7C2C8: Branch loc_A7C2E1
  loc_A7C2CB: FLdUI1
  loc_A7C2CF: LitI2_Byte 4
  loc_A7C2D1: CUI1I2
  loc_A7C2D3: EqI2
  loc_A7C2D4: BranchF loc_A7C2E1
  loc_A7C2D7: LitStr "Cementerio"
  loc_A7C2DA: FLdPr Me
  loc_A7C2DD: MemStStrCopy
  loc_A7C2E1: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CD198
  'Data Table: 462764
  loc_9CD180: FLdPr Me
  loc_9CD183: VCallAd Control_ID_wbbReporte
  loc_9CD186: FStAdFunc var_88
  loc_9CD189: FLdRfVar var_88
  loc_9CD18C: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CD191: FFree1Ad var_88
  loc_9CD194: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E2B2C
  'Data Table: 462764
  loc_9E2B10: LitI2_Byte 0
  loc_9E2B12: PopTmpLdAd2 var_8A
  loc_9E2B15: ILdRf Me
  loc_9E2B18: CastAd
  loc_9E2B1B: FStAdFunc var_88
  loc_9E2B1E: FLdRfVar var_88
  loc_9E2B21: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E2B26: FFree1Ad var_88
  loc_9E2B29: ExitProcHresult
  loc_9E2B2A: FnLBound
End Sub

Private Sub cmdNueva_Click() 'A564F8
  'Data Table: 462764
  loc_A5649C: LitI2_Byte 0
  loc_A5649E: FLdPr Me
  loc_A564A1: MemStI2 bGenerado
  loc_A564A4: LitI2_Byte 0
  loc_A564A6: ILdRf Me
  loc_A564A9: CastAd
  loc_A564AC: FStAdFunc var_88
  loc_A564AF: FLdRfVar var_88
  loc_A564B2: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A564B7: FFree1Ad var_88
  loc_A564BA: LitI2_Byte 0
  loc_A564BC: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A564C1: CStrDate
  loc_A564C3: CVarStr var_98
  loc_A564C6: PopAdLdVar
  loc_A564C7: FLdPr Me
  loc_A564CA: VCallAd Control_ID_FechVencMsk
  loc_A564CD: FStAdFunc var_88
  loc_A564D0: FLdPr var_88
  loc_A564D3: LateIdSt
  loc_A564D8: FFree1Ad var_88
  loc_A564DB: FFree1Var var_98 = ""
  loc_A564DE: Call HabilitarCriterio()
  loc_A564E3: ILdRf Me
  loc_A564E6: CastAd
  loc_A564E9: FStAdFunc var_88
  loc_A564EC: FLdRfVar var_88
  loc_A564EF: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A564F4: FFree1Ad var_88
  loc_A564F7: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A054AC
  'Data Table: 462764
  loc_A0547C: LitVarStr var_94, "Cerrando..."
  loc_A05481: PopAdLdVar
  loc_A05482: FLdPr Me
  loc_A05485: VCallAd Control_ID_statusBar
  loc_A05488: FStAdFunc var_A8
  loc_A0548B: FLdPr var_A8
  loc_A0548E: LateIdSt
  loc_A05493: FFree1Ad var_A8
  loc_A05496: ILdRf Me
  loc_A05499: FStAdNoPop
  loc_A0549D: ImpAdLdRf MemVar_D9C5D8
  loc_A054A0: NewIfNullPr Global
  loc_A054A3: Global.Unload from_stack_1
  loc_A054A8: FFree1Ad var_A8
  loc_A054AB: ExitProcHresult
End Sub

Private Sub FechVencMsk_UnknownEvent_0 '9BEE50
  'Data Table: 462764
  loc_9BEE3C: FLdPr Me
  loc_9BEE3F: VCallAd Control_ID_FechVencMsk
  loc_9BEE42: CVarAd
  loc_9BEE46: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BEE4B: FFree1Var var_94 = ""
  loc_9BEE4E: ExitProcHresult
End Sub

Private Function FechVencMsk_UnknownEvent_8(arg_C) 'A81DD4
  'Data Table: 462764
  loc_A81D4C: FLdPr Me
  loc_A81D4F: VCallAd Control_ID_FechVencMsk
  loc_A81D52: FStAdFunc var_88
  loc_A81D55: FLdPr var_88
  loc_A81D58: LateIdLdVar var_98 DispID_13 -32767
  loc_A81D5F: CBoolVar
  loc_A81D61: LitI2_Byte &HFF
  loc_A81D63: EqI2
  loc_A81D64: FFree1Ad var_88
  loc_A81D67: FFree1Var var_98 = ""
  loc_A81D6A: BranchF loc_A81DD1
  loc_A81D6D: FLdPr Me
  loc_A81D70: VCallAd Control_ID_FechVencMsk
  loc_A81D73: FStAdFunc var_88
  loc_A81D76: FLdPr var_88
  loc_A81D79: LateIdLdVar var_98 DispID_15 0
  loc_A81D80: CStrVarTmp
  loc_A81D81: FStStrNoPop var_9C
  loc_A81D84: ImpAdCallI2 Proc_18_6_A08898()
  loc_A81D89: FStStrNoPop var_A0
  loc_A81D8C: FLdPr Me
  loc_A81D8F: MemStStrCopy
  loc_A81D93: FFreeStr var_9C = ""
  loc_A81D9A: FFree1Ad var_88
  loc_A81D9D: FFree1Var var_98 = ""
  loc_A81DA0: FLdPr Me
  loc_A81DA3: MemLdStr global_120
  loc_A81DA6: LitStr vbNullString
  loc_A81DA9: NeStr
  loc_A81DAB: BranchF loc_A81DD1
  loc_A81DAE: FLdPr Me
  loc_A81DB1: MemLdStr global_120
  loc_A81DB4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A81DB9: FLdPr Me
  loc_A81DBC: VCallAd Control_ID_FechVencMsk
  loc_A81DBF: CVarAd
  loc_A81DC3: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A81DC8: FFree1Var var_98 = ""
  loc_A81DCB: LitI2_Byte &HFF
  loc_A81DCD: IStI2 arg_C
  loc_A81DD0: ExitProcHresult
  loc_A81DD1: ExitProcHresult
  loc_A81DD2: NeI2
End Function

Private Sub FechVencMsk_KeyPress(KeyAscii As Integer) 'A21F38
  'Data Table: 462764
  loc_A21EF0: ILdI2 KeyAscii
  loc_A21EF3: CI4UI1
  loc_A21EF4: LitI4 &H20
  loc_A21EF9: EqI4
  loc_A21EFA: BranchF loc_A21F37
  loc_A21EFD: LitVar_Missing var_A4
  loc_A21F00: PopAdLdVar
  loc_A21F01: LitVarI4
  loc_A21F09: PopAdLdVar
  loc_A21F0A: ImpAdLdRf MemVar_D930A4
  loc_A21F0D: NewIfNullPr frmCalendario
  loc_A21F10: frmCalendario.Show from_stack_1, from_stack_2
  loc_A21F15: ImpAdLdRf MemVar_D93028
  loc_A21F18: CDargRef
  loc_A21F1C: FLdPr Me
  loc_A21F1F: VCallAd Control_ID_FechVencMsk
  loc_A21F22: FStAdFunc var_A8
  loc_A21F25: FLdPr var_A8
  loc_A21F28: LateIdSt
  loc_A21F2D: FFree1Ad var_A8
  loc_A21F30: LitStr vbNullString
  loc_A21F33: ImpAdStStrCopy MemVar_D93028
  loc_A21F37: ExitProcHresult
End Sub

Public Function sImprimirGet() '463224
  sImprimirGet = sImprimir
End Function

Public Sub sImprimirPut(Value) '463233
  sImprimir = Value
End Sub

Public Function iCodiOficGet() '463242
  iCodiOficGet = iCodiOfic
End Function

Public Sub iCodiOficPut(Value) '463251
  iCodiOfic = Value
End Sub

Public Function global_4597604Get() '463260
  global_4597604Get = global_4597604
End Function

Public Sub global_4597604Put(Value) '46327A
  global_4597604 = Value
End Sub

Public Sub global_4597604Set(Value) '463294
  global_4597604 = Value
End Sub

Public Function bLogosGet() '4632AE
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4632BD
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4632CC
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4632DB
  bGenerado = Value
End Sub

Public Sub GeneraXLS() '9BED7C
  'Data Table: 462764
  loc_9BED64: LitI2_Byte 0
  loc_9BED66: FLdPr Me
  loc_9BED69: MemStI2 bLogos
  loc_9BED6C: Call GeneraHTML()
  loc_9BED71: LitI2_Byte &HFF
  loc_9BED73: FLdPr Me
  loc_9BED76: MemStI2 bLogos
  loc_9BED79: ExitProcHresult
  loc_9BED7A: FStVarCopyObj var_13F9
End Sub

Public Sub HabilitarCriterio() '9AEFA4
  'Data Table: 462764
  loc_9AEFA0: ExitProcHresult
  loc_9AEFA1: MemLdFPR8 global_1243
End Sub

Public Sub GeneraReporte() 'B96950
  'Data Table: 462764
  loc_B96404: FLdPr Me
  loc_B96407: MemLdI2 bGenerado
  loc_B9640A: BranchF loc_B9640E
  loc_B9640D: ExitProcHresult
  loc_B9640E: LitVarStr var_94, "Generando reporte..."
  loc_B96413: PopAdLdVar
  loc_B96414: FLdPr Me
  loc_B96417: VCallAd Control_ID_statusBar
  loc_B9641A: FStAdFunc var_A8
  loc_B9641D: FLdPr var_A8
  loc_B96420: LateIdSt
  loc_B96425: FFree1Ad var_A8
  loc_B96428: LitI4 &HB
  loc_B9642D: CI2I4
  loc_B9642E: FLdPr Me
  loc_B96431: Me.MousePointer = from_stack_1
  loc_B96436: FLdPr Me
  loc_B96439: MemLdRfVar from_stack_1.BuscarCLS
  loc_B9643C: NewIfNullAd
  loc_B9643F: FStAd var_AC 
  loc_B96443: FLdPr Me
  loc_B96446: MemLdUI1 iCodiOfic
  loc_B9644A: CI2UI1
  loc_B9644C: LitI2_Byte 1
  loc_B9644E: EqI2
  loc_B9644F: BranchF loc_B96463
  loc_B96452: FLdPr Me
  loc_B96455: MemLdStr sImprimir
  loc_B96458: FLdPr var_AC
  loc_B9645B: Call clsbase.RedefineRS(from_stack_1v)
  loc_B96460: Branch loc_B96471
  loc_B96463: FLdPr Me
  loc_B96466: MemLdStr sImprimir
  loc_B96469: FLdPr var_AC
  loc_B9646C: Call clsbase.RedefineRS(from_stack_1v)
  loc_B96471: FLdRfVar var_B0
  loc_B96474: FLdPr var_AC
  loc_B96477: from_stack_1 = clsbase.RecordCount
  loc_B9647C: ILdRf var_B0
  loc_B9647F: LitI4 0
  loc_B96484: EqI4
  loc_B96485: BranchF loc_B96493
  loc_B96488: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B9648B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B96490: Branch loc_B96924
  loc_B96493: LitI4 0
  loc_B96498: FLdRfVar var_B0
  loc_B9649B: FLdPr var_AC
  loc_B9649E: from_stack_1 = clsbase.RecordCount
  loc_B964A3: ILdRf var_B0
  loc_B964A6: FLdPr Me
  loc_B964A9: MemLdRfVar from_stack_1.global_112
  loc_B964AC: Redim
  loc_B964B6: FLdPr var_AC
  loc_B964B9: Call clsbase.MoveFirst()
  loc_B964BE: LitI4 1
  loc_B964C3: FLdPr Me
  loc_B964C6: MemLdRfVar from_stack_1.global_116
  loc_B964C9: FLdPr Me
  loc_B964CC: MemLdStr global_112
  loc_B964CF: LitI2_Byte 1
  loc_B964D1: FnUBound
  loc_B964D3: ForI4 var_B8
  loc_B964D9: FLdRfVar var_C0
  loc_B964DC: LitVarStr var_94, "CuenCtct"
  loc_B964E1: PopAdLdVar
  loc_B964E2: FLdRfVar var_BC
  loc_B964E5: FLdRfVar var_A8
  loc_B964E8: FLdPr var_AC
  loc_B964EB: from_stack_1v = clsbase.RsFrmGet()
  loc_B964F0: FLdPr var_A8
  loc_B964F3:  = Me.Fields
  loc_B964F8: FLdPr var_BC
  loc_B964FB: from_stack_2 = Me.Item(from_stack_1)
  loc_B96500: LitI2_Byte 0
  loc_B96502: LitVar_Missing var_E4
  loc_B96505: LitI2_Byte 0
  loc_B96507: FLdZeroAd var_C0
  loc_B9650A: CVarAd
  loc_B9650E: PopAdLdVar
  loc_B9650F: FLdPr Me
  loc_B96512: MemLdStr global_116
  loc_B96515: FLdPr Me
  loc_B96518: MemLdStr global_112
  loc_B9651B: AryLock
  loc_B9651E: Ary1LdPr
  loc_B9651F: MemLdRfVar from_stack_1.global_0
  loc_B96522: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B96527: AryUnlock
  loc_B9652A: FFreeAd var_A8 = ""
  loc_B96531: FFreeVar var_D4 = ""
  loc_B96538: FLdRfVar var_C0
  loc_B9653B: LitVarStr var_94, "DetaPers"
  loc_B96540: PopAdLdVar
  loc_B96541: FLdRfVar var_BC
  loc_B96544: FLdRfVar var_A8
  loc_B96547: FLdPr var_AC
  loc_B9654A: from_stack_1v = clsbase.RsFrmGet()
  loc_B9654F: FLdPr var_A8
  loc_B96552:  = Me.Fields
  loc_B96557: FLdPr var_BC
  loc_B9655A: from_stack_2 = Me.Item(from_stack_1)
  loc_B9655F: LitI2_Byte 0
  loc_B96561: LitVar_Missing var_E4
  loc_B96564: LitI2_Byte 0
  loc_B96566: FLdZeroAd var_C0
  loc_B96569: CVarAd
  loc_B9656D: PopAdLdVar
  loc_B9656E: FLdPr Me
  loc_B96571: MemLdStr global_116
  loc_B96574: FLdPr Me
  loc_B96577: MemLdStr global_112
  loc_B9657A: AryLock
  loc_B9657D: Ary1LdPr
  loc_B9657E: MemLdRfVar from_stack_1.global_4
  loc_B96581: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B96586: AryUnlock
  loc_B96589: FFreeAd var_A8 = ""
  loc_B96590: FFreeVar var_D4 = ""
  loc_B96597: FLdRfVar var_C0
  loc_B9659A: LitVarStr var_94, "CucuPers"
  loc_B9659F: PopAdLdVar
  loc_B965A0: FLdRfVar var_BC
  loc_B965A3: FLdRfVar var_A8
  loc_B965A6: FLdPr var_AC
  loc_B965A9: from_stack_1v = clsbase.RsFrmGet()
  loc_B965AE: FLdPr var_A8
  loc_B965B1:  = Me.Fields
  loc_B965B6: FLdPr var_BC
  loc_B965B9: from_stack_2 = Me.Item(from_stack_1)
  loc_B965BE: LitI2_Byte 0
  loc_B965C0: LitVar_Missing var_E4
  loc_B965C3: LitI2_Byte 0
  loc_B965C5: FLdZeroAd var_C0
  loc_B965C8: CVarAd
  loc_B965CC: PopAdLdVar
  loc_B965CD: FLdPr Me
  loc_B965D0: MemLdStr global_116
  loc_B965D3: FLdPr Me
  loc_B965D6: MemLdStr global_112
  loc_B965D9: AryLock
  loc_B965DC: Ary1LdPr
  loc_B965DD: MemLdRfVar from_stack_1.global_8
  loc_B965E0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B965E5: AryUnlock
  loc_B965E8: FFreeAd var_A8 = ""
  loc_B965EF: FFreeVar var_D4 = ""
  loc_B965F6: FLdPr Me
  loc_B965F9: VCallAd Control_ID_FechVencMsk
  loc_B965FC: FStAdFunc var_110
  loc_B965FF: FLdPr var_110
  loc_B96602: LateIdLdVar var_120 DispID_15 0
  loc_B96609: PopAd
  loc_B9660B: LitStr "CALL nDeuda`('"
  loc_B9660E: FLdPr Me
  loc_B96611: MemLdUI1 iCodiOfic
  loc_B96615: CStrI2
  loc_B96617: FStStrNoPop var_E8
  loc_B9661A: ConcatStr
  loc_B9661B: FStStrNoPop var_EC
  loc_B9661E: LitStr "', '"
  loc_B96621: ConcatStr
  loc_B96622: CVarStr var_E4
  loc_B96625: FLdRfVar var_D4
  loc_B96628: FLdRfVar var_C0
  loc_B9662B: LitVarStr var_94, "CuenCtct"
  loc_B96630: PopAdLdVar
  loc_B96631: FLdRfVar var_BC
  loc_B96634: FLdRfVar var_A8
  loc_B96637: FLdPr var_AC
  loc_B9663A: from_stack_1v = clsbase.RsFrmGet()
  loc_B9663F: FLdPr var_A8
  loc_B96642:  = Me.Fields
  loc_B96647: FLdPr var_BC
  loc_B9664A: from_stack_2 = Me.Item(from_stack_1)
  loc_B9664F: FLdPr var_C0
  loc_B96652:  = Me.Value
  loc_B96657: FLdRfVar var_D4
  loc_B9665A: ConcatVar var_FC
  loc_B9665E: LitVarStr var_A4, "', '"
  loc_B96663: ConcatVar var_10C
  loc_B96667: LitI4 1
  loc_B9666C: LitI4 1
  loc_B96671: LitVarStr var_140, "yyyy-mm-dd"
  loc_B96676: FStVarCopyObj var_150
  loc_B96679: FLdRfVar var_150
  loc_B9667C: FLdRfVar var_120
  loc_B9667F: CStrVarTmp
  loc_B96680: CVarStr var_130
  loc_B96683: FLdRfVar var_160
  loc_B96686: ImpAdCallFPR4  = Format(, )
  loc_B9668B: FLdRfVar var_160
  loc_B9668E: ConcatVar var_170
  loc_B96692: LitVarStr var_180, "')"
  loc_B96697: ConcatVar var_190
  loc_B9669B: CStrVarVal var_194
  loc_B9669F: FLdPr Me
  loc_B966A2: MemLdRfVar from_stack_1.global_108
  loc_B966A5: NewIfNullPr clsctacte
  loc_B966A8: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B966AD: FFreeStr var_E8 = "": var_EC = ""
  loc_B966B6: FFreeAd var_A8 = "": var_BC = "": var_C0 = ""
  loc_B966C1: FFreeVar var_E4 = "": var_D4 = "": var_FC = "": var_120 = "": var_130 = "": var_150 = "": var_10C = "": var_160 = "": var_170 = ""
  loc_B966D8: LitI2_Byte 0
  loc_B966DA: CR8I2
  loc_B966DB: FLdPr Me
  loc_B966DE: MemStFPR8 global_68
  loc_B966E1: LitStr "SELECT IFNULL(SUM(SaldCtct),0) SaldCtct, IFNULL(SUM(RecaCtct),0) RecaCtct FROM tmp_ctacteboleto WHERE tmp_ctacteboleto.FeveCtct >= '1000-01-01'"
  loc_B966E4: FLdPr Me
  loc_B966E7: MemLdRfVar from_stack_1.global_108
  loc_B966EA: NewIfNullPr clsctacte
  loc_B966ED: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B966F2: FLdRfVar var_B0
  loc_B966F5: FLdPr Me
  loc_B966F8: MemLdRfVar from_stack_1.global_108
  loc_B966FB: NewIfNullPr clsctacte
  loc_B966FE: from_stack_1 = clsctacte.RecordCount
  loc_B96703: ILdRf var_B0
  loc_B96706: LitI4 0
  loc_B9670B: GtI4
  loc_B9670C: BranchF loc_B967A9
  loc_B9670F: FLdRfVar var_E4
  loc_B96712: FLdRfVar var_19C
  loc_B96715: LitVarStr var_A4, "RecaCtct"
  loc_B9671A: PopAdLdVar
  loc_B9671B: FLdRfVar var_198
  loc_B9671E: FLdRfVar var_110
  loc_B96721: FLdPr Me
  loc_B96724: MemLdRfVar from_stack_1.global_108
  loc_B96727: NewIfNullPr clsctacte
  loc_B9672A: from_stack_1v = clsctacte.RsFrmGet()
  loc_B9672F: FLdPr var_110
  loc_B96732:  = Me.Fields
  loc_B96737: FLdPr var_198
  loc_B9673A: from_stack_2 = Me.Item(from_stack_1)
  loc_B9673F: FLdPr var_19C
  loc_B96742:  = Me.Value
  loc_B96747: FLdRfVar var_D4
  loc_B9674A: FLdRfVar var_C0
  loc_B9674D: LitVarStr var_94, "SaldCtct"
  loc_B96752: PopAdLdVar
  loc_B96753: FLdRfVar var_BC
  loc_B96756: FLdRfVar var_A8
  loc_B96759: FLdPr Me
  loc_B9675C: MemLdRfVar from_stack_1.global_108
  loc_B9675F: NewIfNullPr clsctacte
  loc_B96762: from_stack_1v = clsctacte.RsFrmGet()
  loc_B96767: FLdPr var_A8
  loc_B9676A:  = Me.Fields
  loc_B9676F: FLdPr var_BC
  loc_B96772: from_stack_2 = Me.Item(from_stack_1)
  loc_B96777: FLdPr var_C0
  loc_B9677A:  = Me.Value
  loc_B9677F: FLdRfVar var_D4
  loc_B96782: FnCDblVar
  loc_B96784: FLdRfVar var_E4
  loc_B96787: FnCDblVar
  loc_B96789: AddR8
  loc_B9678A: FLdPr Me
  loc_B9678D: MemStFPR8 global_68
  loc_B96790: FFreeAd var_A8 = "": var_BC = "": var_C0 = "": var_110 = "": var_198 = ""
  loc_B9679F: FFreeVar var_D4 = ""
  loc_B967A6: Branch loc_B967B2
  loc_B967A9: LitI2_Byte 0
  loc_B967AB: CR8I2
  loc_B967AC: FLdPr Me
  loc_B967AF: MemStFPR8 global_68
  loc_B967B2: LitI2_Byte 0
  loc_B967B4: CR8I2
  loc_B967B5: FLdPr Me
  loc_B967B8: MemStFPR8 global_76
  loc_B967BB: LitStr "SELECT tmp_ctacteboleto.NumeApre, SUM(SaldCtct) as SaldCtct, SUM(RecaCtct) as RecaCtct, apremio.FealApre, apremio.CapiApre, apremio.RecaApre, apremio.CodiReca, apremio.CodiOfju,"
  loc_B967BE: LitStr " IF(apremio.EstaApre IN (1,8,10,11,12), (SELECT fnGastos(tmp_ctacteboleto.NumeApre,apremio.CodiInju,instapre.FealInap,apremio.CapiApre,apremio.RecaApre,apremio.CodiReca,apremio.CodiOfju) ),0 ) DeudApre"
  loc_B967C1: ConcatStr
  loc_B967C2: FStStrNoPop var_E8
  loc_B967C5: LitStr " FROM tmp_ctacteboleto "
  loc_B967C8: ConcatStr
  loc_B967C9: FStStrNoPop var_EC
  loc_B967CC: LitStr " INNER JOIN apremio ON apremio.NumeApre = tmp_ctacteboleto.NumeApre"
  loc_B967CF: ConcatStr
  loc_B967D0: FStStrNoPop var_194
  loc_B967D3: LitStr " INNER JOIN instapre ON instapre.NumeApre = apremio.NumeApre AND instapre.CodiInju = apremio.CodiInju"
  loc_B967D6: ConcatStr
  loc_B967D7: FStStrNoPop var_1A0
  loc_B967DA: LitStr " WHERE tmp_ctacteboleto.NumeApre <> 0 AND apremio.EstaApre IN (1,8,11,12) AND SaldCtct > 0"
  loc_B967DD: ConcatStr
  loc_B967DE: FStStrNoPop var_1A4
  loc_B967E1: LitStr " GROUP BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.NumeApre"
  loc_B967E4: ConcatStr
  loc_B967E5: FStStrNoPop var_1A8
  loc_B967E8: FLdPr Me
  loc_B967EB: MemLdRfVar from_stack_1.global_108
  loc_B967EE: NewIfNullPr clsctacte
  loc_B967F1: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B967F6: FFreeStr var_E8 = "": var_EC = "": var_194 = "": var_1A0 = "": var_1A4 = ""
  loc_B96805: FLdRfVar var_B0
  loc_B96808: FLdPr Me
  loc_B9680B: MemLdRfVar from_stack_1.global_108
  loc_B9680E: NewIfNullPr clsctacte
  loc_B96811: from_stack_1 = clsctacte.RecordCount
  loc_B96816: ILdRf var_B0
  loc_B96819: LitI4 0
  loc_B9681E: GtI4
  loc_B9681F: BranchF loc_B968C7
  loc_B96822: FLdRfVar var_1AA
  loc_B96825: FLdRfVar var_A8
  loc_B96828: FLdPr Me
  loc_B9682B: MemLdRfVar from_stack_1.global_108
  loc_B9682E: NewIfNullPr clsctacte
  loc_B96831: from_stack_1v = clsctacte.RsFrmGet()
  loc_B96836: FLdPr var_A8
  loc_B96839:  = Me.EOF
  loc_B9683E: FLdI2 var_1AA
  loc_B96841: NotI4
  loc_B96842: FFree1Ad var_A8
  loc_B96845: BranchF loc_B968C7
  loc_B96848: FLdPr Me
  loc_B9684B: MemLdFPR8 global_76
  loc_B9684E: CVarR8
  loc_B96852: FLdRfVar var_D4
  loc_B96855: FLdRfVar var_C0
  loc_B96858: LitVarStr var_94, "DeudApre"
  loc_B9685D: PopAdLdVar
  loc_B9685E: FLdRfVar var_BC
  loc_B96861: FLdRfVar var_A8
  loc_B96864: FLdPr Me
  loc_B96867: MemLdRfVar from_stack_1.global_108
  loc_B9686A: NewIfNullPr clsctacte
  loc_B9686D: from_stack_1v = clsctacte.RsFrmGet()
  loc_B96872: FLdPr var_A8
  loc_B96875:  = Me.Fields
  loc_B9687A: FLdPr var_BC
  loc_B9687D: from_stack_2 = Me.Item(from_stack_1)
  loc_B96882: FLdPr var_C0
  loc_B96885:  = Me.Value
  loc_B9688A: FLdRfVar var_D4
  loc_B9688D: AddVar var_E4
  loc_B96891: CR4Var
  loc_B96892: FLdPr Me
  loc_B96895: MemStFPR8 global_76
  loc_B96898: FFreeAd var_A8 = "": var_BC = ""
  loc_B968A1: FFreeVar var_D4 = ""
  loc_B968A8: FLdRfVar var_A8
  loc_B968AB: FLdPr Me
  loc_B968AE: MemLdRfVar from_stack_1.global_108
  loc_B968B1: NewIfNullPr clsctacte
  loc_B968B4: from_stack_1v = clsctacte.RsFrmGet()
  loc_B968B9: FLdPr var_A8
  loc_B968BC: Me.MoveNext
  loc_B968C1: FFree1Ad var_A8
  loc_B968C4: Branch loc_B96822
  loc_B968C7: LitI2_Byte 0
  loc_B968C9: LitVar_Missing var_D4
  loc_B968CC: LitI2_Byte 0
  loc_B968CE: FLdPr Me
  loc_B968D1: MemLdFPR8 global_68
  loc_B968D4: FLdPr Me
  loc_B968D7: MemLdFPR8 global_76
  loc_B968DA: AddR8
  loc_B968DB: CVarR8
  loc_B968DF: PopAdLdVar
  loc_B968E0: FLdPr Me
  loc_B968E3: MemLdStr global_116
  loc_B968E6: FLdPr Me
  loc_B968E9: MemLdStr global_112
  loc_B968EC: AryLock
  loc_B968EF: Ary1LdPr
  loc_B968F0: MemLdRfVar from_stack_1.global_12
  loc_B968F3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B968F8: AryUnlock
  loc_B968FB: FFree1Var var_D4 = ""
  loc_B968FE: LitI2_Byte 1
  loc_B96900: PopTmpLdAd2 var_1AA
  loc_B96903: FLdPr var_AC
  loc_B96906: Call clsbase.Move(from_stack_1v)
  loc_B9690B: FLdPr Me
  loc_B9690E: MemLdRfVar from_stack_1.global_116
  loc_B96911: NextI4 var_B8, loc_B964D9
  loc_B96916: LitNothing
  loc_B96918: FStAd var_AC 
  loc_B9691C: LitI2_Byte &HFF
  loc_B9691E: FLdPr Me
  loc_B96921: MemStI2 bGenerado
  loc_B96924: LitI4 0
  loc_B96929: CI2I4
  loc_B9692A: FLdPr Me
  loc_B9692D: Me.MousePointer = from_stack_1
  loc_B96932: LitVarStr var_94, vbNullString
  loc_B96937: PopAdLdVar
  loc_B96938: FLdPr Me
  loc_B9693B: VCallAd Control_ID_statusBar
  loc_B9693E: FStAdFunc var_A8
  loc_B96941: FLdPr var_A8
  loc_B96944: LateIdSt
  loc_B96949: FFree1Ad var_A8
  loc_B9694C: ExitProcHresult
  loc_B9694D: CopyBytes
End Sub

Public Sub GeneraHTML() 'B10DC4
  'Data Table: 462764
  loc_B10B94: FLdRfVar var_88
  loc_B10B97: LitI2_Byte 0
  loc_B10B99: LitI2_Byte &HFF
  loc_B10B9B: ImpAdLdI4 MemVar_D93C84
  loc_B10B9E: FLdPr Me
  loc_B10BA1: MemLdRfVar from_stack_1.global_88
  loc_B10BA4: NewIfNullPr IFileSystem3
  loc_B10BA7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B10BAC: ILdRf var_88
  loc_B10BAF: FLdPr Me
  loc_B10BB2: MemStVarAd
  loc_B10BB6: FFree1Ad var_88
  loc_B10BB9: LitI2_Byte &HFF
  loc_B10BBB: ImpAdStI2 MemVar_D93C8A
  loc_B10BBE: Call Proc_293_27_BC4A1C()
  loc_B10BC3: LitI4 1
  loc_B10BC8: FLdPr Me
  loc_B10BCB: MemLdRfVar from_stack_1.global_116
  loc_B10BCE: FLdPr Me
  loc_B10BD1: MemLdStr global_112
  loc_B10BD4: LitI2_Byte 1
  loc_B10BD6: FnUBound
  loc_B10BD8: ForI4 var_90
  loc_B10BDE: FLdPr Me
  loc_B10BE1: MemLdStr global_116
  loc_B10BE4: FLdPr Me
  loc_B10BE7: MemLdStr global_112
  loc_B10BEA: AryLock
  loc_B10BED: Ary1LdRf
  loc_B10BEE: FStR4 var_98
  loc_B10BF1: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B10BF6: PopAdLdVar
  loc_B10BF7: FLdPr Me
  loc_B10BFA: MemLdRfVar from_stack_1.global_92
  loc_B10BFD: LdPrVar
  loc_B10BFF: LateMemCall
  loc_B10C05: LitStr vbNullString
  loc_B10C08: LitI2_Byte 0
  loc_B10C0A: LitI2_Byte 0
  loc_B10C0C: LitI2_Byte 0
  loc_B10C0E: LitStr "left"
  loc_B10C11: FMemLdR4 var_98(0)
  loc_B10C16: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B10C1B: CVarStr var_C8
  loc_B10C1E: PopAdLdVar
  loc_B10C1F: FLdPr Me
  loc_B10C22: MemLdRfVar from_stack_1.global_92
  loc_B10C25: LdPrVar
  loc_B10C27: LateMemCall
  loc_B10C2D: FFree1Var var_C8 = ""
  loc_B10C30: LitStr vbNullString
  loc_B10C33: LitI2_Byte 0
  loc_B10C35: LitI2_Byte 0
  loc_B10C37: LitI2_Byte 0
  loc_B10C39: LitStr "left"
  loc_B10C3C: FMemLdR4 var_98(4)
  loc_B10C41: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B10C46: CVarStr var_C8
  loc_B10C49: PopAdLdVar
  loc_B10C4A: FLdPr Me
  loc_B10C4D: MemLdRfVar from_stack_1.global_92
  loc_B10C50: LdPrVar
  loc_B10C52: LateMemCall
  loc_B10C58: FFree1Var var_C8 = ""
  loc_B10C5B: LitStr vbNullString
  loc_B10C5E: LitI2_Byte 0
  loc_B10C60: LitI2_Byte 0
  loc_B10C62: LitI2_Byte 0
  loc_B10C64: LitStr "right"
  loc_B10C67: FMemLdR4 var_98(8)
  loc_B10C6C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B10C71: CVarStr var_C8
  loc_B10C74: PopAdLdVar
  loc_B10C75: FLdPr Me
  loc_B10C78: MemLdRfVar from_stack_1.global_92
  loc_B10C7B: LdPrVar
  loc_B10C7D: LateMemCall
  loc_B10C83: FFree1Var var_C8 = ""
  loc_B10C86: LitStr vbNullString
  loc_B10C89: LitI2_Byte 0
  loc_B10C8B: LitI2_Byte 0
  loc_B10C8D: LitI2_Byte 0
  loc_B10C8F: LitStr "right"
  loc_B10C92: FMemLdR4 var_98(12)
  loc_B10C97: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B10C9C: CVarStr var_C8
  loc_B10C9F: PopAdLdVar
  loc_B10CA0: FLdPr Me
  loc_B10CA3: MemLdRfVar from_stack_1.global_92
  loc_B10CA6: LdPrVar
  loc_B10CA8: LateMemCall
  loc_B10CAE: FFree1Var var_C8 = ""
  loc_B10CB1: LitVarStr var_A8, "     </tr>"
  loc_B10CB6: PopAdLdVar
  loc_B10CB7: FLdPr Me
  loc_B10CBA: MemLdRfVar from_stack_1.global_92
  loc_B10CBD: LdPrVar
  loc_B10CBF: LateMemCall
  loc_B10CC5: LitI4 0
  loc_B10CCA: FStR4 var_98
  loc_B10CCD: AryUnlock
  loc_B10CD0: FLdPr Me
  loc_B10CD3: MemLdRfVar from_stack_1.global_116
  loc_B10CD6: NextI4 var_90, loc_B10BDE
  loc_B10CDB: LitVarStr var_A8, "  <tr align=""center"" class=""Totales"">"
  loc_B10CE0: PopAdLdVar
  loc_B10CE1: FLdPr Me
  loc_B10CE4: MemLdRfVar from_stack_1.global_92
  loc_B10CE7: LdPrVar
  loc_B10CE9: LateMemCall
  loc_B10CEF: LitStr "    <th colspan=""4"">"
  loc_B10CF2: LitI4 -1
  loc_B10CF7: LitI4 0
  loc_B10CFC: LitI4 -1
  loc_B10D01: LitI4 0
  loc_B10D06: FLdPr Me
  loc_B10D09: MemLdStr global_112
  loc_B10D0C: LitI2_Byte 1
  loc_B10D0E: FnUBound
  loc_B10D10: CVarI4
  loc_B10D14: ImpAdCallI2 FormatNumber(, , , , )
  loc_B10D19: FStStrNoPop var_CC
  loc_B10D1C: ConcatStr
  loc_B10D1D: FStStrNoPop var_D0
  loc_B10D20: LitStr " registro"
  loc_B10D23: ConcatStr
  loc_B10D24: CVarStr var_130
  loc_B10D27: LitVarStr var_100, vbNullString
  loc_B10D2C: FStVarCopyObj var_110
  loc_B10D2F: FLdRfVar var_110
  loc_B10D32: LitVarStr var_E0, "s"
  loc_B10D37: FStVarCopyObj var_F0
  loc_B10D3A: FLdRfVar var_F0
  loc_B10D3D: FLdPr Me
  loc_B10D40: MemLdStr global_112
  loc_B10D43: LitI2_Byte 1
  loc_B10D45: FnUBound
  loc_B10D47: LitI4 1
  loc_B10D4C: GtI4
  loc_B10D4D: CVarBoolI2 var_B8
  loc_B10D51: FLdRfVar var_120
  loc_B10D54: ImpAdCallFPR4  = IIf(, , )
  loc_B10D59: FLdRfVar var_120
  loc_B10D5C: ConcatVar var_140
  loc_B10D60: LitVarStr var_150, ".</th>"
  loc_B10D65: ConcatVar var_160
  loc_B10D69: PopAdLdVar
  loc_B10D6A: FLdPr Me
  loc_B10D6D: MemLdRfVar from_stack_1.global_92
  loc_B10D70: LdPrVar
  loc_B10D72: LateMemCall
  loc_B10D78: FFreeStr var_CC = ""
  loc_B10D7F: FFreeVar var_C8 = "": var_B8 = "": var_F0 = "": var_110 = "": var_130 = "": var_120 = "": var_140 = ""
  loc_B10D92: LitVarStr var_A8, "  </tr>"
  loc_B10D97: PopAdLdVar
  loc_B10D98: FLdPr Me
  loc_B10D9B: MemLdRfVar from_stack_1.global_92
  loc_B10D9E: LdPrVar
  loc_B10DA0: LateMemCall
  loc_B10DA6: Call Proc_293_28_A0EE48()
  loc_B10DAB: FLdPr Me
  loc_B10DAE: MemLdRfVar from_stack_1.global_92
  loc_B10DB1: LdPrVar
  loc_B10DB3: LateMemCall
  loc_B10DB9: LitStr vbNullString
  loc_B10DBC: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B10DC1: ExitProcHresult
End Sub

Private Function Proc_293_27_BC4A1C() 'BC4A1C
  'Data Table: 462764
  loc_BC4350: LitVarStr var_98, "<html>"
  loc_BC4355: PopAdLdVar
  loc_BC4356: FLdPr Me
  loc_BC4359: MemLdRfVar from_stack_1.global_92
  loc_BC435C: LdPrVar
  loc_BC435E: LateMemCall
  loc_BC4364: LitVarStr var_98, "<head>"
  loc_BC4369: PopAdLdVar
  loc_BC436A: FLdPr Me
  loc_BC436D: MemLdRfVar from_stack_1.global_92
  loc_BC4370: LdPrVar
  loc_BC4372: LateMemCall
  loc_BC4378: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BC437D: PopAdLdVar
  loc_BC437E: FLdPr Me
  loc_BC4381: MemLdRfVar from_stack_1.global_92
  loc_BC4384: LdPrVar
  loc_BC4386: LateMemCall
  loc_BC438C: LitStr "<title>"
  loc_BC438F: FLdRfVar var_AC
  loc_BC4392: FLdPr Me
  loc_BC4395:  = Me.Caption
  loc_BC439A: ILdRf var_AC
  loc_BC439D: ConcatStr
  loc_BC439E: FStStrNoPop var_B0
  loc_BC43A1: LitStr "</title>"
  loc_BC43A4: ConcatStr
  loc_BC43A5: CVarStr var_C0
  loc_BC43A8: PopAdLdVar
  loc_BC43A9: FLdPr Me
  loc_BC43AC: MemLdRfVar from_stack_1.global_92
  loc_BC43AF: LdPrVar
  loc_BC43B1: LateMemCall
  loc_BC43B7: FFreeStr var_AC = ""
  loc_BC43BE: FFree1Var var_C0 = ""
  loc_BC43C1: LitVarStr var_98, "<style type=""text/css"">"
  loc_BC43C6: PopAdLdVar
  loc_BC43C7: FLdPr Me
  loc_BC43CA: MemLdRfVar from_stack_1.global_92
  loc_BC43CD: LdPrVar
  loc_BC43CF: LateMemCall
  loc_BC43D5: LitVarStr var_98, ".Titulo1 {"
  loc_BC43DA: PopAdLdVar
  loc_BC43DB: FLdPr Me
  loc_BC43DE: MemLdRfVar from_stack_1.global_92
  loc_BC43E1: LdPrVar
  loc_BC43E3: LateMemCall
  loc_BC43E9: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC43EE: PopAdLdVar
  loc_BC43EF: FLdPr Me
  loc_BC43F2: MemLdRfVar from_stack_1.global_92
  loc_BC43F5: LdPrVar
  loc_BC43F7: LateMemCall
  loc_BC43FD: LitVarStr var_98, " font-size: 18px;"
  loc_BC4402: PopAdLdVar
  loc_BC4403: FLdPr Me
  loc_BC4406: MemLdRfVar from_stack_1.global_92
  loc_BC4409: LdPrVar
  loc_BC440B: LateMemCall
  loc_BC4411: LitVarStr var_98, " font-weight: bold;"
  loc_BC4416: PopAdLdVar
  loc_BC4417: FLdPr Me
  loc_BC441A: MemLdRfVar from_stack_1.global_92
  loc_BC441D: LdPrVar
  loc_BC441F: LateMemCall
  loc_BC4425: LitVarStr var_98, "}"
  loc_BC442A: PopAdLdVar
  loc_BC442B: FLdPr Me
  loc_BC442E: MemLdRfVar from_stack_1.global_92
  loc_BC4431: LdPrVar
  loc_BC4433: LateMemCall
  loc_BC4439: LitVarStr var_98, ".Titulo2 {"
  loc_BC443E: PopAdLdVar
  loc_BC443F: FLdPr Me
  loc_BC4442: MemLdRfVar from_stack_1.global_92
  loc_BC4445: LdPrVar
  loc_BC4447: LateMemCall
  loc_BC444D: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC4452: PopAdLdVar
  loc_BC4453: FLdPr Me
  loc_BC4456: MemLdRfVar from_stack_1.global_92
  loc_BC4459: LdPrVar
  loc_BC445B: LateMemCall
  loc_BC4461: LitVarStr var_98, " font-size: 14px;"
  loc_BC4466: PopAdLdVar
  loc_BC4467: FLdPr Me
  loc_BC446A: MemLdRfVar from_stack_1.global_92
  loc_BC446D: LdPrVar
  loc_BC446F: LateMemCall
  loc_BC4475: LitVarStr var_98, " font-weight: bold;"
  loc_BC447A: PopAdLdVar
  loc_BC447B: FLdPr Me
  loc_BC447E: MemLdRfVar from_stack_1.global_92
  loc_BC4481: LdPrVar
  loc_BC4483: LateMemCall
  loc_BC4489: LitVarStr var_98, "}"
  loc_BC448E: PopAdLdVar
  loc_BC448F: FLdPr Me
  loc_BC4492: MemLdRfVar from_stack_1.global_92
  loc_BC4495: LdPrVar
  loc_BC4497: LateMemCall
  loc_BC449D: LitVarStr var_98, ".Normal {"
  loc_BC44A2: PopAdLdVar
  loc_BC44A3: FLdPr Me
  loc_BC44A6: MemLdRfVar from_stack_1.global_92
  loc_BC44A9: LdPrVar
  loc_BC44AB: LateMemCall
  loc_BC44B1: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC44B6: PopAdLdVar
  loc_BC44B7: FLdPr Me
  loc_BC44BA: MemLdRfVar from_stack_1.global_92
  loc_BC44BD: LdPrVar
  loc_BC44BF: LateMemCall
  loc_BC44C5: LitVarStr var_98, " font-size: 12px;"
  loc_BC44CA: PopAdLdVar
  loc_BC44CB: FLdPr Me
  loc_BC44CE: MemLdRfVar from_stack_1.global_92
  loc_BC44D1: LdPrVar
  loc_BC44D3: LateMemCall
  loc_BC44D9: LitVarStr var_98, " font-style: normal;"
  loc_BC44DE: PopAdLdVar
  loc_BC44DF: FLdPr Me
  loc_BC44E2: MemLdRfVar from_stack_1.global_92
  loc_BC44E5: LdPrVar
  loc_BC44E7: LateMemCall
  loc_BC44ED: LitVarStr var_98, " font-weight: normal;"
  loc_BC44F2: PopAdLdVar
  loc_BC44F3: FLdPr Me
  loc_BC44F6: MemLdRfVar from_stack_1.global_92
  loc_BC44F9: LdPrVar
  loc_BC44FB: LateMemCall
  loc_BC4501: LitVarStr var_98, " font-variant: normal;"
  loc_BC4506: PopAdLdVar
  loc_BC4507: FLdPr Me
  loc_BC450A: MemLdRfVar from_stack_1.global_92
  loc_BC450D: LdPrVar
  loc_BC450F: LateMemCall
  loc_BC4515: LitVarStr var_98, "}"
  loc_BC451A: PopAdLdVar
  loc_BC451B: FLdPr Me
  loc_BC451E: MemLdRfVar from_stack_1.global_92
  loc_BC4521: LdPrVar
  loc_BC4523: LateMemCall
  loc_BC4529: LitVarStr var_98, ".Encabezado {"
  loc_BC452E: PopAdLdVar
  loc_BC452F: FLdPr Me
  loc_BC4532: MemLdRfVar from_stack_1.global_92
  loc_BC4535: LdPrVar
  loc_BC4537: LateMemCall
  loc_BC453D: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BC4542: PopAdLdVar
  loc_BC4543: FLdPr Me
  loc_BC4546: MemLdRfVar from_stack_1.global_92
  loc_BC4549: LdPrVar
  loc_BC454B: LateMemCall
  loc_BC4551: LitVarStr var_98, " font-size: 11px;"
  loc_BC4556: PopAdLdVar
  loc_BC4557: FLdPr Me
  loc_BC455A: MemLdRfVar from_stack_1.global_92
  loc_BC455D: LdPrVar
  loc_BC455F: LateMemCall
  loc_BC4565: LitVarStr var_98, " font-weight: bold;"
  loc_BC456A: PopAdLdVar
  loc_BC456B: FLdPr Me
  loc_BC456E: MemLdRfVar from_stack_1.global_92
  loc_BC4571: LdPrVar
  loc_BC4573: LateMemCall
  loc_BC4579: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BC457E: PopAdLdVar
  loc_BC457F: FLdPr Me
  loc_BC4582: MemLdRfVar from_stack_1.global_92
  loc_BC4585: LdPrVar
  loc_BC4587: LateMemCall
  loc_BC458D: LitVarStr var_98, "}"
  loc_BC4592: PopAdLdVar
  loc_BC4593: FLdPr Me
  loc_BC4596: MemLdRfVar from_stack_1.global_92
  loc_BC4599: LdPrVar
  loc_BC459B: LateMemCall
  loc_BC45A1: LitVarStr var_98, ".LineaDato {"
  loc_BC45A6: PopAdLdVar
  loc_BC45A7: FLdPr Me
  loc_BC45AA: MemLdRfVar from_stack_1.global_92
  loc_BC45AD: LdPrVar
  loc_BC45AF: LateMemCall
  loc_BC45B5: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC45BA: PopAdLdVar
  loc_BC45BB: FLdPr Me
  loc_BC45BE: MemLdRfVar from_stack_1.global_92
  loc_BC45C1: LdPrVar
  loc_BC45C3: LateMemCall
  loc_BC45C9: LitVarStr var_98, " font-size: 10px;"
  loc_BC45CE: PopAdLdVar
  loc_BC45CF: FLdPr Me
  loc_BC45D2: MemLdRfVar from_stack_1.global_92
  loc_BC45D5: LdPrVar
  loc_BC45D7: LateMemCall
  loc_BC45DD: LitVarStr var_98, "}"
  loc_BC45E2: PopAdLdVar
  loc_BC45E3: FLdPr Me
  loc_BC45E6: MemLdRfVar from_stack_1.global_92
  loc_BC45E9: LdPrVar
  loc_BC45EB: LateMemCall
  loc_BC45F1: LitVarStr var_98, ".Totales {"
  loc_BC45F6: PopAdLdVar
  loc_BC45F7: FLdPr Me
  loc_BC45FA: MemLdRfVar from_stack_1.global_92
  loc_BC45FD: LdPrVar
  loc_BC45FF: LateMemCall
  loc_BC4605: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC460A: PopAdLdVar
  loc_BC460B: FLdPr Me
  loc_BC460E: MemLdRfVar from_stack_1.global_92
  loc_BC4611: LdPrVar
  loc_BC4613: LateMemCall
  loc_BC4619: LitVarStr var_98, " font-size: 12px;"
  loc_BC461E: PopAdLdVar
  loc_BC461F: FLdPr Me
  loc_BC4622: MemLdRfVar from_stack_1.global_92
  loc_BC4625: LdPrVar
  loc_BC4627: LateMemCall
  loc_BC462D: LitVarStr var_98, " font-weight: bold;"
  loc_BC4632: PopAdLdVar
  loc_BC4633: FLdPr Me
  loc_BC4636: MemLdRfVar from_stack_1.global_92
  loc_BC4639: LdPrVar
  loc_BC463B: LateMemCall
  loc_BC4641: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BC4646: PopAdLdVar
  loc_BC4647: FLdPr Me
  loc_BC464A: MemLdRfVar from_stack_1.global_92
  loc_BC464D: LdPrVar
  loc_BC464F: LateMemCall
  loc_BC4655: LitVarStr var_98, "}"
  loc_BC465A: PopAdLdVar
  loc_BC465B: FLdPr Me
  loc_BC465E: MemLdRfVar from_stack_1.global_92
  loc_BC4661: LdPrVar
  loc_BC4663: LateMemCall
  loc_BC4669: LitVarStr var_98, ".SubTotales {"
  loc_BC466E: PopAdLdVar
  loc_BC466F: FLdPr Me
  loc_BC4672: MemLdRfVar from_stack_1.global_92
  loc_BC4675: LdPrVar
  loc_BC4677: LateMemCall
  loc_BC467D: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC4682: PopAdLdVar
  loc_BC4683: FLdPr Me
  loc_BC4686: MemLdRfVar from_stack_1.global_92
  loc_BC4689: LdPrVar
  loc_BC468B: LateMemCall
  loc_BC4691: LitVarStr var_98, " font-size: 10px;"
  loc_BC4696: PopAdLdVar
  loc_BC4697: FLdPr Me
  loc_BC469A: MemLdRfVar from_stack_1.global_92
  loc_BC469D: LdPrVar
  loc_BC469F: LateMemCall
  loc_BC46A5: LitVarStr var_98, " font-weight: bold;"
  loc_BC46AA: PopAdLdVar
  loc_BC46AB: FLdPr Me
  loc_BC46AE: MemLdRfVar from_stack_1.global_92
  loc_BC46B1: LdPrVar
  loc_BC46B3: LateMemCall
  loc_BC46B9: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BC46BE: PopAdLdVar
  loc_BC46BF: FLdPr Me
  loc_BC46C2: MemLdRfVar from_stack_1.global_92
  loc_BC46C5: LdPrVar
  loc_BC46C7: LateMemCall
  loc_BC46CD: LitVarStr var_98, "}"
  loc_BC46D2: PopAdLdVar
  loc_BC46D3: FLdPr Me
  loc_BC46D6: MemLdRfVar from_stack_1.global_92
  loc_BC46D9: LdPrVar
  loc_BC46DB: LateMemCall
  loc_BC46E1: LitVarStr var_98, ".Tilde {"
  loc_BC46E6: PopAdLdVar
  loc_BC46E7: FLdPr Me
  loc_BC46EA: MemLdRfVar from_stack_1.global_92
  loc_BC46ED: LdPrVar
  loc_BC46EF: LateMemCall
  loc_BC46F5: LitVarStr var_98, " font-family: Wingdings;"
  loc_BC46FA: PopAdLdVar
  loc_BC46FB: FLdPr Me
  loc_BC46FE: MemLdRfVar from_stack_1.global_92
  loc_BC4701: LdPrVar
  loc_BC4703: LateMemCall
  loc_BC4709: LitVarStr var_98, " font-size: 12px;"
  loc_BC470E: PopAdLdVar
  loc_BC470F: FLdPr Me
  loc_BC4712: MemLdRfVar from_stack_1.global_92
  loc_BC4715: LdPrVar
  loc_BC4717: LateMemCall
  loc_BC471D: LitVarStr var_98, "}"
  loc_BC4722: PopAdLdVar
  loc_BC4723: FLdPr Me
  loc_BC4726: MemLdRfVar from_stack_1.global_92
  loc_BC4729: LdPrVar
  loc_BC472B: LateMemCall
  loc_BC4731: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BC4736: PopAdLdVar
  loc_BC4737: FLdPr Me
  loc_BC473A: MemLdRfVar from_stack_1.global_92
  loc_BC473D: LdPrVar
  loc_BC473F: LateMemCall
  loc_BC4745: LitVarStr var_98, "</style>"
  loc_BC474A: PopAdLdVar
  loc_BC474B: FLdPr Me
  loc_BC474E: MemLdRfVar from_stack_1.global_92
  loc_BC4751: LdPrVar
  loc_BC4753: LateMemCall
  loc_BC4759: LitI4 0
  loc_BC475E: FStStrCopy var_B0
  loc_BC4761: FLdRfVar var_B0
  loc_BC4764: LitI4 0
  loc_BC4769: FStStrCopy var_AC
  loc_BC476C: FLdRfVar var_AC
  loc_BC476F: LitI2_Byte 0
  loc_BC4771: PopTmpLdAd2 var_C2
  loc_BC4774: FLdPr Me
  loc_BC4777: MemLdRfVar from_stack_1.global_92
  loc_BC477A: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BC477F: FFreeStr var_AC = ""
  loc_BC4786: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BC478B: PopAdLdVar
  loc_BC478C: FLdPr Me
  loc_BC478F: MemLdRfVar from_stack_1.global_92
  loc_BC4792: LdPrVar
  loc_BC4794: LateMemCall
  loc_BC479A: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BC479F: PopAdLdVar
  loc_BC47A0: FLdPr Me
  loc_BC47A3: MemLdRfVar from_stack_1.global_92
  loc_BC47A6: LdPrVar
  loc_BC47A8: LateMemCall
  loc_BC47AE: LitVarStr var_98, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p>"
  loc_BC47B3: PopAdLdVar
  loc_BC47B4: FLdPr Me
  loc_BC47B7: MemLdRfVar from_stack_1.global_92
  loc_BC47BA: LdPrVar
  loc_BC47BC: LateMemCall
  loc_BC47C2: FLdPr Me
  loc_BC47C5: MemLdI2 bLogos
  loc_BC47C8: BranchF loc_BC4811
  loc_BC47CB: LitStr "    <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BC47CE: LitI2_Byte &H5F
  loc_BC47D0: CStrUI1
  loc_BC47D2: FStStrNoPop var_AC
  loc_BC47D5: ConcatStr
  loc_BC47D6: FStStrNoPop var_B0
  loc_BC47D9: LitStr """ height="""
  loc_BC47DC: ConcatStr
  loc_BC47DD: FStStrNoPop var_C8
  loc_BC47E0: LitI2_Byte &H3C
  loc_BC47E2: CStrUI1
  loc_BC47E4: FStStrNoPop var_CC
  loc_BC47E7: ConcatStr
  loc_BC47E8: FStStrNoPop var_D0
  loc_BC47EB: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_BC47EE: ConcatStr
  loc_BC47EF: CVarStr var_C0
  loc_BC47F2: PopAdLdVar
  loc_BC47F3: FLdPr Me
  loc_BC47F6: MemLdRfVar from_stack_1.global_92
  loc_BC47F9: LdPrVar
  loc_BC47FB: LateMemCall
  loc_BC4801: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = ""
  loc_BC480E: FFree1Var var_C0 = ""
  loc_BC4811: LitStr "    <br>"
  loc_BC4814: LitStr "Municipalidad de Guaymallén"
  loc_BC4817: ConcatStr
  loc_BC4818: FStStrNoPop var_AC
  loc_BC481B: LitStr "</p>"
  loc_BC481E: ConcatStr
  loc_BC481F: CVarStr var_C0
  loc_BC4822: PopAdLdVar
  loc_BC4823: FLdPr Me
  loc_BC4826: MemLdRfVar from_stack_1.global_92
  loc_BC4829: LdPrVar
  loc_BC482B: LateMemCall
  loc_BC4831: FFree1Str var_AC
  loc_BC4834: FFree1Var var_C0 = ""
  loc_BC4837: LitStr "    <p>"
  loc_BC483A: FLdRfVar var_AC
  loc_BC483D: FLdPr Me
  loc_BC4840:  = Me.Caption
  loc_BC4845: ILdRf var_AC
  loc_BC4848: ConcatStr
  loc_BC4849: FStStrNoPop var_B0
  loc_BC484C: LitStr "</p></th>"
  loc_BC484F: ConcatStr
  loc_BC4850: CVarStr var_C0
  loc_BC4853: PopAdLdVar
  loc_BC4854: FLdPr Me
  loc_BC4857: MemLdRfVar from_stack_1.global_92
  loc_BC485A: LdPrVar
  loc_BC485C: LateMemCall
  loc_BC4862: FFreeStr var_AC = ""
  loc_BC4869: FFree1Var var_C0 = ""
  loc_BC486C: LitVarStr var_98, "  </tr>"
  loc_BC4871: PopAdLdVar
  loc_BC4872: FLdPr Me
  loc_BC4875: MemLdRfVar from_stack_1.global_92
  loc_BC4878: LdPrVar
  loc_BC487A: LateMemCall
  loc_BC4880: LitVarStr var_98, "  <tr>"
  loc_BC4885: PopAdLdVar
  loc_BC4886: FLdPr Me
  loc_BC4889: MemLdRfVar from_stack_1.global_92
  loc_BC488C: LdPrVar
  loc_BC488E: LateMemCall
  loc_BC4894: LitVarStr var_98, "    <th colspan=""3""><hr></th>"
  loc_BC4899: PopAdLdVar
  loc_BC489A: FLdPr Me
  loc_BC489D: MemLdRfVar from_stack_1.global_92
  loc_BC48A0: LdPrVar
  loc_BC48A2: LateMemCall
  loc_BC48A8: LitVarStr var_98, "  </tr>"
  loc_BC48AD: PopAdLdVar
  loc_BC48AE: FLdPr Me
  loc_BC48B1: MemLdRfVar from_stack_1.global_92
  loc_BC48B4: LdPrVar
  loc_BC48B6: LateMemCall
  loc_BC48BC: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_BC48C1: PopAdLdVar
  loc_BC48C2: FLdPr Me
  loc_BC48C5: MemLdRfVar from_stack_1.global_92
  loc_BC48C8: LdPrVar
  loc_BC48CA: LateMemCall
  loc_BC48D0: LitStr "    <td align=""left""><strong>"
  loc_BC48D3: FLdPr Me
  loc_BC48D6: MemLdStr global_84
  loc_BC48D9: ConcatStr
  loc_BC48DA: FStStrNoPop var_AC
  loc_BC48DD: LitStr "</strong><br>"
  loc_BC48E0: ConcatStr
  loc_BC48E1: CVarStr var_C0
  loc_BC48E4: PopAdLdVar
  loc_BC48E5: FLdPr Me
  loc_BC48E8: MemLdRfVar from_stack_1.global_92
  loc_BC48EB: LdPrVar
  loc_BC48ED: LateMemCall
  loc_BC48F3: FFree1Str var_AC
  loc_BC48F6: FFree1Var var_C0 = ""
  loc_BC48F9: LitStr "                       <strong> Deuda Calculada al: "
  loc_BC48FC: FLdPr Me
  loc_BC48FF: VCallAd Control_ID_FechVencMsk
  loc_BC4902: FStAdFunc var_D4
  loc_BC4905: FLdPr var_D4
  loc_BC4908: LateIdLdVar var_C0 DispID_15 0
  loc_BC490F: CStrVarTmp
  loc_BC4910: FStStrNoPop var_AC
  loc_BC4913: ConcatStr
  loc_BC4914: FStStrNoPop var_B0
  loc_BC4917: LitStr "</strong></td>"
  loc_BC491A: ConcatStr
  loc_BC491B: CVarStr var_E4
  loc_BC491E: PopAdLdVar
  loc_BC491F: FLdPr Me
  loc_BC4922: MemLdRfVar from_stack_1.global_92
  loc_BC4925: LdPrVar
  loc_BC4927: LateMemCall
  loc_BC492D: FFreeStr var_AC = ""
  loc_BC4934: FFree1Ad var_D4
  loc_BC4937: FFreeVar var_C0 = ""
  loc_BC493E: LitVarStr var_98, "  </tr>"
  loc_BC4943: PopAdLdVar
  loc_BC4944: FLdPr Me
  loc_BC4947: MemLdRfVar from_stack_1.global_92
  loc_BC494A: LdPrVar
  loc_BC494C: LateMemCall
  loc_BC4952: LitVarStr var_98, "</table>"
  loc_BC4957: PopAdLdVar
  loc_BC4958: FLdPr Me
  loc_BC495B: MemLdRfVar from_stack_1.global_92
  loc_BC495E: LdPrVar
  loc_BC4960: LateMemCall
  loc_BC4966: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BC496B: PopAdLdVar
  loc_BC496C: FLdPr Me
  loc_BC496F: MemLdRfVar from_stack_1.global_92
  loc_BC4972: LdPrVar
  loc_BC4974: LateMemCall
  loc_BC497A: LitVarStr var_98, "  <thead>"
  loc_BC497F: PopAdLdVar
  loc_BC4980: FLdPr Me
  loc_BC4983: MemLdRfVar from_stack_1.global_92
  loc_BC4986: LdPrVar
  loc_BC4988: LateMemCall
  loc_BC498E: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BC4993: PopAdLdVar
  loc_BC4994: FLdPr Me
  loc_BC4997: MemLdRfVar from_stack_1.global_92
  loc_BC499A: LdPrVar
  loc_BC499C: LateMemCall
  loc_BC49A2: LitVarStr var_98, "    <th>Cuenta</th>"
  loc_BC49A7: PopAdLdVar
  loc_BC49A8: FLdPr Me
  loc_BC49AB: MemLdRfVar from_stack_1.global_92
  loc_BC49AE: LdPrVar
  loc_BC49B0: LateMemCall
  loc_BC49B6: LitVarStr var_98, "    <th>Apellido y Nombre</th>"
  loc_BC49BB: PopAdLdVar
  loc_BC49BC: FLdPr Me
  loc_BC49BF: MemLdRfVar from_stack_1.global_92
  loc_BC49C2: LdPrVar
  loc_BC49C4: LateMemCall
  loc_BC49CA: LitVarStr var_98, "    <th>C.U.I.L.</th>"
  loc_BC49CF: PopAdLdVar
  loc_BC49D0: FLdPr Me
  loc_BC49D3: MemLdRfVar from_stack_1.global_92
  loc_BC49D6: LdPrVar
  loc_BC49D8: LateMemCall
  loc_BC49DE: LitVarStr var_98, "    <th>Deuda</th>"
  loc_BC49E3: PopAdLdVar
  loc_BC49E4: FLdPr Me
  loc_BC49E7: MemLdRfVar from_stack_1.global_92
  loc_BC49EA: LdPrVar
  loc_BC49EC: LateMemCall
  loc_BC49F2: LitVarStr var_98, "  </tr>"
  loc_BC49F7: PopAdLdVar
  loc_BC49F8: FLdPr Me
  loc_BC49FB: MemLdRfVar from_stack_1.global_92
  loc_BC49FE: LdPrVar
  loc_BC4A00: LateMemCall
  loc_BC4A06: LitVarStr var_98, "  </thead>"
  loc_BC4A0B: PopAdLdVar
  loc_BC4A0C: FLdPr Me
  loc_BC4A0F: MemLdRfVar from_stack_1.global_92
  loc_BC4A12: LdPrVar
  loc_BC4A14: LateMemCall
  loc_BC4A1A: ExitProcHresult
End Function

Private Function Proc_293_28_A0EE48() 'A0EE48
  'Data Table: 462764
  loc_A0EE08: LitVarStr var_94, "</table>"
  loc_A0EE0D: PopAdLdVar
  loc_A0EE0E: FLdPr Me
  loc_A0EE11: MemLdRfVar from_stack_1.global_92
  loc_A0EE14: LdPrVar
  loc_A0EE16: LateMemCall
  loc_A0EE1C: LitVarStr var_94, "</body>"
  loc_A0EE21: PopAdLdVar
  loc_A0EE22: FLdPr Me
  loc_A0EE25: MemLdRfVar from_stack_1.global_92
  loc_A0EE28: LdPrVar
  loc_A0EE2A: LateMemCall
  loc_A0EE30: LitVarStr var_94, "</html>"
  loc_A0EE35: PopAdLdVar
  loc_A0EE36: FLdPr Me
  loc_A0EE39: MemLdRfVar from_stack_1.global_92
  loc_A0EE3C: LdPrVar
  loc_A0EE3E: LateMemCall
  loc_A0EE44: ExitProcHresult
End Function
