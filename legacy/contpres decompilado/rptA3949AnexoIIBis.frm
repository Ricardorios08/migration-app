VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA3949AnexoIIBis
  Caption = "Acuerdo 3949 - Anexo II Bis"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA3949AnexoIIBis.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7725
  ClientHeight = 4185
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3930
    Width = 7725
    Height = 255
    TabIndex = 19
    OleObjectBlob = "rptA3949AnexoIIBis.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6600
    Top = 360
    Width = 735
    Height = 615
    TabIndex = 20
    Cancel = -1  'True
    Picture = "rptA3949AnexoIIBis.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA3949AnexoIIBis.frx":0B9C
    Left = 360
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2760
    Width = 4455
    Height = 1095
    TabIndex = 15
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 18
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 17
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 16
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2760
    Width = 3015
    Height = 1095
    TabIndex = 12
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 13
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 6255
    Height = 2655
    TabIndex = 0
    Begin VB.Frame Frame4
      Left = 960
      Top = 1320
      Width = 1455
      Height = 1095
      TabIndex = 6
      Begin VB.OptionButton optSintetico
        Caption = "Sintético"
        Left = 240
        Top = 240
        Width = 1095
        Height = 255
        TabIndex = 7
      End
      Begin VB.OptionButton optAnalitico
        Caption = "Analítico"
        Left = 240
        Top = 600
        Width = 1095
        Height = 255
        TabIndex = 8
      End
    End
    Begin VB.Frame Frame5
      Left = 2280
      Top = 1320
      Width = 1815
      Height = 1095
      TabIndex = 9
      Begin VB.OptionButton optJurisdiccion
        Caption = "Por Jurisdicción"
        Left = 240
        Top = 600
        Width = 1455
        Height = 255
        TabIndex = 11
      End
      Begin VB.OptionButton optConsolidado
        Caption = "Consolidado"
        Left = 240
        Top = 240
        Width = 1215
        Height = 255
        TabIndex = 10
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4680
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1815
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.ComboBox cboTrimestre
      Style = 2
      ForeColor = &HFF0000&
      Left = 1815
      Top = 840
      Width = 1455
      Height = 315
      TabIndex = 5
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1095
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Trimestre:"
      Left = 990
      Top = 840
      Width = 690
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6600
    Top = 480
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 21
    OleObjectBlob = "rptA3949AnexoIIBis.frx":0C00
  End
End

Attribute VB_Name = "rptA3949AnexoIIBis"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_00595938
  bStruc(32) As Byte ' String fields: 8
End Type

Private Type UDT_2_005C4124
  bStruc(36) As Byte ' String fields: 2
End Type

Private Type UDT_3_005C3B68
  bStruc(36) As Byte ' String fields: 2
End Type

Private Type UDT_4_005C35A0
  bStruc(36) As Byte ' String fields: 2
End Type

Private Type UDT_5_005C4528
  bStruc(44) As Byte ' String fields: 4
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98A16C
  'Data Table: 47DCA0
  loc_98A134: FLdPr Me
  loc_98A137: VCallAd Control_ID_statusBar
  loc_98A13A: FStAdFunc var_88
  loc_98A13D: FLdPr var_88
  loc_98A140: LateIdLdVar var_98 DispID_1 0
  loc_98A147: CStrVarTmp
  loc_98A148: CVarStr var_A8
  loc_98A14B: PopAdLdVar
  loc_98A14C: FLdPr Me
  loc_98A14F: VCallAd Control_ID_statusBar
  loc_98A152: FStAdFunc var_BC
  loc_98A155: FLdPr var_BC
  loc_98A158: LateIdSt
  loc_98A15D: FFreeAd var_88 = ""
  loc_98A164: FFreeVar var_98 = ""
  loc_98A16B: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '957880
  'Data Table: 47DCA0
  loc_957868: LitI2_Byte 0
  loc_95786A: ILdRf Me
  loc_95786D: CastAd
  loc_957870: FStAdFunc var_88
  loc_957873: FLdRfVar var_88
  loc_957876: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95787B: FFree1Ad var_88
  loc_95787E: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '957DD8
  'Data Table: 47DCA0
  loc_957DC0: ILdRf Me
  loc_957DC3: CastAd
  loc_957DC6: FStAdFunc var_88
  loc_957DC9: FLdRfVar var_88
  loc_957DCC: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_957DD1: FFree1Ad var_88
  loc_957DD4: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '99641C
  'Data Table: 47DCA0
  loc_9963B8: FLdRfVar var_92
  loc_9963BB: FLdPr Me
  loc_9963BE: VCallAd Control_ID_optConsolidado
  loc_9963C1: FStAdFunc var_90
  loc_9963C4: FLdPr var_90
  loc_9963C7:  = Me.Value
  loc_9963CC: FLdI2 var_92
  loc_9963CF: FLdRfVar var_8A
  loc_9963D2: FLdPr Me
  loc_9963D5: VCallAd Control_ID_optSintetico
  loc_9963D8: FStAdFunc var_88
  loc_9963DB: FLdPr var_88
  loc_9963DE:  = Me.Value
  loc_9963E3: FLdI2 var_8A
  loc_9963E6: AndI4
  loc_9963E7: NotI4
  loc_9963E8: FFreeAd var_88 = ""
  loc_9963EF: BranchF loc_996402
  loc_9963F2: LitI4 0
  loc_9963F7: LitStr "Para generar el archivo de texto debe seleccionar: 'Sintético' y 'Consolidado'"
  loc_9963FA: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9963FF: Branch loc_996418
  loc_996402: LitI2_Byte &HFF
  loc_996404: ILdRf Me
  loc_996407: CastAd
  loc_99640A: FStAdFunc var_88
  loc_99640D: FLdRfVar var_88
  loc_996410: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_996415: FFree1Ad var_88
  loc_996418: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95870C
  'Data Table: 47DCA0
  loc_9586F4: ILdRf Me
  loc_9586F7: CastAd
  loc_9586FA: FStAdFunc var_88
  loc_9586FD: FLdRfVar var_88
  loc_958700: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_958705: FFree1Ad var_88
  loc_958708: ExitProcHresult
End Sub

Private Sub Form_Load() 'A1C89C
  'Data Table: 47DCA0
  loc_A1C70C: LitI2_Byte &HFF
  loc_A1C70E: ImpAdStI2 MemVar_C3D840
  loc_A1C711: ILdRf Me
  loc_A1C714: CastAd
  loc_A1C717: FStAdFunc var_8C
  loc_A1C71A: FLdRfVar var_8C
  loc_A1C71D: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A1C722: FFree1Ad var_8C
  loc_A1C725: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_A1C728: FLdRfVar var_88
  loc_A1C72B: NewIfNullPr clsperiodo
  loc_A1C72E: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A1C733: FLdRfVar var_90
  loc_A1C736: FLdRfVar var_88
  loc_A1C739: NewIfNullPr clsperiodo
  loc_A1C73C: from_stack_1 = clsperiodo.RecordCount
  loc_A1C741: ILdRf var_90
  loc_A1C744: LitI4 0
  loc_A1C749: GtI4
  loc_A1C74A: BranchF loc_A1C7DD
  loc_A1C74D: FLdRfVar var_88
  loc_A1C750: NewIfNullPr clsperiodo
  loc_A1C753: Call clsperiodo.MoveFirst()
  loc_A1C758: FLdRfVar var_92
  loc_A1C75B: FLdRfVar var_88
  loc_A1C75E: NewIfNullPr clsperiodo
  loc_A1C761: from_stack_1 = clsperiodo.EOF
  loc_A1C766: FLdI2 var_92
  loc_A1C769: NotI4
  loc_A1C76A: BranchF loc_A1C7DD
  loc_A1C76D: LitVar_Missing var_D0
  loc_A1C770: PopAdLdVar
  loc_A1C771: FLdRfVar var_BC
  loc_A1C774: FLdRfVar var_AC
  loc_A1C777: LitVarStr var_A8, "PeriInfo"
  loc_A1C77C: PopAdLdVar
  loc_A1C77D: FLdRfVar var_98
  loc_A1C780: FLdRfVar var_8C
  loc_A1C783: FLdRfVar var_88
  loc_A1C786: NewIfNullPr clsperiodo
  loc_A1C789: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A1C78E: FLdPr var_8C
  loc_A1C791:  = Me.Fields
  loc_A1C796: FLdPr var_98
  loc_A1C799: from_stack_2 = Me.Item(from_stack_1)
  loc_A1C79E: FLdPr var_AC
  loc_A1C7A1:  = Me.Value
  loc_A1C7A6: FLdRfVar var_BC
  loc_A1C7A9: CStrVarTmp
  loc_A1C7AA: FStStrNoPop var_C0
  loc_A1C7AD: FLdPr Me
  loc_A1C7B0: VCallAd Control_ID_cboPeriodo
  loc_A1C7B3: FStAdFunc var_D4
  loc_A1C7B6: FLdPr var_D4
  loc_A1C7B9: Me.AddItem from_stack_1, from_stack_2
  loc_A1C7BE: FFree1Str var_C0
  loc_A1C7C1: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_A1C7CC: FFree1Var var_BC = ""
  loc_A1C7CF: FLdRfVar var_88
  loc_A1C7D2: NewIfNullPr clsperiodo
  loc_A1C7D5: Call clsperiodo.MoveSiguiente()
  loc_A1C7DA: Branch loc_A1C758
  loc_A1C7DD: FLdPr Me
  loc_A1C7E0: VCallAd Control_ID_cboTrimestre
  loc_A1C7E3: FStAdFunc var_D8
  loc_A1C7E6: LitVar_Missing var_A8
  loc_A1C7E9: PopAdLdVar
  loc_A1C7EA: LitStr "Primero"
  loc_A1C7ED: FLdPr var_D8
  loc_A1C7F0: Me.AddItem from_stack_1, from_stack_2
  loc_A1C7F5: LitI4 1
  loc_A1C7FA: FLdRfVar var_92
  loc_A1C7FD: FLdPr var_D8
  loc_A1C800:  = Me.NewIndex
  loc_A1C805: FLdI2 var_92
  loc_A1C808: FLdPr var_D8
  loc_A1C80B: Me.ItemData = from_stack_1
  loc_A1C810: LitVar_Missing var_A8
  loc_A1C813: PopAdLdVar
  loc_A1C814: LitStr "Segundo"
  loc_A1C817: FLdPr var_D8
  loc_A1C81A: Me.AddItem from_stack_1, from_stack_2
  loc_A1C81F: LitI4 2
  loc_A1C824: FLdRfVar var_92
  loc_A1C827: FLdPr var_D8
  loc_A1C82A:  = Me.NewIndex
  loc_A1C82F: FLdI2 var_92
  loc_A1C832: FLdPr var_D8
  loc_A1C835: Me.ItemData = from_stack_1
  loc_A1C83A: LitVar_Missing var_A8
  loc_A1C83D: PopAdLdVar
  loc_A1C83E: LitStr "Tercero"
  loc_A1C841: FLdPr var_D8
  loc_A1C844: Me.AddItem from_stack_1, from_stack_2
  loc_A1C849: LitI4 3
  loc_A1C84E: FLdRfVar var_92
  loc_A1C851: FLdPr var_D8
  loc_A1C854:  = Me.NewIndex
  loc_A1C859: FLdI2 var_92
  loc_A1C85C: FLdPr var_D8
  loc_A1C85F: Me.ItemData = from_stack_1
  loc_A1C864: LitVar_Missing var_A8
  loc_A1C867: PopAdLdVar
  loc_A1C868: LitStr "Cuarto"
  loc_A1C86B: FLdPr var_D8
  loc_A1C86E: Me.AddItem from_stack_1, from_stack_2
  loc_A1C873: LitI4 4
  loc_A1C878: FLdRfVar var_92
  loc_A1C87B: FLdPr var_D8
  loc_A1C87E:  = Me.NewIndex
  loc_A1C883: FLdI2 var_92
  loc_A1C886: FLdPr var_D8
  loc_A1C889: Me.ItemData = from_stack_1
  loc_A1C88E: LitNothing
  loc_A1C890: FStAd var_D8 
  loc_A1C894: Call cmdNueva_Click()
  loc_A1C899: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '954868
  'Data Table: 47DCA0
  loc_954850: FLdPr Me
  loc_954853: VCallAd Control_ID_wbbReporte
  loc_954856: FStAdFunc var_88
  loc_954859: FLdRfVar var_88
  loc_95485C: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_954861: FFree1Ad var_88
  loc_954864: ExitProcHresult
  loc_954865: LtI2
  loc_954866: GtCyR8
End Sub

Private Sub cmdSalir_Click() '9767FC
  'Data Table: 47DCA0
  loc_9767CC: LitVarStr var_94, "Cerrando..."
  loc_9767D1: PopAdLdVar
  loc_9767D2: FLdPr Me
  loc_9767D5: VCallAd Control_ID_statusBar
  loc_9767D8: FStAdFunc var_A8
  loc_9767DB: FLdPr var_A8
  loc_9767DE: LateIdSt
  loc_9767E3: FFree1Ad var_A8
  loc_9767E6: ILdRf Me
  loc_9767E9: FStAdNoPop
  loc_9767ED: ImpAdLdRf MemVar_C44F9C
  loc_9767F0: NewIfNullPr Me
  loc_9767F3: Me.Global.Unload from_stack_1
  loc_9767F8: FFree1Ad var_A8
  loc_9767FB: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A1BD68
  'Data Table: 47DCA0
  loc_A1BBCC: LitI2_Byte 0
  loc_A1BBCE: FLdPr Me
  loc_A1BBD1: MemStI2 bGenerado
  loc_A1BBD4: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_A1BBD9: ImpAdLdI2 MemVar_C3D064
  loc_A1BBDC: CStrUI1
  loc_A1BBDE: FStStrNoPop var_88
  loc_A1BBE1: FLdPr Me
  loc_A1BBE4: VCallAd Control_ID_cboPeriodo
  loc_A1BBE7: FStAdFunc var_8C
  loc_A1BBEA: FLdPr var_8C
  loc_A1BBED: Me.Text = from_stack_1
  loc_A1BBF2: FFree1Str var_88
  loc_A1BBF5: FFree1Ad var_8C
  loc_A1BBF8: FLdRfVar var_9C
  loc_A1BBFB: ImpAdCallFPR4  = Date
  loc_A1BC00: FLdRfVar var_9C
  loc_A1BC03: FLdRfVar var_AC
  loc_A1BC06: ImpAdCallFPR4  = Month()
  loc_A1BC0B: FLdRfVar var_AC
  loc_A1BC0E: FStVar var_BC
  loc_A1BC12: FFree1Var var_9C = ""
  loc_A1BC15: FLdRfVar var_BC
  loc_A1BC18: LitVarI2 var_CC, 1
  loc_A1BC1D: HardType
  loc_A1BC1E: EqVarBool
  loc_A1BC20: BranchT loc_A1BC3F
  loc_A1BC23: FLdRfVar var_BC
  loc_A1BC26: LitVarI2 var_DC, 2
  loc_A1BC2B: HardType
  loc_A1BC2C: EqVarBool
  loc_A1BC2E: BranchT loc_A1BC3F
  loc_A1BC31: FLdRfVar var_BC
  loc_A1BC34: LitVarI2 var_EC, 3
  loc_A1BC39: HardType
  loc_A1BC3A: EqVarBool
  loc_A1BC3C: BranchF loc_A1BC59
  loc_A1BC3F: LitStr "Primero"
  loc_A1BC42: FLdPr Me
  loc_A1BC45: VCallAd Control_ID_cboTrimestre
  loc_A1BC48: FStAdFunc var_8C
  loc_A1BC4B: FLdPr var_8C
  loc_A1BC4E: Me.Text = from_stack_1
  loc_A1BC53: FFree1Ad var_8C
  loc_A1BC56: Branch loc_A1BD22
  loc_A1BC59: FLdRfVar var_BC
  loc_A1BC5C: LitVarI2 var_CC, 4
  loc_A1BC61: HardType
  loc_A1BC62: EqVarBool
  loc_A1BC64: BranchT loc_A1BC83
  loc_A1BC67: FLdRfVar var_BC
  loc_A1BC6A: LitVarI2 var_DC, 5
  loc_A1BC6F: HardType
  loc_A1BC70: EqVarBool
  loc_A1BC72: BranchT loc_A1BC83
  loc_A1BC75: FLdRfVar var_BC
  loc_A1BC78: LitVarI2 var_EC, 6
  loc_A1BC7D: HardType
  loc_A1BC7E: EqVarBool
  loc_A1BC80: BranchF loc_A1BC9D
  loc_A1BC83: LitStr "Segundo"
  loc_A1BC86: FLdPr Me
  loc_A1BC89: VCallAd Control_ID_cboTrimestre
  loc_A1BC8C: FStAdFunc var_8C
  loc_A1BC8F: FLdPr var_8C
  loc_A1BC92: Me.Text = from_stack_1
  loc_A1BC97: FFree1Ad var_8C
  loc_A1BC9A: Branch loc_A1BD22
  loc_A1BC9D: FLdRfVar var_BC
  loc_A1BCA0: LitVarI2 var_CC, 7
  loc_A1BCA5: HardType
  loc_A1BCA6: EqVarBool
  loc_A1BCA8: BranchT loc_A1BCC7
  loc_A1BCAB: FLdRfVar var_BC
  loc_A1BCAE: LitVarI2 var_DC, 8
  loc_A1BCB3: HardType
  loc_A1BCB4: EqVarBool
  loc_A1BCB6: BranchT loc_A1BCC7
  loc_A1BCB9: FLdRfVar var_BC
  loc_A1BCBC: LitVarI2 var_EC, 9
  loc_A1BCC1: HardType
  loc_A1BCC2: EqVarBool
  loc_A1BCC4: BranchF loc_A1BCE1
  loc_A1BCC7: LitStr "Tercero"
  loc_A1BCCA: FLdPr Me
  loc_A1BCCD: VCallAd Control_ID_cboTrimestre
  loc_A1BCD0: FStAdFunc var_8C
  loc_A1BCD3: FLdPr var_8C
  loc_A1BCD6: Me.Text = from_stack_1
  loc_A1BCDB: FFree1Ad var_8C
  loc_A1BCDE: Branch loc_A1BD22
  loc_A1BCE1: FLdRfVar var_BC
  loc_A1BCE4: LitVarI2 var_CC, 10
  loc_A1BCE9: HardType
  loc_A1BCEA: EqVarBool
  loc_A1BCEC: BranchT loc_A1BD0B
  loc_A1BCEF: FLdRfVar var_BC
  loc_A1BCF2: LitVarI2 var_DC, 11
  loc_A1BCF7: HardType
  loc_A1BCF8: EqVarBool
  loc_A1BCFA: BranchT loc_A1BD0B
  loc_A1BCFD: FLdRfVar var_BC
  loc_A1BD00: LitVarI2 var_EC, 12
  loc_A1BD05: HardType
  loc_A1BD06: EqVarBool
  loc_A1BD08: BranchF loc_A1BD22
  loc_A1BD0B: LitStr "Cuarto"
  loc_A1BD0E: FLdPr Me
  loc_A1BD11: VCallAd Control_ID_cboTrimestre
  loc_A1BD14: FStAdFunc var_8C
  loc_A1BD17: FLdPr var_8C
  loc_A1BD1A: Me.Text = from_stack_1
  loc_A1BD1F: FFree1Ad var_8C
  loc_A1BD22: LitI2_Byte &HFF
  loc_A1BD24: FLdPr Me
  loc_A1BD27: VCallAd Control_ID_optSintetico
  loc_A1BD2A: FStAdFunc var_8C
  loc_A1BD2D: FLdPr var_8C
  loc_A1BD30: Me.Value = from_stack_1b
  loc_A1BD35: FFree1Ad var_8C
  loc_A1BD38: LitI2_Byte &HFF
  loc_A1BD3A: FLdPr Me
  loc_A1BD3D: VCallAd Control_ID_optConsolidado
  loc_A1BD40: FStAdFunc var_8C
  loc_A1BD43: FLdPr var_8C
  loc_A1BD46: Me.Value = from_stack_1b
  loc_A1BD4B: FFree1Ad var_8C
  loc_A1BD4E: Call HabilitarCriterio()
  loc_A1BD53: ILdRf Me
  loc_A1BD56: CastAd
  loc_A1BD59: FStAdFunc var_8C
  loc_A1BD5C: FLdRfVar var_8C
  loc_A1BD5F: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_A1BD64: FFree1Ad var_8C
  loc_A1BD67: ExitProcHresult
End Sub

Private Sub cmdHtml_Click() '954784
  'Data Table: 47DCA0
  loc_95476C: ILdRf Me
  loc_95476F: CastAd
  loc_954772: FStAdFunc var_88
  loc_954775: FLdRfVar var_88
  loc_954778: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_95477D: FFree1Ad var_88
  loc_954780: ExitProcHresult
End Sub

Public Function htmFileGet() '47EC30
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '47EC3F
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '47EC4E
  htmFile = Value
End Sub

