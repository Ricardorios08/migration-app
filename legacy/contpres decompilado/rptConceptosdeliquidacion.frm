VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptConceptosdeliquidacion
  Caption = "Conceptos de liquidación"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptConceptosdeliquidacion.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 8190
  ClientHeight = 5460
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5205
    Width = 8190
    Height = 255
    TabIndex = 30
    OleObjectBlob = "rptConceptosdeliquidacion.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6960
    Top = 4200
    Width = 735
    Height = 615
    TabIndex = 29
    Cancel = -1  'True
    Picture = "rptConceptosdeliquidacion.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptConceptosdeliquidacion.frx":0B9C
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 3960
    Width = 3375
    Height = 1095
    TabIndex = 24
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 26
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 25
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3960
    Width = 3015
    Height = 1095
    TabIndex = 21
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 23
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 22
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7935
    Height = 3855
    TabIndex = 0
    Begin VB.ComboBox cboCodiDere
      Style = 2
      ForeColor = &HFF0000&
      Left = 1200
      Top = 3360
      Width = 4815
      Height = 315
      TabIndex = 20
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1200
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
      CausesValidation = 0   'False
    End
    Begin VB.Frame FrameFecha
      Caption = "Fecha: "
      Left = 240
      Top = 840
      Width = 5295
      Height = 1335
      TabIndex = 3
      Begin VB.OptionButton OptionFepaLine
        Caption = "de Pago efectivo"
        Left = 3360
        Top = 960
        Width = 1695
        Height = 255
        TabIndex = 12
      End
      Begin VB.CommandButton cmdCalDesde
        Left = 2205
        Top = 360
        Width = 375
        Height = 375
        TabIndex = 6
        Picture = "rptConceptosdeliquidacion.frx":0C00
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.CommandButton cmdCalHasta
        Left = 2205
        Top = 840
        Width = 375
        Height = 375
        TabIndex = 9
        Picture = "rptConceptosdeliquidacion.frx":1142
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.OptionButton OptionPago
        Caption = "de Pago"
        Left = 3360
        Top = 600
        Width = 975
        Height = 255
        TabIndex = 11
      End
      Begin VB.OptionButton OptionLiquidacion
        Caption = "de Liquidación"
        Left = 3360
        Top = 240
        Width = 1455
        Height = 195
        TabIndex = 10
      End
      Begin MSMask.MaskEdBox mskDesde
        Left = 1005
        Top = 360
        Width = 1095
        Height = 285
        TabIndex = 5
        OleObjectBlob = "rptConceptosdeliquidacion.frx":1684
      End
      Begin MSMask.MaskEdBox mskHasta
        Left = 1005
        Top = 840
        Width = 1095
        Height = 285
        TabIndex = 8
        OleObjectBlob = "rptConceptosdeliquidacion.frx":170C
      End
      Begin VB.Label Label1
        Caption = "Desde:"
        Left = 360
        Top = 360
        Width = 510
        Height = 195
        TabIndex = 4
        AutoSize = -1  'True
      End
      Begin VB.Label Label2
        Caption = "Hasta:"
        Left = 405
        Top = 840
        Width = 465
        Height = 195
        TabIndex = 7
        AutoSize = -1  'True
      End
    End
    Begin VB.ComboBox cboCodiRete
      Style = 2
      ForeColor = &HFF0000&
      Left = 1200
      Top = 2880
      Width = 4815
      Height = 315
      TabIndex = 18
    End
    Begin VB.CommandButton CucuPersCmd
      Left = 2640
      Top = 2400
      Width = 375
      Height = 375
      TabIndex = 15
      Picture = "rptConceptosdeliquidacion.frx":1794
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6120
      Top = 960
      Width = 1335
      Height = 495
      TabIndex = 27
    End
    Begin VB.TextBox CucuPersTxt
      Left = 1200
      Top = 2400
      Width = 1335
      Height = 285
      TabIndex = 14
      MaxLength = 11
    End
    Begin VB.Label Label6
      Caption = "Categoría:"
      Left = 315
      Top = 3360
      Width = 750
      Height = 195
      TabIndex = 19
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 480
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label Label4
      Caption = "Concepto:"
      Left = 330
      Top = 2880
      Width = 735
      Height = 195
      TabIndex = 17
      AutoSize = -1  'True
    End
    Begin VB.Label Label5
      Caption = "Proveedor:"
      Left = 285
      Top = 2400
      Width = 780
      Height = 195
      TabIndex = 13
    End
    Begin VB.Label lblDetaProv
      Left = 3120
      Top = 2400
      Width = 2895
      Height = 375
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7080
    Top = 4440
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 28
    OleObjectBlob = "rptConceptosdeliquidacion.frx":188E
  End
End

Attribute VB_Name = "rptConceptosdeliquidacion"

Public htmFile As Variant
Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_005BC120
  bStruc(48) As Byte ' String fields: 12
End Type

Private Type UDT_2_005CF740
  bStruc(24) As Byte ' String fields: 6
End Type


Private Sub cmdPredeterminada_Click() '959598
  'Data Table: 4BCD04
  loc_959580: ILdRf Me
  loc_959583: CastAd
  loc_959586: FStAdFunc var_88
  loc_959589: FLdRfVar var_88
  loc_95958C: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_959591: FFree1Ad var_88
  loc_959594: ExitProcHresult
  loc_959595: SubI4
  loc_959596: FStStrNoPop var_7400
End Sub

Private Sub cmdPrevia_Click() '9655AC
  'Data Table: 4BCD04
  loc_965594: ILdRf Me
  loc_965597: CastAd
  loc_96559A: FStAdFunc var_88
  loc_96559D: FLdRfVar var_88
  loc_9655A0: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_9655A5: FFree1Ad var_88
  loc_9655A8: ExitProcHresult
End Sub

Private Sub CucuPersTxt_GotFocus() '950D18
  'Data Table: 4BCD04
  loc_950D04: FLdPr Me
  loc_950D07: VCallAd Control_ID_CucuPersTxt
  loc_950D0A: CVarAd
  loc_950D0E: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_950D13: FFree1Var var_94 = ""
  loc_950D16: ExitProcHresult
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) '9EE494
  'Data Table: 4BCD04
  loc_9EE370: FLdRfVar var_8C
  loc_9EE373: FLdPr Me
  loc_9EE376: VCallAd Control_ID_CucuPersTxt
  loc_9EE379: FStAdFunc var_88
  loc_9EE37C: FLdPr var_88
  loc_9EE37F:  = Me.Text
  loc_9EE384: ILdRf var_8C
  loc_9EE387: LitStr vbNullString
  loc_9EE38A: NeStr
  loc_9EE38C: FFree1Str var_8C
  loc_9EE38F: FFree1Ad var_88
  loc_9EE392: BranchF loc_9EE47C
  loc_9EE395: LitStr "SELECT DetaProv FROM proveedor WHERE CucuPers = '"
  loc_9EE398: FLdRfVar var_8C
  loc_9EE39B: FLdPr Me
  loc_9EE39E: VCallAd Control_ID_CucuPersTxt
  loc_9EE3A1: FStAdFunc var_88
  loc_9EE3A4: FLdPr var_88
  loc_9EE3A7:  = Me.Text
  loc_9EE3AC: ILdRf var_8C
  loc_9EE3AF: ConcatStr
  loc_9EE3B0: FStStrNoPop var_90
  loc_9EE3B3: LitStr "'"
  loc_9EE3B6: ConcatStr
  loc_9EE3B7: FStStrNoPop var_94
  loc_9EE3BA: FLdPr Me
  loc_9EE3BD: MemLdRfVar from_stack_1.global_72
  loc_9EE3C0: NewIfNullPr clsbase
  loc_9EE3C3: Call clsbase.RedefineRS(from_stack_1v)
  loc_9EE3C8: FFreeStr var_8C = "": var_90 = ""
  loc_9EE3D1: FFree1Ad var_88
  loc_9EE3D4: FLdRfVar var_98
  loc_9EE3D7: FLdPr Me
  loc_9EE3DA: MemLdRfVar from_stack_1.global_72
  loc_9EE3DD: NewIfNullPr clsbase
  loc_9EE3E0: from_stack_1 = clsbase.RecordCount
  loc_9EE3E5: ILdRf var_98
  loc_9EE3E8: LitI4 1
  loc_9EE3ED: EqI4
  loc_9EE3EE: BranchF loc_9EE455
  loc_9EE3F1: FLdRfVar var_C0
  loc_9EE3F4: FLdRfVar var_B0
  loc_9EE3F7: LitVarStr var_AC, "DetaProv"
  loc_9EE3FC: PopAdLdVar
  loc_9EE3FD: FLdRfVar var_9C
  loc_9EE400: FLdRfVar var_88
  loc_9EE403: FLdPr Me
  loc_9EE406: MemLdRfVar from_stack_1.global_72
  loc_9EE409: NewIfNullPr clsbase
  loc_9EE40C: from_stack_1v = clsbase.RsFrmGet()
  loc_9EE411: FLdPr var_88
  loc_9EE414:  = Me.Fields
  loc_9EE419: FLdPr var_9C
  loc_9EE41C: from_stack_2 = Me.Item(from_stack_1)
  loc_9EE421: FLdPr var_B0
  loc_9EE424:  = Me.Value
  loc_9EE429: FLdRfVar var_C0
  loc_9EE42C: CStrVarTmp
  loc_9EE42D: FStStrNoPop var_8C
  loc_9EE430: FLdPr Me
  loc_9EE433: VCallAd Control_ID_lblDetaProv
  loc_9EE436: FStAdFunc var_C4
  loc_9EE439: FLdPr var_C4
  loc_9EE43C: Me.Caption = from_stack_1
  loc_9EE441: FFree1Str var_8C
  loc_9EE444: FFreeAd var_88 = "": var_9C = "": var_B0 = ""
  loc_9EE44F: FFree1Var var_C0 = ""
  loc_9EE452: Branch loc_9EE479
  loc_9EE455: LitStr "El código ingresado no existe. Verifique..."
  loc_9EE458: FLdPr Me
  loc_9EE45B: MemStStrCopy
  loc_9EE45F: FLdPr Me
  loc_9EE462: MemLdStr global_104
  loc_9EE465: FLdPr Me
  loc_9EE468: VCallAd Control_ID_lblDetaProv
  loc_9EE46B: FStAdFunc var_88
  loc_9EE46E: FLdPr var_88
  loc_9EE471: Me.Caption = from_stack_1
  loc_9EE476: FFree1Ad var_88
  loc_9EE479: Branch loc_9EE493
  loc_9EE47C: LitStr "Todos"
  loc_9EE47F: FLdPr Me
  loc_9EE482: VCallAd Control_ID_lblDetaProv
  loc_9EE485: FStAdFunc var_88
  loc_9EE488: FLdPr var_88
  loc_9EE48B: Me.Caption = from_stack_1
  loc_9EE490: FFree1Ad var_88
  loc_9EE493: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97F6F0
  'Data Table: 4BCD04
  loc_97F6BC: LitVar_Missing var_A4
  loc_97F6BF: PopAdLdVar
  loc_97F6C0: LitVarI4
  loc_97F6C8: PopAdLdVar
  loc_97F6C9: ImpAdLdRf MemVar_C3D9A8
  loc_97F6CC: NewIfNullPr frmCalendario
  loc_97F6CF: frmCalendario.Show from_stack_1, from_stack_2
  loc_97F6D4: ImpAdLdRf MemVar_C3D038
  loc_97F6D7: CDargRef
  loc_97F6DB: FLdPr Me
  loc_97F6DE: VCallAd Control_ID_mskDesde
  loc_97F6E1: FStAdFunc var_A8
  loc_97F6E4: FLdPr var_A8
  loc_97F6E7: LateIdSt
  loc_97F6EC: FFree1Ad var_A8
  loc_97F6EF: ExitProcHresult
End Sub

Private Sub cmdCalHasta_Click() '97FB00
  'Data Table: 4BCD04
  loc_97FACC: LitVar_Missing var_A4
  loc_97FACF: PopAdLdVar
  loc_97FAD0: LitVarI4
  loc_97FAD8: PopAdLdVar
  loc_97FAD9: ImpAdLdRf MemVar_C3D9A8
  loc_97FADC: NewIfNullPr frmCalendario
  loc_97FADF: frmCalendario.Show from_stack_1, from_stack_2
  loc_97FAE4: ImpAdLdRf MemVar_C3D038
  loc_97FAE7: CDargRef
  loc_97FAEB: FLdPr Me
  loc_97FAEE: VCallAd Control_ID_mskHasta
  loc_97FAF1: FStAdFunc var_A8
  loc_97FAF4: FLdPr var_A8
  loc_97FAF7: LateIdSt
  loc_97FAFC: FFree1Ad var_A8
  loc_97FAFF: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97698C
  'Data Table: 4BCD04
  loc_97695C: LitVarStr var_94, "Cerrando..."
  loc_976961: PopAdLdVar
  loc_976962: FLdPr Me
  loc_976965: VCallAd Control_ID_statusBar
  loc_976968: FStAdFunc var_A8
  loc_97696B: FLdPr var_A8
  loc_97696E: LateIdSt
  loc_976973: FFree1Ad var_A8
  loc_976976: ILdRf Me
  loc_976979: FStAdNoPop
  loc_97697D: ImpAdLdRf MemVar_C44F9C
  loc_976980: NewIfNullPr Me
  loc_976983: Me.Global.Unload from_stack_1
  loc_976988: FFree1Ad var_A8
  loc_97698B: ExitProcHresult
End Sub

Private Sub cboCodiRete_Click() 'A54378
  'Data Table: 4BCD04
  loc_A540E8: FLdRfVar var_88
  loc_A540EB: NewIfNullAd
  loc_A540EE: FStAd var_8C 
  loc_A540F2: LitStr "SELECT CodiDere, DetaDere"
  loc_A540F5: LitStr " FROM deretenciones"
  loc_A540F8: ConcatStr
  loc_A540F9: FStStrNoPop var_90
  loc_A540FC: LitStr " WHERE PeriInfo = "
  loc_A540FF: ConcatStr
  loc_A54100: FStStrNoPop var_9C
  loc_A54103: FLdRfVar var_98
  loc_A54106: FLdPr Me
  loc_A54109: VCallAd Control_ID_cboPeriodo
  loc_A5410C: FStAdFunc var_94
  loc_A5410F: FLdPr var_94
  loc_A54112:  = Me.Text
  loc_A54117: ILdRf var_98
  loc_A5411A: ConcatStr
  loc_A5411B: FStStrNoPop var_A0
  loc_A5411E: LitStr " AND CodiRete = "
  loc_A54121: ConcatStr
  loc_A54122: FStStrNoPop var_B4
  loc_A54125: FLdRfVar var_B0
  loc_A54128: FLdRfVar var_A6
  loc_A5412B: FLdPr Me
  loc_A5412E: VCallAd Control_ID_cboCodiRete
  loc_A54131: FStAdFunc var_A4
  loc_A54134: FLdPr var_A4
  loc_A54137:  = Me.ListIndex
  loc_A5413C: FLdI2 var_A6
  loc_A5413F: FLdPr Me
  loc_A54142: VCallAd Control_ID_cboCodiRete
  loc_A54145: FStAdFunc var_AC
  loc_A54148: FLdPr var_AC
  loc_A5414B:  = Me.ItemData
  loc_A54150: ILdRf var_B0
  loc_A54153: CStrI4
  loc_A54155: FStStrNoPop var_B8
  loc_A54158: ConcatStr
  loc_A54159: FStStrNoPop var_BC
  loc_A5415C: LitStr " ORDER BY CodiRete"
  loc_A5415F: ConcatStr
  loc_A54160: FStStrNoPop var_C0
  loc_A54163: FLdPr var_8C
  loc_A54166: Call clsretenciones.RedefineRS(from_stack_1v)
  loc_A5416B: FFreeStr var_90 = "": var_9C = "": var_98 = "": var_A0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A5417E: FFreeAd var_94 = "": var_A4 = ""
  loc_A54187: FLdRfVar var_B0
  loc_A5418A: FLdPr var_8C
  loc_A5418D: from_stack_1 = clsretenciones.RecordCount
  loc_A54192: ILdRf var_B0
  loc_A54195: LitI4 0
  loc_A5419A: GtI4
  loc_A5419B: BranchF loc_A5435D
  loc_A5419E: FLdPr var_8C
  loc_A541A1: Call clsretenciones.MoveFirst()
  loc_A541A6: FLdPr Me
  loc_A541A9: VCallAd Control_ID_cboCodiDere
  loc_A541AC: FStAdFunc var_94
  loc_A541AF: FLdPr var_94
  loc_A541B2: Me.Clear
  loc_A541B7: FFree1Ad var_94
  loc_A541BA: LitVar_Missing var_D0
  loc_A541BD: PopAdLdVar
  loc_A541BE: LitStr "Todas"
  loc_A541C1: FLdPr Me
  loc_A541C4: VCallAd Control_ID_cboCodiDere
  loc_A541C7: FStAdFunc var_94
  loc_A541CA: FLdPr var_94
  loc_A541CD: Me.AddItem from_stack_1, from_stack_2
  loc_A541D2: FFree1Ad var_94
  loc_A541D5: LitI4 0
  loc_A541DA: FLdRfVar var_A6
  loc_A541DD: FLdPr Me
  loc_A541E0: VCallAd Control_ID_cboCodiDere
  loc_A541E3: FStAdFunc var_94
  loc_A541E6: FLdPr var_94
  loc_A541E9:  = Me.NewIndex
  loc_A541EE: FLdI2 var_A6
  loc_A541F1: FLdPr Me
  loc_A541F4: VCallAd Control_ID_cboCodiDere
  loc_A541F7: FStAdFunc var_A4
  loc_A541FA: FLdPr var_A4
  loc_A541FD: Me.ItemData = from_stack_1
  loc_A54202: FFreeAd var_94 = ""
  loc_A54209: FLdRfVar var_A6
  loc_A5420C: FLdPr var_8C
  loc_A5420F: from_stack_1 = clsretenciones.EOF
  loc_A54214: FLdI2 var_A6
  loc_A54217: NotI4
  loc_A54218: BranchF loc_A54344
  loc_A5421B: LitVar_Missing var_14C
  loc_A5421E: PopAdLdVar
  loc_A5421F: FLdRfVar var_E0
  loc_A54222: FLdRfVar var_AC
  loc_A54225: LitVarStr var_D0, "CodiDere"
  loc_A5422A: PopAdLdVar
  loc_A5422B: FLdRfVar var_A4
  loc_A5422E: FLdRfVar var_94
  loc_A54231: FLdPr var_8C
  loc_A54234: from_stack_1v = clsretenciones.RsFrmGet()
  loc_A54239: FLdPr var_94
  loc_A5423C:  = Me.Fields
  loc_A54241: FLdPr var_A4
  loc_A54244: from_stack_2 = Me.Item(from_stack_1)
  loc_A54249: FLdPr var_AC
  loc_A5424C:  = Me.Value
  loc_A54251: FLdRfVar var_E0
  loc_A54254: LitVarStr var_F0, " - "
  loc_A54259: ConcatVar var_100
  loc_A5425D: FLdRfVar var_12C
  loc_A54260: FLdRfVar var_11C
  loc_A54263: LitVarStr var_118, "DetaDere"
  loc_A54268: PopAdLdVar
  loc_A54269: FLdRfVar var_108
  loc_A5426C: FLdRfVar var_104
  loc_A5426F: FLdPr var_8C
  loc_A54272: from_stack_1v = clsretenciones.RsFrmGet()
  loc_A54277: FLdPr var_104
  loc_A5427A:  = Me.Fields
  loc_A5427F: FLdPr var_108
  loc_A54282: from_stack_2 = Me.Item(from_stack_1)
  loc_A54287: FLdPr var_11C
  loc_A5428A:  = Me.Value
  loc_A5428F: FLdRfVar var_12C
  loc_A54292: ConcatVar var_13C
  loc_A54296: CStrVarVal var_90
  loc_A5429A: FLdPr Me
  loc_A5429D: VCallAd Control_ID_cboCodiDere
  loc_A542A0: FStAdFunc var_150
  loc_A542A3: FLdPr var_150
  loc_A542A6: Me.AddItem from_stack_1, from_stack_2
  loc_A542AB: FFree1Str var_90
  loc_A542AE: FFreeAd var_94 = "": var_A4 = "": var_AC = "": var_104 = "": var_108 = "": var_11C = ""
  loc_A542BF: FFreeVar var_E0 = "": var_100 = "": var_12C = ""
  loc_A542CA: FLdRfVar var_E0
  loc_A542CD: FLdRfVar var_AC
  loc_A542D0: LitVarStr var_D0, "CodiDere"
  loc_A542D5: PopAdLdVar
  loc_A542D6: FLdRfVar var_A4
  loc_A542D9: FLdRfVar var_94
  loc_A542DC: FLdPr var_8C
  loc_A542DF: from_stack_1v = clsretenciones.RsFrmGet()
  loc_A542E4: FLdPr var_94
  loc_A542E7:  = Me.Fields
  loc_A542EC: FLdPr var_A4
  loc_A542EF: from_stack_2 = Me.Item(from_stack_1)
  loc_A542F4: FLdPr var_AC
  loc_A542F7:  = Me.Value
  loc_A542FC: FLdRfVar var_E0
  loc_A542FF: CI4Var
  loc_A54301: FLdRfVar var_A6
  loc_A54304: FLdPr Me
  loc_A54307: VCallAd Control_ID_cboCodiDere
  loc_A5430A: FStAdFunc var_104
  loc_A5430D: FLdPr var_104
  loc_A54310:  = Me.NewIndex
  loc_A54315: FLdI2 var_A6
  loc_A54318: FLdPr Me
  loc_A5431B: VCallAd Control_ID_cboCodiDere
  loc_A5431E: FStAdFunc var_108
  loc_A54321: FLdPr var_108
  loc_A54324: Me.ItemData = from_stack_1
  loc_A54329: FFreeAd var_94 = "": var_A4 = "": var_104 = "": var_AC = ""
  loc_A54336: FFree1Var var_E0 = ""
  loc_A54339: FLdPr var_8C
  loc_A5433C: Call clsretenciones.MoveSiguiente()
  loc_A54341: Branch loc_A54209
  loc_A54344: LitI2_Byte 0
  loc_A54346: FLdPr Me
  loc_A54349: VCallAd Control_ID_cboCodiDere
  loc_A5434C: FStAdFunc var_94
  loc_A5434F: FLdPr var_94
  loc_A54352: Me.ListIndex = from_stack_1
  loc_A54357: FFree1Ad var_94
  loc_A5435A: Branch loc_A54371
  loc_A5435D: FLdPr Me
  loc_A54360: VCallAd Control_ID_cboCodiDere
  loc_A54363: FStAdFunc var_94
  loc_A54366: FLdPr var_94
  loc_A54369: Me.Clear
  loc_A5436E: FFree1Ad var_94
  loc_A54371: LitNothing
  loc_A54373: FStAd var_8C 
  loc_A54377: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96B71C
  'Data Table: 4BCD04
  loc_96B700: LitI2_Byte &HFF
  loc_96B702: LitI2_Byte 0
  loc_96B704: ILdRf Me
  loc_96B707: CastAd
  loc_96B70A: FStAdFunc var_88
  loc_96B70D: FLdRfVar var_88
  loc_96B710: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B715: FFree1Ad var_88
  loc_96B718: ExitProcHresult
  loc_96B719: FLdRfVar var_B00
