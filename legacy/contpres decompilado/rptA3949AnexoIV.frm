VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA3949AnexoIV
  Caption = "Acuerdo 3949 - Anexo IV"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA3949AnexoIV.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9270
  ClientHeight = 2850
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2595
    Width = 9270
    Height = 255
    TabIndex = 16
    OleObjectBlob = "rptA3949AnexoIV.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7440
    Top = 360
    Width = 735
    Height = 615
    TabIndex = 6
    Cancel = -1  'True
    Picture = "rptA3949AnexoIV.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA3949AnexoIV.frx":0B9C
    Left = 360
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1440
    Width = 5895
    Height = 1095
    TabIndex = 11
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 4440
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 15
    End
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 13
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 12
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1440
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
    Width = 6255
    Height = 1335
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4680
      Top = 480
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
    Left = 7560
    Top = 480
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 7
    OleObjectBlob = "rptA3949AnexoIV.frx":0C00
  End
End

Attribute VB_Name = "rptA3949AnexoIV"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00597558
  bStruc(60) As Byte ' String fields: 15
End Type


Private Sub cmdTxt_Click() '953A74
  'Data Table: 4693AC
  loc_953A5C: LitI2_Byte &HFF
  loc_953A5E: ILdRf Me
  loc_953A61: CastAd
  loc_953A64: FStAdFunc var_88
  loc_953A67: FLdRfVar var_88
  loc_953A6A: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_953A6F: FFree1Ad var_88
  loc_953A72: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9543F4
  'Data Table: 4693AC
  loc_9543DC: ILdRf Me
  loc_9543DF: CastAd
  loc_9543E2: FStAdFunc var_88
  loc_9543E5: FLdRfVar var_88
  loc_9543E8: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_9543ED: FFree1Ad var_88
  loc_9543F0: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '953F80
  'Data Table: 4693AC
  loc_953F68: ILdRf Me
  loc_953F6B: CastAd
  loc_953F6E: FStAdFunc var_88
  loc_953F71: FLdRfVar var_88
  loc_953F74: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_953F79: FFree1Ad var_88
  loc_953F7C: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '9864F4
  'Data Table: 4693AC
  loc_9864BC: FLdPr Me
  loc_9864BF: VCallAd Control_ID_statusBar
  loc_9864C2: FStAdFunc var_88
  loc_9864C5: FLdPr var_88
  loc_9864C8: LateIdLdVar var_98 DispID_1 0
  loc_9864CF: CStrVarTmp
  loc_9864D0: CVarStr var_A8
  loc_9864D3: PopAdLdVar
  loc_9864D4: FLdPr Me
  loc_9864D7: VCallAd Control_ID_statusBar
  loc_9864DA: FStAdFunc var_BC
  loc_9864DD: FLdPr var_BC
  loc_9864E0: LateIdSt
  loc_9864E5: FFreeAd var_88 = ""
  loc_9864EC: FFreeVar var_98 = ""
  loc_9864F3: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96B8FC
  'Data Table: 4693AC
  loc_96B8E0: LitI2_Byte &HFF
  loc_96B8E2: LitI2_Byte 0
  loc_96B8E4: ILdRf Me
  loc_96B8E7: CastAd
  loc_96B8EA: FStAdFunc var_88
  loc_96B8ED: FLdRfVar var_88
  loc_96B8F0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B8F5: FFree1Ad var_88
  loc_96B8F8: ExitProcHresult
End Sub

Private Sub cmdHtml_Click() '953B0C
  'Data Table: 4693AC
  loc_953AF4: ILdRf Me
  loc_953AF7: CastAd
  loc_953AFA: FStAdFunc var_88
  loc_953AFD: FLdRfVar var_88
  loc_953B00: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_953B05: FFree1Ad var_88
  loc_953B08: ExitProcHresult
  loc_953B09: FnInStr4Var
End Sub

Private Sub cmdSalir_Click() '97666C
  'Data Table: 4693AC
  loc_97663C: LitVarStr var_94, "Cerrando..."
  loc_976641: PopAdLdVar
  loc_976642: FLdPr Me
  loc_976645: VCallAd Control_ID_statusBar
  loc_976648: FStAdFunc var_A8
  loc_97664B: FLdPr var_A8
  loc_97664E: LateIdSt
  loc_976653: FFree1Ad var_A8
  loc_976656: ILdRf Me
  loc_976659: FStAdNoPop
  loc_97665D: ImpAdLdRf MemVar_C44F9C
  loc_976660: NewIfNullPr Me
  loc_976663: Me.Global.Unload from_stack_1
  loc_976668: FFree1Ad var_A8
  loc_97666B: ExitProcHresult
End Sub

Private Sub Form_Load() 'A1B99C
  'Data Table: 4693AC
  loc_A1B80C: LitI2_Byte &HFF
  loc_A1B80E: ImpAdStI2 MemVar_C3D840
  loc_A1B811: ILdRf Me
  loc_A1B814: CastAd
  loc_A1B817: FStAdFunc var_8C
  loc_A1B81A: FLdRfVar var_8C
  loc_A1B81D: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A1B822: FFree1Ad var_8C
  loc_A1B825: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_A1B828: FLdRfVar var_88
  loc_A1B82B: NewIfNullPr clsperiodo
  loc_A1B82E: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A1B833: FLdRfVar var_90
  loc_A1B836: FLdRfVar var_88
  loc_A1B839: NewIfNullPr clsperiodo
  loc_A1B83C: from_stack_1 = clsperiodo.RecordCount
  loc_A1B841: ILdRf var_90
  loc_A1B844: LitI4 0
  loc_A1B849: GtI4
  loc_A1B84A: BranchF loc_A1B8DD
  loc_A1B84D: FLdRfVar var_88
  loc_A1B850: NewIfNullPr clsperiodo
  loc_A1B853: Call clsperiodo.MoveFirst()
  loc_A1B858: FLdRfVar var_92
  loc_A1B85B: FLdRfVar var_88
  loc_A1B85E: NewIfNullPr clsperiodo
  loc_A1B861: from_stack_1 = clsperiodo.EOF
  loc_A1B866: FLdI2 var_92
  loc_A1B869: NotI4
  loc_A1B86A: BranchF loc_A1B8DD
  loc_A1B86D: LitVar_Missing var_D0
  loc_A1B870: PopAdLdVar
  loc_A1B871: FLdRfVar var_BC
  loc_A1B874: FLdRfVar var_AC
  loc_A1B877: LitVarStr var_A8, "PeriInfo"
  loc_A1B87C: PopAdLdVar
  loc_A1B87D: FLdRfVar var_98
  loc_A1B880: FLdRfVar var_8C
  loc_A1B883: FLdRfVar var_88
  loc_A1B886: NewIfNullPr clsperiodo
  loc_A1B889: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A1B88E: FLdPr var_8C
  loc_A1B891:  = Me.Fields
  loc_A1B896: FLdPr var_98
  loc_A1B899: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B89E: FLdPr var_AC
  loc_A1B8A1:  = Me.Value
  loc_A1B8A6: FLdRfVar var_BC
  loc_A1B8A9: CStrVarTmp
  loc_A1B8AA: FStStrNoPop var_C0
  loc_A1B8AD: FLdPr Me
  loc_A1B8B0: VCallAd Control_ID_cboPeriodo
  loc_A1B8B3: FStAdFunc var_D4
  loc_A1B8B6: FLdPr var_D4
  loc_A1B8B9: Me.AddItem from_stack_1, from_stack_2
  loc_A1B8BE: FFree1Str var_C0
  loc_A1B8C1: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_A1B8CC: FFree1Var var_BC = ""
  loc_A1B8CF: FLdRfVar var_88
  loc_A1B8D2: NewIfNullPr clsperiodo
  loc_A1B8D5: Call clsperiodo.MoveSiguiente()
  loc_A1B8DA: Branch loc_A1B858
  loc_A1B8DD: FLdPr Me
  loc_A1B8E0: VCallAd Control_ID_cboTrimestre
  loc_A1B8E3: FStAdFunc var_D8
  loc_A1B8E6: LitVar_Missing var_A8
  loc_A1B8E9: PopAdLdVar
  loc_A1B8EA: LitStr "Primero"
  loc_A1B8ED: FLdPr var_D8
  loc_A1B8F0: Me.AddItem from_stack_1, from_stack_2
  loc_A1B8F5: LitI4 1
  loc_A1B8FA: FLdRfVar var_92
  loc_A1B8FD: FLdPr var_D8
  loc_A1B900:  = Me.NewIndex
  loc_A1B905: FLdI2 var_92
  loc_A1B908: FLdPr var_D8
  loc_A1B90B: Me.ItemData = from_stack_1
  loc_A1B910: LitVar_Missing var_A8
  loc_A1B913: PopAdLdVar
  loc_A1B914: LitStr "Segundo"
  loc_A1B917: FLdPr var_D8
  loc_A1B91A: Me.AddItem from_stack_1, from_stack_2
  loc_A1B91F: LitI4 2
  loc_A1B924: FLdRfVar var_92
  loc_A1B927: FLdPr var_D8
  loc_A1B92A:  = Me.NewIndex
  loc_A1B92F: FLdI2 var_92
  loc_A1B932: FLdPr var_D8
  loc_A1B935: Me.ItemData = from_stack_1
  loc_A1B93A: LitVar_Missing var_A8
  loc_A1B93D: PopAdLdVar
  loc_A1B93E: LitStr "Tercero"
  loc_A1B941: FLdPr var_D8
  loc_A1B944: Me.AddItem from_stack_1, from_stack_2
  loc_A1B949: LitI4 3
  loc_A1B94E: FLdRfVar var_92
  loc_A1B951: FLdPr var_D8
  loc_A1B954:  = Me.NewIndex
  loc_A1B959: FLdI2 var_92
  loc_A1B95C: FLdPr var_D8
  loc_A1B95F: Me.ItemData = from_stack_1
  loc_A1B964: LitVar_Missing var_A8
  loc_A1B967: PopAdLdVar
  loc_A1B968: LitStr "Cuarto"
  loc_A1B96B: FLdPr var_D8
  loc_A1B96E: Me.AddItem from_stack_1, from_stack_2
  loc_A1B973: LitI4 4
  loc_A1B978: FLdRfVar var_92
  loc_A1B97B: FLdPr var_D8
  loc_A1B97E:  = Me.NewIndex
  loc_A1B983: FLdI2 var_92
  loc_A1B986: FLdPr var_D8
  loc_A1B989: Me.ItemData = from_stack_1
  loc_A1B98E: LitNothing
  loc_A1B990: FStAd var_D8 
  loc_A1B994: Call cmdNueva_Click()
  loc_A1B999: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '953A28
  'Data Table: 4693AC
  loc_953A10: FLdPr Me
  loc_953A13: VCallAd Control_ID_wbbReporte
  loc_953A16: FStAdFunc var_88
  loc_953A19: FLdRfVar var_88
  loc_953A1C: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_953A21: FFree1Ad var_88
  loc_953A24: ExitProcHresult
  loc_953A25: FLdPr Me
End Sub

Private Sub cmdPdf_Click() '953E50
  'Data Table: 4693AC
  loc_953E38: LitI2_Byte 0
  loc_953E3A: ILdRf Me
  loc_953E3D: CastAd
  loc_953E40: FStAdFunc var_88
  loc_953E43: FLdRfVar var_88
  loc_953E46: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_953E4B: FFree1Ad var_88
  loc_953E4E: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A1227C
  'Data Table: 4693AC
  loc_A12104: LitI2_Byte &HFF
  loc_A12106: FLdPr Me
  loc_A12109: MemStI2 bLogos
  loc_A1210C: LitI2_Byte 0
  loc_A1210E: FLdPr Me
  loc_A12111: MemStI2 bGenerado
  loc_A12114: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_A12119: ImpAdLdI2 MemVar_C3D064
  loc_A1211C: CStrUI1
  loc_A1211E: FStStrNoPop var_88
  loc_A12121: FLdPr Me
  loc_A12124: VCallAd Control_ID_cboPeriodo
  loc_A12127: FStAdFunc var_8C
  loc_A1212A: FLdPr var_8C
  loc_A1212D: Me.Text = from_stack_1
  loc_A12132: FFree1Str var_88
  loc_A12135: FFree1Ad var_8C
  loc_A12138: FLdRfVar var_9C
  loc_A1213B: ImpAdCallFPR4  = Date
  loc_A12140: FLdRfVar var_9C
  loc_A12143: FLdRfVar var_AC
  loc_A12146: ImpAdCallFPR4  = Month()
  loc_A1214B: FLdRfVar var_AC
  loc_A1214E: FStVar var_BC
  loc_A12152: FFree1Var var_9C = ""
  loc_A12155: FLdRfVar var_BC
  loc_A12158: LitVarI2 var_CC, 1
  loc_A1215D: HardType
  loc_A1215E: EqVarBool
  loc_A12160: BranchT loc_A1217F
  loc_A12163: FLdRfVar var_BC
  loc_A12166: LitVarI2 var_DC, 2
  loc_A1216B: HardType
  loc_A1216C: EqVarBool
  loc_A1216E: BranchT loc_A1217F
  loc_A12171: FLdRfVar var_BC
  loc_A12174: LitVarI2 var_EC, 3
  loc_A12179: HardType
  loc_A1217A: EqVarBool
  loc_A1217C: BranchF loc_A12199
  loc_A1217F: LitStr "Primero"
  loc_A12182: FLdPr Me
  loc_A12185: VCallAd Control_ID_cboTrimestre
  loc_A12188: FStAdFunc var_8C
  loc_A1218B: FLdPr var_8C
  loc_A1218E: Me.Text = from_stack_1
  loc_A12193: FFree1Ad var_8C
  loc_A12196: Branch loc_A12262
  loc_A12199: FLdRfVar var_BC
  loc_A1219C: LitVarI2 var_CC, 4
  loc_A121A1: HardType
  loc_A121A2: EqVarBool
  loc_A121A4: BranchT loc_A121C3
  loc_A121A7: FLdRfVar var_BC
  loc_A121AA: LitVarI2 var_DC, 5
  loc_A121AF: HardType
  loc_A121B0: EqVarBool
  loc_A121B2: BranchT loc_A121C3
  loc_A121B5: FLdRfVar var_BC
  loc_A121B8: LitVarI2 var_EC, 6
  loc_A121BD: HardType
  loc_A121BE: EqVarBool
  loc_A121C0: BranchF loc_A121DD
  loc_A121C3: LitStr "Segundo"
  loc_A121C6: FLdPr Me
  loc_A121C9: VCallAd Control_ID_cboTrimestre
  loc_A121CC: FStAdFunc var_8C
  loc_A121CF: FLdPr var_8C
  loc_A121D2: Me.Text = from_stack_1
  loc_A121D7: FFree1Ad var_8C
  loc_A121DA: Branch loc_A12262
  loc_A121DD: FLdRfVar var_BC
  loc_A121E0: LitVarI2 var_CC, 7
  loc_A121E5: HardType
  loc_A121E6: EqVarBool
  loc_A121E8: BranchT loc_A12207
  loc_A121EB: FLdRfVar var_BC
  loc_A121EE: LitVarI2 var_DC, 8
  loc_A121F3: HardType
  loc_A121F4: EqVarBool
  loc_A121F6: BranchT loc_A12207
  loc_A121F9: FLdRfVar var_BC
  loc_A121FC: LitVarI2 var_EC, 9
  loc_A12201: HardType
  loc_A12202: EqVarBool
  loc_A12204: BranchF loc_A12221
  loc_A12207: LitStr "Tercero"
  loc_A1220A: FLdPr Me
  loc_A1220D: VCallAd Control_ID_cboTrimestre
  loc_A12210: FStAdFunc var_8C
  loc_A12213: FLdPr var_8C
  loc_A12216: Me.Text = from_stack_1
  loc_A1221B: FFree1Ad var_8C
  loc_A1221E: Branch loc_A12262
  loc_A12221: FLdRfVar var_BC
  loc_A12224: LitVarI2 var_CC, 10
  loc_A12229: HardType
  loc_A1222A: EqVarBool
  loc_A1222C: BranchT loc_A1224B
  loc_A1222F: FLdRfVar var_BC
  loc_A12232: LitVarI2 var_DC, 11
  loc_A12237: HardType
  loc_A12238: EqVarBool
  loc_A1223A: BranchT loc_A1224B
  loc_A1223D: FLdRfVar var_BC
  loc_A12240: LitVarI2 var_EC, 12
  loc_A12245: HardType
  loc_A12246: EqVarBool
  loc_A12248: BranchF loc_A12262
  loc_A1224B: LitStr "Cuarto"
  loc_A1224E: FLdPr Me
  loc_A12251: VCallAd Control_ID_cboTrimestre
  loc_A12254: FStAdFunc var_8C
  loc_A12257: FLdPr var_8C
  loc_A1225A: Me.Text = from_stack_1
  loc_A1225F: FFree1Ad var_8C
  loc_A12262: Call HabilitarCriterio()
  loc_A12267: ILdRf Me
  loc_A1226A: CastAd
  loc_A1226D: FStAdFunc var_8C
  loc_A12270: FLdRfVar var_8C
  loc_A12273: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_A12278: FFree1Ad var_8C
  loc_A1227B: ExitProcHresult
End Sub

Public Function htmFileGet() '46A148
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '46A157
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '46A166
  htmFile = Value
End Sub

Public Function bLogosGet() '46A175
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '46A184
  bLogos = Value
End Sub

