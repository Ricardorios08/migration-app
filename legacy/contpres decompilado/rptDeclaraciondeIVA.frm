VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptDeclaraciondeIVA
  Caption = "Archivo para SICORE 7.1 rev 3 IVA"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptDeclaraciondeIVA.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6405
  ClientHeight = 3000
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1560
    Width = 3015
    Height = 1095
    TabIndex = 8
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 9
    End
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2745
    Width = 6405
    Height = 255
    TabIndex = 14
    OleObjectBlob = "rptDeclaraciondeIVA.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5400
    Top = 480
    Width = 735
    Height = 615
    TabIndex = 6
    Cancel = -1  'True
    Picture = "rptDeclaraciondeIVA.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptDeclaraciondeIVA.frx":0B9C
    Left = 2760
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1560
    Width = 3015
    Height = 1095
    TabIndex = 11
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 13
    End
    Begin VB.CommandButton cmdTXT
      Caption = "&TXT"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 12
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 5055
    Height = 1455
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 3240
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
    Begin VB.ComboBox cboMes
      Style = 2
      ForeColor = &HFF0000&
      Left = 1080
      Top = 840
      Width = 1575
      Height = 315
      TabIndex = 5
    End
    Begin VB.Label Label2
      Caption = "Mes:"
      Left = 600
      Top = 840
      Width = 345
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
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
    Left = 5520
    Top = 840
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 7
    OleObjectBlob = "rptDeclaraciondeIVA.frx":0C00
  End
End

Attribute VB_Name = "rptDeclaraciondeIVA"

Public bGenerado As Boolean

Private Type UDT_1_00519134
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_2_005D8450
  bStruc(244) As Byte ' String fields: 10
End Type


Private Sub Form_Load() 'A05D58
  'Data Table: 4400F0
  loc_A05BFC: LitI2_Byte &HFF
  loc_A05BFE: ImpAdStI2 MemVar_C3D840
  loc_A05C01: ILdRf Me
  loc_A05C04: CastAd
  loc_A05C07: FStAdFunc var_8C
  loc_A05C0A: FLdRfVar var_8C
  loc_A05C0D: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A05C12: FFree1Ad var_8C
  loc_A05C15: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_A05C18: FLdPr Me
  loc_A05C1B: MemLdRfVar from_stack_1.global_56
  loc_A05C1E: NewIfNullPr clsperiodo
  loc_A05C21: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A05C26: FLdRfVar var_90
  loc_A05C29: FLdPr Me
  loc_A05C2C: MemLdRfVar from_stack_1.global_56
  loc_A05C2F: NewIfNullPr clsperiodo
  loc_A05C32: from_stack_1 = clsperiodo.RecordCount
  loc_A05C37: ILdRf var_90
  loc_A05C3A: LitI4 0
  loc_A05C3F: GtI4
  loc_A05C40: BranchF loc_A05CDF
  loc_A05C43: FLdPr Me
  loc_A05C46: MemLdRfVar from_stack_1.global_56
  loc_A05C49: NewIfNullPr clsperiodo
  loc_A05C4C: Call clsperiodo.MoveFirst()
  loc_A05C51: FLdRfVar var_92
  loc_A05C54: FLdPr Me
  loc_A05C57: MemLdRfVar from_stack_1.global_56
  loc_A05C5A: NewIfNullPr clsperiodo
  loc_A05C5D: from_stack_1 = clsperiodo.EOF
  loc_A05C62: FLdI2 var_92
  loc_A05C65: NotI4
  loc_A05C66: BranchF loc_A05CDF
  loc_A05C69: LitVar_Missing var_D0
  loc_A05C6C: PopAdLdVar
  loc_A05C6D: FLdRfVar var_BC
  loc_A05C70: FLdRfVar var_AC
  loc_A05C73: LitVarStr var_A8, "PeriInfo"
  loc_A05C78: PopAdLdVar
  loc_A05C79: FLdRfVar var_98
  loc_A05C7C: FLdRfVar var_8C
  loc_A05C7F: FLdPr Me
  loc_A05C82: MemLdRfVar from_stack_1.global_56
  loc_A05C85: NewIfNullPr clsperiodo
  loc_A05C88: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A05C8D: FLdPr var_8C
  loc_A05C90:  = Me.Fields
  loc_A05C95: FLdPr var_98
  loc_A05C98: from_stack_2 = Me.Item(from_stack_1)
  loc_A05C9D: FLdPr var_AC
  loc_A05CA0:  = Me.Value
  loc_A05CA5: FLdRfVar var_BC
  loc_A05CA8: CStrVarTmp
  loc_A05CA9: FStStrNoPop var_C0
  loc_A05CAC: FLdPr Me
  loc_A05CAF: VCallAd Control_ID_cboPeriodo
  loc_A05CB2: FStAdFunc var_D4
  loc_A05CB5: FLdPr var_D4
  loc_A05CB8: Me.AddItem from_stack_1, from_stack_2
  loc_A05CBD: FFree1Str var_C0
  loc_A05CC0: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_A05CCB: FFree1Var var_BC = ""
  loc_A05CCE: FLdPr Me
  loc_A05CD1: MemLdRfVar from_stack_1.global_56
  loc_A05CD4: NewIfNullPr clsperiodo
  loc_A05CD7: Call clsperiodo.MoveSiguiente()
  loc_A05CDC: Branch loc_A05C51
  loc_A05CDF: LitI2_Byte 1
  loc_A05CE1: FLdRfVar var_86
  loc_A05CE4: LitI2_Byte &HC
  loc_A05CE6: ForI2 var_D8
  loc_A05CEC: LitVar_Missing var_A8
  loc_A05CEF: PopAdLdVar
  loc_A05CF0: LitI2_Byte 0
  loc_A05CF2: FLdI2 var_86
  loc_A05CF5: CI4UI1
  loc_A05CF6: ImpAdCallI2 MonthName(, )
  loc_A05CFB: FStStrNoPop var_C0
  loc_A05CFE: FLdPr Me
  loc_A05D01: VCallAd Control_ID_cboMes
  loc_A05D04: FStAdFunc var_8C
  loc_A05D07: FLdPr var_8C
  loc_A05D0A: Me.AddItem from_stack_1, from_stack_2
  loc_A05D0F: FFree1Str var_C0
  loc_A05D12: FFree1Ad var_8C
  loc_A05D15: FLdI2 var_86
  loc_A05D18: CI4UI1
  loc_A05D19: FLdRfVar var_92
  loc_A05D1C: FLdPr Me
  loc_A05D1F: VCallAd Control_ID_cboMes
  loc_A05D22: FStAdFunc var_8C
  loc_A05D25: FLdPr var_8C
  loc_A05D28:  = Me.NewIndex
  loc_A05D2D: FLdI2 var_92
  loc_A05D30: FLdPr Me
  loc_A05D33: VCallAd Control_ID_cboMes
  loc_A05D36: FStAdFunc var_98
  loc_A05D39: FLdPr var_98
  loc_A05D3C: Me.ItemData = from_stack_1
  loc_A05D41: FFreeAd var_8C = ""
  loc_A05D48: FLdRfVar var_86
  loc_A05D4B: NextI2 var_D8, loc_A05CEC
  loc_A05D50: Call cmdNueva_Click()
  loc_A05D55: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95C4CC
  'Data Table: 4400F0
  loc_95C4B4: FLdPr Me
  loc_95C4B7: VCallAd Control_ID_wbbReporte
  loc_95C4BA: FStAdFunc var_88
  loc_95C4BD: FLdRfVar var_88
  loc_95C4C0: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95C4C5: FFree1Ad var_88
  loc_95C4C8: ExitProcHresult
  loc_95C4C9: FLdPr var_7600
End Sub

Private Sub cmdPrevia_Click() '95C26C
  'Data Table: 4400F0
  loc_95C254: ILdRf Me
  loc_95C257: CastAd
  loc_95C25A: FStAdFunc var_88
  loc_95C25D: FLdRfVar var_88
  loc_95C260: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95C265: FFree1Ad var_88
  loc_95C268: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '988AEC
  'Data Table: 4400F0
  loc_988AB4: FLdPr Me
  loc_988AB7: VCallAd Control_ID_statusBar
  loc_988ABA: FStAdFunc var_88
  loc_988ABD: FLdPr var_88
  loc_988AC0: LateIdLdVar var_98 DispID_1 0
  loc_988AC7: CStrVarTmp
  loc_988AC8: CVarStr var_A8
  loc_988ACB: PopAdLdVar
  loc_988ACC: FLdPr Me
  loc_988ACF: VCallAd Control_ID_statusBar
  loc_988AD2: FStAdFunc var_BC
  loc_988AD5: FLdPr var_BC
  loc_988AD8: LateIdSt
  loc_988ADD: FFreeAd var_88 = ""
  loc_988AE4: FFreeVar var_98 = ""
  loc_988AEB: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9780FC
  'Data Table: 4400F0
  loc_9780CC: LitVarStr var_94, "Cerrando..."
  loc_9780D1: PopAdLdVar
  loc_9780D2: FLdPr Me
  loc_9780D5: VCallAd Control_ID_statusBar
  loc_9780D8: FStAdFunc var_A8
  loc_9780DB: FLdPr var_A8
  loc_9780DE: LateIdSt
  loc_9780E3: FFree1Ad var_A8
  loc_9780E6: ILdRf Me
  loc_9780E9: FStAdNoPop
  loc_9780ED: ImpAdLdRf MemVar_C44F9C
  loc_9780F0: NewIfNullPr Me
  loc_9780F3: Me.Global.Unload from_stack_1
  loc_9780F8: FFree1Ad var_A8
  loc_9780FB: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95C304
  'Data Table: 4400F0
  loc_95C2EC: ILdRf Me
  loc_95C2EF: CastAd
  loc_95C2F2: FStAdFunc var_88
  loc_95C2F5: FLdRfVar var_88
  loc_95C2F8: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95C2FD: FFree1Ad var_88
  loc_95C300: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9A7948
  'Data Table: 4400F0
  loc_9A78C4: LitI2_Byte 0
  loc_9A78C6: FLdPr Me
  loc_9A78C9: MemStI2 bGenerado
  loc_9A78CC: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9A78D1: ImpAdLdI2 MemVar_C3D064
  loc_9A78D4: CStrUI1
  loc_9A78D6: FStStrNoPop var_88
  loc_9A78D9: FLdPr Me
  loc_9A78DC: VCallAd Control_ID_cboPeriodo
  loc_9A78DF: FStAdFunc var_8C
  loc_9A78E2: FLdPr var_8C
  loc_9A78E5: Me.Text = from_stack_1
  loc_9A78EA: FFree1Str var_88
  loc_9A78ED: FFree1Ad var_8C
  loc_9A78F0: LitI2_Byte 0
  loc_9A78F2: PopTmpLdAd2 var_8E
  loc_9A78F5: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9A78FA: CVarDate var_B0
  loc_9A78FE: FLdRfVar var_C0
  loc_9A7901: ImpAdCallFPR4  = Month()
  loc_9A7906: FLdRfVar var_C0
  loc_9A7909: LitVarI2 var_D0, 1
  loc_9A790E: SubVar var_E0
  loc_9A7912: CI2Var
  loc_9A7913: FLdPr Me
  loc_9A7916: VCallAd Control_ID_cboMes
  loc_9A7919: FStAdFunc var_8C
  loc_9A791C: FLdPr var_8C
  loc_9A791F: Me.ListIndex = from_stack_1
  loc_9A7924: FFree1Ad var_8C
  loc_9A7927: FFreeVar var_B0 = ""
  loc_9A792E: Call HabilitarCriterio()
  loc_9A7933: ILdRf Me
  loc_9A7936: CastAd
  loc_9A7939: FStAdFunc var_8C
  loc_9A793C: FLdRfVar var_8C
  loc_9A793F: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9A7944: FFree1Ad var_8C
  loc_9A7947: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95C39C
  'Data Table: 4400F0
  loc_95C384: LitI2_Byte 0
  loc_95C386: ILdRf Me
  loc_95C389: CastAd
  loc_95C38C: FStAdFunc var_88
  loc_95C38F: FLdRfVar var_88
  loc_95C392: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95C397: FFree1Ad var_88
  loc_95C39A: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '95C434
  'Data Table: 4400F0
  loc_95C41C: LitI2_Byte 0
  loc_95C41E: ILdRf Me
  loc_95C421: CastAd
  loc_95C424: FStAdFunc var_88
  loc_95C427: FLdRfVar var_88
  loc_95C42A: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_95C42F: FFree1Ad var_88
  loc_95C432: ExitProcHresult