End Sub

Private Sub cmdNueva_Click() '9FDA8C
  'Data Table: 4BCD04
  loc_9FD940: LitI2_Byte 0
  loc_9FD942: FLdPr Me
  loc_9FD945: MemStI2 bGenerado
  loc_9FD948: LitI2_Byte &HFF
  loc_9FD94A: FLdPr Me
  loc_9FD94D: MemStI2 bLogos
  loc_9FD950: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9FD955: ImpAdLdI2 MemVar_C3D064
  loc_9FD958: CStrUI1
  loc_9FD95A: FStStrNoPop var_88
  loc_9FD95D: FLdPr Me
  loc_9FD960: VCallAd Control_ID_cboPeriodo
  loc_9FD963: FStAdFunc var_8C
  loc_9FD966: FLdPr var_8C
  loc_9FD969: Me.Text = from_stack_1
  loc_9FD96E: FFree1Str var_88
  loc_9FD971: FFree1Ad var_8C
  loc_9FD974: LitI2_Byte 1
  loc_9FD976: LitI2_Byte 1
  loc_9FD978: ImpAdLdI2 MemVar_C3D064
  loc_9FD97B: FLdRfVar var_9C
  loc_9FD97E: ImpAdCallFPR4  = DateSerial(, , )
  loc_9FD983: FLdRfVar var_9C
  loc_9FD986: CStrVarTmp
  loc_9FD987: CVarStr var_AC
  loc_9FD98A: PopAdLdVar
  loc_9FD98B: FLdPr Me
  loc_9FD98E: VCallAd Control_ID_mskDesde
  loc_9FD991: FStAdFunc var_8C
  loc_9FD994: FLdPr var_8C
  loc_9FD997: LateIdSt
  loc_9FD99C: FFree1Ad var_8C
  loc_9FD99F: FFreeVar var_9C = ""
  loc_9FD9A6: ImpAdLdFPR8 MemVar_C3D04C
  loc_9FD9A9: CStrDate
  loc_9FD9AB: CVarStr var_9C
  loc_9FD9AE: PopAdLdVar
  loc_9FD9AF: FLdPr Me
  loc_9FD9B2: VCallAd Control_ID_mskHasta
  loc_9FD9B5: FStAdFunc var_8C
  loc_9FD9B8: FLdPr var_8C
  loc_9FD9BB: LateIdSt
  loc_9FD9C0: FFree1Ad var_8C
  loc_9FD9C3: FFree1Var var_9C = ""
  loc_9FD9C6: LitStr vbNullString
  loc_9FD9C9: FLdPr Me
  loc_9FD9CC: VCallAd Control_ID_CucuPersTxt
  loc_9FD9CF: FStAdFunc var_8C
  loc_9FD9D2: FLdPr var_8C
  loc_9FD9D5: Me.Text = from_stack_1
  loc_9FD9DA: FFree1Ad var_8C
  loc_9FD9DD: LitStr vbNullString
  loc_9FD9E0: FLdPr Me
  loc_9FD9E3: VCallAd Control_ID_lblDetaProv
  loc_9FD9E6: FStAdFunc var_8C
  loc_9FD9E9: FLdPr var_8C
  loc_9FD9EC: Me.Caption = from_stack_1
  loc_9FD9F1: FFree1Ad var_8C
  loc_9FD9F4: FLdRfVar var_BE
  loc_9FD9F7: FLdPr Me
  loc_9FD9FA: VCallAd Control_ID_OptionLiquidacion
  loc_9FD9FD: FStAdFunc var_8C
  loc_9FDA00: FLdPr var_8C
  loc_9FDA03:  = Me.Value
  loc_9FDA08: FLdI2 var_BE
  loc_9FDA0B: CI4UI1
  loc_9FDA0C: LitI4 0
  loc_9FDA11: EqI4
  loc_9FDA12: FLdRfVar var_C6
  loc_9FDA15: FLdPr Me
  loc_9FDA18: VCallAd Control_ID_OptionPago
  loc_9FDA1B: FStAdFunc var_C4
  loc_9FDA1E: FLdPr var_C4
  loc_9FDA21:  = Me.Value
  loc_9FDA26: FLdI2 var_C6
  loc_9FDA29: CI4UI1
  loc_9FDA2A: LitI4 0
  loc_9FDA2F: EqI4
  loc_9FDA30: AndI4
  loc_9FDA31: FLdRfVar var_CE
  loc_9FDA34: FLdPr Me
  loc_9FDA37: VCallAd Control_ID_OptionFepaLine
  loc_9FDA3A: FStAdFunc var_CC
  loc_9FDA3D: FLdPr var_CC
  loc_9FDA40:  = Me.Value
  loc_9FDA45: FLdI2 var_CE
  loc_9FDA48: CI4UI1
  loc_9FDA49: LitI4 0
  loc_9FDA4E: EqI4
  loc_9FDA4F: AndI4
  loc_9FDA50: FFreeAd var_8C = "": var_C4 = ""
  loc_9FDA59: BranchF loc_9FDA72
  loc_9FDA5C: LitI2_Byte &HFF
  loc_9FDA5E: FLdPr Me
  loc_9FDA61: VCallAd Control_ID_OptionLiquidacion
  loc_9FDA64: FStAdFunc var_8C
  loc_9FDA67: FLdPr var_8C
  loc_9FDA6A: Me.Value = from_stack_1b
  loc_9FDA6F: FFree1Ad var_8C
  loc_9FDA72: Call HabilitarCriterio()
  loc_9FDA77: ILdRf Me
  loc_9FDA7A: CastAd
  loc_9FDA7D: FStAdFunc var_8C
  loc_9FDA80: FLdRfVar var_8C
  loc_9FDA83: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9FDA88: FFree1Ad var_8C
  loc_9FDA8B: ExitProcHresult
End Sub

Private Sub CucuPersCmd_Click() '9F7D78
  'Data Table: 4BCD04
  loc_9F7C3C: LitI2_Byte &HFF
  loc_9F7C3E: ImpAdLdRf MemVar_C3D74C
  loc_9F7C41: NewIfNullPr bscProveedor
  loc_9F7C44: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_9F7C49: LitNothing
  loc_9F7C4B: CastAd
  loc_9F7C4E: FStAdFuncNoPop
  loc_9F7C51: ImpAdLdRf MemVar_C3D74C
  loc_9F7C54: NewIfNullPr bscProveedor
  loc_9F7C57: Call bscProveedor.global_4315292Set(from_stack_1v)
  loc_9F7C5C: FFree1Ad var_88
  loc_9F7C5F: LitVar_Missing var_A8
  loc_9F7C62: PopAdLdVar
  loc_9F7C63: LitVarI4
  loc_9F7C6B: PopAdLdVar
  loc_9F7C6C: ImpAdLdRf MemVar_C3D74C
  loc_9F7C6F: NewIfNullPr bscProveedor
  loc_9F7C72: bscProveedor.Show from_stack_1, from_stack_2
  loc_9F7C77: FLdRfVar var_AC
  loc_9F7C7A: FLdRfVar var_88
  loc_9F7C7D: ImpAdLdRf MemVar_C3D74C
  loc_9F7C80: NewIfNullPr bscProveedor
  loc_9F7C83: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9F7C88: FLdPr var_88
  loc_9F7C8B: from_stack_1 = clsbase.RecordCount
  loc_9F7C90: ILdRf var_AC
  loc_9F7C93: LitI4 0
  loc_9F7C98: GtI4
  loc_9F7C99: FFree1Ad var_88
  loc_9F7C9C: BranchF loc_9F7D75
  loc_9F7C9F: FLdRfVar var_C8
  loc_9F7CA2: FLdRfVar var_B8
  loc_9F7CA5: LitVarStr var_98, "CucuPers"
  loc_9F7CAA: PopAdLdVar
  loc_9F7CAB: FLdRfVar var_B4
  loc_9F7CAE: FLdRfVar var_B0
  loc_9F7CB1: FLdRfVar var_88
  loc_9F7CB4: ImpAdLdRf MemVar_C3D74C
  loc_9F7CB7: NewIfNullPr bscProveedor
  loc_9F7CBA: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9F7CBF: FLdPr var_88
  loc_9F7CC2: from_stack_1v = clsbase.RsFrmGet()
  loc_9F7CC7: FLdPr var_B0
  loc_9F7CCA:  = Me.Fields
  loc_9F7CCF: FLdPr var_B4
  loc_9F7CD2: from_stack_2 = Me.Item(from_stack_1)
  loc_9F7CD7: FLdPr var_B8
  loc_9F7CDA:  = Me.Value
  loc_9F7CDF: FLdRfVar var_C8
  loc_9F7CE2: CStrVarTmp
  loc_9F7CE3: FStStrNoPop var_CC
  loc_9F7CE6: FLdPr Me
  loc_9F7CE9: VCallAd Control_ID_CucuPersTxt
  loc_9F7CEC: FStAdFunc var_D0
  loc_9F7CEF: FLdPr var_D0
  loc_9F7CF2: Me.Text = from_stack_1
  loc_9F7CF7: FFree1Str var_CC
  loc_9F7CFA: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F7D07: FFree1Var var_C8 = ""
  loc_9F7D0A: FLdRfVar var_C8
  loc_9F7D0D: FLdRfVar var_B8
  loc_9F7D10: LitVarStr var_98, "DetaProv"
  loc_9F7D15: PopAdLdVar
  loc_9F7D16: FLdRfVar var_B4
  loc_9F7D19: FLdRfVar var_B0
  loc_9F7D1C: FLdRfVar var_88
  loc_9F7D1F: ImpAdLdRf MemVar_C3D74C
  loc_9F7D22: NewIfNullPr bscProveedor
  loc_9F7D25: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9F7D2A: FLdPr var_88
  loc_9F7D2D: from_stack_1v = clsbase.RsFrmGet()
  loc_9F7D32: FLdPr var_B0
  loc_9F7D35:  = Me.Fields
  loc_9F7D3A: FLdPr var_B4
  loc_9F7D3D: from_stack_2 = Me.Item(from_stack_1)
  loc_9F7D42: FLdPr var_B8
  loc_9F7D45:  = Me.Value
  loc_9F7D4A: FLdRfVar var_C8
  loc_9F7D4D: CStrVarTmp
  loc_9F7D4E: FStStrNoPop var_CC
  loc_9F7D51: FLdPr Me
  loc_9F7D54: VCallAd Control_ID_lblDetaProv
  loc_9F7D57: FStAdFunc var_D0
  loc_9F7D5A: FLdPr var_D0
  loc_9F7D5D: Me.Caption = from_stack_1
  loc_9F7D62: FFree1Str var_CC
  loc_9F7D65: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F7D72: FFree1Var var_C8 = ""
  loc_9F7D75: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '987B74
  'Data Table: 4BCD04
  loc_987B3C: FLdPr Me
  loc_987B3F: VCallAd Control_ID_statusBar
  loc_987B42: FStAdFunc var_88
  loc_987B45: FLdPr var_88
  loc_987B48: LateIdLdVar var_98 DispID_1 0
  loc_987B4F: CStrVarTmp
  loc_987B50: CVarStr var_A8
  loc_987B53: PopAdLdVar
  loc_987B54: FLdPr Me
  loc_987B57: VCallAd Control_ID_statusBar
  loc_987B5A: FStAdFunc var_BC
  loc_987B5D: FLdPr var_BC
  loc_987B60: LateIdSt
  loc_987B65: FFreeAd var_88 = ""
  loc_987B6C: FFreeVar var_98 = ""
  loc_987B73: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() 'A5EB54
  'Data Table: 4BCD04
  loc_A5E874: FLdRfVar var_8C
  loc_A5E877: FLdPr Me
  loc_A5E87A: VCallAd Control_ID_cboPeriodo
  loc_A5E87D: FStAdFunc var_88
  loc_A5E880: FLdPr var_88
  loc_A5E883:  = Me.Text
  loc_A5E888: LitI2_Byte 1
  loc_A5E88A: LitI2_Byte 1
  loc_A5E88C: ILdRf var_8C
  loc_A5E88F: CI2Str
  loc_A5E891: FLdRfVar var_9C
  loc_A5E894: ImpAdCallFPR4  = DateSerial(, , )
  loc_A5E899: FLdRfVar var_9C
  loc_A5E89C: CStrVarTmp
  loc_A5E89D: CVarStr var_AC
  loc_A5E8A0: PopAdLdVar
  loc_A5E8A1: FLdPr Me
  loc_A5E8A4: VCallAd Control_ID_mskDesde
  loc_A5E8A7: FStAdFunc var_C0
  loc_A5E8AA: FLdPr var_C0
  loc_A5E8AD: LateIdSt
  loc_A5E8B2: FFree1Str var_8C
  loc_A5E8B5: FFreeAd var_88 = ""
  loc_A5E8BC: FFreeVar var_9C = ""
  loc_A5E8C3: FLdRfVar var_8C
  loc_A5E8C6: FLdPr Me
  loc_A5E8C9: VCallAd Control_ID_cboPeriodo
  loc_A5E8CC: FStAdFunc var_88
  loc_A5E8CF: FLdPr var_88
  loc_A5E8D2:  = Me.Text
  loc_A5E8D7: ILdRf var_8C
  loc_A5E8DA: CI2Str
  loc_A5E8DC: ImpAdLdI2 MemVar_C3D064
  loc_A5E8DF: LtI2
  loc_A5E8E0: FFree1Str var_8C
  loc_A5E8E3: FFree1Ad var_88
  loc_A5E8E6: BranchF loc_A5E93B
  loc_A5E8E9: FLdRfVar var_8C
  loc_A5E8EC: FLdPr Me
  loc_A5E8EF: VCallAd Control_ID_cboPeriodo
  loc_A5E8F2: FStAdFunc var_88
  loc_A5E8F5: FLdPr var_88
  loc_A5E8F8:  = Me.Text
  loc_A5E8FD: LitI2_Byte &H1F
  loc_A5E8FF: LitI2_Byte &HC
  loc_A5E901: ILdRf var_8C
  loc_A5E904: CI2Str
  loc_A5E906: FLdRfVar var_9C
  loc_A5E909: ImpAdCallFPR4  = DateSerial(, , )
  loc_A5E90E: FLdRfVar var_9C
  loc_A5E911: CStrVarTmp
  loc_A5E912: CVarStr var_AC
  loc_A5E915: PopAdLdVar
  loc_A5E916: FLdPr Me
  loc_A5E919: VCallAd Control_ID_mskHasta
  loc_A5E91C: FStAdFunc var_C0
  loc_A5E91F: FLdPr var_C0
  loc_A5E922: LateIdSt
  loc_A5E927: FFree1Str var_8C
  loc_A5E92A: FFreeAd var_88 = ""
  loc_A5E931: FFreeVar var_9C = ""
  loc_A5E938: Branch loc_A5E95B
  loc_A5E93B: ImpAdLdFPR8 MemVar_C3D04C
  loc_A5E93E: CStrDate
  loc_A5E940: CVarStr var_9C
  loc_A5E943: PopAdLdVar
  loc_A5E944: FLdPr Me
  loc_A5E947: VCallAd Control_ID_mskHasta
  loc_A5E94A: FStAdFunc var_88
  loc_A5E94D: FLdPr var_88
  loc_A5E950: LateIdSt
  loc_A5E955: FFree1Ad var_88
  loc_A5E958: FFree1Var var_9C = ""
  loc_A5E95B: FLdRfVar var_C4
  loc_A5E95E: NewIfNullAd
  loc_A5E961: FStAd var_C8 
  loc_A5E965: LitStr "SELECT CodiRete, DetaRete"
  loc_A5E968: LitStr " FROM retenciones"
  loc_A5E96B: ConcatStr
  loc_A5E96C: FStStrNoPop var_8C
  loc_A5E96F: LitStr " WHERE PeriInfo = "
  loc_A5E972: ConcatStr
  loc_A5E973: FStStrNoPop var_D0
  loc_A5E976: FLdRfVar var_CC
  loc_A5E979: FLdPr Me
  loc_A5E97C: VCallAd Control_ID_cboPeriodo
  loc_A5E97F: FStAdFunc var_88
  loc_A5E982: FLdPr var_88
  loc_A5E985:  = Me.Text
  loc_A5E98A: ILdRf var_CC
  loc_A5E98D: ConcatStr
  loc_A5E98E: FStStrNoPop var_D4
  loc_A5E991: LitStr " ORDER BY CodiRete"
  loc_A5E994: ConcatStr
  loc_A5E995: FStStrNoPop var_D8
  loc_A5E998: FLdPr var_C8
  loc_A5E99B: Call clsretenciones.RedefineRS(from_stack_1v)
  loc_A5E9A0: FFreeStr var_8C = "": var_D0 = "": var_CC = "": var_D4 = ""
  loc_A5E9AD: FFree1Ad var_88
  loc_A5E9B0: FLdRfVar var_DC
  loc_A5E9B3: FLdPr var_C8
  loc_A5E9B6: from_stack_1 = clsretenciones.RecordCount
  loc_A5E9BB: ILdRf var_DC
  loc_A5E9BE: LitI4 0
  loc_A5E9C3: GtI4
  loc_A5E9C4: BranchF loc_A5EB37
  loc_A5E9C7: FLdPr var_C8
  loc_A5E9CA: Call clsretenciones.MoveFirst()
  loc_A5E9CF: FLdPr Me
  loc_A5E9D2: VCallAd Control_ID_cboCodiRete
  loc_A5E9D5: FStAdFunc var_88
  loc_A5E9D8: FLdPr var_88
  loc_A5E9DB: Me.Clear
  loc_A5E9E0: FFree1Ad var_88
  loc_A5E9E3: FLdRfVar var_DE
  loc_A5E9E6: FLdPr var_C8
  loc_A5E9E9: from_stack_1 = clsretenciones.EOF
  loc_A5E9EE: FLdI2 var_DE
  loc_A5E9F1: NotI4
  loc_A5E9F2: BranchF loc_A5EB1E
  loc_A5E9F5: LitVar_Missing var_140
  loc_A5E9F8: PopAdLdVar
  loc_A5E9F9: FLdRfVar var_9C
  loc_A5E9FC: FLdRfVar var_E4
  loc_A5E9FF: LitVarStr var_BC, "CodiRete"
  loc_A5EA04: PopAdLdVar
  loc_A5EA05: FLdRfVar var_C0
  loc_A5EA08: FLdRfVar var_88
  loc_A5EA0B: FLdPr var_C8
  loc_A5EA0E: from_stack_1v = clsretenciones.RsFrmGet()
  loc_A5EA13: FLdPr var_88
  loc_A5EA16:  = Me.Fields
  loc_A5EA1B: FLdPr var_C0
  loc_A5EA1E: from_stack_2 = Me.Item(from_stack_1)
  loc_A5EA23: FLdPr var_E4
  loc_A5EA26:  = Me.Value
  loc_A5EA2B: FLdRfVar var_9C
  loc_A5EA2E: LitVarStr var_F4, " - "
  loc_A5EA33: ConcatVar var_AC
  loc_A5EA37: FLdRfVar var_120
  loc_A5EA3A: FLdRfVar var_110
  loc_A5EA3D: LitVarStr var_10C, "DetaRete"
  loc_A5EA42: PopAdLdVar
  loc_A5EA43: FLdRfVar var_FC
  loc_A5EA46: FLdRfVar var_F8
  loc_A5EA49: FLdPr var_C8
  loc_A5EA4C: from_stack_1v = clsretenciones.RsFrmGet()
  loc_A5EA51: FLdPr var_F8
  loc_A5EA54:  = Me.Fields
  loc_A5EA59: FLdPr var_FC
  loc_A5EA5C: from_stack_2 = Me.Item(from_stack_1)
  loc_A5EA61: FLdPr var_110
  loc_A5EA64:  = Me.Value
  loc_A5EA69: FLdRfVar var_120
  loc_A5EA6C: ConcatVar var_130
  loc_A5EA70: CStrVarVal var_8C
  loc_A5EA74: FLdPr Me
  loc_A5EA77: VCallAd Control_ID_cboCodiRete
  loc_A5EA7A: FStAdFunc var_144
  loc_A5EA7D: FLdPr var_144
  loc_A5EA80: Me.AddItem from_stack_1, from_stack_2
  loc_A5EA85: FFree1Str var_8C
  loc_A5EA88: FFreeAd var_88 = "": var_C0 = "": var_E4 = "": var_F8 = "": var_FC = "": var_110 = ""
  loc_A5EA99: FFreeVar var_9C = "": var_AC = "": var_120 = ""
  loc_A5EAA4: FLdRfVar var_9C
  loc_A5EAA7: FLdRfVar var_E4
  loc_A5EAAA: LitVarStr var_BC, "CodiRete"
  loc_A5EAAF: PopAdLdVar
  loc_A5EAB0: FLdRfVar var_C0
  loc_A5EAB3: FLdRfVar var_88
  loc_A5EAB6: FLdPr var_C8
  loc_A5EAB9: from_stack_1v = clsretenciones.RsFrmGet()
  loc_A5EABE: FLdPr var_88
  loc_A5EAC1:  = Me.Fields
  loc_A5EAC6: FLdPr var_C0
  loc_A5EAC9: from_stack_2 = Me.Item(from_stack_1)
  loc_A5EACE: FLdPr var_E4
  loc_A5EAD1:  = Me.Value
  loc_A5EAD6: FLdRfVar var_9C
  loc_A5EAD9: CI4Var
  loc_A5EADB: FLdRfVar var_DE
  loc_A5EADE: FLdPr Me
  loc_A5EAE1: VCallAd Control_ID_cboCodiRete
  loc_A5EAE4: FStAdFunc var_F8
  loc_A5EAE7: FLdPr var_F8
  loc_A5EAEA:  = Me.NewIndex
  loc_A5EAEF: FLdI2 var_DE
  loc_A5EAF2: FLdPr Me
  loc_A5EAF5: VCallAd Control_ID_cboCodiRete
  loc_A5EAF8: FStAdFunc var_FC
  loc_A5EAFB: FLdPr var_FC
  loc_A5EAFE: Me.ItemData = from_stack_1
  loc_A5EB03: FFreeAd var_88 = "": var_C0 = "": var_F8 = "": var_E4 = ""
  loc_A5EB10: FFree1Var var_9C = ""
  loc_A5EB13: FLdPr var_C8
  loc_A5EB16: Call clsretenciones.MoveSiguiente()
  loc_A5EB1B: Branch loc_A5E9E3
  loc_A5EB1E: LitI2_Byte 0
  loc_A5EB20: FLdPr Me
  loc_A5EB23: VCallAd Control_ID_cboCodiRete
  loc_A5EB26: FStAdFunc var_88
  loc_A5EB29: FLdPr var_88
  loc_A5EB2C: Me.ListIndex = from_stack_1
  loc_A5EB31: FFree1Ad var_88
  loc_A5EB34: Branch loc_A5EB4B
  loc_A5EB37: FLdPr Me
  loc_A5EB3A: VCallAd Control_ID_cboCodiRete
  loc_A5EB3D: FStAdFunc var_88
  loc_A5EB40: FLdPr var_88
  loc_A5EB43: Me.Clear
  loc_A5EB48: FFree1Ad var_88
  loc_A5EB4B: LitNothing
  loc_A5EB4D: FStAd var_C8 
  loc_A5EB51: ExitProcHresult
