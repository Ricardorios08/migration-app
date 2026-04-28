VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA3949AnexoV
  Caption = "Acuerdo 3949 - Anexo V"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA3949AnexoV.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7830
  ClientHeight = 3015
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2760
    Width = 7830
    Height = 255
    TabIndex = 15
    OleObjectBlob = "rptA3949AnexoV.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6720
    Top = 360
    Width = 735
    Height = 615
    TabIndex = 6
    Cancel = -1  'True
    Picture = "rptA3949AnexoV.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA3949AnexoV.frx":0B9C
    Left = 360
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1560
    Width = 4455
    Height = 1095
    TabIndex = 11
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
    Top = 1560
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
    Height = 1455
    TabIndex = 0
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
    Left = 6720
    Top = 480
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 7
    OleObjectBlob = "rptA3949AnexoV.frx":0C00
  End
End

Attribute VB_Name = "rptA3949AnexoV"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_00583FA0
  bStruc(40) As Byte ' String fields: 10
End Type

Private Type UDT_2_005C51F8
  bStruc(52) As Byte ' String fields: 4
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '9865E4
  'Data Table: 45B658
  loc_9865AC: FLdPr Me
  loc_9865AF: VCallAd Control_ID_statusBar
  loc_9865B2: FStAdFunc var_88
  loc_9865B5: FLdPr var_88
  loc_9865B8: LateIdLdVar var_98 DispID_1 0
  loc_9865BF: CStrVarTmp
  loc_9865C0: CVarStr var_A8
  loc_9865C3: PopAdLdVar
  loc_9865C4: FLdPr Me
  loc_9865C7: VCallAd Control_ID_statusBar
  loc_9865CA: FStAdFunc var_BC
  loc_9865CD: FLdPr var_BC
  loc_9865D0: LateIdSt
  loc_9865D5: FFreeAd var_88 = ""
  loc_9865DC: FFreeVar var_98 = ""
  loc_9865E3: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '958200
  'Data Table: 45B658
  loc_9581E8: LitI2_Byte 0
  loc_9581EA: ILdRf Me
  loc_9581ED: CastAd
  loc_9581F0: FStAdFunc var_88
  loc_9581F3: FLdRfVar var_88
  loc_9581F6: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9581FB: FFree1Ad var_88
  loc_9581FE: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9560C0
  'Data Table: 45B658
  loc_9560A8: ILdRf Me
  loc_9560AB: CastAd
  loc_9560AE: FStAdFunc var_88
  loc_9560B1: FLdRfVar var_88
  loc_9560B4: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_9560B9: FFree1Ad var_88
  loc_9560BC: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9765A4
  'Data Table: 45B658
  loc_976574: LitVarStr var_94, "Cerrando..."
  loc_976579: PopAdLdVar
  loc_97657A: FLdPr Me
  loc_97657D: VCallAd Control_ID_statusBar
  loc_976580: FStAdFunc var_A8
  loc_976583: FLdPr var_A8
  loc_976586: LateIdSt
  loc_97658B: FFree1Ad var_A8
  loc_97658E: ILdRf Me
  loc_976591: FStAdNoPop
  loc_976595: ImpAdLdRf MemVar_C44F9C
  loc_976598: NewIfNullPr Me
  loc_97659B: Me.Global.Unload from_stack_1
  loc_9765A0: FFree1Ad var_A8
  loc_9765A3: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A0DC4C
  'Data Table: 45B658
  loc_A0DADC: LitI2_Byte 0
  loc_A0DADE: FLdPr Me
  loc_A0DAE1: MemStI2 bGenerado
  loc_A0DAE4: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_A0DAE9: ImpAdLdI2 MemVar_C3D064
  loc_A0DAEC: CStrUI1
  loc_A0DAEE: FStStrNoPop var_88
  loc_A0DAF1: FLdPr Me
  loc_A0DAF4: VCallAd Control_ID_cboPeriodo
  loc_A0DAF7: FStAdFunc var_8C
  loc_A0DAFA: FLdPr var_8C
  loc_A0DAFD: Me.Text = from_stack_1
  loc_A0DB02: FFree1Str var_88
  loc_A0DB05: FFree1Ad var_8C
  loc_A0DB08: FLdRfVar var_9C
  loc_A0DB0B: ImpAdCallFPR4  = Date
  loc_A0DB10: FLdRfVar var_9C
  loc_A0DB13: FLdRfVar var_AC
  loc_A0DB16: ImpAdCallFPR4  = Month()
  loc_A0DB1B: FLdRfVar var_AC
  loc_A0DB1E: FStVar var_BC
  loc_A0DB22: FFree1Var var_9C = ""
  loc_A0DB25: FLdRfVar var_BC
  loc_A0DB28: LitVarI2 var_CC, 1
  loc_A0DB2D: HardType
  loc_A0DB2E: EqVarBool
  loc_A0DB30: BranchT loc_A0DB4F
  loc_A0DB33: FLdRfVar var_BC
  loc_A0DB36: LitVarI2 var_DC, 2
  loc_A0DB3B: HardType
  loc_A0DB3C: EqVarBool
  loc_A0DB3E: BranchT loc_A0DB4F
  loc_A0DB41: FLdRfVar var_BC
  loc_A0DB44: LitVarI2 var_EC, 3
  loc_A0DB49: HardType
  loc_A0DB4A: EqVarBool
  loc_A0DB4C: BranchF loc_A0DB69
  loc_A0DB4F: LitStr "Primero"
  loc_A0DB52: FLdPr Me
  loc_A0DB55: VCallAd Control_ID_cboTrimestre
  loc_A0DB58: FStAdFunc var_8C
  loc_A0DB5B: FLdPr var_8C
  loc_A0DB5E: Me.Text = from_stack_1
  loc_A0DB63: FFree1Ad var_8C
  loc_A0DB66: Branch loc_A0DC32
  loc_A0DB69: FLdRfVar var_BC
  loc_A0DB6C: LitVarI2 var_CC, 4
  loc_A0DB71: HardType
  loc_A0DB72: EqVarBool
  loc_A0DB74: BranchT loc_A0DB93
  loc_A0DB77: FLdRfVar var_BC
  loc_A0DB7A: LitVarI2 var_DC, 5
  loc_A0DB7F: HardType
  loc_A0DB80: EqVarBool
  loc_A0DB82: BranchT loc_A0DB93
  loc_A0DB85: FLdRfVar var_BC
  loc_A0DB88: LitVarI2 var_EC, 6
  loc_A0DB8D: HardType
  loc_A0DB8E: EqVarBool
  loc_A0DB90: BranchF loc_A0DBAD
  loc_A0DB93: LitStr "Segundo"
  loc_A0DB96: FLdPr Me
  loc_A0DB99: VCallAd Control_ID_cboTrimestre
  loc_A0DB9C: FStAdFunc var_8C
  loc_A0DB9F: FLdPr var_8C
  loc_A0DBA2: Me.Text = from_stack_1
  loc_A0DBA7: FFree1Ad var_8C
  loc_A0DBAA: Branch loc_A0DC32
  loc_A0DBAD: FLdRfVar var_BC
  loc_A0DBB0: LitVarI2 var_CC, 7
  loc_A0DBB5: HardType
  loc_A0DBB6: EqVarBool
  loc_A0DBB8: BranchT loc_A0DBD7
  loc_A0DBBB: FLdRfVar var_BC
  loc_A0DBBE: LitVarI2 var_DC, 8
  loc_A0DBC3: HardType
  loc_A0DBC4: EqVarBool
  loc_A0DBC6: BranchT loc_A0DBD7
  loc_A0DBC9: FLdRfVar var_BC
  loc_A0DBCC: LitVarI2 var_EC, 9
  loc_A0DBD1: HardType
  loc_A0DBD2: EqVarBool
  loc_A0DBD4: BranchF loc_A0DBF1
  loc_A0DBD7: LitStr "Tercero"
  loc_A0DBDA: FLdPr Me
  loc_A0DBDD: VCallAd Control_ID_cboTrimestre
  loc_A0DBE0: FStAdFunc var_8C
  loc_A0DBE3: FLdPr var_8C
  loc_A0DBE6: Me.Text = from_stack_1
  loc_A0DBEB: FFree1Ad var_8C
  loc_A0DBEE: Branch loc_A0DC32
  loc_A0DBF1: FLdRfVar var_BC
  loc_A0DBF4: LitVarI2 var_CC, 10
  loc_A0DBF9: HardType
  loc_A0DBFA: EqVarBool
  loc_A0DBFC: BranchT loc_A0DC1B
  loc_A0DBFF: FLdRfVar var_BC
  loc_A0DC02: LitVarI2 var_DC, 11
  loc_A0DC07: HardType
  loc_A0DC08: EqVarBool
  loc_A0DC0A: BranchT loc_A0DC1B
  loc_A0DC0D: FLdRfVar var_BC
  loc_A0DC10: LitVarI2 var_EC, 12
  loc_A0DC15: HardType
  loc_A0DC16: EqVarBool
  loc_A0DC18: BranchF loc_A0DC32
  loc_A0DC1B: LitStr "Cuarto"
  loc_A0DC1E: FLdPr Me
  loc_A0DC21: VCallAd Control_ID_cboTrimestre
  loc_A0DC24: FStAdFunc var_8C
  loc_A0DC27: FLdPr var_8C
  loc_A0DC2A: Me.Text = from_stack_1
  loc_A0DC2F: FFree1Ad var_8C
  loc_A0DC32: Call HabilitarCriterio()
  loc_A0DC37: ILdRf Me
  loc_A0DC3A: CastAd
  loc_A0DC3D: FStAdFunc var_8C
  loc_A0DC40: FLdRfVar var_8C
  loc_A0DC43: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_A0DC48: FFree1Ad var_8C
  loc_A0DC4B: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '954608
  'Data Table: 45B658
  loc_9545F0: ILdRf Me
  loc_9545F3: CastAd
  loc_9545F6: FStAdFunc var_88
  loc_9545F9: FLdRfVar var_88
  loc_9545FC: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_954601: FFree1Ad var_88
  loc_954604: ExitProcHresult
End Sub

Private Sub cmdHtml_Click() '957E70
  'Data Table: 45B658
  loc_957E58: ILdRf Me
  loc_957E5B: CastAd
  loc_957E5E: FStAdFunc var_88
  loc_957E61: FLdRfVar var_88
  loc_957E64: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_957E69: FFree1Ad var_88
  loc_957E6C: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '959F18
  'Data Table: 45B658
  loc_959F00: LitI2_Byte &HFF
  loc_959F02: ILdRf Me
  loc_959F05: CastAd
  loc_959F08: FStAdFunc var_88
  loc_959F0B: FLdRfVar var_88
  loc_959F0E: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_959F13: FFree1Ad var_88
  loc_959F16: ExitProcHresult
End Sub

Private Sub Form_Load() 'A1AE5C
  'Data Table: 45B658
  loc_A1ACCC: LitI2_Byte &HFF
  loc_A1ACCE: ImpAdStI2 MemVar_C3D840
  loc_A1ACD1: ILdRf Me
  loc_A1ACD4: CastAd
  loc_A1ACD7: FStAdFunc var_8C
  loc_A1ACDA: FLdRfVar var_8C
  loc_A1ACDD: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A1ACE2: FFree1Ad var_8C
  loc_A1ACE5: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_A1ACE8: FLdRfVar var_88
  loc_A1ACEB: NewIfNullPr clsperiodo
  loc_A1ACEE: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A1ACF3: FLdRfVar var_90
  loc_A1ACF6: FLdRfVar var_88
  loc_A1ACF9: NewIfNullPr clsperiodo
  loc_A1ACFC: from_stack_1 = clsperiodo.RecordCount
  loc_A1AD01: ILdRf var_90
  loc_A1AD04: LitI4 0
  loc_A1AD09: GtI4
  loc_A1AD0A: BranchF loc_A1AD9D
  loc_A1AD0D: FLdRfVar var_88
  loc_A1AD10: NewIfNullPr clsperiodo
  loc_A1AD13: Call clsperiodo.MoveFirst()
  loc_A1AD18: FLdRfVar var_92
  loc_A1AD1B: FLdRfVar var_88
  loc_A1AD1E: NewIfNullPr clsperiodo
  loc_A1AD21: from_stack_1 = clsperiodo.EOF
  loc_A1AD26: FLdI2 var_92
  loc_A1AD29: NotI4
  loc_A1AD2A: BranchF loc_A1AD9D
  loc_A1AD2D: LitVar_Missing var_D0
  loc_A1AD30: PopAdLdVar
  loc_A1AD31: FLdRfVar var_BC
  loc_A1AD34: FLdRfVar var_AC
  loc_A1AD37: LitVarStr var_A8, "PeriInfo"
  loc_A1AD3C: PopAdLdVar
  loc_A1AD3D: FLdRfVar var_98
  loc_A1AD40: FLdRfVar var_8C
  loc_A1AD43: FLdRfVar var_88
  loc_A1AD46: NewIfNullPr clsperiodo
  loc_A1AD49: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A1AD4E: FLdPr var_8C
  loc_A1AD51:  = Me.Fields
  loc_A1AD56: FLdPr var_98
  loc_A1AD59: from_stack_2 = Me.Item(from_stack_1)
  loc_A1AD5E: FLdPr var_AC
  loc_A1AD61:  = Me.Value
  loc_A1AD66: FLdRfVar var_BC
  loc_A1AD69: CStrVarTmp
  loc_A1AD6A: FStStrNoPop var_C0
  loc_A1AD6D: FLdPr Me
  loc_A1AD70: VCallAd Control_ID_cboPeriodo
  loc_A1AD73: FStAdFunc var_D4
  loc_A1AD76: FLdPr var_D4
  loc_A1AD79: Me.AddItem from_stack_1, from_stack_2
  loc_A1AD7E: FFree1Str var_C0
  loc_A1AD81: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_A1AD8C: FFree1Var var_BC = ""
  loc_A1AD8F: FLdRfVar var_88
  loc_A1AD92: NewIfNullPr clsperiodo
  loc_A1AD95: Call clsperiodo.MoveSiguiente()
  loc_A1AD9A: Branch loc_A1AD18
  loc_A1AD9D: FLdPr Me
  loc_A1ADA0: VCallAd Control_ID_cboTrimestre
  loc_A1ADA3: FStAdFunc var_D8
  loc_A1ADA6: LitVar_Missing var_A8
  loc_A1ADA9: PopAdLdVar
  loc_A1ADAA: LitStr "Primero"
  loc_A1ADAD: FLdPr var_D8
  loc_A1ADB0: Me.AddItem from_stack_1, from_stack_2
  loc_A1ADB5: LitI4 1
  loc_A1ADBA: FLdRfVar var_92
  loc_A1ADBD: FLdPr var_D8
  loc_A1ADC0:  = Me.NewIndex
  loc_A1ADC5: FLdI2 var_92
  loc_A1ADC8: FLdPr var_D8
  loc_A1ADCB: Me.ItemData = from_stack_1
  loc_A1ADD0: LitVar_Missing var_A8
  loc_A1ADD3: PopAdLdVar
  loc_A1ADD4: LitStr "Segundo"
  loc_A1ADD7: FLdPr var_D8
  loc_A1ADDA: Me.AddItem from_stack_1, from_stack_2
  loc_A1ADDF: LitI4 2
  loc_A1ADE4: FLdRfVar var_92
  loc_A1ADE7: FLdPr var_D8
  loc_A1ADEA:  = Me.NewIndex
  loc_A1ADEF: FLdI2 var_92
  loc_A1ADF2: FLdPr var_D8
  loc_A1ADF5: Me.ItemData = from_stack_1
  loc_A1ADFA: LitVar_Missing var_A8
  loc_A1ADFD: PopAdLdVar
  loc_A1ADFE: LitStr "Tercero"
  loc_A1AE01: FLdPr var_D8
  loc_A1AE04: Me.AddItem from_stack_1, from_stack_2
  loc_A1AE09: LitI4 3
  loc_A1AE0E: FLdRfVar var_92
  loc_A1AE11: FLdPr var_D8
  loc_A1AE14:  = Me.NewIndex
  loc_A1AE19: FLdI2 var_92
  loc_A1AE1C: FLdPr var_D8
  loc_A1AE1F: Me.ItemData = from_stack_1
  loc_A1AE24: LitVar_Missing var_A8
  loc_A1AE27: PopAdLdVar
  loc_A1AE28: LitStr "Cuarto"
  loc_A1AE2B: FLdPr var_D8
  loc_A1AE2E: Me.AddItem from_stack_1, from_stack_2
  loc_A1AE33: LitI4 4
  loc_A1AE38: FLdRfVar var_92
  loc_A1AE3B: FLdPr var_D8
  loc_A1AE3E:  = Me.NewIndex
  loc_A1AE43: FLdI2 var_92
  loc_A1AE46: FLdPr var_D8
  loc_A1AE49: Me.ItemData = from_stack_1
  loc_A1AE4E: LitNothing
  loc_A1AE50: FStAd var_D8 
  loc_A1AE54: Call cmdNueva_Click()
  loc_A1AE59: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95A2A8
  'Data Table: 45B658
  loc_95A290: FLdPr Me
  loc_95A293: VCallAd Control_ID_wbbReporte
  loc_95A296: FStAdFunc var_88
  loc_95A299: FLdRfVar var_88
  loc_95A29C: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95A2A1: FFree1Ad var_88
  loc_95A2A4: ExitProcHresult
End Sub

Public Function htmFileGet() '45C3B8
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '45C3C7
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '45C3D6
  htmFile = Value
End Sub