End Sub

Public Function bGeneradoGet() '440CD8
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '440CE7
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '991BF8
  'Data Table: 4400F0
  loc_991BB4: LitI4 0
  loc_991BB9: LitI4 1
  loc_991BBE: FLdRfVar var_88
  loc_991BC1: Redim
  loc_991BCB: FLdPr Me
  loc_991BCE: VCallAd Control_ID_cboPeriodo
  loc_991BD1: CVarAd
  loc_991BD5: ParmAry1St
  loc_991BDB: FLdPr Me
  loc_991BDE: VCallAd Control_ID_cboMes
  loc_991BE1: CVarAd
  loc_991BE5: ParmAry1St
  loc_991BEB: FLdRfVar var_88
  loc_991BEE: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_991BF3: FLdRfVar var_88
  loc_991BF6: Erase
  loc_991BF7: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B66178
  'Data Table: 4400F0
  loc_B6565C: OnErrorGoto loc_B66113
  loc_B6565F: FLdPr Me
  loc_B65662: MemLdI2 bGenerado
  loc_B65665: BranchF loc_B65669
  loc_B65668: ExitProcHresult
  loc_B65669: LitVarStr var_98, "Generando reporte..."
  loc_B6566E: PopAdLdVar
  loc_B6566F: FLdPr Me
  loc_B65672: VCallAd Control_ID_statusBar
  loc_B65675: FStAdFunc var_AC
  loc_B65678: FLdPr var_AC
  loc_B6567B: LateIdSt
  loc_B65680: FFree1Ad var_AC
  loc_B65683: LitI4 &HB
  loc_B65688: CI2I4
  loc_B65689: FLdPr Me
  loc_B6568C: Me.MousePointer = from_stack_1
  loc_B65691: LitStr "SELECT DISTINCT liquidaneto.CucuPers, liquidaneto.ExpeImpu, liquidaneto.NumeLiqu"
  loc_B65694: LitStr " FROM liquidaneto"
  loc_B65697: ConcatStr
  loc_B65698: FStStrNoPop var_B0
  loc_B6569B: LitStr " LEFT JOIN cheque ON cheque.ExpeImpu = liquidaneto.ExpeImpu AND cheque.NumeLiqu = liquidaneto.NumeLiqu AND cheque.CucuPers = liquidaneto.CucuPers"
  loc_B6569E: ConcatStr
  loc_B6569F: FStStrNoPop var_B4
  loc_B656A2: LitStr " LEFT JOIN liquidacion ON liquidacion.ExpeImpu = liquidaneto.ExpeImpu AND liquidacion.NumeLiqu = liquidaneto.NumeLiqu"
  loc_B656A5: ConcatStr
  loc_B656A6: FStStrNoPop var_B8
  loc_B656A9: LitStr " LEFT JOIN retenciones ON retenciones.PeriInfo = liquidaneto.PeriInfo AND retenciones.CodiRete = liquidaneto.CodiRete"
  loc_B656AC: ConcatStr
  loc_B656AD: FStStrNoPop var_BC
  loc_B656B0: LitStr " WHERE (DetaRete LIKE '" & Chr(37) & "iva" & Chr(37) & "') AND ImpoLine > 0 AND cheque.PeriInfo = "
  loc_B656B3: ConcatStr
  loc_B656B4: FStStrNoPop var_C4
  loc_B656B7: FLdRfVar var_C0
  loc_B656BA: FLdPr Me
  loc_B656BD: VCallAd Control_ID_cboPeriodo
  loc_B656C0: FStAdFunc var_AC
  loc_B656C3: FLdPr var_AC
  loc_B656C6:  = Me.Text
  loc_B656CB: ILdRf var_C0
  loc_B656CE: ConcatStr
  loc_B656CF: FStStrNoPop var_C8
  loc_B656D2: LitStr " AND MONTH(FepaCheq) = "
  loc_B656D5: ConcatStr
  loc_B656D6: FStStrNoPop var_DC
  loc_B656D9: FLdRfVar var_D8
  loc_B656DC: FLdRfVar var_CE
  loc_B656DF: FLdPr Me
  loc_B656E2: VCallAd Control_ID_cboMes
  loc_B656E5: FStAdFunc var_CC
  loc_B656E8: FLdPr var_CC
  loc_B656EB:  = Me.ListIndex
  loc_B656F0: FLdI2 var_CE
  loc_B656F3: FLdPr Me
  loc_B656F6: VCallAd Control_ID_cboMes
  loc_B656F9: FStAdFunc var_D4
  loc_B656FC: FLdPr var_D4
  loc_B656FF:  = Me.ItemData
  loc_B65704: ILdRf var_D8
  loc_B65707: CStrI4
  loc_B65709: FStStrNoPop var_E0
  loc_B6570C: ConcatStr
  loc_B6570D: FStStrNoPop var_E4
  loc_B65710: LitStr " AND FeanLiqu Is Null"
  loc_B65713: ConcatStr
  loc_B65714: FStStrNoPop var_E8
  loc_B65717: LitStr " ORDER BY liquidaneto.CucuPers, liquidaneto.ExpeImpu, liquidaneto.NumeLiqu"
  loc_B6571A: ConcatStr
  loc_B6571B: FStStrNoPop var_EC
  loc_B6571E: FLdPr Me
  loc_B65721: MemLdRfVar from_stack_1.global_64
  loc_B65724: NewIfNullPr clscheque
  loc_B65727: Call clscheque.RedefineRS(from_stack_1v)
  loc_B6572C: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C4 = "": var_C0 = "": var_C8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_B65747: FFreeAd var_AC = "": var_CC = ""
  loc_B65750: FLdRfVar var_D8
  loc_B65753: FLdPr Me
  loc_B65756: MemLdRfVar from_stack_1.global_64
  loc_B65759: NewIfNullPr clscheque
  loc_B6575C: from_stack_1 = clscheque.RecordCount
  loc_B65761: ILdRf var_D8
  loc_B65764: LitI4 0
  loc_B65769: EqI4
  loc_B6576A: BranchF loc_B6577D
  loc_B6576D: LitI4 0
  loc_B65772: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B65775: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B6577A: Branch loc_B660EA
  loc_B6577D: LitStr vbNullString
  loc_B65780: FLdPr Me
  loc_B65783: MemStStrCopy
  loc_B65787: LitI4 1
  loc_B6578C: FLdRfVar var_D8
  loc_B6578F: FLdPr Me
  loc_B65792: MemLdRfVar from_stack_1.global_64
  loc_B65795: NewIfNullPr clscheque
  loc_B65798: from_stack_1 = clscheque.RecordCount
  loc_B6579D: ILdRf var_D8
  loc_B657A0: FLdPr Me
  loc_B657A3: MemLdRfVar from_stack_1.global_104
  loc_B657A6: Redim
  loc_B657B0: FLdPr Me
  loc_B657B3: MemLdRfVar from_stack_1.global_64
  loc_B657B6: NewIfNullAd
  loc_B657B9: FStAd var_F0 
  loc_B657BD: FLdPr var_F0
  loc_B657C0: Call clscheque.MoveFirst()
  loc_B657C5: LitI2_Byte 1
  loc_B657C7: FLdPr Me
  loc_B657CA: MemLdRfVar from_stack_1.global_120
  loc_B657CD: FLdPr Me
  loc_B657D0: MemLdStr global_104
  loc_B657D3: LitI2_Byte 1
  loc_B657D5: FnUBound
  loc_B657D7: CI2I4
  loc_B657D8: ForI2 var_F4
  loc_B657DE: FLdRfVar var_D4
  loc_B657E1: LitVarStr var_98, "CucuPers"
  loc_B657E6: PopAdLdVar
  loc_B657E7: FLdRfVar var_CC
  loc_B657EA: FLdRfVar var_AC
  loc_B657ED: FLdPr var_F0
  loc_B657F0: from_stack_1v = clscheque.RsFrmGet()
  loc_B657F5: FLdPr var_AC
  loc_B657F8:  = Me.Fields
  loc_B657FD: FLdPr var_CC
  loc_B65800: from_stack_2 = Me.Item(from_stack_1)
  loc_B65805: LitI2_Byte 0
  loc_B65807: LitVar_Missing var_118
  loc_B6580A: LitI2_Byte 0
  loc_B6580C: FLdZeroAd var_D4
  loc_B6580F: CVarAd
  loc_B65813: PopAdLdVar
  loc_B65814: FLdPr Me
  loc_B65817: MemLdI2 global_120
  loc_B6581A: CI4UI1
  loc_B6581B: FLdPr Me
  loc_B6581E: MemLdStr global_104
  loc_B65821: AryLock
  loc_B65824: Ary1LdPr
  loc_B65825: MemLdRfVar from_stack_1.global_0
  loc_B65828: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B6582D: AryUnlock
  loc_B65830: FFreeAd var_AC = ""
  loc_B65837: FFreeVar var_108 = ""
  loc_B6583E: FLdRfVar var_D4
  loc_B65841: LitVarStr var_98, "ExpeImpu"
  loc_B65846: PopAdLdVar
  loc_B65847: FLdRfVar var_CC
  loc_B6584A: FLdRfVar var_AC
  loc_B6584D: FLdPr var_F0
  loc_B65850: from_stack_1v = clscheque.RsFrmGet()
  loc_B65855: FLdPr var_AC
  loc_B65858:  = Me.Fields
  loc_B6585D: FLdPr var_CC
  loc_B65860: from_stack_2 = Me.Item(from_stack_1)
  loc_B65865: LitI2_Byte 0
  loc_B65867: LitVar_Missing var_118
  loc_B6586A: LitI2_Byte 0
  loc_B6586C: FLdZeroAd var_D4
  loc_B6586F: CVarAd
  loc_B65873: PopAdLdVar
  loc_B65874: FLdPr Me
  loc_B65877: MemLdI2 global_120
  loc_B6587A: CI4UI1
  loc_B6587B: FLdPr Me
  loc_B6587E: MemLdStr global_104
  loc_B65881: AryLock
  loc_B65884: Ary1LdPr
  loc_B65885: MemLdRfVar from_stack_1.global_4
  loc_B65888: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B6588D: AryUnlock
  loc_B65890: FFreeAd var_AC = ""
  loc_B65897: FFreeVar var_108 = ""
  loc_B6589E: FLdRfVar var_D4
  loc_B658A1: LitVarStr var_98, "NumeLiqu"
  loc_B658A6: PopAdLdVar
  loc_B658A7: FLdRfVar var_CC
  loc_B658AA: FLdRfVar var_AC
  loc_B658AD: FLdPr var_F0
  loc_B658B0: from_stack_1v = clscheque.RsFrmGet()
  loc_B658B5: FLdPr var_AC
  loc_B658B8:  = Me.Fields
  loc_B658BD: FLdPr var_CC
  loc_B658C0: from_stack_2 = Me.Item(from_stack_1)
  loc_B658C5: LitI2_Byte 0
  loc_B658C7: LitVar_Missing var_118
  loc_B658CA: LitI2_Byte 0
  loc_B658CC: FLdZeroAd var_D4
  loc_B658CF: CVarAd
  loc_B658D3: PopAdLdVar
  loc_B658D4: FLdPr Me
  loc_B658D7: MemLdI2 global_120
  loc_B658DA: CI4UI1
  loc_B658DB: FLdPr Me
  loc_B658DE: MemLdStr global_104
  loc_B658E1: AryLock
  loc_B658E4: Ary1LdPr
  loc_B658E5: MemLdRfVar from_stack_1.global_8
  loc_B658E8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B658ED: AryUnlock
  loc_B658F0: FFreeAd var_AC = ""
  loc_B658F7: FFreeVar var_108 = ""
  loc_B658FE: FLdPr var_F0
  loc_B65901: Call clscheque.MoveSiguiente()
  loc_B65906: FLdPr Me
  loc_B65909: MemLdRfVar from_stack_1.global_120
  loc_B6590C: NextI2 var_F4, loc_B657DE
  loc_B65911: LitNothing
  loc_B65913: FStAd var_F0 
  loc_B65917: LitI2_Byte 0
  loc_B65919: FLdPr Me
  loc_B6591C: MemStI2 global_122
  loc_B6591F: LitI2_Byte 1
  loc_B65921: FLdPr Me
  loc_B65924: MemLdRfVar from_stack_1.global_120
  loc_B65927: FLdPr Me
  loc_B6592A: MemLdStr global_104
  loc_B6592D: LitI2_Byte 1
  loc_B6592F: FnUBound
  loc_B65931: CI2I4
  loc_B65932: ForI2 var_11C
  loc_B65938: FLdPr Me
  loc_B6593B: MemLdRfVar from_stack_1.global_60
  loc_B6593E: NewIfNullAd
  loc_B65941: FStAd var_120 
  loc_B65945: LitStr "SELECT ld.ExpeImpu, DetaProv, ld.CucuPers, DecrPers, SufaDeve, NumeFact, Sum(ImpoImpu) ImpoImpu, ImpoLine, BaseEsca"
  loc_B65948: LitStr ", Round((Sum(ImpoImpu) / BaseEsca),2) AS MontImpo, FechLiqu, CertLine"
  loc_B6594B: ConcatStr
  loc_B6594C: FStStrNoPop var_B0
  loc_B6594F: LitStr " FROM v_liqdeta ld"
  loc_B65952: ConcatStr
  loc_B65953: FStStrNoPop var_B4
  loc_B65956: LitStr " INNER JOIN liquidaneto lqn ON lqn.ExpeImpu = ld.ExpeImpu AND lqn.NumeLiqu = ld.NumeLiqu AND lqn.CucuPers = ld.CucuPers"
  loc_B65959: ConcatStr
  loc_B6595A: FStStrNoPop var_B8
  loc_B6595D: LitStr " INNER JOIN proveedor p ON p.CucuPers = ld.CucuPers"
  loc_B65960: ConcatStr
  loc_B65961: FStStrNoPop var_BC
  loc_B65964: LitStr " INNER JOIN infogov.persona pp ON pp.CucuPers = ld.CucuPers"
  loc_B65967: ConcatStr
  loc_B65968: FStStrNoPop var_C0
  loc_B6596B: LitStr " INNER JOIN liquidacion l ON l.ExpeImpu = ld.ExpeImpu AND l.NumeLiqu = ld.NumeLiqu"
  loc_B6596E: ConcatStr
  loc_B6596F: FStStrNoPop var_C4
  loc_B65972: LitStr " WHERE CodiRete = "
  loc_B65975: ConcatStr
  loc_B65976: FStStrNoPop var_C8
  loc_B65979: LitI2_Byte 5
  loc_B6597B: CStrI2
  loc_B6597D: FStStrNoPop var_DC
  loc_B65980: ConcatStr
  loc_B65981: FStStrNoPop var_E0
  loc_B65984: LitStr " AND ImpoLine > 0 AND FeanLiqu Is Null"
  loc_B65987: ConcatStr
  loc_B65988: FStStrNoPop var_E4
  loc_B6598B: LitStr " AND ld.CucuPers = "
  loc_B6598E: ConcatStr
  loc_B6598F: FStStrNoPop var_E8
  loc_B65992: FLdPr Me
  loc_B65995: MemLdI2 global_120
  loc_B65998: CI4UI1
  loc_B65999: FLdPr Me
  loc_B6599C: MemLdStr global_104
  loc_B6599F: Ary1LdPr
  loc_B659A0: MemLdStr global_0
  loc_B659A3: ConcatStr
  loc_B659A4: FStStrNoPop var_EC
  loc_B659A7: LitStr " AND ld.ExpeImpu = '"
  loc_B659AA: ConcatStr
  loc_B659AB: FStStrNoPop var_124
  loc_B659AE: FLdPr Me
  loc_B659B1: MemLdI2 global_120
  loc_B659B4: CI4UI1
  loc_B659B5: FLdPr Me
  loc_B659B8: MemLdStr global_104
  loc_B659BB: Ary1LdPr
  loc_B659BC: MemLdStr global_4
  loc_B659BF: ConcatStr
  loc_B659C0: FStStrNoPop var_128
  loc_B659C3: LitStr "'"
  loc_B659C6: ConcatStr
  loc_B659C7: FStStrNoPop var_12C
  loc_B659CA: LitStr " AND ld.NumeLiqu = "
  loc_B659CD: ConcatStr
  loc_B659CE: FStStrNoPop var_130
  loc_B659D1: FLdPr Me
  loc_B659D4: MemLdI2 global_120
  loc_B659D7: CI4UI1
  loc_B659D8: FLdPr Me
  loc_B659DB: MemLdStr global_104
  loc_B659DE: Ary1LdPr
  loc_B659DF: MemLdStr global_8
  loc_B659E2: ConcatStr
  loc_B659E3: FStStrNoPop var_134
  loc_B659E6: LitStr " GROUP BY NumeFact"
  loc_B659E9: ConcatStr
  loc_B659EA: FStStrNoPop var_138
  loc_B659ED: LitStr " ORDER BY ld.CucuPers, ld.ExpeImpu, ld.NumeLiqu, NumeFact"
  loc_B659F0: ConcatStr
  loc_B659F1: FStStrNoPop var_13C
  loc_B659F4: FLdPr var_120
  loc_B659F7: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_B659FC: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = ""
  loc_B65A25: FLdRfVar var_D8
  loc_B65A28: FLdPr var_120
  loc_B65A2B: from_stack_1 = clsliquidacion.RecordCount
  loc_B65A30: ILdRf var_D8
  loc_B65A33: LitI4 0
  loc_B65A38: GtI4
  loc_B65A39: BranchF loc_B660D1
  loc_B65A3C: FLdPr Me
  loc_B65A3F: MemLdI2 global_120
  loc_B65A42: LitI2_Byte 1
  loc_B65A44: EqI2
  loc_B65A45: BranchF loc_B65A6E
  loc_B65A48: LitI4 1
  loc_B65A4D: FLdRfVar var_D8
  loc_B65A50: FLdPr var_120
  loc_B65A53: from_stack_1 = clsliquidacion.RecordCount
  loc_B65A58: ILdRf var_D8
  loc_B65A5B: FLdPr Me
  loc_B65A5E: MemLdRfVar from_stack_1.global_108
  loc_B65A61: Redim
  loc_B65A6B: Branch loc_B65A9C
  loc_B65A6E: LitI4 1
  loc_B65A73: FLdPr Me
  loc_B65A76: MemLdStr global_108
  loc_B65A79: LitI2_Byte 1
  loc_B65A7B: FnUBound
  loc_B65A7D: FLdRfVar var_D8
  loc_B65A80: FLdPr var_120
  loc_B65A83: from_stack_1 = clsliquidacion.RecordCount
  loc_B65A88: ILdRf var_D8
  loc_B65A8B: AddI4
  loc_B65A8C: FLdPr Me
  loc_B65A8F: MemLdRfVar from_stack_1.global_108
  loc_B65A92: RedimPreserve
  loc_B65A9C: FLdPr var_120
  loc_B65A9F: Call clsliquidacion.MoveFirst()
  loc_B65AA4: LitStr "0"
  loc_B65AA7: FLdPr Me
  loc_B65AAA: MemStStrCopy
  loc_B65AAE: LitI2_Byte 1
  loc_B65AB0: FLdRfVar var_86
  loc_B65AB3: FLdRfVar var_D8
  loc_B65AB6: FLdPr var_120
  loc_B65AB9: from_stack_1 = clsliquidacion.RecordCount
  loc_B65ABE: ILdRf var_D8
  loc_B65AC1: CI2I4
  loc_B65AC2: ForI2 var_140
  loc_B65AC8: FLdPr Me
  loc_B65ACB: MemLdI2 global_122
  loc_B65ACE: LitI2_Byte 1
  loc_B65AD0: AddI2
  loc_B65AD1: FLdPr Me
  loc_B65AD4: MemStI2 global_122
  loc_B65AD7: FLdRfVar var_108
  loc_B65ADA: FLdRfVar var_D4
  loc_B65ADD: LitVarStr var_98, "ExpeImpu"
  loc_B65AE2: PopAdLdVar
  loc_B65AE3: FLdRfVar var_CC
  loc_B65AE6: FLdRfVar var_AC
  loc_B65AE9: FLdPr var_120
  loc_B65AEC: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B65AF1: FLdPr var_AC
  loc_B65AF4:  = Me.Fields
  loc_B65AF9: FLdPr var_CC
  loc_B65AFC: from_stack_2 = Me.Item(from_stack_1)
  loc_B65B01: FLdPr var_D4
  loc_B65B04:  = Me.Value
  loc_B65B09: FLdRfVar var_108
  loc_B65B0C: CStrVarTmp
  loc_B65B0D: FStStrNoPop var_B0
  loc_B65B10: FLdPr Me
  loc_B65B13: MemLdI2 global_122
  loc_B65B16: CI4UI1
  loc_B65B17: FLdPr Me
  loc_B65B1A: MemLdStr global_108
  loc_B65B1D: Ary1LdPr
  loc_B65B1E: MemLdRfVar from_stack_1.global_0
  loc_B65B21: StFixedStr
  loc_B65B24: FFree1Str var_B0
  loc_B65B27: FFreeAd var_AC = "": var_CC = ""
  loc_B65B30: FFree1Var var_108 = ""
  loc_B65B33: FLdRfVar var_D4
  loc_B65B36: LitVarStr var_98, "FechLiqu"
  loc_B65B3B: PopAdLdVar
  loc_B65B3C: FLdRfVar var_CC
  loc_B65B3F: FLdRfVar var_AC
  loc_B65B42: FLdPr var_120
  loc_B65B45: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B65B4A: FLdPr var_AC
  loc_B65B4D:  = Me.Fields
  loc_B65B52: FLdPr var_CC
  loc_B65B55: from_stack_2 = Me.Item(from_stack_1)
  loc_B65B5A: LitI4 1
  loc_B65B5F: LitI4 1
  loc_B65B64: LitVarStr var_A8, "Short date"
  loc_B65B69: FStVarCopyObj var_118
  loc_B65B6C: FLdRfVar var_118
  loc_B65B6F: FLdZeroAd var_D4
  loc_B65B72: CVarAd
  loc_B65B76: ImpAdCallI2 Format$(, )
  loc_B65B7B: FStStr var_B4
  loc_B65B7E: LitI2_Byte 0
  loc_B65B80: LitVar_Missing var_170
  loc_B65B83: LitI2_Byte 0
  loc_B65B85: FLdZeroAd var_B4
  loc_B65B88: CVarStr var_150
  loc_B65B8B: PopAdLdVar
  loc_B65B8C: FLdPr Me
  loc_B65B8F: MemLdI2 global_122
  loc_B65B92: CI4UI1
  loc_B65B93: FLdPr Me
  loc_B65B96: MemLdStr global_108
  loc_B65B99: Ary1LdPr
  loc_B65B9A: MemLdRfVar from_stack_1.global_30
  loc_B65B9D: LdFixedStr
  loc_B65BA0: PopTmpLdAdStr
  loc_B65BA4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B65BA9: ILdRf var_B0
  loc_B65BAC: FLdPr Me
  loc_B65BAF: MemLdI2 global_122
  loc_B65BB2: CI4UI1
  loc_B65BB3: FLdPr Me
  loc_B65BB6: MemLdStr global_108
  loc_B65BB9: Ary1LdPr
  loc_B65BBA: MemLdRfVar from_stack_1.global_30
  loc_B65BBD: StFixedStr
  loc_B65BC0: FFreeStr var_B0 = ""
  loc_B65BC7: FFreeAd var_AC = ""
  loc_B65BCE: FFreeVar var_108 = "": var_118 = "": var_150 = ""
  loc_B65BD9: FLdRfVar var_D4
  loc_B65BDC: LitVarStr var_98, "SufaDeve"
  loc_B65BE1: PopAdLdVar
  loc_B65BE2: FLdRfVar var_CC
  loc_B65BE5: FLdRfVar var_AC
  loc_B65BE8: FLdPr var_120
  loc_B65BEB: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B65BF0: FLdPr var_AC
  loc_B65BF3:  = Me.Fields
  loc_B65BF8: FLdPr var_CC
  loc_B65BFB: from_stack_2 = Me.Item(from_stack_1)
  loc_B65C00: LitI4 1
  loc_B65C05: LitI4 1
  loc_B65C0A: LitVarStr var_A8, "000#"
  loc_B65C0F: FStVarCopyObj var_118
  loc_B65C12: FLdRfVar var_118
  loc_B65C15: FLdZeroAd var_D4
  loc_B65C18: CVarAd
  loc_B65C1C: ImpAdCallI2 Format$(, )
  loc_B65C21: FStStr var_BC
  loc_B65C24: FLdRfVar var_17C
  loc_B65C27: LitVarStr var_160, "NumeFact"
  loc_B65C2C: PopAdLdVar
  loc_B65C2D: FLdRfVar var_178
  loc_B65C30: FLdRfVar var_174
  loc_B65C33: FLdPr var_120
  loc_B65C36: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B65C3B: FLdPr var_174
  loc_B65C3E:  = Me.Fields
  loc_B65C43: FLdPr var_178
  loc_B65C46: from_stack_2 = Me.Item(from_stack_1)
  loc_B65C4B: LitI4 1
  loc_B65C50: LitI4 1
  loc_B65C55: LitVarStr var_18C, "0000000#"
  loc_B65C5A: FStVarCopyObj var_170
  loc_B65C5D: FLdRfVar var_170
  loc_B65C60: FLdZeroAd var_17C
  loc_B65C63: CVarAd
  loc_B65C67: ImpAdCallI2 Format$(, )
  loc_B65C6C: FStStr var_C0
  loc_B65C6F: LitI2_Byte 0
  loc_B65C71: LitVar_Missing var_1BC
  loc_B65C74: LitI2_Byte 0
  loc_B65C76: FLdZeroAd var_BC
  loc_B65C79: FStStrNoPop var_B0
  loc_B65C7C: FLdZeroAd var_C0
  loc_B65C7F: FStStrNoPop var_B4
  loc_B65C82: ConcatStr
  loc_B65C83: CVarStr var_19C
  loc_B65C86: PopAdLdVar
  loc_B65C87: FLdPr Me
  loc_B65C8A: MemLdI2 global_122
  loc_B65C8D: CI4UI1
  loc_B65C8E: FLdPr Me
  loc_B65C91: MemLdStr global_108
  loc_B65C94: Ary1LdPr
  loc_B65C95: MemLdRfVar from_stack_1.global_50
  loc_B65C98: LdFixedStr
  loc_B65C9B: PopTmpLdAdStr
  loc_B65C9F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B65CA4: ILdRf var_B8
  loc_B65CA7: FLdPr Me
  loc_B65CAA: MemLdI2 global_122
  loc_B65CAD: CI4UI1
  loc_B65CAE: FLdPr Me
  loc_B65CB1: MemLdStr global_108
  loc_B65CB4: Ary1LdPr
  loc_B65CB5: MemLdRfVar from_stack_1.global_50
  loc_B65CB8: StFixedStr
  loc_B65CBB: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B65CC8: FFreeAd var_AC = "": var_CC = "": var_174 = ""
  loc_B65CD3: FFreeVar var_108 = "": var_118 = "": var_150 = "": var_170 = "": var_19C = ""
  loc_B65CE2: FLdRfVar var_D4
  loc_B65CE5: LitVarStr var_98, "ImpoImpu"
  loc_B65CEA: PopAdLdVar
  loc_B65CEB: FLdRfVar var_CC
  loc_B65CEE: FLdRfVar var_AC
  loc_B65CF1: FLdPr var_120
  loc_B65CF4: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B65CF9: FLdPr var_AC
  loc_B65CFC:  = Me.Fields
  loc_B65D01: FLdPr var_CC
  loc_B65D04: from_stack_2 = Me.Item(from_stack_1)
  loc_B65D09: LitI4 0
  loc_B65D0E: LitI4 0
  loc_B65D13: LitI4 -1
  loc_B65D18: LitI4 2
  loc_B65D1D: FLdZeroAd var_D4
  loc_B65D20: CVarAd
  loc_B65D24: ImpAdCallI2 FormatNumber(, , , , )
  loc_B65D29: FStStrNoPop var_B0
  loc_B65D2C: FLdPr Me
  loc_B65D2F: MemLdI2 global_122
  loc_B65D32: CI4UI1
  loc_B65D33: FLdPr Me
  loc_B65D36: MemLdStr global_108
  loc_B65D39: Ary1LdPr
  loc_B65D3A: MemLdRfVar from_stack_1.global_74
  loc_B65D3D: StFixedStrR
  loc_B65D41: FFree1Str var_B0
  loc_B65D44: FFreeAd var_AC = ""
  loc_B65D4B: FFree1Var var_108 = ""
  loc_B65D4E: FLdRfVar var_D4
  loc_B65D51: LitVarStr var_98, "MontImpo"
  loc_B65D56: PopAdLdVar
  loc_B65D57: FLdRfVar var_CC
  loc_B65D5A: FLdRfVar var_AC
  loc_B65D5D: FLdPr var_120
  loc_B65D60: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B65D65: FLdPr var_AC
  loc_B65D68:  = Me.Fields
  loc_B65D6D: FLdPr var_CC
  loc_B65D70: from_stack_2 = Me.Item(from_stack_1)
  loc_B65D75: LitI2_Byte 0
  loc_B65D77: FLdPr Me
  loc_B65D7A: MemLdRfVar from_stack_1.global_112
  loc_B65D7D: CVarRef
  loc_B65D82: LitI2_Byte &HFF
  loc_B65D84: FLdZeroAd var_D4
  loc_B65D87: CVarAd
  loc_B65D8B: PopAdLdVar
  loc_B65D8C: FLdPr Me
  loc_B65D8F: MemLdI2 global_122
  loc_B65D92: CI4UI1
  loc_B65D93: FLdPr Me
  loc_B65D96: MemLdStr global_108
  loc_B65D99: Ary1LdPr
  loc_B65D9A: MemLdRfVar from_stack_1.global_114
  loc_B65D9D: LdFixedStr
  loc_B65DA0: PopTmpLdAdStr
  loc_B65DA4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B65DA9: ILdRf var_B0
  loc_B65DAC: FLdPr Me
  loc_B65DAF: MemLdI2 global_122
  loc_B65DB2: CI4UI1
  loc_B65DB3: FLdPr Me
  loc_B65DB6: MemLdStr global_108
  loc_B65DB9: Ary1LdPr
  loc_B65DBA: MemLdRfVar from_stack_1.global_114
  loc_B65DBD: StFixedStr
  loc_B65DC0: FFree1Str var_B0
  loc_B65DC3: FFreeAd var_AC = ""
  loc_B65DCA: FFree1Var var_108 = ""
  loc_B65DCD: LitI4 0
  loc_B65DD2: LitI4 0
  loc_B65DD7: LitI4 -1
  loc_B65DDC: LitI4 2
  loc_B65DE1: FLdPr Me
  loc_B65DE4: MemLdI2 global_122
  loc_B65DE7: CI4UI1
  loc_B65DE8: FLdPr Me
  loc_B65DEB: MemLdStr global_108
  loc_B65DEE: Ary1LdPr
  loc_B65DEF: MemLdRfVar from_stack_1.global_114
  loc_B65DF2: LdFixedStr
  loc_B65DF5: PopTmpLdAdStr
  loc_B65DF9: CVarRef
  loc_B65DFE: ImpAdCallI2 FormatNumber(, , , , )
  loc_B65E03: FStStr var_B4
  loc_B65E06: ILdRf var_B0
  loc_B65E09: FLdPr Me
  loc_B65E0C: MemLdI2 global_122
  loc_B65E0F: CI4UI1
  loc_B65E10: FLdPr Me
  loc_B65E13: MemLdStr global_108
  loc_B65E16: Ary1LdPr
  loc_B65E17: MemLdRfVar from_stack_1.global_114
  loc_B65E1A: StFixedStr
  loc_B65E1D: ILdRf var_B4
  loc_B65E20: FLdPr Me
  loc_B65E23: MemLdI2 global_122
  loc_B65E26: CI4UI1
  loc_B65E27: FLdPr Me
  loc_B65E2A: MemLdStr global_108
  loc_B65E2D: Ary1LdPr
  loc_B65E2E: MemLdRfVar from_stack_1.global_114
  loc_B65E31: StFixedStrR
  loc_B65E35: FFreeStr var_B0 = ""
  loc_B65E3C: FLdRfVar var_D4
  loc_B65E3F: LitVarStr var_98, "ImpoLine"
  loc_B65E44: PopAdLdVar
  loc_B65E45: FLdRfVar var_CC
  loc_B65E48: FLdRfVar var_AC
  loc_B65E4B: FLdPr var_120
  loc_B65E4E: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B65E53: FLdPr var_AC
  loc_B65E56:  = Me.Fields
  loc_B65E5B: FLdPr var_CC
  loc_B65E5E: from_stack_2 = Me.Item(from_stack_1)
  loc_B65E63: LitI4 0
  loc_B65E68: LitI4 0
  loc_B65E6D: LitI4 -1
  loc_B65E72: LitI4 2
  loc_B65E77: FLdZeroAd var_D4
  loc_B65E7A: CVarAd
  loc_B65E7E: ImpAdCallI2 FormatNumber(, , , , )
  loc_B65E83: FStStrNoPop var_B0
  loc_B65E86: FLdPr Me
  loc_B65E89: MemLdI2 global_122
  loc_B65E8C: CI4UI1
  loc_B65E8D: FLdPr Me
  loc_B65E90: MemLdStr global_108
  loc_B65E93: Ary1LdPr
  loc_B65E94: MemLdRfVar from_stack_1.global_142
  loc_B65E97: StFixedStrR
  loc_B65E9B: FFree1Str var_B0
  loc_B65E9E: FFreeAd var_AC = ""
  loc_B65EA5: FFree1Var var_108 = ""
  loc_B65EA8: LitStr "80"
  loc_B65EAB: FLdPr Me
  loc_B65EAE: MemLdI2 global_122
  loc_B65EB1: CI4UI1
  loc_B65EB2: FLdPr Me
  loc_B65EB5: MemLdStr global_108
  loc_B65EB8: Ary1LdPr
  loc_B65EB9: MemLdRfVar from_stack_1.global_190
  loc_B65EBC: StFixedStr
  loc_B65EBF: FLdRfVar var_108
  loc_B65EC2: FLdRfVar var_D4
  loc_B65EC5: LitVarStr var_98, "CucuPers"
  loc_B65ECA: PopAdLdVar
  loc_B65ECB: FLdRfVar var_CC
  loc_B65ECE: FLdRfVar var_AC
  loc_B65ED1: FLdPr var_120
  loc_B65ED4: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B65ED9: FLdPr var_AC
  loc_B65EDC:  = Me.Fields
  loc_B65EE1: FLdPr var_CC
  loc_B65EE4: from_stack_2 = Me.Item(from_stack_1)
  loc_B65EE9: FLdPr var_D4
  loc_B65EEC:  = Me.Value
  loc_B65EF1: FLdRfVar var_108
  loc_B65EF4: CStrVarTmp
  loc_B65EF5: FStStrNoPop var_B0
  loc_B65EF8: FLdPr Me
  loc_B65EFB: MemLdI2 global_122
  loc_B65EFE: CI4UI1
  loc_B65EFF: FLdPr Me
  loc_B65F02: MemLdStr global_108
  loc_B65F05: Ary1LdPr
  loc_B65F06: MemLdRfVar from_stack_1.global_194
  loc_B65F09: StFixedStrR
  loc_B65F0D: FFree1Str var_B0
  loc_B65F10: FFreeAd var_AC = "": var_CC = ""
  loc_B65F19: FFree1Var var_108 = ""
  loc_B65F1C: FLdRfVar var_D4
  loc_B65F1F: LitVarStr var_98, "CertLine"
  loc_B65F24: PopAdLdVar
  loc_B65F25: FLdRfVar var_CC
  loc_B65F28: FLdRfVar var_AC
  loc_B65F2B: FLdPr var_120
  loc_B65F2E: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B65F33: FLdPr var_AC
  loc_B65F36:  = Me.Fields
  loc_B65F3B: FLdPr var_CC
  loc_B65F3E: from_stack_2 = Me.Item(from_stack_1)
  loc_B65F43: LitI4 1
  loc_B65F48: LitI4 1
  loc_B65F4D: LitVarStr var_A8, "00000000000000"
  loc_B65F52: FStVarCopyObj var_118
  loc_B65F55: FLdRfVar var_118
  loc_B65F58: FLdZeroAd var_D4
  loc_B65F5B: CVarAd
  loc_B65F5F: ImpAdCallI2 Format$(, )
  loc_B65F64: FStStrNoPop var_B0
  loc_B65F67: FLdPr Me
  loc_B65F6A: MemLdI2 global_122
  loc_B65F6D: CI4UI1
  loc_B65F6E: FLdPr Me
  loc_B65F71: MemLdStr global_108
  loc_B65F74: Ary1LdPr
  loc_B65F75: MemLdRfVar from_stack_1.global_216
  loc_B65F78: StFixedStrR
  loc_B65F7C: FFree1Str var_B0
  loc_B65F7F: FFreeAd var_AC = ""
  loc_B65F86: FFreeVar var_108 = ""
  loc_B65F8D: FLdPr var_120
  loc_B65F90: Call clsliquidacion.MoveSiguiente()
  loc_B65F95: FLdRfVar var_86
  loc_B65F98: NextI2 var_140, loc_B65AC8
  loc_B65F9D: FLdPr Me
  loc_B65FA0: MemLdStr global_108
  loc_B65FA3: LitI2_Byte 1
  loc_B65FA5: FnUBound
  loc_B65FA7: FLdRfVar var_D8
  loc_B65FAA: FLdPr var_120
  loc_B65FAD: from_stack_1 = clsliquidacion.RecordCount
  loc_B65FB2: ILdRf var_D8
  loc_B65FB5: SubI4
  loc_B65FB6: LitI4 1
  loc_B65FBB: AddI4
  loc_B65FBC: CI2I4
  loc_B65FBD: FLdRfVar var_86
  loc_B65FC0: FLdPr Me
  loc_B65FC3: MemLdStr global_108
  loc_B65FC6: LitI2_Byte 1
  loc_B65FC8: FnUBound
  loc_B65FCA: CI2I4
  loc_B65FCB: ForI2 var_1C0
  loc_B65FD1: LitI4 0
  loc_B65FD6: LitI4 0
  loc_B65FDB: LitI4 -1
  loc_B65FE0: LitI4 2
  loc_B65FE5: FLdI2 var_86
  loc_B65FE8: CI4UI1
  loc_B65FE9: FLdPr Me
  loc_B65FEC: MemLdStr global_108
  loc_B65FEF: Ary1LdPr
  loc_B65FF0: MemLdRfVar from_stack_1.global_114
  loc_B65FF3: LdFixedStr
  loc_B65FF6: FStStrNoPop var_B0
  loc_B65FF9: CR8Str
  loc_B65FFB: FLdPr Me
  loc_B65FFE: MemLdStr global_112
  loc_B66001: CR8Str
  loc_B66003: DivR8
  loc_B66004: FLdI2 var_86
  loc_B66007: CI4UI1
  loc_B66008: FLdPr Me
  loc_B6600B: MemLdStr global_108
  loc_B6600E: Ary1LdPr
  loc_B6600F: MemLdRfVar from_stack_1.global_142
  loc_B66012: LdFixedStr
  loc_B66015: FStStrNoPop var_B4
  loc_B66018: CR8Str
  loc_B6601A: MulR8
  loc_B6601B: CVarR8
  loc_B6601F: ImpAdCallI2 FormatNumber(, , , , )
  loc_B66024: FStStr var_BC
  loc_B66027: LitI2_Byte 0
  loc_B66029: FLdPr Me
  loc_B6602C: MemLdRfVar from_stack_1.global_116
  loc_B6602F: CVarRef
  loc_B66034: LitI2_Byte 0
  loc_B66036: FLdZeroAd var_BC
  loc_B66039: CVarStr var_118
  loc_B6603C: PopAdLdVar
  loc_B6603D: FLdI2 var_86
  loc_B66040: CI4UI1
  loc_B66041: FLdPr Me
  loc_B66044: MemLdStr global_108
  loc_B66047: Ary1LdPr
  loc_B66048: MemLdRfVar from_stack_1.global_142
  loc_B6604B: LdFixedStr
  loc_B6604E: PopTmpLdAdStr
  loc_B66052: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B66057: ILdRf var_B8
  loc_B6605A: FLdI2 var_86
  loc_B6605D: CI4UI1
  loc_B6605E: FLdPr Me
  loc_B66061: MemLdStr global_108
  loc_B66064: Ary1LdPr
  loc_B66065: MemLdRfVar from_stack_1.global_142
  loc_B66068: StFixedStr
  loc_B6606B: FFreeStr var_B0 = "": var_B4 = "": var_B8 = ""
  loc_B66076: FFreeVar var_108 = ""
  loc_B6607D: FLdI2 var_86
  loc_B66080: CI4UI1
  loc_B66081: FLdPr Me
  loc_B66084: MemLdStr global_108
  loc_B66087: Ary1LdPr
  loc_B66088: MemLdRfVar from_stack_1.global_142
  loc_B6608B: LdFixedStr
  loc_B6608E: FStStrNoPop var_B0
  loc_B66091: ImpAdCallI2 Trim$()
  loc_B66096: FStStr var_B4
  loc_B66099: ILdRf var_B0
  loc_B6609C: FLdI2 var_86
  loc_B6609F: CI4UI1
  loc_B660A0: FLdPr Me
  loc_B660A3: MemLdStr global_108
  loc_B660A6: Ary1LdPr
  loc_B660A7: MemLdRfVar from_stack_1.global_142
  loc_B660AA: StFixedStr
  loc_B660AD: ILdRf var_B4
  loc_B660B0: FLdI2 var_86
  loc_B660B3: CI4UI1
  loc_B660B4: FLdPr Me
  loc_B660B7: MemLdStr global_108
  loc_B660BA: Ary1LdPr
  loc_B660BB: MemLdRfVar from_stack_1.global_142
  loc_B660BE: StFixedStrR
  loc_B660C2: FFreeStr var_B0 = ""
  loc_B660C9: FLdRfVar var_86
  loc_B660CC: NextI2 var_1C0, loc_B65FD1
  loc_B660D1: LitNothing
  loc_B660D3: FStAd var_120 
  loc_B660D7: FLdPr Me
  loc_B660DA: MemLdRfVar from_stack_1.global_120
  loc_B660DD: NextI2 var_11C, loc_B65938
  loc_B660E2: LitI2_Byte &HFF
  loc_B660E4: FLdPr Me
  loc_B660E7: MemStI2 bGenerado
  loc_B660EA: LitI4 0
  loc_B660EF: CI2I4
  loc_B660F0: FLdPr Me
  loc_B660F3: Me.MousePointer = from_stack_1
  loc_B660F8: LitVarStr var_98, vbNullString
  loc_B660FD: PopAdLdVar
  loc_B660FE: FLdPr Me
  loc_B66101: VCallAd Control_ID_statusBar
  loc_B66104: FStAdFunc var_AC
  loc_B66107: FLdPr var_AC
  loc_B6610A: LateIdSt
  loc_B6610F: FFree1Ad var_AC
  loc_B66112: ExitProcHresult
  loc_B66113: LitI4 0
  loc_B66118: LitStr "Error "
  loc_B6611B: FLdRfVar var_D8
  loc_B6611E: ImpAdCallI2 Err 'rtcErrObj
  loc_B66123: FStAdFunc var_AC
  loc_B66126: FLdPr var_AC
  loc_B66129:  = Err.Number
  loc_B6612E: ILdRf var_D8
  loc_B66131: CStrI4
  loc_B66133: FStStrNoPop var_B0
  loc_B66136: ConcatStr
  loc_B66137: FStStrNoPop var_B4
  loc_B6613A: LitStr ": "
  loc_B6613D: ConcatStr
  loc_B6613E: FStStrNoPop var_BC
  loc_B66141: FLdRfVar var_B8
  loc_B66144: ImpAdCallI2 Err 'rtcErrObj
  loc_B66149: FStAdFunc var_CC
  loc_B6614C: FLdPr var_CC
  loc_B6614F:  = Err.Description
  loc_B66154: ILdRf var_B8
  loc_B66157: ConcatStr
  loc_B66158: FStStrNoPop var_C0
  loc_B6615B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B66160: FFreeStr var_B0 = "": var_B4 = "": var_BC = "": var_B8 = ""
  loc_B6616D: FFreeAd var_AC = ""
  loc_B66174: ExitProcHresult
  loc_B66175: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'A2CFC0
  'Data Table: 4400F0
  loc_A2CE34: FLdRfVar var_88
  loc_A2CE37: LitI2_Byte 0
  loc_A2CE39: LitI2_Byte &HFF
  loc_A2CE3B: ImpAdLdI4 MemVar_C3D05C
  loc_A2CE3E: FLdPr Me
  loc_A2CE41: MemLdRfVar from_stack_1.global_68
  loc_A2CE44: NewIfNullPr IFileSystem3
  loc_A2CE47: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A2CE4C: ILdRf var_88
  loc_A2CE4F: FLdPr Me
  loc_A2CE52: MemStVarAd
  loc_A2CE56: FFree1Ad var_88
  loc_A2CE59: LitI2_Byte 1
  loc_A2CE5B: FLdPr Me
  loc_A2CE5E: MemLdRfVar from_stack_1.global_122
  loc_A2CE61: FLdPr Me
  loc_A2CE64: MemLdStr global_108
  loc_A2CE67: LitI2_Byte 1
  loc_A2CE69: FnUBound
  loc_A2CE6B: CI2I4
  loc_A2CE6C: ForI2 var_8C
  loc_A2CE72: FLdPr Me
  loc_A2CE75: MemLdI2 global_122
  loc_A2CE78: CI4UI1
  loc_A2CE79: FLdPr Me
  loc_A2CE7C: MemLdStr global_108
  loc_A2CE7F: AryLock
  loc_A2CE82: Ary1LdRf
  loc_A2CE83: FStR4 var_94
  loc_A2CE86: LitStr "01"
  loc_A2CE89: FMemLdRf ext_4010B8
  loc_A2CE8E: LdFixedStr
  loc_A2CE91: FStStrNoPop var_98
  loc_A2CE94: ConcatStr
  loc_A2CE95: FStStrNoPop var_9C
  loc_A2CE98: FMemLdRf ext_4010B8
  loc_A2CE9D: LdFixedStr
  loc_A2CEA0: FStStrNoPop var_A0
  loc_A2CEA3: ConcatStr
  loc_A2CEA4: FStStrNoPop var_A4
  loc_A2CEA7: FMemLdRf ext_4010B8
  loc_A2CEAC: LdFixedStr
  loc_A2CEAF: FStStrNoPop var_A8
  loc_A2CEB2: ConcatStr
  loc_A2CEB3: FStStrNoPop var_AC
  loc_A2CEB6: LitStr "767"
  loc_A2CEB9: ConcatStr
  loc_A2CEBA: FStStrNoPop var_B0
  loc_A2CEBD: LitStr "07"
  loc_A2CEC0: ConcatStr
  loc_A2CEC1: FStStrNoPop var_B4
  loc_A2CEC4: LitStr "8"
  loc_A2CEC7: ConcatStr
  loc_A2CEC8: FStStrNoPop var_B8
  loc_A2CECB: LitStr "1"
  loc_A2CECE: ConcatStr
  loc_A2CECF: FStStrNoPop var_BC
  loc_A2CED2: FMemLdRf ext_4010B8
  loc_A2CED7: LdFixedStr
  loc_A2CEDA: FStStrNoPop var_C0
  loc_A2CEDD: ConcatStr
  loc_A2CEDE: FStStrNoPop var_C4
  loc_A2CEE1: FMemLdRf ext_4010B8
  loc_A2CEE6: LdFixedStr
  loc_A2CEE9: FStStrNoPop var_C8
  loc_A2CEEC: ConcatStr
  loc_A2CEED: FStStrNoPop var_CC
  loc_A2CEF0: LitStr "01"
  loc_A2CEF3: ConcatStr
  loc_A2CEF4: FStStrNoPop var_D0
  loc_A2CEF7: LitStr "0"
  loc_A2CEFA: ConcatStr
  loc_A2CEFB: FStStrNoPop var_D4
  loc_A2CEFE: FMemLdRf ext_4010B8
  loc_A2CF03: LdFixedStr
  loc_A2CF06: FStStrNoPop var_D8
  loc_A2CF09: ConcatStr
  loc_A2CF0A: FStStrNoPop var_DC
  loc_A2CF0D: LitStr "  0,00"
  loc_A2CF10: ConcatStr
  loc_A2CF11: FStStrNoPop var_E0
  loc_A2CF14: LitStr "          "
  loc_A2CF17: ConcatStr
  loc_A2CF18: FStStrNoPop var_E4
  loc_A2CF1B: FMemLdRf ext_4010B8
  loc_A2CF20: LdFixedStr
  loc_A2CF23: FStStrNoPop var_E8
  loc_A2CF26: ConcatStr
  loc_A2CF27: FStStrNoPop var_EC
  loc_A2CF2A: FMemLdRf ext_4010B8
  loc_A2CF2F: LdFixedStr
  loc_A2CF32: FStStrNoPop var_F0
  loc_A2CF35: ConcatStr
  loc_A2CF36: FStStrNoPop var_F4
  loc_A2CF39: LitStr "         "
  loc_A2CF3C: ConcatStr
  loc_A2CF3D: FStStrNoPop var_F8
  loc_A2CF40: FMemLdRf ext_4010B8
  loc_A2CF45: LdFixedStr
  loc_A2CF48: FStStrNoPop var_FC
  loc_A2CF4B: ConcatStr
  loc_A2CF4C: CVarStr var_10C
  loc_A2CF4F: PopAdLdVar
  loc_A2CF50: FLdPr Me
  loc_A2CF53: MemLdRfVar from_stack_1.global_88
  loc_A2CF56: LdPrVar
  loc_A2CF58: LateMemCall
  loc_A2CF5E: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_A2CF95: FFree1Var var_10C = ""
  loc_A2CF98: LitI4 0
  loc_A2CF9D: FStR4 var_94
  loc_A2CFA0: AryUnlock
  loc_A2CFA3: FLdPr Me
  loc_A2CFA6: MemLdRfVar from_stack_1.global_122
  loc_A2CFA9: NextI2 var_8C, loc_A2CE72
  loc_A2CFAE: FLdPr Me
  loc_A2CFB1: MemLdRfVar from_stack_1.global_88
  loc_A2CFB4: LdPrVar
  loc_A2CFB6: LateMemCall
  loc_A2CFBC: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A5AC44
  'Data Table: 4400F0
  loc_A5A9B0: FLdRfVar var_88
  loc_A5A9B3: LitI2_Byte 0
  loc_A5A9B5: LitI2_Byte &HFF
  loc_A5A9B7: ImpAdLdI4 MemVar_C3D83C
  loc_A5A9BA: FLdPr Me
  loc_A5A9BD: MemLdRfVar from_stack_1.global_68
  loc_A5A9C0: NewIfNullPr IFileSystem3
  loc_A5A9C3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A5A9C8: ILdRf var_88
  loc_A5A9CB: FLdPr Me
  loc_A5A9CE: MemStVarAd
  loc_A5A9D2: FFree1Ad var_88
  loc_A5A9D5: Call Proc_178_16_A9DFF4()
  loc_A5A9DA: LitI2_Byte 1
  loc_A5A9DC: FLdPr Me
  loc_A5A9DF: MemLdRfVar from_stack_1.global_122
  loc_A5A9E2: FLdPr Me
  loc_A5A9E5: MemLdStr global_108
  loc_A5A9E8: LitI2_Byte 1
  loc_A5A9EA: FnUBound
  loc_A5A9EC: CI2I4
  loc_A5A9ED: ForI2 var_8C
  loc_A5A9F3: FLdPr Me
  loc_A5A9F6: MemLdI2 global_122
  loc_A5A9F9: CI4UI1
  loc_A5A9FA: FLdPr Me
  loc_A5A9FD: MemLdStr global_108
  loc_A5AA00: AryLock
  loc_A5AA03: Ary1LdRf
  loc_A5AA04: FStR4 var_94
  loc_A5AA07: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A5AA0C: PopAdLdVar
  loc_A5AA0D: FLdPr Me
  loc_A5AA10: MemLdRfVar from_stack_1.global_72
  loc_A5AA13: LdPrVar
  loc_A5AA15: LateMemCall
  loc_A5AA1B: FLdRfVar var_128
  loc_A5AA1E: FMemLdRf ext_4010B8
  loc_A5AA23: LdFixedStr
  loc_A5AA26: FStStrNoPop var_B8
  loc_A5AA29: LitStr "01"
  loc_A5AA2C: ConcatStr
  loc_A5AA2D: FStStrNoPop var_BC
  loc_A5AA30: FMemLdRf ext_4010B8
  loc_A5AA35: LdFixedStr
  loc_A5AA38: FStStrNoPop var_C0
  loc_A5AA3B: ConcatStr
  loc_A5AA3C: FStStrNoPop var_C4
  loc_A5AA3F: FMemLdRf ext_4010B8
  loc_A5AA44: LdFixedStr
  loc_A5AA47: FStStrNoPop var_C8
  loc_A5AA4A: ConcatStr
  loc_A5AA4B: FStStrNoPop var_CC
  loc_A5AA4E: FMemLdRf ext_4010B8
  loc_A5AA53: LdFixedStr
  loc_A5AA56: FStStrNoPop var_D0
  loc_A5AA59: ConcatStr
  loc_A5AA5A: FStStrNoPop var_D4
  loc_A5AA5D: LitStr "767"
  loc_A5AA60: ConcatStr
  loc_A5AA61: FStStrNoPop var_D8
  loc_A5AA64: LitStr "07"
  loc_A5AA67: ConcatStr
  loc_A5AA68: FStStrNoPop var_DC
  loc_A5AA6B: LitStr "8"
  loc_A5AA6E: ConcatStr
  loc_A5AA6F: FStStrNoPop var_E0
  loc_A5AA72: LitStr "1"
  loc_A5AA75: ConcatStr
  loc_A5AA76: FStStrNoPop var_E4
  loc_A5AA79: FMemLdRf ext_4010B8
  loc_A5AA7E: LdFixedStr
  loc_A5AA81: FStStrNoPop var_E8
  loc_A5AA84: ConcatStr
  loc_A5AA85: FStStrNoPop var_EC
  loc_A5AA88: FMemLdRf ext_4010B8
  loc_A5AA8D: LdFixedStr
  loc_A5AA90: FStStrNoPop var_F0
  loc_A5AA93: ConcatStr
  loc_A5AA94: FStStrNoPop var_F4
  loc_A5AA97: LitStr "01"
  loc_A5AA9A: ConcatStr
  loc_A5AA9B: FStStrNoPop var_F8
  loc_A5AA9E: FMemLdRf ext_4010B8
  loc_A5AAA3: LdFixedStr
  loc_A5AAA6: FStStrNoPop var_FC
  loc_A5AAA9: ConcatStr
  loc_A5AAAA: FStStrNoPop var_100
  loc_A5AAAD: LitStr "  0,00"
  loc_A5AAB0: ConcatStr
  loc_A5AAB1: FStStrNoPop var_104
  loc_A5AAB4: LitStr "          "
  loc_A5AAB7: ConcatStr
  loc_A5AAB8: FStStrNoPop var_108
  loc_A5AABB: FMemLdRf ext_4010B8
  loc_A5AAC0: LdFixedStr
  loc_A5AAC3: FStStrNoPop var_10C
  loc_A5AAC6: ConcatStr
  loc_A5AAC7: FStStrNoPop var_110
  loc_A5AACA: FMemLdRf ext_4010B8
  loc_A5AACF: LdFixedStr
  loc_A5AAD2: FStStrNoPop var_114
  loc_A5AAD5: ConcatStr
  loc_A5AAD6: FStStrNoPop var_118
  loc_A5AAD9: LitStr "         "
  loc_A5AADC: ConcatStr
  loc_A5AADD: FStStrNoPop var_11C
  loc_A5AAE0: FMemLdRf ext_4010B8
  loc_A5AAE5: LdFixedStr
  loc_A5AAE8: FStStrNoPop var_120
  loc_A5AAEB: ConcatStr
  loc_A5AAEC: FStStrNoPop var_124
  loc_A5AAEF: Call Proc_178_15_9A4950()
  loc_A5AAF4: LitI4 0
  loc_A5AAF9: LitI4 0
  loc_A5AAFE: LitI2_Byte 0
  loc_A5AB00: LitStr "left"
  loc_A5AB03: ILdRf var_128
  loc_A5AB06: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A5AB0B: CVarStr var_138
  loc_A5AB0E: PopAdLdVar
  loc_A5AB0F: FLdPr Me
  loc_A5AB12: MemLdRfVar from_stack_1.global_72
  loc_A5AB15: LdPrVar
  loc_A5AB17: LateMemCall
  loc_A5AB1D: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_A5AB5A: FFree1Var var_138 = ""
  loc_A5AB5D: LitVarStr var_A4, "  </tr>"
  loc_A5AB62: PopAdLdVar
  loc_A5AB63: FLdPr Me
  loc_A5AB66: MemLdRfVar from_stack_1.global_72
  loc_A5AB69: LdPrVar
  loc_A5AB6B: LateMemCall
  loc_A5AB71: LitI4 0
  loc_A5AB76: FStR4 var_94
  loc_A5AB79: AryUnlock
  loc_A5AB7C: FLdPr Me
  loc_A5AB7F: MemLdRfVar from_stack_1.global_122
  loc_A5AB82: NextI2 var_8C, loc_A5A9F3
  loc_A5AB87: LitVarStr var_A4, "</table>"
  loc_A5AB8C: PopAdLdVar
  loc_A5AB8D: FLdPr Me
  loc_A5AB90: MemLdRfVar from_stack_1.global_72
  loc_A5AB93: LdPrVar
  loc_A5AB95: LateMemCall
  loc_A5AB9B: LitVarStr var_A4, "<br>"
  loc_A5ABA0: PopAdLdVar
  loc_A5ABA1: FLdPr Me
  loc_A5ABA4: MemLdRfVar from_stack_1.global_72
  loc_A5ABA7: LdPrVar
  loc_A5ABA9: LateMemCall
  loc_A5ABAF: LitVarStr var_A4, "<table align=""center"">"
  loc_A5ABB4: PopAdLdVar
  loc_A5ABB5: FLdPr Me
  loc_A5ABB8: MemLdRfVar from_stack_1.global_72
  loc_A5ABBB: LdPrVar
  loc_A5ABBD: LateMemCall
  loc_A5ABC3: LitVarStr var_A4, "<tr>"
  loc_A5ABC8: PopAdLdVar
  loc_A5ABC9: FLdPr Me
  loc_A5ABCC: MemLdRfVar from_stack_1.global_72
  loc_A5ABCF: LdPrVar
  loc_A5ABD1: LateMemCall
  loc_A5ABD7: LitVarStr var_A4, "<th align=""right"" class=""Normal"">Monto total retenido: </th>"
  loc_A5ABDC: PopAdLdVar
  loc_A5ABDD: FLdPr Me
  loc_A5ABE0: MemLdRfVar from_stack_1.global_72
  loc_A5ABE3: LdPrVar
  loc_A5ABE5: LateMemCall
  loc_A5ABEB: LitStr "<th align=""left"" class=""Totales"">"
  loc_A5ABEE: FLdPr Me
  loc_A5ABF1: MemLdStr global_116
  loc_A5ABF4: ConcatStr
  loc_A5ABF5: FStStrNoPop var_B8
  loc_A5ABF8: LitStr "</th>"
  loc_A5ABFB: ConcatStr
  loc_A5ABFC: CVarStr var_138
  loc_A5ABFF: PopAdLdVar
  loc_A5AC00: FLdPr Me
  loc_A5AC03: MemLdRfVar from_stack_1.global_72
  loc_A5AC06: LdPrVar
  loc_A5AC08: LateMemCall
  loc_A5AC0E: FFree1Str var_B8
  loc_A5AC11: FFree1Var var_138 = ""
  loc_A5AC14: LitVarStr var_A4, "</tr>"
  loc_A5AC19: PopAdLdVar
  loc_A5AC1A: FLdPr Me
  loc_A5AC1D: MemLdRfVar from_stack_1.global_72
  loc_A5AC20: LdPrVar
  loc_A5AC22: LateMemCall
  loc_A5AC28: Call Proc_178_17_981F20()
  loc_A5AC2D: FLdPr Me
  loc_A5AC30: MemLdRfVar from_stack_1.global_72
  loc_A5AC33: LdPrVar
  loc_A5AC35: LateMemCall
  loc_A5AC3B: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A5AC40: ExitProcHresult