Public Function bGeneradoGet() '47EC5D
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '47EC6C
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9AB92C
  'Data Table: 47DCA0
  loc_9AB8A8: LitI4 0
  loc_9AB8AD: LitI4 5
  loc_9AB8B2: FLdRfVar var_88
  loc_9AB8B5: Redim
  loc_9AB8BF: FLdPr Me
  loc_9AB8C2: VCallAd Control_ID_cboPeriodo
  loc_9AB8C5: CVarAd
  loc_9AB8C9: ParmAry1St
  loc_9AB8CF: FLdPr Me
  loc_9AB8D2: VCallAd Control_ID_cboTrimestre
  loc_9AB8D5: CVarAd
  loc_9AB8D9: ParmAry1St
  loc_9AB8DF: FLdPr Me
  loc_9AB8E2: VCallAd Control_ID_optSintetico
  loc_9AB8E5: CVarAd
  loc_9AB8E9: ParmAry1St
  loc_9AB8EF: FLdPr Me
  loc_9AB8F2: VCallAd Control_ID_optAnalitico
  loc_9AB8F5: CVarAd
  loc_9AB8F9: ParmAry1St
  loc_9AB8FF: FLdPr Me
  loc_9AB902: VCallAd Control_ID_optConsolidado
  loc_9AB905: CVarAd
  loc_9AB909: ParmAry1St
  loc_9AB90F: FLdPr Me
  loc_9AB912: VCallAd Control_ID_optJurisdiccion
  loc_9AB915: CVarAd
  loc_9AB919: ParmAry1St
  loc_9AB91F: FLdRfVar var_88
  loc_9AB922: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9AB927: FLdRfVar var_88
  loc_9AB92A: Erase
  loc_9AB92B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B386E0
  'Data Table: 47DCA0
  loc_B37D3C: FLdPr Me
  loc_B37D3F: MemLdI2 bGenerado
  loc_B37D42: BranchF loc_B37D46
  loc_B37D45: ExitProcHresult
  loc_B37D46: LitVarStr var_A0, "Generando reporte..."
  loc_B37D4B: PopAdLdVar
  loc_B37D4C: FLdPr Me
  loc_B37D4F: VCallAd Control_ID_statusBar
  loc_B37D52: FStAdFunc var_B4
  loc_B37D55: FLdPr var_B4
  loc_B37D58: LateIdSt
  loc_B37D5D: FFree1Ad var_B4
  loc_B37D60: LitI4 &HB
  loc_B37D65: CI2I4
  loc_B37D66: FLdPr Me
  loc_B37D69: Me.MousePointer = from_stack_1
  loc_B37D6E: FLdPr Me
  loc_B37D71: MemLdRfVar from_stack_1.global_72
  loc_B37D74: NewIfNullAd
  loc_B37D77: FStAd var_B8 
  loc_B37D7B: FLdRfVar var_C0
  loc_B37D7E: FLdRfVar var_BC
  loc_B37D81: FLdPr Me
  loc_B37D84: VCallAd Control_ID_cboPeriodo
  loc_B37D87: FStAdFunc var_B4
  loc_B37D8A: FLdPr var_B4
  loc_B37D8D:  = Me.Text
  loc_B37D92: ILdRf var_BC
  loc_B37D95: FLdPr var_B8
  loc_B37D98: from_stack_2v = clsimputacion.BuscaPartExtra(from_stack_1v)
  loc_B37D9D: FLdZeroAd var_C0
  loc_B37DA0: FStStr var_90
  loc_B37DA3: FFree1Str var_BC
  loc_B37DA6: FFree1Ad var_B4
  loc_B37DA9: FLdRfVar var_CC
  loc_B37DAC: FLdRfVar var_C2
  loc_B37DAF: FLdPr Me
  loc_B37DB2: VCallAd Control_ID_cboTrimestre
  loc_B37DB5: FStAdFunc var_B4
  loc_B37DB8: FLdPr var_B4
  loc_B37DBB:  = Me.ListIndex
  loc_B37DC0: FLdI2 var_C2
  loc_B37DC3: FLdPr Me
  loc_B37DC6: VCallAd Control_ID_cboTrimestre
  loc_B37DC9: FStAdFunc var_C8
  loc_B37DCC: FLdPr var_C8
  loc_B37DCF:  = Me.ItemData
  loc_B37DD4: ILdRf var_CC
  loc_B37DD7: LitI4 3
  loc_B37DDC: MulI4
  loc_B37DDD: CUI1I4
  loc_B37DDF: FStUI1 var_86
  loc_B37DE3: FFreeAd var_B4 = ""
  loc_B37DEA: FLdRfVar var_104
  loc_B37DED: FLdPr Me
  loc_B37DF0: VCallAd Control_ID_cboPeriodo
  loc_B37DF3: FStAdFunc var_100
  loc_B37DF6: FLdPr var_100
  loc_B37DF9:  = Me.Text
  loc_B37DFE: FLdRfVar var_BC
  loc_B37E01: FLdPr Me
  loc_B37E04: VCallAd Control_ID_cboPeriodo
  loc_B37E07: FStAdFunc var_B4
  loc_B37E0A: FLdPr var_B4
  loc_B37E0D:  = Me.Text
  loc_B37E12: LitI2_Byte 1
  loc_B37E14: FLdUI1
  loc_B37E18: CI2UI1
  loc_B37E1A: LitI2_Byte 2
  loc_B37E1C: SubI2
  loc_B37E1D: ILdRf var_BC
  loc_B37E20: CI2Str
  loc_B37E22: FLdRfVar var_DC
  loc_B37E25: ImpAdCallFPR4  = DateSerial(, , )
  loc_B37E2A: FLdRfVar var_C0
  loc_B37E2D: FLdPr Me
  loc_B37E30: VCallAd Control_ID_cboPeriodo
  loc_B37E33: FStAdFunc var_C8
  loc_B37E36: FLdPr var_C8
  loc_B37E39:  = Me.Text
  loc_B37E3E: LitI2_Byte 1
  loc_B37E40: FLdUI1
  loc_B37E44: CI2UI1
  loc_B37E46: LitI2_Byte 1
  loc_B37E48: AddI2
  loc_B37E49: ILdRf var_C0
  loc_B37E4C: CI2Str
  loc_B37E4E: FLdRfVar var_EC
  loc_B37E51: ImpAdCallFPR4  = DateSerial(, , )
  loc_B37E56: FLdRfVar var_C2
  loc_B37E59: FLdPr Me
  loc_B37E5C: VCallAd Control_ID_optSintetico
  loc_B37E5F: FStAdFunc var_110
  loc_B37E62: FLdPr var_110
  loc_B37E65:  = Me.Value
  loc_B37E6A: FLdRfVar var_116
  loc_B37E6D: FLdPr Me
  loc_B37E70: VCallAd Control_ID_optConsolidado
  loc_B37E73: FStAdFunc var_114
  loc_B37E76: FLdPr var_114
  loc_B37E79:  = Me.Value
  loc_B37E7E: FLdRfVar var_118
  loc_B37E81: FLdI2 var_116
  loc_B37E84: FLdI2 var_C2
  loc_B37E87: FLdRfVar var_EC
  loc_B37E8A: LitVarI2 var_A0, 1
  loc_B37E8F: SubVar var_FC
  loc_B37E93: CStrVarVal var_10C
  loc_B37E97: FLdRfVar var_DC
  loc_B37E9A: CStrVarVal var_108
  loc_B37E9E: LitI2_Byte 0
  loc_B37EA0: ILdRf var_90
  loc_B37EA3: ILdRf var_104
  loc_B37EA6: FLdPr var_B8
  loc_B37EA9: from_stack_8v = clsimputacion.GenerarEjecucion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_B37EAE: FLdI2 var_118
  loc_B37EB1: NotI4
  loc_B37EB2: FFreeStr var_BC = "": var_C0 = "": var_104 = "": var_108 = ""
  loc_B37EBF: FFreeAd var_B4 = "": var_C8 = "": var_100 = "": var_110 = ""
  loc_B37ECC: FFreeVar var_EC = ""
  loc_B37ED3: BranchF loc_B37EE6
  loc_B37ED6: LitI4 0
  loc_B37EDB: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B37EDE: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B37EE3: Branch loc_B386B8
  loc_B37EE6: LitI4 1
  loc_B37EEB: LitI4 1
  loc_B37EF0: FLdPr Me
  loc_B37EF3: MemLdRfVar from_stack_1.global_100
  loc_B37EF6: Redim
  loc_B37F00: LitI2_Byte 0
  loc_B37F02: FLdPr Me
  loc_B37F05: MemStI2 global_104
  loc_B37F08: LitI4 1
  loc_B37F0D: LitI4 1
  loc_B37F12: FLdPr Me
  loc_B37F15: MemLdRfVar from_stack_1.global_116
  loc_B37F18: Redim
  loc_B37F22: FLdPr var_B8
  loc_B37F25: Call clsimputacion.MoveFirst()
  loc_B37F2A: Call Proc_162_19_9E05B4()
  loc_B37F2F: FLdPr Me
  loc_B37F32: VCallAd Control_ID_optJurisdiccion
  loc_B37F35: CVarAd
  loc_B37F39: CBoolVarNull
  loc_B37F3B: FFree1Var var_DC = ""
  loc_B37F3E: BranchF loc_B381A7
  loc_B37F41: FLdRfVar var_C2
  loc_B37F44: FLdPr var_B8
  loc_B37F47: from_stack_1 = clsimputacion.EOF
  loc_B37F4C: FLdI2 var_C2
  loc_B37F4F: NotI4
  loc_B37F50: BranchF loc_B381A4
  loc_B37F53: FLdRfVar var_DC
  loc_B37F56: FLdRfVar var_100
  loc_B37F59: LitVarStr var_A0, "CodiOrga"
  loc_B37F5E: PopAdLdVar
  loc_B37F5F: FLdRfVar var_C8
  loc_B37F62: FLdRfVar var_B4
  loc_B37F65: FLdPr var_B8
  loc_B37F68: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B37F6D: FLdPr var_B4
  loc_B37F70:  = Me.Fields
  loc_B37F75: FLdPr var_C8
  loc_B37F78: from_stack_2 = Me.Item(from_stack_1)
  loc_B37F7D: FLdPr var_100
  loc_B37F80:  = Me.Value
  loc_B37F85: FLdRfVar var_DC
  loc_B37F88: FLdPr Me
  loc_B37F8B: MemLdI2 global_104
  loc_B37F8E: CI4UI1
  loc_B37F8F: FLdPr Me
  loc_B37F92: MemLdStr global_100
  loc_B37F95: Ary1LdPr
  loc_B37F96: MemLdStr global_0
  loc_B37F99: CVarStr var_B0
  loc_B37F9C: HardType
  loc_B37F9D: NeVarBool
  loc_B37F9F: FFreeAd var_B4 = "": var_C8 = ""
  loc_B37FA8: FFree1Var var_DC = ""
  loc_B37FAB: BranchF loc_B37FB6
  loc_B37FAE: Call Proc_162_19_9E05B4()
  loc_B37FB3: Branch loc_B381A1
  loc_B37FB6: FLdRfVar var_DC
  loc_B37FB9: FLdRfVar var_100
  loc_B37FBC: LitVarStr var_A0, "CodiPart"
  loc_B37FC1: PopAdLdVar
  loc_B37FC2: FLdRfVar var_C8
  loc_B37FC5: FLdRfVar var_B4
  loc_B37FC8: FLdPr var_B8
  loc_B37FCB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B37FD0: FLdPr var_B4
  loc_B37FD3:  = Me.Fields
  loc_B37FD8: FLdPr var_C8
  loc_B37FDB: from_stack_2 = Me.Item(from_stack_1)
  loc_B37FE0: FLdPr var_100
  loc_B37FE3:  = Me.Value
  loc_B37FE8: LitI4 1
  loc_B37FED: FLdRfVar var_DC
  loc_B37FF0: CStrVarTmp
  loc_B37FF1: FStStrNoPop var_BC
  loc_B37FF4: ImpAdCallI2 Left$(, )
  loc_B37FF9: FStStrNoPop var_C0
  loc_B37FFC: LitI4 1
  loc_B38001: FLdPr Me
  loc_B38004: MemLdI2 global_106
  loc_B38007: CI4UI1
  loc_B38008: FLdPr Me
  loc_B3800B: MemLdI2 global_104
  loc_B3800E: CI4UI1
  loc_B3800F: FLdPr Me
  loc_B38012: MemLdStr global_100
  loc_B38015: Ary1LdPr
  loc_B38016: MemLdStr global_8
  loc_B38019: Ary1LdPr
  loc_B3801A: MemLdStr global_0
  loc_B3801D: ImpAdCallI2 Left$(, )
  loc_B38022: FStStrNoPop var_104
  loc_B38025: NeStr
  loc_B38027: FFreeStr var_BC = "": var_C0 = ""
  loc_B38030: FFreeAd var_B4 = "": var_C8 = ""
  loc_B38039: FFree1Var var_DC = ""
  loc_B3803C: BranchF loc_B38047
  loc_B3803F: Call Proc_162_20_A27514()
  loc_B38044: Branch loc_B381A1
  loc_B38047: FLdRfVar var_DC
  loc_B3804A: FLdRfVar var_100
  loc_B3804D: LitVarStr var_A0, "CodiPart"
  loc_B38052: PopAdLdVar
  loc_B38053: FLdRfVar var_C8
  loc_B38056: FLdRfVar var_B4
  loc_B38059: FLdPr var_B8
  loc_B3805C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B38061: FLdPr var_B4
  loc_B38064:  = Me.Fields
  loc_B38069: FLdPr var_C8
  loc_B3806C: from_stack_2 = Me.Item(from_stack_1)
  loc_B38071: FLdPr var_100
  loc_B38074:  = Me.Value
  loc_B38079: LitI4 2
  loc_B3807E: FLdRfVar var_DC
  loc_B38081: CStrVarTmp
  loc_B38082: FStStrNoPop var_BC
  loc_B38085: ImpAdCallI2 Left$(, )
  loc_B3808A: FStStrNoPop var_C0
  loc_B3808D: LitI4 2
  loc_B38092: FLdPr Me
  loc_B38095: MemLdI2 global_108
  loc_B38098: CI4UI1
  loc_B38099: FLdPr Me
  loc_B3809C: MemLdI2 global_106
  loc_B3809F: CI4UI1
  loc_B380A0: FLdPr Me
  loc_B380A3: MemLdI2 global_104
  loc_B380A6: CI4UI1
  loc_B380A7: FLdPr Me
  loc_B380AA: MemLdStr global_100
  loc_B380AD: Ary1LdPr
  loc_B380AE: MemLdStr global_8
  loc_B380B1: Ary1LdPr
  loc_B380B2: MemLdStr global_32
  loc_B380B5: Ary1LdPr
  loc_B380B6: MemLdStr global_0
  loc_B380B9: ImpAdCallI2 Left$(, )
  loc_B380BE: FStStrNoPop var_104
  loc_B380C1: NeStr
  loc_B380C3: FFreeStr var_BC = "": var_C0 = ""
  loc_B380CC: FFreeAd var_B4 = "": var_C8 = ""
  loc_B380D5: FFree1Var var_DC = ""
  loc_B380D8: BranchF loc_B380E3
  loc_B380DB: Call Proc_162_21_A32B7C()
  loc_B380E0: Branch loc_B381A1
  loc_B380E3: FLdRfVar var_DC
  loc_B380E6: FLdRfVar var_100
  loc_B380E9: LitVarStr var_A0, "CodiPart"
  loc_B380EE: PopAdLdVar
  loc_B380EF: FLdRfVar var_C8
  loc_B380F2: FLdRfVar var_B4
  loc_B380F5: FLdPr var_B8
  loc_B380F8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B380FD: FLdPr var_B4
  loc_B38100:  = Me.Fields
  loc_B38105: FLdPr var_C8
  loc_B38108: from_stack_2 = Me.Item(from_stack_1)
  loc_B3810D: FLdPr var_100
  loc_B38110:  = Me.Value
  loc_B38115: LitI4 3
  loc_B3811A: FLdRfVar var_DC
  loc_B3811D: CStrVarTmp
  loc_B3811E: FStStrNoPop var_BC
  loc_B38121: ImpAdCallI2 Left$(, )
  loc_B38126: FStStrNoPop var_C0
  loc_B38129: LitI4 3
  loc_B3812E: FLdPr Me
  loc_B38131: MemLdI2 global_110
  loc_B38134: CI4UI1
  loc_B38135: FLdPr Me
  loc_B38138: MemLdI2 global_108
  loc_B3813B: CI4UI1
  loc_B3813C: FLdPr Me
  loc_B3813F: MemLdI2 global_106
  loc_B38142: CI4UI1
  loc_B38143: FLdPr Me
  loc_B38146: MemLdI2 global_104
  loc_B38149: CI4UI1
  loc_B3814A: FLdPr Me
  loc_B3814D: MemLdStr global_100
  loc_B38150: Ary1LdPr
  loc_B38151: MemLdStr global_8
  loc_B38154: Ary1LdPr
  loc_B38155: MemLdStr global_32
  loc_B38158: Ary1LdPr
  loc_B38159: MemLdStr global_32
  loc_B3815C: Ary1LdPr
  loc_B3815D: MemLdStr global_0
  loc_B38160: ImpAdCallI2 Left$(, )
  loc_B38165: FStStrNoPop var_104
  loc_B38168: NeStr
  loc_B3816A: FFreeStr var_BC = "": var_C0 = ""
  loc_B38173: FFreeAd var_B4 = "": var_C8 = ""
  loc_B3817C: FFree1Var var_DC = ""
  loc_B3817F: BranchF loc_B3818A
  loc_B38182: Call Proc_162_22_A5C6C0()
  loc_B38187: Branch loc_B381A1
  loc_B3818A: FLdPr Me
  loc_B3818D: VCallAd Control_ID_optAnalitico
  loc_B38190: CVarAd
  loc_B38194: CBoolVarNull
  loc_B38196: FFree1Var var_DC = ""
  loc_B38199: BranchF loc_B381A1
  loc_B3819C: Call Proc_162_23_A4A0E8()
  loc_B381A1: Branch loc_B37F41
  loc_B381A4: Branch loc_B383C0
  loc_B381A7: FLdRfVar var_C2
  loc_B381AA: FLdPr var_B8
  loc_B381AD: from_stack_1 = clsimputacion.EOF
  loc_B381B2: FLdI2 var_C2
  loc_B381B5: NotI4
  loc_B381B6: BranchF loc_B383C0
  loc_B381B9: FLdRfVar var_DC
  loc_B381BC: FLdRfVar var_100
  loc_B381BF: LitVarStr var_A0, "CodiPart"
  loc_B381C4: PopAdLdVar
  loc_B381C5: FLdRfVar var_C8
  loc_B381C8: FLdRfVar var_B4
  loc_B381CB: FLdPr var_B8
  loc_B381CE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B381D3: FLdPr var_B4
  loc_B381D6:  = Me.Fields
  loc_B381DB: FLdPr var_C8
  loc_B381DE: from_stack_2 = Me.Item(from_stack_1)
  loc_B381E3: FLdPr var_100
  loc_B381E6:  = Me.Value
  loc_B381EB: LitI4 1
  loc_B381F0: FLdRfVar var_DC
  loc_B381F3: CStrVarTmp
  loc_B381F4: FStStrNoPop var_BC
  loc_B381F7: ImpAdCallI2 Left$(, )
  loc_B381FC: FStStrNoPop var_C0
  loc_B381FF: LitI4 1
  loc_B38204: FLdPr Me
  loc_B38207: MemLdI2 global_106
  loc_B3820A: CI4UI1
  loc_B3820B: FLdPr Me
  loc_B3820E: MemLdI2 global_104
  loc_B38211: CI4UI1
  loc_B38212: FLdPr Me
  loc_B38215: MemLdStr global_100
  loc_B38218: Ary1LdPr
  loc_B38219: MemLdStr global_8
  loc_B3821C: Ary1LdPr
  loc_B3821D: MemLdStr global_0
  loc_B38220: ImpAdCallI2 Left$(, )
  loc_B38225: FStStrNoPop var_104
  loc_B38228: NeStr
  loc_B3822A: FFreeStr var_BC = "": var_C0 = ""
  loc_B38233: FFreeAd var_B4 = "": var_C8 = ""
  loc_B3823C: FFree1Var var_DC = ""
  loc_B3823F: BranchF loc_B3824A
  loc_B38242: Call Proc_162_20_A27514()
  loc_B38247: Branch loc_B383BD
  loc_B3824A: FLdRfVar var_DC
  loc_B3824D: FLdRfVar var_100
  loc_B38250: LitVarStr var_A0, "CodiPart"
  loc_B38255: PopAdLdVar
  loc_B38256: FLdRfVar var_C8
  loc_B38259: FLdRfVar var_B4
  loc_B3825C: FLdPr var_B8
  loc_B3825F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B38264: FLdPr var_B4
  loc_B38267:  = Me.Fields
  loc_B3826C: FLdPr var_C8
  loc_B3826F: from_stack_2 = Me.Item(from_stack_1)
  loc_B38274: FLdPr var_100
  loc_B38277:  = Me.Value
  loc_B3827C: LitI4 2
  loc_B38281: FLdRfVar var_DC
  loc_B38284: CStrVarTmp
  loc_B38285: FStStrNoPop var_BC
  loc_B38288: ImpAdCallI2 Left$(, )
  loc_B3828D: FStStrNoPop var_C0
  loc_B38290: LitI4 2
  loc_B38295: FLdPr Me
  loc_B38298: MemLdI2 global_108
  loc_B3829B: CI4UI1
  loc_B3829C: FLdPr Me
  loc_B3829F: MemLdI2 global_106
  loc_B382A2: CI4UI1
  loc_B382A3: FLdPr Me
  loc_B382A6: MemLdI2 global_104
  loc_B382A9: CI4UI1
  loc_B382AA: FLdPr Me
  loc_B382AD: MemLdStr global_100
  loc_B382B0: Ary1LdPr
  loc_B382B1: MemLdStr global_8
  loc_B382B4: Ary1LdPr
  loc_B382B5: MemLdStr global_32
  loc_B382B8: Ary1LdPr
  loc_B382B9: MemLdStr global_0
  loc_B382BC: ImpAdCallI2 Left$(, )
  loc_B382C1: FStStrNoPop var_104
  loc_B382C4: NeStr
  loc_B382C6: FFreeStr var_BC = "": var_C0 = ""
  loc_B382CF: FFreeAd var_B4 = "": var_C8 = ""
  loc_B382D8: FFree1Var var_DC = ""
  loc_B382DB: BranchF loc_B382E6
  loc_B382DE: Call Proc_162_21_A32B7C()
  loc_B382E3: Branch loc_B383BD
  loc_B382E6: FLdRfVar var_DC
  loc_B382E9: FLdRfVar var_100
  loc_B382EC: LitVarStr var_A0, "CodiPart"
  loc_B382F1: PopAdLdVar
  loc_B382F2: FLdRfVar var_C8
  loc_B382F5: FLdRfVar var_B4
  loc_B382F8: FLdPr var_B8
  loc_B382FB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B38300: FLdPr var_B4
  loc_B38303:  = Me.Fields
  loc_B38308: FLdPr var_C8
  loc_B3830B: from_stack_2 = Me.Item(from_stack_1)
  loc_B38310: FLdPr var_100
  loc_B38313:  = Me.Value
  loc_B38318: LitI4 3
  loc_B3831D: FLdRfVar var_DC
  loc_B38320: CStrVarTmp
  loc_B38321: FStStrNoPop var_BC
  loc_B38324: ImpAdCallI2 Left$(, )
  loc_B38329: FStStrNoPop var_C0
  loc_B3832C: LitI4 3
  loc_B38331: FLdPr Me
  loc_B38334: MemLdI2 global_110
  loc_B38337: CI4UI1
  loc_B38338: FLdPr Me
  loc_B3833B: MemLdI2 global_108
  loc_B3833E: CI4UI1
  loc_B3833F: FLdPr Me
  loc_B38342: MemLdI2 global_106
  loc_B38345: CI4UI1
  loc_B38346: FLdPr Me
  loc_B38349: MemLdI2 global_104
  loc_B3834C: CI4UI1
  loc_B3834D: FLdPr Me
  loc_B38350: MemLdStr global_100
  loc_B38353: Ary1LdPr
  loc_B38354: MemLdStr global_8
  loc_B38357: Ary1LdPr
  loc_B38358: MemLdStr global_32
  loc_B3835B: Ary1LdPr
  loc_B3835C: MemLdStr global_32
  loc_B3835F: Ary1LdPr
  loc_B38360: MemLdStr global_0
  loc_B38363: ImpAdCallI2 Left$(, )
  loc_B38368: FStStrNoPop var_104
  loc_B3836B: NeStr
  loc_B3836D: FFreeStr var_BC = "": var_C0 = ""
  loc_B38376: FFreeAd var_B4 = "": var_C8 = ""
  loc_B3837F: FFree1Var var_DC = ""
  loc_B38382: BranchF loc_B3838D
  loc_B38385: Call Proc_162_22_A5C6C0()
  loc_B3838A: Branch loc_B383BD
  loc_B3838D: FLdPr Me
  loc_B38390: VCallAd Control_ID_optAnalitico
  loc_B38393: CVarAd
  loc_B38397: CBoolVarNull
  loc_B38399: FFree1Var var_DC = ""
  loc_B3839C: BranchF loc_B383A7
  loc_B3839F: Call Proc_162_23_A4A0E8()
  loc_B383A4: Branch loc_B383BD
  loc_B383A7: LitI4 1
  loc_B383AC: PopTmpLdAdStr var_CC
  loc_B383AF: FLdPr Me
  loc_B383B2: MemLdRfVar from_stack_1.global_72
  loc_B383B5: NewIfNullPr clsimputacion
  loc_B383B8: Call clsimputacion.Mover(from_stack_1v)
  loc_B383BD: Branch loc_B381A7
  loc_B383C0: LitNothing
  loc_B383C2: FStAd var_B8 
  loc_B383C6: LitI2_Byte 1
  loc_B383C8: FLdPr Me
  loc_B383CB: MemLdRfVar from_stack_1.global_104
  loc_B383CE: FLdPr Me
  loc_B383D1: MemLdStr global_100
  loc_B383D4: LitI2_Byte 1
  loc_B383D6: FnUBound
  loc_B383D8: CI2I4
  loc_B383D9: ForI2 var_11C
  loc_B383DF: LitI2_Byte 1
  loc_B383E1: FLdPr Me
  loc_B383E4: MemLdRfVar from_stack_1.global_106
  loc_B383E7: FLdPr Me
  loc_B383EA: MemLdI2 global_104
  loc_B383ED: CI4UI1
  loc_B383EE: FLdPr Me
  loc_B383F1: MemLdStr global_100
  loc_B383F4: Ary1LdPr
  loc_B383F5: MemLdStr global_8
  loc_B383F8: LitI2_Byte 1
  loc_B383FA: FnUBound
  loc_B383FC: CI2I4
  loc_B383FD: ForI2 var_120
  loc_B38403: LitI2_Byte 1
  loc_B38405: FLdPr Me
  loc_B38408: MemLdRfVar from_stack_1.global_108
  loc_B3840B: FLdPr Me
  loc_B3840E: MemLdI2 global_106
  loc_B38411: CI4UI1
  loc_B38412: FLdPr Me
  loc_B38415: MemLdI2 global_104
  loc_B38418: CI4UI1
  loc_B38419: FLdPr Me
  loc_B3841C: MemLdStr global_100
  loc_B3841F: Ary1LdPr
  loc_B38420: MemLdStr global_8
  loc_B38423: Ary1LdPr
  loc_B38424: MemLdStr global_32
  loc_B38427: LitI2_Byte 1
  loc_B38429: FnUBound
  loc_B3842B: CI2I4
  loc_B3842C: ForI2 var_124
  loc_B38432: FLdPr Me
  loc_B38435: VCallAd Control_ID_optAnalitico
  loc_B38438: CVarAd
  loc_B3843C: CBoolVarNull
  loc_B3843E: FFree1Var var_DC = ""
  loc_B38441: BranchF loc_B38511
  loc_B38444: LitI2_Byte 1
  loc_B38446: FLdPr Me
  loc_B38449: MemLdRfVar from_stack_1.global_110
  loc_B3844C: FLdPr Me
  loc_B3844F: MemLdI2 global_108
  loc_B38452: CI4UI1
  loc_B38453: FLdPr Me
  loc_B38456: MemLdI2 global_106
  loc_B38459: CI4UI1
  loc_B3845A: FLdPr Me
  loc_B3845D: MemLdI2 global_104
  loc_B38460: CI4UI1
  loc_B38461: FLdPr Me
  loc_B38464: MemLdStr global_100
  loc_B38467: Ary1LdPr
  loc_B38468: MemLdStr global_8
  loc_B3846B: Ary1LdPr
  loc_B3846C: MemLdStr global_32
  loc_B3846F: Ary1LdPr
  loc_B38470: MemLdStr global_32
  loc_B38473: LitI2_Byte 1
  loc_B38475: FnUBound
  loc_B38477: CI2I4
  loc_B38478: ForI2 var_128
  loc_B3847E: FLdPr Me
  loc_B38481: MemLdI2 global_108
  loc_B38484: CI4UI1
  loc_B38485: FLdPr Me
  loc_B38488: MemLdI2 global_106
  loc_B3848B: CI4UI1
  loc_B3848C: FLdPr Me
  loc_B3848F: MemLdI2 global_104
  loc_B38492: CI4UI1
  loc_B38493: FLdPr Me
  loc_B38496: MemLdStr global_100
  loc_B38499: AryLock
  loc_B3849C: Ary1LdPr
  loc_B3849D: MemLdStr global_8
  loc_B384A0: AryLock
  loc_B384A3: Ary1LdPr
  loc_B384A4: MemLdStr global_32
  loc_B384A7: AryLock
  loc_B384AA: Ary1LdPr
  loc_B384AB: MemLdRfVar from_stack_1.global_0
  loc_B384AE: FLdPr Me
  loc_B384B1: MemLdI2 global_110
  loc_B384B4: CI4UI1
  loc_B384B5: FLdPr Me
  loc_B384B8: MemLdI2 global_108
  loc_B384BB: CI4UI1
  loc_B384BC: FLdPr Me
  loc_B384BF: MemLdI2 global_106
  loc_B384C2: CI4UI1
  loc_B384C3: FLdPr Me
  loc_B384C6: MemLdI2 global_104
  loc_B384C9: CI4UI1
  loc_B384CA: FLdPr Me
  loc_B384CD: MemLdStr global_100
  loc_B384D0: AryLock
  loc_B384D3: Ary1LdPr
  loc_B384D4: MemLdStr global_8
  loc_B384D7: AryLock
  loc_B384DA: Ary1LdPr
  loc_B384DB: MemLdStr global_32
  loc_B384DE: AryLock
  loc_B384E1: Ary1LdPr
  loc_B384E2: MemLdStr global_32
  loc_B384E5: AryLock
  loc_B384E8: Ary1LdPr
  loc_B384E9: MemLdRfVar from_stack_1.global_0
  loc_B384EC: Call Proc_162_25_9B74E8()
  loc_B384F1: AryUnlock
  loc_B384F4: AryUnlock
  loc_B384F7: AryUnlock
  loc_B384FA: AryUnlock
  loc_B384FD: AryUnlock
  loc_B38500: AryUnlock
  loc_B38503: AryUnlock
  loc_B38506: FLdPr Me
  loc_B38509: MemLdRfVar from_stack_1.global_110
  loc_B3850C: NextI2 var_128, loc_B3847E
  loc_B38511: FLdPr Me
  loc_B38514: MemLdI2 global_106
  loc_B38517: CI4UI1
  loc_B38518: FLdPr Me
  loc_B3851B: MemLdI2 global_104
  loc_B3851E: CI4UI1
  loc_B3851F: FLdPr Me
  loc_B38522: MemLdStr global_100
  loc_B38525: AryLock
  loc_B38528: Ary1LdPr
  loc_B38529: MemLdStr global_8
  loc_B3852C: AryLock
  loc_B3852F: Ary1LdPr
  loc_B38530: MemLdRfVar from_stack_1.global_0
  loc_B38533: FLdPr Me
  loc_B38536: MemLdI2 global_108
  loc_B38539: CI4UI1
  loc_B3853A: FLdPr Me
  loc_B3853D: MemLdI2 global_106
  loc_B38540: CI4UI1
  loc_B38541: FLdPr Me
  loc_B38544: MemLdI2 global_104
  loc_B38547: CI4UI1
  loc_B38548: FLdPr Me
  loc_B3854B: MemLdStr global_100
  loc_B3854E: AryLock
  loc_B38551: Ary1LdPr
  loc_B38552: MemLdStr global_8
  loc_B38555: AryLock
  loc_B38558: Ary1LdPr
  loc_B38559: MemLdStr global_32
  loc_B3855C: AryLock
  loc_B3855F: Ary1LdPr
  loc_B38560: MemLdRfVar from_stack_1.global_0
  loc_B38563: Call Proc_162_25_9B74E8()
  loc_B38568: AryUnlock
  loc_B3856B: AryUnlock
  loc_B3856E: AryUnlock
  loc_B38571: AryUnlock
  loc_B38574: AryUnlock
  loc_B38577: FLdPr Me
  loc_B3857A: MemLdRfVar from_stack_1.global_108
  loc_B3857D: NextI2 var_124, loc_B38432
  loc_B38582: FLdPr Me
  loc_B38585: MemLdI2 global_104
  loc_B38588: CI4UI1
  loc_B38589: FLdPr Me
  loc_B3858C: MemLdStr global_100
  loc_B3858F: AryLock
  loc_B38592: Ary1LdPr
  loc_B38593: MemLdRfVar from_stack_1.global_12
  loc_B38596: FLdPr Me
  loc_B38599: MemLdI2 global_106
  loc_B3859C: CI4UI1
  loc_B3859D: FLdPr Me
  loc_B385A0: MemLdI2 global_104
  loc_B385A3: CI4UI1
  loc_B385A4: FLdPr Me
  loc_B385A7: MemLdStr global_100
  loc_B385AA: AryLock
  loc_B385AD: Ary1LdPr
  loc_B385AE: MemLdStr global_8
  loc_B385B1: AryLock
  loc_B385B4: Ary1LdPr
  loc_B385B5: MemLdRfVar from_stack_1.global_0
  loc_B385B8: Call Proc_162_25_9B74E8()
  loc_B385BD: AryUnlock
  loc_B385C0: AryUnlock
  loc_B385C3: AryUnlock
  loc_B385C6: FLdPr Me
  loc_B385C9: MemLdRfVar from_stack_1.global_106
  loc_B385CC: NextI2 var_120, loc_B38403
  loc_B385D1: LitI4 1
  loc_B385D6: FLdPr Me
  loc_B385D9: MemLdStr global_116
  loc_B385DC: AryLock
  loc_B385DF: Ary1LdRf
  loc_B385E0: FLdPr Me
  loc_B385E3: MemLdI2 global_104
  loc_B385E6: CI4UI1
  loc_B385E7: FLdPr Me
  loc_B385EA: MemLdStr global_100
  loc_B385ED: AryLock
  loc_B385F0: Ary1LdPr
  loc_B385F1: MemLdRfVar from_stack_1.global_12
  loc_B385F4: Call Proc_162_25_9B74E8()
  loc_B385F9: AryUnlock
  loc_B385FC: AryUnlock
  loc_B385FF: FLdPr Me
  loc_B38602: MemLdRfVar from_stack_1.global_104
  loc_B38605: NextI2 var_11C, loc_B383DF
  loc_B3860A: LitI2_Byte &HFF
  loc_B3860C: FLdPr Me
  loc_B3860F: MemStI2 bGenerado
  loc_B38612: FLdRfVar var_C2
  loc_B38615: FLdPr Me
  loc_B38618: VCallAd Control_ID_optSintetico
  loc_B3861B: FStAdFunc var_B4
  loc_B3861E: FLdPr var_B4
  loc_B38621:  = Me.Value
  loc_B38626: FLdI2 var_C2
  loc_B38629: FFree1Ad var_B4
  loc_B3862C: BranchF loc_B38675
  loc_B3862F: LitI4 0
  loc_B38634: LitI4 1
  loc_B38639: FLdRfVar var_148
  loc_B3863C: Redim
  loc_B38646: FLdPr Me
  loc_B38649: VCallAd Control_ID_optAnalitico
  loc_B3864C: CVarAd
  loc_B38650: ParmAry1St
  loc_B38656: FLdPr Me
  loc_B38659: VCallAd Control_ID_optSintetico
  loc_B3865C: CVarAd
  loc_B38660: ParmAry1St
  loc_B38666: FLdRfVar var_148
  loc_B38669: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B3866E: FLdRfVar var_148
  loc_B38671: Erase
  loc_B38672: Branch loc_B386B8
  loc_B38675: LitI4 0
  loc_B3867A: LitI4 1
  loc_B3867F: FLdRfVar var_148
  loc_B38682: Redim
  loc_B3868C: FLdPr Me
  loc_B3868F: VCallAd Control_ID_optSintetico
  loc_B38692: CVarAd
  loc_B38696: ParmAry1St
  loc_B3869C: FLdPr Me
  loc_B3869F: VCallAd Control_ID_optAnalitico
  loc_B386A2: CVarAd
  loc_B386A6: ParmAry1St
  loc_B386AC: FLdRfVar var_148
  loc_B386AF: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B386B4: FLdRfVar var_148
  loc_B386B7: Erase
  loc_B386B8: LitI2_Byte 0
  loc_B386BA: FLdPr Me
  loc_B386BD: Me.MousePointer = from_stack_1
  loc_B386C2: LitVarStr var_A0, vbNullString
  loc_B386C7: PopAdLdVar
  loc_B386C8: FLdPr Me
  loc_B386CB: VCallAd Control_ID_statusBar
  loc_B386CE: FStAdFunc var_B4
  loc_B386D1: FLdPr var_B4
  loc_B386D4: LateIdSt
  loc_B386D9: FFree1Ad var_B4
  loc_B386DC: ExitProcHresult
  loc_B386DD: MemStR8 global_1417
