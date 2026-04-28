VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988AnexoXII
  Caption = "Acuerdo 2988 - Anexo XII"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988AnexoXII.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 8655
  ClientHeight = 2775
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2520
    Width = 8655
    Height = 255
    TabIndex = 12
    OleObjectBlob = "rptA2988AnexoXII.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7800
    Top = 1560
    Width = 735
    Height = 615
    TabIndex = 10
    Cancel = -1  'True
    Picture = "rptA2988AnexoXII.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988AnexoXII.frx":0B9C
    Left = 360
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1320
    Width = 4455
    Height = 1095
    TabIndex = 7
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 13
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 9
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 8
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1320
    Width = 3015
    Height = 1095
    TabIndex = 4
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 6
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 5
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8415
    Height = 1215
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4920
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox PeriodoCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2055
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1335
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7920
    Top = 1680
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 11
    OleObjectBlob = "rptA2988AnexoXII.frx":0C00
  End
End

Attribute VB_Name = "rptA2988AnexoXII"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00585FDC
  bStruc(88) As Byte ' String fields: 22
End Type


Private Sub cmdSalir_Click() '97BFE0
  'Data Table: 44548C
  loc_97BFB0: LitVarStr var_94, "Cerrando..."
  loc_97BFB5: PopAdLdVar
  loc_97BFB6: FLdPr Me
  loc_97BFB9: VCallAd Control_ID_statusBar
  loc_97BFBC: FStAdFunc var_A8
  loc_97BFBF: FLdPr var_A8
  loc_97BFC2: LateIdSt
  loc_97BFC7: FFree1Ad var_A8
  loc_97BFCA: ILdRf Me
  loc_97BFCD: FStAdNoPop
  loc_97BFD1: ImpAdLdRf MemVar_C44F9C
  loc_97BFD4: NewIfNullPr Me
  loc_97BFD7: Me.Global.Unload from_stack_1
  loc_97BFDC: FFree1Ad var_A8
  loc_97BFDF: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9690AC
  'Data Table: 44548C
  loc_969090: LitI2_Byte &HFF
  loc_969092: LitI2_Byte 0
  loc_969094: ILdRf Me
  loc_969097: CastAd
  loc_96909A: FStAdFunc var_88
  loc_96909D: FLdRfVar var_88
  loc_9690A0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_9690A5: FFree1Ad var_88
  loc_9690A8: ExitProcHresult
End Sub

Private Sub cmdHtml_Click() '95F90C
  'Data Table: 44548C
  loc_95F8F4: ILdRf Me
  loc_95F8F7: CastAd
  loc_95F8FA: FStAdFunc var_88
  loc_95F8FD: FLdRfVar var_88
  loc_95F900: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_95F905: FFree1Ad var_88
  loc_95F908: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '990BE0
  'Data Table: 44548C
  loc_990B94: LitI2_Byte 0
  loc_990B96: FLdPr Me
  loc_990B99: MemStI2 bGenerado
  loc_990B9C: LitI2_Byte &HFF
  loc_990B9E: FLdPr Me
  loc_990BA1: MemStI2 bLogos
  loc_990BA4: ImpAdLdI2 MemVar_C3D064
  loc_990BA7: CStrUI1
  loc_990BA9: FStStrNoPop var_88
  loc_990BAC: FLdPr Me
  loc_990BAF: VCallAd Control_ID_PeriodoCbo
  loc_990BB2: FStAdFunc var_8C
  loc_990BB5: FLdPr var_8C
  loc_990BB8: Me.Text = from_stack_1
  loc_990BBD: FFree1Str var_88
  loc_990BC0: FFree1Ad var_8C
  loc_990BC3: Call HabilitarCriterio()
  loc_990BC8: ILdRf Me
  loc_990BCB: CastAd
  loc_990BCE: FStAdFunc var_8C
  loc_990BD1: FLdRfVar var_8C
  loc_990BD4: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_990BD9: FFree1Ad var_8C
  loc_990BDC: ExitProcHresult
  loc_990BDD: LitStr "StrFormMemory_0"
End Sub

Private Sub cmdPredeterminada_Click() '95F874
  'Data Table: 44548C
  loc_95F85C: ILdRf Me
  loc_95F85F: CastAd
  loc_95F862: FStAdFunc var_88
  loc_95F865: FLdRfVar var_88
  loc_95F868: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95F86D: FFree1Ad var_88
  loc_95F870: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95FCE8
  'Data Table: 44548C
  loc_95FCD0: LitI2_Byte 0
  loc_95FCD2: ILdRf Me
  loc_95FCD5: CastAd
  loc_95FCD8: FStAdFunc var_88
  loc_95FCDB: FLdRfVar var_88
  loc_95FCDE: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95FCE3: FFree1Ad var_88
  loc_95FCE6: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '985C0C
  'Data Table: 44548C
  loc_985BD4: FLdPr Me
  loc_985BD7: VCallAd Control_ID_statusBar
  loc_985BDA: FStAdFunc var_88
  loc_985BDD: FLdPr var_88
  loc_985BE0: LateIdLdVar var_98 DispID_1 0
  loc_985BE7: CStrVarTmp
  loc_985BE8: CVarStr var_A8
  loc_985BEB: PopAdLdVar
  loc_985BEC: FLdPr Me
  loc_985BEF: VCallAd Control_ID_statusBar
  loc_985BF2: FStAdFunc var_BC
  loc_985BF5: FLdPr var_BC
  loc_985BF8: LateIdSt
  loc_985BFD: FFreeAd var_88 = ""
  loc_985C04: FFreeVar var_98 = ""
  loc_985C0B: ExitProcHresult
End Sub

Private Sub Form_Load() '9E27E0
  'Data Table: 44548C
  loc_9E26E0: LitVar_TRUE var_D8
  loc_9E26E3: LitVar_FALSE
  loc_9E26E7: LitStr "Municipalidad de Guaymallén"
  loc_9E26EA: LitStr "Municipalidad de Malargüe"
  loc_9E26ED: EqStr
  loc_9E26EF: CVarBoolI2 var_98
  loc_9E26F3: FLdRfVar var_E8
  loc_9E26F6: ImpAdCallFPR4  = IIf(, , )
  loc_9E26FB: FLdRfVar var_E8
  loc_9E26FE: CBoolVar
  loc_9E2700: ImpAdStI2 MemVar_C3D840
  loc_9E2703: FFreeVar var_98 = "": var_B8 = "": var_D8 = ""
  loc_9E270E: ILdRf Me
  loc_9E2711: CastAd
  loc_9E2714: FStAdFunc var_EC
  loc_9E2717: FLdRfVar var_EC
  loc_9E271A: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9E271F: FFree1Ad var_EC
  loc_9E2722: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9E2725: FLdRfVar var_88
  loc_9E2728: NewIfNullPr clsperiodo
  loc_9E272B: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9E2730: FLdRfVar var_F0
  loc_9E2733: FLdRfVar var_88
  loc_9E2736: NewIfNullPr clsperiodo
  loc_9E2739: from_stack_1 = clsperiodo.RecordCount
  loc_9E273E: ILdRf var_F0
  loc_9E2741: LitI4 0
  loc_9E2746: GtI4
  loc_9E2747: BranchF loc_9E27DA
  loc_9E274A: FLdRfVar var_88
  loc_9E274D: NewIfNullPr clsperiodo
  loc_9E2750: Call clsperiodo.MoveFirst()
  loc_9E2755: FLdRfVar var_F2
  loc_9E2758: FLdRfVar var_88
  loc_9E275B: NewIfNullPr clsperiodo
  loc_9E275E: from_stack_1 = clsperiodo.EOF
  loc_9E2763: FLdI2 var_F2
  loc_9E2766: NotI4
  loc_9E2767: BranchF loc_9E27DA
  loc_9E276A: LitVar_Missing var_A8
  loc_9E276D: PopAdLdVar
  loc_9E276E: FLdRfVar var_B8
  loc_9E2771: FLdRfVar var_FC
  loc_9E2774: LitVarStr var_98, "PeriInfo"
  loc_9E2779: PopAdLdVar
  loc_9E277A: FLdRfVar var_F8
  loc_9E277D: FLdRfVar var_EC
  loc_9E2780: FLdRfVar var_88
  loc_9E2783: NewIfNullPr clsperiodo
  loc_9E2786: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9E278B: FLdPr var_EC
  loc_9E278E:  = Me.Fields
  loc_9E2793: FLdPr var_F8
  loc_9E2796: from_stack_2 = Me.Item(from_stack_1)
  loc_9E279B: FLdPr var_FC
  loc_9E279E:  = Me.Value
  loc_9E27A3: FLdRfVar var_B8
  loc_9E27A6: CStrVarTmp
  loc_9E27A7: FStStrNoPop var_100
  loc_9E27AA: FLdPr Me
  loc_9E27AD: VCallAd Control_ID_PeriodoCbo
  loc_9E27B0: FStAdFunc var_104
  loc_9E27B3: FLdPr var_104
  loc_9E27B6: Me.AddItem from_stack_1, from_stack_2
  loc_9E27BB: FFree1Str var_100
  loc_9E27BE: FFreeAd var_EC = "": var_F8 = "": var_FC = ""
  loc_9E27C9: FFree1Var var_B8 = ""
  loc_9E27CC: FLdRfVar var_88
  loc_9E27CF: NewIfNullPr clsperiodo
  loc_9E27D2: Call clsperiodo.MoveSiguiente()
  loc_9E27D7: Branch loc_9E2755
  loc_9E27DA: Call cmdNueva_Click()
  loc_9E27DF: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '960538
  'Data Table: 44548C
  loc_960520: FLdPr Me
  loc_960523: VCallAd Control_ID_wbbReporte
  loc_960526: FStAdFunc var_88
  loc_960529: FLdRfVar var_88
  loc_96052C: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_960531: FFree1Ad var_88
  loc_960534: ExitProcHresult
  loc_960535: ThisVCall unk_4454AB
End Sub

Private Sub cmdPrevia_Click() '95F368
  'Data Table: 44548C
  loc_95F350: ILdRf Me
  loc_95F353: CastAd
  loc_95F356: FStAdFunc var_88
  loc_95F359: FLdRfVar var_88
  loc_95F35C: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95F361: FFree1Ad var_88
  loc_95F364: ExitProcHresult
End Sub

