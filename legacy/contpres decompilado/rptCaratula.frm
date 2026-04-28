VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptCaratula
  Caption = "Carátula"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptCaratula.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6375
  ClientHeight = 3720
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3465
    Width = 6375
    Height = 255
    TabIndex = 15
    OleObjectBlob = "rptCaratula.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5280
    Top = 2520
    Width = 735
    Height = 615
    TabIndex = 13
    Cancel = -1  'True
    Picture = "rptCaratula.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptCaratula.frx":0B9C
    Left = 5520
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2280
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
    Top = 2280
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
    Width = 6135
    Height = 2175
    TabIndex = 0
    Begin VB.TextBox ObservacionesTxt
      Left = 1680
      Top = 1320
      Width = 4215
      Height = 645
      TabIndex = 7
      ScrollBars = 2
      MaxLength = 80
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1680
      Top = 360
      Width = 1095
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox NumeOrpaMsk
      Left = 1680
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 5
      OleObjectBlob = "rptCaratula.frx":0C00
    End
    Begin VB.Label Label1
      Caption = "Observaciones:"
      Left = 435
      Top = 1320
      Width = 1110
      Height = 195
      TabIndex = 6
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Orden de Pago Nº:"
      Left = 195
      Top = 840
      Width = 1350
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 960
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5400
    Top = 2760
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptCaratula.frx":0C6A
  End
End

Attribute VB_Name = "rptCaratula"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_005785A4
  bStruc(8) As Byte ' String fields: 2
End Type

Private Type UDT_2_0058A2C0
  bStruc(36) As Byte ' String fields: 9
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98818C
  'Data Table: 444668
  loc_988154: FLdPr Me
  loc_988157: VCallAd Control_ID_statusBar
  loc_98815A: FStAdFunc var_88
  loc_98815D: FLdPr var_88
  loc_988160: LateIdLdVar var_98 DispID_1 0
  loc_988167: CStrVarTmp
  loc_988168: CVarStr var_A8
  loc_98816B: PopAdLdVar
  loc_98816C: FLdPr Me
  loc_98816F: VCallAd Control_ID_statusBar
  loc_988172: FStAdFunc var_BC
  loc_988175: FLdPr var_BC
  loc_988178: LateIdSt
  loc_98817D: FFreeAd var_88 = ""
  loc_988184: FFreeVar var_98 = ""
  loc_98818B: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95FA3C
  'Data Table: 444668
  loc_95FA24: LitI2_Byte 0
  loc_95FA26: ILdRf Me
  loc_95FA29: CastAd
  loc_95FA2C: FStAdFunc var_88
  loc_95FA2F: FLdRfVar var_88
  loc_95FA32: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95FA37: FFree1Ad var_88
  loc_95FA3A: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95F9F0
  'Data Table: 444668
  loc_95F9D8: ILdRf Me
  loc_95F9DB: CastAd
  loc_95F9DE: FStAdFunc var_88
  loc_95F9E1: FLdRfVar var_88
  loc_95F9E4: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95F9E9: FFree1Ad var_88
  loc_95F9EC: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97B3C4
  'Data Table: 444668
  loc_97B394: LitVarStr var_94, "Cerrando..."
  loc_97B399: PopAdLdVar
  loc_97B39A: FLdPr Me
  loc_97B39D: VCallAd Control_ID_statusBar
  loc_97B3A0: FStAdFunc var_A8
  loc_97B3A3: FLdPr var_A8
  loc_97B3A6: LateIdSt
  loc_97B3AB: FFree1Ad var_A8
  loc_97B3AE: ILdRf Me
  loc_97B3B1: FStAdNoPop
  loc_97B3B5: ImpAdLdRf MemVar_C44F9C
  loc_97B3B8: NewIfNullPr Me
  loc_97B3BB: Me.Global.Unload from_stack_1
  loc_97B3C0: FFree1Ad var_A8
  loc_97B3C3: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9A1660
  'Data Table: 444668
  loc_9A15E8: LitI2_Byte 0
  loc_9A15EA: FLdPr Me
  loc_9A15ED: MemStI2 bGenerado
  loc_9A15F0: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9A15F5: ImpAdLdI2 MemVar_C3D064
  loc_9A15F8: CStrUI1
  loc_9A15FA: FStStrNoPop var_88
  loc_9A15FD: FLdPr Me
  loc_9A1600: VCallAd Control_ID_cboPeriodo
  loc_9A1603: FStAdFunc var_8C
  loc_9A1606: FLdPr var_8C
  loc_9A1609: Me.Text = from_stack_1
  loc_9A160E: FFree1Str var_88
  loc_9A1611: FFree1Ad var_8C
  loc_9A1614: LitVarStr var_9C, vbNullString
  loc_9A1619: PopAdLdVar
  loc_9A161A: FLdPr Me
  loc_9A161D: VCallAd Control_ID_NumeOrpaMsk
  loc_9A1620: FStAdFunc var_8C
  loc_9A1623: FLdPr var_8C
  loc_9A1626: LateIdSt
  loc_9A162B: FFree1Ad var_8C
  loc_9A162E: LitStr vbNullString
  loc_9A1631: FLdPr Me
  loc_9A1634: VCallAd Control_ID_ObservacionesTxt
  loc_9A1637: FStAdFunc var_8C
  loc_9A163A: FLdPr var_8C
  loc_9A163D: Me.Text = from_stack_1
  loc_9A1642: FFree1Ad var_8C
  loc_9A1645: Call HabilitarCriterio()
  loc_9A164A: ILdRf Me
  loc_9A164D: CastAd
  loc_9A1650: FStAdFunc var_8C
  loc_9A1653: FLdRfVar var_8C
  loc_9A1656: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9A165B: FFree1Ad var_8C
  loc_9A165E: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95F8C0
  'Data Table: 444668
  loc_95F8A8: ILdRf Me
  loc_95F8AB: CastAd
  loc_95F8AE: FStAdFunc var_88
  loc_95F8B1: FLdRfVar var_88
  loc_95F8B4: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95F8B9: FFree1Ad var_88
  loc_95F8BC: ExitProcHresult
End Sub

Private Sub NumeOrpaMsk_UnknownEvent_0 '94EAC8
  'Data Table: 444668
  loc_94EAB4: FLdPr Me
  loc_94EAB7: VCallAd Control_ID_NumeOrpaMsk
  loc_94EABA: CVarAd
  loc_94EABE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94EAC3: FFree1Var var_94 = ""
  loc_94EAC6: ExitProcHresult
End Sub

Private Function NumeOrpaMsk_UnknownEvent_8(arg_C) '9A6A68
  'Data Table: 444668
  loc_9A69EC: FLdPr Me
  loc_9A69EF: VCallAd Control_ID_NumeOrpaMsk
  loc_9A69F2: FStAdFunc var_88
  loc_9A69F5: FLdPr var_88
  loc_9A69F8: LateIdLdVar var_98 DispID_22 0
  loc_9A69FF: PopAd
  loc_9A6A01: LitI2_Byte 0
  loc_9A6A03: LitI2_Byte 0
  loc_9A6A05: FLdRfVar var_98
  loc_9A6A08: CStrVarTmp
  loc_9A6A09: FStStrNoPop var_9C
  loc_9A6A0C: LitStr "Número de Orden de Pago"
  loc_9A6A0F: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_9A6A14: FStStrNoPop var_A0
  loc_9A6A17: FLdPr Me
  loc_9A6A1A: MemStStrCopy
  loc_9A6A1E: FFreeStr var_9C = ""
  loc_9A6A25: FFree1Ad var_88
  loc_9A6A28: FFree1Var var_98 = ""
  loc_9A6A2B: FLdPr Me
  loc_9A6A2E: VCallAd Control_ID_NumeOrpaMsk
  loc_9A6A31: FStAdFunc var_AC
  loc_9A6A34: LitNothing
  loc_9A6A36: CastAd
  loc_9A6A39: FStAdFunc var_A8
  loc_9A6A3C: FLdRfVar var_A8
  loc_9A6A3F: FLdZeroAd var_AC
  loc_9A6A42: FStAdFuncNoPop
  loc_9A6A45: CastAd
  loc_9A6A48: FStAdFunc var_A4
  loc_9A6A4B: FLdRfVar var_A4
  loc_9A6A4E: FLdPr Me
  loc_9A6A51: MemLdRfVar from_stack_1.global_92
  loc_9A6A54: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9A6A59: IStI2 arg_C
  loc_9A6A5C: FFreeAd var_88 = "": var_A4 = "": var_A8 = ""
  loc_9A6A67: ExitProcHresult
End Function