Public Function bGeneradoGet() '45C3E5
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '45C3F4
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9922E0
  'Data Table: 45B658
  loc_99229C: LitI4 0
  loc_9922A1: LitI4 1
  loc_9922A6: FLdRfVar var_88
  loc_9922A9: Redim
  loc_9922B3: FLdPr Me
  loc_9922B6: VCallAd Control_ID_cboPeriodo
  loc_9922B9: CVarAd
  loc_9922BD: ParmAry1St
  loc_9922C3: FLdPr Me
  loc_9922C6: VCallAd Control_ID_cboTrimestre
  loc_9922C9: CVarAd
  loc_9922CD: ParmAry1St
  loc_9922D3: FLdRfVar var_88
  loc_9922D6: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9922DB: FLdRfVar var_88
  loc_9922DE: Erase
  loc_9922DF: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B0B8B4
  'Data Table: 45B658
  loc_B0B0EC: LitStr "Municipalidad de Guaymallén"
  loc_B0B0EF: LitStr "Municipalidad de Maipú"
  loc_B0B0F2: EqStr
  loc_B0B0F4: BranchF loc_B0B100
  loc_B0B0F7: LitStr "(cc.CodiTicu LIKE '22" & Chr(37) & "' OR cc.CodiTicu LIKE '218" & Chr(37) & "')"
  loc_B0B0FA: FStStrCopy var_90
  loc_B0B0FD: Branch loc_B0B16A
  loc_B0B100: LitStr "Municipalidad de Guaymallén"
  loc_B0B103: LitStr "Municipalidad de Malargüe"
  loc_B0B106: EqStr
  loc_B0B108: BranchF loc_B0B114
  loc_B0B10B: LitStr "(cc.CodiTicu LIKE '2123" & Chr(37) & "' OR cc.CodiTicu LIKE '2117" & Chr(37) & "')"
  loc_B0B10E: FStStrCopy var_90
  loc_B0B111: Branch loc_B0B16A
  loc_B0B114: LitStr "Municipalidad de Guaymallén"
  loc_B0B117: LitStr "Municipalidad de Lavalle"
  loc_B0B11A: EqStr
  loc_B0B11C: BranchF loc_B0B128
  loc_B0B11F: LitStr "(cc.CodiTicu LIKE '2123" & Chr(37) & "')"
  loc_B0B122: FStStrCopy var_90
  loc_B0B125: Branch loc_B0B16A
  loc_B0B128: LitStr "Municipalidad de Guaymallén"
  loc_B0B12B: LitStr "Municipalidad de Tupungato"
  loc_B0B12E: EqStr
  loc_B0B130: BranchF loc_B0B13C
  loc_B0B133: LitStr "(cc.CodiTicu LIKE '22" & Chr(37) & "' OR cc.CodiTicu LIKE '212" & Chr(37) & "')"
  loc_B0B136: FStStrCopy var_90
  loc_B0B139: Branch loc_B0B16A
  loc_B0B13C: LitStr "Municipalidad de Guaymallén"
  loc_B0B13F: LitStr "Municipalidad de Santa Rosa"
  loc_B0B142: EqStr
  loc_B0B144: BranchF loc_B0B150
  loc_B0B147: LitStr "(cc.CodiTicu = '2120' OR cc.CodiTicu = '2121' OR cc.CodiTicu = '2122' OR cc.CodiTicu = '2123' OR cc.CodiTicu = '2124' OR cc.CodiTicu LIKE '22" & Chr(37) & "')"
  loc_B0B14A: FStStrCopy var_90
  loc_B0B14D: Branch loc_B0B16A
  loc_B0B150: LitStr "Municipalidad de Guaymallén"
  loc_B0B153: LitStr "Municipalidad de La Paz"
  loc_B0B156: EqStr
  loc_B0B158: BranchF loc_B0B164
  loc_B0B15B: LitStr "(cc.CodiTicu LIKE '2" & Chr(37) & "')"
  loc_B0B15E: FStStrCopy var_90
  loc_B0B161: Branch loc_B0B16A
  loc_B0B164: LitStr "cc.CodiTicu LIKE '22" & Chr(37) & "'"
  loc_B0B167: FStStrCopy var_90
  loc_B0B16A: FLdPr Me
  loc_B0B16D: MemLdI2 bGenerado
  loc_B0B170: BranchF loc_B0B174
  loc_B0B173: ExitProcHresult
  loc_B0B174: LitVarStr var_A0, "Generando reporte..."
  loc_B0B179: PopAdLdVar
  loc_B0B17A: FLdPr Me
  loc_B0B17D: VCallAd Control_ID_statusBar
  loc_B0B180: FStAdFunc var_B4
  loc_B0B183: FLdPr var_B4
  loc_B0B186: LateIdSt
  loc_B0B18B: FFree1Ad var_B4
  loc_B0B18E: LitI4 &HB
  loc_B0B193: CI2I4
  loc_B0B194: FLdPr Me
  loc_B0B197: Me.MousePointer = from_stack_1
  loc_B0B19C: FLdPr Me
  loc_B0B19F: MemLdRfVar from_stack_1.global_72
  loc_B0B1A2: NewIfNullAd
  loc_B0B1A5: FStAd var_B8 
  loc_B0B1A9: FLdRfVar var_C4
  loc_B0B1AC: FLdRfVar var_BA
  loc_B0B1AF: FLdPr Me
  loc_B0B1B2: VCallAd Control_ID_cboTrimestre
  loc_B0B1B5: FStAdFunc var_B4
  loc_B0B1B8: FLdPr var_B4
  loc_B0B1BB:  = Me.ListIndex
  loc_B0B1C0: FLdI2 var_BA
  loc_B0B1C3: FLdPr Me
  loc_B0B1C6: VCallAd Control_ID_cboTrimestre
  loc_B0B1C9: FStAdFunc var_C0
  loc_B0B1CC: FLdPr var_C0
  loc_B0B1CF:  = Me.ItemData
  loc_B0B1D4: ILdRf var_C4
  loc_B0B1D7: LitI4 3
  loc_B0B1DC: MulI4
  loc_B0B1DD: CUI1I4
  loc_B0B1DF: FStUI1 var_88
  loc_B0B1E3: FFreeAd var_B4 = ""
  loc_B0B1EA: FLdUI1
  loc_B0B1EE: CI2UI1
  loc_B0B1F0: LitI2_Byte 2
  loc_B0B1F2: SubI2
  loc_B0B1F3: CUI1I2
  loc_B0B1F5: FStUI1 var_86
  loc_B0B1F9: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_B0B1FC: LitStr " CREATE TEMPORARY TABLE movi` ("
  loc_B0B1FF: ConcatStr
  loc_B0B200: FStStrNoPop var_C8
  loc_B0B203: LitStr " eriInfo` year(4) default NULL,"
  loc_B0B206: ConcatStr
  loc_B0B207: FStStrNoPop var_CC
  loc_B0B20A: LitStr " odiCuco` char(12) default '',"
  loc_B0B20D: ConcatStr
  loc_B0B20E: FStStrNoPop var_D0
  loc_B0B211: LitStr " oleAsie` char(50) default '',"
  loc_B0B214: ConcatStr
  loc_B0B215: FStStrNoPop var_D4
  loc_B0B218: LitStr " aldinitri` decimal(12,2) NOT NULL default '0',"
  loc_B0B21B: ConcatStr
  loc_B0B21C: FStStrNoPop var_D8
  loc_B0B21F: LitStr " agotri` decimal(12,2) NOT NULL default '0',"
  loc_B0B222: ConcatStr
  loc_B0B223: FStStrNoPop var_DC
  loc_B0B226: LitStr " eutri` decimal(12,2) NOT NULL default '0',"
  loc_B0B229: ConcatStr
  loc_B0B22A: FStStrNoPop var_E0
  loc_B0B22D: LitStr " artri` decimal(12,2) NOT NULL default '0'"
  loc_B0B230: ConcatStr
  loc_B0B231: FStStrNoPop var_E4
  loc_B0B234: LitStr " );"
  loc_B0B237: ConcatStr
  loc_B0B238: FStStrNoPop var_E8
  loc_B0B23B: FLdPr var_B8
  loc_B0B23E: Call clsbase.RedefineRS(from_stack_1v)
  loc_B0B243: FFreeStr var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_B0B258: FLdUI1
  loc_B0B25C: CI2UI1
  loc_B0B25E: LitI2_Byte 1
  loc_B0B260: EqI2
  loc_B0B261: BranchF loc_B0B303
  loc_B0B264: LitStr "INSERT tmovi (PeriInfo,CodiCuco,NoleAsie,saldinitri)"
  loc_B0B267: LitStr " SELECT ma.PeriInfo, ma.CodiCuco"
  loc_B0B26A: ConcatStr
  loc_B0B26B: FStStrNoPop var_C8
  loc_B0B26E: LitStr " , (SELECT Group_concat(Distinct a.NoleAsie) FROM asiento tmp WHERE tmp.PeriInfo = a.PeriInfo AND tmp.CodiAsie = a.CodiAsie) NoleAsie"
  loc_B0B271: ConcatStr
  loc_B0B272: FStStrNoPop var_CC
  loc_B0B275: LitStr " , SUM(HabeMoas)-SUM(DebeMoas)"
  loc_B0B278: ConcatStr
  loc_B0B279: FStStrNoPop var_D0
  loc_B0B27C: LitStr " FROM asiento a"
  loc_B0B27F: ConcatStr
  loc_B0B280: FStStrNoPop var_D4
  loc_B0B283: LitStr " INNER JOIN moviasiento ma ON ma.PeriInfo = a.PeriInfo AND ma.CodiAsie = a.CodiAsie"
  loc_B0B286: ConcatStr
  loc_B0B287: FStStrNoPop var_D8
  loc_B0B28A: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = ma.PeriInfo AND cc.CodiCuco = ma.CodiCuco"
  loc_B0B28D: ConcatStr
  loc_B0B28E: FStStrNoPop var_DC
  loc_B0B291: LitStr " AND "
  loc_B0B294: ConcatStr
  loc_B0B295: FStStrNoPop var_E0
  loc_B0B298: ILdRf var_90
  loc_B0B29B: ConcatStr
  loc_B0B29C: FStStrNoPop var_E4
  loc_B0B29F: LitStr " WHERE a.PeriInfo = "
  loc_B0B2A2: ConcatStr
  loc_B0B2A3: FStStrNoPop var_EC
  loc_B0B2A6: FLdRfVar var_E8
  loc_B0B2A9: FLdPr Me
  loc_B0B2AC: VCallAd Control_ID_cboPeriodo
  loc_B0B2AF: FStAdFunc var_B4
  loc_B0B2B2: FLdPr var_B4
  loc_B0B2B5:  = Me.Text
  loc_B0B2BA: ILdRf var_E8
  loc_B0B2BD: ConcatStr
  loc_B0B2BE: FStStrNoPop var_F0
  loc_B0B2C1: LitStr " AND (CodiTias = 17 OR CodiTias = 18)"
  loc_B0B2C4: ConcatStr
  loc_B0B2C5: FStStrNoPop var_F4
  loc_B0B2C8: LitStr " AND Month(a.FechAsie) <= 3"
  loc_B0B2CB: ConcatStr
  loc_B0B2CC: FStStrNoPop var_F8
  loc_B0B2CF: LitStr " GROUP BY ma.CodiCuco;"
  loc_B0B2D2: ConcatStr
  loc_B0B2D3: FStStrNoPop var_FC
  loc_B0B2D6: FLdPr var_B8
  loc_B0B2D9: Call clsbase.RedefineRS(from_stack_1v)
  loc_B0B2DE: FFreeStr var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_EC = "": var_E8 = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_B0B2FD: FFree1Ad var_B4
  loc_B0B300: Branch loc_B0B457
  loc_B0B303: LitStr "INSERT tmovi (PeriInfo,CodiCuco,NoleAsie,saldinitri)"
  loc_B0B306: LitStr " SELECT ma.PeriInfo, ma.CodiCuco"
  loc_B0B309: ConcatStr
  loc_B0B30A: FStStrNoPop var_C8
  loc_B0B30D: LitStr " , (SELECT Group_concat(Distinct a.NoleAsie) FROM asiento tmp WHERE tmp.PeriInfo = a.PeriInfo AND tmp.CodiAsie = a.CodiAsie) NoleAsie"
  loc_B0B310: ConcatStr
  loc_B0B311: FStStrNoPop var_CC
  loc_B0B314: LitStr " , SUM(HabeMoas)-SUM(DebeMoas)"
  loc_B0B317: ConcatStr
  loc_B0B318: FStStrNoPop var_D0
  loc_B0B31B: LitStr " FROM asiento a"
  loc_B0B31E: ConcatStr
  loc_B0B31F: FStStrNoPop var_D4
  loc_B0B322: LitStr " INNER JOIN moviasiento ma ON ma.PeriInfo = a.PeriInfo AND ma.CodiAsie = a.CodiAsie"
  loc_B0B325: ConcatStr
  loc_B0B326: FStStrNoPop var_D8
  loc_B0B329: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = ma.PeriInfo AND cc.CodiCuco = ma.CodiCuco"
  loc_B0B32C: ConcatStr
  loc_B0B32D: FStStrNoPop var_DC
  loc_B0B330: LitStr " AND "
  loc_B0B333: ConcatStr
  loc_B0B334: FStStrNoPop var_E0
  loc_B0B337: ILdRf var_90
  loc_B0B33A: ConcatStr
  loc_B0B33B: FStStrNoPop var_E4
  loc_B0B33E: LitStr " WHERE a.PeriInfo = "
  loc_B0B341: ConcatStr
  loc_B0B342: FStStrNoPop var_EC
  loc_B0B345: FLdRfVar var_E8
  loc_B0B348: FLdPr Me
  loc_B0B34B: VCallAd Control_ID_cboPeriodo
  loc_B0B34E: FStAdFunc var_B4
  loc_B0B351: FLdPr var_B4
  loc_B0B354:  = Me.Text
  loc_B0B359: ILdRf var_E8
  loc_B0B35C: ConcatStr
  loc_B0B35D: FStStrNoPop var_F0
  loc_B0B360: LitStr " AND Month(a.FechAsie) < "
  loc_B0B363: ConcatStr
  loc_B0B364: FStStrNoPop var_F4
  loc_B0B367: FLdUI1
  loc_B0B36B: CStrI2
  loc_B0B36D: FStStrNoPop var_F8
  loc_B0B370: ConcatStr
  loc_B0B371: FStStrNoPop var_FC
  loc_B0B374: LitStr " GROUP BY ma.CodiCuco;"
  loc_B0B377: ConcatStr
  loc_B0B378: FStStrNoPop var_100
  loc_B0B37B: FLdPr var_B8
  loc_B0B37E: Call clsbase.RedefineRS(from_stack_1v)
  loc_B0B383: FFreeStr var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_EC = "": var_E8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_B0B3A4: FFree1Ad var_B4
  loc_B0B3A7: LitStr "Municipalidad de Guaymallén"
  loc_B0B3AA: FStStrCopy var_104
  loc_B0B3AD: ILdRf var_104
  loc_B0B3B0: LitStr "Municipalidad de La Paz"
  loc_B0B3B3: EqStr
  loc_B0B3B5: BranchT loc_B0B3CE
  loc_B0B3B8: ILdRf var_104
  loc_B0B3BB: LitStr "Municipalidad de Santa Rosa"
  loc_B0B3BE: EqStr
  loc_B0B3C0: BranchT loc_B0B3CE
  loc_B0B3C3: ILdRf var_104
  loc_B0B3C6: LitStr "Municipalidad de Malargüe"
  loc_B0B3C9: EqStr
  loc_B0B3CB: BranchF loc_B0B457
  loc_B0B3CE: LitStr "INSERT tmovi (PeriInfo,CodiCuco,NoleAsie,saldinitri)"
  loc_B0B3D1: LitStr " SELECT i.PeriInfo, p.CodiCuco, '' NoleAsie, SUM(DeveImpu-PagaImpu) saldinitri"
  loc_B0B3D4: ConcatStr
  loc_B0B3D5: FStStrNoPop var_C8
  loc_B0B3D8: LitStr " FROM imputacion i"
  loc_B0B3DB: ConcatStr
  loc_B0B3DC: FStStrNoPop var_CC
  loc_B0B3DF: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_B0B3E2: ConcatStr
  loc_B0B3E3: FStStrNoPop var_D0
  loc_B0B3E6: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = p.PeriInfo AND cc.CodiCuco = p.CodiCuco"
  loc_B0B3E9: ConcatStr
  loc_B0B3EA: FStStrNoPop var_D4
  loc_B0B3ED: LitStr " WHERE i.PeriInfo = "
  loc_B0B3F0: ConcatStr
  loc_B0B3F1: FStStrNoPop var_DC
  loc_B0B3F4: FLdRfVar var_D8
  loc_B0B3F7: FLdPr Me
  loc_B0B3FA: VCallAd Control_ID_cboPeriodo
  loc_B0B3FD: FStAdFunc var_B4
  loc_B0B400: FLdPr var_B4
  loc_B0B403:  = Me.Text
  loc_B0B408: ILdRf var_D8
  loc_B0B40B: ConcatStr
  loc_B0B40C: FStStrNoPop var_E0
  loc_B0B40F: LitStr " AND MONTH(FechImpu) < "
  loc_B0B412: ConcatStr
  loc_B0B413: FStStrNoPop var_E4
  loc_B0B416: FLdUI1
  loc_B0B41A: CStrI2
  loc_B0B41C: FStStrNoPop var_E8
  loc_B0B41F: ConcatStr
  loc_B0B420: FStStrNoPop var_EC
  loc_B0B423: LitStr " AND i.CodiPart LIKE '6" & Chr(37) & "'"
  loc_B0B426: ConcatStr
  loc_B0B427: FStStrNoPop var_F0
  loc_B0B42A: LitStr " GROUP BY p.CodiCuco;"
  loc_B0B42D: ConcatStr
  loc_B0B42E: FStStrNoPop var_F4
  loc_B0B431: FLdPr var_B8
  loc_B0B434: Call clsbase.RedefineRS(from_stack_1v)
  loc_B0B439: FFreeStr var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_DC = "": var_D8 = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_B0B454: FFree1Ad var_B4
  loc_B0B457: LitStr "INSERT tmovi (PeriInfo,CodiCuco,NoleAsie,pagotri,deutri)"
  loc_B0B45A: LitStr " SELECT ma.PeriInfo, ma.CodiCuco"
  loc_B0B45D: ConcatStr
  loc_B0B45E: FStStrNoPop var_C8
  loc_B0B461: LitStr " , (SELECT Group_concat(Distinct a.NoleAsie) FROM asiento tmp WHERE tmp.PeriInfo = a.PeriInfo AND tmp.CodiAsie = a.CodiAsie) NoleAsie"
  loc_B0B464: ConcatStr
  loc_B0B465: FStStrNoPop var_CC
  loc_B0B468: LitStr "/* , IF(SUM(DebeMoas)-SUM(HabeMoas)>0,SUM(DebeMoas)-SUM(HabeMoas),0)"
  loc_B0B46B: ConcatStr
  loc_B0B46C: FStStrNoPop var_D0
  loc_B0B46F: LitStr " , IF(SUM(HabeMoas)-SUM(DebeMoas)>0,SUM(HabeMoas)-SUM(DebeMoas),0)"
  loc_B0B472: ConcatStr
  loc_B0B473: FStStrNoPop var_D4
  loc_B0B476: LitStr "*/ , SUM(DebeMoas) pagotri"
  loc_B0B479: ConcatStr
  loc_B0B47A: FStStrNoPop var_D8
  loc_B0B47D: LitStr " , SUM(HabeMoas) deutri"
  loc_B0B480: ConcatStr
  loc_B0B481: FStStrNoPop var_DC
  loc_B0B484: LitStr " FROM asiento a"
  loc_B0B487: ConcatStr
  loc_B0B488: FStStrNoPop var_E0
  loc_B0B48B: LitStr " INNER JOIN moviasiento ma ON ma.PeriInfo = a.PeriInfo AND ma.CodiAsie = a.CodiAsie"
  loc_B0B48E: ConcatStr
  loc_B0B48F: FStStrNoPop var_E4
  loc_B0B492: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = ma.PeriInfo AND cc.CodiCuco = ma.CodiCuco"
  loc_B0B495: ConcatStr
  loc_B0B496: FStStrNoPop var_E8
  loc_B0B499: LitStr " AND "
  loc_B0B49C: ConcatStr
  loc_B0B49D: FStStrNoPop var_EC
  loc_B0B4A0: ILdRf var_90
  loc_B0B4A3: ConcatStr
  loc_B0B4A4: FStStrNoPop var_F0
  loc_B0B4A7: LitStr " WHERE a.PeriInfo = "
  loc_B0B4AA: ConcatStr
  loc_B0B4AB: FStStrNoPop var_F8
  loc_B0B4AE: FLdRfVar var_F4
  loc_B0B4B1: FLdPr Me
  loc_B0B4B4: VCallAd Control_ID_cboPeriodo
  loc_B0B4B7: FStAdFunc var_B4
  loc_B0B4BA: FLdPr var_B4
  loc_B0B4BD:  = Me.Text
  loc_B0B4C2: ILdRf var_F4
  loc_B0B4C5: ConcatStr
  loc_B0B4C6: FStStrNoPop var_FC
  loc_B0B4C9: LitStr " AND Month(a.FechAsie) BETWEEN "
  loc_B0B4CC: ConcatStr
  loc_B0B4CD: FStStrNoPop var_100
  loc_B0B4D0: FLdUI1
  loc_B0B4D4: CStrI2
  loc_B0B4D6: FStStrNoPop var_108
  loc_B0B4D9: ConcatStr
  loc_B0B4DA: FStStrNoPop var_10C
  loc_B0B4DD: LitStr " AND "
  loc_B0B4E0: ConcatStr
  loc_B0B4E1: FStStrNoPop var_110
  loc_B0B4E4: FLdUI1
  loc_B0B4E8: CStrI2
  loc_B0B4EA: FStStrNoPop var_114
  loc_B0B4ED: ConcatStr
  loc_B0B4EE: FStStrNoPop var_118
  loc_B0B4F1: LitStr " AND NOT (CodiTias = 17 OR CodiTias = 18 OR CodiTias = 25)"
  loc_B0B4F4: ConcatStr
  loc_B0B4F5: FStStrNoPop var_11C
  loc_B0B4F8: LitStr " GROUP BY ma.CodiCuco;"
  loc_B0B4FB: ConcatStr
  loc_B0B4FC: FStStrNoPop var_120
  loc_B0B4FF: FLdPr var_B8
  loc_B0B502: Call clsbase.RedefineRS(from_stack_1v)
  loc_B0B507: FFreeStr var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F8 = "": var_F4 = "": var_FC = "": var_100 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_B0B536: FFree1Ad var_B4
  loc_B0B539: LitStr "Municipalidad de Guaymallén"
  loc_B0B53C: FStStrCopy var_124
  loc_B0B53F: ILdRf var_124
  loc_B0B542: LitStr "Municipalidad de La Paz"
  loc_B0B545: EqStr
  loc_B0B547: BranchT loc_B0B560
  loc_B0B54A: ILdRf var_124
  loc_B0B54D: LitStr "Municipalidad de Santa Rosa"
  loc_B0B550: EqStr
  loc_B0B552: BranchT loc_B0B560
  loc_B0B555: ILdRf var_124
  loc_B0B558: LitStr "Municipalidad de Malargüe"
  loc_B0B55B: EqStr
  loc_B0B55D: BranchF loc_B0B603
  loc_B0B560: LitStr "INSERT tmovi (PeriInfo,CodiCuco,NoleAsie,pagotri,deutri)"
  loc_B0B563: LitStr " SELECT i.PeriInfo, p.CodiCuco, '' NoleAsie, SUM(PagaImpu) pagotri, SUM(DeveImpu) deutri"
  loc_B0B566: ConcatStr
  loc_B0B567: FStStrNoPop var_C8
  loc_B0B56A: LitStr " FROM imputacion i"
  loc_B0B56D: ConcatStr
  loc_B0B56E: FStStrNoPop var_CC
  loc_B0B571: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_B0B574: ConcatStr
  loc_B0B575: FStStrNoPop var_D0
  loc_B0B578: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = p.PeriInfo AND cc.CodiCuco = p.CodiCuco"
  loc_B0B57B: ConcatStr
  loc_B0B57C: FStStrNoPop var_D4
  loc_B0B57F: LitStr " WHERE i.PeriInfo = "
  loc_B0B582: ConcatStr
  loc_B0B583: FStStrNoPop var_DC
  loc_B0B586: FLdRfVar var_D8
  loc_B0B589: FLdPr Me
  loc_B0B58C: VCallAd Control_ID_cboPeriodo
  loc_B0B58F: FStAdFunc var_B4
  loc_B0B592: FLdPr var_B4
  loc_B0B595:  = Me.Text
  loc_B0B59A: ILdRf var_D8
  loc_B0B59D: ConcatStr
  loc_B0B59E: FStStrNoPop var_E0
  loc_B0B5A1: LitStr " AND MONTH(FechImpu) BETWEEN "
  loc_B0B5A4: ConcatStr
  loc_B0B5A5: FStStrNoPop var_E4
  loc_B0B5A8: FLdUI1
  loc_B0B5AC: CStrI2
  loc_B0B5AE: FStStrNoPop var_E8
  loc_B0B5B1: ConcatStr
  loc_B0B5B2: FStStrNoPop var_EC
  loc_B0B5B5: LitStr " AND "
  loc_B0B5B8: ConcatStr
  loc_B0B5B9: FStStrNoPop var_F0
  loc_B0B5BC: FLdUI1
  loc_B0B5C0: CStrI2
  loc_B0B5C2: FStStrNoPop var_F4
  loc_B0B5C5: ConcatStr
  loc_B0B5C6: FStStrNoPop var_F8
  loc_B0B5C9: LitStr " AND i.CodiPart LIKE '6" & Chr(37) & "'"
  loc_B0B5CC: ConcatStr
  loc_B0B5CD: FStStrNoPop var_FC
  loc_B0B5D0: LitStr " GROUP BY p.CodiCuco;"
  loc_B0B5D3: ConcatStr
  loc_B0B5D4: FStStrNoPop var_100
  loc_B0B5D7: FLdPr var_B8
  loc_B0B5DA: Call clsbase.RedefineRS(from_stack_1v)
  loc_B0B5DF: FFreeStr var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_DC = "": var_D8 = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_B0B600: FFree1Ad var_B4
  loc_B0B603: LitStr "SELECT tmovi.CodiCuco, DetaCuco, cc.CodiTicu, DetaTicu"
  loc_B0B606: LitStr " , Group_concat(Distinct tmovi.NoleAsie) NoleAsie"
  loc_B0B609: ConcatStr
  loc_B0B60A: FStStrNoPop var_C8
  loc_B0B60D: LitStr " , Sum(saldinitri) SaldIniTri, Sum(pagotri) PagoTri, Sum(deutri) DeuTri, Sum(deutri)-Sum(pagotri) VarTri, Sum(saldinitri)-Sum(pagotri)+Sum(deutri)+Sum(vartri) SaldFinTri"
  loc_B0B610: ConcatStr
  loc_B0B611: FStStrNoPop var_CC
  loc_B0B614: LitStr " FROM tmovi"
  loc_B0B617: ConcatStr
  loc_B0B618: FStStrNoPop var_D0
  loc_B0B61B: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = tmovi.PeriInfo AND cc.CodiCuco = tmovi.CodiCuco"
  loc_B0B61E: ConcatStr
  loc_B0B61F: FStStrNoPop var_D4
  loc_B0B622: LitStr " INNER JOIN tipocuco tc ON tc.CodiTicu = cc.CodiTicu"
  loc_B0B625: ConcatStr
  loc_B0B626: FStStrNoPop var_D8
  loc_B0B629: LitStr " GROUP BY tmovi.CodiCuco;"
  loc_B0B62C: ConcatStr
  loc_B0B62D: FStStrNoPop var_DC
  loc_B0B630: FLdPr var_B8
  loc_B0B633: Call clsbase.RedefineRS(from_stack_1v)
  loc_B0B638: FFreeStr var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B0B647: FLdRfVar var_C4
  loc_B0B64A: FLdPr var_B8
  loc_B0B64D: from_stack_1 = clsbase.RecordCount
  loc_B0B652: ILdRf var_C4
  loc_B0B655: LitI4 1
  loc_B0B65A: LtI4
  loc_B0B65B: BranchF loc_B0B66B
  loc_B0B65E: LitI4 0
  loc_B0B663: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B0B666: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B0B66B: LitI4 1
  loc_B0B670: LitI4 1
  loc_B0B675: FLdPr Me
  loc_B0B678: MemLdRfVar from_stack_1.global_96
  loc_B0B67B: Redim
  loc_B0B685: LitI2_Byte 0
  loc_B0B687: FLdPr Me
  loc_B0B68A: MemStI2 global_100
  loc_B0B68D: LitI4 1
  loc_B0B692: LitI4 1
  loc_B0B697: FLdPr Me
  loc_B0B69A: MemLdRfVar from_stack_1.global_104
  loc_B0B69D: Redim
  loc_B0B6A7: FLdPr var_B8
  loc_B0B6AA: Call clsbase.MoveFirst()
  loc_B0B6AF: Call Proc_165_19_A13928()
  loc_B0B6B4: FLdRfVar var_C4
  loc_B0B6B7: FLdPr var_B8
  loc_B0B6BA: from_stack_1 = clsbase.RecordCount
  loc_B0B6BF: ILdRf var_C4
  loc_B0B6C2: LitI4 0
  loc_B0B6C7: GtI4
  loc_B0B6C8: BranchF loc_B0B74B
  loc_B0B6CB: FLdRfVar var_BA
  loc_B0B6CE: FLdPr var_B8
  loc_B0B6D1: from_stack_1 = clsbase.EOF
  loc_B0B6D6: FLdI2 var_BA
  loc_B0B6D9: NotI4
  loc_B0B6DA: BranchF loc_B0B748
  loc_B0B6DD: FLdRfVar var_138
  loc_B0B6E0: FLdRfVar var_128
  loc_B0B6E3: LitVarStr var_A0, "CodiTicu"
  loc_B0B6E8: PopAdLdVar
  loc_B0B6E9: FLdRfVar var_C0
  loc_B0B6EC: FLdRfVar var_B4
  loc_B0B6EF: FLdPr var_B8
  loc_B0B6F2: from_stack_1v = clsbase.RsFrmGet()
  loc_B0B6F7: FLdPr var_B4
  loc_B0B6FA:  = Me.Fields
  loc_B0B6FF: FLdPr var_C0
  loc_B0B702: from_stack_2 = Me.Item(from_stack_1)
  loc_B0B707: FLdPr var_128
  loc_B0B70A:  = Me.Value
  loc_B0B70F: FLdRfVar var_138
  loc_B0B712: FLdPr Me
  loc_B0B715: MemLdI2 global_100
  loc_B0B718: CI4UI1
  loc_B0B719: FLdPr Me
  loc_B0B71C: MemLdStr global_96
  loc_B0B71F: Ary1LdPr
  loc_B0B720: MemLdStr global_0
  loc_B0B723: CVarStr var_B0
  loc_B0B726: HardType
  loc_B0B727: NeVarBool
  loc_B0B729: FFreeAd var_B4 = "": var_C0 = ""
  loc_B0B732: FFree1Var var_138 = ""
  loc_B0B735: BranchF loc_B0B740
  loc_B0B738: Call Proc_165_19_A13928()
  loc_B0B73D: Branch loc_B0B745
  loc_B0B740: Call Proc_165_20_AF052C()
  loc_B0B745: Branch loc_B0B6CB
  loc_B0B748: Branch loc_B0B750
  loc_B0B74B: Call Proc_165_20_AF052C()
  loc_B0B750: LitNothing
  loc_B0B752: FStAd var_B8 
  loc_B0B756: LitI2_Byte 1
  loc_B0B758: FLdPr Me
  loc_B0B75B: MemLdRfVar from_stack_1.global_100
  loc_B0B75E: FLdPr Me
  loc_B0B761: MemLdStr global_96
  loc_B0B764: LitI2_Byte 1
  loc_B0B766: FnUBound
  loc_B0B768: CI2I4
  loc_B0B769: ForI2 var_14C
  loc_B0B76F: FLdPr Me
  loc_B0B772: MemLdI2 global_100
  loc_B0B775: CI4UI1
  loc_B0B776: FLdPr Me
  loc_B0B779: MemLdStr global_96
  loc_B0B77C: AryLock
  loc_B0B77F: Ary1LdPr
  loc_B0B780: MemLdRfVar from_stack_1.global_12
  loc_B0B783: FStR4 var_154
  loc_B0B786: LitI2_Byte 0
  loc_B0B788: LitI4 1
  loc_B0B78D: FLdPr Me
  loc_B0B790: MemLdStr global_104
  loc_B0B793: AryLock
  loc_B0B796: Ary1LdPr
  loc_B0B797: MemLdRfVar from_stack_1.global_8
  loc_B0B79A: CVarRef
  loc_B0B79F: LitI2_Byte &HFF
  loc_B0B7A1: FMemLdR4 var_154(8)
  loc_B0B7A6: CVarStr var_A0
  loc_B0B7A9: PopAdLdVar
  loc_B0B7AA: FLdRfVar var_8C
  loc_B0B7AD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0B7B2: AryUnlock
  loc_B0B7B5: LitI2_Byte 0
  loc_B0B7B7: LitI4 1
  loc_B0B7BC: FLdPr Me
  loc_B0B7BF: MemLdStr global_104
  loc_B0B7C2: AryLock
  loc_B0B7C5: Ary1LdPr
  loc_B0B7C6: MemLdRfVar from_stack_1.global_12
  loc_B0B7C9: CVarRef
  loc_B0B7CE: LitI2_Byte &HFF
  loc_B0B7D0: FMemLdR4 var_154(12)
  loc_B0B7D5: CVarStr var_A0
  loc_B0B7D8: PopAdLdVar
  loc_B0B7D9: FLdRfVar var_8C
  loc_B0B7DC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0B7E1: AryUnlock
  loc_B0B7E4: LitI2_Byte 0
  loc_B0B7E6: LitI4 1
  loc_B0B7EB: FLdPr Me
  loc_B0B7EE: MemLdStr global_104
  loc_B0B7F1: AryLock
  loc_B0B7F4: Ary1LdPr
  loc_B0B7F5: MemLdRfVar from_stack_1.global_16
  loc_B0B7F8: CVarRef
  loc_B0B7FD: LitI2_Byte &HFF
  loc_B0B7FF: FMemLdR4 var_154(16)
  loc_B0B804: CVarStr var_A0
  loc_B0B807: PopAdLdVar
  loc_B0B808: FLdRfVar var_8C
  loc_B0B80B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0B810: AryUnlock
  loc_B0B813: LitI2_Byte 0
  loc_B0B815: LitI4 1
  loc_B0B81A: FLdPr Me
  loc_B0B81D: MemLdStr global_104
  loc_B0B820: AryLock
  loc_B0B823: Ary1LdPr
  loc_B0B824: MemLdRfVar from_stack_1.global_20
  loc_B0B827: CVarRef
  loc_B0B82C: LitI2_Byte &HFF
  loc_B0B82E: FMemLdR4 var_154(20)
  loc_B0B833: CVarStr var_A0
  loc_B0B836: PopAdLdVar
  loc_B0B837: FLdRfVar var_8C
  loc_B0B83A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0B83F: AryUnlock
  loc_B0B842: LitI2_Byte 0
  loc_B0B844: LitI4 1
  loc_B0B849: FLdPr Me
  loc_B0B84C: MemLdStr global_104
  loc_B0B84F: AryLock
  loc_B0B852: Ary1LdPr
  loc_B0B853: MemLdRfVar from_stack_1.global_24
  loc_B0B856: CVarRef
  loc_B0B85B: LitI2_Byte &HFF
  loc_B0B85D: FMemLdR4 var_154(24)
  loc_B0B862: CVarStr var_A0
  loc_B0B865: PopAdLdVar
  loc_B0B866: FLdRfVar var_8C
  loc_B0B869: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0B86E: AryUnlock
  loc_B0B871: LitI4 0
  loc_B0B876: FStR4 var_154
  loc_B0B879: AryUnlock
  loc_B0B87C: FLdPr Me
  loc_B0B87F: MemLdRfVar from_stack_1.global_100
  loc_B0B882: NextI2 var_14C, loc_B0B76F
  loc_B0B887: LitI2_Byte &HFF
  loc_B0B889: FLdPr Me
  loc_B0B88C: MemStI2 bGenerado
  loc_B0B88F: LitI2_Byte 0
  loc_B0B891: FLdPr Me
  loc_B0B894: Me.MousePointer = from_stack_1
  loc_B0B899: LitVarStr var_A0, vbNullString
  loc_B0B89E: PopAdLdVar
  loc_B0B89F: FLdPr Me
  loc_B0B8A2: VCallAd Control_ID_statusBar
  loc_B0B8A5: FStAdFunc var_B4
  loc_B0B8A8: FLdPr var_B4
  loc_B0B8AB: LateIdSt
  loc_B0B8B0: FFree1Ad var_B4
  loc_B0B8B3: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AC8A0C
  'Data Table: 45B658
  loc_AC83F8: FLdRfVar var_88
  loc_AC83FB: LitI2_Byte 0
  loc_AC83FD: LitI2_Byte &HFF
  loc_AC83FF: ImpAdLdI4 MemVar_C3D83C
  loc_AC8402: FLdPr Me
  loc_AC8405: MemLdRfVar from_stack_1.global_76
  loc_AC8408: NewIfNullPr IFileSystem3
  loc_AC840B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AC8410: ILdRf var_88
  loc_AC8413: FLdPr Me
  loc_AC8416: MemStVarAd
  loc_AC841A: FFree1Ad var_88
  loc_AC841D: Call Proc_165_21_ADF5D0()
  loc_AC8422: LitI2_Byte 1
  loc_AC8424: FLdPr Me
  loc_AC8427: MemLdRfVar from_stack_1.global_100
  loc_AC842A: FLdPr Me
  loc_AC842D: MemLdStr global_96
  loc_AC8430: LitI2_Byte 1
  loc_AC8432: FnUBound
  loc_AC8434: CI2I4
  loc_AC8435: ForI2 var_8C
  loc_AC843B: LitVarStr var_9C, "  <tr align=""left"" class=""Encabezado"">"
  loc_AC8440: PopAdLdVar
  loc_AC8441: FLdPr Me
  loc_AC8444: MemLdRfVar from_stack_1.htmFile
  loc_AC8447: LdPrVar
  loc_AC8449: LateMemCall
  loc_AC844F: LitStr "    <td colspan=""12"">"
  loc_AC8452: FLdPr Me
  loc_AC8455: MemLdI2 global_100
  loc_AC8458: CI4UI1
  loc_AC8459: FLdPr Me
  loc_AC845C: MemLdStr global_96
  loc_AC845F: Ary1LdPr
  loc_AC8460: MemLdStr global_0
  loc_AC8463: ConcatStr
  loc_AC8464: FStStrNoPop var_B0
  loc_AC8467: LitStr " - "
  loc_AC846A: ConcatStr
  loc_AC846B: FStStrNoPop var_B4
  loc_AC846E: FLdPr Me
  loc_AC8471: MemLdI2 global_100
  loc_AC8474: CI4UI1
  loc_AC8475: FLdPr Me
  loc_AC8478: MemLdStr global_96
  loc_AC847B: Ary1LdPr
  loc_AC847C: MemLdStr global_4
  loc_AC847F: ConcatStr
  loc_AC8480: FStStrNoPop var_B8
  loc_AC8483: LitStr "</td>"
  loc_AC8486: ConcatStr
  loc_AC8487: CVarStr var_C8
  loc_AC848A: PopAdLdVar
  loc_AC848B: FLdPr Me
  loc_AC848E: MemLdRfVar from_stack_1.htmFile
  loc_AC8491: LdPrVar
  loc_AC8493: LateMemCall
  loc_AC8499: FFreeStr var_B0 = "": var_B4 = ""
  loc_AC84A2: FFree1Var var_C8 = ""
  loc_AC84A5: LitVarStr var_9C, "     </tr>"
  loc_AC84AA: PopAdLdVar
  loc_AC84AB: FLdPr Me
  loc_AC84AE: MemLdRfVar from_stack_1.htmFile
  loc_AC84B1: LdPrVar
  loc_AC84B3: LateMemCall
  loc_AC84B9: LitI2_Byte 1
  loc_AC84BB: FLdPr Me
  loc_AC84BE: MemLdRfVar from_stack_1.global_102
  loc_AC84C1: FLdPr Me
  loc_AC84C4: MemLdI2 global_100
  loc_AC84C7: CI4UI1
  loc_AC84C8: FLdPr Me
  loc_AC84CB: MemLdStr global_96
  loc_AC84CE: Ary1LdPr
  loc_AC84CF: MemLdStr global_8
  loc_AC84D2: LitI2_Byte 1
  loc_AC84D4: FnUBound
  loc_AC84D6: CI2I4
  loc_AC84D7: ForI2 var_CC
  loc_AC84DD: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AC84E2: PopAdLdVar
  loc_AC84E3: FLdPr Me
  loc_AC84E6: MemLdRfVar from_stack_1.htmFile
  loc_AC84E9: LdPrVar
  loc_AC84EB: LateMemCall
  loc_AC84F1: FLdPr Me
  loc_AC84F4: MemLdI2 global_102
  loc_AC84F7: CI4UI1
  loc_AC84F8: FLdPr Me
  loc_AC84FB: MemLdI2 global_100
  loc_AC84FE: CI4UI1
  loc_AC84FF: FLdPr Me
  loc_AC8502: MemLdStr global_96
  loc_AC8505: AryLock
  loc_AC8508: Ary1LdPr
  loc_AC8509: MemLdStr global_8
  loc_AC850C: AryLock
  loc_AC850F: Ary1LdRf
  loc_AC8510: FStR4 var_D8
  loc_AC8513: LitI4 0
  loc_AC8518: LitI4 0
  loc_AC851D: LitI2_Byte 0
  loc_AC851F: LitStr "left"
  loc_AC8522: FMemLdR4 var_D8(0)
  loc_AC8527: LitStr " - "
  loc_AC852A: ConcatStr
  loc_AC852B: FStStrNoPop var_B0
  loc_AC852E: FMemLdR4 var_D8(4)
  loc_AC8533: ConcatStr
  loc_AC8534: FStStrNoPop var_B4
  loc_AC8537: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC853C: CVarStr var_C8
  loc_AC853F: PopAdLdVar
  loc_AC8540: FLdPr Me
  loc_AC8543: MemLdRfVar from_stack_1.htmFile
  loc_AC8546: LdPrVar
  loc_AC8548: LateMemCall
  loc_AC854E: FFreeStr var_B0 = ""
  loc_AC8555: FFree1Var var_C8 = ""
  loc_AC8558: LitI4 0
  loc_AC855D: LitI4 0
  loc_AC8562: LitI2_Byte 0
  loc_AC8564: LitStr "right"
  loc_AC8567: FMemLdR4 var_D8(8)
  loc_AC856C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC8571: CVarStr var_C8
  loc_AC8574: PopAdLdVar
  loc_AC8575: FLdPr Me
  loc_AC8578: MemLdRfVar from_stack_1.htmFile
  loc_AC857B: LdPrVar
  loc_AC857D: LateMemCall
  loc_AC8583: FFree1Var var_C8 = ""
  loc_AC8586: LitI4 0
  loc_AC858B: LitI4 0
  loc_AC8590: LitI2_Byte 0
  loc_AC8592: LitStr "right"
  loc_AC8595: FMemLdR4 var_D8(12)
  loc_AC859A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC859F: CVarStr var_C8
  loc_AC85A2: PopAdLdVar
  loc_AC85A3: FLdPr Me
  loc_AC85A6: MemLdRfVar from_stack_1.htmFile
  loc_AC85A9: LdPrVar
  loc_AC85AB: LateMemCall
  loc_AC85B1: FFree1Var var_C8 = ""
  loc_AC85B4: LitI4 0
  loc_AC85B9: LitI4 0
  loc_AC85BE: LitI2_Byte 0
  loc_AC85C0: LitStr "right"
  loc_AC85C3: FMemLdR4 var_D8(16)
  loc_AC85C8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC85CD: CVarStr var_C8
  loc_AC85D0: PopAdLdVar
  loc_AC85D1: FLdPr Me
  loc_AC85D4: MemLdRfVar from_stack_1.htmFile
  loc_AC85D7: LdPrVar
  loc_AC85D9: LateMemCall
  loc_AC85DF: FFree1Var var_C8 = ""
  loc_AC85E2: LitI4 0
  loc_AC85E7: LitI4 0
  loc_AC85EC: LitI2_Byte 0
  loc_AC85EE: LitStr "right"
  loc_AC85F1: FMemLdR4 var_D8(20)
  loc_AC85F6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC85FB: CVarStr var_C8
  loc_AC85FE: PopAdLdVar
  loc_AC85FF: FLdPr Me
  loc_AC8602: MemLdRfVar from_stack_1.htmFile
  loc_AC8605: LdPrVar
  loc_AC8607: LateMemCall
  loc_AC860D: FFree1Var var_C8 = ""
  loc_AC8610: LitI4 0
  loc_AC8615: LitI4 0
  loc_AC861A: LitI2_Byte 0
  loc_AC861C: LitStr "right"
  loc_AC861F: FMemLdR4 var_D8(24)
  loc_AC8624: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC8629: CVarStr var_C8
  loc_AC862C: PopAdLdVar
  loc_AC862D: FLdPr Me
  loc_AC8630: MemLdRfVar from_stack_1.htmFile
  loc_AC8633: LdPrVar
  loc_AC8635: LateMemCall
  loc_AC863B: FFree1Var var_C8 = ""
  loc_AC863E: LitI4 0
  loc_AC8643: LitI4 0
  loc_AC8648: LitI2_Byte 0
  loc_AC864A: LitStr "center"
  loc_AC864D: FMemLdR4 var_D8(28)
  loc_AC8652: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC8657: CVarStr var_C8
  loc_AC865A: PopAdLdVar
  loc_AC865B: FLdPr Me
  loc_AC865E: MemLdRfVar from_stack_1.htmFile
  loc_AC8661: LdPrVar
  loc_AC8663: LateMemCall
  loc_AC8669: FFree1Var var_C8 = ""
  loc_AC866C: LitI4 0
  loc_AC8671: LitI4 0
  loc_AC8676: LitI2_Byte 0
  loc_AC8678: LitStr "center"
  loc_AC867B: FMemLdR4 var_D8(32)
  loc_AC8680: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC8685: CVarStr var_C8
  loc_AC8688: PopAdLdVar
  loc_AC8689: FLdPr Me
  loc_AC868C: MemLdRfVar from_stack_1.htmFile
  loc_AC868F: LdPrVar
  loc_AC8691: LateMemCall
  loc_AC8697: FFree1Var var_C8 = ""
  loc_AC869A: LitI4 0
  loc_AC869F: LitI4 0
  loc_AC86A4: LitI2_Byte 0
  loc_AC86A6: LitStr "center"
  loc_AC86A9: FMemLdR4 var_D8(36)
  loc_AC86AE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC86B3: CVarStr var_C8
  loc_AC86B6: PopAdLdVar
  loc_AC86B7: FLdPr Me
  loc_AC86BA: MemLdRfVar from_stack_1.htmFile
  loc_AC86BD: LdPrVar
  loc_AC86BF: LateMemCall
  loc_AC86C5: FFree1Var var_C8 = ""
  loc_AC86C8: LitI4 0
  loc_AC86CD: FStR4 var_D8
  loc_AC86D0: AryUnlock
  loc_AC86D3: AryUnlock
  loc_AC86D6: LitVarStr var_9C, "     </tr>"
  loc_AC86DB: PopAdLdVar
  loc_AC86DC: FLdPr Me
  loc_AC86DF: MemLdRfVar from_stack_1.htmFile
  loc_AC86E2: LdPrVar
  loc_AC86E4: LateMemCall
  loc_AC86EA: FLdPr Me
  loc_AC86ED: MemLdRfVar from_stack_1.global_102
  loc_AC86F0: NextI2 var_CC, loc_AC84DD
  loc_AC86F5: FLdPr Me
  loc_AC86F8: MemLdI2 global_100
  loc_AC86FB: CI4UI1
  loc_AC86FC: FLdPr Me
  loc_AC86FF: MemLdStr global_96
  loc_AC8702: AryLock
  loc_AC8705: Ary1LdPr
  loc_AC8706: MemLdRfVar from_stack_1.global_12
  loc_AC8709: FStR4 var_E0
  loc_AC870C: LitVarStr var_9C, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_AC8711: PopAdLdVar
  loc_AC8712: FLdPr Me
  loc_AC8715: MemLdRfVar from_stack_1.htmFile
  loc_AC8718: LdPrVar
  loc_AC871A: LateMemCall
  loc_AC8720: LitI4 0
  loc_AC8725: LitI4 0
  loc_AC872A: LitI2_Byte 0
  loc_AC872C: LitStr "right"
  loc_AC872F: LitStr "Subtotal "
  loc_AC8732: FLdPr Me
  loc_AC8735: MemLdI2 global_100
  loc_AC8738: CI4UI1
  loc_AC8739: FLdPr Me
  loc_AC873C: MemLdStr global_96
  loc_AC873F: Ary1LdPr
  loc_AC8740: MemLdStr global_4
  loc_AC8743: ConcatStr
  loc_AC8744: FStStrNoPop var_B0
  loc_AC8747: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC874C: CVarStr var_C8
  loc_AC874F: PopAdLdVar
  loc_AC8750: FLdPr Me
  loc_AC8753: MemLdRfVar from_stack_1.htmFile
  loc_AC8756: LdPrVar
  loc_AC8758: LateMemCall
  loc_AC875E: FFree1Str var_B0
  loc_AC8761: FFree1Var var_C8 = ""
  loc_AC8764: LitI4 0
  loc_AC8769: LitI4 0
  loc_AC876E: LitI2_Byte 0
  loc_AC8770: LitStr "right"
  loc_AC8773: FMemLdR4 var_E0(8)
  loc_AC8778: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC877D: CVarStr var_C8
  loc_AC8780: PopAdLdVar
  loc_AC8781: FLdPr Me
  loc_AC8784: MemLdRfVar from_stack_1.htmFile
  loc_AC8787: LdPrVar
  loc_AC8789: LateMemCall
  loc_AC878F: FFree1Var var_C8 = ""
  loc_AC8792: LitI4 0
  loc_AC8797: LitI4 0
  loc_AC879C: LitI2_Byte 0
  loc_AC879E: LitStr "right"
  loc_AC87A1: FMemLdR4 var_E0(12)
  loc_AC87A6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC87AB: CVarStr var_C8
  loc_AC87AE: PopAdLdVar
  loc_AC87AF: FLdPr Me
  loc_AC87B2: MemLdRfVar from_stack_1.htmFile
  loc_AC87B5: LdPrVar
  loc_AC87B7: LateMemCall
  loc_AC87BD: FFree1Var var_C8 = ""
  loc_AC87C0: LitI4 0
  loc_AC87C5: LitI4 0
  loc_AC87CA: LitI2_Byte 0
  loc_AC87CC: LitStr "right"
  loc_AC87CF: FMemLdR4 var_E0(16)
  loc_AC87D4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC87D9: CVarStr var_C8
  loc_AC87DC: PopAdLdVar
  loc_AC87DD: FLdPr Me
  loc_AC87E0: MemLdRfVar from_stack_1.htmFile
  loc_AC87E3: LdPrVar
  loc_AC87E5: LateMemCall
  loc_AC87EB: FFree1Var var_C8 = ""
  loc_AC87EE: LitI4 0
  loc_AC87F3: LitI4 0
  loc_AC87F8: LitI2_Byte 0
  loc_AC87FA: LitStr "right"
  loc_AC87FD: FMemLdR4 var_E0(20)
  loc_AC8802: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC8807: CVarStr var_C8
  loc_AC880A: PopAdLdVar
  loc_AC880B: FLdPr Me
  loc_AC880E: MemLdRfVar from_stack_1.htmFile
  loc_AC8811: LdPrVar
  loc_AC8813: LateMemCall
  loc_AC8819: FFree1Var var_C8 = ""
  loc_AC881C: LitI4 0
  loc_AC8821: LitI4 0
  loc_AC8826: LitI2_Byte 0
  loc_AC8828: LitStr "right"
  loc_AC882B: FMemLdR4 var_E0(24)
  loc_AC8830: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC8835: CVarStr var_C8
  loc_AC8838: PopAdLdVar
  loc_AC8839: FLdPr Me
  loc_AC883C: MemLdRfVar from_stack_1.htmFile
  loc_AC883F: LdPrVar
  loc_AC8841: LateMemCall
  loc_AC8847: FFree1Var var_C8 = ""
  loc_AC884A: LitVarStr var_9C, "       <td colspan=""3"">&nbsp;</td>"
  loc_AC884F: PopAdLdVar
  loc_AC8850: FLdPr Me
  loc_AC8853: MemLdRfVar from_stack_1.htmFile
  loc_AC8856: LdPrVar
  loc_AC8858: LateMemCall
  loc_AC885E: LitVarStr var_9C, "     </tr>"
  loc_AC8863: PopAdLdVar
  loc_AC8864: FLdPr Me
  loc_AC8867: MemLdRfVar from_stack_1.htmFile
  loc_AC886A: LdPrVar
  loc_AC886C: LateMemCall
  loc_AC8872: LitI4 0
  loc_AC8877: FStR4 var_E0
  loc_AC887A: AryUnlock
  loc_AC887D: FLdPr Me
  loc_AC8880: MemLdRfVar from_stack_1.global_100
  loc_AC8883: NextI2 var_8C, loc_AC843B
  loc_AC8888: LitI4 1
  loc_AC888D: FLdPr Me
  loc_AC8890: MemLdStr global_104
  loc_AC8893: AryLock
  loc_AC8896: Ary1LdRf
  loc_AC8897: FStR4 var_E8
  loc_AC889A: LitVarStr var_9C, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_AC889F: PopAdLdVar
  loc_AC88A0: FLdPr Me
  loc_AC88A3: MemLdRfVar from_stack_1.htmFile
  loc_AC88A6: LdPrVar
  loc_AC88A8: LateMemCall
  loc_AC88AE: LitI4 0
  loc_AC88B3: LitI4 0
  loc_AC88B8: LitI2_Byte 0
  loc_AC88BA: LitStr "right"
  loc_AC88BD: LitStr "TOTAL GENERAL"
  loc_AC88C0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC88C5: CVarStr var_C8
  loc_AC88C8: PopAdLdVar
  loc_AC88C9: FLdPr Me
  loc_AC88CC: MemLdRfVar from_stack_1.htmFile
  loc_AC88CF: LdPrVar
  loc_AC88D1: LateMemCall
  loc_AC88D7: FFree1Var var_C8 = ""
  loc_AC88DA: LitI4 0
  loc_AC88DF: LitI4 0
  loc_AC88E4: LitI2_Byte 0
  loc_AC88E6: LitStr "right"
  loc_AC88E9: FMemLdR4 var_E8(8)
  loc_AC88EE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC88F3: CVarStr var_C8
  loc_AC88F6: PopAdLdVar
  loc_AC88F7: FLdPr Me
  loc_AC88FA: MemLdRfVar from_stack_1.htmFile
  loc_AC88FD: LdPrVar
  loc_AC88FF: LateMemCall
  loc_AC8905: FFree1Var var_C8 = ""
  loc_AC8908: LitI4 0
  loc_AC890D: LitI4 0
  loc_AC8912: LitI2_Byte 0
  loc_AC8914: LitStr "right"
  loc_AC8917: FMemLdR4 var_E8(12)
  loc_AC891C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC8921: CVarStr var_C8
  loc_AC8924: PopAdLdVar
  loc_AC8925: FLdPr Me
  loc_AC8928: MemLdRfVar from_stack_1.htmFile
  loc_AC892B: LdPrVar
  loc_AC892D: LateMemCall
  loc_AC8933: FFree1Var var_C8 = ""
  loc_AC8936: LitI4 0
  loc_AC893B: LitI4 0
  loc_AC8940: LitI2_Byte 0
  loc_AC8942: LitStr "right"
  loc_AC8945: FMemLdR4 var_E8(16)
  loc_AC894A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC894F: CVarStr var_C8
  loc_AC8952: PopAdLdVar
  loc_AC8953: FLdPr Me
  loc_AC8956: MemLdRfVar from_stack_1.htmFile
  loc_AC8959: LdPrVar
  loc_AC895B: LateMemCall
  loc_AC8961: FFree1Var var_C8 = ""
  loc_AC8964: LitI4 0
  loc_AC8969: LitI4 0
  loc_AC896E: LitI2_Byte 0
  loc_AC8970: LitStr "right"
  loc_AC8973: FMemLdR4 var_E8(20)
  loc_AC8978: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC897D: CVarStr var_C8
  loc_AC8980: PopAdLdVar
  loc_AC8981: FLdPr Me
  loc_AC8984: MemLdRfVar from_stack_1.htmFile
  loc_AC8987: LdPrVar
  loc_AC8989: LateMemCall
  loc_AC898F: FFree1Var var_C8 = ""
  loc_AC8992: LitI4 0
  loc_AC8997: LitI4 0
  loc_AC899C: LitI2_Byte 0
  loc_AC899E: LitStr "right"
  loc_AC89A1: FMemLdR4 var_E8(24)
  loc_AC89A6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC89AB: CVarStr var_C8
  loc_AC89AE: PopAdLdVar
  loc_AC89AF: FLdPr Me
  loc_AC89B2: MemLdRfVar from_stack_1.htmFile
  loc_AC89B5: LdPrVar
  loc_AC89B7: LateMemCall
  loc_AC89BD: FFree1Var var_C8 = ""
  loc_AC89C0: LitVarStr var_9C, "       <td colspan=""3"">&nbsp;</td>"
  loc_AC89C5: PopAdLdVar
  loc_AC89C6: FLdPr Me
  loc_AC89C9: MemLdRfVar from_stack_1.htmFile
  loc_AC89CC: LdPrVar
  loc_AC89CE: LateMemCall
  loc_AC89D4: LitVarStr var_9C, "     </tr>"
  loc_AC89D9: PopAdLdVar
  loc_AC89DA: FLdPr Me
  loc_AC89DD: MemLdRfVar from_stack_1.htmFile
  loc_AC89E0: LdPrVar
  loc_AC89E2: LateMemCall
  loc_AC89E8: LitI4 0
  loc_AC89ED: FStR4 var_E8
  loc_AC89F0: AryUnlock
  loc_AC89F3: Call Proc_165_22_9EEA84()
  loc_AC89F8: FLdPr Me
  loc_AC89FB: MemLdRfVar from_stack_1.htmFile
  loc_AC89FE: LdPrVar
  loc_AC8A00: LateMemCall
  loc_AC8A06: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AC8A0B: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'A6A0A8
  'Data Table: 45B658
  loc_A69D50: ImpAdCallI2 Proc_261_16_9B9214()
  loc_A69D55: FStStrNoPop var_88
  loc_A69D58: LitStr "\Acuerdo 3949\"
  loc_A69D5B: ConcatStr
  loc_A69D5C: FStStrNoPop var_94
  loc_A69D5F: FLdRfVar var_90
  loc_A69D62: FLdPr Me
  loc_A69D65: VCallAd Control_ID_cboPeriodo
  loc_A69D68: FStAdFunc var_8C
  loc_A69D6B: FLdPr var_8C
  loc_A69D6E:  = Me.Text
  loc_A69D73: ILdRf var_90
  loc_A69D76: ConcatStr
  loc_A69D77: FStStrNoPop var_98
  loc_A69D7A: LitStr "\Trimestre "
  loc_A69D7D: ConcatStr
  loc_A69D7E: FStStrNoPop var_AC
  loc_A69D81: FLdRfVar var_A8
  loc_A69D84: FLdRfVar var_9E
  loc_A69D87: FLdPr Me
  loc_A69D8A: VCallAd Control_ID_cboTrimestre
  loc_A69D8D: FStAdFunc var_9C
  loc_A69D90: FLdPr var_9C
  loc_A69D93:  = Me.ListIndex
  loc_A69D98: FLdI2 var_9E
  loc_A69D9B: FLdPr Me
  loc_A69D9E: VCallAd Control_ID_cboTrimestre
  loc_A69DA1: FStAdFunc var_A4
  loc_A69DA4: FLdPr var_A4
  loc_A69DA7:  = Me.ItemData
  loc_A69DAC: ILdRf var_A8
  loc_A69DAF: CStrI4
  loc_A69DB1: FStStrNoPop var_B0
  loc_A69DB4: ConcatStr
  loc_A69DB5: FStStrNoPop var_B4
  loc_A69DB8: LitStr "\evodeuconacu.txt"
  loc_A69DBB: ConcatStr
  loc_A69DBC: ImpAdStStr MemVar_C3D05C
  loc_A69DC0: FFreeStr var_88 = "": var_94 = "": var_90 = "": var_98 = "": var_AC = "": var_B0 = ""
  loc_A69DD1: FFreeAd var_8C = "": var_9C = ""
  loc_A69DDA: ImpAdLdI4 MemVar_C3D05C
  loc_A69DDD: ImpAdCallFPR4 Proc_261_17_9A1230()
  loc_A69DE2: FLdRfVar var_8C
  loc_A69DE5: LitI2_Byte 0
  loc_A69DE7: LitI2_Byte &HFF
  loc_A69DE9: ImpAdLdI4 MemVar_C3D05C
  loc_A69DEC: FLdPr Me
  loc_A69DEF: MemLdRfVar from_stack_1.global_76
  loc_A69DF2: NewIfNullPr IFileSystem3
  loc_A69DF5: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A69DFA: ILdRf var_8C
  loc_A69DFD: FLdPr Me
  loc_A69E00: MemStVarAd
  loc_A69E04: FFree1Ad var_8C
  loc_A69E07: LitVarStr var_C8, "Ejercicio|Trimestre|Nomenclador|Concepto|ConceptoDsc|SalIni|PagRea|DeuCon|VarRenDeu|SalFin|Norma|TpoEntAcr"
  loc_A69E0C: PopAdLdVar
  loc_A69E0D: FLdPr Me
  loc_A69E10: MemLdRfVar from_stack_1.global_80
  loc_A69E13: LdPrVar
  loc_A69E15: LateMemCall
  loc_A69E1B: LitI2_Byte 1
  loc_A69E1D: FLdPr Me
  loc_A69E20: MemLdRfVar from_stack_1.global_100
  loc_A69E23: FLdPr Me
  loc_A69E26: MemLdStr global_96
  loc_A69E29: LitI2_Byte 1
  loc_A69E2B: FnUBound
  loc_A69E2D: CI2I4
  loc_A69E2E: ForI2 var_DC
  loc_A69E34: LitI2_Byte 1
  loc_A69E36: FLdPr Me
  loc_A69E39: MemLdRfVar from_stack_1.global_102
  loc_A69E3C: FLdPr Me
  loc_A69E3F: MemLdI2 global_100
  loc_A69E42: CI4UI1
  loc_A69E43: FLdPr Me
  loc_A69E46: MemLdStr global_96
  loc_A69E49: Ary1LdPr
  loc_A69E4A: MemLdStr global_8
  loc_A69E4D: LitI2_Byte 1
  loc_A69E4F: FnUBound
  loc_A69E51: CI2I4
  loc_A69E52: ForI2 var_E0
  loc_A69E58: FLdRfVar var_88
  loc_A69E5B: FLdPr Me
  loc_A69E5E: VCallAd Control_ID_cboPeriodo
  loc_A69E61: FStAdFunc var_8C
  loc_A69E64: FLdPr var_8C
  loc_A69E67:  = Me.Text
  loc_A69E6C: ILdRf var_88
  loc_A69E6F: LitStr "|"
  loc_A69E72: ConcatStr
  loc_A69E73: FStStrNoPop var_90
  loc_A69E76: FLdRfVar var_A8
  loc_A69E79: FLdRfVar var_9E
  loc_A69E7C: FLdPr Me
  loc_A69E7F: VCallAd Control_ID_cboTrimestre
  loc_A69E82: FStAdFunc var_9C
  loc_A69E85: FLdPr var_9C
  loc_A69E88:  = Me.ListIndex
  loc_A69E8D: FLdI2 var_9E
  loc_A69E90: FLdPr Me
  loc_A69E93: VCallAd Control_ID_cboTrimestre
  loc_A69E96: FStAdFunc var_A4
  loc_A69E99: FLdPr var_A4
  loc_A69E9C:  = Me.ItemData
  loc_A69EA1: ILdRf var_A8
  loc_A69EA4: CStrI4
  loc_A69EA6: FStStrNoPop var_94
  loc_A69EA9: ConcatStr
  loc_A69EAA: FStStrNoPop var_98
  loc_A69EAD: LitStr "|"
  loc_A69EB0: ConcatStr
  loc_A69EB1: FStStrNoPop var_AC
  loc_A69EB4: LitStr "060204"
  loc_A69EB7: ConcatStr
  loc_A69EB8: FStStr var_B8
  loc_A69EBB: FFreeStr var_88 = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A69EC8: FFreeAd var_8C = "": var_9C = ""
  loc_A69ED1: FLdPr Me
  loc_A69ED4: MemLdI2 global_102
  loc_A69ED7: CI4UI1
  loc_A69ED8: FLdPr Me
  loc_A69EDB: MemLdI2 global_100
  loc_A69EDE: CI4UI1
  loc_A69EDF: FLdPr Me
  loc_A69EE2: MemLdStr global_96
  loc_A69EE5: AryLock
  loc_A69EE8: Ary1LdPr
  loc_A69EE9: MemLdStr global_8
  loc_A69EEC: AryLock
  loc_A69EEF: Ary1LdRf
  loc_A69EF0: FStR4 var_EC
  loc_A69EF3: FMemLdR4 var_EC(8)
  loc_A69EF8: LitStr vbNullString
  loc_A69EFB: EqStr
  loc_A69EFD: BranchF loc_A69F08
  loc_A69F00: LitStr "0"
  loc_A69F03: FMemStStrCopy
  loc_A69F08: FMemLdR4 var_EC(12)
  loc_A69F0D: LitStr vbNullString
  loc_A69F10: EqStr
  loc_A69F12: BranchF loc_A69F1D
  loc_A69F15: LitStr "0"
  loc_A69F18: FMemStStrCopy
  loc_A69F1D: FMemLdR4 var_EC(16)
  loc_A69F22: LitStr vbNullString
  loc_A69F25: EqStr
  loc_A69F27: BranchF loc_A69F32
  loc_A69F2A: LitStr "0"
  loc_A69F2D: FMemStStrCopy
  loc_A69F32: FMemLdR4 var_EC(24)
  loc_A69F37: LitStr vbNullString
  loc_A69F3A: EqStr
  loc_A69F3C: BranchF loc_A69F47
  loc_A69F3F: LitStr "0"
  loc_A69F42: FMemStStrCopy
  loc_A69F47: FMemLdR4 var_EC(20)
  loc_A69F4C: LitStr vbNullString
  loc_A69F4F: EqStr
  loc_A69F51: BranchF loc_A69F5C
  loc_A69F54: LitStr "0"
  loc_A69F57: FMemStStrCopy
  loc_A69F5C: ILdRf var_B8
  loc_A69F5F: LitStr "|"
  loc_A69F62: ConcatStr
  loc_A69F63: FStStrNoPop var_88
  loc_A69F66: FMemLdR4 var_EC(0)
  loc_A69F6B: ConcatStr
  loc_A69F6C: FStStr var_B8
  loc_A69F6F: FFree1Str var_88
  loc_A69F72: ILdRf var_B8
  loc_A69F75: LitStr "|"
  loc_A69F78: ConcatStr
  loc_A69F79: FStStrNoPop var_88
  loc_A69F7C: FMemLdR4 var_EC(4)
  loc_A69F81: ConcatStr
  loc_A69F82: FStStr var_B8
  loc_A69F85: FFree1Str var_88
  loc_A69F88: ILdRf var_B8
  loc_A69F8B: LitStr "|"
  loc_A69F8E: ConcatStr
  loc_A69F8F: FStStrNoPop var_88
  loc_A69F92: FMemLdR4 var_EC(8)
  loc_A69F97: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A69F9C: FStStrNoPop var_90
  loc_A69F9F: ConcatStr
  loc_A69FA0: FStStr var_B8
  loc_A69FA3: FFreeStr var_88 = ""
  loc_A69FAA: ILdRf var_B8
  loc_A69FAD: LitStr "|"
  loc_A69FB0: ConcatStr
  loc_A69FB1: FStStrNoPop var_88
  loc_A69FB4: FMemLdR4 var_EC(12)
  loc_A69FB9: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A69FBE: FStStrNoPop var_90
  loc_A69FC1: ConcatStr
  loc_A69FC2: FStStr var_B8
  loc_A69FC5: FFreeStr var_88 = ""
  loc_A69FCC: ILdRf var_B8
  loc_A69FCF: LitStr "|"
  loc_A69FD2: ConcatStr
  loc_A69FD3: FStStrNoPop var_88
  loc_A69FD6: FMemLdR4 var_EC(16)
  loc_A69FDB: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A69FE0: FStStrNoPop var_90
  loc_A69FE3: ConcatStr
  loc_A69FE4: FStStr var_B8
  loc_A69FE7: FFreeStr var_88 = ""
  loc_A69FEE: ILdRf var_B8
  loc_A69FF1: LitStr "|"
  loc_A69FF4: ConcatStr
  loc_A69FF5: FStStrNoPop var_88
  loc_A69FF8: FMemLdR4 var_EC(20)
  loc_A69FFD: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A6A002: FStStrNoPop var_90
  loc_A6A005: ConcatStr
  loc_A6A006: FStStr var_B8
  loc_A6A009: FFreeStr var_88 = ""
  loc_A6A010: ILdRf var_B8
  loc_A6A013: LitStr "|"
  loc_A6A016: ConcatStr
  loc_A6A017: FStStrNoPop var_88
  loc_A6A01A: FMemLdR4 var_EC(24)
  loc_A6A01F: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A6A024: FStStrNoPop var_90
  loc_A6A027: ConcatStr
  loc_A6A028: FStStr var_B8
  loc_A6A02B: FFreeStr var_88 = ""
  loc_A6A032: ILdRf var_B8
  loc_A6A035: LitStr "|"
  loc_A6A038: ConcatStr
  loc_A6A039: FStStrNoPop var_88
  loc_A6A03C: FMemLdR4 var_EC(32)
  loc_A6A041: ConcatStr
  loc_A6A042: FStStrNoPop var_90
  loc_A6A045: LitStr "|"
  loc_A6A048: ConcatStr
  loc_A6A049: FStStrNoPop var_94
  loc_A6A04C: FMemLdR4 var_EC(36)
  loc_A6A051: ConcatStr
  loc_A6A052: FStStr var_B8
  loc_A6A055: FFreeStr var_88 = "": var_90 = ""
  loc_A6A05E: LitI4 0
  loc_A6A063: FStR4 var_EC
  loc_A6A066: AryUnlock
  loc_A6A069: AryUnlock
  loc_A6A06C: FLdRfVar var_B8
  loc_A6A06F: CDargRef
  loc_A6A073: FLdPr Me
  loc_A6A076: MemLdRfVar from_stack_1.global_80
  loc_A6A079: LdPrVar
  loc_A6A07B: LateMemCall
  loc_A6A081: FLdPr Me
  loc_A6A084: MemLdRfVar from_stack_1.global_102
  loc_A6A087: NextI2 var_E0, loc_A69E58
  loc_A6A08C: FLdPr Me
  loc_A6A08F: MemLdRfVar from_stack_1.global_100
  loc_A6A092: NextI2 var_DC, loc_A69E34
  loc_A6A097: FLdPr Me
  loc_A6A09A: MemLdRfVar from_stack_1.global_80
  loc_A6A09D: LdPrVar
  loc_A6A09F: LateMemCall
  loc_A6A0A5: ExitProcHresult