Public Function bLogosGet() '4460DC
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4460EB
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4460FA
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '446109
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '984FF0
  'Data Table: 44548C
  loc_984FBC: LitI4 0
  loc_984FC1: LitI4 0
  loc_984FC6: FLdRfVar var_88
  loc_984FC9: Redim
  loc_984FD3: FLdPr Me
  loc_984FD6: VCallAd Control_ID_PeriodoCbo
  loc_984FD9: CVarAd
  loc_984FDD: ParmAry1St
  loc_984FE3: FLdRfVar var_88
  loc_984FE6: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_984FEB: FLdRfVar var_88
  loc_984FEE: Erase
  loc_984FEF: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B874C4
  'Data Table: 44548C
  loc_B86758: FLdPr Me
  loc_B8675B: MemLdI2 bGenerado
  loc_B8675E: BranchF loc_B86762
  loc_B86761: ExitProcHresult
  loc_B86762: LitVarStr var_94, "Generando reporte..."
  loc_B86767: PopAdLdVar
  loc_B86768: FLdPr Me
  loc_B8676B: VCallAd Control_ID_statusBar
  loc_B8676E: FStAdFunc var_A8
  loc_B86771: FLdPr var_A8
  loc_B86774: LateIdSt
  loc_B86779: FFree1Ad var_A8
  loc_B8677C: LitI4 &HB
  loc_B86781: CI2I4
  loc_B86782: FLdPr Me
  loc_B86785: Me.MousePointer = from_stack_1
  loc_B8678A: FLdPr Me
  loc_B8678D: MemLdRfVar from_stack_1.global_56
  loc_B86790: NewIfNullAd
  loc_B86793: FStAd var_AC 
  loc_B86797: LitStr "DROP TEMPORARY TABLE IF EXISTS cc;"
  loc_B8679A: LitStr " CREATE TEMPORARY TABLE cc"
  loc_B8679D: ConcatStr
  loc_B8679E: FStStrNoPop var_B0
  loc_B867A1: LitStr " SELECT cc.PeriInfo, cc.CodiCuco"
  loc_B867A4: ConcatStr
  loc_B867A5: FStStrNoPop var_B4
  loc_B867A8: LitStr " FROM infogov.cuentacontable cc"
  loc_B867AB: ConcatStr
  loc_B867AC: FStStrNoPop var_B8
  loc_B867AF: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = cc.PeriInfo"
  loc_B867B2: ConcatStr
  loc_B867B3: FStStrNoPop var_BC
  loc_B867B6: LitStr " WHERE cc.PeriInfo = "
  loc_B867B9: ConcatStr
  loc_B867BA: FStStrNoPop var_C4
  loc_B867BD: FLdRfVar var_C0
  loc_B867C0: FLdPr Me
  loc_B867C3: VCallAd Control_ID_PeriodoCbo
  loc_B867C6: FStAdFunc var_A8
  loc_B867C9: FLdPr var_A8
  loc_B867CC:  = Me.Text
  loc_B867D1: ILdRf var_C0
  loc_B867D4: ConcatStr
  loc_B867D5: FStStrNoPop var_C8
  loc_B867D8: LitStr vbNullString
  loc_B867DB: ConcatStr
  loc_B867DC: FStStrNoPop var_CC
  loc_B867DF: LitStr " AND cc.CodiTicu LIKE '2" & Chr(37) & "'"
  loc_B867E2: ConcatStr
  loc_B867E3: FStStrNoPop var_D0
  loc_B867E6: LitStr " /*AND cc.CodiCuco <> paraconta.ProvPaco"
  loc_B867E9: ConcatStr
  loc_B867EA: FStStrNoPop var_D4
  loc_B867ED: LitStr " AND cc.CodiCuco <> paraconta.ProePaco"
  loc_B867F0: ConcatStr
  loc_B867F1: FStStrNoPop var_D8
  loc_B867F4: LitStr " AND cc.CodiCuco <> paraconta.DeexPaco"
  loc_B867F7: ConcatStr
  loc_B867F8: FStStrNoPop var_DC
  loc_B867FB: LitStr " AND cc.CodiCuco <> paraconta.DeeePaco*/;"
  loc_B867FE: ConcatStr
  loc_B867FF: FStStrNoPop var_E0
  loc_B86802: FLdPr var_AC
  loc_B86805: Call clsbase.RedefineRS(from_stack_1v)
  loc_B8680A: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C4 = "": var_C0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B86827: FFree1Ad var_A8
  loc_B8682A: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_B8682D: LitStr " CREATE TEMPORARY TABLE tmovi ("
  loc_B86830: ConcatStr
  loc_B86831: FStStrNoPop var_B0
  loc_B86834: LitStr " eriInfo` year(4) NOT NULL DEFAULT '0000',"
  loc_B86837: ConcatStr
  loc_B86838: FStStrNoPop var_B4
  loc_B8683B: LitStr " odiCuco` varchar(12) NOT NULL DEFAULT '',"
  loc_B8683E: ConcatStr
  loc_B8683F: FStStrNoPop var_B8
  loc_B86842: LitStr " , Capital` decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_B86845: ConcatStr
  loc_B86846: FStStrNoPop var_BC
  loc_B86849: LitStr " , IntPact` decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_B8684C: ConcatStr
  loc_B8684D: FStStrNoPop var_C0
  loc_B86850: LitStr " , TotalDe` decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_B86853: ConcatStr
  loc_B86854: FStStrNoPop var_C4
  loc_B86857: LitStr " , , AmortDe` decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_B8685A: ConcatStr
  loc_B8685B: FStStrNoPop var_C8
  loc_B8685E: LitStr " , , IntPaga` decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_B86861: ConcatStr
  loc_B86862: FStStrNoPop var_CC
  loc_B86865: LitStr " , , AjusteD` decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_B86868: ConcatStr
  loc_B86869: FStStrNoPop var_D0
  loc_B8686C: LitStr " , , OtrosGa` decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_B8686F: ConcatStr
  loc_B86870: FStStrNoPop var_D4
  loc_B86873: LitStr " , , TotalPa` decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_B86876: ConcatStr
  loc_B86877: FStStrNoPop var_D8
  loc_B8687A: LitStr " , , , Capital` decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_B8687D: ConcatStr
  loc_B8687E: FStStrNoPop var_DC
  loc_B86881: LitStr " , , , IntPact` decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_B86884: ConcatStr
  loc_B86885: FStStrNoPop var_E0
  loc_B86888: LitStr " , , , TotalDe` decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_B8688B: ConcatStr
  loc_B8688C: FStStrNoPop var_E4
  loc_B8688F: LitStr " , , , , Capital` decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_B86892: ConcatStr
  loc_B86893: FStStrNoPop var_E8
  loc_B86896: LitStr " , , , , IntPact` decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_B86899: ConcatStr
  loc_B8689A: FStStrNoPop var_EC
  loc_B8689D: LitStr " , , , , Total` decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_B868A0: ConcatStr
  loc_B868A1: FStStrNoPop var_F0
  loc_B868A4: LitStr " , , , , , Capital` decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_B868A7: ConcatStr
  loc_B868A8: FStStrNoPop var_F4
  loc_B868AB: LitStr " , , , , , IntPact` decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_B868AE: ConcatStr
  loc_B868AF: FStStrNoPop var_F8
  loc_B868B2: LitStr " , , , , , TotalDe` decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_B868B5: ConcatStr
  loc_B868B6: FStStrNoPop var_FC
  loc_B868B9: LitStr " ormaLe` varchar(15) NOT NULL DEFAULT '',"
  loc_B868BC: ConcatStr
  loc_B868BD: FStStrNoPop var_100
  loc_B868C0: LitStr " echa` date NOT NULL DEFAULT '0000-00-00',"
  loc_B868C3: ConcatStr
  loc_B868C4: FStStrNoPop var_104
  loc_B868C7: LitStr " KEY idxtmp (eriInfo`,`CodiCuco`)"
  loc_B868CA: ConcatStr
  loc_B868CB: FStStrNoPop var_108
  loc_B868CE: LitStr " ) ENGINE=InnoDB ;"
  loc_B868D1: ConcatStr
  loc_B868D2: FStStrNoPop var_10C
  loc_B868D5: FLdPr var_AC
  loc_B868D8: Call clsbase.RedefineRS(from_stack_1v)
  loc_B868DD: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_B86910: LitStr "INSERT INTO tmovi (PeriInfo,CodiCuco,2Capital,2TotalDe)"
  loc_B86913: LitStr " SELECT cc.PeriInfo, cc.CodiCuco"
  loc_B86916: ConcatStr
  loc_B86917: FStStrNoPop var_B0
  loc_B8691A: LitStr ", Sum(IF(CodiTias=17 OR CodiTias=18,HabeMoas-DebeMoas,0))"
  loc_B8691D: ConcatStr
  loc_B8691E: FStStrNoPop var_B4
  loc_B86921: LitStr ", Sum(IF(CodiTias=17 OR CodiTias=18,HabeMoas-DebeMoas,0))+0"
  loc_B86924: ConcatStr
  loc_B86925: FStStrNoPop var_B8
  loc_B86928: LitStr " FROM cc"
  loc_B8692B: ConcatStr
  loc_B8692C: FStStrNoPop var_BC
  loc_B8692F: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = cc.PeriInfo AND mv.CodiCuco = cc.CodiCuco"
  loc_B86932: ConcatStr
  loc_B86933: FStStrNoPop var_C0
  loc_B86936: LitStr " INNER JOIN asiento ON asiento.PeriInfo = mv.PeriInfo AND asiento.CodiAsie = mv.CodiAsie"
  loc_B86939: ConcatStr
  loc_B8693A: FStStrNoPop var_C4
  loc_B8693D: LitStr " GROUP BY asiento.CodiAsie, CodiCuco;"
  loc_B86940: ConcatStr
  loc_B86941: FStStrNoPop var_C8
  loc_B86944: FLdPr var_AC
  loc_B86947: Call clsbase.RedefineRS(from_stack_1v)
  loc_B8694C: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B8695D: LitStr "INSERT INTO tmovi (PeriInfo,CodiCuco,3AmortDe,3TotalPa)"
  loc_B86960: LitStr " SELECT cc.PeriInfo, cc.CodiCuco"
  loc_B86963: ConcatStr
  loc_B86964: FStStrNoPop var_B0
  loc_B86967: LitStr ", Sum(IF(CodiTias<>17 AND CodiTias<>18 AND CodiTias<>16 AND CodiTias<>25 AND CodiTias<>27,DebeMoas,0))"
  loc_B8696A: ConcatStr
  loc_B8696B: FStStrNoPop var_B4
  loc_B8696E: LitStr ", Sum(IF(CodiTias<>17 AND CodiTias<>18 AND CodiTias<>16 AND CodiTias<>25 AND CodiTias<>27,DebeMoas,0))"
  loc_B86971: ConcatStr
  loc_B86972: FStStrNoPop var_B8
  loc_B86975: LitStr " FROM cc"
  loc_B86978: ConcatStr
  loc_B86979: FStStrNoPop var_BC
  loc_B8697C: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = cc.PeriInfo AND mv.CodiCuco = cc.CodiCuco"
  loc_B8697F: ConcatStr
  loc_B86980: FStStrNoPop var_C0
  loc_B86983: LitStr " INNER JOIN asiento ON asiento.PeriInfo = mv.PeriInfo AND asiento.CodiAsie = mv.CodiAsie"
  loc_B86986: ConcatStr
  loc_B86987: FStStrNoPop var_C4
  loc_B8698A: LitStr " GROUP BY asiento.CodiAsie, CodiCuco;"
  loc_B8698D: ConcatStr
  loc_B8698E: FStStrNoPop var_C8
  loc_B86991: FLdPr var_AC
  loc_B86994: Call clsbase.RedefineRS(from_stack_1v)
  loc_B86999: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B869AA: LitStr "INSERT INTO tmovi (PeriInfo,CodiCuco,4Capital,4TotalDe)"
  loc_B869AD: LitStr " SELECT cc.PeriInfo, cc.CodiCuco"
  loc_B869B0: ConcatStr
  loc_B869B1: FStStrNoPop var_B0
  loc_B869B4: LitStr ", Sum(IF(CodiTias<>17 AND CodiTias<>18 AND CodiTias<>16 AND CodiTias<>25 AND CodiTias<>27,HabeMoas,0))"
  loc_B869B7: ConcatStr
  loc_B869B8: FStStrNoPop var_B4
  loc_B869BB: LitStr ", Sum(IF(CodiTias<>17 AND CodiTias<>18 AND CodiTias<>16 AND CodiTias<>25 AND CodiTias<>27,HabeMoas,0))"
  loc_B869BE: ConcatStr
  loc_B869BF: FStStrNoPop var_B8
  loc_B869C2: LitStr " FROM cc"
  loc_B869C5: ConcatStr
  loc_B869C6: FStStrNoPop var_BC
  loc_B869C9: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = cc.PeriInfo AND mv.CodiCuco = cc.CodiCuco"
  loc_B869CC: ConcatStr
  loc_B869CD: FStStrNoPop var_C0
  loc_B869D0: LitStr " INNER JOIN asiento ON asiento.PeriInfo = mv.PeriInfo AND asiento.CodiAsie = mv.CodiAsie"
  loc_B869D3: ConcatStr
  loc_B869D4: FStStrNoPop var_C4
  loc_B869D7: LitStr " GROUP BY asiento.CodiAsie, CodiCuco;"
  loc_B869DA: ConcatStr
  loc_B869DB: FStStrNoPop var_C8
  loc_B869DE: FLdPr var_AC
  loc_B869E1: Call clsbase.RedefineRS(from_stack_1v)
  loc_B869E6: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B869F7: LitStr "SELECT cc.CodiCuco, DetaCuco"
  loc_B869FA: LitStr ", IF(tmovi.CodiCuco='2211010000',1,IF(tmovi.CodiCuco='2119010000',3,2)) Orden"
  loc_B869FD: ConcatStr
  loc_B869FE: FStStrNoPop var_B0
  loc_B86A01: LitStr ", Sum(2Capital) iiCapital, Sum(2IntPact) iiIntPact, Sum(2TotalDe) iiTotalDe"
  loc_B86A04: ConcatStr
  loc_B86A05: FStStrNoPop var_B4
  loc_B86A08: LitStr ", Sum(3AmortDe) iiiAmortDe, Sum(3IntPaga) iiiIntPaga, Sum(3AjusteD) iiiAjusteD, Sum(3OtrosGa) iiiOtrosGa, Sum(3TotalPa) iiiTotalPa"
  loc_B86A0B: ConcatStr
  loc_B86A0C: FStStrNoPop var_B8
  loc_B86A0F: LitStr ", Sum(4Capital) ivCapital, Sum(4IntPact) ivIntPact, Sum(4TotalDe) ivTotalDe"
  loc_B86A12: ConcatStr
  loc_B86A13: FStStrNoPop var_BC
  loc_B86A16: LitStr ", Sum(5Capital) vCapital, Sum(5IntPact) vIntPact, Sum(5Total) vTotal"
  loc_B86A19: ConcatStr
  loc_B86A1A: FStStrNoPop var_C0
  loc_B86A1D: LitStr ", Sum(2Capital)-Sum(3AmortDe)+sum(4Capital) viCapital"
  loc_B86A20: ConcatStr
  loc_B86A21: FStStrNoPop var_C4
  loc_B86A24: LitStr ", Sum(6IntPact) viIntPact"
  loc_B86A27: ConcatStr
  loc_B86A28: FStStrNoPop var_C8
  loc_B86A2B: LitStr ", Sum(2TotalDe)-Sum(3TotalPa)+Sum(4TotalDe) viTotalDe"
  loc_B86A2E: ConcatStr
  loc_B86A2F: FStStrNoPop var_CC
  loc_B86A32: LitStr ", NormaLe, '' Fecha"
  loc_B86A35: ConcatStr
  loc_B86A36: FStStrNoPop var_D0
  loc_B86A39: LitStr " FROM tmovi"
  loc_B86A3C: ConcatStr
  loc_B86A3D: FStStrNoPop var_D4
  loc_B86A40: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = tmovi.PeriInfo AND cc.CodiCuco = tmovi.CodiCuco"
  loc_B86A43: ConcatStr
  loc_B86A44: FStStrNoPop var_D8
  loc_B86A47: LitStr " GROUP BY CodiCuco ORDER BY Orden"
  loc_B86A4A: ConcatStr
  loc_B86A4B: FStStrNoPop var_DC
  loc_B86A4E: FLdPr var_AC
  loc_B86A51: Call clsbase.RedefineRS(from_stack_1v)
  loc_B86A56: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B86A71: FLdRfVar var_110
  loc_B86A74: FLdPr var_AC
  loc_B86A77: from_stack_1 = clsbase.RecordCount
  loc_B86A7C: ILdRf var_110
  loc_B86A7F: LitI4 1
  loc_B86A84: LtI4
  loc_B86A85: BranchF loc_B86A98
  loc_B86A88: LitI4 0
  loc_B86A8D: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B86A90: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B86A95: Branch loc_B8749A
  loc_B86A98: FLdPr var_AC
  loc_B86A9B: Call clsbase.MoveFirst()
  loc_B86AA0: LitI4 0
  loc_B86AA5: LitI4 1
  loc_B86AAA: FLdPr Me
  loc_B86AAD: MemLdRfVar from_stack_1.global_88
  loc_B86AB0: Redim
  loc_B86ABA: LitI4 0
  loc_B86ABF: FLdRfVar var_110
  loc_B86AC2: FLdPr var_AC
  loc_B86AC5: from_stack_1 = clsbase.RecordCount
  loc_B86ACA: ILdRf var_110
  loc_B86ACD: FLdPr Me
  loc_B86AD0: MemLdRfVar from_stack_1.global_80
  loc_B86AD3: Redim
  loc_B86ADD: LitI2_Byte 1
  loc_B86ADF: FLdPr Me
  loc_B86AE2: MemLdRfVar from_stack_1.global_84
  loc_B86AE5: FLdPr Me
  loc_B86AE8: MemLdStr global_80
  loc_B86AEB: LitI2_Byte 1
  loc_B86AED: FnUBound
  loc_B86AEF: CI2I4
  loc_B86AF0: ForI2 var_114
  loc_B86AF6: FLdRfVar var_11C
  loc_B86AF9: LitVarStr var_94, "CodiCuco"
  loc_B86AFE: PopAdLdVar
  loc_B86AFF: FLdRfVar var_118
  loc_B86B02: FLdRfVar var_A8
  loc_B86B05: FLdPr var_AC
  loc_B86B08: from_stack_1v = clsbase.RsFrmGet()
  loc_B86B0D: FLdPr var_A8
  loc_B86B10:  = Me.Fields
  loc_B86B15: FLdPr var_118
  loc_B86B18: from_stack_2 = Me.Item(from_stack_1)
  loc_B86B1D: LitI2_Byte 0
  loc_B86B1F: LitVar_Missing var_140
  loc_B86B22: LitI2_Byte 0
  loc_B86B24: FLdZeroAd var_11C
  loc_B86B27: CVarAd
  loc_B86B2B: PopAdLdVar
  loc_B86B2C: FLdPr Me
  loc_B86B2F: MemLdI2 global_84
  loc_B86B32: CI4UI1
  loc_B86B33: FLdPr Me
  loc_B86B36: MemLdStr global_80
  loc_B86B39: AryLock
  loc_B86B3C: Ary1LdPr
  loc_B86B3D: MemLdRfVar from_stack_1.global_0
  loc_B86B40: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B86B45: AryUnlock
  loc_B86B48: FFreeAd var_A8 = ""
  loc_B86B4F: FFreeVar var_130 = ""
  loc_B86B56: FLdRfVar var_11C
  loc_B86B59: LitVarStr var_94, "DetaCuco"
  loc_B86B5E: PopAdLdVar
  loc_B86B5F: FLdRfVar var_118
  loc_B86B62: FLdRfVar var_A8
  loc_B86B65: FLdPr var_AC
  loc_B86B68: from_stack_1v = clsbase.RsFrmGet()
  loc_B86B6D: FLdPr var_A8
  loc_B86B70:  = Me.Fields
  loc_B86B75: FLdPr var_118
  loc_B86B78: from_stack_2 = Me.Item(from_stack_1)
  loc_B86B7D: LitI2_Byte 0
  loc_B86B7F: LitVar_Missing var_140
  loc_B86B82: LitI2_Byte 0
  loc_B86B84: FLdZeroAd var_11C
  loc_B86B87: CVarAd
  loc_B86B8B: PopAdLdVar
  loc_B86B8C: FLdPr Me
  loc_B86B8F: MemLdI2 global_84
  loc_B86B92: CI4UI1
  loc_B86B93: FLdPr Me
  loc_B86B96: MemLdStr global_80
  loc_B86B99: AryLock
  loc_B86B9C: Ary1LdPr
  loc_B86B9D: MemLdRfVar from_stack_1.global_4
  loc_B86BA0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B86BA5: AryUnlock
  loc_B86BA8: FFreeAd var_A8 = ""
  loc_B86BAF: FFreeVar var_130 = ""
  loc_B86BB6: FLdRfVar var_11C
  loc_B86BB9: LitVarStr var_94, "Orden"
  loc_B86BBE: PopAdLdVar
  loc_B86BBF: FLdRfVar var_118
  loc_B86BC2: FLdRfVar var_A8
  loc_B86BC5: FLdPr var_AC
  loc_B86BC8: from_stack_1v = clsbase.RsFrmGet()
  loc_B86BCD: FLdPr var_A8
  loc_B86BD0:  = Me.Fields
  loc_B86BD5: FLdPr var_118
  loc_B86BD8: from_stack_2 = Me.Item(from_stack_1)
  loc_B86BDD: LitI2_Byte 0
  loc_B86BDF: LitVar_Missing var_140
  loc_B86BE2: LitI2_Byte 0
  loc_B86BE4: FLdZeroAd var_11C
  loc_B86BE7: CVarAd
  loc_B86BEB: PopAdLdVar
  loc_B86BEC: FLdPr Me
  loc_B86BEF: MemLdI2 global_84
  loc_B86BF2: CI4UI1
  loc_B86BF3: FLdPr Me
  loc_B86BF6: MemLdStr global_80
  loc_B86BF9: AryLock
  loc_B86BFC: Ary1LdPr
  loc_B86BFD: MemLdRfVar from_stack_1.global_8
  loc_B86C00: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B86C05: AryUnlock
  loc_B86C08: FFreeAd var_A8 = ""
  loc_B86C0F: FFreeVar var_130 = ""
  loc_B86C16: FLdRfVar var_11C
  loc_B86C19: LitVarStr var_94, "iiCapital"
  loc_B86C1E: PopAdLdVar
  loc_B86C1F: FLdRfVar var_118
  loc_B86C22: FLdRfVar var_A8
  loc_B86C25: FLdPr var_AC
  loc_B86C28: from_stack_1v = clsbase.RsFrmGet()
  loc_B86C2D: FLdPr var_A8
  loc_B86C30:  = Me.Fields
  loc_B86C35: FLdPr var_118
  loc_B86C38: from_stack_2 = Me.Item(from_stack_1)
  loc_B86C3D: LitI2_Byte 0
  loc_B86C3F: LitI4 1
  loc_B86C44: FLdPr Me
  loc_B86C47: MemLdStr global_88
  loc_B86C4A: AryLock
  loc_B86C4D: Ary1LdPr
  loc_B86C4E: MemLdRfVar from_stack_1.global_12
  loc_B86C51: CVarRef
  loc_B86C56: LitI2_Byte &HFF
  loc_B86C58: FLdZeroAd var_11C
  loc_B86C5B: CVarAd
  loc_B86C5F: PopAdLdVar
  loc_B86C60: FLdPr Me
  loc_B86C63: MemLdI2 global_84
  loc_B86C66: CI4UI1
  loc_B86C67: FLdPr Me
  loc_B86C6A: MemLdStr global_80
  loc_B86C6D: AryLock
  loc_B86C70: Ary1LdPr
  loc_B86C71: MemLdRfVar from_stack_1.global_12
  loc_B86C74: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B86C79: AryUnlock
  loc_B86C7C: AryUnlock
  loc_B86C7F: FFreeAd var_A8 = ""
  loc_B86C86: FFree1Var var_130 = ""
  loc_B86C89: FLdRfVar var_11C
  loc_B86C8C: LitVarStr var_94, "iiIntPact"
  loc_B86C91: PopAdLdVar
  loc_B86C92: FLdRfVar var_118
  loc_B86C95: FLdRfVar var_A8
  loc_B86C98: FLdPr var_AC
  loc_B86C9B: from_stack_1v = clsbase.RsFrmGet()
  loc_B86CA0: FLdPr var_A8
  loc_B86CA3:  = Me.Fields
  loc_B86CA8: FLdPr var_118
  loc_B86CAB: from_stack_2 = Me.Item(from_stack_1)
  loc_B86CB0: LitI2_Byte 0
  loc_B86CB2: LitI4 1
  loc_B86CB7: FLdPr Me
  loc_B86CBA: MemLdStr global_88
  loc_B86CBD: AryLock
  loc_B86CC0: Ary1LdPr
  loc_B86CC1: MemLdRfVar from_stack_1.global_16
  loc_B86CC4: CVarRef
  loc_B86CC9: LitI2_Byte &HFF
  loc_B86CCB: FLdZeroAd var_11C
  loc_B86CCE: CVarAd
  loc_B86CD2: PopAdLdVar
  loc_B86CD3: FLdPr Me
  loc_B86CD6: MemLdI2 global_84
  loc_B86CD9: CI4UI1
  loc_B86CDA: FLdPr Me
  loc_B86CDD: MemLdStr global_80
  loc_B86CE0: AryLock
  loc_B86CE3: Ary1LdPr
  loc_B86CE4: MemLdRfVar from_stack_1.global_16
  loc_B86CE7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B86CEC: AryUnlock
  loc_B86CEF: AryUnlock
  loc_B86CF2: FFreeAd var_A8 = ""
  loc_B86CF9: FFree1Var var_130 = ""
  loc_B86CFC: FLdRfVar var_11C
  loc_B86CFF: LitVarStr var_94, "iiTotalDe"
  loc_B86D04: PopAdLdVar
  loc_B86D05: FLdRfVar var_118
  loc_B86D08: FLdRfVar var_A8
  loc_B86D0B: FLdPr var_AC
  loc_B86D0E: from_stack_1v = clsbase.RsFrmGet()
  loc_B86D13: FLdPr var_A8
  loc_B86D16:  = Me.Fields
  loc_B86D1B: FLdPr var_118
  loc_B86D1E: from_stack_2 = Me.Item(from_stack_1)
  loc_B86D23: LitI2_Byte 0
  loc_B86D25: LitI4 1
  loc_B86D2A: FLdPr Me
  loc_B86D2D: MemLdStr global_88
  loc_B86D30: AryLock
  loc_B86D33: Ary1LdPr
  loc_B86D34: MemLdRfVar from_stack_1.global_20
  loc_B86D37: CVarRef
  loc_B86D3C: LitI2_Byte &HFF
  loc_B86D3E: FLdZeroAd var_11C
  loc_B86D41: CVarAd
  loc_B86D45: PopAdLdVar
  loc_B86D46: FLdPr Me
  loc_B86D49: MemLdI2 global_84
  loc_B86D4C: CI4UI1
  loc_B86D4D: FLdPr Me
  loc_B86D50: MemLdStr global_80
  loc_B86D53: AryLock
  loc_B86D56: Ary1LdPr
  loc_B86D57: MemLdRfVar from_stack_1.global_20
  loc_B86D5A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B86D5F: AryUnlock
  loc_B86D62: AryUnlock
  loc_B86D65: FFreeAd var_A8 = ""
  loc_B86D6C: FFree1Var var_130 = ""
  loc_B86D6F: FLdRfVar var_11C
  loc_B86D72: LitVarStr var_94, "iiiAmortDe"
  loc_B86D77: PopAdLdVar
  loc_B86D78: FLdRfVar var_118
  loc_B86D7B: FLdRfVar var_A8
  loc_B86D7E: FLdPr var_AC
  loc_B86D81: from_stack_1v = clsbase.RsFrmGet()
  loc_B86D86: FLdPr var_A8
  loc_B86D89:  = Me.Fields
  loc_B86D8E: FLdPr var_118
  loc_B86D91: from_stack_2 = Me.Item(from_stack_1)
  loc_B86D96: LitI2_Byte 0
  loc_B86D98: LitI4 1
  loc_B86D9D: FLdPr Me
  loc_B86DA0: MemLdStr global_88
  loc_B86DA3: AryLock
  loc_B86DA6: Ary1LdPr
  loc_B86DA7: MemLdRfVar from_stack_1.global_24
  loc_B86DAA: CVarRef
  loc_B86DAF: LitI2_Byte &HFF
  loc_B86DB1: FLdZeroAd var_11C
  loc_B86DB4: CVarAd
  loc_B86DB8: PopAdLdVar
  loc_B86DB9: FLdPr Me
  loc_B86DBC: MemLdI2 global_84
  loc_B86DBF: CI4UI1
  loc_B86DC0: FLdPr Me
  loc_B86DC3: MemLdStr global_80
  loc_B86DC6: AryLock
  loc_B86DC9: Ary1LdPr
  loc_B86DCA: MemLdRfVar from_stack_1.global_24
  loc_B86DCD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B86DD2: AryUnlock
  loc_B86DD5: AryUnlock
  loc_B86DD8: FFreeAd var_A8 = ""
  loc_B86DDF: FFree1Var var_130 = ""
  loc_B86DE2: FLdRfVar var_11C
  loc_B86DE5: LitVarStr var_94, "iiiIntPaga"
  loc_B86DEA: PopAdLdVar
  loc_B86DEB: FLdRfVar var_118
  loc_B86DEE: FLdRfVar var_A8
  loc_B86DF1: FLdPr var_AC
  loc_B86DF4: from_stack_1v = clsbase.RsFrmGet()
  loc_B86DF9: FLdPr var_A8
  loc_B86DFC:  = Me.Fields
  loc_B86E01: FLdPr var_118
  loc_B86E04: from_stack_2 = Me.Item(from_stack_1)
  loc_B86E09: LitI2_Byte 0
  loc_B86E0B: LitI4 1
  loc_B86E10: FLdPr Me
  loc_B86E13: MemLdStr global_88
  loc_B86E16: AryLock
  loc_B86E19: Ary1LdPr
  loc_B86E1A: MemLdRfVar from_stack_1.global_28
  loc_B86E1D: CVarRef
  loc_B86E22: LitI2_Byte &HFF
  loc_B86E24: FLdZeroAd var_11C
  loc_B86E27: CVarAd
  loc_B86E2B: PopAdLdVar
  loc_B86E2C: FLdPr Me
  loc_B86E2F: MemLdI2 global_84
  loc_B86E32: CI4UI1
  loc_B86E33: FLdPr Me
  loc_B86E36: MemLdStr global_80
  loc_B86E39: AryLock
  loc_B86E3C: Ary1LdPr
  loc_B86E3D: MemLdRfVar from_stack_1.global_28
  loc_B86E40: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B86E45: AryUnlock
  loc_B86E48: AryUnlock
  loc_B86E4B: FFreeAd var_A8 = ""
  loc_B86E52: FFree1Var var_130 = ""
  loc_B86E55: FLdRfVar var_11C
  loc_B86E58: LitVarStr var_94, "iiiAjusteD"
  loc_B86E5D: PopAdLdVar
  loc_B86E5E: FLdRfVar var_118
  loc_B86E61: FLdRfVar var_A8
  loc_B86E64: FLdPr var_AC
  loc_B86E67: from_stack_1v = clsbase.RsFrmGet()
  loc_B86E6C: FLdPr var_A8
  loc_B86E6F:  = Me.Fields
  loc_B86E74: FLdPr var_118
  loc_B86E77: from_stack_2 = Me.Item(from_stack_1)
  loc_B86E7C: LitI2_Byte 0
  loc_B86E7E: LitI4 1
  loc_B86E83: FLdPr Me
  loc_B86E86: MemLdStr global_88
  loc_B86E89: AryLock
  loc_B86E8C: Ary1LdPr
  loc_B86E8D: MemLdRfVar from_stack_1.global_32
  loc_B86E90: CVarRef
  loc_B86E95: LitI2_Byte &HFF
  loc_B86E97: FLdZeroAd var_11C
  loc_B86E9A: CVarAd
  loc_B86E9E: PopAdLdVar
  loc_B86E9F: FLdPr Me
  loc_B86EA2: MemLdI2 global_84
  loc_B86EA5: CI4UI1
  loc_B86EA6: FLdPr Me
  loc_B86EA9: MemLdStr global_80
  loc_B86EAC: AryLock
  loc_B86EAF: Ary1LdPr
  loc_B86EB0: MemLdRfVar from_stack_1.global_32
  loc_B86EB3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B86EB8: AryUnlock
  loc_B86EBB: AryUnlock
  loc_B86EBE: FFreeAd var_A8 = ""
  loc_B86EC5: FFree1Var var_130 = ""
  loc_B86EC8: FLdRfVar var_11C
  loc_B86ECB: LitVarStr var_94, "iiiOtrosGa"
  loc_B86ED0: PopAdLdVar
  loc_B86ED1: FLdRfVar var_118
  loc_B86ED4: FLdRfVar var_A8
  loc_B86ED7: FLdPr var_AC
  loc_B86EDA: from_stack_1v = clsbase.RsFrmGet()
  loc_B86EDF: FLdPr var_A8
  loc_B86EE2:  = Me.Fields
  loc_B86EE7: FLdPr var_118
  loc_B86EEA: from_stack_2 = Me.Item(from_stack_1)
  loc_B86EEF: LitI2_Byte 0
  loc_B86EF1: LitI4 1
  loc_B86EF6: FLdPr Me
  loc_B86EF9: MemLdStr global_88
  loc_B86EFC: AryLock
  loc_B86EFF: Ary1LdPr
  loc_B86F00: MemLdRfVar from_stack_1.global_36
  loc_B86F03: CVarRef
  loc_B86F08: LitI2_Byte &HFF
  loc_B86F0A: FLdZeroAd var_11C
  loc_B86F0D: CVarAd
  loc_B86F11: PopAdLdVar
  loc_B86F12: FLdPr Me
  loc_B86F15: MemLdI2 global_84
  loc_B86F18: CI4UI1
  loc_B86F19: FLdPr Me
  loc_B86F1C: MemLdStr global_80
  loc_B86F1F: AryLock
  loc_B86F22: Ary1LdPr
  loc_B86F23: MemLdRfVar from_stack_1.global_36
  loc_B86F26: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B86F2B: AryUnlock
  loc_B86F2E: AryUnlock
  loc_B86F31: FFreeAd var_A8 = ""
  loc_B86F38: FFree1Var var_130 = ""
  loc_B86F3B: FLdRfVar var_11C
  loc_B86F3E: LitVarStr var_94, "iiiTotalPa"
  loc_B86F43: PopAdLdVar
  loc_B86F44: FLdRfVar var_118
  loc_B86F47: FLdRfVar var_A8
  loc_B86F4A: FLdPr var_AC
  loc_B86F4D: from_stack_1v = clsbase.RsFrmGet()
  loc_B86F52: FLdPr var_A8
  loc_B86F55:  = Me.Fields
  loc_B86F5A: FLdPr var_118
  loc_B86F5D: from_stack_2 = Me.Item(from_stack_1)
  loc_B86F62: LitI2_Byte 0
  loc_B86F64: LitI4 1
  loc_B86F69: FLdPr Me
  loc_B86F6C: MemLdStr global_88
  loc_B86F6F: AryLock
  loc_B86F72: Ary1LdPr
  loc_B86F73: MemLdRfVar from_stack_1.global_40
  loc_B86F76: CVarRef
  loc_B86F7B: LitI2_Byte &HFF
  loc_B86F7D: FLdZeroAd var_11C
  loc_B86F80: CVarAd
  loc_B86F84: PopAdLdVar
  loc_B86F85: FLdPr Me
  loc_B86F88: MemLdI2 global_84
  loc_B86F8B: CI4UI1
  loc_B86F8C: FLdPr Me
  loc_B86F8F: MemLdStr global_80
  loc_B86F92: AryLock
  loc_B86F95: Ary1LdPr
  loc_B86F96: MemLdRfVar from_stack_1.global_40
  loc_B86F99: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B86F9E: AryUnlock
  loc_B86FA1: AryUnlock
  loc_B86FA4: FFreeAd var_A8 = ""
  loc_B86FAB: FFree1Var var_130 = ""
  loc_B86FAE: FLdRfVar var_11C
  loc_B86FB1: LitVarStr var_94, "ivCapital"
  loc_B86FB6: PopAdLdVar
  loc_B86FB7: FLdRfVar var_118
  loc_B86FBA: FLdRfVar var_A8
  loc_B86FBD: FLdPr var_AC
  loc_B86FC0: from_stack_1v = clsbase.RsFrmGet()
  loc_B86FC5: FLdPr var_A8
  loc_B86FC8:  = Me.Fields
  loc_B86FCD: FLdPr var_118
  loc_B86FD0: from_stack_2 = Me.Item(from_stack_1)
  loc_B86FD5: LitI2_Byte 0
  loc_B86FD7: LitI4 1
  loc_B86FDC: FLdPr Me
  loc_B86FDF: MemLdStr global_88
  loc_B86FE2: AryLock
  loc_B86FE5: Ary1LdPr
  loc_B86FE6: MemLdRfVar from_stack_1.global_44
  loc_B86FE9: CVarRef
  loc_B86FEE: LitI2_Byte &HFF
  loc_B86FF0: FLdZeroAd var_11C
  loc_B86FF3: CVarAd
  loc_B86FF7: PopAdLdVar
  loc_B86FF8: FLdPr Me
  loc_B86FFB: MemLdI2 global_84
  loc_B86FFE: CI4UI1
  loc_B86FFF: FLdPr Me
  loc_B87002: MemLdStr global_80
  loc_B87005: AryLock
  loc_B87008: Ary1LdPr
  loc_B87009: MemLdRfVar from_stack_1.global_44
  loc_B8700C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B87011: AryUnlock
  loc_B87014: AryUnlock
  loc_B87017: FFreeAd var_A8 = ""
  loc_B8701E: FFree1Var var_130 = ""
  loc_B87021: FLdRfVar var_11C
  loc_B87024: LitVarStr var_94, "ivIntPact"
  loc_B87029: PopAdLdVar
  loc_B8702A: FLdRfVar var_118
  loc_B8702D: FLdRfVar var_A8
  loc_B87030: FLdPr var_AC
  loc_B87033: from_stack_1v = clsbase.RsFrmGet()
  loc_B87038: FLdPr var_A8
  loc_B8703B:  = Me.Fields
  loc_B87040: FLdPr var_118
  loc_B87043: from_stack_2 = Me.Item(from_stack_1)
  loc_B87048: LitI2_Byte 0
  loc_B8704A: LitI4 1
  loc_B8704F: FLdPr Me
  loc_B87052: MemLdStr global_88
  loc_B87055: AryLock
  loc_B87058: Ary1LdPr
  loc_B87059: MemLdRfVar from_stack_1.global_48
  loc_B8705C: CVarRef
  loc_B87061: LitI2_Byte &HFF
  loc_B87063: FLdZeroAd var_11C
  loc_B87066: CVarAd
  loc_B8706A: PopAdLdVar
  loc_B8706B: FLdPr Me
  loc_B8706E: MemLdI2 global_84
  loc_B87071: CI4UI1
  loc_B87072: FLdPr Me
  loc_B87075: MemLdStr global_80
  loc_B87078: AryLock
  loc_B8707B: Ary1LdPr
  loc_B8707C: MemLdRfVar from_stack_1.global_48
  loc_B8707F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B87084: AryUnlock
  loc_B87087: AryUnlock
  loc_B8708A: FFreeAd var_A8 = ""
  loc_B87091: FFree1Var var_130 = ""
  loc_B87094: FLdRfVar var_11C
  loc_B87097: LitVarStr var_94, "ivTotalDe"
  loc_B8709C: PopAdLdVar
  loc_B8709D: FLdRfVar var_118
  loc_B870A0: FLdRfVar var_A8
  loc_B870A3: FLdPr var_AC
  loc_B870A6: from_stack_1v = clsbase.RsFrmGet()
  loc_B870AB: FLdPr var_A8
  loc_B870AE:  = Me.Fields
  loc_B870B3: FLdPr var_118
  loc_B870B6: from_stack_2 = Me.Item(from_stack_1)
  loc_B870BB: LitI2_Byte 0
  loc_B870BD: LitI4 1
  loc_B870C2: FLdPr Me
  loc_B870C5: MemLdStr global_88
  loc_B870C8: AryLock
  loc_B870CB: Ary1LdPr
  loc_B870CC: MemLdRfVar from_stack_1.bLogos
  loc_B870CF: CVarRef
  loc_B870D4: LitI2_Byte &HFF
  loc_B870D6: FLdZeroAd var_11C
  loc_B870D9: CVarAd
  loc_B870DD: PopAdLdVar
  loc_B870DE: FLdPr Me
  loc_B870E1: MemLdI2 global_84
  loc_B870E4: CI4UI1
  loc_B870E5: FLdPr Me
  loc_B870E8: MemLdStr global_80
  loc_B870EB: AryLock
  loc_B870EE: Ary1LdPr
  loc_B870EF: MemLdRfVar from_stack_1.bLogos
  loc_B870F2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B870F7: AryUnlock
  loc_B870FA: AryUnlock
  loc_B870FD: FFreeAd var_A8 = ""
  loc_B87104: FFree1Var var_130 = ""
  loc_B87107: FLdRfVar var_11C
  loc_B8710A: LitVarStr var_94, "vCapital"
  loc_B8710F: PopAdLdVar
  loc_B87110: FLdRfVar var_118
  loc_B87113: FLdRfVar var_A8
  loc_B87116: FLdPr var_AC
  loc_B87119: from_stack_1v = clsbase.RsFrmGet()
  loc_B8711E: FLdPr var_A8
  loc_B87121:  = Me.Fields
  loc_B87126: FLdPr var_118
  loc_B87129: from_stack_2 = Me.Item(from_stack_1)
  loc_B8712E: LitI2_Byte 0
  loc_B87130: LitI4 1
  loc_B87135: FLdPr Me
  loc_B87138: MemLdStr global_88
  loc_B8713B: AryLock
  loc_B8713E: Ary1LdPr
  loc_B8713F: MemLdRfVar from_stack_1.global_56
  loc_B87142: CVarRef
  loc_B87147: LitI2_Byte &HFF
  loc_B87149: FLdZeroAd var_11C
  loc_B8714C: CVarAd
  loc_B87150: PopAdLdVar
  loc_B87151: FLdPr Me
  loc_B87154: MemLdI2 global_84
  loc_B87157: CI4UI1
  loc_B87158: FLdPr Me
  loc_B8715B: MemLdStr global_80
  loc_B8715E: AryLock
  loc_B87161: Ary1LdPr
  loc_B87162: MemLdRfVar from_stack_1.global_56
  loc_B87165: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B8716A: AryUnlock
  loc_B8716D: AryUnlock
  loc_B87170: FFreeAd var_A8 = ""
  loc_B87177: FFree1Var var_130 = ""
  loc_B8717A: FLdRfVar var_11C
  loc_B8717D: LitVarStr var_94, "vIntPact"
  loc_B87182: PopAdLdVar
  loc_B87183: FLdRfVar var_118
  loc_B87186: FLdRfVar var_A8
  loc_B87189: FLdPr var_AC
  loc_B8718C: from_stack_1v = clsbase.RsFrmGet()
  loc_B87191: FLdPr var_A8
  loc_B87194:  = Me.Fields
  loc_B87199: FLdPr var_118
  loc_B8719C: from_stack_2 = Me.Item(from_stack_1)
  loc_B871A1: LitI2_Byte 0
  loc_B871A3: LitI4 1
  loc_B871A8: FLdPr Me
  loc_B871AB: MemLdStr global_88
  loc_B871AE: AryLock
  loc_B871B1: Ary1LdPr
  loc_B871B2: MemLdRfVar from_stack_1.global_60
  loc_B871B5: CVarRef
  loc_B871BA: LitI2_Byte &HFF
  loc_B871BC: FLdZeroAd var_11C
  loc_B871BF: CVarAd
  loc_B871C3: PopAdLdVar
  loc_B871C4: FLdPr Me
  loc_B871C7: MemLdI2 global_84
  loc_B871CA: CI4UI1
  loc_B871CB: FLdPr Me
  loc_B871CE: MemLdStr global_80
  loc_B871D1: AryLock
  loc_B871D4: Ary1LdPr
  loc_B871D5: MemLdRfVar from_stack_1.global_60
  loc_B871D8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B871DD: AryUnlock
  loc_B871E0: AryUnlock
  loc_B871E3: FFreeAd var_A8 = ""
  loc_B871EA: FFree1Var var_130 = ""
  loc_B871ED: FLdRfVar var_11C
  loc_B871F0: LitVarStr var_94, "vTotal"
  loc_B871F5: PopAdLdVar
  loc_B871F6: FLdRfVar var_118
  loc_B871F9: FLdRfVar var_A8
  loc_B871FC: FLdPr var_AC
  loc_B871FF: from_stack_1v = clsbase.RsFrmGet()
  loc_B87204: FLdPr var_A8
  loc_B87207:  = Me.Fields
  loc_B8720C: FLdPr var_118
  loc_B8720F: from_stack_2 = Me.Item(from_stack_1)
  loc_B87214: LitI2_Byte 0
  loc_B87216: LitI4 1
  loc_B8721B: FLdPr Me
  loc_B8721E: MemLdStr global_88
  loc_B87221: AryLock
  loc_B87224: Ary1LdPr
  loc_B87225: MemLdRfVar from_stack_1.global_64
  loc_B87228: CVarRef
  loc_B8722D: LitI2_Byte &HFF
  loc_B8722F: FLdZeroAd var_11C
  loc_B87232: CVarAd
  loc_B87236: PopAdLdVar
  loc_B87237: FLdPr Me
  loc_B8723A: MemLdI2 global_84
  loc_B8723D: CI4UI1
  loc_B8723E: FLdPr Me
  loc_B87241: MemLdStr global_80
  loc_B87244: AryLock
  loc_B87247: Ary1LdPr
  loc_B87248: MemLdRfVar from_stack_1.global_64
  loc_B8724B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B87250: AryUnlock
  loc_B87253: AryUnlock
  loc_B87256: FFreeAd var_A8 = ""
  loc_B8725D: FFree1Var var_130 = ""
  loc_B87260: FLdRfVar var_11C
  loc_B87263: LitVarStr var_94, "viCapital"
  loc_B87268: PopAdLdVar
  loc_B87269: FLdRfVar var_118
  loc_B8726C: FLdRfVar var_A8
  loc_B8726F: FLdPr var_AC
  loc_B87272: from_stack_1v = clsbase.RsFrmGet()
  loc_B87277: FLdPr var_A8
  loc_B8727A:  = Me.Fields
  loc_B8727F: FLdPr var_118
  loc_B87282: from_stack_2 = Me.Item(from_stack_1)
  loc_B87287: LitI2_Byte 0
  loc_B87289: LitI4 1
  loc_B8728E: FLdPr Me
  loc_B87291: MemLdStr global_88
  loc_B87294: AryLock
  loc_B87297: Ary1LdPr
  loc_B87298: MemLdRfVar from_stack_1.global_68
  loc_B8729B: CVarRef
  loc_B872A0: LitI2_Byte &HFF
  loc_B872A2: FLdZeroAd var_11C
  loc_B872A5: CVarAd
  loc_B872A9: PopAdLdVar
  loc_B872AA: FLdPr Me
  loc_B872AD: MemLdI2 global_84
  loc_B872B0: CI4UI1
  loc_B872B1: FLdPr Me
  loc_B872B4: MemLdStr global_80
  loc_B872B7: AryLock
  loc_B872BA: Ary1LdPr
  loc_B872BB: MemLdRfVar from_stack_1.global_68
  loc_B872BE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B872C3: AryUnlock
  loc_B872C6: AryUnlock
  loc_B872C9: FFreeAd var_A8 = ""
  loc_B872D0: FFree1Var var_130 = ""
  loc_B872D3: FLdRfVar var_11C
  loc_B872D6: LitVarStr var_94, "viIntPact"
  loc_B872DB: PopAdLdVar
  loc_B872DC: FLdRfVar var_118
  loc_B872DF: FLdRfVar var_A8
  loc_B872E2: FLdPr var_AC
  loc_B872E5: from_stack_1v = clsbase.RsFrmGet()
  loc_B872EA: FLdPr var_A8
  loc_B872ED:  = Me.Fields
  loc_B872F2: FLdPr var_118
  loc_B872F5: from_stack_2 = Me.Item(from_stack_1)
  loc_B872FA: LitI2_Byte 0
  loc_B872FC: LitI4 1
  loc_B87301: FLdPr Me
  loc_B87304: MemLdStr global_88
  loc_B87307: AryLock
  loc_B8730A: Ary1LdPr
  loc_B8730B: MemLdRfVar from_stack_1.global_72
  loc_B8730E: CVarRef
  loc_B87313: LitI2_Byte &HFF
  loc_B87315: FLdZeroAd var_11C
  loc_B87318: CVarAd
  loc_B8731C: PopAdLdVar
  loc_B8731D: FLdPr Me
  loc_B87320: MemLdI2 global_84
  loc_B87323: CI4UI1
  loc_B87324: FLdPr Me
  loc_B87327: MemLdStr global_80
  loc_B8732A: AryLock
  loc_B8732D: Ary1LdPr
  loc_B8732E: MemLdRfVar from_stack_1.global_72
  loc_B87331: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B87336: AryUnlock
  loc_B87339: AryUnlock
  loc_B8733C: FFreeAd var_A8 = ""
  loc_B87343: FFree1Var var_130 = ""
  loc_B87346: FLdRfVar var_11C
  loc_B87349: LitVarStr var_94, "viTotalDe"
  loc_B8734E: PopAdLdVar
  loc_B8734F: FLdRfVar var_118
  loc_B87352: FLdRfVar var_A8
  loc_B87355: FLdPr var_AC
  loc_B87358: from_stack_1v = clsbase.RsFrmGet()
  loc_B8735D: FLdPr var_A8
  loc_B87360:  = Me.Fields
  loc_B87365: FLdPr var_118
  loc_B87368: from_stack_2 = Me.Item(from_stack_1)
  loc_B8736D: LitI2_Byte 0
  loc_B8736F: LitI4 1
  loc_B87374: FLdPr Me
  loc_B87377: MemLdStr global_88
  loc_B8737A: AryLock
  loc_B8737D: Ary1LdPr
  loc_B8737E: MemLdRfVar from_stack_1.global_76
  loc_B87381: CVarRef
  loc_B87386: LitI2_Byte &HFF
  loc_B87388: FLdZeroAd var_11C
  loc_B8738B: CVarAd
  loc_B8738F: PopAdLdVar
  loc_B87390: FLdPr Me
  loc_B87393: MemLdI2 global_84
  loc_B87396: CI4UI1
  loc_B87397: FLdPr Me
  loc_B8739A: MemLdStr global_80
  loc_B8739D: AryLock
  loc_B873A0: Ary1LdPr
  loc_B873A1: MemLdRfVar from_stack_1.global_76
  loc_B873A4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B873A9: AryUnlock
  loc_B873AC: AryUnlock
  loc_B873AF: FFreeAd var_A8 = ""
  loc_B873B6: FFree1Var var_130 = ""
  loc_B873B9: FLdRfVar var_11C
  loc_B873BC: LitVarStr var_94, "NormaLe"
  loc_B873C1: PopAdLdVar
  loc_B873C2: FLdRfVar var_118
  loc_B873C5: FLdRfVar var_A8
  loc_B873C8: FLdPr var_AC
  loc_B873CB: from_stack_1v = clsbase.RsFrmGet()
  loc_B873D0: FLdPr var_A8
  loc_B873D3:  = Me.Fields
  loc_B873D8: FLdPr var_118
  loc_B873DB: from_stack_2 = Me.Item(from_stack_1)
  loc_B873E0: LitI2_Byte 0
  loc_B873E2: LitVar_Missing var_140
  loc_B873E5: LitI2_Byte 0
  loc_B873E7: FLdZeroAd var_11C
  loc_B873EA: CVarAd
  loc_B873EE: PopAdLdVar
  loc_B873EF: FLdPr Me
  loc_B873F2: MemLdI2 global_84
  loc_B873F5: CI4UI1
  loc_B873F6: FLdPr Me
  loc_B873F9: MemLdStr global_80
  loc_B873FC: AryLock
  loc_B873FF: Ary1LdPr
  loc_B87400: MemLdRfVar from_stack_1.global_80
  loc_B87403: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B87408: AryUnlock
  loc_B8740B: FFreeAd var_A8 = ""
  loc_B87412: FFreeVar var_130 = ""
  loc_B87419: FLdRfVar var_11C
  loc_B8741C: LitVarStr var_94, "Fecha"
  loc_B87421: PopAdLdVar
  loc_B87422: FLdRfVar var_118
  loc_B87425: FLdRfVar var_A8
  loc_B87428: FLdPr var_AC
  loc_B8742B: from_stack_1v = clsbase.RsFrmGet()
  loc_B87430: FLdPr var_A8
  loc_B87433:  = Me.Fields
  loc_B87438: FLdPr var_118
  loc_B8743B: from_stack_2 = Me.Item(from_stack_1)
  loc_B87440: LitI2_Byte 0
  loc_B87442: LitVar_Missing var_140
  loc_B87445: LitI2_Byte 0
  loc_B87447: FLdZeroAd var_11C
  loc_B8744A: CVarAd
  loc_B8744E: PopAdLdVar
  loc_B8744F: FLdPr Me
  loc_B87452: MemLdI2 global_84
  loc_B87455: CI4UI1
  loc_B87456: FLdPr Me
  loc_B87459: MemLdStr global_80
  loc_B8745C: AryLock
  loc_B8745F: Ary1LdPr
  loc_B87460: MemLdRfVar from_stack_1.global_84
  loc_B87463: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B87468: AryUnlock
  loc_B8746B: FFreeAd var_A8 = ""
  loc_B87472: FFreeVar var_130 = ""
  loc_B87479: FLdPr var_AC
  loc_B8747C: Call clsbase.MoveNext()
  loc_B87481: FLdPr Me
  loc_B87484: MemLdRfVar from_stack_1.global_84
  loc_B87487: NextI2 var_114, loc_B86AF6
  loc_B8748C: LitNothing
  loc_B8748E: FStAd var_AC 
  loc_B87492: LitI2_Byte &HFF
  loc_B87494: FLdPr Me
  loc_B87497: MemStI2 bGenerado
  loc_B8749A: LitI4 0
  loc_B8749F: CI2I4
  loc_B874A0: FLdPr Me
  loc_B874A3: Me.MousePointer = from_stack_1
  loc_B874A8: LitVarStr var_94, vbNullString
  loc_B874AD: PopAdLdVar
  loc_B874AE: FLdPr Me
  loc_B874B1: VCallAd Control_ID_statusBar
  loc_B874B4: FStAdFunc var_A8
  loc_B874B7: FLdPr var_A8
  loc_B874BA: LateIdSt
  loc_B874BF: FFree1Ad var_A8
  loc_B874C2: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B1D3B4
  'Data Table: 44548C
  loc_B1CB08: FLdRfVar var_8C
  loc_B1CB0B: LitI2_Byte 0
  loc_B1CB0D: LitI2_Byte &HFF
  loc_B1CB0F: ImpAdLdI4 MemVar_C3D83C
  loc_B1CB12: FLdPr Me
  loc_B1CB15: MemLdRfVar from_stack_1.global_60
  loc_B1CB18: NewIfNullPr IFileSystem3
  loc_B1CB1B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B1CB20: ILdRf var_8C
  loc_B1CB23: FLdPr Me
  loc_B1CB26: MemStVarAd
  loc_B1CB2A: FFree1Ad var_8C
  loc_B1CB2D: Call Proc_256_18_AFD588()
  loc_B1CB32: LitI2_Byte 1
  loc_B1CB34: FLdPr Me
  loc_B1CB37: MemLdRfVar from_stack_1.global_84
  loc_B1CB3A: FLdPr Me
  loc_B1CB3D: MemLdStr global_80
  loc_B1CB40: LitI2_Byte 1
  loc_B1CB42: FnUBound
  loc_B1CB44: CI2I4
  loc_B1CB45: ForI2 var_90
  loc_B1CB4B: FLdPr Me
  loc_B1CB4E: MemLdI2 global_84
  loc_B1CB51: CI4UI1
  loc_B1CB52: FLdPr Me
  loc_B1CB55: MemLdStr global_80
  loc_B1CB58: AryLock
  loc_B1CB5B: Ary1LdRf
  loc_B1CB5C: FStR4 var_98
  loc_B1CB5F: FLdUI1
  loc_B1CB63: CR8I2
  loc_B1CB64: FMemLdR4 var_98(8)
  loc_B1CB69: CR8Str
  loc_B1CB6B: NeR8
  loc_B1CB6C: BranchF loc_B1CC44
  loc_B1CB6F: LitVarStr var_A8, " <tr class=""Totales"" align=""left"">"
  loc_B1CB74: PopAdLdVar
  loc_B1CB75: FLdPr Me
  loc_B1CB78: MemLdRfVar from_stack_1.global_64
  loc_B1CB7B: LdPrVar
  loc_B1CB7D: LateMemCall
  loc_B1CB83: LitVarStr var_188, "   <th colspan=""20""  class=""Encabezado"">"
  loc_B1CB88: LitVarStr var_D8, "Moneda Extranjera Flotante"
  loc_B1CB8D: FStVarCopyObj var_E8
  loc_B1CB90: FLdRfVar var_E8
  loc_B1CB93: LitVarStr var_B8, "Moneda Extranjera Consolidada"
  loc_B1CB98: FStVarCopyObj var_C8
  loc_B1CB9B: FLdRfVar var_C8
  loc_B1CB9E: FMemLdR4 var_98(8)
  loc_B1CBA3: CR8Str
  loc_B1CBA5: LitI2_Byte 3
  loc_B1CBA7: CR8I2
  loc_B1CBA8: EqR4
  loc_B1CBA9: CVarBoolI2 var_A8
  loc_B1CBAD: FLdRfVar var_F8
  loc_B1CBB0: ImpAdCallFPR4  = IIf(, , )
  loc_B1CBB5: FLdRfVar var_F8
  loc_B1CBB8: LitVarStr var_118, "Moneda Nacional Flotante"
  loc_B1CBBD: FStVarCopyObj var_128
  loc_B1CBC0: FLdRfVar var_128
  loc_B1CBC3: FMemLdR4 var_98(8)
  loc_B1CBC8: CR8Str
  loc_B1CBCA: LitI2_Byte 2
  loc_B1CBCC: CR8I2
  loc_B1CBCD: EqR4
  loc_B1CBCE: CVarBoolI2 var_108
  loc_B1CBD2: FLdRfVar var_138
  loc_B1CBD5: ImpAdCallFPR4  = IIf(, , )
  loc_B1CBDA: FLdRfVar var_138
  loc_B1CBDD: LitVarStr var_158, "Moneda Nacional Consolidada"
  loc_B1CBE2: FStVarCopyObj var_168
  loc_B1CBE5: FLdRfVar var_168
  loc_B1CBE8: FMemLdR4 var_98(8)
  loc_B1CBED: CR8Str
  loc_B1CBEF: LitI2_Byte 1
  loc_B1CBF1: CR8I2
  loc_B1CBF2: EqR4
  loc_B1CBF3: CVarBoolI2 var_148
  loc_B1CBF7: FLdRfVar var_178
  loc_B1CBFA: ImpAdCallFPR4  = IIf(, , )
  loc_B1CBFF: FLdRfVar var_178
  loc_B1CC02: ConcatVar var_198
  loc_B1CC06: LitVarStr var_1A8, "</th>"
  loc_B1CC0B: ConcatVar var_1B8
  loc_B1CC0F: PopAdLdVar
  loc_B1CC10: FLdPr Me
  loc_B1CC13: MemLdRfVar from_stack_1.global_64
  loc_B1CC16: LdPrVar
  loc_B1CC18: LateMemCall
  loc_B1CC1E: FFreeVar var_A8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_F8 = "": var_148 = "": var_168 = "": var_138 = "": var_178 = "": var_198 = ""
  loc_B1CC39: FMemLdR4 var_98(8)
  loc_B1CC3E: CUI1Str
  loc_B1CC40: FStUI1 var_86
  loc_B1CC44: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B1CC49: PopAdLdVar
  loc_B1CC4A: FLdPr Me
  loc_B1CC4D: MemLdRfVar from_stack_1.global_64
  loc_B1CC50: LdPrVar
  loc_B1CC52: LateMemCall
  loc_B1CC58: LitI4 0
  loc_B1CC5D: LitI4 0
  loc_B1CC62: LitI2_Byte 0
  loc_B1CC64: LitStr "left"
  loc_B1CC67: FMemLdR4 var_98(0)
  loc_B1CC6C: LitStr " - "
  loc_B1CC6F: ConcatStr
  loc_B1CC70: FStStrNoPop var_1CC
  loc_B1CC73: FMemLdR4 var_98(4)
  loc_B1CC78: ConcatStr
  loc_B1CC79: FStStrNoPop var_1D0
  loc_B1CC7C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1CC81: CVarStr var_C8
  loc_B1CC84: PopAdLdVar
  loc_B1CC85: FLdPr Me
  loc_B1CC88: MemLdRfVar from_stack_1.global_64
  loc_B1CC8B: LdPrVar
  loc_B1CC8D: LateMemCall
  loc_B1CC93: FFreeStr var_1CC = ""
  loc_B1CC9A: FFree1Var var_C8 = ""
  loc_B1CC9D: LitI4 0
  loc_B1CCA2: LitI4 0
  loc_B1CCA7: LitI2_Byte 0
  loc_B1CCA9: LitStr "right"
  loc_B1CCAC: FMemLdR4 var_98(12)
  loc_B1CCB1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1CCB6: CVarStr var_C8
  loc_B1CCB9: PopAdLdVar
  loc_B1CCBA: FLdPr Me
  loc_B1CCBD: MemLdRfVar from_stack_1.global_64
  loc_B1CCC0: LdPrVar
  loc_B1CCC2: LateMemCall
  loc_B1CCC8: FFree1Var var_C8 = ""
  loc_B1CCCB: LitI4 0
  loc_B1CCD0: LitI4 0
  loc_B1CCD5: LitI2_Byte 0
  loc_B1CCD7: LitStr "right"
  loc_B1CCDA: FMemLdR4 var_98(16)
  loc_B1CCDF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1CCE4: CVarStr var_C8
  loc_B1CCE7: PopAdLdVar
  loc_B1CCE8: FLdPr Me
  loc_B1CCEB: MemLdRfVar from_stack_1.global_64
  loc_B1CCEE: LdPrVar
  loc_B1CCF0: LateMemCall
  loc_B1CCF6: FFree1Var var_C8 = ""
  loc_B1CCF9: LitI4 0
  loc_B1CCFE: LitI4 0
  loc_B1CD03: LitI2_Byte 0
  loc_B1CD05: LitStr "right"
  loc_B1CD08: FMemLdR4 var_98(20)
  loc_B1CD0D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1CD12: CVarStr var_C8
  loc_B1CD15: PopAdLdVar
  loc_B1CD16: FLdPr Me
  loc_B1CD19: MemLdRfVar from_stack_1.global_64
  loc_B1CD1C: LdPrVar
  loc_B1CD1E: LateMemCall
  loc_B1CD24: FFree1Var var_C8 = ""
  loc_B1CD27: LitI4 0
  loc_B1CD2C: LitI4 0
  loc_B1CD31: LitI2_Byte 0
  loc_B1CD33: LitStr "right"
  loc_B1CD36: FMemLdR4 var_98(24)
  loc_B1CD3B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1CD40: CVarStr var_C8
  loc_B1CD43: PopAdLdVar
  loc_B1CD44: FLdPr Me
  loc_B1CD47: MemLdRfVar from_stack_1.global_64
  loc_B1CD4A: LdPrVar
  loc_B1CD4C: LateMemCall
  loc_B1CD52: FFree1Var var_C8 = ""
  loc_B1CD55: LitI4 0
  loc_B1CD5A: LitI4 0
  loc_B1CD5F: LitI2_Byte 0
  loc_B1CD61: LitStr "right"
  loc_B1CD64: FMemLdR4 var_98(28)
  loc_B1CD69: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1CD6E: CVarStr var_C8
  loc_B1CD71: PopAdLdVar
  loc_B1CD72: FLdPr Me
  loc_B1CD75: MemLdRfVar from_stack_1.global_64
  loc_B1CD78: LdPrVar
  loc_B1CD7A: LateMemCall
  loc_B1CD80: FFree1Var var_C8 = ""
  loc_B1CD83: LitI4 0
  loc_B1CD88: LitI4 0
  loc_B1CD8D: LitI2_Byte 0
  loc_B1CD8F: LitStr "right"
  loc_B1CD92: FMemLdR4 var_98(32)
  loc_B1CD97: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1CD9C: CVarStr var_C8
  loc_B1CD9F: PopAdLdVar
  loc_B1CDA0: FLdPr Me
  loc_B1CDA3: MemLdRfVar from_stack_1.global_64
  loc_B1CDA6: LdPrVar
  loc_B1CDA8: LateMemCall
  loc_B1CDAE: FFree1Var var_C8 = ""
  loc_B1CDB1: LitI4 0
  loc_B1CDB6: LitI4 0
  loc_B1CDBB: LitI2_Byte 0
  loc_B1CDBD: LitStr "right"
  loc_B1CDC0: FMemLdR4 var_98(36)
  loc_B1CDC5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1CDCA: CVarStr var_C8
  loc_B1CDCD: PopAdLdVar
  loc_B1CDCE: FLdPr Me
  loc_B1CDD1: MemLdRfVar from_stack_1.global_64
  loc_B1CDD4: LdPrVar
  loc_B1CDD6: LateMemCall
  loc_B1CDDC: FFree1Var var_C8 = ""
  loc_B1CDDF: LitI4 0
  loc_B1CDE4: LitI4 0
  loc_B1CDE9: LitI2_Byte 0
  loc_B1CDEB: LitStr "right"
  loc_B1CDEE: FMemLdR4 var_98(40)
  loc_B1CDF3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1CDF8: CVarStr var_C8
  loc_B1CDFB: PopAdLdVar
  loc_B1CDFC: FLdPr Me
  loc_B1CDFF: MemLdRfVar from_stack_1.global_64
  loc_B1CE02: LdPrVar
  loc_B1CE04: LateMemCall
  loc_B1CE0A: FFree1Var var_C8 = ""
  loc_B1CE0D: LitI4 0
  loc_B1CE12: LitI4 0
  loc_B1CE17: LitI2_Byte 0
  loc_B1CE19: LitStr "right"
  loc_B1CE1C: FMemLdR4 var_98(44)
  loc_B1CE21: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1CE26: CVarStr var_C8
  loc_B1CE29: PopAdLdVar
  loc_B1CE2A: FLdPr Me
  loc_B1CE2D: MemLdRfVar from_stack_1.global_64
  loc_B1CE30: LdPrVar
  loc_B1CE32: LateMemCall
  loc_B1CE38: FFree1Var var_C8 = ""
  loc_B1CE3B: LitI4 0
  loc_B1CE40: LitI4 0
  loc_B1CE45: LitI2_Byte 0
  loc_B1CE47: LitStr "right"
  loc_B1CE4A: FMemLdR4 var_98(48)
  loc_B1CE4F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1CE54: CVarStr var_C8
  loc_B1CE57: PopAdLdVar
  loc_B1CE58: FLdPr Me
  loc_B1CE5B: MemLdRfVar from_stack_1.global_64
  loc_B1CE5E: LdPrVar
  loc_B1CE60: LateMemCall
  loc_B1CE66: FFree1Var var_C8 = ""
  loc_B1CE69: LitI4 0
  loc_B1CE6E: LitI4 0
  loc_B1CE73: LitI2_Byte 0
  loc_B1CE75: LitStr "right"
  loc_B1CE78: FMemLdR4 var_98(52)
  loc_B1CE7D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1CE82: CVarStr var_C8
  loc_B1CE85: PopAdLdVar
  loc_B1CE86: FLdPr Me
  loc_B1CE89: MemLdRfVar from_stack_1.global_64
  loc_B1CE8C: LdPrVar
  loc_B1CE8E: LateMemCall
  loc_B1CE94: FFree1Var var_C8 = ""
  loc_B1CE97: LitI4 0
  loc_B1CE9C: LitI4 0
  loc_B1CEA1: LitI2_Byte 0
  loc_B1CEA3: LitStr "right"
  loc_B1CEA6: FMemLdR4 var_98(56)
  loc_B1CEAB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1CEB0: CVarStr var_C8
  loc_B1CEB3: PopAdLdVar
  loc_B1CEB4: FLdPr Me
  loc_B1CEB7: MemLdRfVar from_stack_1.global_64
  loc_B1CEBA: LdPrVar
  loc_B1CEBC: LateMemCall
  loc_B1CEC2: FFree1Var var_C8 = ""
  loc_B1CEC5: LitI4 0
  loc_B1CECA: LitI4 0
  loc_B1CECF: LitI2_Byte 0
  loc_B1CED1: LitStr "right"
  loc_B1CED4: FMemLdR4 var_98(60)
  loc_B1CED9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1CEDE: CVarStr var_C8
  loc_B1CEE1: PopAdLdVar
  loc_B1CEE2: FLdPr Me
  loc_B1CEE5: MemLdRfVar from_stack_1.global_64
  loc_B1CEE8: LdPrVar
  loc_B1CEEA: LateMemCall
  loc_B1CEF0: FFree1Var var_C8 = ""
  loc_B1CEF3: LitI4 0
  loc_B1CEF8: LitI4 0
  loc_B1CEFD: LitI2_Byte 0
  loc_B1CEFF: LitStr "right"
  loc_B1CF02: FMemLdR4 var_98(64)
  loc_B1CF07: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1CF0C: CVarStr var_C8
  loc_B1CF0F: PopAdLdVar
  loc_B1CF10: FLdPr Me
  loc_B1CF13: MemLdRfVar from_stack_1.global_64
  loc_B1CF16: LdPrVar
  loc_B1CF18: LateMemCall
  loc_B1CF1E: FFree1Var var_C8 = ""
  loc_B1CF21: LitI4 0
  loc_B1CF26: LitI4 0
  loc_B1CF2B: LitI2_Byte 0
  loc_B1CF2D: LitStr "right"
  loc_B1CF30: FMemLdR4 var_98(68)
  loc_B1CF35: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1CF3A: CVarStr var_C8
  loc_B1CF3D: PopAdLdVar
  loc_B1CF3E: FLdPr Me
  loc_B1CF41: MemLdRfVar from_stack_1.global_64
  loc_B1CF44: LdPrVar
  loc_B1CF46: LateMemCall
  loc_B1CF4C: FFree1Var var_C8 = ""
  loc_B1CF4F: LitI4 0
  loc_B1CF54: LitI4 0
  loc_B1CF59: LitI2_Byte 0
  loc_B1CF5B: LitStr "right"
  loc_B1CF5E: FMemLdR4 var_98(72)
  loc_B1CF63: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1CF68: CVarStr var_C8
  loc_B1CF6B: PopAdLdVar
  loc_B1CF6C: FLdPr Me
  loc_B1CF6F: MemLdRfVar from_stack_1.global_64
  loc_B1CF72: LdPrVar
  loc_B1CF74: LateMemCall
  loc_B1CF7A: FFree1Var var_C8 = ""
  loc_B1CF7D: LitI4 0
  loc_B1CF82: LitI4 0
  loc_B1CF87: LitI2_Byte 0
  loc_B1CF89: LitStr "right"
  loc_B1CF8C: FMemLdR4 var_98(76)
  loc_B1CF91: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1CF96: CVarStr var_C8
  loc_B1CF99: PopAdLdVar
  loc_B1CF9A: FLdPr Me
  loc_B1CF9D: MemLdRfVar from_stack_1.global_64
  loc_B1CFA0: LdPrVar
  loc_B1CFA2: LateMemCall
  loc_B1CFA8: FFree1Var var_C8 = ""
  loc_B1CFAB: LitI4 0
  loc_B1CFB0: LitI4 0
  loc_B1CFB5: LitI2_Byte 0
  loc_B1CFB7: LitStr "left"
  loc_B1CFBA: FMemLdR4 var_98(80)
  loc_B1CFBF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1CFC4: CVarStr var_C8
  loc_B1CFC7: PopAdLdVar
  loc_B1CFC8: FLdPr Me
  loc_B1CFCB: MemLdRfVar from_stack_1.global_64
  loc_B1CFCE: LdPrVar
  loc_B1CFD0: LateMemCall
  loc_B1CFD6: FFree1Var var_C8 = ""
  loc_B1CFD9: LitI4 0
  loc_B1CFDE: LitI4 0
  loc_B1CFE3: LitI2_Byte 0
  loc_B1CFE5: LitStr "left"
  loc_B1CFE8: FMemLdR4 var_98(84)
  loc_B1CFED: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1CFF2: CVarStr var_C8
  loc_B1CFF5: PopAdLdVar
  loc_B1CFF6: FLdPr Me
  loc_B1CFF9: MemLdRfVar from_stack_1.global_64
  loc_B1CFFC: LdPrVar
  loc_B1CFFE: LateMemCall
  loc_B1D004: FFree1Var var_C8 = ""
  loc_B1D007: LitVarStr var_A8, "     </tr>"
  loc_B1D00C: PopAdLdVar
  loc_B1D00D: FLdPr Me
  loc_B1D010: MemLdRfVar from_stack_1.global_64
  loc_B1D013: LdPrVar
  loc_B1D015: LateMemCall
  loc_B1D01B: LitI4 0
  loc_B1D020: FStR4 var_98
  loc_B1D023: AryUnlock
  loc_B1D026: FLdPr Me
  loc_B1D029: MemLdRfVar from_stack_1.global_84
  loc_B1D02C: NextI2 var_90, loc_B1CB4B
  loc_B1D031: LitVarStr var_A8, " <tr class=""Totales"" align=""left"">"
  loc_B1D036: PopAdLdVar
  loc_B1D037: FLdPr Me
  loc_B1D03A: MemLdRfVar from_stack_1.global_64
  loc_B1D03D: LdPrVar
  loc_B1D03F: LateMemCall
  loc_B1D045: LitVarStr var_A8, "   <th colspan=""1""  class=""Encabezado"">Totales</th>"
  loc_B1D04A: PopAdLdVar
  loc_B1D04B: FLdPr Me
  loc_B1D04E: MemLdRfVar from_stack_1.global_64
  loc_B1D051: LdPrVar
  loc_B1D053: LateMemCall
  loc_B1D059: LitI4 1
  loc_B1D05E: FLdPr Me
  loc_B1D061: MemLdStr global_88
  loc_B1D064: AryLock
  loc_B1D067: Ary1LdRf
  loc_B1D068: FStR4 var_1D8
  loc_B1D06B: LitI4 0
  loc_B1D070: LitI4 0
  loc_B1D075: LitI2_Byte 0
  loc_B1D077: LitStr "right"
  loc_B1D07A: FMemLdR4 var_1D8(12)
  loc_B1D07F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1D084: CVarStr var_C8
  loc_B1D087: PopAdLdVar
  loc_B1D088: FLdPr Me
  loc_B1D08B: MemLdRfVar from_stack_1.global_64
  loc_B1D08E: LdPrVar
  loc_B1D090: LateMemCall
  loc_B1D096: FFree1Var var_C8 = ""
  loc_B1D099: LitI4 0
  loc_B1D09E: LitI4 0
  loc_B1D0A3: LitI2_Byte 0
  loc_B1D0A5: LitStr "right"
  loc_B1D0A8: FMemLdR4 var_1D8(16)
  loc_B1D0AD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1D0B2: CVarStr var_C8
  loc_B1D0B5: PopAdLdVar
  loc_B1D0B6: FLdPr Me
  loc_B1D0B9: MemLdRfVar from_stack_1.global_64
  loc_B1D0BC: LdPrVar
  loc_B1D0BE: LateMemCall
  loc_B1D0C4: FFree1Var var_C8 = ""
  loc_B1D0C7: LitI4 0
  loc_B1D0CC: LitI4 0
  loc_B1D0D1: LitI2_Byte 0
  loc_B1D0D3: LitStr "right"
  loc_B1D0D6: FMemLdR4 var_1D8(20)
  loc_B1D0DB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1D0E0: CVarStr var_C8
  loc_B1D0E3: PopAdLdVar
  loc_B1D0E4: FLdPr Me
  loc_B1D0E7: MemLdRfVar from_stack_1.global_64
  loc_B1D0EA: LdPrVar
  loc_B1D0EC: LateMemCall
  loc_B1D0F2: FFree1Var var_C8 = ""
  loc_B1D0F5: LitI4 0
  loc_B1D0FA: LitI4 0
  loc_B1D0FF: LitI2_Byte 0
  loc_B1D101: LitStr "right"
  loc_B1D104: FMemLdR4 var_1D8(24)
  loc_B1D109: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1D10E: CVarStr var_C8
  loc_B1D111: PopAdLdVar
  loc_B1D112: FLdPr Me
  loc_B1D115: MemLdRfVar from_stack_1.global_64
  loc_B1D118: LdPrVar
  loc_B1D11A: LateMemCall
  loc_B1D120: FFree1Var var_C8 = ""
  loc_B1D123: LitI4 0
  loc_B1D128: LitI4 0
  loc_B1D12D: LitI2_Byte 0
  loc_B1D12F: LitStr "right"
  loc_B1D132: FMemLdR4 var_1D8(28)
  loc_B1D137: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1D13C: CVarStr var_C8
  loc_B1D13F: PopAdLdVar
  loc_B1D140: FLdPr Me
  loc_B1D143: MemLdRfVar from_stack_1.global_64
  loc_B1D146: LdPrVar
  loc_B1D148: LateMemCall
  loc_B1D14E: FFree1Var var_C8 = ""
  loc_B1D151: LitI4 0
  loc_B1D156: LitI4 0
  loc_B1D15B: LitI2_Byte 0
  loc_B1D15D: LitStr "right"
  loc_B1D160: FMemLdR4 var_1D8(32)
  loc_B1D165: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1D16A: CVarStr var_C8
  loc_B1D16D: PopAdLdVar
  loc_B1D16E: FLdPr Me
  loc_B1D171: MemLdRfVar from_stack_1.global_64
  loc_B1D174: LdPrVar
  loc_B1D176: LateMemCall
  loc_B1D17C: FFree1Var var_C8 = ""
  loc_B1D17F: LitI4 0
  loc_B1D184: LitI4 0
  loc_B1D189: LitI2_Byte 0
  loc_B1D18B: LitStr "right"
  loc_B1D18E: FMemLdR4 var_1D8(36)
  loc_B1D193: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1D198: CVarStr var_C8
  loc_B1D19B: PopAdLdVar
  loc_B1D19C: FLdPr Me
  loc_B1D19F: MemLdRfVar from_stack_1.global_64
  loc_B1D1A2: LdPrVar
  loc_B1D1A4: LateMemCall
  loc_B1D1AA: FFree1Var var_C8 = ""
  loc_B1D1AD: LitI4 0
  loc_B1D1B2: LitI4 0
  loc_B1D1B7: LitI2_Byte 0
  loc_B1D1B9: LitStr "right"
  loc_B1D1BC: FMemLdR4 var_1D8(40)
  loc_B1D1C1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1D1C6: CVarStr var_C8
  loc_B1D1C9: PopAdLdVar
  loc_B1D1CA: FLdPr Me
  loc_B1D1CD: MemLdRfVar from_stack_1.global_64
  loc_B1D1D0: LdPrVar
  loc_B1D1D2: LateMemCall
  loc_B1D1D8: FFree1Var var_C8 = ""
  loc_B1D1DB: LitI4 0
  loc_B1D1E0: LitI4 0
  loc_B1D1E5: LitI2_Byte 0
  loc_B1D1E7: LitStr "right"
  loc_B1D1EA: FMemLdR4 var_1D8(44)
  loc_B1D1EF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1D1F4: CVarStr var_C8
  loc_B1D1F7: PopAdLdVar
  loc_B1D1F8: FLdPr Me
  loc_B1D1FB: MemLdRfVar from_stack_1.global_64
  loc_B1D1FE: LdPrVar
  loc_B1D200: LateMemCall
  loc_B1D206: FFree1Var var_C8 = ""
  loc_B1D209: LitI4 0
  loc_B1D20E: LitI4 0
  loc_B1D213: LitI2_Byte 0
  loc_B1D215: LitStr "right"
  loc_B1D218: FMemLdR4 var_1D8(48)
  loc_B1D21D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1D222: CVarStr var_C8
  loc_B1D225: PopAdLdVar
  loc_B1D226: FLdPr Me
  loc_B1D229: MemLdRfVar from_stack_1.global_64
  loc_B1D22C: LdPrVar
  loc_B1D22E: LateMemCall
  loc_B1D234: FFree1Var var_C8 = ""
  loc_B1D237: LitI4 0
  loc_B1D23C: LitI4 0
  loc_B1D241: LitI2_Byte 0
  loc_B1D243: LitStr "right"
  loc_B1D246: FMemLdR4 var_1D8(52)
  loc_B1D24B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1D250: CVarStr var_C8
  loc_B1D253: PopAdLdVar
  loc_B1D254: FLdPr Me
  loc_B1D257: MemLdRfVar from_stack_1.global_64
  loc_B1D25A: LdPrVar
  loc_B1D25C: LateMemCall
  loc_B1D262: FFree1Var var_C8 = ""
  loc_B1D265: LitI4 0
  loc_B1D26A: LitI4 0
  loc_B1D26F: LitI2_Byte 0
  loc_B1D271: LitStr "right"
  loc_B1D274: FMemLdR4 var_1D8(56)
  loc_B1D279: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1D27E: CVarStr var_C8
  loc_B1D281: PopAdLdVar
  loc_B1D282: FLdPr Me
  loc_B1D285: MemLdRfVar from_stack_1.global_64
  loc_B1D288: LdPrVar
  loc_B1D28A: LateMemCall
  loc_B1D290: FFree1Var var_C8 = ""
  loc_B1D293: LitI4 0
  loc_B1D298: LitI4 0
  loc_B1D29D: LitI2_Byte 0
  loc_B1D29F: LitStr "right"
  loc_B1D2A2: FMemLdR4 var_1D8(60)
  loc_B1D2A7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1D2AC: CVarStr var_C8
  loc_B1D2AF: PopAdLdVar
  loc_B1D2B0: FLdPr Me
  loc_B1D2B3: MemLdRfVar from_stack_1.global_64
  loc_B1D2B6: LdPrVar
  loc_B1D2B8: LateMemCall
  loc_B1D2BE: FFree1Var var_C8 = ""
  loc_B1D2C1: LitI4 0
  loc_B1D2C6: LitI4 0
  loc_B1D2CB: LitI2_Byte 0
  loc_B1D2CD: LitStr "right"
  loc_B1D2D0: FMemLdR4 var_1D8(64)
  loc_B1D2D5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1D2DA: CVarStr var_C8
  loc_B1D2DD: PopAdLdVar
  loc_B1D2DE: FLdPr Me
  loc_B1D2E1: MemLdRfVar from_stack_1.global_64
  loc_B1D2E4: LdPrVar
  loc_B1D2E6: LateMemCall
  loc_B1D2EC: FFree1Var var_C8 = ""
  loc_B1D2EF: LitI4 0
  loc_B1D2F4: LitI4 0
  loc_B1D2F9: LitI2_Byte 0
  loc_B1D2FB: LitStr "right"
  loc_B1D2FE: FMemLdR4 var_1D8(68)
  loc_B1D303: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1D308: CVarStr var_C8
  loc_B1D30B: PopAdLdVar
  loc_B1D30C: FLdPr Me
  loc_B1D30F: MemLdRfVar from_stack_1.global_64
  loc_B1D312: LdPrVar
  loc_B1D314: LateMemCall
  loc_B1D31A: FFree1Var var_C8 = ""
  loc_B1D31D: LitI4 0
  loc_B1D322: LitI4 0
  loc_B1D327: LitI2_Byte 0
  loc_B1D329: LitStr "right"
  loc_B1D32C: FMemLdR4 var_1D8(72)
  loc_B1D331: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1D336: CVarStr var_C8
  loc_B1D339: PopAdLdVar
  loc_B1D33A: FLdPr Me
  loc_B1D33D: MemLdRfVar from_stack_1.global_64
  loc_B1D340: LdPrVar
  loc_B1D342: LateMemCall
  loc_B1D348: FFree1Var var_C8 = ""
  loc_B1D34B: LitI4 0
  loc_B1D350: LitI4 0
  loc_B1D355: LitI2_Byte 0
  loc_B1D357: LitStr "right"
  loc_B1D35A: FMemLdR4 var_1D8(76)
  loc_B1D35F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1D364: CVarStr var_C8
  loc_B1D367: PopAdLdVar
  loc_B1D368: FLdPr Me
  loc_B1D36B: MemLdRfVar from_stack_1.global_64
  loc_B1D36E: LdPrVar
  loc_B1D370: LateMemCall
  loc_B1D376: FFree1Var var_C8 = ""
  loc_B1D379: LitI4 0
  loc_B1D37E: FStR4 var_1D8
  loc_B1D381: AryUnlock
  loc_B1D384: LitVarStr var_A8, "     </tr>"
  loc_B1D389: PopAdLdVar
  loc_B1D38A: FLdPr Me
  loc_B1D38D: MemLdRfVar from_stack_1.global_64
  loc_B1D390: LdPrVar
  loc_B1D392: LateMemCall
  loc_B1D398: Call Proc_256_19_A049C0()
  loc_B1D39D: FLdPr Me
  loc_B1D3A0: MemLdRfVar from_stack_1.global_64
  loc_B1D3A3: LdPrVar
  loc_B1D3A5: LateMemCall
  loc_B1D3AB: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B1D3B0: ExitProcHresult
  loc_B1D3B1: Ary1LdRf