Public Function bGeneradoGet() '46A193
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '46A1A2
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '992720
  'Data Table: 4693AC
  loc_9926DC: LitI4 0
  loc_9926E1: LitI4 1
  loc_9926E6: FLdRfVar var_88
  loc_9926E9: Redim
  loc_9926F3: FLdPr Me
  loc_9926F6: VCallAd Control_ID_cboPeriodo
  loc_9926F9: CVarAd
  loc_9926FD: ParmAry1St
  loc_992703: FLdPr Me
  loc_992706: VCallAd Control_ID_cboTrimestre
  loc_992709: CVarAd
  loc_99270D: ParmAry1St
  loc_992713: FLdRfVar var_88
  loc_992716: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_99271B: FLdRfVar var_88
  loc_99271E: Erase
  loc_99271F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BA8864
  'Data Table: 4693AC
  loc_BA78D0: FLdPr Me
  loc_BA78D3: MemLdI2 bGenerado
  loc_BA78D6: BranchF loc_BA78DA
  loc_BA78D9: ExitProcHresult
  loc_BA78DA: LitVarStr var_94, "Generando reporte..."
  loc_BA78DF: PopAdLdVar
  loc_BA78E0: FLdPr Me
  loc_BA78E3: VCallAd Control_ID_statusBar
  loc_BA78E6: FStAdFunc var_A8
  loc_BA78E9: FLdPr var_A8
  loc_BA78EC: LateIdSt
  loc_BA78F1: FFree1Ad var_A8
  loc_BA78F4: LitI4 &HB
  loc_BA78F9: CI2I4
  loc_BA78FA: FLdPr Me
  loc_BA78FD: Me.MousePointer = from_stack_1
  loc_BA7902: FLdRfVar var_B4
  loc_BA7905: FLdRfVar var_AA
  loc_BA7908: FLdPr Me
  loc_BA790B: VCallAd Control_ID_cboTrimestre
  loc_BA790E: FStAdFunc var_A8
  loc_BA7911: FLdPr var_A8
  loc_BA7914:  = Me.ListIndex
  loc_BA7919: FLdI2 var_AA
  loc_BA791C: FLdPr Me
  loc_BA791F: VCallAd Control_ID_cboTrimestre
  loc_BA7922: FStAdFunc var_B0
  loc_BA7925: FLdPr var_B0
  loc_BA7928:  = Me.ItemData
  loc_BA792D: ILdRf var_B4
  loc_BA7930: LitI4 3
  loc_BA7935: MulI4
  loc_BA7936: CI2I4
  loc_BA7937: FLdPr Me
  loc_BA793A: MemStI2 global_224
  loc_BA793D: FFreeAd var_A8 = ""
  loc_BA7944: LitI2_Byte 0
  loc_BA7946: FLdPr Me
  loc_BA7949: MemStI2 global_226
  loc_BA794C: LitI4 0
  loc_BA7951: LitI4 &HE
  loc_BA7956: FLdRfVar var_B8
  loc_BA7959: Redim
  loc_BA7963: FLdPr Me
  loc_BA7966: MemLdRfVar from_stack_1.global_96
  loc_BA7969: CVarRef
  loc_BA796E: ParmAry1St
  loc_BA7974: FLdPr Me
  loc_BA7977: MemLdRfVar from_stack_1.global_100
  loc_BA797A: CVarRef
  loc_BA797F: ParmAry1St
  loc_BA7985: FLdPr Me
  loc_BA7988: MemLdRfVar from_stack_1.global_104
  loc_BA798B: CVarRef
  loc_BA7990: ParmAry1St
  loc_BA7996: FLdPr Me
  loc_BA7999: MemLdRfVar from_stack_1.global_108
  loc_BA799C: CVarRef
  loc_BA79A1: ParmAry1St
  loc_BA79A7: FLdPr Me
  loc_BA79AA: MemLdRfVar from_stack_1.global_112
  loc_BA79AD: CVarRef
  loc_BA79B2: ParmAry1St
  loc_BA79B8: FLdPr Me
  loc_BA79BB: MemLdRfVar from_stack_1.global_116
  loc_BA79BE: CVarRef
  loc_BA79C3: ParmAry1St
  loc_BA79C9: FLdPr Me
  loc_BA79CC: MemLdRfVar from_stack_1.global_120
  loc_BA79CF: CVarRef
  loc_BA79D4: ParmAry1St
  loc_BA79DA: FLdPr Me
  loc_BA79DD: MemLdRfVar from_stack_1.global_124
  loc_BA79E0: CVarRef
  loc_BA79E5: ParmAry1St
  loc_BA79EB: FLdPr Me
  loc_BA79EE: MemLdRfVar from_stack_1.global_128
  loc_BA79F1: CVarRef
  loc_BA79F6: ParmAry1St
  loc_BA79FC: FLdPr Me
  loc_BA79FF: MemLdRfVar from_stack_1.global_132
  loc_BA7A02: CVarRef
  loc_BA7A07: ParmAry1St
  loc_BA7A0D: FLdPr Me
  loc_BA7A10: MemLdRfVar from_stack_1.global_136
  loc_BA7A13: CVarRef
  loc_BA7A18: ParmAry1St
  loc_BA7A1E: FLdPr Me
  loc_BA7A21: MemLdRfVar from_stack_1.global_140
  loc_BA7A24: CVarRef
  loc_BA7A29: ParmAry1St
  loc_BA7A2F: FLdPr Me
  loc_BA7A32: MemLdRfVar from_stack_1.global_144
  loc_BA7A35: CVarRef
  loc_BA7A3A: ParmAry1St
  loc_BA7A40: FLdPr Me
  loc_BA7A43: MemLdRfVar from_stack_1.global_148
  loc_BA7A46: CVarRef
  loc_BA7A4B: ParmAry1St
  loc_BA7A51: FLdPr Me
  loc_BA7A54: MemLdRfVar from_stack_1.global_152
  loc_BA7A57: CVarRef
  loc_BA7A5C: ParmAry1St
  loc_BA7A62: FLdRfVar var_B8
  loc_BA7A65: Call Proc_164_23_9716C8()
  loc_BA7A6A: FLdRfVar var_B8
  loc_BA7A6D: Erase
  loc_BA7A6E: LitI4 0
  loc_BA7A73: LitI4 &HE
  loc_BA7A78: FLdRfVar var_B8
  loc_BA7A7B: Redim
  loc_BA7A85: FLdPr Me
  loc_BA7A88: MemLdRfVar from_stack_1.global_156
  loc_BA7A8B: CVarRef
  loc_BA7A90: ParmAry1St
  loc_BA7A96: FLdPr Me
  loc_BA7A99: MemLdRfVar from_stack_1.global_160
  loc_BA7A9C: CVarRef
  loc_BA7AA1: ParmAry1St
  loc_BA7AA7: FLdPr Me
  loc_BA7AAA: MemLdRfVar from_stack_1.global_164
  loc_BA7AAD: CVarRef
  loc_BA7AB2: ParmAry1St
  loc_BA7AB8: FLdPr Me
  loc_BA7ABB: MemLdRfVar from_stack_1.global_168
  loc_BA7ABE: CVarRef
  loc_BA7AC3: ParmAry1St
  loc_BA7AC9: FLdPr Me
  loc_BA7ACC: MemLdRfVar from_stack_1.global_172
  loc_BA7ACF: CVarRef
  loc_BA7AD4: ParmAry1St
  loc_BA7ADA: FLdPr Me
  loc_BA7ADD: MemLdRfVar from_stack_1.global_176
  loc_BA7AE0: CVarRef
  loc_BA7AE5: ParmAry1St
  loc_BA7AEB: FLdPr Me
  loc_BA7AEE: MemLdRfVar from_stack_1.global_180
  loc_BA7AF1: CVarRef
  loc_BA7AF6: ParmAry1St
  loc_BA7AFC: FLdPr Me
  loc_BA7AFF: MemLdRfVar from_stack_1.global_184
  loc_BA7B02: CVarRef
  loc_BA7B07: ParmAry1St
  loc_BA7B0D: FLdPr Me
  loc_BA7B10: MemLdRfVar from_stack_1.global_188
  loc_BA7B13: CVarRef
  loc_BA7B18: ParmAry1St
  loc_BA7B1E: FLdPr Me
  loc_BA7B21: MemLdRfVar from_stack_1.global_192
  loc_BA7B24: CVarRef
  loc_BA7B29: ParmAry1St
  loc_BA7B2F: FLdPr Me
  loc_BA7B32: MemLdRfVar from_stack_1.global_196
  loc_BA7B35: CVarRef
  loc_BA7B3A: ParmAry1St
  loc_BA7B40: FLdPr Me
  loc_BA7B43: MemLdRfVar from_stack_1.global_200
  loc_BA7B46: CVarRef
  loc_BA7B4B: ParmAry1St
  loc_BA7B51: FLdPr Me
  loc_BA7B54: MemLdRfVar from_stack_1.global_204
  loc_BA7B57: CVarRef
  loc_BA7B5C: ParmAry1St
  loc_BA7B62: FLdPr Me
  loc_BA7B65: MemLdRfVar from_stack_1.global_208
  loc_BA7B68: CVarRef
  loc_BA7B6D: ParmAry1St
  loc_BA7B73: FLdPr Me
  loc_BA7B76: MemLdRfVar from_stack_1.global_212
  loc_BA7B79: CVarRef
  loc_BA7B7E: ParmAry1St
  loc_BA7B84: FLdRfVar var_B8
  loc_BA7B87: Call Proc_164_23_9716C8()
  loc_BA7B8C: FLdRfVar var_B8
  loc_BA7B8F: Erase
  loc_BA7B90: LitStr "Municipalidad de Guaymallén"
  loc_BA7B93: FStStrCopy var_18C
  loc_BA7B96: ILdRf var_18C
  loc_BA7B99: LitStr "Municipalidad de Tupungato"
  loc_BA7B9C: EqStr
  loc_BA7B9E: BranchT loc_BA7BCD
  loc_BA7BA1: ILdRf var_18C
  loc_BA7BA4: LitStr "Municipalidad de La Paz"
  loc_BA7BA7: EqStr
  loc_BA7BA9: BranchT loc_BA7BCD
  loc_BA7BAC: ILdRf var_18C
  loc_BA7BAF: LitStr "Municipalidad de Santa Rosa"
  loc_BA7BB2: EqStr
  loc_BA7BB4: BranchT loc_BA7BCD
  loc_BA7BB7: ILdRf var_18C
  loc_BA7BBA: LitStr "Municipalidad de Tunuyán"
  loc_BA7BBD: EqStr
  loc_BA7BBF: BranchT loc_BA7BCD
  loc_BA7BC2: ILdRf var_18C
  loc_BA7BC5: LitStr "Municipalidad de San Carlos"
  loc_BA7BC8: EqStr
  loc_BA7BCA: BranchF loc_BA816E
  loc_BA7BCD: FLdRfVar var_194
  loc_BA7BD0: LitI2_Byte 0
  loc_BA7BD2: LitStr "51"
  loc_BA7BD5: LitStr vbNullString
  loc_BA7BD8: LitStr "9"
  loc_BA7BDB: LitI2_Byte 0
  loc_BA7BDD: Call Proc_164_24_A77F48()
  loc_BA7BE2: LitI2_Byte 0
  loc_BA7BE4: LitVar_Missing var_1A4
  loc_BA7BE7: LitI2_Byte &HFF
  loc_BA7BE9: FLdFPR8 var_194
  loc_BA7BEC: CVarR8
  loc_BA7BF0: PopAdLdVar
  loc_BA7BF1: FLdPr Me
  loc_BA7BF4: MemLdRfVar from_stack_1.global_96
  loc_BA7BF7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7BFC: FFree1Var var_1A4 = ""
  loc_BA7BFF: FLdRfVar var_194
  loc_BA7C02: LitI2_Byte &HFF
  loc_BA7C04: LitStr "51"
  loc_BA7C07: LitStr vbNullString
  loc_BA7C0A: LitStr "7"
  loc_BA7C0D: LitI2_Byte &HFF
  loc_BA7C0F: Call Proc_164_24_A77F48()
  loc_BA7C14: LitI2_Byte 0
  loc_BA7C16: LitVar_Missing var_1A4
  loc_BA7C19: LitI2_Byte &HFF
  loc_BA7C1B: FLdFPR8 var_194
  loc_BA7C1E: CVarR8
  loc_BA7C22: PopAdLdVar
  loc_BA7C23: FLdPr Me
  loc_BA7C26: MemLdRfVar from_stack_1.global_156
  loc_BA7C29: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7C2E: FFree1Var var_1A4 = ""
  loc_BA7C31: FLdRfVar var_194
  loc_BA7C34: LitI2_Byte 0
  loc_BA7C36: LitStr "61"
  loc_BA7C39: LitStr "24"
  loc_BA7C3C: LitStr "2"
  loc_BA7C3F: LitI2_Byte &HFF
  loc_BA7C41: Call Proc_164_24_A77F48()
  loc_BA7C46: LitI2_Byte 0
  loc_BA7C48: LitVar_Missing var_1A4
  loc_BA7C4B: LitI2_Byte &HFF
  loc_BA7C4D: FLdFPR8 var_194
  loc_BA7C50: CVarR8
  loc_BA7C54: PopAdLdVar
  loc_BA7C55: FLdPr Me
  loc_BA7C58: MemLdRfVar from_stack_1.global_100
  loc_BA7C5B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7C60: FFree1Var var_1A4 = ""
  loc_BA7C63: FLdRfVar var_194
  loc_BA7C66: LitI2_Byte &HFF
  loc_BA7C68: LitStr "61"
  loc_BA7C6B: LitStr vbNullString
  loc_BA7C6E: LitStr "1"
  loc_BA7C71: LitI2_Byte 0
  loc_BA7C73: Call Proc_164_24_A77F48()
  loc_BA7C78: LitI2_Byte 0
  loc_BA7C7A: LitVar_Missing var_1A4
  loc_BA7C7D: LitI2_Byte &HFF
  loc_BA7C7F: FLdFPR8 var_194
  loc_BA7C82: CVarR8
  loc_BA7C86: PopAdLdVar
  loc_BA7C87: FLdPr Me
  loc_BA7C8A: MemLdRfVar from_stack_1.global_160
  loc_BA7C8D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7C92: FFree1Var var_1A4 = ""
  loc_BA7C95: LitI2_Byte 0
  loc_BA7C97: LitVar_Missing var_1A4
  loc_BA7C9A: LitI2_Byte &HFF
  loc_BA7C9C: FLdPr Me
  loc_BA7C9F: MemLdStr global_96
  loc_BA7CA2: CR8Str
  loc_BA7CA4: FLdPr Me
  loc_BA7CA7: MemLdStr global_100
  loc_BA7CAA: CR8Str
  loc_BA7CAC: SubR4
  loc_BA7CAD: CVarR8
  loc_BA7CB1: PopAdLdVar
  loc_BA7CB2: FLdPr Me
  loc_BA7CB5: MemLdRfVar from_stack_1.global_104
  loc_BA7CB8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7CBD: FFree1Var var_1A4 = ""
  loc_BA7CC0: LitI2_Byte 0
  loc_BA7CC2: LitVar_Missing var_1A4
  loc_BA7CC5: LitI2_Byte &HFF
  loc_BA7CC7: FLdPr Me
  loc_BA7CCA: MemLdStr global_156
  loc_BA7CCD: CR8Str
  loc_BA7CCF: FLdPr Me
  loc_BA7CD2: MemLdStr global_160
  loc_BA7CD5: CR8Str
  loc_BA7CD7: SubR4
  loc_BA7CD8: CVarR8
  loc_BA7CDC: PopAdLdVar
  loc_BA7CDD: FLdPr Me
  loc_BA7CE0: MemLdRfVar from_stack_1.global_164
  loc_BA7CE3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7CE8: FFree1Var var_1A4 = ""
  loc_BA7CEB: FLdRfVar var_194
  loc_BA7CEE: LitI2_Byte 0
  loc_BA7CF0: LitStr "52"
  loc_BA7CF3: LitStr vbNullString
  loc_BA7CF6: LitStr "9"
  loc_BA7CF9: LitI2_Byte 0
  loc_BA7CFB: Call Proc_164_24_A77F48()
  loc_BA7D00: LitI2_Byte 0
  loc_BA7D02: LitVar_Missing var_1A4
  loc_BA7D05: LitI2_Byte &HFF
  loc_BA7D07: FLdFPR8 var_194
  loc_BA7D0A: CVarR8
  loc_BA7D0E: PopAdLdVar
  loc_BA7D0F: FLdPr Me
  loc_BA7D12: MemLdRfVar from_stack_1.global_108
  loc_BA7D15: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7D1A: FFree1Var var_1A4 = ""
  loc_BA7D1D: FLdRfVar var_194
  loc_BA7D20: LitI2_Byte &HFF
  loc_BA7D22: LitStr "52"
  loc_BA7D25: LitStr vbNullString
  loc_BA7D28: LitStr "7"
  loc_BA7D2B: LitI2_Byte &HFF
  loc_BA7D2D: Call Proc_164_24_A77F48()
  loc_BA7D32: LitI2_Byte 0
  loc_BA7D34: LitVar_Missing var_1A4
  loc_BA7D37: LitI2_Byte &HFF
  loc_BA7D39: FLdFPR8 var_194
  loc_BA7D3C: CVarR8
  loc_BA7D40: PopAdLdVar
  loc_BA7D41: FLdPr Me
  loc_BA7D44: MemLdRfVar from_stack_1.global_168
  loc_BA7D47: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7D4C: FFree1Var var_1A4 = ""
  loc_BA7D4F: FLdRfVar var_194
  loc_BA7D52: LitI2_Byte 0
  loc_BA7D54: LitStr "62"
  loc_BA7D57: LitStr "24"
  loc_BA7D5A: LitStr "2"
  loc_BA7D5D: LitI2_Byte &HFF
  loc_BA7D5F: Call Proc_164_24_A77F48()
  loc_BA7D64: LitI2_Byte 0
  loc_BA7D66: LitVar_Missing var_1A4
  loc_BA7D69: LitI2_Byte &HFF
  loc_BA7D6B: FLdFPR8 var_194
  loc_BA7D6E: CVarR8
  loc_BA7D72: PopAdLdVar
  loc_BA7D73: FLdPr Me
  loc_BA7D76: MemLdRfVar from_stack_1.global_112
  loc_BA7D79: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7D7E: FFree1Var var_1A4 = ""
  loc_BA7D81: FLdRfVar var_194
  loc_BA7D84: LitI2_Byte &HFF
  loc_BA7D86: LitStr "62"
  loc_BA7D89: LitStr vbNullString
  loc_BA7D8C: LitStr "1"
  loc_BA7D8F: LitI2_Byte 0
  loc_BA7D91: Call Proc_164_24_A77F48()
  loc_BA7D96: LitI2_Byte 0
  loc_BA7D98: LitVar_Missing var_1A4
  loc_BA7D9B: LitI2_Byte &HFF
  loc_BA7D9D: FLdFPR8 var_194
  loc_BA7DA0: CVarR8
  loc_BA7DA4: PopAdLdVar
  loc_BA7DA5: FLdPr Me
  loc_BA7DA8: MemLdRfVar from_stack_1.global_172
  loc_BA7DAB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7DB0: FFree1Var var_1A4 = ""
  loc_BA7DB3: LitI2_Byte 0
  loc_BA7DB5: LitVar_Missing var_1A4
  loc_BA7DB8: LitI2_Byte &HFF
  loc_BA7DBA: FLdPr Me
  loc_BA7DBD: MemLdStr global_104
  loc_BA7DC0: CR8Str
  loc_BA7DC2: FLdPr Me
  loc_BA7DC5: MemLdStr global_108
  loc_BA7DC8: CR8Str
  loc_BA7DCA: AddR8
  loc_BA7DCB: FLdPr Me
  loc_BA7DCE: MemLdStr global_112
  loc_BA7DD1: CR8Str
  loc_BA7DD3: SubR4
  loc_BA7DD4: CVarR8
  loc_BA7DD8: PopAdLdVar
  loc_BA7DD9: FLdPr Me
  loc_BA7DDC: MemLdRfVar from_stack_1.global_116
  loc_BA7DDF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7DE4: FFree1Var var_1A4 = ""
  loc_BA7DE7: LitI2_Byte 0
  loc_BA7DE9: LitVar_Missing var_1A4
  loc_BA7DEC: LitI2_Byte &HFF
  loc_BA7DEE: FLdPr Me
  loc_BA7DF1: MemLdStr global_164
  loc_BA7DF4: CR8Str
  loc_BA7DF6: FLdPr Me
  loc_BA7DF9: MemLdStr global_168
  loc_BA7DFC: CR8Str
  loc_BA7DFE: AddR8
  loc_BA7DFF: FLdPr Me
  loc_BA7E02: MemLdStr global_172
  loc_BA7E05: CR8Str
  loc_BA7E07: SubR4
  loc_BA7E08: CVarR8
  loc_BA7E0C: PopAdLdVar
  loc_BA7E0D: FLdPr Me
  loc_BA7E10: MemLdRfVar from_stack_1.global_176
  loc_BA7E13: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7E18: FFree1Var var_1A4 = ""
  loc_BA7E1B: LitI2_Byte 0
  loc_BA7E1D: LitVar_Missing var_1A4
  loc_BA7E20: LitI2_Byte &HFF
  loc_BA7E22: FLdPr Me
  loc_BA7E25: MemLdStr global_96
  loc_BA7E28: CR8Str
  loc_BA7E2A: FLdPr Me
  loc_BA7E2D: MemLdStr global_108
  loc_BA7E30: CR8Str
  loc_BA7E32: AddR8
  loc_BA7E33: CVarR8
  loc_BA7E37: PopAdLdVar
  loc_BA7E38: FLdPr Me
  loc_BA7E3B: MemLdRfVar from_stack_1.global_120
  loc_BA7E3E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7E43: FFree1Var var_1A4 = ""
  loc_BA7E46: LitI2_Byte 0
  loc_BA7E48: LitVar_Missing var_1A4
  loc_BA7E4B: LitI2_Byte &HFF
  loc_BA7E4D: FLdPr Me
  loc_BA7E50: MemLdStr global_156
  loc_BA7E53: CR8Str
  loc_BA7E55: FLdPr Me
  loc_BA7E58: MemLdStr global_168
  loc_BA7E5B: CR8Str
  loc_BA7E5D: AddR8
  loc_BA7E5E: CVarR8
  loc_BA7E62: PopAdLdVar
  loc_BA7E63: FLdPr Me
  loc_BA7E66: MemLdRfVar from_stack_1.global_180
  loc_BA7E69: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7E6E: FFree1Var var_1A4 = ""
  loc_BA7E71: LitI2_Byte 0
  loc_BA7E73: LitVar_Missing var_1A4
  loc_BA7E76: LitI2_Byte &HFF
  loc_BA7E78: FLdPr Me
  loc_BA7E7B: MemLdStr global_100
  loc_BA7E7E: CR8Str
  loc_BA7E80: FLdPr Me
  loc_BA7E83: MemLdStr global_112
  loc_BA7E86: CR8Str
  loc_BA7E88: AddR8
  loc_BA7E89: CVarR8
  loc_BA7E8D: PopAdLdVar
  loc_BA7E8E: FLdPr Me
  loc_BA7E91: MemLdRfVar from_stack_1.global_124
  loc_BA7E94: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7E99: FFree1Var var_1A4 = ""
  loc_BA7E9C: LitI2_Byte 0
  loc_BA7E9E: LitVar_Missing var_1A4
  loc_BA7EA1: LitI2_Byte &HFF
  loc_BA7EA3: FLdPr Me
  loc_BA7EA6: MemLdStr global_160
  loc_BA7EA9: CR8Str
  loc_BA7EAB: FLdPr Me
  loc_BA7EAE: MemLdStr global_172
  loc_BA7EB1: CR8Str
  loc_BA7EB3: AddR8
  loc_BA7EB4: CVarR8
  loc_BA7EB8: PopAdLdVar
  loc_BA7EB9: FLdPr Me
  loc_BA7EBC: MemLdRfVar from_stack_1.global_184
  loc_BA7EBF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7EC4: FFree1Var var_1A4 = ""
  loc_BA7EC7: FLdRfVar var_194
  loc_BA7ECA: LitI2_Byte 0
  loc_BA7ECC: LitStr "53"
  loc_BA7ECF: LitStr vbNullString
  loc_BA7ED2: LitStr "9"
  loc_BA7ED5: LitI2_Byte 0
  loc_BA7ED7: Call Proc_164_24_A77F48()
  loc_BA7EDC: LitI2_Byte 0
  loc_BA7EDE: LitVar_Missing var_1A4
  loc_BA7EE1: LitI2_Byte &HFF
  loc_BA7EE3: FLdFPR8 var_194
  loc_BA7EE6: CVarR8
  loc_BA7EEA: PopAdLdVar
  loc_BA7EEB: FLdPr Me
  loc_BA7EEE: MemLdRfVar from_stack_1.global_128
  loc_BA7EF1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7EF6: FFree1Var var_1A4 = ""
  loc_BA7EF9: FLdRfVar var_194
  loc_BA7EFC: LitI2_Byte &HFF
  loc_BA7EFE: LitStr "53"
  loc_BA7F01: LitStr vbNullString
  loc_BA7F04: LitStr "7"
  loc_BA7F07: LitI2_Byte &HFF
  loc_BA7F09: Call Proc_164_24_A77F48()
  loc_BA7F0E: LitI2_Byte 0
  loc_BA7F10: LitVar_Missing var_1A4
  loc_BA7F13: LitI2_Byte &HFF
  loc_BA7F15: FLdFPR8 var_194
  loc_BA7F18: CVarR8
  loc_BA7F1C: PopAdLdVar
  loc_BA7F1D: FLdPr Me
  loc_BA7F20: MemLdRfVar from_stack_1.global_188
  loc_BA7F23: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7F28: FFree1Var var_1A4 = ""
  loc_BA7F2B: FLdRfVar var_194
  loc_BA7F2E: LitI2_Byte 0
  loc_BA7F30: LitStr "63"
  loc_BA7F33: LitStr "24"
  loc_BA7F36: LitStr "2"
  loc_BA7F39: LitI2_Byte &HFF
  loc_BA7F3B: Call Proc_164_24_A77F48()
  loc_BA7F40: LitI2_Byte 0
  loc_BA7F42: LitVar_Missing var_1A4
  loc_BA7F45: LitI2_Byte &HFF
  loc_BA7F47: FLdFPR8 var_194
  loc_BA7F4A: CVarR8
  loc_BA7F4E: PopAdLdVar
  loc_BA7F4F: FLdPr Me
  loc_BA7F52: MemLdRfVar from_stack_1.global_132
  loc_BA7F55: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7F5A: FFree1Var var_1A4 = ""
  loc_BA7F5D: FLdRfVar var_194
  loc_BA7F60: LitI2_Byte &HFF
  loc_BA7F62: LitStr "63"
  loc_BA7F65: LitStr vbNullString
  loc_BA7F68: LitStr "1"
  loc_BA7F6B: LitI2_Byte 0
  loc_BA7F6D: Call Proc_164_24_A77F48()
  loc_BA7F72: LitI2_Byte 0
  loc_BA7F74: LitVar_Missing var_1A4
  loc_BA7F77: LitI2_Byte &HFF
  loc_BA7F79: FLdFPR8 var_194
  loc_BA7F7C: CVarR8
  loc_BA7F80: PopAdLdVar
  loc_BA7F81: FLdPr Me
  loc_BA7F84: MemLdRfVar from_stack_1.global_192
  loc_BA7F87: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7F8C: FFree1Var var_1A4 = ""
  loc_BA7F8F: LitI2_Byte 0
  loc_BA7F91: LitVar_Missing var_1A4
  loc_BA7F94: LitI2_Byte &HFF
  loc_BA7F96: FLdPr Me
  loc_BA7F99: MemLdStr global_116
  loc_BA7F9C: CR8Str
  loc_BA7F9E: FLdPr Me
  loc_BA7FA1: MemLdStr global_128
  loc_BA7FA4: CR8Str
  loc_BA7FA6: AddR8
  loc_BA7FA7: FLdPr Me
  loc_BA7FAA: MemLdStr global_132
  loc_BA7FAD: CR8Str
  loc_BA7FAF: SubR4
  loc_BA7FB0: CVarR8
  loc_BA7FB4: PopAdLdVar
  loc_BA7FB5: FLdPr Me
  loc_BA7FB8: MemLdRfVar from_stack_1.global_136
  loc_BA7FBB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7FC0: FFree1Var var_1A4 = ""
  loc_BA7FC3: LitI2_Byte 0
  loc_BA7FC5: LitVar_Missing var_1A4
  loc_BA7FC8: LitI2_Byte &HFF
  loc_BA7FCA: FLdPr Me
  loc_BA7FCD: MemLdStr global_176
  loc_BA7FD0: CR8Str
  loc_BA7FD2: FLdPr Me
  loc_BA7FD5: MemLdStr global_188
  loc_BA7FD8: CR8Str
  loc_BA7FDA: AddR8
  loc_BA7FDB: FLdPr Me
  loc_BA7FDE: MemLdStr global_192
  loc_BA7FE1: CR8Str
  loc_BA7FE3: SubR4
  loc_BA7FE4: CVarR8
  loc_BA7FE8: PopAdLdVar
  loc_BA7FE9: FLdPr Me
  loc_BA7FEC: MemLdRfVar from_stack_1.global_196
  loc_BA7FEF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7FF4: FFree1Var var_1A4 = ""
  loc_BA7FF7: FLdRfVar var_194
  loc_BA7FFA: LitI2_Byte 0
  loc_BA7FFC: LitStr "7"
  loc_BA7FFF: LitStr vbNullString
  loc_BA8002: LitStr "9"
  loc_BA8005: LitI2_Byte 0
  loc_BA8007: Call Proc_164_24_A77F48()
  loc_BA800C: LitI2_Byte 0
  loc_BA800E: LitVar_Missing var_1A4
  loc_BA8011: LitI2_Byte &HFF
  loc_BA8013: FLdFPR8 var_194
  loc_BA8016: CVarR8
  loc_BA801A: PopAdLdVar
  loc_BA801B: FLdPr Me
  loc_BA801E: MemLdRfVar from_stack_1.global_140
  loc_BA8021: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA8026: FFree1Var var_1A4 = ""
  loc_BA8029: FLdRfVar var_194
  loc_BA802C: LitI2_Byte &HFF
  loc_BA802E: LitStr "7"
  loc_BA8031: LitStr vbNullString
  loc_BA8034: LitStr "7"
  loc_BA8037: LitI2_Byte &HFF
  loc_BA8039: Call Proc_164_24_A77F48()
  loc_BA803E: LitI2_Byte 0
  loc_BA8040: LitVar_Missing var_1A4
  loc_BA8043: LitI2_Byte &HFF
  loc_BA8045: FLdFPR8 var_194
  loc_BA8048: CVarR8
  loc_BA804C: PopAdLdVar
  loc_BA804D: FLdPr Me
  loc_BA8050: MemLdRfVar from_stack_1.global_200
  loc_BA8053: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA8058: FFree1Var var_1A4 = ""
  loc_BA805B: FLdRfVar var_194
  loc_BA805E: LitI2_Byte 0
  loc_BA8060: LitStr "8"
  loc_BA8063: LitStr "24"
  loc_BA8066: LitStr "2"
  loc_BA8069: LitI2_Byte &HFF
  loc_BA806B: Call Proc_164_24_A77F48()
  loc_BA8070: LitI2_Byte 0
  loc_BA8072: LitVar_Missing var_1A4
  loc_BA8075: LitI2_Byte &HFF
  loc_BA8077: FLdFPR8 var_194
  loc_BA807A: CVarR8
  loc_BA807E: PopAdLdVar
  loc_BA807F: FLdPr Me
  loc_BA8082: MemLdRfVar from_stack_1.global_144
  loc_BA8085: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA808A: FFree1Var var_1A4 = ""
  loc_BA808D: FLdRfVar var_194
  loc_BA8090: LitI2_Byte &HFF
  loc_BA8092: LitStr "8"
  loc_BA8095: LitStr vbNullString
  loc_BA8098: LitStr "1"
  loc_BA809B: LitI2_Byte 0
  loc_BA809D: Call Proc_164_24_A77F48()
  loc_BA80A2: LitI2_Byte 0
  loc_BA80A4: LitVar_Missing var_1A4
  loc_BA80A7: LitI2_Byte &HFF
  loc_BA80A9: FLdFPR8 var_194
  loc_BA80AC: CVarR8
  loc_BA80B0: PopAdLdVar
  loc_BA80B1: FLdPr Me
  loc_BA80B4: MemLdRfVar from_stack_1.global_204
  loc_BA80B7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA80BC: FFree1Var var_1A4 = ""
  loc_BA80BF: LitI2_Byte 0
  loc_BA80C1: LitVar_Missing var_1A4
  loc_BA80C4: LitI2_Byte &HFF
  loc_BA80C6: FLdPr Me
  loc_BA80C9: MemLdStr global_140
  loc_BA80CC: CR8Str
  loc_BA80CE: FLdPr Me
  loc_BA80D1: MemLdStr global_144
  loc_BA80D4: CR8Str
  loc_BA80D6: SubR4
  loc_BA80D7: CVarR8
  loc_BA80DB: PopAdLdVar
  loc_BA80DC: FLdPr Me
  loc_BA80DF: MemLdRfVar from_stack_1.global_148
  loc_BA80E2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA80E7: FFree1Var var_1A4 = ""
  loc_BA80EA: LitI2_Byte 0
  loc_BA80EC: LitVar_Missing var_1A4
  loc_BA80EF: LitI2_Byte &HFF
  loc_BA80F1: FLdPr Me
  loc_BA80F4: MemLdStr global_200
  loc_BA80F7: CR8Str
  loc_BA80F9: FLdPr Me
  loc_BA80FC: MemLdStr global_204
  loc_BA80FF: CR8Str
  loc_BA8101: SubR4
  loc_BA8102: CVarR8
  loc_BA8106: PopAdLdVar
  loc_BA8107: FLdPr Me
  loc_BA810A: MemLdRfVar from_stack_1.global_208
  loc_BA810D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA8112: FFree1Var var_1A4 = ""
  loc_BA8115: LitI2_Byte 0
  loc_BA8117: LitVar_Missing var_1A4
  loc_BA811A: LitI2_Byte &HFF
  loc_BA811C: FLdPr Me
  loc_BA811F: MemLdStr global_136
  loc_BA8122: CR8Str
  loc_BA8124: FLdPr Me
  loc_BA8127: MemLdStr global_148
  loc_BA812A: CR8Str
  loc_BA812C: AddR8
  loc_BA812D: CVarR8
  loc_BA8131: PopAdLdVar
  loc_BA8132: FLdPr Me
  loc_BA8135: MemLdRfVar from_stack_1.global_152
  loc_BA8138: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA813D: FFree1Var var_1A4 = ""
  loc_BA8140: LitI2_Byte 0
  loc_BA8142: LitVar_Missing var_1A4
  loc_BA8145: LitI2_Byte &HFF
  loc_BA8147: FLdPr Me
  loc_BA814A: MemLdStr global_196
  loc_BA814D: CR8Str
  loc_BA814F: FLdPr Me
  loc_BA8152: MemLdStr global_208
  loc_BA8155: CR8Str
  loc_BA8157: AddR8
  loc_BA8158: CVarR8
  loc_BA815C: PopAdLdVar
  loc_BA815D: FLdPr Me
  loc_BA8160: MemLdRfVar from_stack_1.global_212
  loc_BA8163: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA8168: FFree1Var var_1A4 = ""
  loc_BA816B: Branch loc_BA8819
  loc_BA816E: ILdRf var_18C
  loc_BA8171: LitStr "Municipalidad de Malargüe"
  loc_BA8174: EqStr
  loc_BA8176: BranchT loc_BA81C6
  loc_BA8179: ILdRf var_18C
  loc_BA817C: LitStr "Municipalidad de Maipú"
  loc_BA817F: EqStr
  loc_BA8181: BranchT loc_BA81C6
  loc_BA8184: ILdRf var_18C
  loc_BA8187: LitStr "Municipalidad de Lavalle"
  loc_BA818A: EqStr
  loc_BA818C: BranchT loc_BA81C6
  loc_BA818F: ILdRf var_18C
  loc_BA8192: LitStr "Municipalidad de Rivadavia"
  loc_BA8195: EqStr
  loc_BA8197: BranchT loc_BA81C6
  loc_BA819A: ILdRf var_18C
  loc_BA819D: LitStr "Municipalidad de General Alvear"
  loc_BA81A0: EqStr
  loc_BA81A2: BranchT loc_BA81C6
  loc_BA81A5: ILdRf var_18C
  loc_BA81A8: LitStr "Municipalidad de Guaymallén"
  loc_BA81AB: EqStr
  loc_BA81AD: BranchT loc_BA81C6
  loc_BA81B0: ILdRf var_18C
  loc_BA81B3: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_BA81B6: EqStr
  loc_BA81B8: BranchT loc_BA81C6
  loc_BA81BB: ILdRf var_18C
  loc_BA81BE: LitStr "EPAS - Ente Provincial del Agua y de Saneamiento"
  loc_BA81C1: EqStr
  loc_BA81C3: BranchF loc_BA8819
  loc_BA81C6: FLdRfVar var_194
  loc_BA81C9: LitI2_Byte 0
  loc_BA81CB: LitStr "51"
  loc_BA81CE: LitStr vbNullString
  loc_BA81D1: LitStr "9"
  loc_BA81D4: LitI2_Byte 0
  loc_BA81D6: Call Proc_164_24_A77F48()
  loc_BA81DB: LitI2_Byte 0
  loc_BA81DD: LitVar_Missing var_1A4
  loc_BA81E0: LitI2_Byte &HFF
  loc_BA81E2: FLdFPR8 var_194
  loc_BA81E5: CVarR8
  loc_BA81E9: PopAdLdVar
  loc_BA81EA: FLdPr Me
  loc_BA81ED: MemLdRfVar from_stack_1.global_96
  loc_BA81F0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA81F5: FFree1Var var_1A4 = ""
  loc_BA81F8: FLdRfVar var_194
  loc_BA81FB: LitI2_Byte &HFF
  loc_BA81FD: LitStr "51"
  loc_BA8200: LitStr "8"
  loc_BA8203: LitStr "7"
  loc_BA8206: LitI2_Byte &HFF
  loc_BA8208: Call Proc_164_24_A77F48()
  loc_BA820D: LitI2_Byte 0
  loc_BA820F: LitVar_Missing var_1A4
  loc_BA8212: LitI2_Byte &HFF
  loc_BA8214: FLdFPR8 var_194
  loc_BA8217: CVarR8
  loc_BA821B: PopAdLdVar
  loc_BA821C: FLdPr Me
  loc_BA821F: MemLdRfVar from_stack_1.global_156
  loc_BA8222: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA8227: FFree1Var var_1A4 = ""
  loc_BA822A: FLdRfVar var_194
  loc_BA822D: LitI2_Byte 0
  loc_BA822F: LitStr "61"
  loc_BA8232: LitStr "24"
  loc_BA8235: LitStr "2"
  loc_BA8238: LitI2_Byte &HFF
  loc_BA823A: Call Proc_164_24_A77F48()
  loc_BA823F: LitI2_Byte 0
  loc_BA8241: LitVar_Missing var_1A4
  loc_BA8244: LitI2_Byte &HFF
  loc_BA8246: FLdFPR8 var_194
  loc_BA8249: CVarR8
  loc_BA824D: PopAdLdVar
  loc_BA824E: FLdPr Me
  loc_BA8251: MemLdRfVar from_stack_1.global_100
  loc_BA8254: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA8259: FFree1Var var_1A4 = ""
  loc_BA825C: FLdRfVar var_194
  loc_BA825F: LitI2_Byte &HFF
  loc_BA8261: LitStr "61"
  loc_BA8264: LitStr "14"
  loc_BA8267: LitStr "1"
  loc_BA826A: LitI2_Byte 0
  loc_BA826C: Call Proc_164_24_A77F48()
  loc_BA8271: LitI2_Byte 0
  loc_BA8273: LitVar_Missing var_1A4
  loc_BA8276: LitI2_Byte &HFF
  loc_BA8278: FLdFPR8 var_194
  loc_BA827B: CVarR8
  loc_BA827F: PopAdLdVar
  loc_BA8280: FLdPr Me
  loc_BA8283: MemLdRfVar from_stack_1.global_160
  loc_BA8286: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA828B: FFree1Var var_1A4 = ""
  loc_BA828E: LitI2_Byte 0
  loc_BA8290: LitVar_Missing var_1A4
  loc_BA8293: LitI2_Byte &HFF
  loc_BA8295: FLdPr Me
  loc_BA8298: MemLdStr global_96
  loc_BA829B: CR8Str
  loc_BA829D: FLdPr Me
  loc_BA82A0: MemLdStr global_100
  loc_BA82A3: CR8Str
  loc_BA82A5: SubR4
  loc_BA82A6: CVarR8
  loc_BA82AA: PopAdLdVar
  loc_BA82AB: FLdPr Me
  loc_BA82AE: MemLdRfVar from_stack_1.global_104
  loc_BA82B1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA82B6: FFree1Var var_1A4 = ""
  loc_BA82B9: LitI2_Byte 0
  loc_BA82BB: LitVar_Missing var_1A4
  loc_BA82BE: LitI2_Byte &HFF
  loc_BA82C0: FLdPr Me
  loc_BA82C3: MemLdStr global_156
  loc_BA82C6: CR8Str
  loc_BA82C8: FLdPr Me
  loc_BA82CB: MemLdStr global_160
  loc_BA82CE: CR8Str
  loc_BA82D0: SubR4
  loc_BA82D1: CVarR8
  loc_BA82D5: PopAdLdVar
  loc_BA82D6: FLdPr Me
  loc_BA82D9: MemLdRfVar from_stack_1.global_164
  loc_BA82DC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA82E1: FFree1Var var_1A4 = ""
  loc_BA82E4: FLdRfVar var_194
  loc_BA82E7: LitI2_Byte 0
  loc_BA82E9: LitStr "52"
  loc_BA82EC: LitStr vbNullString
  loc_BA82EF: LitStr "9"
  loc_BA82F2: LitI2_Byte 0
  loc_BA82F4: Call Proc_164_24_A77F48()
  loc_BA82F9: LitI2_Byte 0
  loc_BA82FB: LitVar_Missing var_1A4
  loc_BA82FE: LitI2_Byte &HFF
  loc_BA8300: FLdFPR8 var_194
  loc_BA8303: CVarR8
  loc_BA8307: PopAdLdVar
  loc_BA8308: FLdPr Me
  loc_BA830B: MemLdRfVar from_stack_1.global_108
  loc_BA830E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA8313: FFree1Var var_1A4 = ""
  loc_BA8316: FLdRfVar var_194
  loc_BA8319: LitI2_Byte &HFF
  loc_BA831B: LitStr "52"
  loc_BA831E: LitStr "8"
  loc_BA8321: LitStr "7"
  loc_BA8324: LitI2_Byte &HFF
  loc_BA8326: Call Proc_164_24_A77F48()
  loc_BA832B: LitI2_Byte 0
  loc_BA832D: LitVar_Missing var_1A4
  loc_BA8330: LitI2_Byte &HFF
  loc_BA8332: FLdFPR8 var_194
  loc_BA8335: CVarR8
  loc_BA8339: PopAdLdVar
  loc_BA833A: FLdPr Me
  loc_BA833D: MemLdRfVar from_stack_1.global_168
  loc_BA8340: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA8345: FFree1Var var_1A4 = ""
  loc_BA8348: FLdRfVar var_194
  loc_BA834B: LitI2_Byte 0
  loc_BA834D: LitStr "62"
  loc_BA8350: LitStr "24"
  loc_BA8353: LitStr "2"
  loc_BA8356: LitI2_Byte &HFF
  loc_BA8358: Call Proc_164_24_A77F48()
  loc_BA835D: LitI2_Byte 0
  loc_BA835F: LitVar_Missing var_1A4
  loc_BA8362: LitI2_Byte &HFF
  loc_BA8364: FLdFPR8 var_194
  loc_BA8367: CVarR8
  loc_BA836B: PopAdLdVar
  loc_BA836C: FLdPr Me
  loc_BA836F: MemLdRfVar from_stack_1.global_112
  loc_BA8372: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA8377: FFree1Var var_1A4 = ""
  loc_BA837A: FLdRfVar var_194
  loc_BA837D: LitI2_Byte &HFF
  loc_BA837F: LitStr "62"
  loc_BA8382: LitStr "14"
  loc_BA8385: LitStr "1"
  loc_BA8388: LitI2_Byte 0
  loc_BA838A: Call Proc_164_24_A77F48()
  loc_BA838F: LitI2_Byte 0
  loc_BA8391: LitVar_Missing var_1A4
  loc_BA8394: LitI2_Byte &HFF
  loc_BA8396: FLdFPR8 var_194
  loc_BA8399: CVarR8
  loc_BA839D: PopAdLdVar
  loc_BA839E: FLdPr Me
  loc_BA83A1: MemLdRfVar from_stack_1.global_172
  loc_BA83A4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA83A9: FFree1Var var_1A4 = ""
  loc_BA83AC: LitI2_Byte 0
  loc_BA83AE: LitVar_Missing var_1A4
  loc_BA83B1: LitI2_Byte &HFF
  loc_BA83B3: FLdPr Me
  loc_BA83B6: MemLdStr global_104
  loc_BA83B9: CR8Str
  loc_BA83BB: FLdPr Me
  loc_BA83BE: MemLdStr global_108
  loc_BA83C1: CR8Str
  loc_BA83C3: AddR8
  loc_BA83C4: FLdPr Me
  loc_BA83C7: MemLdStr global_112
  loc_BA83CA: CR8Str
  loc_BA83CC: SubR4
  loc_BA83CD: CVarR8
  loc_BA83D1: PopAdLdVar
  loc_BA83D2: FLdPr Me
  loc_BA83D5: MemLdRfVar from_stack_1.global_116
  loc_BA83D8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA83DD: FFree1Var var_1A4 = ""
  loc_BA83E0: LitI2_Byte 0
  loc_BA83E2: LitVar_Missing var_1A4
  loc_BA83E5: LitI2_Byte &HFF
  loc_BA83E7: FLdPr Me
  loc_BA83EA: MemLdStr global_164
  loc_BA83ED: CR8Str
  loc_BA83EF: FLdPr Me
  loc_BA83F2: MemLdStr global_168
  loc_BA83F5: CR8Str
  loc_BA83F7: AddR8
  loc_BA83F8: FLdPr Me
  loc_BA83FB: MemLdStr global_172
  loc_BA83FE: CR8Str
  loc_BA8400: SubR4
  loc_BA8401: CVarR8
  loc_BA8405: PopAdLdVar
  loc_BA8406: FLdPr Me
  loc_BA8409: MemLdRfVar from_stack_1.global_176
  loc_BA840C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA8411: FFree1Var var_1A4 = ""
  loc_BA8414: LitI2_Byte 0
  loc_BA8416: LitVar_Missing var_1A4
  loc_BA8419: LitI2_Byte &HFF
  loc_BA841B: FLdPr Me
  loc_BA841E: MemLdStr global_96
  loc_BA8421: CR8Str
  loc_BA8423: FLdPr Me
  loc_BA8426: MemLdStr global_108
  loc_BA8429: CR8Str
  loc_BA842B: AddR8
  loc_BA842C: CVarR8
  loc_BA8430: PopAdLdVar
  loc_BA8431: FLdPr Me
  loc_BA8434: MemLdRfVar from_stack_1.global_120
  loc_BA8437: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA843C: FFree1Var var_1A4 = ""
  loc_BA843F: LitI2_Byte 0
  loc_BA8441: LitVar_Missing var_1A4
  loc_BA8444: LitI2_Byte &HFF
  loc_BA8446: FLdPr Me
  loc_BA8449: MemLdStr global_156
  loc_BA844C: CR8Str
  loc_BA844E: FLdPr Me
  loc_BA8451: MemLdStr global_168
  loc_BA8454: CR8Str
  loc_BA8456: AddR8
  loc_BA8457: CVarR8
  loc_BA845B: PopAdLdVar
  loc_BA845C: FLdPr Me
  loc_BA845F: MemLdRfVar from_stack_1.global_180
  loc_BA8462: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA8467: FFree1Var var_1A4 = ""
  loc_BA846A: LitI2_Byte 0
  loc_BA846C: LitVar_Missing var_1A4
  loc_BA846F: LitI2_Byte &HFF
  loc_BA8471: FLdPr Me
  loc_BA8474: MemLdStr global_100
  loc_BA8477: CR8Str
  loc_BA8479: FLdPr Me
  loc_BA847C: MemLdStr global_112
  loc_BA847F: CR8Str
  loc_BA8481: AddR8
  loc_BA8482: CVarR8
  loc_BA8486: PopAdLdVar
  loc_BA8487: FLdPr Me
  loc_BA848A: MemLdRfVar from_stack_1.global_124
  loc_BA848D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA8492: FFree1Var var_1A4 = ""
  loc_BA8495: LitI2_Byte 0
  loc_BA8497: LitVar_Missing var_1A4
  loc_BA849A: LitI2_Byte &HFF
  loc_BA849C: FLdPr Me
  loc_BA849F: MemLdStr global_160
  loc_BA84A2: CR8Str
  loc_BA84A4: FLdPr Me
  loc_BA84A7: MemLdStr global_172
  loc_BA84AA: CR8Str
  loc_BA84AC: AddR8
  loc_BA84AD: CVarR8
  loc_BA84B1: PopAdLdVar
  loc_BA84B2: FLdPr Me
  loc_BA84B5: MemLdRfVar from_stack_1.global_184
  loc_BA84B8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA84BD: FFree1Var var_1A4 = ""
  loc_BA84C0: FLdRfVar var_194
  loc_BA84C3: LitI2_Byte 0
  loc_BA84C5: LitStr "53"
  loc_BA84C8: LitStr vbNullString
  loc_BA84CB: LitStr "9"
  loc_BA84CE: LitI2_Byte 0
  loc_BA84D0: Call Proc_164_24_A77F48()
  loc_BA84D5: LitI2_Byte 0
  loc_BA84D7: LitVar_Missing var_1A4
  loc_BA84DA: LitI2_Byte &HFF
  loc_BA84DC: FLdFPR8 var_194
  loc_BA84DF: CVarR8
  loc_BA84E3: PopAdLdVar
  loc_BA84E4: FLdPr Me
  loc_BA84E7: MemLdRfVar from_stack_1.global_128
  loc_BA84EA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA84EF: FFree1Var var_1A4 = ""
  loc_BA84F2: LitStr "Municipalidad de Guaymallén"
  loc_BA84F5: LitStr "Municipalidad de Tupungato"
  loc_BA84F8: EqStr
  loc_BA84FA: BranchF loc_BA8532
  loc_BA84FD: FLdRfVar var_194
  loc_BA8500: LitI2_Byte &HFF
  loc_BA8502: LitStr "53"
  loc_BA8505: LitStr vbNullString
  loc_BA8508: LitStr "7"
  loc_BA850B: LitI2_Byte &HFF
  loc_BA850D: Call Proc_164_24_A77F48()
  loc_BA8512: LitI2_Byte 0
  loc_BA8514: LitVar_Missing var_1A4
  loc_BA8517: LitI2_Byte &HFF
  loc_BA8519: FLdFPR8 var_194
  loc_BA851C: CVarR8
  loc_BA8520: PopAdLdVar
  loc_BA8521: FLdPr Me
  loc_BA8524: MemLdRfVar from_stack_1.global_188
  loc_BA8527: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA852C: FFree1Var var_1A4 = ""
  loc_BA852F: Branch loc_BA8564
  loc_BA8532: FLdRfVar var_194
  loc_BA8535: LitI2_Byte &HFF
  loc_BA8537: LitStr "53"
  loc_BA853A: LitStr "8"
  loc_BA853D: LitStr "7"
  loc_BA8540: LitI2_Byte &HFF
  loc_BA8542: Call Proc_164_24_A77F48()
  loc_BA8547: LitI2_Byte 0
  loc_BA8549: LitVar_Missing var_1A4
  loc_BA854C: LitI2_Byte &HFF
  loc_BA854E: FLdFPR8 var_194
  loc_BA8551: CVarR8
  loc_BA8555: PopAdLdVar
  loc_BA8556: FLdPr Me
  loc_BA8559: MemLdRfVar from_stack_1.global_188
  loc_BA855C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA8561: FFree1Var var_1A4 = ""
  loc_BA8564: LitStr "Municipalidad de Guaymallén"
  loc_BA8567: LitStr "Municipalidad de Santa Rosa"
  loc_BA856A: EqStr
  loc_BA856C: BranchF loc_BA85D6
  loc_BA856F: FLdRfVar var_194
  loc_BA8572: LitI2_Byte 0
  loc_BA8574: LitStr "64"
  loc_BA8577: LitStr "24"
  loc_BA857A: LitStr "2"
  loc_BA857D: LitI2_Byte &HFF
  loc_BA857F: Call Proc_164_24_A77F48()
  loc_BA8584: LitI2_Byte 0
  loc_BA8586: LitVar_Missing var_1A4
  loc_BA8589: LitI2_Byte &HFF
  loc_BA858B: FLdFPR8 var_194
  loc_BA858E: CVarR8
  loc_BA8592: PopAdLdVar
  loc_BA8593: FLdPr Me
  loc_BA8596: MemLdRfVar from_stack_1.global_132
  loc_BA8599: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA859E: FFree1Var var_1A4 = ""
  loc_BA85A1: FLdRfVar var_194
  loc_BA85A4: LitI2_Byte &HFF
  loc_BA85A6: LitStr "64"
  loc_BA85A9: LitStr "14"
  loc_BA85AC: LitStr "1"
  loc_BA85AF: LitI2_Byte 0
  loc_BA85B1: Call Proc_164_24_A77F48()
  loc_BA85B6: LitI2_Byte 0
  loc_BA85B8: LitVar_Missing var_1A4
  loc_BA85BB: LitI2_Byte &HFF
  loc_BA85BD: FLdFPR8 var_194
  loc_BA85C0: CVarR8
  loc_BA85C4: PopAdLdVar
  loc_BA85C5: FLdPr Me
  loc_BA85C8: MemLdRfVar from_stack_1.global_192
  loc_BA85CB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA85D0: FFree1Var var_1A4 = ""
  loc_BA85D3: Branch loc_BA863A
  loc_BA85D6: FLdRfVar var_194
  loc_BA85D9: LitI2_Byte 0
  loc_BA85DB: LitStr "63"
  loc_BA85DE: LitStr "24"
  loc_BA85E1: LitStr "2"
  loc_BA85E4: LitI2_Byte &HFF
  loc_BA85E6: Call Proc_164_24_A77F48()
  loc_BA85EB: LitI2_Byte 0
  loc_BA85ED: LitVar_Missing var_1A4
  loc_BA85F0: LitI2_Byte &HFF
  loc_BA85F2: FLdFPR8 var_194
  loc_BA85F5: CVarR8
  loc_BA85F9: PopAdLdVar
  loc_BA85FA: FLdPr Me
  loc_BA85FD: MemLdRfVar from_stack_1.global_132
  loc_BA8600: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA8605: FFree1Var var_1A4 = ""
  loc_BA8608: FLdRfVar var_194
  loc_BA860B: LitI2_Byte &HFF
  loc_BA860D: LitStr "63"
  loc_BA8610: LitStr vbNullString
  loc_BA8613: LitStr "1"
  loc_BA8616: LitI2_Byte 0
  loc_BA8618: Call Proc_164_24_A77F48()
  loc_BA861D: LitI2_Byte 0
  loc_BA861F: LitVar_Missing var_1A4
  loc_BA8622: LitI2_Byte &HFF
  loc_BA8624: FLdFPR8 var_194
  loc_BA8627: CVarR8
  loc_BA862B: PopAdLdVar
  loc_BA862C: FLdPr Me
  loc_BA862F: MemLdRfVar from_stack_1.global_192
  loc_BA8632: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA8637: FFree1Var var_1A4 = ""
  loc_BA863A: LitI2_Byte 0
  loc_BA863C: LitVar_Missing var_1A4
  loc_BA863F: LitI2_Byte &HFF
  loc_BA8641: FLdPr Me
  loc_BA8644: MemLdStr global_116
  loc_BA8647: CR8Str
  loc_BA8649: FLdPr Me
  loc_BA864C: MemLdStr global_128
  loc_BA864F: CR8Str
  loc_BA8651: AddR8
  loc_BA8652: FLdPr Me
  loc_BA8655: MemLdStr global_132
  loc_BA8658: CR8Str
  loc_BA865A: SubR4
  loc_BA865B: CVarR8
  loc_BA865F: PopAdLdVar
  loc_BA8660: FLdPr Me
  loc_BA8663: MemLdRfVar from_stack_1.global_136
  loc_BA8666: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA866B: FFree1Var var_1A4 = ""
  loc_BA866E: LitI2_Byte 0
  loc_BA8670: LitVar_Missing var_1A4
  loc_BA8673: LitI2_Byte &HFF
  loc_BA8675: FLdPr Me
  loc_BA8678: MemLdStr global_176
  loc_BA867B: CR8Str
  loc_BA867D: FLdPr Me
  loc_BA8680: MemLdStr global_188
  loc_BA8683: CR8Str
  loc_BA8685: AddR8
  loc_BA8686: FLdPr Me
  loc_BA8689: MemLdStr global_192
  loc_BA868C: CR8Str
  loc_BA868E: SubR4
  loc_BA868F: CVarR8
  loc_BA8693: PopAdLdVar
  loc_BA8694: FLdPr Me
  loc_BA8697: MemLdRfVar from_stack_1.global_196
  loc_BA869A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA869F: FFree1Var var_1A4 = ""
  loc_BA86A2: FLdRfVar var_194
  loc_BA86A5: LitI2_Byte 0
  loc_BA86A7: LitStr "7"
  loc_BA86AA: LitStr vbNullString
  loc_BA86AD: LitStr "9"
  loc_BA86B0: LitI2_Byte 0
  loc_BA86B2: Call Proc_164_24_A77F48()
  loc_BA86B7: LitI2_Byte 0
  loc_BA86B9: LitVar_Missing var_1A4
  loc_BA86BC: LitI2_Byte &HFF
  loc_BA86BE: FLdFPR8 var_194
  loc_BA86C1: CVarR8
  loc_BA86C5: PopAdLdVar
  loc_BA86C6: FLdPr Me
  loc_BA86C9: MemLdRfVar from_stack_1.global_140
  loc_BA86CC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA86D1: FFree1Var var_1A4 = ""
  loc_BA86D4: FLdRfVar var_194
  loc_BA86D7: LitI2_Byte &HFF
  loc_BA86D9: LitStr "7"
  loc_BA86DC: LitStr "8"
  loc_BA86DF: LitStr "7"
  loc_BA86E2: LitI2_Byte &HFF
  loc_BA86E4: Call Proc_164_24_A77F48()
  loc_BA86E9: LitI2_Byte 0
  loc_BA86EB: LitVar_Missing var_1A4
  loc_BA86EE: LitI2_Byte &HFF
  loc_BA86F0: FLdFPR8 var_194
  loc_BA86F3: CVarR8
  loc_BA86F7: PopAdLdVar
  loc_BA86F8: FLdPr Me
  loc_BA86FB: MemLdRfVar from_stack_1.global_200
  loc_BA86FE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA8703: FFree1Var var_1A4 = ""
  loc_BA8706: FLdRfVar var_194
  loc_BA8709: LitI2_Byte 0
  loc_BA870B: LitStr "8"
  loc_BA870E: LitStr "24"
  loc_BA8711: LitStr "2"
  loc_BA8714: LitI2_Byte &HFF
  loc_BA8716: Call Proc_164_24_A77F48()
  loc_BA871B: LitI2_Byte 0
  loc_BA871D: LitVar_Missing var_1A4
  loc_BA8720: LitI2_Byte &HFF
  loc_BA8722: FLdFPR8 var_194
  loc_BA8725: CVarR8
  loc_BA8729: PopAdLdVar
  loc_BA872A: FLdPr Me
  loc_BA872D: MemLdRfVar from_stack_1.global_144
  loc_BA8730: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA8735: FFree1Var var_1A4 = ""
  loc_BA8738: FLdRfVar var_194
  loc_BA873B: LitI2_Byte &HFF
  loc_BA873D: LitStr "8"
  loc_BA8740: LitStr "14"
  loc_BA8743: LitStr "1"
  loc_BA8746: LitI2_Byte 0
  loc_BA8748: Call Proc_164_24_A77F48()
  loc_BA874D: LitI2_Byte 0
  loc_BA874F: LitVar_Missing var_1A4
  loc_BA8752: LitI2_Byte &HFF
  loc_BA8754: FLdFPR8 var_194
  loc_BA8757: CVarR8
  loc_BA875B: PopAdLdVar
  loc_BA875C: FLdPr Me
  loc_BA875F: MemLdRfVar from_stack_1.global_204
  loc_BA8762: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA8767: FFree1Var var_1A4 = ""
  loc_BA876A: LitI2_Byte 0
  loc_BA876C: LitVar_Missing var_1A4
  loc_BA876F: LitI2_Byte &HFF
  loc_BA8771: FLdPr Me
  loc_BA8774: MemLdStr global_140
  loc_BA8777: CR8Str
  loc_BA8779: FLdPr Me
  loc_BA877C: MemLdStr global_144
  loc_BA877F: CR8Str
  loc_BA8781: SubR4
  loc_BA8782: CVarR8
  loc_BA8786: PopAdLdVar
  loc_BA8787: FLdPr Me
  loc_BA878A: MemLdRfVar from_stack_1.global_148
  loc_BA878D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA8792: FFree1Var var_1A4 = ""
  loc_BA8795: LitI2_Byte 0
  loc_BA8797: LitVar_Missing var_1A4
  loc_BA879A: LitI2_Byte &HFF
  loc_BA879C: FLdPr Me
  loc_BA879F: MemLdStr global_200
  loc_BA87A2: CR8Str
  loc_BA87A4: FLdPr Me
  loc_BA87A7: MemLdStr global_204
  loc_BA87AA: CR8Str
  loc_BA87AC: SubR4
  loc_BA87AD: CVarR8
  loc_BA87B1: PopAdLdVar
  loc_BA87B2: FLdPr Me
  loc_BA87B5: MemLdRfVar from_stack_1.global_208
  loc_BA87B8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA87BD: FFree1Var var_1A4 = ""
  loc_BA87C0: LitI2_Byte 0
  loc_BA87C2: LitVar_Missing var_1A4
  loc_BA87C5: LitI2_Byte &HFF
  loc_BA87C7: FLdPr Me
  loc_BA87CA: MemLdStr global_136
  loc_BA87CD: CR8Str
  loc_BA87CF: FLdPr Me
  loc_BA87D2: MemLdStr global_148
  loc_BA87D5: CR8Str
  loc_BA87D7: AddR8
  loc_BA87D8: CVarR8
  loc_BA87DC: PopAdLdVar
  loc_BA87DD: FLdPr Me
  loc_BA87E0: MemLdRfVar from_stack_1.global_152
  loc_BA87E3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA87E8: FFree1Var var_1A4 = ""
  loc_BA87EB: LitI2_Byte 0
  loc_BA87ED: LitVar_Missing var_1A4
  loc_BA87F0: LitI2_Byte &HFF
  loc_BA87F2: FLdPr Me
  loc_BA87F5: MemLdStr global_196
  loc_BA87F8: CR8Str
  loc_BA87FA: FLdPr Me
  loc_BA87FD: MemLdStr global_208
  loc_BA8800: CR8Str
  loc_BA8802: AddR8
  loc_BA8803: CVarR8
  loc_BA8807: PopAdLdVar
  loc_BA8808: FLdPr Me
  loc_BA880B: MemLdRfVar from_stack_1.global_212
  loc_BA880E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA8813: FFree1Var var_1A4 = ""
  loc_BA8816: Branch loc_BA8819
  loc_BA8819: FLdPr Me
  loc_BA881C: MemLdI2 global_226
  loc_BA881F: BranchF loc_BA882D
  loc_BA8822: LitI2_Byte &HFF
  loc_BA8824: FLdPr Me
  loc_BA8827: MemStI2 bGenerado
  loc_BA882A: Branch loc_BA883A
  loc_BA882D: LitI4 0
  loc_BA8832: LitStr "No existen registros para el criterio especificado."
  loc_BA8835: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA883A: LitI4 0
  loc_BA883F: CI2I4
  loc_BA8840: FLdPr Me
  loc_BA8843: Me.MousePointer = from_stack_1
  loc_BA8848: LitVarStr var_94, vbNullString
  loc_BA884D: PopAdLdVar
  loc_BA884E: FLdPr Me
  loc_BA8851: VCallAd Control_ID_statusBar
  loc_BA8854: FStAdFunc var_A8
  loc_BA8857: FLdPr var_A8
  loc_BA885A: LateIdSt
  loc_BA885F: FFree1Ad var_A8
  loc_BA8862: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A17EA4
  'Data Table: 4693AC
  loc_A17D08: FLdRfVar var_88
  loc_A17D0B: LitI2_Byte 0
  loc_A17D0D: LitI2_Byte &HFF
  loc_A17D0F: ImpAdLdI4 MemVar_C3D83C
  loc_A17D12: FLdPr Me
  loc_A17D15: MemLdRfVar from_stack_1.global_76
  loc_A17D18: NewIfNullPr IFileSystem3
  loc_A17D1B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A17D20: ILdRf var_88
  loc_A17D23: FLdPr Me
  loc_A17D26: MemStVarAd
  loc_A17D2A: FFree1Ad var_88
  loc_A17D2D: Call Proc_164_27_A80230()
  loc_A17D32: FLdPr Me
  loc_A17D35: MemLdStr global_156
  loc_A17D38: FLdPr Me
  loc_A17D3B: MemLdStr global_96
  loc_A17D3E: LitStr "RECURSOS CORRIENTES"
  loc_A17D41: LitStr "I"
  loc_A17D44: Call Proc_164_25_A075FC()
  loc_A17D49: FLdPr Me
  loc_A17D4C: MemLdStr global_160
  loc_A17D4F: FLdPr Me
  loc_A17D52: MemLdStr global_100
  loc_A17D55: LitStr "GASTOS CORRIENTES"
  loc_A17D58: LitStr "II"
  loc_A17D5B: Call Proc_164_25_A075FC()
  loc_A17D60: FLdPr Me
  loc_A17D63: MemLdStr global_164
  loc_A17D66: FLdPr Me
  loc_A17D69: MemLdStr global_104
  loc_A17D6C: LitStr "RESULTADO ECONÓMICO"
  loc_A17D6F: LitStr "III"
  loc_A17D72: Call Proc_164_25_A075FC()
  loc_A17D77: FLdPr Me
  loc_A17D7A: MemLdStr global_168
  loc_A17D7D: FLdPr Me
  loc_A17D80: MemLdStr global_108
  loc_A17D83: LitStr "RECURSOS DE CAPITAL"
  loc_A17D86: LitStr "IV"
  loc_A17D89: Call Proc_164_25_A075FC()
  loc_A17D8E: FLdPr Me
  loc_A17D91: MemLdStr global_172
  loc_A17D94: FLdPr Me
  loc_A17D97: MemLdStr global_112
  loc_A17D9A: LitStr "GASTOS DE CAPITAL"
  loc_A17D9D: LitStr "V"
  loc_A17DA0: Call Proc_164_25_A075FC()
  loc_A17DA5: FLdPr Me
  loc_A17DA8: MemLdStr global_176
  loc_A17DAB: FLdPr Me
  loc_A17DAE: MemLdStr global_116
  loc_A17DB1: LitStr "EXCEDENTE ANTES TRANSFERENCIAS FIGURATIVAS"
  loc_A17DB4: LitStr "VI"
  loc_A17DB7: Call Proc_164_25_A075FC()
  loc_A17DBC: FLdPr Me
  loc_A17DBF: MemLdStr global_180
  loc_A17DC2: FLdPr Me
  loc_A17DC5: MemLdStr global_120
  loc_A17DC8: LitStr "TOTAL RECURSOS"
  loc_A17DCB: LitStr vbNullString
  loc_A17DCE: Call Proc_164_25_A075FC()
  loc_A17DD3: FLdPr Me
  loc_A17DD6: MemLdStr global_184
  loc_A17DD9: FLdPr Me
  loc_A17DDC: MemLdStr global_124
  loc_A17DDF: LitStr "TOTAL GASTOS"
  loc_A17DE2: LitStr vbNullString
  loc_A17DE5: Call Proc_164_25_A075FC()
  loc_A17DEA: FLdPr Me
  loc_A17DED: MemLdStr global_188
  loc_A17DF0: FLdPr Me
  loc_A17DF3: MemLdStr global_128
  loc_A17DF6: LitStr "RECURSOS FIGURATIVOS"
  loc_A17DF9: LitStr "VII"
  loc_A17DFC: Call Proc_164_25_A075FC()
  loc_A17E01: FLdPr Me
  loc_A17E04: MemLdStr global_192
  loc_A17E07: FLdPr Me
  loc_A17E0A: MemLdStr global_132
  loc_A17E0D: LitStr "GASTOS FIGURATIVOS"
  loc_A17E10: LitStr "VIII"
  loc_A17E13: Call Proc_164_25_A075FC()
  loc_A17E18: FLdPr Me
  loc_A17E1B: MemLdStr global_196
  loc_A17E1E: FLdPr Me
  loc_A17E21: MemLdStr global_136
  loc_A17E24: LitStr "NECESIDAD DE FINANCIAMIENTO"
  loc_A17E27: LitStr "IX"
  loc_A17E2A: Call Proc_164_25_A075FC()
  loc_A17E2F: FLdPr Me
  loc_A17E32: MemLdStr global_200
  loc_A17E35: FLdPr Me
  loc_A17E38: MemLdStr global_140
  loc_A17E3B: LitStr "FUENTES DE FINANCIAMIENTO"
  loc_A17E3E: LitStr "X"
  loc_A17E41: Call Proc_164_25_A075FC()
  loc_A17E46: FLdPr Me
  loc_A17E49: MemLdStr global_204
  loc_A17E4C: FLdPr Me
  loc_A17E4F: MemLdStr global_144
  loc_A17E52: LitStr "APLICACIONES FINANCIERAS"
  loc_A17E55: LitStr "XI"
  loc_A17E58: Call Proc_164_25_A075FC()
  loc_A17E5D: FLdPr Me
  loc_A17E60: MemLdStr global_208
  loc_A17E63: FLdPr Me
  loc_A17E66: MemLdStr global_148
  loc_A17E69: LitStr "FINANCIAMIENTO NETO"
  loc_A17E6C: LitStr "XII"
  loc_A17E6F: Call Proc_164_25_A075FC()
  loc_A17E74: FLdPr Me
  loc_A17E77: MemLdStr global_212
  loc_A17E7A: FLdPr Me
  loc_A17E7D: MemLdStr global_152
  loc_A17E80: LitStr "RESULTADO FINANCIERO"
  loc_A17E83: LitStr "XIII"
  loc_A17E86: Call Proc_164_25_A075FC()
  loc_A17E8B: Call Proc_164_28_9FD454()
  loc_A17E90: FLdPr Me
  loc_A17E93: MemLdRfVar from_stack_1.htmFile
  loc_A17E96: LdPrVar
  loc_A17E98: LateMemCall
  loc_A17E9E: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A17EA3: ExitProcHresult