End Sub

Public Sub GeneraHTML(arg_34) 'B7B510
  'Data Table: 47DCA0
  loc_B7A864: FLdRfVar var_88
  loc_B7A867: LitI2_Byte 0
  loc_B7A869: LitI2_Byte &HFF
  loc_B7A86B: ImpAdLdI4 MemVar_C3D83C
  loc_B7A86E: FLdPr Me
  loc_B7A871: MemLdRfVar from_stack_1.global_80
  loc_B7A874: NewIfNullPr IFileSystem3
  loc_B7A877: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B7A87C: ILdRf var_88
  loc_B7A87F: FLdPr Me
  loc_B7A882: MemStVarAd
  loc_B7A886: FFree1Ad var_88
  loc_B7A889: Call Proc_162_26_A84CA8()
  loc_B7A88E: LitI2_Byte 1
  loc_B7A890: FLdPr Me
  loc_B7A893: MemLdRfVar from_stack_1.global_104
  loc_B7A896: FLdPr Me
  loc_B7A899: MemLdStr global_100
  loc_B7A89C: LitI2_Byte 1
  loc_B7A89E: FnUBound
  loc_B7A8A0: CI2I4
  loc_B7A8A1: ForI2 var_8C
  loc_B7A8A7: FLdPr Me
  loc_B7A8AA: VCallAd Control_ID_optJurisdiccion
  loc_B7A8AD: CVarAd
  loc_B7A8B1: CBoolVarNull
  loc_B7A8B3: FFree1Var var_9C = ""
  loc_B7A8B6: BranchF loc_B7A937
  loc_B7A8B9: LitVarStr var_AC, "  <tr align=""left"" class=""Encabezado"">"
  loc_B7A8BE: PopAdLdVar
  loc_B7A8BF: FLdPr Me
  loc_B7A8C2: MemLdRfVar from_stack_1.htmFile
  loc_B7A8C5: LdPrVar
  loc_B7A8C7: LateMemCall
  loc_B7A8CD: LitStr "    <td colspan=""7"">Jurisdicción: "
  loc_B7A8D0: FLdPr Me
  loc_B7A8D3: MemLdI2 global_104
  loc_B7A8D6: CI4UI1
  loc_B7A8D7: FLdPr Me
  loc_B7A8DA: MemLdStr global_100
  loc_B7A8DD: Ary1LdPr
  loc_B7A8DE: MemLdStr global_0
  loc_B7A8E1: ConcatStr
  loc_B7A8E2: FStStrNoPop var_C0
  loc_B7A8E5: LitStr " - "
  loc_B7A8E8: ConcatStr
  loc_B7A8E9: FStStrNoPop var_C4
  loc_B7A8EC: FLdPr Me
  loc_B7A8EF: MemLdI2 global_104
  loc_B7A8F2: CI4UI1
  loc_B7A8F3: FLdPr Me
  loc_B7A8F6: MemLdStr global_100
  loc_B7A8F9: Ary1LdPr
  loc_B7A8FA: MemLdStr global_4
  loc_B7A8FD: ConcatStr
  loc_B7A8FE: FStStrNoPop var_C8
  loc_B7A901: LitStr "</td>"
  loc_B7A904: ConcatStr
  loc_B7A905: CVarStr var_9C
  loc_B7A908: PopAdLdVar
  loc_B7A909: FLdPr Me
  loc_B7A90C: MemLdRfVar from_stack_1.htmFile
  loc_B7A90F: LdPrVar
  loc_B7A911: LateMemCall
  loc_B7A917: FFreeStr var_C0 = "": var_C4 = ""
  loc_B7A920: FFree1Var var_9C = ""
  loc_B7A923: LitVarStr var_AC, "     </tr>"
  loc_B7A928: PopAdLdVar
  loc_B7A929: FLdPr Me
  loc_B7A92C: MemLdRfVar from_stack_1.htmFile
  loc_B7A92F: LdPrVar
  loc_B7A931: LateMemCall
  loc_B7A937: LitI2_Byte 1
  loc_B7A939: FLdPr Me
  loc_B7A93C: MemLdRfVar from_stack_1.global_106
  loc_B7A93F: FLdPr Me
  loc_B7A942: MemLdI2 global_104
  loc_B7A945: CI4UI1
  loc_B7A946: FLdPr Me
  loc_B7A949: MemLdStr global_100
  loc_B7A94C: Ary1LdPr
  loc_B7A94D: MemLdStr global_8
  loc_B7A950: LitI2_Byte 1
  loc_B7A952: FnUBound
  loc_B7A954: CI2I4
  loc_B7A955: ForI2 var_CC
  loc_B7A95B: LitVarStr var_AC, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_B7A960: PopAdLdVar
  loc_B7A961: FLdPr Me
  loc_B7A964: MemLdRfVar from_stack_1.htmFile
  loc_B7A967: LdPrVar
  loc_B7A969: LateMemCall
  loc_B7A96F: FLdPr Me
  loc_B7A972: MemLdI2 global_106
  loc_B7A975: CI4UI1
  loc_B7A976: FLdPr Me
  loc_B7A979: MemLdI2 global_104
  loc_B7A97C: CI4UI1
  loc_B7A97D: FLdPr Me
  loc_B7A980: MemLdStr global_100
  loc_B7A983: AryLock
  loc_B7A986: Ary1LdPr
  loc_B7A987: MemLdStr global_8
  loc_B7A98A: AryLock
  loc_B7A98D: Ary1LdPr
  loc_B7A98E: MemLdRfVar from_stack_1.global_0
  loc_B7A991: FStR4 var_D8
  loc_B7A994: LitI4 0
  loc_B7A999: LitI4 0
  loc_B7A99E: LitI2_Byte 0
  loc_B7A9A0: LitStr "left"
  loc_B7A9A3: FMemLdR4 var_D8(0)
  loc_B7A9A8: LitStr " - "
  loc_B7A9AB: ConcatStr
  loc_B7A9AC: FStStrNoPop var_C0
  loc_B7A9AF: FMemLdR4 var_D8(4)
  loc_B7A9B4: ConcatStr
  loc_B7A9B5: FStStrNoPop var_C4
  loc_B7A9B8: LitStr "&nbsp;(Subtotal)"
  loc_B7A9BB: ConcatStr
  loc_B7A9BC: FStStrNoPop var_C8
  loc_B7A9BF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7A9C4: CVarStr var_9C
  loc_B7A9C7: PopAdLdVar
  loc_B7A9C8: FLdPr Me
  loc_B7A9CB: MemLdRfVar from_stack_1.htmFile
  loc_B7A9CE: LdPrVar
  loc_B7A9D0: LateMemCall
  loc_B7A9D6: FFreeStr var_C0 = "": var_C4 = ""
  loc_B7A9DF: FFree1Var var_9C = ""
  loc_B7A9E2: LitI4 0
  loc_B7A9E7: LitI4 0
  loc_B7A9EC: LitI2_Byte 0
  loc_B7A9EE: LitStr "right"
  loc_B7A9F1: FMemLdR4 var_D8(8)
  loc_B7A9F6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7A9FB: CVarStr var_9C
  loc_B7A9FE: PopAdLdVar
  loc_B7A9FF: FLdPr Me
  loc_B7AA02: MemLdRfVar from_stack_1.htmFile
  loc_B7AA05: LdPrVar
  loc_B7AA07: LateMemCall
  loc_B7AA0D: FFree1Var var_9C = ""
  loc_B7AA10: LitI4 0
  loc_B7AA15: LitI4 0
  loc_B7AA1A: LitI2_Byte 0
  loc_B7AA1C: LitStr "right"
  loc_B7AA1F: FMemLdR4 var_D8(12)
  loc_B7AA24: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7AA29: CVarStr var_9C
  loc_B7AA2C: PopAdLdVar
  loc_B7AA2D: FLdPr Me
  loc_B7AA30: MemLdRfVar from_stack_1.htmFile
  loc_B7AA33: LdPrVar
  loc_B7AA35: LateMemCall
  loc_B7AA3B: FFree1Var var_9C = ""
  loc_B7AA3E: LitI4 0
  loc_B7AA43: LitI4 0
  loc_B7AA48: LitI2_Byte 0
  loc_B7AA4A: LitStr "right"
  loc_B7AA4D: FMemLdR4 var_D8(16)
  loc_B7AA52: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7AA57: CVarStr var_9C
  loc_B7AA5A: PopAdLdVar
  loc_B7AA5B: FLdPr Me
  loc_B7AA5E: MemLdRfVar from_stack_1.htmFile
  loc_B7AA61: LdPrVar
  loc_B7AA63: LateMemCall
  loc_B7AA69: FFree1Var var_9C = ""
  loc_B7AA6C: LitI4 0
  loc_B7AA71: LitI4 0
  loc_B7AA76: LitI2_Byte 0
  loc_B7AA78: LitStr "right"
  loc_B7AA7B: FMemLdR4 var_D8(20)
  loc_B7AA80: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7AA85: CVarStr var_9C
  loc_B7AA88: PopAdLdVar
  loc_B7AA89: FLdPr Me
  loc_B7AA8C: MemLdRfVar from_stack_1.htmFile
  loc_B7AA8F: LdPrVar
  loc_B7AA91: LateMemCall
  loc_B7AA97: FFree1Var var_9C = ""
  loc_B7AA9A: LitI4 0
  loc_B7AA9F: LitI4 0
  loc_B7AAA4: LitI2_Byte 0
  loc_B7AAA6: LitStr "right"
  loc_B7AAA9: FMemLdR4 var_D8(24)
  loc_B7AAAE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7AAB3: CVarStr var_9C
  loc_B7AAB6: PopAdLdVar
  loc_B7AAB7: FLdPr Me
  loc_B7AABA: MemLdRfVar from_stack_1.htmFile
  loc_B7AABD: LdPrVar
  loc_B7AABF: LateMemCall
  loc_B7AAC5: FFree1Var var_9C = ""
  loc_B7AAC8: LitI4 0
  loc_B7AACD: LitI4 0
  loc_B7AAD2: LitI2_Byte 0
  loc_B7AAD4: LitStr "right"
  loc_B7AAD7: FMemLdR4 var_D8(28)
  loc_B7AADC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7AAE1: CVarStr var_9C
  loc_B7AAE4: PopAdLdVar
  loc_B7AAE5: FLdPr Me
  loc_B7AAE8: MemLdRfVar from_stack_1.htmFile
  loc_B7AAEB: LdPrVar
  loc_B7AAED: LateMemCall
  loc_B7AAF3: FFree1Var var_9C = ""
  loc_B7AAF6: LitI4 0
  loc_B7AAFB: FStR4 var_D8
  loc_B7AAFE: AryUnlock
  loc_B7AB01: AryUnlock
  loc_B7AB04: LitVarStr var_AC, "     </tr>"
  loc_B7AB09: PopAdLdVar
  loc_B7AB0A: FLdPr Me
  loc_B7AB0D: MemLdRfVar from_stack_1.htmFile
  loc_B7AB10: LdPrVar
  loc_B7AB12: LateMemCall
  loc_B7AB18: LitI2_Byte 1
  loc_B7AB1A: FLdPr Me
  loc_B7AB1D: MemLdRfVar from_stack_1.global_108
  loc_B7AB20: FLdPr Me
  loc_B7AB23: MemLdI2 global_106
  loc_B7AB26: CI4UI1
  loc_B7AB27: FLdPr Me
  loc_B7AB2A: MemLdI2 global_104
  loc_B7AB2D: CI4UI1
  loc_B7AB2E: FLdPr Me
  loc_B7AB31: MemLdStr global_100
  loc_B7AB34: Ary1LdPr
  loc_B7AB35: MemLdStr global_8
  loc_B7AB38: Ary1LdPr
  loc_B7AB39: MemLdStr global_32
  loc_B7AB3C: LitI2_Byte 1
  loc_B7AB3E: FnUBound
  loc_B7AB40: CI2I4
  loc_B7AB41: ForI2 var_DC
  loc_B7AB47: LitVarStr var_AC, "  <tr align=""left"" class=""Totales2"">"
  loc_B7AB4C: PopAdLdVar
  loc_B7AB4D: FLdPr Me
  loc_B7AB50: MemLdRfVar from_stack_1.htmFile
  loc_B7AB53: LdPrVar
  loc_B7AB55: LateMemCall
  loc_B7AB5B: FLdPr Me
  loc_B7AB5E: MemLdI2 global_108
  loc_B7AB61: CI4UI1
  loc_B7AB62: FLdPr Me
  loc_B7AB65: MemLdI2 global_106
  loc_B7AB68: CI4UI1
  loc_B7AB69: FLdPr Me
  loc_B7AB6C: MemLdI2 global_104
  loc_B7AB6F: CI4UI1
  loc_B7AB70: FLdPr Me
  loc_B7AB73: MemLdStr global_100
  loc_B7AB76: AryLock
  loc_B7AB79: Ary1LdPr
  loc_B7AB7A: MemLdStr global_8
  loc_B7AB7D: AryLock
  loc_B7AB80: Ary1LdPr
  loc_B7AB81: MemLdStr global_32
  loc_B7AB84: AryLock
  loc_B7AB87: Ary1LdPr
  loc_B7AB88: MemLdRfVar from_stack_1.global_0
  loc_B7AB8B: FStR4 var_EC
  loc_B7AB8E: LitI4 0
  loc_B7AB93: LitI4 0
  loc_B7AB98: LitI2_Byte 0
  loc_B7AB9A: LitStr "left"
  loc_B7AB9D: LitStr "&nbsp;&nbsp;"
  loc_B7ABA0: FMemLdR4 var_EC(0)
  loc_B7ABA5: ConcatStr
  loc_B7ABA6: FStStrNoPop var_C0
  loc_B7ABA9: LitStr " - "
  loc_B7ABAC: ConcatStr
  loc_B7ABAD: FStStrNoPop var_C4
  loc_B7ABB0: FMemLdR4 var_EC(4)
  loc_B7ABB5: ConcatStr
  loc_B7ABB6: FStStrNoPop var_C8
  loc_B7ABB9: LitStr "&nbsp;(Subtotal)"
  loc_B7ABBC: ConcatStr
  loc_B7ABBD: FStStrNoPop var_F0
  loc_B7ABC0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7ABC5: CVarStr var_9C
  loc_B7ABC8: PopAdLdVar
  loc_B7ABC9: FLdPr Me
  loc_B7ABCC: MemLdRfVar from_stack_1.htmFile
  loc_B7ABCF: LdPrVar
  loc_B7ABD1: LateMemCall
  loc_B7ABD7: FFreeStr var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B7ABE2: FFree1Var var_9C = ""
  loc_B7ABE5: LitI4 0
  loc_B7ABEA: LitI4 0
  loc_B7ABEF: LitI2_Byte 0
  loc_B7ABF1: LitStr "right"
  loc_B7ABF4: FMemLdR4 var_EC(8)
  loc_B7ABF9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7ABFE: CVarStr var_9C
  loc_B7AC01: PopAdLdVar
  loc_B7AC02: FLdPr Me
  loc_B7AC05: MemLdRfVar from_stack_1.htmFile
  loc_B7AC08: LdPrVar
  loc_B7AC0A: LateMemCall
  loc_B7AC10: FFree1Var var_9C = ""
  loc_B7AC13: LitI4 0
  loc_B7AC18: LitI4 0
  loc_B7AC1D: LitI2_Byte 0
  loc_B7AC1F: LitStr "right"
  loc_B7AC22: FMemLdR4 var_EC(12)
  loc_B7AC27: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7AC2C: CVarStr var_9C
  loc_B7AC2F: PopAdLdVar
  loc_B7AC30: FLdPr Me
  loc_B7AC33: MemLdRfVar from_stack_1.htmFile
  loc_B7AC36: LdPrVar
  loc_B7AC38: LateMemCall
  loc_B7AC3E: FFree1Var var_9C = ""
  loc_B7AC41: LitI4 0
  loc_B7AC46: LitI4 0
  loc_B7AC4B: LitI2_Byte 0
  loc_B7AC4D: LitStr "right"
  loc_B7AC50: FMemLdR4 var_EC(16)
  loc_B7AC55: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7AC5A: CVarStr var_9C
  loc_B7AC5D: PopAdLdVar
  loc_B7AC5E: FLdPr Me
  loc_B7AC61: MemLdRfVar from_stack_1.htmFile
  loc_B7AC64: LdPrVar
  loc_B7AC66: LateMemCall
  loc_B7AC6C: FFree1Var var_9C = ""
  loc_B7AC6F: LitI4 0
  loc_B7AC74: LitI4 0
  loc_B7AC79: LitI2_Byte 0
  loc_B7AC7B: LitStr "right"
  loc_B7AC7E: FMemLdR4 var_EC(20)
  loc_B7AC83: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7AC88: CVarStr var_9C
  loc_B7AC8B: PopAdLdVar
  loc_B7AC8C: FLdPr Me
  loc_B7AC8F: MemLdRfVar from_stack_1.htmFile
  loc_B7AC92: LdPrVar
  loc_B7AC94: LateMemCall
  loc_B7AC9A: FFree1Var var_9C = ""
  loc_B7AC9D: LitI4 0
  loc_B7ACA2: LitI4 0
  loc_B7ACA7: LitI2_Byte 0
  loc_B7ACA9: LitStr "right"
  loc_B7ACAC: FMemLdR4 var_EC(24)
  loc_B7ACB1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7ACB6: CVarStr var_9C
  loc_B7ACB9: PopAdLdVar
  loc_B7ACBA: FLdPr Me
  loc_B7ACBD: MemLdRfVar from_stack_1.htmFile
  loc_B7ACC0: LdPrVar
  loc_B7ACC2: LateMemCall
  loc_B7ACC8: FFree1Var var_9C = ""
  loc_B7ACCB: LitI4 0
  loc_B7ACD0: LitI4 0
  loc_B7ACD5: LitI2_Byte 0
  loc_B7ACD7: LitStr "right"
  loc_B7ACDA: FMemLdR4 var_EC(28)
  loc_B7ACDF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7ACE4: CVarStr var_9C
  loc_B7ACE7: PopAdLdVar
  loc_B7ACE8: FLdPr Me
  loc_B7ACEB: MemLdRfVar from_stack_1.htmFile
  loc_B7ACEE: LdPrVar
  loc_B7ACF0: LateMemCall
  loc_B7ACF6: FFree1Var var_9C = ""
  loc_B7ACF9: LitI4 0
  loc_B7ACFE: FStR4 var_EC
  loc_B7AD01: AryUnlock
  loc_B7AD04: AryUnlock
  loc_B7AD07: AryUnlock
  loc_B7AD0A: LitVarStr var_AC, "     </tr>"
  loc_B7AD0F: PopAdLdVar
  loc_B7AD10: FLdPr Me
  loc_B7AD13: MemLdRfVar from_stack_1.htmFile
  loc_B7AD16: LdPrVar
  loc_B7AD18: LateMemCall
  loc_B7AD1E: LitI2_Byte 1
  loc_B7AD20: FLdPr Me
  loc_B7AD23: MemLdRfVar from_stack_1.global_110
  loc_B7AD26: FLdPr Me
  loc_B7AD29: MemLdI2 global_108
  loc_B7AD2C: CI4UI1
  loc_B7AD2D: FLdPr Me
  loc_B7AD30: MemLdI2 global_106
  loc_B7AD33: CI4UI1
  loc_B7AD34: FLdPr Me
  loc_B7AD37: MemLdI2 global_104
  loc_B7AD3A: CI4UI1
  loc_B7AD3B: FLdPr Me
  loc_B7AD3E: MemLdStr global_100
  loc_B7AD41: Ary1LdPr
  loc_B7AD42: MemLdStr global_8
  loc_B7AD45: Ary1LdPr
  loc_B7AD46: MemLdStr global_32
  loc_B7AD49: Ary1LdPr
  loc_B7AD4A: MemLdStr global_32
  loc_B7AD4D: LitI2_Byte 1
  loc_B7AD4F: FnUBound
  loc_B7AD51: CI2I4
  loc_B7AD52: ForI2 var_F4
  loc_B7AD58: LitVarStr var_AC, "  <tr align=""left"" class=""Totales3"">"
  loc_B7AD5D: PopAdLdVar
  loc_B7AD5E: FLdPr Me
  loc_B7AD61: MemLdRfVar from_stack_1.htmFile
  loc_B7AD64: LdPrVar
  loc_B7AD66: LateMemCall
  loc_B7AD6C: FLdPr Me
  loc_B7AD6F: MemLdI2 global_110
  loc_B7AD72: CI4UI1
  loc_B7AD73: FLdPr Me
  loc_B7AD76: MemLdI2 global_108
  loc_B7AD79: CI4UI1
  loc_B7AD7A: FLdPr Me
  loc_B7AD7D: MemLdI2 global_106
  loc_B7AD80: CI4UI1
  loc_B7AD81: FLdPr Me
  loc_B7AD84: MemLdI2 global_104
  loc_B7AD87: CI4UI1
  loc_B7AD88: FLdPr Me
  loc_B7AD8B: MemLdStr global_100
  loc_B7AD8E: AryLock
  loc_B7AD91: Ary1LdPr
  loc_B7AD92: MemLdStr global_8
  loc_B7AD95: AryLock
  loc_B7AD98: Ary1LdPr
  loc_B7AD99: MemLdStr global_32
  loc_B7AD9C: AryLock
  loc_B7AD9F: Ary1LdPr
  loc_B7ADA0: MemLdStr global_32
  loc_B7ADA3: AryLock
  loc_B7ADA6: Ary1LdPr
  loc_B7ADA7: MemLdRfVar from_stack_1.global_0
  loc_B7ADAA: FStR4 var_108
  loc_B7ADAD: LitI4 0
  loc_B7ADB2: LitI4 0
  loc_B7ADB7: LitI2_Byte 0
  loc_B7ADB9: LitStr "left"
  loc_B7ADBC: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_B7ADBF: FMemLdR4 var_108(0)
  loc_B7ADC4: ConcatStr
  loc_B7ADC5: FStStrNoPop var_C0
  loc_B7ADC8: LitStr " - "
  loc_B7ADCB: ConcatStr
  loc_B7ADCC: FStStrNoPop var_C4
  loc_B7ADCF: FMemLdR4 var_108(4)
  loc_B7ADD4: ConcatStr
  loc_B7ADD5: FStStrNoPop var_C8
  loc_B7ADD8: LitStr "&nbsp;(Subtotal)"
  loc_B7ADDB: ConcatStr
  loc_B7ADDC: FStStrNoPop var_F0
  loc_B7ADDF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7ADE4: CVarStr var_9C
  loc_B7ADE7: PopAdLdVar
  loc_B7ADE8: FLdPr Me
  loc_B7ADEB: MemLdRfVar from_stack_1.htmFile
  loc_B7ADEE: LdPrVar
  loc_B7ADF0: LateMemCall
  loc_B7ADF6: FFreeStr var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B7AE01: FFree1Var var_9C = ""
  loc_B7AE04: LitI4 0
  loc_B7AE09: LitI4 0
  loc_B7AE0E: LitI2_Byte 0
  loc_B7AE10: LitStr "right"
  loc_B7AE13: FMemLdR4 var_108(8)
  loc_B7AE18: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7AE1D: CVarStr var_9C
  loc_B7AE20: PopAdLdVar
  loc_B7AE21: FLdPr Me
  loc_B7AE24: MemLdRfVar from_stack_1.htmFile
  loc_B7AE27: LdPrVar
  loc_B7AE29: LateMemCall
  loc_B7AE2F: FFree1Var var_9C = ""
  loc_B7AE32: LitI4 0
  loc_B7AE37: LitI4 0
  loc_B7AE3C: LitI2_Byte 0
  loc_B7AE3E: LitStr "right"
  loc_B7AE41: FMemLdR4 var_108(12)
  loc_B7AE46: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7AE4B: CVarStr var_9C
  loc_B7AE4E: PopAdLdVar
  loc_B7AE4F: FLdPr Me
  loc_B7AE52: MemLdRfVar from_stack_1.htmFile
  loc_B7AE55: LdPrVar
  loc_B7AE57: LateMemCall
  loc_B7AE5D: FFree1Var var_9C = ""
  loc_B7AE60: LitI4 0
  loc_B7AE65: LitI4 0
  loc_B7AE6A: LitI2_Byte 0
  loc_B7AE6C: LitStr "right"
  loc_B7AE6F: FMemLdR4 var_108(16)
  loc_B7AE74: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7AE79: CVarStr var_9C
  loc_B7AE7C: PopAdLdVar
  loc_B7AE7D: FLdPr Me
  loc_B7AE80: MemLdRfVar from_stack_1.htmFile
  loc_B7AE83: LdPrVar
  loc_B7AE85: LateMemCall
  loc_B7AE8B: FFree1Var var_9C = ""
  loc_B7AE8E: LitI4 0
  loc_B7AE93: LitI4 0
  loc_B7AE98: LitI2_Byte 0
  loc_B7AE9A: LitStr "right"
  loc_B7AE9D: FMemLdR4 var_108(20)
  loc_B7AEA2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7AEA7: CVarStr var_9C
  loc_B7AEAA: PopAdLdVar
  loc_B7AEAB: FLdPr Me
  loc_B7AEAE: MemLdRfVar from_stack_1.htmFile
  loc_B7AEB1: LdPrVar
  loc_B7AEB3: LateMemCall
  loc_B7AEB9: FFree1Var var_9C = ""
  loc_B7AEBC: LitI4 0
  loc_B7AEC1: LitI4 0
  loc_B7AEC6: LitI2_Byte 0
  loc_B7AEC8: LitStr "right"
  loc_B7AECB: FMemLdR4 var_108(24)
  loc_B7AED0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7AED5: CVarStr var_9C
  loc_B7AED8: PopAdLdVar
  loc_B7AED9: FLdPr Me
  loc_B7AEDC: MemLdRfVar from_stack_1.htmFile
  loc_B7AEDF: LdPrVar
  loc_B7AEE1: LateMemCall
  loc_B7AEE7: FFree1Var var_9C = ""
  loc_B7AEEA: LitI4 0
  loc_B7AEEF: LitI4 0
  loc_B7AEF4: LitI2_Byte 0
  loc_B7AEF6: LitStr "right"
  loc_B7AEF9: FMemLdR4 var_108(28)
  loc_B7AEFE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7AF03: CVarStr var_9C
  loc_B7AF06: PopAdLdVar
  loc_B7AF07: FLdPr Me
  loc_B7AF0A: MemLdRfVar from_stack_1.htmFile
  loc_B7AF0D: LdPrVar
  loc_B7AF0F: LateMemCall
  loc_B7AF15: FFree1Var var_9C = ""
  loc_B7AF18: LitI4 0
  loc_B7AF1D: FStR4 var_108
  loc_B7AF20: AryUnlock
  loc_B7AF23: AryUnlock
  loc_B7AF26: AryUnlock
  loc_B7AF29: AryUnlock
  loc_B7AF2C: LitVarStr var_AC, "     </tr>"
  loc_B7AF31: PopAdLdVar
  loc_B7AF32: FLdPr Me
  loc_B7AF35: MemLdRfVar from_stack_1.htmFile
  loc_B7AF38: LdPrVar
  loc_B7AF3A: LateMemCall
  loc_B7AF40: FLdPr Me
  loc_B7AF43: VCallAd Control_ID_optAnalitico
  loc_B7AF46: CVarAd
  loc_B7AF4A: CBoolVarNull
  loc_B7AF4C: FFree1Var var_9C = ""
  loc_B7AF4F: BranchF loc_B7B18F
  loc_B7AF52: LitI2_Byte 1
  loc_B7AF54: FLdPr Me
  loc_B7AF57: MemLdRfVar from_stack_1.global_112
  loc_B7AF5A: FLdPr Me
  loc_B7AF5D: MemLdI2 global_110
  loc_B7AF60: CI4UI1
  loc_B7AF61: FLdPr Me
  loc_B7AF64: MemLdI2 global_108
  loc_B7AF67: CI4UI1
  loc_B7AF68: FLdPr Me
  loc_B7AF6B: MemLdI2 global_106
  loc_B7AF6E: CI4UI1
  loc_B7AF6F: FLdPr Me
  loc_B7AF72: MemLdI2 global_104
  loc_B7AF75: CI4UI1
  loc_B7AF76: FLdPr Me
  loc_B7AF79: MemLdStr global_100
  loc_B7AF7C: Ary1LdPr
  loc_B7AF7D: MemLdStr global_8
  loc_B7AF80: Ary1LdPr
  loc_B7AF81: MemLdStr global_32
  loc_B7AF84: Ary1LdPr
  loc_B7AF85: MemLdStr global_32
  loc_B7AF88: Ary1LdPr
  loc_B7AF89: MemLdStr global_32
  loc_B7AF8C: LitI2_Byte 1
  loc_B7AF8E: FnUBound
  loc_B7AF90: CI2I4
  loc_B7AF91: ForI2 var_10C
  loc_B7AF97: LitVarStr var_AC, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B7AF9C: PopAdLdVar
  loc_B7AF9D: FLdPr Me
  loc_B7AFA0: MemLdRfVar from_stack_1.htmFile
  loc_B7AFA3: LdPrVar
  loc_B7AFA5: LateMemCall
  loc_B7AFAB: FLdPr Me
  loc_B7AFAE: MemLdI2 global_112
  loc_B7AFB1: CI4UI1
  loc_B7AFB2: FLdPr Me
  loc_B7AFB5: MemLdI2 global_110
  loc_B7AFB8: CI4UI1
  loc_B7AFB9: FLdPr Me
  loc_B7AFBC: MemLdI2 global_108
  loc_B7AFBF: CI4UI1
  loc_B7AFC0: FLdPr Me
  loc_B7AFC3: MemLdI2 global_106
  loc_B7AFC6: CI4UI1
  loc_B7AFC7: FLdPr Me
  loc_B7AFCA: MemLdI2 global_104
  loc_B7AFCD: CI4UI1
  loc_B7AFCE: FLdPr Me
  loc_B7AFD1: MemLdStr global_100
  loc_B7AFD4: AryLock
  loc_B7AFD7: Ary1LdPr
  loc_B7AFD8: MemLdStr global_8
  loc_B7AFDB: AryLock
  loc_B7AFDE: Ary1LdPr
  loc_B7AFDF: MemLdStr global_32
  loc_B7AFE2: AryLock
  loc_B7AFE5: Ary1LdPr
  loc_B7AFE6: MemLdStr global_32
  loc_B7AFE9: AryLock
  loc_B7AFEC: Ary1LdPr
  loc_B7AFED: MemLdStr global_32
  loc_B7AFF0: AryLock
  loc_B7AFF3: Ary1LdRf
  loc_B7AFF4: FStR4 var_124
  loc_B7AFF7: LitI4 0
  loc_B7AFFC: LitI4 0
  loc_B7B001: LitI2_Byte 0
  loc_B7B003: LitStr "left"
  loc_B7B006: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_B7B009: FMemLdR4 var_124(0)
  loc_B7B00E: ConcatStr
  loc_B7B00F: FStStrNoPop var_C0
  loc_B7B012: LitStr " - "
  loc_B7B015: ConcatStr
  loc_B7B016: FStStrNoPop var_C4
  loc_B7B019: FMemLdR4 var_124(4)
  loc_B7B01E: ConcatStr
  loc_B7B01F: FStStrNoPop var_C8
  loc_B7B022: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B027: CVarStr var_9C
  loc_B7B02A: PopAdLdVar
  loc_B7B02B: FLdPr Me
  loc_B7B02E: MemLdRfVar from_stack_1.htmFile
  loc_B7B031: LdPrVar
  loc_B7B033: LateMemCall
  loc_B7B039: FFreeStr var_C0 = "": var_C4 = ""
  loc_B7B042: FFree1Var var_9C = ""
  loc_B7B045: LitI4 0
  loc_B7B04A: LitI4 0
  loc_B7B04F: LitI2_Byte 0
  loc_B7B051: LitStr "right"
  loc_B7B054: FMemLdR4 var_124(8)
  loc_B7B059: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B05E: CVarStr var_9C
  loc_B7B061: PopAdLdVar
  loc_B7B062: FLdPr Me
  loc_B7B065: MemLdRfVar from_stack_1.htmFile
  loc_B7B068: LdPrVar
  loc_B7B06A: LateMemCall
  loc_B7B070: FFree1Var var_9C = ""
  loc_B7B073: LitI4 0
  loc_B7B078: LitI4 0
  loc_B7B07D: LitI2_Byte 0
  loc_B7B07F: LitStr "right"
  loc_B7B082: FMemLdR4 var_124(12)
  loc_B7B087: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B08C: CVarStr var_9C
  loc_B7B08F: PopAdLdVar
  loc_B7B090: FLdPr Me
  loc_B7B093: MemLdRfVar from_stack_1.htmFile
  loc_B7B096: LdPrVar
  loc_B7B098: LateMemCall
  loc_B7B09E: FFree1Var var_9C = ""
  loc_B7B0A1: LitI4 0
  loc_B7B0A6: LitI4 0
  loc_B7B0AB: LitI2_Byte 0
  loc_B7B0AD: LitStr "right"
  loc_B7B0B0: FMemLdR4 var_124(16)
  loc_B7B0B5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B0BA: CVarStr var_9C
  loc_B7B0BD: PopAdLdVar
  loc_B7B0BE: FLdPr Me
  loc_B7B0C1: MemLdRfVar from_stack_1.htmFile
  loc_B7B0C4: LdPrVar
  loc_B7B0C6: LateMemCall
  loc_B7B0CC: FFree1Var var_9C = ""
  loc_B7B0CF: LitI4 0
  loc_B7B0D4: LitI4 0
  loc_B7B0D9: LitI2_Byte 0
  loc_B7B0DB: LitStr "right"
  loc_B7B0DE: FMemLdR4 var_124(20)
  loc_B7B0E3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B0E8: CVarStr var_9C
  loc_B7B0EB: PopAdLdVar
  loc_B7B0EC: FLdPr Me
  loc_B7B0EF: MemLdRfVar from_stack_1.htmFile
  loc_B7B0F2: LdPrVar
  loc_B7B0F4: LateMemCall
  loc_B7B0FA: FFree1Var var_9C = ""
  loc_B7B0FD: LitI4 0
  loc_B7B102: LitI4 0
  loc_B7B107: LitI2_Byte 0
  loc_B7B109: LitStr "right"
  loc_B7B10C: FMemLdR4 var_124(24)
  loc_B7B111: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B116: CVarStr var_9C
  loc_B7B119: PopAdLdVar
  loc_B7B11A: FLdPr Me
  loc_B7B11D: MemLdRfVar from_stack_1.htmFile
  loc_B7B120: LdPrVar
  loc_B7B122: LateMemCall
  loc_B7B128: FFree1Var var_9C = ""
  loc_B7B12B: LitI4 0
  loc_B7B130: LitI4 0
  loc_B7B135: LitI2_Byte 0
  loc_B7B137: LitStr "right"
  loc_B7B13A: FMemLdR4 var_124(28)
  loc_B7B13F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B144: CVarStr var_9C
  loc_B7B147: PopAdLdVar
  loc_B7B148: FLdPr Me
  loc_B7B14B: MemLdRfVar from_stack_1.htmFile
  loc_B7B14E: LdPrVar
  loc_B7B150: LateMemCall
  loc_B7B156: FFree1Var var_9C = ""
  loc_B7B159: LitI4 0
  loc_B7B15E: FStR4 var_124
  loc_B7B161: AryUnlock
  loc_B7B164: AryUnlock
  loc_B7B167: AryUnlock
  loc_B7B16A: AryUnlock
  loc_B7B16D: AryUnlock
  loc_B7B170: LitVarStr var_AC, "     </tr>"
  loc_B7B175: PopAdLdVar
  loc_B7B176: FLdPr Me
  loc_B7B179: MemLdRfVar from_stack_1.htmFile
  loc_B7B17C: LdPrVar
  loc_B7B17E: LateMemCall
  loc_B7B184: FLdPr Me
  loc_B7B187: MemLdRfVar from_stack_1.global_112
  loc_B7B18A: NextI2 var_10C, loc_B7AF97
  loc_B7B18F: FLdPr Me
  loc_B7B192: MemLdRfVar from_stack_1.global_110
  loc_B7B195: NextI2 var_F4, loc_B7AD58
  loc_B7B19A: FLdPr Me
  loc_B7B19D: MemLdRfVar from_stack_1.global_108
  loc_B7B1A0: NextI2 var_DC, loc_B7AB47
  loc_B7B1A5: FLdPr Me
  loc_B7B1A8: MemLdRfVar from_stack_1.global_106
  loc_B7B1AB: NextI2 var_CC, loc_B7A95B
  loc_B7B1B0: FLdPr Me
  loc_B7B1B3: VCallAd Control_ID_optJurisdiccion
  loc_B7B1B6: CVarAd
  loc_B7B1BA: CBoolVarNull
  loc_B7B1BC: FFree1Var var_9C = ""
  loc_B7B1BF: BranchF loc_B7B364
  loc_B7B1C2: FLdPr Me
  loc_B7B1C5: MemLdI2 global_104
  loc_B7B1C8: CI4UI1
  loc_B7B1C9: FLdPr Me
  loc_B7B1CC: MemLdStr global_100
  loc_B7B1CF: AryLock
  loc_B7B1D2: Ary1LdPr
  loc_B7B1D3: MemLdRfVar from_stack_1.global_12
  loc_B7B1D6: FStR4 var_12C
  loc_B7B1D9: LitVarStr var_AC, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_B7B1DE: PopAdLdVar
  loc_B7B1DF: FLdPr Me
  loc_B7B1E2: MemLdRfVar from_stack_1.htmFile
  loc_B7B1E5: LdPrVar
  loc_B7B1E7: LateMemCall
  loc_B7B1ED: LitI4 0
  loc_B7B1F2: LitI4 0
  loc_B7B1F7: LitI2_Byte 0
  loc_B7B1F9: LitStr "right"
  loc_B7B1FC: LitStr "Subtotal Juris."
  loc_B7B1FF: FLdPr Me
  loc_B7B202: MemLdI2 global_104
  loc_B7B205: CI4UI1
  loc_B7B206: FLdPr Me
  loc_B7B209: MemLdStr global_100
  loc_B7B20C: Ary1LdPr
  loc_B7B20D: MemLdStr global_0
  loc_B7B210: ConcatStr
  loc_B7B211: FStStrNoPop var_C0
  loc_B7B214: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B219: CVarStr var_9C
  loc_B7B21C: PopAdLdVar
  loc_B7B21D: FLdPr Me
  loc_B7B220: MemLdRfVar from_stack_1.htmFile
  loc_B7B223: LdPrVar
  loc_B7B225: LateMemCall
  loc_B7B22B: FFree1Str var_C0
  loc_B7B22E: FFree1Var var_9C = ""
  loc_B7B231: LitI4 0
  loc_B7B236: LitI4 0
  loc_B7B23B: LitI2_Byte 0
  loc_B7B23D: LitStr "right"
  loc_B7B240: FMemLdR4 var_12C(8)
  loc_B7B245: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B24A: CVarStr var_9C
  loc_B7B24D: PopAdLdVar
  loc_B7B24E: FLdPr Me
  loc_B7B251: MemLdRfVar from_stack_1.htmFile
  loc_B7B254: LdPrVar
  loc_B7B256: LateMemCall
  loc_B7B25C: FFree1Var var_9C = ""
  loc_B7B25F: LitI4 0
  loc_B7B264: LitI4 0
  loc_B7B269: LitI2_Byte 0
  loc_B7B26B: LitStr "right"
  loc_B7B26E: FMemLdR4 var_12C(12)
  loc_B7B273: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B278: CVarStr var_9C
  loc_B7B27B: PopAdLdVar
  loc_B7B27C: FLdPr Me
  loc_B7B27F: MemLdRfVar from_stack_1.htmFile
  loc_B7B282: LdPrVar
  loc_B7B284: LateMemCall
  loc_B7B28A: FFree1Var var_9C = ""
  loc_B7B28D: LitI4 0
  loc_B7B292: LitI4 0
  loc_B7B297: LitI2_Byte 0
  loc_B7B299: LitStr "right"
  loc_B7B29C: FMemLdR4 var_12C(16)
  loc_B7B2A1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B2A6: CVarStr var_9C
  loc_B7B2A9: PopAdLdVar
  loc_B7B2AA: FLdPr Me
  loc_B7B2AD: MemLdRfVar from_stack_1.htmFile
  loc_B7B2B0: LdPrVar
  loc_B7B2B2: LateMemCall
  loc_B7B2B8: FFree1Var var_9C = ""
  loc_B7B2BB: LitI4 0
  loc_B7B2C0: LitI4 0
  loc_B7B2C5: LitI2_Byte 0
  loc_B7B2C7: LitStr "right"
  loc_B7B2CA: FMemLdR4 var_12C(20)
  loc_B7B2CF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B2D4: CVarStr var_9C
  loc_B7B2D7: PopAdLdVar
  loc_B7B2D8: FLdPr Me
  loc_B7B2DB: MemLdRfVar from_stack_1.htmFile
  loc_B7B2DE: LdPrVar
  loc_B7B2E0: LateMemCall
  loc_B7B2E6: FFree1Var var_9C = ""
  loc_B7B2E9: LitI4 0
  loc_B7B2EE: LitI4 0
  loc_B7B2F3: LitI2_Byte 0
  loc_B7B2F5: LitStr "right"
  loc_B7B2F8: FMemLdR4 var_12C(24)
  loc_B7B2FD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B302: CVarStr var_9C
  loc_B7B305: PopAdLdVar
  loc_B7B306: FLdPr Me
  loc_B7B309: MemLdRfVar from_stack_1.htmFile
  loc_B7B30C: LdPrVar
  loc_B7B30E: LateMemCall
  loc_B7B314: FFree1Var var_9C = ""
  loc_B7B317: LitI4 0
  loc_B7B31C: LitI4 0
  loc_B7B321: LitI2_Byte 0
  loc_B7B323: LitStr "right"
  loc_B7B326: FMemLdR4 var_12C(28)
  loc_B7B32B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B330: CVarStr var_9C
  loc_B7B333: PopAdLdVar
  loc_B7B334: FLdPr Me
  loc_B7B337: MemLdRfVar from_stack_1.htmFile
  loc_B7B33A: LdPrVar
  loc_B7B33C: LateMemCall
  loc_B7B342: FFree1Var var_9C = ""
  loc_B7B345: LitVarStr var_AC, "     </tr>"
  loc_B7B34A: PopAdLdVar
  loc_B7B34B: FLdPr Me
  loc_B7B34E: MemLdRfVar from_stack_1.htmFile
  loc_B7B351: LdPrVar
  loc_B7B353: LateMemCall
  loc_B7B359: LitI4 0
  loc_B7B35E: FStR4 var_12C
  loc_B7B361: AryUnlock
  loc_B7B364: FLdPr Me
  loc_B7B367: MemLdRfVar from_stack_1.global_104
  loc_B7B36A: NextI2 var_8C, loc_B7A8A7
  loc_B7B36F: LitI4 1
  loc_B7B374: FLdPr Me
  loc_B7B377: MemLdStr global_116
  loc_B7B37A: AryLock
  loc_B7B37D: Ary1LdRf
  loc_B7B37E: FStR4 var_134
  loc_B7B381: LitVarStr var_AC, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_B7B386: PopAdLdVar
  loc_B7B387: FLdPr Me
  loc_B7B38A: MemLdRfVar from_stack_1.htmFile
  loc_B7B38D: LdPrVar
  loc_B7B38F: LateMemCall
  loc_B7B395: LitI4 0
  loc_B7B39A: LitI4 0
  loc_B7B39F: LitI2_Byte 0
  loc_B7B3A1: LitStr "right"
  loc_B7B3A4: LitStr "TOTAL GENERAL"
  loc_B7B3A7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B3AC: CVarStr var_9C
  loc_B7B3AF: PopAdLdVar
  loc_B7B3B0: FLdPr Me
  loc_B7B3B3: MemLdRfVar from_stack_1.htmFile
  loc_B7B3B6: LdPrVar
  loc_B7B3B8: LateMemCall
  loc_B7B3BE: FFree1Var var_9C = ""
  loc_B7B3C1: LitI4 0
  loc_B7B3C6: LitI4 0
  loc_B7B3CB: LitI2_Byte 0
  loc_B7B3CD: LitStr "right"
  loc_B7B3D0: FMemLdR4 var_134(8)
  loc_B7B3D5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B3DA: CVarStr var_9C
  loc_B7B3DD: PopAdLdVar
  loc_B7B3DE: FLdPr Me
  loc_B7B3E1: MemLdRfVar from_stack_1.htmFile
  loc_B7B3E4: LdPrVar
  loc_B7B3E6: LateMemCall
  loc_B7B3EC: FFree1Var var_9C = ""
  loc_B7B3EF: LitI4 0
  loc_B7B3F4: LitI4 0
  loc_B7B3F9: LitI2_Byte 0
  loc_B7B3FB: LitStr "right"
  loc_B7B3FE: FMemLdR4 var_134(12)
  loc_B7B403: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B408: CVarStr var_9C
  loc_B7B40B: PopAdLdVar
  loc_B7B40C: FLdPr Me
  loc_B7B40F: MemLdRfVar from_stack_1.htmFile
  loc_B7B412: LdPrVar
  loc_B7B414: LateMemCall
  loc_B7B41A: FFree1Var var_9C = ""
  loc_B7B41D: LitI4 0
  loc_B7B422: LitI4 0
  loc_B7B427: LitI2_Byte 0
  loc_B7B429: LitStr "right"
  loc_B7B42C: FMemLdR4 var_134(16)
  loc_B7B431: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B436: CVarStr var_9C
  loc_B7B439: PopAdLdVar
  loc_B7B43A: FLdPr Me
  loc_B7B43D: MemLdRfVar from_stack_1.htmFile
  loc_B7B440: LdPrVar
  loc_B7B442: LateMemCall
  loc_B7B448: FFree1Var var_9C = ""
  loc_B7B44B: LitI4 0
  loc_B7B450: LitI4 0
  loc_B7B455: LitI2_Byte 0
  loc_B7B457: LitStr "right"
  loc_B7B45A: FMemLdR4 var_134(20)
  loc_B7B45F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B464: CVarStr var_9C
  loc_B7B467: PopAdLdVar
  loc_B7B468: FLdPr Me
  loc_B7B46B: MemLdRfVar from_stack_1.htmFile
  loc_B7B46E: LdPrVar
  loc_B7B470: LateMemCall
  loc_B7B476: FFree1Var var_9C = ""
  loc_B7B479: LitI4 0
  loc_B7B47E: LitI4 0
  loc_B7B483: LitI2_Byte 0
  loc_B7B485: LitStr "right"
  loc_B7B488: FMemLdR4 var_134(24)
  loc_B7B48D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B492: CVarStr var_9C
  loc_B7B495: PopAdLdVar
  loc_B7B496: FLdPr Me
  loc_B7B499: MemLdRfVar from_stack_1.htmFile
  loc_B7B49C: LdPrVar
  loc_B7B49E: LateMemCall
  loc_B7B4A4: FFree1Var var_9C = ""
  loc_B7B4A7: LitI4 0
  loc_B7B4AC: LitI4 0
  loc_B7B4B1: LitI2_Byte 0
  loc_B7B4B3: LitStr "right"
  loc_B7B4B6: FMemLdR4 var_134(28)
  loc_B7B4BB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7B4C0: CVarStr var_9C
  loc_B7B4C3: PopAdLdVar
  loc_B7B4C4: FLdPr Me
  loc_B7B4C7: MemLdRfVar from_stack_1.htmFile
  loc_B7B4CA: LdPrVar
  loc_B7B4CC: LateMemCall
  loc_B7B4D2: FFree1Var var_9C = ""
  loc_B7B4D5: LitVarStr var_AC, "     </tr>"
  loc_B7B4DA: PopAdLdVar
  loc_B7B4DB: FLdPr Me
  loc_B7B4DE: MemLdRfVar from_stack_1.htmFile
  loc_B7B4E1: LdPrVar
  loc_B7B4E3: LateMemCall
  loc_B7B4E9: LitI4 0
  loc_B7B4EE: FStR4 var_134
  loc_B7B4F1: AryUnlock
  loc_B7B4F4: Call Proc_162_27_9ECA8C()
  loc_B7B4F9: FLdPr Me
  loc_B7B4FC: MemLdRfVar from_stack_1.htmFile
  loc_B7B4FF: LdPrVar
  loc_B7B501: LateMemCall
  loc_B7B507: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B7B50C: ExitProcHresult
  loc_B7B50D: ILdI4 arg_345