End Sub

Private Function Proc_165_19_A13928() 'A13928
  'Data Table: 45B658
  loc_A137B0: FLdPr Me
  loc_A137B3: MemLdI2 global_100
  loc_A137B6: LitI2_Byte 1
  loc_A137B8: AddI2
  loc_A137B9: FLdPr Me
  loc_A137BC: MemStI2 global_100
  loc_A137BF: LitI2_Byte 0
  loc_A137C1: FLdPr Me
  loc_A137C4: MemStI2 global_102
  loc_A137C7: LitI4 1
  loc_A137CC: FLdPr Me
  loc_A137CF: MemLdI2 global_100
  loc_A137D2: CI4UI1
  loc_A137D3: FLdPr Me
  loc_A137D6: MemLdRfVar from_stack_1.global_96
  loc_A137D9: RedimPreserve
  loc_A137E3: FLdRfVar var_88
  loc_A137E6: FLdPr Me
  loc_A137E9: MemLdRfVar from_stack_1.global_72
  loc_A137EC: NewIfNullPr clsbase
  loc_A137EF: from_stack_1 = clsbase.RecordCount
  loc_A137F4: ILdRf var_88
  loc_A137F7: LitI4 0
  loc_A137FC: GtI4
  loc_A137FD: BranchF loc_A138CF
  loc_A13800: FLdRfVar var_A4
  loc_A13803: LitVarStr var_A0, "CodiTicu"
  loc_A13808: PopAdLdVar
  loc_A13809: FLdRfVar var_90
  loc_A1380C: FLdRfVar var_8C
  loc_A1380F: FLdPr Me
  loc_A13812: MemLdRfVar from_stack_1.global_72
  loc_A13815: NewIfNullPr clsbase
  loc_A13818: from_stack_1v = clsbase.RsFrmGet()
  loc_A1381D: FLdPr var_8C
  loc_A13820:  = Me.Fields
  loc_A13825: FLdPr var_90
  loc_A13828: from_stack_2 = Me.Item(from_stack_1)
  loc_A1382D: LitI2_Byte 0
  loc_A1382F: LitVar_Missing var_D8
  loc_A13832: LitI2_Byte 0
  loc_A13834: FLdZeroAd var_A4
  loc_A13837: CVarAd
  loc_A1383B: PopAdLdVar
  loc_A1383C: FLdPr Me
  loc_A1383F: MemLdI2 global_100
  loc_A13842: CI4UI1
  loc_A13843: FLdPr Me
  loc_A13846: MemLdStr global_96
  loc_A13849: AryLock
  loc_A1384C: Ary1LdPr
  loc_A1384D: MemLdRfVar from_stack_1.global_0
  loc_A13850: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A13855: AryUnlock
  loc_A13858: FFreeAd var_8C = ""
  loc_A1385F: FFreeVar var_B8 = ""
  loc_A13866: FLdRfVar var_A4
  loc_A13869: LitVarStr var_A0, "DetaTicu"
  loc_A1386E: PopAdLdVar
  loc_A1386F: FLdRfVar var_90
  loc_A13872: FLdRfVar var_8C
  loc_A13875: FLdPr Me
  loc_A13878: MemLdRfVar from_stack_1.global_72
  loc_A1387B: NewIfNullPr clsbase
  loc_A1387E: from_stack_1v = clsbase.RsFrmGet()
  loc_A13883: FLdPr var_8C
  loc_A13886:  = Me.Fields
  loc_A1388B: FLdPr var_90
  loc_A1388E: from_stack_2 = Me.Item(from_stack_1)
  loc_A13893: LitI2_Byte 0
  loc_A13895: LitVar_Missing var_D8
  loc_A13898: LitI2_Byte 0
  loc_A1389A: FLdZeroAd var_A4
  loc_A1389D: CVarAd
  loc_A138A1: PopAdLdVar
  loc_A138A2: FLdPr Me
  loc_A138A5: MemLdI2 global_100
  loc_A138A8: CI4UI1
  loc_A138A9: FLdPr Me
  loc_A138AC: MemLdStr global_96
  loc_A138AF: AryLock
  loc_A138B2: Ary1LdPr
  loc_A138B3: MemLdRfVar from_stack_1.global_4
  loc_A138B6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A138BB: AryUnlock
  loc_A138BE: FFreeAd var_8C = ""
  loc_A138C5: FFreeVar var_B8 = ""
  loc_A138CC: Branch loc_A13927
  loc_A138CF: LitI2_Byte 0
  loc_A138D1: LitVar_Missing var_B8
  loc_A138D4: LitI2_Byte 0
  loc_A138D6: LitVarStr var_A0, vbNullString
  loc_A138DB: PopAdLdVar
  loc_A138DC: FLdPr Me
  loc_A138DF: MemLdI2 global_100
  loc_A138E2: CI4UI1
  loc_A138E3: FLdPr Me
  loc_A138E6: MemLdStr global_96
  loc_A138E9: AryLock
  loc_A138EC: Ary1LdPr
  loc_A138ED: MemLdRfVar from_stack_1.global_0
  loc_A138F0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A138F5: AryUnlock
  loc_A138F8: FFree1Var var_B8 = ""
  loc_A138FB: LitI2_Byte 0
  loc_A138FD: LitVar_Missing var_B8
  loc_A13900: LitI2_Byte 0
  loc_A13902: LitVarStr var_A0, "SIN MOVIMIENTOS"
  loc_A13907: PopAdLdVar
  loc_A13908: FLdPr Me
  loc_A1390B: MemLdI2 global_100
  loc_A1390E: CI4UI1
  loc_A1390F: FLdPr Me
  loc_A13912: MemLdStr global_96
  loc_A13915: AryLock
  loc_A13918: Ary1LdPr
  loc_A13919: MemLdRfVar from_stack_1.global_4
  loc_A1391C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A13921: AryUnlock
  loc_A13924: FFree1Var var_B8 = ""
  loc_A13927: ExitProcHresult