End Sub

Public Sub GeneraXLS() '94BD3C
  'Data Table: 44548C
  loc_94BD24: LitI2_Byte 0
  loc_94BD26: FLdPr Me
  loc_94BD29: MemStI2 bLogos
  loc_94BD2C: Call GeneraHTML()
  loc_94BD31: LitI2_Byte &HFF
  loc_94BD33: FLdPr Me
  loc_94BD36: MemStI2 bLogos
  loc_94BD39: ExitProcHresult
  loc_94BD3A: ImpAdLdFPR4 MemVar_0
End Sub

Private Function Proc_256_18_AFD588() 'AFD588
  'Data Table: 44548C
  loc_AFCE14: LitVarStr var_94, "<html>"
  loc_AFCE19: PopAdLdVar
  loc_AFCE1A: FLdPr Me
  loc_AFCE1D: MemLdRfVar from_stack_1.global_64
  loc_AFCE20: LdPrVar
  loc_AFCE22: LateMemCall
  loc_AFCE28: LitVarStr var_94, "<head>"
  loc_AFCE2D: PopAdLdVar
  loc_AFCE2E: FLdPr Me
  loc_AFCE31: MemLdRfVar from_stack_1.global_64
  loc_AFCE34: LdPrVar
  loc_AFCE36: LateMemCall
  loc_AFCE3C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AFCE41: PopAdLdVar
  loc_AFCE42: FLdPr Me
  loc_AFCE45: MemLdRfVar from_stack_1.global_64
  loc_AFCE48: LdPrVar
  loc_AFCE4A: LateMemCall
  loc_AFCE50: LitStr "<title>"
  loc_AFCE53: FLdRfVar var_A8
  loc_AFCE56: FLdPr Me
  loc_AFCE59:  = Me.Caption
  loc_AFCE5E: ILdRf var_A8
  loc_AFCE61: ConcatStr
  loc_AFCE62: FStStrNoPop var_AC
  loc_AFCE65: LitStr " - "
  loc_AFCE68: ConcatStr
  loc_AFCE69: FStStrNoPop var_B0
  loc_AFCE6C: LitStr "Municipalidad de Guaymallén"
  loc_AFCE6F: ConcatStr
  loc_AFCE70: FStStrNoPop var_B4
  loc_AFCE73: LitStr "</title>"
  loc_AFCE76: ConcatStr
  loc_AFCE77: CVarStr var_C4
  loc_AFCE7A: PopAdLdVar
  loc_AFCE7B: FLdPr Me
  loc_AFCE7E: MemLdRfVar from_stack_1.global_64
  loc_AFCE81: LdPrVar
  loc_AFCE83: LateMemCall
  loc_AFCE89: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_AFCE94: FFree1Var var_C4 = ""
  loc_AFCE97: LitVarStr var_94, "<style type=""text/css"">"
  loc_AFCE9C: PopAdLdVar
  loc_AFCE9D: FLdPr Me
  loc_AFCEA0: MemLdRfVar from_stack_1.global_64
  loc_AFCEA3: LdPrVar
  loc_AFCEA5: LateMemCall
  loc_AFCEAB: LitVarStr var_94, ".Titulo1 {"
  loc_AFCEB0: PopAdLdVar
  loc_AFCEB1: FLdPr Me
  loc_AFCEB4: MemLdRfVar from_stack_1.global_64
  loc_AFCEB7: LdPrVar
  loc_AFCEB9: LateMemCall
  loc_AFCEBF: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AFCEC4: PopAdLdVar
  loc_AFCEC5: FLdPr Me
  loc_AFCEC8: MemLdRfVar from_stack_1.global_64
  loc_AFCECB: LdPrVar
  loc_AFCECD: LateMemCall
  loc_AFCED3: LitVarStr var_94, " font-size: 18px;"
  loc_AFCED8: PopAdLdVar
  loc_AFCED9: FLdPr Me
  loc_AFCEDC: MemLdRfVar from_stack_1.global_64
  loc_AFCEDF: LdPrVar
  loc_AFCEE1: LateMemCall
  loc_AFCEE7: LitVarStr var_94, " font-weight: bold;"
  loc_AFCEEC: PopAdLdVar
  loc_AFCEED: FLdPr Me
  loc_AFCEF0: MemLdRfVar from_stack_1.global_64
  loc_AFCEF3: LdPrVar
  loc_AFCEF5: LateMemCall
  loc_AFCEFB: LitVarStr var_94, "}"
  loc_AFCF00: PopAdLdVar
  loc_AFCF01: FLdPr Me
  loc_AFCF04: MemLdRfVar from_stack_1.global_64
  loc_AFCF07: LdPrVar
  loc_AFCF09: LateMemCall
  loc_AFCF0F: LitVarStr var_94, ".Titulo2 {"
  loc_AFCF14: PopAdLdVar
  loc_AFCF15: FLdPr Me
  loc_AFCF18: MemLdRfVar from_stack_1.global_64
  loc_AFCF1B: LdPrVar
  loc_AFCF1D: LateMemCall
  loc_AFCF23: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AFCF28: PopAdLdVar
  loc_AFCF29: FLdPr Me
  loc_AFCF2C: MemLdRfVar from_stack_1.global_64
  loc_AFCF2F: LdPrVar
  loc_AFCF31: LateMemCall
  loc_AFCF37: LitVarStr var_94, " font-size: 14px;"
  loc_AFCF3C: PopAdLdVar
  loc_AFCF3D: FLdPr Me
  loc_AFCF40: MemLdRfVar from_stack_1.global_64
  loc_AFCF43: LdPrVar
  loc_AFCF45: LateMemCall
  loc_AFCF4B: LitVarStr var_94, " font-weight: bold;"
  loc_AFCF50: PopAdLdVar
  loc_AFCF51: FLdPr Me
  loc_AFCF54: MemLdRfVar from_stack_1.global_64
  loc_AFCF57: LdPrVar
  loc_AFCF59: LateMemCall
  loc_AFCF5F: LitVarStr var_94, "}"
  loc_AFCF64: PopAdLdVar
  loc_AFCF65: FLdPr Me
  loc_AFCF68: MemLdRfVar from_stack_1.global_64
  loc_AFCF6B: LdPrVar
  loc_AFCF6D: LateMemCall
  loc_AFCF73: LitVarStr var_94, ".Encabezado {"
  loc_AFCF78: PopAdLdVar
  loc_AFCF79: FLdPr Me
  loc_AFCF7C: MemLdRfVar from_stack_1.global_64
  loc_AFCF7F: LdPrVar
  loc_AFCF81: LateMemCall
  loc_AFCF87: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_AFCF8C: PopAdLdVar
  loc_AFCF8D: FLdPr Me
  loc_AFCF90: MemLdRfVar from_stack_1.global_64
  loc_AFCF93: LdPrVar
  loc_AFCF95: LateMemCall
  loc_AFCF9B: LitVarStr var_94, " font-size: 13px;"
  loc_AFCFA0: PopAdLdVar
  loc_AFCFA1: FLdPr Me
  loc_AFCFA4: MemLdRfVar from_stack_1.global_64
  loc_AFCFA7: LdPrVar
  loc_AFCFA9: LateMemCall
  loc_AFCFAF: LitVarStr var_94, " font-weight: bold;"
  loc_AFCFB4: PopAdLdVar
  loc_AFCFB5: FLdPr Me
  loc_AFCFB8: MemLdRfVar from_stack_1.global_64
  loc_AFCFBB: LdPrVar
  loc_AFCFBD: LateMemCall
  loc_AFCFC3: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_AFCFC8: PopAdLdVar
  loc_AFCFC9: FLdPr Me
  loc_AFCFCC: MemLdRfVar from_stack_1.global_64
  loc_AFCFCF: LdPrVar
  loc_AFCFD1: LateMemCall
  loc_AFCFD7: LitVarStr var_94, "}"
  loc_AFCFDC: PopAdLdVar
  loc_AFCFDD: FLdPr Me
  loc_AFCFE0: MemLdRfVar from_stack_1.global_64
  loc_AFCFE3: LdPrVar
  loc_AFCFE5: LateMemCall
  loc_AFCFEB: LitVarStr var_94, ".LineaDato {"
  loc_AFCFF0: PopAdLdVar
  loc_AFCFF1: FLdPr Me
  loc_AFCFF4: MemLdRfVar from_stack_1.global_64
  loc_AFCFF7: LdPrVar
  loc_AFCFF9: LateMemCall
  loc_AFCFFF: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AFD004: PopAdLdVar
  loc_AFD005: FLdPr Me
  loc_AFD008: MemLdRfVar from_stack_1.global_64
  loc_AFD00B: LdPrVar
  loc_AFD00D: LateMemCall
  loc_AFD013: LitVarStr var_94, " font-size: 10px;"
  loc_AFD018: PopAdLdVar
  loc_AFD019: FLdPr Me
  loc_AFD01C: MemLdRfVar from_stack_1.global_64
  loc_AFD01F: LdPrVar
  loc_AFD021: LateMemCall
  loc_AFD027: LitVarStr var_94, "}"
  loc_AFD02C: PopAdLdVar
  loc_AFD02D: FLdPr Me
  loc_AFD030: MemLdRfVar from_stack_1.global_64
  loc_AFD033: LdPrVar
  loc_AFD035: LateMemCall
  loc_AFD03B: LitVarStr var_94, ".Totales {"
  loc_AFD040: PopAdLdVar
  loc_AFD041: FLdPr Me
  loc_AFD044: MemLdRfVar from_stack_1.global_64
  loc_AFD047: LdPrVar
  loc_AFD049: LateMemCall
  loc_AFD04F: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AFD054: PopAdLdVar
  loc_AFD055: FLdPr Me
  loc_AFD058: MemLdRfVar from_stack_1.global_64
  loc_AFD05B: LdPrVar
  loc_AFD05D: LateMemCall
  loc_AFD063: LitVarStr var_94, " font-size: 12px;"
  loc_AFD068: PopAdLdVar
  loc_AFD069: FLdPr Me
  loc_AFD06C: MemLdRfVar from_stack_1.global_64
  loc_AFD06F: LdPrVar
  loc_AFD071: LateMemCall
  loc_AFD077: LitVarStr var_94, " font-weight: bold;"
  loc_AFD07C: PopAdLdVar
  loc_AFD07D: FLdPr Me
  loc_AFD080: MemLdRfVar from_stack_1.global_64
  loc_AFD083: LdPrVar
  loc_AFD085: LateMemCall
  loc_AFD08B: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_AFD090: PopAdLdVar
  loc_AFD091: FLdPr Me
  loc_AFD094: MemLdRfVar from_stack_1.global_64
  loc_AFD097: LdPrVar
  loc_AFD099: LateMemCall
  loc_AFD09F: LitVarStr var_94, "}"
  loc_AFD0A4: PopAdLdVar
  loc_AFD0A5: FLdPr Me
  loc_AFD0A8: MemLdRfVar from_stack_1.global_64
  loc_AFD0AB: LdPrVar
  loc_AFD0AD: LateMemCall
  loc_AFD0B3: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_AFD0B8: PopAdLdVar
  loc_AFD0B9: FLdPr Me
  loc_AFD0BC: MemLdRfVar from_stack_1.global_64
  loc_AFD0BF: LdPrVar
  loc_AFD0C1: LateMemCall
  loc_AFD0C7: LitVarStr var_94, "</style>"
  loc_AFD0CC: PopAdLdVar
  loc_AFD0CD: FLdPr Me
  loc_AFD0D0: MemLdRfVar from_stack_1.global_64
  loc_AFD0D3: LdPrVar
  loc_AFD0D5: LateMemCall
  loc_AFD0DB: LitI4 0
  loc_AFD0E0: FStStrCopy var_AC
  loc_AFD0E3: FLdRfVar var_AC
  loc_AFD0E6: LitI4 0
  loc_AFD0EB: FStStrCopy var_A8
  loc_AFD0EE: FLdRfVar var_A8
  loc_AFD0F1: LitI2_Byte &HFF
  loc_AFD0F3: PopTmpLdAd2 var_C6
  loc_AFD0F6: FLdPr Me
  loc_AFD0F9: MemLdRfVar from_stack_1.global_64
  loc_AFD0FC: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AFD101: FFreeStr var_A8 = ""
  loc_AFD108: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_AFD10D: PopAdLdVar
  loc_AFD10E: FLdPr Me
  loc_AFD111: MemLdRfVar from_stack_1.global_64
  loc_AFD114: LdPrVar
  loc_AFD116: LateMemCall
  loc_AFD11C: LitVarStr var_94, "  <tr valign=""center"">"
  loc_AFD121: PopAdLdVar
  loc_AFD122: FLdPr Me
  loc_AFD125: MemLdRfVar from_stack_1.global_64
  loc_AFD128: LdPrVar
  loc_AFD12A: LateMemCall
  loc_AFD130: LitVarStr var_94, "    <th align=""center"" valign=""center""><p>"
  loc_AFD135: PopAdLdVar
  loc_AFD136: FLdPr Me
  loc_AFD139: MemLdRfVar from_stack_1.global_64
  loc_AFD13C: LdPrVar
  loc_AFD13E: LateMemCall
  loc_AFD144: FLdPr Me
  loc_AFD147: MemLdI2 bLogos
  loc_AFD14A: BranchF loc_AFD161
  loc_AFD14D: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_AFD152: PopAdLdVar
  loc_AFD153: FLdPr Me
  loc_AFD156: MemLdRfVar from_stack_1.global_64
  loc_AFD159: LdPrVar
  loc_AFD15B: LateMemCall
  loc_AFD161: LitVarStr var_94, "    <br>ACUERDO<span class=""Titulo2""> N&ordm; 2988 <br>"
  loc_AFD166: PopAdLdVar
  loc_AFD167: FLdPr Me
  loc_AFD16A: MemLdRfVar from_stack_1.global_64
  loc_AFD16D: LdPrVar
  loc_AFD16F: LateMemCall
  loc_AFD175: LitVarStr var_94, "      ANEXO XII: DEUDA PÚBLICA</span></p>"
  loc_AFD17A: PopAdLdVar
  loc_AFD17B: FLdPr Me
  loc_AFD17E: MemLdRfVar from_stack_1.global_64
  loc_AFD181: LdPrVar
  loc_AFD183: LateMemCall
  loc_AFD189: LitVarStr var_94, "    </th>"
  loc_AFD18E: PopAdLdVar
  loc_AFD18F: FLdPr Me
  loc_AFD192: MemLdRfVar from_stack_1.global_64
  loc_AFD195: LdPrVar
  loc_AFD197: LateMemCall
  loc_AFD19D: LitVarStr var_94, "  </tr>"
  loc_AFD1A2: PopAdLdVar
  loc_AFD1A3: FLdPr Me
  loc_AFD1A6: MemLdRfVar from_stack_1.global_64
  loc_AFD1A9: LdPrVar
  loc_AFD1AB: LateMemCall
  loc_AFD1B1: LitVarStr var_94, "  <tr>"
  loc_AFD1B6: PopAdLdVar
  loc_AFD1B7: FLdPr Me
  loc_AFD1BA: MemLdRfVar from_stack_1.global_64
  loc_AFD1BD: LdPrVar
  loc_AFD1BF: LateMemCall
  loc_AFD1C5: LitVarStr var_94, "    <th>"
  loc_AFD1CA: PopAdLdVar
  loc_AFD1CB: FLdPr Me
  loc_AFD1CE: MemLdRfVar from_stack_1.global_64
  loc_AFD1D1: LdPrVar
  loc_AFD1D3: LateMemCall
  loc_AFD1D9: LitVarStr var_A4, "      <p align=""left"" class=""Titulo2"">      Repartici&oacute;n/Organismo: "
  loc_AFD1DE: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AFD1E3: FStVarCopyObj var_C4
  loc_AFD1E6: FLdRfVar var_C4
  loc_AFD1E9: FLdRfVar var_D8
  loc_AFD1EC: ImpAdCallFPR4  = Ucase()
  loc_AFD1F1: FLdRfVar var_D8
  loc_AFD1F4: ConcatVar var_E8
  loc_AFD1F8: LitVarStr var_F8, "<br>"
  loc_AFD1FD: ConcatVar var_108
  loc_AFD201: PopAdLdVar
  loc_AFD202: FLdPr Me
  loc_AFD205: MemLdRfVar from_stack_1.global_64
  loc_AFD208: LdPrVar
  loc_AFD20A: LateMemCall
  loc_AFD210: FFreeVar var_C4 = "": var_D8 = "": var_E8 = ""
  loc_AFD21B: FLdRfVar var_B0
  loc_AFD21E: FLdPr Me
  loc_AFD221: VCallAd Control_ID_PeriodoCbo
  loc_AFD224: FStAdFunc var_120
  loc_AFD227: FLdPr var_120
  loc_AFD22A:  = Me.Text
  loc_AFD22F: ILdRf var_B0
  loc_AFD232: CI2Str
  loc_AFD234: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_AFD239: CVarStr var_C4
  loc_AFD23C: FLdRfVar var_D8
  loc_AFD23F: ImpAdCallFPR4  = Month()
  loc_AFD244: LitStr "    Ejercicio: "
  loc_AFD247: FLdRfVar var_A8
  loc_AFD24A: FLdPr Me
  loc_AFD24D: VCallAd Control_ID_PeriodoCbo
  loc_AFD250: FStAdFunc var_11C
  loc_AFD253: FLdPr var_11C
  loc_AFD256:  = Me.Text
  loc_AFD25B: ILdRf var_A8
  loc_AFD25E: ConcatStr
  loc_AFD25F: FStStrNoPop var_AC
  loc_AFD262: LitStr " ("
  loc_AFD265: ConcatStr
  loc_AFD266: CVarStr var_160
  loc_AFD269: LitVarStr var_F8, "Definitivo"
  loc_AFD26E: FStVarCopyObj var_140
  loc_AFD271: FLdRfVar var_140
  loc_AFD274: LitVarStr var_A4, "Provisorio"
  loc_AFD279: FStVarCopyObj var_130
  loc_AFD27C: FLdRfVar var_130
  loc_AFD27F: LitVarI2 var_94, 12
  loc_AFD284: HardType
  loc_AFD285: FLdRfVar var_D8
  loc_AFD288: GtVar var_E8
  loc_AFD28C: FStVar var_108
  loc_AFD290: FLdRfVar var_108
  loc_AFD293: FLdRfVar var_150
  loc_AFD296: ImpAdCallFPR4  = IIf(, , )
  loc_AFD29B: FLdRfVar var_150
  loc_AFD29E: ConcatVar var_170
  loc_AFD2A2: LitVarStr var_118, ")"
  loc_AFD2A7: ConcatVar var_180
  loc_AFD2AB: PopAdLdVar
  loc_AFD2AC: FLdPr Me
  loc_AFD2AF: MemLdRfVar from_stack_1.global_64
  loc_AFD2B2: LdPrVar
  loc_AFD2B4: LateMemCall
  loc_AFD2BA: FFreeStr var_A8 = "": var_AC = ""
  loc_AFD2C3: FFreeAd var_11C = ""
  loc_AFD2CA: FFreeVar var_C4 = "": var_D8 = "": var_108 = "": var_130 = "": var_140 = "": var_160 = "": var_150 = "": var_170 = ""
  loc_AFD2DF: LitVarStr var_94, "  </p></th></tr>"
  loc_AFD2E4: PopAdLdVar
  loc_AFD2E5: FLdPr Me
  loc_AFD2E8: MemLdRfVar from_stack_1.global_64
  loc_AFD2EB: LdPrVar
  loc_AFD2ED: LateMemCall
  loc_AFD2F3: LitVarStr var_94, "</table>"
  loc_AFD2F8: PopAdLdVar
  loc_AFD2F9: FLdPr Me
  loc_AFD2FC: MemLdRfVar from_stack_1.global_64
  loc_AFD2FF: LdPrVar
  loc_AFD301: LateMemCall
  loc_AFD307: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AFD30C: PopAdLdVar
  loc_AFD30D: FLdPr Me
  loc_AFD310: MemLdRfVar from_stack_1.global_64
  loc_AFD313: LdPrVar
  loc_AFD315: LateMemCall
  loc_AFD31B: LitVarStr var_94, "  <THEAD>"
  loc_AFD320: PopAdLdVar
  loc_AFD321: FLdPr Me
  loc_AFD324: MemLdRfVar from_stack_1.global_64
  loc_AFD327: LdPrVar
  loc_AFD329: LateMemCall
  loc_AFD32F: LitVarStr var_94, " <tr align=""center"" class=""Encabezado"">"
  loc_AFD334: PopAdLdVar
  loc_AFD335: FLdPr Me
  loc_AFD338: MemLdRfVar from_stack_1.global_64
  loc_AFD33B: LdPrVar
  loc_AFD33D: LateMemCall
  loc_AFD343: LitVarStr var_94, "     <th rowspan=""2"" width=""6" & Chr(37) & """>CONCEPTO</th>"
  loc_AFD348: PopAdLdVar
  loc_AFD349: FLdPr Me
  loc_AFD34C: MemLdRfVar from_stack_1.global_64
  loc_AFD34F: LdPrVar
  loc_AFD351: LateMemCall
  loc_AFD357: LitVarStr var_94, "     <th colspan=""3"" >SALDO AL INICIO</th>"
  loc_AFD35C: PopAdLdVar
  loc_AFD35D: FLdPr Me
  loc_AFD360: MemLdRfVar from_stack_1.global_64
  loc_AFD363: LdPrVar
  loc_AFD365: LateMemCall
  loc_AFD36B: LitVarStr var_94, "     <th colspan=""5"" >PAGOS REALIZADOS EN EL EJERCICIO</th>"
  loc_AFD370: PopAdLdVar
  loc_AFD371: FLdPr Me
  loc_AFD374: MemLdRfVar from_stack_1.global_64
  loc_AFD377: LdPrVar
  loc_AFD379: LateMemCall
  loc_AFD37F: LitVarStr var_94, "     <th colspan=""3"" >DEUDA CONTRAIDA EN EL<br>EJERCICIO</th>"
  loc_AFD384: PopAdLdVar
  loc_AFD385: FLdPr Me
  loc_AFD388: MemLdRfVar from_stack_1.global_64
  loc_AFD38B: LdPrVar
  loc_AFD38D: LateMemCall
  loc_AFD393: LitVarStr var_94, "     <th colspan=""3"" >RENEGOCIACION DE LA<br>DEUDA</th>"
  loc_AFD398: PopAdLdVar
  loc_AFD399: FLdPr Me
  loc_AFD39C: MemLdRfVar from_stack_1.global_64
  loc_AFD39F: LdPrVar
  loc_AFD3A1: LateMemCall
  loc_AFD3A7: LitVarStr var_94, "     <th colspan=""3"" >SALDO AL FINAL</th>"
  loc_AFD3AC: PopAdLdVar
  loc_AFD3AD: FLdPr Me
  loc_AFD3B0: MemLdRfVar from_stack_1.global_64
  loc_AFD3B3: LdPrVar
  loc_AFD3B5: LateMemCall
  loc_AFD3BB: LitVarStr var_94, "     <th rowspan=""2"" width=""6" & Chr(37) & """>NORMA LEGAL</th>"
  loc_AFD3C0: PopAdLdVar
  loc_AFD3C1: FLdPr Me
  loc_AFD3C4: MemLdRfVar from_stack_1.global_64
  loc_AFD3C7: LdPrVar
  loc_AFD3C9: LateMemCall
  loc_AFD3CF: LitVarStr var_94, "     <th rowspan=""2"" width=""6" & Chr(37) & """>FECHA<br>DE VTO.</th>"
  loc_AFD3D4: PopAdLdVar
  loc_AFD3D5: FLdPr Me
  loc_AFD3D8: MemLdRfVar from_stack_1.global_64
  loc_AFD3DB: LdPrVar
  loc_AFD3DD: LateMemCall
  loc_AFD3E3: LitVarStr var_94, " </tr>"
  loc_AFD3E8: PopAdLdVar
  loc_AFD3E9: FLdPr Me
  loc_AFD3EC: MemLdRfVar from_stack_1.global_64
  loc_AFD3EF: LdPrVar
  loc_AFD3F1: LateMemCall
  loc_AFD3F7: LitVarStr var_94, " <tr align=""center"" class=""Encabezado"">"
  loc_AFD3FC: PopAdLdVar
  loc_AFD3FD: FLdPr Me
  loc_AFD400: MemLdRfVar from_stack_1.global_64
  loc_AFD403: LdPrVar
  loc_AFD405: LateMemCall
  loc_AFD40B: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>CAPITAL</th>"
  loc_AFD410: PopAdLdVar
  loc_AFD411: FLdPr Me
  loc_AFD414: MemLdRfVar from_stack_1.global_64
  loc_AFD417: LdPrVar
  loc_AFD419: LateMemCall
  loc_AFD41F: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>INT.<br>PACTADOS</th>"
  loc_AFD424: PopAdLdVar
  loc_AFD425: FLdPr Me
  loc_AFD428: MemLdRfVar from_stack_1.global_64
  loc_AFD42B: LdPrVar
  loc_AFD42D: LateMemCall
  loc_AFD433: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>TOTAL<br>DEUDA</th>"
  loc_AFD438: PopAdLdVar
  loc_AFD439: FLdPr Me
  loc_AFD43C: MemLdRfVar from_stack_1.global_64
  loc_AFD43F: LdPrVar
  loc_AFD441: LateMemCall
  loc_AFD447: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>AMORT.<br>DEUDA</th>"
  loc_AFD44C: PopAdLdVar
  loc_AFD44D: FLdPr Me
  loc_AFD450: MemLdRfVar from_stack_1.global_64
  loc_AFD453: LdPrVar
  loc_AFD455: LateMemCall
  loc_AFD45B: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>INT.<br>PAGADOS</th>"
  loc_AFD460: PopAdLdVar
  loc_AFD461: FLdPr Me
  loc_AFD464: MemLdRfVar from_stack_1.global_64
  loc_AFD467: LdPrVar
  loc_AFD469: LateMemCall
  loc_AFD46F: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>AJUSTE<br>DEUDA</th>"
  loc_AFD474: PopAdLdVar
  loc_AFD475: FLdPr Me
  loc_AFD478: MemLdRfVar from_stack_1.global_64
  loc_AFD47B: LdPrVar
  loc_AFD47D: LateMemCall
  loc_AFD483: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>OTROS<br>GTOS</th>"
  loc_AFD488: PopAdLdVar
  loc_AFD489: FLdPr Me
  loc_AFD48C: MemLdRfVar from_stack_1.global_64
  loc_AFD48F: LdPrVar
  loc_AFD491: LateMemCall
  loc_AFD497: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>TOTAL<br>PAGOS</th>"
  loc_AFD49C: PopAdLdVar
  loc_AFD49D: FLdPr Me
  loc_AFD4A0: MemLdRfVar from_stack_1.global_64
  loc_AFD4A3: LdPrVar
  loc_AFD4A5: LateMemCall
  loc_AFD4AB: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>CAPITAL</th>"
  loc_AFD4B0: PopAdLdVar
  loc_AFD4B1: FLdPr Me
  loc_AFD4B4: MemLdRfVar from_stack_1.global_64
  loc_AFD4B7: LdPrVar
  loc_AFD4B9: LateMemCall
  loc_AFD4BF: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>INT.<br>PACTADOS</th>"
  loc_AFD4C4: PopAdLdVar
  loc_AFD4C5: FLdPr Me
  loc_AFD4C8: MemLdRfVar from_stack_1.global_64
  loc_AFD4CB: LdPrVar
  loc_AFD4CD: LateMemCall
  loc_AFD4D3: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>TOTAL<br>DEUDA</th>"
  loc_AFD4D8: PopAdLdVar
  loc_AFD4D9: FLdPr Me
  loc_AFD4DC: MemLdRfVar from_stack_1.global_64
  loc_AFD4DF: LdPrVar
  loc_AFD4E1: LateMemCall
  loc_AFD4E7: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>CAPITAL</th>"
  loc_AFD4EC: PopAdLdVar
  loc_AFD4ED: FLdPr Me
  loc_AFD4F0: MemLdRfVar from_stack_1.global_64
  loc_AFD4F3: LdPrVar
  loc_AFD4F5: LateMemCall
  loc_AFD4FB: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>INT.<br>PACTADOS</th>"
  loc_AFD500: PopAdLdVar
  loc_AFD501: FLdPr Me
  loc_AFD504: MemLdRfVar from_stack_1.global_64
  loc_AFD507: LdPrVar
  loc_AFD509: LateMemCall
  loc_AFD50F: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>TOTAL<br>DEUDA</th>"
  loc_AFD514: PopAdLdVar
  loc_AFD515: FLdPr Me
  loc_AFD518: MemLdRfVar from_stack_1.global_64
  loc_AFD51B: LdPrVar
  loc_AFD51D: LateMemCall
  loc_AFD523: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>CAPITAL</th>"
  loc_AFD528: PopAdLdVar
  loc_AFD529: FLdPr Me
  loc_AFD52C: MemLdRfVar from_stack_1.global_64
  loc_AFD52F: LdPrVar
  loc_AFD531: LateMemCall
  loc_AFD537: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>INT.<br>PACTADOS</th>"
  loc_AFD53C: PopAdLdVar
  loc_AFD53D: FLdPr Me
  loc_AFD540: MemLdRfVar from_stack_1.global_64
  loc_AFD543: LdPrVar
  loc_AFD545: LateMemCall
  loc_AFD54B: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>TOTAL<br>DEUDA</th>"
  loc_AFD550: PopAdLdVar
  loc_AFD551: FLdPr Me
  loc_AFD554: MemLdRfVar from_stack_1.global_64
  loc_AFD557: LdPrVar
  loc_AFD559: LateMemCall
  loc_AFD55F: LitVarStr var_94, "   </tr>"
  loc_AFD564: PopAdLdVar
  loc_AFD565: FLdPr Me
  loc_AFD568: MemLdRfVar from_stack_1.global_64
  loc_AFD56B: LdPrVar
  loc_AFD56D: LateMemCall
  loc_AFD573: LitVarStr var_94, "  </THEAD>"
  loc_AFD578: PopAdLdVar
  loc_AFD579: FLdPr Me
  loc_AFD57C: MemLdRfVar from_stack_1.global_64
  loc_AFD57F: LdPrVar
  loc_AFD581: LateMemCall
  loc_AFD587: ExitProcHresult
End Function

Private Function Proc_256_19_A049C0() 'A049C0
  'Data Table: 44548C
  loc_A0484C: LitVarStr var_94, "</table>"
  loc_A04851: PopAdLdVar
  loc_A04852: FLdPr Me
  loc_A04855: MemLdRfVar from_stack_1.global_64
  loc_A04858: LdPrVar
  loc_A0485A: LateMemCall
  loc_A04860: LitVarStr var_94, "<br>"
  loc_A04865: PopAdLdVar
  loc_A04866: FLdPr Me
  loc_A04869: MemLdRfVar from_stack_1.global_64
  loc_A0486C: LdPrVar
  loc_A0486E: LateMemCall
  loc_A04874: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_A04879: PopAdLdVar
  loc_A0487A: FLdPr Me
  loc_A0487D: MemLdRfVar from_stack_1.global_64
  loc_A04880: LdPrVar
  loc_A04882: LateMemCall
  loc_A04888: LitVarStr var_94, "  <tr>"
  loc_A0488D: PopAdLdVar
  loc_A0488E: FLdPr Me
  loc_A04891: MemLdRfVar from_stack_1.global_64
  loc_A04894: LdPrVar
  loc_A04896: LateMemCall
  loc_A0489C: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_A048A1: PopAdLdVar
  loc_A048A2: FLdPr Me
  loc_A048A5: MemLdRfVar from_stack_1.global_64
  loc_A048A8: LdPrVar
  loc_A048AA: LateMemCall
  loc_A048B0: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_A048B5: PopAdLdVar
  loc_A048B6: FLdPr Me
  loc_A048B9: MemLdRfVar from_stack_1.global_64
  loc_A048BC: LdPrVar
  loc_A048BE: LateMemCall
  loc_A048C4: FLdPr Me
  loc_A048C7: MemLdI2 bLogos
  loc_A048CA: BranchF loc_A04931
  loc_A048CD: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_A048D2: PopAdLdVar
  loc_A048D3: FLdPr Me
  loc_A048D6: MemLdRfVar from_stack_1.global_64
  loc_A048D9: LdPrVar
  loc_A048DB: LateMemCall
  loc_A048E1: LitVarStr var_94, "          <map name=""Map"">"
  loc_A048E6: PopAdLdVar
  loc_A048E7: FLdPr Me
  loc_A048EA: MemLdRfVar from_stack_1.global_64
  loc_A048ED: LdPrVar
  loc_A048EF: LateMemCall
  loc_A048F5: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_A048FA: PopAdLdVar
  loc_A048FB: FLdPr Me
  loc_A048FE: MemLdRfVar from_stack_1.global_64
  loc_A04901: LdPrVar
  loc_A04903: LateMemCall
  loc_A04909: LitVarStr var_94, "          </map>"
  loc_A0490E: PopAdLdVar
  loc_A0490F: FLdPr Me
  loc_A04912: MemLdRfVar from_stack_1.global_64
  loc_A04915: LdPrVar
  loc_A04917: LateMemCall
  loc_A0491D: LitVarStr var_94, "    </div></th>"
  loc_A04922: PopAdLdVar
  loc_A04923: FLdPr Me
  loc_A04926: MemLdRfVar from_stack_1.global_64
  loc_A04929: LdPrVar
  loc_A0492B: LateMemCall
  loc_A04931: LitVarStr var_94, "  </tr>"
  loc_A04936: PopAdLdVar
  loc_A04937: FLdPr Me
  loc_A0493A: MemLdRfVar from_stack_1.global_64
  loc_A0493D: LdPrVar
  loc_A0493F: LateMemCall
  loc_A04945: LitVarStr var_94, "  <tr>"
  loc_A0494A: PopAdLdVar
  loc_A0494B: FLdPr Me
  loc_A0494E: MemLdRfVar from_stack_1.global_64
  loc_A04951: LdPrVar
  loc_A04953: LateMemCall
  loc_A04959: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_A0495E: PopAdLdVar
  loc_A0495F: FLdPr Me
  loc_A04962: MemLdRfVar from_stack_1.global_64
  loc_A04965: LdPrVar
  loc_A04967: LateMemCall
  loc_A0496D: LitVarStr var_94, "  </tr>"
  loc_A04972: PopAdLdVar
  loc_A04973: FLdPr Me
  loc_A04976: MemLdRfVar from_stack_1.global_64
  loc_A04979: LdPrVar
  loc_A0497B: LateMemCall
  loc_A04981: LitVarStr var_94, "</table>"
  loc_A04986: PopAdLdVar
  loc_A04987: FLdPr Me
  loc_A0498A: MemLdRfVar from_stack_1.global_64
  loc_A0498D: LdPrVar
  loc_A0498F: LateMemCall
  loc_A04995: LitVarStr var_94, "</body>"
  loc_A0499A: PopAdLdVar
  loc_A0499B: FLdPr Me
  loc_A0499E: MemLdRfVar from_stack_1.global_64
  loc_A049A1: LdPrVar
  loc_A049A3: LateMemCall
  loc_A049A9: LitVarStr var_94, "</html>"
  loc_A049AE: PopAdLdVar
  loc_A049AF: FLdPr Me
  loc_A049B2: MemLdRfVar from_stack_1.global_64
  loc_A049B5: LdPrVar
  loc_A049B7: LateMemCall
  loc_A049BD: ExitProcHresult
End Function
