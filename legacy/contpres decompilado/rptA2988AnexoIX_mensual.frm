VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988AnexoIX_mensual
  Caption = "Acuerdo 2988 - Anexo IX - Mensual"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988AnexoIX_mensual.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9270
  ClientHeight = 4005
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2520
    Width = 3015
    Height = 1095
    TabIndex = 9
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 11
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3750
    Width = 9270
    Height = 255
    TabIndex = 17
    OleObjectBlob = "rptA2988AnexoIX_mensual.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8040
    Top = 2760
    Width = 735
    Height = 615
    TabIndex = 15
    Cancel = -1  'True
    Picture = "rptA2988AnexoIX_mensual.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988AnexoIX_mensual.frx":0B9C
    Left = 2760
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2520
    Width = 4575
    Height = 1095
    TabIndex = 12
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT HTC"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 19
    End
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 14
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
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
    Width = 9015
    Height = 2415
    TabIndex = 0
    Begin VB.CheckBox chkOcultarDetalleExtra
      Caption = "Ocultar Detalles Extrapresupuestarios"
      Left = 1080
      Top = 1920
      Width = 3735
      Height = 375
      TabIndex = 18
    End
    Begin VB.CheckBox chkOcultarDetallePresu
      Caption = "Ocultar Detalles Presupuestarios"
      Left = 1080
      Top = 1440
      Width = 3735
      Height = 375
      TabIndex = 8
    End
    Begin VB.ComboBox cboMes
      Style = 2
      ForeColor = &HFF0000&
      Left = 1080
      Top = 960
      Width = 1575
      Height = 315
      TabIndex = 7
    End
    Begin VB.OptionButton OptAcumulado
      Caption = "Acumulado"
      Left = 3360
      Top = 840
      Width = 1335
      Height = 255
      TabIndex = 5
    End
    Begin VB.OptionButton OptMensual
      Caption = "Mensual"
      Left = 3360
      Top = 480
      Width = 1335
      Height = 255
      TabIndex = 3
      Value = 255
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5880
      Top = 960
      Width = 1935
      Height = 495
      TabIndex = 4
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
    Begin VB.Label Label2
      Caption = "Mes:"
      Left = 600
      Top = 960
      Width = 345
      Height = 195
      TabIndex = 6
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
    Left = 8160
    Top = 2880
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 16
    OleObjectBlob = "rptA2988AnexoIX_mensual.frx":0C00
  End
End

Attribute VB_Name = "rptA2988AnexoIX_mensual"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean
Public sValErr As String

Private Type UDT_1_00575408
  bStruc(16) As Byte ' String fields: 4
End Type

Private Type UDT_2_005AFDD8
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_3_005AFE10
  bStruc(12) As Byte ' String fields: 3
End Type


Private Sub cmdXLS_Click() '96AE0C
  'Data Table: 47CA80
  loc_96ADF0: LitI2_Byte &HFF
  loc_96ADF2: LitI2_Byte 0
  loc_96ADF4: ILdRf Me
  loc_96ADF7: CastAd
  loc_96ADFA: FStAdFunc var_88
  loc_96ADFD: FLdRfVar var_88
  loc_96AE00: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96AE05: FFree1Ad var_88
  loc_96AE08: ExitProcHresult
  loc_96AE09: FStI2 var_86
End Sub

Private Sub cmdPrevia_Click() '9545BC
  'Data Table: 47CA80
  loc_9545A4: ILdRf Me
  loc_9545A7: CastAd
  loc_9545AA: FStAdFunc var_88
  loc_9545AD: FLdRfVar var_88
  loc_9545B0: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_9545B5: FFree1Ad var_88
  loc_9545B8: ExitProcHresult
End Sub

Private Sub Form_Load() 'A07FF0
  'Data Table: 47CA80
  loc_A07E94: LitI2_Byte &HFF
  loc_A07E96: ImpAdStI2 MemVar_C3D840
  loc_A07E99: ILdRf Me
  loc_A07E9C: CastAd
  loc_A07E9F: FStAdFunc var_8C
  loc_A07EA2: FLdRfVar var_8C
  loc_A07EA5: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A07EAA: FFree1Ad var_8C
  loc_A07EAD: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo;"
  loc_A07EB0: FLdRfVar var_88
  loc_A07EB3: NewIfNullPr clsperiodo
  loc_A07EB6: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A07EBB: FLdRfVar var_90
  loc_A07EBE: FLdRfVar var_88
  loc_A07EC1: NewIfNullPr clsperiodo
  loc_A07EC4: from_stack_1 = clsperiodo.RecordCount
  loc_A07EC9: ILdRf var_90
  loc_A07ECC: LitI4 0
  loc_A07ED1: GtI4
  loc_A07ED2: BranchF loc_A07F65
  loc_A07ED5: FLdRfVar var_88
  loc_A07ED8: NewIfNullPr clsperiodo
  loc_A07EDB: Call clsperiodo.MoveFirst()
  loc_A07EE0: FLdRfVar var_92
  loc_A07EE3: FLdRfVar var_88
  loc_A07EE6: NewIfNullPr clsperiodo
  loc_A07EE9: from_stack_1 = clsperiodo.EOF
  loc_A07EEE: FLdI2 var_92
  loc_A07EF1: NotI4
  loc_A07EF2: BranchF loc_A07F65
  loc_A07EF5: LitVar_Missing var_D0
  loc_A07EF8: PopAdLdVar
  loc_A07EF9: FLdRfVar var_BC
  loc_A07EFC: FLdRfVar var_AC
  loc_A07EFF: LitVarStr var_A8, "PeriInfo"
  loc_A07F04: PopAdLdVar
  loc_A07F05: FLdRfVar var_98
  loc_A07F08: FLdRfVar var_8C
  loc_A07F0B: FLdRfVar var_88
  loc_A07F0E: NewIfNullPr clsperiodo
  loc_A07F11: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A07F16: FLdPr var_8C
  loc_A07F19:  = Me.Fields
  loc_A07F1E: FLdPr var_98
  loc_A07F21: from_stack_2 = Me.Item(from_stack_1)
  loc_A07F26: FLdPr var_AC
  loc_A07F29:  = Me.Value
  loc_A07F2E: FLdRfVar var_BC
  loc_A07F31: CStrVarTmp
  loc_A07F32: FStStrNoPop var_C0
  loc_A07F35: FLdPr Me
  loc_A07F38: VCallAd Control_ID_cboPeriodo
  loc_A07F3B: FStAdFunc var_D4
  loc_A07F3E: FLdPr var_D4
  loc_A07F41: Me.AddItem from_stack_1, from_stack_2
  loc_A07F46: FFree1Str var_C0
  loc_A07F49: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_A07F54: FFree1Var var_BC = ""
  loc_A07F57: FLdRfVar var_88
  loc_A07F5A: NewIfNullPr clsperiodo
  loc_A07F5D: Call clsperiodo.MoveSiguiente()
  loc_A07F62: Branch loc_A07EE0
  loc_A07F65: LitI2_Byte 1
  loc_A07F67: CUI1I2
  loc_A07F69: FLdPr Me
  loc_A07F6C: MemLdRfVar from_stack_1.global_144
  loc_A07F6F: LitI2_Byte &HC
  loc_A07F71: CUI1I2
  loc_A07F73: ForUI1 var_D8
  loc_A07F79: LitVar_Missing var_A8
  loc_A07F7C: PopAdLdVar
  loc_A07F7D: LitI2_Byte 0
  loc_A07F7F: FLdPr Me
  loc_A07F82: MemLdUI1 global_144
  loc_A07F86: CI4UI1
  loc_A07F87: ImpAdCallI2 MonthName(, )
  loc_A07F8C: FStStrNoPop var_C0
  loc_A07F8F: FLdPr Me
  loc_A07F92: VCallAd Control_ID_cboMes
  loc_A07F95: FStAdFunc var_8C
  loc_A07F98: FLdPr var_8C
  loc_A07F9B: Me.AddItem from_stack_1, from_stack_2
  loc_A07FA0: FFree1Str var_C0
  loc_A07FA3: FFree1Ad var_8C
  loc_A07FA6: FLdPr Me
  loc_A07FA9: MemLdUI1 global_144
  loc_A07FAD: CI4UI1
  loc_A07FAE: FLdRfVar var_92
  loc_A07FB1: FLdPr Me
  loc_A07FB4: VCallAd Control_ID_cboMes
  loc_A07FB7: FStAdFunc var_8C
  loc_A07FBA: FLdPr var_8C
  loc_A07FBD:  = Me.NewIndex
  loc_A07FC2: FLdI2 var_92
  loc_A07FC5: FLdPr Me
  loc_A07FC8: VCallAd Control_ID_cboMes
  loc_A07FCB: FStAdFunc var_98
  loc_A07FCE: FLdPr var_98
  loc_A07FD1: Me.ItemData = from_stack_1
  loc_A07FD6: FFreeAd var_8C = ""
  loc_A07FDD: FLdPr Me
  loc_A07FE0: MemLdRfVar from_stack_1.global_144
  loc_A07FE3: NextUI1
  loc_A07FE9: Call cmdNueva_Click()
  loc_A07FEE: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9539DC
  'Data Table: 47CA80
  loc_9539C4: FLdPr Me
  loc_9539C7: VCallAd Control_ID_wbbReporte
  loc_9539CA: FStAdFunc var_88
  loc_9539CD: FLdRfVar var_88
  loc_9539D0: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9539D5: FFree1Ad var_88
  loc_9539D8: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98953C
  'Data Table: 47CA80
  loc_989504: FLdPr Me
  loc_989507: VCallAd Control_ID_statusBar
  loc_98950A: FStAdFunc var_88
  loc_98950D: FLdPr var_88
  loc_989510: LateIdLdVar var_98 DispID_1 0
  loc_989517: CStrVarTmp
  loc_989518: CVarStr var_A8
  loc_98951B: PopAdLdVar
  loc_98951C: FLdPr Me
  loc_98951F: VCallAd Control_ID_statusBar
  loc_989522: FStAdFunc var_BC
  loc_989525: FLdPr var_BC
  loc_989528: LateIdSt
  loc_98952D: FFreeAd var_88 = ""
  loc_989534: FFreeVar var_98 = ""
  loc_98953B: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '953944
  'Data Table: 47CA80
  loc_95392C: ILdRf Me
  loc_95392F: CastAd
  loc_953932: FStAdFunc var_88
  loc_953935: FLdRfVar var_88
  loc_953938: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95393D: FFree1Ad var_88
  loc_953940: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '98FE7C
  'Data Table: 47CA80
  loc_98FE2C: FLdRfVar var_8A
  loc_98FE2F: FLdPr Me
  loc_98FE32: VCallAd Control_ID_OptMensual
  loc_98FE35: FStAdFunc var_88
  loc_98FE38: FLdPr var_88
  loc_98FE3B:  = Me.Value
  loc_98FE40: FLdI2 var_8A
  loc_98FE43: LitI2_Byte &HFF
  loc_98FE45: EqI2
  loc_98FE46: FFree1Ad var_88
  loc_98FE49: BranchF loc_98FE5A
  loc_98FE4C: LitStr "MovFondoValorMes.txt"
  loc_98FE4F: FLdPr Me
  loc_98FE52: Me.Tag = from_stack_1
  loc_98FE57: Branch loc_98FE65
  loc_98FE5A: LitStr "MovFondoValorAcu.txt"
  loc_98FE5D: FLdPr Me
  loc_98FE60: Me.Tag = from_stack_1
  loc_98FE65: LitI2_Byte 0
  loc_98FE67: ILdRf Me
  loc_98FE6A: CastAd
  loc_98FE6D: FStAdFunc var_88
  loc_98FE70: FLdRfVar var_88
  loc_98FE73: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_98FE78: FFree1Ad var_88
  loc_98FE7B: ExitProcHresult
End Sub

Private Sub cboMes_Validate(Cancel As Boolean) '9B85B4
  'Data Table: 47CA80
  loc_9B850C: FLdRfVar var_8C
  loc_9B850F: FLdPr Me
  loc_9B8512: VCallAd Control_ID_cboPeriodo
  loc_9B8515: FStAdFunc var_88
  loc_9B8518: FLdPr var_88
  loc_9B851B:  = Me.Text
  loc_9B8520: FLdRfVar var_92
  loc_9B8523: FLdPr Me
  loc_9B8526: VCallAd Control_ID_cboMes
  loc_9B8529: FStAdFunc var_90
  loc_9B852C: FLdPr var_90
  loc_9B852F:  = Me.ListIndex
  loc_9B8534: FLdRfVar var_9C
  loc_9B8537: FLdI2 var_92
  loc_9B853A: FLdPr Me
  loc_9B853D: VCallAd Control_ID_cboMes
  loc_9B8540: FStAdFunc var_98
  loc_9B8543: FLdPr var_98
  loc_9B8546:  = Me.ItemData
  loc_9B854B: ILdRf var_9C
  loc_9B854E: CUI1I4
  loc_9B8550: ILdRf var_8C
  loc_9B8553: CI2Str
  loc_9B8555: ImpAdCallI2 Proc_266_31_9BB10C(, )
  loc_9B855A: FStStrNoPop var_A0
  loc_9B855D: FLdPr Me
  loc_9B8560: MemStStrCopy
  loc_9B8564: FFreeStr var_8C = ""
  loc_9B856B: FFreeAd var_88 = "": var_90 = ""
  loc_9B8574: FLdPr Me
  loc_9B8577: VCallAd Control_ID_cboMes
  loc_9B857A: FStAdFunc var_A4
  loc_9B857D: LitNothing
  loc_9B857F: CastAd
  loc_9B8582: FStAdFunc var_98
  loc_9B8585: FLdRfVar var_98
  loc_9B8588: FLdZeroAd var_A4
  loc_9B858B: FStAdFuncNoPop
  loc_9B858E: CastAd
  loc_9B8591: FStAdFunc var_90
  loc_9B8594: FLdRfVar var_90
  loc_9B8597: FLdPr Me
  loc_9B859A: MemLdRfVar from_stack_1.sValErr
  loc_9B859D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B85A2: IStI2 Cancel
  loc_9B85A5: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9B85B0: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9D876C
  'Data Table: 47CA80
  loc_9D8698: FLdRfVar var_A6
  loc_9D869B: FLdPr Me
  loc_9D869E: VCallAd Control_ID_OptMensual
  loc_9D86A1: FStAdFunc var_A4
  loc_9D86A4: FLdPr var_A4
  loc_9D86A7:  = Me.Value
  loc_9D86AC: LitStr "Acuerdo 2988 Anexo IX "
  loc_9D86AF: FLdRfVar var_8C
  loc_9D86B2: FLdPr Me
  loc_9D86B5: VCallAd Control_ID_cboMes
  loc_9D86B8: FStAdFunc var_88
  loc_9D86BB: FLdPr var_88
  loc_9D86BE:  = Me.Text
  loc_9D86C3: ILdRf var_8C
  loc_9D86C6: ConcatStr
  loc_9D86C7: FStStrNoPop var_90
  loc_9D86CA: LitStr "-"
  loc_9D86CD: ConcatStr
  loc_9D86CE: FStStrNoPop var_9C
  loc_9D86D1: FLdRfVar var_98
  loc_9D86D4: FLdPr Me
  loc_9D86D7: VCallAd Control_ID_cboPeriodo
  loc_9D86DA: FStAdFunc var_94
  loc_9D86DD: FLdPr var_94
  loc_9D86E0:  = Me.Text
  loc_9D86E5: ILdRf var_98
  loc_9D86E8: ConcatStr
  loc_9D86E9: FStStrNoPop var_A0
  loc_9D86EC: LitStr " "
  loc_9D86EF: ConcatStr
  loc_9D86F0: CVarStr var_118
  loc_9D86F3: LitVarStr var_E8, "Acumulado"
  loc_9D86F8: FStVarCopyObj var_F8
  loc_9D86FB: FLdRfVar var_F8
  loc_9D86FE: LitVarStr var_C8, "Mensual"
  loc_9D8703: FStVarCopyObj var_D8
  loc_9D8706: FLdRfVar var_D8
  loc_9D8709: FLdI2 var_A6
  loc_9D870C: LitI2_Byte &HFF
  loc_9D870E: EqI2
  loc_9D870F: CVarBoolI2 var_B8
  loc_9D8713: FLdRfVar var_108
  loc_9D8716: ImpAdCallFPR4  = IIf(, , )
  loc_9D871B: FLdRfVar var_108
  loc_9D871E: ConcatVar var_128
  loc_9D8722: CStrVarVal var_12C
  loc_9D8726: FLdPr Me
  loc_9D8729: Me.Tag = from_stack_1
  loc_9D872E: FFreeStr var_8C = "": var_90 = "": var_9C = "": var_98 = "": var_A0 = ""
  loc_9D873D: FFreeAd var_88 = "": var_94 = ""
  loc_9D8746: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_108 = ""
  loc_9D8755: LitI2_Byte 0
  loc_9D8757: ILdRf Me
  loc_9D875A: CastAd
  loc_9D875D: FStAdFunc var_88
  loc_9D8760: FLdRfVar var_88
  loc_9D8763: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9D8768: FFree1Ad var_88
  loc_9D876B: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9D6DB0
  'Data Table: 47CA80
  loc_9D6CC0: LitI2_Byte 0
  loc_9D6CC2: FLdPr Me
  loc_9D6CC5: MemStI2 bGenerado
  loc_9D6CC8: LitI2_Byte &HFF
  loc_9D6CCA: FLdPr Me
  loc_9D6CCD: MemStI2 bLogos
  loc_9D6CD0: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9D6CD5: ImpAdLdI2 MemVar_C3D064
  loc_9D6CD8: CStrUI1
  loc_9D6CDA: FStStrNoPop var_88
  loc_9D6CDD: FLdPr Me
  loc_9D6CE0: VCallAd Control_ID_cboPeriodo
  loc_9D6CE3: FStAdFunc var_8C
  loc_9D6CE6: FLdPr var_8C
  loc_9D6CE9: Me.Text = from_stack_1
  loc_9D6CEE: FFree1Str var_88
  loc_9D6CF1: FFree1Ad var_8C
  loc_9D6CF4: FLdRfVar var_88
  loc_9D6CF7: FLdPr Me
  loc_9D6CFA: VCallAd Control_ID_cboPeriodo
  loc_9D6CFD: FStAdFunc var_8C
  loc_9D6D00: FLdPr var_8C
  loc_9D6D03:  = Me.Text
  loc_9D6D08: ILdRf var_88
  loc_9D6D0B: CI2Str
  loc_9D6D0D: ImpAdCallI2 Proc_259_2_9BA468()
  loc_9D6D12: CVarStr var_9C
  loc_9D6D15: FLdRfVar var_AC
  loc_9D6D18: ImpAdCallFPR4  = Month()
  loc_9D6D1D: FLdRfVar var_AC
  loc_9D6D20: LitVarI2 var_BC, 1
  loc_9D6D25: SubVar var_CC
  loc_9D6D29: CI2Var
  loc_9D6D2A: FLdPr Me
  loc_9D6D2D: VCallAd Control_ID_cboMes
  loc_9D6D30: FStAdFunc var_D0
  loc_9D6D33: FLdPr var_D0
  loc_9D6D36: Me.ListIndex = from_stack_1
  loc_9D6D3B: FFree1Str var_88
  loc_9D6D3E: FFreeAd var_8C = ""
  loc_9D6D45: FFreeVar var_9C = ""
  loc_9D6D4C: LitI2_Byte &HFF
  loc_9D6D4E: FLdPr Me
  loc_9D6D51: VCallAd Control_ID_OptMensual
  loc_9D6D54: FStAdFunc var_8C
  loc_9D6D57: FLdPr var_8C
  loc_9D6D5A: Me.Value = from_stack_1b
  loc_9D6D5F: FFree1Ad var_8C
  loc_9D6D62: LitI4 0
  loc_9D6D67: CI2I4
  loc_9D6D68: FLdPr Me
  loc_9D6D6B: VCallAd Control_ID_chkOcultarDetallePresu
  loc_9D6D6E: FStAdFunc var_8C
  loc_9D6D71: FLdPr var_8C
  loc_9D6D74: Me.Value = from_stack_1
  loc_9D6D79: FFree1Ad var_8C
  loc_9D6D7C: LitI4 0
  loc_9D6D81: CI2I4
  loc_9D6D82: FLdPr Me
  loc_9D6D85: VCallAd Control_ID_chkOcultarDetalleExtra
  loc_9D6D88: FStAdFunc var_8C
  loc_9D6D8B: FLdPr var_8C
  loc_9D6D8E: Me.Value = from_stack_1
  loc_9D6D93: FFree1Ad var_8C
  loc_9D6D96: Call HabilitarCriterio()
  loc_9D6D9B: ILdRf Me
  loc_9D6D9E: CastAd
  loc_9D6DA1: FStAdFunc var_8C
  loc_9D6DA4: FLdRfVar var_8C
  loc_9D6DA7: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9D6DAC: FFree1Ad var_8C
  loc_9D6DAF: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97A2F8
  'Data Table: 47CA80
  loc_97A2C8: LitVarStr var_94, "Cerrando..."
  loc_97A2CD: PopAdLdVar
  loc_97A2CE: FLdPr Me
  loc_97A2D1: VCallAd Control_ID_statusBar
  loc_97A2D4: FStAdFunc var_A8
  loc_97A2D7: FLdPr var_A8
  loc_97A2DA: LateIdSt
  loc_97A2DF: FFree1Ad var_A8
  loc_97A2E2: ILdRf Me
  loc_97A2E5: FStAdNoPop
  loc_97A2E9: ImpAdLdRf MemVar_C44F9C
  loc_97A2EC: NewIfNullPr Me
  loc_97A2EF: Me.Global.Unload from_stack_1
  loc_97A2F4: FFree1Ad var_A8
  loc_97A2F7: ExitProcHresult