End Sub

Private Function Proc_178_15_9A4950(arg_C) '9A4950
  'Data Table: 4400F0
  loc_9A48D8: ILdRf arg_C
  loc_9A48DB: FStStrCopy var_8C
  loc_9A48DE: ZeroRetVal
  loc_9A48E0: LitI2_Byte 1
  loc_9A48E2: FLdRfVar var_8E
  loc_9A48E5: ILdRf var_8C
  loc_9A48E8: FnLenStr
  loc_9A48E9: CI2I4
  loc_9A48EA: ForI2 var_94
  loc_9A48F0: LitVarI2 var_B4, 1
  loc_9A48F5: FLdI2 var_8E
  loc_9A48F8: CI4UI1
  loc_9A48F9: ILdRf var_8C
  loc_9A48FC: ImpAdCallI2 Mid$(, , )
  loc_9A4901: FLdRfVar var_90
  loc_9A4904: StFixedStrFree
  loc_9A4908: FFree1Var var_B4 = ""
  loc_9A490B: FLdRfVar var_90
  loc_9A490E: LdFixedStr
  loc_9A4911: FStStrNoPop var_B8
  loc_9A4914: LitStr " "
  loc_9A4917: EqStr
  loc_9A4919: FFree1Str var_B8
  loc_9A491C: BranchF loc_9A492C
  loc_9A491F: ILdRf var_88
  loc_9A4922: LitStr "&nbsp;"
  loc_9A4925: ConcatStr
  loc_9A4926: FStStr var_88
  loc_9A4929: Branch loc_9A493F
  loc_9A492C: ILdRf var_88
  loc_9A492F: FLdRfVar var_90
  loc_9A4932: LdFixedStr
  loc_9A4935: FStStrNoPop var_B8
  loc_9A4938: ConcatStr
  loc_9A4939: FStStr var_88
  loc_9A493C: FFree1Str var_B8
  loc_9A493F: FLdRfVar var_8E
  loc_9A4942: NextI2 var_94, loc_9A48F0
  loc_9A4947: ExitProcCbHresult