Private Sub Form_Load() '9D56B0
  'Data Table: 444668
  loc_9D55C4: LitI2_Byte &HFF
  loc_9D55C6: ImpAdStI2 MemVar_C3D840
  loc_9D55C9: ILdRf Me
  loc_9D55CC: CastAd
  loc_9D55CF: FStAdFunc var_88
  loc_9D55D2: FLdRfVar var_88
  loc_9D55D5: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D55DA: FFree1Ad var_88
  loc_9D55DD: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D55E0: FLdPr Me
  loc_9D55E3: MemLdRfVar from_stack_1.global_72
  loc_9D55E6: NewIfNullPr clsperiodo
  loc_9D55E9: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9D55EE: FLdRfVar var_8C
  loc_9D55F1: FLdPr Me
  loc_9D55F4: MemLdRfVar from_stack_1.global_72
  loc_9D55F7: NewIfNullPr clsperiodo
  loc_9D55FA: from_stack_1 = clsperiodo.RecordCount
  loc_9D55FF: ILdRf var_8C
  loc_9D5602: LitI4 0
  loc_9D5607: GtI4
  loc_9D5608: BranchF loc_9D56A7
  loc_9D560B: FLdPr Me
  loc_9D560E: MemLdRfVar from_stack_1.global_72
  loc_9D5611: NewIfNullPr clsperiodo
  loc_9D5614: Call clsperiodo.MoveFirst()
  loc_9D5619: FLdRfVar var_8E
  loc_9D561C: FLdPr Me
  loc_9D561F: MemLdRfVar from_stack_1.global_72
  loc_9D5622: NewIfNullPr clsperiodo
  loc_9D5625: from_stack_1 = clsperiodo.EOF
  loc_9D562A: FLdI2 var_8E
  loc_9D562D: NotI4
  loc_9D562E: BranchF loc_9D56A7
  loc_9D5631: LitVar_Missing var_CC
  loc_9D5634: PopAdLdVar
  loc_9D5635: FLdRfVar var_B8
  loc_9D5638: FLdRfVar var_A8
  loc_9D563B: LitVarStr var_A4, "PeriInfo"
  loc_9D5640: PopAdLdVar
  loc_9D5641: FLdRfVar var_94
  loc_9D5644: FLdRfVar var_88
  loc_9D5647: FLdPr Me
  loc_9D564A: MemLdRfVar from_stack_1.global_72
  loc_9D564D: NewIfNullPr clsperiodo
  loc_9D5650: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9D5655: FLdPr var_88
  loc_9D5658:  = Me.Fields
  loc_9D565D: FLdPr var_94
  loc_9D5660: from_stack_2 = Me.Item(from_stack_1)
  loc_9D5665: FLdPr var_A8
  loc_9D5668:  = Me.Value
  loc_9D566D: FLdRfVar var_B8
  loc_9D5670: CStrVarTmp
  loc_9D5671: FStStrNoPop var_BC
  loc_9D5674: FLdPr Me
  loc_9D5677: VCallAd Control_ID_cboPeriodo
  loc_9D567A: FStAdFunc var_D0
  loc_9D567D: FLdPr var_D0
  loc_9D5680: Me.AddItem from_stack_1, from_stack_2
  loc_9D5685: FFree1Str var_BC
  loc_9D5688: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_9D5693: FFree1Var var_B8 = ""
  loc_9D5696: FLdPr Me
  loc_9D5699: MemLdRfVar from_stack_1.global_72
  loc_9D569C: NewIfNullPr clsperiodo
  loc_9D569F: Call clsperiodo.MoveSiguiente()
  loc_9D56A4: Branch loc_9D5619
  loc_9D56A7: Call cmdNueva_Click()
  loc_9D56AC: ExitProcHresult
  loc_9D56AD: SubCy
End Sub

Private Sub Form_Unload(Cancel As Integer) '960B74
  'Data Table: 444668
  loc_960B5C: FLdPr Me
  loc_960B5F: VCallAd Control_ID_wbbReporte
  loc_960B62: FStAdFunc var_88
  loc_960B65: FLdRfVar var_88
  loc_960B68: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_960B6D: FFree1Ad var_88
  loc_960B70: ExitProcHresult
End Sub

