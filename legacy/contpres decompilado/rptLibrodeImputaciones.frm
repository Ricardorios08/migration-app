VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptLibrodeImputaciones
  Caption = "Libro de Imputaciones"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptLibrodeImputaciones.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9375
  ClientHeight = 7335
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.ProgressBar pbar
    Left = 120
    Top = 5760
    Width = 8055
    Height = 150
    Visible = 0   'False
    TabIndex = 43
    OleObjectBlob = "rptLibrodeImputaciones.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 7080
    Width = 9375
    Height = 255
    TabIndex = 42
    OleObjectBlob = "rptLibrodeImputaciones.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 7800
    Top = 6120
    Width = 735
    Height = 615
    TabIndex = 40
    Cancel = -1  'True
    Picture = "rptLibrodeImputaciones.frx":09B2
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptLibrodeImputaciones.frx":0C04
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 5880
    Width = 3255
    Height = 1095
    TabIndex = 37
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 39
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 38
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 5880
    Width = 3015
    Height = 1095
    TabIndex = 34
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 36
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 35
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9135
    Height = 5775
    TabIndex = 0
    Begin VB.CheckBox SoloLocadoresChk
      Caption = "Solo Locadores de Servicios"
      Left = 1680
      Top = 5280
      Width = 2415
      Height = 375
      TabIndex = 33
      Alignment = 1 'Right Justify
    End
    Begin VB.Frame FrameEtapas
      Caption = "Etapas"
      Left = 1680
      Top = 3960
      Width = 5415
      Height = 1215
      TabIndex = 27
      Begin VB.CheckBox PagaChk
        Caption = "Pagado"
        Left = 4320
        Top = 240
        Width = 855
        Height = 495
        TabIndex = 30
        Value = 1
      End
      Begin VB.CheckBox MapaChk
        Caption = "Mandado a pagar"
        Left = 2040
        Top = 600
        Width = 1575
        Height = 495
        TabIndex = 32
        Value = 1
      End
      Begin VB.CheckBox DeveChk
        Caption = "Devengado"
        Left = 2040
        Top = 240
        Width = 1215
        Height = 495
        TabIndex = 29
        Value = 1
      End
      Begin VB.CheckBox DefiChk
        Caption = "Definitiva"
        Left = 120
        Top = 600
        Width = 1095
        Height = 495
        TabIndex = 31
        Value = 1
      End
      Begin VB.CheckBox PrevChk
        Caption = "Preventiva"
        Left = 120
        Top = 240
        Width = 1215
        Height = 495
        TabIndex = 28
        Value = 1
      End
    End
    Begin VB.CommandButton CodiUngaCmd
      Left = 2415
      Top = 3000
      Width = 375
      Height = 375
      Enabled = 0   'False
      TabIndex = 21
      Picture = "rptLibrodeImputaciones.frx":0C68
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdCodiPart
      Left = 3000
      Top = 1680
      Width = 375
      Height = 375
      TabIndex = 12
      Picture = "rptLibrodeImputaciones.frx":0D62
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton CodiOrgaCmd
      Left = 2760
      Top = 2520
      Width = 375
      Height = 375
      TabIndex = 17
      Picture = "rptLibrodeImputaciones.frx":0E5C
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdCodiFifu
      Left = 3120
      Top = 3480
      Width = 375
      Height = 375
      TabIndex = 25
      Picture = "rptLibrodeImputaciones.frx":0F56
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1680
      Top = 240
      Width = 1095
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdCalHasta
      Left = 2880
      Top = 1200
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptLibrodeImputaciones.frx":1050
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2880
      Top = 720
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptLibrodeImputaciones.frx":1592
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7560
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1680
      Top = 720
      Width = 1095
      Height = 285
      TabIndex = 5
      OleObjectBlob = "rptLibrodeImputaciones.frx":1AD4
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1680
      Top = 1200
      Width = 1095
      Height = 285
      TabIndex = 8
      OleObjectBlob = "rptLibrodeImputaciones.frx":1B5C
    End
    Begin MSMask.MaskEdBox CodiFifuMsk
      Left = 1680
      Top = 3480
      Width = 1335
      Height = 315
      TabIndex = 23
      OleObjectBlob = "rptLibrodeImputaciones.frx":1BE4
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 1680
      Top = 2520
      Width = 975
      Height = 315
      TabIndex = 16
      OleObjectBlob = "rptLibrodeImputaciones.frx":1C44
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 1680
      Top = 1680
      Width = 1215
      Height = 285
      TabIndex = 11
      OleObjectBlob = "rptLibrodeImputaciones.frx":1CA4
    End
    Begin MSMask.MaskEdBox CodiUngaMsk
      Left = 1680
      Top = 3000
      Width = 600
      Height = 315
      TabIndex = 20
      OleObjectBlob = "rptLibrodeImputaciones.frx":1D2C
      DataField = "CodiUnga"
    End
    Begin VB.CheckBox NotCodiPartChk
      Caption = "No comienza con"
      Left = 1680
      Top = 2040
      Width = 1575
      Height = 255
      TabIndex = 13
    End
    Begin VB.Label CodiUngaLbl
      Left = 2880
      Top = 3000
      Width = 6015
      Height = 375
      TabIndex = 22
      BorderStyle = 1 'Fixed Single
      DataField = "DetaUnga"
    End
    Begin VB.Label Label16
      Caption = "Unidad de Gasto:"
      Left = 300
      Top = 3000
      Width = 1245
      Height = 195
      TabIndex = 19
    End
    Begin VB.Label Label5
      Caption = "Partida:"
      Left = 1005
      Top = 1680
      Width = 540
      Height = 195
      TabIndex = 10
    End
    Begin VB.Label Label4
      Caption = "Organigrama:"
      Left = 600
      Top = 2520
      Width = 945
      Height = 195
      TabIndex = 15
    End
    Begin VB.Label Label17
      Caption = "Finalidad-Función:"
      Left = 255
      Top = 3480
      Width = 1290
      Height = 195
      TabIndex = 24
    End
    Begin VB.Label CodiPartLbl
      Left = 3480
      Top = 1680
      Width = 5415
      Height = 375
      TabIndex = 14
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label CodiOrgaLbl
      Left = 3240
      Top = 2520
      Width = 5655
      Height = 375
      TabIndex = 18
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label CodiFifuLbl
      Left = 3600
      Top = 3480
      Width = 5295
      Height = 375
      TabIndex = 26
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 960
      Top = 240
      Width = 585
      Height = 195
      TabIndex = 1
    End
    Begin VB.Label Label2
      Caption = "Hasta:"
      Left = 1080
      Top = 1200
      Width = 465
      Height = 195
      TabIndex = 7
    End
    Begin VB.Label Label1
      Caption = "Desde:"
      Left = 1035
      Top = 720
      Width = 510
      Height = 195
      TabIndex = 4
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7920
    Top = 6240
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 41
    OleObjectBlob = "rptLibrodeImputaciones.frx":1DBC
  End
  Begin VB.Label PartidaLbl
    Caption = "Partida:"
    Left = 8160
    Top = 5760
    Width = 540
    Height = 195
    Visible = 0   'False
    TabIndex = 44
    AutoSize = -1  'True
  End
End

Attribute VB_Name = "rptLibrodeImputaciones"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_005DF8B8
  bStruc(196) As Byte ' String fields: 14
End Type

Private Type UDT_2_005DF93C
  bStruc(296) As Byte ' String fields: 5
End Type

Private Type UDT_3_005DF9A0
  bStruc(296) As Byte ' String fields: 5
End Type

Private Type UDT_4_005DFA04
  bStruc(324) As Byte ' String fields: 6
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98944C
  'Data Table: 4F1070
  loc_989414: FLdPr Me
  loc_989417: VCallAd Control_ID_statusBar
  loc_98941A: FStAdFunc var_88
  loc_98941D: FLdPr var_88
  loc_989420: LateIdLdVar var_98 DispID_1 0
  loc_989427: CStrVarTmp
  loc_989428: CVarStr var_A8
  loc_98942B: PopAdLdVar
  loc_98942C: FLdPr Me
  loc_98942F: VCallAd Control_ID_statusBar
  loc_989432: FStAdFunc var_BC
  loc_989435: FLdPr var_BC
  loc_989438: LateIdSt
  loc_98943D: FFreeAd var_88 = ""
  loc_989444: FFreeVar var_98 = ""
  loc_98944B: ExitProcHresult
End Sub

Private Sub wbbReporte_UnknownEvent_26 '948E2C
  'Data Table: 4F1070
  loc_948E1C: ILdRf Button
  loc_948E1F: FStAd var_88 
  loc_948E23: LitI2_Byte 0
  loc_948E25: FLdPr Me
  loc_948E28: MemStI2 global_124
  loc_948E2B: ExitProcHresult
End Sub

Private Sub Form_Load() '9EE60C
  'Data Table: 4F1070
  loc_9EE4E4: LitVarStr var_94, "######"
  loc_9EE4E9: PopAdLdVar
  loc_9EE4EA: FLdPr Me
  loc_9EE4ED: VCallAd Control_ID_CodiOrgaMsk
  loc_9EE4F0: FStAdFunc var_A8
  loc_9EE4F3: FLdPr var_A8
  loc_9EE4F6: LateIdSt
  loc_9EE4FB: FFree1Ad var_A8
  loc_9EE4FE: LitVarStr var_94, "#.#.#.#.##.##"
  loc_9EE503: PopAdLdVar
  loc_9EE504: FLdPr Me
  loc_9EE507: VCallAd Control_ID_CodiPartMsk
  loc_9EE50A: FStAdFunc var_A8
  loc_9EE50D: FLdPr var_A8
  loc_9EE510: LateIdSt
  loc_9EE515: FFree1Ad var_A8
  loc_9EE518: LitVarStr var_94, "##.##.##"
  loc_9EE51D: PopAdLdVar
  loc_9EE51E: FLdPr Me
  loc_9EE521: VCallAd Control_ID_CodiFifuMsk
  loc_9EE524: FStAdFunc var_A8
  loc_9EE527: FLdPr var_A8
  loc_9EE52A: LateIdSt
  loc_9EE52F: FFree1Ad var_A8
  loc_9EE532: LitI2_Byte &HFF
  loc_9EE534: ImpAdStI2 MemVar_C3D840
  loc_9EE537: ILdRf Me
  loc_9EE53A: CastAd
  loc_9EE53D: FStAdFunc var_A8
  loc_9EE540: FLdRfVar var_A8
  loc_9EE543: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9EE548: FFree1Ad var_A8
  loc_9EE54B: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9EE54E: FLdRfVar var_AC
  loc_9EE551: NewIfNullPr clsperiodo
  loc_9EE554: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9EE559: FLdRfVar var_B0
  loc_9EE55C: FLdRfVar var_AC
  loc_9EE55F: NewIfNullPr clsperiodo
  loc_9EE562: from_stack_1 = clsperiodo.RecordCount
  loc_9EE567: ILdRf var_B0
  loc_9EE56A: LitI4 0
  loc_9EE56F: GtI4
  loc_9EE570: BranchF loc_9EE603
  loc_9EE573: FLdRfVar var_AC
  loc_9EE576: NewIfNullPr clsperiodo
  loc_9EE579: Call clsperiodo.MoveFirst()
  loc_9EE57E: FLdRfVar var_B2
  loc_9EE581: FLdRfVar var_AC
  loc_9EE584: NewIfNullPr clsperiodo
  loc_9EE587: from_stack_1 = clsperiodo.EOF
  loc_9EE58C: FLdI2 var_B2
  loc_9EE58F: NotI4
  loc_9EE590: BranchF loc_9EE603
  loc_9EE593: LitVar_Missing var_A4
  loc_9EE596: PopAdLdVar
  loc_9EE597: FLdRfVar var_CC
  loc_9EE59A: FLdRfVar var_BC
  loc_9EE59D: LitVarStr var_94, "PeriInfo"
  loc_9EE5A2: PopAdLdVar
  loc_9EE5A3: FLdRfVar var_B8
  loc_9EE5A6: FLdRfVar var_A8
  loc_9EE5A9: FLdRfVar var_AC
  loc_9EE5AC: NewIfNullPr clsperiodo
  loc_9EE5AF: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9EE5B4: FLdPr var_A8
  loc_9EE5B7:  = Me.Fields
  loc_9EE5BC: FLdPr var_B8
  loc_9EE5BF: from_stack_2 = Me.Item(from_stack_1)
  loc_9EE5C4: FLdPr var_BC
  loc_9EE5C7:  = Me.Value
  loc_9EE5CC: FLdRfVar var_CC
  loc_9EE5CF: CStrVarTmp
  loc_9EE5D0: FStStrNoPop var_D0
  loc_9EE5D3: FLdPr Me
  loc_9EE5D6: VCallAd Control_ID_cboPeriodo
  loc_9EE5D9: FStAdFunc var_D4
  loc_9EE5DC: FLdPr var_D4
  loc_9EE5DF: Me.AddItem from_stack_1, from_stack_2
  loc_9EE5E4: FFree1Str var_D0
  loc_9EE5E7: FFreeAd var_A8 = "": var_B8 = "": var_BC = ""
  loc_9EE5F2: FFree1Var var_CC = ""
  loc_9EE5F5: FLdRfVar var_AC
  loc_9EE5F8: NewIfNullPr clsperiodo
  loc_9EE5FB: Call clsperiodo.MoveSiguiente()
  loc_9EE600: Branch loc_9EE57E
  loc_9EE603: Call cmdNueva_Click()
  loc_9EE608: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95F744
  'Data Table: 4F1070
  loc_95F72C: FLdPr Me
  loc_95F72F: VCallAd Control_ID_wbbReporte
  loc_95F732: FStAdFunc var_88
  loc_95F735: FLdRfVar var_88
  loc_95F738: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95F73D: FFree1Ad var_88
  loc_95F740: ExitProcHresult
End Sub

Private Sub CodiUngaMsk_UnknownEvent_0 '9520C8
  'Data Table: 4F1070
  loc_9520B4: FLdPr Me
  loc_9520B7: VCallAd Control_ID_CodiUngaMsk
  loc_9520BA: CVarAd
  loc_9520BE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9520C3: FFree1Var var_94 = ""
  loc_9520C6: ExitProcHresult
End Sub

Private Sub CodiUngaMsk_UnknownEvent_8 '97DD50
  'Data Table: 4F1070
  loc_97DD24: FLdRfVar var_8C
  loc_97DD27: FLdRfVar var_88
  loc_97DD2A: NewIfNullPr tblunidadgasto
  loc_97DD2D: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_97DD32: ILdRf var_8C
  loc_97DD35: FLdPr Me
  loc_97DD38: VCallAd Control_ID_CodiUngaLbl
  loc_97DD3B: FStAdFunc var_90
  loc_97DD3E: FLdPr var_90
  loc_97DD41: Me.Caption = from_stack_1
  loc_97DD46: FFree1Str var_8C
  loc_97DD49: FFree1Ad var_90
  loc_97DD4C: ExitProcHresult
  loc_97DD4D: IStFPR8 arg_345
End Sub

Private Sub cmdSalir_Click() '97A3C0
  'Data Table: 4F1070
  loc_97A390: LitVarStr var_94, "Cerrando..."
  loc_97A395: PopAdLdVar
  loc_97A396: FLdPr Me
  loc_97A399: VCallAd Control_ID_statusBar
  loc_97A39C: FStAdFunc var_A8
  loc_97A39F: FLdPr var_A8
  loc_97A3A2: LateIdSt
  loc_97A3A7: FFree1Ad var_A8
  loc_97A3AA: ILdRf Me
  loc_97A3AD: FStAdNoPop
  loc_97A3B1: ImpAdLdRf MemVar_C44F9C
  loc_97A3B4: NewIfNullPr Me
  loc_97A3B7: Me.Global.Unload from_stack_1
  loc_97A3BC: FFree1Ad var_A8
  loc_97A3BF: ExitProcHresult
End Sub

Private Sub NotCodiPartChk_Click() '9411D4
  'Data Table: 4F1070
  loc_9411C8: LitI2_Byte 0
  loc_9411CA: PopTmpLdAd2 var_86
  loc_9411CD: Call CodiPartMsk_UnknownEvent_8()
  loc_9411D2: ExitProcHresult
End Sub

Private Sub CodiUngaCmd_Click() '9FE8B8
  'Data Table: 4F1070
  loc_9FE774: LitI2_Byte 0
  loc_9FE776: ImpAdLdRf MemVar_C3D7D8
  loc_9FE779: NewIfNullPr bscUnidadGasto
  loc_9FE77C: Call bscUnidadGasto.MuestroAnuladosPut(from_stack_1v)
  loc_9FE781: LitNothing
  loc_9FE783: CastAd
  loc_9FE786: FStAdFuncNoPop
  loc_9FE789: ImpAdLdRf MemVar_C3D7D8
  loc_9FE78C: NewIfNullPr bscUnidadGasto
  loc_9FE78F: Call bscUnidadGasto.global_4338300Set(from_stack_1v)
  loc_9FE794: FFree1Ad var_88
  loc_9FE797: LitVar_Missing var_A8
  loc_9FE79A: PopAdLdVar
  loc_9FE79B: LitVarI4
  loc_9FE7A3: PopAdLdVar
  loc_9FE7A4: ImpAdLdRf MemVar_C3D7D8
  loc_9FE7A7: NewIfNullPr bscUnidadGasto
  loc_9FE7AA: bscUnidadGasto.Show from_stack_1, from_stack_2
  loc_9FE7AF: FLdRfVar var_AC
  loc_9FE7B2: FLdRfVar var_88
  loc_9FE7B5: ImpAdLdRf MemVar_C3D7D8
  loc_9FE7B8: NewIfNullPr bscUnidadGasto
  loc_9FE7BB: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_9FE7C0: FLdPr var_88
  loc_9FE7C3: from_stack_1 = clsbase.RecordCount
  loc_9FE7C8: ILdRf var_AC
  loc_9FE7CB: LitI4 0
  loc_9FE7D0: GtI4
  loc_9FE7D1: FFree1Ad var_88
  loc_9FE7D4: BranchF loc_9FE8AF
  loc_9FE7D7: FLdRfVar var_C8
  loc_9FE7DA: FLdRfVar var_B8
  loc_9FE7DD: LitVarStr var_98, "CodiUnga"
  loc_9FE7E2: PopAdLdVar
  loc_9FE7E3: FLdRfVar var_B4
  loc_9FE7E6: FLdRfVar var_B0
  loc_9FE7E9: FLdRfVar var_88
  loc_9FE7EC: ImpAdLdRf MemVar_C3D7D8
  loc_9FE7EF: NewIfNullPr bscUnidadGasto
  loc_9FE7F2: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_9FE7F7: FLdPr var_88
  loc_9FE7FA: from_stack_1v = clsbase.RsFrmGet()
  loc_9FE7FF: FLdPr var_B0
  loc_9FE802:  = Me.Fields
  loc_9FE807: FLdPr var_B4
  loc_9FE80A: from_stack_2 = Me.Item(from_stack_1)
  loc_9FE80F: FLdPr var_B8
  loc_9FE812:  = Me.Value
  loc_9FE817: FLdRfVar var_C8
  loc_9FE81A: CStrVarTmp
  loc_9FE81B: CVarStr var_D8
  loc_9FE81E: PopAdLdVar
  loc_9FE81F: FLdPr Me
  loc_9FE822: VCallAd Control_ID_CodiUngaMsk
  loc_9FE825: FStAdFunc var_DC
  loc_9FE828: FLdPr var_DC
  loc_9FE82B: LateIdSt
  loc_9FE830: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FE83D: FFreeVar var_C8 = ""
  loc_9FE844: FLdRfVar var_C8
  loc_9FE847: FLdRfVar var_B8
  loc_9FE84A: LitVarStr var_98, "DetaUnga"
  loc_9FE84F: PopAdLdVar
  loc_9FE850: FLdRfVar var_B4
  loc_9FE853: FLdRfVar var_B0
  loc_9FE856: FLdRfVar var_88
  loc_9FE859: ImpAdLdRf MemVar_C3D7D8
  loc_9FE85C: NewIfNullPr bscUnidadGasto
  loc_9FE85F: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_9FE864: FLdPr var_88
  loc_9FE867: from_stack_1v = clsbase.RsFrmGet()
  loc_9FE86C: FLdPr var_B0
  loc_9FE86F:  = Me.Fields
  loc_9FE874: FLdPr var_B4
  loc_9FE877: from_stack_2 = Me.Item(from_stack_1)
  loc_9FE87C: FLdPr var_B8
  loc_9FE87F:  = Me.Value
  loc_9FE884: FLdRfVar var_C8
  loc_9FE887: CStrVarTmp
  loc_9FE888: FStStrNoPop var_E0
  loc_9FE88B: FLdPr Me
  loc_9FE88E: VCallAd Control_ID_CodiUngaLbl
  loc_9FE891: FStAdFunc var_DC
  loc_9FE894: FLdPr var_DC
  loc_9FE897: Me.Caption = from_stack_1
  loc_9FE89C: FFree1Str var_E0
  loc_9FE89F: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FE8AC: FFree1Var var_C8 = ""
  loc_9FE8AF: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9FE8B4: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_UnknownEvent_0 '952038
  'Data Table: 4F1070
  loc_952024: FLdPr Me
  loc_952027: VCallAd Control_ID_CodiFifuMsk
  loc_95202A: CVarAd
  loc_95202E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952033: FFree1Var var_94 = ""
  loc_952036: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_UnknownEvent_8 'A09598
  'Data Table: 4F1070
  loc_A0944C: LitStr "SELECT DetaFifu FROM finalidad WHERE PeriInfo = "
  loc_A0944F: FLdRfVar var_90
  loc_A09452: FLdPr Me
  loc_A09455: VCallAd Control_ID_cboPeriodo
  loc_A09458: FStAdFunc var_8C
  loc_A0945B: FLdPr var_8C
  loc_A0945E:  = Me.Text
  loc_A09463: ILdRf var_90
  loc_A09466: ConcatStr
  loc_A09467: FStStrNoPop var_94
  loc_A0946A: LitStr " AND CodiFifu LIKE '"
  loc_A0946D: ConcatStr
  loc_A0946E: FStStrNoPop var_AC
  loc_A09471: FLdPr Me
  loc_A09474: VCallAd Control_ID_CodiFifuMsk
  loc_A09477: FStAdFunc var_98
  loc_A0947A: FLdPr var_98
  loc_A0947D: LateIdLdVar var_A8 DispID_22 0
  loc_A09484: CStrVarTmp
  loc_A09485: FStStrNoPop var_B0
  loc_A09488: ConcatStr
  loc_A09489: FStStrNoPop var_B4
  loc_A0948C: LitStr Chr(37) & "'"
  loc_A0948F: ConcatStr
  loc_A09490: FStStrNoPop var_B8
  loc_A09493: FLdRfVar var_88
  loc_A09496: NewIfNullPr clsfinalidad
  loc_A09499: Call clsfinalidad.RedefineRS(from_stack_1v)
  loc_A0949E: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A094AD: FFreeAd var_8C = ""
  loc_A094B4: FFree1Var var_A8 = ""
  loc_A094B7: FLdRfVar var_BC
  loc_A094BA: FLdRfVar var_88
  loc_A094BD: NewIfNullPr clsfinalidad
  loc_A094C0: from_stack_1 = clsfinalidad.RecordCount
  loc_A094C5: ILdRf var_BC
  loc_A094C8: FStR4 var_C0
  loc_A094CB: ILdRf var_C0
  loc_A094CE: LitI4 0
  loc_A094D3: EqI4
  loc_A094D4: BranchF loc_A094F1
  loc_A094D7: LitStr "0 registros encontrados"
  loc_A094DA: FLdPr Me
  loc_A094DD: VCallAd Control_ID_CodiFifuLbl
  loc_A094E0: FStAdFunc var_8C
  loc_A094E3: FLdPr var_8C
  loc_A094E6: Me.Caption = from_stack_1
  loc_A094EB: FFree1Ad var_8C
  loc_A094EE: Branch loc_A09596
  loc_A094F1: ILdRf var_C0
  loc_A094F4: LitI4 1
  loc_A094F9: EqI4
  loc_A094FA: BranchF loc_A0955E
  loc_A094FD: FLdRfVar var_A8
  loc_A09500: FLdRfVar var_D4
  loc_A09503: LitVarStr var_D0, "DetaFifu"
  loc_A09508: PopAdLdVar
  loc_A09509: FLdRfVar var_98
  loc_A0950C: FLdRfVar var_8C
  loc_A0950F: FLdRfVar var_88
  loc_A09512: NewIfNullPr clsfinalidad
  loc_A09515: from_stack_1v = clsfinalidad.RsFrmGet()
  loc_A0951A: FLdPr var_8C
  loc_A0951D:  = Me.Fields
  loc_A09522: FLdPr var_98
  loc_A09525: from_stack_2 = Me.Item(from_stack_1)
  loc_A0952A: FLdPr var_D4
  loc_A0952D:  = Me.Value
  loc_A09532: FLdRfVar var_A8
  loc_A09535: CStrVarTmp
  loc_A09536: FStStrNoPop var_90
  loc_A09539: FLdPr Me
  loc_A0953C: VCallAd Control_ID_CodiFifuLbl
  loc_A0953F: FStAdFunc var_D8
  loc_A09542: FLdPr var_D8
  loc_A09545: Me.Caption = from_stack_1
  loc_A0954A: FFree1Str var_90
  loc_A0954D: FFreeAd var_8C = "": var_98 = "": var_D4 = ""
  loc_A09558: FFree1Var var_A8 = ""
  loc_A0955B: Branch loc_A09596
  loc_A0955E: FLdRfVar var_BC
  loc_A09561: FLdRfVar var_88
  loc_A09564: NewIfNullPr clsfinalidad
  loc_A09567: from_stack_1 = clsfinalidad.RecordCount
  loc_A0956C: ILdRf var_BC
  loc_A0956F: CStrI4
  loc_A09571: FStStrNoPop var_90
  loc_A09574: LitStr " finalidades encontradas"
  loc_A09577: ConcatStr
  loc_A09578: FStStrNoPop var_94
  loc_A0957B: FLdPr Me
  loc_A0957E: VCallAd Control_ID_CodiFifuLbl
  loc_A09581: FStAdFunc var_8C
  loc_A09584: FLdPr var_8C
  loc_A09587: Me.Caption = from_stack_1
  loc_A0958C: FFreeStr var_90 = ""
  loc_A09593: FFree1Ad var_8C
  loc_A09596: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A232C8
  'Data Table: 4F1070
  loc_A23108: LitI2_Byte 0
  loc_A2310A: FLdPr Me
  loc_A2310D: MemStI2 bGenerado
  loc_A23110: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_A23115: ImpAdLdI2 MemVar_C3D064
  loc_A23118: CStrUI1
  loc_A2311A: FStStrNoPop var_88
  loc_A2311D: FLdPr Me
  loc_A23120: VCallAd Control_ID_cboPeriodo
  loc_A23123: FStAdFunc var_8C
  loc_A23126: FLdPr var_8C
  loc_A23129: Me.Text = from_stack_1
  loc_A2312E: FFree1Str var_88
  loc_A23131: FFree1Ad var_8C
  loc_A23134: LitVarStr var_9C, vbNullString
  loc_A23139: PopAdLdVar
  loc_A2313A: FLdPr Me
  loc_A2313D: VCallAd Control_ID_CodiPartMsk
  loc_A23140: FStAdFunc var_8C
  loc_A23143: FLdPr var_8C
  loc_A23146: LateIdSt
  loc_A2314B: FFree1Ad var_8C
  loc_A2314E: LitI4 0
  loc_A23153: CI2I4
  loc_A23154: FLdPr Me
  loc_A23157: VCallAd Control_ID_NotCodiPartChk
  loc_A2315A: FStAdFunc var_8C
  loc_A2315D: FLdPr var_8C
  loc_A23160: Me.Value = from_stack_1
  loc_A23165: FFree1Ad var_8C
  loc_A23168: LitVarStr var_9C, vbNullString
  loc_A2316D: PopAdLdVar
  loc_A2316E: FLdPr Me
  loc_A23171: VCallAd Control_ID_CodiOrgaMsk
  loc_A23174: FStAdFunc var_8C
  loc_A23177: FLdPr var_8C
  loc_A2317A: LateIdSt
  loc_A2317F: FFree1Ad var_8C
  loc_A23182: LitVarStr var_9C, vbNullString
  loc_A23187: PopAdLdVar
  loc_A23188: FLdPr Me
  loc_A2318B: VCallAd Control_ID_CodiUngaMsk
  loc_A2318E: FStAdFunc var_8C
  loc_A23191: FLdPr var_8C
  loc_A23194: LateIdSt
  loc_A23199: FFree1Ad var_8C
  loc_A2319C: LitVarStr var_9C, vbNullString
  loc_A231A1: PopAdLdVar
  loc_A231A2: FLdPr Me
  loc_A231A5: VCallAd Control_ID_CodiFifuMsk
  loc_A231A8: FStAdFunc var_8C
  loc_A231AB: FLdPr var_8C
  loc_A231AE: LateIdSt
  loc_A231B3: FFree1Ad var_8C
  loc_A231B6: LitStr vbNullString
  loc_A231B9: FLdPr Me
  loc_A231BC: VCallAd Control_ID_CodiPartLbl
  loc_A231BF: FStAdFunc var_8C
  loc_A231C2: FLdPr var_8C
  loc_A231C5: Me.Caption = from_stack_1
  loc_A231CA: FFree1Ad var_8C
  loc_A231CD: LitStr vbNullString
  loc_A231D0: FLdPr Me
  loc_A231D3: VCallAd Control_ID_CodiOrgaLbl
  loc_A231D6: FStAdFunc var_8C
  loc_A231D9: FLdPr var_8C
  loc_A231DC: Me.Caption = from_stack_1
  loc_A231E1: FFree1Ad var_8C
  loc_A231E4: LitStr vbNullString
  loc_A231E7: FLdPr Me
  loc_A231EA: VCallAd Control_ID_CodiUngaLbl
  loc_A231ED: FStAdFunc var_8C
  loc_A231F0: FLdPr var_8C
  loc_A231F3: Me.Caption = from_stack_1
  loc_A231F8: FFree1Ad var_8C
  loc_A231FB: LitStr vbNullString
  loc_A231FE: FLdPr Me
  loc_A23201: VCallAd Control_ID_CodiFifuLbl
  loc_A23204: FStAdFunc var_8C
  loc_A23207: FLdPr var_8C
  loc_A2320A: Me.Caption = from_stack_1
  loc_A2320F: FFree1Ad var_8C
  loc_A23212: LitI4 1
  loc_A23217: CI2I4
  loc_A23218: FLdPr Me
  loc_A2321B: VCallAd Control_ID_PrevChk
  loc_A2321E: FStAdFunc var_8C
  loc_A23221: FLdPr var_8C
  loc_A23224: Me.Value = from_stack_1
  loc_A23229: FFree1Ad var_8C
  loc_A2322C: LitI4 1
  loc_A23231: CI2I4
  loc_A23232: FLdPr Me
  loc_A23235: VCallAd Control_ID_DefiChk
  loc_A23238: FStAdFunc var_8C
  loc_A2323B: FLdPr var_8C
  loc_A2323E: Me.Value = from_stack_1
  loc_A23243: FFree1Ad var_8C
  loc_A23246: LitI4 1
  loc_A2324B: CI2I4
  loc_A2324C: FLdPr Me
  loc_A2324F: VCallAd Control_ID_DeveChk
  loc_A23252: FStAdFunc var_8C
  loc_A23255: FLdPr var_8C
  loc_A23258: Me.Value = from_stack_1
  loc_A2325D: FFree1Ad var_8C
  loc_A23260: LitI4 1
  loc_A23265: CI2I4
  loc_A23266: FLdPr Me
  loc_A23269: VCallAd Control_ID_MapaChk
  loc_A2326C: FStAdFunc var_8C
  loc_A2326F: FLdPr var_8C
  loc_A23272: Me.Value = from_stack_1
  loc_A23277: FFree1Ad var_8C
  loc_A2327A: LitI4 1
  loc_A2327F: CI2I4
  loc_A23280: FLdPr Me
  loc_A23283: VCallAd Control_ID_PagaChk
  loc_A23286: FStAdFunc var_8C
  loc_A23289: FLdPr var_8C
  loc_A2328C: Me.Value = from_stack_1
  loc_A23291: FFree1Ad var_8C
  loc_A23294: LitI4 0
  loc_A23299: CI2I4
  loc_A2329A: FLdPr Me
  loc_A2329D: VCallAd Control_ID_SoloLocadoresChk
  loc_A232A0: FStAdFunc var_8C
  loc_A232A3: FLdPr var_8C
  loc_A232A6: Me.Value = from_stack_1
  loc_A232AB: FFree1Ad var_8C
  loc_A232AE: Call HabilitarCriterio()
  loc_A232B3: ILdRf Me
  loc_A232B6: CastAd
  loc_A232B9: FStAdFunc var_8C
  loc_A232BC: FLdRfVar var_8C
  loc_A232BF: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_A232C4: FFree1Ad var_8C
  loc_A232C7: ExitProcHresult
End Sub

Private Sub CodiOrgaCmd_Click() 'A12B20
  'Data Table: 4F1070
  loc_A129B0: FLdRfVar var_8C
  loc_A129B3: FLdPr Me
  loc_A129B6: VCallAd Control_ID_cboPeriodo
  loc_A129B9: FStAdFunc var_88
  loc_A129BC: FLdPr var_88
  loc_A129BF:  = Me.Text
  loc_A129C4: ILdRf var_8C
  loc_A129C7: CI2Str
  loc_A129C9: ImpAdLdRf MemVar_C3D710
  loc_A129CC: NewIfNullPr bscOrganigrama
  loc_A129CF: Call bscOrganigrama.iPeriInfoPut(from_stack_1v)
  loc_A129D4: FFree1Str var_8C
  loc_A129D7: FFree1Ad var_88
  loc_A129DA: LitI2_Byte &HFF
  loc_A129DC: ImpAdLdRf MemVar_C3D710
  loc_A129DF: NewIfNullPr bscOrganigrama
  loc_A129E2: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_A129E7: LitNothing
  loc_A129E9: CastAd
  loc_A129EC: FStAdFuncNoPop
  loc_A129EF: ImpAdLdRf MemVar_C3D710
  loc_A129F2: NewIfNullPr bscOrganigrama
  loc_A129F5: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_A129FA: FFree1Ad var_88
  loc_A129FD: LitVar_Missing var_AC
  loc_A12A00: PopAdLdVar
  loc_A12A01: LitVarI4
  loc_A12A09: PopAdLdVar
  loc_A12A0A: ImpAdLdRf MemVar_C3D710
  loc_A12A0D: NewIfNullPr bscOrganigrama
  loc_A12A10: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_A12A15: FLdRfVar var_B0
  loc_A12A18: FLdRfVar var_88
  loc_A12A1B: ImpAdLdRf MemVar_C3D710
  loc_A12A1E: NewIfNullPr bscOrganigrama
  loc_A12A21: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A12A26: FLdPr var_88
  loc_A12A29: from_stack_1 = clsbase.RecordCount
  loc_A12A2E: ILdRf var_B0
  loc_A12A31: LitI4 0
  loc_A12A36: GtI4
  loc_A12A37: FFree1Ad var_88
  loc_A12A3A: BranchF loc_A12B15
  loc_A12A3D: FLdRfVar var_CC
  loc_A12A40: FLdRfVar var_BC
  loc_A12A43: LitVarStr var_9C, "CodiOrga"
  loc_A12A48: PopAdLdVar
  loc_A12A49: FLdRfVar var_B8
  loc_A12A4C: FLdRfVar var_B4
  loc_A12A4F: FLdRfVar var_88
  loc_A12A52: ImpAdLdRf MemVar_C3D710
  loc_A12A55: NewIfNullPr bscOrganigrama
  loc_A12A58: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A12A5D: FLdPr var_88
  loc_A12A60: from_stack_1v = clsbase.RsFrmGet()
  loc_A12A65: FLdPr var_B4
  loc_A12A68:  = Me.Fields
  loc_A12A6D: FLdPr var_B8
  loc_A12A70: from_stack_2 = Me.Item(from_stack_1)
  loc_A12A75: FLdPr var_BC
  loc_A12A78:  = Me.Value
  loc_A12A7D: FLdRfVar var_CC
  loc_A12A80: CStrVarTmp
  loc_A12A81: CVarStr var_DC
  loc_A12A84: PopAdLdVar
  loc_A12A85: FLdPr Me
  loc_A12A88: VCallAd Control_ID_CodiOrgaMsk
  loc_A12A8B: FStAdFunc var_E0
  loc_A12A8E: FLdPr var_E0
  loc_A12A91: LateIdSt
  loc_A12A96: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A12AA3: FFreeVar var_CC = ""
  loc_A12AAA: FLdRfVar var_CC
  loc_A12AAD: FLdRfVar var_BC
  loc_A12AB0: LitVarStr var_9C, "DetaOrga"
  loc_A12AB5: PopAdLdVar
  loc_A12AB6: FLdRfVar var_B8
  loc_A12AB9: FLdRfVar var_B4
  loc_A12ABC: FLdRfVar var_88
  loc_A12ABF: ImpAdLdRf MemVar_C3D710
  loc_A12AC2: NewIfNullPr bscOrganigrama
  loc_A12AC5: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A12ACA: FLdPr var_88
  loc_A12ACD: from_stack_1v = clsbase.RsFrmGet()
  loc_A12AD2: FLdPr var_B4
  loc_A12AD5:  = Me.Fields
  loc_A12ADA: FLdPr var_B8
  loc_A12ADD: from_stack_2 = Me.Item(from_stack_1)
  loc_A12AE2: FLdPr var_BC
  loc_A12AE5:  = Me.Value
  loc_A12AEA: FLdRfVar var_CC
  loc_A12AED: CStrVarTmp
  loc_A12AEE: FStStrNoPop var_8C
  loc_A12AF1: FLdPr Me
  loc_A12AF4: VCallAd Control_ID_CodiOrgaLbl
  loc_A12AF7: FStAdFunc var_E0
  loc_A12AFA: FLdPr var_E0
  loc_A12AFD: Me.Caption = from_stack_1
  loc_A12B02: FFree1Str var_8C
  loc_A12B05: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A12B12: FFree1Var var_CC = ""
  loc_A12B15: LitI2_Byte 0
  loc_A12B17: PopTmpLdAd2 var_E2
  loc_A12B1A: Call CodiOrgaMsk_UnknownEvent_8()
  loc_A12B1F: ExitProcHresult
End Sub

Private Sub cmdCodiFifu_Click() '9FA0E4
  'Data Table: 4F1070
  loc_9F9FA8: LitNothing
  loc_9F9FAA: CastAd
  loc_9F9FAD: FStAdFuncNoPop
  loc_9F9FB0: ImpAdLdRf MemVar_C3D6E8
  loc_9F9FB3: NewIfNullPr bscFinalidad
  loc_9F9FB6: Call bscFinalidad.global_4320824Set(from_stack_1v)
  loc_9F9FBB: FFree1Ad var_88
  loc_9F9FBE: LitVar_Missing var_A8
  loc_9F9FC1: PopAdLdVar
  loc_9F9FC2: LitVarI4
  loc_9F9FCA: PopAdLdVar
  loc_9F9FCB: ImpAdLdRf MemVar_C3D6E8
  loc_9F9FCE: NewIfNullPr bscFinalidad
  loc_9F9FD1: bscFinalidad.Show from_stack_1, from_stack_2
  loc_9F9FD6: FLdRfVar var_AC
  loc_9F9FD9: FLdRfVar var_88
  loc_9F9FDC: ImpAdLdRf MemVar_C3D6E8
  loc_9F9FDF: NewIfNullPr bscFinalidad
  loc_9F9FE2: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_9F9FE7: FLdPr var_88
  loc_9F9FEA: from_stack_1 = clsbase.RecordCount
  loc_9F9FEF: ILdRf var_AC
  loc_9F9FF2: LitI4 0
  loc_9F9FF7: GtI4
  loc_9F9FF8: FFree1Ad var_88
  loc_9F9FFB: BranchF loc_9FA0D6
  loc_9F9FFE: FLdRfVar var_C8
  loc_9FA001: FLdRfVar var_B8
  loc_9FA004: LitVarStr var_98, "CodiFifu"
  loc_9FA009: PopAdLdVar
  loc_9FA00A: FLdRfVar var_B4
  loc_9FA00D: FLdRfVar var_B0
  loc_9FA010: FLdRfVar var_88
  loc_9FA013: ImpAdLdRf MemVar_C3D6E8
  loc_9FA016: NewIfNullPr bscFinalidad
  loc_9FA019: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_9FA01E: FLdPr var_88
  loc_9FA021: from_stack_1v = clsbase.RsFrmGet()
  loc_9FA026: FLdPr var_B0
  loc_9FA029:  = Me.Fields
  loc_9FA02E: FLdPr var_B4
  loc_9FA031: from_stack_2 = Me.Item(from_stack_1)
  loc_9FA036: FLdPr var_B8
  loc_9FA039:  = Me.Value
  loc_9FA03E: FLdRfVar var_C8
  loc_9FA041: CStrVarTmp
  loc_9FA042: CVarStr var_D8
  loc_9FA045: PopAdLdVar
  loc_9FA046: FLdPr Me
  loc_9FA049: VCallAd Control_ID_CodiFifuMsk
  loc_9FA04C: FStAdFunc var_DC
  loc_9FA04F: FLdPr var_DC
  loc_9FA052: LateIdSt
  loc_9FA057: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FA064: FFreeVar var_C8 = ""
  loc_9FA06B: FLdRfVar var_C8
  loc_9FA06E: FLdRfVar var_B8
  loc_9FA071: LitVarStr var_98, "DetaFifu"
  loc_9FA076: PopAdLdVar
  loc_9FA077: FLdRfVar var_B4
  loc_9FA07A: FLdRfVar var_B0
  loc_9FA07D: FLdRfVar var_88
  loc_9FA080: ImpAdLdRf MemVar_C3D6E8
  loc_9FA083: NewIfNullPr bscFinalidad
  loc_9FA086: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_9FA08B: FLdPr var_88
  loc_9FA08E: from_stack_1v = clsbase.RsFrmGet()
  loc_9FA093: FLdPr var_B0
  loc_9FA096:  = Me.Fields
  loc_9FA09B: FLdPr var_B4
  loc_9FA09E: from_stack_2 = Me.Item(from_stack_1)
  loc_9FA0A3: FLdPr var_B8
  loc_9FA0A6:  = Me.Value
  loc_9FA0AB: FLdRfVar var_C8
  loc_9FA0AE: CStrVarTmp
  loc_9FA0AF: FStStrNoPop var_E0
  loc_9FA0B2: FLdPr Me
  loc_9FA0B5: VCallAd Control_ID_CodiFifuLbl
  loc_9FA0B8: FStAdFunc var_DC
  loc_9FA0BB: FLdPr var_DC
  loc_9FA0BE: Me.Caption = from_stack_1
  loc_9FA0C3: FFree1Str var_E0
  loc_9FA0C6: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FA0D3: FFree1Var var_C8 = ""
  loc_9FA0D6: LitI2_Byte 0
  loc_9FA0D8: PopTmpLdAd2 var_E2
  loc_9FA0DB: Call CodiFifuMsk_UnknownEvent_8()
  loc_9FA0E0: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '9D3464
  'Data Table: 4F1070
  loc_9D337C: FLdRfVar var_8C
  loc_9D337F: FLdPr Me
  loc_9D3382: VCallAd Control_ID_cboPeriodo
  loc_9D3385: FStAdFunc var_88
  loc_9D3388: FLdPr var_88
  loc_9D338B:  = Me.Text
  loc_9D3390: LitI2_Byte 1
  loc_9D3392: LitI2_Byte 1
  loc_9D3394: ILdRf var_8C
  loc_9D3397: CI2Str
  loc_9D3399: FLdRfVar var_9C
  loc_9D339C: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D33A1: FLdRfVar var_9C
  loc_9D33A4: CStrVarTmp
  loc_9D33A5: CVarStr var_AC
  loc_9D33A8: PopAdLdVar
  loc_9D33A9: FLdPr Me
  loc_9D33AC: VCallAd Control_ID_mskDesde
  loc_9D33AF: FStAdFunc var_C0
  loc_9D33B2: FLdPr var_C0
  loc_9D33B5: LateIdSt
  loc_9D33BA: FFree1Str var_8C
  loc_9D33BD: FFreeAd var_88 = ""
  loc_9D33C4: FFreeVar var_9C = ""
  loc_9D33CB: FLdRfVar var_8C
  loc_9D33CE: FLdPr Me
  loc_9D33D1: VCallAd Control_ID_cboPeriodo
  loc_9D33D4: FStAdFunc var_88
  loc_9D33D7: FLdPr var_88
  loc_9D33DA:  = Me.Text
  loc_9D33DF: ILdRf var_8C
  loc_9D33E2: CI2Str
  loc_9D33E4: ImpAdLdI2 MemVar_C3D064
  loc_9D33E7: LtI2
  loc_9D33E8: FFree1Str var_8C
  loc_9D33EB: FFree1Ad var_88
  loc_9D33EE: BranchF loc_9D3443
  loc_9D33F1: FLdRfVar var_8C
  loc_9D33F4: FLdPr Me
  loc_9D33F7: VCallAd Control_ID_cboPeriodo
  loc_9D33FA: FStAdFunc var_88
  loc_9D33FD: FLdPr var_88
  loc_9D3400:  = Me.Text
  loc_9D3405: LitI2_Byte &H1F
  loc_9D3407: LitI2_Byte &HC
  loc_9D3409: ILdRf var_8C
  loc_9D340C: CI2Str
  loc_9D340E: FLdRfVar var_9C
  loc_9D3411: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D3416: FLdRfVar var_9C
  loc_9D3419: CStrVarTmp
  loc_9D341A: CVarStr var_AC
  loc_9D341D: PopAdLdVar
  loc_9D341E: FLdPr Me
  loc_9D3421: VCallAd Control_ID_mskHasta
  loc_9D3424: FStAdFunc var_C0
  loc_9D3427: FLdPr var_C0
  loc_9D342A: LateIdSt
  loc_9D342F: FFree1Str var_8C
  loc_9D3432: FFreeAd var_88 = ""
  loc_9D3439: FFreeVar var_9C = ""
  loc_9D3440: Branch loc_9D3463
  loc_9D3443: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D3446: CStrDate
  loc_9D3448: CVarStr var_9C
  loc_9D344B: PopAdLdVar
  loc_9D344C: FLdPr Me
  loc_9D344F: VCallAd Control_ID_mskHasta
  loc_9D3452: FStAdFunc var_88
  loc_9D3455: FLdPr var_88
  loc_9D3458: LateIdSt
  loc_9D345D: FFree1Ad var_88
  loc_9D3460: FFree1Var var_9C = ""
  loc_9D3463: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '942384
  'Data Table: 4F1070
  loc_942374: LitI2_Byte &HFF
  loc_942376: FLdPr Me
  loc_942379: MemStI2 global_126
  loc_94237C: LitI2_Byte 0
  loc_94237E: Call Proc_185_43_B5A81C()
  loc_942383: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '942344
  'Data Table: 4F1070
  loc_942334: LitI2_Byte &HFF
  loc_942336: FLdPr Me
  loc_942339: MemStI2 global_126
  loc_94233C: LitI2_Byte &HFF
  loc_94233E: Call Proc_185_43_B5A81C()
  loc_942343: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '96CDF0
  'Data Table: 4F1070
  loc_96CDD0: LitI2_Byte &HFF
  loc_96CDD2: FLdPr Me
  loc_96CDD5: MemStI2 global_126
  loc_96CDD8: LitI2_Byte 0
  loc_96CDDA: ILdRf Me
  loc_96CDDD: CastAd
  loc_96CDE0: FStAdFunc var_88
  loc_96CDE3: FLdRfVar var_88
  loc_96CDE6: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_96CDEB: FFree1Ad var_88
  loc_96CDEE: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '953040
  'Data Table: 4F1070
  loc_95302C: FLdPr Me
  loc_95302F: VCallAd Control_ID_mskDesde
  loc_953032: CVarAd
  loc_953036: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95303B: FFree1Var var_94 = ""
  loc_95303E: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9CCE00
  'Data Table: 4F1070
  loc_9CCD34: FLdPr Me
  loc_9CCD37: VCallAd Control_ID_mskDesde
  loc_9CCD3A: FStAdFunc var_88
  loc_9CCD3D: FLdPr var_88
  loc_9CCD40: LateIdLdVar var_98 DispID_15 0
  loc_9CCD47: PopAd
  loc_9CCD49: FLdRfVar var_A0
  loc_9CCD4C: FLdPr Me
  loc_9CCD4F: VCallAd Control_ID_cboPeriodo
  loc_9CCD52: FStAdFunc var_9C
  loc_9CCD55: FLdPr var_9C
  loc_9CCD58:  = Me.Text
  loc_9CCD5D: LitI2_Byte 1
  loc_9CCD5F: LitI2_Byte 1
  loc_9CCD61: ILdRf var_A0
  loc_9CCD64: CI2Str
  loc_9CCD66: FLdRfVar var_B0
  loc_9CCD69: ImpAdCallFPR4  = DateSerial(, , )
  loc_9CCD6E: FLdPr Me
  loc_9CCD71: VCallAd Control_ID_mskDesde
  loc_9CCD74: FStAdFunc var_C8
  loc_9CCD77: LitI2_Byte &HFF
  loc_9CCD79: PopTmpLdAd2 var_BE
  loc_9CCD7C: FLdZeroAd var_C8
  loc_9CCD7F: FStAdFunc var_BC
  loc_9CCD82: FLdRfVar var_BC
  loc_9CCD85: FLdRfVar var_B0
  loc_9CCD88: CStrVarVal var_B8
  loc_9CCD8C: LitI2_Byte 0
  loc_9CCD8E: LitI2_Byte 0
  loc_9CCD90: FLdRfVar var_98
  loc_9CCD93: CStrVarTmp
  loc_9CCD94: FStStrNoPop var_B4
  loc_9CCD97: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9CCD9C: FStStrNoPop var_C4
  loc_9CCD9F: FLdPr Me
  loc_9CCDA2: MemStStrCopy
  loc_9CCDA6: FFreeStr var_A0 = "": var_B4 = "": var_B8 = ""
  loc_9CCDB1: FFreeAd var_88 = "": var_9C = "": var_BC = ""
  loc_9CCDBC: FFreeVar var_98 = ""
  loc_9CCDC3: FLdPr Me
  loc_9CCDC6: VCallAd Control_ID_mskDesde
  loc_9CCDC9: FStAdFunc var_C8
  loc_9CCDCC: LitNothing
  loc_9CCDCE: CastAd
  loc_9CCDD1: FStAdFunc var_BC
  loc_9CCDD4: FLdRfVar var_BC
  loc_9CCDD7: FLdZeroAd var_C8
  loc_9CCDDA: FStAdFuncNoPop
  loc_9CCDDD: CastAd
  loc_9CCDE0: FStAdFunc var_9C
  loc_9CCDE3: FLdRfVar var_9C
  loc_9CCDE6: FLdPr Me
  loc_9CCDE9: MemLdRfVar from_stack_1.global_140
  loc_9CCDEC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CCDF1: IStI2 arg_C
  loc_9CCDF4: FFreeAd var_88 = "": var_9C = "": var_BC = ""
  loc_9CCDFF: ExitProcHresult
End Function

Private Sub mskHasta_UnknownEvent_0 '94EE28
  'Data Table: 4F1070
  loc_94EE14: FLdPr Me
  loc_94EE17: VCallAd Control_ID_mskHasta
  loc_94EE1A: CVarAd
  loc_94EE1E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94EE23: FFree1Var var_94 = ""
  loc_94EE26: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9C3BB0
  'Data Table: 4F1070
  loc_9C3AF4: FLdPr Me
  loc_9C3AF7: VCallAd Control_ID_mskHasta
  loc_9C3AFA: FStAdFunc var_88
  loc_9C3AFD: FLdPr var_88
  loc_9C3B00: LateIdLdVar var_98 DispID_15 0
  loc_9C3B07: PopAd
  loc_9C3B09: FLdPr Me
  loc_9C3B0C: VCallAd Control_ID_mskDesde
  loc_9C3B0F: FStAdFunc var_9C
  loc_9C3B12: FLdPr var_9C
  loc_9C3B15: LateIdLdVar var_AC DispID_15 0
  loc_9C3B1C: PopAd
  loc_9C3B1E: FLdPr Me
  loc_9C3B21: VCallAd Control_ID_mskHasta
  loc_9C3B24: FStAdFunc var_C4
  loc_9C3B27: LitI2_Byte 0
  loc_9C3B29: PopTmpLdAd2 var_BA
  loc_9C3B2C: FLdZeroAd var_C4
  loc_9C3B2F: FStAdFunc var_B8
  loc_9C3B32: FLdRfVar var_B8
  loc_9C3B35: FLdRfVar var_AC
  loc_9C3B38: CStrVarTmp
  loc_9C3B39: FStStrNoPop var_B4
  loc_9C3B3C: LitI2_Byte 0
  loc_9C3B3E: LitI2_Byte 0
  loc_9C3B40: FLdRfVar var_98
  loc_9C3B43: CStrVarTmp
  loc_9C3B44: FStStrNoPop var_B0
  loc_9C3B47: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C3B4C: FStStrNoPop var_C0
  loc_9C3B4F: FLdPr Me
  loc_9C3B52: MemStStrCopy
  loc_9C3B56: FFreeStr var_B0 = "": var_B4 = ""
  loc_9C3B5F: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_9C3B6A: FFreeVar var_98 = ""
  loc_9C3B71: FLdPr Me
  loc_9C3B74: VCallAd Control_ID_mskHasta
  loc_9C3B77: FStAdFunc var_C4
  loc_9C3B7A: LitNothing
  loc_9C3B7C: CastAd
  loc_9C3B7F: FStAdFunc var_B8
  loc_9C3B82: FLdRfVar var_B8
  loc_9C3B85: FLdZeroAd var_C4
  loc_9C3B88: FStAdFuncNoPop
  loc_9C3B8B: CastAd
  loc_9C3B8E: FStAdFunc var_9C
  loc_9C3B91: FLdRfVar var_9C
  loc_9C3B94: FLdPr Me
  loc_9C3B97: MemLdRfVar from_stack_1.global_140
  loc_9C3B9A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C3B9F: IStI2 arg_C
  loc_9C3BA2: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_9C3BAD: ExitProcHresult
End Function

Private Sub cmdPrevia_Click() '96CE44
  'Data Table: 4F1070
  loc_96CE24: LitI2_Byte 0
  loc_96CE26: FLdPr Me
  loc_96CE29: MemStI2 global_126
  loc_96CE2C: ILdRf Me
  loc_96CE2F: CastAd
  loc_96CE32: FStAdFunc var_88
  loc_96CE35: FLdRfVar var_88
  loc_96CE38: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_96CE3D: FFree1Ad var_88
  loc_96CE40: ExitProcHresult
  loc_96CE41: FnAbsI2
  loc_96CE42: FStStrNoPop var_800
End Sub

Private Sub cmdCodiPart_Click() 'A0D57C
  'Data Table: 4F1070
  loc_A0D41C: FLdRfVar var_8C
  loc_A0D41F: FLdPr Me
  loc_A0D422: VCallAd Control_ID_cboPeriodo
  loc_A0D425: FStAdFunc var_88
  loc_A0D428: FLdPr var_88
  loc_A0D42B:  = Me.Text
  loc_A0D430: ILdRf var_8C
  loc_A0D433: CI2Str
  loc_A0D435: ImpAdLdRf MemVar_C3D724
  loc_A0D438: NewIfNullPr bscPartida
  loc_A0D43B: Call bscPartida.iPeriInfoPut(from_stack_1v)
  loc_A0D440: FFree1Str var_8C
  loc_A0D443: FFree1Ad var_88
  loc_A0D446: LitNothing
  loc_A0D448: CastAd
  loc_A0D44B: FStAdFuncNoPop
  loc_A0D44E: ImpAdLdRf MemVar_C3D724
  loc_A0D451: NewIfNullPr bscPartida
  loc_A0D454: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_A0D459: FFree1Ad var_88
  loc_A0D45C: LitVar_Missing var_AC
  loc_A0D45F: PopAdLdVar
  loc_A0D460: LitVarI4
  loc_A0D468: PopAdLdVar
  loc_A0D469: ImpAdLdRf MemVar_C3D724
  loc_A0D46C: NewIfNullPr bscPartida
  loc_A0D46F: bscPartida.Show from_stack_1, from_stack_2
  loc_A0D474: FLdRfVar var_B0
  loc_A0D477: FLdRfVar var_88
  loc_A0D47A: ImpAdLdRf MemVar_C3D724
  loc_A0D47D: NewIfNullPr bscPartida
  loc_A0D480: from_stack_1v = bscPartida.global_4332396Get()
  loc_A0D485: FLdPr var_88
  loc_A0D488: from_stack_1 = clsbase.RecordCount
  loc_A0D48D: ILdRf var_B0
  loc_A0D490: LitI4 0
  loc_A0D495: GtI4
  loc_A0D496: FFree1Ad var_88
  loc_A0D499: BranchF loc_A0D574
  loc_A0D49C: FLdRfVar var_CC
  loc_A0D49F: FLdRfVar var_BC
  loc_A0D4A2: LitVarStr var_9C, "CodiPart"
  loc_A0D4A7: PopAdLdVar
  loc_A0D4A8: FLdRfVar var_B8
  loc_A0D4AB: FLdRfVar var_B4
  loc_A0D4AE: FLdRfVar var_88
  loc_A0D4B1: ImpAdLdRf MemVar_C3D724
  loc_A0D4B4: NewIfNullPr bscPartida
  loc_A0D4B7: from_stack_1v = bscPartida.global_4332396Get()
  loc_A0D4BC: FLdPr var_88
  loc_A0D4BF: from_stack_1v = clsbase.RsFrmGet()
  loc_A0D4C4: FLdPr var_B4
  loc_A0D4C7:  = Me.Fields
  loc_A0D4CC: FLdPr var_B8
  loc_A0D4CF: from_stack_2 = Me.Item(from_stack_1)
  loc_A0D4D4: FLdPr var_BC
  loc_A0D4D7:  = Me.Value
  loc_A0D4DC: FLdRfVar var_CC
  loc_A0D4DF: CStrVarTmp
  loc_A0D4E0: CVarStr var_DC
  loc_A0D4E3: PopAdLdVar
  loc_A0D4E4: FLdPr Me
  loc_A0D4E7: VCallAd Control_ID_CodiPartMsk
  loc_A0D4EA: FStAdFunc var_E0
  loc_A0D4ED: FLdPr var_E0
  loc_A0D4F0: LateIdSt
  loc_A0D4F5: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A0D502: FFreeVar var_CC = ""
  loc_A0D509: FLdRfVar var_CC
  loc_A0D50C: FLdRfVar var_BC
  loc_A0D50F: LitVarStr var_9C, "DetaPart"
  loc_A0D514: PopAdLdVar
  loc_A0D515: FLdRfVar var_B8
  loc_A0D518: FLdRfVar var_B4
  loc_A0D51B: FLdRfVar var_88
  loc_A0D51E: ImpAdLdRf MemVar_C3D724
  loc_A0D521: NewIfNullPr bscPartida
  loc_A0D524: from_stack_1v = bscPartida.global_4332396Get()
  loc_A0D529: FLdPr var_88
  loc_A0D52C: from_stack_1v = clsbase.RsFrmGet()
  loc_A0D531: FLdPr var_B4
  loc_A0D534:  = Me.Fields
  loc_A0D539: FLdPr var_B8
  loc_A0D53C: from_stack_2 = Me.Item(from_stack_1)
  loc_A0D541: FLdPr var_BC
  loc_A0D544:  = Me.Value
  loc_A0D549: FLdRfVar var_CC
  loc_A0D54C: CStrVarTmp
  loc_A0D54D: FStStrNoPop var_8C
  loc_A0D550: FLdPr Me
  loc_A0D553: VCallAd Control_ID_CodiPartLbl
  loc_A0D556: FStAdFunc var_E0
  loc_A0D559: FLdPr var_E0
  loc_A0D55C: Me.Caption = from_stack_1
  loc_A0D561: FFree1Str var_8C
  loc_A0D564: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A0D571: FFree1Var var_CC = ""
  loc_A0D574: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_A0D579: ExitProcHresult
  loc_A0D57A: LeCyR8
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '94EF00
  'Data Table: 4F1070
  loc_94EEEC: FLdPr Me
  loc_94EEEF: VCallAd Control_ID_CodiOrgaMsk
  loc_94EEF2: CVarAd
  loc_94EEF6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94EEFB: FFree1Var var_94 = ""
  loc_94EEFE: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'A575B4
  'Data Table: 4F1070
  loc_A572F8: LitStr "SELECT DetaOrga FROM infogov.organigrama WHERE PeriInfo = "
  loc_A572FB: FLdRfVar var_90
  loc_A572FE: FLdPr Me
  loc_A57301: VCallAd Control_ID_cboPeriodo
  loc_A57304: FStAdFunc var_8C
  loc_A57307: FLdPr var_8C
  loc_A5730A:  = Me.Text
  loc_A5730F: ILdRf var_90
  loc_A57312: ConcatStr
  loc_A57313: FStStrNoPop var_94
  loc_A57316: LitStr " AND CodiOrga LIKE '"
  loc_A57319: ConcatStr
  loc_A5731A: FStStrNoPop var_AC
  loc_A5731D: FLdPr Me
  loc_A57320: VCallAd Control_ID_CodiOrgaMsk
  loc_A57323: FStAdFunc var_98
  loc_A57326: FLdPr var_98
  loc_A57329: LateIdLdVar var_A8 DispID_22 0
  loc_A57330: CStrVarTmp
  loc_A57331: FStStrNoPop var_B0
  loc_A57334: ConcatStr
  loc_A57335: FStStrNoPop var_B4
  loc_A57338: LitStr Chr(37) & "'"
  loc_A5733B: ConcatStr
  loc_A5733C: FStStrNoPop var_B8
  loc_A5733F: FLdRfVar var_88
  loc_A57342: NewIfNullPr clsorganigrama
  loc_A57345: Call clsorganigrama.RedefineRS(from_stack_1v)
  loc_A5734A: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A57359: FFreeAd var_8C = ""
  loc_A57360: FFree1Var var_A8 = ""
  loc_A57363: FLdRfVar var_BC
  loc_A57366: FLdRfVar var_88
  loc_A57369: NewIfNullPr clsorganigrama
  loc_A5736C: from_stack_1 = clsorganigrama.RecordCount
  loc_A57371: ILdRf var_BC
  loc_A57374: FStR4 var_C0
  loc_A57377: ILdRf var_C0
  loc_A5737A: LitI4 0
  loc_A5737F: EqI4
  loc_A57380: BranchF loc_A57423
  loc_A57383: LitStr "0 registros encontrados"
  loc_A57386: FLdPr Me
  loc_A57389: VCallAd Control_ID_CodiOrgaLbl
  loc_A5738C: FStAdFunc var_8C
  loc_A5738F: FLdPr var_8C
  loc_A57392: Me.Caption = from_stack_1
  loc_A57397: FFree1Ad var_8C
  loc_A5739A: LitI4 0
  loc_A5739F: LitI4 1
  loc_A573A4: FLdRfVar var_C4
  loc_A573A7: Redim
  loc_A573B1: FLdPr Me
  loc_A573B4: VCallAd Control_ID_CodiUngaMsk
  loc_A573B7: CVarAd
  loc_A573BB: ParmAry1St
  loc_A573C1: FLdPr Me
  loc_A573C4: VCallAd Control_ID_CodiUngaCmd
  loc_A573C7: CVarAd
  loc_A573CB: ParmAry1St
  loc_A573D1: FLdRfVar var_C4
  loc_A573D4: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A573D9: FLdRfVar var_C4
  loc_A573DC: Erase
  loc_A573DD: LitI4 0
  loc_A573E2: LitI4 1
  loc_A573E7: FLdRfVar var_C4
  loc_A573EA: Redim
  loc_A573F4: FLdPr Me
  loc_A573F7: VCallAd Control_ID_CodiUngaMsk
  loc_A573FA: CVarAd
  loc_A573FE: ParmAry1St
  loc_A57404: FLdPr Me
  loc_A57407: VCallAd Control_ID_CodiUngaLbl
  loc_A5740A: CVarAd
  loc_A5740E: ParmAry1St
  loc_A57414: FLdRfVar var_C4
  loc_A57417: ImpAdCallFPR4 Proc_261_4_9A47F0()
  loc_A5741C: FLdRfVar var_C4
  loc_A5741F: Erase
  loc_A57420: Branch loc_A575B2
  loc_A57423: ILdRf var_C0
  loc_A57426: LitI4 1
  loc_A5742B: EqI4
  loc_A5742C: BranchF loc_A574F4
  loc_A5742F: FLdRfVar var_A8
  loc_A57432: FLdRfVar var_E8
  loc_A57435: LitVarStr var_E4, "DetaOrga"
  loc_A5743A: PopAdLdVar
  loc_A5743B: FLdRfVar var_98
  loc_A5743E: FLdRfVar var_8C
  loc_A57441: FLdRfVar var_88
  loc_A57444: NewIfNullPr clsorganigrama
  loc_A57447: from_stack_1v = clsorganigrama.RsFrmGet()
  loc_A5744C: FLdPr var_8C
  loc_A5744F:  = Me.Fields
  loc_A57454: FLdPr var_98
  loc_A57457: from_stack_2 = Me.Item(from_stack_1)
  loc_A5745C: FLdPr var_E8
  loc_A5745F:  = Me.Value
  loc_A57464: FLdRfVar var_A8
  loc_A57467: CStrVarTmp
  loc_A57468: FStStrNoPop var_90
  loc_A5746B: FLdPr Me
  loc_A5746E: VCallAd Control_ID_CodiOrgaLbl
  loc_A57471: FStAdFunc var_EC
  loc_A57474: FLdPr var_EC
  loc_A57477: Me.Caption = from_stack_1
  loc_A5747C: FFree1Str var_90
  loc_A5747F: FFreeAd var_8C = "": var_98 = "": var_E8 = ""
  loc_A5748A: FFree1Var var_A8 = ""
  loc_A5748D: FLdPr Me
  loc_A57490: VCallAd Control_ID_CodiOrgaMsk
  loc_A57493: FStAdFunc var_8C
  loc_A57496: FLdPr var_8C
  loc_A57499: LateIdLdVar var_A8 DispID_13 -32767
  loc_A574A0: CBoolVar
  loc_A574A2: LitI2_Byte &HFF
  loc_A574A4: EqI2
  loc_A574A5: FFree1Ad var_8C
  loc_A574A8: FFree1Var var_A8 = ""
  loc_A574AB: BranchF loc_A574F1
  loc_A574AE: LitI4 0
  loc_A574B3: LitI4 1
  loc_A574B8: FLdRfVar var_C4
  loc_A574BB: Redim
  loc_A574C5: FLdPr Me
  loc_A574C8: VCallAd Control_ID_CodiUngaMsk
  loc_A574CB: CVarAd
  loc_A574CF: ParmAry1St
  loc_A574D5: FLdPr Me
  loc_A574D8: VCallAd Control_ID_CodiUngaCmd
  loc_A574DB: CVarAd
  loc_A574DF: ParmAry1St
  loc_A574E5: FLdRfVar var_C4
  loc_A574E8: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A574ED: FLdRfVar var_C4
  loc_A574F0: Erase
  loc_A574F1: Branch loc_A575B2
  loc_A574F4: FLdRfVar var_BC
  loc_A574F7: FLdRfVar var_88
  loc_A574FA: NewIfNullPr clsorganigrama
  loc_A574FD: from_stack_1 = clsorganigrama.RecordCount
  loc_A57502: ILdRf var_BC
  loc_A57505: CStrI4
  loc_A57507: FStStrNoPop var_90
  loc_A5750A: LitStr " organigramas encontrados"
  loc_A5750D: ConcatStr
  loc_A5750E: FStStrNoPop var_94
  loc_A57511: FLdPr Me
  loc_A57514: VCallAd Control_ID_CodiOrgaLbl
  loc_A57517: FStAdFunc var_8C
  loc_A5751A: FLdPr var_8C
  loc_A5751D: Me.Caption = from_stack_1
  loc_A57522: FFreeStr var_90 = ""
  loc_A57529: FFree1Ad var_8C
  loc_A5752C: LitI4 0
  loc_A57531: LitI4 1
  loc_A57536: FLdRfVar var_C4
  loc_A57539: Redim
  loc_A57543: FLdPr Me
  loc_A57546: VCallAd Control_ID_CodiUngaMsk
  loc_A57549: CVarAd
  loc_A5754D: ParmAry1St
  loc_A57553: FLdPr Me
  loc_A57556: VCallAd Control_ID_CodiUngaCmd
  loc_A57559: CVarAd
  loc_A5755D: ParmAry1St
  loc_A57563: FLdRfVar var_C4
  loc_A57566: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A5756B: FLdRfVar var_C4
  loc_A5756E: Erase
  loc_A5756F: LitI4 0
  loc_A57574: LitI4 1
  loc_A57579: FLdRfVar var_C4
  loc_A5757C: Redim
  loc_A57586: FLdPr Me
  loc_A57589: VCallAd Control_ID_CodiUngaMsk
  loc_A5758C: CVarAd
  loc_A57590: ParmAry1St
  loc_A57596: FLdPr Me
  loc_A57599: VCallAd Control_ID_CodiUngaLbl
  loc_A5759C: CVarAd
  loc_A575A0: ParmAry1St
  loc_A575A6: FLdRfVar var_C4
  loc_A575A9: ImpAdCallFPR4 Proc_261_4_9A47F0()
  loc_A575AE: FLdRfVar var_C4
  loc_A575B1: Erase
  loc_A575B2: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '98261C
  'Data Table: 4F1070
  loc_9825E0: LitVar_Missing var_A4
  loc_9825E3: PopAdLdVar
  loc_9825E4: LitVarI4
  loc_9825EC: PopAdLdVar
  loc_9825ED: ImpAdLdRf MemVar_C3D9A8
  loc_9825F0: NewIfNullPr frmCalendario
  loc_9825F3: frmCalendario.Show from_stack_1, from_stack_2
  loc_9825F8: ImpAdLdRf MemVar_C3D038
  loc_9825FB: CDargRef
  loc_9825FF: FLdPr Me
  loc_982602: VCallAd Control_ID_mskDesde
  loc_982605: FStAdFunc var_A8
  loc_982608: FLdPr var_A8
  loc_98260B: LateIdSt
  loc_982610: FFree1Ad var_A8
  loc_982613: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_982618: ExitProcHresult
  loc_982619: LeI2
  loc_98261A: LitStr "?N$"
End Sub

Private Sub cmdCalHasta_Click(arg_18) '98309C
  'Data Table: 4F1070
  loc_983060: LitVar_Missing var_A4
  loc_983063: PopAdLdVar
  loc_983064: LitVarI4
  loc_98306C: PopAdLdVar
  loc_98306D: ImpAdLdRf MemVar_C3D9A8
  loc_983070: NewIfNullPr frmCalendario
  loc_983073: frmCalendario.Show from_stack_1, from_stack_2
  loc_983078: ImpAdLdRf MemVar_C3D038
  loc_98307B: CDargRef
  loc_98307F: FLdPr Me
  loc_983082: VCallAd Control_ID_mskHasta
  loc_983085: FStAdFunc var_A8
  loc_983088: FLdPr var_A8
  loc_98308B: LateIdSt
  loc_983090: FFree1Ad var_A8
  loc_983093: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_983098: ExitProcHresult
  loc_983099: CRec2Uni arg_18
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '94EEB8
  'Data Table: 4F1070
  loc_94EEA4: FLdPr Me
  loc_94EEA7: VCallAd Control_ID_CodiPartMsk
  loc_94EEAA: CVarAd
  loc_94EEAE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94EEB3: FFree1Var var_94 = ""
  loc_94EEB6: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'A2C964
  'Data Table: 4F1070
  loc_A2C7B0: FLdRfVar var_9A
  loc_A2C7B3: FLdPr Me
  loc_A2C7B6: VCallAd Control_ID_NotCodiPartChk
  loc_A2C7B9: FStAdFunc var_98
  loc_A2C7BC: FLdPr var_98
  loc_A2C7BF:  = Me.Value
  loc_A2C7C4: LitStr "SELECT DetaPart FROM partida WHERE PeriInfo = "
  loc_A2C7C7: FLdRfVar var_90
  loc_A2C7CA: FLdPr Me
  loc_A2C7CD: VCallAd Control_ID_cboPeriodo
  loc_A2C7D0: FStAdFunc var_8C
  loc_A2C7D3: FLdPr var_8C
  loc_A2C7D6:  = Me.Text
  loc_A2C7DB: ILdRf var_90
  loc_A2C7DE: ConcatStr
  loc_A2C7DF: FStStrNoPop var_94
  loc_A2C7E2: LitStr " AND CodiPart "
  loc_A2C7E5: ConcatStr
  loc_A2C7E6: CVarStr var_10C
  loc_A2C7E9: LitVarStr var_DC, vbNullString
  loc_A2C7EE: FStVarCopyObj var_EC
  loc_A2C7F1: FLdRfVar var_EC
  loc_A2C7F4: LitVarStr var_BC, "NOT"
  loc_A2C7F9: FStVarCopyObj var_CC
  loc_A2C7FC: FLdRfVar var_CC
  loc_A2C7FF: FLdI2 var_9A
  loc_A2C802: CI4UI1
  loc_A2C803: LitI4 1
  loc_A2C808: EqI4
  loc_A2C809: CVarBoolI2 var_AC
  loc_A2C80D: FLdRfVar var_FC
  loc_A2C810: ImpAdCallFPR4  = IIf(, , )
  loc_A2C815: FLdRfVar var_FC
  loc_A2C818: ConcatVar var_11C
  loc_A2C81C: LitVarStr var_12C, " LIKE '"
  loc_A2C821: ConcatVar var_13C
  loc_A2C825: FLdPr Me
  loc_A2C828: VCallAd Control_ID_CodiPartMsk
  loc_A2C82B: FStAdFunc var_140
  loc_A2C82E: FLdPr var_140
  loc_A2C831: LateIdLdVar var_150 DispID_22 0
  loc_A2C838: CStrVarTmp
  loc_A2C839: CVarStr var_160
  loc_A2C83C: ConcatVar var_170
  loc_A2C840: LitVarStr var_180, Chr(37) & "'"
  loc_A2C845: ConcatVar var_190
  loc_A2C849: CStrVarVal var_194
  loc_A2C84D: FLdRfVar var_88
  loc_A2C850: NewIfNullPr clspartida
  loc_A2C853: Call clspartida.RedefineRS(from_stack_1v)
  loc_A2C858: FFreeStr var_90 = "": var_94 = ""
  loc_A2C861: FFreeAd var_8C = "": var_98 = ""
  loc_A2C86A: FFreeVar var_AC = "": var_CC = "": var_EC = "": var_10C = "": var_FC = "": var_11C = "": var_150 = "": var_13C = "": var_160 = "": var_170 = ""
  loc_A2C883: FLdRfVar var_198
  loc_A2C886: FLdRfVar var_88
  loc_A2C889: NewIfNullPr clspartida
  loc_A2C88C: from_stack_1 = clspartida.RecordCount
  loc_A2C891: ILdRf var_198
  loc_A2C894: FStR4 var_19C
  loc_A2C897: ILdRf var_19C
  loc_A2C89A: LitI4 0
  loc_A2C89F: EqI4
  loc_A2C8A0: BranchF loc_A2C8BD
  loc_A2C8A3: LitStr "0 registros encontrados"
  loc_A2C8A6: FLdPr Me
  loc_A2C8A9: VCallAd Control_ID_CodiPartLbl
  loc_A2C8AC: FStAdFunc var_8C
  loc_A2C8AF: FLdPr var_8C
  loc_A2C8B2: Me.Caption = from_stack_1
  loc_A2C8B7: FFree1Ad var_8C
  loc_A2C8BA: Branch loc_A2C962
  loc_A2C8BD: ILdRf var_19C
  loc_A2C8C0: LitI4 1
  loc_A2C8C5: EqI4
  loc_A2C8C6: BranchF loc_A2C92A
  loc_A2C8C9: FLdRfVar var_CC
  loc_A2C8CC: FLdRfVar var_140
  loc_A2C8CF: LitVarStr var_AC, "DetaPart"
  loc_A2C8D4: PopAdLdVar
  loc_A2C8D5: FLdRfVar var_98
  loc_A2C8D8: FLdRfVar var_8C
  loc_A2C8DB: FLdRfVar var_88
  loc_A2C8DE: NewIfNullPr clspartida
  loc_A2C8E1: from_stack_1v = clspartida.RsFrmGet()
  loc_A2C8E6: FLdPr var_8C
  loc_A2C8E9:  = Me.Fields
  loc_A2C8EE: FLdPr var_98
  loc_A2C8F1: from_stack_2 = Me.Item(from_stack_1)
  loc_A2C8F6: FLdPr var_140
  loc_A2C8F9:  = Me.Value
  loc_A2C8FE: FLdRfVar var_CC
  loc_A2C901: CStrVarTmp
  loc_A2C902: FStStrNoPop var_90
  loc_A2C905: FLdPr Me
  loc_A2C908: VCallAd Control_ID_CodiPartLbl
  loc_A2C90B: FStAdFunc var_1A0
  loc_A2C90E: FLdPr var_1A0
  loc_A2C911: Me.Caption = from_stack_1
  loc_A2C916: FFree1Str var_90
  loc_A2C919: FFreeAd var_8C = "": var_98 = "": var_140 = ""
  loc_A2C924: FFree1Var var_CC = ""
  loc_A2C927: Branch loc_A2C962
  loc_A2C92A: FLdRfVar var_198
  loc_A2C92D: FLdRfVar var_88
  loc_A2C930: NewIfNullPr clspartida
  loc_A2C933: from_stack_1 = clspartida.RecordCount
  loc_A2C938: ILdRf var_198
  loc_A2C93B: CStrI4
  loc_A2C93D: FStStrNoPop var_90
  loc_A2C940: LitStr " partidas encontradas"
  loc_A2C943: ConcatStr
  loc_A2C944: FStStrNoPop var_94
  loc_A2C947: FLdPr Me
  loc_A2C94A: VCallAd Control_ID_CodiPartLbl
  loc_A2C94D: FStAdFunc var_8C
  loc_A2C950: FLdPr var_8C
  loc_A2C953: Me.Caption = from_stack_1
  loc_A2C958: FFreeStr var_90 = ""
  loc_A2C95F: FFree1Ad var_8C
  loc_A2C962: ExitProcHresult
End Sub

Public Function htmFileGet() '4F2F60
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4F2F6F
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4F2F7E
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4F2F8D
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4F2F9C
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A15C40
  'Data Table: 4F1070
  loc_A15AFC: LitI4 0
  loc_A15B01: LitI4 &H11
  loc_A15B06: FLdRfVar var_88
  loc_A15B09: Redim
  loc_A15B13: FLdPr Me
  loc_A15B16: VCallAd Control_ID_cboPeriodo
  loc_A15B19: CVarAd
  loc_A15B1D: ParmAry1St
  loc_A15B23: FLdPr Me
  loc_A15B26: VCallAd Control_ID_mskDesde
  loc_A15B29: CVarAd
  loc_A15B2D: ParmAry1St
  loc_A15B33: FLdPr Me
  loc_A15B36: VCallAd Control_ID_cmdCalDesde
  loc_A15B39: CVarAd
  loc_A15B3D: ParmAry1St
  loc_A15B43: FLdPr Me
  loc_A15B46: VCallAd Control_ID_mskHasta
  loc_A15B49: CVarAd
  loc_A15B4D: ParmAry1St
  loc_A15B53: FLdPr Me
  loc_A15B56: VCallAd Control_ID_cmdCalHasta
  loc_A15B59: CVarAd
  loc_A15B5D: ParmAry1St
  loc_A15B63: FLdPr Me
  loc_A15B66: VCallAd Control_ID_CodiPartMsk
  loc_A15B69: CVarAd
  loc_A15B6D: ParmAry1St
  loc_A15B73: FLdPr Me
  loc_A15B76: VCallAd Control_ID_cmdCodiPart
  loc_A15B79: CVarAd
  loc_A15B7D: ParmAry1St
  loc_A15B83: FLdPr Me
  loc_A15B86: VCallAd Control_ID_CodiOrgaMsk
  loc_A15B89: CVarAd
  loc_A15B8D: ParmAry1St
  loc_A15B93: FLdPr Me
  loc_A15B96: VCallAd Control_ID_CodiOrgaCmd
  loc_A15B99: CVarAd
  loc_A15B9D: ParmAry1St
  loc_A15BA3: FLdPr Me
  loc_A15BA6: VCallAd Control_ID_CodiFifuMsk
  loc_A15BA9: CVarAd
  loc_A15BAD: ParmAry1St
  loc_A15BB3: FLdPr Me
  loc_A15BB6: VCallAd Control_ID_cmdCodiFifu
  loc_A15BB9: CVarAd
  loc_A15BBD: ParmAry1St
  loc_A15BC3: FLdPr Me
  loc_A15BC6: VCallAd Control_ID_PrevChk
  loc_A15BC9: CVarAd
  loc_A15BCD: ParmAry1St
  loc_A15BD3: FLdPr Me
  loc_A15BD6: VCallAd Control_ID_DefiChk
  loc_A15BD9: CVarAd
  loc_A15BDD: ParmAry1St
  loc_A15BE3: FLdPr Me
  loc_A15BE6: VCallAd Control_ID_DeveChk
  loc_A15BE9: CVarAd
  loc_A15BED: ParmAry1St
  loc_A15BF3: FLdPr Me
  loc_A15BF6: VCallAd Control_ID_MapaChk
  loc_A15BF9: CVarAd
  loc_A15BFD: ParmAry1St
  loc_A15C03: FLdPr Me
  loc_A15C06: VCallAd Control_ID_PagaChk
  loc_A15C09: CVarAd
  loc_A15C0D: ParmAry1St
  loc_A15C13: FLdPr Me
  loc_A15C16: VCallAd Control_ID_SoloLocadoresChk
  loc_A15C19: CVarAd
  loc_A15C1D: ParmAry1St
  loc_A15C23: FLdPr Me
  loc_A15C26: VCallAd Control_ID_NotCodiPartChk
  loc_A15C29: CVarAd
  loc_A15C2D: ParmAry1St
  loc_A15C33: FLdRfVar var_88
  loc_A15C36: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A15C3B: FLdRfVar var_88
  loc_A15C3E: Erase
  loc_A15C3F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BBB128
  'Data Table: 4F1070
  loc_BBA0F0: LitStr vbNullString
  loc_BBA0F3: FLdPr Me
  loc_BBA0F6: MemStStrCopy
  loc_BBA0FA: LitI2_Byte 0
  loc_BBA0FC: PopTmpLdAd2 var_B2
  loc_BBA0FF: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_BBA104: FLdPr Me
  loc_BBA107: MemLdStr global_140
  loc_BBA10A: LitStr vbNullString
  loc_BBA10D: NeStr
  loc_BBA10F: BranchF loc_BBA115
  loc_BBA112: Branch loc_BBB0FD
  loc_BBA115: LitI2_Byte 0
  loc_BBA117: PopTmpLdAd2 var_B2
  loc_BBA11A: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_BBA11F: FLdPr Me
  loc_BBA122: MemLdStr global_140
  loc_BBA125: LitStr vbNullString
  loc_BBA128: NeStr
  loc_BBA12A: BranchF loc_BBA130
  loc_BBA12D: Branch loc_BBB0FD
  loc_BBA130: FLdPr Me
  loc_BBA133: MemLdI2 bGenerado
  loc_BBA136: BranchF loc_BBA13A
  loc_BBA139: ExitProcHresult
  loc_BBA13A: LitVarStr var_C4, "Generando reporte..."
  loc_BBA13F: PopAdLdVar
  loc_BBA140: FLdPr Me
  loc_BBA143: VCallAd Control_ID_statusBar
  loc_BBA146: FStAdFunc var_D8
  loc_BBA149: FLdPr var_D8
  loc_BBA14C: LateIdSt
  loc_BBA151: FFree1Ad var_D8
  loc_BBA154: LitI4 &HB
  loc_BBA159: CI2I4
  loc_BBA15A: FLdPr Me
  loc_BBA15D: Me.MousePointer = from_stack_1
  loc_BBA162: LitI2_Byte 0
  loc_BBA164: PopTmpLdAd2 var_B2
  loc_BBA167: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_BBA16C: FLdPr Me
  loc_BBA16F: MemLdStr global_140
  loc_BBA172: LitStr vbNullString
  loc_BBA175: NeStr
  loc_BBA177: BranchF loc_BBA17D
  loc_BBA17A: Branch loc_BBB0FD
  loc_BBA17D: LitI2_Byte 0
  loc_BBA17F: PopTmpLdAd2 var_B2
  loc_BBA182: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_BBA187: FLdPr Me
  loc_BBA18A: MemLdStr global_140
  loc_BBA18D: LitStr vbNullString
  loc_BBA190: NeStr
  loc_BBA192: BranchF loc_BBA198
  loc_BBA195: Branch loc_BBB0FD
  loc_BBA198: LitI2_Byte 0
  loc_BBA19A: PopTmpLdAd2 var_B2
  loc_BBA19D: Call CodiPartMsk_UnknownEvent_8()
  loc_BBA1A2: LitI2_Byte 0
  loc_BBA1A4: PopTmpLdAd2 var_B2
  loc_BBA1A7: Call CodiOrgaMsk_UnknownEvent_8()
  loc_BBA1AC: LitI2_Byte 0
  loc_BBA1AE: PopTmpLdAd2 var_B2
  loc_BBA1B1: Call CodiFifuMsk_UnknownEvent_8()
  loc_BBA1B6: FLdPr Me
  loc_BBA1B9: VCallAd Control_ID_CodiPartMsk
  loc_BBA1BC: FStAdFunc var_D8
  loc_BBA1BF: FLdPr var_D8
  loc_BBA1C2: LateIdLdVar var_E8 DispID_22 0
  loc_BBA1C9: PopAd
  loc_BBA1CB: FLdRfVar var_B2
  loc_BBA1CE: FLdPr Me
  loc_BBA1D1: VCallAd Control_ID_NotCodiPartChk
  loc_BBA1D4: FStAdFunc var_F0
  loc_BBA1D7: FLdPr var_F0
  loc_BBA1DA:  = Me.Value
  loc_BBA1DF: LitVarStr var_110, vbNullString
  loc_BBA1E4: FStVarCopyObj var_120
  loc_BBA1E7: FLdRfVar var_120
  loc_BBA1EA: LitVarStr var_D4, "NOT"
  loc_BBA1EF: FStVarCopyObj var_100
  loc_BBA1F2: FLdRfVar var_100
  loc_BBA1F5: FLdI2 var_B2
  loc_BBA1F8: CI4UI1
  loc_BBA1F9: LitI4 1
  loc_BBA1FE: EqI4
  loc_BBA1FF: CVarBoolI2 var_C4
  loc_BBA203: FLdRfVar var_130
  loc_BBA206: ImpAdCallFPR4  = IIf(, , )
  loc_BBA20B: FLdPr Me
  loc_BBA20E: VCallAd Control_ID_CodiPartMsk
  loc_BBA211: FStAdFunc var_174
  loc_BBA214: FLdPr var_174
  loc_BBA217: LateIdLdVar var_184 DispID_22 0
  loc_BBA21E: PopAd
  loc_BBA220: LitVarStr var_1E4, vbNullString
  loc_BBA225: FStVarCopyObj var_1F4
  loc_BBA228: FLdRfVar var_1F4
  loc_BBA22B: LitVarStr var_140, " AND i.CodiPart "
  loc_BBA230: FLdRfVar var_130
  loc_BBA233: ConcatVar var_150
  loc_BBA237: LitVarStr var_160, " LIKE '"
  loc_BBA23C: ConcatVar var_170
  loc_BBA240: FLdRfVar var_184
  loc_BBA243: CStrVarTmp
  loc_BBA244: CVarStr var_194
  loc_BBA247: ConcatVar var_1A4
  loc_BBA24B: LitVarStr var_1B4, Chr(37) & "'"
  loc_BBA250: ConcatVar var_1C4
  loc_BBA254: FLdRfVar var_E8
  loc_BBA257: CStrVarTmp
  loc_BBA258: FStStrNoPop var_EC
  loc_BBA25B: LitStr vbNullString
  loc_BBA25E: NeStr
  loc_BBA260: CVarBoolI2 var_1D4
  loc_BBA264: FLdRfVar var_204
  loc_BBA267: ImpAdCallFPR4  = IIf(, , )
  loc_BBA26C: FLdRfVar var_204
  loc_BBA26F: CStrVarTmp
  loc_BBA270: FStStr var_88
  loc_BBA273: FFree1Str var_EC
  loc_BBA276: FFreeAd var_D8 = "": var_F0 = ""
  loc_BBA27F: FFreeVar var_E8 = "": var_C4 = "": var_100 = "": var_120 = "": var_130 = "": var_150 = "": var_184 = "": var_170 = "": var_194 = "": var_1A4 = "": var_1D4 = "": var_1C4 = "": var_1F4 = ""
  loc_BBA29E: FLdPr Me
  loc_BBA2A1: VCallAd Control_ID_CodiOrgaMsk
  loc_BBA2A4: FStAdFunc var_D8
  loc_BBA2A7: FLdPr var_D8
  loc_BBA2AA: LateIdLdVar var_E8 DispID_22 0
  loc_BBA2B1: PopAd
  loc_BBA2B3: FLdPr Me
  loc_BBA2B6: VCallAd Control_ID_CodiOrgaMsk
  loc_BBA2B9: FStAdFunc var_F0
  loc_BBA2BC: FLdPr var_F0
  loc_BBA2BF: LateIdLdVar var_100 DispID_22 0
  loc_BBA2C6: PopAd
  loc_BBA2C8: LitVarStr var_D4, vbNullString
  loc_BBA2CD: FStVarCopyObj var_130
  loc_BBA2D0: FLdRfVar var_130
  loc_BBA2D3: LitStr " AND i.CodiOrga LIKE '"
  loc_BBA2D6: FLdRfVar var_100
  loc_BBA2D9: CStrVarTmp
  loc_BBA2DA: FStStrNoPop var_208
  loc_BBA2DD: ConcatStr
  loc_BBA2DE: FStStrNoPop var_20C
  loc_BBA2E1: LitStr Chr(37) & "'"
  loc_BBA2E4: ConcatStr
  loc_BBA2E5: CVarStr var_120
  loc_BBA2E8: FLdRfVar var_E8
  loc_BBA2EB: CStrVarTmp
  loc_BBA2EC: FStStrNoPop var_EC
  loc_BBA2EF: LitStr vbNullString
  loc_BBA2F2: NeStr
  loc_BBA2F4: CVarBoolI2 var_C4
  loc_BBA2F8: FLdRfVar var_150
  loc_BBA2FB: ImpAdCallFPR4  = IIf(, , )
  loc_BBA300: FLdRfVar var_150
  loc_BBA303: CStrVarTmp
  loc_BBA304: FStStr var_8C
  loc_BBA307: FFreeStr var_EC = "": var_208 = ""
  loc_BBA310: FFreeAd var_D8 = ""
  loc_BBA317: FFreeVar var_E8 = "": var_100 = "": var_C4 = "": var_120 = "": var_130 = ""
  loc_BBA326: FLdPr Me
  loc_BBA329: VCallAd Control_ID_CodiUngaMsk
  loc_BBA32C: FStAdFunc var_D8
  loc_BBA32F: FLdPr var_D8
  loc_BBA332: LateIdLdVar var_E8 DispID_22 0
  loc_BBA339: PopAd
  loc_BBA33B: FLdPr Me
  loc_BBA33E: VCallAd Control_ID_CodiUngaMsk
  loc_BBA341: FStAdFunc var_F0
  loc_BBA344: FLdPr var_F0
  loc_BBA347: LateIdLdVar var_100 DispID_22 0
  loc_BBA34E: PopAd
  loc_BBA350: LitVarStr var_D4, vbNullString
  loc_BBA355: FStVarCopyObj var_130
  loc_BBA358: FLdRfVar var_130
  loc_BBA35B: LitStr " AND i.CodiUnga = '"
  loc_BBA35E: FLdRfVar var_100
  loc_BBA361: CStrVarTmp
  loc_BBA362: FStStrNoPop var_208
  loc_BBA365: ConcatStr
  loc_BBA366: FStStrNoPop var_20C
  loc_BBA369: LitStr "'"
  loc_BBA36C: ConcatStr
  loc_BBA36D: CVarStr var_120
  loc_BBA370: FLdRfVar var_E8
  loc_BBA373: CStrVarTmp
  loc_BBA374: FStStrNoPop var_EC
  loc_BBA377: LitStr vbNullString
  loc_BBA37A: NeStr
  loc_BBA37C: CVarBoolI2 var_C4
  loc_BBA380: FLdRfVar var_150
  loc_BBA383: ImpAdCallFPR4  = IIf(, , )
  loc_BBA388: FLdRfVar var_150
  loc_BBA38B: CStrVarTmp
  loc_BBA38C: FStStr var_90
  loc_BBA38F: FFreeStr var_EC = "": var_208 = ""
  loc_BBA398: FFreeAd var_D8 = ""
  loc_BBA39F: FFreeVar var_E8 = "": var_100 = "": var_C4 = "": var_120 = "": var_130 = ""
  loc_BBA3AE: FLdPr Me
  loc_BBA3B1: VCallAd Control_ID_CodiFifuMsk
  loc_BBA3B4: FStAdFunc var_D8
  loc_BBA3B7: FLdPr var_D8
  loc_BBA3BA: LateIdLdVar var_E8 DispID_22 0
  loc_BBA3C1: PopAd
  loc_BBA3C3: FLdPr Me
  loc_BBA3C6: VCallAd Control_ID_CodiFifuMsk
  loc_BBA3C9: FStAdFunc var_F0
  loc_BBA3CC: FLdPr var_F0
  loc_BBA3CF: LateIdLdVar var_100 DispID_22 0
  loc_BBA3D6: PopAd
  loc_BBA3D8: LitVarStr var_D4, vbNullString
  loc_BBA3DD: FStVarCopyObj var_130
  loc_BBA3E0: FLdRfVar var_130
  loc_BBA3E3: LitStr " AND i.CodiFifu LIKE '"
  loc_BBA3E6: FLdRfVar var_100
  loc_BBA3E9: CStrVarTmp
  loc_BBA3EA: FStStrNoPop var_208
  loc_BBA3ED: ConcatStr
  loc_BBA3EE: FStStrNoPop var_20C
  loc_BBA3F1: LitStr Chr(37) & "'"
  loc_BBA3F4: ConcatStr
  loc_BBA3F5: CVarStr var_120
  loc_BBA3F8: FLdRfVar var_E8
  loc_BBA3FB: CStrVarTmp
  loc_BBA3FC: FStStrNoPop var_EC
  loc_BBA3FF: LitStr vbNullString
  loc_BBA402: NeStr
  loc_BBA404: CVarBoolI2 var_C4
  loc_BBA408: FLdRfVar var_150
  loc_BBA40B: ImpAdCallFPR4  = IIf(, , )
  loc_BBA410: FLdRfVar var_150
  loc_BBA413: CStrVarTmp
  loc_BBA414: FStStr var_94
  loc_BBA417: FFreeStr var_EC = "": var_208 = ""
  loc_BBA420: FFreeAd var_D8 = ""
  loc_BBA427: FFreeVar var_E8 = "": var_100 = "": var_C4 = "": var_120 = "": var_130 = ""
  loc_BBA436: LitStr " ORDER BY CodiPart, CodiOrga, CodiFifu, ExorImpu, FechImpu, NumeImpu"
  loc_BBA439: FStStrCopy var_98
  loc_BBA43C: FLdRfVar var_B2
  loc_BBA43F: FLdPr Me
  loc_BBA442: VCallAd Control_ID_PrevChk
  loc_BBA445: FStAdFunc var_D8
  loc_BBA448: FLdPr var_D8
  loc_BBA44B:  = Me.Value
  loc_BBA450: LitVarStr var_110, vbNullString
  loc_BBA455: FStVarCopyObj var_100
  loc_BBA458: FLdRfVar var_100
  loc_BBA45B: LitVarStr var_D4, " OR PrevImpu <> 0"
  loc_BBA460: FStVarCopyObj var_E8
  loc_BBA463: FLdRfVar var_E8
  loc_BBA466: FLdI2 var_B2
  loc_BBA469: CI4UI1
  loc_BBA46A: LitI4 1
  loc_BBA46F: EqI4
  loc_BBA470: CVarBoolI2 var_C4
  loc_BBA474: FLdRfVar var_120
  loc_BBA477: ImpAdCallFPR4  = IIf(, , )
  loc_BBA47C: FLdRfVar var_120
  loc_BBA47F: CStrVarTmp
  loc_BBA480: FStStr var_9C
  loc_BBA483: FFree1Ad var_D8
  loc_BBA486: FFreeVar var_C4 = "": var_E8 = "": var_100 = ""
  loc_BBA491: FLdRfVar var_B2
  loc_BBA494: FLdPr Me
  loc_BBA497: VCallAd Control_ID_DefiChk
  loc_BBA49A: FStAdFunc var_D8
  loc_BBA49D: FLdPr var_D8
  loc_BBA4A0:  = Me.Value
  loc_BBA4A5: LitVarStr var_110, vbNullString
  loc_BBA4AA: FStVarCopyObj var_100
  loc_BBA4AD: FLdRfVar var_100
  loc_BBA4B0: LitVarStr var_D4, " OR DefiImpu <> 0"
  loc_BBA4B5: FStVarCopyObj var_E8
  loc_BBA4B8: FLdRfVar var_E8
  loc_BBA4BB: FLdI2 var_B2
  loc_BBA4BE: CI4UI1
  loc_BBA4BF: LitI4 1
  loc_BBA4C4: EqI4
  loc_BBA4C5: CVarBoolI2 var_C4
  loc_BBA4C9: FLdRfVar var_120
  loc_BBA4CC: ImpAdCallFPR4  = IIf(, , )
  loc_BBA4D1: FLdRfVar var_120
  loc_BBA4D4: CStrVarTmp
  loc_BBA4D5: FStStr var_A0
  loc_BBA4D8: FFree1Ad var_D8
  loc_BBA4DB: FFreeVar var_C4 = "": var_E8 = "": var_100 = ""
  loc_BBA4E6: FLdRfVar var_B2
  loc_BBA4E9: FLdPr Me
  loc_BBA4EC: VCallAd Control_ID_DeveChk
  loc_BBA4EF: FStAdFunc var_D8
  loc_BBA4F2: FLdPr var_D8
  loc_BBA4F5:  = Me.Value
  loc_BBA4FA: LitVarStr var_110, vbNullString
  loc_BBA4FF: FStVarCopyObj var_100
  loc_BBA502: FLdRfVar var_100
  loc_BBA505: LitVarStr var_D4, " OR DeveImpu <> 0"
  loc_BBA50A: FStVarCopyObj var_E8
  loc_BBA50D: FLdRfVar var_E8
  loc_BBA510: FLdI2 var_B2
  loc_BBA513: CI4UI1
  loc_BBA514: LitI4 1
  loc_BBA519: EqI4
  loc_BBA51A: CVarBoolI2 var_C4
  loc_BBA51E: FLdRfVar var_120
  loc_BBA521: ImpAdCallFPR4  = IIf(, , )
  loc_BBA526: FLdRfVar var_120
  loc_BBA529: CStrVarTmp
  loc_BBA52A: FStStr var_A4
  loc_BBA52D: FFree1Ad var_D8
  loc_BBA530: FFreeVar var_C4 = "": var_E8 = "": var_100 = ""
  loc_BBA53B: FLdRfVar var_B2
  loc_BBA53E: FLdPr Me
  loc_BBA541: VCallAd Control_ID_MapaChk
  loc_BBA544: FStAdFunc var_D8
  loc_BBA547: FLdPr var_D8
  loc_BBA54A:  = Me.Value
  loc_BBA54F: LitVarStr var_110, vbNullString
  loc_BBA554: FStVarCopyObj var_100
  loc_BBA557: FLdRfVar var_100
  loc_BBA55A: LitVarStr var_D4, " OR MapaImpu <> 0"
  loc_BBA55F: FStVarCopyObj var_E8
  loc_BBA562: FLdRfVar var_E8
  loc_BBA565: FLdI2 var_B2
  loc_BBA568: CI4UI1
  loc_BBA569: LitI4 1
  loc_BBA56E: EqI4
  loc_BBA56F: CVarBoolI2 var_C4
  loc_BBA573: FLdRfVar var_120
  loc_BBA576: ImpAdCallFPR4  = IIf(, , )
  loc_BBA57B: FLdRfVar var_120
  loc_BBA57E: CStrVarTmp
  loc_BBA57F: FStStr var_A8
  loc_BBA582: FFree1Ad var_D8
  loc_BBA585: FFreeVar var_C4 = "": var_E8 = "": var_100 = ""
  loc_BBA590: FLdRfVar var_B2
  loc_BBA593: FLdPr Me
  loc_BBA596: VCallAd Control_ID_PagaChk
  loc_BBA599: FStAdFunc var_D8
  loc_BBA59C: FLdPr var_D8
  loc_BBA59F:  = Me.Value
  loc_BBA5A4: LitVarStr var_110, vbNullString
  loc_BBA5A9: FStVarCopyObj var_100
  loc_BBA5AC: FLdRfVar var_100
  loc_BBA5AF: LitVarStr var_D4, " OR PagaImpu <> 0"
  loc_BBA5B4: FStVarCopyObj var_E8
  loc_BBA5B7: FLdRfVar var_E8
  loc_BBA5BA: FLdI2 var_B2
  loc_BBA5BD: CI4UI1
  loc_BBA5BE: LitI4 1
  loc_BBA5C3: EqI4
  loc_BBA5C4: CVarBoolI2 var_C4
  loc_BBA5C8: FLdRfVar var_120
  loc_BBA5CB: ImpAdCallFPR4  = IIf(, , )
  loc_BBA5D0: FLdRfVar var_120
  loc_BBA5D3: CStrVarTmp
  loc_BBA5D4: FStStr var_AC
  loc_BBA5D7: FFree1Ad var_D8
  loc_BBA5DA: FFreeVar var_C4 = "": var_E8 = "": var_100 = ""
  loc_BBA5E5: FLdRfVar var_B2
  loc_BBA5E8: FLdPr Me
  loc_BBA5EB: VCallAd Control_ID_SoloLocadoresChk
  loc_BBA5EE: FStAdFunc var_D8
  loc_BBA5F1: FLdPr var_D8
  loc_BBA5F4:  = Me.Value
  loc_BBA5F9: LitVarStr var_110, vbNullString
  loc_BBA5FE: FStVarCopyObj var_100
  loc_BBA601: FLdRfVar var_100
  loc_BBA604: LitVarStr var_D4, " AND LocaProv = '1'"
  loc_BBA609: FStVarCopyObj var_E8
  loc_BBA60C: FLdRfVar var_E8
  loc_BBA60F: FLdI2 var_B2
  loc_BBA612: CI4UI1
  loc_BBA613: LitI4 1
  loc_BBA618: EqI4
  loc_BBA619: CVarBoolI2 var_C4
  loc_BBA61D: FLdRfVar var_120
  loc_BBA620: ImpAdCallFPR4  = IIf(, , )
  loc_BBA625: FLdRfVar var_120
  loc_BBA628: CStrVarTmp
  loc_BBA629: FStStr var_B0
  loc_BBA62C: FFree1Ad var_D8
  loc_BBA62F: FFreeVar var_C4 = "": var_E8 = "": var_100 = ""
  loc_BBA63A: FLdPr Me
  loc_BBA63D: Me.Refresh
  loc_BBA642: FLdPr Me
  loc_BBA645: MemLdRfVar from_stack_1.global_72
  loc_BBA648: NewIfNullAd
  loc_BBA64B: FStAd var_210 
  loc_BBA64F: FLdPr Me
  loc_BBA652: VCallAd Control_ID_mskDesde
  loc_BBA655: FStAdFunc var_F0
  loc_BBA658: FLdPr var_F0
  loc_BBA65B: LateIdLdVar var_E8 DispID_15 0
  loc_BBA662: PopAd
  loc_BBA664: FLdPr Me
  loc_BBA667: VCallAd Control_ID_mskHasta
  loc_BBA66A: FStAdFunc var_174
  loc_BBA66D: FLdPr var_174
  loc_BBA670: LateIdLdVar var_130 DispID_15 0
  loc_BBA677: PopAd
  loc_BBA679: LitStr "SELECT i.PeriInfo, i.CodiPart, DetaPart, i.CodiOrga, DetaOrga, i.CodiFifu,"
  loc_BBA67C: LitStr " DetaFifu, fnLimpiaVarChar(DetaImpu) DetaImpu, ExorImpu, i.ExpeImpu, FechImpu, i.NumeImpu, i.CucuPers, IFNULL(DetaProv,'') AS DetaProv,"
  loc_BBA67F: ConcatStr
  loc_BBA680: FStStrNoPop var_EC
  loc_BBA683: LitStr " PrevImpu , DefiImpu, DeveImpu, MapaImpu, PagaImpu, i.NumeOrpa"
  loc_BBA686: ConcatStr
  loc_BBA687: FStStrNoPop var_208
  loc_BBA68A: LitStr ", Cast(ifnull(ArchOrpa,'&nbsp;') as CHAR) AS ArchOrpa"
  loc_BBA68D: ConcatStr
  loc_BBA68E: FStStrNoPop var_20C
  loc_BBA691: LitStr " FROM imputacion i"
  loc_BBA694: ConcatStr
  loc_BBA695: FStStrNoPop var_214
  loc_BBA698: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_BBA69B: ConcatStr
  loc_BBA69C: FStStrNoPop var_218
  loc_BBA69F: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = i.PeriInfo AND o.CodiOrga = i.CodiOrga"
  loc_BBA6A2: ConcatStr
  loc_BBA6A3: FStStrNoPop var_21C
  loc_BBA6A6: LitStr " INNER JOIN finalidad f ON f.PeriInfo = i.PeriInfo AND f.CodiFifu = i.CodiFifu"
  loc_BBA6A9: ConcatStr
  loc_BBA6AA: FStStrNoPop var_220
  loc_BBA6AD: LitStr " LEFT JOIN ordenpago oo ON oo.PeriInfo = i.PeriInfo AND oo.NumeOrpa = i.NumeOrpa"
  loc_BBA6B0: ConcatStr
  loc_BBA6B1: FStStrNoPop var_224
  loc_BBA6B4: LitStr " LEFT JOIN proveedor pp ON pp.CucuPers = i.CucuPers"
  loc_BBA6B7: ConcatStr
  loc_BBA6B8: FStStrNoPop var_228
  loc_BBA6BB: LitStr " WHERE i.PeriInfo = "
  loc_BBA6BE: ConcatStr
  loc_BBA6BF: FStStrNoPop var_230
  loc_BBA6C2: FLdRfVar var_22C
  loc_BBA6C5: FLdPr Me
  loc_BBA6C8: VCallAd Control_ID_cboPeriodo
  loc_BBA6CB: FStAdFunc var_D8
  loc_BBA6CE: FLdPr var_D8
  loc_BBA6D1:  = Me.Text
  loc_BBA6D6: ILdRf var_22C
  loc_BBA6D9: ConcatStr
  loc_BBA6DA: FStStrNoPop var_234
  loc_BBA6DD: LitStr " AND LiquImpu = 0 AND FechImpu BETWEEN "
  loc_BBA6E0: ConcatStr
  loc_BBA6E1: FStStrNoPop var_238
  loc_BBA6E4: LitI4 1
  loc_BBA6E9: LitI4 1
  loc_BBA6EE: LitVarStr var_C4, "'yyyy-mm-dd'"
  loc_BBA6F3: FStVarCopyObj var_120
  loc_BBA6F6: FLdRfVar var_120
  loc_BBA6F9: FLdRfVar var_E8
  loc_BBA6FC: CStrVarTmp
  loc_BBA6FD: CVarStr var_100
  loc_BBA700: ImpAdCallI2 Format$(, )
  loc_BBA705: FStStrNoPop var_23C
  loc_BBA708: ConcatStr
  loc_BBA709: FStStrNoPop var_240
  loc_BBA70C: LitStr " AND "
  loc_BBA70F: ConcatStr
  loc_BBA710: FStStrNoPop var_244
  loc_BBA713: LitI4 1
  loc_BBA718: LitI4 1
  loc_BBA71D: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_BBA722: FStVarCopyObj var_170
  loc_BBA725: FLdRfVar var_170
  loc_BBA728: FLdRfVar var_130
  loc_BBA72B: CStrVarTmp
  loc_BBA72C: CVarStr var_150
  loc_BBA72F: ImpAdCallI2 Format$(, )
  loc_BBA734: FStStrNoPop var_248
  loc_BBA737: ConcatStr
  loc_BBA738: FStStrNoPop var_24C
  loc_BBA73B: ILdRf var_88
  loc_BBA73E: ConcatStr
  loc_BBA73F: FStStrNoPop var_250
  loc_BBA742: ILdRf var_8C
  loc_BBA745: ConcatStr
  loc_BBA746: FStStrNoPop var_254
  loc_BBA749: ILdRf var_90
  loc_BBA74C: ConcatStr
  loc_BBA74D: FStStrNoPop var_258
  loc_BBA750: ILdRf var_94
  loc_BBA753: ConcatStr
  loc_BBA754: FStStrNoPop var_25C
  loc_BBA757: LitStr " AND (FALSE "
  loc_BBA75A: ConcatStr
  loc_BBA75B: FStStrNoPop var_260
  loc_BBA75E: ILdRf var_9C
  loc_BBA761: ConcatStr
  loc_BBA762: FStStrNoPop var_264
  loc_BBA765: ILdRf var_A0
  loc_BBA768: ConcatStr
  loc_BBA769: FStStrNoPop var_268
  loc_BBA76C: ILdRf var_A4
  loc_BBA76F: ConcatStr
  loc_BBA770: FStStrNoPop var_26C
  loc_BBA773: ILdRf var_A8
  loc_BBA776: ConcatStr
  loc_BBA777: FStStrNoPop var_270
  loc_BBA77A: ILdRf var_AC
  loc_BBA77D: ConcatStr
  loc_BBA77E: FStStrNoPop var_274
  loc_BBA781: LitStr ")"
  loc_BBA784: ConcatStr
  loc_BBA785: FStStrNoPop var_278
  loc_BBA788: ILdRf var_B0
  loc_BBA78B: ConcatStr
  loc_BBA78C: FStStrNoPop var_27C
  loc_BBA78F: ILdRf var_98
  loc_BBA792: ConcatStr
  loc_BBA793: FStStrNoPop var_280
  loc_BBA796: FLdPr var_210
  loc_BBA799: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_BBA79E: FFreeStr var_280 = "": var_EC = "": var_208 = "": var_20C = "": var_214 = "": var_218 = "": var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_230 = "": var_22C = "": var_234 = "": var_238 = "": var_23C = "": var_240 = "": var_244 = "": var_248 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = "": var_25C = "": var_260 = "": var_264 = "": var_268 = "": var_26C = "": var_270 = "": var_274 = "": var_278 = ""
  loc_BBA7DF: FFreeAd var_D8 = "": var_F0 = ""
  loc_BBA7E8: FFreeVar var_E8 = "": var_100 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_BBA7F7: FLdRfVar var_284
  loc_BBA7FA: FLdPr var_210
  loc_BBA7FD: from_stack_1 = clsimputacion.RecordCount
  loc_BBA802: ILdRf var_284
  loc_BBA805: LitI4 0
  loc_BBA80A: EqI4
  loc_BBA80B: BranchF loc_BBA821
  loc_BBA80E: LitI4 0
  loc_BBA813: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BBA816: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BBA81B: Branch loc_BBB0FD
  loc_BBA81E: Branch loc_BBA8A5
  loc_BBA821: FLdPr Me
  loc_BBA824: MemLdI2 global_126
  loc_BBA827: NotI4
  loc_BBA828: FLdRfVar var_284
  loc_BBA82B: FLdPr var_210
  loc_BBA82E: from_stack_1 = clsimputacion.RecordCount
  loc_BBA833: ILdRf var_284
  loc_BBA836: CR8I4
  loc_BBA837: LitI4 &H3A98
  loc_BBA83C: CR8I4
  loc_BBA83D: LitDate 1.2
  loc_BBA846: MulR8
  loc_BBA847: CR8R8
  loc_BBA848: GtR4
  loc_BBA849: AndI4
  loc_BBA84A: BranchF loc_BBA8A5
  loc_BBA84D: FLdRfVar var_284
  loc_BBA850: FLdPr var_210
  loc_BBA853: from_stack_1 = clsimputacion.RecordCount
  loc_BBA858: LitI2_Byte 0
  loc_BBA85A: PopTmpLdAd2 var_286
  loc_BBA85D: LitI2_Byte 0
  loc_BBA85F: PopTmpLdAd2 var_B2
  loc_BBA862: LitStr "La consulta contiene "
  loc_BBA865: ILdRf var_284
  loc_BBA868: CStrI4
  loc_BBA86A: FStStrNoPop var_EC
  loc_BBA86D: ConcatStr
  loc_BBA86E: FStStrNoPop var_208
  loc_BBA871: LitStr " registros, y puede demorarse."
  loc_BBA874: ConcatStr
  loc_BBA875: FStStrNoPop var_20C
  loc_BBA878: LitStr vbCrLf
  loc_BBA87B: ConcatStr
  loc_BBA87C: FStStrNoPop var_214
  loc_BBA87F: LitStr "¿Desea continuar? (Si exporta a PDF se dividirá automáticamente en Tomos.)"
  loc_BBA882: ConcatStr
  loc_BBA883: FStStrNoPop var_218
  loc_BBA886: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BBA88B: CI4UI1
  loc_BBA88C: LitI4 6
  loc_BBA891: NeI4
  loc_BBA892: FFreeStr var_EC = "": var_208 = "": var_20C = "": var_214 = ""
  loc_BBA89F: BranchF loc_BBA8A5
  loc_BBA8A2: Branch loc_BBB0FD
  loc_BBA8A5: LitI4 0
  loc_BBA8AA: LitI4 1
  loc_BBA8AF: FLdPr Me
  loc_BBA8B2: MemLdRfVar from_stack_1.global_96
  loc_BBA8B5: Redim
  loc_BBA8BF: LitI4 0
  loc_BBA8C4: LitI4 1
  loc_BBA8C9: FLdPr Me
  loc_BBA8CC: MemLdRfVar from_stack_1.global_136
  loc_BBA8CF: Redim
  loc_BBA8D9: LitI2_Byte 0
  loc_BBA8DB: FLdPr Me
  loc_BBA8DE: MemStI2 global_100
  loc_BBA8E1: FLdPr var_210
  loc_BBA8E4: Call clsimputacion.MoveFirst()
  loc_BBA8E9: Call Proc_185_39_A33BA4()
  loc_BBA8EE: FLdRfVar var_B2
  loc_BBA8F1: FLdPr var_210
  loc_BBA8F4: from_stack_1 = clsimputacion.EOF
  loc_BBA8F9: FLdI2 var_B2
  loc_BBA8FC: NotI4
  loc_BBA8FD: BranchF loc_BBAA65
  loc_BBA900: FLdRfVar var_E8
  loc_BBA903: FLdRfVar var_174
  loc_BBA906: LitVarStr var_C4, "CodiPart"
  loc_BBA90B: PopAdLdVar
  loc_BBA90C: FLdRfVar var_F0
  loc_BBA90F: FLdRfVar var_D8
  loc_BBA912: FLdPr var_210
  loc_BBA915: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BBA91A: FLdPr var_D8
  loc_BBA91D:  = Me.Fields
  loc_BBA922: FLdPr var_F0
  loc_BBA925: from_stack_2 = Me.Item(from_stack_1)
  loc_BBA92A: FLdPr var_174
  loc_BBA92D:  = Me.Value
  loc_BBA932: FLdRfVar var_E8
  loc_BBA935: FLdPr Me
  loc_BBA938: MemLdI2 global_100
  loc_BBA93B: CI4UI1
  loc_BBA93C: FLdPr Me
  loc_BBA93F: MemLdStr global_96
  loc_BBA942: Ary1LdPr
  loc_BBA943: MemLdRfVar from_stack_1.global_0
  loc_BBA946: LdFixedStr
  loc_BBA949: CVarStr var_100
  loc_BBA94C: HardType
  loc_BBA94D: EqVarBool
  loc_BBA94F: FFreeAd var_D8 = "": var_F0 = ""
  loc_BBA958: FFreeVar var_E8 = ""
  loc_BBA95F: BranchF loc_BBAA5D
  loc_BBA962: FLdRfVar var_E8
  loc_BBA965: FLdRfVar var_174
  loc_BBA968: LitVarStr var_C4, "CodiOrga"
  loc_BBA96D: PopAdLdVar
  loc_BBA96E: FLdRfVar var_F0
  loc_BBA971: FLdRfVar var_D8
  loc_BBA974: FLdPr var_210
  loc_BBA977: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BBA97C: FLdPr var_D8
  loc_BBA97F:  = Me.Fields
  loc_BBA984: FLdPr var_F0
  loc_BBA987: from_stack_2 = Me.Item(from_stack_1)
  loc_BBA98C: FLdPr var_174
  loc_BBA98F:  = Me.Value
  loc_BBA994: FLdRfVar var_E8
  loc_BBA997: FLdPr Me
  loc_BBA99A: MemLdStr global_104
  loc_BBA99D: FLdPr Me
  loc_BBA9A0: MemLdI2 global_100
  loc_BBA9A3: CI4UI1
  loc_BBA9A4: FLdPr Me
  loc_BBA9A7: MemLdStr global_96
  loc_BBA9AA: Ary1LdPr
  loc_BBA9AB: MemLdStr global_124
  loc_BBA9AE: Ary1LdPr
  loc_BBA9AF: MemLdRfVar from_stack_1.global_0
  loc_BBA9B2: LdFixedStr
  loc_BBA9B5: CVarStr var_100
  loc_BBA9B8: HardType
  loc_BBA9B9: EqVarBool
  loc_BBA9BB: FFreeAd var_D8 = "": var_F0 = ""
  loc_BBA9C4: FFreeVar var_E8 = ""
  loc_BBA9CB: BranchF loc_BBAA55
  loc_BBA9CE: FLdRfVar var_E8
  loc_BBA9D1: FLdRfVar var_174
  loc_BBA9D4: LitVarStr var_C4, "CodiFifu"
  loc_BBA9D9: PopAdLdVar
  loc_BBA9DA: FLdRfVar var_F0
  loc_BBA9DD: FLdRfVar var_D8
  loc_BBA9E0: FLdPr var_210
  loc_BBA9E3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BBA9E8: FLdPr var_D8
  loc_BBA9EB:  = Me.Fields
  loc_BBA9F0: FLdPr var_F0
  loc_BBA9F3: from_stack_2 = Me.Item(from_stack_1)
  loc_BBA9F8: FLdPr var_174
  loc_BBA9FB:  = Me.Value
  loc_BBAA00: FLdRfVar var_E8
  loc_BBAA03: FLdPr Me
  loc_BBAA06: MemLdI2 global_108
  loc_BBAA09: CI4UI1
  loc_BBAA0A: FLdPr Me
  loc_BBAA0D: MemLdStr global_104
  loc_BBAA10: FLdPr Me
  loc_BBAA13: MemLdI2 global_100
  loc_BBAA16: CI4UI1
  loc_BBAA17: FLdPr Me
  loc_BBAA1A: MemLdStr global_96
  loc_BBAA1D: Ary1LdPr
  loc_BBAA1E: MemLdStr global_124
  loc_BBAA21: Ary1LdPr
  loc_BBAA22: MemLdStr global_96
  loc_BBAA25: Ary1LdPr
  loc_BBAA26: MemLdRfVar from_stack_1.global_0
  loc_BBAA29: LdFixedStr
  loc_BBAA2C: CVarStr var_100
  loc_BBAA2F: HardType
  loc_BBAA30: EqVarBool
  loc_BBAA32: FFreeAd var_D8 = "": var_F0 = ""
  loc_BBAA3B: FFreeVar var_E8 = ""
  loc_BBAA42: BranchF loc_BBAA4D
  loc_BBAA45: Call Proc_185_42_AF8744()
  loc_BBAA4A: Branch loc_BBAA52
  loc_BBAA4D: Call Proc_185_41_A20D98()
  loc_BBAA52: Branch loc_BBAA5A
  loc_BBAA55: Call Proc_185_40_A10DB8()
  loc_BBAA5A: Branch loc_BBAA62
  loc_BBAA5D: Call Proc_185_39_A33BA4()
  loc_BBAA62: Branch loc_BBA8EE
  loc_BBAA65: LitNothing
  loc_BBAA67: FStAd var_210 
  loc_BBAA6B: LitI2_Byte 1
  loc_BBAA6D: FLdPr Me
  loc_BBAA70: MemLdRfVar from_stack_1.global_100
  loc_BBAA73: FLdPr Me
  loc_BBAA76: MemLdStr global_96
  loc_BBAA79: LitI2_Byte 1
  loc_BBAA7B: FnUBound
  loc_BBAA7D: CI2I4
  loc_BBAA7E: ForI2 var_28A
  loc_BBAA84: LitI4 1
  loc_BBAA89: FLdPr Me
  loc_BBAA8C: MemLdRfVar from_stack_1.global_104
  loc_BBAA8F: FLdPr Me
  loc_BBAA92: MemLdI2 global_100
  loc_BBAA95: CI4UI1
  loc_BBAA96: FLdPr Me
  loc_BBAA99: MemLdStr global_96
  loc_BBAA9C: Ary1LdPr
  loc_BBAA9D: MemLdStr global_124
  loc_BBAAA0: LitI2_Byte 1
  loc_BBAAA2: FnUBound
  loc_BBAAA4: ForI4 var_294
  loc_BBAAAA: LitI2_Byte 1
  loc_BBAAAC: FLdPr Me
  loc_BBAAAF: MemLdRfVar from_stack_1.global_108
  loc_BBAAB2: FLdPr Me
  loc_BBAAB5: MemLdStr global_104
  loc_BBAAB8: FLdPr Me
  loc_BBAABB: MemLdI2 global_100
  loc_BBAABE: CI4UI1
  loc_BBAABF: FLdPr Me
  loc_BBAAC2: MemLdStr global_96
  loc_BBAAC5: Ary1LdPr
  loc_BBAAC6: MemLdStr global_124
  loc_BBAAC9: Ary1LdPr
  loc_BBAACA: MemLdStr global_96
  loc_BBAACD: LitI2_Byte 1
  loc_BBAACF: FnUBound
  loc_BBAAD1: CI2I4
  loc_BBAAD2: ForI2 var_298
  loc_BBAAD8: FLdPr Me
  loc_BBAADB: MemLdI2 global_108
  loc_BBAADE: CI4UI1
  loc_BBAADF: FLdPr Me
  loc_BBAAE2: MemLdStr global_104
  loc_BBAAE5: FLdPr Me
  loc_BBAAE8: MemLdI2 global_100
  loc_BBAAEB: CI4UI1
  loc_BBAAEC: FLdPr Me
  loc_BBAAEF: MemLdStr global_96
  loc_BBAAF2: Ary1LdPr
  loc_BBAAF3: MemLdStr global_124
  loc_BBAAF6: Ary1LdPr
  loc_BBAAF7: MemLdStr global_96
  loc_BBAAFA: Ary1LdPr
  loc_BBAAFB: MemLdStr global_96
  loc_BBAAFE: LitI2_Byte 1
  loc_BBAB00: FnUBound
  loc_BBAB02: LitI4 2
  loc_BBAB07: MulI4
  loc_BBAB08: LitI4 1
  loc_BBAB0D: AddI4
  loc_BBAB0E: FLdPr Me
  loc_BBAB11: MemLdI2 global_108
  loc_BBAB14: CI4UI1
  loc_BBAB15: FLdPr Me
  loc_BBAB18: MemLdStr global_104
  loc_BBAB1B: FLdPr Me
  loc_BBAB1E: MemLdI2 global_100
  loc_BBAB21: CI4UI1
  loc_BBAB22: FLdPr Me
  loc_BBAB25: MemLdStr global_96
  loc_BBAB28: Ary1LdPr
  loc_BBAB29: MemLdStr global_124
  loc_BBAB2C: Ary1LdPr
  loc_BBAB2D: MemLdStr global_96
  loc_BBAB30: Ary1LdPr
  loc_BBAB31: MemStI4 global_92
  loc_BBAB34: FLdPr Me
  loc_BBAB37: MemLdStr global_104
  loc_BBAB3A: FLdPr Me
  loc_BBAB3D: MemLdI2 global_100
  loc_BBAB40: CI4UI1
  loc_BBAB41: FLdPr Me
  loc_BBAB44: MemLdStr global_96
  loc_BBAB47: Ary1LdPr
  loc_BBAB48: MemLdStr global_124
  loc_BBAB4B: Ary1LdPr
  loc_BBAB4C: MemLdStr global_92
  loc_BBAB4F: FLdPr Me
  loc_BBAB52: MemLdI2 global_108
  loc_BBAB55: CI4UI1
  loc_BBAB56: FLdPr Me
  loc_BBAB59: MemLdStr global_104
  loc_BBAB5C: FLdPr Me
  loc_BBAB5F: MemLdI2 global_100
  loc_BBAB62: CI4UI1
  loc_BBAB63: FLdPr Me
  loc_BBAB66: MemLdStr global_96
  loc_BBAB69: Ary1LdPr
  loc_BBAB6A: MemLdStr global_124
  loc_BBAB6D: Ary1LdPr
  loc_BBAB6E: MemLdStr global_96
  loc_BBAB71: Ary1LdPr
  loc_BBAB72: MemLdStr global_92
  loc_BBAB75: AddI4
  loc_BBAB76: FLdPr Me
  loc_BBAB79: MemLdStr global_104
  loc_BBAB7C: FLdPr Me
  loc_BBAB7F: MemLdI2 global_100
  loc_BBAB82: CI4UI1
  loc_BBAB83: FLdPr Me
  loc_BBAB86: MemLdStr global_96
  loc_BBAB89: Ary1LdPr
  loc_BBAB8A: MemLdStr global_124
  loc_BBAB8D: Ary1LdPr
  loc_BBAB8E: MemStI4 global_92
  loc_BBAB91: LitI2_Byte 0
  loc_BBAB93: FLdPr Me
  loc_BBAB96: MemLdStr global_104
  loc_BBAB99: FLdPr Me
  loc_BBAB9C: MemLdI2 global_100
  loc_BBAB9F: CI4UI1
  loc_BBABA0: FLdPr Me
  loc_BBABA3: MemLdStr global_96
  loc_BBABA6: AryLock
  loc_BBABA9: Ary1LdPr
  loc_BBABAA: MemLdStr global_124
  loc_BBABAD: AryLock
  loc_BBABB0: Ary1LdPr
  loc_BBABB1: MemLdRfVar from_stack_1.global_264
  loc_BBABB4: CVarRef
  loc_BBABB9: LitI2_Byte &HFF
  loc_BBABBB: FLdPr Me
  loc_BBABBE: MemLdI2 global_108
  loc_BBABC1: CI4UI1
  loc_BBABC2: FLdPr Me
  loc_BBABC5: MemLdStr global_104
  loc_BBABC8: FLdPr Me
  loc_BBABCB: MemLdI2 global_100
  loc_BBABCE: CI4UI1
  loc_BBABCF: FLdPr Me
  loc_BBABD2: MemLdStr global_96
  loc_BBABD5: Ary1LdPr
  loc_BBABD6: MemLdStr global_124
  loc_BBABD9: Ary1LdPr
  loc_BBABDA: MemLdStr global_96
  loc_BBABDD: Ary1LdPr
  loc_BBABDE: MemLdStr global_264
  loc_BBABE1: CVarStr var_C4
  loc_BBABE4: PopAdLdVar
  loc_BBABE5: FLdPr Me
  loc_BBABE8: MemLdRfVar from_stack_1.global_128
  loc_BBABEB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBABF0: AryUnlock
  loc_BBABF3: AryUnlock
  loc_BBABF6: LitI2_Byte 0
  loc_BBABF8: FLdPr Me
  loc_BBABFB: MemLdStr global_104
  loc_BBABFE: FLdPr Me
  loc_BBAC01: MemLdI2 global_100
  loc_BBAC04: CI4UI1
  loc_BBAC05: FLdPr Me
  loc_BBAC08: MemLdStr global_96
  loc_BBAC0B: AryLock
  loc_BBAC0E: Ary1LdPr
  loc_BBAC0F: MemLdStr global_124
  loc_BBAC12: AryLock
  loc_BBAC15: Ary1LdPr
  loc_BBAC16: MemLdRfVar from_stack_1.global_268
  loc_BBAC19: CVarRef
  loc_BBAC1E: LitI2_Byte &HFF
  loc_BBAC20: FLdPr Me
  loc_BBAC23: MemLdI2 global_108
  loc_BBAC26: CI4UI1
  loc_BBAC27: FLdPr Me
  loc_BBAC2A: MemLdStr global_104
  loc_BBAC2D: FLdPr Me
  loc_BBAC30: MemLdI2 global_100
  loc_BBAC33: CI4UI1
  loc_BBAC34: FLdPr Me
  loc_BBAC37: MemLdStr global_96
  loc_BBAC3A: Ary1LdPr
  loc_BBAC3B: MemLdStr global_124
  loc_BBAC3E: Ary1LdPr
  loc_BBAC3F: MemLdStr global_96
  loc_BBAC42: Ary1LdPr
  loc_BBAC43: MemLdStr global_268
  loc_BBAC46: CVarStr var_C4
  loc_BBAC49: PopAdLdVar
  loc_BBAC4A: FLdPr Me
  loc_BBAC4D: MemLdRfVar from_stack_1.global_128
  loc_BBAC50: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBAC55: AryUnlock
  loc_BBAC58: AryUnlock
  loc_BBAC5B: LitI2_Byte 0
  loc_BBAC5D: FLdPr Me
  loc_BBAC60: MemLdStr global_104
  loc_BBAC63: FLdPr Me
  loc_BBAC66: MemLdI2 global_100
  loc_BBAC69: CI4UI1
  loc_BBAC6A: FLdPr Me
  loc_BBAC6D: MemLdStr global_96
  loc_BBAC70: AryLock
  loc_BBAC73: Ary1LdPr
  loc_BBAC74: MemLdStr global_124
  loc_BBAC77: AryLock
  loc_BBAC7A: Ary1LdPr
  loc_BBAC7B: MemLdRfVar from_stack_1.global_272
  loc_BBAC7E: CVarRef
  loc_BBAC83: LitI2_Byte &HFF
  loc_BBAC85: FLdPr Me
  loc_BBAC88: MemLdI2 global_108
  loc_BBAC8B: CI4UI1
  loc_BBAC8C: FLdPr Me
  loc_BBAC8F: MemLdStr global_104
  loc_BBAC92: FLdPr Me
  loc_BBAC95: MemLdI2 global_100
  loc_BBAC98: CI4UI1
  loc_BBAC99: FLdPr Me
  loc_BBAC9C: MemLdStr global_96
  loc_BBAC9F: Ary1LdPr
  loc_BBACA0: MemLdStr global_124
  loc_BBACA3: Ary1LdPr
  loc_BBACA4: MemLdStr global_96
  loc_BBACA7: Ary1LdPr
  loc_BBACA8: MemLdStr global_272
  loc_BBACAB: CVarStr var_C4
  loc_BBACAE: PopAdLdVar
  loc_BBACAF: FLdPr Me
  loc_BBACB2: MemLdRfVar from_stack_1.global_128
  loc_BBACB5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBACBA: AryUnlock
  loc_BBACBD: AryUnlock
  loc_BBACC0: LitI2_Byte 0
  loc_BBACC2: FLdPr Me
  loc_BBACC5: MemLdStr global_104
  loc_BBACC8: FLdPr Me
  loc_BBACCB: MemLdI2 global_100
  loc_BBACCE: CI4UI1
  loc_BBACCF: FLdPr Me
  loc_BBACD2: MemLdStr global_96
  loc_BBACD5: AryLock
  loc_BBACD8: Ary1LdPr
  loc_BBACD9: MemLdStr global_124
  loc_BBACDC: AryLock
  loc_BBACDF: Ary1LdPr
  loc_BBACE0: MemLdRfVar from_stack_1.global_276
  loc_BBACE3: CVarRef
  loc_BBACE8: LitI2_Byte &HFF
  loc_BBACEA: FLdPr Me
  loc_BBACED: MemLdI2 global_108
  loc_BBACF0: CI4UI1
  loc_BBACF1: FLdPr Me
  loc_BBACF4: MemLdStr global_104
  loc_BBACF7: FLdPr Me
  loc_BBACFA: MemLdI2 global_100
  loc_BBACFD: CI4UI1
  loc_BBACFE: FLdPr Me
  loc_BBAD01: MemLdStr global_96
  loc_BBAD04: Ary1LdPr
  loc_BBAD05: MemLdStr global_124
  loc_BBAD08: Ary1LdPr
  loc_BBAD09: MemLdStr global_96
  loc_BBAD0C: Ary1LdPr
  loc_BBAD0D: MemLdStr global_276
  loc_BBAD10: CVarStr var_C4
  loc_BBAD13: PopAdLdVar
  loc_BBAD14: FLdPr Me
  loc_BBAD17: MemLdRfVar from_stack_1.global_128
  loc_BBAD1A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBAD1F: AryUnlock
  loc_BBAD22: AryUnlock
  loc_BBAD25: LitI2_Byte 0
  loc_BBAD27: FLdPr Me
  loc_BBAD2A: MemLdStr global_104
  loc_BBAD2D: FLdPr Me
  loc_BBAD30: MemLdI2 global_100
  loc_BBAD33: CI4UI1
  loc_BBAD34: FLdPr Me
  loc_BBAD37: MemLdStr global_96
  loc_BBAD3A: AryLock
  loc_BBAD3D: Ary1LdPr
  loc_BBAD3E: MemLdStr global_124
  loc_BBAD41: AryLock
  loc_BBAD44: Ary1LdPr
  loc_BBAD45: MemLdRfVar from_stack_1.global_280
  loc_BBAD48: CVarRef
  loc_BBAD4D: LitI2_Byte &HFF
  loc_BBAD4F: FLdPr Me
  loc_BBAD52: MemLdI2 global_108
  loc_BBAD55: CI4UI1
  loc_BBAD56: FLdPr Me
  loc_BBAD59: MemLdStr global_104
  loc_BBAD5C: FLdPr Me
  loc_BBAD5F: MemLdI2 global_100
  loc_BBAD62: CI4UI1
  loc_BBAD63: FLdPr Me
  loc_BBAD66: MemLdStr global_96
  loc_BBAD69: Ary1LdPr
  loc_BBAD6A: MemLdStr global_124
  loc_BBAD6D: Ary1LdPr
  loc_BBAD6E: MemLdStr global_96
  loc_BBAD71: Ary1LdPr
  loc_BBAD72: MemLdStr global_280
  loc_BBAD75: CVarStr var_C4
  loc_BBAD78: PopAdLdVar
  loc_BBAD79: FLdPr Me
  loc_BBAD7C: MemLdRfVar from_stack_1.global_128
  loc_BBAD7F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBAD84: AryUnlock
  loc_BBAD87: AryUnlock
  loc_BBAD8A: FLdPr Me
  loc_BBAD8D: MemLdRfVar from_stack_1.global_108
  loc_BBAD90: NextI2 var_298, loc_BBAAD8
  loc_BBAD95: FLdPr Me
  loc_BBAD98: MemLdStr global_104
  loc_BBAD9B: FLdPr Me
  loc_BBAD9E: MemLdI2 global_100
  loc_BBADA1: CI4UI1
  loc_BBADA2: FLdPr Me
  loc_BBADA5: MemLdStr global_96
  loc_BBADA8: Ary1LdPr
  loc_BBADA9: MemLdStr global_124
  loc_BBADAC: Ary1LdPr
  loc_BBADAD: MemLdStr global_92
  loc_BBADB0: LitI4 1
  loc_BBADB5: AddI4
  loc_BBADB6: FLdPr Me
  loc_BBADB9: MemLdStr global_104
  loc_BBADBC: FLdPr Me
  loc_BBADBF: MemLdI2 global_100
  loc_BBADC2: CI4UI1
  loc_BBADC3: FLdPr Me
  loc_BBADC6: MemLdStr global_96
  loc_BBADC9: Ary1LdPr
  loc_BBADCA: MemLdStr global_124
  loc_BBADCD: Ary1LdPr
  loc_BBADCE: MemStI4 global_92
  loc_BBADD1: FLdPr Me
  loc_BBADD4: MemLdI2 global_100
  loc_BBADD7: CI4UI1
  loc_BBADD8: FLdPr Me
  loc_BBADDB: MemLdStr global_96
  loc_BBADDE: Ary1LdPr
  loc_BBADDF: MemLdStr global_120
  loc_BBADE2: FLdPr Me
  loc_BBADE5: MemLdStr global_104
  loc_BBADE8: FLdPr Me
  loc_BBADEB: MemLdI2 global_100
  loc_BBADEE: CI4UI1
  loc_BBADEF: FLdPr Me
  loc_BBADF2: MemLdStr global_96
  loc_BBADF5: Ary1LdPr
  loc_BBADF6: MemLdStr global_124
  loc_BBADF9: Ary1LdPr
  loc_BBADFA: MemLdStr global_92
  loc_BBADFD: AddI4
  loc_BBADFE: FLdPr Me
  loc_BBAE01: MemLdI2 global_100
  loc_BBAE04: CI4UI1
  loc_BBAE05: FLdPr Me
  loc_BBAE08: MemLdStr global_96
  loc_BBAE0B: Ary1LdPr
  loc_BBAE0C: MemStI4 global_120
  loc_BBAE0F: LitI2_Byte 0
  loc_BBAE11: FLdPr Me
  loc_BBAE14: MemLdI2 global_100
  loc_BBAE17: CI4UI1
  loc_BBAE18: FLdPr Me
  loc_BBAE1B: MemLdStr global_96
  loc_BBAE1E: AryLock
  loc_BBAE21: Ary1LdPr
  loc_BBAE22: MemLdRfVar from_stack_1.global_292
  loc_BBAE25: CVarRef
  loc_BBAE2A: LitI2_Byte &HFF
  loc_BBAE2C: FLdPr Me
  loc_BBAE2F: MemLdStr global_104
  loc_BBAE32: FLdPr Me
  loc_BBAE35: MemLdI2 global_100
  loc_BBAE38: CI4UI1
  loc_BBAE39: FLdPr Me
  loc_BBAE3C: MemLdStr global_96
  loc_BBAE3F: Ary1LdPr
  loc_BBAE40: MemLdStr global_124
  loc_BBAE43: Ary1LdPr
  loc_BBAE44: MemLdStr global_264
  loc_BBAE47: CVarStr var_C4
  loc_BBAE4A: PopAdLdVar
  loc_BBAE4B: FLdPr Me
  loc_BBAE4E: MemLdRfVar from_stack_1.global_128
  loc_BBAE51: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBAE56: AryUnlock
  loc_BBAE59: LitI2_Byte 0
  loc_BBAE5B: FLdPr Me
  loc_BBAE5E: MemLdI2 global_100
  loc_BBAE61: CI4UI1
  loc_BBAE62: FLdPr Me
  loc_BBAE65: MemLdStr global_96
  loc_BBAE68: AryLock
  loc_BBAE6B: Ary1LdPr
  loc_BBAE6C: MemLdRfVar from_stack_1.global_296
  loc_BBAE6F: CVarRef
  loc_BBAE74: LitI2_Byte &HFF
  loc_BBAE76: FLdPr Me
  loc_BBAE79: MemLdStr global_104
  loc_BBAE7C: FLdPr Me
  loc_BBAE7F: MemLdI2 global_100
  loc_BBAE82: CI4UI1
  loc_BBAE83: FLdPr Me
  loc_BBAE86: MemLdStr global_96
  loc_BBAE89: Ary1LdPr
  loc_BBAE8A: MemLdStr global_124
  loc_BBAE8D: Ary1LdPr
  loc_BBAE8E: MemLdStr global_268
  loc_BBAE91: CVarStr var_C4
  loc_BBAE94: PopAdLdVar
  loc_BBAE95: FLdPr Me
  loc_BBAE98: MemLdRfVar from_stack_1.global_128
  loc_BBAE9B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBAEA0: AryUnlock
  loc_BBAEA3: LitI2_Byte 0
  loc_BBAEA5: FLdPr Me
  loc_BBAEA8: MemLdI2 global_100
  loc_BBAEAB: CI4UI1
  loc_BBAEAC: FLdPr Me
  loc_BBAEAF: MemLdStr global_96
  loc_BBAEB2: AryLock
  loc_BBAEB5: Ary1LdPr
  loc_BBAEB6: MemLdRfVar from_stack_1.global_300
  loc_BBAEB9: CVarRef
  loc_BBAEBE: LitI2_Byte &HFF
  loc_BBAEC0: FLdPr Me
  loc_BBAEC3: MemLdStr global_104
  loc_BBAEC6: FLdPr Me
  loc_BBAEC9: MemLdI2 global_100
  loc_BBAECC: CI4UI1
  loc_BBAECD: FLdPr Me
  loc_BBAED0: MemLdStr global_96
  loc_BBAED3: Ary1LdPr
  loc_BBAED4: MemLdStr global_124
  loc_BBAED7: Ary1LdPr
  loc_BBAED8: MemLdStr global_272
  loc_BBAEDB: CVarStr var_C4
  loc_BBAEDE: PopAdLdVar
  loc_BBAEDF: FLdPr Me
  loc_BBAEE2: MemLdRfVar from_stack_1.global_128
  loc_BBAEE5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBAEEA: AryUnlock
  loc_BBAEED: LitI2_Byte 0
  loc_BBAEEF: FLdPr Me
  loc_BBAEF2: MemLdI2 global_100
  loc_BBAEF5: CI4UI1
  loc_BBAEF6: FLdPr Me
  loc_BBAEF9: MemLdStr global_96
  loc_BBAEFC: AryLock
  loc_BBAEFF: Ary1LdPr
  loc_BBAF00: MemLdRfVar from_stack_1.global_304
  loc_BBAF03: CVarRef
  loc_BBAF08: LitI2_Byte &HFF
  loc_BBAF0A: FLdPr Me
  loc_BBAF0D: MemLdStr global_104
  loc_BBAF10: FLdPr Me
  loc_BBAF13: MemLdI2 global_100
  loc_BBAF16: CI4UI1
  loc_BBAF17: FLdPr Me
  loc_BBAF1A: MemLdStr global_96
  loc_BBAF1D: Ary1LdPr
  loc_BBAF1E: MemLdStr global_124
  loc_BBAF21: Ary1LdPr
  loc_BBAF22: MemLdStr global_276
  loc_BBAF25: CVarStr var_C4
  loc_BBAF28: PopAdLdVar
  loc_BBAF29: FLdPr Me
  loc_BBAF2C: MemLdRfVar from_stack_1.global_128
  loc_BBAF2F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBAF34: AryUnlock
  loc_BBAF37: LitI2_Byte 0
  loc_BBAF39: FLdPr Me
  loc_BBAF3C: MemLdI2 global_100
  loc_BBAF3F: CI4UI1
  loc_BBAF40: FLdPr Me
  loc_BBAF43: MemLdStr global_96
  loc_BBAF46: AryLock
  loc_BBAF49: Ary1LdPr
  loc_BBAF4A: MemLdRfVar from_stack_1.global_308
  loc_BBAF4D: CVarRef
  loc_BBAF52: LitI2_Byte &HFF
  loc_BBAF54: FLdPr Me
  loc_BBAF57: MemLdStr global_104
  loc_BBAF5A: FLdPr Me
  loc_BBAF5D: MemLdI2 global_100
  loc_BBAF60: CI4UI1
  loc_BBAF61: FLdPr Me
  loc_BBAF64: MemLdStr global_96
  loc_BBAF67: Ary1LdPr
  loc_BBAF68: MemLdStr global_124
  loc_BBAF6B: Ary1LdPr
  loc_BBAF6C: MemLdStr global_280
  loc_BBAF6F: CVarStr var_C4
  loc_BBAF72: PopAdLdVar
  loc_BBAF73: FLdPr Me
  loc_BBAF76: MemLdRfVar from_stack_1.global_128
  loc_BBAF79: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBAF7E: AryUnlock
  loc_BBAF81: FLdPr Me
  loc_BBAF84: MemLdRfVar from_stack_1.global_104
  loc_BBAF87: NextI4 var_294, loc_BBAAAA
  loc_BBAF8C: FLdPr Me
  loc_BBAF8F: MemLdI2 global_100
  loc_BBAF92: CI4UI1
  loc_BBAF93: FLdPr Me
  loc_BBAF96: MemLdStr global_96
  loc_BBAF99: Ary1LdPr
  loc_BBAF9A: MemLdStr global_120
  loc_BBAF9D: LitI4 1
  loc_BBAFA2: AddI4
  loc_BBAFA3: FLdPr Me
  loc_BBAFA6: MemLdI2 global_100
  loc_BBAFA9: CI4UI1
  loc_BBAFAA: FLdPr Me
  loc_BBAFAD: MemLdStr global_96
  loc_BBAFB0: Ary1LdPr
  loc_BBAFB1: MemStI4 global_120
  loc_BBAFB4: LitI2_Byte 0
  loc_BBAFB6: LitI4 1
  loc_BBAFBB: FLdPr Me
  loc_BBAFBE: MemLdStr global_136
  loc_BBAFC1: AryLock
  loc_BBAFC4: Ary1LdPr
  loc_BBAFC5: MemLdRfVar from_stack_1.global_164
  loc_BBAFC8: CVarRef
  loc_BBAFCD: LitI2_Byte &HFF
  loc_BBAFCF: FLdPr Me
  loc_BBAFD2: MemLdI2 global_100
  loc_BBAFD5: CI4UI1
  loc_BBAFD6: FLdPr Me
  loc_BBAFD9: MemLdStr global_96
  loc_BBAFDC: Ary1LdPr
  loc_BBAFDD: MemLdStr global_292
  loc_BBAFE0: CVarStr var_C4
  loc_BBAFE3: PopAdLdVar
  loc_BBAFE4: FLdPr Me
  loc_BBAFE7: MemLdRfVar from_stack_1.global_128
  loc_BBAFEA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBAFEF: AryUnlock
  loc_BBAFF2: LitI2_Byte 0
  loc_BBAFF4: LitI4 1
  loc_BBAFF9: FLdPr Me
  loc_BBAFFC: MemLdStr global_136
  loc_BBAFFF: AryLock
  loc_BBB002: Ary1LdPr
  loc_BBB003: MemLdRfVar from_stack_1.global_168
  loc_BBB006: CVarRef
  loc_BBB00B: LitI2_Byte &HFF
  loc_BBB00D: FLdPr Me
  loc_BBB010: MemLdI2 global_100
  loc_BBB013: CI4UI1
  loc_BBB014: FLdPr Me
  loc_BBB017: MemLdStr global_96
  loc_BBB01A: Ary1LdPr
  loc_BBB01B: MemLdStr global_296
  loc_BBB01E: CVarStr var_C4
  loc_BBB021: PopAdLdVar
  loc_BBB022: FLdPr Me
  loc_BBB025: MemLdRfVar from_stack_1.global_128
  loc_BBB028: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBB02D: AryUnlock
  loc_BBB030: LitI2_Byte 0
  loc_BBB032: LitI4 1
  loc_BBB037: FLdPr Me
  loc_BBB03A: MemLdStr global_136
  loc_BBB03D: AryLock
  loc_BBB040: Ary1LdPr
  loc_BBB041: MemLdRfVar from_stack_1.global_172
  loc_BBB044: CVarRef
  loc_BBB049: LitI2_Byte &HFF
  loc_BBB04B: FLdPr Me
  loc_BBB04E: MemLdI2 global_100
  loc_BBB051: CI4UI1
  loc_BBB052: FLdPr Me
  loc_BBB055: MemLdStr global_96
  loc_BBB058: Ary1LdPr
  loc_BBB059: MemLdStr global_300
  loc_BBB05C: CVarStr var_C4
  loc_BBB05F: PopAdLdVar
  loc_BBB060: FLdPr Me
  loc_BBB063: MemLdRfVar from_stack_1.global_128
  loc_BBB066: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBB06B: AryUnlock
  loc_BBB06E: LitI2_Byte 0
  loc_BBB070: LitI4 1
  loc_BBB075: FLdPr Me
  loc_BBB078: MemLdStr global_136
  loc_BBB07B: AryLock
  loc_BBB07E: Ary1LdPr
  loc_BBB07F: MemLdRfVar from_stack_1.global_176
  loc_BBB082: CVarRef
  loc_BBB087: LitI2_Byte &HFF
  loc_BBB089: FLdPr Me
  loc_BBB08C: MemLdI2 global_100
  loc_BBB08F: CI4UI1
  loc_BBB090: FLdPr Me
  loc_BBB093: MemLdStr global_96
  loc_BBB096: Ary1LdPr
  loc_BBB097: MemLdStr global_304
  loc_BBB09A: CVarStr var_C4
  loc_BBB09D: PopAdLdVar
  loc_BBB09E: FLdPr Me
  loc_BBB0A1: MemLdRfVar from_stack_1.global_128
  loc_BBB0A4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBB0A9: AryUnlock
  loc_BBB0AC: LitI2_Byte 0
  loc_BBB0AE: LitI4 1
  loc_BBB0B3: FLdPr Me
  loc_BBB0B6: MemLdStr global_136
  loc_BBB0B9: AryLock
  loc_BBB0BC: Ary1LdPr
  loc_BBB0BD: MemLdRfVar from_stack_1.global_180
  loc_BBB0C0: CVarRef
  loc_BBB0C5: LitI2_Byte &HFF
  loc_BBB0C7: FLdPr Me
  loc_BBB0CA: MemLdI2 global_100
  loc_BBB0CD: CI4UI1
  loc_BBB0CE: FLdPr Me
  loc_BBB0D1: MemLdStr global_96
  loc_BBB0D4: Ary1LdPr
  loc_BBB0D5: MemLdStr global_308
  loc_BBB0D8: CVarStr var_C4
  loc_BBB0DB: PopAdLdVar
  loc_BBB0DC: FLdPr Me
  loc_BBB0DF: MemLdRfVar from_stack_1.global_128
  loc_BBB0E2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBB0E7: AryUnlock
  loc_BBB0EA: FLdPr Me
  loc_BBB0ED: MemLdRfVar from_stack_1.global_100
  loc_BBB0F0: NextI2 var_28A, loc_BBAA84
  loc_BBB0F5: LitI2_Byte &HFF
  loc_BBB0F7: FLdPr Me
  loc_BBB0FA: MemStI2 bGenerado
  loc_BBB0FD: LitI4 0
  loc_BBB102: CI2I4
  loc_BBB103: FLdPr Me
  loc_BBB106: Me.MousePointer = from_stack_1
  loc_BBB10B: LitVarStr var_C4, vbNullString
  loc_BBB110: PopAdLdVar
  loc_BBB111: FLdPr Me
  loc_BBB114: VCallAd Control_ID_statusBar
  loc_BBB117: FStAdFunc var_D8
  loc_BBB11A: FLdPr var_D8
  loc_BBB11D: LateIdSt
  loc_BBB122: FFree1Ad var_D8
  loc_BBB125: ExitProcHresult
  loc_BBB126: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'B05CD4
  'Data Table: 4F1070
  loc_B0560C: LitStr "|"
  loc_B0560F: FStStrCopy var_8C
  loc_B05612: FLdRfVar var_90
  loc_B05615: LitI2_Byte 0
  loc_B05617: LitI2_Byte &HFF
  loc_B05619: ImpAdLdI4 MemVar_C3D05C
  loc_B0561C: FLdPr Me
  loc_B0561F: MemLdRfVar from_stack_1.global_76
  loc_B05622: NewIfNullPr IFileSystem3
  loc_B05625: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B0562A: ILdRf var_90
  loc_B0562D: FLdPr Me
  loc_B05630: MemStVarAd
  loc_B05634: FFree1Ad var_90
  loc_B05637: LitStr "Partida"
  loc_B0563A: ILdRf var_8C
  loc_B0563D: ConcatStr
  loc_B0563E: FStStrNoPop var_94
  loc_B05641: LitStr "Organigrama"
  loc_B05644: ConcatStr
  loc_B05645: FStStrNoPop var_98
  loc_B05648: ILdRf var_8C
  loc_B0564B: ConcatStr
  loc_B0564C: FStStrNoPop var_9C
  loc_B0564F: LitStr "Finalidad"
  loc_B05652: ConcatStr
  loc_B05653: FStStrNoPop var_A0
  loc_B05656: ILdRf var_8C
  loc_B05659: ConcatStr
  loc_B0565A: FStStrNoPop var_A4
  loc_B0565D: LitStr "Número"
  loc_B05660: ConcatStr
  loc_B05661: FStStrNoPop var_A8
  loc_B05664: ILdRf var_8C
  loc_B05667: ConcatStr
  loc_B05668: FStStrNoPop var_AC
  loc_B0566B: LitStr "Expediente Original"
  loc_B0566E: ConcatStr
  loc_B0566F: FStStrNoPop var_B0
  loc_B05672: ILdRf var_8C
  loc_B05675: ConcatStr
  loc_B05676: FStStrNoPop var_B4
  loc_B05679: LitStr "Expediente de Pago"
  loc_B0567C: ConcatStr
  loc_B0567D: FStStrNoPop var_B8
  loc_B05680: ILdRf var_8C
  loc_B05683: ConcatStr
  loc_B05684: FStStrNoPop var_BC
  loc_B05687: LitStr "Fecha"
  loc_B0568A: ConcatStr
  loc_B0568B: FStStrNoPop var_C0
  loc_B0568E: ILdRf var_8C
  loc_B05691: ConcatStr
  loc_B05692: FStStrNoPop var_C4
  loc_B05695: LitStr "Detalle"
  loc_B05698: ConcatStr
  loc_B05699: FStStrNoPop var_C8
  loc_B0569C: ILdRf var_8C
  loc_B0569F: ConcatStr
  loc_B056A0: FStStrNoPop var_CC
  loc_B056A3: LitStr "Proveedor"
  loc_B056A6: ConcatStr
  loc_B056A7: FStStrNoPop var_D0
  loc_B056AA: ILdRf var_8C
  loc_B056AD: ConcatStr
  loc_B056AE: FStStrNoPop var_D4
  loc_B056B1: LitStr "Preventiva"
  loc_B056B4: ConcatStr
  loc_B056B5: FStStrNoPop var_D8
  loc_B056B8: ILdRf var_8C
  loc_B056BB: ConcatStr
  loc_B056BC: FStStrNoPop var_DC
  loc_B056BF: LitStr "Definitiva"
  loc_B056C2: ConcatStr
  loc_B056C3: FStStrNoPop var_E0
  loc_B056C6: ILdRf var_8C
  loc_B056C9: ConcatStr
  loc_B056CA: FStStrNoPop var_E4
  loc_B056CD: LitStr "Devengado"
  loc_B056D0: ConcatStr
  loc_B056D1: FStStrNoPop var_E8
  loc_B056D4: ILdRf var_8C
  loc_B056D7: ConcatStr
  loc_B056D8: FStStrNoPop var_EC
  loc_B056DB: LitStr "Mandado a Pagar"
  loc_B056DE: ConcatStr
  loc_B056DF: FStStrNoPop var_F0
  loc_B056E2: ILdRf var_8C
  loc_B056E5: ConcatStr
  loc_B056E6: FStStrNoPop var_F4
  loc_B056E9: LitStr "Pagado"
  loc_B056EC: ConcatStr
  loc_B056ED: FStStrNoPop var_F8
  loc_B056F0: ILdRf var_8C
  loc_B056F3: ConcatStr
  loc_B056F4: FStStrNoPop var_FC
  loc_B056F7: LitStr "Op"
  loc_B056FA: ConcatStr
  loc_B056FB: CVarStr var_10C
  loc_B056FE: PopAdLdVar
  loc_B056FF: FLdPr Me
  loc_B05702: MemLdRfVar from_stack_1.global_80
  loc_B05705: LdPrVar
  loc_B05707: LateMemCall
  loc_B0570D: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_B05746: FFree1Var var_10C = ""
  loc_B05749: LitI2_Byte 1
  loc_B0574B: FLdPr Me
  loc_B0574E: MemLdRfVar from_stack_1.global_100
  loc_B05751: FLdPr Me
  loc_B05754: MemLdStr global_96
  loc_B05757: LitI2_Byte 1
  loc_B05759: FnUBound
  loc_B0575B: CI2I4
  loc_B0575C: ForI2 var_120
  loc_B05762: LitI4 1
  loc_B05767: FLdPr Me
  loc_B0576A: MemLdRfVar from_stack_1.global_104
  loc_B0576D: FLdPr Me
  loc_B05770: MemLdI2 global_100
  loc_B05773: CI4UI1
  loc_B05774: FLdPr Me
  loc_B05777: MemLdStr global_96
  loc_B0577A: Ary1LdPr
  loc_B0577B: MemLdStr global_124
  loc_B0577E: LitI2_Byte 1
  loc_B05780: FnUBound
  loc_B05782: ForI4 var_128
  loc_B05788: LitI2_Byte 1
  loc_B0578A: FLdPr Me
  loc_B0578D: MemLdRfVar from_stack_1.global_108
  loc_B05790: FLdPr Me
  loc_B05793: MemLdStr global_104
  loc_B05796: FLdPr Me
  loc_B05799: MemLdI2 global_100
  loc_B0579C: CI4UI1
  loc_B0579D: FLdPr Me
  loc_B057A0: MemLdStr global_96
  loc_B057A3: Ary1LdPr
  loc_B057A4: MemLdStr global_124
  loc_B057A7: Ary1LdPr
  loc_B057A8: MemLdStr global_96
  loc_B057AB: LitI2_Byte 1
  loc_B057AD: FnUBound
  loc_B057AF: CI2I4
  loc_B057B0: ForI2 var_12C
  loc_B057B6: LitI4 1
  loc_B057BB: FLdPr Me
  loc_B057BE: MemLdRfVar from_stack_1.global_112
  loc_B057C1: FLdPr Me
  loc_B057C4: MemLdI2 global_108
  loc_B057C7: CI4UI1
  loc_B057C8: FLdPr Me
  loc_B057CB: MemLdStr global_104
  loc_B057CE: FLdPr Me
  loc_B057D1: MemLdI2 global_100
  loc_B057D4: CI4UI1
  loc_B057D5: FLdPr Me
  loc_B057D8: MemLdStr global_96
  loc_B057DB: Ary1LdPr
  loc_B057DC: MemLdStr global_124
  loc_B057DF: Ary1LdPr
  loc_B057E0: MemLdStr global_96
  loc_B057E3: Ary1LdPr
  loc_B057E4: MemLdStr global_96
  loc_B057E7: LitI2_Byte 1
  loc_B057E9: FnUBound
  loc_B057EB: ForI4 var_134
  loc_B057F1: FLdPr Me
  loc_B057F4: MemLdStr global_112
  loc_B057F7: FLdPr Me
  loc_B057FA: MemLdI2 global_108
  loc_B057FD: CI4UI1
  loc_B057FE: FLdPr Me
  loc_B05801: MemLdStr global_104
  loc_B05804: FLdPr Me
  loc_B05807: MemLdI2 global_100
  loc_B0580A: CI4UI1
  loc_B0580B: FLdPr Me
  loc_B0580E: MemLdStr global_96
  loc_B05811: AryLock
  loc_B05814: Ary1LdPr
  loc_B05815: MemLdStr global_124
  loc_B05818: AryLock
  loc_B0581B: Ary1LdPr
  loc_B0581C: MemLdStr global_96
  loc_B0581F: AryLock
  loc_B05822: Ary1LdPr
  loc_B05823: MemLdStr global_96
  loc_B05826: AryLock
  loc_B05829: Ary1LdRf
  loc_B0582A: FStR4 var_148
  loc_B0582D: FLdPr Me
  loc_B05830: MemLdI2 global_100
  loc_B05833: CI4UI1
  loc_B05834: FLdPr Me
  loc_B05837: MemLdStr global_96
  loc_B0583A: Ary1LdPr
  loc_B0583B: MemLdRfVar from_stack_1.global_0
  loc_B0583E: LdFixedStr
  loc_B05841: FStStrNoPop var_94
  loc_B05844: ImpAdCallI2 Trim$()
  loc_B05849: FStStr var_98
  loc_B0584C: ILdRf var_94
  loc_B0584F: FLdPr Me
  loc_B05852: MemLdI2 global_100
  loc_B05855: CI4UI1
  loc_B05856: FLdPr Me
  loc_B05859: MemLdStr global_96
  loc_B0585C: Ary1LdPr
  loc_B0585D: MemLdRfVar from_stack_1.global_0
  loc_B05860: StFixedStr
  loc_B05863: ILdRf var_98
  loc_B05866: LitStr " "
  loc_B05869: ConcatStr
  loc_B0586A: FStStrNoPop var_A4
  loc_B0586D: FLdPr Me
  loc_B05870: MemLdI2 global_100
  loc_B05873: CI4UI1
  loc_B05874: FLdPr Me
  loc_B05877: MemLdStr global_96
  loc_B0587A: Ary1LdPr
  loc_B0587B: MemLdRfVar from_stack_1.global_16
  loc_B0587E: LdFixedStr
  loc_B05881: FStStrNoPop var_9C
  loc_B05884: ImpAdCallI2 Trim$()
  loc_B05889: FStStr var_A0
  loc_B0588C: ILdRf var_9C
  loc_B0588F: FLdPr Me
  loc_B05892: MemLdI2 global_100
  loc_B05895: CI4UI1
  loc_B05896: FLdPr Me
  loc_B05899: MemLdStr global_96
  loc_B0589C: Ary1LdPr
  loc_B0589D: MemLdRfVar from_stack_1.global_16
  loc_B058A0: StFixedStr
  loc_B058A3: ILdRf var_A0
  loc_B058A6: ConcatStr
  loc_B058A7: FStStrNoPop var_A8
  loc_B058AA: ILdRf var_8C
  loc_B058AD: ConcatStr
  loc_B058AE: FStStrNoPop var_B4
  loc_B058B1: FLdPr Me
  loc_B058B4: MemLdStr global_104
  loc_B058B7: FLdPr Me
  loc_B058BA: MemLdI2 global_100
  loc_B058BD: CI4UI1
  loc_B058BE: FLdPr Me
  loc_B058C1: MemLdStr global_96
  loc_B058C4: Ary1LdPr
  loc_B058C5: MemLdStr global_124
  loc_B058C8: Ary1LdPr
  loc_B058C9: MemLdRfVar from_stack_1.global_0
  loc_B058CC: LdFixedStr
  loc_B058CF: FStStrNoPop var_AC
  loc_B058D2: ImpAdCallI2 Trim$()
  loc_B058D7: FStStr var_B0
  loc_B058DA: ILdRf var_AC
  loc_B058DD: FLdPr Me
  loc_B058E0: MemLdStr global_104
  loc_B058E3: FLdPr Me
  loc_B058E6: MemLdI2 global_100
  loc_B058E9: CI4UI1
  loc_B058EA: FLdPr Me
  loc_B058ED: MemLdStr global_96
  loc_B058F0: Ary1LdPr
  loc_B058F1: MemLdStr global_124
  loc_B058F4: Ary1LdPr
  loc_B058F5: MemLdRfVar from_stack_1.global_0
  loc_B058F8: StFixedStr
  loc_B058FB: ILdRf var_B0
  loc_B058FE: ConcatStr
  loc_B058FF: FStStrNoPop var_B8
  loc_B05902: LitStr " "
  loc_B05905: ConcatStr
  loc_B05906: FStStrNoPop var_C4
  loc_B05909: FLdPr Me
  loc_B0590C: MemLdStr global_104
  loc_B0590F: FLdPr Me
  loc_B05912: MemLdI2 global_100
  loc_B05915: CI4UI1
  loc_B05916: FLdPr Me
  loc_B05919: MemLdStr global_96
  loc_B0591C: Ary1LdPr
  loc_B0591D: MemLdStr global_124
  loc_B05920: Ary1LdPr
  loc_B05921: MemLdRfVar from_stack_1.global_12
  loc_B05924: LdFixedStr
  loc_B05927: FStStrNoPop var_BC
  loc_B0592A: ImpAdCallI2 Trim$()
  loc_B0592F: FStStr var_C0
  loc_B05932: ILdRf var_BC
  loc_B05935: FLdPr Me
  loc_B05938: MemLdStr global_104
  loc_B0593B: FLdPr Me
  loc_B0593E: MemLdI2 global_100
  loc_B05941: CI4UI1
  loc_B05942: FLdPr Me
  loc_B05945: MemLdStr global_96
  loc_B05948: Ary1LdPr
  loc_B05949: MemLdStr global_124
  loc_B0594C: Ary1LdPr
  loc_B0594D: MemLdRfVar from_stack_1.global_12
  loc_B05950: StFixedStr
  loc_B05953: ILdRf var_C0
  loc_B05956: ConcatStr
  loc_B05957: FStStrNoPop var_C8
  loc_B0595A: ILdRf var_8C
  loc_B0595D: ConcatStr
  loc_B0595E: FStStrNoPop var_D4
  loc_B05961: FLdPr Me
  loc_B05964: MemLdI2 global_108
  loc_B05967: CI4UI1
  loc_B05968: FLdPr Me
  loc_B0596B: MemLdStr global_104
  loc_B0596E: FLdPr Me
  loc_B05971: MemLdI2 global_100
  loc_B05974: CI4UI1
  loc_B05975: FLdPr Me
  loc_B05978: MemLdStr global_96
  loc_B0597B: Ary1LdPr
  loc_B0597C: MemLdStr global_124
  loc_B0597F: Ary1LdPr
  loc_B05980: MemLdStr global_96
  loc_B05983: Ary1LdPr
  loc_B05984: MemLdRfVar from_stack_1.global_0
  loc_B05987: LdFixedStr
  loc_B0598A: FStStrNoPop var_CC
  loc_B0598D: ImpAdCallI2 Trim$()
  loc_B05992: FStStr var_D0
  loc_B05995: ILdRf var_CC
  loc_B05998: FLdPr Me
  loc_B0599B: MemLdI2 global_108
  loc_B0599E: CI4UI1
  loc_B0599F: FLdPr Me
  loc_B059A2: MemLdStr global_104
  loc_B059A5: FLdPr Me
  loc_B059A8: MemLdI2 global_100
  loc_B059AB: CI4UI1
  loc_B059AC: FLdPr Me
  loc_B059AF: MemLdStr global_96
  loc_B059B2: Ary1LdPr
  loc_B059B3: MemLdStr global_124
  loc_B059B6: Ary1LdPr
  loc_B059B7: MemLdStr global_96
  loc_B059BA: Ary1LdPr
  loc_B059BB: MemLdRfVar from_stack_1.global_0
  loc_B059BE: StFixedStr
  loc_B059C1: ILdRf var_D0
  loc_B059C4: ConcatStr
  loc_B059C5: FStStrNoPop var_D8
  loc_B059C8: LitStr " "
  loc_B059CB: ConcatStr
  loc_B059CC: FStStrNoPop var_E4
  loc_B059CF: FLdPr Me
  loc_B059D2: MemLdI2 global_108
  loc_B059D5: CI4UI1
  loc_B059D6: FLdPr Me
  loc_B059D9: MemLdStr global_104
  loc_B059DC: FLdPr Me
  loc_B059DF: MemLdI2 global_100
  loc_B059E2: CI4UI1
  loc_B059E3: FLdPr Me
  loc_B059E6: MemLdStr global_96
  loc_B059E9: Ary1LdPr
  loc_B059EA: MemLdStr global_124
  loc_B059ED: Ary1LdPr
  loc_B059EE: MemLdStr global_96
  loc_B059F1: Ary1LdPr
  loc_B059F2: MemLdRfVar from_stack_1.global_12
  loc_B059F5: LdFixedStr
  loc_B059F8: FStStrNoPop var_DC
  loc_B059FB: ImpAdCallI2 Trim$()
  loc_B05A00: FStStr var_E0
  loc_B05A03: ILdRf var_DC
  loc_B05A06: FLdPr Me
  loc_B05A09: MemLdI2 global_108
  loc_B05A0C: CI4UI1
  loc_B05A0D: FLdPr Me
  loc_B05A10: MemLdStr global_104
  loc_B05A13: FLdPr Me
  loc_B05A16: MemLdI2 global_100
  loc_B05A19: CI4UI1
  loc_B05A1A: FLdPr Me
  loc_B05A1D: MemLdStr global_96
  loc_B05A20: Ary1LdPr
  loc_B05A21: MemLdStr global_124
  loc_B05A24: Ary1LdPr
  loc_B05A25: MemLdStr global_96
  loc_B05A28: Ary1LdPr
  loc_B05A29: MemLdRfVar from_stack_1.global_12
  loc_B05A2C: StFixedStr
  loc_B05A2F: ILdRf var_E0
  loc_B05A32: ConcatStr
  loc_B05A33: FStStrNoPop var_E8
  loc_B05A36: ILdRf var_8C
  loc_B05A39: ConcatStr
  loc_B05A3A: FStStrNoPop var_F4
  loc_B05A3D: FMemLdRf 0
  loc_B05A42: LdFixedStr
  loc_B05A45: FStStrNoPop var_EC
  loc_B05A48: ImpAdCallI2 Trim$()
  loc_B05A4D: FStStr var_F0
  loc_B05A50: ILdRf var_EC
  loc_B05A53: FMemLdRf 0
  loc_B05A58: StFixedStr
  loc_B05A5B: ILdRf var_F0
  loc_B05A5E: ConcatStr
  loc_B05A5F: FStStrNoPop var_F8
  loc_B05A62: ILdRf var_8C
  loc_B05A65: ConcatStr
  loc_B05A66: FStStrNoPop var_150
  loc_B05A69: FMemLdRf 0
  loc_B05A6E: LdFixedStr
  loc_B05A71: FStStrNoPop var_FC
  loc_B05A74: ImpAdCallI2 Trim$()
  loc_B05A79: FStStr var_14C
  loc_B05A7C: ILdRf var_FC
  loc_B05A7F: FMemLdRf 0
  loc_B05A84: StFixedStr
  loc_B05A87: ILdRf var_14C
  loc_B05A8A: ConcatStr
  loc_B05A8B: FStStrNoPop var_154
  loc_B05A8E: ILdRf var_8C
  loc_B05A91: ConcatStr
  loc_B05A92: FStStrNoPop var_160
  loc_B05A95: FMemLdRf 0
  loc_B05A9A: LdFixedStr
  loc_B05A9D: FStStrNoPop var_158
  loc_B05AA0: ImpAdCallI2 Trim$()
  loc_B05AA5: FStStr var_15C
  loc_B05AA8: ILdRf var_158
  loc_B05AAB: FMemLdRf 0
  loc_B05AB0: StFixedStr
  loc_B05AB3: ILdRf var_15C
  loc_B05AB6: ConcatStr
  loc_B05AB7: FStStrNoPop var_164
  loc_B05ABA: ILdRf var_8C
  loc_B05ABD: ConcatStr
  loc_B05ABE: FStStrNoPop var_170
  loc_B05AC1: FMemLdRf 0
  loc_B05AC6: LdFixedStr
  loc_B05AC9: FStStrNoPop var_168
  loc_B05ACC: ImpAdCallI2 Trim$()
  loc_B05AD1: FStStr var_16C
  loc_B05AD4: ILdRf var_168
  loc_B05AD7: FMemLdRf 0
  loc_B05ADC: StFixedStr
  loc_B05ADF: ILdRf var_16C
  loc_B05AE2: ConcatStr
  loc_B05AE3: FStStrNoPop var_174
  loc_B05AE6: ILdRf var_8C
  loc_B05AE9: ConcatStr
  loc_B05AEA: FStStrNoPop var_178
  loc_B05AED: FMemLdR4 var_148(0)
  loc_B05AF2: ImpAdCallI2 Trim$()
  loc_B05AF7: FStStrNoPop var_17C
  loc_B05AFA: ConcatStr
  loc_B05AFB: FStStrNoPop var_180
  loc_B05AFE: ILdRf var_8C
  loc_B05B01: ConcatStr
  loc_B05B02: FStStrNoPop var_18C
  loc_B05B05: FMemLdRf 0
  loc_B05B0A: LdFixedStr
  loc_B05B0D: FStStrNoPop var_184
  loc_B05B10: ImpAdCallI2 Trim$()
  loc_B05B15: FStStr var_188
  loc_B05B18: ILdRf var_184
  loc_B05B1B: FMemLdRf 0
  loc_B05B20: StFixedStr
  loc_B05B23: ILdRf var_188
  loc_B05B26: ConcatStr
  loc_B05B27: FStStrNoPop var_190
  loc_B05B2A: ILdRf var_8C
  loc_B05B2D: ConcatStr
  loc_B05B2E: FStStrNoPop var_194
  loc_B05B31: FMemLdR4 var_148(164)
  loc_B05B36: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_B05B3B: FStStrNoPop var_198
  loc_B05B3E: ConcatStr
  loc_B05B3F: FStStrNoPop var_19C
  loc_B05B42: ILdRf var_8C
  loc_B05B45: ConcatStr
  loc_B05B46: FStStrNoPop var_1A0
  loc_B05B49: FMemLdR4 var_148(168)
  loc_B05B4E: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_B05B53: FStStrNoPop var_1A4
  loc_B05B56: ConcatStr
  loc_B05B57: FStStrNoPop var_1A8
  loc_B05B5A: ILdRf var_8C
  loc_B05B5D: ConcatStr
  loc_B05B5E: FStStrNoPop var_1AC
  loc_B05B61: FMemLdR4 var_148(172)
  loc_B05B66: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_B05B6B: FStStrNoPop var_1B0
  loc_B05B6E: ConcatStr
  loc_B05B6F: FStStrNoPop var_1B4
  loc_B05B72: ILdRf var_8C
  loc_B05B75: ConcatStr
  loc_B05B76: FStStrNoPop var_1B8
  loc_B05B79: FMemLdR4 var_148(176)
  loc_B05B7E: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_B05B83: FStStrNoPop var_1BC
  loc_B05B86: ConcatStr
  loc_B05B87: FStStrNoPop var_1C0
  loc_B05B8A: ILdRf var_8C
  loc_B05B8D: ConcatStr
  loc_B05B8E: FStStrNoPop var_1C4
  loc_B05B91: FMemLdR4 var_148(180)
  loc_B05B96: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_B05B9B: FStStrNoPop var_1C8
  loc_B05B9E: ConcatStr
  loc_B05B9F: FStStrNoPop var_1CC
  loc_B05BA2: ILdRf var_8C
  loc_B05BA5: ConcatStr
  loc_B05BA6: FStStrNoPop var_204
  loc_B05BA9: LitVarStr var_1EC, "N/c"
  loc_B05BAE: FStVarCopyObj var_10C
  loc_B05BB1: FLdRfVar var_10C
  loc_B05BB4: FMemLdRf 0
  loc_B05BB9: CVarRef
  loc_B05BBE: FMemLdR4 var_148(184)
  loc_B05BC3: LitStr vbNullString
  loc_B05BC6: NeStr
  loc_B05BC8: CVarBoolI2 var_11C
  loc_B05BCC: FLdRfVar var_1FC
  loc_B05BCF: ImpAdCallFPR4  = IIf(, , )
  loc_B05BD4: FLdRfVar var_1FC
  loc_B05BD7: CStrVarVal var_200
  loc_B05BDB: ImpAdCallI2 Trim$()
  loc_B05BE0: FStStrNoPop var_208
  loc_B05BE3: ConcatStr
  loc_B05BE4: CVarStr var_218
  loc_B05BE7: PopAdLdVar
  loc_B05BE8: FLdPr Me
  loc_B05BEB: MemLdRfVar from_stack_1.global_80
  loc_B05BEE: LdPrVar
  loc_B05BF0: LateMemCall
  loc_B05BF6: FFreeStr var_200 = "": var_204 = "": var_208 = "": var_158 = "": var_160 = "": var_15C = "": var_164 = "": var_168 = "": var_170 = "": var_16C = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_18C = "": var_188 = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_94 = "": var_98 = "": var_9C = "": var_A4 = "": var_A0 = "": var_A8 = "": var_AC = "": var_B4 = "": var_B0 = "": var_B8 = "": var_BC = "": var_C4 = "": var_C0 = "": var_C8 = "": var_CC = "": var_D4 = "": var_D0 = "": var_D8 = "": var_DC = "": var_E4 = "": var_E0 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F0 = "": var_F8 = "": var_FC = "": var_150 = "": var_14C = ""
  loc_B05C77: FFreeVar var_11C = "": var_10C = "": var_1FC = ""
  loc_B05C82: LitI4 0
  loc_B05C87: FStR4 var_148
  loc_B05C8A: AryUnlock
  loc_B05C8D: AryUnlock
  loc_B05C90: AryUnlock
  loc_B05C93: AryUnlock
  loc_B05C96: FLdPr Me
  loc_B05C99: MemLdRfVar from_stack_1.global_112
  loc_B05C9C: NextI4 var_134, loc_B057F1
  loc_B05CA1: FLdPr Me
  loc_B05CA4: MemLdRfVar from_stack_1.global_108
  loc_B05CA7: NextI2 var_12C, loc_B057B6
  loc_B05CAC: FLdPr Me
  loc_B05CAF: MemLdRfVar from_stack_1.global_104
  loc_B05CB2: NextI4 var_128, loc_B05788
  loc_B05CB7: FLdPr Me
  loc_B05CBA: MemLdRfVar from_stack_1.global_100
  loc_B05CBD: NextI2 var_120, loc_B05762
  loc_B05CC2: FLdPr Me
  loc_B05CC5: MemLdRfVar from_stack_1.global_80
  loc_B05CC8: LdPrVar
  loc_B05CCA: LateMemCall
  loc_B05CD0: ExitProcHresult
  loc_B05CD1: LtI2
End Sub

Public Sub GeneraHTML() 'A0659C
  'Data Table: 4F1070
  loc_A06430: FLdPr Me
  loc_A06433: VCallAd Control_ID_wbbReporte
  loc_A06436: FStAdFunc var_88
  loc_A06439: FLdPr var_88
  loc_A0643C: LateIdCall
  loc_A06444: FFree1Ad var_88
  loc_A06447: LitI4 0
  loc_A0644C: FStStrCopy var_8C
  loc_A0644F: FLdRfVar var_8C
  loc_A06452: ImpAdCallFPR4 Proc_263_13_99E450()
  loc_A06457: FFree1Str var_8C
  loc_A0645A: FLdRfVar var_88
  loc_A0645D: LitI2_Byte 0
  loc_A0645F: LitI2_Byte &HFF
  loc_A06461: ImpAdLdI4 MemVar_C3D83C
  loc_A06464: FLdPr Me
  loc_A06467: MemLdRfVar from_stack_1.global_76
  loc_A0646A: NewIfNullPr IFileSystem3
  loc_A0646D: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A06472: ILdRf var_88
  loc_A06475: FLdPr Me
  loc_A06478: MemStVarAd
  loc_A0647C: FFree1Ad var_88
  loc_A0647F: LitI4 0
  loc_A06484: FLdPr Me
  loc_A06487: MemStI4 global_116
  loc_A0648A: Call Proc_185_51_9B9F9C()
  loc_A0648F: Call Proc_185_52_A984F8()
  loc_A06494: Call Proc_185_53_A151E8()
  loc_A06499: LitI2_Byte 1
  loc_A0649B: FLdPr Me
  loc_A0649E: MemLdRfVar from_stack_1.global_100
  loc_A064A1: FLdPr Me
  loc_A064A4: MemLdStr global_96
  loc_A064A7: LitI2_Byte 1
  loc_A064A9: FnUBound
  loc_A064AB: CI2I4
  loc_A064AC: ForI2 var_90
  loc_A064B2: Call Proc_185_46_A29434()
  loc_A064B7: LitI4 1
  loc_A064BC: FLdPr Me
  loc_A064BF: MemLdRfVar from_stack_1.global_104
  loc_A064C2: FLdPr Me
  loc_A064C5: MemLdI2 global_100
  loc_A064C8: CI4UI1
  loc_A064C9: FLdPr Me
  loc_A064CC: MemLdStr global_96
  loc_A064CF: Ary1LdPr
  loc_A064D0: MemLdStr global_124
  loc_A064D3: LitI2_Byte 1
  loc_A064D5: FnUBound
  loc_A064D7: ForI4 var_98
  loc_A064DD: Call Proc_185_47_A2DD2C()
  loc_A064E2: LitI2_Byte 1
  loc_A064E4: FLdPr Me
  loc_A064E7: MemLdRfVar from_stack_1.global_108
  loc_A064EA: FLdPr Me
  loc_A064ED: MemLdStr global_104
  loc_A064F0: FLdPr Me
  loc_A064F3: MemLdI2 global_100
  loc_A064F6: CI4UI1
  loc_A064F7: FLdPr Me
  loc_A064FA: MemLdStr global_96
  loc_A064FD: Ary1LdPr
  loc_A064FE: MemLdStr global_124
  loc_A06501: Ary1LdPr
  loc_A06502: MemLdStr global_96
  loc_A06505: LitI2_Byte 1
  loc_A06507: FnUBound
  loc_A06509: CI2I4
  loc_A0650A: ForI2 var_9C
  loc_A06510: Call Proc_185_48_A37884()
  loc_A06515: LitI4 1
  loc_A0651A: FLdPr Me
  loc_A0651D: MemLdRfVar from_stack_1.global_112
  loc_A06520: FLdPr Me
  loc_A06523: MemLdI2 global_108
  loc_A06526: CI4UI1
  loc_A06527: FLdPr Me
  loc_A0652A: MemLdStr global_104
  loc_A0652D: FLdPr Me
  loc_A06530: MemLdI2 global_100
  loc_A06533: CI4UI1
  loc_A06534: FLdPr Me
  loc_A06537: MemLdStr global_96
  loc_A0653A: Ary1LdPr
  loc_A0653B: MemLdStr global_124
  loc_A0653E: Ary1LdPr
  loc_A0653F: MemLdStr global_96
  loc_A06542: Ary1LdPr
  loc_A06543: MemLdStr global_96
  loc_A06546: LitI2_Byte 1
  loc_A06548: FnUBound
  loc_A0654A: ForI4 var_A4
  loc_A06550: Call Proc_185_49_AAAEF0()
  loc_A06555: FLdPr Me
  loc_A06558: MemLdRfVar from_stack_1.global_112
  loc_A0655B: NextI4 var_A4, loc_A06550
  loc_A06560: FLdPr Me
  loc_A06563: MemLdRfVar from_stack_1.global_108
  loc_A06566: NextI2 var_9C, loc_A06510
  loc_A0656B: FLdPr Me
  loc_A0656E: MemLdRfVar from_stack_1.global_104
  loc_A06571: NextI4 var_98, loc_A064DD
  loc_A06576: FLdPr Me
  loc_A06579: MemLdRfVar from_stack_1.global_100
  loc_A0657C: NextI2 var_90, loc_A064B2
  loc_A06581: Call Proc_185_50_A0D8F0()
  loc_A06586: Call Proc_185_54_982930()
  loc_A0658B: FLdPr Me
  loc_A0658E: MemLdRfVar from_stack_1.htmFile
  loc_A06591: LdPrVar
  loc_A06593: LateMemCall
  loc_A06599: ExitProcHresult
  loc_A0659A: FLdPrThis
End Sub

Private Function Proc_185_39_A33BA4() 'A33BA4
  'Data Table: 4F1070
  loc_A339B0: FLdPr Me
  loc_A339B3: MemLdI2 global_100
  loc_A339B6: LitI2_Byte 1
  loc_A339B8: AddI2
  loc_A339B9: FLdPr Me
  loc_A339BC: MemStI2 global_100
  loc_A339BF: LitI4 0
  loc_A339C4: FLdPr Me
  loc_A339C7: MemStI4 global_104
  loc_A339CA: LitI4 0
  loc_A339CF: FLdPr Me
  loc_A339D2: MemLdI2 global_100
  loc_A339D5: CI4UI1
  loc_A339D6: FLdPr Me
  loc_A339D9: MemLdRfVar from_stack_1.global_96
  loc_A339DC: RedimPreserve
  loc_A339E6: FLdRfVar var_A0
  loc_A339E9: LitVarStr var_9C, "CodiPart"
  loc_A339EE: PopAdLdVar
  loc_A339EF: FLdRfVar var_8C
  loc_A339F2: FLdRfVar var_88
  loc_A339F5: FLdPr Me
  loc_A339F8: MemLdRfVar from_stack_1.global_72
  loc_A339FB: NewIfNullPr clsimputacion
  loc_A339FE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A33A03: FLdPr var_88
  loc_A33A06:  = Me.Fields
  loc_A33A0B: FLdPr var_8C
  loc_A33A0E: from_stack_2 = Me.Item(from_stack_1)
  loc_A33A13: LitI2_Byte 0
  loc_A33A15: LitVar_Missing var_D4
  loc_A33A18: LitI2_Byte 0
  loc_A33A1A: FLdZeroAd var_A0
  loc_A33A1D: CVarAd
  loc_A33A21: PopAdLdVar
  loc_A33A22: FLdPr Me
  loc_A33A25: MemLdI2 global_100
  loc_A33A28: CI4UI1
  loc_A33A29: FLdPr Me
  loc_A33A2C: MemLdStr global_96
  loc_A33A2F: Ary1LdPr
  loc_A33A30: MemLdRfVar from_stack_1.global_0
  loc_A33A33: LdFixedStr
  loc_A33A36: PopTmpLdAdStr
  loc_A33A3A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A33A3F: ILdRf var_A4
  loc_A33A42: FLdPr Me
  loc_A33A45: MemLdI2 global_100
  loc_A33A48: CI4UI1
  loc_A33A49: FLdPr Me
  loc_A33A4C: MemLdStr global_96
  loc_A33A4F: Ary1LdPr
  loc_A33A50: MemLdRfVar from_stack_1.global_0
  loc_A33A53: StFixedStr
  loc_A33A56: FFree1Str var_A4
  loc_A33A59: FFreeAd var_88 = ""
  loc_A33A60: FFreeVar var_B4 = ""
  loc_A33A67: FLdRfVar var_A0
  loc_A33A6A: LitVarStr var_9C, "DetaPart"
  loc_A33A6F: PopAdLdVar
  loc_A33A70: FLdRfVar var_8C
  loc_A33A73: FLdRfVar var_88
  loc_A33A76: FLdPr Me
  loc_A33A79: MemLdRfVar from_stack_1.global_72
  loc_A33A7C: NewIfNullPr clsimputacion
  loc_A33A7F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A33A84: FLdPr var_88
  loc_A33A87:  = Me.Fields
  loc_A33A8C: FLdPr var_8C
  loc_A33A8F: from_stack_2 = Me.Item(from_stack_1)
  loc_A33A94: LitI2_Byte 0
  loc_A33A96: LitVar_Missing var_D4
  loc_A33A99: LitI2_Byte 0
  loc_A33A9B: FLdZeroAd var_A0
  loc_A33A9E: CVarAd
  loc_A33AA2: PopAdLdVar
  loc_A33AA3: FLdPr Me
  loc_A33AA6: MemLdI2 global_100
  loc_A33AA9: CI4UI1
  loc_A33AAA: FLdPr Me
  loc_A33AAD: MemLdStr global_96
  loc_A33AB0: Ary1LdPr
  loc_A33AB1: MemLdRfVar from_stack_1.global_16
  loc_A33AB4: LdFixedStr
  loc_A33AB7: PopTmpLdAdStr
  loc_A33ABB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A33AC0: ILdRf var_A4
  loc_A33AC3: FLdPr Me
  loc_A33AC6: MemLdI2 global_100
  loc_A33AC9: CI4UI1
  loc_A33ACA: FLdPr Me
  loc_A33ACD: MemLdStr global_96
  loc_A33AD0: Ary1LdPr
  loc_A33AD1: MemLdRfVar from_stack_1.global_16
  loc_A33AD4: StFixedStr
  loc_A33AD7: FFree1Str var_A4
  loc_A33ADA: FFreeAd var_88 = ""
  loc_A33AE1: FFreeVar var_B4 = ""
  loc_A33AE8: FLdRfVar var_A4
  loc_A33AEB: FLdPr Me
  loc_A33AEE: VCallAd Control_ID_cboPeriodo
  loc_A33AF1: FStAdFunc var_88
  loc_A33AF4: FLdPr var_88
  loc_A33AF7:  = Me.Text
  loc_A33AFC: FLdPr Me
  loc_A33AFF: VCallAd Control_ID_mskHasta
  loc_A33B02: FStAdFunc var_8C
  loc_A33B05: FLdPr var_8C
  loc_A33B08: LateIdLdVar var_B4 DispID_15 0
  loc_A33B0F: PopAd
  loc_A33B11: FLdRfVar var_E0
  loc_A33B14: FLdRfVar var_B4
  loc_A33B17: CStrVarTmp
  loc_A33B18: FStStrNoPop var_DC
  loc_A33B1B: FLdPr Me
  loc_A33B1E: MemLdI2 global_100
  loc_A33B21: CI4UI1
  loc_A33B22: FLdPr Me
  loc_A33B25: MemLdStr global_96
  loc_A33B28: Ary1LdPr
  loc_A33B29: MemLdRfVar from_stack_1.global_0
  loc_A33B2C: LdFixedStr
  loc_A33B2F: FStStrNoPop var_D8
  loc_A33B32: ILdRf var_A4
  loc_A33B35: FLdPr Me
  loc_A33B38: MemLdRfVar from_stack_1.global_72
  loc_A33B3B: NewIfNullPr clsimputacion
  loc_A33B3E: from_stack_4v = clsimputacion.BuscaSaldAutoJuri(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A33B43: ILdRf var_D8
  loc_A33B46: FLdPr Me
  loc_A33B49: MemLdI2 global_100
  loc_A33B4C: CI4UI1
  loc_A33B4D: FLdPr Me
  loc_A33B50: MemLdStr global_96
  loc_A33B53: Ary1LdPr
  loc_A33B54: MemLdRfVar from_stack_1.global_0
  loc_A33B57: StFixedStr
  loc_A33B5A: LitI2_Byte 0
  loc_A33B5C: LitVar_Missing var_F4
  loc_A33B5F: LitI2_Byte 0
  loc_A33B61: FLdZeroAd var_E0
  loc_A33B64: CVarStr var_D4
  loc_A33B67: PopAdLdVar
  loc_A33B68: FLdPr Me
  loc_A33B6B: MemLdI2 global_100
  loc_A33B6E: CI4UI1
  loc_A33B6F: FLdPr Me
  loc_A33B72: MemLdStr global_96
  loc_A33B75: AryLock
  loc_A33B78: Ary1LdPr
  loc_A33B79: MemLdRfVar from_stack_1.global_116
  loc_A33B7C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A33B81: AryUnlock
  loc_A33B84: FFreeStr var_A4 = "": var_D8 = ""
  loc_A33B8D: FFreeAd var_88 = ""
  loc_A33B94: FFreeVar var_B4 = "": var_D4 = ""
  loc_A33B9D: Call Proc_185_40_A10DB8()
  loc_A33BA2: ExitProcHresult
End Function

Private Function Proc_185_40_A10DB8() 'A10DB8
  'Data Table: 4F1070
  loc_A10C48: FLdPr Me
  loc_A10C4B: MemLdStr global_104
  loc_A10C4E: LitI4 1
  loc_A10C53: AddI4
  loc_A10C54: FLdPr Me
  loc_A10C57: MemStI4 global_104
  loc_A10C5A: LitI2_Byte 0
  loc_A10C5C: FLdPr Me
  loc_A10C5F: MemStI2 global_108
  loc_A10C62: LitI4 0
  loc_A10C67: FLdPr Me
  loc_A10C6A: MemLdStr global_104
  loc_A10C6D: FLdPr Me
  loc_A10C70: MemLdI2 global_100
  loc_A10C73: CI4UI1
  loc_A10C74: FLdPr Me
  loc_A10C77: MemLdStr global_96
  loc_A10C7A: Ary1LdPr
  loc_A10C7B: MemLdRfVar from_stack_1.global_124
  loc_A10C7E: RedimPreserve
  loc_A10C88: FLdRfVar var_A0
  loc_A10C8B: LitVarStr var_9C, "CodiOrga"
  loc_A10C90: PopAdLdVar
  loc_A10C91: FLdRfVar var_8C
  loc_A10C94: FLdRfVar var_88
  loc_A10C97: FLdPr Me
  loc_A10C9A: MemLdRfVar from_stack_1.global_72
  loc_A10C9D: NewIfNullPr clsimputacion
  loc_A10CA0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A10CA5: FLdPr var_88
  loc_A10CA8:  = Me.Fields
  loc_A10CAD: FLdPr var_8C
  loc_A10CB0: from_stack_2 = Me.Item(from_stack_1)
  loc_A10CB5: LitI2_Byte 0
  loc_A10CB7: LitVar_Missing var_D4
  loc_A10CBA: LitI2_Byte 0
  loc_A10CBC: FLdZeroAd var_A0
  loc_A10CBF: CVarAd
  loc_A10CC3: PopAdLdVar
  loc_A10CC4: FLdPr Me
  loc_A10CC7: MemLdStr global_104
  loc_A10CCA: FLdPr Me
  loc_A10CCD: MemLdI2 global_100
  loc_A10CD0: CI4UI1
  loc_A10CD1: FLdPr Me
  loc_A10CD4: MemLdStr global_96
  loc_A10CD7: Ary1LdPr
  loc_A10CD8: MemLdStr global_124
  loc_A10CDB: Ary1LdPr
  loc_A10CDC: MemLdRfVar from_stack_1.global_0
  loc_A10CDF: LdFixedStr
  loc_A10CE2: PopTmpLdAdStr
  loc_A10CE6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A10CEB: ILdRf var_A4
  loc_A10CEE: FLdPr Me
  loc_A10CF1: MemLdStr global_104
  loc_A10CF4: FLdPr Me
  loc_A10CF7: MemLdI2 global_100
  loc_A10CFA: CI4UI1
  loc_A10CFB: FLdPr Me
  loc_A10CFE: MemLdStr global_96
  loc_A10D01: Ary1LdPr
  loc_A10D02: MemLdStr global_124
  loc_A10D05: Ary1LdPr
  loc_A10D06: MemLdRfVar from_stack_1.global_0
  loc_A10D09: StFixedStr
  loc_A10D0C: FFree1Str var_A4
  loc_A10D0F: FFreeAd var_88 = ""
  loc_A10D16: FFreeVar var_B4 = ""
  loc_A10D1D: FLdRfVar var_A0
  loc_A10D20: LitVarStr var_9C, "DetaOrga"
  loc_A10D25: PopAdLdVar
  loc_A10D26: FLdRfVar var_8C
  loc_A10D29: FLdRfVar var_88
  loc_A10D2C: FLdPr Me
  loc_A10D2F: MemLdRfVar from_stack_1.global_72
  loc_A10D32: NewIfNullPr clsimputacion
  loc_A10D35: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A10D3A: FLdPr var_88
  loc_A10D3D:  = Me.Fields
  loc_A10D42: FLdPr var_8C
  loc_A10D45: from_stack_2 = Me.Item(from_stack_1)
  loc_A10D4A: LitI2_Byte 0
  loc_A10D4C: LitVar_Missing var_D4
  loc_A10D4F: LitI2_Byte 0
  loc_A10D51: FLdZeroAd var_A0
  loc_A10D54: CVarAd
  loc_A10D58: PopAdLdVar
  loc_A10D59: FLdPr Me
  loc_A10D5C: MemLdStr global_104
  loc_A10D5F: FLdPr Me
  loc_A10D62: MemLdI2 global_100
  loc_A10D65: CI4UI1
  loc_A10D66: FLdPr Me
  loc_A10D69: MemLdStr global_96
  loc_A10D6C: Ary1LdPr
  loc_A10D6D: MemLdStr global_124
  loc_A10D70: Ary1LdPr
  loc_A10D71: MemLdRfVar from_stack_1.global_12
  loc_A10D74: LdFixedStr
  loc_A10D77: PopTmpLdAdStr
  loc_A10D7B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A10D80: ILdRf var_A4
  loc_A10D83: FLdPr Me
  loc_A10D86: MemLdStr global_104
  loc_A10D89: FLdPr Me
  loc_A10D8C: MemLdI2 global_100
  loc_A10D8F: CI4UI1
  loc_A10D90: FLdPr Me
  loc_A10D93: MemLdStr global_96
  loc_A10D96: Ary1LdPr
  loc_A10D97: MemLdStr global_124
  loc_A10D9A: Ary1LdPr
  loc_A10D9B: MemLdRfVar from_stack_1.global_12
  loc_A10D9E: StFixedStr
  loc_A10DA1: FFree1Str var_A4
  loc_A10DA4: FFreeAd var_88 = ""
  loc_A10DAB: FFreeVar var_B4 = ""
  loc_A10DB2: Call Proc_185_41_A20D98()
  loc_A10DB7: ExitProcHresult
End Function

Private Function Proc_185_41_A20D98() 'A20D98
  'Data Table: 4F1070
  loc_A20BF0: FLdPr Me
  loc_A20BF3: MemLdI2 global_108
  loc_A20BF6: LitI2_Byte 1
  loc_A20BF8: AddI2
  loc_A20BF9: FLdPr Me
  loc_A20BFC: MemStI2 global_108
  loc_A20BFF: LitI4 0
  loc_A20C04: FLdPr Me
  loc_A20C07: MemStI4 global_112
  loc_A20C0A: LitI4 0
  loc_A20C0F: FLdPr Me
  loc_A20C12: MemLdI2 global_108
  loc_A20C15: CI4UI1
  loc_A20C16: FLdPr Me
  loc_A20C19: MemLdStr global_104
  loc_A20C1C: FLdPr Me
  loc_A20C1F: MemLdI2 global_100
  loc_A20C22: CI4UI1
  loc_A20C23: FLdPr Me
  loc_A20C26: MemLdStr global_96
  loc_A20C29: Ary1LdPr
  loc_A20C2A: MemLdStr global_124
  loc_A20C2D: Ary1LdPr
  loc_A20C2E: MemLdRfVar from_stack_1.global_96
  loc_A20C31: RedimPreserve
  loc_A20C3B: FLdRfVar var_A0
  loc_A20C3E: LitVarStr var_9C, "CodiFifu"
  loc_A20C43: PopAdLdVar
  loc_A20C44: FLdRfVar var_8C
  loc_A20C47: FLdRfVar var_88
  loc_A20C4A: FLdPr Me
  loc_A20C4D: MemLdRfVar from_stack_1.global_72
  loc_A20C50: NewIfNullPr clsimputacion
  loc_A20C53: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A20C58: FLdPr var_88
  loc_A20C5B:  = Me.Fields
  loc_A20C60: FLdPr var_8C
  loc_A20C63: from_stack_2 = Me.Item(from_stack_1)
  loc_A20C68: LitI2_Byte 0
  loc_A20C6A: LitVar_Missing var_D4
  loc_A20C6D: LitI2_Byte 0
  loc_A20C6F: FLdZeroAd var_A0
  loc_A20C72: CVarAd
  loc_A20C76: PopAdLdVar
  loc_A20C77: FLdPr Me
  loc_A20C7A: MemLdI2 global_108
  loc_A20C7D: CI4UI1
  loc_A20C7E: FLdPr Me
  loc_A20C81: MemLdStr global_104
  loc_A20C84: FLdPr Me
  loc_A20C87: MemLdI2 global_100
  loc_A20C8A: CI4UI1
  loc_A20C8B: FLdPr Me
  loc_A20C8E: MemLdStr global_96
  loc_A20C91: Ary1LdPr
  loc_A20C92: MemLdStr global_124
  loc_A20C95: Ary1LdPr
  loc_A20C96: MemLdStr global_96
  loc_A20C99: Ary1LdPr
  loc_A20C9A: MemLdRfVar from_stack_1.global_0
  loc_A20C9D: LdFixedStr
  loc_A20CA0: PopTmpLdAdStr
  loc_A20CA4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A20CA9: ILdRf var_A4
  loc_A20CAC: FLdPr Me
  loc_A20CAF: MemLdI2 global_108
  loc_A20CB2: CI4UI1
  loc_A20CB3: FLdPr Me
  loc_A20CB6: MemLdStr global_104
  loc_A20CB9: FLdPr Me
  loc_A20CBC: MemLdI2 global_100
  loc_A20CBF: CI4UI1
  loc_A20CC0: FLdPr Me
  loc_A20CC3: MemLdStr global_96
  loc_A20CC6: Ary1LdPr
  loc_A20CC7: MemLdStr global_124
  loc_A20CCA: Ary1LdPr
  loc_A20CCB: MemLdStr global_96
  loc_A20CCE: Ary1LdPr
  loc_A20CCF: MemLdRfVar from_stack_1.global_0
  loc_A20CD2: StFixedStr
  loc_A20CD5: FFree1Str var_A4
  loc_A20CD8: FFreeAd var_88 = ""
  loc_A20CDF: FFreeVar var_B4 = ""
  loc_A20CE6: FLdRfVar var_A0
  loc_A20CE9: LitVarStr var_9C, "DetaFifu"
  loc_A20CEE: PopAdLdVar
  loc_A20CEF: FLdRfVar var_8C
  loc_A20CF2: FLdRfVar var_88
  loc_A20CF5: FLdPr Me
  loc_A20CF8: MemLdRfVar from_stack_1.global_72
  loc_A20CFB: NewIfNullPr clsimputacion
  loc_A20CFE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A20D03: FLdPr var_88
  loc_A20D06:  = Me.Fields
  loc_A20D0B: FLdPr var_8C
  loc_A20D0E: from_stack_2 = Me.Item(from_stack_1)
  loc_A20D13: LitI2_Byte 0
  loc_A20D15: LitVar_Missing var_D4
  loc_A20D18: LitI2_Byte 0
  loc_A20D1A: FLdZeroAd var_A0
  loc_A20D1D: CVarAd
  loc_A20D21: PopAdLdVar
  loc_A20D22: FLdPr Me
  loc_A20D25: MemLdI2 global_108
  loc_A20D28: CI4UI1
  loc_A20D29: FLdPr Me
  loc_A20D2C: MemLdStr global_104
  loc_A20D2F: FLdPr Me
  loc_A20D32: MemLdI2 global_100
  loc_A20D35: CI4UI1
  loc_A20D36: FLdPr Me
  loc_A20D39: MemLdStr global_96
  loc_A20D3C: Ary1LdPr
  loc_A20D3D: MemLdStr global_124
  loc_A20D40: Ary1LdPr
  loc_A20D41: MemLdStr global_96
  loc_A20D44: Ary1LdPr
  loc_A20D45: MemLdRfVar from_stack_1.global_12
  loc_A20D48: LdFixedStr
  loc_A20D4B: PopTmpLdAdStr
  loc_A20D4F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A20D54: ILdRf var_A4
  loc_A20D57: FLdPr Me
  loc_A20D5A: MemLdI2 global_108
  loc_A20D5D: CI4UI1
  loc_A20D5E: FLdPr Me
  loc_A20D61: MemLdStr global_104
  loc_A20D64: FLdPr Me
  loc_A20D67: MemLdI2 global_100
  loc_A20D6A: CI4UI1
  loc_A20D6B: FLdPr Me
  loc_A20D6E: MemLdStr global_96
  loc_A20D71: Ary1LdPr
  loc_A20D72: MemLdStr global_124
  loc_A20D75: Ary1LdPr
  loc_A20D76: MemLdStr global_96
  loc_A20D79: Ary1LdPr
  loc_A20D7A: MemLdRfVar from_stack_1.global_12
  loc_A20D7D: StFixedStr
  loc_A20D80: FFree1Str var_A4
  loc_A20D83: FFreeAd var_88 = ""
  loc_A20D8A: FFreeVar var_B4 = ""
  loc_A20D91: Call Proc_185_42_AF8744()
  loc_A20D96: ExitProcHresult
End Function

Private Function Proc_185_42_AF8744() 'AF8744
  'Data Table: 4F1070
  loc_AF7FFC: FLdPr Me
  loc_AF7FFF: MemLdStr global_112
  loc_AF8002: LitI4 1
  loc_AF8007: AddI4
  loc_AF8008: FLdPr Me
  loc_AF800B: MemStI4 global_112
  loc_AF800E: LitI4 0
  loc_AF8013: FLdPr Me
  loc_AF8016: MemLdStr global_112
  loc_AF8019: FLdPr Me
  loc_AF801C: MemLdI2 global_108
  loc_AF801F: CI4UI1
  loc_AF8020: FLdPr Me
  loc_AF8023: MemLdStr global_104
  loc_AF8026: FLdPr Me
  loc_AF8029: MemLdI2 global_100
  loc_AF802C: CI4UI1
  loc_AF802D: FLdPr Me
  loc_AF8030: MemLdStr global_96
  loc_AF8033: Ary1LdPr
  loc_AF8034: MemLdStr global_124
  loc_AF8037: Ary1LdPr
  loc_AF8038: MemLdStr global_96
  loc_AF803B: Ary1LdPr
  loc_AF803C: MemLdRfVar from_stack_1.global_96
  loc_AF803F: RedimPreserve
  loc_AF8049: FLdPr Me
  loc_AF804C: MemLdStr global_112
  loc_AF804F: FLdPr Me
  loc_AF8052: MemLdI2 global_108
  loc_AF8055: CI4UI1
  loc_AF8056: FLdPr Me
  loc_AF8059: MemLdStr global_104
  loc_AF805C: FLdPr Me
  loc_AF805F: MemLdI2 global_100
  loc_AF8062: CI4UI1
  loc_AF8063: FLdPr Me
  loc_AF8066: MemLdStr global_96
  loc_AF8069: AryLock
  loc_AF806C: Ary1LdPr
  loc_AF806D: MemLdStr global_124
  loc_AF8070: AryLock
  loc_AF8073: Ary1LdPr
  loc_AF8074: MemLdStr global_96
  loc_AF8077: AryLock
  loc_AF807A: Ary1LdPr
  loc_AF807B: MemLdStr global_96
  loc_AF807E: AryLock
  loc_AF8081: Ary1LdRf
  loc_AF8082: FStR4 var_98
  loc_AF8085: FLdRfVar var_B4
  loc_AF8088: LitVarStr var_B0, "DetaImpu"
  loc_AF808D: PopAdLdVar
  loc_AF808E: FLdRfVar var_A0
  loc_AF8091: FLdRfVar var_9C
  loc_AF8094: FLdPr Me
  loc_AF8097: MemLdRfVar from_stack_1.global_72
  loc_AF809A: NewIfNullPr clsimputacion
  loc_AF809D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AF80A2: FLdPr var_9C
  loc_AF80A5:  = Me.Fields
  loc_AF80AA: FLdPr var_A0
  loc_AF80AD: from_stack_2 = Me.Item(from_stack_1)
  loc_AF80B2: LitI2_Byte 0
  loc_AF80B4: LitVar_Missing var_E4
  loc_AF80B7: LitI2_Byte 0
  loc_AF80B9: FLdZeroAd var_B4
  loc_AF80BC: CVarAd
  loc_AF80C0: PopAdLdVar
  loc_AF80C1: FMemLdRf unk_4F0FD9
  loc_AF80C6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF80CB: FFreeAd var_9C = ""
  loc_AF80D2: FFreeVar var_C4 = ""
  loc_AF80D9: FLdRfVar var_B4
  loc_AF80DC: LitVarStr var_B0, "ExorImpu"
  loc_AF80E1: PopAdLdVar
  loc_AF80E2: FLdRfVar var_A0
  loc_AF80E5: FLdRfVar var_9C
  loc_AF80E8: FLdPr Me
  loc_AF80EB: MemLdRfVar from_stack_1.global_72
  loc_AF80EE: NewIfNullPr clsimputacion
  loc_AF80F1: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AF80F6: FLdPr var_9C
  loc_AF80F9:  = Me.Fields
  loc_AF80FE: FLdPr var_A0
  loc_AF8101: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8106: LitI2_Byte 0
  loc_AF8108: LitVar_Missing var_E4
  loc_AF810B: LitI2_Byte 0
  loc_AF810D: FLdZeroAd var_B4
  loc_AF8110: CVarAd
  loc_AF8114: PopAdLdVar
  loc_AF8115: FMemLdRf unk_4F0FD9
  loc_AF811A: LdFixedStr
  loc_AF811D: PopTmpLdAdStr
  loc_AF8121: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF8126: ILdRf var_E8
  loc_AF8129: FMemLdRf unk_4F0FD9
  loc_AF812E: StFixedStr
  loc_AF8131: FFree1Str var_E8
  loc_AF8134: FFreeAd var_9C = ""
  loc_AF813B: FFreeVar var_C4 = ""
  loc_AF8142: FLdRfVar var_B4
  loc_AF8145: LitVarStr var_B0, "ExpeImpu"
  loc_AF814A: PopAdLdVar
  loc_AF814B: FLdRfVar var_A0
  loc_AF814E: FLdRfVar var_9C
  loc_AF8151: FLdPr Me
  loc_AF8154: MemLdRfVar from_stack_1.global_72
  loc_AF8157: NewIfNullPr clsimputacion
  loc_AF815A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AF815F: FLdPr var_9C
  loc_AF8162:  = Me.Fields
  loc_AF8167: FLdPr var_A0
  loc_AF816A: from_stack_2 = Me.Item(from_stack_1)
  loc_AF816F: LitI2_Byte 0
  loc_AF8171: LitVar_Missing var_E4
  loc_AF8174: LitI2_Byte 0
  loc_AF8176: FLdZeroAd var_B4
  loc_AF8179: CVarAd
  loc_AF817D: PopAdLdVar
  loc_AF817E: FMemLdRf unk_4F0FD9
  loc_AF8183: LdFixedStr
  loc_AF8186: PopTmpLdAdStr
  loc_AF818A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF818F: ILdRf var_E8
  loc_AF8192: FMemLdRf unk_4F0FD9
  loc_AF8197: StFixedStr
  loc_AF819A: FFree1Str var_E8
  loc_AF819D: FFreeAd var_9C = ""
  loc_AF81A4: FFreeVar var_C4 = ""
  loc_AF81AB: FLdRfVar var_B4
  loc_AF81AE: LitVarStr var_B0, "FechImpu"
  loc_AF81B3: PopAdLdVar
  loc_AF81B4: FLdRfVar var_A0
  loc_AF81B7: FLdRfVar var_9C
  loc_AF81BA: FLdPr Me
  loc_AF81BD: MemLdRfVar from_stack_1.global_72
  loc_AF81C0: NewIfNullPr clsimputacion
  loc_AF81C3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AF81C8: FLdPr var_9C
  loc_AF81CB:  = Me.Fields
  loc_AF81D0: FLdPr var_A0
  loc_AF81D3: from_stack_2 = Me.Item(from_stack_1)
  loc_AF81D8: LitI2_Byte 0
  loc_AF81DA: LitVar_Missing var_E4
  loc_AF81DD: LitI2_Byte 0
  loc_AF81DF: FLdZeroAd var_B4
  loc_AF81E2: CVarAd
  loc_AF81E6: PopAdLdVar
  loc_AF81E7: FMemLdRf unk_4F0FD9
  loc_AF81EC: LdFixedStr
  loc_AF81EF: PopTmpLdAdStr
  loc_AF81F3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF81F8: ILdRf var_E8
  loc_AF81FB: FMemLdRf unk_4F0FD9
  loc_AF8200: StFixedStr
  loc_AF8203: FFree1Str var_E8
  loc_AF8206: FFreeAd var_9C = ""
  loc_AF820D: FFreeVar var_C4 = ""
  loc_AF8214: FLdRfVar var_B4
  loc_AF8217: LitVarStr var_B0, "NumeImpu"
  loc_AF821C: PopAdLdVar
  loc_AF821D: FLdRfVar var_A0
  loc_AF8220: FLdRfVar var_9C
  loc_AF8223: FLdPr Me
  loc_AF8226: MemLdRfVar from_stack_1.global_72
  loc_AF8229: NewIfNullPr clsimputacion
  loc_AF822C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AF8231: FLdPr var_9C
  loc_AF8234:  = Me.Fields
  loc_AF8239: FLdPr var_A0
  loc_AF823C: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8241: LitI2_Byte 0
  loc_AF8243: LitVar_Missing var_E4
  loc_AF8246: LitI2_Byte 0
  loc_AF8248: FLdZeroAd var_B4
  loc_AF824B: CVarAd
  loc_AF824F: PopAdLdVar
  loc_AF8250: FMemLdRf unk_4F0FD9
  loc_AF8255: LdFixedStr
  loc_AF8258: PopTmpLdAdStr
  loc_AF825C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF8261: ILdRf var_E8
  loc_AF8264: FMemLdRf unk_4F0FD9
  loc_AF8269: StFixedStr
  loc_AF826C: FFree1Str var_E8
  loc_AF826F: FFreeAd var_9C = ""
  loc_AF8276: FFreeVar var_C4 = ""
  loc_AF827D: FLdRfVar var_C4
  loc_AF8280: FLdRfVar var_B4
  loc_AF8283: LitVarStr var_B0, "CucuPers"
  loc_AF8288: PopAdLdVar
  loc_AF8289: FLdRfVar var_A0
  loc_AF828C: FLdRfVar var_9C
  loc_AF828F: FLdPr Me
  loc_AF8292: MemLdRfVar from_stack_1.global_72
  loc_AF8295: NewIfNullPr clsimputacion
  loc_AF8298: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AF829D: FLdPr var_9C
  loc_AF82A0:  = Me.Fields
  loc_AF82A5: FLdPr var_A0
  loc_AF82A8: from_stack_2 = Me.Item(from_stack_1)
  loc_AF82AD: FLdPr var_B4
  loc_AF82B0:  = Me.Value
  loc_AF82B5: FLdRfVar var_114
  loc_AF82B8: FLdRfVar var_104
  loc_AF82BB: LitVarStr var_100, "DetaProv"
  loc_AF82C0: PopAdLdVar
  loc_AF82C1: FLdRfVar var_F0
  loc_AF82C4: FLdRfVar var_EC
  loc_AF82C7: FLdPr Me
  loc_AF82CA: MemLdRfVar from_stack_1.global_72
  loc_AF82CD: NewIfNullPr clsimputacion
  loc_AF82D0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AF82D5: FLdPr var_EC
  loc_AF82D8:  = Me.Fields
  loc_AF82DD: FLdPr var_F0
  loc_AF82E0: from_stack_2 = Me.Item(from_stack_1)
  loc_AF82E5: FLdPr var_104
  loc_AF82E8:  = Me.Value
  loc_AF82ED: LitI2_Byte 0
  loc_AF82EF: LitVar_Missing var_144
  loc_AF82F2: LitI2_Byte 0
  loc_AF82F4: FLdRfVar var_C4
  loc_AF82F7: LitVarStr var_D4, "-"
  loc_AF82FC: ConcatVar var_E4
  loc_AF8300: FLdRfVar var_114
  loc_AF8303: ConcatVar var_124
  loc_AF8307: PopAdLdVar
  loc_AF8308: FMemLdRf unk_4F0FD9
  loc_AF830D: LdFixedStr
  loc_AF8310: PopTmpLdAdStr
  loc_AF8314: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF8319: ILdRf var_E8
  loc_AF831C: FMemLdRf unk_4F0FD9
  loc_AF8321: StFixedStr
  loc_AF8324: FFree1Str var_E8
  loc_AF8327: FFreeAd var_9C = "": var_A0 = "": var_B4 = "": var_EC = "": var_F0 = ""
  loc_AF8336: FFreeVar var_C4 = "": var_E4 = "": var_114 = "": var_124 = ""
  loc_AF8343: FLdRfVar var_B4
  loc_AF8346: LitVarStr var_B0, "PrevImpu"
  loc_AF834B: PopAdLdVar
  loc_AF834C: FLdRfVar var_A0
  loc_AF834F: FLdRfVar var_9C
  loc_AF8352: FLdPr Me
  loc_AF8355: MemLdRfVar from_stack_1.global_72
  loc_AF8358: NewIfNullPr clsimputacion
  loc_AF835B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AF8360: FLdPr var_9C
  loc_AF8363:  = Me.Fields
  loc_AF8368: FLdPr var_A0
  loc_AF836B: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8370: LitI2_Byte 0
  loc_AF8372: FLdPr Me
  loc_AF8375: MemLdI2 global_108
  loc_AF8378: CI4UI1
  loc_AF8379: FLdPr Me
  loc_AF837C: MemLdStr global_104
  loc_AF837F: FLdPr Me
  loc_AF8382: MemLdI2 global_100
  loc_AF8385: CI4UI1
  loc_AF8386: FLdPr Me
  loc_AF8389: MemLdStr global_96
  loc_AF838C: AryLock
  loc_AF838F: Ary1LdPr
  loc_AF8390: MemLdStr global_124
  loc_AF8393: AryLock
  loc_AF8396: Ary1LdPr
  loc_AF8397: MemLdStr global_96
  loc_AF839A: AryLock
  loc_AF839D: Ary1LdPr
  loc_AF839E: MemLdRfVar from_stack_1.global_264
  loc_AF83A1: CVarRef
  loc_AF83A6: LitI2_Byte &HFF
  loc_AF83A8: FLdZeroAd var_B4
  loc_AF83AB: CVarAd
  loc_AF83AF: PopAdLdVar
  loc_AF83B0: FMemLdRf unk_4F0FD9
  loc_AF83B5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF83BA: AryUnlock
  loc_AF83BD: AryUnlock
  loc_AF83C0: AryUnlock
  loc_AF83C3: FFreeAd var_9C = ""
  loc_AF83CA: FFree1Var var_C4 = ""
  loc_AF83CD: FLdRfVar var_B4
  loc_AF83D0: LitVarStr var_B0, "DefiImpu"
  loc_AF83D5: PopAdLdVar
  loc_AF83D6: FLdRfVar var_A0
  loc_AF83D9: FLdRfVar var_9C
  loc_AF83DC: FLdPr Me
  loc_AF83DF: MemLdRfVar from_stack_1.global_72
  loc_AF83E2: NewIfNullPr clsimputacion
  loc_AF83E5: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AF83EA: FLdPr var_9C
  loc_AF83ED:  = Me.Fields
  loc_AF83F2: FLdPr var_A0
  loc_AF83F5: from_stack_2 = Me.Item(from_stack_1)
  loc_AF83FA: LitI2_Byte 0
  loc_AF83FC: FLdPr Me
  loc_AF83FF: MemLdI2 global_108
  loc_AF8402: CI4UI1
  loc_AF8403: FLdPr Me
  loc_AF8406: MemLdStr global_104
  loc_AF8409: FLdPr Me
  loc_AF840C: MemLdI2 global_100
  loc_AF840F: CI4UI1
  loc_AF8410: FLdPr Me
  loc_AF8413: MemLdStr global_96
  loc_AF8416: AryLock
  loc_AF8419: Ary1LdPr
  loc_AF841A: MemLdStr global_124
  loc_AF841D: AryLock
  loc_AF8420: Ary1LdPr
  loc_AF8421: MemLdStr global_96
  loc_AF8424: AryLock
  loc_AF8427: Ary1LdPr
  loc_AF8428: MemLdRfVar from_stack_1.global_268
  loc_AF842B: CVarRef
  loc_AF8430: LitI2_Byte &HFF
  loc_AF8432: FLdZeroAd var_B4
  loc_AF8435: CVarAd
  loc_AF8439: PopAdLdVar
  loc_AF843A: FMemLdRf unk_4F0FD9
  loc_AF843F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF8444: AryUnlock
  loc_AF8447: AryUnlock
  loc_AF844A: AryUnlock
  loc_AF844D: FFreeAd var_9C = ""
  loc_AF8454: FFree1Var var_C4 = ""
  loc_AF8457: FLdRfVar var_B4
  loc_AF845A: LitVarStr var_B0, "DeveImpu"
  loc_AF845F: PopAdLdVar
  loc_AF8460: FLdRfVar var_A0
  loc_AF8463: FLdRfVar var_9C
  loc_AF8466: FLdPr Me
  loc_AF8469: MemLdRfVar from_stack_1.global_72
  loc_AF846C: NewIfNullPr clsimputacion
  loc_AF846F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AF8474: FLdPr var_9C
  loc_AF8477:  = Me.Fields
  loc_AF847C: FLdPr var_A0
  loc_AF847F: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8484: LitI2_Byte 0
  loc_AF8486: FLdPr Me
  loc_AF8489: MemLdI2 global_108
  loc_AF848C: CI4UI1
  loc_AF848D: FLdPr Me
  loc_AF8490: MemLdStr global_104
  loc_AF8493: FLdPr Me
  loc_AF8496: MemLdI2 global_100
  loc_AF8499: CI4UI1
  loc_AF849A: FLdPr Me
  loc_AF849D: MemLdStr global_96
  loc_AF84A0: AryLock
  loc_AF84A3: Ary1LdPr
  loc_AF84A4: MemLdStr global_124
  loc_AF84A7: AryLock
  loc_AF84AA: Ary1LdPr
  loc_AF84AB: MemLdStr global_96
  loc_AF84AE: AryLock
  loc_AF84B1: Ary1LdPr
  loc_AF84B2: MemLdRfVar from_stack_1.global_272
  loc_AF84B5: CVarRef
  loc_AF84BA: LitI2_Byte &HFF
  loc_AF84BC: FLdZeroAd var_B4
  loc_AF84BF: CVarAd
  loc_AF84C3: PopAdLdVar
  loc_AF84C4: FMemLdRf unk_4F0FD9
  loc_AF84C9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF84CE: AryUnlock
  loc_AF84D1: AryUnlock
  loc_AF84D4: AryUnlock
  loc_AF84D7: FFreeAd var_9C = ""
  loc_AF84DE: FFree1Var var_C4 = ""
  loc_AF84E1: FLdRfVar var_B4
  loc_AF84E4: LitVarStr var_B0, "MapaImpu"
  loc_AF84E9: PopAdLdVar
  loc_AF84EA: FLdRfVar var_A0
  loc_AF84ED: FLdRfVar var_9C
  loc_AF84F0: FLdPr Me
  loc_AF84F3: MemLdRfVar from_stack_1.global_72
  loc_AF84F6: NewIfNullPr clsimputacion
  loc_AF84F9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AF84FE: FLdPr var_9C
  loc_AF8501:  = Me.Fields
  loc_AF8506: FLdPr var_A0
  loc_AF8509: from_stack_2 = Me.Item(from_stack_1)
  loc_AF850E: LitI2_Byte 0
  loc_AF8510: FLdPr Me
  loc_AF8513: MemLdI2 global_108
  loc_AF8516: CI4UI1
  loc_AF8517: FLdPr Me
  loc_AF851A: MemLdStr global_104
  loc_AF851D: FLdPr Me
  loc_AF8520: MemLdI2 global_100
  loc_AF8523: CI4UI1
  loc_AF8524: FLdPr Me
  loc_AF8527: MemLdStr global_96
  loc_AF852A: AryLock
  loc_AF852D: Ary1LdPr
  loc_AF852E: MemLdStr global_124
  loc_AF8531: AryLock
  loc_AF8534: Ary1LdPr
  loc_AF8535: MemLdStr global_96
  loc_AF8538: AryLock
  loc_AF853B: Ary1LdPr
  loc_AF853C: MemLdRfVar from_stack_1.global_276
  loc_AF853F: CVarRef
  loc_AF8544: LitI2_Byte &HFF
  loc_AF8546: FLdZeroAd var_B4
  loc_AF8549: CVarAd
  loc_AF854D: PopAdLdVar
  loc_AF854E: FMemLdRf unk_4F0FD9
  loc_AF8553: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF8558: AryUnlock
  loc_AF855B: AryUnlock
  loc_AF855E: AryUnlock
  loc_AF8561: FFreeAd var_9C = ""
  loc_AF8568: FFree1Var var_C4 = ""
  loc_AF856B: FLdRfVar var_B4
  loc_AF856E: LitVarStr var_B0, "PagaImpu"
  loc_AF8573: PopAdLdVar
  loc_AF8574: FLdRfVar var_A0
  loc_AF8577: FLdRfVar var_9C
  loc_AF857A: FLdPr Me
  loc_AF857D: MemLdRfVar from_stack_1.global_72
  loc_AF8580: NewIfNullPr clsimputacion
  loc_AF8583: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AF8588: FLdPr var_9C
  loc_AF858B:  = Me.Fields
  loc_AF8590: FLdPr var_A0
  loc_AF8593: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8598: LitI2_Byte 0
  loc_AF859A: FLdPr Me
  loc_AF859D: MemLdI2 global_108
  loc_AF85A0: CI4UI1
  loc_AF85A1: FLdPr Me
  loc_AF85A4: MemLdStr global_104
  loc_AF85A7: FLdPr Me
  loc_AF85AA: MemLdI2 global_100
  loc_AF85AD: CI4UI1
  loc_AF85AE: FLdPr Me
  loc_AF85B1: MemLdStr global_96
  loc_AF85B4: AryLock
  loc_AF85B7: Ary1LdPr
  loc_AF85B8: MemLdStr global_124
  loc_AF85BB: AryLock
  loc_AF85BE: Ary1LdPr
  loc_AF85BF: MemLdStr global_96
  loc_AF85C2: AryLock
  loc_AF85C5: Ary1LdPr
  loc_AF85C6: MemLdRfVar from_stack_1.global_280
  loc_AF85C9: CVarRef
  loc_AF85CE: LitI2_Byte &HFF
  loc_AF85D0: FLdZeroAd var_B4
  loc_AF85D3: CVarAd
  loc_AF85D7: PopAdLdVar
  loc_AF85D8: FMemLdRf unk_4F0FD9
  loc_AF85DD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF85E2: AryUnlock
  loc_AF85E5: AryUnlock
  loc_AF85E8: AryUnlock
  loc_AF85EB: FFreeAd var_9C = ""
  loc_AF85F2: FFree1Var var_C4 = ""
  loc_AF85F5: FMemLdR4 var_98(176)
  loc_AF85FA: CR8Str
  loc_AF85FC: LitI2_Byte 0
  loc_AF85FE: CR8I2
  loc_AF85FF: NeR8
  loc_AF8600: BranchF loc_AF8661
  loc_AF8603: FLdRfVar var_B4
  loc_AF8606: LitVarStr var_B0, "NumeOrpa"
  loc_AF860B: PopAdLdVar
  loc_AF860C: FLdRfVar var_A0
  loc_AF860F: FLdRfVar var_9C
  loc_AF8612: FLdPr Me
  loc_AF8615: MemLdRfVar from_stack_1.global_72
  loc_AF8618: NewIfNullPr clsimputacion
  loc_AF861B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AF8620: FLdPr var_9C
  loc_AF8623:  = Me.Fields
  loc_AF8628: FLdPr var_A0
  loc_AF862B: from_stack_2 = Me.Item(from_stack_1)
  loc_AF8630: LitI2_Byte 0
  loc_AF8632: LitVar_Missing var_E4
  loc_AF8635: LitI2_Byte 0
  loc_AF8637: FLdZeroAd var_B4
  loc_AF863A: CVarAd
  loc_AF863E: PopAdLdVar
  loc_AF863F: FMemLdRf unk_4F0FD9
  loc_AF8644: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF8649: FFreeAd var_9C = ""
  loc_AF8650: FFreeVar var_C4 = ""
  loc_AF8657: LitI2_Byte 4
  loc_AF8659: CUI1I2
  loc_AF865B: FMemStUI1 var_98(192)
  loc_AF8661: FMemLdR4 var_98(180)
  loc_AF8666: CR8Str
  loc_AF8668: LitI2_Byte 0
  loc_AF866A: CR8I2
  loc_AF866B: NeR8
  loc_AF866C: BranchF loc_AF8721
  loc_AF866F: FLdRfVar var_B4
  loc_AF8672: LitVarStr var_B0, "ArchOrpa"
  loc_AF8677: PopAdLdVar
  loc_AF8678: FLdRfVar var_A0
  loc_AF867B: FLdRfVar var_9C
  loc_AF867E: FLdPr Me
  loc_AF8681: MemLdRfVar from_stack_1.global_72
  loc_AF8684: NewIfNullPr clsimputacion
  loc_AF8687: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AF868C: FLdPr var_9C
  loc_AF868F:  = Me.Fields
  loc_AF8694: FLdPr var_A0
  loc_AF8697: from_stack_2 = Me.Item(from_stack_1)
  loc_AF869C: LitI2_Byte 0
  loc_AF869E: LitVar_Missing var_E4
  loc_AF86A1: LitI2_Byte 0
  loc_AF86A3: FLdZeroAd var_B4
  loc_AF86A6: CVarAd
  loc_AF86AA: PopAdLdVar
  loc_AF86AB: FMemLdRf unk_4F0FD9
  loc_AF86B0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF86B5: FFreeAd var_9C = ""
  loc_AF86BC: FFreeVar var_C4 = ""
  loc_AF86C3: LitI2_Byte 5
  loc_AF86C5: CUI1I2
  loc_AF86C7: FMemStUI1 var_98(192)
  loc_AF86CD: FLdRfVar var_B4
  loc_AF86D0: LitVarStr var_B0, "NumeOrpa"
  loc_AF86D5: PopAdLdVar
  loc_AF86D6: FLdRfVar var_A0
  loc_AF86D9: FLdRfVar var_9C
  loc_AF86DC: FLdPr Me
  loc_AF86DF: MemLdRfVar from_stack_1.global_72
  loc_AF86E2: NewIfNullPr clsimputacion
  loc_AF86E5: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AF86EA: FLdPr var_9C
  loc_AF86ED:  = Me.Fields
  loc_AF86F2: FLdPr var_A0
  loc_AF86F5: from_stack_2 = Me.Item(from_stack_1)
  loc_AF86FA: LitI2_Byte 0
  loc_AF86FC: LitVar_Missing var_E4
  loc_AF86FF: LitI2_Byte 0
  loc_AF8701: FLdZeroAd var_B4
  loc_AF8704: CVarAd
  loc_AF8708: PopAdLdVar
  loc_AF8709: FMemLdRf unk_4F0FD9
  loc_AF870E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF8713: FFreeAd var_9C = ""
  loc_AF871A: FFreeVar var_C4 = ""
  loc_AF8721: LitI4 0
  loc_AF8726: FStR4 var_98
  loc_AF8729: AryUnlock
  loc_AF872C: AryUnlock
  loc_AF872F: AryUnlock
  loc_AF8732: AryUnlock
  loc_AF8735: FLdPr Me
  loc_AF8738: MemLdRfVar from_stack_1.global_72
  loc_AF873B: NewIfNullPr clsimputacion
  loc_AF873E: Call clsimputacion.MoveSiguiente()
  loc_AF8743: ExitProcHresult
End Function

Private Function Proc_185_43_B5A81C(arg_C) 'B5A81C
  'Data Table: 4F1070
  loc_B59D60: FLdI2 arg_C
  loc_B59D63: BranchF loc_B59E08
  loc_B59D66: LitI2_Byte 0
  loc_B59D68: LitI2_Byte &HFF
  loc_B59D6A: ILdRf Me
  loc_B59D6D: CastAd
  loc_B59D70: FStAdFunc var_8C
  loc_B59D73: FLdRfVar var_8C
  loc_B59D76: ImpAdCallI2 Proc_261_18_A59F84(, , )
  loc_B59D7B: NotI4
  loc_B59D7C: FFree1Ad var_8C
  loc_B59D7F: BranchF loc_B59D83
  loc_B59D82: ExitProcHresult
  loc_B59D83: ImpAdLdI4 MemVar_C3D05C
  loc_B59D86: FnLenStr
  loc_B59D87: LitI4 4
  loc_B59D8C: SubI4
  loc_B59D8D: ImpAdLdI4 MemVar_C3D05C
  loc_B59D90: ImpAdCallI2 Left$(, )
  loc_B59D95: ImpAdStStr MemVar_C3D05C
  loc_B59D99: LitVarStr var_9C, "Generando PDF..."
  loc_B59D9E: PopAdLdVar
  loc_B59D9F: FLdPr Me
  loc_B59DA2: VCallAd Control_ID_statusBar
  loc_B59DA5: FStAdFunc var_8C
  loc_B59DA8: FLdPr var_8C
  loc_B59DAB: LateIdSt
  loc_B59DB0: FFree1Ad var_8C
  loc_B59DB3: FLdRfVar var_8C
  loc_B59DB6: ImpAdLdRf MemVar_C44F9C
  loc_B59DB9: NewIfNullPr Me
  loc_B59DBC:  = Me.Global.Printer
  loc_B59DC1: FLdPr var_8C
  loc_B59DC4: LateIdLdVar var_BC DispID_28 1
  loc_B59DCB: CStrVarTmp
  loc_B59DCC: FStStr var_88
  loc_B59DCF: FFree1Ad var_8C
  loc_B59DD2: FFree1Var var_BC = ""
  loc_B59DD5: LitStr "PDFCreator"
  loc_B59DD8: ImpAdCallI2 Proc_261_24_A3529C()
  loc_B59DDD: FStStr var_C0
  loc_B59DE0: FFree1Str var_C0
  loc_B59DE3: LitI2_Byte 0
  loc_B59DE5: ImpAdCallFPR4 Proc_263_14_A22CCC()
  loc_B59DEA: LitStr "HKEY_CURRENT_USER\Software\PDFCreator\Program\"
  loc_B59DED: FLdPr Me
  loc_B59DF0: MemStStrCopy
  loc_B59DF4: LitStr "0"
  loc_B59DF7: LitStr "AutosaveStartStandardProgram"
  loc_B59DFA: FLdPr Me
  loc_B59DFD: MemLdStr global_132
  loc_B59E00: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_B59E05: Branch loc_B59E22
  loc_B59E08: LitVarStr var_9C, "Enviando a impresora predeterminada..."
  loc_B59E0D: PopAdLdVar
  loc_B59E0E: FLdPr Me
  loc_B59E11: VCallAd Control_ID_statusBar
  loc_B59E14: FStAdFunc var_8C
  loc_B59E17: FLdPr var_8C
  loc_B59E1A: LateIdSt
  loc_B59E1F: FFree1Ad var_8C
  loc_B59E22: ILdRf Me
  loc_B59E25: CastAd
  loc_B59E28: FStAdFunc var_8C
  loc_B59E2B: FLdRfVar var_8C
  loc_B59E2E: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_B59E33: FFree1Ad var_8C
  loc_B59E36: Call GeneraReporte()
  loc_B59E3B: FLdPr Me
  loc_B59E3E: MemLdI2 bGenerado
  loc_B59E41: BranchF loc_B5A7E6
  loc_B59E44: LitI4 0
  loc_B59E49: FLdPr Me
  loc_B59E4C: MemStI4 global_116
  loc_B59E4F: LitI4 0
  loc_B59E54: FLdPr Me
  loc_B59E57: MemStI4 global_120
  loc_B59E5A: LitI4 &H3A98
  loc_B59E5F: CR8I4
  loc_B59E60: CVarR4
  loc_B59E64: PopAdLdVar
  loc_B59E65: FLdPr Me
  loc_B59E68: VCallAd Control_ID_pbar
  loc_B59E6B: FStAdFunc var_8C
  loc_B59E6E: FLdPr var_8C
  loc_B59E71: LateIdSt
  loc_B59E76: FFree1Ad var_8C
  loc_B59E79: LitVar_TRUE var_9C
  loc_B59E7C: PopAdLdVar
  loc_B59E7D: FLdPr Me
  loc_B59E80: VCallAd Control_ID_pbar
  loc_B59E83: FStAdFunc var_8C
  loc_B59E86: FLdPr var_8C
  loc_B59E89: LateIdSt
  loc_B59E8E: FFree1Ad var_8C
  loc_B59E91: LitI2_Byte &HFF
  loc_B59E93: FLdPr Me
  loc_B59E96: VCallAd Control_ID_PartidaLbl
  loc_B59E99: FStAdFunc var_8C
  loc_B59E9C: FLdPr var_8C
  loc_B59E9F: Me.Visible = from_stack_1b
  loc_B59EA4: FFree1Ad var_8C
  loc_B59EA7: FLdPr Me
  loc_B59EAA: MemLdStr global_120
  loc_B59EAD: CStrI4
  loc_B59EAF: PopTmpLdAdStr
  loc_B59EB3: ImpAdCallFPR4 Proc_263_13_99E450()
  loc_B59EB8: FFree1Str var_C0
  loc_B59EBB: FLdRfVar var_8C
  loc_B59EBE: LitI2_Byte 0
  loc_B59EC0: LitI2_Byte &HFF
  loc_B59EC2: ImpAdLdI4 MemVar_C3D83C
  loc_B59EC5: FLdPr Me
  loc_B59EC8: MemLdRfVar from_stack_1.global_76
  loc_B59ECB: NewIfNullPr IFileSystem3
  loc_B59ECE: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B59ED3: ILdRf var_8C
  loc_B59ED6: FLdPr Me
  loc_B59ED9: MemStVarAd
  loc_B59EDD: FFree1Ad var_8C
  loc_B59EE0: Call Proc_185_45_96B270()
  loc_B59EE5: LitI2_Byte 1
  loc_B59EE7: FLdPr Me
  loc_B59EEA: MemLdRfVar from_stack_1.global_100
  loc_B59EED: FLdPr Me
  loc_B59EF0: MemLdStr global_96
  loc_B59EF3: LitI2_Byte 1
  loc_B59EF5: FnUBound
  loc_B59EF7: CI2I4
  loc_B59EF8: ForI2 var_C4
  loc_B59EFE: Call Proc_185_46_A29434()
  loc_B59F03: LitI4 1
  loc_B59F08: FLdPr Me
  loc_B59F0B: MemLdRfVar from_stack_1.global_104
  loc_B59F0E: FLdPr Me
  loc_B59F11: MemLdI2 global_100
  loc_B59F14: CI4UI1
  loc_B59F15: FLdPr Me
  loc_B59F18: MemLdStr global_96
  loc_B59F1B: Ary1LdPr
  loc_B59F1C: MemLdStr global_124
  loc_B59F1F: LitI2_Byte 1
  loc_B59F21: FnUBound
  loc_B59F23: ForI4 var_CC
  loc_B59F29: Call Proc_185_47_A2DD2C()
  loc_B59F2E: LitI2_Byte 1
  loc_B59F30: FLdPr Me
  loc_B59F33: MemLdRfVar from_stack_1.global_108
  loc_B59F36: FLdPr Me
  loc_B59F39: MemLdStr global_104
  loc_B59F3C: FLdPr Me
  loc_B59F3F: MemLdI2 global_100
  loc_B59F42: CI4UI1
  loc_B59F43: FLdPr Me
  loc_B59F46: MemLdStr global_96
  loc_B59F49: Ary1LdPr
  loc_B59F4A: MemLdStr global_124
  loc_B59F4D: Ary1LdPr
  loc_B59F4E: MemLdStr global_96
  loc_B59F51: LitI2_Byte 1
  loc_B59F53: FnUBound
  loc_B59F55: CI2I4
  loc_B59F56: ForI2 var_D0
  loc_B59F5C: Call Proc_185_48_A37884()
  loc_B59F61: LitI4 1
  loc_B59F66: FLdPr Me
  loc_B59F69: MemLdRfVar from_stack_1.global_112
  loc_B59F6C: FLdPr Me
  loc_B59F6F: MemLdI2 global_108
  loc_B59F72: CI4UI1
  loc_B59F73: FLdPr Me
  loc_B59F76: MemLdStr global_104
  loc_B59F79: FLdPr Me
  loc_B59F7C: MemLdI2 global_100
  loc_B59F7F: CI4UI1
  loc_B59F80: FLdPr Me
  loc_B59F83: MemLdStr global_96
  loc_B59F86: Ary1LdPr
  loc_B59F87: MemLdStr global_124
  loc_B59F8A: Ary1LdPr
  loc_B59F8B: MemLdStr global_96
  loc_B59F8E: Ary1LdPr
  loc_B59F8F: MemLdStr global_96
  loc_B59F92: LitI2_Byte 1
  loc_B59F94: FnUBound
  loc_B59F96: ForI4 var_D8
  loc_B59F9C: Call Proc_185_49_AAAEF0()
  loc_B59FA1: FLdPr Me
  loc_B59FA4: MemLdStr global_116
  loc_B59FA7: LitI4 &H3A98
  loc_B59FAC: GeI4
  loc_B59FAD: FLdPr Me
  loc_B59FB0: MemLdStr global_112
  loc_B59FB3: FLdPr Me
  loc_B59FB6: MemLdI2 global_108
  loc_B59FB9: CI4UI1
  loc_B59FBA: FLdPr Me
  loc_B59FBD: MemLdStr global_104
  loc_B59FC0: FLdPr Me
  loc_B59FC3: MemLdI2 global_100
  loc_B59FC6: CI4UI1
  loc_B59FC7: FLdPr Me
  loc_B59FCA: MemLdStr global_96
  loc_B59FCD: Ary1LdPr
  loc_B59FCE: MemLdStr global_124
  loc_B59FD1: Ary1LdPr
  loc_B59FD2: MemLdStr global_96
  loc_B59FD5: Ary1LdPr
  loc_B59FD6: MemLdStr global_96
  loc_B59FD9: LitI2_Byte 1
  loc_B59FDB: FnUBound
  loc_B59FDD: EqI4
  loc_B59FDE: FLdPr Me
  loc_B59FE1: MemLdStr global_116
  loc_B59FE4: FLdPr Me
  loc_B59FE7: MemLdI2 global_108
  loc_B59FEA: CI4UI1
  loc_B59FEB: FLdPr Me
  loc_B59FEE: MemLdStr global_104
  loc_B59FF1: FLdPr Me
  loc_B59FF4: MemLdI2 global_100
  loc_B59FF7: CI4UI1
  loc_B59FF8: FLdPr Me
  loc_B59FFB: MemLdStr global_96
  loc_B59FFE: Ary1LdPr
  loc_B59FFF: MemLdStr global_124
  loc_B5A002: Ary1LdPr
  loc_B5A003: MemLdStr global_96
  loc_B5A006: Ary1LdPr
  loc_B5A007: MemLdStr global_96
  loc_B5A00A: LitI2_Byte 1
  loc_B5A00C: FnUBound
  loc_B5A00E: AddI4
  loc_B5A00F: FLdPr Me
  loc_B5A012: MemLdStr global_112
  loc_B5A015: SubI4
  loc_B5A016: CR8I4
  loc_B5A017: LitI4 &H3A98
  loc_B5A01C: CR8I4
  loc_B5A01D: LitDate 1.2
  loc_B5A026: MulR8
  loc_B5A027: CR8R8
  loc_B5A028: GeR8
  loc_B5A029: OrI4
  loc_B5A02A: AndI4
  loc_B5A02B: BranchF loc_B5A66B
  loc_B5A02E: FLdPr Me
  loc_B5A031: MemLdStr global_112
  loc_B5A034: FLdPr Me
  loc_B5A037: MemLdI2 global_108
  loc_B5A03A: CI4UI1
  loc_B5A03B: FLdPr Me
  loc_B5A03E: MemLdStr global_104
  loc_B5A041: FLdPr Me
  loc_B5A044: MemLdI2 global_100
  loc_B5A047: CI4UI1
  loc_B5A048: FLdPr Me
  loc_B5A04B: MemLdStr global_96
  loc_B5A04E: Ary1LdPr
  loc_B5A04F: MemLdStr global_124
  loc_B5A052: Ary1LdPr
  loc_B5A053: MemLdStr global_96
  loc_B5A056: Ary1LdPr
  loc_B5A057: MemLdStr global_96
  loc_B5A05A: LitI2_Byte 1
  loc_B5A05C: FnUBound
  loc_B5A05E: NeI4
  loc_B5A05F: BranchF loc_B5A11D
  loc_B5A062: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B5A067: PopAdLdVar
  loc_B5A068: FLdPr Me
  loc_B5A06B: MemLdRfVar from_stack_1.htmFile
  loc_B5A06E: LdPrVar
  loc_B5A070: LateMemCall
  loc_B5A076: LitStr "    <th colspan=""11"" class=""Normal"">La Finalidad '"
  loc_B5A079: FLdPr Me
  loc_B5A07C: MemLdI2 global_108
  loc_B5A07F: CI4UI1
  loc_B5A080: FLdPr Me
  loc_B5A083: MemLdStr global_104
  loc_B5A086: FLdPr Me
  loc_B5A089: MemLdI2 global_100
  loc_B5A08C: CI4UI1
  loc_B5A08D: FLdPr Me
  loc_B5A090: MemLdStr global_96
  loc_B5A093: Ary1LdPr
  loc_B5A094: MemLdStr global_124
  loc_B5A097: Ary1LdPr
  loc_B5A098: MemLdStr global_96
  loc_B5A09B: Ary1LdPr
  loc_B5A09C: MemLdRfVar from_stack_1.global_0
  loc_B5A09F: LdFixedStr
  loc_B5A0A2: FStStrNoPop var_C0
  loc_B5A0A5: ConcatStr
  loc_B5A0A6: FStStrNoPop var_DC
  loc_B5A0A9: LitStr " - "
  loc_B5A0AC: ConcatStr
  loc_B5A0AD: FStStrNoPop var_E0
  loc_B5A0B0: FLdPr Me
  loc_B5A0B3: MemLdI2 global_108
  loc_B5A0B6: CI4UI1
  loc_B5A0B7: FLdPr Me
  loc_B5A0BA: MemLdStr global_104
  loc_B5A0BD: FLdPr Me
  loc_B5A0C0: MemLdI2 global_100
  loc_B5A0C3: CI4UI1
  loc_B5A0C4: FLdPr Me
  loc_B5A0C7: MemLdStr global_96
  loc_B5A0CA: Ary1LdPr
  loc_B5A0CB: MemLdStr global_124
  loc_B5A0CE: Ary1LdPr
  loc_B5A0CF: MemLdStr global_96
  loc_B5A0D2: Ary1LdPr
  loc_B5A0D3: MemLdRfVar from_stack_1.global_12
  loc_B5A0D6: LdFixedStr
  loc_B5A0D9: FStStrNoPop var_E4
  loc_B5A0DC: ConcatStr
  loc_B5A0DD: FStStrNoPop var_E8
  loc_B5A0E0: LitStr "' continúa en el próximo tomo.</th>"
  loc_B5A0E3: ConcatStr
  loc_B5A0E4: CVarStr var_BC
  loc_B5A0E7: PopAdLdVar
  loc_B5A0E8: FLdPr Me
  loc_B5A0EB: MemLdRfVar from_stack_1.htmFile
  loc_B5A0EE: LdPrVar
  loc_B5A0F0: LateMemCall
  loc_B5A0F6: FFreeStr var_C0 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_B5A103: FFree1Var var_BC = ""
  loc_B5A106: LitVarStr var_9C, "     </tr>"
  loc_B5A10B: PopAdLdVar
  loc_B5A10C: FLdPr Me
  loc_B5A10F: MemLdRfVar from_stack_1.htmFile
  loc_B5A112: LdPrVar
  loc_B5A114: LateMemCall
  loc_B5A11A: Branch loc_B5A299
  loc_B5A11D: FLdPr Me
  loc_B5A120: MemLdI2 global_108
  loc_B5A123: CI4UI1
  loc_B5A124: FLdPr Me
  loc_B5A127: MemLdStr global_104
  loc_B5A12A: FLdPr Me
  loc_B5A12D: MemLdI2 global_100
  loc_B5A130: CI4UI1
  loc_B5A131: FLdPr Me
  loc_B5A134: MemLdStr global_96
  loc_B5A137: Ary1LdPr
  loc_B5A138: MemLdStr global_124
  loc_B5A13B: Ary1LdPr
  loc_B5A13C: MemLdStr global_96
  loc_B5A13F: LitI2_Byte 1
  loc_B5A141: FnUBound
  loc_B5A143: NeI4
  loc_B5A144: BranchF loc_B5A1EC
  loc_B5A147: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B5A14C: PopAdLdVar
  loc_B5A14D: FLdPr Me
  loc_B5A150: MemLdRfVar from_stack_1.htmFile
  loc_B5A153: LdPrVar
  loc_B5A155: LateMemCall
  loc_B5A15B: LitStr "    <th colspan=""11"" class=""Normal"">El Organigrama '"
  loc_B5A15E: FLdPr Me
  loc_B5A161: MemLdStr global_104
  loc_B5A164: FLdPr Me
  loc_B5A167: MemLdI2 global_100
  loc_B5A16A: CI4UI1
  loc_B5A16B: FLdPr Me
  loc_B5A16E: MemLdStr global_96
  loc_B5A171: Ary1LdPr
  loc_B5A172: MemLdStr global_124
  loc_B5A175: Ary1LdPr
  loc_B5A176: MemLdRfVar from_stack_1.global_0
  loc_B5A179: LdFixedStr
  loc_B5A17C: FStStrNoPop var_C0
  loc_B5A17F: ConcatStr
  loc_B5A180: FStStrNoPop var_DC
  loc_B5A183: LitStr " - "
  loc_B5A186: ConcatStr
  loc_B5A187: FStStrNoPop var_E0
  loc_B5A18A: FLdPr Me
  loc_B5A18D: MemLdStr global_104
  loc_B5A190: FLdPr Me
  loc_B5A193: MemLdI2 global_100
  loc_B5A196: CI4UI1
  loc_B5A197: FLdPr Me
  loc_B5A19A: MemLdStr global_96
  loc_B5A19D: Ary1LdPr
  loc_B5A19E: MemLdStr global_124
  loc_B5A1A1: Ary1LdPr
  loc_B5A1A2: MemLdRfVar from_stack_1.global_12
  loc_B5A1A5: LdFixedStr
  loc_B5A1A8: FStStrNoPop var_E4
  loc_B5A1AB: ConcatStr
  loc_B5A1AC: FStStrNoPop var_E8
  loc_B5A1AF: LitStr "' continúa en el próximo tomo.</th>"
  loc_B5A1B2: ConcatStr
  loc_B5A1B3: CVarStr var_BC
  loc_B5A1B6: PopAdLdVar
  loc_B5A1B7: FLdPr Me
  loc_B5A1BA: MemLdRfVar from_stack_1.htmFile
  loc_B5A1BD: LdPrVar
  loc_B5A1BF: LateMemCall
  loc_B5A1C5: FFreeStr var_C0 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_B5A1D2: FFree1Var var_BC = ""
  loc_B5A1D5: LitVarStr var_9C, "     </tr>"
  loc_B5A1DA: PopAdLdVar
  loc_B5A1DB: FLdPr Me
  loc_B5A1DE: MemLdRfVar from_stack_1.htmFile
  loc_B5A1E1: LdPrVar
  loc_B5A1E3: LateMemCall
  loc_B5A1E9: Branch loc_B5A299
  loc_B5A1EC: FLdPr Me
  loc_B5A1EF: MemLdStr global_104
  loc_B5A1F2: FLdPr Me
  loc_B5A1F5: MemLdI2 global_100
  loc_B5A1F8: CI4UI1
  loc_B5A1F9: FLdPr Me
  loc_B5A1FC: MemLdStr global_96
  loc_B5A1FF: Ary1LdPr
  loc_B5A200: MemLdStr global_124
  loc_B5A203: LitI2_Byte 1
  loc_B5A205: FnUBound
  loc_B5A207: NeI4
  loc_B5A208: BranchF loc_B5A299
  loc_B5A20B: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B5A210: PopAdLdVar
  loc_B5A211: FLdPr Me
  loc_B5A214: MemLdRfVar from_stack_1.htmFile
  loc_B5A217: LdPrVar
  loc_B5A219: LateMemCall
  loc_B5A21F: LitStr "    <th colspan=""11"" class=""Normal"">La Partida '"
  loc_B5A222: FLdPr Me
  loc_B5A225: MemLdI2 global_100
  loc_B5A228: CI4UI1
  loc_B5A229: FLdPr Me
  loc_B5A22C: MemLdStr global_96
  loc_B5A22F: Ary1LdPr
  loc_B5A230: MemLdRfVar from_stack_1.global_0
  loc_B5A233: LdFixedStr
  loc_B5A236: FStStrNoPop var_C0
  loc_B5A239: ConcatStr
  loc_B5A23A: FStStrNoPop var_DC
  loc_B5A23D: LitStr " - "
  loc_B5A240: ConcatStr
  loc_B5A241: FStStrNoPop var_E0
  loc_B5A244: FLdPr Me
  loc_B5A247: MemLdI2 global_100
  loc_B5A24A: CI4UI1
  loc_B5A24B: FLdPr Me
  loc_B5A24E: MemLdStr global_96
  loc_B5A251: Ary1LdPr
  loc_B5A252: MemLdRfVar from_stack_1.global_16
  loc_B5A255: LdFixedStr
  loc_B5A258: FStStrNoPop var_E4
  loc_B5A25B: ConcatStr
  loc_B5A25C: FStStrNoPop var_E8
  loc_B5A25F: LitStr "' continúa en el próximo tomo.</th>"
  loc_B5A262: ConcatStr
  loc_B5A263: CVarStr var_BC
  loc_B5A266: PopAdLdVar
  loc_B5A267: FLdPr Me
  loc_B5A26A: MemLdRfVar from_stack_1.htmFile
  loc_B5A26D: LdPrVar
  loc_B5A26F: LateMemCall
  loc_B5A275: FFreeStr var_C0 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_B5A282: FFree1Var var_BC = ""
  loc_B5A285: LitVarStr var_9C, "     </tr>"
  loc_B5A28A: PopAdLdVar
  loc_B5A28B: FLdPr Me
  loc_B5A28E: MemLdRfVar from_stack_1.htmFile
  loc_B5A291: LdPrVar
  loc_B5A293: LateMemCall
  loc_B5A299: LitI4 0
  loc_B5A29E: FLdPr Me
  loc_B5A2A1: MemStI4 global_116
  loc_B5A2A4: FLdPr Me
  loc_B5A2A7: MemLdStr global_120
  loc_B5A2AA: LitI4 1
  loc_B5A2AF: AddI4
  loc_B5A2B0: FLdPr Me
  loc_B5A2B3: MemStI4 global_120
  loc_B5A2B6: FLdI2 arg_C
  loc_B5A2B9: Call Proc_185_44_A3DA6C()
  loc_B5A2BE: FLdPr Me
  loc_B5A2C1: MemLdStr global_120
  loc_B5A2C4: CStrI4
  loc_B5A2C6: PopTmpLdAdStr
  loc_B5A2CA: ImpAdCallFPR4 Proc_263_13_99E450()
  loc_B5A2CF: FFree1Str var_C0
  loc_B5A2D2: FLdRfVar var_8C
  loc_B5A2D5: LitI2_Byte 0
  loc_B5A2D7: LitI2_Byte &HFF
  loc_B5A2D9: ImpAdLdI4 MemVar_C3D83C
  loc_B5A2DC: FLdPr Me
  loc_B5A2DF: MemLdRfVar from_stack_1.global_76
  loc_B5A2E2: NewIfNullPr IFileSystem3
  loc_B5A2E5: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B5A2EA: ILdRf var_8C
  loc_B5A2ED: FLdPr Me
  loc_B5A2F0: MemStVarAd
  loc_B5A2F4: FFree1Ad var_8C
  loc_B5A2F7: Call Proc_185_45_96B270()
  loc_B5A2FC: FLdPr Me
  loc_B5A2FF: MemLdStr global_112
  loc_B5A302: FLdPr Me
  loc_B5A305: MemLdI2 global_108
  loc_B5A308: CI4UI1
  loc_B5A309: FLdPr Me
  loc_B5A30C: MemLdStr global_104
  loc_B5A30F: FLdPr Me
  loc_B5A312: MemLdI2 global_100
  loc_B5A315: CI4UI1
  loc_B5A316: FLdPr Me
  loc_B5A319: MemLdStr global_96
  loc_B5A31C: Ary1LdPr
  loc_B5A31D: MemLdStr global_124
  loc_B5A320: Ary1LdPr
  loc_B5A321: MemLdStr global_96
  loc_B5A324: Ary1LdPr
  loc_B5A325: MemLdStr global_96
  loc_B5A328: LitI2_Byte 1
  loc_B5A32A: FnUBound
  loc_B5A32C: NeI4
  loc_B5A32D: BranchF loc_B5A49F
  loc_B5A330: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B5A335: PopAdLdVar
  loc_B5A336: FLdPr Me
  loc_B5A339: MemLdRfVar from_stack_1.htmFile
  loc_B5A33C: LdPrVar
  loc_B5A33E: LateMemCall
  loc_B5A344: LitStr "    <th colspan=""11"" class=""Normal"">Continuación del Tomo anterior: Partida: '"
  loc_B5A347: FLdPr Me
  loc_B5A34A: MemLdI2 global_100
  loc_B5A34D: CI4UI1
  loc_B5A34E: FLdPr Me
  loc_B5A351: MemLdStr global_96
  loc_B5A354: Ary1LdPr
  loc_B5A355: MemLdRfVar from_stack_1.global_0
  loc_B5A358: LdFixedStr
  loc_B5A35B: FStStrNoPop var_C0
  loc_B5A35E: ConcatStr
  loc_B5A35F: FStStrNoPop var_DC
  loc_B5A362: LitStr " - "
  loc_B5A365: ConcatStr
  loc_B5A366: FStStrNoPop var_E0
  loc_B5A369: FLdPr Me
  loc_B5A36C: MemLdI2 global_100
  loc_B5A36F: CI4UI1
  loc_B5A370: FLdPr Me
  loc_B5A373: MemLdStr global_96
  loc_B5A376: Ary1LdPr
  loc_B5A377: MemLdRfVar from_stack_1.global_16
  loc_B5A37A: LdFixedStr
  loc_B5A37D: FStStrNoPop var_E4
  loc_B5A380: ConcatStr
  loc_B5A381: FStStrNoPop var_E8
  loc_B5A384: LitStr "', Organigrama: '"
  loc_B5A387: ConcatStr
  loc_B5A388: FStStrNoPop var_EC
  loc_B5A38B: FLdPr Me
  loc_B5A38E: MemLdStr global_104
  loc_B5A391: FLdPr Me
  loc_B5A394: MemLdI2 global_100
  loc_B5A397: CI4UI1
  loc_B5A398: FLdPr Me
  loc_B5A39B: MemLdStr global_96
  loc_B5A39E: Ary1LdPr
  loc_B5A39F: MemLdStr global_124
  loc_B5A3A2: Ary1LdPr
  loc_B5A3A3: MemLdRfVar from_stack_1.global_0
  loc_B5A3A6: LdFixedStr
  loc_B5A3A9: FStStrNoPop var_F0
  loc_B5A3AC: ConcatStr
  loc_B5A3AD: FStStrNoPop var_F4
  loc_B5A3B0: LitStr " - "
  loc_B5A3B3: ConcatStr
  loc_B5A3B4: FStStrNoPop var_F8
  loc_B5A3B7: FLdPr Me
  loc_B5A3BA: MemLdStr global_104
  loc_B5A3BD: FLdPr Me
  loc_B5A3C0: MemLdI2 global_100
  loc_B5A3C3: CI4UI1
  loc_B5A3C4: FLdPr Me
  loc_B5A3C7: MemLdStr global_96
  loc_B5A3CA: Ary1LdPr
  loc_B5A3CB: MemLdStr global_124
  loc_B5A3CE: Ary1LdPr
  loc_B5A3CF: MemLdRfVar from_stack_1.global_12
  loc_B5A3D2: LdFixedStr
  loc_B5A3D5: FStStrNoPop var_FC
  loc_B5A3D8: ConcatStr
  loc_B5A3D9: FStStrNoPop var_100
  loc_B5A3DC: LitStr "', Finalidad: '"
  loc_B5A3DF: ConcatStr
  loc_B5A3E0: FStStrNoPop var_104
  loc_B5A3E3: FLdPr Me
  loc_B5A3E6: MemLdI2 global_108
  loc_B5A3E9: CI4UI1
  loc_B5A3EA: FLdPr Me
  loc_B5A3ED: MemLdStr global_104
  loc_B5A3F0: FLdPr Me
  loc_B5A3F3: MemLdI2 global_100
  loc_B5A3F6: CI4UI1
  loc_B5A3F7: FLdPr Me
  loc_B5A3FA: MemLdStr global_96
  loc_B5A3FD: Ary1LdPr
  loc_B5A3FE: MemLdStr global_124
  loc_B5A401: Ary1LdPr
  loc_B5A402: MemLdStr global_96
  loc_B5A405: Ary1LdPr
  loc_B5A406: MemLdRfVar from_stack_1.global_0
  loc_B5A409: LdFixedStr
  loc_B5A40C: FStStrNoPop var_108
  loc_B5A40F: ConcatStr
  loc_B5A410: FStStrNoPop var_10C
  loc_B5A413: LitStr " - "
  loc_B5A416: ConcatStr
  loc_B5A417: FStStrNoPop var_110
  loc_B5A41A: FLdPr Me
  loc_B5A41D: MemLdI2 global_108
  loc_B5A420: CI4UI1
  loc_B5A421: FLdPr Me
  loc_B5A424: MemLdStr global_104
  loc_B5A427: FLdPr Me
  loc_B5A42A: MemLdI2 global_100
  loc_B5A42D: CI4UI1
  loc_B5A42E: FLdPr Me
  loc_B5A431: MemLdStr global_96
  loc_B5A434: Ary1LdPr
  loc_B5A435: MemLdStr global_124
  loc_B5A438: Ary1LdPr
  loc_B5A439: MemLdStr global_96
  loc_B5A43C: Ary1LdPr
  loc_B5A43D: MemLdRfVar from_stack_1.global_12
  loc_B5A440: LdFixedStr
  loc_B5A443: FStStrNoPop var_114
  loc_B5A446: ConcatStr
  loc_B5A447: FStStrNoPop var_118
  loc_B5A44A: LitStr "'.</th>"
  loc_B5A44D: ConcatStr
  loc_B5A44E: CVarStr var_BC
  loc_B5A451: PopAdLdVar
  loc_B5A452: FLdPr Me
  loc_B5A455: MemLdRfVar from_stack_1.htmFile
  loc_B5A458: LdPrVar
  loc_B5A45A: LateMemCall
  loc_B5A460: FFreeStr var_C0 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_B5A485: FFree1Var var_BC = ""
  loc_B5A488: LitVarStr var_9C, "     </tr>"
  loc_B5A48D: PopAdLdVar
  loc_B5A48E: FLdPr Me
  loc_B5A491: MemLdRfVar from_stack_1.htmFile
  loc_B5A494: LdPrVar
  loc_B5A496: LateMemCall
  loc_B5A49C: Branch loc_B5A66B
  loc_B5A49F: FLdPr Me
  loc_B5A4A2: MemLdI2 global_108
  loc_B5A4A5: CI4UI1
  loc_B5A4A6: FLdPr Me
  loc_B5A4A9: MemLdStr global_104
  loc_B5A4AC: FLdPr Me
  loc_B5A4AF: MemLdI2 global_100
  loc_B5A4B2: CI4UI1
  loc_B5A4B3: FLdPr Me
  loc_B5A4B6: MemLdStr global_96
  loc_B5A4B9: Ary1LdPr
  loc_B5A4BA: MemLdStr global_124
  loc_B5A4BD: Ary1LdPr
  loc_B5A4BE: MemLdStr global_96
  loc_B5A4C1: LitI2_Byte 1
  loc_B5A4C3: FnUBound
  loc_B5A4C5: NeI4
  loc_B5A4C6: BranchF loc_B5A5BE
  loc_B5A4C9: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B5A4CE: PopAdLdVar
  loc_B5A4CF: FLdPr Me
  loc_B5A4D2: MemLdRfVar from_stack_1.htmFile
  loc_B5A4D5: LdPrVar
  loc_B5A4D7: LateMemCall
  loc_B5A4DD: LitStr "    <th colspan=""11"" class=""Normal"">Continuación del Tomo anterior: Partida: '"
  loc_B5A4E0: FLdPr Me
  loc_B5A4E3: MemLdI2 global_100
  loc_B5A4E6: CI4UI1
  loc_B5A4E7: FLdPr Me
  loc_B5A4EA: MemLdStr global_96
  loc_B5A4ED: Ary1LdPr
  loc_B5A4EE: MemLdRfVar from_stack_1.global_0
  loc_B5A4F1: LdFixedStr
  loc_B5A4F4: FStStrNoPop var_C0
  loc_B5A4F7: ConcatStr
  loc_B5A4F8: FStStrNoPop var_DC
  loc_B5A4FB: LitStr " - "
  loc_B5A4FE: ConcatStr
  loc_B5A4FF: FStStrNoPop var_E0
  loc_B5A502: FLdPr Me
  loc_B5A505: MemLdI2 global_100
  loc_B5A508: CI4UI1
  loc_B5A509: FLdPr Me
  loc_B5A50C: MemLdStr global_96
  loc_B5A50F: Ary1LdPr
  loc_B5A510: MemLdRfVar from_stack_1.global_16
  loc_B5A513: LdFixedStr
  loc_B5A516: FStStrNoPop var_E4
  loc_B5A519: ConcatStr
  loc_B5A51A: FStStrNoPop var_E8
  loc_B5A51D: LitStr "', Organigrama: '"
  loc_B5A520: ConcatStr
  loc_B5A521: FStStrNoPop var_EC
  loc_B5A524: FLdPr Me
  loc_B5A527: MemLdStr global_104
  loc_B5A52A: FLdPr Me
  loc_B5A52D: MemLdI2 global_100
  loc_B5A530: CI4UI1
  loc_B5A531: FLdPr Me
  loc_B5A534: MemLdStr global_96
  loc_B5A537: Ary1LdPr
  loc_B5A538: MemLdStr global_124
  loc_B5A53B: Ary1LdPr
  loc_B5A53C: MemLdRfVar from_stack_1.global_0
  loc_B5A53F: LdFixedStr
  loc_B5A542: FStStrNoPop var_F0
  loc_B5A545: ConcatStr
  loc_B5A546: FStStrNoPop var_F4
  loc_B5A549: LitStr " - "
  loc_B5A54C: ConcatStr
  loc_B5A54D: FStStrNoPop var_F8
  loc_B5A550: FLdPr Me
  loc_B5A553: MemLdStr global_104
  loc_B5A556: FLdPr Me
  loc_B5A559: MemLdI2 global_100
  loc_B5A55C: CI4UI1
  loc_B5A55D: FLdPr Me
  loc_B5A560: MemLdStr global_96
  loc_B5A563: Ary1LdPr
  loc_B5A564: MemLdStr global_124
  loc_B5A567: Ary1LdPr
  loc_B5A568: MemLdRfVar from_stack_1.global_12
  loc_B5A56B: LdFixedStr
  loc_B5A56E: FStStrNoPop var_FC
  loc_B5A571: ConcatStr
  loc_B5A572: FStStrNoPop var_100
  loc_B5A575: LitStr "'.</th>"
  loc_B5A578: ConcatStr
  loc_B5A579: CVarStr var_BC
  loc_B5A57C: PopAdLdVar
  loc_B5A57D: FLdPr Me
  loc_B5A580: MemLdRfVar from_stack_1.htmFile
  loc_B5A583: LdPrVar
  loc_B5A585: LateMemCall
  loc_B5A58B: FFreeStr var_C0 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_B5A5A4: FFree1Var var_BC = ""
  loc_B5A5A7: LitVarStr var_9C, "     </tr>"
  loc_B5A5AC: PopAdLdVar
  loc_B5A5AD: FLdPr Me
  loc_B5A5B0: MemLdRfVar from_stack_1.htmFile
  loc_B5A5B3: LdPrVar
  loc_B5A5B5: LateMemCall
  loc_B5A5BB: Branch loc_B5A66B
  loc_B5A5BE: FLdPr Me
  loc_B5A5C1: MemLdStr global_104
  loc_B5A5C4: FLdPr Me
  loc_B5A5C7: MemLdI2 global_100
  loc_B5A5CA: CI4UI1
  loc_B5A5CB: FLdPr Me
  loc_B5A5CE: MemLdStr global_96
  loc_B5A5D1: Ary1LdPr
  loc_B5A5D2: MemLdStr global_124
  loc_B5A5D5: LitI2_Byte 1
  loc_B5A5D7: FnUBound
  loc_B5A5D9: NeI4
  loc_B5A5DA: BranchF loc_B5A66B
  loc_B5A5DD: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B5A5E2: PopAdLdVar
  loc_B5A5E3: FLdPr Me
  loc_B5A5E6: MemLdRfVar from_stack_1.htmFile
  loc_B5A5E9: LdPrVar
  loc_B5A5EB: LateMemCall
  loc_B5A5F1: LitStr "    <th colspan=""11"" class=""Normal"">Continuación del Tomo anterior: Partida: '"
  loc_B5A5F4: FLdPr Me
  loc_B5A5F7: MemLdI2 global_100
  loc_B5A5FA: CI4UI1
  loc_B5A5FB: FLdPr Me
  loc_B5A5FE: MemLdStr global_96
  loc_B5A601: Ary1LdPr
  loc_B5A602: MemLdRfVar from_stack_1.global_0
  loc_B5A605: LdFixedStr
  loc_B5A608: FStStrNoPop var_C0
  loc_B5A60B: ConcatStr
  loc_B5A60C: FStStrNoPop var_DC
  loc_B5A60F: LitStr " - "
  loc_B5A612: ConcatStr
  loc_B5A613: FStStrNoPop var_E0
  loc_B5A616: FLdPr Me
  loc_B5A619: MemLdI2 global_100
  loc_B5A61C: CI4UI1
  loc_B5A61D: FLdPr Me
  loc_B5A620: MemLdStr global_96
  loc_B5A623: Ary1LdPr
  loc_B5A624: MemLdRfVar from_stack_1.global_16
  loc_B5A627: LdFixedStr
  loc_B5A62A: FStStrNoPop var_E4
  loc_B5A62D: ConcatStr
  loc_B5A62E: FStStrNoPop var_E8
  loc_B5A631: LitStr "'.</th>"
  loc_B5A634: ConcatStr
  loc_B5A635: CVarStr var_BC
  loc_B5A638: PopAdLdVar
  loc_B5A639: FLdPr Me
  loc_B5A63C: MemLdRfVar from_stack_1.htmFile
  loc_B5A63F: LdPrVar
  loc_B5A641: LateMemCall
  loc_B5A647: FFreeStr var_C0 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_B5A654: FFree1Var var_BC = ""
  loc_B5A657: LitVarStr var_9C, "     </tr>"
  loc_B5A65C: PopAdLdVar
  loc_B5A65D: FLdPr Me
  loc_B5A660: MemLdRfVar from_stack_1.htmFile
  loc_B5A663: LdPrVar
  loc_B5A665: LateMemCall
  loc_B5A66B: FLdPr Me
  loc_B5A66E: MemLdRfVar from_stack_1.global_112
  loc_B5A671: NextI4 var_D8, loc_B59F9C
  loc_B5A676: FLdPr Me
  loc_B5A679: MemLdRfVar from_stack_1.global_108
  loc_B5A67C: NextI2 var_D0, loc_B59F5C
  loc_B5A681: FLdPr Me
  loc_B5A684: MemLdRfVar from_stack_1.global_104
  loc_B5A687: NextI4 var_CC, loc_B59F29
  loc_B5A68C: FLdPr Me
  loc_B5A68F: MemLdRfVar from_stack_1.global_100
  loc_B5A692: NextI2 var_C4, loc_B59EFE
  loc_B5A697: Call Proc_185_50_A0D8F0()
  loc_B5A69C: FLdPr Me
  loc_B5A69F: MemLdStr global_120
  loc_B5A6A2: LitI4 0
  loc_B5A6A7: EqI4
  loc_B5A6A8: BranchF loc_B5A6B6
  loc_B5A6AB: LitI4 1
  loc_B5A6B0: FLdPr Me
  loc_B5A6B3: MemStI4 global_120
  loc_B5A6B6: FLdI2 arg_C
  loc_B5A6B9: Call Proc_185_44_A3DA6C()
  loc_B5A6BE: LitVar_FALSE
  loc_B5A6C2: PopAdLdVar
  loc_B5A6C3: FLdPr Me
  loc_B5A6C6: VCallAd Control_ID_pbar
  loc_B5A6C9: FStAdFunc var_8C
  loc_B5A6CC: FLdPr var_8C
  loc_B5A6CF: LateIdSt
  loc_B5A6D4: FFree1Ad var_8C
  loc_B5A6D7: LitI2_Byte 0
  loc_B5A6D9: FLdPr Me
  loc_B5A6DC: VCallAd Control_ID_PartidaLbl
  loc_B5A6DF: FStAdFunc var_8C
  loc_B5A6E2: FLdPr var_8C
  loc_B5A6E5: Me.Visible = from_stack_1b
  loc_B5A6EA: FFree1Ad var_8C
  loc_B5A6ED: ILdRf Me
  loc_B5A6F0: CastAd
  loc_B5A6F3: FStAdFunc var_8C
  loc_B5A6F6: FLdRfVar var_8C
  loc_B5A6F9: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_B5A6FE: FFree1Ad var_8C
  loc_B5A701: FLdI2 arg_C
  loc_B5A704: BranchF loc_B5A7C9
  loc_B5A707: ImpAdCallFPR4 DoEvents()
  loc_B5A70C: LitI2_Byte &HFF
  loc_B5A70E: ImpAdLdI4 MemVar_C3D05C
  loc_B5A711: LitStr "_"
  loc_B5A714: ConcatStr
  loc_B5A715: FStStrNoPop var_C0
  loc_B5A718: FLdPr Me
  loc_B5A71B: MemLdStr global_120
  loc_B5A71E: CStrI4
  loc_B5A720: FStStrNoPop var_DC
  loc_B5A723: ConcatStr
  loc_B5A724: FStStrNoPop var_E0
  loc_B5A727: LitStr ".pdf"
  loc_B5A72A: ConcatStr
  loc_B5A72B: FStStrNoPop var_E4
  loc_B5A72E: ImpAdCallI2 Proc_261_69_9A6820(, )
  loc_B5A733: FFreeStr var_C0 = "": var_DC = "": var_E0 = ""
  loc_B5A73E: BranchT loc_B5A707
  loc_B5A741: FLdRfVar var_8C
  loc_B5A744: ImpAdLdI4 MemVar_C3D05C
  loc_B5A747: LitStr "_1.pdf"
  loc_B5A74A: ConcatStr
  loc_B5A74B: FStStrNoPop var_C0
  loc_B5A74E: FLdPr Me
  loc_B5A751: MemLdRfVar from_stack_1.global_76
  loc_B5A754: NewIfNullPr IFileSystem3
  loc_B5A757: from_stack_2 = IFileSystem3.IFileSystem.GetFile(from_stack_1v)
  loc_B5A75C: FLdZeroAd var_8C
  loc_B5A75F: FStVarAdFunc
  loc_B5A763: FFree1Str var_C0
  loc_B5A766: LitVarStr var_9C, "explorer /select,"
  loc_B5A76B: LitI4 &H22
  loc_B5A770: FLdRfVar var_BC
  loc_B5A773: ImpAdCallFPR4  = Chr()
  loc_B5A778: FLdRfVar var_BC
  loc_B5A77B: ConcatVar var_138
  loc_B5A77F: FLdRfVar var_128
  loc_B5A782: VarLateMemLdVar var_148, .ShortPath
  loc_B5A788: ConcatVar var_158
  loc_B5A78C: LitI4 &H22
  loc_B5A791: FLdRfVar var_168
  loc_B5A794: ImpAdCallFPR4  = Chr()
  loc_B5A799: FLdRfVar var_168
  loc_B5A79C: ConcatVar var_178
  loc_B5A7A0: CStrVarVal var_C0
  loc_B5A7A4: ImpAdCallFPR4 Proc_261_25_9B8B60()
  loc_B5A7A9: FFree1Str var_C0
  loc_B5A7AC: FFreeVar var_BC = "": var_138 = "": var_148 = "": var_158 = "": var_168 = ""
  loc_B5A7BB: ILdRf var_88
  loc_B5A7BE: ImpAdCallI2 Proc_261_24_A3529C()
  loc_B5A7C3: FStStr var_C0
  loc_B5A7C6: FFree1Str var_C0
  loc_B5A7C9: LitVarStr var_9C, vbNullString
  loc_B5A7CE: PopAdLdVar
  loc_B5A7CF: FLdPr Me
  loc_B5A7D2: VCallAd Control_ID_statusBar
  loc_B5A7D5: FStAdFunc var_8C
  loc_B5A7D8: FLdPr var_8C
  loc_B5A7DB: LateIdSt
  loc_B5A7E0: FFree1Ad var_8C
  loc_B5A7E3: Branch loc_B5A819
  loc_B5A7E6: Call HabilitarCriterio()
  loc_B5A7EB: ILdRf Me
  loc_B5A7EE: CastAd
  loc_B5A7F1: FStAdFunc var_8C
  loc_B5A7F4: FLdRfVar var_8C
  loc_B5A7F7: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_B5A7FC: FFree1Ad var_8C
  loc_B5A7FF: LitVarStr var_9C, vbNullString
  loc_B5A804: PopAdLdVar
  loc_B5A805: FLdPr Me
  loc_B5A808: VCallAd Control_ID_statusBar
  loc_B5A80B: FStAdFunc var_8C
  loc_B5A80E: FLdPr var_8C
  loc_B5A811: LateIdSt
  loc_B5A816: FFree1Ad var_8C
  loc_B5A819: ExitProcHresult
  loc_B5A81A: UMiI4
End Function

Private Function Proc_185_44_A3DA6C(arg_C) 'A3DA6C
  'Data Table: 4F1070
  loc_A3D838: Call Proc_185_54_982930()
  loc_A3D83D: FLdPr Me
  loc_A3D840: MemLdRfVar from_stack_1.htmFile
  loc_A3D843: LdPrVar
  loc_A3D845: LateMemCall
  loc_A3D84B: ImpAdLdRf MemVar_C3D83C
  loc_A3D84E: CDargRef
  loc_A3D852: FLdPr Me
  loc_A3D855: VCallAd Control_ID_wbbReporte
  loc_A3D858: FStAdFunc var_98
  loc_A3D85B: FLdPr var_98
  loc_A3D85E: LateIdCall
  loc_A3D866: FFree1Ad var_98
  loc_A3D869: ImpAdCallFPR4 DoEvents()
  loc_A3D86E: FLdPr Me
  loc_A3D871: VCallAd Control_ID_wbbReporte
  loc_A3D874: FStAdFunc var_98
  loc_A3D877: FLdPr var_98
  loc_A3D87A: LateIdLdVar var_A8 DispID_-525 -1
  loc_A3D881: CI4Var
  loc_A3D883: LitI4 4
  loc_A3D888: NeI4
  loc_A3D889: FFree1Ad var_98
  loc_A3D88C: FFree1Var var_A8 = ""
  loc_A3D88F: BranchT loc_A3D869
  loc_A3D892: FLdI2 arg_C
  loc_A3D895: BranchF loc_A3D9C2
  loc_A3D898: FLdRfVar var_B6
  loc_A3D89B: ImpAdLdI4 MemVar_C3D05C
  loc_A3D89E: LitStr "_"
  loc_A3D8A1: ConcatStr
  loc_A3D8A2: FStStrNoPop var_AC
  loc_A3D8A5: FLdPr Me
  loc_A3D8A8: MemLdStr global_120
  loc_A3D8AB: CStrI4
  loc_A3D8AD: FStStrNoPop var_B0
  loc_A3D8B0: ConcatStr
  loc_A3D8B1: FStStrNoPop var_B4
  loc_A3D8B4: FLdPr Me
  loc_A3D8B7: MemLdRfVar from_stack_1.global_76
  loc_A3D8BA: NewIfNullPr IFileSystem3
  loc_A3D8BD: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_A3D8C2: FLdI2 var_B6
  loc_A3D8C5: FFreeStr var_AC = "": var_B0 = ""
  loc_A3D8CE: BranchF loc_A3D936
  loc_A3D8D1: FLdRfVar var_98
  loc_A3D8D4: ImpAdLdI4 MemVar_C3D05C
  loc_A3D8D7: LitStr "_"
  loc_A3D8DA: ConcatStr
  loc_A3D8DB: FStStrNoPop var_AC
  loc_A3D8DE: FLdPr Me
  loc_A3D8E1: MemLdStr global_120
  loc_A3D8E4: CStrI4
  loc_A3D8E6: FStStrNoPop var_B0
  loc_A3D8E9: ConcatStr
  loc_A3D8EA: FStStrNoPop var_B4
  loc_A3D8ED: FLdPr Me
  loc_A3D8F0: MemLdRfVar from_stack_1.global_76
  loc_A3D8F3: NewIfNullPr IFileSystem3
  loc_A3D8F6: from_stack_2 = IFileSystem3.IFileSystem.GetFile(from_stack_1v)
  loc_A3D8FB: FLdZeroAd var_98
  loc_A3D8FE: FStVarAdFunc
  loc_A3D902: FFreeStr var_AC = "": var_B0 = ""
  loc_A3D90B: LitVarStr var_94, "del "
  loc_A3D910: FLdRfVar var_C8
  loc_A3D913: VarLateMemLdVar var_A8, .ShortPath
  loc_A3D919: ConcatVar var_D8
  loc_A3D91D: CStrVarVal var_AC
  loc_A3D921: ImpAdCallFPR4 Proc_261_25_9B8B60()
  loc_A3D926: FFree1Str var_AC
  loc_A3D929: FFreeVar var_A8 = ""
  loc_A3D930: LitNothing
  loc_A3D932: FStVarAd
  loc_A3D936: FLdRfVar var_DC
  loc_A3D939: ImpAdLdI4 MemVar_C3D05C
  loc_A3D93C: LitStr "_"
  loc_A3D93F: ConcatStr
  loc_A3D940: FStStrNoPop var_AC
  loc_A3D943: FLdPr Me
  loc_A3D946: MemLdStr global_120
  loc_A3D949: CStrI4
  loc_A3D94B: FStStrNoPop var_B0
  loc_A3D94E: ConcatStr
  loc_A3D94F: FStStrNoPop var_B4
  loc_A3D952: FLdPr Me
  loc_A3D955: MemLdRfVar from_stack_1.global_76
  loc_A3D958: NewIfNullPr IFileSystem3
  loc_A3D95B: from_stack_2 = IFileSystem3.IFileSystem.GetParentFolderName(from_stack_1v)
  loc_A3D960: ILdRf var_DC
  loc_A3D963: LitStr "AutosaveDirectory"
  loc_A3D966: FLdPr Me
  loc_A3D969: MemLdStr global_132
  loc_A3D96C: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A3D971: FFreeStr var_AC = "": var_B0 = "": var_B4 = ""
  loc_A3D97C: FLdRfVar var_DC
  loc_A3D97F: ImpAdLdI4 MemVar_C3D05C
  loc_A3D982: LitStr "_"
  loc_A3D985: ConcatStr
  loc_A3D986: FStStrNoPop var_AC
  loc_A3D989: FLdPr Me
  loc_A3D98C: MemLdStr global_120
  loc_A3D98F: CStrI4
  loc_A3D991: FStStrNoPop var_B0
  loc_A3D994: ConcatStr
  loc_A3D995: FStStrNoPop var_B4
  loc_A3D998: FLdPr Me
  loc_A3D99B: MemLdRfVar from_stack_1.global_76
  loc_A3D99E: NewIfNullPr IFileSystem3
  loc_A3D9A1: from_stack_2 = IFileSystem3.IFileSystem.GetFileName(from_stack_1v)
  loc_A3D9A6: ILdRf var_DC
  loc_A3D9A9: LitStr "AutosaveFilename"
  loc_A3D9AC: FLdPr Me
  loc_A3D9AF: MemLdStr global_132
  loc_A3D9B2: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A3D9B7: FFreeStr var_AC = "": var_B0 = "": var_B4 = ""
  loc_A3D9C2: LitI2_Byte &HFF
  loc_A3D9C4: FLdPr Me
  loc_A3D9C7: MemStI2 global_124
  loc_A3D9CA: LitVarI4
  loc_A3D9D2: PopAdLdVar
  loc_A3D9D3: LitVarI4
  loc_A3D9DB: PopAdLdVar
  loc_A3D9DC: LitVar_NULL
  loc_A3D9E0: PopAdLdVar
  loc_A3D9E1: LitVar_NULL
  loc_A3D9E5: PopAdLdVar
  loc_A3D9E6: FLdPr Me
  loc_A3D9E9: VCallAd Control_ID_wbbReporte
  loc_A3D9EC: FStAdFunc var_98
  loc_A3D9EF: FLdPr var_98
  loc_A3D9F2: LateIdCall
  loc_A3D9FA: FFree1Ad var_98
  loc_A3D9FD: ImpAdCallFPR4 DoEvents()
  loc_A3DA02: FLdPr Me
  loc_A3DA05: MemLdI2 global_124
  loc_A3DA08: NotI4
  loc_A3DA09: FLdPr Me
  loc_A3DA0C: VCallAd Control_ID_wbbReporte
  loc_A3DA0F: FStAdFunc var_98
  loc_A3DA12: FLdPr var_98
  loc_A3DA15: LateIdLdVar var_A8 DispID_212 0
  loc_A3DA1C: CBoolVar
  loc_A3DA1E: NotI4
  loc_A3DA1F: AndI4
  loc_A3DA20: NotI4
  loc_A3DA21: FFree1Ad var_98
  loc_A3DA24: FFree1Var var_A8 = ""
  loc_A3DA27: BranchT loc_A3D9FD
  loc_A3DA2A: FLdI2 arg_C
  loc_A3DA2D: BranchF loc_A3DA6A
  loc_A3DA30: ImpAdCallFPR4 DoEvents()
  loc_A3DA35: LitI2_Byte &HFF
  loc_A3DA37: ImpAdLdI4 MemVar_C3D05C
  loc_A3DA3A: LitStr "_"
  loc_A3DA3D: ConcatStr
  loc_A3DA3E: FStStrNoPop var_AC
  loc_A3DA41: FLdPr Me
  loc_A3DA44: MemLdStr global_120
  loc_A3DA47: CStrI4
  loc_A3DA49: FStStrNoPop var_B0
  loc_A3DA4C: ConcatStr
  loc_A3DA4D: FStStrNoPop var_B4
  loc_A3DA50: LitStr ".pdf"
  loc_A3DA53: ConcatStr
  loc_A3DA54: FStStrNoPop var_DC
  loc_A3DA57: ImpAdCallI2 Proc_261_69_9A6820(, )
  loc_A3DA5C: FFreeStr var_AC = "": var_B0 = "": var_B4 = ""
  loc_A3DA67: BranchT loc_A3DA30
  loc_A3DA6A: ExitProcHresult
End Function

Private Function Proc_185_45_96B270() '96B270
  'Data Table: 4F1070
  loc_96B250: FLdPr Me
  loc_96B253: MemLdStr global_116
  loc_96B256: LitI4 0
  loc_96B25B: EqI4
  loc_96B25C: BranchF loc_96B26E
  loc_96B25F: Call Proc_185_51_9B9F9C()
  loc_96B264: Call Proc_185_52_A984F8()
  loc_96B269: Call Proc_185_53_A151E8()
  loc_96B26E: ExitProcHresult
End Function

Private Function Proc_185_46_A29434() 'A29434
  'Data Table: 4F1070
  loc_A29274: LitVarStr var_94, "    <tr valign=""top"" class=""SubTotales"" align=""right"">"
  loc_A29279: PopAdLdVar
  loc_A2927A: FLdPr Me
  loc_A2927D: MemLdRfVar from_stack_1.htmFile
  loc_A29280: LdPrVar
  loc_A29282: LateMemCall
  loc_A29288: LitStr "<td colspan=""6"" align=""left"" valign=""top"" class=""LineaDato""><strong>Partida: </strong>"
  loc_A2928B: FLdPr Me
  loc_A2928E: MemLdI2 global_100
  loc_A29291: CI4UI1
  loc_A29292: FLdPr Me
  loc_A29295: MemLdStr global_96
  loc_A29298: Ary1LdPr
  loc_A29299: MemLdRfVar from_stack_1.global_0
  loc_A2929C: LdFixedStr
  loc_A2929F: FStStrNoPop var_A8
  loc_A292A2: ConcatStr
  loc_A292A3: FStStrNoPop var_AC
  loc_A292A6: LitStr "-"
  loc_A292A9: ConcatStr
  loc_A292AA: FStStrNoPop var_B0
  loc_A292AD: FLdPr Me
  loc_A292B0: MemLdI2 global_100
  loc_A292B3: CI4UI1
  loc_A292B4: FLdPr Me
  loc_A292B7: MemLdStr global_96
  loc_A292BA: Ary1LdPr
  loc_A292BB: MemLdRfVar from_stack_1.global_16
  loc_A292BE: LdFixedStr
  loc_A292C1: FStStrNoPop var_B4
  loc_A292C4: ConcatStr
  loc_A292C5: FStStrNoPop var_B8
  loc_A292C8: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_A292CB: ConcatStr
  loc_A292CC: FStStrNoPop var_BC
  loc_A292CF: FLdPr Me
  loc_A292D2: MemLdI2 global_100
  loc_A292D5: CI4UI1
  loc_A292D6: FLdPr Me
  loc_A292D9: MemLdStr global_96
  loc_A292DC: Ary1LdPr
  loc_A292DD: MemLdStr global_116
  loc_A292E0: ConcatStr
  loc_A292E1: FStStrNoPop var_C0
  loc_A292E4: LitStr "</td>"
  loc_A292E7: ConcatStr
  loc_A292E8: CVarStr var_D0
  loc_A292EB: PopAdLdVar
  loc_A292EC: FLdPr Me
  loc_A292EF: MemLdRfVar from_stack_1.htmFile
  loc_A292F2: LdPrVar
  loc_A292F4: LateMemCall
  loc_A292FA: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A2930B: FFree1Var var_D0 = ""
  loc_A2930E: FLdPr Me
  loc_A29311: MemLdStr global_116
  loc_A29314: LitI4 1
  loc_A29319: AddI4
  loc_A2931A: FLdPr Me
  loc_A2931D: MemStI4 global_116
  loc_A29320: FLdPr Me
  loc_A29323: MemLdI2 global_100
  loc_A29326: CI4UI1
  loc_A29327: FLdPr Me
  loc_A2932A: MemLdStr global_96
  loc_A2932D: AryLock
  loc_A29330: Ary1LdPr
  loc_A29331: MemLdRfVar from_stack_1.global_128
  loc_A29334: FStR4 var_D8
  loc_A29337: LitStr "    <td>"
  loc_A2933A: FMemLdR4 var_D8(164)
  loc_A2933F: ConcatStr
  loc_A29340: FStStrNoPop var_A8
  loc_A29343: LitStr "</td>"
  loc_A29346: ConcatStr
  loc_A29347: CVarStr var_D0
  loc_A2934A: PopAdLdVar
  loc_A2934B: FLdPr Me
  loc_A2934E: MemLdRfVar from_stack_1.htmFile
  loc_A29351: LdPrVar
  loc_A29353: LateMemCall
  loc_A29359: FFree1Str var_A8
  loc_A2935C: FFree1Var var_D0 = ""
  loc_A2935F: LitStr "    <td>"
  loc_A29362: FMemLdR4 var_D8(168)
  loc_A29367: ConcatStr
  loc_A29368: FStStrNoPop var_A8
  loc_A2936B: LitStr "</td>"
  loc_A2936E: ConcatStr
  loc_A2936F: CVarStr var_D0
  loc_A29372: PopAdLdVar
  loc_A29373: FLdPr Me
  loc_A29376: MemLdRfVar from_stack_1.htmFile
  loc_A29379: LdPrVar
  loc_A2937B: LateMemCall
  loc_A29381: FFree1Str var_A8
  loc_A29384: FFree1Var var_D0 = ""
  loc_A29387: LitStr "    <td>"
  loc_A2938A: FMemLdR4 var_D8(172)
  loc_A2938F: ConcatStr
  loc_A29390: FStStrNoPop var_A8
  loc_A29393: LitStr "</td>"
  loc_A29396: ConcatStr
  loc_A29397: CVarStr var_D0
  loc_A2939A: PopAdLdVar
  loc_A2939B: FLdPr Me
  loc_A2939E: MemLdRfVar from_stack_1.htmFile
  loc_A293A1: LdPrVar
  loc_A293A3: LateMemCall
  loc_A293A9: FFree1Str var_A8
  loc_A293AC: FFree1Var var_D0 = ""
  loc_A293AF: LitStr "    <td>"
  loc_A293B2: FMemLdR4 var_D8(176)
  loc_A293B7: ConcatStr
  loc_A293B8: FStStrNoPop var_A8
  loc_A293BB: LitStr "</td>"
  loc_A293BE: ConcatStr
  loc_A293BF: CVarStr var_D0
  loc_A293C2: PopAdLdVar
  loc_A293C3: FLdPr Me
  loc_A293C6: MemLdRfVar from_stack_1.htmFile
  loc_A293C9: LdPrVar
  loc_A293CB: LateMemCall
  loc_A293D1: FFree1Str var_A8
  loc_A293D4: FFree1Var var_D0 = ""
  loc_A293D7: LitStr "    <td>"
  loc_A293DA: FMemLdR4 var_D8(180)
  loc_A293DF: ConcatStr
  loc_A293E0: FStStrNoPop var_A8
  loc_A293E3: LitStr "</td>"
  loc_A293E6: ConcatStr
  loc_A293E7: CVarStr var_D0
  loc_A293EA: PopAdLdVar
  loc_A293EB: FLdPr Me
  loc_A293EE: MemLdRfVar from_stack_1.htmFile
  loc_A293F1: LdPrVar
  loc_A293F3: LateMemCall
  loc_A293F9: FFree1Str var_A8
  loc_A293FC: FFree1Var var_D0 = ""
  loc_A293FF: LitVarStr var_94, "    <td>&nbsp;</td>"
  loc_A29404: PopAdLdVar
  loc_A29405: FLdPr Me
  loc_A29408: MemLdRfVar from_stack_1.htmFile
  loc_A2940B: LdPrVar
  loc_A2940D: LateMemCall
  loc_A29413: LitI4 0
  loc_A29418: FStR4 var_D8
  loc_A2941B: AryUnlock
  loc_A2941E: LitVarStr var_94, "     </tr>"
  loc_A29423: PopAdLdVar
  loc_A29424: FLdPr Me
  loc_A29427: MemLdRfVar from_stack_1.htmFile
  loc_A2942A: LdPrVar
  loc_A2942C: LateMemCall
  loc_A29432: ExitProcHresult
End Function

Private Function Proc_185_47_A2DD2C() 'A2DD2C
  'Data Table: 4F1070
  loc_A2DB54: LitVarStr var_94, "    <tr valign=""top"" class=""SubTotales"" align=""right"">"
  loc_A2DB59: PopAdLdVar
  loc_A2DB5A: FLdPr Me
  loc_A2DB5D: MemLdRfVar from_stack_1.htmFile
  loc_A2DB60: LdPrVar
  loc_A2DB62: LateMemCall
  loc_A2DB68: LitStr "<td colspan=""6"" align=""left"" valign=""top"" class=""LineaDato"">"
  loc_A2DB6B: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_A2DB6E: ConcatStr
  loc_A2DB6F: FStStrNoPop var_A8
  loc_A2DB72: LitStr "<strong>Organigrama: </strong>"
  loc_A2DB75: ConcatStr
  loc_A2DB76: FStStrNoPop var_AC
  loc_A2DB79: FLdPr Me
  loc_A2DB7C: MemLdStr global_104
  loc_A2DB7F: FLdPr Me
  loc_A2DB82: MemLdI2 global_100
  loc_A2DB85: CI4UI1
  loc_A2DB86: FLdPr Me
  loc_A2DB89: MemLdStr global_96
  loc_A2DB8C: Ary1LdPr
  loc_A2DB8D: MemLdStr global_124
  loc_A2DB90: Ary1LdPr
  loc_A2DB91: MemLdRfVar from_stack_1.global_0
  loc_A2DB94: LdFixedStr
  loc_A2DB97: FStStrNoPop var_B0
  loc_A2DB9A: ConcatStr
  loc_A2DB9B: FStStrNoPop var_B4
  loc_A2DB9E: LitStr "-"
  loc_A2DBA1: ConcatStr
  loc_A2DBA2: FStStrNoPop var_B8
  loc_A2DBA5: FLdPr Me
  loc_A2DBA8: MemLdStr global_104
  loc_A2DBAB: FLdPr Me
  loc_A2DBAE: MemLdI2 global_100
  loc_A2DBB1: CI4UI1
  loc_A2DBB2: FLdPr Me
  loc_A2DBB5: MemLdStr global_96
  loc_A2DBB8: Ary1LdPr
  loc_A2DBB9: MemLdStr global_124
  loc_A2DBBC: Ary1LdPr
  loc_A2DBBD: MemLdRfVar from_stack_1.global_12
  loc_A2DBC0: LdFixedStr
  loc_A2DBC3: FStStrNoPop var_BC
  loc_A2DBC6: ConcatStr
  loc_A2DBC7: FStStrNoPop var_C0
  loc_A2DBCA: LitStr "</td>"
  loc_A2DBCD: ConcatStr
  loc_A2DBCE: CVarStr var_D0
  loc_A2DBD1: PopAdLdVar
  loc_A2DBD2: FLdPr Me
  loc_A2DBD5: MemLdRfVar from_stack_1.htmFile
  loc_A2DBD8: LdPrVar
  loc_A2DBDA: LateMemCall
  loc_A2DBE0: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A2DBF1: FFree1Var var_D0 = ""
  loc_A2DBF4: FLdPr Me
  loc_A2DBF7: MemLdStr global_116
  loc_A2DBFA: LitI4 1
  loc_A2DBFF: AddI4
  loc_A2DC00: FLdPr Me
  loc_A2DC03: MemStI4 global_116
  loc_A2DC06: FLdPr Me
  loc_A2DC09: MemLdStr global_104
  loc_A2DC0C: FLdPr Me
  loc_A2DC0F: MemLdI2 global_100
  loc_A2DC12: CI4UI1
  loc_A2DC13: FLdPr Me
  loc_A2DC16: MemLdStr global_96
  loc_A2DC19: AryLock
  loc_A2DC1C: Ary1LdPr
  loc_A2DC1D: MemLdStr global_124
  loc_A2DC20: AryLock
  loc_A2DC23: Ary1LdPr
  loc_A2DC24: MemLdRfVar from_stack_1.global_100
  loc_A2DC27: FStR4 var_DC
  loc_A2DC2A: LitStr "    <td>"
  loc_A2DC2D: FMemLdR4 var_DC(164)
  loc_A2DC32: ConcatStr
  loc_A2DC33: FStStrNoPop var_A8
  loc_A2DC36: LitStr "</td>"
  loc_A2DC39: ConcatStr
  loc_A2DC3A: CVarStr var_D0
  loc_A2DC3D: PopAdLdVar
  loc_A2DC3E: FLdPr Me
  loc_A2DC41: MemLdRfVar from_stack_1.htmFile
  loc_A2DC44: LdPrVar
  loc_A2DC46: LateMemCall
  loc_A2DC4C: FFree1Str var_A8
  loc_A2DC4F: FFree1Var var_D0 = ""
  loc_A2DC52: LitStr "    <td>"
  loc_A2DC55: FMemLdR4 var_DC(168)
  loc_A2DC5A: ConcatStr
  loc_A2DC5B: FStStrNoPop var_A8
  loc_A2DC5E: LitStr "</td>"
  loc_A2DC61: ConcatStr
  loc_A2DC62: CVarStr var_D0
  loc_A2DC65: PopAdLdVar
  loc_A2DC66: FLdPr Me
  loc_A2DC69: MemLdRfVar from_stack_1.htmFile
  loc_A2DC6C: LdPrVar
  loc_A2DC6E: LateMemCall
  loc_A2DC74: FFree1Str var_A8
  loc_A2DC77: FFree1Var var_D0 = ""
  loc_A2DC7A: LitStr "    <td>"
  loc_A2DC7D: FMemLdR4 var_DC(172)
  loc_A2DC82: ConcatStr
  loc_A2DC83: FStStrNoPop var_A8
  loc_A2DC86: LitStr "</td>"
  loc_A2DC89: ConcatStr
  loc_A2DC8A: CVarStr var_D0
  loc_A2DC8D: PopAdLdVar
  loc_A2DC8E: FLdPr Me
  loc_A2DC91: MemLdRfVar from_stack_1.htmFile
  loc_A2DC94: LdPrVar
  loc_A2DC96: LateMemCall
  loc_A2DC9C: FFree1Str var_A8
  loc_A2DC9F: FFree1Var var_D0 = ""
  loc_A2DCA2: LitStr "    <td>"
  loc_A2DCA5: FMemLdR4 var_DC(176)
  loc_A2DCAA: ConcatStr
  loc_A2DCAB: FStStrNoPop var_A8
  loc_A2DCAE: LitStr "</td>"
  loc_A2DCB1: ConcatStr
  loc_A2DCB2: CVarStr var_D0
  loc_A2DCB5: PopAdLdVar
  loc_A2DCB6: FLdPr Me
  loc_A2DCB9: MemLdRfVar from_stack_1.htmFile
  loc_A2DCBC: LdPrVar
  loc_A2DCBE: LateMemCall
  loc_A2DCC4: FFree1Str var_A8
  loc_A2DCC7: FFree1Var var_D0 = ""
  loc_A2DCCA: LitStr "    <td>"
  loc_A2DCCD: FMemLdR4 var_DC(180)
  loc_A2DCD2: ConcatStr
  loc_A2DCD3: FStStrNoPop var_A8
  loc_A2DCD6: LitStr "</td>"
  loc_A2DCD9: ConcatStr
  loc_A2DCDA: CVarStr var_D0
  loc_A2DCDD: PopAdLdVar
  loc_A2DCDE: FLdPr Me
  loc_A2DCE1: MemLdRfVar from_stack_1.htmFile
  loc_A2DCE4: LdPrVar
  loc_A2DCE6: LateMemCall
  loc_A2DCEC: FFree1Str var_A8
  loc_A2DCEF: FFree1Var var_D0 = ""
  loc_A2DCF2: LitVarStr var_94, "    <td>&nbsp;</td>"
  loc_A2DCF7: PopAdLdVar
  loc_A2DCF8: FLdPr Me
  loc_A2DCFB: MemLdRfVar from_stack_1.htmFile
  loc_A2DCFE: LdPrVar
  loc_A2DD00: LateMemCall
  loc_A2DD06: LitI4 0
  loc_A2DD0B: FStR4 var_DC
  loc_A2DD0E: AryUnlock
  loc_A2DD11: AryUnlock
  loc_A2DD14: LitVarStr var_94, "     </tr>"
  loc_A2DD19: PopAdLdVar
  loc_A2DD1A: FLdPr Me
  loc_A2DD1D: MemLdRfVar from_stack_1.htmFile
  loc_A2DD20: LdPrVar
  loc_A2DD22: LateMemCall
  loc_A2DD28: ExitProcHresult
  loc_A2DD29: ImpAdLdI4 MemVar_0
End Function

Private Function Proc_185_48_A37884() 'A37884
  'Data Table: 4F1070
  loc_A3767C: LitVarStr var_94, "    <tr valign=""top"" class=""SubTotales"" align=""right"">"
  loc_A37681: PopAdLdVar
  loc_A37682: FLdPr Me
  loc_A37685: MemLdRfVar from_stack_1.htmFile
  loc_A37688: LdPrVar
  loc_A3768A: LateMemCall
  loc_A37690: LitStr "<td colspan=""6"" align=""left"" valign=""top"" class=""LineaDato"">"
  loc_A37693: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_A37696: ConcatStr
  loc_A37697: FStStrNoPop var_A8
  loc_A3769A: LitStr "<strong>Finalidad: </strong>"
  loc_A3769D: ConcatStr
  loc_A3769E: FStStrNoPop var_AC
  loc_A376A1: FLdPr Me
  loc_A376A4: MemLdI2 global_108
  loc_A376A7: CI4UI1
  loc_A376A8: FLdPr Me
  loc_A376AB: MemLdStr global_104
  loc_A376AE: FLdPr Me
  loc_A376B1: MemLdI2 global_100
  loc_A376B4: CI4UI1
  loc_A376B5: FLdPr Me
  loc_A376B8: MemLdStr global_96
  loc_A376BB: Ary1LdPr
  loc_A376BC: MemLdStr global_124
  loc_A376BF: Ary1LdPr
  loc_A376C0: MemLdStr global_96
  loc_A376C3: Ary1LdPr
  loc_A376C4: MemLdRfVar from_stack_1.global_0
  loc_A376C7: LdFixedStr
  loc_A376CA: FStStrNoPop var_B0
  loc_A376CD: ConcatStr
  loc_A376CE: FStStrNoPop var_B4
  loc_A376D1: LitStr "-"
  loc_A376D4: ConcatStr
  loc_A376D5: FStStrNoPop var_B8
  loc_A376D8: FLdPr Me
  loc_A376DB: MemLdI2 global_108
  loc_A376DE: CI4UI1
  loc_A376DF: FLdPr Me
  loc_A376E2: MemLdStr global_104
  loc_A376E5: FLdPr Me
  loc_A376E8: MemLdI2 global_100
  loc_A376EB: CI4UI1
  loc_A376EC: FLdPr Me
  loc_A376EF: MemLdStr global_96
  loc_A376F2: Ary1LdPr
  loc_A376F3: MemLdStr global_124
  loc_A376F6: Ary1LdPr
  loc_A376F7: MemLdStr global_96
  loc_A376FA: Ary1LdPr
  loc_A376FB: MemLdRfVar from_stack_1.global_12
  loc_A376FE: LdFixedStr
  loc_A37701: FStStrNoPop var_BC
  loc_A37704: ConcatStr
  loc_A37705: FStStrNoPop var_C0
  loc_A37708: LitStr "</td>"
  loc_A3770B: ConcatStr
  loc_A3770C: CVarStr var_D0
  loc_A3770F: PopAdLdVar
  loc_A37710: FLdPr Me
  loc_A37713: MemLdRfVar from_stack_1.htmFile
  loc_A37716: LdPrVar
  loc_A37718: LateMemCall
  loc_A3771E: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A3772F: FFree1Var var_D0 = ""
  loc_A37732: FLdPr Me
  loc_A37735: MemLdStr global_116
  loc_A37738: LitI4 1
  loc_A3773D: AddI4
  loc_A3773E: FLdPr Me
  loc_A37741: MemStI4 global_116
  loc_A37744: FLdPr Me
  loc_A37747: MemLdStr global_104
  loc_A3774A: FLdPr Me
  loc_A3774D: MemLdI2 global_100
  loc_A37750: CI4UI1
  loc_A37751: FLdPr Me
  loc_A37754: MemLdStr global_96
  loc_A37757: AryLock
  loc_A3775A: Ary1LdPr
  loc_A3775B: MemLdStr global_124
  loc_A3775E: AryLock
  loc_A37761: Ary1LdPr
  loc_A37762: MemLdRfVar from_stack_1.global_100
  loc_A37765: FStR4 var_DC
  loc_A37768: LitStr "    <td>"
  loc_A3776B: FMemLdR4 var_DC(164)
  loc_A37770: ConcatStr
  loc_A37771: FStStrNoPop var_A8
  loc_A37774: LitStr "</td>"
  loc_A37777: ConcatStr
  loc_A37778: CVarStr var_D0
  loc_A3777B: PopAdLdVar
  loc_A3777C: FLdPr Me
  loc_A3777F: MemLdRfVar from_stack_1.htmFile
  loc_A37782: LdPrVar
  loc_A37784: LateMemCall
  loc_A3778A: FFree1Str var_A8
  loc_A3778D: FFree1Var var_D0 = ""
  loc_A37790: LitStr "    <td>"
  loc_A37793: FMemLdR4 var_DC(168)
  loc_A37798: ConcatStr
  loc_A37799: FStStrNoPop var_A8
  loc_A3779C: LitStr "</td>"
  loc_A3779F: ConcatStr
  loc_A377A0: CVarStr var_D0
  loc_A377A3: PopAdLdVar
  loc_A377A4: FLdPr Me
  loc_A377A7: MemLdRfVar from_stack_1.htmFile
  loc_A377AA: LdPrVar
  loc_A377AC: LateMemCall
  loc_A377B2: FFree1Str var_A8
  loc_A377B5: FFree1Var var_D0 = ""
  loc_A377B8: LitStr "    <td>"
  loc_A377BB: FMemLdR4 var_DC(172)
  loc_A377C0: ConcatStr
  loc_A377C1: FStStrNoPop var_A8
  loc_A377C4: LitStr "</td>"
  loc_A377C7: ConcatStr
  loc_A377C8: CVarStr var_D0
  loc_A377CB: PopAdLdVar
  loc_A377CC: FLdPr Me
  loc_A377CF: MemLdRfVar from_stack_1.htmFile
  loc_A377D2: LdPrVar
  loc_A377D4: LateMemCall
  loc_A377DA: FFree1Str var_A8
  loc_A377DD: FFree1Var var_D0 = ""
  loc_A377E0: LitStr "    <td>"
  loc_A377E3: FMemLdR4 var_DC(176)
  loc_A377E8: ConcatStr
  loc_A377E9: FStStrNoPop var_A8
  loc_A377EC: LitStr "</td>"
  loc_A377EF: ConcatStr
  loc_A377F0: CVarStr var_D0
  loc_A377F3: PopAdLdVar
  loc_A377F4: FLdPr Me
  loc_A377F7: MemLdRfVar from_stack_1.htmFile
  loc_A377FA: LdPrVar
  loc_A377FC: LateMemCall
  loc_A37802: FFree1Str var_A8
  loc_A37805: FFree1Var var_D0 = ""
  loc_A37808: LitStr "    <td>"
  loc_A3780B: FMemLdR4 var_DC(180)
  loc_A37810: ConcatStr
  loc_A37811: FStStrNoPop var_A8
  loc_A37814: LitStr "</td>"
  loc_A37817: ConcatStr
  loc_A37818: CVarStr var_D0
  loc_A3781B: PopAdLdVar
  loc_A3781C: FLdPr Me
  loc_A3781F: MemLdRfVar from_stack_1.htmFile
  loc_A37822: LdPrVar
  loc_A37824: LateMemCall
  loc_A3782A: FFree1Str var_A8
  loc_A3782D: FFree1Var var_D0 = ""
  loc_A37830: LitI4 0
  loc_A37835: LitI4 0
  loc_A3783A: LitI2_Byte 0
  loc_A3783C: LitI4 0
  loc_A37841: LitStr vbNullString
  loc_A37844: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A37849: CVarStr var_D0
  loc_A3784C: PopAdLdVar
  loc_A3784D: FLdPr Me
  loc_A37850: MemLdRfVar from_stack_1.htmFile
  loc_A37853: LdPrVar
  loc_A37855: LateMemCall
  loc_A3785B: FFree1Var var_D0 = ""
  loc_A3785E: LitI4 0
  loc_A37863: FStR4 var_DC
  loc_A37866: AryUnlock
  loc_A37869: AryUnlock
  loc_A3786C: LitVarStr var_94, "     </tr>"
  loc_A37871: PopAdLdVar
  loc_A37872: FLdPr Me
  loc_A37875: MemLdRfVar from_stack_1.htmFile
  loc_A37878: LdPrVar
  loc_A3787A: LateMemCall
  loc_A37880: ExitProcHresult
End Function

Private Function Proc_185_49_AAAEF0() 'AAAEF0
  'Data Table: 4F1070
  loc_AAA9E0: LitVarStr var_94, "    <tr valign=""top"" class=""LineaDato"" align=""right"">"
  loc_AAA9E5: PopAdLdVar
  loc_AAA9E6: FLdPr Me
  loc_AAA9E9: MemLdRfVar from_stack_1.htmFile
  loc_AAA9EC: LdPrVar
  loc_AAA9EE: LateMemCall
  loc_AAA9F4: FLdPr Me
  loc_AAA9F7: MemLdStr global_116
  loc_AAA9FA: LitI4 1
  loc_AAA9FF: AddI4
  loc_AAAA00: FLdPr Me
  loc_AAAA03: MemStI4 global_116
  loc_AAAA06: FLdPr Me
  loc_AAAA09: MemLdStr global_116
  loc_AAAA0C: LitI4 &H3A98
  loc_AAAA11: LeI4
  loc_AAAA12: BranchF loc_AAAAB3
  loc_AAAA15: FLdPr Me
  loc_AAAA18: VCallAd Control_ID_pbar
  loc_AAAA1B: FStAdFunc var_A8
  loc_AAAA1E: FLdPr var_A8
  loc_AAAA21: LateIdLdVar var_B8 DispID_1 0
  loc_AAAA28: PopAd
  loc_AAAA2A: FLdPr Me
  loc_AAAA2D: MemLdStr global_116
  loc_AAAA30: CR8I4
  loc_AAAA31: FLdRfVar var_B8
  loc_AAAA34: CR8Var
  loc_AAAA36: CR8R8
  loc_AAAA37: LeR8
  loc_AAAA38: FFree1Ad var_A8
  loc_AAAA3B: FFree1Var var_B8 = ""
  loc_AAAA3E: BranchF loc_AAAA61
  loc_AAAA41: FLdPr Me
  loc_AAAA44: MemLdStr global_116
  loc_AAAA47: CR8I4
  loc_AAAA48: CVarR4
  loc_AAAA4C: PopAdLdVar
  loc_AAAA4D: FLdPr Me
  loc_AAAA50: VCallAd Control_ID_pbar
  loc_AAAA53: FStAdFunc var_A8
  loc_AAAA56: FLdPr var_A8
  loc_AAAA59: LateIdSt
  loc_AAAA5E: FFree1Ad var_A8
  loc_AAAA61: LitStr "Partida: "
  loc_AAAA64: FLdPr Me
  loc_AAAA67: MemLdI2 global_100
  loc_AAAA6A: CStrUI1
  loc_AAAA6C: FStStrNoPop var_BC
  loc_AAAA6F: ConcatStr
  loc_AAAA70: FStStrNoPop var_C0
  loc_AAAA73: LitStr "/"
  loc_AAAA76: ConcatStr
  loc_AAAA77: FStStrNoPop var_C4
  loc_AAAA7A: FLdPr Me
  loc_AAAA7D: MemLdStr global_96
  loc_AAAA80: LitI2_Byte 1
  loc_AAAA82: FnUBound
  loc_AAAA84: CStrI4
  loc_AAAA86: FStStrNoPop var_C8
  loc_AAAA89: ConcatStr
  loc_AAAA8A: FStStrNoPop var_CC
  loc_AAAA8D: FLdPr Me
  loc_AAAA90: VCallAd Control_ID_PartidaLbl
  loc_AAAA93: FStAdFunc var_A8
  loc_AAAA96: FLdPr var_A8
  loc_AAAA99: Me.Caption = from_stack_1
  loc_AAAA9E: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_AAAAAB: FFree1Ad var_A8
  loc_AAAAAE: ImpAdCallFPR4 DoEvents()
  loc_AAAAB3: FLdPr Me
  loc_AAAAB6: MemLdStr global_112
  loc_AAAAB9: FLdPr Me
  loc_AAAABC: MemLdI2 global_108
  loc_AAAABF: CI4UI1
  loc_AAAAC0: FLdPr Me
  loc_AAAAC3: MemLdStr global_104
  loc_AAAAC6: FLdPr Me
  loc_AAAAC9: MemLdI2 global_100
  loc_AAAACC: CI4UI1
  loc_AAAACD: FLdPr Me
  loc_AAAAD0: MemLdStr global_96
  loc_AAAAD3: AryLock
  loc_AAAAD6: Ary1LdPr
  loc_AAAAD7: MemLdStr global_124
  loc_AAAADA: AryLock
  loc_AAAADD: Ary1LdPr
  loc_AAAADE: MemLdStr global_96
  loc_AAAAE1: AryLock
  loc_AAAAE4: Ary1LdPr
  loc_AAAAE5: MemLdStr global_96
  loc_AAAAE8: AryLock
  loc_AAAAEB: Ary1LdRf
  loc_AAAAEC: FStR4 var_E0
  loc_AAAAEF: LitStr "    <td>"
  loc_AAAAF2: FMemLdRf unk_4F0F91
  loc_AAAAF7: LdFixedStr
  loc_AAAAFA: FStStrNoPop var_BC
  loc_AAAAFD: ConcatStr
  loc_AAAAFE: FStStrNoPop var_C0
  loc_AAAB01: LitStr "</td>"
  loc_AAAB04: ConcatStr
  loc_AAAB05: CVarStr var_B8
  loc_AAAB08: PopAdLdVar
  loc_AAAB09: FLdPr Me
  loc_AAAB0C: MemLdRfVar from_stack_1.htmFile
  loc_AAAB0F: LdPrVar
  loc_AAAB11: LateMemCall
  loc_AAAB17: FFreeStr var_BC = ""
  loc_AAAB1E: FFree1Var var_B8 = ""
  loc_AAAB21: LitStr "    <td align=""left"">"
  loc_AAAB24: FMemLdR4 var_E0(0)
  loc_AAAB29: ConcatStr
  loc_AAAB2A: FStStrNoPop var_BC
  loc_AAAB2D: LitStr "</td>"
  loc_AAAB30: ConcatStr
  loc_AAAB31: CVarStr var_B8
  loc_AAAB34: PopAdLdVar
  loc_AAAB35: FLdPr Me
  loc_AAAB38: MemLdRfVar from_stack_1.htmFile
  loc_AAAB3B: LdPrVar
  loc_AAAB3D: LateMemCall
  loc_AAAB43: FFree1Str var_BC
  loc_AAAB46: FFree1Var var_B8 = ""
  loc_AAAB49: LitStr "    <td align=""left"">"
  loc_AAAB4C: FMemLdRf unk_4F0F91
  loc_AAAB51: LdFixedStr
  loc_AAAB54: FStStrNoPop var_BC
  loc_AAAB57: ConcatStr
  loc_AAAB58: FStStrNoPop var_C0
  loc_AAAB5B: LitStr "</td>"
  loc_AAAB5E: ConcatStr
  loc_AAAB5F: CVarStr var_B8
  loc_AAAB62: PopAdLdVar
  loc_AAAB63: FLdPr Me
  loc_AAAB66: MemLdRfVar from_stack_1.htmFile
  loc_AAAB69: LdPrVar
  loc_AAAB6B: LateMemCall
  loc_AAAB71: FFreeStr var_BC = ""
  loc_AAAB78: FFree1Var var_B8 = ""
  loc_AAAB7B: LitStr "    <td align=""left"">"
  loc_AAAB7E: FMemLdRf unk_4F0F91
  loc_AAAB83: LdFixedStr
  loc_AAAB86: FStStrNoPop var_BC
  loc_AAAB89: ImpAdCallI2 Trim$()
  loc_AAAB8E: FStStr var_C0
  loc_AAAB91: ILdRf var_BC
  loc_AAAB94: FMemLdRf unk_4F0F91
  loc_AAAB99: StFixedStr
  loc_AAAB9C: ILdRf var_C0
  loc_AAAB9F: ConcatStr
  loc_AAABA0: FStStrNoPop var_C4
  loc_AAABA3: LitStr "</td>"
  loc_AAABA6: ConcatStr
  loc_AAABA7: CVarStr var_B8
  loc_AAABAA: PopAdLdVar
  loc_AAABAB: FLdPr Me
  loc_AAABAE: MemLdRfVar from_stack_1.htmFile
  loc_AAABB1: LdPrVar
  loc_AAABB3: LateMemCall
  loc_AAABB9: FFreeStr var_BC = "": var_C0 = ""
  loc_AAABC2: FFree1Var var_B8 = ""
  loc_AAABC5: LitStr "    <td align=""center"">"
  loc_AAABC8: FMemLdRf unk_4F0F91
  loc_AAABCD: LdFixedStr
  loc_AAABD0: FStStrNoPop var_BC
  loc_AAABD3: ConcatStr
  loc_AAABD4: FStStrNoPop var_C0
  loc_AAABD7: LitStr "</td>"
  loc_AAABDA: ConcatStr
  loc_AAABDB: CVarStr var_B8
  loc_AAABDE: PopAdLdVar
  loc_AAABDF: FLdPr Me
  loc_AAABE2: MemLdRfVar from_stack_1.htmFile
  loc_AAABE5: LdPrVar
  loc_AAABE7: LateMemCall
  loc_AAABED: FFreeStr var_BC = ""
  loc_AAABF4: FFree1Var var_B8 = ""
  loc_AAABF7: LitStr "    <td align=""left"" nowrap>"
  loc_AAABFA: FMemLdRf unk_4F0F91
  loc_AAABFF: LdFixedStr
  loc_AAAC02: FStStrNoPop var_BC
  loc_AAAC05: ConcatStr
  loc_AAAC06: FStStrNoPop var_C0
  loc_AAAC09: LitStr "</td>"
  loc_AAAC0C: ConcatStr
  loc_AAAC0D: CVarStr var_B8
  loc_AAAC10: PopAdLdVar
  loc_AAAC11: FLdPr Me
  loc_AAAC14: MemLdRfVar from_stack_1.htmFile
  loc_AAAC17: LdPrVar
  loc_AAAC19: LateMemCall
  loc_AAAC1F: FFreeStr var_BC = ""
  loc_AAAC26: FFree1Var var_B8 = ""
  loc_AAAC29: LitVarStr var_110, "    <td>"
  loc_AAAC2E: FMemLdRf unk_4F0F91
  loc_AAAC33: CVarRef
  loc_AAAC38: LitVarStr var_A4, "&nbsp;"
  loc_AAAC3D: FStVarCopyObj var_B8
  loc_AAAC40: FLdRfVar var_B8
  loc_AAAC43: FMemLdR4 var_E0(164)
  loc_AAAC48: LitStr "0,00"
  loc_AAAC4B: EqStr
  loc_AAAC4D: CVarBoolI2 var_94
  loc_AAAC51: FLdRfVar var_100
  loc_AAAC54: ImpAdCallFPR4  = IIf(, , )
  loc_AAAC59: FLdRfVar var_100
  loc_AAAC5C: ConcatVar var_120
  loc_AAAC60: LitVarStr var_130, "</td>"
  loc_AAAC65: ConcatVar var_140
  loc_AAAC69: PopAdLdVar
  loc_AAAC6A: FLdPr Me
  loc_AAAC6D: MemLdRfVar from_stack_1.htmFile
  loc_AAAC70: LdPrVar
  loc_AAAC72: LateMemCall
  loc_AAAC78: FFreeVar var_94 = "": var_B8 = "": var_100 = "": var_120 = ""
  loc_AAAC85: LitVarStr var_110, "    <td>"
  loc_AAAC8A: FMemLdRf unk_4F0F91
  loc_AAAC8F: CVarRef
  loc_AAAC94: LitVarStr var_A4, "&nbsp;"
  loc_AAAC99: FStVarCopyObj var_B8
  loc_AAAC9C: FLdRfVar var_B8
  loc_AAAC9F: FMemLdR4 var_E0(168)
  loc_AAACA4: LitStr "0,00"
  loc_AAACA7: EqStr
  loc_AAACA9: CVarBoolI2 var_94
  loc_AAACAD: FLdRfVar var_100
  loc_AAACB0: ImpAdCallFPR4  = IIf(, , )
  loc_AAACB5: FLdRfVar var_100
  loc_AAACB8: ConcatVar var_120
  loc_AAACBC: LitVarStr var_130, "</td>"
  loc_AAACC1: ConcatVar var_140
  loc_AAACC5: PopAdLdVar
  loc_AAACC6: FLdPr Me
  loc_AAACC9: MemLdRfVar from_stack_1.htmFile
  loc_AAACCC: LdPrVar
  loc_AAACCE: LateMemCall
  loc_AAACD4: FFreeVar var_94 = "": var_B8 = "": var_100 = "": var_120 = ""
  loc_AAACE1: LitVarStr var_110, "    <td>"
  loc_AAACE6: FMemLdRf unk_4F0F91
  loc_AAACEB: CVarRef
  loc_AAACF0: LitVarStr var_A4, "&nbsp;"
  loc_AAACF5: FStVarCopyObj var_B8
  loc_AAACF8: FLdRfVar var_B8
  loc_AAACFB: FMemLdR4 var_E0(172)
  loc_AAAD00: LitStr "0,00"
  loc_AAAD03: EqStr
  loc_AAAD05: CVarBoolI2 var_94
  loc_AAAD09: FLdRfVar var_100
  loc_AAAD0C: ImpAdCallFPR4  = IIf(, , )
  loc_AAAD11: FLdRfVar var_100
  loc_AAAD14: ConcatVar var_120
  loc_AAAD18: LitVarStr var_130, "</td>"
  loc_AAAD1D: ConcatVar var_140
  loc_AAAD21: PopAdLdVar
  loc_AAAD22: FLdPr Me
  loc_AAAD25: MemLdRfVar from_stack_1.htmFile
  loc_AAAD28: LdPrVar
  loc_AAAD2A: LateMemCall
  loc_AAAD30: FFreeVar var_94 = "": var_B8 = "": var_100 = "": var_120 = ""
  loc_AAAD3D: LitVarStr var_110, "    <td>"
  loc_AAAD42: FMemLdRf unk_4F0F91
  loc_AAAD47: CVarRef
  loc_AAAD4C: LitVarStr var_A4, "&nbsp;"
  loc_AAAD51: FStVarCopyObj var_B8
  loc_AAAD54: FLdRfVar var_B8
  loc_AAAD57: FMemLdR4 var_E0(176)
  loc_AAAD5C: LitStr "0,00"
  loc_AAAD5F: EqStr
  loc_AAAD61: CVarBoolI2 var_94
  loc_AAAD65: FLdRfVar var_100
  loc_AAAD68: ImpAdCallFPR4  = IIf(, , )
  loc_AAAD6D: FLdRfVar var_100
  loc_AAAD70: ConcatVar var_120
  loc_AAAD74: LitVarStr var_130, "</td>"
  loc_AAAD79: ConcatVar var_140
  loc_AAAD7D: PopAdLdVar
  loc_AAAD7E: FLdPr Me
  loc_AAAD81: MemLdRfVar from_stack_1.htmFile
  loc_AAAD84: LdPrVar
  loc_AAAD86: LateMemCall
  loc_AAAD8C: FFreeVar var_94 = "": var_B8 = "": var_100 = "": var_120 = ""
  loc_AAAD99: LitVarStr var_110, "    <td>"
  loc_AAAD9E: FMemLdRf unk_4F0F91
  loc_AAADA3: CVarRef
  loc_AAADA8: LitVarStr var_A4, "&nbsp;"
  loc_AAADAD: FStVarCopyObj var_B8
  loc_AAADB0: FLdRfVar var_B8
  loc_AAADB3: FMemLdR4 var_E0(180)
  loc_AAADB8: LitStr "0,00"
  loc_AAADBB: EqStr
  loc_AAADBD: CVarBoolI2 var_94
  loc_AAADC1: FLdRfVar var_100
  loc_AAADC4: ImpAdCallFPR4  = IIf(, , )
  loc_AAADC9: FLdRfVar var_100
  loc_AAADCC: ConcatVar var_120
  loc_AAADD0: LitVarStr var_130, "</td>"
  loc_AAADD5: ConcatVar var_140
  loc_AAADD9: PopAdLdVar
  loc_AAADDA: FLdPr Me
  loc_AAADDD: MemLdRfVar from_stack_1.htmFile
  loc_AAADE0: LdPrVar
  loc_AAADE2: LateMemCall
  loc_AAADE8: FFreeVar var_94 = "": var_B8 = "": var_100 = "": var_120 = ""
  loc_AAADF5: FMemLdUI1 var_E0(192)
  loc_AAADFB: FStUI1 var_152
  loc_AAADFF: FLdUI1
  loc_AAAE03: LitI2_Byte 4
  loc_AAAE05: CUI1I2
  loc_AAAE07: EqI2
  loc_AAAE08: BranchF loc_AAAE36
  loc_AAAE0B: LitStr "    <td>"
  loc_AAAE0E: FMemLdR4 var_E0(184)
  loc_AAAE13: ConcatStr
  loc_AAAE14: FStStrNoPop var_BC
  loc_AAAE17: LitStr "</td>"
  loc_AAAE1A: ConcatStr
  loc_AAAE1B: CVarStr var_B8
  loc_AAAE1E: PopAdLdVar
  loc_AAAE1F: FLdPr Me
  loc_AAAE22: MemLdRfVar from_stack_1.htmFile
  loc_AAAE25: LdPrVar
  loc_AAAE27: LateMemCall
  loc_AAAE2D: FFree1Str var_BC
  loc_AAAE30: FFree1Var var_B8 = ""
  loc_AAAE33: Branch loc_AAAEC6
  loc_AAAE36: FLdUI1
  loc_AAAE3A: LitI2_Byte 5
  loc_AAAE3C: CUI1I2
  loc_AAAE3E: EqI2
  loc_AAAE3F: BranchF loc_AAAEA3
  loc_AAAE42: LitStr "Municipalidad de Guaymallén"
  loc_AAAE45: LitStr "Municipalidad de Guaymallén"
  loc_AAAE48: EqStr
  loc_AAAE4A: BranchF loc_AAAE78
  loc_AAAE4D: LitStr "    <td>"
  loc_AAAE50: FMemLdR4 var_E0(184)
  loc_AAAE55: ConcatStr
  loc_AAAE56: FStStrNoPop var_BC
  loc_AAAE59: LitStr "</td>"
  loc_AAAE5C: ConcatStr
  loc_AAAE5D: CVarStr var_B8
  loc_AAAE60: PopAdLdVar
  loc_AAAE61: FLdPr Me
  loc_AAAE64: MemLdRfVar from_stack_1.htmFile
  loc_AAAE67: LdPrVar
  loc_AAAE69: LateMemCall
  loc_AAAE6F: FFree1Str var_BC
  loc_AAAE72: FFree1Var var_B8 = ""
  loc_AAAE75: Branch loc_AAAEA0
  loc_AAAE78: LitStr "    <td>"
  loc_AAAE7B: FMemLdR4 var_E0(188)
  loc_AAAE80: ConcatStr
  loc_AAAE81: FStStrNoPop var_BC
  loc_AAAE84: LitStr "</td>"
  loc_AAAE87: ConcatStr
  loc_AAAE88: CVarStr var_B8
  loc_AAAE8B: PopAdLdVar
  loc_AAAE8C: FLdPr Me
  loc_AAAE8F: MemLdRfVar from_stack_1.htmFile
  loc_AAAE92: LdPrVar
  loc_AAAE94: LateMemCall
  loc_AAAE9A: FFree1Str var_BC
  loc_AAAE9D: FFree1Var var_B8 = ""
  loc_AAAEA0: Branch loc_AAAEC6
  loc_AAAEA3: FLdUI1
  loc_AAAEA7: LitI4 0
  loc_AAAEAC: CUI1I4
  loc_AAAEAE: EqI2
  loc_AAAEAF: BranchF loc_AAAEC6
  loc_AAAEB2: LitVarStr var_94, "    <td>&nbsp;</td>"
  loc_AAAEB7: PopAdLdVar
  loc_AAAEB8: FLdPr Me
  loc_AAAEBB: MemLdRfVar from_stack_1.htmFile
  loc_AAAEBE: LdPrVar
  loc_AAAEC0: LateMemCall
  loc_AAAEC6: LitVarStr var_94, "     </tr>"
  loc_AAAECB: PopAdLdVar
  loc_AAAECC: FLdPr Me
  loc_AAAECF: MemLdRfVar from_stack_1.htmFile
  loc_AAAED2: LdPrVar
  loc_AAAED4: LateMemCall
  loc_AAAEDA: LitI4 0
  loc_AAAEDF: FStR4 var_E0
  loc_AAAEE2: AryUnlock
  loc_AAAEE5: AryUnlock
  loc_AAAEE8: AryUnlock
  loc_AAAEEB: AryUnlock
  loc_AAAEEE: ExitProcHresult
End Function

Private Function Proc_185_50_A0D8F0() 'A0D8F0
  'Data Table: 4F1070
  loc_A0D77C: LitVarStr var_94, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A0D781: PopAdLdVar
  loc_A0D782: FLdPr Me
  loc_A0D785: MemLdRfVar from_stack_1.htmFile
  loc_A0D788: LdPrVar
  loc_A0D78A: LateMemCall
  loc_A0D790: LitVarStr var_94, "    <th colspan=""11"" class=""Encabezado"">&nbsp;</th>"
  loc_A0D795: PopAdLdVar
  loc_A0D796: FLdPr Me
  loc_A0D799: MemLdRfVar from_stack_1.htmFile
  loc_A0D79C: LdPrVar
  loc_A0D79E: LateMemCall
  loc_A0D7A4: LitVarStr var_94, "     </tr>"
  loc_A0D7A9: PopAdLdVar
  loc_A0D7AA: FLdPr Me
  loc_A0D7AD: MemLdRfVar from_stack_1.htmFile
  loc_A0D7B0: LdPrVar
  loc_A0D7B2: LateMemCall
  loc_A0D7B8: LitVarStr var_94, "  <tr class=""Totales"" align=""right"">"
  loc_A0D7BD: PopAdLdVar
  loc_A0D7BE: FLdPr Me
  loc_A0D7C1: MemLdRfVar from_stack_1.htmFile
  loc_A0D7C4: LdPrVar
  loc_A0D7C6: LateMemCall
  loc_A0D7CC: LitVarStr var_94, "    <th colspan=""7"" class=""Titulo2"">TOTALES:</th>"
  loc_A0D7D1: PopAdLdVar
  loc_A0D7D2: FLdPr Me
  loc_A0D7D5: MemLdRfVar from_stack_1.htmFile
  loc_A0D7D8: LdPrVar
  loc_A0D7DA: LateMemCall
  loc_A0D7E0: LitI4 1
  loc_A0D7E5: FLdPr Me
  loc_A0D7E8: MemLdStr global_136
  loc_A0D7EB: AryLock
  loc_A0D7EE: Ary1LdRf
  loc_A0D7EF: FStR4 var_AC
  loc_A0D7F2: LitStr "    <th>"
  loc_A0D7F5: FMemLdR4 var_AC(164)
  loc_A0D7FA: ConcatStr
  loc_A0D7FB: FStStrNoPop var_B0
  loc_A0D7FE: LitStr "</th>"
  loc_A0D801: ConcatStr
  loc_A0D802: CVarStr var_C0
  loc_A0D805: PopAdLdVar
  loc_A0D806: FLdPr Me
  loc_A0D809: MemLdRfVar from_stack_1.htmFile
  loc_A0D80C: LdPrVar
  loc_A0D80E: LateMemCall
  loc_A0D814: FFree1Str var_B0
  loc_A0D817: FFree1Var var_C0 = ""
  loc_A0D81A: LitStr "    <th>"
  loc_A0D81D: FMemLdR4 var_AC(168)
  loc_A0D822: ConcatStr
  loc_A0D823: FStStrNoPop var_B0
  loc_A0D826: LitStr "</th>"
  loc_A0D829: ConcatStr
  loc_A0D82A: CVarStr var_C0
  loc_A0D82D: PopAdLdVar
  loc_A0D82E: FLdPr Me
  loc_A0D831: MemLdRfVar from_stack_1.htmFile
  loc_A0D834: LdPrVar
  loc_A0D836: LateMemCall
  loc_A0D83C: FFree1Str var_B0
  loc_A0D83F: FFree1Var var_C0 = ""
  loc_A0D842: LitStr "    <th>"
  loc_A0D845: FMemLdR4 var_AC(172)
  loc_A0D84A: ConcatStr
  loc_A0D84B: FStStrNoPop var_B0
  loc_A0D84E: LitStr "</th>"
  loc_A0D851: ConcatStr
  loc_A0D852: CVarStr var_C0
  loc_A0D855: PopAdLdVar
  loc_A0D856: FLdPr Me
  loc_A0D859: MemLdRfVar from_stack_1.htmFile
  loc_A0D85C: LdPrVar
  loc_A0D85E: LateMemCall
  loc_A0D864: FFree1Str var_B0
  loc_A0D867: FFree1Var var_C0 = ""
  loc_A0D86A: LitStr "    <th>"
  loc_A0D86D: FMemLdR4 var_AC(176)
  loc_A0D872: ConcatStr
  loc_A0D873: FStStrNoPop var_B0
  loc_A0D876: LitStr "</th>"
  loc_A0D879: ConcatStr
  loc_A0D87A: CVarStr var_C0
  loc_A0D87D: PopAdLdVar
  loc_A0D87E: FLdPr Me
  loc_A0D881: MemLdRfVar from_stack_1.htmFile
  loc_A0D884: LdPrVar
  loc_A0D886: LateMemCall
  loc_A0D88C: FFree1Str var_B0
  loc_A0D88F: FFree1Var var_C0 = ""
  loc_A0D892: LitStr "    <th>"
  loc_A0D895: FMemLdR4 var_AC(180)
  loc_A0D89A: ConcatStr
  loc_A0D89B: FStStrNoPop var_B0
  loc_A0D89E: LitStr "</th>"
  loc_A0D8A1: ConcatStr
  loc_A0D8A2: CVarStr var_C0
  loc_A0D8A5: PopAdLdVar
  loc_A0D8A6: FLdPr Me
  loc_A0D8A9: MemLdRfVar from_stack_1.htmFile
  loc_A0D8AC: LdPrVar
  loc_A0D8AE: LateMemCall
  loc_A0D8B4: FFree1Str var_B0
  loc_A0D8B7: FFree1Var var_C0 = ""
  loc_A0D8BA: LitI4 0
  loc_A0D8BF: FStR4 var_AC
  loc_A0D8C2: AryUnlock
  loc_A0D8C5: LitVarStr var_94, "    <td>&nbsp;</td>"
  loc_A0D8CA: PopAdLdVar
  loc_A0D8CB: FLdPr Me
  loc_A0D8CE: MemLdRfVar from_stack_1.htmFile
  loc_A0D8D1: LdPrVar
  loc_A0D8D3: LateMemCall
  loc_A0D8D9: LitVarStr var_94, "  </tr>"
  loc_A0D8DE: PopAdLdVar
  loc_A0D8DF: FLdPr Me
  loc_A0D8E2: MemLdRfVar from_stack_1.htmFile
  loc_A0D8E5: LdPrVar
  loc_A0D8E7: LateMemCall
  loc_A0D8ED: ExitProcHresult
  loc_A0D8EE: NewIfNullAd
End Function

Private Function Proc_185_51_9B9F9C() '9B9F9C
  'Data Table: 4F1070
  loc_9B9EE4: LitVarStr var_94, "<html>"
  loc_9B9EE9: PopAdLdVar
  loc_9B9EEA: FLdPr Me
  loc_9B9EED: MemLdRfVar from_stack_1.htmFile
  loc_9B9EF0: LdPrVar
  loc_9B9EF2: LateMemCall
  loc_9B9EF8: LitVarStr var_94, "<head>"
  loc_9B9EFD: PopAdLdVar
  loc_9B9EFE: FLdPr Me
  loc_9B9F01: MemLdRfVar from_stack_1.htmFile
  loc_9B9F04: LdPrVar
  loc_9B9F06: LateMemCall
  loc_9B9F0C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_9B9F11: PopAdLdVar
  loc_9B9F12: FLdPr Me
  loc_9B9F15: MemLdRfVar from_stack_1.htmFile
  loc_9B9F18: LdPrVar
  loc_9B9F1A: LateMemCall
  loc_9B9F20: LitStr "<title>"
  loc_9B9F23: FLdRfVar var_A8
  loc_9B9F26: FLdPr Me
  loc_9B9F29:  = Me.Caption
  loc_9B9F2E: ILdRf var_A8
  loc_9B9F31: ConcatStr
  loc_9B9F32: FStStrNoPop var_AC
  loc_9B9F35: LitStr "</title>"
  loc_9B9F38: ConcatStr
  loc_9B9F39: CVarStr var_BC
  loc_9B9F3C: PopAdLdVar
  loc_9B9F3D: FLdPr Me
  loc_9B9F40: MemLdRfVar from_stack_1.htmFile
  loc_9B9F43: LdPrVar
  loc_9B9F45: LateMemCall
  loc_9B9F4B: FFreeStr var_A8 = ""
  loc_9B9F52: FFree1Var var_BC = ""
  loc_9B9F55: LitStr vbNullString
  loc_9B9F58: ILdRf Me
  loc_9B9F5B: CastAd
  loc_9B9F5E: FStAdFunc var_C0
  loc_9B9F61: FLdRfVar var_C0
  loc_9B9F64: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_9B9F69: FFree1Ad var_C0
  loc_9B9F6C: LitI4 0
  loc_9B9F71: FStStrCopy var_AC
  loc_9B9F74: FLdRfVar var_AC
  loc_9B9F77: LitI4 0
  loc_9B9F7C: FStStrCopy var_A8
  loc_9B9F7F: FLdRfVar var_A8
  loc_9B9F82: LitI2_Byte &HFF
  loc_9B9F84: PopTmpLdAd2 var_C2
  loc_9B9F87: FLdPr Me
  loc_9B9F8A: MemLdRfVar from_stack_1.htmFile
  loc_9B9F8D: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_9B9F92: FFreeStr var_A8 = ""
  loc_9B9F99: ExitProcHresult
  loc_9B9F9A: PopTmpLdAdStr var_7FD
End Function

Private Function Proc_185_52_A984F8() 'A984F8
  'Data Table: 4F1070
  loc_A9805C: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A98061: PopAdLdVar
  loc_A98062: FLdPr Me
  loc_A98065: MemLdRfVar from_stack_1.htmFile
  loc_A98068: LdPrVar
  loc_A9806A: LateMemCall
  loc_A98070: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A98075: PopAdLdVar
  loc_A98076: FLdPr Me
  loc_A98079: MemLdRfVar from_stack_1.htmFile
  loc_A9807C: LdPrVar
  loc_A9807E: LateMemCall
  loc_A98084: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ valign=""bottom""><p align=""center""><br>"
  loc_A98089: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A9808E: FStVarCopyObj var_B4
  loc_A98091: FLdRfVar var_B4
  loc_A98094: FLdRfVar var_C4
  loc_A98097: ImpAdCallFPR4  = Ucase()
  loc_A9809C: FLdRfVar var_C4
  loc_A9809F: ConcatVar var_D4
  loc_A980A3: LitVarStr var_E4, "</p>"
  loc_A980A8: ConcatVar var_F4
  loc_A980AC: PopAdLdVar
  loc_A980AD: FLdPr Me
  loc_A980B0: MemLdRfVar from_stack_1.htmFile
  loc_A980B3: LdPrVar
  loc_A980B5: LateMemCall
  loc_A980BB: FFreeVar var_B4 = "": var_C4 = "": var_D4 = ""
  loc_A980C6: LitStr "    <p align=""center"">"
  loc_A980C9: FLdRfVar var_108
  loc_A980CC: FLdPr Me
  loc_A980CF:  = Me.Caption
  loc_A980D4: ILdRf var_108
  loc_A980D7: ConcatStr
  loc_A980D8: CVarStr var_F4
  loc_A980DB: LitVarStr var_A4, vbNullString
  loc_A980E0: FStVarCopyObj var_C4
  loc_A980E3: FLdRfVar var_C4
  loc_A980E6: LitStr " - TOMO "
  loc_A980E9: FLdPr Me
  loc_A980EC: MemLdStr global_120
  loc_A980EF: LitI4 1
  loc_A980F4: AddI4
  loc_A980F5: CStrI4
  loc_A980F7: FStStrNoPop var_10C
  loc_A980FA: ConcatStr
  loc_A980FB: CVarStr var_B4
  loc_A980FE: FLdPr Me
  loc_A98101: MemLdRfVar from_stack_1.global_126
  loc_A98104: CVarRef
  loc_A98109: FLdRfVar var_D4
  loc_A9810C: ImpAdCallFPR4  = IIf(, , )
  loc_A98111: FLdRfVar var_D4
  loc_A98114: ConcatVar var_11C
  loc_A98118: LitVarStr var_E4, "</p></th>"
  loc_A9811D: ConcatVar var_12C
  loc_A98121: PopAdLdVar
  loc_A98122: FLdPr Me
  loc_A98125: MemLdRfVar from_stack_1.htmFile
  loc_A98128: LdPrVar
  loc_A9812A: LateMemCall
  loc_A98130: FFreeStr var_108 = ""
  loc_A98137: FFreeVar var_B4 = "": var_C4 = "": var_F4 = "": var_D4 = "": var_11C = ""
  loc_A98146: LitVarStr var_94, "  </tr>"
  loc_A9814B: PopAdLdVar
  loc_A9814C: FLdPr Me
  loc_A9814F: MemLdRfVar from_stack_1.htmFile
  loc_A98152: LdPrVar
  loc_A98154: LateMemCall
  loc_A9815A: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_A9815F: PopAdLdVar
  loc_A98160: FLdPr Me
  loc_A98163: MemLdRfVar from_stack_1.htmFile
  loc_A98166: LdPrVar
  loc_A98168: LateMemCall
  loc_A9816E: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_A98173: PopAdLdVar
  loc_A98174: FLdPr Me
  loc_A98177: MemLdRfVar from_stack_1.htmFile
  loc_A9817A: LdPrVar
  loc_A9817C: LateMemCall
  loc_A98182: LitStr "   Periodo: <span class=""Normal"">"
  loc_A98185: FLdRfVar var_108
  loc_A98188: FLdPr Me
  loc_A9818B: VCallAd Control_ID_cboPeriodo
  loc_A9818E: FStAdFunc var_130
  loc_A98191: FLdPr var_130
  loc_A98194:  = Me.Text
  loc_A98199: ILdRf var_108
  loc_A9819C: ConcatStr
  loc_A9819D: FStStrNoPop var_10C
  loc_A981A0: LitStr "</span>"
  loc_A981A3: ConcatStr
  loc_A981A4: CVarStr var_B4
  loc_A981A7: PopAdLdVar
  loc_A981A8: FLdPr Me
  loc_A981AB: MemLdRfVar from_stack_1.htmFile
  loc_A981AE: LdPrVar
  loc_A981B0: LateMemCall
  loc_A981B6: FFreeStr var_108 = ""
  loc_A981BD: FFree1Ad var_130
  loc_A981C0: FFree1Var var_B4 = ""
  loc_A981C3: LitStr "   <br>Desde: <span class=""Normal"">"
  loc_A981C6: FLdPr Me
  loc_A981C9: VCallAd Control_ID_mskDesde
  loc_A981CC: FStAdFunc var_130
  loc_A981CF: FLdPr var_130
  loc_A981D2: LateIdLdVar var_B4 DispID_15 0
  loc_A981D9: CStrVarTmp
  loc_A981DA: FStStrNoPop var_108
  loc_A981DD: ConcatStr
  loc_A981DE: FStStrNoPop var_10C
  loc_A981E1: LitStr "</span>"
  loc_A981E4: ConcatStr
  loc_A981E5: CVarStr var_C4
  loc_A981E8: PopAdLdVar
  loc_A981E9: FLdPr Me
  loc_A981EC: MemLdRfVar from_stack_1.htmFile
  loc_A981EF: LdPrVar
  loc_A981F1: LateMemCall
  loc_A981F7: FFreeStr var_108 = ""
  loc_A981FE: FFree1Ad var_130
  loc_A98201: FFreeVar var_B4 = ""
  loc_A98208: LitStr "   <br>Hasta: <span class=""Normal"">"
  loc_A9820B: FLdPr Me
  loc_A9820E: VCallAd Control_ID_mskHasta
  loc_A98211: FStAdFunc var_130
  loc_A98214: FLdPr var_130
  loc_A98217: LateIdLdVar var_B4 DispID_15 0
  loc_A9821E: CStrVarTmp
  loc_A9821F: FStStrNoPop var_108
  loc_A98222: ConcatStr
  loc_A98223: FStStrNoPop var_10C
  loc_A98226: LitStr "</span>"
  loc_A98229: ConcatStr
  loc_A9822A: CVarStr var_C4
  loc_A9822D: PopAdLdVar
  loc_A9822E: FLdPr Me
  loc_A98231: MemLdRfVar from_stack_1.htmFile
  loc_A98234: LdPrVar
  loc_A98236: LateMemCall
  loc_A9823C: FFreeStr var_108 = ""
  loc_A98243: FFree1Ad var_130
  loc_A98246: FFreeVar var_B4 = ""
  loc_A9824D: FLdPr Me
  loc_A98250: VCallAd Control_ID_CodiPartMsk
  loc_A98253: FStAdFunc var_130
  loc_A98256: FLdPr var_130
  loc_A98259: LateIdLdVar var_B4 DispID_0 0
  loc_A98260: CStrVarTmp
  loc_A98261: FStStrNoPop var_108
  loc_A98264: LitStr vbNullString
  loc_A98267: NeStr
  loc_A98269: FFree1Str var_108
  loc_A9826C: FFree1Ad var_130
  loc_A9826F: FFree1Var var_B4 = ""
  loc_A98272: BranchF loc_A982B6
  loc_A98275: LitStr "   <br>Partida: <span class=""Normal"">"
  loc_A98278: FLdRfVar var_108
  loc_A9827B: FLdPr Me
  loc_A9827E: VCallAd Control_ID_CodiPartLbl
  loc_A98281: FStAdFunc var_130
  loc_A98284: FLdPr var_130
  loc_A98287:  = Me.Caption
  loc_A9828C: ILdRf var_108
  loc_A9828F: ConcatStr
  loc_A98290: FStStrNoPop var_10C
  loc_A98293: LitStr "</span>"
  loc_A98296: ConcatStr
  loc_A98297: CVarStr var_B4
  loc_A9829A: PopAdLdVar
  loc_A9829B: FLdPr Me
  loc_A9829E: MemLdRfVar from_stack_1.htmFile
  loc_A982A1: LdPrVar
  loc_A982A3: LateMemCall
  loc_A982A9: FFreeStr var_108 = ""
  loc_A982B0: FFree1Ad var_130
  loc_A982B3: FFree1Var var_B4 = ""
  loc_A982B6: FLdPr Me
  loc_A982B9: VCallAd Control_ID_CodiOrgaMsk
  loc_A982BC: FStAdFunc var_130
  loc_A982BF: FLdPr var_130
  loc_A982C2: LateIdLdVar var_B4 DispID_0 0
  loc_A982C9: CStrVarTmp
  loc_A982CA: FStStrNoPop var_108
  loc_A982CD: LitStr vbNullString
  loc_A982D0: NeStr
  loc_A982D2: FFree1Str var_108
  loc_A982D5: FFree1Ad var_130
  loc_A982D8: FFree1Var var_B4 = ""
  loc_A982DB: BranchF loc_A9834F
  loc_A982DE: LitStr "   <br>Organigrama: <span class=""Normal"">Comenzando con '"
  loc_A982E1: FLdPr Me
  loc_A982E4: VCallAd Control_ID_CodiOrgaMsk
  loc_A982E7: FStAdFunc var_130
  loc_A982EA: FLdPr var_130
  loc_A982ED: LateIdLdVar var_B4 DispID_0 0
  loc_A982F4: CStrVarTmp
  loc_A982F5: FStStrNoPop var_108
  loc_A982F8: ConcatStr
  loc_A982F9: FStStrNoPop var_10C
  loc_A982FC: LitStr "'  -  "
  loc_A982FF: ConcatStr
  loc_A98300: FStStrNoPop var_13C
  loc_A98303: FLdRfVar var_138
  loc_A98306: FLdPr Me
  loc_A98309: VCallAd Control_ID_CodiOrgaLbl
  loc_A9830C: FStAdFunc var_134
  loc_A9830F: FLdPr var_134
  loc_A98312:  = Me.Caption
  loc_A98317: ILdRf var_138
  loc_A9831A: ConcatStr
  loc_A9831B: FStStrNoPop var_140
  loc_A9831E: LitStr "</span>"
  loc_A98321: ConcatStr
  loc_A98322: CVarStr var_C4
  loc_A98325: PopAdLdVar
  loc_A98326: FLdPr Me
  loc_A98329: MemLdRfVar from_stack_1.htmFile
  loc_A9832C: LdPrVar
  loc_A9832E: LateMemCall
  loc_A98334: FFreeStr var_108 = "": var_10C = "": var_13C = "": var_138 = ""
  loc_A98341: FFreeAd var_130 = ""
  loc_A98348: FFreeVar var_B4 = ""
  loc_A9834F: FLdPr Me
  loc_A98352: VCallAd Control_ID_CodiUngaMsk
  loc_A98355: FStAdFunc var_130
  loc_A98358: FLdPr var_130
  loc_A9835B: LateIdLdVar var_B4 DispID_0 0
  loc_A98362: CStrVarTmp
  loc_A98363: FStStrNoPop var_108
  loc_A98366: LitStr vbNullString
  loc_A98369: NeStr
  loc_A9836B: FFree1Str var_108
  loc_A9836E: FFree1Ad var_130
  loc_A98371: FFree1Var var_B4 = ""
  loc_A98374: BranchF loc_A983E8
  loc_A98377: LitStr "   <br>Unidad de Gasto: <span class=""Normal"">"
  loc_A9837A: FLdPr Me
  loc_A9837D: VCallAd Control_ID_CodiUngaMsk
  loc_A98380: FStAdFunc var_130
  loc_A98383: FLdPr var_130
  loc_A98386: LateIdLdVar var_B4 DispID_22 0
  loc_A9838D: CStrVarTmp
  loc_A9838E: FStStrNoPop var_108
  loc_A98391: ConcatStr
  loc_A98392: FStStrNoPop var_10C
  loc_A98395: LitStr " - "
  loc_A98398: ConcatStr
  loc_A98399: FStStrNoPop var_13C
  loc_A9839C: FLdRfVar var_138
  loc_A9839F: FLdPr Me
  loc_A983A2: VCallAd Control_ID_CodiUngaLbl
  loc_A983A5: FStAdFunc var_134
  loc_A983A8: FLdPr var_134
  loc_A983AB:  = Me.Caption
  loc_A983B0: ILdRf var_138
  loc_A983B3: ConcatStr
  loc_A983B4: FStStrNoPop var_140
  loc_A983B7: LitStr "</span>"
  loc_A983BA: ConcatStr
  loc_A983BB: CVarStr var_C4
  loc_A983BE: PopAdLdVar
  loc_A983BF: FLdPr Me
  loc_A983C2: MemLdRfVar from_stack_1.htmFile
  loc_A983C5: LdPrVar
  loc_A983C7: LateMemCall
  loc_A983CD: FFreeStr var_108 = "": var_10C = "": var_13C = "": var_138 = ""
  loc_A983DA: FFreeAd var_130 = ""
  loc_A983E1: FFreeVar var_B4 = ""
  loc_A983E8: FLdPr Me
  loc_A983EB: VCallAd Control_ID_CodiFifuMsk
  loc_A983EE: FStAdFunc var_130
  loc_A983F1: FLdPr var_130
  loc_A983F4: LateIdLdVar var_B4 DispID_0 0
  loc_A983FB: CStrVarTmp
  loc_A983FC: FStStrNoPop var_108
  loc_A983FF: LitStr vbNullString
  loc_A98402: NeStr
  loc_A98404: FFree1Str var_108
  loc_A98407: FFree1Ad var_130
  loc_A9840A: FFree1Var var_B4 = ""
  loc_A9840D: BranchF loc_A98481
  loc_A98410: LitStr "   <br>Finalidad y Funci&oacute;n: <span class=""Normal"">Comenzando con '"
  loc_A98413: FLdPr Me
  loc_A98416: VCallAd Control_ID_CodiFifuMsk
  loc_A98419: FStAdFunc var_130
  loc_A9841C: FLdPr var_130
  loc_A9841F: LateIdLdVar var_B4 DispID_0 0
  loc_A98426: CStrVarTmp
  loc_A98427: FStStrNoPop var_108
  loc_A9842A: ConcatStr
  loc_A9842B: FStStrNoPop var_10C
  loc_A9842E: LitStr "'  -  "
  loc_A98431: ConcatStr
  loc_A98432: FStStrNoPop var_13C
  loc_A98435: FLdRfVar var_138
  loc_A98438: FLdPr Me
  loc_A9843B: VCallAd Control_ID_CodiFifuLbl
  loc_A9843E: FStAdFunc var_134
  loc_A98441: FLdPr var_134
  loc_A98444:  = Me.Caption
  loc_A98449: ILdRf var_138
  loc_A9844C: ConcatStr
  loc_A9844D: FStStrNoPop var_140
  loc_A98450: LitStr "</span>"
  loc_A98453: ConcatStr
  loc_A98454: CVarStr var_C4
  loc_A98457: PopAdLdVar
  loc_A98458: FLdPr Me
  loc_A9845B: MemLdRfVar from_stack_1.htmFile
  loc_A9845E: LdPrVar
  loc_A98460: LateMemCall
  loc_A98466: FFreeStr var_108 = "": var_10C = "": var_13C = "": var_138 = ""
  loc_A98473: FFreeAd var_130 = ""
  loc_A9847A: FFreeVar var_B4 = ""
  loc_A98481: FLdRfVar var_142
  loc_A98484: FLdPr Me
  loc_A98487: VCallAd Control_ID_SoloLocadoresChk
  loc_A9848A: FStAdFunc var_130
  loc_A9848D: FLdPr var_130
  loc_A98490:  = Me.Value
  loc_A98495: FLdI2 var_142
  loc_A98498: CI4UI1
  loc_A98499: LitI4 1
  loc_A9849E: EqI4
  loc_A9849F: FFree1Ad var_130
  loc_A984A2: BranchF loc_A984B9
  loc_A984A5: LitVarStr var_94, "   <br>Solo Locadores de Servicios"
  loc_A984AA: PopAdLdVar
  loc_A984AB: FLdPr Me
  loc_A984AE: MemLdRfVar from_stack_1.htmFile
  loc_A984B1: LdPrVar
  loc_A984B3: LateMemCall
  loc_A984B9: LitVarStr var_94, "   </th>"
  loc_A984BE: PopAdLdVar
  loc_A984BF: FLdPr Me
  loc_A984C2: MemLdRfVar from_stack_1.htmFile
  loc_A984C5: LdPrVar
  loc_A984C7: LateMemCall
  loc_A984CD: LitVarStr var_94, "  </tr>"
  loc_A984D2: PopAdLdVar
  loc_A984D3: FLdPr Me
  loc_A984D6: MemLdRfVar from_stack_1.htmFile
  loc_A984D9: LdPrVar
  loc_A984DB: LateMemCall
  loc_A984E1: LitVarStr var_94, "</table>"
  loc_A984E6: PopAdLdVar
  loc_A984E7: FLdPr Me
  loc_A984EA: MemLdRfVar from_stack_1.htmFile
  loc_A984ED: LdPrVar
  loc_A984EF: LateMemCall
  loc_A984F5: ExitProcHresult
  loc_A984F6: AddI2
End Function

Private Function Proc_185_53_A151E8() 'A151E8
  'Data Table: 4F1070
  loc_A15054: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" cellpadding=""0"" cellspacing=""0"">"
  loc_A15059: PopAdLdVar
  loc_A1505A: FLdPr Me
  loc_A1505D: MemLdRfVar from_stack_1.htmFile
  loc_A15060: LdPrVar
  loc_A15062: LateMemCall
  loc_A15068: LitVarStr var_94, "  <THEAD>"
  loc_A1506D: PopAdLdVar
  loc_A1506E: FLdPr Me
  loc_A15071: MemLdRfVar from_stack_1.htmFile
  loc_A15074: LdPrVar
  loc_A15076: LateMemCall
  loc_A1507C: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A15081: PopAdLdVar
  loc_A15082: FLdPr Me
  loc_A15085: MemLdRfVar from_stack_1.htmFile
  loc_A15088: LdPrVar
  loc_A1508A: LateMemCall
  loc_A15090: LitVarStr var_94, "    <th rowspan=""2"">Núm.</th>"
  loc_A15095: PopAdLdVar
  loc_A15096: FLdPr Me
  loc_A15099: MemLdRfVar from_stack_1.htmFile
  loc_A1509C: LdPrVar
  loc_A1509E: LateMemCall
  loc_A150A4: LitVarStr var_94, "    <th rowspan=""2"">Detalle</th>"
  loc_A150A9: PopAdLdVar
  loc_A150AA: FLdPr Me
  loc_A150AD: MemLdRfVar from_stack_1.htmFile
  loc_A150B0: LdPrVar
  loc_A150B2: LateMemCall
  loc_A150B8: LitVarStr var_94, "    <th colspan=""2"">Expediente</th>"
  loc_A150BD: PopAdLdVar
  loc_A150BE: FLdPr Me
  loc_A150C1: MemLdRfVar from_stack_1.htmFile
  loc_A150C4: LdPrVar
  loc_A150C6: LateMemCall
  loc_A150CC: LitVarStr var_94, "    <th rowspan=""2"">Fecha</th>"
  loc_A150D1: PopAdLdVar
  loc_A150D2: FLdPr Me
  loc_A150D5: MemLdRfVar from_stack_1.htmFile
  loc_A150D8: LdPrVar
  loc_A150DA: LateMemCall
  loc_A150E0: LitVarStr var_94, "    <th rowspan=""2"">Proveedor</th>"
  loc_A150E5: PopAdLdVar
  loc_A150E6: FLdPr Me
  loc_A150E9: MemLdRfVar from_stack_1.htmFile
  loc_A150EC: LdPrVar
  loc_A150EE: LateMemCall
  loc_A150F4: LitVarStr var_94, "    <th rowspan=""2"">Preventiva</th>"
  loc_A150F9: PopAdLdVar
  loc_A150FA: FLdPr Me
  loc_A150FD: MemLdRfVar from_stack_1.htmFile
  loc_A15100: LdPrVar
  loc_A15102: LateMemCall
  loc_A15108: LitVarStr var_94, "    <th rowspan=""2"">Definitiva</th>"
  loc_A1510D: PopAdLdVar
  loc_A1510E: FLdPr Me
  loc_A15111: MemLdRfVar from_stack_1.htmFile
  loc_A15114: LdPrVar
  loc_A15116: LateMemCall
  loc_A1511C: LitVarStr var_94, "    <th rowspan=""2"">Devengado</th>"
  loc_A15121: PopAdLdVar
  loc_A15122: FLdPr Me
  loc_A15125: MemLdRfVar from_stack_1.htmFile
  loc_A15128: LdPrVar
  loc_A1512A: LateMemCall
  loc_A15130: LitVarStr var_94, "    <th rowspan=""2"">Mandado<br>a pagar</th>"
  loc_A15135: PopAdLdVar
  loc_A15136: FLdPr Me
  loc_A15139: MemLdRfVar from_stack_1.htmFile
  loc_A1513C: LdPrVar
  loc_A1513E: LateMemCall
  loc_A15144: LitVarStr var_94, "    <th rowspan=""2"">Pagado</th>"
  loc_A15149: PopAdLdVar
  loc_A1514A: FLdPr Me
  loc_A1514D: MemLdRfVar from_stack_1.htmFile
  loc_A15150: LdPrVar
  loc_A15152: LateMemCall
  loc_A15158: LitVarStr var_94, "    <th rowspan=""2"">&nbsp;</th>"
  loc_A1515D: PopAdLdVar
  loc_A1515E: FLdPr Me
  loc_A15161: MemLdRfVar from_stack_1.htmFile
  loc_A15164: LdPrVar
  loc_A15166: LateMemCall
  loc_A1516C: LitVarStr var_94, "  </tr>"
  loc_A15171: PopAdLdVar
  loc_A15172: FLdPr Me
  loc_A15175: MemLdRfVar from_stack_1.htmFile
  loc_A15178: LdPrVar
  loc_A1517A: LateMemCall
  loc_A15180: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A15185: PopAdLdVar
  loc_A15186: FLdPr Me
  loc_A15189: MemLdRfVar from_stack_1.htmFile
  loc_A1518C: LdPrVar
  loc_A1518E: LateMemCall
  loc_A15194: LitVarStr var_94, "    <th>Original</th>"
  loc_A15199: PopAdLdVar
  loc_A1519A: FLdPr Me
  loc_A1519D: MemLdRfVar from_stack_1.htmFile
  loc_A151A0: LdPrVar
  loc_A151A2: LateMemCall
  loc_A151A8: LitVarStr var_94, "    <th>de Pago</th>"
  loc_A151AD: PopAdLdVar
  loc_A151AE: FLdPr Me
  loc_A151B1: MemLdRfVar from_stack_1.htmFile
  loc_A151B4: LdPrVar
  loc_A151B6: LateMemCall
  loc_A151BC: LitVarStr var_94, "  </tr>"
  loc_A151C1: PopAdLdVar
  loc_A151C2: FLdPr Me
  loc_A151C5: MemLdRfVar from_stack_1.htmFile
  loc_A151C8: LdPrVar
  loc_A151CA: LateMemCall
  loc_A151D0: LitVarStr var_94, "  </THEAD>"
  loc_A151D5: PopAdLdVar
  loc_A151D6: FLdPr Me
  loc_A151D9: MemLdRfVar from_stack_1.htmFile
  loc_A151DC: LdPrVar
  loc_A151DE: LateMemCall
  loc_A151E4: ExitProcHresult
  loc_A151E5: LeI2
  loc_A151E6: LitStr "?N$"
End Function

Private Function Proc_185_54_982930() '982930
  'Data Table: 4F1070
  loc_9828F0: LitVarStr var_94, "</table>"
  loc_9828F5: PopAdLdVar
  loc_9828F6: FLdPr Me
  loc_9828F9: MemLdRfVar from_stack_1.htmFile
  loc_9828FC: LdPrVar
  loc_9828FE: LateMemCall
  loc_982904: LitVarStr var_94, "</body>"
  loc_982909: PopAdLdVar
  loc_98290A: FLdPr Me
  loc_98290D: MemLdRfVar from_stack_1.htmFile
  loc_982910: LdPrVar
  loc_982912: LateMemCall
  loc_982918: LitVarStr var_94, "</html>"
  loc_98291D: PopAdLdVar
  loc_98291E: FLdPr Me
  loc_982921: MemLdRfVar from_stack_1.htmFile
  loc_982924: LdPrVar
  loc_982926: LateMemCall
  loc_98292C: ExitProcHresult
End Function