End Sub

Public Sub GeneraXLS() '953704
  'Data Table: 4693AC
  loc_9536EC: LitI2_Byte 0
  loc_9536EE: FLdPr Me
  loc_9536F1: MemStI2 bLogos
  loc_9536F4: Call GeneraHTML()
  loc_9536F9: LitI2_Byte &HFF
  loc_9536FB: FLdPr Me
  loc_9536FE: MemStI2 bLogos
  loc_953701: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'A49008
  'Data Table: 4693AC
  loc_A48D98: ImpAdCallI2 Proc_261_16_9B9214()
  loc_A48D9D: FStStrNoPop var_88
  loc_A48DA0: LitStr "\Acuerdo 3949\"
  loc_A48DA3: ConcatStr
  loc_A48DA4: FStStrNoPop var_94
  loc_A48DA7: FLdRfVar var_90
  loc_A48DAA: FLdPr Me
  loc_A48DAD: VCallAd Control_ID_cboPeriodo
  loc_A48DB0: FStAdFunc var_8C
  loc_A48DB3: FLdPr var_8C
  loc_A48DB6:  = Me.Text
  loc_A48DBB: ILdRf var_90
  loc_A48DBE: ConcatStr
  loc_A48DBF: FStStrNoPop var_98
  loc_A48DC2: LitStr "\Trimestre "
  loc_A48DC5: ConcatStr
  loc_A48DC6: FStStrNoPop var_AC
  loc_A48DC9: FLdRfVar var_A8
  loc_A48DCC: FLdRfVar var_9E
  loc_A48DCF: FLdPr Me
  loc_A48DD2: VCallAd Control_ID_cboTrimestre
  loc_A48DD5: FStAdFunc var_9C
  loc_A48DD8: FLdPr var_9C
  loc_A48DDB:  = Me.ListIndex
  loc_A48DE0: FLdI2 var_9E
  loc_A48DE3: FLdPr Me
  loc_A48DE6: VCallAd Control_ID_cboTrimestre
  loc_A48DE9: FStAdFunc var_A4
  loc_A48DEC: FLdPr var_A4
  loc_A48DEF:  = Me.ItemData
  loc_A48DF4: ILdRf var_A8
  loc_A48DF7: CStrI4
  loc_A48DF9: FStStrNoPop var_B0
  loc_A48DFC: ConcatStr
  loc_A48DFD: FStStrNoPop var_B4
  loc_A48E00: LitStr "\ejeprecummeta.txt"
  loc_A48E03: ConcatStr
  loc_A48E04: ImpAdStStr MemVar_C3D05C
  loc_A48E08: FFreeStr var_88 = "": var_94 = "": var_90 = "": var_98 = "": var_AC = "": var_B0 = ""
  loc_A48E19: FFreeAd var_8C = "": var_9C = ""
  loc_A48E22: ImpAdLdI4 MemVar_C3D05C
  loc_A48E25: ImpAdCallFPR4 Proc_261_17_9A1230()
  loc_A48E2A: FLdRfVar var_8C
  loc_A48E2D: LitI2_Byte 0
  loc_A48E2F: LitI2_Byte &HFF
  loc_A48E31: ImpAdLdI4 MemVar_C3D05C
  loc_A48E34: FLdPr Me
  loc_A48E37: MemLdRfVar from_stack_1.global_76
  loc_A48E3A: NewIfNullPr IFileSystem3
  loc_A48E3D: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A48E42: ILdRf var_8C
  loc_A48E45: FLdPr Me
  loc_A48E48: MemStVarAd
  loc_A48E4C: FFree1Ad var_8C
  loc_A48E4F: LitVarStr var_C8, "Ejercicio|Trimestre|Nomenclador|Concepto|Ejecutado|ProFina|DifEjeProFina"
  loc_A48E54: PopAdLdVar
  loc_A48E55: FLdPr Me
  loc_A48E58: MemLdRfVar from_stack_1.global_80
  loc_A48E5B: LdPrVar
  loc_A48E5D: LateMemCall
  loc_A48E63: FLdPr Me
  loc_A48E66: MemLdStr global_156
  loc_A48E69: FLdPr Me
  loc_A48E6C: MemLdStr global_96
  loc_A48E6F: LitI2_Byte 1
  loc_A48E71: CStrUI1
  loc_A48E73: FStStrNoPop var_88
  loc_A48E76: Call Proc_164_26_A141A0()
  loc_A48E7B: FFree1Str var_88
  loc_A48E7E: FLdPr Me
  loc_A48E81: MemLdStr global_160
  loc_A48E84: FLdPr Me
  loc_A48E87: MemLdStr global_100
  loc_A48E8A: LitI2_Byte 2
  loc_A48E8C: CStrUI1
  loc_A48E8E: FStStrNoPop var_88
  loc_A48E91: Call Proc_164_26_A141A0()
  loc_A48E96: FFree1Str var_88
  loc_A48E99: FLdPr Me
  loc_A48E9C: MemLdStr global_164
  loc_A48E9F: FLdPr Me
  loc_A48EA2: MemLdStr global_104
  loc_A48EA5: LitI2_Byte 3
  loc_A48EA7: CStrUI1
  loc_A48EA9: FStStrNoPop var_88
  loc_A48EAC: Call Proc_164_26_A141A0()
  loc_A48EB1: FFree1Str var_88
  loc_A48EB4: FLdPr Me
  loc_A48EB7: MemLdStr global_168
  loc_A48EBA: FLdPr Me
  loc_A48EBD: MemLdStr global_108
  loc_A48EC0: LitI2_Byte 4
  loc_A48EC2: CStrUI1
  loc_A48EC4: FStStrNoPop var_88
  loc_A48EC7: Call Proc_164_26_A141A0()
  loc_A48ECC: FFree1Str var_88
  loc_A48ECF: FLdPr Me
  loc_A48ED2: MemLdStr global_172
  loc_A48ED5: FLdPr Me
  loc_A48ED8: MemLdStr global_112
  loc_A48EDB: LitI2_Byte 5
  loc_A48EDD: CStrUI1
  loc_A48EDF: FStStrNoPop var_88
  loc_A48EE2: Call Proc_164_26_A141A0()
  loc_A48EE7: FFree1Str var_88
  loc_A48EEA: FLdPr Me
  loc_A48EED: MemLdStr global_176
  loc_A48EF0: FLdPr Me
  loc_A48EF3: MemLdStr global_116
  loc_A48EF6: LitI2_Byte 6
  loc_A48EF8: CStrUI1
  loc_A48EFA: FStStrNoPop var_88
  loc_A48EFD: Call Proc_164_26_A141A0()
  loc_A48F02: FFree1Str var_88
  loc_A48F05: FLdPr Me
  loc_A48F08: MemLdStr global_180
  loc_A48F0B: FLdPr Me
  loc_A48F0E: MemLdStr global_120
  loc_A48F11: LitI2_Byte 7
  loc_A48F13: CStrUI1
  loc_A48F15: FStStrNoPop var_88
  loc_A48F18: Call Proc_164_26_A141A0()
  loc_A48F1D: FFree1Str var_88
  loc_A48F20: FLdPr Me
  loc_A48F23: MemLdStr global_184
  loc_A48F26: FLdPr Me
  loc_A48F29: MemLdStr global_124
  loc_A48F2C: LitI2_Byte 8
  loc_A48F2E: CStrUI1
  loc_A48F30: FStStrNoPop var_88
  loc_A48F33: Call Proc_164_26_A141A0()
  loc_A48F38: FFree1Str var_88
  loc_A48F3B: FLdPr Me
  loc_A48F3E: MemLdStr global_188
  loc_A48F41: FLdPr Me
  loc_A48F44: MemLdStr global_128
  loc_A48F47: LitI2_Byte 9
  loc_A48F49: CStrUI1
  loc_A48F4B: FStStrNoPop var_88
  loc_A48F4E: Call Proc_164_26_A141A0()
  loc_A48F53: FFree1Str var_88
  loc_A48F56: FLdPr Me
  loc_A48F59: MemLdStr global_192
  loc_A48F5C: FLdPr Me
  loc_A48F5F: MemLdStr global_132
  loc_A48F62: LitI2_Byte &HA
  loc_A48F64: CStrUI1
  loc_A48F66: FStStrNoPop var_88
  loc_A48F69: Call Proc_164_26_A141A0()
  loc_A48F6E: FFree1Str var_88
  loc_A48F71: FLdPr Me
  loc_A48F74: MemLdStr global_196
  loc_A48F77: FLdPr Me
  loc_A48F7A: MemLdStr global_136
  loc_A48F7D: LitI2_Byte &HB
  loc_A48F7F: CStrUI1
  loc_A48F81: FStStrNoPop var_88
  loc_A48F84: Call Proc_164_26_A141A0()
  loc_A48F89: FFree1Str var_88
  loc_A48F8C: FLdPr Me
  loc_A48F8F: MemLdStr global_200
  loc_A48F92: FLdPr Me
  loc_A48F95: MemLdStr global_140
  loc_A48F98: LitI2_Byte &HC
  loc_A48F9A: CStrUI1
  loc_A48F9C: FStStrNoPop var_88
  loc_A48F9F: Call Proc_164_26_A141A0()
  loc_A48FA4: FFree1Str var_88
  loc_A48FA7: FLdPr Me
  loc_A48FAA: MemLdStr global_204
  loc_A48FAD: FLdPr Me
  loc_A48FB0: MemLdStr global_144
  loc_A48FB3: LitI2_Byte &HD
  loc_A48FB5: CStrUI1
  loc_A48FB7: FStStrNoPop var_88
  loc_A48FBA: Call Proc_164_26_A141A0()
  loc_A48FBF: FFree1Str var_88
  loc_A48FC2: FLdPr Me
  loc_A48FC5: MemLdStr global_208
  loc_A48FC8: FLdPr Me
  loc_A48FCB: MemLdStr global_148
  loc_A48FCE: LitI2_Byte &HE
  loc_A48FD0: CStrUI1
  loc_A48FD2: FStStrNoPop var_88
  loc_A48FD5: Call Proc_164_26_A141A0()
  loc_A48FDA: FFree1Str var_88
  loc_A48FDD: FLdPr Me
  loc_A48FE0: MemLdStr global_212
  loc_A48FE3: FLdPr Me
  loc_A48FE6: MemLdStr global_152
  loc_A48FE9: LitI2_Byte &HF
  loc_A48FEB: CStrUI1
  loc_A48FED: FStStrNoPop var_88
  loc_A48FF0: Call Proc_164_26_A141A0()
  loc_A48FF5: FFree1Str var_88
  loc_A48FF8: FLdPr Me
  loc_A48FFB: MemLdRfVar from_stack_1.global_80
  loc_A48FFE: LdPrVar
  loc_A49000: LateMemCall
  loc_A49006: ExitProcHresult