End Sub

Public Sub GeneraTXT() 'A6F158
  'Data Table: 47DCA0
  loc_A6EDD0: ImpAdCallI2 Proc_261_16_9B9214()
  loc_A6EDD5: FStStrNoPop var_88
  loc_A6EDD8: LitStr "\Acuerdo 3949\"
  loc_A6EDDB: ConcatStr
  loc_A6EDDC: FStStrNoPop var_94
  loc_A6EDDF: FLdRfVar var_90
  loc_A6EDE2: FLdPr Me
  loc_A6EDE5: VCallAd Control_ID_cboPeriodo
  loc_A6EDE8: FStAdFunc var_8C
  loc_A6EDEB: FLdPr var_8C
  loc_A6EDEE:  = Me.Text
  loc_A6EDF3: ILdRf var_90
  loc_A6EDF6: ConcatStr
  loc_A6EDF7: FStStrNoPop var_98
  loc_A6EDFA: LitStr "\Trimestre "
  loc_A6EDFD: ConcatStr
  loc_A6EDFE: FStStrNoPop var_AC
  loc_A6EE01: FLdRfVar var_A8
  loc_A6EE04: FLdRfVar var_9E
  loc_A6EE07: FLdPr Me
  loc_A6EE0A: VCallAd Control_ID_cboTrimestre
  loc_A6EE0D: FStAdFunc var_9C
  loc_A6EE10: FLdPr var_9C
  loc_A6EE13:  = Me.ListIndex
  loc_A6EE18: FLdI2 var_9E
  loc_A6EE1B: FLdPr Me
  loc_A6EE1E: VCallAd Control_ID_cboTrimestre
  loc_A6EE21: FStAdFunc var_A4
  loc_A6EE24: FLdPr var_A4
  loc_A6EE27:  = Me.ItemData
  loc_A6EE2C: ILdRf var_A8
  loc_A6EE2F: CStrI4
  loc_A6EE31: FStStrNoPop var_B0
  loc_A6EE34: ConcatStr
  loc_A6EE35: FStStrNoPop var_B4
  loc_A6EE38: LitStr "\ejeprerelcre.txt"
  loc_A6EE3B: ConcatStr
  loc_A6EE3C: ImpAdStStr MemVar_C3D05C
  loc_A6EE40: FFreeStr var_88 = "": var_94 = "": var_90 = "": var_98 = "": var_AC = "": var_B0 = ""
  loc_A6EE51: FFreeAd var_8C = "": var_9C = ""
  loc_A6EE5A: ImpAdLdI4 MemVar_C3D05C
  loc_A6EE5D: ImpAdCallFPR4 Proc_261_17_9A1230()
  loc_A6EE62: FLdRfVar var_8C
  loc_A6EE65: LitI2_Byte 0
  loc_A6EE67: LitI2_Byte &HFF
  loc_A6EE69: ImpAdLdI4 MemVar_C3D05C
  loc_A6EE6C: FLdPr Me
  loc_A6EE6F: MemLdRfVar from_stack_1.global_80
  loc_A6EE72: NewIfNullPr IFileSystem3
  loc_A6EE75: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A6EE7A: ILdRf var_8C
  loc_A6EE7D: FLdPr Me
  loc_A6EE80: MemStVarAd
  loc_A6EE84: FFree1Ad var_8C
  loc_A6EE87: LitVarStr var_C8, "Ejercicio|Trimestre|Nomenclador|Partida|PartidaDsc|ComCon|Devengado|ManPag|Pagado|VarPasSinOP|VarPasConOP"
  loc_A6EE8C: PopAdLdVar
  loc_A6EE8D: FLdPr Me
  loc_A6EE90: MemLdRfVar from_stack_1.global_84
  loc_A6EE93: LdPrVar
  loc_A6EE95: LateMemCall
  loc_A6EE9B: LitI2_Byte 1
  loc_A6EE9D: FLdPr Me
  loc_A6EEA0: MemLdRfVar from_stack_1.global_104
  loc_A6EEA3: FLdPr Me
  loc_A6EEA6: MemLdStr global_100
  loc_A6EEA9: LitI2_Byte 1
  loc_A6EEAB: FnUBound
  loc_A6EEAD: CI2I4
  loc_A6EEAE: ForI2 var_DC
  loc_A6EEB4: LitI2_Byte 1
  loc_A6EEB6: FLdPr Me
  loc_A6EEB9: MemLdRfVar from_stack_1.global_106
  loc_A6EEBC: FLdPr Me
  loc_A6EEBF: MemLdI2 global_104
  loc_A6EEC2: CI4UI1
  loc_A6EEC3: FLdPr Me
  loc_A6EEC6: MemLdStr global_100
  loc_A6EEC9: Ary1LdPr
  loc_A6EECA: MemLdStr global_8
  loc_A6EECD: LitI2_Byte 1
  loc_A6EECF: FnUBound
  loc_A6EED1: CI2I4
  loc_A6EED2: ForI2 var_E0
  loc_A6EED8: LitI2_Byte 1
  loc_A6EEDA: FLdPr Me
  loc_A6EEDD: MemLdRfVar from_stack_1.global_108
  loc_A6EEE0: FLdPr Me
  loc_A6EEE3: MemLdI2 global_106
  loc_A6EEE6: CI4UI1
  loc_A6EEE7: FLdPr Me
  loc_A6EEEA: MemLdI2 global_104
  loc_A6EEED: CI4UI1
  loc_A6EEEE: FLdPr Me
  loc_A6EEF1: MemLdStr global_100
  loc_A6EEF4: Ary1LdPr
  loc_A6EEF5: MemLdStr global_8
  loc_A6EEF8: Ary1LdPr
  loc_A6EEF9: MemLdStr global_32
  loc_A6EEFC: LitI2_Byte 1
  loc_A6EEFE: FnUBound
  loc_A6EF00: CI2I4
  loc_A6EF01: ForI2 var_E4
  loc_A6EF07: LitI2_Byte 1
  loc_A6EF09: FLdPr Me
  loc_A6EF0C: MemLdRfVar from_stack_1.global_110
  loc_A6EF0F: FLdPr Me
  loc_A6EF12: MemLdI2 global_108
  loc_A6EF15: CI4UI1
  loc_A6EF16: FLdPr Me
  loc_A6EF19: MemLdI2 global_106
  loc_A6EF1C: CI4UI1
  loc_A6EF1D: FLdPr Me
  loc_A6EF20: MemLdI2 global_104
  loc_A6EF23: CI4UI1
  loc_A6EF24: FLdPr Me
  loc_A6EF27: MemLdStr global_100
  loc_A6EF2A: Ary1LdPr
  loc_A6EF2B: MemLdStr global_8
  loc_A6EF2E: Ary1LdPr
  loc_A6EF2F: MemLdStr global_32
  loc_A6EF32: Ary1LdPr
  loc_A6EF33: MemLdStr global_32
  loc_A6EF36: LitI2_Byte 1
  loc_A6EF38: FnUBound
  loc_A6EF3A: CI2I4
  loc_A6EF3B: ForI2 var_E8
  loc_A6EF41: FLdRfVar var_88
  loc_A6EF44: FLdPr Me
  loc_A6EF47: VCallAd Control_ID_cboPeriodo
  loc_A6EF4A: FStAdFunc var_8C
  loc_A6EF4D: FLdPr var_8C
  loc_A6EF50:  = Me.Text
  loc_A6EF55: ILdRf var_88
  loc_A6EF58: LitStr "|"
  loc_A6EF5B: ConcatStr
  loc_A6EF5C: FStStrNoPop var_90
  loc_A6EF5F: FLdRfVar var_A8
  loc_A6EF62: FLdRfVar var_9E
  loc_A6EF65: FLdPr Me
  loc_A6EF68: VCallAd Control_ID_cboTrimestre
  loc_A6EF6B: FStAdFunc var_9C
  loc_A6EF6E: FLdPr var_9C
  loc_A6EF71:  = Me.ListIndex
  loc_A6EF76: FLdI2 var_9E
  loc_A6EF79: FLdPr Me
  loc_A6EF7C: VCallAd Control_ID_cboTrimestre
  loc_A6EF7F: FStAdFunc var_A4
  loc_A6EF82: FLdPr var_A4
  loc_A6EF85:  = Me.ItemData
  loc_A6EF8A: ILdRf var_A8
  loc_A6EF8D: CStrI4
  loc_A6EF8F: FStStrNoPop var_94
  loc_A6EF92: ConcatStr
  loc_A6EF93: FStStrNoPop var_98
  loc_A6EF96: LitStr "|"
  loc_A6EF99: ConcatStr
  loc_A6EF9A: FStStrNoPop var_AC
  loc_A6EF9D: LitStr "060204"
  loc_A6EFA0: ConcatStr
  loc_A6EFA1: FStStr var_B8
  loc_A6EFA4: FFreeStr var_88 = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A6EFB1: FFreeAd var_8C = "": var_9C = ""
  loc_A6EFBA: FLdPr Me
  loc_A6EFBD: MemLdI2 global_110
  loc_A6EFC0: CI4UI1
  loc_A6EFC1: FLdPr Me
  loc_A6EFC4: MemLdI2 global_108
  loc_A6EFC7: CI4UI1
  loc_A6EFC8: FLdPr Me
  loc_A6EFCB: MemLdI2 global_106
  loc_A6EFCE: CI4UI1
  loc_A6EFCF: FLdPr Me
  loc_A6EFD2: MemLdI2 global_104
  loc_A6EFD5: CI4UI1
  loc_A6EFD6: FLdPr Me
  loc_A6EFD9: MemLdStr global_100
  loc_A6EFDC: AryLock
  loc_A6EFDF: Ary1LdPr
  loc_A6EFE0: MemLdStr global_8
  loc_A6EFE3: AryLock
  loc_A6EFE6: Ary1LdPr
  loc_A6EFE7: MemLdStr global_32
  loc_A6EFEA: AryLock
  loc_A6EFED: Ary1LdPr
  loc_A6EFEE: MemLdStr global_32
  loc_A6EFF1: AryLock
  loc_A6EFF4: Ary1LdPr
  loc_A6EFF5: MemLdRfVar from_stack_1.global_0
  loc_A6EFF8: FStR4 var_FC
  loc_A6EFFB: ILdRf var_B8
  loc_A6EFFE: LitStr "|"
  loc_A6F001: ConcatStr
  loc_A6F002: FStStrNoPop var_88
  loc_A6F005: FMemLdR4 var_FC(0)
  loc_A6F00A: ConcatStr
  loc_A6F00B: FStStr var_B8
  loc_A6F00E: FFree1Str var_88
  loc_A6F011: ILdRf var_B8
  loc_A6F014: LitStr "|"
  loc_A6F017: ConcatStr
  loc_A6F018: FStStrNoPop var_88
  loc_A6F01B: FMemLdR4 var_FC(4)
  loc_A6F020: ConcatStr
  loc_A6F021: FStStr var_B8
  loc_A6F024: FFree1Str var_88
  loc_A6F027: ILdRf var_B8
  loc_A6F02A: LitStr "|"
  loc_A6F02D: ConcatStr
  loc_A6F02E: FStStrNoPop var_88
  loc_A6F031: FMemLdR4 var_FC(8)
  loc_A6F036: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A6F03B: FStStrNoPop var_90
  loc_A6F03E: ConcatStr
  loc_A6F03F: FStStr var_B8
  loc_A6F042: FFreeStr var_88 = ""
  loc_A6F049: ILdRf var_B8
  loc_A6F04C: LitStr "|"
  loc_A6F04F: ConcatStr
  loc_A6F050: FStStrNoPop var_88
  loc_A6F053: FMemLdR4 var_FC(12)
  loc_A6F058: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A6F05D: FStStrNoPop var_90
  loc_A6F060: ConcatStr
  loc_A6F061: FStStr var_B8
  loc_A6F064: FFreeStr var_88 = ""
  loc_A6F06B: ILdRf var_B8
  loc_A6F06E: LitStr "|"
  loc_A6F071: ConcatStr
  loc_A6F072: FStStrNoPop var_88
  loc_A6F075: FMemLdR4 var_FC(16)
  loc_A6F07A: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A6F07F: FStStrNoPop var_90
  loc_A6F082: ConcatStr
  loc_A6F083: FStStr var_B8
  loc_A6F086: FFreeStr var_88 = ""
  loc_A6F08D: ILdRf var_B8
  loc_A6F090: LitStr "|"
  loc_A6F093: ConcatStr
  loc_A6F094: FStStrNoPop var_88
  loc_A6F097: FMemLdR4 var_FC(20)
  loc_A6F09C: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A6F0A1: FStStrNoPop var_90
  loc_A6F0A4: ConcatStr
  loc_A6F0A5: FStStr var_B8
  loc_A6F0A8: FFreeStr var_88 = ""
  loc_A6F0AF: ILdRf var_B8
  loc_A6F0B2: LitStr "|"
  loc_A6F0B5: ConcatStr
  loc_A6F0B6: FStStrNoPop var_88
  loc_A6F0B9: FMemLdR4 var_FC(24)
  loc_A6F0BE: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A6F0C3: FStStrNoPop var_90
  loc_A6F0C6: ConcatStr
  loc_A6F0C7: FStStr var_B8
  loc_A6F0CA: FFreeStr var_88 = ""
  loc_A6F0D1: ILdRf var_B8
  loc_A6F0D4: LitStr "|"
  loc_A6F0D7: ConcatStr
  loc_A6F0D8: FStStrNoPop var_88
  loc_A6F0DB: FMemLdR4 var_FC(28)
  loc_A6F0E0: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A6F0E5: FStStrNoPop var_90
  loc_A6F0E8: ConcatStr
  loc_A6F0E9: FStStr var_B8
  loc_A6F0EC: FFreeStr var_88 = ""
  loc_A6F0F3: LitI4 0
  loc_A6F0F8: FStR4 var_FC
  loc_A6F0FB: AryUnlock
  loc_A6F0FE: AryUnlock
  loc_A6F101: AryUnlock
  loc_A6F104: AryUnlock
  loc_A6F107: FLdRfVar var_B8
  loc_A6F10A: CDargRef
  loc_A6F10E: FLdPr Me
  loc_A6F111: MemLdRfVar from_stack_1.global_84
  loc_A6F114: LdPrVar
  loc_A6F116: LateMemCall
  loc_A6F11C: FLdPr Me
  loc_A6F11F: MemLdRfVar from_stack_1.global_110
  loc_A6F122: NextI2 var_E8, loc_A6EF41
  loc_A6F127: FLdPr Me
  loc_A6F12A: MemLdRfVar from_stack_1.global_108
  loc_A6F12D: NextI2 var_E4, loc_A6EF07
  loc_A6F132: FLdPr Me
  loc_A6F135: MemLdRfVar from_stack_1.global_106
  loc_A6F138: NextI2 var_E0, loc_A6EED8
  loc_A6F13D: FLdPr Me
  loc_A6F140: MemLdRfVar from_stack_1.global_104
  loc_A6F143: NextI2 var_DC, loc_A6EEB4
  loc_A6F148: FLdPr Me
  loc_A6F14B: MemLdRfVar from_stack_1.global_84
  loc_A6F14E: LdPrVar
  loc_A6F150: LateMemCall
  loc_A6F156: ExitProcHresult
  loc_A6F157: LitI2_Byte &H28