Public Function htmFileGet() '445274
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '445283
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '445292
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4452A1
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4452B0
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '995DF4
  'Data Table: 444668
  loc_995DA0: LitI4 0
  loc_995DA5: LitI4 2
  loc_995DAA: FLdRfVar var_88
  loc_995DAD: Redim
  loc_995DB7: FLdPr Me
  loc_995DBA: VCallAd Control_ID_cboPeriodo
  loc_995DBD: CVarAd
  loc_995DC1: ParmAry1St
  loc_995DC7: FLdPr Me
  loc_995DCA: VCallAd Control_ID_NumeOrpaMsk
  loc_995DCD: CVarAd
  loc_995DD1: ParmAry1St
  loc_995DD7: FLdPr Me
  loc_995DDA: VCallAd Control_ID_ObservacionesTxt
  loc_995DDD: CVarAd
  loc_995DE1: ParmAry1St
  loc_995DE7: FLdRfVar var_88
  loc_995DEA: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_995DEF: FLdRfVar var_88
  loc_995DF2: Erase
  loc_995DF3: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'AFB5DC
  'Data Table: 444668
  loc_AFAEAC: FLdPr Me
  loc_AFAEAF: MemLdI2 bGenerado
  loc_AFAEB2: BranchF loc_AFAEB6
  loc_AFAEB5: ExitProcHresult
  loc_AFAEB6: LitVarStr var_94, "Generando reporte..."
  loc_AFAEBB: PopAdLdVar
  loc_AFAEBC: FLdPr Me
  loc_AFAEBF: VCallAd Control_ID_statusBar
  loc_AFAEC2: FStAdFunc var_A8
  loc_AFAEC5: FLdPr var_A8
  loc_AFAEC8: LateIdSt
  loc_AFAECD: FFree1Ad var_A8
  loc_AFAED0: LitI4 &HB
  loc_AFAED5: CI2I4
  loc_AFAED6: FLdPr Me
  loc_AFAED9: Me.MousePointer = from_stack_1
  loc_AFAEDE: LitI2_Byte 0
  loc_AFAEE0: PopTmpLdAd2 var_AA
  loc_AFAEE3: from_stack_2v = NumeOrpaMsk_UnknownEvent_8(from_stack_1v)
  loc_AFAEE8: FLdPr Me
  loc_AFAEEB: MemLdStr global_92
  loc_AFAEEE: LitStr vbNullString
  loc_AFAEF1: NeStr
  loc_AFAEF3: BranchF loc_AFAEF9
  loc_AFAEF6: Branch loc_AFB5B2
  loc_AFAEF9: LitStr "SELECT *"
  loc_AFAEFC: LitStr " FROM ordenpago"
  loc_AFAEFF: ConcatStr
  loc_AFAF00: FStStrNoPop var_B0
  loc_AFAF03: LitStr " WHERE PeriInfo = "
  loc_AFAF06: ConcatStr
  loc_AFAF07: FStStrNoPop var_B8
  loc_AFAF0A: FLdRfVar var_B4
  loc_AFAF0D: FLdPr Me
  loc_AFAF10: VCallAd Control_ID_cboPeriodo
  loc_AFAF13: FStAdFunc var_A8
  loc_AFAF16: FLdPr var_A8
  loc_AFAF19:  = Me.Text
  loc_AFAF1E: ILdRf var_B4
  loc_AFAF21: ConcatStr
  loc_AFAF22: FStStrNoPop var_BC
  loc_AFAF25: LitStr " AND NumeOrpa = "
  loc_AFAF28: ConcatStr
  loc_AFAF29: FStStrNoPop var_D4
  loc_AFAF2C: FLdPr Me
  loc_AFAF2F: VCallAd Control_ID_NumeOrpaMsk
  loc_AFAF32: FStAdFunc var_C0
  loc_AFAF35: FLdPr var_C0
  loc_AFAF38: LateIdLdVar var_D0 DispID_22 0
  loc_AFAF3F: CStrVarTmp
  loc_AFAF40: FStStrNoPop var_D8
  loc_AFAF43: ConcatStr
  loc_AFAF44: FStStrNoPop var_DC
  loc_AFAF47: LitStr " AND TipoOrpa <> 'Reservada';"
  loc_AFAF4A: ConcatStr
  loc_AFAF4B: FStStrNoPop var_E0
  loc_AFAF4E: FLdPr Me
  loc_AFAF51: MemLdRfVar from_stack_1.global_76
  loc_AFAF54: NewIfNullPr clsordenpago
  loc_AFAF57: Call clsordenpago.RedefineRS(from_stack_1v)
  loc_AFAF5C: FFreeStr var_B0 = "": var_B8 = "": var_B4 = "": var_BC = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_AFAF6F: FFreeAd var_A8 = ""
  loc_AFAF76: FFree1Var var_D0 = ""
  loc_AFAF79: FLdRfVar var_E4
  loc_AFAF7C: FLdPr Me
  loc_AFAF7F: MemLdRfVar from_stack_1.global_76
  loc_AFAF82: NewIfNullPr clsordenpago
  loc_AFAF85: from_stack_1 = clsordenpago.RecordCount
  loc_AFAF8A: ILdRf var_E4
  loc_AFAF8D: LitI4 0
  loc_AFAF92: EqI4
  loc_AFAF93: BranchF loc_AFAFA6
  loc_AFAF96: LitI4 0
  loc_AFAF9B: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_AFAF9E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AFAFA3: Branch loc_AFB5B2
  loc_AFAFA6: LitStr "SELECT lqn.CucuPers, DetaProv, FantProv, o.*"
  loc_AFAFA9: LitStr ", (SELECT Sum(ImpoLine) FROM liquidaneto lqn WHERE lqn.PeriInfo = o.PeriInfo AND lqn.ExpeImpu = o.ExpeImpu AND lqn.NumeLiqu = o.NumeLiqu AND lqn.FeanLine IS NULL) TotalOP"
  loc_AFAFAC: ConcatStr
  loc_AFAFAD: FStStrNoPop var_B0
  loc_AFAFB0: LitStr ", IF(ChunOrpa = 1 OR (SELECT Count(*) FROM liquidaneto lqn WHERE lqn.PeriInfo = o.PeriInfo AND lqn.ExpeImpu = o.ExpeImpu AND lqn.NumeLiqu  = o.NumeLiqu AND lqn.CodiRete = 0) = 0 , 1, 0) ImprimeProv"
  loc_AFAFB3: ConcatStr
  loc_AFAFB4: FStStrNoPop var_B4
  loc_AFAFB7: LitStr " FROM ordenpago o"
  loc_AFAFBA: ConcatStr
  loc_AFAFBB: FStStrNoPop var_B8
  loc_AFAFBE: LitStr " INNER JOIN liquidaneto lqn ON lqn.PeriInfo = o.PeriInfo AND lqn.ExpeImpu = o.ExpeImpu AND lqn.NumeLiqu = o.NumeLiqu AND lqn.FeanLine IS NULL"
  loc_AFAFC1: ConcatStr
  loc_AFAFC2: FStStrNoPop var_BC
  loc_AFAFC5: LitStr " INNER JOIN proveedor p ON p.CucuPers = lqn.CucuPers"
  loc_AFAFC8: ConcatStr
  loc_AFAFC9: FStStrNoPop var_D4
  loc_AFAFCC: LitStr " WHERE o.PeriInfo = "
  loc_AFAFCF: ConcatStr
  loc_AFAFD0: FStStrNoPop var_DC
  loc_AFAFD3: FLdRfVar var_D8
  loc_AFAFD6: FLdPr Me
  loc_AFAFD9: VCallAd Control_ID_cboPeriodo
  loc_AFAFDC: FStAdFunc var_A8
  loc_AFAFDF: FLdPr var_A8
  loc_AFAFE2:  = Me.Text
  loc_AFAFE7: ILdRf var_D8
  loc_AFAFEA: ConcatStr
  loc_AFAFEB: FStStrNoPop var_E0
  loc_AFAFEE: LitStr " AND o.NumeOrpa = "
  loc_AFAFF1: ConcatStr
  loc_AFAFF2: FStStrNoPop var_E8
  loc_AFAFF5: FLdPr Me
  loc_AFAFF8: VCallAd Control_ID_NumeOrpaMsk
  loc_AFAFFB: FStAdFunc var_C0
  loc_AFAFFE: FLdPr var_C0
  loc_AFB001: LateIdLdVar var_D0 DispID_22 0
  loc_AFB008: CStrVarTmp
  loc_AFB009: FStStrNoPop var_EC
  loc_AFB00C: ConcatStr
  loc_AFB00D: FStStrNoPop var_F0
  loc_AFB010: LitStr " GROUP BY lqn.CucuPers"
  loc_AFB013: ConcatStr
  loc_AFB014: FStStrNoPop var_F4
  loc_AFB017: LitStr " ORDER BY DetaProv;"
  loc_AFB01A: ConcatStr
  loc_AFB01B: FStStrNoPop var_F8
  loc_AFB01E: FLdPr Me
  loc_AFB021: MemLdRfVar from_stack_1.global_76
  loc_AFB024: NewIfNullPr clsordenpago
  loc_AFB027: Call clsordenpago.RedefineRS(from_stack_1v)
  loc_AFB02C: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_D4 = "": var_DC = "": var_D8 = "": var_E0 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_AFB049: FFreeAd var_A8 = ""
  loc_AFB050: FFree1Var var_D0 = ""
  loc_AFB053: FLdPr Me
  loc_AFB056: MemLdRfVar from_stack_1.global_76
  loc_AFB059: NewIfNullAd
  loc_AFB05C: FStAd var_FC 
  loc_AFB060: LitI4 0
  loc_AFB065: LitI4 1
  loc_AFB06A: FLdPr Me
  loc_AFB06D: MemLdRfVar from_stack_1.global_84
  loc_AFB070: Redim
  loc_AFB07A: FLdRfVar var_E4
  loc_AFB07D: FLdPr var_FC
  loc_AFB080: from_stack_1 = clsordenpago.RecordCount
  loc_AFB085: LitI4 0
  loc_AFB08A: ILdRf var_E4
  loc_AFB08D: LitI4 1
  loc_AFB092: FLdPr Me
  loc_AFB095: MemLdStr global_84
  loc_AFB098: Ary1LdPr
  loc_AFB099: MemLdRfVar from_stack_1.global_24
  loc_AFB09C: Redim
  loc_AFB0A6: FLdPr var_FC
  loc_AFB0A9: Call clsordenpago.MoveFirst()
  loc_AFB0AE: FLdPr Me
  loc_AFB0B1: VCallAd Control_ID_NumeOrpaMsk
  loc_AFB0B4: FStAdFunc var_A8
  loc_AFB0B7: FLdPr var_A8
  loc_AFB0BA: LateIdLdVar var_D0 DispID_22 0
  loc_AFB0C1: PopAd
  loc_AFB0C3: LitI2_Byte 0
  loc_AFB0C5: LitVar_Missing var_120
  loc_AFB0C8: LitI2_Byte 0
  loc_AFB0CA: FLdRfVar var_D0
  loc_AFB0CD: CStrVarTmp
  loc_AFB0CE: CVarStr var_110
  loc_AFB0D1: PopAdLdVar
  loc_AFB0D2: LitI4 1
  loc_AFB0D7: FLdPr Me
  loc_AFB0DA: MemLdStr global_84
  loc_AFB0DD: AryLock
  loc_AFB0E0: Ary1LdPr
  loc_AFB0E1: MemLdRfVar from_stack_1.global_0
  loc_AFB0E4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AFB0E9: AryUnlock
  loc_AFB0EC: FFree1Ad var_A8
  loc_AFB0EF: FFreeVar var_D0 = "": var_110 = ""
  loc_AFB0F8: FLdRfVar var_124
  loc_AFB0FB: LitVarStr var_94, "ExpeImpu"
  loc_AFB100: PopAdLdVar
  loc_AFB101: FLdRfVar var_C0
  loc_AFB104: FLdRfVar var_A8
  loc_AFB107: FLdPr var_FC
  loc_AFB10A: from_stack_1v = clsordenpago.RsFrmGet()
  loc_AFB10F: FLdPr var_A8
  loc_AFB112:  = Me.Fields
  loc_AFB117: FLdPr var_C0
  loc_AFB11A: from_stack_2 = Me.Item(from_stack_1)
  loc_AFB11F: LitI2_Byte 0
  loc_AFB121: LitVar_Missing var_110
  loc_AFB124: LitI2_Byte 0
  loc_AFB126: FLdZeroAd var_124
  loc_AFB129: CVarAd
  loc_AFB12D: PopAdLdVar
  loc_AFB12E: LitI4 1
  loc_AFB133: FLdPr Me
  loc_AFB136: MemLdStr global_84
  loc_AFB139: AryLock
  loc_AFB13C: Ary1LdPr
  loc_AFB13D: MemLdRfVar from_stack_1.global_4
  loc_AFB140: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AFB145: AryUnlock
  loc_AFB148: FFreeAd var_A8 = ""
  loc_AFB14F: FFreeVar var_D0 = ""
  loc_AFB156: FLdRfVar var_124
  loc_AFB159: LitVarStr var_94, "NumeLiqu"
  loc_AFB15E: PopAdLdVar
  loc_AFB15F: FLdRfVar var_C0
  loc_AFB162: FLdRfVar var_A8
  loc_AFB165: FLdPr var_FC
  loc_AFB168: from_stack_1v = clsordenpago.RsFrmGet()
  loc_AFB16D: FLdPr var_A8
  loc_AFB170:  = Me.Fields
  loc_AFB175: FLdPr var_C0
  loc_AFB178: from_stack_2 = Me.Item(from_stack_1)
  loc_AFB17D: LitI2_Byte 0
  loc_AFB17F: LitVar_Missing var_110
  loc_AFB182: LitI2_Byte 0
  loc_AFB184: FLdZeroAd var_124
  loc_AFB187: CVarAd
  loc_AFB18B: PopAdLdVar
  loc_AFB18C: LitI4 1
  loc_AFB191: FLdPr Me
  loc_AFB194: MemLdStr global_84
  loc_AFB197: AryLock
  loc_AFB19A: Ary1LdPr
  loc_AFB19B: MemLdRfVar from_stack_1.global_8
  loc_AFB19E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AFB1A3: AryUnlock
  loc_AFB1A6: FFreeAd var_A8 = ""
  loc_AFB1AD: FFreeVar var_D0 = ""
  loc_AFB1B4: FLdRfVar var_124
  loc_AFB1B7: LitVarStr var_94, "FechOrpa"
  loc_AFB1BC: PopAdLdVar
  loc_AFB1BD: FLdRfVar var_C0
  loc_AFB1C0: FLdRfVar var_A8
  loc_AFB1C3: FLdPr var_FC
  loc_AFB1C6: from_stack_1v = clsordenpago.RsFrmGet()
  loc_AFB1CB: FLdPr var_A8
  loc_AFB1CE:  = Me.Fields
  loc_AFB1D3: FLdPr var_C0
  loc_AFB1D6: from_stack_2 = Me.Item(from_stack_1)
  loc_AFB1DB: LitI4 1
  loc_AFB1E0: LitI4 1
  loc_AFB1E5: LitVarStr var_A4, "dd/mm/yyyy"
  loc_AFB1EA: FStVarCopyObj var_110
  loc_AFB1ED: FLdRfVar var_110
  loc_AFB1F0: FLdZeroAd var_124
  loc_AFB1F3: CVarAd
  loc_AFB1F7: ImpAdCallI2 Format$(, )
  loc_AFB1FC: FStStr var_B0
  loc_AFB1FF: LitI2_Byte 0
  loc_AFB201: LitVar_Missing var_144
  loc_AFB204: LitI2_Byte 0
  loc_AFB206: FLdZeroAd var_B0
  loc_AFB209: CVarStr var_120
  loc_AFB20C: PopAdLdVar
  loc_AFB20D: LitI4 1
  loc_AFB212: FLdPr Me
  loc_AFB215: MemLdStr global_84
  loc_AFB218: AryLock
  loc_AFB21B: Ary1LdPr
  loc_AFB21C: MemLdRfVar from_stack_1.global_12
  loc_AFB21F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AFB224: AryUnlock
  loc_AFB227: FFree1Str var_B0
  loc_AFB22A: FFreeAd var_A8 = ""
  loc_AFB231: FFreeVar var_D0 = "": var_110 = "": var_120 = ""
  loc_AFB23C: FLdRfVar var_124
  loc_AFB23F: LitVarStr var_94, "TotalOP"
  loc_AFB244: PopAdLdVar
  loc_AFB245: FLdRfVar var_C0
  loc_AFB248: FLdRfVar var_A8
  loc_AFB24B: FLdPr var_FC
  loc_AFB24E: from_stack_1v = clsordenpago.RsFrmGet()
  loc_AFB253: FLdPr var_A8
  loc_AFB256:  = Me.Fields
  loc_AFB25B: FLdPr var_C0
  loc_AFB25E: from_stack_2 = Me.Item(from_stack_1)
  loc_AFB263: LitI2_Byte 0
  loc_AFB265: LitVar_Missing var_110
  loc_AFB268: LitI2_Byte &HFF
  loc_AFB26A: FLdZeroAd var_124
  loc_AFB26D: CVarAd
  loc_AFB271: PopAdLdVar
  loc_AFB272: LitI4 1
  loc_AFB277: FLdPr Me
  loc_AFB27A: MemLdStr global_84
  loc_AFB27D: AryLock
  loc_AFB280: Ary1LdPr
  loc_AFB281: MemLdRfVar from_stack_1.global_16
  loc_AFB284: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AFB289: AryUnlock
  loc_AFB28C: FFreeAd var_A8 = ""
  loc_AFB293: FFreeVar var_D0 = ""
  loc_AFB29A: FLdRfVar var_D0
  loc_AFB29D: FLdRfVar var_124
  loc_AFB2A0: LitVarStr var_94, "DetaOrpa"
  loc_AFB2A5: PopAdLdVar
  loc_AFB2A6: FLdRfVar var_C0
  loc_AFB2A9: FLdRfVar var_A8
  loc_AFB2AC: FLdPr var_FC
  loc_AFB2AF: from_stack_1v = clsordenpago.RsFrmGet()
  loc_AFB2B4: FLdPr var_A8
  loc_AFB2B7:  = Me.Fields
  loc_AFB2BC: FLdPr var_C0
  loc_AFB2BF: from_stack_2 = Me.Item(from_stack_1)
  loc_AFB2C4: FLdPr var_124
  loc_AFB2C7:  = Me.Value
  loc_AFB2CC: FLdRfVar var_B4
  loc_AFB2CF: FLdRfVar var_D0
  loc_AFB2D2: CStrVarTmp
  loc_AFB2D3: FStStrNoPop var_B0
  loc_AFB2D6: from_stack_2v = SaltosHTML(from_stack_1v)
  loc_AFB2DB: LitI2_Byte 0
  loc_AFB2DD: LitVar_Missing var_120
  loc_AFB2E0: LitI2_Byte 0
  loc_AFB2E2: FLdZeroAd var_B4
  loc_AFB2E5: CVarStr var_110
  loc_AFB2E8: PopAdLdVar
  loc_AFB2E9: LitI4 1
  loc_AFB2EE: FLdPr Me
  loc_AFB2F1: MemLdStr global_84
  loc_AFB2F4: AryLock
  loc_AFB2F7: Ary1LdPr
  loc_AFB2F8: MemLdRfVar from_stack_1.global_20
  loc_AFB2FB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AFB300: AryUnlock
  loc_AFB303: FFree1Str var_B0
  loc_AFB306: FFreeAd var_A8 = "": var_C0 = ""
  loc_AFB30F: FFreeVar var_D0 = "": var_110 = ""
  loc_AFB318: FLdRfVar var_124
  loc_AFB31B: LitVarStr var_94, "FeanOrpa"
  loc_AFB320: PopAdLdVar
  loc_AFB321: FLdRfVar var_C0
  loc_AFB324: FLdRfVar var_A8
  loc_AFB327: FLdPr var_FC
  loc_AFB32A: from_stack_1v = clsordenpago.RsFrmGet()
  loc_AFB32F: FLdPr var_A8
  loc_AFB332:  = Me.Fields
  loc_AFB337: FLdPr var_C0
  loc_AFB33A: from_stack_2 = Me.Item(from_stack_1)
  loc_AFB33F: FLdZeroAd var_124
  loc_AFB342: CVarAd
  loc_AFB346: ImpAdCallI2 IsNull()
  loc_AFB34B: NotI4
  loc_AFB34C: LitI4 1
  loc_AFB351: FLdPr Me
  loc_AFB354: MemLdStr global_84
  loc_AFB357: Ary1LdPr
  loc_AFB358: MemStI2 global_28
  loc_AFB35B: FFreeAd var_A8 = ""
  loc_AFB362: FFree1Var var_D0 = ""
  loc_AFB365: FLdRfVar var_D0
  loc_AFB368: FLdRfVar var_124
  loc_AFB36B: LitVarStr var_94, "ImprimeProv"
  loc_AFB370: PopAdLdVar
  loc_AFB371: FLdRfVar var_C0
  loc_AFB374: FLdRfVar var_A8
  loc_AFB377: FLdPr var_FC
  loc_AFB37A: from_stack_1v = clsordenpago.RsFrmGet()
  loc_AFB37F: FLdPr var_A8
  loc_AFB382:  = Me.Fields
  loc_AFB387: FLdPr var_C0
  loc_AFB38A: from_stack_2 = Me.Item(from_stack_1)
  loc_AFB38F: FLdPr var_124
  loc_AFB392:  = Me.Value
  loc_AFB397: FLdRfVar var_D0
  loc_AFB39A: CStrVarTmp
  loc_AFB39B: FStStrNoPop var_B0
  loc_AFB39E: LitI4 1
  loc_AFB3A3: FLdPr Me
  loc_AFB3A6: MemLdStr global_84
  loc_AFB3A9: Ary1LdPr
  loc_AFB3AA: MemStStrCopy
  loc_AFB3AE: FFree1Str var_B0
  loc_AFB3B1: FFreeAd var_A8 = "": var_C0 = ""
  loc_AFB3BA: FFree1Var var_D0 = ""
  loc_AFB3BD: LitI2_Byte 1
  loc_AFB3BF: FLdPr Me
  loc_AFB3C2: MemLdRfVar from_stack_1.global_88
  loc_AFB3C5: LitI4 1
  loc_AFB3CA: FLdPr Me
  loc_AFB3CD: MemLdStr global_84
  loc_AFB3D0: Ary1LdPr
  loc_AFB3D1: MemLdStr global_24
  loc_AFB3D4: LitI2_Byte 1
  loc_AFB3D6: FnUBound
  loc_AFB3D8: CI2I4
  loc_AFB3D9: ForI2 var_148
  loc_AFB3DF: FLdRfVar var_D0
  loc_AFB3E2: FLdRfVar var_124
  loc_AFB3E5: LitVarStr var_94, "ChunOrpa"
  loc_AFB3EA: PopAdLdVar
  loc_AFB3EB: FLdRfVar var_C0
  loc_AFB3EE: FLdRfVar var_A8
  loc_AFB3F1: FLdPr var_FC
  loc_AFB3F4: from_stack_1v = clsordenpago.RsFrmGet()
  loc_AFB3F9: FLdPr var_A8
  loc_AFB3FC:  = Me.Fields
  loc_AFB401: FLdPr var_C0
  loc_AFB404: from_stack_2 = Me.Item(from_stack_1)
  loc_AFB409: FLdPr var_124
  loc_AFB40C:  = Me.Value
  loc_AFB411: FLdRfVar var_154
  loc_AFB414: LitVarStr var_134, "DetaProv"
  loc_AFB419: PopAdLdVar
  loc_AFB41A: FLdRfVar var_150
  loc_AFB41D: FLdRfVar var_14C
  loc_AFB420: FLdPr var_FC
  loc_AFB423: from_stack_1v = clsordenpago.RsFrmGet()
  loc_AFB428: FLdPr var_14C
  loc_AFB42B:  = Me.Fields
  loc_AFB430: FLdPr var_150
  loc_AFB433: from_stack_2 = Me.Item(from_stack_1)
  loc_AFB438: LitVarStr var_164, vbNullString
  loc_AFB43D: FStVarCopyObj var_174
  loc_AFB440: FLdRfVar var_174
  loc_AFB443: FLdZeroAd var_154
  loc_AFB446: CVarAd
  loc_AFB44A: FLdRfVar var_D0
  loc_AFB44D: LitVarStr var_A4, "0"
  loc_AFB452: HardType
  loc_AFB453: EqVar var_110
  loc_AFB457: FStVar var_120
  loc_AFB45B: FLdRfVar var_120
  loc_AFB45E: FLdRfVar var_184
  loc_AFB461: ImpAdCallFPR4  = IIf(, , )
  loc_AFB466: LitI2_Byte 0
  loc_AFB468: LitVar_Missing var_1A8
  loc_AFB46B: LitI2_Byte 0
  loc_AFB46D: FLdVar var_184
  loc_AFB471: FLdPr Me
  loc_AFB474: MemLdI2 global_88
  loc_AFB477: CI4UI1
  loc_AFB478: LitI4 1
  loc_AFB47D: FLdPr Me
  loc_AFB480: MemLdStr global_84
  loc_AFB483: AryLock
  loc_AFB486: Ary1LdPr
  loc_AFB487: MemLdStr global_24
  loc_AFB48A: AryLock
  loc_AFB48D: Ary1LdPr
  loc_AFB48E: MemLdRfVar from_stack_1.global_0
  loc_AFB491: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AFB496: AryUnlock
  loc_AFB499: AryUnlock
  loc_AFB49C: FFreeAd var_A8 = "": var_C0 = "": var_124 = "": var_14C = ""
  loc_AFB4A9: FFreeVar var_D0 = "": var_120 = "": var_144 = "": var_174 = "": var_184 = ""
  loc_AFB4B8: FLdRfVar var_D0
  loc_AFB4BB: FLdRfVar var_124
  loc_AFB4BE: LitVarStr var_94, "ChunOrpa"
  loc_AFB4C3: PopAdLdVar
  loc_AFB4C4: FLdRfVar var_C0
  loc_AFB4C7: FLdRfVar var_A8
  loc_AFB4CA: FLdPr var_FC
  loc_AFB4CD: from_stack_1v = clsordenpago.RsFrmGet()
  loc_AFB4D2: FLdPr var_A8
  loc_AFB4D5:  = Me.Fields
  loc_AFB4DA: FLdPr var_C0
  loc_AFB4DD: from_stack_2 = Me.Item(from_stack_1)
  loc_AFB4E2: FLdPr var_124
  loc_AFB4E5:  = Me.Value
  loc_AFB4EA: FLdRfVar var_154
  loc_AFB4ED: LitVarStr var_134, "FantProv"
  loc_AFB4F2: PopAdLdVar
  loc_AFB4F3: FLdRfVar var_150
  loc_AFB4F6: FLdRfVar var_14C
  loc_AFB4F9: FLdPr var_FC
  loc_AFB4FC: from_stack_1v = clsordenpago.RsFrmGet()
  loc_AFB501: FLdPr var_14C
  loc_AFB504:  = Me.Fields
  loc_AFB509: FLdPr var_150
  loc_AFB50C: from_stack_2 = Me.Item(from_stack_1)
  loc_AFB511: LitVarStr var_164, vbNullString
  loc_AFB516: FStVarCopyObj var_174
  loc_AFB519: FLdRfVar var_174
  loc_AFB51C: FLdZeroAd var_154
  loc_AFB51F: CVarAd
  loc_AFB523: FLdRfVar var_D0
  loc_AFB526: LitVarStr var_A4, "0"
  loc_AFB52B: HardType
  loc_AFB52C: EqVar var_110
  loc_AFB530: FStVar var_120
  loc_AFB534: FLdRfVar var_120
  loc_AFB537: FLdRfVar var_184
  loc_AFB53A: ImpAdCallFPR4  = IIf(, , )
  loc_AFB53F: LitI2_Byte 0
  loc_AFB541: LitVar_Missing var_1A8
  loc_AFB544: LitI2_Byte 0
  loc_AFB546: FLdVar var_184
  loc_AFB54A: FLdPr Me
  loc_AFB54D: MemLdI2 global_88
  loc_AFB550: CI4UI1
  loc_AFB551: LitI4 1
  loc_AFB556: FLdPr Me
  loc_AFB559: MemLdStr global_84
  loc_AFB55C: AryLock
  loc_AFB55F: Ary1LdPr
  loc_AFB560: MemLdStr global_24
  loc_AFB563: AryLock
  loc_AFB566: Ary1LdPr
  loc_AFB567: MemLdRfVar from_stack_1.global_4
  loc_AFB56A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AFB56F: AryUnlock
  loc_AFB572: AryUnlock
  loc_AFB575: FFreeAd var_A8 = "": var_C0 = "": var_124 = "": var_14C = ""
  loc_AFB582: FFreeVar var_D0 = "": var_120 = "": var_144 = "": var_174 = "": var_184 = ""
  loc_AFB591: FLdPr var_FC
  loc_AFB594: Call clsordenpago.MoveSiguiente()
  loc_AFB599: FLdPr Me
  loc_AFB59C: MemLdRfVar from_stack_1.global_88
  loc_AFB59F: NextI2 var_148, loc_AFB3DF
  loc_AFB5A4: LitNothing
  loc_AFB5A6: FStAd var_FC 
  loc_AFB5AA: LitI2_Byte &HFF
  loc_AFB5AC: FLdPr Me
  loc_AFB5AF: MemStI2 bGenerado
  loc_AFB5B2: LitI4 0
  loc_AFB5B7: CI2I4
  loc_AFB5B8: FLdPr Me
  loc_AFB5BB: Me.MousePointer = from_stack_1
  loc_AFB5C0: LitVarStr var_94, vbNullString
  loc_AFB5C5: PopAdLdVar
  loc_AFB5C6: FLdPr Me
  loc_AFB5C9: VCallAd Control_ID_statusBar
  loc_AFB5CC: FStAdFunc var_A8
  loc_AFB5CF: FLdPr var_A8
  loc_AFB5D2: LateIdSt
  loc_AFB5D7: FFree1Ad var_A8
  loc_AFB5DA: ExitProcHresult