End Sub

Private Function Proc_164_23_9716C8(arg_C) '9716C8
  'Data Table: 4693AC
  loc_97169C: LitI2_Byte 0
  loc_97169E: FLdRfVar var_86
  loc_9716A1: ILdI4 arg_C
  loc_9716A4: LitI2_Byte 1
  loc_9716A6: FnUBound
  loc_9716A8: CI2I4
  loc_9716A9: ForI2 var_8A
  loc_9716AF: LitVarStr var_9C, "0,00"
  loc_9716B4: FLdI2 var_86
  loc_9716B7: CI4UI1
  loc_9716B8: ILdI4 arg_C
  loc_9716BB: Ary1StVargCopy
  loc_9716BD: FLdRfVar var_86
  loc_9716C0: NextI2 var_8A, loc_9716AF
  loc_9716C5: ExitProcHresult
End Function

Private Function Proc_164_24_A77F48(arg_C, arg_10, arg_14, arg_18, arg_1C) 'A77F48
  'Data Table: 4693AC
  loc_A77BD0: ILdRf arg_10
  loc_A77BD3: FStStrCopy var_90
  loc_A77BD6: ILdRf arg_14
  loc_A77BD9: FStStrCopy var_94
  loc_A77BDC: ILdRf arg_18
  loc_A77BDF: FStStrCopy var_98
  loc_A77BE2: LitVarStr var_E8, vbNullString
  loc_A77BE7: FStVarCopyObj var_F8
  loc_A77BEA: FLdRfVar var_F8
  loc_A77BED: LitVarStr var_C8, "/4"
  loc_A77BF2: FStVarCopyObj var_D8
  loc_A77BF5: FLdRfVar var_D8
  loc_A77BF8: FLdRfVar arg_1C
  loc_A77BFB: CVarRef
  loc_A77C00: FLdRfVar var_108
  loc_A77C03: ImpAdCallFPR4  = IIf(, , )
  loc_A77C08: FLdRfVar var_108
  loc_A77C0B: CStrVarTmp
  loc_A77C0C: FStStr var_A0
  loc_A77C0F: FFreeVar var_D8 = "": var_F8 = ""
  loc_A77C18: LitVarStr var_E8, "Sum(HabeMoas-DebeMoas)"
  loc_A77C1D: FStVarCopyObj var_F8
  loc_A77C20: FLdRfVar var_F8
  loc_A77C23: LitVarStr var_C8, "Sum(DebeMoas-HabeMoas)"
  loc_A77C28: FStVarCopyObj var_D8
  loc_A77C2B: FLdRfVar var_D8
  loc_A77C2E: FLdRfVar arg_C
  loc_A77C31: CVarRef
  loc_A77C36: FLdRfVar var_108
  loc_A77C39: ImpAdCallFPR4  = IIf(, , )
  loc_A77C3E: FLdRfVar var_108
  loc_A77C41: CStrVarTmp
  loc_A77C42: FStStr var_9C
  loc_A77C45: FFreeVar var_D8 = "": var_F8 = ""
  loc_A77C4E: LitStr " AND (CodiTias = "
  loc_A77C51: ILdRf var_90
  loc_A77C54: ConcatStr
  loc_A77C55: FStStrNoPop var_10C
  loc_A77C58: LitStr " OR CodiTias = "
  loc_A77C5B: ConcatStr
  loc_A77C5C: FStStrNoPop var_110
  loc_A77C5F: ILdRf var_94
  loc_A77C62: ConcatStr
  loc_A77C63: FStStrNoPop var_114
  loc_A77C66: LitStr ")"
  loc_A77C69: ConcatStr
  loc_A77C6A: CVarStr var_F8
  loc_A77C6D: LitStr " AND CodiTias = "
  loc_A77C70: ILdRf var_90
  loc_A77C73: ConcatStr
  loc_A77C74: CVarStr var_D8
  loc_A77C77: ILdRf var_94
  loc_A77C7A: LitStr vbNullString
  loc_A77C7D: EqStr
  loc_A77C7F: CVarBoolI2 var_B8
  loc_A77C83: FLdRfVar var_108
  loc_A77C86: ImpAdCallFPR4  = IIf(, , )
  loc_A77C8B: FLdRfVar var_108
  loc_A77C8E: CStrVarTmp
  loc_A77C8F: FStStr var_A4
  loc_A77C92: FFreeStr var_10C = "": var_110 = ""
  loc_A77C9B: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_A77CA6: LitStr "Municipalidad de Guaymallén"
  loc_A77CA9: LitStr "Municipalidad de Santa Rosa"
  loc_A77CAC: EqStr
  loc_A77CAE: BranchF loc_A77DA9
  loc_A77CB1: FLdRfVar var_10C
  loc_A77CB4: FLdPr Me
  loc_A77CB7: VCallAd Control_ID_cboPeriodo
  loc_A77CBA: FStAdFunc var_118
  loc_A77CBD: FLdPr var_118
  loc_A77CC0:  = Me.Text
  loc_A77CC5: ILdRf var_10C
  loc_A77CC8: CR8Str
  loc_A77CCA: LitI2 2021
  loc_A77CCD: CR8I2
  loc_A77CCE: LeR8
  loc_A77CCF: FFree1Str var_10C
  loc_A77CD2: FFree1Ad var_118
  loc_A77CD5: BranchF loc_A77D45
  loc_A77CD8: LitStr " AND Month(FechAsie) BETWEEN "
  loc_A77CDB: FLdPr Me
  loc_A77CDE: MemLdI2 global_224
  loc_A77CE1: LitI2_Byte 2
  loc_A77CE3: SubI2
  loc_A77CE4: CStrUI1
  loc_A77CE6: FStStrNoPop var_110
  loc_A77CE9: ConcatStr
  loc_A77CEA: FStStrNoPop var_114
  loc_A77CED: LitStr " AND "
  loc_A77CF0: ConcatStr
  loc_A77CF1: FStStrNoPop var_11C
  loc_A77CF4: FLdPr Me
  loc_A77CF7: MemLdI2 global_224
  loc_A77CFA: CStrUI1
  loc_A77CFC: FStStrNoPop var_120
  loc_A77CFF: ConcatStr
  loc_A77D00: CVarStr var_F8
  loc_A77D03: LitStr " AND Month(FechAsie) <= "
  loc_A77D06: FLdPr Me
  loc_A77D09: MemLdI2 global_224
  loc_A77D0C: CStrUI1
  loc_A77D0E: FStStrNoPop var_10C
  loc_A77D11: ConcatStr
  loc_A77D12: CVarStr var_D8
  loc_A77D15: FLdRfVar arg_1C
  loc_A77D18: CVarRef
  loc_A77D1D: FLdRfVar var_108
  loc_A77D20: ImpAdCallFPR4  = IIf(, , )
  loc_A77D25: FLdRfVar var_108
  loc_A77D28: CStrVarTmp
  loc_A77D29: FStStr var_A8
  loc_A77D2C: FFreeStr var_10C = "": var_110 = "": var_114 = "": var_11C = ""
  loc_A77D39: FFreeVar var_D8 = "": var_F8 = ""
  loc_A77D42: Branch loc_A77DA6
  loc_A77D45: LitStr " AND Month(FechAsie) BETWEEN "
  loc_A77D48: FLdPr Me
  loc_A77D4B: MemLdI2 global_224
  loc_A77D4E: LitI2_Byte 2
  loc_A77D50: SubI2
  loc_A77D51: CStrUI1
  loc_A77D53: FStStrNoPop var_10C
  loc_A77D56: ConcatStr
  loc_A77D57: FStStrNoPop var_110
  loc_A77D5A: LitStr " AND "
  loc_A77D5D: ConcatStr
  loc_A77D5E: FStStrNoPop var_114
  loc_A77D61: FLdPr Me
  loc_A77D64: MemLdI2 global_224
  loc_A77D67: CStrUI1
  loc_A77D69: FStStrNoPop var_11C
  loc_A77D6C: ConcatStr
  loc_A77D6D: CVarStr var_F8
  loc_A77D70: LitVarStr var_C8, " AND Month(FechAsie) <= 3"
  loc_A77D75: FStVarCopyObj var_D8
  loc_A77D78: FLdRfVar var_D8
  loc_A77D7B: FLdRfVar arg_1C
  loc_A77D7E: CVarRef
  loc_A77D83: FLdRfVar var_108
  loc_A77D86: ImpAdCallFPR4  = IIf(, , )
  loc_A77D8B: FLdRfVar var_108
  loc_A77D8E: CStrVarTmp
  loc_A77D8F: FStStr var_A8
  loc_A77D92: FFreeStr var_10C = "": var_110 = "": var_114 = ""
  loc_A77D9D: FFreeVar var_D8 = "": var_F8 = ""
  loc_A77DA6: Branch loc_A77E13
  loc_A77DA9: LitStr " AND Month(FechAsie) BETWEEN "
  loc_A77DAC: FLdPr Me
  loc_A77DAF: MemLdI2 global_224
  loc_A77DB2: LitI2_Byte 2
  loc_A77DB4: SubI2
  loc_A77DB5: CStrUI1
  loc_A77DB7: FStStrNoPop var_110
  loc_A77DBA: ConcatStr
  loc_A77DBB: FStStrNoPop var_114
  loc_A77DBE: LitStr " AND "
  loc_A77DC1: ConcatStr
  loc_A77DC2: FStStrNoPop var_11C
  loc_A77DC5: FLdPr Me
  loc_A77DC8: MemLdI2 global_224
  loc_A77DCB: CStrUI1
  loc_A77DCD: FStStrNoPop var_120
  loc_A77DD0: ConcatStr
  loc_A77DD1: CVarStr var_F8
  loc_A77DD4: LitStr " AND Month(FechAsie) <= "
  loc_A77DD7: FLdPr Me
  loc_A77DDA: MemLdI2 global_224
  loc_A77DDD: CStrUI1
  loc_A77DDF: FStStrNoPop var_10C
  loc_A77DE2: ConcatStr
  loc_A77DE3: CVarStr var_D8
  loc_A77DE6: FLdRfVar arg_1C
  loc_A77DE9: CVarRef
  loc_A77DEE: FLdRfVar var_108
  loc_A77DF1: ImpAdCallFPR4  = IIf(, , )
  loc_A77DF6: FLdRfVar var_108
  loc_A77DF9: CStrVarTmp
  loc_A77DFA: FStStr var_A8
  loc_A77DFD: FFreeStr var_10C = "": var_110 = "": var_114 = "": var_11C = ""
  loc_A77E0A: FFreeVar var_D8 = "": var_F8 = ""
  loc_A77E13: FLdPr Me
  loc_A77E16: MemLdRfVar from_stack_1.global_72
  loc_A77E19: NewIfNullAd
  loc_A77E1C: FStAd var_124 
  loc_A77E20: LitStr "SELECT ("
  loc_A77E23: ILdRf var_9C
  loc_A77E26: ConcatStr
  loc_A77E27: FStStrNoPop var_10C
  loc_A77E2A: LitStr ")"
  loc_A77E2D: ConcatStr
  loc_A77E2E: FStStrNoPop var_110
  loc_A77E31: ILdRf var_A0
  loc_A77E34: ConcatStr
  loc_A77E35: FStStrNoPop var_114
  loc_A77E38: LitStr " as SaldMoas"
  loc_A77E3B: ConcatStr
  loc_A77E3C: FStStrNoPop var_11C
  loc_A77E3F: LitStr " FROM asiento"
  loc_A77E42: ConcatStr
  loc_A77E43: FStStrNoPop var_120
  loc_A77E46: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie"
  loc_A77E49: ConcatStr
  loc_A77E4A: FStStrNoPop var_128
  loc_A77E4D: LitStr " INNER JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = moviasiento.PeriInfo AND infogov.cuentacontable.CodiCuco = moviasiento.CodiCuco"
  loc_A77E50: ConcatStr
  loc_A77E51: FStStrNoPop var_12C
  loc_A77E54: LitStr " WHERE asiento.PeriInfo = "
  loc_A77E57: ConcatStr
  loc_A77E58: FStStrNoPop var_134
  loc_A77E5B: FLdRfVar var_130
  loc_A77E5E: FLdPr Me
  loc_A77E61: VCallAd Control_ID_cboPeriodo
  loc_A77E64: FStAdFunc var_118
  loc_A77E67: FLdPr var_118
  loc_A77E6A:  = Me.Text
  loc_A77E6F: ILdRf var_130
  loc_A77E72: ConcatStr
  loc_A77E73: FStStrNoPop var_138
  loc_A77E76: ILdRf var_A4
  loc_A77E79: ConcatStr
  loc_A77E7A: FStStrNoPop var_13C
  loc_A77E7D: LitStr " AND CodiTicu LIKE '"
  loc_A77E80: ConcatStr
  loc_A77E81: FStStrNoPop var_140
  loc_A77E84: ILdRf var_98
  loc_A77E87: ConcatStr
  loc_A77E88: FStStrNoPop var_144
  loc_A77E8B: LitStr Chr(37) & "'"
  loc_A77E8E: ConcatStr
  loc_A77E8F: FStStrNoPop var_148
  loc_A77E92: ILdRf var_A8
  loc_A77E95: ConcatStr
  loc_A77E96: FStStrNoPop var_14C
  loc_A77E99: LitStr " GROUP BY moviasiento.PeriInfo;"
  loc_A77E9C: ConcatStr
  loc_A77E9D: FStStrNoPop var_150
  loc_A77EA0: FLdPr var_124
  loc_A77EA3: Call clsbase.RedefineRS(from_stack_1v)
  loc_A77EA8: FFreeStr var_10C = "": var_110 = "": var_114 = "": var_11C = "": var_120 = "": var_128 = "": var_12C = "": var_134 = "": var_130 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_A77ECB: FFree1Ad var_118
  loc_A77ECE: FLdRfVar var_154
  loc_A77ED1: FLdPr var_124
  loc_A77ED4: from_stack_1 = clsbase.RecordCount
  loc_A77ED9: ILdRf var_154
  loc_A77EDC: LitI4 0
  loc_A77EE1: GtI4
  loc_A77EE2: BranchF loc_A77F35
  loc_A77EE5: FLdRfVar var_D8
  loc_A77EE8: FLdRfVar var_15C
  loc_A77EEB: LitVarStr var_B8, "SaldMoas"
  loc_A77EF0: PopAdLdVar
  loc_A77EF1: FLdRfVar var_158
  loc_A77EF4: FLdRfVar var_118
  loc_A77EF7: FLdPr var_124
  loc_A77EFA: from_stack_1v = clsbase.RsFrmGet()
  loc_A77EFF: FLdPr var_118
  loc_A77F02:  = Me.Fields
  loc_A77F07: FLdPr var_158
  loc_A77F0A: from_stack_2 = Me.Item(from_stack_1)
  loc_A77F0F: FLdPr var_15C
  loc_A77F12:  = Me.Value
  loc_A77F17: FLdRfVar var_D8
  loc_A77F1A: CR4Var
  loc_A77F1B: FStFPR8 var_8C
  loc_A77F1E: FFreeAd var_118 = "": var_158 = ""
  loc_A77F27: FFree1Var var_D8 = ""
  loc_A77F2A: LitI2_Byte &HFF
  loc_A77F2C: FLdPr Me
  loc_A77F2F: MemStI2 global_226
  loc_A77F32: Branch loc_A77F3B
  loc_A77F35: LitI2_Byte 0
  loc_A77F37: CR8I2
  loc_A77F38: FStFPR8 var_8C
  loc_A77F3B: LitNothing
  loc_A77F3D: FStAd var_124 
  loc_A77F41: ExitProcCbHresult