End Sub

Private Function Proc_162_19_9E05B4() '9E05B4
  'Data Table: 47DCA0
  loc_9E04AC: FLdPr Me
  loc_9E04AF: MemLdI2 global_104
  loc_9E04B2: LitI2_Byte 1
  loc_9E04B4: AddI2
  loc_9E04B5: FLdPr Me
  loc_9E04B8: MemStI2 global_104
  loc_9E04BB: LitI2_Byte 0
  loc_9E04BD: FLdPr Me
  loc_9E04C0: MemStI2 global_106
  loc_9E04C3: LitI4 1
  loc_9E04C8: FLdPr Me
  loc_9E04CB: MemLdI2 global_104
  loc_9E04CE: CI4UI1
  loc_9E04CF: FLdPr Me
  loc_9E04D2: MemLdRfVar from_stack_1.global_100
  loc_9E04D5: RedimPreserve
  loc_9E04DF: FLdRfVar var_A0
  loc_9E04E2: LitVarStr var_9C, "CodiOrga"
  loc_9E04E7: PopAdLdVar
  loc_9E04E8: FLdRfVar var_8C
  loc_9E04EB: FLdRfVar var_88
  loc_9E04EE: FLdPr Me
  loc_9E04F1: MemLdRfVar from_stack_1.global_72
  loc_9E04F4: NewIfNullPr clsimputacion
  loc_9E04F7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9E04FC: FLdPr var_88
  loc_9E04FF:  = Me.Fields
  loc_9E0504: FLdPr var_8C
  loc_9E0507: from_stack_2 = Me.Item(from_stack_1)
  loc_9E050C: LitI2_Byte 0
  loc_9E050E: LitVar_Missing var_D4
  loc_9E0511: LitI2_Byte 0
  loc_9E0513: FLdZeroAd var_A0
  loc_9E0516: CVarAd
  loc_9E051A: PopAdLdVar
  loc_9E051B: FLdPr Me
  loc_9E051E: MemLdI2 global_104
  loc_9E0521: CI4UI1
  loc_9E0522: FLdPr Me
  loc_9E0525: MemLdStr global_100
  loc_9E0528: AryLock
  loc_9E052B: Ary1LdPr
  loc_9E052C: MemLdRfVar from_stack_1.global_0
  loc_9E052F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E0534: AryUnlock
  loc_9E0537: FFreeAd var_88 = ""
  loc_9E053E: FFreeVar var_B4 = ""
  loc_9E0545: FLdRfVar var_A0
  loc_9E0548: LitVarStr var_9C, "DetaOrga"
  loc_9E054D: PopAdLdVar
  loc_9E054E: FLdRfVar var_8C
  loc_9E0551: FLdRfVar var_88
  loc_9E0554: FLdPr Me
  loc_9E0557: MemLdRfVar from_stack_1.global_72
  loc_9E055A: NewIfNullPr clsimputacion
  loc_9E055D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9E0562: FLdPr var_88
  loc_9E0565:  = Me.Fields
  loc_9E056A: FLdPr var_8C
  loc_9E056D: from_stack_2 = Me.Item(from_stack_1)
  loc_9E0572: LitI2_Byte 0
  loc_9E0574: LitVar_Missing var_D4
  loc_9E0577: LitI2_Byte 0
  loc_9E0579: FLdZeroAd var_A0
  loc_9E057C: CVarAd
  loc_9E0580: PopAdLdVar
  loc_9E0581: FLdPr Me
  loc_9E0584: MemLdI2 global_104
  loc_9E0587: CI4UI1
  loc_9E0588: FLdPr Me
  loc_9E058B: MemLdStr global_100
  loc_9E058E: AryLock
  loc_9E0591: Ary1LdPr
  loc_9E0592: MemLdRfVar from_stack_1.global_4
  loc_9E0595: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E059A: AryUnlock
  loc_9E059D: FFreeAd var_88 = ""
  loc_9E05A4: FFreeVar var_B4 = ""
  loc_9E05AB: Call Proc_162_20_A27514()
  loc_9E05B0: ExitProcHresult