End Sub

Public Function SaltosHTML(Texto) '9A68E0
  'Data Table: 444668
  loc_9A6860: ILdRf Texto
  loc_9A6863: FStStrCopy var_8C
  loc_9A6866: ZeroRetVal
  loc_9A6868: LitI2_Byte 1
  loc_9A686A: FLdRfVar var_8E
  loc_9A686D: ILdRf var_8C
  loc_9A6870: FnLenStr
  loc_9A6871: CI2I4
  loc_9A6872: ForI2 var_98
  loc_9A6878: LitVarI2 var_B8, 1
  loc_9A687D: FLdI2 var_8E
  loc_9A6880: CI4UI1
  loc_9A6881: ILdRf var_8C
  loc_9A6884: ImpAdCallI2 Mid$(, , )
  loc_9A6889: FStStrNoPop var_BC
  loc_9A688C: ImpAdCallI2 Asc()
  loc_9A6891: LitI2_Byte &HD
  loc_9A6893: EqI2
  loc_9A6894: FFree1Str var_BC
  loc_9A6897: FFree1Var var_B8 = ""
  loc_9A689A: BranchF loc_9A68AA
  loc_9A689D: ILdRf SaltosHTML
  loc_9A68A0: LitStr "<br>"
  loc_9A68A3: ConcatStr
  loc_9A68A4: FStStr SaltosHTML
  loc_9A68A7: Branch loc_9A68CB
  loc_9A68AA: ILdRf SaltosHTML
  loc_9A68AD: LitVarI2 var_B8, 1
  loc_9A68B2: FLdI2 var_8E
  loc_9A68B5: CI4UI1
  loc_9A68B6: ILdRf var_8C
  loc_9A68B9: ImpAdCallI2 Mid$(, , )
  loc_9A68BE: FStStrNoPop var_BC
  loc_9A68C1: ConcatStr
  loc_9A68C2: FStStr SaltosHTML
  loc_9A68C5: FFree1Str var_BC
  loc_9A68C8: FFree1Var var_B8 = ""
  loc_9A68CB: FLdRfVar var_8E
  loc_9A68CE: NextI2 var_98, loc_9A6878
  loc_9A68D3: ILdRf SaltosHTML
  loc_9A68D6: FStStrCopy var_88
  loc_9A68D9: ExitProcCbHresult