End Sub

Private Sub Form_Load() '9D4BE8
  'Data Table: 4BCD04
  loc_9D4B04: LitI4 0
  loc_9D4B09: LitStr "Próximamente, ésta pantalla se incluirá en InfoGov 3: PRESUPUESTO -> RETENCIONES -> Conceptos de Liquidación"
  loc_9D4B0C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9D4B11: LitI2_Byte &HFF
  loc_9D4B13: ImpAdStI2 MemVar_C3D840
  loc_9D4B16: ILdRf Me
  loc_9D4B19: CastAd
  loc_9D4B1C: FStAdFunc var_8C
  loc_9D4B1F: FLdRfVar var_8C
  loc_9D4B22: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D4B27: FFree1Ad var_8C
  loc_9D4B2A: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo DESC;"
  loc_9D4B2D: FLdRfVar var_88
  loc_9D4B30: NewIfNullPr clsperiodo
  loc_9D4B33: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9D4B38: FLdRfVar var_90
  loc_9D4B3B: FLdRfVar var_88
  loc_9D4B3E: NewIfNullPr clsperiodo
  loc_9D4B41: from_stack_1 = clsperiodo.RecordCount
  loc_9D4B46: ILdRf var_90
  loc_9D4B49: LitI4 0
  loc_9D4B4E: GtI4
  loc_9D4B4F: BranchF loc_9D4BE2
  loc_9D4B52: FLdRfVar var_88
  loc_9D4B55: NewIfNullPr clsperiodo
  loc_9D4B58: Call clsperiodo.MoveFirst()
  loc_9D4B5D: FLdRfVar var_92
  loc_9D4B60: FLdRfVar var_88
  loc_9D4B63: NewIfNullPr clsperiodo
  loc_9D4B66: from_stack_1 = clsperiodo.EOF
  loc_9D4B6B: FLdI2 var_92
  loc_9D4B6E: NotI4
  loc_9D4B6F: BranchF loc_9D4BE2
  loc_9D4B72: LitVar_Missing var_D0
  loc_9D4B75: PopAdLdVar
  loc_9D4B76: FLdRfVar var_BC
  loc_9D4B79: FLdRfVar var_AC
  loc_9D4B7C: LitVarStr var_A8, "PeriInfo"
  loc_9D4B81: PopAdLdVar
  loc_9D4B82: FLdRfVar var_98
  loc_9D4B85: FLdRfVar var_8C
  loc_9D4B88: FLdRfVar var_88
  loc_9D4B8B: NewIfNullPr clsperiodo
  loc_9D4B8E: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9D4B93: FLdPr var_8C
  loc_9D4B96:  = Me.Fields
  loc_9D4B9B: FLdPr var_98
  loc_9D4B9E: from_stack_2 = Me.Item(from_stack_1)
  loc_9D4BA3: FLdPr var_AC
  loc_9D4BA6:  = Me.Value
  loc_9D4BAB: FLdRfVar var_BC
  loc_9D4BAE: CStrVarTmp
  loc_9D4BAF: FStStrNoPop var_C0
  loc_9D4BB2: FLdPr Me
  loc_9D4BB5: VCallAd Control_ID_cboPeriodo
  loc_9D4BB8: FStAdFunc var_D4
  loc_9D4BBB: FLdPr var_D4
  loc_9D4BBE: Me.AddItem from_stack_1, from_stack_2
  loc_9D4BC3: FFree1Str var_C0
  loc_9D4BC6: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_9D4BD1: FFree1Var var_BC = ""
  loc_9D4BD4: FLdRfVar var_88
  loc_9D4BD7: NewIfNullPr clsperiodo
  loc_9D4BDA: Call clsperiodo.MoveSiguiente()
  loc_9D4BDF: Branch loc_9D4B5D
  loc_9D4BE2: Call cmdNueva_Click()
  loc_9D4BE7: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '96664C
  'Data Table: 4BCD04
  loc_966634: FLdPr Me
  loc_966637: VCallAd Control_ID_wbbReporte
  loc_96663A: FStAdFunc var_88
  loc_96663D: FLdRfVar var_88
  loc_966640: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_966645: FFree1Ad var_88
  loc_966648: ExitProcHresult
  loc_966649: VCallFPR8 78
End Sub

Private Sub cmdPdf_Click() '9597AC
  'Data Table: 4BCD04
  loc_959794: LitI2_Byte 0
  loc_959796: ILdRf Me
  loc_959799: CastAd
  loc_95979C: FStAdFunc var_88
  loc_95979F: FLdRfVar var_88
  loc_9597A2: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9597A7: FFree1Ad var_88
  loc_9597AA: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '94DBE0
  'Data Table: 4BCD04
  loc_94DBCC: FLdPr Me
  loc_94DBCF: VCallAd Control_ID_mskDesde
  loc_94DBD2: CVarAd
  loc_94DBD6: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_94DBDB: FFree1Var var_94 = ""
  loc_94DBDE: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9B0FF4
  'Data Table: 4BCD04
  loc_9B0F58: FLdPr Me
  loc_9B0F5B: VCallAd Control_ID_mskDesde
  loc_9B0F5E: FStAdFunc var_88
  loc_9B0F61: FLdPr var_88
  loc_9B0F64: LateIdLdVar var_98 DispID_15 0
  loc_9B0F6B: PopAd
  loc_9B0F6D: FLdPr Me
  loc_9B0F70: VCallAd Control_ID_mskDesde
  loc_9B0F73: FStAdFunc var_AC
  loc_9B0F76: LitI2_Byte 0
  loc_9B0F78: PopTmpLdAd2 var_A2
  loc_9B0F7B: FLdZeroAd var_AC
  loc_9B0F7E: FStAdFunc var_A0
  loc_9B0F81: FLdRfVar var_A0
  loc_9B0F84: LitStr vbNullString
  loc_9B0F87: LitI2_Byte 0
  loc_9B0F89: LitI2_Byte 0
  loc_9B0F8B: FLdRfVar var_98
  loc_9B0F8E: CStrVarTmp
  loc_9B0F8F: FStStrNoPop var_9C
  loc_9B0F92: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B0F97: FStStrNoPop var_A8
  loc_9B0F9A: FLdPr Me
  loc_9B0F9D: MemStStrCopy
  loc_9B0FA1: FFreeStr var_9C = ""
  loc_9B0FA8: FFreeAd var_88 = "": var_A0 = ""
  loc_9B0FB1: FFree1Var var_98 = ""
  loc_9B0FB4: FLdPr Me
  loc_9B0FB7: VCallAd Control_ID_mskDesde
  loc_9B0FBA: FStAdFunc var_B0
  loc_9B0FBD: LitNothing
  loc_9B0FBF: CastAd
  loc_9B0FC2: FStAdFunc var_AC
  loc_9B0FC5: FLdRfVar var_AC
  loc_9B0FC8: FLdZeroAd var_B0
  loc_9B0FCB: FStAdFuncNoPop
  loc_9B0FCE: CastAd
  loc_9B0FD1: FStAdFunc var_A0
  loc_9B0FD4: FLdRfVar var_A0
  loc_9B0FD7: FLdPr Me
  loc_9B0FDA: MemLdRfVar from_stack_1.global_104
  loc_9B0FDD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B0FE2: IStI2 arg_C
  loc_9B0FE5: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B0FF0: ExitProcHresult
  loc_9B0FF1: CVarI2 arg_1F
End Function

Private Sub mskHasta_UnknownEvent_0 '94DAC0
  'Data Table: 4BCD04
  loc_94DAAC: FLdPr Me
  loc_94DAAF: VCallAd Control_ID_mskHasta
  loc_94DAB2: CVarAd
  loc_94DAB6: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_94DABB: FFree1Var var_94 = ""
  loc_94DABE: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9AFEBC
  'Data Table: 4BCD04
  loc_9AFE20: FLdPr Me
  loc_9AFE23: VCallAd Control_ID_mskHasta
  loc_9AFE26: FStAdFunc var_88
  loc_9AFE29: FLdPr var_88
  loc_9AFE2C: LateIdLdVar var_98 DispID_15 0
  loc_9AFE33: PopAd
  loc_9AFE35: FLdPr Me
  loc_9AFE38: VCallAd Control_ID_mskHasta
  loc_9AFE3B: FStAdFunc var_AC
  loc_9AFE3E: LitI2_Byte 0
  loc_9AFE40: PopTmpLdAd2 var_A2
  loc_9AFE43: FLdZeroAd var_AC
  loc_9AFE46: FStAdFunc var_A0
  loc_9AFE49: FLdRfVar var_A0
  loc_9AFE4C: LitStr vbNullString
  loc_9AFE4F: LitI2_Byte 0
  loc_9AFE51: LitI2_Byte 0
  loc_9AFE53: FLdRfVar var_98
  loc_9AFE56: CStrVarTmp
  loc_9AFE57: FStStrNoPop var_9C
  loc_9AFE5A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9AFE5F: FStStrNoPop var_A8
  loc_9AFE62: FLdPr Me
  loc_9AFE65: MemStStrCopy
  loc_9AFE69: FFreeStr var_9C = ""
  loc_9AFE70: FFreeAd var_88 = "": var_A0 = ""
  loc_9AFE79: FFree1Var var_98 = ""
  loc_9AFE7C: FLdPr Me
  loc_9AFE7F: VCallAd Control_ID_mskHasta
  loc_9AFE82: FStAdFunc var_B0
  loc_9AFE85: LitNothing
  loc_9AFE87: CastAd
  loc_9AFE8A: FStAdFunc var_AC
  loc_9AFE8D: FLdRfVar var_AC
  loc_9AFE90: FLdZeroAd var_B0
  loc_9AFE93: FStAdFuncNoPop
  loc_9AFE96: CastAd
  loc_9AFE99: FStAdFunc var_A0
  loc_9AFE9C: FLdRfVar var_A0
  loc_9AFE9F: FLdPr Me
  loc_9AFEA2: MemLdRfVar from_stack_1.global_104
  loc_9AFEA5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9AFEAA: IStI2 arg_C
  loc_9AFEAD: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9AFEB8: ExitProcHresult
  loc_9AFEB9: EqI4
  loc_9AFEBA: FLdPrThis
End Function

Public Function htmFileGet() '4BE274
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4BE283
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4BE292
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4BE2A1
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4BE2B0
  bGenerado = Value
End Sub