End Function

Private Function Proc_164_25_A075FC(arg_C, arg_10, arg_14, arg_18) 'A075FC
  'Data Table: 4693AC
  loc_A074A4: ILdRf arg_C
  loc_A074A7: FStStrCopy var_88
  loc_A074AA: ILdRf arg_10
  loc_A074AD: FStStrCopy var_8C
  loc_A074B0: ILdRf arg_14
  loc_A074B3: FStStrCopy var_90
  loc_A074B6: ILdRf arg_18
  loc_A074B9: FStStrCopy var_94
  loc_A074BC: LitI4 2
  loc_A074C1: ILdRf var_90
  loc_A074C4: CR8Str
  loc_A074C6: ILdRf var_94
  loc_A074C9: CR8Str
  loc_A074CB: SubR4
  loc_A074CC: CVarR8
  loc_A074D0: FLdRfVar var_C8
  loc_A074D3: ImpAdCallFPR4  = Round(, )
  loc_A074D8: LitI2_Byte 0
  loc_A074DA: LitVar_Missing var_E8
  loc_A074DD: LitI2_Byte &HFF
  loc_A074DF: FLdVar var_C8
  loc_A074E3: FLdRfVar var_98
  loc_A074E6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A074EB: FFreeVar var_B8 = "": var_C8 = ""
  loc_A074F4: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A074F9: PopAdLdVar
  loc_A074FA: FLdPr Me
  loc_A074FD: MemLdRfVar from_stack_1.htmFile
  loc_A07500: LdPrVar
  loc_A07502: LateMemCall
  loc_A07508: LitI4 0
  loc_A0750D: LitI4 0
  loc_A07512: LitI2_Byte 0
  loc_A07514: LitStr "center"
  loc_A07517: ILdRf var_88
  loc_A0751A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A0751F: CVarStr var_B8
  loc_A07522: PopAdLdVar
  loc_A07523: FLdPr Me
  loc_A07526: MemLdRfVar from_stack_1.htmFile
  loc_A07529: LdPrVar
  loc_A0752B: LateMemCall
  loc_A07531: FFree1Var var_B8 = ""
  loc_A07534: LitI4 0
  loc_A07539: LitI4 0
  loc_A0753E: LitI2_Byte 0
  loc_A07540: LitStr "left"
  loc_A07543: ILdRf var_8C
  loc_A07546: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A0754B: CVarStr var_B8
  loc_A0754E: PopAdLdVar
  loc_A0754F: FLdPr Me
  loc_A07552: MemLdRfVar from_stack_1.htmFile
  loc_A07555: LdPrVar
  loc_A07557: LateMemCall
  loc_A0755D: FFree1Var var_B8 = ""
  loc_A07560: LitI4 0
  loc_A07565: LitI4 0
  loc_A0756A: LitI2_Byte &HFF
  loc_A0756C: LitStr "right"
  loc_A0756F: ILdRf var_90
  loc_A07572: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A07577: CVarStr var_B8
  loc_A0757A: PopAdLdVar
  loc_A0757B: FLdPr Me
  loc_A0757E: MemLdRfVar from_stack_1.htmFile
  loc_A07581: LdPrVar
  loc_A07583: LateMemCall
  loc_A07589: FFree1Var var_B8 = ""
  loc_A0758C: LitI4 0
  loc_A07591: LitI4 0
  loc_A07596: LitI2_Byte &HFF
  loc_A07598: LitStr "right"
  loc_A0759B: ILdRf var_94
  loc_A0759E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A075A3: CVarStr var_B8
  loc_A075A6: PopAdLdVar
  loc_A075A7: FLdPr Me
  loc_A075AA: MemLdRfVar from_stack_1.htmFile
  loc_A075AD: LdPrVar
  loc_A075AF: LateMemCall
  loc_A075B5: FFree1Var var_B8 = ""
  loc_A075B8: LitI4 0
  loc_A075BD: LitI4 0
  loc_A075C2: LitI2_Byte &HFF
  loc_A075C4: LitStr "right"
  loc_A075C7: ILdRf var_98
  loc_A075CA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A075CF: CVarStr var_B8
  loc_A075D2: PopAdLdVar
  loc_A075D3: FLdPr Me
  loc_A075D6: MemLdRfVar from_stack_1.htmFile
  loc_A075D9: LdPrVar
  loc_A075DB: LateMemCall
  loc_A075E1: FFree1Var var_B8 = ""
  loc_A075E4: LitVarStr var_A8, "     </tr>"
  loc_A075E9: PopAdLdVar
  loc_A075EA: FLdPr Me
  loc_A075ED: MemLdRfVar from_stack_1.htmFile
  loc_A075F0: LdPrVar
  loc_A075F2: LateMemCall
  loc_A075F8: ExitProcHresult