End Function

Private Function Proc_165_20_AF052C() 'AF052C
  'Data Table: 45B658
  loc_AEFDF0: FLdPr Me
  loc_AEFDF3: MemLdI2 global_102
  loc_AEFDF6: LitI2_Byte 1
  loc_AEFDF8: AddI2
  loc_AEFDF9: FLdPr Me
  loc_AEFDFC: MemStI2 global_102
  loc_AEFDFF: LitI4 1
  loc_AEFE04: FLdPr Me
  loc_AEFE07: MemLdI2 global_102
  loc_AEFE0A: CI4UI1
  loc_AEFE0B: FLdPr Me
  loc_AEFE0E: MemLdI2 global_100
  loc_AEFE11: CI4UI1
  loc_AEFE12: FLdPr Me
  loc_AEFE15: MemLdStr global_96
  loc_AEFE18: Ary1LdPr
  loc_AEFE19: MemLdRfVar from_stack_1.global_8
  loc_AEFE1C: RedimPreserve
  loc_AEFE26: FLdPr Me
  loc_AEFE29: MemLdRfVar from_stack_1.global_72
  loc_AEFE2C: NewIfNullAd
  loc_AEFE2F: FStAd var_88 
  loc_AEFE33: FLdRfVar var_8C
  loc_AEFE36: FLdPr var_88
  loc_AEFE39: from_stack_1 = clsbase.RecordCount
  loc_AEFE3E: ILdRf var_8C
  loc_AEFE41: LitI4 0
  loc_AEFE46: GtI4
  loc_AEFE47: BranchF loc_AF02C0
  loc_AEFE4A: FLdRfVar var_A8
  loc_AEFE4D: LitVarStr var_A4, "CodiCuco"
  loc_AEFE52: PopAdLdVar
  loc_AEFE53: FLdRfVar var_94
  loc_AEFE56: FLdRfVar var_90
  loc_AEFE59: FLdPr var_88
  loc_AEFE5C: from_stack_1v = clsbase.RsFrmGet()
  loc_AEFE61: FLdPr var_90
  loc_AEFE64:  = Me.Fields
  loc_AEFE69: FLdPr var_94
  loc_AEFE6C: from_stack_2 = Me.Item(from_stack_1)
  loc_AEFE71: LitI2_Byte 0
  loc_AEFE73: LitVar_Missing var_E0
  loc_AEFE76: LitI2_Byte 0
  loc_AEFE78: FLdZeroAd var_A8
  loc_AEFE7B: CVarAd
  loc_AEFE7F: PopAdLdVar
  loc_AEFE80: FLdPr Me
  loc_AEFE83: MemLdI2 global_102
  loc_AEFE86: CI4UI1
  loc_AEFE87: FLdPr Me
  loc_AEFE8A: MemLdI2 global_100
  loc_AEFE8D: CI4UI1
  loc_AEFE8E: FLdPr Me
  loc_AEFE91: MemLdStr global_96
  loc_AEFE94: AryLock
  loc_AEFE97: Ary1LdPr
  loc_AEFE98: MemLdStr global_8
  loc_AEFE9B: AryLock
  loc_AEFE9E: Ary1LdPr
  loc_AEFE9F: MemLdRfVar from_stack_1.global_0
  loc_AEFEA2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEFEA7: AryUnlock
  loc_AEFEAA: AryUnlock
  loc_AEFEAD: FFreeAd var_90 = ""
  loc_AEFEB4: FFreeVar var_C0 = ""
  loc_AEFEBB: FLdRfVar var_A8
  loc_AEFEBE: LitVarStr var_A4, "DetaCuco"
  loc_AEFEC3: PopAdLdVar
  loc_AEFEC4: FLdRfVar var_94
  loc_AEFEC7: FLdRfVar var_90
  loc_AEFECA: FLdPr var_88
  loc_AEFECD: from_stack_1v = clsbase.RsFrmGet()
  loc_AEFED2: FLdPr var_90
  loc_AEFED5:  = Me.Fields
  loc_AEFEDA: FLdPr var_94
  loc_AEFEDD: from_stack_2 = Me.Item(from_stack_1)
  loc_AEFEE2: LitI2_Byte 0
  loc_AEFEE4: LitVar_Missing var_E0
  loc_AEFEE7: LitI2_Byte 0
  loc_AEFEE9: FLdZeroAd var_A8
  loc_AEFEEC: CVarAd
  loc_AEFEF0: PopAdLdVar
  loc_AEFEF1: FLdPr Me
  loc_AEFEF4: MemLdI2 global_102
  loc_AEFEF7: CI4UI1
  loc_AEFEF8: FLdPr Me
  loc_AEFEFB: MemLdI2 global_100
  loc_AEFEFE: CI4UI1
  loc_AEFEFF: FLdPr Me
  loc_AEFF02: MemLdStr global_96
  loc_AEFF05: AryLock
  loc_AEFF08: Ary1LdPr
  loc_AEFF09: MemLdStr global_8
  loc_AEFF0C: AryLock
  loc_AEFF0F: Ary1LdPr
  loc_AEFF10: MemLdRfVar from_stack_1.global_4
  loc_AEFF13: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEFF18: AryUnlock
  loc_AEFF1B: AryUnlock
  loc_AEFF1E: FFreeAd var_90 = ""
  loc_AEFF25: FFreeVar var_C0 = ""
  loc_AEFF2C: FLdRfVar var_A8
  loc_AEFF2F: LitVarStr var_A4, "SaldIniTri"
  loc_AEFF34: PopAdLdVar
  loc_AEFF35: FLdRfVar var_94
  loc_AEFF38: FLdRfVar var_90
  loc_AEFF3B: FLdPr var_88
  loc_AEFF3E: from_stack_1v = clsbase.RsFrmGet()
  loc_AEFF43: FLdPr var_90
  loc_AEFF46:  = Me.Fields
  loc_AEFF4B: FLdPr var_94
  loc_AEFF4E: from_stack_2 = Me.Item(from_stack_1)
  loc_AEFF53: LitI2_Byte 0
  loc_AEFF55: FLdPr Me
  loc_AEFF58: MemLdI2 global_100
  loc_AEFF5B: CI4UI1
  loc_AEFF5C: FLdPr Me
  loc_AEFF5F: MemLdStr global_96
  loc_AEFF62: AryLock
  loc_AEFF65: Ary1LdPr
  loc_AEFF66: MemLdRfVar from_stack_1.global_20
  loc_AEFF69: CVarRef
  loc_AEFF6E: LitI2_Byte &HFF
  loc_AEFF70: FLdZeroAd var_A8
  loc_AEFF73: CVarAd
  loc_AEFF77: PopAdLdVar
  loc_AEFF78: FLdPr Me
  loc_AEFF7B: MemLdI2 global_102
  loc_AEFF7E: CI4UI1
  loc_AEFF7F: FLdPr Me
  loc_AEFF82: MemLdI2 global_100
  loc_AEFF85: CI4UI1
  loc_AEFF86: FLdPr Me
  loc_AEFF89: MemLdStr global_96
  loc_AEFF8C: AryLock
  loc_AEFF8F: Ary1LdPr
  loc_AEFF90: MemLdStr global_8
  loc_AEFF93: AryLock
  loc_AEFF96: Ary1LdPr
  loc_AEFF97: MemLdRfVar from_stack_1.global_8
  loc_AEFF9A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEFF9F: AryUnlock
  loc_AEFFA2: AryUnlock
  loc_AEFFA5: AryUnlock
  loc_AEFFA8: FFreeAd var_90 = ""
  loc_AEFFAF: FFree1Var var_C0 = ""
  loc_AEFFB2: FLdRfVar var_A8
  loc_AEFFB5: LitVarStr var_A4, "PagoTri"
  loc_AEFFBA: PopAdLdVar
  loc_AEFFBB: FLdRfVar var_94
  loc_AEFFBE: FLdRfVar var_90
  loc_AEFFC1: FLdPr var_88
  loc_AEFFC4: from_stack_1v = clsbase.RsFrmGet()
  loc_AEFFC9: FLdPr var_90
  loc_AEFFCC:  = Me.Fields
  loc_AEFFD1: FLdPr var_94
  loc_AEFFD4: from_stack_2 = Me.Item(from_stack_1)
  loc_AEFFD9: LitI2_Byte 0
  loc_AEFFDB: FLdPr Me
  loc_AEFFDE: MemLdI2 global_100
  loc_AEFFE1: CI4UI1
  loc_AEFFE2: FLdPr Me
  loc_AEFFE5: MemLdStr global_96
  loc_AEFFE8: AryLock
  loc_AEFFEB: Ary1LdPr
  loc_AEFFEC: MemLdRfVar from_stack_1.global_24
  loc_AEFFEF: CVarRef
  loc_AEFFF4: LitI2_Byte &HFF
  loc_AEFFF6: FLdZeroAd var_A8
  loc_AEFFF9: CVarAd
  loc_AEFFFD: PopAdLdVar
  loc_AEFFFE: FLdPr Me
  loc_AF0001: MemLdI2 global_102
  loc_AF0004: CI4UI1
  loc_AF0005: FLdPr Me
  loc_AF0008: MemLdI2 global_100
  loc_AF000B: CI4UI1
  loc_AF000C: FLdPr Me
  loc_AF000F: MemLdStr global_96
  loc_AF0012: AryLock
  loc_AF0015: Ary1LdPr
  loc_AF0016: MemLdStr global_8
  loc_AF0019: AryLock
  loc_AF001C: Ary1LdPr
  loc_AF001D: MemLdRfVar from_stack_1.global_12
  loc_AF0020: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF0025: AryUnlock
  loc_AF0028: AryUnlock
  loc_AF002B: AryUnlock
  loc_AF002E: FFreeAd var_90 = ""
  loc_AF0035: FFree1Var var_C0 = ""
  loc_AF0038: FLdRfVar var_A8
  loc_AF003B: LitVarStr var_A4, "DeuTri"
  loc_AF0040: PopAdLdVar
  loc_AF0041: FLdRfVar var_94
  loc_AF0044: FLdRfVar var_90
  loc_AF0047: FLdPr var_88
  loc_AF004A: from_stack_1v = clsbase.RsFrmGet()
  loc_AF004F: FLdPr var_90
  loc_AF0052:  = Me.Fields
  loc_AF0057: FLdPr var_94
  loc_AF005A: from_stack_2 = Me.Item(from_stack_1)
  loc_AF005F: LitI2_Byte 0
  loc_AF0061: FLdPr Me
  loc_AF0064: MemLdI2 global_100
  loc_AF0067: CI4UI1
  loc_AF0068: FLdPr Me
  loc_AF006B: MemLdStr global_96
  loc_AF006E: AryLock
  loc_AF0071: Ary1LdPr
  loc_AF0072: MemLdRfVar from_stack_1.global_28
  loc_AF0075: CVarRef
  loc_AF007A: LitI2_Byte &HFF
  loc_AF007C: FLdZeroAd var_A8
  loc_AF007F: CVarAd
  loc_AF0083: PopAdLdVar
  loc_AF0084: FLdPr Me
  loc_AF0087: MemLdI2 global_102
  loc_AF008A: CI4UI1
  loc_AF008B: FLdPr Me
  loc_AF008E: MemLdI2 global_100
  loc_AF0091: CI4UI1
  loc_AF0092: FLdPr Me
  loc_AF0095: MemLdStr global_96
  loc_AF0098: AryLock
  loc_AF009B: Ary1LdPr
  loc_AF009C: MemLdStr global_8
  loc_AF009F: AryLock
  loc_AF00A2: Ary1LdPr
  loc_AF00A3: MemLdRfVar from_stack_1.global_16
  loc_AF00A6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF00AB: AryUnlock
  loc_AF00AE: AryUnlock
  loc_AF00B1: AryUnlock
  loc_AF00B4: FFreeAd var_90 = ""
  loc_AF00BB: FFree1Var var_C0 = ""
  loc_AF00BE: FLdRfVar var_A8
  loc_AF00C1: LitVarStr var_A4, "VarTri"
  loc_AF00C6: PopAdLdVar
  loc_AF00C7: FLdRfVar var_94
  loc_AF00CA: FLdRfVar var_90
  loc_AF00CD: FLdPr var_88
  loc_AF00D0: from_stack_1v = clsbase.RsFrmGet()
  loc_AF00D5: FLdPr var_90
  loc_AF00D8:  = Me.Fields
  loc_AF00DD: FLdPr var_94
  loc_AF00E0: from_stack_2 = Me.Item(from_stack_1)
  loc_AF00E5: LitI2_Byte 0
  loc_AF00E7: FLdPr Me
  loc_AF00EA: MemLdI2 global_100
  loc_AF00ED: CI4UI1
  loc_AF00EE: FLdPr Me
  loc_AF00F1: MemLdStr global_96
  loc_AF00F4: AryLock
  loc_AF00F7: Ary1LdPr
  loc_AF00F8: MemLdRfVar from_stack_1.global_32
  loc_AF00FB: CVarRef
  loc_AF0100: LitI2_Byte &HFF
  loc_AF0102: FLdZeroAd var_A8
  loc_AF0105: CVarAd
  loc_AF0109: PopAdLdVar
  loc_AF010A: FLdPr Me
  loc_AF010D: MemLdI2 global_102
  loc_AF0110: CI4UI1
  loc_AF0111: FLdPr Me
  loc_AF0114: MemLdI2 global_100
  loc_AF0117: CI4UI1
  loc_AF0118: FLdPr Me
  loc_AF011B: MemLdStr global_96
  loc_AF011E: AryLock
  loc_AF0121: Ary1LdPr
  loc_AF0122: MemLdStr global_8
  loc_AF0125: AryLock
  loc_AF0128: Ary1LdPr
  loc_AF0129: MemLdRfVar from_stack_1.global_20
  loc_AF012C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF0131: AryUnlock
  loc_AF0134: AryUnlock
  loc_AF0137: AryUnlock
  loc_AF013A: FFreeAd var_90 = ""
  loc_AF0141: FFree1Var var_C0 = ""
  loc_AF0144: FLdRfVar var_A8
  loc_AF0147: LitVarStr var_A4, "SaldFinTri"
  loc_AF014C: PopAdLdVar
  loc_AF014D: FLdRfVar var_94
  loc_AF0150: FLdRfVar var_90
  loc_AF0153: FLdPr var_88
  loc_AF0156: from_stack_1v = clsbase.RsFrmGet()
  loc_AF015B: FLdPr var_90
  loc_AF015E:  = Me.Fields
  loc_AF0163: FLdPr var_94
  loc_AF0166: from_stack_2 = Me.Item(from_stack_1)
  loc_AF016B: LitI2_Byte 0
  loc_AF016D: FLdPr Me
  loc_AF0170: MemLdI2 global_100
  loc_AF0173: CI4UI1
  loc_AF0174: FLdPr Me
  loc_AF0177: MemLdStr global_96
  loc_AF017A: AryLock
  loc_AF017D: Ary1LdPr
  loc_AF017E: MemLdRfVar from_stack_1.global_36
  loc_AF0181: CVarRef
  loc_AF0186: LitI2_Byte &HFF
  loc_AF0188: FLdZeroAd var_A8
  loc_AF018B: CVarAd
  loc_AF018F: PopAdLdVar
  loc_AF0190: FLdPr Me
  loc_AF0193: MemLdI2 global_102
  loc_AF0196: CI4UI1
  loc_AF0197: FLdPr Me
  loc_AF019A: MemLdI2 global_100
  loc_AF019D: CI4UI1
  loc_AF019E: FLdPr Me
  loc_AF01A1: MemLdStr global_96
  loc_AF01A4: AryLock
  loc_AF01A7: Ary1LdPr
  loc_AF01A8: MemLdStr global_8
  loc_AF01AB: AryLock
  loc_AF01AE: Ary1LdPr
  loc_AF01AF: MemLdRfVar from_stack_1.global_24
  loc_AF01B2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF01B7: AryUnlock
  loc_AF01BA: AryUnlock
  loc_AF01BD: AryUnlock
  loc_AF01C0: FFreeAd var_90 = ""
  loc_AF01C7: FFree1Var var_C0 = ""
  loc_AF01CA: LitI2_Byte 0
  loc_AF01CC: LitVar_Missing var_C0
  loc_AF01CF: LitI2_Byte 0
  loc_AF01D1: LitVarStr var_A4, vbNullString
  loc_AF01D6: PopAdLdVar
  loc_AF01D7: FLdPr Me
  loc_AF01DA: MemLdI2 global_102
  loc_AF01DD: CI4UI1
  loc_AF01DE: FLdPr Me
  loc_AF01E1: MemLdI2 global_100
  loc_AF01E4: CI4UI1
  loc_AF01E5: FLdPr Me
  loc_AF01E8: MemLdStr global_96
  loc_AF01EB: AryLock
  loc_AF01EE: Ary1LdPr
  loc_AF01EF: MemLdStr global_8
  loc_AF01F2: AryLock
  loc_AF01F5: Ary1LdPr
  loc_AF01F6: MemLdRfVar from_stack_1.global_28
  loc_AF01F9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF01FE: AryUnlock
  loc_AF0201: AryUnlock
  loc_AF0204: FFree1Var var_C0 = ""
  loc_AF0207: FLdRfVar var_A8
  loc_AF020A: LitVarStr var_A4, "NoleAsie"
  loc_AF020F: PopAdLdVar
  loc_AF0210: FLdRfVar var_94
  loc_AF0213: FLdRfVar var_90
  loc_AF0216: FLdPr var_88
  loc_AF0219: from_stack_1v = clsbase.RsFrmGet()
  loc_AF021E: FLdPr var_90
  loc_AF0221:  = Me.Fields
  loc_AF0226: FLdPr var_94
  loc_AF0229: from_stack_2 = Me.Item(from_stack_1)
  loc_AF022E: LitI2_Byte 0
  loc_AF0230: LitVar_Missing var_E0
  loc_AF0233: LitI2_Byte 0
  loc_AF0235: FLdZeroAd var_A8
  loc_AF0238: CVarAd
  loc_AF023C: PopAdLdVar
  loc_AF023D: FLdPr Me
  loc_AF0240: MemLdI2 global_102
  loc_AF0243: CI4UI1
  loc_AF0244: FLdPr Me
  loc_AF0247: MemLdI2 global_100
  loc_AF024A: CI4UI1
  loc_AF024B: FLdPr Me
  loc_AF024E: MemLdStr global_96
  loc_AF0251: AryLock
  loc_AF0254: Ary1LdPr
  loc_AF0255: MemLdStr global_8
  loc_AF0258: AryLock
  loc_AF025B: Ary1LdPr
  loc_AF025C: MemLdRfVar from_stack_1.global_32
  loc_AF025F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF0264: AryUnlock
  loc_AF0267: AryUnlock
  loc_AF026A: FFreeAd var_90 = ""
  loc_AF0271: FFreeVar var_C0 = ""
  loc_AF0278: LitI2_Byte 0
  loc_AF027A: LitVar_Missing var_C0
  loc_AF027D: LitI2_Byte 0
  loc_AF027F: LitVarStr var_A4, vbNullString
  loc_AF0284: PopAdLdVar
  loc_AF0285: FLdPr Me
  loc_AF0288: MemLdI2 global_102
  loc_AF028B: CI4UI1
  loc_AF028C: FLdPr Me
  loc_AF028F: MemLdI2 global_100
  loc_AF0292: CI4UI1
  loc_AF0293: FLdPr Me
  loc_AF0296: MemLdStr global_96
  loc_AF0299: AryLock
  loc_AF029C: Ary1LdPr
  loc_AF029D: MemLdStr global_8
  loc_AF02A0: AryLock
  loc_AF02A3: Ary1LdPr
  loc_AF02A4: MemLdRfVar from_stack_1.global_36
  loc_AF02A7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF02AC: AryUnlock
  loc_AF02AF: AryUnlock
  loc_AF02B2: FFree1Var var_C0 = ""
  loc_AF02B5: FLdPr var_88
  loc_AF02B8: Call clsbase.MoveSiguiente()
  loc_AF02BD: Branch loc_AF0522
  loc_AF02C0: LitI2_Byte 0
  loc_AF02C2: LitVar_Missing var_C0
  loc_AF02C5: LitI2_Byte 0
  loc_AF02C7: LitVarStr var_A4, vbNullString
  loc_AF02CC: PopAdLdVar
  loc_AF02CD: FLdPr Me
  loc_AF02D0: MemLdI2 global_102
  loc_AF02D3: CI4UI1
  loc_AF02D4: FLdPr Me
  loc_AF02D7: MemLdI2 global_100
  loc_AF02DA: CI4UI1
  loc_AF02DB: FLdPr Me
  loc_AF02DE: MemLdStr global_96
  loc_AF02E1: AryLock
  loc_AF02E4: Ary1LdPr
  loc_AF02E5: MemLdStr global_8
  loc_AF02E8: AryLock
  loc_AF02EB: Ary1LdPr
  loc_AF02EC: MemLdRfVar from_stack_1.global_0
  loc_AF02EF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF02F4: AryUnlock
  loc_AF02F7: AryUnlock
  loc_AF02FA: FFree1Var var_C0 = ""
  loc_AF02FD: LitI2_Byte 0
  loc_AF02FF: LitVar_Missing var_C0
  loc_AF0302: LitI2_Byte 0
  loc_AF0304: LitVarStr var_A4, "SIN MOVIMIENTOS"
  loc_AF0309: PopAdLdVar
  loc_AF030A: FLdPr Me
  loc_AF030D: MemLdI2 global_102
  loc_AF0310: CI4UI1
  loc_AF0311: FLdPr Me
  loc_AF0314: MemLdI2 global_100
  loc_AF0317: CI4UI1
  loc_AF0318: FLdPr Me
  loc_AF031B: MemLdStr global_96
  loc_AF031E: AryLock
  loc_AF0321: Ary1LdPr
  loc_AF0322: MemLdStr global_8
  loc_AF0325: AryLock
  loc_AF0328: Ary1LdPr
  loc_AF0329: MemLdRfVar from_stack_1.global_4
  loc_AF032C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF0331: AryUnlock
  loc_AF0334: AryUnlock
  loc_AF0337: FFree1Var var_C0 = ""
  loc_AF033A: LitI2_Byte 0
  loc_AF033C: LitVar_Missing var_C0
  loc_AF033F: LitI2_Byte 0
  loc_AF0341: LitVarStr var_A4, vbNullString
  loc_AF0346: PopAdLdVar
  loc_AF0347: FLdPr Me
  loc_AF034A: MemLdI2 global_102
  loc_AF034D: CI4UI1
  loc_AF034E: FLdPr Me
  loc_AF0351: MemLdI2 global_100
  loc_AF0354: CI4UI1
  loc_AF0355: FLdPr Me
  loc_AF0358: MemLdStr global_96
  loc_AF035B: AryLock
  loc_AF035E: Ary1LdPr
  loc_AF035F: MemLdStr global_8
  loc_AF0362: AryLock
  loc_AF0365: Ary1LdPr
  loc_AF0366: MemLdRfVar from_stack_1.global_8
  loc_AF0369: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF036E: AryUnlock
  loc_AF0371: AryUnlock
  loc_AF0374: FFree1Var var_C0 = ""
  loc_AF0377: LitI2_Byte 0
  loc_AF0379: LitVar_Missing var_C0
  loc_AF037C: LitI2_Byte 0
  loc_AF037E: LitVarStr var_A4, vbNullString
  loc_AF0383: PopAdLdVar
  loc_AF0384: FLdPr Me
  loc_AF0387: MemLdI2 global_102
  loc_AF038A: CI4UI1
  loc_AF038B: FLdPr Me
  loc_AF038E: MemLdI2 global_100
  loc_AF0391: CI4UI1
  loc_AF0392: FLdPr Me
  loc_AF0395: MemLdStr global_96
  loc_AF0398: AryLock
  loc_AF039B: Ary1LdPr
  loc_AF039C: MemLdStr global_8
  loc_AF039F: AryLock
  loc_AF03A2: Ary1LdPr
  loc_AF03A3: MemLdRfVar from_stack_1.global_12
  loc_AF03A6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF03AB: AryUnlock
  loc_AF03AE: AryUnlock
  loc_AF03B1: FFree1Var var_C0 = ""
  loc_AF03B4: LitI2_Byte 0
  loc_AF03B6: LitVar_Missing var_C0
  loc_AF03B9: LitI2_Byte 0
  loc_AF03BB: LitVarStr var_A4, vbNullString
  loc_AF03C0: PopAdLdVar
  loc_AF03C1: FLdPr Me
  loc_AF03C4: MemLdI2 global_102
  loc_AF03C7: CI4UI1
  loc_AF03C8: FLdPr Me
  loc_AF03CB: MemLdI2 global_100
  loc_AF03CE: CI4UI1
  loc_AF03CF: FLdPr Me
  loc_AF03D2: MemLdStr global_96
  loc_AF03D5: AryLock
  loc_AF03D8: Ary1LdPr
  loc_AF03D9: MemLdStr global_8
  loc_AF03DC: AryLock
  loc_AF03DF: Ary1LdPr
  loc_AF03E0: MemLdRfVar from_stack_1.global_16
  loc_AF03E3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF03E8: AryUnlock
  loc_AF03EB: AryUnlock
  loc_AF03EE: FFree1Var var_C0 = ""
  loc_AF03F1: LitI2_Byte 0
  loc_AF03F3: LitVar_Missing var_C0
  loc_AF03F6: LitI2_Byte 0
  loc_AF03F8: LitVarStr var_A4, vbNullString
  loc_AF03FD: PopAdLdVar
  loc_AF03FE: FLdPr Me
  loc_AF0401: MemLdI2 global_102
  loc_AF0404: CI4UI1
  loc_AF0405: FLdPr Me
  loc_AF0408: MemLdI2 global_100
  loc_AF040B: CI4UI1
  loc_AF040C: FLdPr Me
  loc_AF040F: MemLdStr global_96
  loc_AF0412: AryLock
  loc_AF0415: Ary1LdPr
  loc_AF0416: MemLdStr global_8
  loc_AF0419: AryLock
  loc_AF041C: Ary1LdPr
  loc_AF041D: MemLdRfVar from_stack_1.global_20
  loc_AF0420: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF0425: AryUnlock
  loc_AF0428: AryUnlock
  loc_AF042B: FFree1Var var_C0 = ""
  loc_AF042E: LitI2_Byte 0
  loc_AF0430: LitVar_Missing var_C0
  loc_AF0433: LitI2_Byte 0
  loc_AF0435: LitVarStr var_A4, vbNullString
  loc_AF043A: PopAdLdVar
  loc_AF043B: FLdPr Me
  loc_AF043E: MemLdI2 global_102
  loc_AF0441: CI4UI1
  loc_AF0442: FLdPr Me
  loc_AF0445: MemLdI2 global_100
  loc_AF0448: CI4UI1
  loc_AF0449: FLdPr Me
  loc_AF044C: MemLdStr global_96
  loc_AF044F: AryLock
  loc_AF0452: Ary1LdPr
  loc_AF0453: MemLdStr global_8
  loc_AF0456: AryLock
  loc_AF0459: Ary1LdPr
  loc_AF045A: MemLdRfVar from_stack_1.global_24
  loc_AF045D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF0462: AryUnlock
  loc_AF0465: AryUnlock
  loc_AF0468: FFree1Var var_C0 = ""
  loc_AF046B: LitI2_Byte 0
  loc_AF046D: LitVar_Missing var_C0
  loc_AF0470: LitI2_Byte 0
  loc_AF0472: LitVarStr var_A4, vbNullString
  loc_AF0477: PopAdLdVar
  loc_AF0478: FLdPr Me
  loc_AF047B: MemLdI2 global_102
  loc_AF047E: CI4UI1
  loc_AF047F: FLdPr Me
  loc_AF0482: MemLdI2 global_100
  loc_AF0485: CI4UI1
  loc_AF0486: FLdPr Me
  loc_AF0489: MemLdStr global_96
  loc_AF048C: AryLock
  loc_AF048F: Ary1LdPr
  loc_AF0490: MemLdStr global_8
  loc_AF0493: AryLock
  loc_AF0496: Ary1LdPr
  loc_AF0497: MemLdRfVar from_stack_1.global_28
  loc_AF049A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF049F: AryUnlock
  loc_AF04A2: AryUnlock
  loc_AF04A5: FFree1Var var_C0 = ""
  loc_AF04A8: LitI2_Byte 0
  loc_AF04AA: LitVar_Missing var_C0
  loc_AF04AD: LitI2_Byte 0
  loc_AF04AF: LitVarStr var_A4, vbNullString
  loc_AF04B4: PopAdLdVar
  loc_AF04B5: FLdPr Me
  loc_AF04B8: MemLdI2 global_102
  loc_AF04BB: CI4UI1
  loc_AF04BC: FLdPr Me
  loc_AF04BF: MemLdI2 global_100
  loc_AF04C2: CI4UI1
  loc_AF04C3: FLdPr Me
  loc_AF04C6: MemLdStr global_96
  loc_AF04C9: AryLock
  loc_AF04CC: Ary1LdPr
  loc_AF04CD: MemLdStr global_8
  loc_AF04D0: AryLock
  loc_AF04D3: Ary1LdPr
  loc_AF04D4: MemLdRfVar from_stack_1.global_32
  loc_AF04D7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF04DC: AryUnlock
  loc_AF04DF: AryUnlock
  loc_AF04E2: FFree1Var var_C0 = ""
  loc_AF04E5: LitI2_Byte 0
  loc_AF04E7: LitVar_Missing var_C0
  loc_AF04EA: LitI2_Byte 0
  loc_AF04EC: LitVarStr var_A4, vbNullString
  loc_AF04F1: PopAdLdVar
  loc_AF04F2: FLdPr Me
  loc_AF04F5: MemLdI2 global_102
  loc_AF04F8: CI4UI1
  loc_AF04F9: FLdPr Me
  loc_AF04FC: MemLdI2 global_100
  loc_AF04FF: CI4UI1
  loc_AF0500: FLdPr Me
  loc_AF0503: MemLdStr global_96
  loc_AF0506: AryLock
  loc_AF0509: Ary1LdPr
  loc_AF050A: MemLdStr global_8
  loc_AF050D: AryLock
  loc_AF0510: Ary1LdPr
  loc_AF0511: MemLdRfVar from_stack_1.global_36
  loc_AF0514: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF0519: AryUnlock
  loc_AF051C: AryUnlock
  loc_AF051F: FFree1Var var_C0 = ""
  loc_AF0522: LitNothing
  loc_AF0524: FStAd var_88 
  loc_AF0528: ExitProcHresult
  loc_AF0529: MulCyI2