Public Function bLogosGet() '4BE2BF
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4BE2CE
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() '9E17F0
  'Data Table: 4BCD04
  loc_9E170C: LitI4 0
  loc_9E1711: LitI4 &HB
  loc_9E1716: FLdRfVar var_88
  loc_9E1719: Redim
  loc_9E1723: FLdPr Me
  loc_9E1726: VCallAd Control_ID_cboPeriodo
  loc_9E1729: CVarAd
  loc_9E172D: ParmAry1St
  loc_9E1733: FLdPr Me
  loc_9E1736: VCallAd Control_ID_mskDesde
  loc_9E1739: CVarAd
  loc_9E173D: ParmAry1St
  loc_9E1743: FLdPr Me
  loc_9E1746: VCallAd Control_ID_cmdCalDesde
  loc_9E1749: CVarAd
  loc_9E174D: ParmAry1St
  loc_9E1753: FLdPr Me
  loc_9E1756: VCallAd Control_ID_mskHasta
  loc_9E1759: CVarAd
  loc_9E175D: ParmAry1St
  loc_9E1763: FLdPr Me
  loc_9E1766: VCallAd Control_ID_cmdCalHasta
  loc_9E1769: CVarAd
  loc_9E176D: ParmAry1St
  loc_9E1773: FLdPr Me
  loc_9E1776: VCallAd Control_ID_CucuPersTxt
  loc_9E1779: CVarAd
  loc_9E177D: ParmAry1St
  loc_9E1783: FLdPr Me
  loc_9E1786: VCallAd Control_ID_CucuPersCmd
  loc_9E1789: CVarAd
  loc_9E178D: ParmAry1St
  loc_9E1793: FLdPr Me
  loc_9E1796: VCallAd Control_ID_cboCodiRete
  loc_9E1799: CVarAd
  loc_9E179D: ParmAry1St
  loc_9E17A3: FLdPr Me
  loc_9E17A6: VCallAd Control_ID_cboCodiDere
  loc_9E17A9: CVarAd
  loc_9E17AD: ParmAry1St
  loc_9E17B3: FLdPr Me
  loc_9E17B6: VCallAd Control_ID_OptionLiquidacion
  loc_9E17B9: CVarAd
  loc_9E17BD: ParmAry1St
  loc_9E17C3: FLdPr Me
  loc_9E17C6: VCallAd Control_ID_OptionPago
  loc_9E17C9: CVarAd
  loc_9E17CD: ParmAry1St
  loc_9E17D3: FLdPr Me
  loc_9E17D6: VCallAd Control_ID_OptionFepaLine
  loc_9E17D9: CVarAd
  loc_9E17DD: ParmAry1St
  loc_9E17E3: FLdRfVar var_88
  loc_9E17E6: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9E17EB: FLdRfVar var_88
  loc_9E17EE: Erase
  loc_9E17EF: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BAC7F4
  'Data Table: 4BCD04
  loc_BAB8CC: LitStr vbNullString
  loc_BAB8CF: FLdPr Me
  loc_BAB8D2: MemStStrCopy
  loc_BAB8D6: LitI2_Byte 0
  loc_BAB8D8: PopTmpLdAd2 var_92
  loc_BAB8DB: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_BAB8E0: FLdPr Me
  loc_BAB8E3: MemLdStr global_104
  loc_BAB8E6: LitStr vbNullString
  loc_BAB8E9: NeStr
  loc_BAB8EB: BranchF loc_BAB8EF
  loc_BAB8EE: ExitProcHresult
  loc_BAB8EF: LitI2_Byte 0
  loc_BAB8F1: PopTmpLdAd2 var_92
  loc_BAB8F4: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_BAB8F9: FLdPr Me
  loc_BAB8FC: MemLdStr global_104
  loc_BAB8FF: LitStr vbNullString
  loc_BAB902: NeStr
  loc_BAB904: BranchF loc_BAB908
  loc_BAB907: ExitProcHresult
  loc_BAB908: OnErrorGoto loc_BAC791
  loc_BAB90B: FLdPr Me
  loc_BAB90E: MemLdI2 bGenerado
  loc_BAB911: BranchF loc_BAB915
  loc_BAB914: ExitProcHresult
  loc_BAB915: LitVarStr var_A4, "Generando reporte..."
  loc_BAB91A: PopAdLdVar
  loc_BAB91B: FLdPr Me
  loc_BAB91E: VCallAd Control_ID_statusBar
  loc_BAB921: FStAdFunc var_B8
  loc_BAB924: FLdPr var_B8
  loc_BAB927: LateIdSt
  loc_BAB92C: FFree1Ad var_B8
  loc_BAB92F: LitI4 &HB
  loc_BAB934: CI2I4
  loc_BAB935: FLdPr Me
  loc_BAB938: Me.MousePointer = from_stack_1
  loc_BAB93D: LitStr vbNullString
  loc_BAB940: FLdPr Me
  loc_BAB943: MemStStrCopy
  loc_BAB947: LitI2_Byte 0
  loc_BAB949: PopTmpLdAd2 var_92
  loc_BAB94C: Call CucuPersTxt_Validate(from_stack_1v)
  loc_BAB951: FLdPr Me
  loc_BAB954: MemLdStr global_104
  loc_BAB957: LitStr vbNullString
  loc_BAB95A: NeStr
  loc_BAB95C: BranchF loc_BAB962
  loc_BAB95F: Branch loc_BAC768
  loc_BAB962: LitI2_Byte 0
  loc_BAB964: PopTmpLdAd2 var_92
  loc_BAB967: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_BAB96C: FLdPr Me
  loc_BAB96F: MemLdStr global_104
  loc_BAB972: LitStr vbNullString
  loc_BAB975: NeStr
  loc_BAB977: BranchF loc_BAB97D
  loc_BAB97A: Branch loc_BAC768
  loc_BAB97D: LitI2_Byte 0
  loc_BAB97F: PopTmpLdAd2 var_92
  loc_BAB982: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_BAB987: FLdPr Me
  loc_BAB98A: MemLdStr global_104
  loc_BAB98D: LitStr vbNullString
  loc_BAB990: NeStr
  loc_BAB992: BranchF loc_BAB998
  loc_BAB995: Branch loc_BAC768
  loc_BAB998: FLdRfVar var_BC
  loc_BAB99B: FLdPr Me
  loc_BAB99E: VCallAd Control_ID_CucuPersTxt
  loc_BAB9A1: FStAdFunc var_B8
  loc_BAB9A4: FLdPr var_B8
  loc_BAB9A7:  = Me.Text
  loc_BAB9AC: ILdRf var_BC
  loc_BAB9AF: LitStr vbNullString
  loc_BAB9B2: NeStr
  loc_BAB9B4: FFree1Str var_BC
  loc_BAB9B7: FFree1Ad var_B8
  loc_BAB9BA: BranchF loc_BAB9E1
  loc_BAB9BD: LitStr " AND lqn.CucuPers = "
  loc_BAB9C0: FLdRfVar var_BC
  loc_BAB9C3: FLdPr Me
  loc_BAB9C6: VCallAd Control_ID_CucuPersTxt
  loc_BAB9C9: FStAdFunc var_B8
  loc_BAB9CC: FLdPr var_B8
  loc_BAB9CF:  = Me.Text
  loc_BAB9D4: ILdRf var_BC
  loc_BAB9D7: ConcatStr
  loc_BAB9D8: FStStr var_88
  loc_BAB9DB: FFree1Str var_BC
  loc_BAB9DE: FFree1Ad var_B8
  loc_BAB9E1: FLdRfVar var_92
  loc_BAB9E4: FLdPr Me
  loc_BAB9E7: VCallAd Control_ID_OptionLiquidacion
  loc_BAB9EA: FStAdFunc var_B8
  loc_BAB9ED: FLdPr var_B8
  loc_BAB9F0:  = Me.Value
  loc_BAB9F5: FLdI2 var_92
  loc_BAB9F8: LitI2_Byte &HFF
  loc_BAB9FA: EqI2
  loc_BAB9FB: FFree1Ad var_B8
  loc_BAB9FE: BranchF loc_BABA0A
  loc_BABA01: LitStr "FechLiqu"
  loc_BABA04: FStStrCopy var_8C
  loc_BABA07: Branch loc_BABA59
  loc_BABA0A: FLdRfVar var_92
  loc_BABA0D: FLdPr Me
  loc_BABA10: VCallAd Control_ID_OptionPago
  loc_BABA13: FStAdFunc var_B8
  loc_BABA16: FLdPr var_B8
  loc_BABA19:  = Me.Value
  loc_BABA1E: FLdI2 var_92
  loc_BABA21: LitI2_Byte &HFF
  loc_BABA23: EqI2
  loc_BABA24: FFree1Ad var_B8
  loc_BABA27: BranchF loc_BABA33
  loc_BABA2A: LitStr "FechCaja"
  loc_BABA2D: FStStrCopy var_8C
  loc_BABA30: Branch loc_BABA59
  loc_BABA33: FLdRfVar var_92
  loc_BABA36: FLdPr Me
  loc_BABA39: VCallAd Control_ID_OptionFepaLine
  loc_BABA3C: FStAdFunc var_B8
  loc_BABA3F: FLdPr var_B8
  loc_BABA42:  = Me.Value
  loc_BABA47: FLdI2 var_92
  loc_BABA4A: LitI2_Byte &HFF
  loc_BABA4C: EqI2
  loc_BABA4D: FFree1Ad var_B8
  loc_BABA50: BranchF loc_BABA59
  loc_BABA53: LitStr "Date(FepaLine)"
  loc_BABA56: FStStrCopy var_8C
  loc_BABA59: FLdRfVar var_92
  loc_BABA5C: FLdPr Me
  loc_BABA5F: VCallAd Control_ID_cboCodiDere
  loc_BABA62: FStAdFunc var_B8
  loc_BABA65: FLdPr var_B8
  loc_BABA68:  = Me.ListIndex
  loc_BABA6D: FLdRfVar var_C4
  loc_BABA70: FLdI2 var_92
  loc_BABA73: FLdPr Me
  loc_BABA76: VCallAd Control_ID_cboCodiDere
  loc_BABA79: FStAdFunc var_C0
  loc_BABA7C: FLdPr var_C0
  loc_BABA7F:  = Me.ItemData
  loc_BABA84: FLdRfVar var_CA
  loc_BABA87: FLdPr Me
  loc_BABA8A: VCallAd Control_ID_cboCodiRete
  loc_BABA8D: FStAdFunc var_C8
  loc_BABA90: FLdPr var_C8
  loc_BABA93:  = Me.ListIndex
  loc_BABA98: FLdRfVar var_D4
  loc_BABA9B: FLdI2 var_CA
  loc_BABA9E: FLdPr Me
  loc_BABAA1: VCallAd Control_ID_cboCodiRete
  loc_BABAA4: FStAdFunc var_D0
  loc_BABAA7: FLdPr var_D0
  loc_BABAAA:  = Me.ItemData
  loc_BABAAF: FLdRfVar var_DA
  loc_BABAB2: FLdPr Me
  loc_BABAB5: VCallAd Control_ID_cboCodiRete
  loc_BABAB8: FStAdFunc var_D8
  loc_BABABB: FLdPr var_D8
  loc_BABABE:  = Me.ListIndex
  loc_BABAC3: FLdRfVar var_F2
  loc_BABAC6: FLdPr Me
  loc_BABAC9: VCallAd Control_ID_cboCodiDere
  loc_BABACC: FStAdFunc var_F0
  loc_BABACF: FLdPr var_F0
  loc_BABAD2:  = Me.ListIndex
  loc_BABAD7: LitStr " AND lqn.CodiRete = "
  loc_BABADA: FLdRfVar var_E4
  loc_BABADD: FLdI2 var_DA
  loc_BABAE0: FLdPr Me
  loc_BABAE3: VCallAd Control_ID_cboCodiRete
  loc_BABAE6: FStAdFunc var_E0
  loc_BABAE9: FLdPr var_E0
  loc_BABAEC:  = Me.ItemData
  loc_BABAF1: ILdRf var_E4
  loc_BABAF4: CStrI4
  loc_BABAF6: FStStrNoPop var_E8
  loc_BABAF9: ConcatStr
  loc_BABAFA: FStStrNoPop var_EC
  loc_BABAFD: LitStr " AND lqn.CodiDere = "
  loc_BABB00: ConcatStr
  loc_BABB01: FStStrNoPop var_100
  loc_BABB04: FLdRfVar var_FC
  loc_BABB07: FLdI2 var_F2
  loc_BABB0A: FLdPr Me
  loc_BABB0D: VCallAd Control_ID_cboCodiDere
  loc_BABB10: FStAdFunc var_F8
  loc_BABB13: FLdPr var_F8
  loc_BABB16:  = Me.ItemData
  loc_BABB1B: ILdRf var_FC
  loc_BABB1E: CStrI4
  loc_BABB20: FStStrNoPop var_104
  loc_BABB23: ConcatStr
  loc_BABB24: CVarStr var_124
  loc_BABB27: LitStr " AND lqn.CodiRete = "
  loc_BABB2A: ILdRf var_D4
  loc_BABB2D: CStrI4
  loc_BABB2F: FStStrNoPop var_BC
  loc_BABB32: ConcatStr
  loc_BABB33: CVarStr var_114
  loc_BABB36: ILdRf var_C4
  loc_BABB39: LitI4 0
  loc_BABB3E: EqI4
  loc_BABB3F: CVarBoolI2 var_A4
  loc_BABB43: FLdRfVar var_134
  loc_BABB46: ImpAdCallFPR4  = IIf(, , )
  loc_BABB4B: FLdRfVar var_134
  loc_BABB4E: CStrVarTmp
  loc_BABB4F: FStStr var_90
  loc_BABB52: FFreeStr var_BC = "": var_E8 = "": var_EC = "": var_100 = ""
  loc_BABB5F: FFreeAd var_B8 = "": var_C0 = "": var_C8 = "": var_D0 = "": var_D8 = "": var_E0 = "": var_F0 = ""
  loc_BABB72: FFreeVar var_A4 = "": var_114 = "": var_124 = ""
  loc_BABB7D: FLdPr Me
  loc_BABB80: VCallAd Control_ID_mskDesde
  loc_BABB83: FStAdFunc var_B8
  loc_BABB86: FLdPr var_B8
  loc_BABB89: LateIdLdVar var_114 DispID_15 0
  loc_BABB90: PopAd
  loc_BABB92: FLdPr Me
  loc_BABB95: VCallAd Control_ID_mskHasta
  loc_BABB98: FStAdFunc var_C0
  loc_BABB9B: FLdPr var_C0
  loc_BABB9E: LateIdLdVar var_158 DispID_15 0
  loc_BABBA5: PopAd
  loc_BABBA7: LitStr "SELECT DISTINCT lqn.CucuPers, DetaProv"
  loc_BABBAA: LitStr " FROM liquidacion l"
  loc_BABBAD: ConcatStr
  loc_BABBAE: FStStrNoPop var_BC
  loc_BABBB1: LitStr " INNER JOIN liquidaneto lqn ON lqn.PeriInfo = l.PeriInfo AND lqn.ExpeImpu = l.ExpeImpu AND lqn.NumeLiqu = l.NumeLiqu"
  loc_BABBB4: ConcatStr
  loc_BABBB5: FStStrNoPop var_E8
  loc_BABBB8: ILdRf var_90
  loc_BABBBB: ConcatStr
  loc_BABBBC: FStStrNoPop var_EC
  loc_BABBBF: ILdRf var_88
  loc_BABBC2: ConcatStr
  loc_BABBC3: FStStrNoPop var_100
  loc_BABBC6: LitStr " INNER JOIN proveedor p ON p.CucuPers = lqn.CucuPers"
  loc_BABBC9: ConcatStr
  loc_BABBCA: FStStrNoPop var_104
  loc_BABBCD: LitStr " WHERE "
  loc_BABBD0: ConcatStr
  loc_BABBD1: FStStrNoPop var_138
  loc_BABBD4: ILdRf var_8C
  loc_BABBD7: ConcatStr
  loc_BABBD8: FStStrNoPop var_13C
  loc_BABBDB: LitStr " BETWEEN "
  loc_BABBDE: ConcatStr
  loc_BABBDF: FStStrNoPop var_140
  loc_BABBE2: LitI4 1
  loc_BABBE7: LitI4 1
  loc_BABBEC: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_BABBF1: FStVarCopyObj var_134
  loc_BABBF4: FLdRfVar var_134
  loc_BABBF7: FLdRfVar var_114
  loc_BABBFA: CStrVarTmp
  loc_BABBFB: CVarStr var_124
  loc_BABBFE: ImpAdCallI2 Format$(, )
  loc_BABC03: FStStrNoPop var_144
  loc_BABC06: ConcatStr
  loc_BABC07: FStStrNoPop var_148
  loc_BABC0A: LitStr " AND "
  loc_BABC0D: ConcatStr
  loc_BABC0E: FStStrNoPop var_17C
  loc_BABC11: LitI4 1
  loc_BABC16: LitI4 1
  loc_BABC1B: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_BABC20: FStVarCopyObj var_178
  loc_BABC23: FLdRfVar var_178
  loc_BABC26: FLdRfVar var_158
  loc_BABC29: CStrVarTmp
  loc_BABC2A: CVarStr var_168
  loc_BABC2D: ImpAdCallI2 Format$(, )
  loc_BABC32: FStStrNoPop var_180
  loc_BABC35: ConcatStr
  loc_BABC36: FStStrNoPop var_184
  loc_BABC39: LitStr " AND FeanLiqu IS NULL"
  loc_BABC3C: ConcatStr
  loc_BABC3D: FStStrNoPop var_188
  loc_BABC40: LitStr " ORDER BY DetaProv, CucuPers;"
  loc_BABC43: ConcatStr
  loc_BABC44: FStStrNoPop var_18C
  loc_BABC47: FLdPr Me
  loc_BABC4A: MemLdRfVar from_stack_1.global_76
  loc_BABC4D: NewIfNullPr clsbase
  loc_BABC50: Call clsbase.RedefineRS(from_stack_1v)
  loc_BABC55: FFreeStr var_BC = "": var_E8 = "": var_EC = "": var_100 = "": var_104 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = ""
  loc_BABC76: FFreeAd var_B8 = ""
  loc_BABC7D: FFreeVar var_114 = "": var_124 = "": var_134 = "": var_158 = "": var_168 = ""
  loc_BABC8C: FLdRfVar var_C4
  loc_BABC8F: FLdPr Me
  loc_BABC92: MemLdRfVar from_stack_1.global_76
  loc_BABC95: NewIfNullPr clsbase
  loc_BABC98: from_stack_1 = clsbase.RecordCount
  loc_BABC9D: ILdRf var_C4
  loc_BABCA0: LitI4 0
  loc_BABCA5: EqI4
  loc_BABCA6: BranchF loc_BABCB9
  loc_BABCA9: LitI4 0
  loc_BABCAE: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BABCB1: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BABCB6: Branch loc_BAC768
  loc_BABCB9: LitI4 0
  loc_BABCBE: FLdRfVar var_C4
  loc_BABCC1: FLdPr Me
  loc_BABCC4: MemLdRfVar from_stack_1.global_76
  loc_BABCC7: NewIfNullPr clsbase
  loc_BABCCA: from_stack_1 = clsbase.RecordCount
  loc_BABCCF: ILdRf var_C4
  loc_BABCD2: FLdPr Me
  loc_BABCD5: MemLdRfVar from_stack_1.global_84
  loc_BABCD8: Redim
  loc_BABCE2: LitI2_Byte 0
  loc_BABCE4: CStrUI1
  loc_BABCE6: FStStrNoPop var_BC
  loc_BABCE9: FLdPr Me
  loc_BABCEC: MemStStrCopy
  loc_BABCF0: FFree1Str var_BC
  loc_BABCF3: LitI2_Byte 0
  loc_BABCF5: CStrUI1
  loc_BABCF7: FStStrNoPop var_BC
  loc_BABCFA: FLdPr Me
  loc_BABCFD: MemStStrCopy
  loc_BABD01: FFree1Str var_BC
  loc_BABD04: FLdPr Me
  loc_BABD07: MemLdRfVar from_stack_1.global_76
  loc_BABD0A: NewIfNullAd
  loc_BABD0D: FStAd var_190 
  loc_BABD11: FLdPr var_190
  loc_BABD14: Call clsbase.MoveFirst()
  loc_BABD19: LitI2_Byte 1
  loc_BABD1B: FLdPr Me
  loc_BABD1E: MemLdRfVar from_stack_1.global_88
  loc_BABD21: FLdPr Me
  loc_BABD24: MemLdStr global_84
  loc_BABD27: LitI2_Byte 1
  loc_BABD29: FnUBound
  loc_BABD2B: CI2I4
  loc_BABD2C: ForI2 var_194
  loc_BABD32: FLdRfVar var_C8
  loc_BABD35: LitVarStr var_A4, "CucuPers"
  loc_BABD3A: PopAdLdVar
  loc_BABD3B: FLdRfVar var_C0
  loc_BABD3E: FLdRfVar var_B8
  loc_BABD41: FLdPr var_190
  loc_BABD44: from_stack_1v = clsbase.RsFrmGet()
  loc_BABD49: FLdPr var_B8
  loc_BABD4C:  = Me.Fields
  loc_BABD51: FLdPr var_C0
  loc_BABD54: from_stack_2 = Me.Item(from_stack_1)
  loc_BABD59: LitI2_Byte 0
  loc_BABD5B: LitVar_Missing var_124
  loc_BABD5E: LitI2_Byte 0
  loc_BABD60: FLdZeroAd var_C8
  loc_BABD63: CVarAd
  loc_BABD67: PopAdLdVar
  loc_BABD68: FLdPr Me
  loc_BABD6B: MemLdI2 global_88
  loc_BABD6E: CI4UI1
  loc_BABD6F: FLdPr Me
  loc_BABD72: MemLdStr global_84
  loc_BABD75: AryLock
  loc_BABD78: Ary1LdPr
  loc_BABD79: MemLdRfVar from_stack_1.global_0
  loc_BABD7C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BABD81: AryUnlock
  loc_BABD84: FFreeAd var_B8 = ""
  loc_BABD8B: FFreeVar var_114 = ""
  loc_BABD92: FLdRfVar var_C8
  loc_BABD95: LitVarStr var_A4, "DetaProv"
  loc_BABD9A: PopAdLdVar
  loc_BABD9B: FLdRfVar var_C0
  loc_BABD9E: FLdRfVar var_B8
  loc_BABDA1: FLdPr var_190
  loc_BABDA4: from_stack_1v = clsbase.RsFrmGet()
  loc_BABDA9: FLdPr var_B8
  loc_BABDAC:  = Me.Fields
  loc_BABDB1: FLdPr var_C0
  loc_BABDB4: from_stack_2 = Me.Item(from_stack_1)
  loc_BABDB9: LitI2_Byte 0
  loc_BABDBB: LitVar_Missing var_124
  loc_BABDBE: LitI2_Byte 0
  loc_BABDC0: FLdZeroAd var_C8
  loc_BABDC3: CVarAd
  loc_BABDC7: PopAdLdVar
  loc_BABDC8: FLdPr Me
  loc_BABDCB: MemLdI2 global_88
  loc_BABDCE: CI4UI1
  loc_BABDCF: FLdPr Me
  loc_BABDD2: MemLdStr global_84
  loc_BABDD5: AryLock
  loc_BABDD8: Ary1LdPr
  loc_BABDD9: MemLdRfVar from_stack_1.global_4
  loc_BABDDC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BABDE1: AryUnlock
  loc_BABDE4: FFreeAd var_B8 = ""
  loc_BABDEB: FFreeVar var_114 = ""
  loc_BABDF2: FLdPr var_190
  loc_BABDF5: Call clsbase.MoveSiguiente()
  loc_BABDFA: FLdPr Me
  loc_BABDFD: MemLdRfVar from_stack_1.global_88
  loc_BABE00: NextI2 var_194, loc_BABD32
  loc_BABE05: LitI2_Byte 1
  loc_BABE07: FLdPr Me
  loc_BABE0A: MemLdRfVar from_stack_1.global_88
  loc_BABE0D: FLdPr Me
  loc_BABE10: MemLdStr global_84
  loc_BABE13: LitI2_Byte 1
  loc_BABE15: FnUBound
  loc_BABE17: CI2I4
  loc_BABE18: ForI2 var_19C
  loc_BABE1E: FLdPr Me
  loc_BABE21: VCallAd Control_ID_mskDesde
  loc_BABE24: FStAdFunc var_B8
  loc_BABE27: FLdPr var_B8
  loc_BABE2A: LateIdLdVar var_114 DispID_15 0
  loc_BABE31: PopAd
  loc_BABE33: FLdPr Me
  loc_BABE36: VCallAd Control_ID_mskHasta
  loc_BABE39: FStAdFunc var_C0
  loc_BABE3C: FLdPr var_C0
  loc_BABE3F: LateIdLdVar var_158 DispID_15 0
  loc_BABE46: PopAd
  loc_BABE48: LitStr "SELECT lqn.CucuPers, DetaProv, l.ExpeImpu, l.NumeLiqu, l.NumeOrpa"
  loc_BABE4B: LitStr ", IFNULL((SELECT GROUP_CONCAT(DISTINCT i.ExorImpu) FROM imputacion i WHERE i.PeriInfo = l.PeriInfo AND i.ExpeImpu = l.ExpeImpu AND i.NumeLiqu = l.NumeLiqu AND i.CucuPers = "
  loc_BABE4E: ConcatStr
  loc_BABE4F: FStStrNoPop var_BC
  loc_BABE52: FLdPr Me
  loc_BABE55: MemLdI2 global_88
  loc_BABE58: CI4UI1
  loc_BABE59: FLdPr Me
  loc_BABE5C: MemLdStr global_84
  loc_BABE5F: Ary1LdPr
  loc_BABE60: MemLdStr global_0
  loc_BABE63: ConcatStr
  loc_BABE64: FStStrNoPop var_E8
  loc_BABE67: LitStr " AND i.LiquImpu != 0),'') ExorImpu"
  loc_BABE6A: ConcatStr
  loc_BABE6B: FStStrNoPop var_EC
  loc_BABE6E: LitStr ", Left(DetaLiqu,80) DetaLiqu"
  loc_BABE71: ConcatStr
  loc_BABE72: FStStrNoPop var_100
  loc_BABE75: LitStr ", (SELECT Sum(ImpoLine) FROM liquidaneto lqn WHERE lqn.PeriInfo = l.PeriInfo AND lqn.ExpeImpu = l.ExpeImpu AND lqn.NumeLiqu = l.NumeLiqu AND lqn.CucuPers = "
  loc_BABE78: ConcatStr
  loc_BABE79: FStStrNoPop var_104
  loc_BABE7C: FLdPr Me
  loc_BABE7F: MemLdI2 global_88
  loc_BABE82: CI4UI1
  loc_BABE83: FLdPr Me
  loc_BABE86: MemLdStr global_84
  loc_BABE89: Ary1LdPr
  loc_BABE8A: MemLdStr global_0
  loc_BABE8D: ConcatStr
  loc_BABE8E: FStStrNoPop var_138
  loc_BABE91: LitStr ") ImpoLine"
  loc_BABE94: ConcatStr
  loc_BABE95: FStStrNoPop var_13C
  loc_BABE98: LitStr ", Sum(ImpoLine) ImpoConc"
  loc_BABE9B: ConcatStr
  loc_BABE9C: FStStrNoPop var_140
  loc_BABE9F: LitStr ", FechLiqu, FechCaja, Date(FepaLine) FepaLine"
  loc_BABEA2: ConcatStr
  loc_BABEA3: FStStrNoPop var_144
  loc_BABEA6: LitStr ", lqn.CodiDere"
  loc_BABEA9: ConcatStr
  loc_BABEAA: FStStrNoPop var_148
  loc_BABEAD: LitStr ", lqn.CodiCuco"
  loc_BABEB0: ConcatStr
  loc_BABEB1: FStStrNoPop var_17C
  loc_BABEB4: LitStr " FROM liquidacion l"
  loc_BABEB7: ConcatStr
  loc_BABEB8: FStStrNoPop var_180
  loc_BABEBB: LitStr " INNER JOIN liquidaneto lqn ON lqn.PeriInfo = l.PeriInfo AND lqn.ExpeImpu = l.ExpeImpu AND lqn.NumeLiqu = l.NumeLiqu AND lqn.CucuPers = "
  loc_BABEBE: ConcatStr
  loc_BABEBF: FStStrNoPop var_184
  loc_BABEC2: FLdPr Me
  loc_BABEC5: MemLdI2 global_88
  loc_BABEC8: CI4UI1
  loc_BABEC9: FLdPr Me
  loc_BABECC: MemLdStr global_84
  loc_BABECF: Ary1LdPr
  loc_BABED0: MemLdStr global_0
  loc_BABED3: ConcatStr
  loc_BABED4: FStStrNoPop var_188
  loc_BABED7: ILdRf var_90
  loc_BABEDA: ConcatStr
  loc_BABEDB: FStStrNoPop var_18C
  loc_BABEDE: LitStr " INNER JOIN proveedor p ON p.CucuPers = lqn.CucuPers"
  loc_BABEE1: ConcatStr
  loc_BABEE2: FStStrNoPop var_1A0
  loc_BABEE5: LitStr " WHERE "
  loc_BABEE8: ConcatStr
  loc_BABEE9: FStStrNoPop var_1A4
  loc_BABEEC: ILdRf var_8C
  loc_BABEEF: ConcatStr
  loc_BABEF0: FStStrNoPop var_1A8
  loc_BABEF3: LitStr " BETWEEN "
  loc_BABEF6: ConcatStr
  loc_BABEF7: FStStrNoPop var_1AC
  loc_BABEFA: LitI4 1
  loc_BABEFF: LitI4 1
  loc_BABF04: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_BABF09: FStVarCopyObj var_134
  loc_BABF0C: FLdRfVar var_134
  loc_BABF0F: FLdRfVar var_114
  loc_BABF12: CStrVarTmp
  loc_BABF13: CVarStr var_124
  loc_BABF16: ImpAdCallI2 Format$(, )
  loc_BABF1B: FStStrNoPop var_1B0
  loc_BABF1E: ConcatStr
  loc_BABF1F: FStStrNoPop var_1B4
  loc_BABF22: LitStr " AND "
  loc_BABF25: ConcatStr
  loc_BABF26: FStStrNoPop var_1B8
  loc_BABF29: LitI4 1
  loc_BABF2E: LitI4 1
  loc_BABF33: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_BABF38: FStVarCopyObj var_178
  loc_BABF3B: FLdRfVar var_178
  loc_BABF3E: FLdRfVar var_158
  loc_BABF41: CStrVarTmp
  loc_BABF42: CVarStr var_168
  loc_BABF45: ImpAdCallI2 Format$(, )
  loc_BABF4A: FStStrNoPop var_1BC
  loc_BABF4D: ConcatStr
  loc_BABF4E: FStStrNoPop var_1C0
  loc_BABF51: LitStr " AND FeanLiqu IS NULL"
  loc_BABF54: ConcatStr
  loc_BABF55: FStStrNoPop var_1C4
  loc_BABF58: LitStr " GROUP BY CucuPers, l.ExpeImpu, l.NumeLiqu"
  loc_BABF5B: ConcatStr
  loc_BABF5C: FStStrNoPop var_1C8
  loc_BABF5F: LitStr " HAVING ImpoConc > 0"
  loc_BABF62: ConcatStr
  loc_BABF63: FStStrNoPop var_1CC
  loc_BABF66: LitStr " ORDER BY CucuPers, l.AltaFeho;"
  loc_BABF69: ConcatStr
  loc_BABF6A: FStStrNoPop var_1D0
  loc_BABF6D: FLdPr var_190
  loc_BABF70: Call clsbase.RedefineRS(from_stack_1v)
  loc_BABF75: FFreeStr var_BC = "": var_E8 = "": var_EC = "": var_100 = "": var_104 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = ""
  loc_BABFB0: FFreeAd var_B8 = ""
  loc_BABFB7: FFreeVar var_114 = "": var_124 = "": var_134 = "": var_158 = "": var_168 = ""
  loc_BABFC6: FLdRfVar var_C4
  loc_BABFC9: FLdPr var_190
  loc_BABFCC: from_stack_1 = clsbase.RecordCount
  loc_BABFD1: LitI4 0
  loc_BABFD6: ILdRf var_C4
  loc_BABFD9: FLdPr Me
  loc_BABFDC: MemLdI2 global_88
  loc_BABFDF: CI4UI1
  loc_BABFE0: FLdPr Me
  loc_BABFE3: MemLdStr global_84
  loc_BABFE6: Ary1LdPr
  loc_BABFE7: MemLdRfVar from_stack_1.global_20
  loc_BABFEA: Redim
  loc_BABFF4: FLdPr var_190
  loc_BABFF7: Call clsbase.MoveFirst()
  loc_BABFFC: LitI2_Byte 1
  loc_BABFFE: FLdPr Me
  loc_BAC001: MemLdRfVar from_stack_1.global_90
  loc_BAC004: FLdPr Me
  loc_BAC007: MemLdI2 global_88
  loc_BAC00A: CI4UI1
  loc_BAC00B: FLdPr Me
  loc_BAC00E: MemLdStr global_84
  loc_BAC011: Ary1LdPr
  loc_BAC012: MemLdStr global_20
  loc_BAC015: LitI2_Byte 1
  loc_BAC017: FnUBound
  loc_BAC019: CI2I4
  loc_BAC01A: ForI2 var_1D4
  loc_BAC020: FLdRfVar var_C8
  loc_BAC023: LitVarStr var_A4, "ExpeImpu"
  loc_BAC028: PopAdLdVar
  loc_BAC029: FLdRfVar var_C0
  loc_BAC02C: FLdRfVar var_B8
  loc_BAC02F: FLdPr var_190
  loc_BAC032: from_stack_1v = clsbase.RsFrmGet()
  loc_BAC037: FLdPr var_B8
  loc_BAC03A:  = Me.Fields
  loc_BAC03F: FLdPr var_C0
  loc_BAC042: from_stack_2 = Me.Item(from_stack_1)
  loc_BAC047: LitI2_Byte 0
  loc_BAC049: LitVar_Missing var_124
  loc_BAC04C: LitI2_Byte 0
  loc_BAC04E: FLdZeroAd var_C8
  loc_BAC051: CVarAd
  loc_BAC055: PopAdLdVar
  loc_BAC056: FLdPr Me
  loc_BAC059: MemLdI2 global_90
  loc_BAC05C: CI4UI1
  loc_BAC05D: FLdPr Me
  loc_BAC060: MemLdI2 global_88
  loc_BAC063: CI4UI1
  loc_BAC064: FLdPr Me
  loc_BAC067: MemLdStr global_84
  loc_BAC06A: AryLock
  loc_BAC06D: Ary1LdPr
  loc_BAC06E: MemLdStr global_20
  loc_BAC071: AryLock
  loc_BAC074: Ary1LdPr
  loc_BAC075: MemLdRfVar from_stack_1.global_0
  loc_BAC078: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAC07D: AryUnlock
  loc_BAC080: AryUnlock
  loc_BAC083: FFreeAd var_B8 = ""
  loc_BAC08A: FFreeVar var_114 = ""
  loc_BAC091: FLdRfVar var_C8
  loc_BAC094: LitVarStr var_A4, "NumeLiqu"
  loc_BAC099: PopAdLdVar
  loc_BAC09A: FLdRfVar var_C0
  loc_BAC09D: FLdRfVar var_B8
  loc_BAC0A0: FLdPr var_190
  loc_BAC0A3: from_stack_1v = clsbase.RsFrmGet()
  loc_BAC0A8: FLdPr var_B8
  loc_BAC0AB:  = Me.Fields
  loc_BAC0B0: FLdPr var_C0
  loc_BAC0B3: from_stack_2 = Me.Item(from_stack_1)
  loc_BAC0B8: LitI2_Byte 0
  loc_BAC0BA: LitVar_Missing var_124
  loc_BAC0BD: LitI2_Byte 0
  loc_BAC0BF: FLdZeroAd var_C8
  loc_BAC0C2: CVarAd
  loc_BAC0C6: PopAdLdVar
  loc_BAC0C7: FLdPr Me
  loc_BAC0CA: MemLdI2 global_90
  loc_BAC0CD: CI4UI1
  loc_BAC0CE: FLdPr Me
  loc_BAC0D1: MemLdI2 global_88
  loc_BAC0D4: CI4UI1
  loc_BAC0D5: FLdPr Me
  loc_BAC0D8: MemLdStr global_84
  loc_BAC0DB: AryLock
  loc_BAC0DE: Ary1LdPr
  loc_BAC0DF: MemLdStr global_20
  loc_BAC0E2: AryLock
  loc_BAC0E5: Ary1LdPr
  loc_BAC0E6: MemLdRfVar from_stack_1.global_4
  loc_BAC0E9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAC0EE: AryUnlock
  loc_BAC0F1: AryUnlock
  loc_BAC0F4: FFreeAd var_B8 = ""
  loc_BAC0FB: FFreeVar var_114 = ""
  loc_BAC102: FLdRfVar var_C8
  loc_BAC105: LitVarStr var_A4, "ExorImpu"
  loc_BAC10A: PopAdLdVar
  loc_BAC10B: FLdRfVar var_C0
  loc_BAC10E: FLdRfVar var_B8
  loc_BAC111: FLdPr var_190
  loc_BAC114: from_stack_1v = clsbase.RsFrmGet()
  loc_BAC119: FLdPr var_B8
  loc_BAC11C:  = Me.Fields
  loc_BAC121: FLdPr var_C0
  loc_BAC124: from_stack_2 = Me.Item(from_stack_1)
  loc_BAC129: LitI2_Byte 0
  loc_BAC12B: LitVar_Missing var_124
  loc_BAC12E: LitI2_Byte 0
  loc_BAC130: FLdZeroAd var_C8
  loc_BAC133: CVarAd
  loc_BAC137: PopAdLdVar
  loc_BAC138: FLdPr Me
  loc_BAC13B: MemLdI2 global_90
  loc_BAC13E: CI4UI1
  loc_BAC13F: FLdPr Me
  loc_BAC142: MemLdI2 global_88
  loc_BAC145: CI4UI1
  loc_BAC146: FLdPr Me
  loc_BAC149: MemLdStr global_84
  loc_BAC14C: AryLock
  loc_BAC14F: Ary1LdPr
  loc_BAC150: MemLdStr global_20
  loc_BAC153: AryLock
  loc_BAC156: Ary1LdPr
  loc_BAC157: MemLdRfVar from_stack_1.global_8
  loc_BAC15A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAC15F: AryUnlock
  loc_BAC162: AryUnlock
  loc_BAC165: FFreeAd var_B8 = ""
  loc_BAC16C: FFreeVar var_114 = ""
  loc_BAC173: FLdRfVar var_C8
  loc_BAC176: LitVarStr var_A4, "NumeOrpa"
  loc_BAC17B: PopAdLdVar
  loc_BAC17C: FLdRfVar var_C0
  loc_BAC17F: FLdRfVar var_B8
  loc_BAC182: FLdPr var_190
  loc_BAC185: from_stack_1v = clsbase.RsFrmGet()
  loc_BAC18A: FLdPr var_B8
  loc_BAC18D:  = Me.Fields
  loc_BAC192: FLdPr var_C0
  loc_BAC195: from_stack_2 = Me.Item(from_stack_1)
  loc_BAC19A: LitI2_Byte 0
  loc_BAC19C: LitVar_Missing var_124
  loc_BAC19F: LitI2_Byte 0
  loc_BAC1A1: FLdZeroAd var_C8
  loc_BAC1A4: CVarAd
  loc_BAC1A8: PopAdLdVar
  loc_BAC1A9: FLdPr Me
  loc_BAC1AC: MemLdI2 global_90
  loc_BAC1AF: CI4UI1
  loc_BAC1B0: FLdPr Me
  loc_BAC1B3: MemLdI2 global_88
  loc_BAC1B6: CI4UI1
  loc_BAC1B7: FLdPr Me
  loc_BAC1BA: MemLdStr global_84
  loc_BAC1BD: AryLock
  loc_BAC1C0: Ary1LdPr
  loc_BAC1C1: MemLdStr global_20
  loc_BAC1C4: AryLock
  loc_BAC1C7: Ary1LdPr
  loc_BAC1C8: MemLdRfVar from_stack_1.global_12
  loc_BAC1CB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAC1D0: AryUnlock
  loc_BAC1D3: AryUnlock
  loc_BAC1D6: FFreeAd var_B8 = ""
  loc_BAC1DD: FFreeVar var_114 = ""
  loc_BAC1E4: FLdRfVar var_C8
  loc_BAC1E7: LitVarStr var_A4, "DetaLiqu"
  loc_BAC1EC: PopAdLdVar
  loc_BAC1ED: FLdRfVar var_C0
  loc_BAC1F0: FLdRfVar var_B8
  loc_BAC1F3: FLdPr var_190
  loc_BAC1F6: from_stack_1v = clsbase.RsFrmGet()
  loc_BAC1FB: FLdPr var_B8
  loc_BAC1FE:  = Me.Fields
  loc_BAC203: FLdPr var_C0
  loc_BAC206: from_stack_2 = Me.Item(from_stack_1)
  loc_BAC20B: LitI2_Byte 0
  loc_BAC20D: LitVar_Missing var_124
  loc_BAC210: LitI2_Byte 0
  loc_BAC212: FLdZeroAd var_C8
  loc_BAC215: CVarAd
  loc_BAC219: PopAdLdVar
  loc_BAC21A: FLdPr Me
  loc_BAC21D: MemLdI2 global_90
  loc_BAC220: CI4UI1
  loc_BAC221: FLdPr Me
  loc_BAC224: MemLdI2 global_88
  loc_BAC227: CI4UI1
  loc_BAC228: FLdPr Me
  loc_BAC22B: MemLdStr global_84
  loc_BAC22E: AryLock
  loc_BAC231: Ary1LdPr
  loc_BAC232: MemLdStr global_20
  loc_BAC235: AryLock
  loc_BAC238: Ary1LdPr
  loc_BAC239: MemLdRfVar from_stack_1.global_16
  loc_BAC23C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAC241: AryUnlock
  loc_BAC244: AryUnlock
  loc_BAC247: FFreeAd var_B8 = ""
  loc_BAC24E: FFreeVar var_114 = ""
  loc_BAC255: FLdRfVar var_114
  loc_BAC258: FLdRfVar var_C8
  loc_BAC25B: LitVarStr var_A4, "CodiDere"
  loc_BAC260: PopAdLdVar
  loc_BAC261: FLdRfVar var_C0
  loc_BAC264: FLdRfVar var_B8
  loc_BAC267: FLdPr var_190
  loc_BAC26A: from_stack_1v = clsbase.RsFrmGet()
  loc_BAC26F: FLdPr var_B8
  loc_BAC272:  = Me.Fields
  loc_BAC277: FLdPr var_C0
  loc_BAC27A: from_stack_2 = Me.Item(from_stack_1)
  loc_BAC27F: FLdPr var_C8
  loc_BAC282:  = Me.Value
  loc_BAC287: FLdRfVar var_114
  loc_BAC28A: LitVarStr var_B4, "0"
  loc_BAC28F: HardType
  loc_BAC290: EqVarBool
  loc_BAC292: FFreeAd var_B8 = "": var_C0 = ""
  loc_BAC29B: FFree1Var var_114 = ""
  loc_BAC29E: BranchF loc_BAC2E1
  loc_BAC2A1: LitI2_Byte 0
  loc_BAC2A3: LitVar_Missing var_114
  loc_BAC2A6: LitI2_Byte 0
  loc_BAC2A8: LitVarStr var_A4, vbNullString
  loc_BAC2AD: PopAdLdVar
  loc_BAC2AE: FLdPr Me
  loc_BAC2B1: MemLdI2 global_90
  loc_BAC2B4: CI4UI1
  loc_BAC2B5: FLdPr Me
  loc_BAC2B8: MemLdI2 global_88
  loc_BAC2BB: CI4UI1
  loc_BAC2BC: FLdPr Me
  loc_BAC2BF: MemLdStr global_84
  loc_BAC2C2: AryLock
  loc_BAC2C5: Ary1LdPr
  loc_BAC2C6: MemLdStr global_20
  loc_BAC2C9: AryLock
  loc_BAC2CC: Ary1LdPr
  loc_BAC2CD: MemLdRfVar from_stack_1.global_20
  loc_BAC2D0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAC2D5: AryUnlock
  loc_BAC2D8: AryUnlock
  loc_BAC2DB: FFree1Var var_114 = ""
  loc_BAC2DE: Branch loc_BAC402
  loc_BAC2E1: FLdRfVar var_C4
  loc_BAC2E4: FLdRfVar var_92
  loc_BAC2E7: FLdPr Me
  loc_BAC2EA: VCallAd Control_ID_cboCodiRete
  loc_BAC2ED: FStAdFunc var_B8
  loc_BAC2F0: FLdPr var_B8
  loc_BAC2F3:  = Me.ListIndex
  loc_BAC2F8: FLdI2 var_92
  loc_BAC2FB: FLdPr Me
  loc_BAC2FE: VCallAd Control_ID_cboCodiRete
  loc_BAC301: FStAdFunc var_C0
  loc_BAC304: FLdPr var_C0
  loc_BAC307:  = Me.ItemData
  loc_BAC30C: ILdRf var_C4
  loc_BAC30F: LitI2_Byte 4
  loc_BAC311: CI4UI1
  loc_BAC312: EqI4
  loc_BAC313: FFreeAd var_B8 = ""
  loc_BAC31A: BranchF loc_BAC391
  loc_BAC31D: FLdRfVar var_C8
  loc_BAC320: LitVarStr var_A4, "CodiCuco"
  loc_BAC325: PopAdLdVar
  loc_BAC326: FLdRfVar var_C0
  loc_BAC329: FLdRfVar var_B8
  loc_BAC32C: FLdPr var_190
  loc_BAC32F: from_stack_1v = clsbase.RsFrmGet()
  loc_BAC334: FLdPr var_B8
  loc_BAC337:  = Me.Fields
  loc_BAC33C: FLdPr var_C0
  loc_BAC33F: from_stack_2 = Me.Item(from_stack_1)
  loc_BAC344: LitI2_Byte 0
  loc_BAC346: LitVar_Missing var_124
  loc_BAC349: LitI2_Byte 0
  loc_BAC34B: FLdZeroAd var_C8
  loc_BAC34E: CVarAd
  loc_BAC352: PopAdLdVar
  loc_BAC353: FLdPr Me
  loc_BAC356: MemLdI2 global_90
  loc_BAC359: CI4UI1
  loc_BAC35A: FLdPr Me
  loc_BAC35D: MemLdI2 global_88
  loc_BAC360: CI4UI1
  loc_BAC361: FLdPr Me
  loc_BAC364: MemLdStr global_84
  loc_BAC367: AryLock
  loc_BAC36A: Ary1LdPr
  loc_BAC36B: MemLdStr global_20
  loc_BAC36E: AryLock
  loc_BAC371: Ary1LdPr
  loc_BAC372: MemLdRfVar from_stack_1.global_20
  loc_BAC375: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAC37A: AryUnlock
  loc_BAC37D: AryUnlock
  loc_BAC380: FFreeAd var_B8 = ""
  loc_BAC387: FFreeVar var_114 = ""
  loc_BAC38E: Branch loc_BAC402
  loc_BAC391: FLdRfVar var_C8
  loc_BAC394: LitVarStr var_A4, "CodiDere"
  loc_BAC399: PopAdLdVar
  loc_BAC39A: FLdRfVar var_C0
  loc_BAC39D: FLdRfVar var_B8
  loc_BAC3A0: FLdPr var_190
  loc_BAC3A3: from_stack_1v = clsbase.RsFrmGet()
  loc_BAC3A8: FLdPr var_B8
  loc_BAC3AB:  = Me.Fields
  loc_BAC3B0: FLdPr var_C0
  loc_BAC3B3: from_stack_2 = Me.Item(from_stack_1)
  loc_BAC3B8: LitI2_Byte 0
  loc_BAC3BA: LitVar_Missing var_124
  loc_BAC3BD: LitI2_Byte 0
  loc_BAC3BF: FLdZeroAd var_C8
  loc_BAC3C2: CVarAd
  loc_BAC3C6: PopAdLdVar
  loc_BAC3C7: FLdPr Me
  loc_BAC3CA: MemLdI2 global_90
  loc_BAC3CD: CI4UI1
  loc_BAC3CE: FLdPr Me
  loc_BAC3D1: MemLdI2 global_88
  loc_BAC3D4: CI4UI1
  loc_BAC3D5: FLdPr Me
  loc_BAC3D8: MemLdStr global_84
  loc_BAC3DB: AryLock
  loc_BAC3DE: Ary1LdPr
  loc_BAC3DF: MemLdStr global_20
  loc_BAC3E2: AryLock
  loc_BAC3E5: Ary1LdPr
  loc_BAC3E6: MemLdRfVar from_stack_1.global_20
  loc_BAC3E9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAC3EE: AryUnlock
  loc_BAC3F1: AryUnlock
  loc_BAC3F4: FFreeAd var_B8 = ""
  loc_BAC3FB: FFreeVar var_114 = ""
  loc_BAC402: FLdRfVar var_C8
  loc_BAC405: LitVarStr var_A4, "FechLiqu"
  loc_BAC40A: PopAdLdVar
  loc_BAC40B: FLdRfVar var_C0
  loc_BAC40E: FLdRfVar var_B8
  loc_BAC411: FLdPr var_190
  loc_BAC414: from_stack_1v = clsbase.RsFrmGet()
  loc_BAC419: FLdPr var_B8
  loc_BAC41C:  = Me.Fields
  loc_BAC421: FLdPr var_C0
  loc_BAC424: from_stack_2 = Me.Item(from_stack_1)
  loc_BAC429: LitI2_Byte 0
  loc_BAC42B: LitVar_Missing var_124
  loc_BAC42E: LitI2_Byte 0
  loc_BAC430: FLdZeroAd var_C8
  loc_BAC433: CVarAd
  loc_BAC437: PopAdLdVar
  loc_BAC438: FLdPr Me
  loc_BAC43B: MemLdI2 global_90
  loc_BAC43E: CI4UI1
  loc_BAC43F: FLdPr Me
  loc_BAC442: MemLdI2 global_88
  loc_BAC445: CI4UI1
  loc_BAC446: FLdPr Me
  loc_BAC449: MemLdStr global_84
  loc_BAC44C: AryLock
  loc_BAC44F: Ary1LdPr
  loc_BAC450: MemLdStr global_20
  loc_BAC453: AryLock
  loc_BAC456: Ary1LdPr
  loc_BAC457: MemLdRfVar from_stack_1.global_28
  loc_BAC45A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAC45F: AryUnlock
  loc_BAC462: AryUnlock
  loc_BAC465: FFreeAd var_B8 = ""
  loc_BAC46C: FFreeVar var_114 = ""
  loc_BAC473: FLdRfVar var_C8
  loc_BAC476: LitVarStr var_A4, "FechCaja"
  loc_BAC47B: PopAdLdVar
  loc_BAC47C: FLdRfVar var_C0
  loc_BAC47F: FLdRfVar var_B8
  loc_BAC482: FLdPr var_190
  loc_BAC485: from_stack_1v = clsbase.RsFrmGet()
  loc_BAC48A: FLdPr var_B8
  loc_BAC48D:  = Me.Fields
  loc_BAC492: FLdPr var_C0
  loc_BAC495: from_stack_2 = Me.Item(from_stack_1)
  loc_BAC49A: LitI2_Byte 0
  loc_BAC49C: LitVar_Missing var_124
  loc_BAC49F: LitI2_Byte 0
  loc_BAC4A1: FLdZeroAd var_C8
  loc_BAC4A4: CVarAd
  loc_BAC4A8: PopAdLdVar
  loc_BAC4A9: FLdPr Me
  loc_BAC4AC: MemLdI2 global_90
  loc_BAC4AF: CI4UI1
  loc_BAC4B0: FLdPr Me
  loc_BAC4B3: MemLdI2 global_88
  loc_BAC4B6: CI4UI1
  loc_BAC4B7: FLdPr Me
  loc_BAC4BA: MemLdStr global_84
  loc_BAC4BD: AryLock
  loc_BAC4C0: Ary1LdPr
  loc_BAC4C1: MemLdStr global_20
  loc_BAC4C4: AryLock
  loc_BAC4C7: Ary1LdPr
  loc_BAC4C8: MemLdRfVar from_stack_1.global_32
  loc_BAC4CB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAC4D0: AryUnlock
  loc_BAC4D3: AryUnlock
  loc_BAC4D6: FFreeAd var_B8 = ""
  loc_BAC4DD: FFreeVar var_114 = ""
  loc_BAC4E4: FLdRfVar var_C8
  loc_BAC4E7: LitVarStr var_A4, "FepaLine"
  loc_BAC4EC: PopAdLdVar
  loc_BAC4ED: FLdRfVar var_C0
  loc_BAC4F0: FLdRfVar var_B8
  loc_BAC4F3: FLdPr var_190
  loc_BAC4F6: from_stack_1v = clsbase.RsFrmGet()
  loc_BAC4FB: FLdPr var_B8
  loc_BAC4FE:  = Me.Fields
  loc_BAC503: FLdPr var_C0
  loc_BAC506: from_stack_2 = Me.Item(from_stack_1)
  loc_BAC50B: LitI2_Byte 0
  loc_BAC50D: LitVar_Missing var_124
  loc_BAC510: LitI2_Byte 0
  loc_BAC512: FLdZeroAd var_C8
  loc_BAC515: CVarAd
  loc_BAC519: PopAdLdVar
  loc_BAC51A: FLdPr Me
  loc_BAC51D: MemLdI2 global_90
  loc_BAC520: CI4UI1
  loc_BAC521: FLdPr Me
  loc_BAC524: MemLdI2 global_88
  loc_BAC527: CI4UI1
  loc_BAC528: FLdPr Me
  loc_BAC52B: MemLdStr global_84
  loc_BAC52E: AryLock
  loc_BAC531: Ary1LdPr
  loc_BAC532: MemLdStr global_20
  loc_BAC535: AryLock
  loc_BAC538: Ary1LdPr
  loc_BAC539: MemLdRfVar from_stack_1.global_36
  loc_BAC53C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAC541: AryUnlock
  loc_BAC544: AryUnlock
  loc_BAC547: FFreeAd var_B8 = ""
  loc_BAC54E: FFreeVar var_114 = ""
  loc_BAC555: FLdRfVar var_C8
  loc_BAC558: LitVarStr var_A4, "ImpoLine"
  loc_BAC55D: PopAdLdVar
  loc_BAC55E: FLdRfVar var_C0
  loc_BAC561: FLdRfVar var_B8
  loc_BAC564: FLdPr var_190
  loc_BAC567: from_stack_1v = clsbase.RsFrmGet()
  loc_BAC56C: FLdPr var_B8
  loc_BAC56F:  = Me.Fields
  loc_BAC574: FLdPr var_C0
  loc_BAC577: from_stack_2 = Me.Item(from_stack_1)
  loc_BAC57C: LitI2_Byte 0
  loc_BAC57E: FLdPr Me
  loc_BAC581: MemLdI2 global_88
  loc_BAC584: CI4UI1
  loc_BAC585: FLdPr Me
  loc_BAC588: MemLdStr global_84
  loc_BAC58B: AryLock
  loc_BAC58E: Ary1LdPr
  loc_BAC58F: MemLdRfVar from_stack_1.global_8
  loc_BAC592: CVarRef
  loc_BAC597: LitI2_Byte &HFF
  loc_BAC599: FLdZeroAd var_C8
  loc_BAC59C: CVarAd
  loc_BAC5A0: PopAdLdVar
  loc_BAC5A1: FLdPr Me
  loc_BAC5A4: MemLdI2 global_90
  loc_BAC5A7: CI4UI1
  loc_BAC5A8: FLdPr Me
  loc_BAC5AB: MemLdI2 global_88
  loc_BAC5AE: CI4UI1
  loc_BAC5AF: FLdPr Me
  loc_BAC5B2: MemLdStr global_84
  loc_BAC5B5: AryLock
  loc_BAC5B8: Ary1LdPr
  loc_BAC5B9: MemLdStr global_20
  loc_BAC5BC: AryLock
  loc_BAC5BF: Ary1LdPr
  loc_BAC5C0: MemLdRfVar from_stack_1.global_40
  loc_BAC5C3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAC5C8: AryUnlock
  loc_BAC5CB: AryUnlock
  loc_BAC5CE: AryUnlock
  loc_BAC5D1: FFreeAd var_B8 = ""
  loc_BAC5D8: FFree1Var var_114 = ""
  loc_BAC5DB: FLdRfVar var_C8
  loc_BAC5DE: LitVarStr var_A4, "ImpoConc"
  loc_BAC5E3: PopAdLdVar
  loc_BAC5E4: FLdRfVar var_C0
  loc_BAC5E7: FLdRfVar var_B8
  loc_BAC5EA: FLdPr var_190
  loc_BAC5ED: from_stack_1v = clsbase.RsFrmGet()
  loc_BAC5F2: FLdPr var_B8
  loc_BAC5F5:  = Me.Fields
  loc_BAC5FA: FLdPr var_C0
  loc_BAC5FD: from_stack_2 = Me.Item(from_stack_1)
  loc_BAC602: LitI2_Byte 0
  loc_BAC604: FLdPr Me
  loc_BAC607: MemLdI2 global_88
  loc_BAC60A: CI4UI1
  loc_BAC60B: FLdPr Me
  loc_BAC60E: MemLdStr global_84
  loc_BAC611: AryLock
  loc_BAC614: Ary1LdPr
  loc_BAC615: MemLdRfVar from_stack_1.global_12
  loc_BAC618: CVarRef
  loc_BAC61D: LitI2_Byte &HFF
  loc_BAC61F: FLdZeroAd var_C8
  loc_BAC622: CVarAd
  loc_BAC626: PopAdLdVar
  loc_BAC627: FLdPr Me
  loc_BAC62A: MemLdI2 global_90
  loc_BAC62D: CI4UI1
  loc_BAC62E: FLdPr Me
  loc_BAC631: MemLdI2 global_88
  loc_BAC634: CI4UI1
  loc_BAC635: FLdPr Me
  loc_BAC638: MemLdStr global_84
  loc_BAC63B: AryLock
  loc_BAC63E: Ary1LdPr
  loc_BAC63F: MemLdStr global_20
  loc_BAC642: AryLock
  loc_BAC645: Ary1LdPr
  loc_BAC646: MemLdRfVar from_stack_1.global_44
  loc_BAC649: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAC64E: AryUnlock
  loc_BAC651: AryUnlock
  loc_BAC654: AryUnlock
  loc_BAC657: FFreeAd var_B8 = ""
  loc_BAC65E: FFree1Var var_114 = ""
  loc_BAC661: FLdPr var_190
  loc_BAC664: Call clsbase.MoveSiguiente()
  loc_BAC669: FLdPr Me
  loc_BAC66C: MemLdRfVar from_stack_1.global_90
  loc_BAC66F: NextI2 var_1D4, loc_BAC020
  loc_BAC674: FLdPr Me
  loc_BAC677: MemLdRfVar from_stack_1.global_88
  loc_BAC67A: NextI2 var_19C, loc_BABE1E
  loc_BAC67F: LitNothing
  loc_BAC681: FStAd var_190 
  loc_BAC685: LitI2_Byte 1
  loc_BAC687: FLdPr Me
  loc_BAC68A: MemLdRfVar from_stack_1.global_88
  loc_BAC68D: FLdPr Me
  loc_BAC690: MemLdStr global_84
  loc_BAC693: LitI2_Byte 1
  loc_BAC695: FnUBound
  loc_BAC697: CI2I4
  loc_BAC698: ForI2 var_1E0
  loc_BAC69E: LitI2_Byte 0
  loc_BAC6A0: FLdPr Me
  loc_BAC6A3: MemLdRfVar from_stack_1.global_96
  loc_BAC6A6: CVarRef
  loc_BAC6AB: LitI2_Byte &HFF
  loc_BAC6AD: FLdPr Me
  loc_BAC6B0: MemLdI2 global_88
  loc_BAC6B3: CI4UI1
  loc_BAC6B4: FLdPr Me
  loc_BAC6B7: MemLdStr global_84
  loc_BAC6BA: Ary1LdPr
  loc_BAC6BB: MemLdStr global_8
  loc_BAC6BE: CVarStr var_A4
  loc_BAC6C1: PopAdLdVar
  loc_BAC6C2: FLdPr Me
  loc_BAC6C5: MemLdRfVar from_stack_1.global_92
  loc_BAC6C8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAC6CD: LitI2_Byte 0
  loc_BAC6CF: FLdPr Me
  loc_BAC6D2: MemLdRfVar from_stack_1.global_100
  loc_BAC6D5: CVarRef
  loc_BAC6DA: LitI2_Byte &HFF
  loc_BAC6DC: FLdPr Me
  loc_BAC6DF: MemLdI2 global_88
  loc_BAC6E2: CI4UI1
  loc_BAC6E3: FLdPr Me
  loc_BAC6E6: MemLdStr global_84
  loc_BAC6E9: Ary1LdPr
  loc_BAC6EA: MemLdStr global_12
  loc_BAC6ED: CVarStr var_A4
  loc_BAC6F0: PopAdLdVar
  loc_BAC6F1: FLdPr Me
  loc_BAC6F4: MemLdRfVar from_stack_1.global_92
  loc_BAC6F7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAC6FC: FLdPr Me
  loc_BAC6FF: MemLdRfVar from_stack_1.global_88
  loc_BAC702: NextI2 var_1E0, loc_BAC69E
  loc_BAC707: LitI2_Byte 1
  loc_BAC709: FLdPr Me
  loc_BAC70C: MemLdRfVar from_stack_1.global_88
  loc_BAC70F: FLdPr Me
  loc_BAC712: MemLdStr global_84
  loc_BAC715: LitI2_Byte 1
  loc_BAC717: FnUBound
  loc_BAC719: CI2I4
  loc_BAC71A: ForI2 var_1E4
  loc_BAC720: FLdPr Me
  loc_BAC723: MemLdI2 global_88
  loc_BAC726: CI4UI1
  loc_BAC727: FLdPr Me
  loc_BAC72A: MemLdStr global_84
  loc_BAC72D: Ary1LdPr
  loc_BAC72E: MemLdStr global_20
  loc_BAC731: LitI2_Byte 1
  loc_BAC733: FnUBound
  loc_BAC735: LitI4 1
  loc_BAC73A: AddI4
  loc_BAC73B: CStrI4
  loc_BAC73D: FStStrNoPop var_BC
  loc_BAC740: FLdPr Me
  loc_BAC743: MemLdI2 global_88
  loc_BAC746: CI4UI1
  loc_BAC747: FLdPr Me
  loc_BAC74A: MemLdStr global_84
  loc_BAC74D: Ary1LdPr
  loc_BAC74E: MemStStrCopy
  loc_BAC752: FFree1Str var_BC
  loc_BAC755: FLdPr Me
  loc_BAC758: MemLdRfVar from_stack_1.global_88
  loc_BAC75B: NextI2 var_1E4, loc_BAC720
  loc_BAC760: LitI2_Byte &HFF
  loc_BAC762: FLdPr Me
  loc_BAC765: MemStI2 bGenerado
  loc_BAC768: LitI4 0
  loc_BAC76D: CI2I4
  loc_BAC76E: FLdPr Me
  loc_BAC771: Me.MousePointer = from_stack_1
  loc_BAC776: LitVarStr var_A4, vbNullString
  loc_BAC77B: PopAdLdVar
  loc_BAC77C: FLdPr Me
  loc_BAC77F: VCallAd Control_ID_statusBar
  loc_BAC782: FStAdFunc var_B8
  loc_BAC785: FLdPr var_B8
  loc_BAC788: LateIdSt
  loc_BAC78D: FFree1Ad var_B8
  loc_BAC790: ExitProcHresult
  loc_BAC791: LitI4 0
  loc_BAC796: LitStr "Error "
  loc_BAC799: FLdRfVar var_C4
  loc_BAC79C: ImpAdCallI2 Err 'rtcErrObj
  loc_BAC7A1: FStAdFunc var_B8
  loc_BAC7A4: FLdPr var_B8
  loc_BAC7A7:  = Err.Number
  loc_BAC7AC: ILdRf var_C4
  loc_BAC7AF: CStrI4
  loc_BAC7B1: FStStrNoPop var_BC
  loc_BAC7B4: ConcatStr
  loc_BAC7B5: FStStrNoPop var_E8
  loc_BAC7B8: LitStr ": "
  loc_BAC7BB: ConcatStr
  loc_BAC7BC: FStStrNoPop var_100
  loc_BAC7BF: FLdRfVar var_EC
  loc_BAC7C2: ImpAdCallI2 Err 'rtcErrObj
  loc_BAC7C7: FStAdFunc var_C0
  loc_BAC7CA: FLdPr var_C0
  loc_BAC7CD:  = Err.Description
  loc_BAC7D2: ILdRf var_EC
  loc_BAC7D5: ConcatStr
  loc_BAC7D6: FStStrNoPop var_104
  loc_BAC7D9: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BAC7DE: FFreeStr var_BC = "": var_E8 = "": var_100 = "": var_EC = ""
  loc_BAC7EB: FFreeAd var_B8 = ""
  loc_BAC7F2: ExitProcHresult
  loc_BAC7F3: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AE197C
  'Data Table: 4BCD04
  loc_AE12B4: FLdRfVar var_88
  loc_AE12B7: LitI2_Byte 0
  loc_AE12B9: LitI2_Byte &HFF
  loc_AE12BB: ImpAdLdI4 MemVar_C3D83C
  loc_AE12BE: FLdPr Me
  loc_AE12C1: MemLdRfVar from_stack_1.global_80
  loc_AE12C4: NewIfNullPr IFileSystem3
  loc_AE12C7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AE12CC: ILdRf var_88
  loc_AE12CF: FLdPr Me
  loc_AE12D2: MemStVarAd
  loc_AE12D6: FFree1Ad var_88
  loc_AE12D9: Call Proc_170_31_AD42A4()
  loc_AE12DE: LitI2_Byte 1
  loc_AE12E0: FLdPr Me
  loc_AE12E3: MemLdRfVar from_stack_1.global_88
  loc_AE12E6: FLdPr Me
  loc_AE12E9: MemLdStr global_84
  loc_AE12EC: LitI2_Byte 1
  loc_AE12EE: FnUBound
  loc_AE12F0: CI2I4
  loc_AE12F1: ForI2 var_8C
  loc_AE12F7: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE12FC: PopAdLdVar
  loc_AE12FD: FLdPr Me
  loc_AE1300: MemLdRfVar from_stack_1.htmFile
  loc_AE1303: LdPrVar
  loc_AE1305: LateMemCall
  loc_AE130B: LitVarStr var_9C, "<td rowspan="
  loc_AE1310: LitI4 &H22
  loc_AE1315: FLdRfVar var_BC
  loc_AE1318: ImpAdCallFPR4  = Chr()
  loc_AE131D: FLdRfVar var_BC
  loc_AE1320: ConcatVar var_CC
  loc_AE1324: FLdPr Me
  loc_AE1327: MemLdI2 global_88
  loc_AE132A: CI4UI1
  loc_AE132B: FLdPr Me
  loc_AE132E: MemLdStr global_84
  loc_AE1331: Ary1LdPr
  loc_AE1332: MemLdStr global_16
  loc_AE1335: CVarStr var_AC
  loc_AE1338: ConcatVar var_DC
  loc_AE133C: LitI4 &H22
  loc_AE1341: FLdRfVar var_EC
  loc_AE1344: ImpAdCallFPR4  = Chr()
  loc_AE1349: FLdRfVar var_EC
  loc_AE134C: ConcatVar var_FC
  loc_AE1350: LitVarStr var_10C, " align=""left"" valign=""top"" class=""LineaDato"">"
  loc_AE1355: ConcatVar var_11C
  loc_AE1359: FLdPr Me
  loc_AE135C: MemLdI2 global_88
  loc_AE135F: CI4UI1
  loc_AE1360: FLdPr Me
  loc_AE1363: MemLdStr global_84
  loc_AE1366: Ary1LdPr
  loc_AE1367: MemLdStr global_0
  loc_AE136A: CVarStr var_12C
  loc_AE136D: ConcatVar var_13C
  loc_AE1371: LitVarStr var_14C, "&nbsp;-&nbsp;"
  loc_AE1376: ConcatVar var_15C
  loc_AE137A: FLdPr Me
  loc_AE137D: MemLdI2 global_88
  loc_AE1380: CI4UI1
  loc_AE1381: FLdPr Me
  loc_AE1384: MemLdStr global_84
  loc_AE1387: Ary1LdPr
  loc_AE1388: MemLdStr global_4
  loc_AE138B: CVarStr var_16C
  loc_AE138E: ConcatVar var_17C
  loc_AE1392: LitVarStr var_18C, "</th>"
  loc_AE1397: ConcatVar var_19C
  loc_AE139B: PopAdLdVar
  loc_AE139C: FLdPr Me
  loc_AE139F: MemLdRfVar from_stack_1.htmFile
  loc_AE13A2: LdPrVar
  loc_AE13A4: LateMemCall
  loc_AE13AA: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_EC = "": var_FC = "": var_11C = "": var_13C = "": var_15C = "": var_17C = ""
  loc_AE13C1: LitI2_Byte 1
  loc_AE13C3: FLdPr Me
  loc_AE13C6: MemLdRfVar from_stack_1.global_90
  loc_AE13C9: FLdPr Me
  loc_AE13CC: MemLdI2 global_88
  loc_AE13CF: CI4UI1
  loc_AE13D0: FLdPr Me
  loc_AE13D3: MemLdStr global_84
  loc_AE13D6: Ary1LdPr
  loc_AE13D7: MemLdStr global_20
  loc_AE13DA: LitI2_Byte 1
  loc_AE13DC: FnUBound
  loc_AE13DE: CI2I4
  loc_AE13DF: ForI2 var_1B0
  loc_AE13E5: FLdPr Me
  loc_AE13E8: MemLdI2 global_90
  loc_AE13EB: LitI2_Byte 1
  loc_AE13ED: GtI2
  loc_AE13EE: BranchF loc_AE1405
  loc_AE13F1: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE13F6: PopAdLdVar
  loc_AE13F7: FLdPr Me
  loc_AE13FA: MemLdRfVar from_stack_1.htmFile
  loc_AE13FD: LdPrVar
  loc_AE13FF: LateMemCall
  loc_AE1405: LitVarStr var_AC, vbNullString
  loc_AE140A: FStVarCopyObj var_CC
  loc_AE140D: FLdRfVar var_CC
  loc_AE1410: LitStr "<br>"
  loc_AE1413: FLdPr Me
  loc_AE1416: MemLdI2 global_90
  loc_AE1419: CI4UI1
  loc_AE141A: FLdPr Me
  loc_AE141D: MemLdI2 global_88
  loc_AE1420: CI4UI1
  loc_AE1421: FLdPr Me
  loc_AE1424: MemLdStr global_84
  loc_AE1427: Ary1LdPr
  loc_AE1428: MemLdStr global_20
  loc_AE142B: Ary1LdPr
  loc_AE142C: MemLdStr global_8
  loc_AE142F: ConcatStr
  loc_AE1430: CVarStr var_BC
  loc_AE1433: FLdPr Me
  loc_AE1436: MemLdI2 global_90
  loc_AE1439: CI4UI1
  loc_AE143A: FLdPr Me
  loc_AE143D: MemLdI2 global_88
  loc_AE1440: CI4UI1
  loc_AE1441: FLdPr Me
  loc_AE1444: MemLdStr global_84
  loc_AE1447: Ary1LdPr
  loc_AE1448: MemLdStr global_20
  loc_AE144B: Ary1LdPr
  loc_AE144C: MemLdStr global_0
  loc_AE144F: FLdPr Me
  loc_AE1452: MemLdI2 global_90
  loc_AE1455: CI4UI1
  loc_AE1456: FLdPr Me
  loc_AE1459: MemLdI2 global_88
  loc_AE145C: CI4UI1
  loc_AE145D: FLdPr Me
  loc_AE1460: MemLdStr global_84
  loc_AE1463: Ary1LdPr
  loc_AE1464: MemLdStr global_20
  loc_AE1467: Ary1LdPr
  loc_AE1468: MemLdStr global_8
  loc_AE146B: NeStr
  loc_AE146D: CVarBoolI2 var_9C
  loc_AE1471: FLdRfVar var_DC
  loc_AE1474: ImpAdCallFPR4  = IIf(, , )
  loc_AE1479: LitI4 0
  loc_AE147E: LitI4 0
  loc_AE1483: LitI2_Byte 0
  loc_AE1485: LitStr "left"
  loc_AE1488: LitStr "<pre>"
  loc_AE148B: FLdPr Me
  loc_AE148E: MemLdI2 global_90
  loc_AE1491: CI4UI1
  loc_AE1492: FLdPr Me
  loc_AE1495: MemLdI2 global_88
  loc_AE1498: CI4UI1
  loc_AE1499: FLdPr Me
  loc_AE149C: MemLdStr global_84
  loc_AE149F: Ary1LdPr
  loc_AE14A0: MemLdStr global_20
  loc_AE14A3: Ary1LdPr
  loc_AE14A4: MemLdStr global_0
  loc_AE14A7: ConcatStr
  loc_AE14A8: CVarStr var_EC
  loc_AE14AB: FLdRfVar var_DC
  loc_AE14AE: ConcatVar var_FC
  loc_AE14B2: LitVarStr var_10C, "</pre>"
  loc_AE14B7: ConcatVar var_11C
  loc_AE14BB: CStrVarVal var_1B4
  loc_AE14BF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE14C4: CVarStr var_13C
  loc_AE14C7: PopAdLdVar
  loc_AE14C8: FLdPr Me
  loc_AE14CB: MemLdRfVar from_stack_1.htmFile
  loc_AE14CE: LdPrVar
  loc_AE14D0: LateMemCall
  loc_AE14D6: FFree1Str var_1B4
  loc_AE14D9: FFreeVar var_9C = "": var_BC = "": var_CC = "": var_EC = "": var_DC = "": var_FC = "": var_11C = ""
  loc_AE14EC: LitI4 0
  loc_AE14F1: LitI4 0
  loc_AE14F6: LitI2_Byte 0
  loc_AE14F8: LitStr "left"
  loc_AE14FB: FLdPr Me
  loc_AE14FE: MemLdI2 global_90
  loc_AE1501: CI4UI1
  loc_AE1502: FLdPr Me
  loc_AE1505: MemLdI2 global_88
  loc_AE1508: CI4UI1
  loc_AE1509: FLdPr Me
  loc_AE150C: MemLdStr global_84
  loc_AE150F: Ary1LdPr
  loc_AE1510: MemLdStr global_20
  loc_AE1513: Ary1LdPr
  loc_AE1514: MemLdStr global_4
  loc_AE1517: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE151C: CVarStr var_BC
  loc_AE151F: PopAdLdVar
  loc_AE1520: FLdPr Me
  loc_AE1523: MemLdRfVar from_stack_1.htmFile
  loc_AE1526: LdPrVar
  loc_AE1528: LateMemCall
  loc_AE152E: FFree1Var var_BC = ""
  loc_AE1531: LitI4 0
  loc_AE1536: LitI4 0
  loc_AE153B: LitI2_Byte 0
  loc_AE153D: LitStr "left"
  loc_AE1540: FLdPr Me
  loc_AE1543: MemLdI2 global_90
  loc_AE1546: CI4UI1
  loc_AE1547: FLdPr Me
  loc_AE154A: MemLdI2 global_88
  loc_AE154D: CI4UI1
  loc_AE154E: FLdPr Me
  loc_AE1551: MemLdStr global_84
  loc_AE1554: Ary1LdPr
  loc_AE1555: MemLdStr global_20
  loc_AE1558: Ary1LdPr
  loc_AE1559: MemLdStr global_12
  loc_AE155C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE1561: CVarStr var_BC
  loc_AE1564: PopAdLdVar
  loc_AE1565: FLdPr Me
  loc_AE1568: MemLdRfVar from_stack_1.htmFile
  loc_AE156B: LdPrVar
  loc_AE156D: LateMemCall
  loc_AE1573: FFree1Var var_BC = ""
  loc_AE1576: LitI4 0
  loc_AE157B: LitI4 0
  loc_AE1580: LitI2_Byte 0
  loc_AE1582: LitStr "left"
  loc_AE1585: FLdPr Me
  loc_AE1588: MemLdI2 global_90
  loc_AE158B: CI4UI1
  loc_AE158C: FLdPr Me
  loc_AE158F: MemLdI2 global_88
  loc_AE1592: CI4UI1
  loc_AE1593: FLdPr Me
  loc_AE1596: MemLdStr global_84
  loc_AE1599: Ary1LdPr
  loc_AE159A: MemLdStr global_20
  loc_AE159D: Ary1LdPr
  loc_AE159E: MemLdStr global_16
  loc_AE15A1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE15A6: CVarStr var_BC
  loc_AE15A9: PopAdLdVar
  loc_AE15AA: FLdPr Me
  loc_AE15AD: MemLdRfVar from_stack_1.htmFile
  loc_AE15B0: LdPrVar
  loc_AE15B2: LateMemCall
  loc_AE15B8: FFree1Var var_BC = ""
  loc_AE15BB: LitI4 0
  loc_AE15C0: LitI4 0
  loc_AE15C5: LitI2_Byte 0
  loc_AE15C7: LitStr "left"
  loc_AE15CA: FLdPr Me
  loc_AE15CD: MemLdI2 global_90
  loc_AE15D0: CI4UI1
  loc_AE15D1: FLdPr Me
  loc_AE15D4: MemLdI2 global_88
  loc_AE15D7: CI4UI1
  loc_AE15D8: FLdPr Me
  loc_AE15DB: MemLdStr global_84
  loc_AE15DE: Ary1LdPr
  loc_AE15DF: MemLdStr global_20
  loc_AE15E2: Ary1LdPr
  loc_AE15E3: MemLdStr global_20
  loc_AE15E6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE15EB: CVarStr var_BC
  loc_AE15EE: PopAdLdVar
  loc_AE15EF: FLdPr Me
  loc_AE15F2: MemLdRfVar from_stack_1.htmFile
  loc_AE15F5: LdPrVar
  loc_AE15F7: LateMemCall
  loc_AE15FD: FFree1Var var_BC = ""
  loc_AE1600: FLdRfVar var_1B6
  loc_AE1603: FLdPr Me
  loc_AE1606: VCallAd Control_ID_OptionLiquidacion
  loc_AE1609: FStAdFunc var_88
  loc_AE160C: FLdPr var_88
  loc_AE160F:  = Me.Value
  loc_AE1614: FLdI2 var_1B6
  loc_AE1617: LitI2_Byte &HFF
  loc_AE1619: EqI2
  loc_AE161A: FFree1Ad var_88
  loc_AE161D: BranchF loc_AE1668
  loc_AE1620: LitI4 0
  loc_AE1625: LitI4 0
  loc_AE162A: LitI2_Byte 0
  loc_AE162C: LitStr "right"
  loc_AE162F: FLdPr Me
  loc_AE1632: MemLdI2 global_90
  loc_AE1635: CI4UI1
  loc_AE1636: FLdPr Me
  loc_AE1639: MemLdI2 global_88
  loc_AE163C: CI4UI1
  loc_AE163D: FLdPr Me
  loc_AE1640: MemLdStr global_84
  loc_AE1643: Ary1LdPr
  loc_AE1644: MemLdStr global_20
  loc_AE1647: Ary1LdPr
  loc_AE1648: MemLdStr global_28
  loc_AE164B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE1650: CVarStr var_BC
  loc_AE1653: PopAdLdVar
  loc_AE1654: FLdPr Me
  loc_AE1657: MemLdRfVar from_stack_1.htmFile
  loc_AE165A: LdPrVar
  loc_AE165C: LateMemCall
  loc_AE1662: FFree1Var var_BC = ""
  loc_AE1665: Branch loc_AE1735
  loc_AE1668: FLdRfVar var_1B6
  loc_AE166B: FLdPr Me
  loc_AE166E: VCallAd Control_ID_OptionPago
  loc_AE1671: FStAdFunc var_88
  loc_AE1674: FLdPr var_88
  loc_AE1677:  = Me.Value
  loc_AE167C: FLdI2 var_1B6
  loc_AE167F: LitI2_Byte &HFF
  loc_AE1681: EqI2
  loc_AE1682: FFree1Ad var_88
  loc_AE1685: BranchF loc_AE16D0
  loc_AE1688: LitI4 0
  loc_AE168D: LitI4 0
  loc_AE1692: LitI2_Byte 0
  loc_AE1694: LitStr "right"
  loc_AE1697: FLdPr Me
  loc_AE169A: MemLdI2 global_90
  loc_AE169D: CI4UI1
  loc_AE169E: FLdPr Me
  loc_AE16A1: MemLdI2 global_88
  loc_AE16A4: CI4UI1
  loc_AE16A5: FLdPr Me
  loc_AE16A8: MemLdStr global_84
  loc_AE16AB: Ary1LdPr
  loc_AE16AC: MemLdStr global_20
  loc_AE16AF: Ary1LdPr
  loc_AE16B0: MemLdStr global_32
  loc_AE16B3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE16B8: CVarStr var_BC
  loc_AE16BB: PopAdLdVar
  loc_AE16BC: FLdPr Me
  loc_AE16BF: MemLdRfVar from_stack_1.htmFile
  loc_AE16C2: LdPrVar
  loc_AE16C4: LateMemCall
  loc_AE16CA: FFree1Var var_BC = ""
  loc_AE16CD: Branch loc_AE1735
  loc_AE16D0: FLdRfVar var_1B6
  loc_AE16D3: FLdPr Me
  loc_AE16D6: VCallAd Control_ID_OptionFepaLine
  loc_AE16D9: FStAdFunc var_88
  loc_AE16DC: FLdPr var_88
  loc_AE16DF:  = Me.Value
  loc_AE16E4: FLdI2 var_1B6
  loc_AE16E7: LitI2_Byte &HFF
  loc_AE16E9: EqI2
  loc_AE16EA: FFree1Ad var_88
  loc_AE16ED: BranchF loc_AE1735
  loc_AE16F0: LitI4 0
  loc_AE16F5: LitI4 0
  loc_AE16FA: LitI2_Byte 0
  loc_AE16FC: LitStr "right"
  loc_AE16FF: FLdPr Me
  loc_AE1702: MemLdI2 global_90
  loc_AE1705: CI4UI1
  loc_AE1706: FLdPr Me
  loc_AE1709: MemLdI2 global_88
  loc_AE170C: CI4UI1
  loc_AE170D: FLdPr Me
  loc_AE1710: MemLdStr global_84
  loc_AE1713: Ary1LdPr
  loc_AE1714: MemLdStr global_20
  loc_AE1717: Ary1LdPr
  loc_AE1718: MemLdStr global_36
  loc_AE171B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE1720: CVarStr var_BC
  loc_AE1723: PopAdLdVar
  loc_AE1724: FLdPr Me
  loc_AE1727: MemLdRfVar from_stack_1.htmFile
  loc_AE172A: LdPrVar
  loc_AE172C: LateMemCall
  loc_AE1732: FFree1Var var_BC = ""
  loc_AE1735: LitI4 0
  loc_AE173A: LitI4 0
  loc_AE173F: LitI2_Byte 0
  loc_AE1741: LitStr "right"
  loc_AE1744: FLdPr Me
  loc_AE1747: MemLdI2 global_90
  loc_AE174A: CI4UI1
  loc_AE174B: FLdPr Me
  loc_AE174E: MemLdI2 global_88
  loc_AE1751: CI4UI1
  loc_AE1752: FLdPr Me
  loc_AE1755: MemLdStr global_84
  loc_AE1758: Ary1LdPr
  loc_AE1759: MemLdStr global_20
  loc_AE175C: Ary1LdPr
  loc_AE175D: MemLdStr global_40
  loc_AE1760: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE1765: CVarStr var_BC
  loc_AE1768: PopAdLdVar
  loc_AE1769: FLdPr Me
  loc_AE176C: MemLdRfVar from_stack_1.htmFile
  loc_AE176F: LdPrVar
  loc_AE1771: LateMemCall
  loc_AE1777: FFree1Var var_BC = ""
  loc_AE177A: LitI4 0
  loc_AE177F: LitI4 0
  loc_AE1784: LitI2_Byte 0
  loc_AE1786: LitStr "right"
  loc_AE1789: FLdPr Me
  loc_AE178C: MemLdI2 global_90
  loc_AE178F: CI4UI1
  loc_AE1790: FLdPr Me
  loc_AE1793: MemLdI2 global_88
  loc_AE1796: CI4UI1
  loc_AE1797: FLdPr Me
  loc_AE179A: MemLdStr global_84
  loc_AE179D: Ary1LdPr
  loc_AE179E: MemLdStr global_20
  loc_AE17A1: Ary1LdPr
  loc_AE17A2: MemLdStr global_44
  loc_AE17A5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE17AA: CVarStr var_BC
  loc_AE17AD: PopAdLdVar
  loc_AE17AE: FLdPr Me
  loc_AE17B1: MemLdRfVar from_stack_1.htmFile
  loc_AE17B4: LdPrVar
  loc_AE17B6: LateMemCall
  loc_AE17BC: FFree1Var var_BC = ""
  loc_AE17BF: LitVarStr var_9C, "  </tr>"
  loc_AE17C4: PopAdLdVar
  loc_AE17C5: FLdPr Me
  loc_AE17C8: MemLdRfVar from_stack_1.htmFile
  loc_AE17CB: LdPrVar
  loc_AE17CD: LateMemCall
  loc_AE17D3: FLdPr Me
  loc_AE17D6: MemLdRfVar from_stack_1.global_90
  loc_AE17D9: NextI2 var_1B0, loc_AE13E5
  loc_AE17DE: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE17E3: PopAdLdVar
  loc_AE17E4: FLdPr Me
  loc_AE17E7: MemLdRfVar from_stack_1.htmFile
  loc_AE17EA: LdPrVar
  loc_AE17EC: LateMemCall
  loc_AE17F2: FLdPr Me
  loc_AE17F5: MemLdI2 global_88
  loc_AE17F8: CI4UI1
  loc_AE17F9: FLdPr Me
  loc_AE17FC: MemLdStr global_84
  loc_AE17FF: Ary1LdPr
  loc_AE1800: MemLdStr global_20
  loc_AE1803: LitI2_Byte 1
  loc_AE1805: FnUBound
  loc_AE1807: LitI4 1
  loc_AE180C: GtI4
  loc_AE180D: BranchF loc_AE1878
  loc_AE1810: LitVarStr var_9C, "    <td align=""right"" colspan=""6"" class=""LineaDato"">SUBTOTAL"
  loc_AE1815: PopAdLdVar
  loc_AE1816: FLdPr Me
  loc_AE1819: MemLdRfVar from_stack_1.htmFile
  loc_AE181C: LdPrVar
  loc_AE181E: LateMemCall
  loc_AE1824: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE1827: FLdPr Me
  loc_AE182A: MemLdI2 global_88
  loc_AE182D: CI4UI1
  loc_AE182E: FLdPr Me
  loc_AE1831: MemLdStr global_84
  loc_AE1834: Ary1LdPr
  loc_AE1835: MemLdStr global_8
  loc_AE1838: ConcatStr
  loc_AE1839: CVarStr var_BC
  loc_AE183C: PopAdLdVar
  loc_AE183D: FLdPr Me
  loc_AE1840: MemLdRfVar from_stack_1.htmFile
  loc_AE1843: LdPrVar
  loc_AE1845: LateMemCall
  loc_AE184B: FFree1Var var_BC = ""
  loc_AE184E: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE1851: FLdPr Me
  loc_AE1854: MemLdI2 global_88
  loc_AE1857: CI4UI1
  loc_AE1858: FLdPr Me
  loc_AE185B: MemLdStr global_84
  loc_AE185E: Ary1LdPr
  loc_AE185F: MemLdStr global_12
  loc_AE1862: ConcatStr
  loc_AE1863: CVarStr var_BC
  loc_AE1866: PopAdLdVar
  loc_AE1867: FLdPr Me
  loc_AE186A: MemLdRfVar from_stack_1.htmFile
  loc_AE186D: LdPrVar
  loc_AE186F: LateMemCall
  loc_AE1875: FFree1Var var_BC = ""
  loc_AE1878: LitVarStr var_9C, "  </tr>"
  loc_AE187D: PopAdLdVar
  loc_AE187E: FLdPr Me
  loc_AE1881: MemLdRfVar from_stack_1.htmFile
  loc_AE1884: LdPrVar
  loc_AE1886: LateMemCall
  loc_AE188C: FLdPr Me
  loc_AE188F: MemLdRfVar from_stack_1.global_88
  loc_AE1892: NextI2 var_8C, loc_AE12F7
  loc_AE1897: LitVarStr var_9C, "  <tr class=""LineaDato"">"
  loc_AE189C: PopAdLdVar
  loc_AE189D: FLdPr Me
  loc_AE18A0: MemLdRfVar from_stack_1.htmFile
  loc_AE18A3: LdPrVar
  loc_AE18A5: LateMemCall
  loc_AE18AB: LitVarStr var_9C, "    <td colspan=""9"">&nbsp;</th>"
  loc_AE18B0: PopAdLdVar
  loc_AE18B1: FLdPr Me
  loc_AE18B4: MemLdRfVar from_stack_1.htmFile
  loc_AE18B7: LdPrVar
  loc_AE18B9: LateMemCall
  loc_AE18BF: LitVarStr var_9C, "  </tr>"
  loc_AE18C4: PopAdLdVar
  loc_AE18C5: FLdPr Me
  loc_AE18C8: MemLdRfVar from_stack_1.htmFile
  loc_AE18CB: LdPrVar
  loc_AE18CD: LateMemCall
  loc_AE18D3: LitVarStr var_9C, "  <tr class=""LineaDato"">"
  loc_AE18D8: PopAdLdVar
  loc_AE18D9: FLdPr Me
  loc_AE18DC: MemLdRfVar from_stack_1.htmFile
  loc_AE18DF: LdPrVar
  loc_AE18E1: LateMemCall
  loc_AE18E7: LitVarStr var_9C, "    <td align=""right"" colspan=""7"" class=""LineaDato"">TOTAL</th>"
  loc_AE18EC: PopAdLdVar
  loc_AE18ED: FLdPr Me
  loc_AE18F0: MemLdRfVar from_stack_1.htmFile
  loc_AE18F3: LdPrVar
  loc_AE18F5: LateMemCall
  loc_AE18FB: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE18FE: FLdPr Me
  loc_AE1901: MemLdStr global_96
  loc_AE1904: ConcatStr
  loc_AE1905: FStStrNoPop var_1B4
  loc_AE1908: LitStr "</th>"
  loc_AE190B: ConcatStr
  loc_AE190C: CVarStr var_BC
  loc_AE190F: PopAdLdVar
  loc_AE1910: FLdPr Me
  loc_AE1913: MemLdRfVar from_stack_1.htmFile
  loc_AE1916: LdPrVar
  loc_AE1918: LateMemCall
  loc_AE191E: FFree1Str var_1B4
  loc_AE1921: FFree1Var var_BC = ""
  loc_AE1924: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE1927: FLdPr Me
  loc_AE192A: MemLdStr global_100
  loc_AE192D: ConcatStr
  loc_AE192E: FStStrNoPop var_1B4
  loc_AE1931: LitStr "</th>"
  loc_AE1934: ConcatStr
  loc_AE1935: CVarStr var_BC
  loc_AE1938: PopAdLdVar
  loc_AE1939: FLdPr Me
  loc_AE193C: MemLdRfVar from_stack_1.htmFile
  loc_AE193F: LdPrVar
  loc_AE1941: LateMemCall
  loc_AE1947: FFree1Str var_1B4
  loc_AE194A: FFree1Var var_BC = ""
  loc_AE194D: LitVarStr var_9C, "  </tr>"
  loc_AE1952: PopAdLdVar
  loc_AE1953: FLdPr Me
  loc_AE1956: MemLdRfVar from_stack_1.htmFile
  loc_AE1959: LdPrVar
  loc_AE195B: LateMemCall
  loc_AE1961: Call Proc_170_32_981D60()
  loc_AE1966: FLdPr Me
  loc_AE1969: MemLdRfVar from_stack_1.htmFile
  loc_AE196C: LdPrVar
  loc_AE196E: LateMemCall
  loc_AE1974: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AE1979: ExitProcHresult
  loc_AE197A: ImpAdLdFPR4 MemVar_0