End Function

Private Function Proc_164_26_A141A0(arg_C, arg_10, arg_14) 'A141A0
  'Data Table: 4693AC
  loc_A14070: ILdRf arg_C
  loc_A14073: FStStrCopy var_88
  loc_A14076: ILdRf arg_10
  loc_A14079: FStStrCopy var_8C
  loc_A1407C: ILdRf arg_14
  loc_A1407F: FStStrCopy var_90
  loc_A14082: LitI4 2
  loc_A14087: ILdRf var_8C
  loc_A1408A: CR8Str
  loc_A1408C: ILdRf var_90
  loc_A1408F: CR8Str
  loc_A14091: SubR4
  loc_A14092: CVarR8
  loc_A14096: FLdRfVar var_C4
  loc_A14099: ImpAdCallFPR4  = Round(, )
  loc_A1409E: FLdRfVar var_C4
  loc_A140A1: CStrVarTmp
  loc_A140A2: FStStr var_94
  loc_A140A5: FFreeVar var_B4 = ""
  loc_A140AC: FLdRfVar var_CC
  loc_A140AF: FLdPr Me
  loc_A140B2: VCallAd Control_ID_cboPeriodo
  loc_A140B5: FStAdFunc var_C8
  loc_A140B8: FLdPr var_C8
  loc_A140BB:  = Me.Text
  loc_A140C0: ILdRf var_CC
  loc_A140C3: LitStr "|"
  loc_A140C6: ConcatStr
  loc_A140C7: FStStrNoPop var_E0
  loc_A140CA: FLdRfVar var_DC
  loc_A140CD: FLdRfVar var_D2
  loc_A140D0: FLdPr Me
  loc_A140D3: VCallAd Control_ID_cboTrimestre
  loc_A140D6: FStAdFunc var_D0
  loc_A140D9: FLdPr var_D0
  loc_A140DC:  = Me.ListIndex
  loc_A140E1: FLdI2 var_D2
  loc_A140E4: FLdPr Me
  loc_A140E7: VCallAd Control_ID_cboTrimestre
  loc_A140EA: FStAdFunc var_D8
  loc_A140ED: FLdPr var_D8
  loc_A140F0:  = Me.ItemData
  loc_A140F5: ILdRf var_DC
  loc_A140F8: CStrI4
  loc_A140FA: FStStrNoPop var_E4
  loc_A140FD: ConcatStr
  loc_A140FE: FStStrNoPop var_E8
  loc_A14101: LitStr "|"
  loc_A14104: ConcatStr
  loc_A14105: FStStrNoPop var_EC
  loc_A14108: LitStr "060204"
  loc_A1410B: ConcatStr
  loc_A1410C: FStStrNoPop var_F0
  loc_A1410F: LitStr "|"
  loc_A14112: ConcatStr
  loc_A14113: FStStrNoPop var_F4
  loc_A14116: ILdRf var_88
  loc_A14119: ConcatStr
  loc_A1411A: FStStrNoPop var_F8
  loc_A1411D: LitStr "|"
  loc_A14120: ConcatStr
  loc_A14121: FStStrNoPop var_FC
  loc_A14124: ILdRf var_8C
  loc_A14127: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A1412C: FStStrNoPop var_100
  loc_A1412F: ConcatStr
  loc_A14130: FStStrNoPop var_104
  loc_A14133: LitStr "|"
  loc_A14136: ConcatStr
  loc_A14137: FStStrNoPop var_108
  loc_A1413A: ILdRf var_90
  loc_A1413D: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A14142: FStStrNoPop var_10C
  loc_A14145: ConcatStr
  loc_A14146: FStStrNoPop var_110
  loc_A14149: LitStr "|"
  loc_A1414C: ConcatStr
  loc_A1414D: FStStrNoPop var_114
  loc_A14150: ILdRf var_94
  loc_A14153: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A14158: FStStrNoPop var_118
  loc_A1415B: ConcatStr
  loc_A1415C: CVarStr var_B4
  loc_A1415F: PopAdLdVar
  loc_A14160: FLdPr Me
  loc_A14163: MemLdRfVar from_stack_1.global_80
  loc_A14166: LdPrVar
  loc_A14168: LateMemCall
  loc_A1416E: FFreeStr var_CC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_A14191: FFreeAd var_C8 = "": var_D0 = ""
  loc_A1419A: FFree1Var var_B4 = ""
  loc_A1419D: ExitProcHresult