End Function

Private Function Proc_162_20_A27514() 'A27514
  'Data Table: 47DCA0
  loc_A27360: FLdPr Me
  loc_A27363: MemLdI2 global_106
  loc_A27366: LitI2_Byte 1
  loc_A27368: AddI2
  loc_A27369: FLdPr Me
  loc_A2736C: MemStI2 global_106
  loc_A2736F: LitI2_Byte 0
  loc_A27371: FLdPr Me
  loc_A27374: MemStI2 global_108
  loc_A27377: LitI4 1
  loc_A2737C: FLdPr Me
  loc_A2737F: MemLdI2 global_106
  loc_A27382: CI4UI1
  loc_A27383: FLdPr Me
  loc_A27386: MemLdI2 global_104
  loc_A27389: CI4UI1
  loc_A2738A: FLdPr Me
  loc_A2738D: MemLdStr global_100
  loc_A27390: Ary1LdPr
  loc_A27391: MemLdRfVar from_stack_1.global_8
  loc_A27394: RedimPreserve
  loc_A2739E: FLdRfVar var_B0
  loc_A273A1: FLdRfVar var_A0
  loc_A273A4: LitVarStr var_9C, "CodiPart"
  loc_A273A9: PopAdLdVar
  loc_A273AA: FLdRfVar var_8C
  loc_A273AD: FLdRfVar var_88
  loc_A273B0: FLdPr Me
  loc_A273B3: MemLdRfVar from_stack_1.global_72
  loc_A273B6: NewIfNullPr clsimputacion
  loc_A273B9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A273BE: FLdPr var_88
  loc_A273C1:  = Me.Fields
  loc_A273C6: FLdPr var_8C
  loc_A273C9: from_stack_2 = Me.Item(from_stack_1)
  loc_A273CE: FLdPr var_A0
  loc_A273D1:  = Me.Value
  loc_A273D6: LitI4 1
  loc_A273DB: FLdRfVar var_B0
  loc_A273DE: CStrVarTmp
  loc_A273DF: FStStrNoPop var_B4
  loc_A273E2: ImpAdCallI2 Left$(, )
  loc_A273E7: FStStr var_F4
  loc_A273EA: LitI2_Byte 0
  loc_A273EC: LitVar_Missing var_F0
  loc_A273EF: LitI2_Byte 0
  loc_A273F1: FLdZeroAd var_F4
  loc_A273F4: FStStrNoPop var_B8
  loc_A273F7: LitStr "0000000"
  loc_A273FA: ConcatStr
  loc_A273FB: CVarStr var_D0
  loc_A273FE: PopAdLdVar
  loc_A273FF: FLdPr Me
  loc_A27402: MemLdI2 global_106
  loc_A27405: CI4UI1
  loc_A27406: FLdPr Me
  loc_A27409: MemLdI2 global_104
  loc_A2740C: CI4UI1
  loc_A2740D: FLdPr Me
  loc_A27410: MemLdStr global_100
  loc_A27413: AryLock
  loc_A27416: Ary1LdPr
  loc_A27417: MemLdStr global_8
  loc_A2741A: AryLock
  loc_A2741D: Ary1LdPr
  loc_A2741E: MemLdRfVar from_stack_1.global_0
  loc_A27421: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A27426: AryUnlock
  loc_A27429: AryUnlock
  loc_A2742C: FFreeStr var_B4 = "": var_B8 = ""
  loc_A27435: FFreeAd var_88 = "": var_8C = ""
  loc_A2743E: FFreeVar var_B0 = "": var_D0 = ""
  loc_A27447: FLdRfVar var_B0
  loc_A2744A: FLdRfVar var_A0
  loc_A2744D: LitVarStr var_9C, "PeriInfo"
  loc_A27452: PopAdLdVar
  loc_A27453: FLdRfVar var_8C
  loc_A27456: FLdRfVar var_88
  loc_A27459: FLdPr Me
  loc_A2745C: MemLdRfVar from_stack_1.global_72
  loc_A2745F: NewIfNullPr clsimputacion
  loc_A27462: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A27467: FLdPr var_88
  loc_A2746A:  = Me.Fields
  loc_A2746F: FLdPr var_8C
  loc_A27472: from_stack_2 = Me.Item(from_stack_1)
  loc_A27477: FLdPr var_A0
  loc_A2747A:  = Me.Value
  loc_A2747F: FLdPr Me
  loc_A27482: MemLdRfVar from_stack_1.global_76
  loc_A27485: NewIfNullRf
  loc_A27489: FLdPr Me
  loc_A2748C: MemLdI2 global_106
  loc_A2748F: CI4UI1
  loc_A27490: FLdPr Me
  loc_A27493: MemLdI2 global_104
  loc_A27496: CI4UI1
  loc_A27497: FLdPr Me
  loc_A2749A: MemLdStr global_100
  loc_A2749D: Ary1LdPr
  loc_A2749E: MemLdStr global_8
  loc_A274A1: Ary1LdPr
  loc_A274A2: MemLdStr global_0
  loc_A274A5: FLdRfVar var_B0
  loc_A274A8: CI2Var
  loc_A274A9: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_A274AE: FFreeAd var_88 = "": var_8C = ""
  loc_A274B7: FFree1Var var_B0 = ""
  loc_A274BA: FLdRfVar var_B4
  loc_A274BD: FLdPr Me
  loc_A274C0: MemLdRfVar from_stack_1.global_76
  loc_A274C3: NewIfNullPr tblpartida
  loc_A274C6: from_stack_1v = tblpartida.DetaPartGet()
  loc_A274CB: LitI2_Byte 0
  loc_A274CD: LitVar_Missing var_D0
  loc_A274D0: LitI2_Byte 0
  loc_A274D2: FLdZeroAd var_B4
  loc_A274D5: CVarStr var_B0
  loc_A274D8: PopAdLdVar
  loc_A274D9: FLdPr Me
  loc_A274DC: MemLdI2 global_106
  loc_A274DF: CI4UI1
  loc_A274E0: FLdPr Me
  loc_A274E3: MemLdI2 global_104
  loc_A274E6: CI4UI1
  loc_A274E7: FLdPr Me
  loc_A274EA: MemLdStr global_100
  loc_A274ED: AryLock
  loc_A274F0: Ary1LdPr
  loc_A274F1: MemLdStr global_8
  loc_A274F4: AryLock
  loc_A274F7: Ary1LdPr
  loc_A274F8: MemLdRfVar from_stack_1.global_4
  loc_A274FB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A27500: AryUnlock
  loc_A27503: AryUnlock
  loc_A27506: FFreeVar var_B0 = ""
  loc_A2750D: Call Proc_162_21_A32B7C()
  loc_A27512: ExitProcHresult
End Function

Private Function Proc_162_21_A32B7C() 'A32B7C
  'Data Table: 47DCA0
  loc_A32990: FLdPr Me
  loc_A32993: MemLdI2 global_108
  loc_A32996: LitI2_Byte 1
  loc_A32998: AddI2
  loc_A32999: FLdPr Me
  loc_A3299C: MemStI2 global_108
  loc_A3299F: LitI2_Byte 0
  loc_A329A1: FLdPr Me
  loc_A329A4: MemStI2 global_110
  loc_A329A7: LitI4 1
  loc_A329AC: FLdPr Me
  loc_A329AF: MemLdI2 global_108
  loc_A329B2: CI4UI1
  loc_A329B3: FLdPr Me
  loc_A329B6: MemLdI2 global_106
  loc_A329B9: CI4UI1
  loc_A329BA: FLdPr Me
  loc_A329BD: MemLdI2 global_104
  loc_A329C0: CI4UI1
  loc_A329C1: FLdPr Me
  loc_A329C4: MemLdStr global_100
  loc_A329C7: Ary1LdPr
  loc_A329C8: MemLdStr global_8
  loc_A329CB: Ary1LdPr
  loc_A329CC: MemLdRfVar from_stack_1.global_32
  loc_A329CF: RedimPreserve
  loc_A329D9: FLdRfVar var_B0
  loc_A329DC: FLdRfVar var_A0
  loc_A329DF: LitVarStr var_9C, "CodiPart"
  loc_A329E4: PopAdLdVar
  loc_A329E5: FLdRfVar var_8C
  loc_A329E8: FLdRfVar var_88
  loc_A329EB: FLdPr Me
  loc_A329EE: MemLdRfVar from_stack_1.global_72
  loc_A329F1: NewIfNullPr clsimputacion
  loc_A329F4: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A329F9: FLdPr var_88
  loc_A329FC:  = Me.Fields
  loc_A32A01: FLdPr var_8C
  loc_A32A04: from_stack_2 = Me.Item(from_stack_1)
  loc_A32A09: FLdPr var_A0
  loc_A32A0C:  = Me.Value
  loc_A32A11: LitI4 2
  loc_A32A16: FLdRfVar var_B0
  loc_A32A19: CStrVarTmp
  loc_A32A1A: FStStrNoPop var_B4
  loc_A32A1D: ImpAdCallI2 Left$(, )
  loc_A32A22: FStStr var_F8
  loc_A32A25: LitI2_Byte 0
  loc_A32A27: LitVar_Missing var_F4
  loc_A32A2A: LitI2_Byte 0
  loc_A32A2C: FLdZeroAd var_F8
  loc_A32A2F: FStStrNoPop var_B8
  loc_A32A32: LitStr "000000"
  loc_A32A35: ConcatStr
  loc_A32A36: CVarStr var_D4
  loc_A32A39: PopAdLdVar
  loc_A32A3A: FLdPr Me
  loc_A32A3D: MemLdI2 global_108
  loc_A32A40: CI4UI1
  loc_A32A41: FLdPr Me
  loc_A32A44: MemLdI2 global_106
  loc_A32A47: CI4UI1
  loc_A32A48: FLdPr Me
  loc_A32A4B: MemLdI2 global_104
  loc_A32A4E: CI4UI1
  loc_A32A4F: FLdPr Me
  loc_A32A52: MemLdStr global_100
  loc_A32A55: AryLock
  loc_A32A58: Ary1LdPr
  loc_A32A59: MemLdStr global_8
  loc_A32A5C: AryLock
  loc_A32A5F: Ary1LdPr
  loc_A32A60: MemLdStr global_32
  loc_A32A63: AryLock
  loc_A32A66: Ary1LdPr
  loc_A32A67: MemLdRfVar from_stack_1.global_0
  loc_A32A6A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A32A6F: AryUnlock
  loc_A32A72: AryUnlock
  loc_A32A75: AryUnlock
  loc_A32A78: FFreeStr var_B4 = "": var_B8 = ""
  loc_A32A81: FFreeAd var_88 = "": var_8C = ""
  loc_A32A8A: FFreeVar var_B0 = "": var_D4 = ""
  loc_A32A93: FLdRfVar var_B0
  loc_A32A96: FLdRfVar var_A0
  loc_A32A99: LitVarStr var_9C, "PeriInfo"
  loc_A32A9E: PopAdLdVar
  loc_A32A9F: FLdRfVar var_8C
  loc_A32AA2: FLdRfVar var_88
  loc_A32AA5: FLdPr Me
  loc_A32AA8: MemLdRfVar from_stack_1.global_72
  loc_A32AAB: NewIfNullPr clsimputacion
  loc_A32AAE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A32AB3: FLdPr var_88
  loc_A32AB6:  = Me.Fields
  loc_A32ABB: FLdPr var_8C
  loc_A32ABE: from_stack_2 = Me.Item(from_stack_1)
  loc_A32AC3: FLdPr var_A0
  loc_A32AC6:  = Me.Value
  loc_A32ACB: FLdPr Me
  loc_A32ACE: MemLdRfVar from_stack_1.global_76
  loc_A32AD1: NewIfNullRf
  loc_A32AD5: FLdPr Me
  loc_A32AD8: MemLdI2 global_108
  loc_A32ADB: CI4UI1
  loc_A32ADC: FLdPr Me
  loc_A32ADF: MemLdI2 global_106
  loc_A32AE2: CI4UI1
  loc_A32AE3: FLdPr Me
  loc_A32AE6: MemLdI2 global_104
  loc_A32AE9: CI4UI1
  loc_A32AEA: FLdPr Me
  loc_A32AED: MemLdStr global_100
  loc_A32AF0: Ary1LdPr
  loc_A32AF1: MemLdStr global_8
  loc_A32AF4: Ary1LdPr
  loc_A32AF5: MemLdStr global_32
  loc_A32AF8: Ary1LdPr
  loc_A32AF9: MemLdStr global_0
  loc_A32AFC: FLdRfVar var_B0
  loc_A32AFF: CI2Var
  loc_A32B00: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_A32B05: FFreeAd var_88 = "": var_8C = ""
  loc_A32B0E: FFree1Var var_B0 = ""
  loc_A32B11: FLdRfVar var_B4
  loc_A32B14: FLdPr Me
  loc_A32B17: MemLdRfVar from_stack_1.global_76
  loc_A32B1A: NewIfNullPr tblpartida
  loc_A32B1D: from_stack_1v = tblpartida.DetaPartGet()
  loc_A32B22: LitI2_Byte 0
  loc_A32B24: LitVar_Missing var_D4
  loc_A32B27: LitI2_Byte 0
  loc_A32B29: FLdZeroAd var_B4
  loc_A32B2C: CVarStr var_B0
  loc_A32B2F: PopAdLdVar
  loc_A32B30: FLdPr Me
  loc_A32B33: MemLdI2 global_108
  loc_A32B36: CI4UI1
  loc_A32B37: FLdPr Me
  loc_A32B3A: MemLdI2 global_106
  loc_A32B3D: CI4UI1
  loc_A32B3E: FLdPr Me
  loc_A32B41: MemLdI2 global_104
  loc_A32B44: CI4UI1
  loc_A32B45: FLdPr Me
  loc_A32B48: MemLdStr global_100
  loc_A32B4B: AryLock
  loc_A32B4E: Ary1LdPr
  loc_A32B4F: MemLdStr global_8
  loc_A32B52: AryLock
  loc_A32B55: Ary1LdPr
  loc_A32B56: MemLdStr global_32
  loc_A32B59: AryLock
  loc_A32B5C: Ary1LdPr
  loc_A32B5D: MemLdRfVar from_stack_1.global_4
  loc_A32B60: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A32B65: AryUnlock
  loc_A32B68: AryUnlock
  loc_A32B6B: AryUnlock
  loc_A32B6E: FFreeVar var_B0 = ""
  loc_A32B75: Call Proc_162_22_A5C6C0()
  loc_A32B7A: ExitProcHresult
End Function

Private Function Proc_162_22_A5C6C0() 'A5C6C0
  'Data Table: 47DCA0
  loc_A5C3E8: FLdPr Me
  loc_A5C3EB: MemLdI2 global_110
  loc_A5C3EE: LitI2_Byte 1
  loc_A5C3F0: AddI2
  loc_A5C3F1: FLdPr Me
  loc_A5C3F4: MemStI2 global_110
  loc_A5C3F7: LitI2_Byte 0
  loc_A5C3F9: FLdPr Me
  loc_A5C3FC: MemStI2 global_112
  loc_A5C3FF: LitI4 1
  loc_A5C404: FLdPr Me
  loc_A5C407: MemLdI2 global_110
  loc_A5C40A: CI4UI1
  loc_A5C40B: FLdPr Me
  loc_A5C40E: MemLdI2 global_108
  loc_A5C411: CI4UI1
  loc_A5C412: FLdPr Me
  loc_A5C415: MemLdI2 global_106
  loc_A5C418: CI4UI1
  loc_A5C419: FLdPr Me
  loc_A5C41C: MemLdI2 global_104
  loc_A5C41F: CI4UI1
  loc_A5C420: FLdPr Me
  loc_A5C423: MemLdStr global_100
  loc_A5C426: Ary1LdPr
  loc_A5C427: MemLdStr global_8
  loc_A5C42A: Ary1LdPr
  loc_A5C42B: MemLdStr global_32
  loc_A5C42E: Ary1LdPr
  loc_A5C42F: MemLdRfVar from_stack_1.global_32
  loc_A5C432: RedimPreserve
  loc_A5C43C: FLdRfVar var_B0
  loc_A5C43F: FLdRfVar var_A0
  loc_A5C442: LitVarStr var_9C, "CodiPart"
  loc_A5C447: PopAdLdVar
  loc_A5C448: FLdRfVar var_8C
  loc_A5C44B: FLdRfVar var_88
  loc_A5C44E: FLdPr Me
  loc_A5C451: MemLdRfVar from_stack_1.global_72
  loc_A5C454: NewIfNullPr clsimputacion
  loc_A5C457: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A5C45C: FLdPr var_88
  loc_A5C45F:  = Me.Fields
  loc_A5C464: FLdPr var_8C
  loc_A5C467: from_stack_2 = Me.Item(from_stack_1)
  loc_A5C46C: FLdPr var_A0
  loc_A5C46F:  = Me.Value
  loc_A5C474: LitI4 3
  loc_A5C479: FLdRfVar var_B0
  loc_A5C47C: CStrVarTmp
  loc_A5C47D: FStStrNoPop var_B4
  loc_A5C480: ImpAdCallI2 Left$(, )
  loc_A5C485: FStStr var_FC
  loc_A5C488: LitI2_Byte 0
  loc_A5C48A: LitVar_Missing var_F8
  loc_A5C48D: LitI2_Byte 0
  loc_A5C48F: FLdZeroAd var_FC
  loc_A5C492: FStStrNoPop var_B8
  loc_A5C495: LitStr "00000"
  loc_A5C498: ConcatStr
  loc_A5C499: CVarStr var_D8
  loc_A5C49C: PopAdLdVar
  loc_A5C49D: FLdPr Me
  loc_A5C4A0: MemLdI2 global_110
  loc_A5C4A3: CI4UI1
  loc_A5C4A4: FLdPr Me
  loc_A5C4A7: MemLdI2 global_108
  loc_A5C4AA: CI4UI1
  loc_A5C4AB: FLdPr Me
  loc_A5C4AE: MemLdI2 global_106
  loc_A5C4B1: CI4UI1
  loc_A5C4B2: FLdPr Me
  loc_A5C4B5: MemLdI2 global_104
  loc_A5C4B8: CI4UI1
  loc_A5C4B9: FLdPr Me
  loc_A5C4BC: MemLdStr global_100
  loc_A5C4BF: AryLock
  loc_A5C4C2: Ary1LdPr
  loc_A5C4C3: MemLdStr global_8
  loc_A5C4C6: AryLock
  loc_A5C4C9: Ary1LdPr
  loc_A5C4CA: MemLdStr global_32
  loc_A5C4CD: AryLock
  loc_A5C4D0: Ary1LdPr
  loc_A5C4D1: MemLdStr global_32
  loc_A5C4D4: AryLock
  loc_A5C4D7: Ary1LdPr
  loc_A5C4D8: MemLdRfVar from_stack_1.global_0
  loc_A5C4DB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5C4E0: AryUnlock
  loc_A5C4E3: AryUnlock
  loc_A5C4E6: AryUnlock
  loc_A5C4E9: AryUnlock
  loc_A5C4EC: FFreeStr var_B4 = "": var_B8 = ""
  loc_A5C4F5: FFreeAd var_88 = "": var_8C = ""
  loc_A5C4FE: FFreeVar var_B0 = "": var_D8 = ""
  loc_A5C507: FLdRfVar var_B0
  loc_A5C50A: FLdRfVar var_A0
  loc_A5C50D: LitVarStr var_9C, "PeriInfo"
  loc_A5C512: PopAdLdVar
  loc_A5C513: FLdRfVar var_8C
  loc_A5C516: FLdRfVar var_88
  loc_A5C519: FLdPr Me
  loc_A5C51C: MemLdRfVar from_stack_1.global_72
  loc_A5C51F: NewIfNullPr clsimputacion
  loc_A5C522: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A5C527: FLdPr var_88
  loc_A5C52A:  = Me.Fields
  loc_A5C52F: FLdPr var_8C
  loc_A5C532: from_stack_2 = Me.Item(from_stack_1)
  loc_A5C537: FLdPr var_A0
  loc_A5C53A:  = Me.Value
  loc_A5C53F: FLdPr Me
  loc_A5C542: MemLdRfVar from_stack_1.global_76
  loc_A5C545: NewIfNullRf
  loc_A5C549: FLdPr Me
  loc_A5C54C: MemLdI2 global_110
  loc_A5C54F: CI4UI1
  loc_A5C550: FLdPr Me
  loc_A5C553: MemLdI2 global_108
  loc_A5C556: CI4UI1
  loc_A5C557: FLdPr Me
  loc_A5C55A: MemLdI2 global_106
  loc_A5C55D: CI4UI1
  loc_A5C55E: FLdPr Me
  loc_A5C561: MemLdI2 global_104
  loc_A5C564: CI4UI1
  loc_A5C565: FLdPr Me
  loc_A5C568: MemLdStr global_100
  loc_A5C56B: Ary1LdPr
  loc_A5C56C: MemLdStr global_8
  loc_A5C56F: Ary1LdPr
  loc_A5C570: MemLdStr global_32
  loc_A5C573: Ary1LdPr
  loc_A5C574: MemLdStr global_32
  loc_A5C577: Ary1LdPr
  loc_A5C578: MemLdStr global_0
  loc_A5C57B: FLdRfVar var_B0
  loc_A5C57E: CI2Var
  loc_A5C57F: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_A5C584: FFreeAd var_88 = "": var_8C = ""
  loc_A5C58D: FFree1Var var_B0 = ""
  loc_A5C590: FLdRfVar var_B4
  loc_A5C593: FLdPr Me
  loc_A5C596: MemLdRfVar from_stack_1.global_76
  loc_A5C599: NewIfNullPr tblpartida
  loc_A5C59C: from_stack_1v = tblpartida.DetaPartGet()
  loc_A5C5A1: LitI2_Byte 0
  loc_A5C5A3: LitVar_Missing var_D8
  loc_A5C5A6: LitI2_Byte 0
  loc_A5C5A8: FLdZeroAd var_B4
  loc_A5C5AB: CVarStr var_B0
  loc_A5C5AE: PopAdLdVar
  loc_A5C5AF: FLdPr Me
  loc_A5C5B2: MemLdI2 global_110
  loc_A5C5B5: CI4UI1
  loc_A5C5B6: FLdPr Me
  loc_A5C5B9: MemLdI2 global_108
  loc_A5C5BC: CI4UI1
  loc_A5C5BD: FLdPr Me
  loc_A5C5C0: MemLdI2 global_106
  loc_A5C5C3: CI4UI1
  loc_A5C5C4: FLdPr Me
  loc_A5C5C7: MemLdI2 global_104
  loc_A5C5CA: CI4UI1
  loc_A5C5CB: FLdPr Me
  loc_A5C5CE: MemLdStr global_100
  loc_A5C5D1: AryLock
  loc_A5C5D4: Ary1LdPr
  loc_A5C5D5: MemLdStr global_8
  loc_A5C5D8: AryLock
  loc_A5C5DB: Ary1LdPr
  loc_A5C5DC: MemLdStr global_32
  loc_A5C5DF: AryLock
  loc_A5C5E2: Ary1LdPr
  loc_A5C5E3: MemLdStr global_32
  loc_A5C5E6: AryLock
  loc_A5C5E9: Ary1LdPr
  loc_A5C5EA: MemLdRfVar from_stack_1.global_4
  loc_A5C5ED: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5C5F2: AryUnlock
  loc_A5C5F5: AryUnlock
  loc_A5C5F8: AryUnlock
  loc_A5C5FB: AryUnlock
  loc_A5C5FE: FFreeVar var_B0 = ""
  loc_A5C605: FLdPr Me
  loc_A5C608: VCallAd Control_ID_optSintetico
  loc_A5C60B: CVarAd
  loc_A5C60F: CBoolVarNull
  loc_A5C611: FFree1Var var_B0 = ""
  loc_A5C614: BranchF loc_A5C6B8
  loc_A5C617: FLdPr Me
  loc_A5C61A: MemLdI2 global_108
  loc_A5C61D: CI4UI1
  loc_A5C61E: FLdPr Me
  loc_A5C621: MemLdI2 global_106
  loc_A5C624: CI4UI1
  loc_A5C625: FLdPr Me
  loc_A5C628: MemLdI2 global_104
  loc_A5C62B: CI4UI1
  loc_A5C62C: FLdPr Me
  loc_A5C62F: MemLdStr global_100
  loc_A5C632: AryLock
  loc_A5C635: Ary1LdPr
  loc_A5C636: MemLdStr global_8
  loc_A5C639: AryLock
  loc_A5C63C: Ary1LdPr
  loc_A5C63D: MemLdStr global_32
  loc_A5C640: AryLock
  loc_A5C643: Ary1LdPr
  loc_A5C644: MemLdRfVar from_stack_1.global_0
  loc_A5C647: FLdPr Me
  loc_A5C64A: MemLdI2 global_110
  loc_A5C64D: CI4UI1
  loc_A5C64E: FLdPr Me
  loc_A5C651: MemLdI2 global_108
  loc_A5C654: CI4UI1
  loc_A5C655: FLdPr Me
  loc_A5C658: MemLdI2 global_106
  loc_A5C65B: CI4UI1
  loc_A5C65C: FLdPr Me
  loc_A5C65F: MemLdI2 global_104
  loc_A5C662: CI4UI1
  loc_A5C663: FLdPr Me
  loc_A5C666: MemLdStr global_100
  loc_A5C669: AryLock
  loc_A5C66C: Ary1LdPr
  loc_A5C66D: MemLdStr global_8
  loc_A5C670: AryLock
  loc_A5C673: Ary1LdPr
  loc_A5C674: MemLdStr global_32
  loc_A5C677: AryLock
  loc_A5C67A: Ary1LdPr
  loc_A5C67B: MemLdStr global_32
  loc_A5C67E: AryLock
  loc_A5C681: Ary1LdPr
  loc_A5C682: MemLdRfVar from_stack_1.global_0
  loc_A5C685: Call Proc_162_24_A4D1E4()
  loc_A5C68A: AryUnlock
  loc_A5C68D: AryUnlock
  loc_A5C690: AryUnlock
  loc_A5C693: AryUnlock
  loc_A5C696: AryUnlock
  loc_A5C699: AryUnlock
  loc_A5C69C: AryUnlock
  loc_A5C69F: LitI4 1
  loc_A5C6A4: PopTmpLdAdStr var_10C
  loc_A5C6A7: FLdPr Me
  loc_A5C6AA: MemLdRfVar from_stack_1.global_72
  loc_A5C6AD: NewIfNullPr clsimputacion
  loc_A5C6B0: Call clsimputacion.Mover(from_stack_1v)
  loc_A5C6B5: Branch loc_A5C6BD
  loc_A5C6B8: Call Proc_162_23_A4A0E8()
  loc_A5C6BD: ExitProcHresult