End Sub

Public Function htmFileGet() '47D9E8
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '47D9F7
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '47DA06
  htmFile = Value
End Sub

Public Function bLogosGet() '47DA15
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '47DA24
  bLogos = Value
End Sub

Public Function bGeneradoGet() '47DA33
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '47DA42
  bGenerado = Value
End Sub

Public Function sValErrGet() '47DA51
  sValErrGet = sValErr
End Function

Public Sub sValErrPut(Value) '47DA60
  sValErr = Value
End Sub

Public Sub HabilitarCriterio() '9C2E00
  'Data Table: 47CA80
  loc_9C2D48: LitI4 0
  loc_9C2D4D: LitI4 5
  loc_9C2D52: FLdRfVar var_88
  loc_9C2D55: Redim
  loc_9C2D5F: FLdPr Me
  loc_9C2D62: VCallAd Control_ID_cboPeriodo
  loc_9C2D65: CVarAd
  loc_9C2D69: ParmAry1St
  loc_9C2D6F: FLdPr Me
  loc_9C2D72: VCallAd Control_ID_cboMes
  loc_9C2D75: CVarAd
  loc_9C2D79: ParmAry1St
  loc_9C2D7F: FLdPr Me
  loc_9C2D82: VCallAd Control_ID_OptMensual
  loc_9C2D85: CVarAd
  loc_9C2D89: ParmAry1St
  loc_9C2D8F: FLdPr Me
  loc_9C2D92: VCallAd Control_ID_OptAcumulado
  loc_9C2D95: CVarAd
  loc_9C2D99: ParmAry1St
  loc_9C2D9F: FLdPr Me
  loc_9C2DA2: VCallAd Control_ID_chkOcultarDetallePresu
  loc_9C2DA5: CVarAd
  loc_9C2DA9: ParmAry1St
  loc_9C2DAF: FLdPr Me
  loc_9C2DB2: VCallAd Control_ID_chkOcultarDetalleExtra
  loc_9C2DB5: CVarAd
  loc_9C2DB9: ParmAry1St
  loc_9C2DBF: FLdRfVar var_88
  loc_9C2DC2: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9C2DC7: FLdRfVar var_88
  loc_9C2DCA: Erase
  loc_9C2DCB: LitI4 0
  loc_9C2DD0: LitI4 0
  loc_9C2DD5: FLdRfVar var_88
  loc_9C2DD8: Redim
  loc_9C2DE2: FLdPr Me
  loc_9C2DE5: VCallAd Control_ID_cmdTxt
  loc_9C2DE8: CVarAd
  loc_9C2DEC: ParmAry1St
  loc_9C2DF2: FLdRfVar var_88
  loc_9C2DF5: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_9C2DFA: FLdRfVar var_88
  loc_9C2DFD: Erase
  loc_9C2DFE: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B813BC
  'Data Table: 47CA80
  loc_B806A0: OnErrorGoto loc_B81348
  loc_B806A3: LitStr vbNullString
  loc_B806A6: FLdPr Me
  loc_B806A9: MemStStrCopy
  loc_B806AD: LitI2_Byte 0
  loc_B806AF: PopTmpLdAd2 var_90
  loc_B806B2: Call cboMes_Validate(from_stack_1v)
  loc_B806B7: FLdPr Me
  loc_B806BA: MemLdStr sValErr
  loc_B806BD: LitStr vbNullString
  loc_B806C0: NeStr
  loc_B806C2: BranchF loc_B806C8
  loc_B806C5: Branch loc_B8131F
  loc_B806C8: FLdRfVar var_9C
  loc_B806CB: FLdRfVar var_90
  loc_B806CE: FLdPr Me
  loc_B806D1: VCallAd Control_ID_cboMes
  loc_B806D4: FStAdFunc var_94
  loc_B806D7: FLdPr var_94
  loc_B806DA:  = Me.ListIndex
  loc_B806DF: FLdI2 var_90
  loc_B806E2: FLdPr Me
  loc_B806E5: VCallAd Control_ID_cboMes
  loc_B806E8: FStAdFunc var_98
  loc_B806EB: FLdPr var_98
  loc_B806EE:  = Me.ItemData
  loc_B806F3: ILdRf var_9C
  loc_B806F6: CI2I4
  loc_B806F7: FLdPr Me
  loc_B806FA: MemStI2 global_132
  loc_B806FD: FFreeAd var_94 = ""
  loc_B80704: FLdRfVar var_A0
  loc_B80707: FLdPr Me
  loc_B8070A: VCallAd Control_ID_cboPeriodo
  loc_B8070D: FStAdFunc var_94
  loc_B80710: FLdPr var_94
  loc_B80713:  = Me.Text
  loc_B80718: ILdRf var_A0
  loc_B8071B: CI2Str
  loc_B8071D: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_B80722: CVarStr var_B0
  loc_B80725: FLdRfVar var_C0
  loc_B80728: ImpAdCallFPR4  = Month()
  loc_B8072D: LitVarStr var_120, "Definitivo"
  loc_B80732: FStVarCopyObj var_130
  loc_B80735: FLdRfVar var_130
  loc_B80738: LitVarStr var_100, "Provisorio"
  loc_B8073D: FStVarCopyObj var_110
  loc_B80740: FLdRfVar var_110
  loc_B80743: FLdPr Me
  loc_B80746: MemLdI2 global_132
  loc_B80749: CVarI2 var_D0
  loc_B8074C: HardType
  loc_B8074D: FLdRfVar var_C0
  loc_B80750: GtVar var_E0
  loc_B80754: FStVar var_F0
  loc_B80758: FLdRfVar var_F0
  loc_B8075B: FLdRfVar var_140
  loc_B8075E: ImpAdCallFPR4  = IIf(, , )
  loc_B80763: FLdRfVar var_140
  loc_B80766: CStrVarTmp
  loc_B80767: FStStrNoPop var_144
  loc_B8076A: FLdPr Me
  loc_B8076D: MemStStrCopy
  loc_B80771: FFreeStr var_A0 = ""
  loc_B80778: FFree1Ad var_94
  loc_B8077B: FFreeVar var_B0 = "": var_C0 = "": var_F0 = "": var_110 = "": var_130 = ""
  loc_B8078A: ImpAdLdRf MemVar_C3D03C
  loc_B8078D: CVarRef
  loc_B80792: FLdRfVar var_B0
  loc_B80795: ImpAdCallFPR4  = Ucase()
  loc_B8079A: LitI4 3
  loc_B8079F: FLdRfVar var_B0
  loc_B807A2: FLdRfVar var_C0
  loc_B807A5: ImpAdCallFPR4  = Left(, )
  loc_B807AA: FLdRfVar var_C0
  loc_B807AD: LitVarStr var_100, "HTC"
  loc_B807B2: HardType
  loc_B807B3: EqVar var_E0
  loc_B807B7: FLdPr Me
  loc_B807BA: MemLdStr global_136
  loc_B807BD: LitStr "Provisorio"
  loc_B807C0: EqStr
  loc_B807C2: CVarBoolI2 var_120
  loc_B807C6: AndVar var_F0
  loc_B807CA: CBoolVarNull
  loc_B807CC: FFreeVar var_B0 = "": var_C0 = ""
  loc_B807D5: BranchF loc_B807E8
  loc_B807D8: LitI4 0
  loc_B807DD: LitStr "La Contabilidad NO se encuentra Cerrada Definitiva. Verifique..."
  loc_B807E0: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B807E5: Branch loc_B8131F
  loc_B807E8: FLdPr Me
  loc_B807EB: MemLdI2 bGenerado
  loc_B807EE: BranchF loc_B807F2
  loc_B807F1: ExitProcHresult
  loc_B807F2: LitVarStr var_D0, "Generando reporte..."
  loc_B807F7: PopAdLdVar
  loc_B807F8: FLdPr Me
  loc_B807FB: VCallAd Control_ID_statusBar
  loc_B807FE: FStAdFunc var_94
  loc_B80801: FLdPr var_94
  loc_B80804: LateIdSt
  loc_B80809: FFree1Ad var_94
  loc_B8080C: LitI4 &HB
  loc_B80811: CI2I4
  loc_B80812: FLdPr Me
  loc_B80815: Me.MousePointer = from_stack_1
  loc_B8081A: FLdRfVar var_9C
  loc_B8081D: FLdRfVar var_90
  loc_B80820: FLdPr Me
  loc_B80823: VCallAd Control_ID_cboMes
  loc_B80826: FStAdFunc var_94
  loc_B80829: FLdPr var_94
  loc_B8082C:  = Me.ListIndex
  loc_B80831: FLdI2 var_90
  loc_B80834: FLdPr Me
  loc_B80837: VCallAd Control_ID_cboMes
  loc_B8083A: FStAdFunc var_98
  loc_B8083D: FLdPr var_98
  loc_B80840:  = Me.ItemData
  loc_B80845: ILdRf var_9C
  loc_B80848: CI2I4
  loc_B80849: FLdPr Me
  loc_B8084C: MemStI2 global_132
  loc_B8084F: FFreeAd var_94 = ""
  loc_B80856: FLdRfVar var_A0
  loc_B80859: FLdPr Me
  loc_B8085C: VCallAd Control_ID_cboPeriodo
  loc_B8085F: FStAdFunc var_94
  loc_B80862: FLdPr var_94
  loc_B80865:  = Me.Text
  loc_B8086A: ILdRf var_A0
  loc_B8086D: CI2Str
  loc_B8086F: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_B80874: CVarStr var_B0
  loc_B80877: FLdRfVar var_C0
  loc_B8087A: ImpAdCallFPR4  = Month()
  loc_B8087F: LitVarStr var_120, "Definitivo"
  loc_B80884: FStVarCopyObj var_130
  loc_B80887: FLdRfVar var_130
  loc_B8088A: LitVarStr var_100, "Provisorio"
  loc_B8088F: FStVarCopyObj var_110
  loc_B80892: FLdRfVar var_110
  loc_B80895: FLdPr Me
  loc_B80898: MemLdI2 global_132
  loc_B8089B: CVarI2 var_D0
  loc_B8089E: HardType
  loc_B8089F: FLdRfVar var_C0
  loc_B808A2: GtVar var_E0
  loc_B808A6: FStVar var_F0
  loc_B808AA: FLdRfVar var_F0
  loc_B808AD: FLdRfVar var_140
  loc_B808B0: ImpAdCallFPR4  = IIf(, , )
  loc_B808B5: FLdRfVar var_140
  loc_B808B8: CStrVarTmp
  loc_B808B9: FStStrNoPop var_144
  loc_B808BC: FLdPr Me
  loc_B808BF: MemStStrCopy
  loc_B808C3: FFreeStr var_A0 = ""
  loc_B808CA: FFree1Ad var_94
  loc_B808CD: FFreeVar var_B0 = "": var_C0 = "": var_F0 = "": var_110 = "": var_130 = ""
  loc_B808DC: LitStr " HAVING Importe != 0"
  loc_B808DF: FStStrCopy var_88
  loc_B808E2: LitI2_Byte 0
  loc_B808E4: LitVar_Missing var_B0
  loc_B808E7: LitI2_Byte &HFF
  loc_B808E9: LitVarI2 var_D0, 0
  loc_B808EE: PopAdLdVar
  loc_B808EF: FLdPr Me
  loc_B808F2: MemLdRfVar from_stack_1.global_124
  loc_B808F5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B808FA: FFree1Var var_B0 = ""
  loc_B808FD: LitI2_Byte 0
  loc_B808FF: LitVar_Missing var_B0
  loc_B80902: LitI2_Byte &HFF
  loc_B80904: LitVarI2 var_D0, 0
  loc_B80909: PopAdLdVar
  loc_B8090A: FLdPr Me
  loc_B8090D: MemLdRfVar from_stack_1.global_128
  loc_B80910: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B80915: FFree1Var var_B0 = ""
  loc_B80918: LitI4 0
  loc_B8091D: LitI4 0
  loc_B80922: FLdPr Me
  loc_B80925: MemLdRfVar from_stack_1.global_100
  loc_B80928: Redim
  loc_B80932: LitStr "Municipalidad de Guaymallén"
  loc_B80935: FStStrCopy var_148
  loc_B80938: ILdRf var_148
  loc_B8093B: LitStr "Municipalidad de Rivadavia"
  loc_B8093E: EqStr
  loc_B80940: BranchT loc_B8094E
  loc_B80943: ILdRf var_148
  loc_B80946: LitStr "Municipalidad de Santa Rosa"
  loc_B80949: EqStr
  loc_B8094B: BranchF loc_B8095C
  loc_B8094E: LitStr "(1110,1120,1130,1140)"
  loc_B80951: FStStrCopy var_8C
  loc_B80954: LitI2_Byte 0
  loc_B80956: FStI2 var_8E
  loc_B80959: Branch loc_B809EA
  loc_B8095C: ILdRf var_148
  loc_B8095F: LitStr "Municipalidad de La Paz"
  loc_B80962: EqStr
  loc_B80964: BranchT loc_B80972
  loc_B80967: ILdRf var_148
  loc_B8096A: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_B8096D: EqStr
  loc_B8096F: BranchF loc_B80980
  loc_B80972: LitStr "(1110,1120,1130,1140)"
  loc_B80975: FStStrCopy var_8C
  loc_B80978: LitI2_Byte &HFF
  loc_B8097A: FStI2 var_8E
  loc_B8097D: Branch loc_B809EA
  loc_B80980: ILdRf var_148
  loc_B80983: LitStr "Municipalidad de Malargüe"
  loc_B80986: EqStr
  loc_B80988: BranchF loc_B80999
  loc_B8098B: LitStr "(1110,1120,1130)"
  loc_B8098E: FStStrCopy var_8C
  loc_B80991: LitI2_Byte &HFF
  loc_B80993: FStI2 var_8E
  loc_B80996: Branch loc_B809EA
  loc_B80999: ILdRf var_148
  loc_B8099C: LitStr "Municipalidad de Tupungatoooooooo"
  loc_B8099F: EqStr
  loc_B809A1: BranchF loc_B809AD
  loc_B809A4: LitStr "(1110,1120,1130)"
  loc_B809A7: FStStrCopy var_8C
  loc_B809AA: Branch loc_B809EA
  loc_B809AD: ILdRf var_148
  loc_B809B0: LitStr "Municipalidad de Guaymallénnnn"
  loc_B809B3: EqStr
  loc_B809B5: BranchF loc_B809C6
  loc_B809B8: LitStr "(1110,1120,1130)"
  loc_B809BB: FStStrCopy var_8C
  loc_B809BE: LitI2_Byte 0
  loc_B809C0: FStI2 var_8E
  loc_B809C3: Branch loc_B809EA
  loc_B809C6: ILdRf var_148
  loc_B809C9: LitStr "Municipalidad de General Alvear"
  loc_B809CC: EqStr
  loc_B809CE: BranchF loc_B809DF
  loc_B809D1: LitStr "(1110,1120,1130)"
  loc_B809D4: FStStrCopy var_8C
  loc_B809D7: LitI2_Byte &HFF
  loc_B809D9: FStI2 var_8E
  loc_B809DC: Branch loc_B809EA
  loc_B809DF: LitStr "(1110,1120,1130)"
  loc_B809E2: FStStrCopy var_8C
  loc_B809E5: LitI2_Byte 0
  loc_B809E7: FStI2 var_8E
  loc_B809EA: FLdRfVar var_A0
  loc_B809ED: FLdPr Me
  loc_B809F0: VCallAd Control_ID_cboPeriodo
  loc_B809F3: FStAdFunc var_94
  loc_B809F6: FLdPr var_94
  loc_B809F9:  = Me.Text
  loc_B809FE: FLdRfVar var_90
  loc_B80A01: FLdPr Me
  loc_B80A04: VCallAd Control_ID_OptMensual
  loc_B80A07: FStAdFunc var_98
  loc_B80A0A: FLdPr var_98
  loc_B80A0D:  = Me.Value
  loc_B80A12: LitVar_FALSE
  loc_B80A16: LitVar_TRUE var_B0
  loc_B80A19: FLdI2 var_90
  loc_B80A1C: LitI2_Byte &HFF
  loc_B80A1E: EqI2
  loc_B80A1F: CVarBoolI2 var_D0
  loc_B80A23: FLdRfVar var_E0
  loc_B80A26: ImpAdCallFPR4  = IIf(, , )
  loc_B80A2B: FLdRfVar var_14A
  loc_B80A2E: ILdRf var_8C
  loc_B80A31: FLdRfVar var_E0
  loc_B80A34: CBoolVar
  loc_B80A36: FLdPr Me
  loc_B80A39: MemLdI2 global_132
  loc_B80A3C: ILdRf var_A0
  loc_B80A3F: CI2Str
  loc_B80A41: FLdPr Me
  loc_B80A44: MemLdRfVar from_stack_1.global_76
  loc_B80A47: NewIfNullPr clsbase
  loc_B80A4A: from_stack_5v = clsbase.Anexos_IX_mensual(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B80A4F: FLdI2 var_14A
  loc_B80A52: NotI4
  loc_B80A53: FFree1Str var_A0
  loc_B80A56: FFreeAd var_94 = ""
  loc_B80A5D: FFreeVar var_D0 = "": var_B0 = "": var_C0 = ""
  loc_B80A68: BranchF loc_B80A6E
  loc_B80A6B: Branch loc_B8131F
  loc_B80A6E: LitStr "Municipalidad de Guaymallén"
  loc_B80A71: FStStrCopy var_150
  loc_B80A74: ILdRf var_150
  loc_B80A77: LitStr "Municipalidad de Rivadavia"
  loc_B80A7A: EqStr
  loc_B80A7C: BranchF loc_B80AE7
  loc_B80A7F: LitStr "SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(SaldIniD-SaldIniH) Importe"
  loc_B80A82: LitStr " FROM tmovi"
  loc_B80A85: ConcatStr
  loc_B80A86: FStStrNoPop var_A0
  loc_B80A89: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B80A8C: ConcatStr
  loc_B80A8D: FStStrNoPop var_144
  loc_B80A90: LitStr " WHERE (tmovi.CodiTicu IN "
  loc_B80A93: ConcatStr
  loc_B80A94: FStStrNoPop var_154
  loc_B80A97: ILdRf var_8C
  loc_B80A9A: ConcatStr
  loc_B80A9B: FStStrNoPop var_158
  loc_B80A9E: LitStr " OR tmovi.CodiCuco = CajaPaco)"
  loc_B80AA1: ConcatStr
  loc_B80AA2: FStStrNoPop var_15C
  loc_B80AA5: LitStr " AND tmovi.CodiCuco NOT IN ('1131010000','1131020000','1131090000')"
  loc_B80AA8: ConcatStr
  loc_B80AA9: FStStrNoPop var_160
  loc_B80AAC: LitStr " AND tmovi.CodiCuco NOT IN ('1211010000','1211020000','1211030000')"
  loc_B80AAF: ConcatStr
  loc_B80AB0: FStStrNoPop var_164
  loc_B80AB3: LitStr " GROUP BY CodiCuco"
  loc_B80AB6: ConcatStr
  loc_B80AB7: FStStrNoPop var_168
  loc_B80ABA: LitStr " HAVING Importe != 0;"
  loc_B80ABD: ConcatStr
  loc_B80ABE: FStStrNoPop var_16C
  loc_B80AC1: FLdPr Me
  loc_B80AC4: MemLdRfVar from_stack_1.global_76
  loc_B80AC7: NewIfNullPr clsbase
  loc_B80ACA: Call clsbase.RedefineRS(from_stack_1v)
  loc_B80ACF: FFreeStr var_A0 = "": var_144 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = ""
  loc_B80AE4: Branch loc_B80C83
  loc_B80AE7: ILdRf var_150
  loc_B80AEA: LitStr "Municipalidad de Tupungato"
  loc_B80AED: EqStr
  loc_B80AEF: BranchT loc_B80AFD
  loc_B80AF2: ILdRf var_150
  loc_B80AF5: LitStr "Municipalidad de Santa Rosa"
  loc_B80AF8: EqStr
  loc_B80AFA: BranchF loc_B80B53
  loc_B80AFD: LitStr "SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(SaldIniD-SaldIniH) Importe"
  loc_B80B00: LitStr " FROM tmovi"
  loc_B80B03: ConcatStr
  loc_B80B04: FStStrNoPop var_A0
  loc_B80B07: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B80B0A: ConcatStr
  loc_B80B0B: FStStrNoPop var_144
  loc_B80B0E: LitStr " WHERE tmovi.CodiTicu IN "
  loc_B80B11: ConcatStr
  loc_B80B12: FStStrNoPop var_154
  loc_B80B15: ILdRf var_8C
  loc_B80B18: ConcatStr
  loc_B80B19: FStStrNoPop var_158
  loc_B80B1C: LitStr " OR tmovi.CodiCuco = CajaPaco"
  loc_B80B1F: ConcatStr
  loc_B80B20: FStStrNoPop var_15C
  loc_B80B23: LitStr " GROUP BY CodiCuco"
  loc_B80B26: ConcatStr
  loc_B80B27: FStStrNoPop var_160
  loc_B80B2A: LitStr " HAVING Importe != 0;"
  loc_B80B2D: ConcatStr
  loc_B80B2E: FStStrNoPop var_164
  loc_B80B31: FLdPr Me
  loc_B80B34: MemLdRfVar from_stack_1.global_76
  loc_B80B37: NewIfNullPr clsbase
  loc_B80B3A: Call clsbase.RedefineRS(from_stack_1v)
  loc_B80B3F: FFreeStr var_A0 = "": var_144 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_B80B50: Branch loc_B80C83
  loc_B80B53: ILdRf var_150
  loc_B80B56: LitStr "Municipalidad de Malargüe"
  loc_B80B59: EqStr
  loc_B80B5B: BranchF loc_B80BBD
  loc_B80B5E: LitStr "SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(SaldIniD-SaldIniH) Importe"
  loc_B80B61: LitStr " FROM tmovi"
  loc_B80B64: ConcatStr
  loc_B80B65: FStStrNoPop var_A0
  loc_B80B68: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B80B6B: ConcatStr
  loc_B80B6C: FStStrNoPop var_144
  loc_B80B6F: LitStr " WHERE (tmovi.CodiTicu IN "
  loc_B80B72: ConcatStr
  loc_B80B73: FStStrNoPop var_154
  loc_B80B76: ILdRf var_8C
  loc_B80B79: ConcatStr
  loc_B80B7A: FStStrNoPop var_158
  loc_B80B7D: LitStr " OR tmovi.CodiCuco = CajaPaco)"
  loc_B80B80: ConcatStr
  loc_B80B81: FStStrNoPop var_15C
  loc_B80B84: LitStr " AND tmovi.CodiCuco != TranPaco"
  loc_B80B87: ConcatStr
  loc_B80B88: FStStrNoPop var_160
  loc_B80B8B: LitStr " GROUP BY CodiCuco"
  loc_B80B8E: ConcatStr
  loc_B80B8F: FStStrNoPop var_164
  loc_B80B92: LitStr " HAVING Importe != 0;"
  loc_B80B95: ConcatStr
  loc_B80B96: FStStrNoPop var_168
  loc_B80B99: FLdPr Me
  loc_B80B9C: MemLdRfVar from_stack_1.global_76
  loc_B80B9F: NewIfNullPr clsbase
  loc_B80BA2: Call clsbase.RedefineRS(from_stack_1v)
  loc_B80BA7: FFreeStr var_A0 = "": var_144 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = ""
  loc_B80BBA: Branch loc_B80C83
  loc_B80BBD: ILdRf var_150
  loc_B80BC0: LitStr "Municipalidad de Guaymallén"
  loc_B80BC3: EqStr
  loc_B80BC5: BranchF loc_B80C27
  loc_B80BC8: LitStr "SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(SaldIniD-SaldIniH) Importe"
  loc_B80BCB: LitStr " FROM tmovi"
  loc_B80BCE: ConcatStr
  loc_B80BCF: FStStrNoPop var_A0
  loc_B80BD2: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B80BD5: ConcatStr
  loc_B80BD6: FStStrNoPop var_144
  loc_B80BD9: LitStr " WHERE (tmovi.CodiTicu IN "
  loc_B80BDC: ConcatStr
  loc_B80BDD: FStStrNoPop var_154
  loc_B80BE0: ILdRf var_8C
  loc_B80BE3: ConcatStr
  loc_B80BE4: FStStrNoPop var_158
  loc_B80BE7: LitStr " OR tmovi.CodiCuco = CajaPaco)"
  loc_B80BEA: ConcatStr
  loc_B80BEB: FStStrNoPop var_15C
  loc_B80BEE: LitStr " AND tmovi.CodiCuco != TranPaco"
  loc_B80BF1: ConcatStr
  loc_B80BF2: FStStrNoPop var_160
  loc_B80BF5: LitStr " GROUP BY CodiCuco"
  loc_B80BF8: ConcatStr
  loc_B80BF9: FStStrNoPop var_164
  loc_B80BFC: LitStr " HAVING Importe != 0;"
  loc_B80BFF: ConcatStr
  loc_B80C00: FStStrNoPop var_168
  loc_B80C03: FLdPr Me
  loc_B80C06: MemLdRfVar from_stack_1.global_76
  loc_B80C09: NewIfNullPr clsbase
  loc_B80C0C: Call clsbase.RedefineRS(from_stack_1v)
  loc_B80C11: FFreeStr var_A0 = "": var_144 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = ""
  loc_B80C24: Branch loc_B80C83
  loc_B80C27: LitStr "SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(SaldIniD-SaldIniH) Importe"
  loc_B80C2A: LitStr " FROM tmovi"
  loc_B80C2D: ConcatStr
  loc_B80C2E: FStStrNoPop var_A0
  loc_B80C31: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B80C34: ConcatStr
  loc_B80C35: FStStrNoPop var_144
  loc_B80C38: LitStr " WHERE tmovi.CodiTicu IN "
  loc_B80C3B: ConcatStr
  loc_B80C3C: FStStrNoPop var_154
  loc_B80C3F: ILdRf var_8C
  loc_B80C42: ConcatStr
  loc_B80C43: FStStrNoPop var_158
  loc_B80C46: LitStr vbNullString
  loc_B80C49: ConcatStr
  loc_B80C4A: FStStrNoPop var_15C
  loc_B80C4D: LitStr " OR tmovi.CodiCuco = CajaPaco"
  loc_B80C50: ConcatStr
  loc_B80C51: FStStrNoPop var_160
  loc_B80C54: LitStr " GROUP BY CodiCuco"
  loc_B80C57: ConcatStr
  loc_B80C58: FStStrNoPop var_164
  loc_B80C5B: LitStr " HAVING Importe != 0;"
  loc_B80C5E: ConcatStr
  loc_B80C5F: FStStrNoPop var_168
  loc_B80C62: FLdPr Me
  loc_B80C65: MemLdRfVar from_stack_1.global_76
  loc_B80C68: NewIfNullPr clsbase
  loc_B80C6B: Call clsbase.RedefineRS(from_stack_1v)
  loc_B80C70: FFreeStr var_A0 = "": var_144 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = ""
  loc_B80C83: FLdRfVar var_9C
  loc_B80C86: FLdPr Me
  loc_B80C89: MemLdRfVar from_stack_1.global_76
  loc_B80C8C: NewIfNullPr clsbase
  loc_B80C8F: from_stack_1 = clsbase.RecordCount
  loc_B80C94: ILdRf var_9C
  loc_B80C97: LitI4 0
  loc_B80C9C: NeI4
  loc_B80C9D: BranchF loc_B80CAC
  loc_B80CA0: LitStr "SALDOS INICIALES"
  loc_B80CA3: LitI2_Byte 1
  loc_B80CA5: CUI1I2
  loc_B80CA7: Call Proc_150_25_9B9408()
  loc_B80CAC: LitStr "SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(MoviFonH-MoviFonD) Importe"
  loc_B80CAF: LitStr " FROM tmovi"
  loc_B80CB2: ConcatStr
  loc_B80CB3: FStStrNoPop var_A0
  loc_B80CB6: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B80CB9: ConcatStr
  loc_B80CBA: FStStrNoPop var_144
  loc_B80CBD: LitStr " WHERE (tmovi.CodiTicu Like '5" & Chr(37) & "' OR tmovi.CodiTicu Like '7" & Chr(37) & "')"
  loc_B80CC0: ConcatStr
  loc_B80CC1: FStStrNoPop var_154
  loc_B80CC4: LitStr " AND tmovi.CodiCuco != CajaPaco"
  loc_B80CC7: ConcatStr
  loc_B80CC8: FStStrNoPop var_158
  loc_B80CCB: LitStr " GROUP BY CodiCuco"
  loc_B80CCE: ConcatStr
  loc_B80CCF: FStStrNoPop var_15C
  loc_B80CD2: LitStr " HAVING Importe != 0;"
  loc_B80CD5: ConcatStr
  loc_B80CD6: FStStrNoPop var_160
  loc_B80CD9: FLdPr Me
  loc_B80CDC: MemLdRfVar from_stack_1.global_76
  loc_B80CDF: NewIfNullPr clsbase
  loc_B80CE2: Call clsbase.RedefineRS(from_stack_1v)
  loc_B80CE7: FFreeStr var_A0 = "": var_144 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_B80CF6: FLdRfVar var_9C
  loc_B80CF9: FLdPr Me
  loc_B80CFC: MemLdRfVar from_stack_1.global_76
  loc_B80CFF: NewIfNullPr clsbase
  loc_B80D02: from_stack_1 = clsbase.RecordCount
  loc_B80D07: ILdRf var_9C
  loc_B80D0A: LitI4 0
  loc_B80D0F: NeI4
  loc_B80D10: BranchF loc_B80D1F
  loc_B80D13: LitStr "INGRESOS PRESUPUESTARIOS"
  loc_B80D16: LitI2_Byte 2
  loc_B80D18: CUI1I2
  loc_B80D1A: Call Proc_150_25_9B9408()
  loc_B80D1F: LitStr "SELECT tmovi.PeriInfo, IF(tmovi.CodiTicu='1130',PatrPaco,tmovi.CodiCuco) CodiCuco, IF(tmovi.CodiTicu='1130','Patrimonio Municipal',DetaCuco) DetaCuco, CodiTicu, Sum(MoviFonH) Importe"
  loc_B80D22: LitStr " FROM tmovi"
  loc_B80D25: ConcatStr
  loc_B80D26: FStStrNoPop var_A0
  loc_B80D29: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B80D2C: ConcatStr
  loc_B80D2D: FStStrNoPop var_144
  loc_B80D30: LitStr " WHERE NOT (tmovi.CodiTicu Like '5" & Chr(37) & "' OR tmovi.CodiTicu Like '7" & Chr(37) & "')"
  loc_B80D33: ConcatStr
  loc_B80D34: FStStrNoPop var_154
  loc_B80D37: LitStr " AND tmovi.CodiCuco != CajaPaco"
  loc_B80D3A: ConcatStr
  loc_B80D3B: CVarStr var_F0
  loc_B80D3E: LitVarStr var_120, " AND tmovi.CodiCuco != CatePaco"
  loc_B80D43: FStVarCopyObj var_C0
  loc_B80D46: FLdRfVar var_C0
  loc_B80D49: LitVarStr var_100, " AND tmovi.CodiCuco != TranPaco"
  loc_B80D4E: FStVarCopyObj var_B0
  loc_B80D51: FLdRfVar var_B0
  loc_B80D54: FLdRfVar var_8E
  loc_B80D57: CVarRef
  loc_B80D5C: FLdRfVar var_E0
  loc_B80D5F: ImpAdCallFPR4  = IIf(, , )
  loc_B80D64: FLdRfVar var_E0
  loc_B80D67: ConcatVar var_110
  loc_B80D6B: LitVarStr var_17C, " GROUP BY CodiCuco"
  loc_B80D70: ConcatVar var_130
  loc_B80D74: LitVarStr var_18C, " HAVING Importe != 0;"
  loc_B80D79: ConcatVar var_140
  loc_B80D7D: CStrVarVal var_158
  loc_B80D81: FLdPr Me
  loc_B80D84: MemLdRfVar from_stack_1.global_76
  loc_B80D87: NewIfNullPr clsbase
  loc_B80D8A: Call clsbase.RedefineRS(from_stack_1v)
  loc_B80D8F: FFreeStr var_A0 = "": var_144 = "": var_154 = ""
  loc_B80D9A: FFreeVar var_B0 = "": var_C0 = "": var_F0 = "": var_E0 = "": var_110 = "": var_130 = ""
  loc_B80DAB: FLdRfVar var_9C
  loc_B80DAE: FLdPr Me
  loc_B80DB1: MemLdRfVar from_stack_1.global_76
  loc_B80DB4: NewIfNullPr clsbase
  loc_B80DB7: from_stack_1 = clsbase.RecordCount
  loc_B80DBC: ILdRf var_9C
  loc_B80DBF: LitI4 0
  loc_B80DC4: NeI4
  loc_B80DC5: BranchF loc_B80DD4
  loc_B80DC8: LitStr "INGRESOS EXTRAPRESUPUESTARIOS"
  loc_B80DCB: LitI2_Byte 2
  loc_B80DCD: CUI1I2
  loc_B80DCF: Call Proc_150_25_9B9408()
  loc_B80DD4: LitStr "SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(MoviFonD) Importe"
  loc_B80DD7: LitStr " FROM tmovi"
  loc_B80DDA: ConcatStr
  loc_B80DDB: FStStrNoPop var_A0
  loc_B80DDE: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B80DE1: ConcatStr
  loc_B80DE2: FStStrNoPop var_144
  loc_B80DE5: LitStr " WHERE (tmovi.CodiTicu Like '6" & Chr(37) & "' OR tmovi.CodiTicu Like '8" & Chr(37) & "')"
  loc_B80DE8: ConcatStr
  loc_B80DE9: FStStrNoPop var_154
  loc_B80DEC: LitStr " AND tmovi.CodiCuco != CajaPaco"
  loc_B80DEF: ConcatStr
  loc_B80DF0: FStStrNoPop var_158
  loc_B80DF3: LitStr " GROUP BY CodiCuco"
  loc_B80DF6: ConcatStr
  loc_B80DF7: FStStrNoPop var_15C
  loc_B80DFA: LitStr " HAVING Importe != 0;"
  loc_B80DFD: ConcatStr
  loc_B80DFE: FStStrNoPop var_160
  loc_B80E01: FLdPr Me
  loc_B80E04: MemLdRfVar from_stack_1.global_76
  loc_B80E07: NewIfNullPr clsbase
  loc_B80E0A: Call clsbase.RedefineRS(from_stack_1v)
  loc_B80E0F: FFreeStr var_A0 = "": var_144 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_B80E1E: FLdRfVar var_9C
  loc_B80E21: FLdPr Me
  loc_B80E24: MemLdRfVar from_stack_1.global_76
  loc_B80E27: NewIfNullPr clsbase
  loc_B80E2A: from_stack_1 = clsbase.RecordCount
  loc_B80E2F: ILdRf var_9C
  loc_B80E32: LitI4 0
  loc_B80E37: NeI4
  loc_B80E38: BranchF loc_B80E47
  loc_B80E3B: LitStr "EROGACIONES PRESUPUESTARIAS"
  loc_B80E3E: LitI2_Byte 3
  loc_B80E40: CUI1I2
  loc_B80E42: Call Proc_150_25_9B9408()
  loc_B80E47: LitStr "SELECT tmovi.PeriInfo, IF(tmovi.CodiTicu='1130',PatrPaco,tmovi.CodiCuco) CodiCuco, IF(tmovi.CodiTicu='1130','Patrimonio Municipal',DetaCuco) DetaCuco, CodiTicu, Sum(MoviFonD) Importe"
  loc_B80E4A: LitStr " FROM tmovi"
  loc_B80E4D: ConcatStr
  loc_B80E4E: FStStrNoPop var_A0
  loc_B80E51: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B80E54: ConcatStr
  loc_B80E55: FStStrNoPop var_144
  loc_B80E58: LitStr " WHERE NOT (tmovi.CodiTicu Like '6" & Chr(37) & "' OR tmovi.CodiTicu Like '8" & Chr(37) & "' OR tmovi.CodiTicu Like '5" & Chr(37) & "' OR tmovi.CodiTicu Like '7" & Chr(37) & "')"
  loc_B80E5B: ConcatStr
  loc_B80E5C: FStStrNoPop var_154
  loc_B80E5F: LitStr " AND tmovi.CodiCuco != CajaPaco"
  loc_B80E62: ConcatStr
  loc_B80E63: CVarStr var_F0
  loc_B80E66: LitVarStr var_120, " AND tmovi.CodiCuco != CatePaco"
  loc_B80E6B: FStVarCopyObj var_C0
  loc_B80E6E: FLdRfVar var_C0
  loc_B80E71: LitVarStr var_100, " AND tmovi.CodiCuco != TranPaco"
  loc_B80E76: FStVarCopyObj var_B0
  loc_B80E79: FLdRfVar var_B0
  loc_B80E7C: FLdRfVar var_8E
  loc_B80E7F: CVarRef
  loc_B80E84: FLdRfVar var_E0
  loc_B80E87: ImpAdCallFPR4  = IIf(, , )
  loc_B80E8C: FLdRfVar var_E0
  loc_B80E8F: ConcatVar var_110
  loc_B80E93: LitVarStr var_17C, " GROUP BY CodiCuco"
  loc_B80E98: ConcatVar var_130
  loc_B80E9C: LitVarStr var_18C, " HAVING Importe != 0;"
  loc_B80EA1: ConcatVar var_140
  loc_B80EA5: CStrVarVal var_158
  loc_B80EA9: FLdPr Me
  loc_B80EAC: MemLdRfVar from_stack_1.global_76
  loc_B80EAF: NewIfNullPr clsbase
  loc_B80EB2: Call clsbase.RedefineRS(from_stack_1v)
  loc_B80EB7: FFreeStr var_A0 = "": var_144 = "": var_154 = ""
  loc_B80EC2: FFreeVar var_B0 = "": var_C0 = "": var_F0 = "": var_E0 = "": var_110 = "": var_130 = ""
  loc_B80ED3: FLdRfVar var_9C
  loc_B80ED6: FLdPr Me
  loc_B80ED9: MemLdRfVar from_stack_1.global_76
  loc_B80EDC: NewIfNullPr clsbase
  loc_B80EDF: from_stack_1 = clsbase.RecordCount
  loc_B80EE4: ILdRf var_9C
  loc_B80EE7: LitI4 0
  loc_B80EEC: NeI4
  loc_B80EED: BranchF loc_B80EFC
  loc_B80EF0: LitStr "EROGACIONES EXTRAPRESUPUESTARIAS"
  loc_B80EF3: LitI2_Byte 3
  loc_B80EF5: CUI1I2
  loc_B80EF7: Call Proc_150_25_9B9408()
  loc_B80EFC: LitStr "Municipalidad de Guaymallén"
  loc_B80EFF: FStStrCopy var_190
  loc_B80F02: ILdRf var_190
  loc_B80F05: LitStr "Municipalidad de Rivadavia"
  loc_B80F08: EqStr
  loc_B80F0A: BranchF loc_B80F75
  loc_B80F0D: LitStr "SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(SaldFinaD-SaldFinaH) Importe"
  loc_B80F10: LitStr " FROM tmovi"
  loc_B80F13: ConcatStr
  loc_B80F14: FStStrNoPop var_A0
  loc_B80F17: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B80F1A: ConcatStr
  loc_B80F1B: FStStrNoPop var_144
  loc_B80F1E: LitStr " WHERE (tmovi.CodiTicu IN "
  loc_B80F21: ConcatStr
  loc_B80F22: FStStrNoPop var_154
  loc_B80F25: ILdRf var_8C
  loc_B80F28: ConcatStr
  loc_B80F29: FStStrNoPop var_158
  loc_B80F2C: LitStr " OR tmovi.CodiCuco = CajaPaco)"
  loc_B80F2F: ConcatStr
  loc_B80F30: FStStrNoPop var_15C
  loc_B80F33: LitStr " AND tmovi.CodiCuco NOT IN ('1211010000','1211020000','1211030000')"
  loc_B80F36: ConcatStr
  loc_B80F37: FStStrNoPop var_160
  loc_B80F3A: LitStr " AND tmovi.CodiCuco NOT IN ('1131010000','1131020000','1131090000')"
  loc_B80F3D: ConcatStr
  loc_B80F3E: FStStrNoPop var_164
  loc_B80F41: LitStr " GROUP BY CodiCuco"
  loc_B80F44: ConcatStr
  loc_B80F45: FStStrNoPop var_168
  loc_B80F48: LitStr " HAVING Importe != 0;"
  loc_B80F4B: ConcatStr
  loc_B80F4C: FStStrNoPop var_16C
  loc_B80F4F: FLdPr Me
  loc_B80F52: MemLdRfVar from_stack_1.global_76
  loc_B80F55: NewIfNullPr clsbase
  loc_B80F58: Call clsbase.RedefineRS(from_stack_1v)
  loc_B80F5D: FFreeStr var_A0 = "": var_144 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = ""
  loc_B80F72: Branch loc_B81108
  loc_B80F75: ILdRf var_190
  loc_B80F78: LitStr "Municipalidad de Tupungato"
  loc_B80F7B: EqStr
  loc_B80F7D: BranchT loc_B80F8B
  loc_B80F80: ILdRf var_190
  loc_B80F83: LitStr "Municipalidad de Santa Rosa"
  loc_B80F86: EqStr
  loc_B80F88: BranchF loc_B80FE1
  loc_B80F8B: LitStr "SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(SaldFinaD-SaldFinaH) Importe"
  loc_B80F8E: LitStr " FROM tmovi"
  loc_B80F91: ConcatStr
  loc_B80F92: FStStrNoPop var_A0
  loc_B80F95: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B80F98: ConcatStr
  loc_B80F99: FStStrNoPop var_144
  loc_B80F9C: LitStr " WHERE tmovi.CodiTicu IN "
  loc_B80F9F: ConcatStr
  loc_B80FA0: FStStrNoPop var_154
  loc_B80FA3: ILdRf var_8C
  loc_B80FA6: ConcatStr
  loc_B80FA7: FStStrNoPop var_158
  loc_B80FAA: LitStr " OR tmovi.CodiCuco = CajaPaco"
  loc_B80FAD: ConcatStr
  loc_B80FAE: FStStrNoPop var_15C
  loc_B80FB1: LitStr " GROUP BY CodiCuco"
  loc_B80FB4: ConcatStr
  loc_B80FB5: FStStrNoPop var_160
  loc_B80FB8: LitStr " HAVING Importe != 0;"
  loc_B80FBB: ConcatStr
  loc_B80FBC: FStStrNoPop var_164
  loc_B80FBF: FLdPr Me
  loc_B80FC2: MemLdRfVar from_stack_1.global_76
  loc_B80FC5: NewIfNullPr clsbase
  loc_B80FC8: Call clsbase.RedefineRS(from_stack_1v)
  loc_B80FCD: FFreeStr var_A0 = "": var_144 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_B80FDE: Branch loc_B81108
  loc_B80FE1: ILdRf var_190
  loc_B80FE4: LitStr "Municipalidad de Malargüe"
  loc_B80FE7: EqStr
  loc_B80FE9: BranchF loc_B8104B
  loc_B80FEC: LitStr "SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(SaldFinaD-SaldFinaH) Importe"
  loc_B80FEF: LitStr " FROM tmovi"
  loc_B80FF2: ConcatStr
  loc_B80FF3: FStStrNoPop var_A0
  loc_B80FF6: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B80FF9: ConcatStr
  loc_B80FFA: FStStrNoPop var_144
  loc_B80FFD: LitStr " WHERE (tmovi.CodiTicu IN "
  loc_B81000: ConcatStr
  loc_B81001: FStStrNoPop var_154
  loc_B81004: ILdRf var_8C
  loc_B81007: ConcatStr
  loc_B81008: FStStrNoPop var_158
  loc_B8100B: LitStr " OR tmovi.CodiCuco = CajaPaco)"
  loc_B8100E: ConcatStr
  loc_B8100F: FStStrNoPop var_15C
  loc_B81012: LitStr " AND tmovi.CodiCuco != TranPaco"
  loc_B81015: ConcatStr
  loc_B81016: FStStrNoPop var_160
  loc_B81019: LitStr " GROUP BY CodiCuco"
  loc_B8101C: ConcatStr
  loc_B8101D: FStStrNoPop var_164
  loc_B81020: LitStr " HAVING Importe != 0;"
  loc_B81023: ConcatStr
  loc_B81024: FStStrNoPop var_168
  loc_B81027: FLdPr Me
  loc_B8102A: MemLdRfVar from_stack_1.global_76
  loc_B8102D: NewIfNullPr clsbase
  loc_B81030: Call clsbase.RedefineRS(from_stack_1v)
  loc_B81035: FFreeStr var_A0 = "": var_144 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = ""
  loc_B81048: Branch loc_B81108
  loc_B8104B: ILdRf var_190
  loc_B8104E: LitStr "Municipalidad de Guaymallén"
  loc_B81051: EqStr
  loc_B81053: BranchF loc_B810B5
  loc_B81056: LitStr "SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(SaldFinaD-SaldFinaH) Importe"
  loc_B81059: LitStr " FROM tmovi"
  loc_B8105C: ConcatStr
  loc_B8105D: FStStrNoPop var_A0
  loc_B81060: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B81063: ConcatStr
  loc_B81064: FStStrNoPop var_144
  loc_B81067: LitStr " WHERE (tmovi.CodiTicu IN "
  loc_B8106A: ConcatStr
  loc_B8106B: FStStrNoPop var_154
  loc_B8106E: ILdRf var_8C
  loc_B81071: ConcatStr
  loc_B81072: FStStrNoPop var_158
  loc_B81075: LitStr " OR tmovi.CodiCuco = CajaPaco)"
  loc_B81078: ConcatStr
  loc_B81079: FStStrNoPop var_15C
  loc_B8107C: LitStr " AND tmovi.CodiCuco != TranPaco"
  loc_B8107F: ConcatStr
  loc_B81080: FStStrNoPop var_160
  loc_B81083: LitStr " GROUP BY CodiCuco"
  loc_B81086: ConcatStr
  loc_B81087: FStStrNoPop var_164
  loc_B8108A: LitStr " HAVING Importe != 0;"
  loc_B8108D: ConcatStr
  loc_B8108E: FStStrNoPop var_168
  loc_B81091: FLdPr Me
  loc_B81094: MemLdRfVar from_stack_1.global_76
  loc_B81097: NewIfNullPr clsbase
  loc_B8109A: Call clsbase.RedefineRS(from_stack_1v)
  loc_B8109F: FFreeStr var_A0 = "": var_144 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = ""
  loc_B810B2: Branch loc_B81108
  loc_B810B5: LitStr "SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(SaldFinaD-SaldFinaH) Importe"
  loc_B810B8: LitStr " FROM tmovi"
  loc_B810BB: ConcatStr
  loc_B810BC: FStStrNoPop var_A0
  loc_B810BF: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B810C2: ConcatStr
  loc_B810C3: FStStrNoPop var_144
  loc_B810C6: LitStr " WHERE tmovi.CodiTicu IN "
  loc_B810C9: ConcatStr
  loc_B810CA: FStStrNoPop var_154
  loc_B810CD: ILdRf var_8C
  loc_B810D0: ConcatStr
  loc_B810D1: FStStrNoPop var_158
  loc_B810D4: LitStr " OR tmovi.CodiCuco = CajaPaco"
  loc_B810D7: ConcatStr
  loc_B810D8: FStStrNoPop var_15C
  loc_B810DB: LitStr " GROUP BY CodiCuco"
  loc_B810DE: ConcatStr
  loc_B810DF: FStStrNoPop var_160
  loc_B810E2: LitStr " HAVING Importe != 0;"
  loc_B810E5: ConcatStr
  loc_B810E6: FStStrNoPop var_164
  loc_B810E9: FLdPr Me
  loc_B810EC: MemLdRfVar from_stack_1.global_76
  loc_B810EF: NewIfNullPr clsbase
  loc_B810F2: Call clsbase.RedefineRS(from_stack_1v)
  loc_B810F7: FFreeStr var_A0 = "": var_144 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_B81108: FLdRfVar var_9C
  loc_B8110B: FLdPr Me
  loc_B8110E: MemLdRfVar from_stack_1.global_76
  loc_B81111: NewIfNullPr clsbase
  loc_B81114: from_stack_1 = clsbase.RecordCount
  loc_B81119: ILdRf var_9C
  loc_B8111C: LitI4 0
  loc_B81121: NeI4
  loc_B81122: BranchF loc_B81131
  loc_B81125: LitStr "SALDOS FINALES"
  loc_B81128: LitI2_Byte 4
  loc_B8112A: CUI1I2
  loc_B8112C: Call Proc_150_25_9B9408()
  loc_B81131: FLdPr Me
  loc_B81134: MemLdStr global_100
  loc_B81137: LitI2_Byte 1
  loc_B81139: FnUBound
  loc_B8113B: LitI4 0
  loc_B81140: EqI4
  loc_B81141: BranchF loc_B81154
  loc_B81144: LitI4 0
  loc_B81149: LitStr "No existen registros para el criterio de búsqueda seleccionado"
  loc_B8114C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B81151: Branch loc_B8131F
  loc_B81154: LitI2_Byte 1
  loc_B81156: FLdPr Me
  loc_B81159: MemLdRfVar from_stack_1.global_116
  loc_B8115C: FLdPr Me
  loc_B8115F: MemLdStr global_100
  loc_B81162: LitI2_Byte 1
  loc_B81164: FnUBound
  loc_B81166: CI2I4
  loc_B81167: ForI2 var_194
  loc_B8116D: LitI2_Byte 1
  loc_B8116F: FLdPr Me
  loc_B81172: MemLdRfVar from_stack_1.global_118
  loc_B81175: FLdPr Me
  loc_B81178: MemLdI2 global_116
  loc_B8117B: CI4UI1
  loc_B8117C: FLdPr Me
  loc_B8117F: MemLdStr global_100
  loc_B81182: Ary1LdPr
  loc_B81183: MemLdStr global_4
  loc_B81186: LitI2_Byte 1
  loc_B81188: FnUBound
  loc_B8118A: CI2I4
  loc_B8118B: ForI2 var_198
  loc_B81191: LitI2_Byte 0
  loc_B81193: FLdPr Me
  loc_B81196: MemLdI2 global_116
  loc_B81199: CI4UI1
  loc_B8119A: FLdPr Me
  loc_B8119D: MemLdStr global_100
  loc_B811A0: AryLock
  loc_B811A3: Ary1LdPr
  loc_B811A4: MemLdRfVar from_stack_1.global_8
  loc_B811A7: CVarRef
  loc_B811AC: LitI2_Byte &HFF
  loc_B811AE: FLdPr Me
  loc_B811B1: MemLdI2 global_118
  loc_B811B4: CI4UI1
  loc_B811B5: FLdPr Me
  loc_B811B8: MemLdI2 global_116
  loc_B811BB: CI4UI1
  loc_B811BC: FLdPr Me
  loc_B811BF: MemLdStr global_100
  loc_B811C2: Ary1LdPr
  loc_B811C3: MemLdStr global_4
  loc_B811C6: Ary1LdPr
  loc_B811C7: MemLdStr global_8
  loc_B811CA: CVarStr var_D0
  loc_B811CD: PopAdLdVar
  loc_B811CE: FLdPr Me
  loc_B811D1: MemLdRfVar from_stack_1.global_140
  loc_B811D4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B811D9: AryUnlock
  loc_B811DC: FLdPr Me
  loc_B811DF: MemLdRfVar from_stack_1.global_118
  loc_B811E2: NextI2 var_198, loc_B81191
  loc_B811E7: FLdPr Me
  loc_B811EA: MemLdRfVar from_stack_1.global_116
  loc_B811ED: NextI2 var_194, loc_B8116D
  loc_B811F2: LitI2_Byte 0
  loc_B811F4: LitVar_Missing var_B0
  loc_B811F7: LitI2_Byte &HFF
  loc_B811F9: LitI4 1
  loc_B811FE: FLdPr Me
  loc_B81201: MemLdStr global_100
  loc_B81204: Ary1LdPr
  loc_B81205: MemLdStr global_8
  loc_B81208: CVarStr var_D0
  loc_B8120B: PopAdLdVar
  loc_B8120C: FLdPr Me
  loc_B8120F: MemLdRfVar from_stack_1.global_104
  loc_B81212: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B81217: FFree1Var var_B0 = ""
  loc_B8121A: LitI2_Byte 0
  loc_B8121C: LitVar_Missing var_B0
  loc_B8121F: LitI2_Byte &HFF
  loc_B81221: LitI4 4
  loc_B81226: FLdPr Me
  loc_B81229: MemLdStr global_100
  loc_B8122C: Ary1LdPr
  loc_B8122D: MemLdStr global_8
  loc_B81230: CVarStr var_D0
  loc_B81233: PopAdLdVar
  loc_B81234: FLdPr Me
  loc_B81237: MemLdRfVar from_stack_1.global_108
  loc_B8123A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B8123F: FFree1Var var_B0 = ""
  loc_B81242: LitI4 2
  loc_B81247: FLdPr Me
  loc_B8124A: MemLdStr global_108
  loc_B8124D: CR8Str
  loc_B8124F: FLdPr Me
  loc_B81252: MemLdStr global_104
  loc_B81255: CR8Str
  loc_B81257: SubR4
  loc_B81258: CVarR8
  loc_B8125C: FLdRfVar var_C0
  loc_B8125F: ImpAdCallFPR4  = Round(, )
  loc_B81264: LitI2_Byte 0
  loc_B81266: LitVar_Missing var_E0
  loc_B81269: LitI2_Byte &HFF
  loc_B8126B: FLdVar var_C0
  loc_B8126F: FLdPr Me
  loc_B81272: MemLdRfVar from_stack_1.global_112
  loc_B81275: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B8127A: FFreeVar var_B0 = "": var_C0 = ""
  loc_B81283: LitI4 2
  loc_B81288: LitI4 2
  loc_B8128D: FLdPr Me
  loc_B81290: MemLdStr global_100
  loc_B81293: Ary1LdPr
  loc_B81294: MemLdStr global_8
  loc_B81297: CR8Str
  loc_B81299: LitI4 3
  loc_B8129E: FLdPr Me
  loc_B812A1: MemLdStr global_100
  loc_B812A4: Ary1LdPr
  loc_B812A5: MemLdStr global_8
  loc_B812A8: CR8Str
  loc_B812AA: SubR4
  loc_B812AB: CVarR8
  loc_B812AF: FLdRfVar var_C0
  loc_B812B2: ImpAdCallFPR4  = Round(, )
  loc_B812B7: LitI2_Byte 0
  loc_B812B9: LitVar_Missing var_E0
  loc_B812BC: LitI2_Byte &HFF
  loc_B812BE: FLdVar var_C0
  loc_B812C2: FLdPr Me
  loc_B812C5: MemLdRfVar from_stack_1.global_124
  loc_B812C8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B812CD: FFreeVar var_B0 = "": var_C0 = ""
  loc_B812D6: LitI4 2
  loc_B812DB: FLdPr Me
  loc_B812DE: MemLdStr global_112
  loc_B812E1: CR8Str
  loc_B812E3: FLdPr Me
  loc_B812E6: MemLdStr global_124
  loc_B812E9: CR8Str
  loc_B812EB: SubR4
  loc_B812EC: CVarR8
  loc_B812F0: FLdRfVar var_C0
  loc_B812F3: ImpAdCallFPR4  = Round(, )
  loc_B812F8: LitI2_Byte 0
  loc_B812FA: LitVar_Missing var_E0
  loc_B812FD: LitI2_Byte &HFF
  loc_B812FF: FLdVar var_C0
  loc_B81303: FLdPr Me
  loc_B81306: MemLdRfVar from_stack_1.global_128
  loc_B81309: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B8130E: FFreeVar var_B0 = "": var_C0 = ""
  loc_B81317: LitI2_Byte &HFF
  loc_B81319: FLdPr Me
  loc_B8131C: MemStI2 bGenerado
  loc_B8131F: LitI4 0
  loc_B81324: CI2I4
  loc_B81325: FLdPr Me
  loc_B81328: Me.MousePointer = from_stack_1
  loc_B8132D: LitVarStr var_D0, vbNullString
  loc_B81332: PopAdLdVar
  loc_B81333: FLdPr Me
  loc_B81336: VCallAd Control_ID_statusBar
  loc_B81339: FStAdFunc var_94
  loc_B8133C: FLdPr var_94
  loc_B8133F: LateIdSt
  loc_B81344: FFree1Ad var_94
  loc_B81347: ExitProcHresult
  loc_B81348: LitI4 0
  loc_B8134D: LitStr "Error "
  loc_B81350: FLdRfVar var_9C
  loc_B81353: ImpAdCallI2 Err 'rtcErrObj
  loc_B81358: FStAdFunc var_94
  loc_B8135B: FLdPr var_94
  loc_B8135E:  = Err.Number
  loc_B81363: ILdRf var_9C
  loc_B81366: CStrI4
  loc_B81368: FStStrNoPop var_A0
  loc_B8136B: ConcatStr
  loc_B8136C: FStStrNoPop var_144
  loc_B8136F: LitStr ": "
  loc_B81372: ConcatStr
  loc_B81373: FStStrNoPop var_158
  loc_B81376: FLdRfVar var_154
  loc_B81379: ImpAdCallI2 Err 'rtcErrObj
  loc_B8137E: FStAdFunc var_98
  loc_B81381: FLdPr var_98
  loc_B81384:  = Err.Description
  loc_B81389: ILdRf var_154
  loc_B8138C: ConcatStr
  loc_B8138D: FStStrNoPop var_15C
  loc_B81390: LitStr vbCrLf
  loc_B81393: ConcatStr
  loc_B81394: FStStrNoPop var_160
  loc_B81397: LitStr "Verifique si ha generado el balance del mes solicitado..."
  loc_B8139A: ConcatStr
  loc_B8139B: FStStrNoPop var_164
  loc_B8139E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B813A3: FFreeStr var_A0 = "": var_144 = "": var_158 = "": var_154 = "": var_15C = "": var_160 = ""
  loc_B813B4: FFreeAd var_94 = ""
  loc_B813BB: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'AB0808
  'Data Table: 47CA80
  loc_AB02C4: FLdRfVar var_8E
  loc_AB02C7: FLdPr Me
  loc_AB02CA: VCallAd Control_ID_OptMensual
  loc_AB02CD: FStAdFunc var_8C
  loc_AB02D0: FLdPr var_8C
  loc_AB02D3:  = Me.Value
  loc_AB02D8: FLdI2 var_8E
  loc_AB02DB: LitI2_Byte &HFF
  loc_AB02DD: EqI2
  loc_AB02DE: FFree1Ad var_8C
  loc_AB02E1: BranchF loc_AB035A
  loc_AB02E4: FLdRfVar var_8E
  loc_AB02E7: FLdPr Me
  loc_AB02EA: VCallAd Control_ID_cboMes
  loc_AB02ED: FStAdFunc var_98
  loc_AB02F0: FLdPr var_98
  loc_AB02F3:  = Me.ListIndex
  loc_AB02F8: FLdRfVar var_94
  loc_AB02FB: FLdPr Me
  loc_AB02FE: VCallAd Control_ID_cboPeriodo
  loc_AB0301: FStAdFunc var_8C
  loc_AB0304: FLdPr var_8C
  loc_AB0307:  = Me.Text
  loc_AB030C: FLdZeroAd var_94
  loc_AB030F: CVarStr var_F8
  loc_AB0312: LitI4 1
  loc_AB0317: LitI4 1
  loc_AB031C: LitVarStr var_C8, "00"
  loc_AB0321: FStVarCopyObj var_D8
  loc_AB0324: FLdRfVar var_D8
  loc_AB0327: FLdI2 var_8E
  loc_AB032A: LitI2_Byte 1
  loc_AB032C: AddI2
  loc_AB032D: CVarI2 var_B8
  loc_AB0330: FLdRfVar var_E8
  loc_AB0333: ImpAdCallFPR4  = Format(, )
  loc_AB0338: FLdRfVar var_E8
  loc_AB033B: ConcatVar var_108
  loc_AB033F: CStrVarTmp
  loc_AB0340: FStStr var_88
  loc_AB0343: FFreeAd var_8C = ""
  loc_AB034A: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_E8 = ""
  loc_AB0357: Branch loc_AB03F8
  loc_AB035A: LitStr "Municipalidad de Guaymallén"
  loc_AB035D: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_AB0360: EqStr
  loc_AB0362: BranchF loc_AB03DB
  loc_AB0365: FLdRfVar var_8E
  loc_AB0368: FLdPr Me
  loc_AB036B: VCallAd Control_ID_cboMes
  loc_AB036E: FStAdFunc var_98
  loc_AB0371: FLdPr var_98
  loc_AB0374:  = Me.ListIndex
  loc_AB0379: FLdRfVar var_94
  loc_AB037C: FLdPr Me
  loc_AB037F: VCallAd Control_ID_cboPeriodo
  loc_AB0382: FStAdFunc var_8C
  loc_AB0385: FLdPr var_8C
  loc_AB0388:  = Me.Text
  loc_AB038D: FLdZeroAd var_94
  loc_AB0390: CVarStr var_F8
  loc_AB0393: LitI4 1
  loc_AB0398: LitI4 1
  loc_AB039D: LitVarStr var_C8, "00"
  loc_AB03A2: FStVarCopyObj var_D8
  loc_AB03A5: FLdRfVar var_D8
  loc_AB03A8: FLdI2 var_8E
  loc_AB03AB: LitI2_Byte 1
  loc_AB03AD: AddI2
  loc_AB03AE: CVarI2 var_B8
  loc_AB03B1: FLdRfVar var_E8
  loc_AB03B4: ImpAdCallFPR4  = Format(, )
  loc_AB03B9: FLdRfVar var_E8
  loc_AB03BC: ConcatVar var_108
  loc_AB03C0: CStrVarTmp
  loc_AB03C1: FStStr var_88
  loc_AB03C4: FFreeAd var_8C = ""
  loc_AB03CB: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_E8 = ""
  loc_AB03D8: Branch loc_AB03F8
  loc_AB03DB: FLdRfVar var_94
  loc_AB03DE: FLdPr Me
  loc_AB03E1: VCallAd Control_ID_cboPeriodo
  loc_AB03E4: FStAdFunc var_8C
  loc_AB03E7: FLdPr var_8C
  loc_AB03EA:  = Me.Text
  loc_AB03EF: FLdZeroAd var_94
  loc_AB03F2: FStStr var_88
  loc_AB03F5: FFree1Ad var_8C
  loc_AB03F8: FLdRfVar var_8C
  loc_AB03FB: LitI2_Byte 0
  loc_AB03FD: LitI2_Byte &HFF
  loc_AB03FF: ImpAdLdI4 MemVar_C3D05C
  loc_AB0402: FLdPr Me
  loc_AB0405: MemLdRfVar from_stack_1.global_80
  loc_AB0408: NewIfNullPr IFileSystem3
  loc_AB040B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AB0410: ILdRf var_8C
  loc_AB0413: FLdPr Me
  loc_AB0416: MemStVarAd
  loc_AB041A: FFree1Ad var_8C
  loc_AB041D: LitVarStr var_A8, "PeriodoPresenta|ExpID|Concepto|Codcuenta|Nombrecuenta|SaldoIni|Ingresos|Egresos|SaldoFin"
  loc_AB0422: LitI4 &HD
  loc_AB0427: FLdRfVar var_B8
  loc_AB042A: ImpAdCallFPR4  = Chr()
  loc_AB042F: FLdRfVar var_B8
  loc_AB0432: ConcatVar var_D8
  loc_AB0436: LitI4 &HA
  loc_AB043B: FLdRfVar var_E8
  loc_AB043E: ImpAdCallFPR4  = Chr()
  loc_AB0443: FLdRfVar var_E8
  loc_AB0446: ConcatVar var_F8
  loc_AB044A: PopAdLdVar
  loc_AB044B: FLdPr Me
  loc_AB044E: MemLdRfVar from_stack_1.global_84
  loc_AB0451: LdPrVar
  loc_AB0453: LateMemCall
  loc_AB0459: FFreeVar var_B8 = "": var_D8 = "": var_E8 = ""
  loc_AB0464: LitI2_Byte 1
  loc_AB0466: FLdPr Me
  loc_AB0469: MemLdRfVar from_stack_1.global_116
  loc_AB046C: FLdPr Me
  loc_AB046F: MemLdStr global_100
  loc_AB0472: LitI2_Byte 1
  loc_AB0474: FnUBound
  loc_AB0476: CI2I4
  loc_AB0477: ForI2 var_10C
  loc_AB047D: FLdPr Me
  loc_AB0480: MemLdI2 global_116
  loc_AB0483: CI4UI1
  loc_AB0484: FLdPr Me
  loc_AB0487: MemLdStr global_100
  loc_AB048A: AryLock
  loc_AB048D: Ary1LdRf
  loc_AB048E: FStR4 var_114
  loc_AB0491: LitI2_Byte 1
  loc_AB0493: FLdPr Me
  loc_AB0496: MemLdRfVar from_stack_1.global_118
  loc_AB0499: FMemLdR4 var_114(4)
  loc_AB049E: LitI2_Byte 1
  loc_AB04A0: FnUBound
  loc_AB04A2: CI2I4
  loc_AB04A3: ForI2 var_118
  loc_AB04A9: FLdPr Me
  loc_AB04AC: MemLdI2 global_118
  loc_AB04AF: CI4UI1
  loc_AB04B0: FMemLdR4 var_114(4)
  loc_AB04B5: AryLock
  loc_AB04B8: Ary1LdRf
  loc_AB04B9: FStR4 var_120
  loc_AB04BC: LitI2_Byte 1
  loc_AB04BE: FLdPr Me
  loc_AB04C1: MemLdRfVar from_stack_1.global_120
  loc_AB04C4: FMemLdR4 var_120(4)
  loc_AB04C9: LitI2_Byte 1
  loc_AB04CB: FnUBound
  loc_AB04CD: CI2I4
  loc_AB04CE: ForI2 var_124
  loc_AB04D4: FLdPr Me
  loc_AB04D7: MemLdI2 global_120
  loc_AB04DA: CI4UI1
  loc_AB04DB: FMemLdR4 var_120(4)
  loc_AB04E0: AryLock
  loc_AB04E3: Ary1LdRf
  loc_AB04E4: FStR4 var_12C
  loc_AB04E7: ILdRf var_88
  loc_AB04EA: LitStr "|"
  loc_AB04ED: ConcatStr
  loc_AB04EE: FStStrNoPop var_94
  loc_AB04F1: LitStr "eee-2022-060204"
  loc_AB04F4: ConcatStr
  loc_AB04F5: FStStrNoPop var_130
  loc_AB04F8: LitStr "|"
  loc_AB04FB: ConcatStr
  loc_AB04FC: CVarStr var_B8
  loc_AB04FF: PopAdLdVar
  loc_AB0500: FLdPr Me
  loc_AB0503: MemLdRfVar from_stack_1.global_84
  loc_AB0506: LdPrVar
  loc_AB0508: LateMemCall
  loc_AB050E: FFreeStr var_94 = ""
  loc_AB0515: FFree1Var var_B8 = ""
  loc_AB0518: FLdPr Me
  loc_AB051B: MemLdI2 global_118
  loc_AB051E: CI4UI1
  loc_AB051F: FLdPr Me
  loc_AB0522: MemLdI2 global_116
  loc_AB0525: CI4UI1
  loc_AB0526: FLdPr Me
  loc_AB0529: MemLdStr global_100
  loc_AB052C: Ary1LdPr
  loc_AB052D: MemLdStr global_4
  loc_AB0530: Ary1LdPr
  loc_AB0531: MemLdStr global_0
  loc_AB0534: LitStr "|"
  loc_AB0537: ConcatStr
  loc_AB0538: CVarStr var_B8
  loc_AB053B: PopAdLdVar
  loc_AB053C: FLdPr Me
  loc_AB053F: MemLdRfVar from_stack_1.global_84
  loc_AB0542: LdPrVar
  loc_AB0544: LateMemCall
  loc_AB054A: FFree1Var var_B8 = ""
  loc_AB054D: FMemLdR4 var_12C(0)
  loc_AB0552: LitStr "|"
  loc_AB0555: ConcatStr
  loc_AB0556: FStStrNoPop var_94
  loc_AB0559: FMemLdR4 var_12C(4)
  loc_AB055E: ConcatStr
  loc_AB055F: FStStrNoPop var_130
  loc_AB0562: LitStr "|"
  loc_AB0565: ConcatStr
  loc_AB0566: CVarStr var_B8
  loc_AB0569: PopAdLdVar
  loc_AB056A: FLdPr Me
  loc_AB056D: MemLdRfVar from_stack_1.global_84
  loc_AB0570: LdPrVar
  loc_AB0572: LateMemCall
  loc_AB0578: FFreeStr var_94 = ""
  loc_AB057F: FFree1Var var_B8 = ""
  loc_AB0582: FLdPr Me
  loc_AB0585: MemLdI2 global_118
  loc_AB0588: CI4UI1
  loc_AB0589: FLdPr Me
  loc_AB058C: MemLdI2 global_116
  loc_AB058F: CI4UI1
  loc_AB0590: FLdPr Me
  loc_AB0593: MemLdStr global_100
  loc_AB0596: Ary1LdPr
  loc_AB0597: MemLdStr global_4
  loc_AB059A: Ary1LdPr
  loc_AB059B: MemLdStr global_0
  loc_AB059E: LitStr "SALDOS INICIALES"
  loc_AB05A1: EqStr
  loc_AB05A3: BranchF loc_AB05E7
  loc_AB05A6: LitI4 0
  loc_AB05AB: LitI4 -1
  loc_AB05B0: LitI4 1
  loc_AB05B5: LitStr vbNullString
  loc_AB05B8: LitStr "."
  loc_AB05BB: FMemLdR4 var_12C(12)
  loc_AB05C0: ImpAdCallI2 Replace(, , , , , )
  loc_AB05C5: FStStrNoPop var_94
  loc_AB05C8: LitStr "|0|0|0"
  loc_AB05CB: ConcatStr
  loc_AB05CC: CVarStr var_B8
  loc_AB05CF: PopAdLdVar
  loc_AB05D0: FLdPr Me
  loc_AB05D3: MemLdRfVar from_stack_1.global_84
  loc_AB05D6: LdPrVar
  loc_AB05D8: LateMemCall
  loc_AB05DE: FFree1Str var_94
  loc_AB05E1: FFree1Var var_B8 = ""
  loc_AB05E4: Branch loc_AB0778
  loc_AB05E7: FLdPr Me
  loc_AB05EA: MemLdI2 global_118
  loc_AB05ED: CI4UI1
  loc_AB05EE: FLdPr Me
  loc_AB05F1: MemLdI2 global_116
  loc_AB05F4: CI4UI1
  loc_AB05F5: FLdPr Me
  loc_AB05F8: MemLdStr global_100
  loc_AB05FB: Ary1LdPr
  loc_AB05FC: MemLdStr global_4
  loc_AB05FF: Ary1LdPr
  loc_AB0600: MemLdStr global_0
  loc_AB0603: LitStr "INGRESOS PRESUPUESTARIOS"
  loc_AB0606: EqStr
  loc_AB0608: FLdPr Me
  loc_AB060B: MemLdI2 global_118
  loc_AB060E: CI4UI1
  loc_AB060F: FLdPr Me
  loc_AB0612: MemLdI2 global_116
  loc_AB0615: CI4UI1
  loc_AB0616: FLdPr Me
  loc_AB0619: MemLdStr global_100
  loc_AB061C: Ary1LdPr
  loc_AB061D: MemLdStr global_4
  loc_AB0620: Ary1LdPr
  loc_AB0621: MemLdStr global_0
  loc_AB0624: LitStr "INGRESOS EXTRAPRESUPUESTARIOS"
  loc_AB0627: EqStr
  loc_AB0629: OrI4
  loc_AB062A: BranchF loc_AB0679
  loc_AB062D: LitStr "0|"
  loc_AB0630: LitI4 0
  loc_AB0635: LitI4 -1
  loc_AB063A: LitI4 1
  loc_AB063F: LitStr vbNullString
  loc_AB0642: LitStr "."
  loc_AB0645: FMemLdR4 var_12C(12)
  loc_AB064A: ImpAdCallI2 Replace(, , , , , )
  loc_AB064F: FStStrNoPop var_94
  loc_AB0652: ConcatStr
  loc_AB0653: FStStrNoPop var_130
  loc_AB0656: LitStr "|0|0"
  loc_AB0659: ConcatStr
  loc_AB065A: CVarStr var_B8
  loc_AB065D: PopAdLdVar
  loc_AB065E: FLdPr Me
  loc_AB0661: MemLdRfVar from_stack_1.global_84
  loc_AB0664: LdPrVar
  loc_AB0666: LateMemCall
  loc_AB066C: FFreeStr var_94 = ""
  loc_AB0673: FFree1Var var_B8 = ""
  loc_AB0676: Branch loc_AB0778
  loc_AB0679: FLdPr Me
  loc_AB067C: MemLdI2 global_118
  loc_AB067F: CI4UI1
  loc_AB0680: FLdPr Me
  loc_AB0683: MemLdI2 global_116
  loc_AB0686: CI4UI1
  loc_AB0687: FLdPr Me
  loc_AB068A: MemLdStr global_100
  loc_AB068D: Ary1LdPr
  loc_AB068E: MemLdStr global_4
  loc_AB0691: Ary1LdPr
  loc_AB0692: MemLdStr global_0
  loc_AB0695: LitStr "EROGACIONES PRESUPUESTARIAS"
  loc_AB0698: EqStr
  loc_AB069A: FLdPr Me
  loc_AB069D: MemLdI2 global_118
  loc_AB06A0: CI4UI1
  loc_AB06A1: FLdPr Me
  loc_AB06A4: MemLdI2 global_116
  loc_AB06A7: CI4UI1
  loc_AB06A8: FLdPr Me
  loc_AB06AB: MemLdStr global_100
  loc_AB06AE: Ary1LdPr
  loc_AB06AF: MemLdStr global_4
  loc_AB06B2: Ary1LdPr
  loc_AB06B3: MemLdStr global_0
  loc_AB06B6: LitStr "EROGACIONES EXTRAPRESUPUESTARIAS"
  loc_AB06B9: EqStr
  loc_AB06BB: OrI4
  loc_AB06BC: BranchF loc_AB070B
  loc_AB06BF: LitStr "0|0|"
  loc_AB06C2: LitI4 0
  loc_AB06C7: LitI4 -1
  loc_AB06CC: LitI4 1
  loc_AB06D1: LitStr vbNullString
  loc_AB06D4: LitStr "."
  loc_AB06D7: FMemLdR4 var_12C(12)
  loc_AB06DC: ImpAdCallI2 Replace(, , , , , )
  loc_AB06E1: FStStrNoPop var_94
  loc_AB06E4: ConcatStr
  loc_AB06E5: FStStrNoPop var_130
  loc_AB06E8: LitStr "|0"
  loc_AB06EB: ConcatStr
  loc_AB06EC: CVarStr var_B8
  loc_AB06EF: PopAdLdVar
  loc_AB06F0: FLdPr Me
  loc_AB06F3: MemLdRfVar from_stack_1.global_84
  loc_AB06F6: LdPrVar
  loc_AB06F8: LateMemCall
  loc_AB06FE: FFreeStr var_94 = ""
  loc_AB0705: FFree1Var var_B8 = ""
  loc_AB0708: Branch loc_AB0778
  loc_AB070B: FLdPr Me
  loc_AB070E: MemLdI2 global_118
  loc_AB0711: CI4UI1
  loc_AB0712: FLdPr Me
  loc_AB0715: MemLdI2 global_116
  loc_AB0718: CI4UI1
  loc_AB0719: FLdPr Me
  loc_AB071C: MemLdStr global_100
  loc_AB071F: Ary1LdPr
  loc_AB0720: MemLdStr global_4
  loc_AB0723: Ary1LdPr
  loc_AB0724: MemLdStr global_0
  loc_AB0727: LitStr "SALDOS FINALES"
  loc_AB072A: EqStr
  loc_AB072C: BranchF loc_AB0778
  loc_AB072F: LitStr "0|0|0|"
  loc_AB0732: LitI4 0
  loc_AB0737: LitI4 -1
  loc_AB073C: LitI4 1
  loc_AB0741: LitStr vbNullString
  loc_AB0744: LitStr "."
  loc_AB0747: FMemLdR4 var_12C(12)
  loc_AB074C: ImpAdCallI2 Replace(, , , , , )
  loc_AB0751: FStStrNoPop var_94
  loc_AB0754: ConcatStr
  loc_AB0755: FStStrNoPop var_130
  loc_AB0758: LitStr vbNullString
  loc_AB075B: ConcatStr
  loc_AB075C: CVarStr var_B8
  loc_AB075F: PopAdLdVar
  loc_AB0760: FLdPr Me
  loc_AB0763: MemLdRfVar from_stack_1.global_84
  loc_AB0766: LdPrVar
  loc_AB0768: LateMemCall
  loc_AB076E: FFreeStr var_94 = ""
  loc_AB0775: FFree1Var var_B8 = ""
  loc_AB0778: LitI4 &HD
  loc_AB077D: FLdRfVar var_B8
  loc_AB0780: ImpAdCallFPR4  = Chr()
  loc_AB0785: FLdRfVar var_B8
  loc_AB0788: LitI4 &HA
  loc_AB078D: FLdRfVar var_D8
  loc_AB0790: ImpAdCallFPR4  = Chr()
  loc_AB0795: FLdRfVar var_D8
  loc_AB0798: ConcatVar var_E8
  loc_AB079C: PopAdLdVar
  loc_AB079D: FLdPr Me
  loc_AB07A0: MemLdRfVar from_stack_1.global_84
  loc_AB07A3: LdPrVar
  loc_AB07A5: LateMemCall
  loc_AB07AB: FFreeVar var_B8 = "": var_D8 = ""
  loc_AB07B4: LitI4 0
  loc_AB07B9: FStR4 var_12C
  loc_AB07BC: AryUnlock
  loc_AB07BF: FLdPr Me
  loc_AB07C2: MemLdRfVar from_stack_1.global_120
  loc_AB07C5: NextI2 var_124, loc_AB04D4
  loc_AB07CA: LitI4 0
  loc_AB07CF: FStR4 var_120
  loc_AB07D2: AryUnlock
  loc_AB07D5: FLdPr Me
  loc_AB07D8: MemLdRfVar from_stack_1.global_118
  loc_AB07DB: NextI2 var_118, loc_AB04A9
  loc_AB07E0: LitI4 0
  loc_AB07E5: FStR4 var_114
  loc_AB07E8: AryUnlock
  loc_AB07EB: FLdPr Me
  loc_AB07EE: MemLdRfVar from_stack_1.global_116
  loc_AB07F1: NextI2 var_10C, loc_AB047D
  loc_AB07F6: FLdPr Me
  loc_AB07F9: MemLdRfVar from_stack_1.global_84
  loc_AB07FC: LdPrVar
  loc_AB07FE: LateMemCall
  loc_AB0804: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AAF184
  'Data Table: 47CA80
  loc_AAEC2C: FLdRfVar var_88
  loc_AAEC2F: LitI2_Byte 0
  loc_AAEC31: LitI2_Byte &HFF
  loc_AAEC33: ImpAdLdI4 MemVar_C3D83C
  loc_AAEC36: FLdPr Me
  loc_AAEC39: MemLdRfVar from_stack_1.global_80
  loc_AAEC3C: NewIfNullPr IFileSystem3
  loc_AAEC3F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AAEC44: ILdRf var_88
  loc_AAEC47: FLdPr Me
  loc_AAEC4A: MemStVarAd
  loc_AAEC4E: FFree1Ad var_88
  loc_AAEC51: Call Proc_150_29_A6142C()
  loc_AAEC56: LitI2_Byte 1
  loc_AAEC58: FLdPr Me
  loc_AAEC5B: MemLdRfVar from_stack_1.global_116
  loc_AAEC5E: FLdPr Me
  loc_AAEC61: MemLdStr global_100
  loc_AAEC64: LitI2_Byte 1
  loc_AAEC66: FnUBound
  loc_AAEC68: CI2I4
  loc_AAEC69: ForI2 var_8C
  loc_AAEC6F: FLdPr Me
  loc_AAEC72: MemLdI2 global_116
  loc_AAEC75: CI4UI1
  loc_AAEC76: FLdPr Me
  loc_AAEC79: MemLdStr global_100
  loc_AAEC7C: AryLock
  loc_AAEC7F: Ary1LdRf
  loc_AAEC80: FStR4 var_94
  loc_AAEC83: LitVarStr var_A4, "  <tr align=""center"" class=""Encabezado"">"
  loc_AAEC88: PopAdLdVar
  loc_AAEC89: FLdPr Me
  loc_AAEC8C: MemLdRfVar from_stack_1.htmFile
  loc_AAEC8F: LdPrVar
  loc_AAEC91: LateMemCall
  loc_AAEC97: LitStr "    <th align=""left""><strong>"
  loc_AAEC9A: FMemLdR4 var_94(0)
  loc_AAEC9F: ConcatStr
  loc_AAECA0: FStStrNoPop var_B8
  loc_AAECA3: LitStr "</strong></th>"
  loc_AAECA6: ConcatStr
  loc_AAECA7: CVarStr var_C8
  loc_AAECAA: PopAdLdVar
  loc_AAECAB: FLdPr Me
  loc_AAECAE: MemLdRfVar from_stack_1.htmFile
  loc_AAECB1: LdPrVar
  loc_AAECB3: LateMemCall
  loc_AAECB9: FFree1Str var_B8
  loc_AAECBC: FFree1Var var_C8 = ""
  loc_AAECBF: LitI4 0
  loc_AAECC4: LitStr "SubTotales"
  loc_AAECC7: LitI2_Byte &HFF
  loc_AAECC9: LitStr "right"
  loc_AAECCC: LitStr vbNullString
  loc_AAECCF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAECD4: CVarStr var_C8
  loc_AAECD7: PopAdLdVar
  loc_AAECD8: FLdPr Me
  loc_AAECDB: MemLdRfVar from_stack_1.htmFile
  loc_AAECDE: LdPrVar
  loc_AAECE0: LateMemCall
  loc_AAECE6: FFree1Var var_C8 = ""
  loc_AAECE9: LitI4 0
  loc_AAECEE: LitStr "SubTotales"
  loc_AAECF1: LitI2_Byte &HFF
  loc_AAECF3: LitStr "right"
  loc_AAECF6: FMemLdR4 var_94(8)
  loc_AAECFB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAED00: CVarStr var_C8
  loc_AAED03: PopAdLdVar
  loc_AAED04: FLdPr Me
  loc_AAED07: MemLdRfVar from_stack_1.htmFile
  loc_AAED0A: LdPrVar
  loc_AAED0C: LateMemCall
  loc_AAED12: FFree1Var var_C8 = ""
  loc_AAED15: LitVarStr var_A4, "     </tr>"
  loc_AAED1A: PopAdLdVar
  loc_AAED1B: FLdPr Me
  loc_AAED1E: MemLdRfVar from_stack_1.htmFile
  loc_AAED21: LdPrVar
  loc_AAED23: LateMemCall
  loc_AAED29: LitI2_Byte 1
  loc_AAED2B: FLdPr Me
  loc_AAED2E: MemLdRfVar from_stack_1.global_118
  loc_AAED31: FMemLdR4 var_94(4)
  loc_AAED36: LitI2_Byte 1
  loc_AAED38: FnUBound
  loc_AAED3A: CI2I4
  loc_AAED3B: ForI2 var_CC
  loc_AAED41: FLdPr Me
  loc_AAED44: MemLdI2 global_118
  loc_AAED47: CI4UI1
  loc_AAED48: FMemLdR4 var_94(4)
  loc_AAED4D: AryLock
  loc_AAED50: Ary1LdRf
  loc_AAED51: FStR4 var_D4
  loc_AAED54: LitVarStr var_A4, "  <tr align=""center"" class=""Encabezado"">"
  loc_AAED59: PopAdLdVar
  loc_AAED5A: FLdPr Me
  loc_AAED5D: MemLdRfVar from_stack_1.htmFile
  loc_AAED60: LdPrVar
  loc_AAED62: LateMemCall
  loc_AAED68: LitStr "    <th align=""left""><strong>--"
  loc_AAED6B: FMemLdR4 var_D4(0)
  loc_AAED70: ConcatStr
  loc_AAED71: FStStrNoPop var_B8
  loc_AAED74: LitStr "</strong></th>"
  loc_AAED77: ConcatStr
  loc_AAED78: CVarStr var_C8
  loc_AAED7B: PopAdLdVar
  loc_AAED7C: FLdPr Me
  loc_AAED7F: MemLdRfVar from_stack_1.htmFile
  loc_AAED82: LdPrVar
  loc_AAED84: LateMemCall
  loc_AAED8A: FFree1Str var_B8
  loc_AAED8D: FFree1Var var_C8 = ""
  loc_AAED90: LitI4 0
  loc_AAED95: LitStr "SubTotales"
  loc_AAED98: LitI2_Byte &HFF
  loc_AAED9A: LitStr "right"
  loc_AAED9D: FMemLdR4 var_D4(8)
  loc_AAEDA2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAEDA7: CVarStr var_C8
  loc_AAEDAA: PopAdLdVar
  loc_AAEDAB: FLdPr Me
  loc_AAEDAE: MemLdRfVar from_stack_1.htmFile
  loc_AAEDB1: LdPrVar
  loc_AAEDB3: LateMemCall
  loc_AAEDB9: FFree1Var var_C8 = ""
  loc_AAEDBC: LitI4 0
  loc_AAEDC1: LitStr "SubTotales"
  loc_AAEDC4: LitI2_Byte &HFF
  loc_AAEDC6: LitStr "right"
  loc_AAEDC9: LitStr vbNullString
  loc_AAEDCC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAEDD1: CVarStr var_C8
  loc_AAEDD4: PopAdLdVar
  loc_AAEDD5: FLdPr Me
  loc_AAEDD8: MemLdRfVar from_stack_1.htmFile
  loc_AAEDDB: LdPrVar
  loc_AAEDDD: LateMemCall
  loc_AAEDE3: FFree1Var var_C8 = ""
  loc_AAEDE6: LitVarStr var_A4, "     </tr>"
  loc_AAEDEB: PopAdLdVar
  loc_AAEDEC: FLdPr Me
  loc_AAEDEF: MemLdRfVar from_stack_1.htmFile
  loc_AAEDF2: LdPrVar
  loc_AAEDF4: LateMemCall
  loc_AAEDFA: LitI2_Byte 1
  loc_AAEDFC: FLdPr Me
  loc_AAEDFF: MemLdRfVar from_stack_1.global_120
  loc_AAEE02: FMemLdR4 var_D4(4)
  loc_AAEE07: LitI2_Byte 1
  loc_AAEE09: FnUBound
  loc_AAEE0B: CI2I4
  loc_AAEE0C: ForI2 var_D8
  loc_AAEE12: FLdPr Me
  loc_AAEE15: MemLdI2 global_120
  loc_AAEE18: CI4UI1
  loc_AAEE19: FMemLdR4 var_D4(4)
  loc_AAEE1E: AryLock
  loc_AAEE21: Ary1LdRf
  loc_AAEE22: FStR4 var_E0
  loc_AAEE25: FLdRfVar var_E2
  loc_AAEE28: FLdPr Me
  loc_AAEE2B: VCallAd Control_ID_chkOcultarDetallePresu
  loc_AAEE2E: FStAdFunc var_88
  loc_AAEE31: FLdPr var_88
  loc_AAEE34:  = Me.Value
  loc_AAEE39: FLdI2 var_E2
  loc_AAEE3C: CI4UI1
  loc_AAEE3D: LitI4 1
  loc_AAEE42: EqI4
  loc_AAEE43: FLdPr Me
  loc_AAEE46: MemLdI2 global_118
  loc_AAEE49: CI4UI1
  loc_AAEE4A: FLdPr Me
  loc_AAEE4D: MemLdI2 global_116
  loc_AAEE50: CI4UI1
  loc_AAEE51: FLdPr Me
  loc_AAEE54: MemLdStr global_100
  loc_AAEE57: Ary1LdPr
  loc_AAEE58: MemLdStr global_4
  loc_AAEE5B: Ary1LdPr
  loc_AAEE5C: MemLdStr global_0
  loc_AAEE5F: LitStr "INGRESOS PRESUPUESTARIOS"
  loc_AAEE62: EqStr
  loc_AAEE64: FLdPr Me
  loc_AAEE67: MemLdI2 global_118
  loc_AAEE6A: CI4UI1
  loc_AAEE6B: FLdPr Me
  loc_AAEE6E: MemLdI2 global_116
  loc_AAEE71: CI4UI1
  loc_AAEE72: FLdPr Me
  loc_AAEE75: MemLdStr global_100
  loc_AAEE78: Ary1LdPr
  loc_AAEE79: MemLdStr global_4
  loc_AAEE7C: Ary1LdPr
  loc_AAEE7D: MemLdStr global_0
  loc_AAEE80: LitStr "EROGACIONES PRESUPUESTARIAS"
  loc_AAEE83: EqStr
  loc_AAEE85: OrI4
  loc_AAEE86: AndI4
  loc_AAEE87: FFree1Ad var_88
  loc_AAEE8A: BranchF loc_AAEE90
  loc_AAEE8D: Branch loc_AAEFC2
  loc_AAEE90: FLdRfVar var_E2
  loc_AAEE93: FLdPr Me
  loc_AAEE96: VCallAd Control_ID_chkOcultarDetalleExtra
  loc_AAEE99: FStAdFunc var_88
  loc_AAEE9C: FLdPr var_88
  loc_AAEE9F:  = Me.Value
  loc_AAEEA4: FLdI2 var_E2
  loc_AAEEA7: CI4UI1
  loc_AAEEA8: LitI4 1
  loc_AAEEAD: EqI4
  loc_AAEEAE: FLdPr Me
  loc_AAEEB1: MemLdI2 global_118
  loc_AAEEB4: CI4UI1
  loc_AAEEB5: FLdPr Me
  loc_AAEEB8: MemLdI2 global_116
  loc_AAEEBB: CI4UI1
  loc_AAEEBC: FLdPr Me
  loc_AAEEBF: MemLdStr global_100
  loc_AAEEC2: Ary1LdPr
  loc_AAEEC3: MemLdStr global_4
  loc_AAEEC6: Ary1LdPr
  loc_AAEEC7: MemLdStr global_0
  loc_AAEECA: LitStr "INGRESOS EXTRAPRESUPUESTARIOS"
  loc_AAEECD: EqStr
  loc_AAEECF: FLdPr Me
  loc_AAEED2: MemLdI2 global_118
  loc_AAEED5: CI4UI1
  loc_AAEED6: FLdPr Me
  loc_AAEED9: MemLdI2 global_116
  loc_AAEEDC: CI4UI1
  loc_AAEEDD: FLdPr Me
  loc_AAEEE0: MemLdStr global_100
  loc_AAEEE3: Ary1LdPr
  loc_AAEEE4: MemLdStr global_4
  loc_AAEEE7: Ary1LdPr
  loc_AAEEE8: MemLdStr global_0
  loc_AAEEEB: LitStr "EROGACIONES EXTRAPRESUPUESTARIAS"
  loc_AAEEEE: EqStr
  loc_AAEEF0: OrI4
  loc_AAEEF1: AndI4
  loc_AAEEF2: FFree1Ad var_88
  loc_AAEEF5: BranchF loc_AAEEFB
  loc_AAEEF8: Branch loc_AAEFC2
  loc_AAEEFB: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AAEF00: PopAdLdVar
  loc_AAEF01: FLdPr Me
  loc_AAEF04: MemLdRfVar from_stack_1.htmFile
  loc_AAEF07: LdPrVar
  loc_AAEF09: LateMemCall
  loc_AAEF0F: LitI4 0
  loc_AAEF14: LitI4 0
  loc_AAEF19: LitI2_Byte 0
  loc_AAEF1B: LitStr "left"
  loc_AAEF1E: FMemLdR4 var_E0(0)
  loc_AAEF23: LitStr " - "
  loc_AAEF26: ConcatStr
  loc_AAEF27: FStStrNoPop var_B8
  loc_AAEF2A: FMemLdR4 var_E0(4)
  loc_AAEF2F: ConcatStr
  loc_AAEF30: FStStrNoPop var_E8
  loc_AAEF33: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAEF38: CVarStr var_C8
  loc_AAEF3B: PopAdLdVar
  loc_AAEF3C: FLdPr Me
  loc_AAEF3F: MemLdRfVar from_stack_1.htmFile
  loc_AAEF42: LdPrVar
  loc_AAEF44: LateMemCall
  loc_AAEF4A: FFreeStr var_B8 = ""
  loc_AAEF51: FFree1Var var_C8 = ""
  loc_AAEF54: LitI4 0
  loc_AAEF59: LitI4 0
  loc_AAEF5E: LitI2_Byte &HFF
  loc_AAEF60: LitStr "right"
  loc_AAEF63: FMemLdR4 var_E0(12)
  loc_AAEF68: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAEF6D: CVarStr var_C8
  loc_AAEF70: PopAdLdVar
  loc_AAEF71: FLdPr Me
  loc_AAEF74: MemLdRfVar from_stack_1.htmFile
  loc_AAEF77: LdPrVar
  loc_AAEF79: LateMemCall
  loc_AAEF7F: FFree1Var var_C8 = ""
  loc_AAEF82: LitI4 0
  loc_AAEF87: LitI4 0
  loc_AAEF8C: LitI2_Byte 0
  loc_AAEF8E: LitStr "right"
  loc_AAEF91: LitStr vbNullString
  loc_AAEF94: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAEF99: CVarStr var_C8
  loc_AAEF9C: PopAdLdVar
  loc_AAEF9D: FLdPr Me
  loc_AAEFA0: MemLdRfVar from_stack_1.htmFile
  loc_AAEFA3: LdPrVar
  loc_AAEFA5: LateMemCall
  loc_AAEFAB: FFree1Var var_C8 = ""
  loc_AAEFAE: LitVarStr var_A4, "     </tr>"
  loc_AAEFB3: PopAdLdVar
  loc_AAEFB4: FLdPr Me
  loc_AAEFB7: MemLdRfVar from_stack_1.htmFile
  loc_AAEFBA: LdPrVar
  loc_AAEFBC: LateMemCall
  loc_AAEFC2: LitI4 0
  loc_AAEFC7: FStR4 var_E0
  loc_AAEFCA: AryUnlock
  loc_AAEFCD: FLdPr Me
  loc_AAEFD0: MemLdRfVar from_stack_1.global_120
  loc_AAEFD3: NextI2 var_D8, loc_AAEE12
  loc_AAEFD8: LitI4 0
  loc_AAEFDD: FStR4 var_D4
  loc_AAEFE0: AryUnlock
  loc_AAEFE3: FLdPr Me
  loc_AAEFE6: MemLdRfVar from_stack_1.global_118
  loc_AAEFE9: NextI2 var_CC, loc_AAED41
  loc_AAEFEE: LitI4 0
  loc_AAEFF3: FStR4 var_94
  loc_AAEFF6: AryUnlock
  loc_AAEFF9: FLdPr Me
  loc_AAEFFC: MemLdRfVar from_stack_1.global_116
  loc_AAEFFF: NextI2 var_8C, loc_AAEC6F
  loc_AAF004: LitVarStr var_A4, "  <tr align=""left"" class=""Encabezado"">"
  loc_AAF009: PopAdLdVar
  loc_AAF00A: FLdPr Me
  loc_AAF00D: MemLdRfVar from_stack_1.htmFile
  loc_AAF010: LdPrVar
  loc_AAF012: LateMemCall
  loc_AAF018: LitVarStr var_A4, "    <th>AUMENTOS O DISMINUCIONES DE LOS FONDOS</th>"
  loc_AAF01D: PopAdLdVar
  loc_AAF01E: FLdPr Me
  loc_AAF021: MemLdRfVar from_stack_1.htmFile
  loc_AAF024: LdPrVar
  loc_AAF026: LateMemCall
  loc_AAF02C: LitI4 0
  loc_AAF031: LitStr "SubTotales"
  loc_AAF034: LitI2_Byte &HFF
  loc_AAF036: LitStr "right"
  loc_AAF039: LitStr vbNullString
  loc_AAF03C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAF041: CVarStr var_C8
  loc_AAF044: PopAdLdVar
  loc_AAF045: FLdPr Me
  loc_AAF048: MemLdRfVar from_stack_1.htmFile
  loc_AAF04B: LdPrVar
  loc_AAF04D: LateMemCall
  loc_AAF053: FFree1Var var_C8 = ""
  loc_AAF056: LitI4 0
  loc_AAF05B: LitStr "SubTotales"
  loc_AAF05E: LitI2_Byte &HFF
  loc_AAF060: LitStr "right"
  loc_AAF063: FLdPr Me
  loc_AAF066: MemLdStr global_124
  loc_AAF069: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAF06E: CVarStr var_C8
  loc_AAF071: PopAdLdVar
  loc_AAF072: FLdPr Me
  loc_AAF075: MemLdRfVar from_stack_1.htmFile
  loc_AAF078: LdPrVar
  loc_AAF07A: LateMemCall
  loc_AAF080: FFree1Var var_C8 = ""
  loc_AAF083: LitVarStr var_A4, "     </tr>"
  loc_AAF088: PopAdLdVar
  loc_AAF089: FLdPr Me
  loc_AAF08C: MemLdRfVar from_stack_1.htmFile
  loc_AAF08F: LdPrVar
  loc_AAF091: LateMemCall
  loc_AAF097: FLdPr Me
  loc_AAF09A: MemLdStr global_128
  loc_AAF09D: CR8Str
  loc_AAF09F: LitI2_Byte 0
  loc_AAF0A1: CR8I2
  loc_AAF0A2: NeR8
  loc_AAF0A3: BranchF loc_AAF152
  loc_AAF0A6: LitVarStr var_A4, "  <tr align=""left"" class=""Encabezado"">"
  loc_AAF0AB: PopAdLdVar
  loc_AAF0AC: FLdPr Me
  loc_AAF0AF: MemLdRfVar from_stack_1.htmFile
  loc_AAF0B2: LdPrVar
  loc_AAF0B4: LateMemCall
  loc_AAF0BA: LitVarStr var_A4, "    <th>DIFERENCIA SEGÚN SEGUN ANEXO</th>"
  loc_AAF0BF: PopAdLdVar
  loc_AAF0C0: FLdPr Me
  loc_AAF0C3: MemLdRfVar from_stack_1.htmFile
  loc_AAF0C6: LdPrVar
  loc_AAF0C8: LateMemCall
  loc_AAF0CE: LitI4 0
  loc_AAF0D3: LitStr "SubTotales"
  loc_AAF0D6: LitI2_Byte &HFF
  loc_AAF0D8: LitStr "right"
  loc_AAF0DB: LitStr vbNullString
  loc_AAF0DE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAF0E3: CVarStr var_C8
  loc_AAF0E6: PopAdLdVar
  loc_AAF0E7: FLdPr Me
  loc_AAF0EA: MemLdRfVar from_stack_1.htmFile
  loc_AAF0ED: LdPrVar
  loc_AAF0EF: LateMemCall
  loc_AAF0F5: FFree1Var var_C8 = ""
  loc_AAF0F8: LitI4 0
  loc_AAF0FD: LitStr "SubTotales"
  loc_AAF100: LitI2_Byte &HFF
  loc_AAF102: LitStr "right"
  loc_AAF105: FLdPr Me
  loc_AAF108: MemLdStr global_128
  loc_AAF10B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAF110: CVarStr var_C8
  loc_AAF113: PopAdLdVar
  loc_AAF114: FLdPr Me
  loc_AAF117: MemLdRfVar from_stack_1.htmFile
  loc_AAF11A: LdPrVar
  loc_AAF11C: LateMemCall
  loc_AAF122: FFree1Var var_C8 = ""
  loc_AAF125: LitVarStr var_A4, "     </tr>"
  loc_AAF12A: PopAdLdVar
  loc_AAF12B: FLdPr Me
  loc_AAF12E: MemLdRfVar from_stack_1.htmFile
  loc_AAF131: LdPrVar
  loc_AAF133: LateMemCall
  loc_AAF139: LitI2_Byte 0
  loc_AAF13B: FLdPr Me
  loc_AAF13E: VCallAd Control_ID_cmdTxt
  loc_AAF141: FStAdFunc var_88
  loc_AAF144: FLdPr var_88
  loc_AAF147: Me.Enabled = from_stack_1b
  loc_AAF14C: FFree1Ad var_88
  loc_AAF14F: Branch loc_AAF168
  loc_AAF152: LitI2_Byte &HFF
  loc_AAF154: FLdPr Me
  loc_AAF157: VCallAd Control_ID_cmdTxt
  loc_AAF15A: FStAdFunc var_88
  loc_AAF15D: FLdPr var_88
  loc_AAF160: Me.Enabled = from_stack_1b
  loc_AAF165: FFree1Ad var_88
  loc_AAF168: Call Proc_150_30_A05884()
  loc_AAF16D: FLdPr Me
  loc_AAF170: MemLdRfVar from_stack_1.htmFile
  loc_AAF173: LdPrVar
  loc_AAF175: LateMemCall
  loc_AAF17B: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AAF180: ExitProcHresult
  loc_AAF181: StAryCopy
End Sub

Public Sub GeneraXLS() '94B1FC
  'Data Table: 47CA80
  loc_94B1E4: LitI2_Byte 0
  loc_94B1E6: FLdPr Me
  loc_94B1E9: MemStI2 bLogos
  loc_94B1EC: Call GeneraHTML()
  loc_94B1F1: LitI2_Byte &HFF
  loc_94B1F3: FLdPr Me
  loc_94B1F6: MemStI2 bLogos
  loc_94B1F9: ExitProcHresult
End Sub

Private Function Proc_150_25_9B9408(arg_10) '9B9408
  'Data Table: 47CA80
  loc_9B934C: ILdRf arg_10
  loc_9B934F: FStStrCopy var_88
  loc_9B9352: FLdPr Me
  loc_9B9355: MemLdRfVar from_stack_1.global_76
  loc_9B9358: NewIfNullAd
  loc_9B935B: FStAd var_8C 
  loc_9B935F: FLdPr var_8C
  loc_9B9362: Call clsbase.MoveFirst()
  loc_9B9367: FLdUI1
  loc_9B936B: CI2UI1
  loc_9B936D: FLdPr Me
  loc_9B9370: MemStI2 global_116
  loc_9B9373: FLdPr Me
  loc_9B9376: MemLdStr global_100
  loc_9B9379: LitI2_Byte 1
  loc_9B937B: FnUBound
  loc_9B937D: FLdPr Me
  loc_9B9380: MemLdI2 global_116
  loc_9B9383: CI4UI1
  loc_9B9384: LtI4
  loc_9B9385: BranchF loc_9B93DE
  loc_9B9388: FLdPr Me
  loc_9B938B: MemLdI2 global_116
  loc_9B938E: FStI2 var_8E
  loc_9B9391: FLdI2 var_8E
  loc_9B9394: LitI2_Byte 1
  loc_9B9396: EqI2
  loc_9B9397: BranchF loc_9B93A5
  loc_9B939A: LitStr "SALDOS INICIALES"
  loc_9B939D: Call Proc_150_26_994F48()
  loc_9B93A2: Branch loc_9B93DE
  loc_9B93A5: FLdI2 var_8E
  loc_9B93A8: LitI2_Byte 2
  loc_9B93AA: EqI2
  loc_9B93AB: BranchF loc_9B93B9
  loc_9B93AE: LitStr "INGRESOS DEL EJERCICIO"
  loc_9B93B1: Call Proc_150_26_994F48()
  loc_9B93B6: Branch loc_9B93DE
  loc_9B93B9: FLdI2 var_8E
  loc_9B93BC: LitI2_Byte 3
  loc_9B93BE: EqI2
  loc_9B93BF: BranchF loc_9B93CD
  loc_9B93C2: LitStr "EGRESOS DEL EJERCICIO"
  loc_9B93C5: Call Proc_150_26_994F48()
  loc_9B93CA: Branch loc_9B93DE
  loc_9B93CD: FLdI2 var_8E
  loc_9B93D0: LitI2_Byte 4
  loc_9B93D2: EqI2
  loc_9B93D3: BranchF loc_9B93DE
  loc_9B93D6: LitStr "SALDOS FINALES"
  loc_9B93D9: Call Proc_150_26_994F48()
  loc_9B93DE: ILdRf var_88
  loc_9B93E1: Call Proc_150_27_9A7884()
  loc_9B93E6: FLdRfVar var_90
  loc_9B93E9: FLdPr var_8C
  loc_9B93EC: from_stack_1 = clsbase.EOF
  loc_9B93F1: FLdI2 var_90
  loc_9B93F4: NotI4
  loc_9B93F5: BranchF loc_9B9400
  loc_9B93F8: Call Proc_150_28_A37624()
  loc_9B93FD: Branch loc_9B93E6
  loc_9B9400: LitNothing
  loc_9B9402: FStAd var_8C 
  loc_9B9406: ExitProcHresult
End Function

Private Function Proc_150_26_994F48(arg_C) '994F48
  'Data Table: 47CA80
  loc_994EF0: ILdRf arg_C
  loc_994EF3: FStStrCopy var_88
  loc_994EF6: LitI2_Byte 0
  loc_994EF8: FLdPr Me
  loc_994EFB: MemStI2 global_118
  loc_994EFE: LitI4 0
  loc_994F03: FLdPr Me
  loc_994F06: MemLdI2 global_116
  loc_994F09: CI4UI1
  loc_994F0A: FLdPr Me
  loc_994F0D: MemLdRfVar from_stack_1.global_100
  loc_994F10: RedimPreserve
  loc_994F1A: LitI2_Byte 0
  loc_994F1C: LitVar_Missing var_BC
  loc_994F1F: LitI2_Byte 0
  loc_994F21: ILdRf var_88
  loc_994F24: CVarStr var_9C
  loc_994F27: PopAdLdVar
  loc_994F28: FLdPr Me
  loc_994F2B: MemLdI2 global_116
  loc_994F2E: CI4UI1
  loc_994F2F: FLdPr Me
  loc_994F32: MemLdStr global_100
  loc_994F35: AryLock
  loc_994F38: Ary1LdPr
  loc_994F39: MemLdRfVar from_stack_1.global_0
  loc_994F3C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_994F41: AryUnlock
  loc_994F44: FFree1Var var_BC = ""
  loc_994F47: ExitProcHresult
End Function

Private Function Proc_150_27_9A7884(arg_C) '9A7884
  'Data Table: 47CA80
  loc_9A77FC: ILdRf arg_C
  loc_9A77FF: FStStrCopy var_88
  loc_9A7802: FLdPr Me
  loc_9A7805: MemLdI2 global_118
  loc_9A7808: LitI2_Byte 1
  loc_9A780A: AddI2
  loc_9A780B: FLdPr Me
  loc_9A780E: MemStI2 global_118
  loc_9A7811: LitI2_Byte 0
  loc_9A7813: FLdPr Me
  loc_9A7816: MemStI2 global_120
  loc_9A7819: LitI4 0
  loc_9A781E: FLdPr Me
  loc_9A7821: MemLdI2 global_118
  loc_9A7824: CI4UI1
  loc_9A7825: FLdPr Me
  loc_9A7828: MemLdI2 global_116
  loc_9A782B: CI4UI1
  loc_9A782C: FLdPr Me
  loc_9A782F: MemLdStr global_100
  loc_9A7832: Ary1LdPr
  loc_9A7833: MemLdRfVar from_stack_1.global_4
  loc_9A7836: RedimPreserve
  loc_9A7840: LitI2_Byte 0
  loc_9A7842: LitVar_Missing var_C0
  loc_9A7845: LitI2_Byte 0
  loc_9A7847: ILdRf var_88
  loc_9A784A: CVarStr var_A0
  loc_9A784D: PopAdLdVar
  loc_9A784E: FLdPr Me
  loc_9A7851: MemLdI2 global_118
  loc_9A7854: CI4UI1
  loc_9A7855: FLdPr Me
  loc_9A7858: MemLdI2 global_116
  loc_9A785B: CI4UI1
  loc_9A785C: FLdPr Me
  loc_9A785F: MemLdStr global_100
  loc_9A7862: AryLock
  loc_9A7865: Ary1LdPr
  loc_9A7866: MemLdStr global_4
  loc_9A7869: AryLock
  loc_9A786C: Ary1LdPr
  loc_9A786D: MemLdRfVar from_stack_1.global_0
  loc_9A7870: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9A7875: AryUnlock
  loc_9A7878: AryUnlock
  loc_9A787B: FFree1Var var_C0 = ""
  loc_9A787E: Call Proc_150_28_A37624()
  loc_9A7883: ExitProcHresult
End Function

Private Function Proc_150_28_A37624() 'A37624
  'Data Table: 47CA80
  loc_A3741C: FLdPr Me
  loc_A3741F: MemLdI2 global_120
  loc_A37422: LitI2_Byte 1
  loc_A37424: AddI2
  loc_A37425: FLdPr Me
  loc_A37428: MemStI2 global_120
  loc_A3742B: LitI4 0
  loc_A37430: FLdPr Me
  loc_A37433: MemLdI2 global_120
  loc_A37436: CI4UI1
  loc_A37437: FLdPr Me
  loc_A3743A: MemLdI2 global_118
  loc_A3743D: CI4UI1
  loc_A3743E: FLdPr Me
  loc_A37441: MemLdI2 global_116
  loc_A37444: CI4UI1
  loc_A37445: FLdPr Me
  loc_A37448: MemLdStr global_100
  loc_A3744B: Ary1LdPr
  loc_A3744C: MemLdStr global_4
  loc_A3744F: Ary1LdPr
  loc_A37450: MemLdRfVar from_stack_1.global_4
  loc_A37453: RedimPreserve
  loc_A3745D: FLdPr Me
  loc_A37460: MemLdI2 global_120
  loc_A37463: CI4UI1
  loc_A37464: FLdPr Me
  loc_A37467: MemLdI2 global_118
  loc_A3746A: CI4UI1
  loc_A3746B: FLdPr Me
  loc_A3746E: MemLdI2 global_116
  loc_A37471: CI4UI1
  loc_A37472: FLdPr Me
  loc_A37475: MemLdStr global_100
  loc_A37478: AryLock
  loc_A3747B: Ary1LdPr
  loc_A3747C: MemLdStr global_4
  loc_A3747F: AryLock
  loc_A37482: Ary1LdPr
  loc_A37483: MemLdStr global_4
  loc_A37486: AryLock
  loc_A37489: Ary1LdRf
  loc_A3748A: FStR4 var_94
  loc_A3748D: FLdRfVar var_B0
  loc_A37490: LitVarStr var_AC, "CodiCuco"
  loc_A37495: PopAdLdVar
  loc_A37496: FLdRfVar var_9C
  loc_A37499: FLdRfVar var_98
  loc_A3749C: FLdPr Me
  loc_A3749F: MemLdRfVar from_stack_1.global_76
  loc_A374A2: NewIfNullPr clsbase
  loc_A374A5: from_stack_1v = clsbase.RsFrmGet()
  loc_A374AA: FLdPr var_98
  loc_A374AD:  = Me.Fields
  loc_A374B2: FLdPr var_9C
  loc_A374B5: from_stack_2 = Me.Item(from_stack_1)
  loc_A374BA: LitI2_Byte 0
  loc_A374BC: LitVar_Missing var_E0
  loc_A374BF: LitI2_Byte 0
  loc_A374C1: FLdZeroAd var_B0
  loc_A374C4: CVarAd
  loc_A374C8: PopAdLdVar
  loc_A374C9: FMemLdRf 0
  loc_A374CE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A374D3: FFreeAd var_98 = ""
  loc_A374DA: FFreeVar var_C0 = ""
  loc_A374E1: FLdRfVar var_B0
  loc_A374E4: LitVarStr var_AC, "DetaCuco"
  loc_A374E9: PopAdLdVar
  loc_A374EA: FLdRfVar var_9C
  loc_A374ED: FLdRfVar var_98
  loc_A374F0: FLdPr Me
  loc_A374F3: MemLdRfVar from_stack_1.global_76
  loc_A374F6: NewIfNullPr clsbase
  loc_A374F9: from_stack_1v = clsbase.RsFrmGet()
  loc_A374FE: FLdPr var_98
  loc_A37501:  = Me.Fields
  loc_A37506: FLdPr var_9C
  loc_A37509: from_stack_2 = Me.Item(from_stack_1)
  loc_A3750E: LitI2_Byte 0
  loc_A37510: LitVar_Missing var_E0
  loc_A37513: LitI2_Byte 0
  loc_A37515: FLdZeroAd var_B0
  loc_A37518: CVarAd
  loc_A3751C: PopAdLdVar
  loc_A3751D: FMemLdRf 0
  loc_A37522: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A37527: FFreeAd var_98 = ""
  loc_A3752E: FFreeVar var_C0 = ""
  loc_A37535: FLdRfVar var_B0
  loc_A37538: LitVarStr var_AC, "CodiTicu"
  loc_A3753D: PopAdLdVar
  loc_A3753E: FLdRfVar var_9C
  loc_A37541: FLdRfVar var_98
  loc_A37544: FLdPr Me
  loc_A37547: MemLdRfVar from_stack_1.global_76
  loc_A3754A: NewIfNullPr clsbase
  loc_A3754D: from_stack_1v = clsbase.RsFrmGet()
  loc_A37552: FLdPr var_98
  loc_A37555:  = Me.Fields
  loc_A3755A: FLdPr var_9C
  loc_A3755D: from_stack_2 = Me.Item(from_stack_1)
  loc_A37562: LitI2_Byte 0
  loc_A37564: LitVar_Missing var_E0
  loc_A37567: LitI2_Byte 0
  loc_A37569: FLdZeroAd var_B0
  loc_A3756C: CVarAd
  loc_A37570: PopAdLdVar
  loc_A37571: FMemLdRf 0
  loc_A37576: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A3757B: FFreeAd var_98 = ""
  loc_A37582: FFreeVar var_C0 = ""
  loc_A37589: FLdRfVar var_B0
  loc_A3758C: LitVarStr var_AC, "Importe"
  loc_A37591: PopAdLdVar
  loc_A37592: FLdRfVar var_9C
  loc_A37595: FLdRfVar var_98
  loc_A37598: FLdPr Me
  loc_A3759B: MemLdRfVar from_stack_1.global_76
  loc_A3759E: NewIfNullPr clsbase
  loc_A375A1: from_stack_1v = clsbase.RsFrmGet()
  loc_A375A6: FLdPr var_98
  loc_A375A9:  = Me.Fields
  loc_A375AE: FLdPr var_9C
  loc_A375B1: from_stack_2 = Me.Item(from_stack_1)
  loc_A375B6: LitI2_Byte 0
  loc_A375B8: FLdPr Me
  loc_A375BB: MemLdI2 global_118
  loc_A375BE: CI4UI1
  loc_A375BF: FLdPr Me
  loc_A375C2: MemLdI2 global_116
  loc_A375C5: CI4UI1
  loc_A375C6: FLdPr Me
  loc_A375C9: MemLdStr global_100
  loc_A375CC: AryLock
  loc_A375CF: Ary1LdPr
  loc_A375D0: MemLdStr global_4
  loc_A375D3: AryLock
  loc_A375D6: Ary1LdPr
  loc_A375D7: MemLdRfVar from_stack_1.global_8
  loc_A375DA: CVarRef
  loc_A375DF: LitI2_Byte &HFF
  loc_A375E1: FLdZeroAd var_B0
  loc_A375E4: CVarAd
  loc_A375E8: PopAdLdVar
  loc_A375E9: FMemLdRf 0
  loc_A375EE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A375F3: AryUnlock
  loc_A375F6: AryUnlock
  loc_A375F9: FFreeAd var_98 = ""
  loc_A37600: FFree1Var var_C0 = ""
  loc_A37603: LitI4 0
  loc_A37608: FStR4 var_94
  loc_A3760B: AryUnlock
  loc_A3760E: AryUnlock
  loc_A37611: AryUnlock
  loc_A37614: FLdPr Me
  loc_A37617: MemLdRfVar from_stack_1.global_76
  loc_A3761A: NewIfNullPr clsbase
  loc_A3761D: Call clsbase.MoveSiguiente()
  loc_A37622: ExitProcHresult
End Function

Private Function Proc_150_29_A6142C() 'A6142C
  'Data Table: 47CA80
  loc_A6111C: LitVarStr var_94, "<html>"
  loc_A61121: PopAdLdVar
  loc_A61122: FLdPr Me
  loc_A61125: MemLdRfVar from_stack_1.htmFile
  loc_A61128: LdPrVar
  loc_A6112A: LateMemCall
  loc_A61130: LitVarStr var_94, "<head>"
  loc_A61135: PopAdLdVar
  loc_A61136: FLdPr Me
  loc_A61139: MemLdRfVar from_stack_1.htmFile
  loc_A6113C: LdPrVar
  loc_A6113E: LateMemCall
  loc_A61144: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A61149: PopAdLdVar
  loc_A6114A: FLdPr Me
  loc_A6114D: MemLdRfVar from_stack_1.htmFile
  loc_A61150: LdPrVar
  loc_A61152: LateMemCall
  loc_A61158: LitStr "<title>"
  loc_A6115B: FLdRfVar var_A8
  loc_A6115E: FLdPr Me
  loc_A61161:  = Me.Caption
  loc_A61166: ILdRf var_A8
  loc_A61169: ConcatStr
  loc_A6116A: FStStrNoPop var_AC
  loc_A6116D: LitStr "</title>"
  loc_A61170: ConcatStr
  loc_A61171: CVarStr var_BC
  loc_A61174: PopAdLdVar
  loc_A61175: FLdPr Me
  loc_A61178: MemLdRfVar from_stack_1.htmFile
  loc_A6117B: LdPrVar
  loc_A6117D: LateMemCall
  loc_A61183: FFreeStr var_A8 = ""
  loc_A6118A: FFree1Var var_BC = ""
  loc_A6118D: LitStr vbNullString
  loc_A61190: ILdRf Me
  loc_A61193: CastAd
  loc_A61196: FStAdFunc var_C0
  loc_A61199: FLdRfVar var_C0
  loc_A6119C: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A611A1: FFree1Ad var_C0
  loc_A611A4: LitI4 0
  loc_A611A9: FStStrCopy var_AC
  loc_A611AC: FLdRfVar var_AC
  loc_A611AF: LitI4 0
  loc_A611B4: FStStrCopy var_A8
  loc_A611B7: FLdRfVar var_A8
  loc_A611BA: LitI2_Byte 0
  loc_A611BC: PopTmpLdAd2 var_C2
  loc_A611BF: FLdPr Me
  loc_A611C2: MemLdRfVar from_stack_1.htmFile
  loc_A611C5: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A611CA: FFreeStr var_A8 = ""
  loc_A611D1: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A611D6: PopAdLdVar
  loc_A611D7: FLdPr Me
  loc_A611DA: MemLdRfVar from_stack_1.htmFile
  loc_A611DD: LdPrVar
  loc_A611DF: LateMemCall
  loc_A611E5: LitVarStr var_94, "  <tr valign=""center"">"
  loc_A611EA: PopAdLdVar
  loc_A611EB: FLdPr Me
  loc_A611EE: MemLdRfVar from_stack_1.htmFile
  loc_A611F1: LdPrVar
  loc_A611F3: LateMemCall
  loc_A611F9: LitVarStr var_94, "    <th align=""center"" valign=""center""><p>"
  loc_A611FE: PopAdLdVar
  loc_A611FF: FLdPr Me
  loc_A61202: MemLdRfVar from_stack_1.htmFile
  loc_A61205: LdPrVar
  loc_A61207: LateMemCall
  loc_A6120D: FLdPr Me
  loc_A61210: MemLdI2 bLogos
  loc_A61213: BranchF loc_A6122A
  loc_A61216: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A6121B: PopAdLdVar
  loc_A6121C: FLdPr Me
  loc_A6121F: MemLdRfVar from_stack_1.htmFile
  loc_A61222: LdPrVar
  loc_A61224: LateMemCall
  loc_A6122A: LitVarStr var_94, "    <br>ACUERDO N&ordm; 2988 <br>"
  loc_A6122F: PopAdLdVar
  loc_A61230: FLdPr Me
  loc_A61233: MemLdRfVar from_stack_1.htmFile
  loc_A61236: LdPrVar
  loc_A61238: LateMemCall
  loc_A6123E: LitVarStr var_94, "      <span class=""Titulo2"">ANEXO IX: MOVIMIENTOS DE FONDOS Y VALORES<br>(texto ordenado según Acuerdo Nº 3961)</span></p>"
  loc_A61243: PopAdLdVar
  loc_A61244: FLdPr Me
  loc_A61247: MemLdRfVar from_stack_1.htmFile
  loc_A6124A: LdPrVar
  loc_A6124C: LateMemCall
  loc_A61252: LitVarStr var_94, "    </th>"
  loc_A61257: PopAdLdVar
  loc_A61258: FLdPr Me
  loc_A6125B: MemLdRfVar from_stack_1.htmFile
  loc_A6125E: LdPrVar
  loc_A61260: LateMemCall
  loc_A61266: LitVarStr var_94, "  </tr>"
  loc_A6126B: PopAdLdVar
  loc_A6126C: FLdPr Me
  loc_A6126F: MemLdRfVar from_stack_1.htmFile
  loc_A61272: LdPrVar
  loc_A61274: LateMemCall
  loc_A6127A: LitVarStr var_94, "  <tr>"
  loc_A6127F: PopAdLdVar
  loc_A61280: FLdPr Me
  loc_A61283: MemLdRfVar from_stack_1.htmFile
  loc_A61286: LdPrVar
  loc_A61288: LateMemCall
  loc_A6128E: LitVarStr var_94, "    <th>"
  loc_A61293: PopAdLdVar
  loc_A61294: FLdPr Me
  loc_A61297: MemLdRfVar from_stack_1.htmFile
  loc_A6129A: LdPrVar
  loc_A6129C: LateMemCall
  loc_A612A2: LitStr "      <p align=""left"" class=""Titulo2"">Repartición/Organismo: "
  loc_A612A5: LitStr "Municipalidad de Guaymallén"
  loc_A612A8: ConcatStr
  loc_A612A9: FStStrNoPop var_A8
  loc_A612AC: LitStr "<br>"
  loc_A612AF: ConcatStr
  loc_A612B0: CVarStr var_BC
  loc_A612B3: PopAdLdVar
  loc_A612B4: FLdPr Me
  loc_A612B7: MemLdRfVar from_stack_1.htmFile
  loc_A612BA: LdPrVar
  loc_A612BC: LateMemCall
  loc_A612C2: FFree1Str var_A8
  loc_A612C5: FFree1Var var_BC = ""
  loc_A612C8: LitStr "    Nomenclador: "
  loc_A612CB: LitStr "060204"
  loc_A612CE: ConcatStr
  loc_A612CF: FStStrNoPop var_A8
  loc_A612D2: LitStr "<br>"
  loc_A612D5: ConcatStr
  loc_A612D6: CVarStr var_BC
  loc_A612D9: PopAdLdVar
  loc_A612DA: FLdPr Me
  loc_A612DD: MemLdRfVar from_stack_1.htmFile
  loc_A612E0: LdPrVar
  loc_A612E2: LateMemCall
  loc_A612E8: FFree1Str var_A8
  loc_A612EB: FFree1Var var_BC = ""
  loc_A612EE: LitStr "    Ejercicio: "
  loc_A612F1: FLdRfVar var_A8
  loc_A612F4: FLdPr Me
  loc_A612F7: VCallAd Control_ID_cboPeriodo
  loc_A612FA: FStAdFunc var_C0
  loc_A612FD: FLdPr var_C0
  loc_A61300:  = Me.Text
  loc_A61305: ILdRf var_A8
  loc_A61308: ConcatStr
  loc_A61309: FStStrNoPop var_AC
  loc_A6130C: LitStr "<br>"
  loc_A6130F: ConcatStr
  loc_A61310: CVarStr var_BC
  loc_A61313: PopAdLdVar
  loc_A61314: FLdPr Me
  loc_A61317: MemLdRfVar from_stack_1.htmFile
  loc_A6131A: LdPrVar
  loc_A6131C: LateMemCall
  loc_A61322: FFreeStr var_A8 = ""
  loc_A61329: FFree1Ad var_C0
  loc_A6132C: FFree1Var var_BC = ""
  loc_A6132F: FLdRfVar var_C2
  loc_A61332: FLdPr Me
  loc_A61335: VCallAd Control_ID_OptMensual
  loc_A61338: FStAdFunc var_D0
  loc_A6133B: FLdPr var_D0
  loc_A6133E:  = Me.Value
  loc_A61343: LitStr "    Mes: "
  loc_A61346: FLdRfVar var_A8
  loc_A61349: FLdPr Me
  loc_A6134C: VCallAd Control_ID_cboMes
  loc_A6134F: FStAdFunc var_C0
  loc_A61352: FLdPr var_C0
  loc_A61355:  = Me.Text
  loc_A6135A: ILdRf var_A8
  loc_A6135D: ConcatStr
  loc_A6135E: FStStrNoPop var_AC
  loc_A61361: LitStr " ("
  loc_A61364: ConcatStr
  loc_A61365: FStStrNoPop var_C8
  loc_A61368: FLdPr Me
  loc_A6136B: MemLdStr global_136
  loc_A6136E: ConcatStr
  loc_A6136F: FStStrNoPop var_CC
  loc_A61372: LitStr ") - "
  loc_A61375: ConcatStr
  loc_A61376: CVarStr var_110
  loc_A61379: LitVarStr var_E0, "Acumulado"
  loc_A6137E: FStVarCopyObj var_F0
  loc_A61381: FLdRfVar var_F0
  loc_A61384: LitVarStr var_A4, "Mensual"
  loc_A61389: FStVarCopyObj var_BC
  loc_A6138C: FLdRfVar var_BC
  loc_A6138F: FLdI2 var_C2
  loc_A61392: LitI2_Byte &HFF
  loc_A61394: EqI2
  loc_A61395: CVarBoolI2 var_94
  loc_A61399: FLdRfVar var_100
  loc_A6139C: ImpAdCallFPR4  = IIf(, , )
  loc_A613A1: FLdRfVar var_100
  loc_A613A4: ConcatVar var_120
  loc_A613A8: PopAdLdVar
  loc_A613A9: FLdPr Me
  loc_A613AC: MemLdRfVar from_stack_1.htmFile
  loc_A613AF: LdPrVar
  loc_A613B1: LateMemCall
  loc_A613B7: FFreeStr var_A8 = "": var_AC = "": var_C8 = ""
  loc_A613C2: FFreeAd var_C0 = ""
  loc_A613C9: FFreeVar var_94 = "": var_BC = "": var_F0 = "": var_110 = "": var_100 = ""
  loc_A613D8: LitVarStr var_94, "    </p></th>"
  loc_A613DD: PopAdLdVar
  loc_A613DE: FLdPr Me
  loc_A613E1: MemLdRfVar from_stack_1.htmFile
  loc_A613E4: LdPrVar
  loc_A613E6: LateMemCall
  loc_A613EC: LitVarStr var_94, "  </tr>"
  loc_A613F1: PopAdLdVar
  loc_A613F2: FLdPr Me
  loc_A613F5: MemLdRfVar from_stack_1.htmFile
  loc_A613F8: LdPrVar
  loc_A613FA: LateMemCall
  loc_A61400: LitVarStr var_94, "</table>"
  loc_A61405: PopAdLdVar
  loc_A61406: FLdPr Me
  loc_A61409: MemLdRfVar from_stack_1.htmFile
  loc_A6140C: LdPrVar
  loc_A6140E: LateMemCall
  loc_A61414: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A61419: PopAdLdVar
  loc_A6141A: FLdPr Me
  loc_A6141D: MemLdRfVar from_stack_1.htmFile
  loc_A61420: LdPrVar
  loc_A61422: LateMemCall
  loc_A61428: ExitProcHresult
End Function

Private Function Proc_150_30_A05884() 'A05884
  'Data Table: 47CA80
  loc_A05710: LitVarStr var_94, "</table>"
  loc_A05715: PopAdLdVar
  loc_A05716: FLdPr Me
  loc_A05719: MemLdRfVar from_stack_1.htmFile
  loc_A0571C: LdPrVar
  loc_A0571E: LateMemCall
  loc_A05724: LitVarStr var_94, "<br>"
  loc_A05729: PopAdLdVar
  loc_A0572A: FLdPr Me
  loc_A0572D: MemLdRfVar from_stack_1.htmFile
  loc_A05730: LdPrVar
  loc_A05732: LateMemCall
  loc_A05738: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_A0573D: PopAdLdVar
  loc_A0573E: FLdPr Me
  loc_A05741: MemLdRfVar from_stack_1.htmFile
  loc_A05744: LdPrVar
  loc_A05746: LateMemCall
  loc_A0574C: LitVarStr var_94, "  <tr>"
  loc_A05751: PopAdLdVar
  loc_A05752: FLdPr Me
  loc_A05755: MemLdRfVar from_stack_1.htmFile
  loc_A05758: LdPrVar
  loc_A0575A: LateMemCall
  loc_A05760: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_A05765: PopAdLdVar
  loc_A05766: FLdPr Me
  loc_A05769: MemLdRfVar from_stack_1.htmFile
  loc_A0576C: LdPrVar
  loc_A0576E: LateMemCall
  loc_A05774: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_A05779: PopAdLdVar
  loc_A0577A: FLdPr Me
  loc_A0577D: MemLdRfVar from_stack_1.htmFile
  loc_A05780: LdPrVar
  loc_A05782: LateMemCall
  loc_A05788: FLdPr Me
  loc_A0578B: MemLdI2 bLogos
  loc_A0578E: BranchF loc_A057F5
  loc_A05791: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_A05796: PopAdLdVar
  loc_A05797: FLdPr Me
  loc_A0579A: MemLdRfVar from_stack_1.htmFile
  loc_A0579D: LdPrVar
  loc_A0579F: LateMemCall
  loc_A057A5: LitVarStr var_94, "          <map name=""Map"">"
  loc_A057AA: PopAdLdVar
  loc_A057AB: FLdPr Me
  loc_A057AE: MemLdRfVar from_stack_1.htmFile
  loc_A057B1: LdPrVar
  loc_A057B3: LateMemCall
  loc_A057B9: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_A057BE: PopAdLdVar
  loc_A057BF: FLdPr Me
  loc_A057C2: MemLdRfVar from_stack_1.htmFile
  loc_A057C5: LdPrVar
  loc_A057C7: LateMemCall
  loc_A057CD: LitVarStr var_94, "          </map>"
  loc_A057D2: PopAdLdVar
  loc_A057D3: FLdPr Me
  loc_A057D6: MemLdRfVar from_stack_1.htmFile
  loc_A057D9: LdPrVar
  loc_A057DB: LateMemCall
  loc_A057E1: LitVarStr var_94, "    </div></th>"
  loc_A057E6: PopAdLdVar
  loc_A057E7: FLdPr Me
  loc_A057EA: MemLdRfVar from_stack_1.htmFile
  loc_A057ED: LdPrVar
  loc_A057EF: LateMemCall
  loc_A057F5: LitVarStr var_94, "  </tr>"
  loc_A057FA: PopAdLdVar
  loc_A057FB: FLdPr Me
  loc_A057FE: MemLdRfVar from_stack_1.htmFile
  loc_A05801: LdPrVar
  loc_A05803: LateMemCall
  loc_A05809: LitVarStr var_94, "  <tr>"
  loc_A0580E: PopAdLdVar
  loc_A0580F: FLdPr Me
  loc_A05812: MemLdRfVar from_stack_1.htmFile
  loc_A05815: LdPrVar
  loc_A05817: LateMemCall
  loc_A0581D: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_A05822: PopAdLdVar
  loc_A05823: FLdPr Me
  loc_A05826: MemLdRfVar from_stack_1.htmFile
  loc_A05829: LdPrVar
  loc_A0582B: LateMemCall
  loc_A05831: LitVarStr var_94, "  </tr>"
  loc_A05836: PopAdLdVar
  loc_A05837: FLdPr Me
  loc_A0583A: MemLdRfVar from_stack_1.htmFile
  loc_A0583D: LdPrVar
  loc_A0583F: LateMemCall
  loc_A05845: LitVarStr var_94, "</table>"
  loc_A0584A: PopAdLdVar
  loc_A0584B: FLdPr Me
  loc_A0584E: MemLdRfVar from_stack_1.htmFile
  loc_A05851: LdPrVar
  loc_A05853: LateMemCall
  loc_A05859: LitVarStr var_94, "</body>"
  loc_A0585E: PopAdLdVar
  loc_A0585F: FLdPr Me
  loc_A05862: MemLdRfVar from_stack_1.htmFile
  loc_A05865: LdPrVar
  loc_A05867: LateMemCall
  loc_A0586D: LitVarStr var_94, "</html>"
  loc_A05872: PopAdLdVar
  loc_A05873: FLdPr Me
  loc_A05876: MemLdRfVar from_stack_1.htmFile
  loc_A05879: LdPrVar
  loc_A0587B: LateMemCall
  loc_A05881: ExitProcHresult
  loc_A05882: ExitProcI2
End Function