End Function

Private Function Proc_164_27_A80230() 'A80230
  'Data Table: 4693AC
  loc_A7FE58: LitVarStr var_94, "<html>"
  loc_A7FE5D: PopAdLdVar
  loc_A7FE5E: FLdPr Me
  loc_A7FE61: MemLdRfVar from_stack_1.htmFile
  loc_A7FE64: LdPrVar
  loc_A7FE66: LateMemCall
  loc_A7FE6C: LitVarStr var_94, "<head>"
  loc_A7FE71: PopAdLdVar
  loc_A7FE72: FLdPr Me
  loc_A7FE75: MemLdRfVar from_stack_1.htmFile
  loc_A7FE78: LdPrVar
  loc_A7FE7A: LateMemCall
  loc_A7FE80: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A7FE85: PopAdLdVar
  loc_A7FE86: FLdPr Me
  loc_A7FE89: MemLdRfVar from_stack_1.htmFile
  loc_A7FE8C: LdPrVar
  loc_A7FE8E: LateMemCall
  loc_A7FE94: LitStr "<title>"
  loc_A7FE97: FLdRfVar var_A8
  loc_A7FE9A: FLdPr Me
  loc_A7FE9D:  = Me.Caption
  loc_A7FEA2: ILdRf var_A8
  loc_A7FEA5: ConcatStr
  loc_A7FEA6: FStStrNoPop var_AC
  loc_A7FEA9: LitStr " - "
  loc_A7FEAC: ConcatStr
  loc_A7FEAD: FStStrNoPop var_B0
  loc_A7FEB0: LitStr "Municipalidad de Guaymallén"
  loc_A7FEB3: ConcatStr
  loc_A7FEB4: FStStrNoPop var_B4
  loc_A7FEB7: LitStr "</title>"
  loc_A7FEBA: ConcatStr
  loc_A7FEBB: CVarStr var_C4
  loc_A7FEBE: PopAdLdVar
  loc_A7FEBF: FLdPr Me
  loc_A7FEC2: MemLdRfVar from_stack_1.htmFile
  loc_A7FEC5: LdPrVar
  loc_A7FEC7: LateMemCall
  loc_A7FECD: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_A7FED8: FFree1Var var_C4 = ""
  loc_A7FEDB: LitStr vbNullString
  loc_A7FEDE: ILdRf Me
  loc_A7FEE1: CastAd
  loc_A7FEE4: FStAdFunc var_C8
  loc_A7FEE7: FLdRfVar var_C8
  loc_A7FEEA: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A7FEEF: FFree1Ad var_C8
  loc_A7FEF2: LitI4 0
  loc_A7FEF7: FStStrCopy var_AC
  loc_A7FEFA: FLdRfVar var_AC
  loc_A7FEFD: LitI4 0
  loc_A7FF02: FStStrCopy var_A8
  loc_A7FF05: FLdRfVar var_A8
  loc_A7FF08: LitI2_Byte &HFF
  loc_A7FF0A: PopTmpLdAd2 var_CA
  loc_A7FF0D: FLdPr Me
  loc_A7FF10: MemLdRfVar from_stack_1.htmFile
  loc_A7FF13: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A7FF18: FFreeStr var_A8 = ""
  loc_A7FF1F: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_A7FF24: PopAdLdVar
  loc_A7FF25: FLdPr Me
  loc_A7FF28: MemLdRfVar from_stack_1.htmFile
  loc_A7FF2B: LdPrVar
  loc_A7FF2D: LateMemCall
  loc_A7FF33: LitVarStr var_94, "  <tr valign=""center"">"
  loc_A7FF38: PopAdLdVar
  loc_A7FF39: FLdPr Me
  loc_A7FF3C: MemLdRfVar from_stack_1.htmFile
  loc_A7FF3F: LdPrVar
  loc_A7FF41: LateMemCall
  loc_A7FF47: LitVarStr var_94, "    <th colspan=""2"" align=""center"" valign=""center""><p>"
  loc_A7FF4C: PopAdLdVar
  loc_A7FF4D: FLdPr Me
  loc_A7FF50: MemLdRfVar from_stack_1.htmFile
  loc_A7FF53: LdPrVar
  loc_A7FF55: LateMemCall
  loc_A7FF5B: FLdPr Me
  loc_A7FF5E: MemLdI2 bLogos
  loc_A7FF61: BranchF loc_A7FF78
  loc_A7FF64: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>ANEXO 4: EJECUCIÓN PRESUPUESTARIA DEL TRIMESTRe - CUMPLIMIENTO DE METAS</span class=""Titulo2""></p>"
  loc_A7FF69: PopAdLdVar
  loc_A7FF6A: FLdPr Me
  loc_A7FF6D: MemLdRfVar from_stack_1.htmFile
  loc_A7FF70: LdPrVar
  loc_A7FF72: LateMemCall
  loc_A7FF78: LitVarStr var_94, "    </th>"
  loc_A7FF7D: PopAdLdVar
  loc_A7FF7E: FLdPr Me
  loc_A7FF81: MemLdRfVar from_stack_1.htmFile
  loc_A7FF84: LdPrVar
  loc_A7FF86: LateMemCall
  loc_A7FF8C: LitVarStr var_94, "  </tr>"
  loc_A7FF91: PopAdLdVar
  loc_A7FF92: FLdPr Me
  loc_A7FF95: MemLdRfVar from_stack_1.htmFile
  loc_A7FF98: LdPrVar
  loc_A7FF9A: LateMemCall
  loc_A7FFA0: LitVarStr var_94, "  <tr>"
  loc_A7FFA5: PopAdLdVar
  loc_A7FFA6: FLdPr Me
  loc_A7FFA9: MemLdRfVar from_stack_1.htmFile
  loc_A7FFAC: LdPrVar
  loc_A7FFAE: LateMemCall
  loc_A7FFB4: LitVarStr var_94, "    <th>"
  loc_A7FFB9: PopAdLdVar
  loc_A7FFBA: FLdPr Me
  loc_A7FFBD: MemLdRfVar from_stack_1.htmFile
  loc_A7FFC0: LdPrVar
  loc_A7FFC2: LateMemCall
  loc_A7FFC8: LitStr "      <p align=""left"" class=""Titulo2"">      Repartición/Organismo: "
  loc_A7FFCB: LitStr "Municipalidad de Guaymallén"
  loc_A7FFCE: ConcatStr
  loc_A7FFCF: FStStrNoPop var_A8
  loc_A7FFD2: LitStr "<br>"
  loc_A7FFD5: ConcatStr
  loc_A7FFD6: CVarStr var_C4
  loc_A7FFD9: PopAdLdVar
  loc_A7FFDA: FLdPr Me
  loc_A7FFDD: MemLdRfVar from_stack_1.htmFile
  loc_A7FFE0: LdPrVar
  loc_A7FFE2: LateMemCall
  loc_A7FFE8: FFree1Str var_A8
  loc_A7FFEB: FFree1Var var_C4 = ""
  loc_A7FFEE: LitStr "    Nomenclador: "
  loc_A7FFF1: LitStr "060204"
  loc_A7FFF4: ConcatStr
  loc_A7FFF5: FStStrNoPop var_A8
  loc_A7FFF8: LitStr "<br>"
  loc_A7FFFB: ConcatStr
  loc_A7FFFC: CVarStr var_C4
  loc_A7FFFF: PopAdLdVar
  loc_A80000: FLdPr Me
  loc_A80003: MemLdRfVar from_stack_1.htmFile
  loc_A80006: LdPrVar
  loc_A80008: LateMemCall
  loc_A8000E: FFree1Str var_A8
  loc_A80011: FFree1Var var_C4 = ""
  loc_A80014: LitStr "    Ejercicio: "
  loc_A80017: FLdRfVar var_A8
  loc_A8001A: FLdPr Me
  loc_A8001D: VCallAd Control_ID_cboPeriodo
  loc_A80020: FStAdFunc var_C8
  loc_A80023: FLdPr var_C8
  loc_A80026:  = Me.Text
  loc_A8002B: ILdRf var_A8
  loc_A8002E: ConcatStr
  loc_A8002F: FStStrNoPop var_AC
  loc_A80032: LitStr "<br>"
  loc_A80035: ConcatStr
  loc_A80036: CVarStr var_C4
  loc_A80039: PopAdLdVar
  loc_A8003A: FLdPr Me
  loc_A8003D: MemLdRfVar from_stack_1.htmFile
  loc_A80040: LdPrVar
  loc_A80042: LateMemCall
  loc_A80048: FFreeStr var_A8 = ""
  loc_A8004F: FFree1Ad var_C8
  loc_A80052: FFree1Var var_C4 = ""
  loc_A80055: FLdRfVar var_CA
  loc_A80058: FLdPr Me
  loc_A8005B: VCallAd Control_ID_cboTrimestre
  loc_A8005E: FStAdFunc var_D0
  loc_A80061: FLdPr var_D0
  loc_A80064:  = Me.ListIndex
  loc_A80069: FLdRfVar var_D8
  loc_A8006C: FLdI2 var_CA
  loc_A8006F: FLdPr Me
  loc_A80072: VCallAd Control_ID_cboTrimestre
  loc_A80075: FStAdFunc var_D4
  loc_A80078: FLdPr var_D4
  loc_A8007B:  = Me.ItemData
  loc_A80080: FLdRfVar var_AC
  loc_A80083: FLdPr Me
  loc_A80086: VCallAd Control_ID_cboPeriodo
  loc_A80089: FStAdFunc var_DC
  loc_A8008C: FLdPr var_DC
  loc_A8008F:  = Me.Text
  loc_A80094: ILdRf var_AC
  loc_A80097: CI2Str
  loc_A80099: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_A8009E: CVarStr var_C4
  loc_A800A1: FLdRfVar var_EC
  loc_A800A4: ImpAdCallFPR4  = Month()
  loc_A800A9: LitStr "    Trimestre: "
  loc_A800AC: FLdRfVar var_A8
  loc_A800AF: FLdPr Me
  loc_A800B2: VCallAd Control_ID_cboTrimestre
  loc_A800B5: FStAdFunc var_C8
  loc_A800B8: FLdPr var_C8
  loc_A800BB:  = Me.Text
  loc_A800C0: ILdRf var_A8
  loc_A800C3: ConcatStr
  loc_A800C4: CVarStr var_15C
  loc_A800C7: LitVarStr var_12C, vbNullString
  loc_A800CC: FStVarCopyObj var_13C
  loc_A800CF: FLdRfVar var_13C
  loc_A800D2: LitVarStr var_A4, " (PROVISORIO)"
  loc_A800D7: FStVarCopyObj var_11C
  loc_A800DA: FLdRfVar var_11C
  loc_A800DD: ILdRf var_D8
  loc_A800E0: LitI4 3
  loc_A800E5: MulI4
  loc_A800E6: CVarI4
  loc_A800EA: HardType
  loc_A800EB: FLdRfVar var_EC
  loc_A800EE: GtVar var_FC
  loc_A800F2: FStVar var_10C
  loc_A800F6: FLdRfVar var_10C
  loc_A800F9: FLdRfVar var_14C
  loc_A800FC: ImpAdCallFPR4  = IIf(, , )
  loc_A80101: FLdRfVar var_14C
  loc_A80104: ConcatVar var_16C
  loc_A80108: PopAdLdVar
  loc_A80109: FLdPr Me
  loc_A8010C: MemLdRfVar from_stack_1.htmFile
  loc_A8010F: LdPrVar
  loc_A80111: LateMemCall
  loc_A80117: FFreeStr var_A8 = ""
  loc_A8011E: FFreeAd var_C8 = "": var_D0 = "": var_D4 = ""
  loc_A80129: FFreeVar var_C4 = "": var_EC = "": var_10C = "": var_11C = "": var_13C = "": var_15C = "": var_14C = ""
  loc_A8013C: LitVarStr var_94, "    </p></th>"
  loc_A80141: PopAdLdVar
  loc_A80142: FLdPr Me
  loc_A80145: MemLdRfVar from_stack_1.htmFile
  loc_A80148: LdPrVar
  loc_A8014A: LateMemCall
  loc_A80150: LitVarStr var_94, "  </tr>"
  loc_A80155: PopAdLdVar
  loc_A80156: FLdPr Me
  loc_A80159: MemLdRfVar from_stack_1.htmFile
  loc_A8015C: LdPrVar
  loc_A8015E: LateMemCall
  loc_A80164: LitVarStr var_94, "</table>"
  loc_A80169: PopAdLdVar
  loc_A8016A: FLdPr Me
  loc_A8016D: MemLdRfVar from_stack_1.htmFile
  loc_A80170: LdPrVar
  loc_A80172: LateMemCall
  loc_A80178: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A8017D: PopAdLdVar
  loc_A8017E: FLdPr Me
  loc_A80181: MemLdRfVar from_stack_1.htmFile
  loc_A80184: LdPrVar
  loc_A80186: LateMemCall
  loc_A8018C: LitVarStr var_94, "  <THEAD>"
  loc_A80191: PopAdLdVar
  loc_A80192: FLdPr Me
  loc_A80195: MemLdRfVar from_stack_1.htmFile
  loc_A80198: LdPrVar
  loc_A8019A: LateMemCall
  loc_A801A0: LitVarStr var_94, " <tr class=""Encabezado"" align=""center"">"
  loc_A801A5: PopAdLdVar
  loc_A801A6: FLdPr Me
  loc_A801A9: MemLdRfVar from_stack_1.htmFile
  loc_A801AC: LdPrVar
  loc_A801AE: LateMemCall
  loc_A801B4: LitVarStr var_94, "     <th colspan=""2"">CONCEPTO</th>"
  loc_A801B9: PopAdLdVar
  loc_A801BA: FLdPr Me
  loc_A801BD: MemLdRfVar from_stack_1.htmFile
  loc_A801C0: LdPrVar
  loc_A801C2: LateMemCall
  loc_A801C8: LitVarStr var_94, "     <th width=""14" & Chr(37) & """>Ejecutado del Trimestre</th>"
  loc_A801CD: PopAdLdVar
  loc_A801CE: FLdPr Me
  loc_A801D1: MemLdRfVar from_stack_1.htmFile
  loc_A801D4: LdPrVar
  loc_A801D6: LateMemCall
  loc_A801DC: LitVarStr var_94, "     <th width=""14" & Chr(37) & """>Programaci&oacute;n Financiera del Trimestre</th>"
  loc_A801E1: PopAdLdVar
  loc_A801E2: FLdPr Me
  loc_A801E5: MemLdRfVar from_stack_1.htmFile
  loc_A801E8: LdPrVar
  loc_A801EA: LateMemCall
  loc_A801F0: LitVarStr var_94, "     <th width=""14" & Chr(37) & """>Diferencia entre Ejecutado y Programaci&oacute;n Financiera</th>"
  loc_A801F5: PopAdLdVar
  loc_A801F6: FLdPr Me
  loc_A801F9: MemLdRfVar from_stack_1.htmFile
  loc_A801FC: LdPrVar
  loc_A801FE: LateMemCall
  loc_A80204: LitVarStr var_94, "  </tr>"
  loc_A80209: PopAdLdVar
  loc_A8020A: FLdPr Me
  loc_A8020D: MemLdRfVar from_stack_1.htmFile
  loc_A80210: LdPrVar
  loc_A80212: LateMemCall
  loc_A80218: LitVarStr var_94, "  </THEAD>"
  loc_A8021D: PopAdLdVar
  loc_A8021E: FLdPr Me
  loc_A80221: MemLdRfVar from_stack_1.htmFile
  loc_A80224: LdPrVar
  loc_A80226: LateMemCall
  loc_A8022C: ExitProcHresult
End Function

Private Function Proc_164_28_9FD454() '9FD454
  'Data Table: 4693AC
  loc_9FD2F4: LitVarStr var_94, "</table>"
  loc_9FD2F9: PopAdLdVar
  loc_9FD2FA: FLdPr Me
  loc_9FD2FD: MemLdRfVar from_stack_1.htmFile
  loc_9FD300: LdPrVar
  loc_9FD302: LateMemCall
  loc_9FD308: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_9FD30D: PopAdLdVar
  loc_9FD30E: FLdPr Me
  loc_9FD311: MemLdRfVar from_stack_1.htmFile
  loc_9FD314: LdPrVar
  loc_9FD316: LateMemCall
  loc_9FD31C: LitVarStr var_94, "  <tr>"
  loc_9FD321: PopAdLdVar
  loc_9FD322: FLdPr Me
  loc_9FD325: MemLdRfVar from_stack_1.htmFile
  loc_9FD328: LdPrVar
  loc_9FD32A: LateMemCall
  loc_9FD330: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_9FD335: PopAdLdVar
  loc_9FD336: FLdPr Me
  loc_9FD339: MemLdRfVar from_stack_1.htmFile
  loc_9FD33C: LdPrVar
  loc_9FD33E: LateMemCall
  loc_9FD344: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_9FD349: PopAdLdVar
  loc_9FD34A: FLdPr Me
  loc_9FD34D: MemLdRfVar from_stack_1.htmFile
  loc_9FD350: LdPrVar
  loc_9FD352: LateMemCall
  loc_9FD358: FLdPr Me
  loc_9FD35B: MemLdI2 bLogos
  loc_9FD35E: BranchF loc_9FD3C5
  loc_9FD361: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_9FD366: PopAdLdVar
  loc_9FD367: FLdPr Me
  loc_9FD36A: MemLdRfVar from_stack_1.htmFile
  loc_9FD36D: LdPrVar
  loc_9FD36F: LateMemCall
  loc_9FD375: LitVarStr var_94, "          <map name=""Map"">"
  loc_9FD37A: PopAdLdVar
  loc_9FD37B: FLdPr Me
  loc_9FD37E: MemLdRfVar from_stack_1.htmFile
  loc_9FD381: LdPrVar
  loc_9FD383: LateMemCall
  loc_9FD389: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_9FD38E: PopAdLdVar
  loc_9FD38F: FLdPr Me
  loc_9FD392: MemLdRfVar from_stack_1.htmFile
  loc_9FD395: LdPrVar
  loc_9FD397: LateMemCall
  loc_9FD39D: LitVarStr var_94, "          </map>"
  loc_9FD3A2: PopAdLdVar
  loc_9FD3A3: FLdPr Me
  loc_9FD3A6: MemLdRfVar from_stack_1.htmFile
  loc_9FD3A9: LdPrVar
  loc_9FD3AB: LateMemCall
  loc_9FD3B1: LitVarStr var_94, "    </div></th>"
  loc_9FD3B6: PopAdLdVar
  loc_9FD3B7: FLdPr Me
  loc_9FD3BA: MemLdRfVar from_stack_1.htmFile
  loc_9FD3BD: LdPrVar
  loc_9FD3BF: LateMemCall
  loc_9FD3C5: LitVarStr var_94, "  </tr>"
  loc_9FD3CA: PopAdLdVar
  loc_9FD3CB: FLdPr Me
  loc_9FD3CE: MemLdRfVar from_stack_1.htmFile
  loc_9FD3D1: LdPrVar
  loc_9FD3D3: LateMemCall
  loc_9FD3D9: LitVarStr var_94, "  <tr>"
  loc_9FD3DE: PopAdLdVar
  loc_9FD3DF: FLdPr Me
  loc_9FD3E2: MemLdRfVar from_stack_1.htmFile
  loc_9FD3E5: LdPrVar
  loc_9FD3E7: LateMemCall
  loc_9FD3ED: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_9FD3F2: PopAdLdVar
  loc_9FD3F3: FLdPr Me
  loc_9FD3F6: MemLdRfVar from_stack_1.htmFile
  loc_9FD3F9: LdPrVar
  loc_9FD3FB: LateMemCall
  loc_9FD401: LitVarStr var_94, "  </tr>"
  loc_9FD406: PopAdLdVar
  loc_9FD407: FLdPr Me
  loc_9FD40A: MemLdRfVar from_stack_1.htmFile
  loc_9FD40D: LdPrVar
  loc_9FD40F: LateMemCall
  loc_9FD415: LitVarStr var_94, "</table>"
  loc_9FD41A: PopAdLdVar
  loc_9FD41B: FLdPr Me
  loc_9FD41E: MemLdRfVar from_stack_1.htmFile
  loc_9FD421: LdPrVar
  loc_9FD423: LateMemCall
  loc_9FD429: LitVarStr var_94, "</body>"
  loc_9FD42E: PopAdLdVar
  loc_9FD42F: FLdPr Me
  loc_9FD432: MemLdRfVar from_stack_1.htmFile
  loc_9FD435: LdPrVar
  loc_9FD437: LateMemCall
  loc_9FD43D: LitVarStr var_94, "</html>"
  loc_9FD442: PopAdLdVar
  loc_9FD443: FLdPr Me
  loc_9FD446: MemLdRfVar from_stack_1.htmFile
  loc_9FD449: LdPrVar
  loc_9FD44B: LateMemCall
  loc_9FD451: ExitProcHresult
End Function