End Sub

Public Sub GeneraXLS() '9708B4
  'Data Table: 4BCD04
  loc_97088C: LitI2_Byte &HFF
  loc_97088E: FLdPr Me
  loc_970891: MemStI2 global_108
  loc_970894: LitI2_Byte 0
  loc_970896: FLdPr Me
  loc_970899: MemStI2 bLogos
  loc_97089C: Call GeneraHTML()
  loc_9708A1: LitI2_Byte &HFF
  loc_9708A3: FLdPr Me
  loc_9708A6: MemStI2 bLogos
  loc_9708A9: LitI2_Byte 0
  loc_9708AB: FLdPr Me
  loc_9708AE: MemStI2 global_108
  loc_9708B1: ExitProcHresult
End Sub

Private Function Proc_170_31_AD42A4() 'AD42A4
  'Data Table: 4BCD04
  loc_AD3C40: LitVarStr var_94, "<html>"
  loc_AD3C45: PopAdLdVar
  loc_AD3C46: FLdPr Me
  loc_AD3C49: MemLdRfVar from_stack_1.htmFile
  loc_AD3C4C: LdPrVar
  loc_AD3C4E: LateMemCall
  loc_AD3C54: LitVarStr var_94, "<head>"
  loc_AD3C59: PopAdLdVar
  loc_AD3C5A: FLdPr Me
  loc_AD3C5D: MemLdRfVar from_stack_1.htmFile
  loc_AD3C60: LdPrVar
  loc_AD3C62: LateMemCall
  loc_AD3C68: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AD3C6D: PopAdLdVar
  loc_AD3C6E: FLdPr Me
  loc_AD3C71: MemLdRfVar from_stack_1.htmFile
  loc_AD3C74: LdPrVar
  loc_AD3C76: LateMemCall
  loc_AD3C7C: LitStr "<title>"
  loc_AD3C7F: FLdRfVar var_A8
  loc_AD3C82: FLdPr Me
  loc_AD3C85:  = Me.Caption
  loc_AD3C8A: ILdRf var_A8
  loc_AD3C8D: ConcatStr
  loc_AD3C8E: FStStrNoPop var_AC
  loc_AD3C91: LitStr "</title>"
  loc_AD3C94: ConcatStr
  loc_AD3C95: CVarStr var_BC
  loc_AD3C98: PopAdLdVar
  loc_AD3C99: FLdPr Me
  loc_AD3C9C: MemLdRfVar from_stack_1.htmFile
  loc_AD3C9F: LdPrVar
  loc_AD3CA1: LateMemCall
  loc_AD3CA7: FFreeStr var_A8 = ""
  loc_AD3CAE: FFree1Var var_BC = ""
  loc_AD3CB1: LitStr vbNullString
  loc_AD3CB4: ILdRf Me
  loc_AD3CB7: CastAd
  loc_AD3CBA: FStAdFunc var_C0
  loc_AD3CBD: FLdRfVar var_C0
  loc_AD3CC0: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_AD3CC5: FFree1Ad var_C0
  loc_AD3CC8: LitI4 0
  loc_AD3CCD: FStStrCopy var_AC
  loc_AD3CD0: FLdRfVar var_AC
  loc_AD3CD3: LitI4 0
  loc_AD3CD8: FStStrCopy var_A8
  loc_AD3CDB: FLdRfVar var_A8
  loc_AD3CDE: LitI2_Byte 0
  loc_AD3CE0: PopTmpLdAd2 var_C2
  loc_AD3CE3: FLdPr Me
  loc_AD3CE6: MemLdRfVar from_stack_1.htmFile
  loc_AD3CE9: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AD3CEE: FFreeStr var_A8 = ""
  loc_AD3CF5: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AD3CFA: PopAdLdVar
  loc_AD3CFB: FLdPr Me
  loc_AD3CFE: MemLdRfVar from_stack_1.htmFile
  loc_AD3D01: LdPrVar
  loc_AD3D03: LateMemCall
  loc_AD3D09: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AD3D0E: PopAdLdVar
  loc_AD3D0F: FLdPr Me
  loc_AD3D12: MemLdRfVar from_stack_1.htmFile
  loc_AD3D15: LdPrVar
  loc_AD3D17: LateMemCall
  loc_AD3D1D: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_AD3D22: PopAdLdVar
  loc_AD3D23: FLdPr Me
  loc_AD3D26: MemLdRfVar from_stack_1.htmFile
  loc_AD3D29: LdPrVar
  loc_AD3D2B: LateMemCall
  loc_AD3D31: FLdPr Me
  loc_AD3D34: MemLdI2 bLogos
  loc_AD3D37: BranchF loc_AD3D4E
  loc_AD3D3A: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_AD3D3F: PopAdLdVar
  loc_AD3D40: FLdPr Me
  loc_AD3D43: MemLdRfVar from_stack_1.htmFile
  loc_AD3D46: LdPrVar
  loc_AD3D48: LateMemCall
  loc_AD3D4E: LitVarStr var_A4, "    <br><br>"
  loc_AD3D53: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AD3D58: FStVarCopyObj var_BC
  loc_AD3D5B: FLdRfVar var_BC
  loc_AD3D5E: FLdRfVar var_D4
  loc_AD3D61: ImpAdCallFPR4  = Ucase()
  loc_AD3D66: FLdRfVar var_D4
  loc_AD3D69: ConcatVar var_E4
  loc_AD3D6D: LitVarStr var_F4, "</p>"
  loc_AD3D72: ConcatVar var_104
  loc_AD3D76: PopAdLdVar
  loc_AD3D77: FLdPr Me
  loc_AD3D7A: MemLdRfVar from_stack_1.htmFile
  loc_AD3D7D: LdPrVar
  loc_AD3D7F: LateMemCall
  loc_AD3D85: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_AD3D90: LitStr "    <p>"
  loc_AD3D93: FLdRfVar var_A8
  loc_AD3D96: FLdPr Me
  loc_AD3D99:  = Me.Caption
  loc_AD3D9E: ILdRf var_A8
  loc_AD3DA1: ConcatStr
  loc_AD3DA2: FStStrNoPop var_AC
  loc_AD3DA5: LitStr "</p></th>"
  loc_AD3DA8: ConcatStr
  loc_AD3DA9: CVarStr var_BC
  loc_AD3DAC: PopAdLdVar
  loc_AD3DAD: FLdPr Me
  loc_AD3DB0: MemLdRfVar from_stack_1.htmFile
  loc_AD3DB3: LdPrVar
  loc_AD3DB5: LateMemCall
  loc_AD3DBB: FFreeStr var_A8 = ""
  loc_AD3DC2: FFree1Var var_BC = ""
  loc_AD3DC5: LitVarStr var_94, "  </tr>"
  loc_AD3DCA: PopAdLdVar
  loc_AD3DCB: FLdPr Me
  loc_AD3DCE: MemLdRfVar from_stack_1.htmFile
  loc_AD3DD1: LdPrVar
  loc_AD3DD3: LateMemCall
  loc_AD3DD9: LitVarStr var_94, "  <tr>"
  loc_AD3DDE: PopAdLdVar
  loc_AD3DDF: FLdPr Me
  loc_AD3DE2: MemLdRfVar from_stack_1.htmFile
  loc_AD3DE5: LdPrVar
  loc_AD3DE7: LateMemCall
  loc_AD3DED: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_AD3DF2: PopAdLdVar
  loc_AD3DF3: FLdPr Me
  loc_AD3DF6: MemLdRfVar from_stack_1.htmFile
  loc_AD3DF9: LdPrVar
  loc_AD3DFB: LateMemCall
  loc_AD3E01: LitVarStr var_94, "  </tr>"
  loc_AD3E06: PopAdLdVar
  loc_AD3E07: FLdPr Me
  loc_AD3E0A: MemLdRfVar from_stack_1.htmFile
  loc_AD3E0D: LdPrVar
  loc_AD3E0F: LateMemCall
  loc_AD3E15: FLdPr Me
  loc_AD3E18: VCallAd Control_ID_mskDesde
  loc_AD3E1B: FStAdFunc var_C0
  loc_AD3E1E: FLdPr var_C0
  loc_AD3E21: LateIdLdVar var_BC DispID_20 0
  loc_AD3E28: CStrVarTmp
  loc_AD3E29: FStStrNoPop var_A8
  loc_AD3E2C: LitStr vbNullString
  loc_AD3E2F: NeStr
  loc_AD3E31: FLdPr Me
  loc_AD3E34: VCallAd Control_ID_mskHasta
  loc_AD3E37: FStAdFunc var_118
  loc_AD3E3A: FLdPr var_118
  loc_AD3E3D: LateIdLdVar var_D4 DispID_20 0
  loc_AD3E44: CStrVarTmp
  loc_AD3E45: FStStrNoPop var_AC
  loc_AD3E48: LitStr vbNullString
  loc_AD3E4B: NeStr
  loc_AD3E4D: OrI4
  loc_AD3E4E: FFreeStr var_A8 = ""
  loc_AD3E55: FFreeAd var_C0 = ""
  loc_AD3E5C: FFreeVar var_BC = ""
  loc_AD3E63: BranchF loc_AD404F
  loc_AD3E66: LitVarStr var_94, "  <tr valign=""top"">"
  loc_AD3E6B: PopAdLdVar
  loc_AD3E6C: FLdPr Me
  loc_AD3E6F: MemLdRfVar from_stack_1.htmFile
  loc_AD3E72: LdPrVar
  loc_AD3E74: LateMemCall
  loc_AD3E7A: FLdRfVar var_C2
  loc_AD3E7D: FLdPr Me
  loc_AD3E80: VCallAd Control_ID_OptionLiquidacion
  loc_AD3E83: FStAdFunc var_C0
  loc_AD3E86: FLdPr var_C0
  loc_AD3E89:  = Me.Value
  loc_AD3E8E: LitVarStr var_114, "    <th align=""left"">Fecha de "
  loc_AD3E93: LitVarStr var_F4, "Pago"
  loc_AD3E98: FStVarCopyObj var_D4
  loc_AD3E9B: FLdRfVar var_D4
  loc_AD3E9E: LitVarStr var_A4, "Liquidación"
  loc_AD3EA3: FStVarCopyObj var_BC
  loc_AD3EA6: FLdRfVar var_BC
  loc_AD3EA9: FLdI2 var_C2
  loc_AD3EAC: CVarBoolI2 var_94
  loc_AD3EB0: FLdRfVar var_E4
  loc_AD3EB3: ImpAdCallFPR4  = IIf(, , )
  loc_AD3EB8: FLdRfVar var_E4
  loc_AD3EBB: ConcatVar var_104
  loc_AD3EBF: LitVarStr var_128, "</th>"
  loc_AD3EC4: ConcatVar var_138
  loc_AD3EC8: PopAdLdVar
  loc_AD3EC9: FLdPr Me
  loc_AD3ECC: MemLdRfVar from_stack_1.htmFile
  loc_AD3ECF: LdPrVar
  loc_AD3ED1: LateMemCall
  loc_AD3ED7: FFree1Ad var_C0
  loc_AD3EDA: FFreeVar var_94 = "": var_BC = "": var_D4 = "": var_E4 = "": var_104 = ""
  loc_AD3EE9: FLdPr Me
  loc_AD3EEC: VCallAd Control_ID_mskDesde
  loc_AD3EEF: FStAdFunc var_C0
  loc_AD3EF2: FLdPr var_C0
  loc_AD3EF5: LateIdLdVar var_BC DispID_20 0
  loc_AD3EFC: PopAd
  loc_AD3EFE: FLdPr Me
  loc_AD3F01: VCallAd Control_ID_mskDesde
  loc_AD3F04: FStAdFunc var_118
  loc_AD3F07: FLdPr var_118
  loc_AD3F0A: LateIdLdVar var_D4 DispID_15 0
  loc_AD3F11: PopAd
  loc_AD3F13: LitVarStr var_F4, "    <th align=""center"">"
  loc_AD3F18: LitVarStr var_A4, "&nbsp;"
  loc_AD3F1D: FStVarCopyObj var_104
  loc_AD3F20: FLdRfVar var_104
  loc_AD3F23: LitStr "      Desde: <span class=""Normal"">"
  loc_AD3F26: FLdRfVar var_D4
  loc_AD3F29: CStrVarTmp
  loc_AD3F2A: FStStrNoPop var_AC
  loc_AD3F2D: ConcatStr
  loc_AD3F2E: FStStrNoPop var_14C
  loc_AD3F31: LitStr "</span>"
  loc_AD3F34: ConcatStr
  loc_AD3F35: CVarStr var_E4
  loc_AD3F38: FLdRfVar var_BC
  loc_AD3F3B: CStrVarTmp
  loc_AD3F3C: FStStrNoPop var_A8
  loc_AD3F3F: LitStr vbNullString
  loc_AD3F42: NeStr
  loc_AD3F44: CVarBoolI2 var_94
  loc_AD3F48: FLdRfVar var_138
  loc_AD3F4B: ImpAdCallFPR4  = IIf(, , )
  loc_AD3F50: FLdRfVar var_138
  loc_AD3F53: ConcatVar var_15C
  loc_AD3F57: LitVarStr var_114, "</th>"
  loc_AD3F5C: ConcatVar var_16C
  loc_AD3F60: PopAdLdVar
  loc_AD3F61: FLdPr Me
  loc_AD3F64: MemLdRfVar from_stack_1.htmFile
  loc_AD3F67: LdPrVar
  loc_AD3F69: LateMemCall
  loc_AD3F6F: FFreeStr var_A8 = "": var_AC = ""
  loc_AD3F78: FFreeAd var_C0 = ""
  loc_AD3F7F: FFreeVar var_BC = "": var_D4 = "": var_94 = "": var_E4 = "": var_104 = "": var_138 = "": var_15C = ""
  loc_AD3F92: FLdPr Me
  loc_AD3F95: VCallAd Control_ID_mskDesde
  loc_AD3F98: FStAdFunc var_C0
  loc_AD3F9B: FLdPr var_C0
  loc_AD3F9E: LateIdLdVar var_BC DispID_20 0
  loc_AD3FA5: PopAd
  loc_AD3FA7: FLdPr Me
  loc_AD3FAA: VCallAd Control_ID_mskHasta
  loc_AD3FAD: FStAdFunc var_118
  loc_AD3FB0: FLdPr var_118
  loc_AD3FB3: LateIdLdVar var_D4 DispID_15 0
  loc_AD3FBA: PopAd
  loc_AD3FBC: LitVarStr var_F4, "    <th align=""right"">"
  loc_AD3FC1: LitVarStr var_A4, "&nbsp;"
  loc_AD3FC6: FStVarCopyObj var_104
  loc_AD3FC9: FLdRfVar var_104
  loc_AD3FCC: LitStr "      Hasta: <span class=""Normal"">"
  loc_AD3FCF: FLdRfVar var_D4
  loc_AD3FD2: CStrVarTmp
  loc_AD3FD3: FStStrNoPop var_AC
  loc_AD3FD6: ConcatStr
  loc_AD3FD7: FStStrNoPop var_14C
  loc_AD3FDA: LitStr "</span>"
  loc_AD3FDD: ConcatStr
  loc_AD3FDE: CVarStr var_E4
  loc_AD3FE1: FLdRfVar var_BC
  loc_AD3FE4: CStrVarTmp
  loc_AD3FE5: FStStrNoPop var_A8
  loc_AD3FE8: LitStr vbNullString
  loc_AD3FEB: NeStr
  loc_AD3FED: CVarBoolI2 var_94
  loc_AD3FF1: FLdRfVar var_138
  loc_AD3FF4: ImpAdCallFPR4  = IIf(, , )
  loc_AD3FF9: FLdRfVar var_138
  loc_AD3FFC: ConcatVar var_15C
  loc_AD4000: LitVarStr var_114, "</th>"
  loc_AD4005: ConcatVar var_16C
  loc_AD4009: PopAdLdVar
  loc_AD400A: FLdPr Me
  loc_AD400D: MemLdRfVar from_stack_1.htmFile
  loc_AD4010: LdPrVar
  loc_AD4012: LateMemCall
  loc_AD4018: FFreeStr var_A8 = "": var_AC = ""
  loc_AD4021: FFreeAd var_C0 = ""
  loc_AD4028: FFreeVar var_BC = "": var_D4 = "": var_94 = "": var_E4 = "": var_104 = "": var_138 = "": var_15C = ""
  loc_AD403B: LitVarStr var_94, "  </tr>"
  loc_AD4040: PopAdLdVar
  loc_AD4041: FLdPr Me
  loc_AD4044: MemLdRfVar from_stack_1.htmFile
  loc_AD4047: LdPrVar
  loc_AD4049: LateMemCall
  loc_AD404F: LitVarStr var_94, "  <tr valign=""top"">"
  loc_AD4054: PopAdLdVar
  loc_AD4055: FLdPr Me
  loc_AD4058: MemLdRfVar from_stack_1.htmFile
  loc_AD405B: LdPrVar
  loc_AD405D: LateMemCall
  loc_AD4063: LitVarStr var_94, "    <th colspan=""3"" align=""left"">"
  loc_AD4068: PopAdLdVar
  loc_AD4069: FLdPr Me
  loc_AD406C: MemLdRfVar from_stack_1.htmFile
  loc_AD406F: LdPrVar
  loc_AD4071: LateMemCall
  loc_AD4077: FLdPr Me
  loc_AD407A: MemLdStr global_84
  loc_AD407D: LitI2_Byte 1
  loc_AD407F: FnUBound
  loc_AD4081: LitI4 1
  loc_AD4086: EqI4
  loc_AD4087: BranchF loc_AD40DF
  loc_AD408A: LitStr "      Proveedor: <span class=""Normal"">"
  loc_AD408D: LitI4 1
  loc_AD4092: FLdPr Me
  loc_AD4095: MemLdStr global_84
  loc_AD4098: Ary1LdPr
  loc_AD4099: MemLdStr global_0
  loc_AD409C: ConcatStr
  loc_AD409D: FStStrNoPop var_A8
  loc_AD40A0: LitStr " - "
  loc_AD40A3: ConcatStr
  loc_AD40A4: FStStrNoPop var_AC
  loc_AD40A7: LitI4 1
  loc_AD40AC: FLdPr Me
  loc_AD40AF: MemLdStr global_84
  loc_AD40B2: Ary1LdPr
  loc_AD40B3: MemLdStr global_4
  loc_AD40B6: ConcatStr
  loc_AD40B7: FStStrNoPop var_14C
  loc_AD40BA: LitStr "</span><br>"
  loc_AD40BD: ConcatStr
  loc_AD40BE: CVarStr var_BC
  loc_AD40C1: PopAdLdVar
  loc_AD40C2: FLdPr Me
  loc_AD40C5: MemLdRfVar from_stack_1.htmFile
  loc_AD40C8: LdPrVar
  loc_AD40CA: LateMemCall
  loc_AD40D0: FFreeStr var_A8 = "": var_AC = ""
  loc_AD40D9: FFree1Var var_BC = ""
  loc_AD40DC: Branch loc_AD40F3
  loc_AD40DF: LitVarStr var_94, "      Proveedor: <span class=""Normal"">Todos</span><br>"
  loc_AD40E4: PopAdLdVar
  loc_AD40E5: FLdPr Me
  loc_AD40E8: MemLdRfVar from_stack_1.htmFile
  loc_AD40EB: LdPrVar
  loc_AD40ED: LateMemCall
  loc_AD40F3: LitStr "      Concepto: <span class=""Normal"">"
  loc_AD40F6: FLdRfVar var_A8
  loc_AD40F9: FLdPr Me
  loc_AD40FC: VCallAd Control_ID_cboCodiRete
  loc_AD40FF: FStAdFunc var_C0
  loc_AD4102: FLdPr var_C0
  loc_AD4105:  = Me.Text
  loc_AD410A: ILdRf var_A8
  loc_AD410D: ConcatStr
  loc_AD410E: FStStrNoPop var_AC
  loc_AD4111: LitStr "</span></th>"
  loc_AD4114: ConcatStr
  loc_AD4115: CVarStr var_BC
  loc_AD4118: PopAdLdVar
  loc_AD4119: FLdPr Me
  loc_AD411C: MemLdRfVar from_stack_1.htmFile
  loc_AD411F: LdPrVar
  loc_AD4121: LateMemCall
  loc_AD4127: FFreeStr var_A8 = ""
  loc_AD412E: FFree1Ad var_C0
  loc_AD4131: FFree1Var var_BC = ""
  loc_AD4134: LitVarStr var_94, "  </tr>"
  loc_AD4139: PopAdLdVar
  loc_AD413A: FLdPr Me
  loc_AD413D: MemLdRfVar from_stack_1.htmFile
  loc_AD4140: LdPrVar
  loc_AD4142: LateMemCall
  loc_AD4148: LitVarStr var_94, "</table>"
  loc_AD414D: PopAdLdVar
  loc_AD414E: FLdPr Me
  loc_AD4151: MemLdRfVar from_stack_1.htmFile
  loc_AD4154: LdPrVar
  loc_AD4156: LateMemCall
  loc_AD415C: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AD4161: PopAdLdVar
  loc_AD4162: FLdPr Me
  loc_AD4165: MemLdRfVar from_stack_1.htmFile
  loc_AD4168: LdPrVar
  loc_AD416A: LateMemCall
  loc_AD4170: LitVarStr var_94, "  <THEAD>"
  loc_AD4175: PopAdLdVar
  loc_AD4176: FLdPr Me
  loc_AD4179: MemLdRfVar from_stack_1.htmFile
  loc_AD417C: LdPrVar
  loc_AD417E: LateMemCall
  loc_AD4184: LitVarStr var_94, "  <tr class=""Encabezado"">"
  loc_AD4189: PopAdLdVar
  loc_AD418A: FLdPr Me
  loc_AD418D: MemLdRfVar from_stack_1.htmFile
  loc_AD4190: LdPrVar
  loc_AD4192: LateMemCall
  loc_AD4198: LitVarStr var_94, "    <th align=""center"">Proveedor</th>"
  loc_AD419D: PopAdLdVar
  loc_AD419E: FLdPr Me
  loc_AD41A1: MemLdRfVar from_stack_1.htmFile
  loc_AD41A4: LdPrVar
  loc_AD41A6: LateMemCall
  loc_AD41AC: LitVarStr var_94, "    <th align=""center"">Expediente</th>"
  loc_AD41B1: PopAdLdVar
  loc_AD41B2: FLdPr Me
  loc_AD41B5: MemLdRfVar from_stack_1.htmFile
  loc_AD41B8: LdPrVar
  loc_AD41BA: LateMemCall
  loc_AD41C0: LitVarStr var_94, "    <th align=""center"">Liq.</th>"
  loc_AD41C5: PopAdLdVar
  loc_AD41C6: FLdPr Me
  loc_AD41C9: MemLdRfVar from_stack_1.htmFile
  loc_AD41CC: LdPrVar
  loc_AD41CE: LateMemCall
  loc_AD41D4: LitVarStr var_94, "    <th align=""center"">O.P.</th>"
  loc_AD41D9: PopAdLdVar
  loc_AD41DA: FLdPr Me
  loc_AD41DD: MemLdRfVar from_stack_1.htmFile
  loc_AD41E0: LdPrVar
  loc_AD41E2: LateMemCall
  loc_AD41E8: LitVarStr var_94, "    <th align=""center"">Detalle</th>"
  loc_AD41ED: PopAdLdVar
  loc_AD41EE: FLdPr Me
  loc_AD41F1: MemLdRfVar from_stack_1.htmFile
  loc_AD41F4: LdPrVar
  loc_AD41F6: LateMemCall
  loc_AD41FC: LitVarStr var_94, "    <th align=""center"">Categoría</th>"
  loc_AD4201: PopAdLdVar
  loc_AD4202: FLdPr Me
  loc_AD4205: MemLdRfVar from_stack_1.htmFile
  loc_AD4208: LdPrVar
  loc_AD420A: LateMemCall
  loc_AD4210: LitVarStr var_94, "    <th align=""center"">Fecha</th>"
  loc_AD4215: PopAdLdVar
  loc_AD4216: FLdPr Me
  loc_AD4219: MemLdRfVar from_stack_1.htmFile
  loc_AD421C: LdPrVar
  loc_AD421E: LateMemCall
  loc_AD4224: LitVarStr var_94, "    <th align=""center"">Importe Liquidación</th>"
  loc_AD4229: PopAdLdVar
  loc_AD422A: FLdPr Me
  loc_AD422D: MemLdRfVar from_stack_1.htmFile
  loc_AD4230: LdPrVar
  loc_AD4232: LateMemCall
  loc_AD4238: LitStr "    <th align=""center"">cód. "
  loc_AD423B: FLdRfVar var_A8
  loc_AD423E: FLdPr Me
  loc_AD4241: VCallAd Control_ID_cboCodiRete
  loc_AD4244: FStAdFunc var_C0
  loc_AD4247: FLdPr var_C0
  loc_AD424A:  = Me.Text
  loc_AD424F: ILdRf var_A8
  loc_AD4252: ConcatStr
  loc_AD4253: FStStrNoPop var_AC
  loc_AD4256: LitStr "</th>"
  loc_AD4259: ConcatStr
  loc_AD425A: CVarStr var_BC
  loc_AD425D: PopAdLdVar
  loc_AD425E: FLdPr Me
  loc_AD4261: MemLdRfVar from_stack_1.htmFile
  loc_AD4264: LdPrVar
  loc_AD4266: LateMemCall
  loc_AD426C: FFreeStr var_A8 = ""
  loc_AD4273: FFree1Ad var_C0
  loc_AD4276: FFree1Var var_BC = ""
  loc_AD4279: LitVarStr var_94, "  </tr>"
  loc_AD427E: PopAdLdVar
  loc_AD427F: FLdPr Me
  loc_AD4282: MemLdRfVar from_stack_1.htmFile
  loc_AD4285: LdPrVar
  loc_AD4287: LateMemCall
  loc_AD428D: LitVarStr var_94, "  </THEAD>"
  loc_AD4292: PopAdLdVar
  loc_AD4293: FLdPr Me
  loc_AD4296: MemLdRfVar from_stack_1.htmFile
  loc_AD4299: LdPrVar
  loc_AD429B: LateMemCall
  loc_AD42A1: ExitProcHresult
End Function

Private Function Proc_170_32_981D60() '981D60
  'Data Table: 4BCD04
  loc_981D20: LitVarStr var_94, "</table>"
  loc_981D25: PopAdLdVar
  loc_981D26: FLdPr Me
  loc_981D29: MemLdRfVar from_stack_1.htmFile
  loc_981D2C: LdPrVar
  loc_981D2E: LateMemCall
  loc_981D34: LitVarStr var_94, "</body>"
  loc_981D39: PopAdLdVar
  loc_981D3A: FLdPr Me
  loc_981D3D: MemLdRfVar from_stack_1.htmFile
  loc_981D40: LdPrVar
  loc_981D42: LateMemCall
  loc_981D48: LitVarStr var_94, "</html>"
  loc_981D4D: PopAdLdVar
  loc_981D4E: FLdPr Me
  loc_981D51: MemLdRfVar from_stack_1.htmFile
  loc_981D54: LdPrVar
  loc_981D56: LateMemCall
  loc_981D5C: ExitProcHresult
  loc_981D5D: OrI4
  loc_981D5E: VCallFPR8 unk_4B590D
End Function