End Function

Public Sub GeneraHTML() '98CCCC
  'Data Table: 444668
  loc_98CC84: FLdRfVar var_88
  loc_98CC87: LitI2_Byte 0
  loc_98CC89: LitI2_Byte &HFF
  loc_98CC8B: ImpAdLdI4 MemVar_C3D83C
  loc_98CC8E: FLdPr Me
  loc_98CC91: MemLdRfVar from_stack_1.global_80
  loc_98CC94: NewIfNullPr IFileSystem3
  loc_98CC97: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_98CC9C: ILdRf var_88
  loc_98CC9F: FLdPr Me
  loc_98CCA2: MemStVarAd
  loc_98CCA6: FFree1Ad var_88
  loc_98CCA9: Call Proc_168_19_9BA18C()
  loc_98CCAE: Call Proc_168_20_AD5040()
  loc_98CCB3: Call Proc_168_21_983500()
  loc_98CCB8: FLdPr Me
  loc_98CCBB: MemLdRfVar from_stack_1.htmFile
  loc_98CCBE: LdPrVar
  loc_98CCC0: LateMemCall
  loc_98CCC6: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_98CCCB: ExitProcHresult
End Sub

Private Function Proc_168_19_9BA18C() '9BA18C
  'Data Table: 444668
  loc_9BA0D4: LitVarStr var_94, "<html>"
  loc_9BA0D9: PopAdLdVar
  loc_9BA0DA: FLdPr Me
  loc_9BA0DD: MemLdRfVar from_stack_1.htmFile
  loc_9BA0E0: LdPrVar
  loc_9BA0E2: LateMemCall
  loc_9BA0E8: LitVarStr var_94, "<head>"
  loc_9BA0ED: PopAdLdVar
  loc_9BA0EE: FLdPr Me
  loc_9BA0F1: MemLdRfVar from_stack_1.htmFile
  loc_9BA0F4: LdPrVar
  loc_9BA0F6: LateMemCall
  loc_9BA0FC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_9BA101: PopAdLdVar
  loc_9BA102: FLdPr Me
  loc_9BA105: MemLdRfVar from_stack_1.htmFile
  loc_9BA108: LdPrVar
  loc_9BA10A: LateMemCall
  loc_9BA110: LitStr "<title>"
  loc_9BA113: FLdRfVar var_A8
  loc_9BA116: FLdPr Me
  loc_9BA119:  = Me.Caption
  loc_9BA11E: ILdRf var_A8
  loc_9BA121: ConcatStr
  loc_9BA122: FStStrNoPop var_AC
  loc_9BA125: LitStr "</title>"
  loc_9BA128: ConcatStr
  loc_9BA129: CVarStr var_BC
  loc_9BA12C: PopAdLdVar
  loc_9BA12D: FLdPr Me
  loc_9BA130: MemLdRfVar from_stack_1.htmFile
  loc_9BA133: LdPrVar
  loc_9BA135: LateMemCall
  loc_9BA13B: FFreeStr var_A8 = ""
  loc_9BA142: FFree1Var var_BC = ""
  loc_9BA145: LitStr vbNullString
  loc_9BA148: ILdRf Me
  loc_9BA14B: CastAd
  loc_9BA14E: FStAdFunc var_C0
  loc_9BA151: FLdRfVar var_C0
  loc_9BA154: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_9BA159: FFree1Ad var_C0
  loc_9BA15C: LitI4 0
  loc_9BA161: FStStrCopy var_AC
  loc_9BA164: FLdRfVar var_AC
  loc_9BA167: LitI4 0
  loc_9BA16C: FStStrCopy var_A8
  loc_9BA16F: FLdRfVar var_A8
  loc_9BA172: LitI2_Byte 0
  loc_9BA174: PopTmpLdAd2 var_C2
  loc_9BA177: FLdPr Me
  loc_9BA17A: MemLdRfVar from_stack_1.htmFile
  loc_9BA17D: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_9BA182: FFreeStr var_A8 = ""
  loc_9BA189: ExitProcHresult
  loc_9BA18A: LeCy
End Function