End Function

Private Function Proc_165_21_ADF5D0() 'ADF5D0
  'Data Table: 45B658
  loc_ADEF34: LitVarStr var_94, "<html>"
  loc_ADEF39: PopAdLdVar
  loc_ADEF3A: FLdPr Me
  loc_ADEF3D: MemLdRfVar from_stack_1.htmFile
  loc_ADEF40: LdPrVar
  loc_ADEF42: LateMemCall
  loc_ADEF48: LitVarStr var_94, "<head>"
  loc_ADEF4D: PopAdLdVar
  loc_ADEF4E: FLdPr Me
  loc_ADEF51: MemLdRfVar from_stack_1.htmFile
  loc_ADEF54: LdPrVar
  loc_ADEF56: LateMemCall
  loc_ADEF5C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_ADEF61: PopAdLdVar
  loc_ADEF62: FLdPr Me
  loc_ADEF65: MemLdRfVar from_stack_1.htmFile
  loc_ADEF68: LdPrVar
  loc_ADEF6A: LateMemCall
  loc_ADEF70: LitStr "<title>"
  loc_ADEF73: FLdRfVar var_A8
  loc_ADEF76: FLdPr Me
  loc_ADEF79:  = Me.Caption
  loc_ADEF7E: ILdRf var_A8
  loc_ADEF81: ConcatStr
  loc_ADEF82: FStStrNoPop var_AC
  loc_ADEF85: LitStr " - "
  loc_ADEF88: ConcatStr
  loc_ADEF89: FStStrNoPop var_B0
  loc_ADEF8C: LitStr "Municipalidad de Guaymallén"
  loc_ADEF8F: ConcatStr
  loc_ADEF90: FStStrNoPop var_B4
  loc_ADEF93: LitStr "</title>"
  loc_ADEF96: ConcatStr
  loc_ADEF97: CVarStr var_C4
  loc_ADEF9A: PopAdLdVar
  loc_ADEF9B: FLdPr Me
  loc_ADEF9E: MemLdRfVar from_stack_1.htmFile
  loc_ADEFA1: LdPrVar
  loc_ADEFA3: LateMemCall
  loc_ADEFA9: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_ADEFB4: FFree1Var var_C4 = ""
  loc_ADEFB7: LitVarStr var_94, "<style type=""text/css"">"
  loc_ADEFBC: PopAdLdVar
  loc_ADEFBD: FLdPr Me
  loc_ADEFC0: MemLdRfVar from_stack_1.htmFile
  loc_ADEFC3: LdPrVar
  loc_ADEFC5: LateMemCall
  loc_ADEFCB: LitVarStr var_94, ".Titulo1 {"
  loc_ADEFD0: PopAdLdVar
  loc_ADEFD1: FLdPr Me
  loc_ADEFD4: MemLdRfVar from_stack_1.htmFile
  loc_ADEFD7: LdPrVar
  loc_ADEFD9: LateMemCall
  loc_ADEFDF: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ADEFE4: PopAdLdVar
  loc_ADEFE5: FLdPr Me
  loc_ADEFE8: MemLdRfVar from_stack_1.htmFile
  loc_ADEFEB: LdPrVar
  loc_ADEFED: LateMemCall
  loc_ADEFF3: LitVarStr var_94, " font-size: 18px;"
  loc_ADEFF8: PopAdLdVar
  loc_ADEFF9: FLdPr Me
  loc_ADEFFC: MemLdRfVar from_stack_1.htmFile
  loc_ADEFFF: LdPrVar
  loc_ADF001: LateMemCall
  loc_ADF007: LitVarStr var_94, " font-weight: bold;"
  loc_ADF00C: PopAdLdVar
  loc_ADF00D: FLdPr Me
  loc_ADF010: MemLdRfVar from_stack_1.htmFile
  loc_ADF013: LdPrVar
  loc_ADF015: LateMemCall
  loc_ADF01B: LitVarStr var_94, "}"
  loc_ADF020: PopAdLdVar
  loc_ADF021: FLdPr Me
  loc_ADF024: MemLdRfVar from_stack_1.htmFile
  loc_ADF027: LdPrVar
  loc_ADF029: LateMemCall
  loc_ADF02F: LitVarStr var_94, ".Titulo2 {"
  loc_ADF034: PopAdLdVar
  loc_ADF035: FLdPr Me
  loc_ADF038: MemLdRfVar from_stack_1.htmFile
  loc_ADF03B: LdPrVar
  loc_ADF03D: LateMemCall
  loc_ADF043: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ADF048: PopAdLdVar
  loc_ADF049: FLdPr Me
  loc_ADF04C: MemLdRfVar from_stack_1.htmFile
  loc_ADF04F: LdPrVar
  loc_ADF051: LateMemCall
  loc_ADF057: LitVarStr var_94, " font-size: 14px;"
  loc_ADF05C: PopAdLdVar
  loc_ADF05D: FLdPr Me
  loc_ADF060: MemLdRfVar from_stack_1.htmFile
  loc_ADF063: LdPrVar
  loc_ADF065: LateMemCall
  loc_ADF06B: LitVarStr var_94, " font-weight: bold;"
  loc_ADF070: PopAdLdVar
  loc_ADF071: FLdPr Me
  loc_ADF074: MemLdRfVar from_stack_1.htmFile
  loc_ADF077: LdPrVar
  loc_ADF079: LateMemCall
  loc_ADF07F: LitVarStr var_94, "}"
  loc_ADF084: PopAdLdVar
  loc_ADF085: FLdPr Me
  loc_ADF088: MemLdRfVar from_stack_1.htmFile
  loc_ADF08B: LdPrVar
  loc_ADF08D: LateMemCall
  loc_ADF093: LitVarStr var_94, ".Encabezado {"
  loc_ADF098: PopAdLdVar
  loc_ADF099: FLdPr Me
  loc_ADF09C: MemLdRfVar from_stack_1.htmFile
  loc_ADF09F: LdPrVar
  loc_ADF0A1: LateMemCall
  loc_ADF0A7: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_ADF0AC: PopAdLdVar
  loc_ADF0AD: FLdPr Me
  loc_ADF0B0: MemLdRfVar from_stack_1.htmFile
  loc_ADF0B3: LdPrVar
  loc_ADF0B5: LateMemCall
  loc_ADF0BB: LitVarStr var_94, " font-size: 11px;"
  loc_ADF0C0: PopAdLdVar
  loc_ADF0C1: FLdPr Me
  loc_ADF0C4: MemLdRfVar from_stack_1.htmFile
  loc_ADF0C7: LdPrVar
  loc_ADF0C9: LateMemCall
  loc_ADF0CF: LitVarStr var_94, " font-weight: bold;"
  loc_ADF0D4: PopAdLdVar
  loc_ADF0D5: FLdPr Me
  loc_ADF0D8: MemLdRfVar from_stack_1.htmFile
  loc_ADF0DB: LdPrVar
  loc_ADF0DD: LateMemCall
  loc_ADF0E3: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_ADF0E8: PopAdLdVar
  loc_ADF0E9: FLdPr Me
  loc_ADF0EC: MemLdRfVar from_stack_1.htmFile
  loc_ADF0EF: LdPrVar
  loc_ADF0F1: LateMemCall
  loc_ADF0F7: LitVarStr var_94, "}"
  loc_ADF0FC: PopAdLdVar
  loc_ADF0FD: FLdPr Me
  loc_ADF100: MemLdRfVar from_stack_1.htmFile
  loc_ADF103: LdPrVar
  loc_ADF105: LateMemCall
  loc_ADF10B: LitVarStr var_94, ".LineaDato {"
  loc_ADF110: PopAdLdVar
  loc_ADF111: FLdPr Me
  loc_ADF114: MemLdRfVar from_stack_1.htmFile
  loc_ADF117: LdPrVar
  loc_ADF119: LateMemCall
  loc_ADF11F: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_ADF124: PopAdLdVar
  loc_ADF125: FLdPr Me
  loc_ADF128: MemLdRfVar from_stack_1.htmFile
  loc_ADF12B: LdPrVar
  loc_ADF12D: LateMemCall
  loc_ADF133: LitVarStr var_94, " font-size: 9px;"
  loc_ADF138: PopAdLdVar
  loc_ADF139: FLdPr Me
  loc_ADF13C: MemLdRfVar from_stack_1.htmFile
  loc_ADF13F: LdPrVar
  loc_ADF141: LateMemCall
  loc_ADF147: LitVarStr var_94, "}"
  loc_ADF14C: PopAdLdVar
  loc_ADF14D: FLdPr Me
  loc_ADF150: MemLdRfVar from_stack_1.htmFile
  loc_ADF153: LdPrVar
  loc_ADF155: LateMemCall
  loc_ADF15B: LitVarStr var_94, ".Totales {"
  loc_ADF160: PopAdLdVar
  loc_ADF161: FLdPr Me
  loc_ADF164: MemLdRfVar from_stack_1.htmFile
  loc_ADF167: LdPrVar
  loc_ADF169: LateMemCall
  loc_ADF16F: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_ADF174: PopAdLdVar
  loc_ADF175: FLdPr Me
  loc_ADF178: MemLdRfVar from_stack_1.htmFile
  loc_ADF17B: LdPrVar
  loc_ADF17D: LateMemCall
  loc_ADF183: LitVarStr var_94, " font-size: 10px;"
  loc_ADF188: PopAdLdVar
  loc_ADF189: FLdPr Me
  loc_ADF18C: MemLdRfVar from_stack_1.htmFile
  loc_ADF18F: LdPrVar
  loc_ADF191: LateMemCall
  loc_ADF197: LitVarStr var_94, " font-weight: bold;"
  loc_ADF19C: PopAdLdVar
  loc_ADF19D: FLdPr Me
  loc_ADF1A0: MemLdRfVar from_stack_1.htmFile
  loc_ADF1A3: LdPrVar
  loc_ADF1A5: LateMemCall
  loc_ADF1AB: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_ADF1B0: PopAdLdVar
  loc_ADF1B1: FLdPr Me
  loc_ADF1B4: MemLdRfVar from_stack_1.htmFile
  loc_ADF1B7: LdPrVar
  loc_ADF1B9: LateMemCall
  loc_ADF1BF: LitVarStr var_94, "}"
  loc_ADF1C4: PopAdLdVar
  loc_ADF1C5: FLdPr Me
  loc_ADF1C8: MemLdRfVar from_stack_1.htmFile
  loc_ADF1CB: LdPrVar
  loc_ADF1CD: LateMemCall
  loc_ADF1D3: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_ADF1D8: PopAdLdVar
  loc_ADF1D9: FLdPr Me
  loc_ADF1DC: MemLdRfVar from_stack_1.htmFile
  loc_ADF1DF: LdPrVar
  loc_ADF1E1: LateMemCall
  loc_ADF1E7: LitVarStr var_94, "</style>"
  loc_ADF1EC: PopAdLdVar
  loc_ADF1ED: FLdPr Me
  loc_ADF1F0: MemLdRfVar from_stack_1.htmFile
  loc_ADF1F3: LdPrVar
  loc_ADF1F5: LateMemCall
  loc_ADF1FB: LitI4 0
  loc_ADF200: FStStrCopy var_AC
  loc_ADF203: FLdRfVar var_AC
  loc_ADF206: LitI4 0
  loc_ADF20B: FStStrCopy var_A8
  loc_ADF20E: FLdRfVar var_A8
  loc_ADF211: LitI2_Byte &HFF
  loc_ADF213: PopTmpLdAd2 var_C6
  loc_ADF216: FLdPr Me
  loc_ADF219: MemLdRfVar from_stack_1.htmFile
  loc_ADF21C: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_ADF221: FFreeStr var_A8 = ""
  loc_ADF228: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_ADF22D: PopAdLdVar
  loc_ADF22E: FLdPr Me
  loc_ADF231: MemLdRfVar from_stack_1.htmFile
  loc_ADF234: LdPrVar
  loc_ADF236: LateMemCall
  loc_ADF23C: LitVarStr var_94, "  <tr valign=""center"">"
  loc_ADF241: PopAdLdVar
  loc_ADF242: FLdPr Me
  loc_ADF245: MemLdRfVar from_stack_1.htmFile
  loc_ADF248: LdPrVar
  loc_ADF24A: LateMemCall
  loc_ADF250: LitVarStr var_94, "    <th align=""center"" valign=""center""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>ACUERDO N&ordm; 3949 <br>"
  loc_ADF255: PopAdLdVar
  loc_ADF256: FLdPr Me
  loc_ADF259: MemLdRfVar from_stack_1.htmFile
  loc_ADF25C: LdPrVar
  loc_ADF25E: LateMemCall
  loc_ADF264: LitVarStr var_94, "      <span class=""Titulo2"">ANEXO 5: evolución de la Deuda Pública Consolidada Acumulada al fin del trimestre</span></p>"
  loc_ADF269: PopAdLdVar
  loc_ADF26A: FLdPr Me
  loc_ADF26D: MemLdRfVar from_stack_1.htmFile
  loc_ADF270: LdPrVar
  loc_ADF272: LateMemCall
  loc_ADF278: LitVarStr var_94, "    </th>"
  loc_ADF27D: PopAdLdVar
  loc_ADF27E: FLdPr Me
  loc_ADF281: MemLdRfVar from_stack_1.htmFile
  loc_ADF284: LdPrVar
  loc_ADF286: LateMemCall
  loc_ADF28C: LitVarStr var_94, "  </tr>"
  loc_ADF291: PopAdLdVar
  loc_ADF292: FLdPr Me
  loc_ADF295: MemLdRfVar from_stack_1.htmFile
  loc_ADF298: LdPrVar
  loc_ADF29A: LateMemCall
  loc_ADF2A0: LitVarStr var_94, "  <tr>"
  loc_ADF2A5: PopAdLdVar
  loc_ADF2A6: FLdPr Me
  loc_ADF2A9: MemLdRfVar from_stack_1.htmFile
  loc_ADF2AC: LdPrVar
  loc_ADF2AE: LateMemCall
  loc_ADF2B4: LitVarStr var_94, "    <th>"
  loc_ADF2B9: PopAdLdVar
  loc_ADF2BA: FLdPr Me
  loc_ADF2BD: MemLdRfVar from_stack_1.htmFile
  loc_ADF2C0: LdPrVar
  loc_ADF2C2: LateMemCall
  loc_ADF2C8: LitStr "      <p align=""left"" class=""Titulo2"">      Repartici&oacute;n/Organismo: "
  loc_ADF2CB: LitStr "Municipalidad de Guaymallén"
  loc_ADF2CE: ConcatStr
  loc_ADF2CF: FStStrNoPop var_A8
  loc_ADF2D2: LitStr "<br>"
  loc_ADF2D5: ConcatStr
  loc_ADF2D6: CVarStr var_C4
  loc_ADF2D9: PopAdLdVar
  loc_ADF2DA: FLdPr Me
  loc_ADF2DD: MemLdRfVar from_stack_1.htmFile
  loc_ADF2E0: LdPrVar
  loc_ADF2E2: LateMemCall
  loc_ADF2E8: FFree1Str var_A8
  loc_ADF2EB: FFree1Var var_C4 = ""
  loc_ADF2EE: LitStr "    Nomenclador: "
  loc_ADF2F1: LitStr "060204"
  loc_ADF2F4: ConcatStr
  loc_ADF2F5: FStStrNoPop var_A8
  loc_ADF2F8: LitStr "<br>"
  loc_ADF2FB: ConcatStr
  loc_ADF2FC: CVarStr var_C4
  loc_ADF2FF: PopAdLdVar
  loc_ADF300: FLdPr Me
  loc_ADF303: MemLdRfVar from_stack_1.htmFile
  loc_ADF306: LdPrVar
  loc_ADF308: LateMemCall
  loc_ADF30E: FFree1Str var_A8
  loc_ADF311: FFree1Var var_C4 = ""
  loc_ADF314: LitStr "    Ejercicio: "
  loc_ADF317: FLdRfVar var_A8
  loc_ADF31A: FLdPr Me
  loc_ADF31D: VCallAd Control_ID_cboPeriodo
  loc_ADF320: FStAdFunc var_CC
  loc_ADF323: FLdPr var_CC
  loc_ADF326:  = Me.Text
  loc_ADF32B: ILdRf var_A8
  loc_ADF32E: ConcatStr
  loc_ADF32F: FStStrNoPop var_AC
  loc_ADF332: LitStr " <br>"
  loc_ADF335: ConcatStr
  loc_ADF336: CVarStr var_C4
  loc_ADF339: PopAdLdVar
  loc_ADF33A: FLdPr Me
  loc_ADF33D: MemLdRfVar from_stack_1.htmFile
  loc_ADF340: LdPrVar
  loc_ADF342: LateMemCall
  loc_ADF348: FFreeStr var_A8 = ""
  loc_ADF34F: FFree1Ad var_CC
  loc_ADF352: FFree1Var var_C4 = ""
  loc_ADF355: FLdRfVar var_C6
  loc_ADF358: FLdPr Me
  loc_ADF35B: VCallAd Control_ID_cboTrimestre
  loc_ADF35E: FStAdFunc var_D0
  loc_ADF361: FLdPr var_D0
  loc_ADF364:  = Me.ListIndex
  loc_ADF369: FLdRfVar var_D8
  loc_ADF36C: FLdI2 var_C6
  loc_ADF36F: FLdPr Me
  loc_ADF372: VCallAd Control_ID_cboTrimestre
  loc_ADF375: FStAdFunc var_D4
  loc_ADF378: FLdPr var_D4
  loc_ADF37B:  = Me.ItemData
  loc_ADF380: FLdRfVar var_AC
  loc_ADF383: FLdPr Me
  loc_ADF386: VCallAd Control_ID_cboPeriodo
  loc_ADF389: FStAdFunc var_DC
  loc_ADF38C: FLdPr var_DC
  loc_ADF38F:  = Me.Text
  loc_ADF394: ILdRf var_AC
  loc_ADF397: CI2Str
  loc_ADF399: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_ADF39E: CVarStr var_C4
  loc_ADF3A1: FLdRfVar var_EC
  loc_ADF3A4: ImpAdCallFPR4  = Month()
  loc_ADF3A9: LitStr "    Trimestre: "
  loc_ADF3AC: FLdRfVar var_A8
  loc_ADF3AF: FLdPr Me
  loc_ADF3B2: VCallAd Control_ID_cboTrimestre
  loc_ADF3B5: FStAdFunc var_CC
  loc_ADF3B8: FLdPr var_CC
  loc_ADF3BB:  = Me.Text
  loc_ADF3C0: ILdRf var_A8
  loc_ADF3C3: ConcatStr
  loc_ADF3C4: CVarStr var_15C
  loc_ADF3C7: LitVarStr var_12C, vbNullString
  loc_ADF3CC: FStVarCopyObj var_13C
  loc_ADF3CF: FLdRfVar var_13C
  loc_ADF3D2: LitVarStr var_A4, " (PROVISORIO)"
  loc_ADF3D7: FStVarCopyObj var_11C
  loc_ADF3DA: FLdRfVar var_11C
  loc_ADF3DD: ILdRf var_D8
  loc_ADF3E0: LitI4 3
  loc_ADF3E5: MulI4
  loc_ADF3E6: CVarI4
  loc_ADF3EA: HardType
  loc_ADF3EB: FLdRfVar var_EC
  loc_ADF3EE: GtVar var_FC
  loc_ADF3F2: FStVar var_10C
  loc_ADF3F6: FLdRfVar var_10C
  loc_ADF3F9: FLdRfVar var_14C
  loc_ADF3FC: ImpAdCallFPR4  = IIf(, , )
  loc_ADF401: FLdRfVar var_14C
  loc_ADF404: ConcatVar var_16C
  loc_ADF408: PopAdLdVar
  loc_ADF409: FLdPr Me
  loc_ADF40C: MemLdRfVar from_stack_1.htmFile
  loc_ADF40F: LdPrVar
  loc_ADF411: LateMemCall
  loc_ADF417: FFreeStr var_A8 = ""
  loc_ADF41E: FFreeAd var_CC = "": var_D0 = "": var_D4 = ""
  loc_ADF429: FFreeVar var_C4 = "": var_EC = "": var_10C = "": var_11C = "": var_13C = "": var_15C = "": var_14C = ""
  loc_ADF43C: LitVarStr var_94, "    </p></th>"
  loc_ADF441: PopAdLdVar
  loc_ADF442: FLdPr Me
  loc_ADF445: MemLdRfVar from_stack_1.htmFile
  loc_ADF448: LdPrVar
  loc_ADF44A: LateMemCall
  loc_ADF450: LitVarStr var_94, "  </tr>"
  loc_ADF455: PopAdLdVar
  loc_ADF456: FLdPr Me
  loc_ADF459: MemLdRfVar from_stack_1.htmFile
  loc_ADF45C: LdPrVar
  loc_ADF45E: LateMemCall
  loc_ADF464: LitVarStr var_94, "</table>"
  loc_ADF469: PopAdLdVar
  loc_ADF46A: FLdPr Me
  loc_ADF46D: MemLdRfVar from_stack_1.htmFile
  loc_ADF470: LdPrVar
  loc_ADF472: LateMemCall
  loc_ADF478: LitVarStr var_94, "<table border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_ADF47D: PopAdLdVar
  loc_ADF47E: FLdPr Me
  loc_ADF481: MemLdRfVar from_stack_1.htmFile
  loc_ADF484: LdPrVar
  loc_ADF486: LateMemCall
  loc_ADF48C: LitVarStr var_94, "  <THEAD>"
  loc_ADF491: PopAdLdVar
  loc_ADF492: FLdPr Me
  loc_ADF495: MemLdRfVar from_stack_1.htmFile
  loc_ADF498: LdPrVar
  loc_ADF49A: LateMemCall
  loc_ADF4A0: LitVarStr var_94, " <tr align=""center"" class=""Encabezado"">"
  loc_ADF4A5: PopAdLdVar
  loc_ADF4A6: FLdPr Me
  loc_ADF4A9: MemLdRfVar from_stack_1.htmFile
  loc_ADF4AC: LdPrVar
  loc_ADF4AE: LateMemCall
  loc_ADF4B4: LitVarStr var_94, "     <th rowspan=""2"">Concepto</th>"
  loc_ADF4B9: PopAdLdVar
  loc_ADF4BA: FLdPr Me
  loc_ADF4BD: MemLdRfVar from_stack_1.htmFile
  loc_ADF4C0: LdPrVar
  loc_ADF4C2: LateMemCall
  loc_ADF4C8: LitVarStr var_94, "     <th width=""10" & Chr(37) & """ rowspan=""2"">Saldo al inicio del trimestre</th>"
  loc_ADF4CD: PopAdLdVar
  loc_ADF4CE: FLdPr Me
  loc_ADF4D1: MemLdRfVar from_stack_1.htmFile
  loc_ADF4D4: LdPrVar
  loc_ADF4D6: LateMemCall
  loc_ADF4DC: LitVarStr var_94, "     <th width=""10" & Chr(37) & """ rowspan=""2"">Pagos realizados en el trimestre</th>"
  loc_ADF4E1: PopAdLdVar
  loc_ADF4E2: FLdPr Me
  loc_ADF4E5: MemLdRfVar from_stack_1.htmFile
  loc_ADF4E8: LdPrVar
  loc_ADF4EA: LateMemCall
  loc_ADF4F0: LitVarStr var_94, "     <th width=""10" & Chr(37) & """ rowspan=""2"">Deuda contraida en el trimestre</th>"
  loc_ADF4F5: PopAdLdVar
  loc_ADF4F6: FLdPr Me
  loc_ADF4F9: MemLdRfVar from_stack_1.htmFile
  loc_ADF4FC: LdPrVar
  loc_ADF4FE: LateMemCall
  loc_ADF504: LitVarStr var_94, "     <th width=""10" & Chr(37) & """ rowspan=""2"">Variación en el trimestre por renegociación de la deuda</th>"
  loc_ADF509: PopAdLdVar
  loc_ADF50A: FLdPr Me
  loc_ADF50D: MemLdRfVar from_stack_1.htmFile
  loc_ADF510: LdPrVar
  loc_ADF512: LateMemCall
  loc_ADF518: LitVarStr var_94, "     <th width=""10" & Chr(37) & """ rowspan=""2"">Saldo al final del trimestre</th>"
  loc_ADF51D: PopAdLdVar
  loc_ADF51E: FLdPr Me
  loc_ADF521: MemLdRfVar from_stack_1.htmFile
  loc_ADF524: LdPrVar
  loc_ADF526: LateMemCall
  loc_ADF52C: LitVarStr var_94, "     <th colspan=""2"">Norma Legal</th>"
  loc_ADF531: PopAdLdVar
  loc_ADF532: FLdPr Me
  loc_ADF535: MemLdRfVar from_stack_1.htmFile
  loc_ADF538: LdPrVar
  loc_ADF53A: LateMemCall
  loc_ADF540: LitVarStr var_94, "     <th rowspan=""2"">Tipo de entidad Acreedora</th>"
  loc_ADF545: PopAdLdVar
  loc_ADF546: FLdPr Me
  loc_ADF549: MemLdRfVar from_stack_1.htmFile
  loc_ADF54C: LdPrVar
  loc_ADF54E: LateMemCall
  loc_ADF554: LitVarStr var_94, "  </tr>"
  loc_ADF559: PopAdLdVar
  loc_ADF55A: FLdPr Me
  loc_ADF55D: MemLdRfVar from_stack_1.htmFile
  loc_ADF560: LdPrVar
  loc_ADF562: LateMemCall
  loc_ADF568: LitVarStr var_94, " <tr align=""center"" class=""Encabezado"">"
  loc_ADF56D: PopAdLdVar
  loc_ADF56E: FLdPr Me
  loc_ADF571: MemLdRfVar from_stack_1.htmFile
  loc_ADF574: LdPrVar
  loc_ADF576: LateMemCall
  loc_ADF57C: LitVarStr var_94, "     <th>Tipo</th>"
  loc_ADF581: PopAdLdVar
  loc_ADF582: FLdPr Me
  loc_ADF585: MemLdRfVar from_stack_1.htmFile
  loc_ADF588: LdPrVar
  loc_ADF58A: LateMemCall
  loc_ADF590: LitVarStr var_94, "     <th>Número</th>"
  loc_ADF595: PopAdLdVar
  loc_ADF596: FLdPr Me
  loc_ADF599: MemLdRfVar from_stack_1.htmFile
  loc_ADF59C: LdPrVar
  loc_ADF59E: LateMemCall
  loc_ADF5A4: LitVarStr var_94, "  </tr>"
  loc_ADF5A9: PopAdLdVar
  loc_ADF5AA: FLdPr Me
  loc_ADF5AD: MemLdRfVar from_stack_1.htmFile
  loc_ADF5B0: LdPrVar
  loc_ADF5B2: LateMemCall
  loc_ADF5B8: LitVarStr var_94, "  </THEAD>"
  loc_ADF5BD: PopAdLdVar
  loc_ADF5BE: FLdPr Me
  loc_ADF5C1: MemLdRfVar from_stack_1.htmFile
  loc_ADF5C4: LdPrVar
  loc_ADF5C6: LateMemCall
  loc_ADF5CC: ExitProcHresult
End Function

Private Function Proc_165_22_9EEA84() '9EEA84
  'Data Table: 45B658
  loc_9EE940: LitVarStr var_94, "</table>"
  loc_9EE945: PopAdLdVar
  loc_9EE946: FLdPr Me
  loc_9EE949: MemLdRfVar from_stack_1.htmFile
  loc_9EE94C: LdPrVar
  loc_9EE94E: LateMemCall
  loc_9EE954: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_9EE959: PopAdLdVar
  loc_9EE95A: FLdPr Me
  loc_9EE95D: MemLdRfVar from_stack_1.htmFile
  loc_9EE960: LdPrVar
  loc_9EE962: LateMemCall
  loc_9EE968: LitVarStr var_94, "  <tr>"
  loc_9EE96D: PopAdLdVar
  loc_9EE96E: FLdPr Me
  loc_9EE971: MemLdRfVar from_stack_1.htmFile
  loc_9EE974: LdPrVar
  loc_9EE976: LateMemCall
  loc_9EE97C: LitVarStr var_94, "    <th scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_9EE981: PopAdLdVar
  loc_9EE982: FLdPr Me
  loc_9EE985: MemLdRfVar from_stack_1.htmFile
  loc_9EE988: LdPrVar
  loc_9EE98A: LateMemCall
  loc_9EE990: LitVarStr var_94, "          <map name=""Map"">"
  loc_9EE995: PopAdLdVar
  loc_9EE996: FLdPr Me
  loc_9EE999: MemLdRfVar from_stack_1.htmFile
  loc_9EE99C: LdPrVar
  loc_9EE99E: LateMemCall
  loc_9EE9A4: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_9EE9A9: PopAdLdVar
  loc_9EE9AA: FLdPr Me
  loc_9EE9AD: MemLdRfVar from_stack_1.htmFile
  loc_9EE9B0: LdPrVar
  loc_9EE9B2: LateMemCall
  loc_9EE9B8: LitVarStr var_94, "          </map>"
  loc_9EE9BD: PopAdLdVar
  loc_9EE9BE: FLdPr Me
  loc_9EE9C1: MemLdRfVar from_stack_1.htmFile
  loc_9EE9C4: LdPrVar
  loc_9EE9C6: LateMemCall
  loc_9EE9CC: LitVarStr var_94, "    </div></th>"
  loc_9EE9D1: PopAdLdVar
  loc_9EE9D2: FLdPr Me
  loc_9EE9D5: MemLdRfVar from_stack_1.htmFile
  loc_9EE9D8: LdPrVar
  loc_9EE9DA: LateMemCall
  loc_9EE9E0: LitVarStr var_94, "  </tr>"
  loc_9EE9E5: PopAdLdVar
  loc_9EE9E6: FLdPr Me
  loc_9EE9E9: MemLdRfVar from_stack_1.htmFile
  loc_9EE9EC: LdPrVar
  loc_9EE9EE: LateMemCall
  loc_9EE9F4: LitVarStr var_94, "  <tr>"
  loc_9EE9F9: PopAdLdVar
  loc_9EE9FA: FLdPr Me
  loc_9EE9FD: MemLdRfVar from_stack_1.htmFile
  loc_9EEA00: LdPrVar
  loc_9EEA02: LateMemCall
  loc_9EEA08: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_9EEA0D: PopAdLdVar
  loc_9EEA0E: FLdPr Me
  loc_9EEA11: MemLdRfVar from_stack_1.htmFile
  loc_9EEA14: LdPrVar
  loc_9EEA16: LateMemCall
  loc_9EEA1C: LitVarStr var_94, "  </tr>"
  loc_9EEA21: PopAdLdVar
  loc_9EEA22: FLdPr Me
  loc_9EEA25: MemLdRfVar from_stack_1.htmFile
  loc_9EEA28: LdPrVar
  loc_9EEA2A: LateMemCall
  loc_9EEA30: LitVarStr var_94, "</table>"
  loc_9EEA35: PopAdLdVar
  loc_9EEA36: FLdPr Me
  loc_9EEA39: MemLdRfVar from_stack_1.htmFile
  loc_9EEA3C: LdPrVar
  loc_9EEA3E: LateMemCall
  loc_9EEA44: LitVarStr var_94, "<p class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</p>"
  loc_9EEA49: PopAdLdVar
  loc_9EEA4A: FLdPr Me
  loc_9EEA4D: MemLdRfVar from_stack_1.htmFile
  loc_9EEA50: LdPrVar
  loc_9EEA52: LateMemCall
  loc_9EEA58: LitVarStr var_94, "</body>"
  loc_9EEA5D: PopAdLdVar
  loc_9EEA5E: FLdPr Me
  loc_9EEA61: MemLdRfVar from_stack_1.htmFile
  loc_9EEA64: LdPrVar
  loc_9EEA66: LateMemCall
  loc_9EEA6C: LitVarStr var_94, "</html>"
  loc_9EEA71: PopAdLdVar
  loc_9EEA72: FLdPr Me
  loc_9EEA75: MemLdRfVar from_stack_1.htmFile
  loc_9EEA78: LdPrVar
  loc_9EEA7A: LateMemCall
  loc_9EEA80: ExitProcHresult
End Function