End Function

Private Function Proc_178_16_A9DFF4() 'A9DFF4
  'Data Table: 4400F0
  loc_A9DB18: LitVarStr var_94, "<html>"
  loc_A9DB1D: PopAdLdVar
  loc_A9DB1E: FLdPr Me
  loc_A9DB21: MemLdRfVar from_stack_1.global_72
  loc_A9DB24: LdPrVar
  loc_A9DB26: LateMemCall
  loc_A9DB2C: LitVarStr var_94, "<head>"
  loc_A9DB31: PopAdLdVar
  loc_A9DB32: FLdPr Me
  loc_A9DB35: MemLdRfVar from_stack_1.global_72
  loc_A9DB38: LdPrVar
  loc_A9DB3A: LateMemCall
  loc_A9DB40: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A9DB45: PopAdLdVar
  loc_A9DB46: FLdPr Me
  loc_A9DB49: MemLdRfVar from_stack_1.global_72
  loc_A9DB4C: LdPrVar
  loc_A9DB4E: LateMemCall
  loc_A9DB54: LitStr "<title>"
  loc_A9DB57: FLdRfVar var_A8
  loc_A9DB5A: FLdPr Me
  loc_A9DB5D:  = Me.Caption
  loc_A9DB62: ILdRf var_A8
  loc_A9DB65: ConcatStr
  loc_A9DB66: FStStrNoPop var_AC
  loc_A9DB69: LitStr "</title>"
  loc_A9DB6C: ConcatStr
  loc_A9DB6D: CVarStr var_BC
  loc_A9DB70: PopAdLdVar
  loc_A9DB71: FLdPr Me
  loc_A9DB74: MemLdRfVar from_stack_1.global_72
  loc_A9DB77: LdPrVar
  loc_A9DB79: LateMemCall
  loc_A9DB7F: FFreeStr var_A8 = ""
  loc_A9DB86: FFree1Var var_BC = ""
  loc_A9DB89: LitVarStr var_94, "<style type=""text/css"">"
  loc_A9DB8E: PopAdLdVar
  loc_A9DB8F: FLdPr Me
  loc_A9DB92: MemLdRfVar from_stack_1.global_72
  loc_A9DB95: LdPrVar
  loc_A9DB97: LateMemCall
  loc_A9DB9D: LitVarStr var_94, ".Titulo1 {"
  loc_A9DBA2: PopAdLdVar
  loc_A9DBA3: FLdPr Me
  loc_A9DBA6: MemLdRfVar from_stack_1.global_72
  loc_A9DBA9: LdPrVar
  loc_A9DBAB: LateMemCall
  loc_A9DBB1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_A9DBB6: PopAdLdVar
  loc_A9DBB7: FLdPr Me
  loc_A9DBBA: MemLdRfVar from_stack_1.global_72
  loc_A9DBBD: LdPrVar
  loc_A9DBBF: LateMemCall
  loc_A9DBC5: LitVarStr var_94, " font-size: 18px;"
  loc_A9DBCA: PopAdLdVar
  loc_A9DBCB: FLdPr Me
  loc_A9DBCE: MemLdRfVar from_stack_1.global_72
  loc_A9DBD1: LdPrVar
  loc_A9DBD3: LateMemCall
  loc_A9DBD9: LitVarStr var_94, " font-weight: bold;"
  loc_A9DBDE: PopAdLdVar
  loc_A9DBDF: FLdPr Me
  loc_A9DBE2: MemLdRfVar from_stack_1.global_72
  loc_A9DBE5: LdPrVar
  loc_A9DBE7: LateMemCall
  loc_A9DBED: LitVarStr var_94, "}"
  loc_A9DBF2: PopAdLdVar
  loc_A9DBF3: FLdPr Me
  loc_A9DBF6: MemLdRfVar from_stack_1.global_72
  loc_A9DBF9: LdPrVar
  loc_A9DBFB: LateMemCall
  loc_A9DC01: LitVarStr var_94, ".Titulo2 {"
  loc_A9DC06: PopAdLdVar
  loc_A9DC07: FLdPr Me
  loc_A9DC0A: MemLdRfVar from_stack_1.global_72
  loc_A9DC0D: LdPrVar
  loc_A9DC0F: LateMemCall
  loc_A9DC15: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_A9DC1A: PopAdLdVar
  loc_A9DC1B: FLdPr Me
  loc_A9DC1E: MemLdRfVar from_stack_1.global_72
  loc_A9DC21: LdPrVar
  loc_A9DC23: LateMemCall
  loc_A9DC29: LitVarStr var_94, " font-size: 14px;"
  loc_A9DC2E: PopAdLdVar
  loc_A9DC2F: FLdPr Me
  loc_A9DC32: MemLdRfVar from_stack_1.global_72
  loc_A9DC35: LdPrVar
  loc_A9DC37: LateMemCall
  loc_A9DC3D: LitVarStr var_94, " font-weight: bold;"
  loc_A9DC42: PopAdLdVar
  loc_A9DC43: FLdPr Me
  loc_A9DC46: MemLdRfVar from_stack_1.global_72
  loc_A9DC49: LdPrVar
  loc_A9DC4B: LateMemCall
  loc_A9DC51: LitVarStr var_94, "}"
  loc_A9DC56: PopAdLdVar
  loc_A9DC57: FLdPr Me
  loc_A9DC5A: MemLdRfVar from_stack_1.global_72
  loc_A9DC5D: LdPrVar
  loc_A9DC5F: LateMemCall
  loc_A9DC65: LitVarStr var_94, ".Normal {"
  loc_A9DC6A: PopAdLdVar
  loc_A9DC6B: FLdPr Me
  loc_A9DC6E: MemLdRfVar from_stack_1.global_72
  loc_A9DC71: LdPrVar
  loc_A9DC73: LateMemCall
  loc_A9DC79: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_A9DC7E: PopAdLdVar
  loc_A9DC7F: FLdPr Me
  loc_A9DC82: MemLdRfVar from_stack_1.global_72
  loc_A9DC85: LdPrVar
  loc_A9DC87: LateMemCall
  loc_A9DC8D: LitVarStr var_94, " font-size: 14px;"
  loc_A9DC92: PopAdLdVar
  loc_A9DC93: FLdPr Me
  loc_A9DC96: MemLdRfVar from_stack_1.global_72
  loc_A9DC99: LdPrVar
  loc_A9DC9B: LateMemCall
  loc_A9DCA1: LitVarStr var_94, " font-style: normal;"
  loc_A9DCA6: PopAdLdVar
  loc_A9DCA7: FLdPr Me
  loc_A9DCAA: MemLdRfVar from_stack_1.global_72
  loc_A9DCAD: LdPrVar
  loc_A9DCAF: LateMemCall
  loc_A9DCB5: LitVarStr var_94, " font-weight: normal;"
  loc_A9DCBA: PopAdLdVar
  loc_A9DCBB: FLdPr Me
  loc_A9DCBE: MemLdRfVar from_stack_1.global_72
  loc_A9DCC1: LdPrVar
  loc_A9DCC3: LateMemCall
  loc_A9DCC9: LitVarStr var_94, " font-variant: normal;"
  loc_A9DCCE: PopAdLdVar
  loc_A9DCCF: FLdPr Me
  loc_A9DCD2: MemLdRfVar from_stack_1.global_72
  loc_A9DCD5: LdPrVar
  loc_A9DCD7: LateMemCall
  loc_A9DCDD: LitVarStr var_94, "}"
  loc_A9DCE2: PopAdLdVar
  loc_A9DCE3: FLdPr Me
  loc_A9DCE6: MemLdRfVar from_stack_1.global_72
  loc_A9DCE9: LdPrVar
  loc_A9DCEB: LateMemCall
  loc_A9DCF1: LitVarStr var_94, ".Encabezado {"
  loc_A9DCF6: PopAdLdVar
  loc_A9DCF7: FLdPr Me
  loc_A9DCFA: MemLdRfVar from_stack_1.global_72
  loc_A9DCFD: LdPrVar
  loc_A9DCFF: LateMemCall
  loc_A9DD05: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_A9DD0A: PopAdLdVar
  loc_A9DD0B: FLdPr Me
  loc_A9DD0E: MemLdRfVar from_stack_1.global_72
  loc_A9DD11: LdPrVar
  loc_A9DD13: LateMemCall
  loc_A9DD19: LitVarStr var_94, " font-size: 13px;"
  loc_A9DD1E: PopAdLdVar
  loc_A9DD1F: FLdPr Me
  loc_A9DD22: MemLdRfVar from_stack_1.global_72
  loc_A9DD25: LdPrVar
  loc_A9DD27: LateMemCall
  loc_A9DD2D: LitVarStr var_94, " font-weight: bold;"
  loc_A9DD32: PopAdLdVar
  loc_A9DD33: FLdPr Me
  loc_A9DD36: MemLdRfVar from_stack_1.global_72
  loc_A9DD39: LdPrVar
  loc_A9DD3B: LateMemCall
  loc_A9DD41: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_A9DD46: PopAdLdVar
  loc_A9DD47: FLdPr Me
  loc_A9DD4A: MemLdRfVar from_stack_1.global_72
  loc_A9DD4D: LdPrVar
  loc_A9DD4F: LateMemCall
  loc_A9DD55: LitVarStr var_94, "}"
  loc_A9DD5A: PopAdLdVar
  loc_A9DD5B: FLdPr Me
  loc_A9DD5E: MemLdRfVar from_stack_1.global_72
  loc_A9DD61: LdPrVar
  loc_A9DD63: LateMemCall
  loc_A9DD69: LitVarStr var_94, ".LineaDato {"
  loc_A9DD6E: PopAdLdVar
  loc_A9DD6F: FLdPr Me
  loc_A9DD72: MemLdRfVar from_stack_1.global_72
  loc_A9DD75: LdPrVar
  loc_A9DD77: LateMemCall
  loc_A9DD7D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_A9DD82: PopAdLdVar
  loc_A9DD83: FLdPr Me
  loc_A9DD86: MemLdRfVar from_stack_1.global_72
  loc_A9DD89: LdPrVar
  loc_A9DD8B: LateMemCall
  loc_A9DD91: LitVarStr var_94, " font-size: 10px;"
  loc_A9DD96: PopAdLdVar
  loc_A9DD97: FLdPr Me
  loc_A9DD9A: MemLdRfVar from_stack_1.global_72
  loc_A9DD9D: LdPrVar
  loc_A9DD9F: LateMemCall
  loc_A9DDA5: LitVarStr var_94, "}"
  loc_A9DDAA: PopAdLdVar
  loc_A9DDAB: FLdPr Me
  loc_A9DDAE: MemLdRfVar from_stack_1.global_72
  loc_A9DDB1: LdPrVar
  loc_A9DDB3: LateMemCall
  loc_A9DDB9: LitVarStr var_94, ".Totales {"
  loc_A9DDBE: PopAdLdVar
  loc_A9DDBF: FLdPr Me
  loc_A9DDC2: MemLdRfVar from_stack_1.global_72
  loc_A9DDC5: LdPrVar
  loc_A9DDC7: LateMemCall
  loc_A9DDCD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_A9DDD2: PopAdLdVar
  loc_A9DDD3: FLdPr Me
  loc_A9DDD6: MemLdRfVar from_stack_1.global_72
  loc_A9DDD9: LdPrVar
  loc_A9DDDB: LateMemCall
  loc_A9DDE1: LitVarStr var_94, " font-size: 12px;"
  loc_A9DDE6: PopAdLdVar
  loc_A9DDE7: FLdPr Me
  loc_A9DDEA: MemLdRfVar from_stack_1.global_72
  loc_A9DDED: LdPrVar
  loc_A9DDEF: LateMemCall
  loc_A9DDF5: LitVarStr var_94, " font-weight: bold;"
  loc_A9DDFA: PopAdLdVar
  loc_A9DDFB: FLdPr Me
  loc_A9DDFE: MemLdRfVar from_stack_1.global_72
  loc_A9DE01: LdPrVar
  loc_A9DE03: LateMemCall
  loc_A9DE09: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_A9DE0E: PopAdLdVar
  loc_A9DE0F: FLdPr Me
  loc_A9DE12: MemLdRfVar from_stack_1.global_72
  loc_A9DE15: LdPrVar
  loc_A9DE17: LateMemCall
  loc_A9DE1D: LitVarStr var_94, "}"
  loc_A9DE22: PopAdLdVar
  loc_A9DE23: FLdPr Me
  loc_A9DE26: MemLdRfVar from_stack_1.global_72
  loc_A9DE29: LdPrVar
  loc_A9DE2B: LateMemCall
  loc_A9DE31: LitVarStr var_94, "</style>"
  loc_A9DE36: PopAdLdVar
  loc_A9DE37: FLdPr Me
  loc_A9DE3A: MemLdRfVar from_stack_1.global_72
  loc_A9DE3D: LdPrVar
  loc_A9DE3F: LateMemCall
  loc_A9DE45: LitI4 0
  loc_A9DE4A: FStStrCopy var_AC
  loc_A9DE4D: FLdRfVar var_AC
  loc_A9DE50: LitI4 0
  loc_A9DE55: FStStrCopy var_A8
  loc_A9DE58: FLdRfVar var_A8
  loc_A9DE5B: LitI2_Byte &HFF
  loc_A9DE5D: PopTmpLdAd2 var_BE
  loc_A9DE60: FLdPr Me
  loc_A9DE63: MemLdRfVar from_stack_1.global_72
  loc_A9DE66: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A9DE6B: FFreeStr var_A8 = ""
  loc_A9DE72: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A9DE77: PopAdLdVar
  loc_A9DE78: FLdPr Me
  loc_A9DE7B: MemLdRfVar from_stack_1.global_72
  loc_A9DE7E: LdPrVar
  loc_A9DE80: LateMemCall
  loc_A9DE86: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A9DE8B: PopAdLdVar
  loc_A9DE8C: FLdPr Me
  loc_A9DE8F: MemLdRfVar from_stack_1.global_72
  loc_A9DE92: LdPrVar
  loc_A9DE94: LateMemCall
  loc_A9DE9A: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ align=""center"" valign=""middle""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_A9DE9F: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A9DEA4: FStVarCopyObj var_BC
  loc_A9DEA7: FLdRfVar var_BC
  loc_A9DEAA: FLdRfVar var_D0
  loc_A9DEAD: ImpAdCallFPR4  = Ucase()
  loc_A9DEB2: FLdRfVar var_D0
  loc_A9DEB5: ConcatVar var_E0
  loc_A9DEB9: PopAdLdVar
  loc_A9DEBA: FLdPr Me
  loc_A9DEBD: MemLdRfVar from_stack_1.global_72
  loc_A9DEC0: LdPrVar
  loc_A9DEC2: LateMemCall
  loc_A9DEC8: FFreeVar var_BC = "": var_D0 = ""
  loc_A9DED1: LitVarStr var_94, "    <p>Declaraci&oacute;n de Impuestos<br>IVA</p>"
  loc_A9DED6: PopAdLdVar
  loc_A9DED7: FLdPr Me
  loc_A9DEDA: MemLdRfVar from_stack_1.global_72
  loc_A9DEDD: LdPrVar
  loc_A9DEDF: LateMemCall
  loc_A9DEE5: LitVarStr var_94, "      <hr></th>"
  loc_A9DEEA: PopAdLdVar
  loc_A9DEEB: FLdPr Me
  loc_A9DEEE: MemLdRfVar from_stack_1.global_72
  loc_A9DEF1: LdPrVar
  loc_A9DEF3: LateMemCall
  loc_A9DEF9: LitVarStr var_94, "  </tr>"
  loc_A9DEFE: PopAdLdVar
  loc_A9DEFF: FLdPr Me
  loc_A9DF02: MemLdRfVar from_stack_1.global_72
  loc_A9DF05: LdPrVar
  loc_A9DF07: LateMemCall
  loc_A9DF0D: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A9DF12: PopAdLdVar
  loc_A9DF13: FLdPr Me
  loc_A9DF16: MemLdRfVar from_stack_1.global_72
  loc_A9DF19: LdPrVar
  loc_A9DF1B: LateMemCall
  loc_A9DF21: LitVarStr var_94, "    <th align=""left"" valign=""top"">"
  loc_A9DF26: PopAdLdVar
  loc_A9DF27: FLdPr Me
  loc_A9DF2A: MemLdRfVar from_stack_1.global_72
  loc_A9DF2D: LdPrVar
  loc_A9DF2F: LateMemCall
  loc_A9DF35: LitStr "    Periodo: <span class=""Normal"">"
  loc_A9DF38: FLdRfVar var_A8
  loc_A9DF3B: FLdPr Me
  loc_A9DF3E: VCallAd Control_ID_cboPeriodo
  loc_A9DF41: FStAdFunc var_F4
  loc_A9DF44: FLdPr var_F4
  loc_A9DF47:  = Me.Text
  loc_A9DF4C: ILdRf var_A8
  loc_A9DF4F: ConcatStr
  loc_A9DF50: FStStrNoPop var_AC
  loc_A9DF53: LitStr "</span><br>"
  loc_A9DF56: ConcatStr
  loc_A9DF57: CVarStr var_BC
  loc_A9DF5A: PopAdLdVar
  loc_A9DF5B: FLdPr Me
  loc_A9DF5E: MemLdRfVar from_stack_1.global_72
  loc_A9DF61: LdPrVar
  loc_A9DF63: LateMemCall
  loc_A9DF69: FFreeStr var_A8 = ""
  loc_A9DF70: FFree1Ad var_F4
  loc_A9DF73: FFree1Var var_BC = ""
  loc_A9DF76: LitStr "    Mes: <span class=""Normal"">"
  loc_A9DF79: FLdRfVar var_A8
  loc_A9DF7C: FLdPr Me
  loc_A9DF7F: VCallAd Control_ID_cboMes
  loc_A9DF82: FStAdFunc var_F4
  loc_A9DF85: FLdPr var_F4
  loc_A9DF88:  = Me.Text
  loc_A9DF8D: ILdRf var_A8
  loc_A9DF90: ConcatStr
  loc_A9DF91: FStStrNoPop var_AC
  loc_A9DF94: LitStr "</span></th>"
  loc_A9DF97: ConcatStr
  loc_A9DF98: CVarStr var_BC
  loc_A9DF9B: PopAdLdVar
  loc_A9DF9C: FLdPr Me
  loc_A9DF9F: MemLdRfVar from_stack_1.global_72
  loc_A9DFA2: LdPrVar
  loc_A9DFA4: LateMemCall
  loc_A9DFAA: FFreeStr var_A8 = ""
  loc_A9DFB1: FFree1Ad var_F4
  loc_A9DFB4: FFree1Var var_BC = ""
  loc_A9DFB7: LitVarStr var_94, "  </tr>"
  loc_A9DFBC: PopAdLdVar
  loc_A9DFBD: FLdPr Me
  loc_A9DFC0: MemLdRfVar from_stack_1.global_72
  loc_A9DFC3: LdPrVar
  loc_A9DFC5: LateMemCall
  loc_A9DFCB: LitVarStr var_94, "</table>"
  loc_A9DFD0: PopAdLdVar
  loc_A9DFD1: FLdPr Me
  loc_A9DFD4: MemLdRfVar from_stack_1.global_72
  loc_A9DFD7: LdPrVar
  loc_A9DFD9: LateMemCall
  loc_A9DFDF: LitVarStr var_94, "<table border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A9DFE4: PopAdLdVar
  loc_A9DFE5: FLdPr Me
  loc_A9DFE8: MemLdRfVar from_stack_1.global_72
  loc_A9DFEB: LdPrVar
  loc_A9DFED: LateMemCall
  loc_A9DFF3: ExitProcHresult
End Function

Private Function Proc_178_17_981F20() '981F20
  'Data Table: 4400F0
  loc_981EE0: LitVarStr var_94, "</table>"
  loc_981EE5: PopAdLdVar
  loc_981EE6: FLdPr Me
  loc_981EE9: MemLdRfVar from_stack_1.global_72
  loc_981EEC: LdPrVar
  loc_981EEE: LateMemCall
  loc_981EF4: LitVarStr var_94, "</body>"
  loc_981EF9: PopAdLdVar
  loc_981EFA: FLdPr Me
  loc_981EFD: MemLdRfVar from_stack_1.global_72
  loc_981F00: LdPrVar
  loc_981F02: LateMemCall
  loc_981F08: LitVarStr var_94, "</html>"
  loc_981F0D: PopAdLdVar
  loc_981F0E: FLdPr Me
  loc_981F11: MemLdRfVar from_stack_1.global_72
  loc_981F14: LdPrVar
  loc_981F16: LateMemCall
  loc_981F1C: ExitProcHresult
End Function