Private Function Proc_168_20_AD5040() 'AD5040
  'Data Table: 444668
  loc_AD49C8: LitVarStr var_94, "<table width=""90" & Chr(37) & """ height=""950"" border=""1"" align=""center"" cellpadding=""40"" cellspacing=""0"" class=""Titulo2"">"
  loc_AD49CD: PopAdLdVar
  loc_AD49CE: FLdPr Me
  loc_AD49D1: MemLdRfVar from_stack_1.htmFile
  loc_AD49D4: LdPrVar
  loc_AD49D6: LateMemCall
  loc_AD49DC: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AD49E1: PopAdLdVar
  loc_AD49E2: FLdPr Me
  loc_AD49E5: MemLdRfVar from_stack_1.htmFile
  loc_AD49E8: LdPrVar
  loc_AD49EA: LateMemCall
  loc_AD49F0: LitVarStr var_A4, "    <td><p>&nbsp;</p><p align=""center""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><span class=""Titulo1""><br>"
  loc_AD49F5: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AD49FA: FStVarCopyObj var_B4
  loc_AD49FD: FLdRfVar var_B4
  loc_AD4A00: FLdRfVar var_C4
  loc_AD4A03: ImpAdCallFPR4  = Ucase()
  loc_AD4A08: FLdRfVar var_C4
  loc_AD4A0B: ConcatVar var_D4
  loc_AD4A0F: LitVarStr var_E4, "</span></p>"
  loc_AD4A14: ConcatVar var_F4
  loc_AD4A18: PopAdLdVar
  loc_AD4A19: FLdPr Me
  loc_AD4A1C: MemLdRfVar from_stack_1.htmFile
  loc_AD4A1F: LdPrVar
  loc_AD4A21: LateMemCall
  loc_AD4A27: FFreeVar var_B4 = "": var_C4 = "": var_D4 = ""
  loc_AD4A32: LitVarStr var_94, "      <p align=""center"">&nbsp;</p>"
  loc_AD4A37: PopAdLdVar
  loc_AD4A38: FLdPr Me
  loc_AD4A3B: MemLdRfVar from_stack_1.htmFile
  loc_AD4A3E: LdPrVar
  loc_AD4A40: LateMemCall
  loc_AD4A46: LitStr "      <p align=""center"">ORDEN DE PAGO N&ordm; "
  loc_AD4A49: LitI4 1
  loc_AD4A4E: FLdPr Me
  loc_AD4A51: MemLdStr global_84
  loc_AD4A54: Ary1LdPr
  loc_AD4A55: MemLdStr global_0
  loc_AD4A58: ConcatStr
  loc_AD4A59: FStStrNoPop var_108
  loc_AD4A5C: LitStr "</p>"
  loc_AD4A5F: ConcatStr
  loc_AD4A60: CVarStr var_B4
  loc_AD4A63: PopAdLdVar
  loc_AD4A64: FLdPr Me
  loc_AD4A67: MemLdRfVar from_stack_1.htmFile
  loc_AD4A6A: LdPrVar
  loc_AD4A6C: LateMemCall
  loc_AD4A72: FFree1Str var_108
  loc_AD4A75: FFree1Var var_B4 = ""
  loc_AD4A78: LitI4 1
  loc_AD4A7D: FLdPr Me
  loc_AD4A80: MemLdStr global_84
  loc_AD4A83: Ary1LdPr
  loc_AD4A84: MemLdI2 global_28
  loc_AD4A87: BranchF loc_AD4A9E
  loc_AD4A8A: LitVarStr var_94, "      <p align=""center"">(ANULADA)</p>"
  loc_AD4A8F: PopAdLdVar
  loc_AD4A90: FLdPr Me
  loc_AD4A93: MemLdRfVar from_stack_1.htmFile
  loc_AD4A96: LdPrVar
  loc_AD4A98: LateMemCall
  loc_AD4A9E: LitVarStr var_94, "      <p align=""center"">&nbsp;</p>"
  loc_AD4AA3: PopAdLdVar
  loc_AD4AA4: FLdPr Me
  loc_AD4AA7: MemLdRfVar from_stack_1.htmFile
  loc_AD4AAA: LdPrVar
  loc_AD4AAC: LateMemCall
  loc_AD4AB2: LitVarStr var_94, "      <table border=""0"" align=""center"" cellpadding=""7"" cellspacing=""0"" class=""Titulo2"">"
  loc_AD4AB7: PopAdLdVar
  loc_AD4AB8: FLdPr Me
  loc_AD4ABB: MemLdRfVar from_stack_1.htmFile
  loc_AD4ABE: LdPrVar
  loc_AD4AC0: LateMemCall
  loc_AD4AC6: LitVarStr var_94, "        <tr valign=""top"">"
  loc_AD4ACB: PopAdLdVar
  loc_AD4ACC: FLdPr Me
  loc_AD4ACF: MemLdRfVar from_stack_1.htmFile
  loc_AD4AD2: LdPrVar
  loc_AD4AD4: LateMemCall
  loc_AD4ADA: LitVarStr var_94, "          <td>EXPEDIENTE:</td>"
  loc_AD4ADF: PopAdLdVar
  loc_AD4AE0: FLdPr Me
  loc_AD4AE3: MemLdRfVar from_stack_1.htmFile
  loc_AD4AE6: LdPrVar
  loc_AD4AE8: LateMemCall
  loc_AD4AEE: LitStr "          <td>"
  loc_AD4AF1: LitI4 1
  loc_AD4AF6: FLdPr Me
  loc_AD4AF9: MemLdStr global_84
  loc_AD4AFC: Ary1LdPr
  loc_AD4AFD: MemLdStr global_4
  loc_AD4B00: ConcatStr
  loc_AD4B01: FStStrNoPop var_108
  loc_AD4B04: LitStr "</td>"
  loc_AD4B07: ConcatStr
  loc_AD4B08: CVarStr var_B4
  loc_AD4B0B: PopAdLdVar
  loc_AD4B0C: FLdPr Me
  loc_AD4B0F: MemLdRfVar from_stack_1.htmFile
  loc_AD4B12: LdPrVar
  loc_AD4B14: LateMemCall
  loc_AD4B1A: FFree1Str var_108
  loc_AD4B1D: FFree1Var var_B4 = ""
  loc_AD4B20: LitVarStr var_94, "        </tr>"
  loc_AD4B25: PopAdLdVar
  loc_AD4B26: FLdPr Me
  loc_AD4B29: MemLdRfVar from_stack_1.htmFile
  loc_AD4B2C: LdPrVar
  loc_AD4B2E: LateMemCall
  loc_AD4B34: LitVarStr var_94, "        <tr valign=""top"">"
  loc_AD4B39: PopAdLdVar
  loc_AD4B3A: FLdPr Me
  loc_AD4B3D: MemLdRfVar from_stack_1.htmFile
  loc_AD4B40: LdPrVar
  loc_AD4B42: LateMemCall
  loc_AD4B48: LitVarStr var_94, "          <td>LIQUIDACIÓN:</td>"
  loc_AD4B4D: PopAdLdVar
  loc_AD4B4E: FLdPr Me
  loc_AD4B51: MemLdRfVar from_stack_1.htmFile
  loc_AD4B54: LdPrVar
  loc_AD4B56: LateMemCall
  loc_AD4B5C: LitStr "          <td>"
  loc_AD4B5F: LitI4 1
  loc_AD4B64: FLdPr Me
  loc_AD4B67: MemLdStr global_84
  loc_AD4B6A: Ary1LdPr
  loc_AD4B6B: MemLdStr global_8
  loc_AD4B6E: ConcatStr
  loc_AD4B6F: FStStrNoPop var_108
  loc_AD4B72: LitStr "</td>"
  loc_AD4B75: ConcatStr
  loc_AD4B76: CVarStr var_B4
  loc_AD4B79: PopAdLdVar
  loc_AD4B7A: FLdPr Me
  loc_AD4B7D: MemLdRfVar from_stack_1.htmFile
  loc_AD4B80: LdPrVar
  loc_AD4B82: LateMemCall
  loc_AD4B88: FFree1Str var_108
  loc_AD4B8B: FFree1Var var_B4 = ""
  loc_AD4B8E: LitVarStr var_94, "        </tr>"
  loc_AD4B93: PopAdLdVar
  loc_AD4B94: FLdPr Me
  loc_AD4B97: MemLdRfVar from_stack_1.htmFile
  loc_AD4B9A: LdPrVar
  loc_AD4B9C: LateMemCall
  loc_AD4BA2: LitVarStr var_94, "        <tr valign=""top"">"
  loc_AD4BA7: PopAdLdVar
  loc_AD4BA8: FLdPr Me
  loc_AD4BAB: MemLdRfVar from_stack_1.htmFile
  loc_AD4BAE: LdPrVar
  loc_AD4BB0: LateMemCall
  loc_AD4BB6: LitVarStr var_94, "          <td>PERIODO: </td>"
  loc_AD4BBB: PopAdLdVar
  loc_AD4BBC: FLdPr Me
  loc_AD4BBF: MemLdRfVar from_stack_1.htmFile
  loc_AD4BC2: LdPrVar
  loc_AD4BC4: LateMemCall
  loc_AD4BCA: LitStr "          <td>"
  loc_AD4BCD: FLdRfVar var_108
  loc_AD4BD0: FLdPr Me
  loc_AD4BD3: VCallAd Control_ID_cboPeriodo
  loc_AD4BD6: FStAdFunc var_10C
  loc_AD4BD9: FLdPr var_10C
  loc_AD4BDC:  = Me.Text
  loc_AD4BE1: ILdRf var_108
  loc_AD4BE4: ConcatStr
  loc_AD4BE5: FStStrNoPop var_110
  loc_AD4BE8: LitStr "</td>"
  loc_AD4BEB: ConcatStr
  loc_AD4BEC: CVarStr var_B4
  loc_AD4BEF: PopAdLdVar
  loc_AD4BF0: FLdPr Me
  loc_AD4BF3: MemLdRfVar from_stack_1.htmFile
  loc_AD4BF6: LdPrVar
  loc_AD4BF8: LateMemCall
  loc_AD4BFE: FFreeStr var_108 = ""
  loc_AD4C05: FFree1Ad var_10C
  loc_AD4C08: FFree1Var var_B4 = ""
  loc_AD4C0B: LitVarStr var_94, "        </tr>"
  loc_AD4C10: PopAdLdVar
  loc_AD4C11: FLdPr Me
  loc_AD4C14: MemLdRfVar from_stack_1.htmFile
  loc_AD4C17: LdPrVar
  loc_AD4C19: LateMemCall
  loc_AD4C1F: LitVarStr var_94, "        <tr valign=""top"">"
  loc_AD4C24: PopAdLdVar
  loc_AD4C25: FLdPr Me
  loc_AD4C28: MemLdRfVar from_stack_1.htmFile
  loc_AD4C2B: LdPrVar
  loc_AD4C2D: LateMemCall
  loc_AD4C33: LitVarStr var_94, "          <td>FECHA:</td>"
  loc_AD4C38: PopAdLdVar
  loc_AD4C39: FLdPr Me
  loc_AD4C3C: MemLdRfVar from_stack_1.htmFile
  loc_AD4C3F: LdPrVar
  loc_AD4C41: LateMemCall
  loc_AD4C47: LitStr "          <td>"
  loc_AD4C4A: LitI4 1
  loc_AD4C4F: FLdPr Me
  loc_AD4C52: MemLdStr global_84
  loc_AD4C55: Ary1LdPr
  loc_AD4C56: MemLdStr global_12
  loc_AD4C59: ConcatStr
  loc_AD4C5A: FStStrNoPop var_108
  loc_AD4C5D: LitStr "</td>"
  loc_AD4C60: ConcatStr
  loc_AD4C61: CVarStr var_B4
  loc_AD4C64: PopAdLdVar
  loc_AD4C65: FLdPr Me
  loc_AD4C68: MemLdRfVar from_stack_1.htmFile
  loc_AD4C6B: LdPrVar
  loc_AD4C6D: LateMemCall
  loc_AD4C73: FFree1Str var_108
  loc_AD4C76: FFree1Var var_B4 = ""
  loc_AD4C79: LitVarStr var_94, "        </tr>"
  loc_AD4C7E: PopAdLdVar
  loc_AD4C7F: FLdPr Me
  loc_AD4C82: MemLdRfVar from_stack_1.htmFile
  loc_AD4C85: LdPrVar
  loc_AD4C87: LateMemCall
  loc_AD4C8D: LitVarStr var_94, "        <tr valign=""top"">"
  loc_AD4C92: PopAdLdVar
  loc_AD4C93: FLdPr Me
  loc_AD4C96: MemLdRfVar from_stack_1.htmFile
  loc_AD4C99: LdPrVar
  loc_AD4C9B: LateMemCall
  loc_AD4CA1: LitVarStr var_94, "          <td>IMPORTE TOTAL:</td>"
  loc_AD4CA6: PopAdLdVar
  loc_AD4CA7: FLdPr Me
  loc_AD4CAA: MemLdRfVar from_stack_1.htmFile
  loc_AD4CAD: LdPrVar
  loc_AD4CAF: LateMemCall
  loc_AD4CB5: LitStr "          <td>"
  loc_AD4CB8: LitI4 1
  loc_AD4CBD: FLdPr Me
  loc_AD4CC0: MemLdStr global_84
  loc_AD4CC3: Ary1LdPr
  loc_AD4CC4: MemLdStr global_16
  loc_AD4CC7: ConcatStr
  loc_AD4CC8: FStStrNoPop var_108
  loc_AD4CCB: LitStr "</td>"
  loc_AD4CCE: ConcatStr
  loc_AD4CCF: CVarStr var_B4
  loc_AD4CD2: PopAdLdVar
  loc_AD4CD3: FLdPr Me
  loc_AD4CD6: MemLdRfVar from_stack_1.htmFile
  loc_AD4CD9: LdPrVar
  loc_AD4CDB: LateMemCall
  loc_AD4CE1: FFree1Str var_108
  loc_AD4CE4: FFree1Var var_B4 = ""
  loc_AD4CE7: LitVarStr var_94, "        </tr>"
  loc_AD4CEC: PopAdLdVar
  loc_AD4CED: FLdPr Me
  loc_AD4CF0: MemLdRfVar from_stack_1.htmFile
  loc_AD4CF3: LdPrVar
  loc_AD4CF5: LateMemCall
  loc_AD4CFB: LitVarStr var_94, "        <tr valign=""top"">"
  loc_AD4D00: PopAdLdVar
  loc_AD4D01: FLdPr Me
  loc_AD4D04: MemLdRfVar from_stack_1.htmFile
  loc_AD4D07: LdPrVar
  loc_AD4D09: LateMemCall
  loc_AD4D0F: LitI4 1
  loc_AD4D14: FLdPr Me
  loc_AD4D17: MemLdStr global_84
  loc_AD4D1A: Ary1LdPr
  loc_AD4D1B: MemLdStr global_32
  loc_AD4D1E: LitStr "0"
  loc_AD4D21: EqStr
  loc_AD4D23: BranchF loc_AD4EA1
  loc_AD4D26: LitI4 1
  loc_AD4D2B: FLdPr Me
  loc_AD4D2E: MemLdStr global_84
  loc_AD4D31: Ary1LdPr
  loc_AD4D32: MemLdStr global_24
  loc_AD4D35: LitI2_Byte 1
  loc_AD4D37: FnUBound
  loc_AD4D39: LitI4 1
  loc_AD4D3E: GtI4
  loc_AD4D3F: BranchF loc_AD4D59
  loc_AD4D42: LitVarStr var_94, "          <td>PROVEEDORES:</td>"
  loc_AD4D47: PopAdLdVar
  loc_AD4D48: FLdPr Me
  loc_AD4D4B: MemLdRfVar from_stack_1.htmFile
  loc_AD4D4E: LdPrVar
  loc_AD4D50: LateMemCall
  loc_AD4D56: Branch loc_AD4D6D
  loc_AD4D59: LitVarStr var_94, "          <td>PROVEEDOR:</td>"
  loc_AD4D5E: PopAdLdVar
  loc_AD4D5F: FLdPr Me
  loc_AD4D62: MemLdRfVar from_stack_1.htmFile
  loc_AD4D65: LdPrVar
  loc_AD4D67: LateMemCall
  loc_AD4D6D: LitVarStr var_94, "          <td>"
  loc_AD4D72: PopAdLdVar
  loc_AD4D73: FLdPr Me
  loc_AD4D76: MemLdRfVar from_stack_1.htmFile
  loc_AD4D79: LdPrVar
  loc_AD4D7B: LateMemCall
  loc_AD4D81: LitI2_Byte 1
  loc_AD4D83: FLdPr Me
  loc_AD4D86: MemLdRfVar from_stack_1.global_88
  loc_AD4D89: LitI4 1
  loc_AD4D8E: FLdPr Me
  loc_AD4D91: MemLdStr global_84
  loc_AD4D94: Ary1LdPr
  loc_AD4D95: MemLdStr global_24
  loc_AD4D98: LitI2_Byte 1
  loc_AD4D9A: FnUBound
  loc_AD4D9C: CI2I4
  loc_AD4D9D: ForI2 var_114
  loc_AD4DA3: LitStr "          "
  loc_AD4DA6: FLdPr Me
  loc_AD4DA9: MemLdI2 global_88
  loc_AD4DAC: CI4UI1
  loc_AD4DAD: LitI4 1
  loc_AD4DB2: FLdPr Me
  loc_AD4DB5: MemLdStr global_84
  loc_AD4DB8: Ary1LdPr
  loc_AD4DB9: MemLdStr global_24
  loc_AD4DBC: Ary1LdPr
  loc_AD4DBD: MemLdStr global_0
  loc_AD4DC0: ConcatStr
  loc_AD4DC1: CVarStr var_B4
  loc_AD4DC4: PopAdLdVar
  loc_AD4DC5: FLdPr Me
  loc_AD4DC8: MemLdRfVar from_stack_1.htmFile
  loc_AD4DCB: LdPrVar
  loc_AD4DCD: LateMemCall
  loc_AD4DD3: FFree1Var var_B4 = ""
  loc_AD4DD6: FLdPr Me
  loc_AD4DD9: MemLdI2 global_88
  loc_AD4DDC: CI4UI1
  loc_AD4DDD: LitI4 1
  loc_AD4DE2: FLdPr Me
  loc_AD4DE5: MemLdStr global_84
  loc_AD4DE8: Ary1LdPr
  loc_AD4DE9: MemLdStr global_24
  loc_AD4DEC: Ary1LdPr
  loc_AD4DED: MemLdStr global_0
  loc_AD4DF0: FLdPr Me
  loc_AD4DF3: MemLdI2 global_88
  loc_AD4DF6: CI4UI1
  loc_AD4DF7: LitI4 1
  loc_AD4DFC: FLdPr Me
  loc_AD4DFF: MemLdStr global_84
  loc_AD4E02: Ary1LdPr
  loc_AD4E03: MemLdStr global_24
  loc_AD4E06: Ary1LdPr
  loc_AD4E07: MemLdStr global_4
  loc_AD4E0A: NeStr
  loc_AD4E0C: BranchF loc_AD4E42
  loc_AD4E0F: LitStr " - "
  loc_AD4E12: FLdPr Me
  loc_AD4E15: MemLdI2 global_88
  loc_AD4E18: CI4UI1
  loc_AD4E19: LitI4 1
  loc_AD4E1E: FLdPr Me
  loc_AD4E21: MemLdStr global_84
  loc_AD4E24: Ary1LdPr
  loc_AD4E25: MemLdStr global_24
  loc_AD4E28: Ary1LdPr
  loc_AD4E29: MemLdStr global_4
  loc_AD4E2C: ConcatStr
  loc_AD4E2D: CVarStr var_B4
  loc_AD4E30: PopAdLdVar
  loc_AD4E31: FLdPr Me
  loc_AD4E34: MemLdRfVar from_stack_1.htmFile
  loc_AD4E37: LdPrVar
  loc_AD4E39: LateMemCall
  loc_AD4E3F: FFree1Var var_B4 = ""
  loc_AD4E42: FLdPr Me
  loc_AD4E45: MemLdI2 global_88
  loc_AD4E48: CI4UI1
  loc_AD4E49: LitI4 1
  loc_AD4E4E: FLdPr Me
  loc_AD4E51: MemLdStr global_84
  loc_AD4E54: Ary1LdPr
  loc_AD4E55: MemLdStr global_24
  loc_AD4E58: LitI2_Byte 1
  loc_AD4E5A: FnUBound
  loc_AD4E5C: LtI4
  loc_AD4E5D: BranchF loc_AD4E96
  loc_AD4E60: FLdPr Me
  loc_AD4E63: MemLdI2 global_88
  loc_AD4E66: CI4UI1
  loc_AD4E67: LitI4 1
  loc_AD4E6C: FLdPr Me
  loc_AD4E6F: MemLdStr global_84
  loc_AD4E72: Ary1LdPr
  loc_AD4E73: MemLdStr global_24
  loc_AD4E76: Ary1LdPr
  loc_AD4E77: MemLdStr global_0
  loc_AD4E7A: LitStr vbNullString
  loc_AD4E7D: NeStr
  loc_AD4E7F: BranchF loc_AD4E96
  loc_AD4E82: LitVarStr var_94, "<br>"
  loc_AD4E87: PopAdLdVar
  loc_AD4E88: FLdPr Me
  loc_AD4E8B: MemLdRfVar from_stack_1.htmFile
  loc_AD4E8E: LdPrVar
  loc_AD4E90: LateMemCall
  loc_AD4E96: FLdPr Me
  loc_AD4E99: MemLdRfVar from_stack_1.global_88
  loc_AD4E9C: NextI2 var_114, loc_AD4DA3
  loc_AD4EA1: LitVarStr var_94, "          </td>"
  loc_AD4EA6: PopAdLdVar
  loc_AD4EA7: FLdPr Me
  loc_AD4EAA: MemLdRfVar from_stack_1.htmFile
  loc_AD4EAD: LdPrVar
  loc_AD4EAF: LateMemCall
  loc_AD4EB5: LitVarStr var_94, "        </tr>"
  loc_AD4EBA: PopAdLdVar
  loc_AD4EBB: FLdPr Me
  loc_AD4EBE: MemLdRfVar from_stack_1.htmFile
  loc_AD4EC1: LdPrVar
  loc_AD4EC3: LateMemCall
  loc_AD4EC9: LitVarStr var_94, "        <tr valign=""top"">"
  loc_AD4ECE: PopAdLdVar
  loc_AD4ECF: FLdPr Me
  loc_AD4ED2: MemLdRfVar from_stack_1.htmFile
  loc_AD4ED5: LdPrVar
  loc_AD4ED7: LateMemCall
  loc_AD4EDD: LitVarStr var_94, "          <td>&nbsp;</td>"
  loc_AD4EE2: PopAdLdVar
  loc_AD4EE3: FLdPr Me
  loc_AD4EE6: MemLdRfVar from_stack_1.htmFile
  loc_AD4EE9: LdPrVar
  loc_AD4EEB: LateMemCall
  loc_AD4EF1: LitVarStr var_94, "          <td>&nbsp;</td>"
  loc_AD4EF6: PopAdLdVar
  loc_AD4EF7: FLdPr Me
  loc_AD4EFA: MemLdRfVar from_stack_1.htmFile
  loc_AD4EFD: LdPrVar
  loc_AD4EFF: LateMemCall
  loc_AD4F05: LitVarStr var_94, "        </tr>"
  loc_AD4F0A: PopAdLdVar
  loc_AD4F0B: FLdPr Me
  loc_AD4F0E: MemLdRfVar from_stack_1.htmFile
  loc_AD4F11: LdPrVar
  loc_AD4F13: LateMemCall
  loc_AD4F19: LitVarStr var_94, "        <tr valign=""top"">"
  loc_AD4F1E: PopAdLdVar
  loc_AD4F1F: FLdPr Me
  loc_AD4F22: MemLdRfVar from_stack_1.htmFile
  loc_AD4F25: LdPrVar
  loc_AD4F27: LateMemCall
  loc_AD4F2D: LitStr "          <td colspan=""2""><div align=""justify"">"
  loc_AD4F30: LitI4 1
  loc_AD4F35: FLdPr Me
  loc_AD4F38: MemLdStr global_84
  loc_AD4F3B: Ary1LdPr
  loc_AD4F3C: MemLdStr global_20
  loc_AD4F3F: ConcatStr
  loc_AD4F40: FStStrNoPop var_108
  loc_AD4F43: LitStr "</div></td>"
  loc_AD4F46: ConcatStr
  loc_AD4F47: CVarStr var_B4
  loc_AD4F4A: PopAdLdVar
  loc_AD4F4B: FLdPr Me
  loc_AD4F4E: MemLdRfVar from_stack_1.htmFile
  loc_AD4F51: LdPrVar
  loc_AD4F53: LateMemCall
  loc_AD4F59: FFree1Str var_108
  loc_AD4F5C: FFree1Var var_B4 = ""
  loc_AD4F5F: LitVarStr var_94, "        </tr>"
  loc_AD4F64: PopAdLdVar
  loc_AD4F65: FLdPr Me
  loc_AD4F68: MemLdRfVar from_stack_1.htmFile
  loc_AD4F6B: LdPrVar
  loc_AD4F6D: LateMemCall
  loc_AD4F73: FLdRfVar var_108
  loc_AD4F76: FLdPr Me
  loc_AD4F79: VCallAd Control_ID_ObservacionesTxt
  loc_AD4F7C: FStAdFunc var_10C
  loc_AD4F7F: FLdPr var_10C
  loc_AD4F82:  = Me.Text
  loc_AD4F87: ILdRf var_108
  loc_AD4F8A: LitStr vbNullString
  loc_AD4F8D: NeStr
  loc_AD4F8F: FFree1Str var_108
  loc_AD4F92: FFree1Ad var_10C
  loc_AD4F95: BranchF loc_AD5015
  loc_AD4F98: LitVarStr var_94, "        <tr valign=""top"">"
  loc_AD4F9D: PopAdLdVar
  loc_AD4F9E: FLdPr Me
  loc_AD4FA1: MemLdRfVar from_stack_1.htmFile
  loc_AD4FA4: LdPrVar
  loc_AD4FA6: LateMemCall
  loc_AD4FAC: LitVarStr var_94, "          <td><br>OBSERVACIONES: </td>"
  loc_AD4FB1: PopAdLdVar
  loc_AD4FB2: FLdPr Me
  loc_AD4FB5: MemLdRfVar from_stack_1.htmFile
  loc_AD4FB8: LdPrVar
  loc_AD4FBA: LateMemCall
  loc_AD4FC0: LitStr "          <td><br>"
  loc_AD4FC3: FLdRfVar var_108
  loc_AD4FC6: FLdPr Me
  loc_AD4FC9: VCallAd Control_ID_ObservacionesTxt
  loc_AD4FCC: FStAdFunc var_10C
  loc_AD4FCF: FLdPr var_10C
  loc_AD4FD2:  = Me.Text
  loc_AD4FD7: ILdRf var_108
  loc_AD4FDA: ConcatStr
  loc_AD4FDB: FStStrNoPop var_110
  loc_AD4FDE: LitStr "</td>"
  loc_AD4FE1: ConcatStr
  loc_AD4FE2: CVarStr var_B4
  loc_AD4FE5: PopAdLdVar
  loc_AD4FE6: FLdPr Me
  loc_AD4FE9: MemLdRfVar from_stack_1.htmFile
  loc_AD4FEC: LdPrVar
  loc_AD4FEE: LateMemCall
  loc_AD4FF4: FFreeStr var_108 = ""
  loc_AD4FFB: FFree1Ad var_10C
  loc_AD4FFE: FFree1Var var_B4 = ""
  loc_AD5001: LitVarStr var_94, "        </tr>"
  loc_AD5006: PopAdLdVar
  loc_AD5007: FLdPr Me
  loc_AD500A: MemLdRfVar from_stack_1.htmFile
  loc_AD500D: LdPrVar
  loc_AD500F: LateMemCall
  loc_AD5015: LitVarStr var_94, "      </table>"
  loc_AD501A: PopAdLdVar
  loc_AD501B: FLdPr Me
  loc_AD501E: MemLdRfVar from_stack_1.htmFile
  loc_AD5021: LdPrVar
  loc_AD5023: LateMemCall
  loc_AD5029: LitVarStr var_94, "  </tr>"
  loc_AD502E: PopAdLdVar
  loc_AD502F: FLdPr Me
  loc_AD5032: MemLdRfVar from_stack_1.htmFile
  loc_AD5035: LdPrVar
  loc_AD5037: LateMemCall
  loc_AD503D: ExitProcHresult
  loc_AD503E: CDateR8
End Function

Private Function Proc_168_21_983500() '983500
  'Data Table: 444668
  loc_9834C0: LitVarStr var_94, "</table>"
  loc_9834C5: PopAdLdVar
  loc_9834C6: FLdPr Me
  loc_9834C9: MemLdRfVar from_stack_1.htmFile
  loc_9834CC: LdPrVar
  loc_9834CE: LateMemCall
  loc_9834D4: LitVarStr var_94, "</body>"
  loc_9834D9: PopAdLdVar
  loc_9834DA: FLdPr Me
  loc_9834DD: MemLdRfVar from_stack_1.htmFile
  loc_9834E0: LdPrVar
  loc_9834E2: LateMemCall
  loc_9834E8: LitVarStr var_94, "</html>"
  loc_9834ED: PopAdLdVar
  loc_9834EE: FLdPr Me
  loc_9834F1: MemLdRfVar from_stack_1.htmFile
  loc_9834F4: LdPrVar
  loc_9834F6: LateMemCall
  loc_9834FC: ExitProcHresult
End Function