End Function

Private Function Proc_162_23_A4A0E8() 'A4A0E8
  'Data Table: 47DCA0
  loc_A49E7C: FLdPr Me
  loc_A49E7F: MemLdI2 global_112
  loc_A49E82: LitI2_Byte 1
  loc_A49E84: AddI2
  loc_A49E85: FLdPr Me
  loc_A49E88: MemStI2 global_112
  loc_A49E8B: LitI4 1
  loc_A49E90: FLdPr Me
  loc_A49E93: MemLdI2 global_112
  loc_A49E96: CI4UI1
  loc_A49E97: FLdPr Me
  loc_A49E9A: MemLdI2 global_110
  loc_A49E9D: CI4UI1
  loc_A49E9E: FLdPr Me
  loc_A49EA1: MemLdI2 global_108
  loc_A49EA4: CI4UI1
  loc_A49EA5: FLdPr Me
  loc_A49EA8: MemLdI2 global_106
  loc_A49EAB: CI4UI1
  loc_A49EAC: FLdPr Me
  loc_A49EAF: MemLdI2 global_104
  loc_A49EB2: CI4UI1
  loc_A49EB3: FLdPr Me
  loc_A49EB6: MemLdStr global_100
  loc_A49EB9: Ary1LdPr
  loc_A49EBA: MemLdStr global_8
  loc_A49EBD: Ary1LdPr
  loc_A49EBE: MemLdStr global_32
  loc_A49EC1: Ary1LdPr
  loc_A49EC2: MemLdStr global_32
  loc_A49EC5: Ary1LdPr
  loc_A49EC6: MemLdRfVar from_stack_1.global_32
  loc_A49EC9: RedimPreserve
  loc_A49ED3: FLdRfVar var_A0
  loc_A49ED6: LitVarStr var_9C, "CodiPart"
  loc_A49EDB: PopAdLdVar
  loc_A49EDC: FLdRfVar var_8C
  loc_A49EDF: FLdRfVar var_88
  loc_A49EE2: FLdPr Me
  loc_A49EE5: MemLdRfVar from_stack_1.global_72
  loc_A49EE8: NewIfNullPr clsimputacion
  loc_A49EEB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A49EF0: FLdPr var_88
  loc_A49EF3:  = Me.Fields
  loc_A49EF8: FLdPr var_8C
  loc_A49EFB: from_stack_2 = Me.Item(from_stack_1)
  loc_A49F00: LitI2_Byte 0
  loc_A49F02: LitVar_Missing var_E4
  loc_A49F05: LitI2_Byte 0
  loc_A49F07: FLdZeroAd var_A0
  loc_A49F0A: CVarAd
  loc_A49F0E: PopAdLdVar
  loc_A49F0F: FLdPr Me
  loc_A49F12: MemLdI2 global_112
  loc_A49F15: CI4UI1
  loc_A49F16: FLdPr Me
  loc_A49F19: MemLdI2 global_110
  loc_A49F1C: CI4UI1
  loc_A49F1D: FLdPr Me
  loc_A49F20: MemLdI2 global_108
  loc_A49F23: CI4UI1
  loc_A49F24: FLdPr Me
  loc_A49F27: MemLdI2 global_106
  loc_A49F2A: CI4UI1
  loc_A49F2B: FLdPr Me
  loc_A49F2E: MemLdI2 global_104
  loc_A49F31: CI4UI1
  loc_A49F32: FLdPr Me
  loc_A49F35: MemLdStr global_100
  loc_A49F38: AryLock
  loc_A49F3B: Ary1LdPr
  loc_A49F3C: MemLdStr global_8
  loc_A49F3F: AryLock
  loc_A49F42: Ary1LdPr
  loc_A49F43: MemLdStr global_32
  loc_A49F46: AryLock
  loc_A49F49: Ary1LdPr
  loc_A49F4A: MemLdStr global_32
  loc_A49F4D: AryLock
  loc_A49F50: Ary1LdPr
  loc_A49F51: MemLdStr global_32
  loc_A49F54: AryLock
  loc_A49F57: Ary1LdPr
  loc_A49F58: MemLdRfVar from_stack_1.global_0
  loc_A49F5B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A49F60: AryUnlock
  loc_A49F63: AryUnlock
  loc_A49F66: AryUnlock
  loc_A49F69: AryUnlock
  loc_A49F6C: AryUnlock
  loc_A49F6F: FFreeAd var_88 = ""
  loc_A49F76: FFreeVar var_C4 = ""
  loc_A49F7D: FLdRfVar var_A0
  loc_A49F80: LitVarStr var_9C, "DetaPart"
  loc_A49F85: PopAdLdVar
  loc_A49F86: FLdRfVar var_8C
  loc_A49F89: FLdRfVar var_88
  loc_A49F8C: FLdPr Me
  loc_A49F8F: MemLdRfVar from_stack_1.global_72
  loc_A49F92: NewIfNullPr clsimputacion
  loc_A49F95: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A49F9A: FLdPr var_88
  loc_A49F9D:  = Me.Fields
  loc_A49FA2: FLdPr var_8C
  loc_A49FA5: from_stack_2 = Me.Item(from_stack_1)
  loc_A49FAA: LitI2_Byte 0
  loc_A49FAC: LitVar_Missing var_E4
  loc_A49FAF: LitI2_Byte 0
  loc_A49FB1: FLdZeroAd var_A0
  loc_A49FB4: CVarAd
  loc_A49FB8: PopAdLdVar
  loc_A49FB9: FLdPr Me
  loc_A49FBC: MemLdI2 global_112
  loc_A49FBF: CI4UI1
  loc_A49FC0: FLdPr Me
  loc_A49FC3: MemLdI2 global_110
  loc_A49FC6: CI4UI1
  loc_A49FC7: FLdPr Me
  loc_A49FCA: MemLdI2 global_108
  loc_A49FCD: CI4UI1
  loc_A49FCE: FLdPr Me
  loc_A49FD1: MemLdI2 global_106
  loc_A49FD4: CI4UI1
  loc_A49FD5: FLdPr Me
  loc_A49FD8: MemLdI2 global_104
  loc_A49FDB: CI4UI1
  loc_A49FDC: FLdPr Me
  loc_A49FDF: MemLdStr global_100
  loc_A49FE2: AryLock
  loc_A49FE5: Ary1LdPr
  loc_A49FE6: MemLdStr global_8
  loc_A49FE9: AryLock
  loc_A49FEC: Ary1LdPr
  loc_A49FED: MemLdStr global_32
  loc_A49FF0: AryLock
  loc_A49FF3: Ary1LdPr
  loc_A49FF4: MemLdStr global_32
  loc_A49FF7: AryLock
  loc_A49FFA: Ary1LdPr
  loc_A49FFB: MemLdStr global_32
  loc_A49FFE: AryLock
  loc_A4A001: Ary1LdPr
  loc_A4A002: MemLdRfVar from_stack_1.global_4
  loc_A4A005: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A4A00A: AryUnlock
  loc_A4A00D: AryUnlock
  loc_A4A010: AryUnlock
  loc_A4A013: AryUnlock
  loc_A4A016: AryUnlock
  loc_A4A019: FFreeAd var_88 = ""
  loc_A4A020: FFreeVar var_C4 = ""
  loc_A4A027: FLdPr Me
  loc_A4A02A: MemLdI2 global_110
  loc_A4A02D: CI4UI1
  loc_A4A02E: FLdPr Me
  loc_A4A031: MemLdI2 global_108
  loc_A4A034: CI4UI1
  loc_A4A035: FLdPr Me
  loc_A4A038: MemLdI2 global_106
  loc_A4A03B: CI4UI1
  loc_A4A03C: FLdPr Me
  loc_A4A03F: MemLdI2 global_104
  loc_A4A042: CI4UI1
  loc_A4A043: FLdPr Me
  loc_A4A046: MemLdStr global_100
  loc_A4A049: AryLock
  loc_A4A04C: Ary1LdPr
  loc_A4A04D: MemLdStr global_8
  loc_A4A050: AryLock
  loc_A4A053: Ary1LdPr
  loc_A4A054: MemLdStr global_32
  loc_A4A057: AryLock
  loc_A4A05A: Ary1LdPr
  loc_A4A05B: MemLdStr global_32
  loc_A4A05E: AryLock
  loc_A4A061: Ary1LdPr
  loc_A4A062: MemLdRfVar from_stack_1.global_0
  loc_A4A065: FLdPr Me
  loc_A4A068: MemLdI2 global_112
  loc_A4A06B: CI4UI1
  loc_A4A06C: FLdPr Me
  loc_A4A06F: MemLdI2 global_110
  loc_A4A072: CI4UI1
  loc_A4A073: FLdPr Me
  loc_A4A076: MemLdI2 global_108
  loc_A4A079: CI4UI1
  loc_A4A07A: FLdPr Me
  loc_A4A07D: MemLdI2 global_106
  loc_A4A080: CI4UI1
  loc_A4A081: FLdPr Me
  loc_A4A084: MemLdI2 global_104
  loc_A4A087: CI4UI1
  loc_A4A088: FLdPr Me
  loc_A4A08B: MemLdStr global_100
  loc_A4A08E: AryLock
  loc_A4A091: Ary1LdPr
  loc_A4A092: MemLdStr global_8
  loc_A4A095: AryLock
  loc_A4A098: Ary1LdPr
  loc_A4A099: MemLdStr global_32
  loc_A4A09C: AryLock
  loc_A4A09F: Ary1LdPr
  loc_A4A0A0: MemLdStr global_32
  loc_A4A0A3: AryLock
  loc_A4A0A6: Ary1LdPr
  loc_A4A0A7: MemLdStr global_32
  loc_A4A0AA: AryLock
  loc_A4A0AD: Ary1LdRf
  loc_A4A0AE: Call Proc_162_24_A4D1E4()
  loc_A4A0B3: AryUnlock
  loc_A4A0B6: AryUnlock
  loc_A4A0B9: AryUnlock
  loc_A4A0BC: AryUnlock
  loc_A4A0BF: AryUnlock
  loc_A4A0C2: AryUnlock
  loc_A4A0C5: AryUnlock
  loc_A4A0C8: AryUnlock
  loc_A4A0CB: AryUnlock
  loc_A4A0CE: LitI4 1
  loc_A4A0D3: PopTmpLdAdStr var_F8
  loc_A4A0D6: FLdPr Me
  loc_A4A0D9: MemLdRfVar from_stack_1.global_72
  loc_A4A0DC: NewIfNullPr clsimputacion
  loc_A4A0DF: Call clsimputacion.Mover(from_stack_1v)
  loc_A4A0E4: ExitProcHresult
  loc_A4A0E5: ExitProc
  loc_A4A0E6: Ary1StI2
End Function

Private Function Proc_162_24_A4D1E4() 'A4D1E4
  'Data Table: 47DCA0
  loc_A4CF50: FLdPr Me
  loc_A4CF53: MemLdRfVar from_stack_1.global_72
  loc_A4CF56: NewIfNullAd
  loc_A4CF59: FStAd var_88 
  loc_A4CF5D: FLdRfVar var_A4
  loc_A4CF60: LitVarStr var_A0, "DefiImpu"
  loc_A4CF65: PopAdLdVar
  loc_A4CF66: FLdRfVar var_90
  loc_A4CF69: FLdRfVar var_8C
  loc_A4CF6C: FLdPr var_88
  loc_A4CF6F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A4CF74: FLdPr var_8C
  loc_A4CF77:  = Me.Fields
  loc_A4CF7C: FLdPr var_90
  loc_A4CF7F: from_stack_2 = Me.Item(from_stack_1)
  loc_A4CF84: LitI2_Byte 0
  loc_A4CF86: FMemLdRf Proc_263_0_9C6454(, )
  loc_A4CF8B: CVarRef
  loc_A4CF90: LitI2_Byte &HFF
  loc_A4CF92: FLdZeroAd var_A4
  loc_A4CF95: CVarAd
  loc_A4CF99: PopAdLdVar
  loc_A4CF9A: FMemLdRf unk_47DCAD
  loc_A4CF9F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A4CFA4: FFreeAd var_8C = ""
  loc_A4CFAB: FFree1Var var_B4 = ""
  loc_A4CFAE: FLdRfVar var_A4
  loc_A4CFB1: LitVarStr var_A0, "DeveImpu"
  loc_A4CFB6: PopAdLdVar
  loc_A4CFB7: FLdRfVar var_90
  loc_A4CFBA: FLdRfVar var_8C
  loc_A4CFBD: FLdPr var_88
  loc_A4CFC0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A4CFC5: FLdPr var_8C
  loc_A4CFC8:  = Me.Fields
  loc_A4CFCD: FLdPr var_90
  loc_A4CFD0: from_stack_2 = Me.Item(from_stack_1)
  loc_A4CFD5: LitI2_Byte 0
  loc_A4CFD7: FMemLdRf Proc_263_0_9C6454(, , )
  loc_A4CFDC: CVarRef
  loc_A4CFE1: LitI2_Byte &HFF
  loc_A4CFE3: FLdZeroAd var_A4
  loc_A4CFE6: CVarAd
  loc_A4CFEA: PopAdLdVar
  loc_A4CFEB: FMemLdRf unk_47DCAD
  loc_A4CFF0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A4CFF5: FFreeAd var_8C = ""
  loc_A4CFFC: FFree1Var var_B4 = ""
  loc_A4CFFF: FLdRfVar var_A4
  loc_A4D002: LitVarStr var_A0, "MapaImpu"
  loc_A4D007: PopAdLdVar
  loc_A4D008: FLdRfVar var_90
  loc_A4D00B: FLdRfVar var_8C
  loc_A4D00E: FLdPr var_88
  loc_A4D011: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A4D016: FLdPr var_8C
  loc_A4D019:  = Me.Fields
  loc_A4D01E: FLdPr var_90
  loc_A4D021: from_stack_2 = Me.Item(from_stack_1)
  loc_A4D026: LitI2_Byte 0
  loc_A4D028: FMemLdRf Proc_263_0_9C6454(, , , )
  loc_A4D02D: CVarRef
  loc_A4D032: LitI2_Byte &HFF
  loc_A4D034: FLdZeroAd var_A4
  loc_A4D037: CVarAd
  loc_A4D03B: PopAdLdVar
  loc_A4D03C: FMemLdRf unk_47DCAD
  loc_A4D041: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A4D046: FFreeAd var_8C = ""
  loc_A4D04D: FFree1Var var_B4 = ""
  loc_A4D050: FLdRfVar var_A4
  loc_A4D053: LitVarStr var_A0, "PagaImpu"
  loc_A4D058: PopAdLdVar
  loc_A4D059: FLdRfVar var_90
  loc_A4D05C: FLdRfVar var_8C
  loc_A4D05F: FLdPr var_88
  loc_A4D062: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A4D067: FLdPr var_8C
  loc_A4D06A:  = Me.Fields
  loc_A4D06F: FLdPr var_90
  loc_A4D072: from_stack_2 = Me.Item(from_stack_1)
  loc_A4D077: LitI2_Byte 0
  loc_A4D079: FMemLdRf Proc_263_0_9C6454(, , , , )
  loc_A4D07E: CVarRef
  loc_A4D083: LitI2_Byte &HFF
  loc_A4D085: FLdZeroAd var_A4
  loc_A4D088: CVarAd
  loc_A4D08C: PopAdLdVar
  loc_A4D08D: FMemLdRf unk_47DCAD
  loc_A4D092: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A4D097: FFreeAd var_8C = ""
  loc_A4D09E: FFree1Var var_B4 = ""
  loc_A4D0A1: FLdRfVar var_E0
  loc_A4D0A4: FLdRfVar var_A4
  loc_A4D0A7: LitVarStr var_A0, "DeveImpu"
  loc_A4D0AC: PopAdLdVar
  loc_A4D0AD: FLdRfVar var_90
  loc_A4D0B0: FLdRfVar var_8C
  loc_A4D0B3: FLdPr var_88
  loc_A4D0B6: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A4D0BB: FLdPr var_8C
  loc_A4D0BE:  = Me.Fields
  loc_A4D0C3: FLdPr var_90
  loc_A4D0C6: from_stack_2 = Me.Item(from_stack_1)
  loc_A4D0CB: FLdPr var_A4
  loc_A4D0CE:  = Me.Value
  loc_A4D0D3: FLdRfVar var_B4
  loc_A4D0D6: FLdRfVar var_D0
  loc_A4D0D9: LitVarStr var_C4, "MapaImpu"
  loc_A4D0DE: PopAdLdVar
  loc_A4D0DF: FLdRfVar var_CC
  loc_A4D0E2: FLdRfVar var_C8
  loc_A4D0E5: FLdPr var_88
  loc_A4D0E8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A4D0ED: FLdPr var_C8
  loc_A4D0F0:  = Me.Fields
  loc_A4D0F5: FLdPr var_CC
  loc_A4D0F8: from_stack_2 = Me.Item(from_stack_1)
  loc_A4D0FD: FLdPr var_D0
  loc_A4D100:  = Me.Value
  loc_A4D105: LitI2_Byte 0
  loc_A4D107: FMemLdRf Proc_263_0_9C6454(, , , , , )
  loc_A4D10C: CVarRef
  loc_A4D111: LitI2_Byte &HFF
  loc_A4D113: FLdRfVar var_E0
  loc_A4D116: FLdRfVar var_B4
  loc_A4D119: SubVar var_F0
  loc_A4D11D: PopAdLdVar
  loc_A4D11E: FMemLdRf unk_47DCAD
  loc_A4D123: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A4D128: FFreeAd var_8C = "": var_90 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_A4D137: FFreeVar var_E0 = ""
  loc_A4D13E: FLdRfVar var_E0
  loc_A4D141: FLdRfVar var_A4
  loc_A4D144: LitVarStr var_A0, "MapaImpu"
  loc_A4D149: PopAdLdVar
  loc_A4D14A: FLdRfVar var_90
  loc_A4D14D: FLdRfVar var_8C
  loc_A4D150: FLdPr var_88
  loc_A4D153: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A4D158: FLdPr var_8C
  loc_A4D15B:  = Me.Fields
  loc_A4D160: FLdPr var_90
  loc_A4D163: from_stack_2 = Me.Item(from_stack_1)
  loc_A4D168: FLdPr var_A4
  loc_A4D16B:  = Me.Value
  loc_A4D170: FLdRfVar var_B4
  loc_A4D173: FLdRfVar var_D0
  loc_A4D176: LitVarStr var_C4, "PagaImpu"
  loc_A4D17B: PopAdLdVar
  loc_A4D17C: FLdRfVar var_CC
  loc_A4D17F: FLdRfVar var_C8
  loc_A4D182: FLdPr var_88
  loc_A4D185: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A4D18A: FLdPr var_C8
  loc_A4D18D:  = Me.Fields
  loc_A4D192: FLdPr var_CC
  loc_A4D195: from_stack_2 = Me.Item(from_stack_1)
  loc_A4D19A: FLdPr var_D0
  loc_A4D19D:  = Me.Value
  loc_A4D1A2: LitI2_Byte 0
  loc_A4D1A4: FMemLdRf Proc_263_0_9C6454(, , , , , , )
  loc_A4D1A9: CVarRef
  loc_A4D1AE: LitI2_Byte &HFF
  loc_A4D1B0: FLdRfVar var_E0
  loc_A4D1B3: FLdRfVar var_B4
  loc_A4D1B6: SubVar var_F0
  loc_A4D1BA: PopAdLdVar
  loc_A4D1BB: FMemLdRf unk_47DCAD
  loc_A4D1C0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A4D1C5: FFreeAd var_8C = "": var_90 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_A4D1D4: FFreeVar var_E0 = ""
  loc_A4D1DB: LitNothing
  loc_A4D1DD: FStAd var_88 
  loc_A4D1E1: ExitProcHresult
End Function

Private Function Proc_162_25_9B74E8(arg_C) '9B74E8
  'Data Table: 47DCA0
  loc_9B742C: LitI2_Byte 0
  loc_9B742E: FMemLdRf Proc_263_0_9C6454(, )
  loc_9B7433: CVarRef
  loc_9B7438: LitI2_Byte &HFF
  loc_9B743A: FMemLdR4 arg_C(8)
  loc_9B743F: CVarStr var_98
  loc_9B7442: PopAdLdVar
  loc_9B7443: FLdRfVar var_88
  loc_9B7446: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9B744B: LitI2_Byte 0
  loc_9B744D: FMemLdRf Proc_263_0_9C6454(, , )
  loc_9B7452: CVarRef
  loc_9B7457: LitI2_Byte &HFF
  loc_9B7459: FMemLdR4 arg_C(12)
  loc_9B745E: CVarStr var_98
  loc_9B7461: PopAdLdVar
  loc_9B7462: FLdRfVar var_88
  loc_9B7465: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9B746A: LitI2_Byte 0
  loc_9B746C: FMemLdRf Proc_263_0_9C6454(, , , )
  loc_9B7471: CVarRef
  loc_9B7476: LitI2_Byte &HFF
  loc_9B7478: FMemLdR4 arg_C(16)
  loc_9B747D: CVarStr var_98
  loc_9B7480: PopAdLdVar
  loc_9B7481: FLdRfVar var_88
  loc_9B7484: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9B7489: LitI2_Byte 0
  loc_9B748B: FMemLdRf Proc_263_0_9C6454(, , , , )
  loc_9B7490: CVarRef
  loc_9B7495: LitI2_Byte &HFF
  loc_9B7497: FMemLdR4 arg_C(20)
  loc_9B749C: CVarStr var_98
  loc_9B749F: PopAdLdVar
  loc_9B74A0: FLdRfVar var_88
  loc_9B74A3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9B74A8: LitI2_Byte 0
  loc_9B74AA: FMemLdRf Proc_263_0_9C6454(, , , , , )
  loc_9B74AF: CVarRef
  loc_9B74B4: LitI2_Byte &HFF
  loc_9B74B6: FMemLdR4 arg_C(24)
  loc_9B74BB: CVarStr var_98
  loc_9B74BE: PopAdLdVar
  loc_9B74BF: FLdRfVar var_88
  loc_9B74C2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9B74C7: LitI2_Byte 0
  loc_9B74C9: FMemLdRf Proc_263_0_9C6454(, , , , , , )
  loc_9B74CE: CVarRef
  loc_9B74D3: LitI2_Byte &HFF
  loc_9B74D5: FMemLdR4 arg_C(28)
  loc_9B74DA: CVarStr var_98
  loc_9B74DD: PopAdLdVar
  loc_9B74DE: FLdRfVar var_88
  loc_9B74E1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9B74E6: ExitProcHresult
End Function

Private Function Proc_162_26_A84CA8() 'A84CA8
  'Data Table: 47DCA0
  loc_A848A0: LitVarStr var_94, "<html>"
  loc_A848A5: PopAdLdVar
  loc_A848A6: FLdPr Me
  loc_A848A9: MemLdRfVar from_stack_1.htmFile
  loc_A848AC: LdPrVar
  loc_A848AE: LateMemCall
  loc_A848B4: LitVarStr var_94, "<head>"
  loc_A848B9: PopAdLdVar
  loc_A848BA: FLdPr Me
  loc_A848BD: MemLdRfVar from_stack_1.htmFile
  loc_A848C0: LdPrVar
  loc_A848C2: LateMemCall
  loc_A848C8: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A848CD: PopAdLdVar
  loc_A848CE: FLdPr Me
  loc_A848D1: MemLdRfVar from_stack_1.htmFile
  loc_A848D4: LdPrVar
  loc_A848D6: LateMemCall
  loc_A848DC: LitStr "<title>"
  loc_A848DF: FLdRfVar var_A8
  loc_A848E2: FLdPr Me
  loc_A848E5:  = Me.Caption
  loc_A848EA: ILdRf var_A8
  loc_A848ED: ConcatStr
  loc_A848EE: FStStrNoPop var_AC
  loc_A848F1: LitStr " - "
  loc_A848F4: ConcatStr
  loc_A848F5: FStStrNoPop var_B0
  loc_A848F8: LitStr "Municipalidad de Guaymallén"
  loc_A848FB: ConcatStr
  loc_A848FC: FStStrNoPop var_B4
  loc_A848FF: LitStr "</title>"
  loc_A84902: ConcatStr
  loc_A84903: CVarStr var_C4
  loc_A84906: PopAdLdVar
  loc_A84907: FLdPr Me
  loc_A8490A: MemLdRfVar from_stack_1.htmFile
  loc_A8490D: LdPrVar
  loc_A8490F: LateMemCall
  loc_A84915: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_A84920: FFree1Var var_C4 = ""
  loc_A84923: LitStr vbNullString
  loc_A84926: ILdRf Me
  loc_A84929: CastAd
  loc_A8492C: FStAdFunc var_C8
  loc_A8492F: FLdRfVar var_C8
  loc_A84932: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A84937: FFree1Ad var_C8
  loc_A8493A: LitI4 0
  loc_A8493F: FStStrCopy var_AC
  loc_A84942: FLdRfVar var_AC
  loc_A84945: LitI4 0
  loc_A8494A: FStStrCopy var_A8
  loc_A8494D: FLdRfVar var_A8
  loc_A84950: LitI2_Byte &HFF
  loc_A84952: PopTmpLdAd2 var_CA
  loc_A84955: FLdPr Me
  loc_A84958: MemLdRfVar from_stack_1.htmFile
  loc_A8495B: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A84960: FFreeStr var_A8 = ""
  loc_A84967: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_A8496C: PopAdLdVar
  loc_A8496D: FLdPr Me
  loc_A84970: MemLdRfVar from_stack_1.htmFile
  loc_A84973: LdPrVar
  loc_A84975: LateMemCall
  loc_A8497B: LitVarStr var_94, "  <tr valign=""center"">"
  loc_A84980: PopAdLdVar
  loc_A84981: FLdPr Me
  loc_A84984: MemLdRfVar from_stack_1.htmFile
  loc_A84987: LdPrVar
  loc_A84989: LateMemCall
  loc_A8498F: LitVarStr var_94, "    <th align=""center"" valign=""center""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>ACUERDO N&ordm; 3949 <br>"
  loc_A84994: PopAdLdVar
  loc_A84995: FLdPr Me
  loc_A84998: MemLdRfVar from_stack_1.htmFile
  loc_A8499B: LdPrVar
  loc_A8499D: LateMemCall
  loc_A849A3: LitVarStr var_94, "      <span class=""Titulo2"">ANEXO 2 BIS: DE LA EJECUCIÓN DEL PRESUPUESTO CON RELACIÓN A LOS CRÉDITOS CORRESPONDIENTE AL TRIMESTRE</span></p>"
  loc_A849A8: PopAdLdVar
  loc_A849A9: FLdPr Me
  loc_A849AC: MemLdRfVar from_stack_1.htmFile
  loc_A849AF: LdPrVar
  loc_A849B1: LateMemCall
  loc_A849B7: LitVarStr var_94, "    </th>"
  loc_A849BC: PopAdLdVar
  loc_A849BD: FLdPr Me
  loc_A849C0: MemLdRfVar from_stack_1.htmFile
  loc_A849C3: LdPrVar
  loc_A849C5: LateMemCall
  loc_A849CB: LitVarStr var_94, "  </tr>"
  loc_A849D0: PopAdLdVar
  loc_A849D1: FLdPr Me
  loc_A849D4: MemLdRfVar from_stack_1.htmFile
  loc_A849D7: LdPrVar
  loc_A849D9: LateMemCall
  loc_A849DF: LitVarStr var_94, "  <tr>"
  loc_A849E4: PopAdLdVar
  loc_A849E5: FLdPr Me
  loc_A849E8: MemLdRfVar from_stack_1.htmFile
  loc_A849EB: LdPrVar
  loc_A849ED: LateMemCall
  loc_A849F3: LitVarStr var_94, "    <th>"
  loc_A849F8: PopAdLdVar
  loc_A849F9: FLdPr Me
  loc_A849FC: MemLdRfVar from_stack_1.htmFile
  loc_A849FF: LdPrVar
  loc_A84A01: LateMemCall
  loc_A84A07: LitStr "      <p align=""left"" class=""Titulo2"">      Repartición/Organismo: "
  loc_A84A0A: LitStr "Municipalidad de Guaymallén"
  loc_A84A0D: ConcatStr
  loc_A84A0E: FStStrNoPop var_A8
  loc_A84A11: LitStr "<br>"
  loc_A84A14: ConcatStr
  loc_A84A15: CVarStr var_C4
  loc_A84A18: PopAdLdVar
  loc_A84A19: FLdPr Me
  loc_A84A1C: MemLdRfVar from_stack_1.htmFile
  loc_A84A1F: LdPrVar
  loc_A84A21: LateMemCall
  loc_A84A27: FFree1Str var_A8
  loc_A84A2A: FFree1Var var_C4 = ""
  loc_A84A2D: LitStr "    Nomenclador: "
  loc_A84A30: LitStr "060204"
  loc_A84A33: ConcatStr
  loc_A84A34: FStStrNoPop var_A8
  loc_A84A37: LitStr "<br>"
  loc_A84A3A: ConcatStr
  loc_A84A3B: CVarStr var_C4
  loc_A84A3E: PopAdLdVar
  loc_A84A3F: FLdPr Me
  loc_A84A42: MemLdRfVar from_stack_1.htmFile
  loc_A84A45: LdPrVar
  loc_A84A47: LateMemCall
  loc_A84A4D: FFree1Str var_A8
  loc_A84A50: FFree1Var var_C4 = ""
  loc_A84A53: LitStr "    Ejercicio: "
  loc_A84A56: FLdRfVar var_A8
  loc_A84A59: FLdPr Me
  loc_A84A5C: VCallAd Control_ID_cboPeriodo
  loc_A84A5F: FStAdFunc var_C8
  loc_A84A62: FLdPr var_C8
  loc_A84A65:  = Me.Text
  loc_A84A6A: ILdRf var_A8
  loc_A84A6D: ConcatStr
  loc_A84A6E: FStStrNoPop var_AC
  loc_A84A71: LitStr " <br>"
  loc_A84A74: ConcatStr
  loc_A84A75: CVarStr var_C4
  loc_A84A78: PopAdLdVar
  loc_A84A79: FLdPr Me
  loc_A84A7C: MemLdRfVar from_stack_1.htmFile
  loc_A84A7F: LdPrVar
  loc_A84A81: LateMemCall
  loc_A84A87: FFreeStr var_A8 = ""
  loc_A84A8E: FFree1Ad var_C8
  loc_A84A91: FFree1Var var_C4 = ""
  loc_A84A94: FLdRfVar var_CA
  loc_A84A97: FLdPr Me
  loc_A84A9A: VCallAd Control_ID_cboTrimestre
  loc_A84A9D: FStAdFunc var_D0
  loc_A84AA0: FLdPr var_D0
  loc_A84AA3:  = Me.ListIndex
  loc_A84AA8: FLdRfVar var_D8
  loc_A84AAB: FLdI2 var_CA
  loc_A84AAE: FLdPr Me
  loc_A84AB1: VCallAd Control_ID_cboTrimestre
  loc_A84AB4: FStAdFunc var_D4
  loc_A84AB7: FLdPr var_D4
  loc_A84ABA:  = Me.ItemData
  loc_A84ABF: FLdRfVar var_AC
  loc_A84AC2: FLdPr Me
  loc_A84AC5: VCallAd Control_ID_cboPeriodo
  loc_A84AC8: FStAdFunc var_DC
  loc_A84ACB: FLdPr var_DC
  loc_A84ACE:  = Me.Text
  loc_A84AD3: ILdRf var_AC
  loc_A84AD6: CI2Str
  loc_A84AD8: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_A84ADD: CVarStr var_C4
  loc_A84AE0: FLdRfVar var_EC
  loc_A84AE3: ImpAdCallFPR4  = Month()
  loc_A84AE8: LitStr "    Trimestre: "
  loc_A84AEB: FLdRfVar var_A8
  loc_A84AEE: FLdPr Me
  loc_A84AF1: VCallAd Control_ID_cboTrimestre
  loc_A84AF4: FStAdFunc var_C8
  loc_A84AF7: FLdPr var_C8
  loc_A84AFA:  = Me.Text
  loc_A84AFF: ILdRf var_A8
  loc_A84B02: ConcatStr
  loc_A84B03: CVarStr var_15C
  loc_A84B06: LitVarStr var_12C, vbNullString
  loc_A84B0B: FStVarCopyObj var_13C
  loc_A84B0E: FLdRfVar var_13C
  loc_A84B11: LitVarStr var_A4, " (PROVISORIO)"
  loc_A84B16: FStVarCopyObj var_11C
  loc_A84B19: FLdRfVar var_11C
  loc_A84B1C: ILdRf var_D8
  loc_A84B1F: LitI4 3
  loc_A84B24: MulI4
  loc_A84B25: CVarI4
  loc_A84B29: HardType
  loc_A84B2A: FLdRfVar var_EC
  loc_A84B2D: GtVar var_FC
  loc_A84B31: FStVar var_10C
  loc_A84B35: FLdRfVar var_10C
  loc_A84B38: FLdRfVar var_14C
  loc_A84B3B: ImpAdCallFPR4  = IIf(, , )
  loc_A84B40: FLdRfVar var_14C
  loc_A84B43: ConcatVar var_16C
  loc_A84B47: PopAdLdVar
  loc_A84B48: FLdPr Me
  loc_A84B4B: MemLdRfVar from_stack_1.htmFile
  loc_A84B4E: LdPrVar
  loc_A84B50: LateMemCall
  loc_A84B56: FFreeStr var_A8 = ""
  loc_A84B5D: FFreeAd var_C8 = "": var_D0 = "": var_D4 = ""
  loc_A84B68: FFreeVar var_C4 = "": var_EC = "": var_10C = "": var_11C = "": var_13C = "": var_15C = "": var_14C = ""
  loc_A84B7B: LitVarStr var_94, "    </p></th>"
  loc_A84B80: PopAdLdVar
  loc_A84B81: FLdPr Me
  loc_A84B84: MemLdRfVar from_stack_1.htmFile
  loc_A84B87: LdPrVar
  loc_A84B89: LateMemCall
  loc_A84B8F: LitVarStr var_94, "  </tr>"
  loc_A84B94: PopAdLdVar
  loc_A84B95: FLdPr Me
  loc_A84B98: MemLdRfVar from_stack_1.htmFile
  loc_A84B9B: LdPrVar
  loc_A84B9D: LateMemCall
  loc_A84BA3: LitVarStr var_94, "</table>"
  loc_A84BA8: PopAdLdVar
  loc_A84BA9: FLdPr Me
  loc_A84BAC: MemLdRfVar from_stack_1.htmFile
  loc_A84BAF: LdPrVar
  loc_A84BB1: LateMemCall
  loc_A84BB7: LitVarStr var_94, "<table border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A84BBC: PopAdLdVar
  loc_A84BBD: FLdPr Me
  loc_A84BC0: MemLdRfVar from_stack_1.htmFile
  loc_A84BC3: LdPrVar
  loc_A84BC5: LateMemCall
  loc_A84BCB: LitVarStr var_94, "  <THEAD>"
  loc_A84BD0: PopAdLdVar
  loc_A84BD1: FLdPr Me
  loc_A84BD4: MemLdRfVar from_stack_1.htmFile
  loc_A84BD7: LdPrVar
  loc_A84BD9: LateMemCall
  loc_A84BDF: LitVarStr var_94, " <tr class=""Encabezado"">"
  loc_A84BE4: PopAdLdVar
  loc_A84BE5: FLdPr Me
  loc_A84BE8: MemLdRfVar from_stack_1.htmFile
  loc_A84BEB: LdPrVar
  loc_A84BED: LateMemCall
  loc_A84BF3: LitVarStr var_94, "     <th align=""center"">PARTIDAS</th>"
  loc_A84BF8: PopAdLdVar
  loc_A84BF9: FLdPr Me
  loc_A84BFC: MemLdRfVar from_stack_1.htmFile
  loc_A84BFF: LdPrVar
  loc_A84C01: LateMemCall
  loc_A84C07: LitVarStr var_94, "     <th width=""8" & Chr(37) & """ align=""center"">COMPROMISOS CONTRAÍDOS EN EL TRIMESTRE</th>"
  loc_A84C0C: PopAdLdVar
  loc_A84C0D: FLdPr Me
  loc_A84C10: MemLdRfVar from_stack_1.htmFile
  loc_A84C13: LdPrVar
  loc_A84C15: LateMemCall
  loc_A84C1B: LitVarStr var_94, "     <th width=""8" & Chr(37) & """ align=""center"">DEVENGADO EN EL TRIMESTRE</th>"
  loc_A84C20: PopAdLdVar
  loc_A84C21: FLdPr Me
  loc_A84C24: MemLdRfVar from_stack_1.htmFile
  loc_A84C27: LdPrVar
  loc_A84C29: LateMemCall
  loc_A84C2F: LitVarStr var_94, "     <th width=""8" & Chr(37) & """ align=""center"">MANDADO A PAGAR EN EL TRIMESTRE</th>"
  loc_A84C34: PopAdLdVar
  loc_A84C35: FLdPr Me
  loc_A84C38: MemLdRfVar from_stack_1.htmFile
  loc_A84C3B: LdPrVar
  loc_A84C3D: LateMemCall
  loc_A84C43: LitVarStr var_94, "     <th width=""8" & Chr(37) & """ align=""center"">PAGADO EN EL TRIMESTRE</th>"
  loc_A84C48: PopAdLdVar
  loc_A84C49: FLdPr Me
  loc_A84C4C: MemLdRfVar from_stack_1.htmFile
  loc_A84C4F: LdPrVar
  loc_A84C51: LateMemCall
  loc_A84C57: LitVarStr var_94, "     <th width=""8" & Chr(37) & """ align=""center"">VARIACIÓN PASIVOS SIN OP EN EL TRIMESTRE</th>"
  loc_A84C5C: PopAdLdVar
  loc_A84C5D: FLdPr Me
  loc_A84C60: MemLdRfVar from_stack_1.htmFile
  loc_A84C63: LdPrVar
  loc_A84C65: LateMemCall
  loc_A84C6B: LitVarStr var_94, "     <th width=""8" & Chr(37) & """ align=""center"">VARIACIÓN PASIVOS CON OP EN EL TRIMESTRE</th>"
  loc_A84C70: PopAdLdVar
  loc_A84C71: FLdPr Me
  loc_A84C74: MemLdRfVar from_stack_1.htmFile
  loc_A84C77: LdPrVar
  loc_A84C79: LateMemCall
  loc_A84C7F: LitVarStr var_94, "  </tr>"
  loc_A84C84: PopAdLdVar
  loc_A84C85: FLdPr Me
  loc_A84C88: MemLdRfVar from_stack_1.htmFile
  loc_A84C8B: LdPrVar
  loc_A84C8D: LateMemCall
  loc_A84C93: LitVarStr var_94, "  </THEAD>"
  loc_A84C98: PopAdLdVar
  loc_A84C99: FLdPr Me
  loc_A84C9C: MemLdRfVar from_stack_1.htmFile
  loc_A84C9F: LdPrVar
  loc_A84CA1: LateMemCall
  loc_A84CA7: ExitProcHresult
End Function

Private Function Proc_162_27_9ECA8C() '9ECA8C
  'Data Table: 47DCA0
  loc_9EC948: LitVarStr var_94, "</table>"
  loc_9EC94D: PopAdLdVar
  loc_9EC94E: FLdPr Me
  loc_9EC951: MemLdRfVar from_stack_1.htmFile
  loc_9EC954: LdPrVar
  loc_9EC956: LateMemCall
  loc_9EC95C: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_9EC961: PopAdLdVar
  loc_9EC962: FLdPr Me
  loc_9EC965: MemLdRfVar from_stack_1.htmFile
  loc_9EC968: LdPrVar
  loc_9EC96A: LateMemCall
  loc_9EC970: LitVarStr var_94, "  <tr>"
  loc_9EC975: PopAdLdVar
  loc_9EC976: FLdPr Me
  loc_9EC979: MemLdRfVar from_stack_1.htmFile
  loc_9EC97C: LdPrVar
  loc_9EC97E: LateMemCall
  loc_9EC984: LitVarStr var_94, "    <th scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_9EC989: PopAdLdVar
  loc_9EC98A: FLdPr Me
  loc_9EC98D: MemLdRfVar from_stack_1.htmFile
  loc_9EC990: LdPrVar
  loc_9EC992: LateMemCall
  loc_9EC998: LitVarStr var_94, "          <map name=""Map"">"
  loc_9EC99D: PopAdLdVar
  loc_9EC99E: FLdPr Me
  loc_9EC9A1: MemLdRfVar from_stack_1.htmFile
  loc_9EC9A4: LdPrVar
  loc_9EC9A6: LateMemCall
  loc_9EC9AC: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_9EC9B1: PopAdLdVar
  loc_9EC9B2: FLdPr Me
  loc_9EC9B5: MemLdRfVar from_stack_1.htmFile
  loc_9EC9B8: LdPrVar
  loc_9EC9BA: LateMemCall
  loc_9EC9C0: LitVarStr var_94, "          </map>"
  loc_9EC9C5: PopAdLdVar
  loc_9EC9C6: FLdPr Me
  loc_9EC9C9: MemLdRfVar from_stack_1.htmFile
  loc_9EC9CC: LdPrVar
  loc_9EC9CE: LateMemCall
  loc_9EC9D4: LitVarStr var_94, "    </div></th>"
  loc_9EC9D9: PopAdLdVar
  loc_9EC9DA: FLdPr Me
  loc_9EC9DD: MemLdRfVar from_stack_1.htmFile
  loc_9EC9E0: LdPrVar
  loc_9EC9E2: LateMemCall
  loc_9EC9E8: LitVarStr var_94, "  </tr>"
  loc_9EC9ED: PopAdLdVar
  loc_9EC9EE: FLdPr Me
  loc_9EC9F1: MemLdRfVar from_stack_1.htmFile
  loc_9EC9F4: LdPrVar
  loc_9EC9F6: LateMemCall
  loc_9EC9FC: LitVarStr var_94, "  <tr>"
  loc_9ECA01: PopAdLdVar
  loc_9ECA02: FLdPr Me
  loc_9ECA05: MemLdRfVar from_stack_1.htmFile
  loc_9ECA08: LdPrVar
  loc_9ECA0A: LateMemCall
  loc_9ECA10: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_9ECA15: PopAdLdVar
  loc_9ECA16: FLdPr Me
  loc_9ECA19: MemLdRfVar from_stack_1.htmFile
  loc_9ECA1C: LdPrVar
  loc_9ECA1E: LateMemCall
  loc_9ECA24: LitVarStr var_94, "  </tr>"
  loc_9ECA29: PopAdLdVar
  loc_9ECA2A: FLdPr Me
  loc_9ECA2D: MemLdRfVar from_stack_1.htmFile
  loc_9ECA30: LdPrVar
  loc_9ECA32: LateMemCall
  loc_9ECA38: LitVarStr var_94, "</table>"
  loc_9ECA3D: PopAdLdVar
  loc_9ECA3E: FLdPr Me
  loc_9ECA41: MemLdRfVar from_stack_1.htmFile
  loc_9ECA44: LdPrVar
  loc_9ECA46: LateMemCall
  loc_9ECA4C: LitVarStr var_94, "<p class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</p>"
  loc_9ECA51: PopAdLdVar
  loc_9ECA52: FLdPr Me
  loc_9ECA55: MemLdRfVar from_stack_1.htmFile
  loc_9ECA58: LdPrVar
  loc_9ECA5A: LateMemCall
  loc_9ECA60: LitVarStr var_94, "</body>"
  loc_9ECA65: PopAdLdVar
  loc_9ECA66: FLdPr Me
  loc_9ECA69: MemLdRfVar from_stack_1.htmFile
  loc_9ECA6C: LdPrVar
  loc_9ECA6E: LateMemCall
  loc_9ECA74: LitVarStr var_94, "</html>"
  loc_9ECA79: PopAdLdVar
  loc_9ECA7A: FLdPr Me
  loc_9ECA7D: MemLdRfVar from_stack_1.htmFile
  loc_9ECA80: LdPrVar
  loc_9ECA82: LateMemCall
  loc_9ECA88: ExitProcHresult
End Function
